#!/bin/bash
set -e

echo "========================================="
echo "FINAL PERMANENT TENANT FIX"
echo "========================================="

if [ -z "$VIRTUAL_ENV" ]; then
    if [ -d "venv" ]; then
        source venv/bin/activate
        echo "✓ Virtualenv activated"
    else
        echo "✗ Virtualenv not found. Activate manually and re-run."
        exit 1
    fi
fi

# Step 1: Run migrations for ALL tenants (this creates missing tables)
echo "🔄 Running migrations for all tenants (may take a minute)..."
python manage.py migrate_schemas --tenant

# Step 2: Add signal to auto-migrate new tenants
echo "📝 Adding auto-migration signal for future tenants..."
python3 << 'ADDSIGNAL'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django_tenants.signals import post_schema_sync
from django.dispatch import receiver
from django.core.management import call_command

SIGNAL_CODE = """

# --- AUTO-MIGRATE NEW TENANTS (permanent fix) ---
@receiver(post_schema_sync)
def auto_migrate_tenant(sender, tenant, **kwargs):
    if tenant.schema_name != 'public':
        print(f"🚀 Auto-migrating tenant: {tenant.schema_name}")
        call_command('migrate_schemas', '--tenant', schema_name=tenant.schema_name)
"""

signals_path = "axis_saas/signals.py"
with open(signals_path, 'r') as f:
    content = f.read()
if "auto_migrate_tenant" not in content:
    with open(signals_path, 'a') as f:
        f.write(SIGNAL_CODE)
    print("✓ Signal added to axis_saas/signals.py")
else:
    print("✓ Signal already present")
ADDSIGNAL

# Step 3: Repair data for all tenants (fee structures, current month fees)
echo "🔧 Repairing data for all tenants..."
python3 << 'DATAREPAIR'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure, FeeRecord, SchoolFeeSettings
from datetime import date, timedelta

def repair_tenant(tenant):
    print(f"\n--- Repairing {tenant.schema_name} ---")
    with schema_context(tenant.schema_name):
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)
        # Create missing FeeStructure for grades that have students
        for student in Student.objects.filter(status='active'):
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for grade '{grade}'")
        # Update student custom_fee from fee structure if zero
        for student in Student.objects.filter(status='active', custom_fee=0):
            fs = FeeStructure.objects.filter(grade=student.grade).first()
            if fs:
                student.custom_fee = fs.monthly_fee
                student.save(update_fields=['custom_fee'])
                print(f"  → Updated custom_fee for {student.name}")
        # Generate current month fee records if missing
        today = date.today()
        month, year = today.month, today.year
        due_date = today + timedelta(days=settings.due_date_offset)
        created = 0
        for student in Student.objects.filter(status='active', custom_fee__gt=0):
            if not FeeRecord.objects.filter(student=student, month=month, year=year).exists():
                FeeRecord.objects.create(
                    student=student, month=month, year=year,
                    amount=student.custom_fee, due_date=due_date, status='pending'
                )
                created += 1
        if created:
            print(f"  → Generated {created} fee record(s) for {month}/{year}")
        # Fix status of fee records with payments
        for fr in FeeRecord.objects.filter(paid_amount__gt=0):
            fr.save()

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    repair_tenant(tenant)
print("\n✅ Data repair complete.")
DATAREPAIR

echo
echo "========================================="
echo "🎉 PERMANENT FIX APPLIED!"
echo "• All existing schools now have correct tables."
echo "• Every NEW school will be auto-migrated automatically."
echo "• Restart your server: python manage.py runserver"
echo "========================================="
