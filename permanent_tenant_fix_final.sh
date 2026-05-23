#!/bin/bash
set -e

echo "========================================="
echo "PERMANENT TENANT FIX - FINAL"
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

# Step 1: Remove broken signals and add correct one
echo "📝 Fixing signals.py..."
python3 << 'FIXSIGNAL'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

signals_path = "axis_saas/signals.py"
with open(signals_path, 'r') as f:
    lines = f.readlines()

# Remove the faulty auto_migrate_tenant signal and ensure_tenant_tables (keep the working ones)
new_lines = []
skip = False
for line in lines:
    if "# --- AUTO-CREATE TENANT TABLES" in line:
        skip = True
    if "# --- AUTO-MIGRATE NEW TENANTS" in line:
        skip = True
    if skip and ("@receiver" in line or "def " in line or "print" in line or "call_command" in line):
        continue
    if "auto_migrate_tenant" in line or "ensure_tenant_tables" in line:
        continue
    if skip and line.strip() == "":
        skip = False
        continue
    if not skip:
        new_lines.append(line)

# Add correct signal at the end
new_lines.append("\n\n# --- CORRECT AUTO-MIGRATION SIGNAL (FIXED) ---\n")
new_lines.append("from django.core.management import call_command\n")
new_lines.append("@receiver(post_schema_sync)\n")
new_lines.append("def auto_migrate_tenant(sender, tenant, **kwargs):\n")
new_lines.append("    if tenant.schema_name != 'public':\n")
new_lines.append("        print(f\"🚀 Running migrations for tenant: {tenant.schema_name}\")\n")
new_lines.append("        call_command('migrate_schemas', '--tenant', schema_name=tenant.schema_name)\n")

with open(signals_path, 'w') as f:
    f.writelines(new_lines)
print("✓ signals.py fixed")
FIXSIGNAL

# Step 2: Run migrations for ALL tenants (this creates all tables properly)
echo "🔄 Running migrations for all tenants (this may take a minute)..."
python manage.py migrate_schemas --tenant

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
echo "• All existing tenants have been fully migrated."
echo "• New tenants will automatically run migrations on creation."
echo "• Restart your server: python manage.py runserver"
echo "========================================="
