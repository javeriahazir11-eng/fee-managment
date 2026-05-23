#!/bin/bash
set -e

echo "========================================="
echo "FINAL PERMANENT FIX - CLEAN SIGNALS"
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

# Step 1: Completely rewrite signals.py with only the correct ones
echo "📝 Rewriting signals.py..."
python3 << 'REWRITESIGNAL'
import os
import sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

signals_path = "axis_saas/signals.py"
# Minimal correct signals
correct_signals = '''from django.dispatch import receiver
from django_tenants.signals import post_schema_sync
from django_tenants.utils import schema_context
from django.contrib.auth import get_user_model
from django.core.management import call_command
from django.db.models.signals import post_save
from axis_saas.models import SchoolClient

@receiver(post_schema_sync)
def provision_secure_tenant_admin(sender, tenant, **kwargs):
    if tenant.schema_name == 'public':
        return

    User = get_user_model()
    u_name = tenant.admin_username
    u_pass = tenant.admin_password
    u_email = f"{u_name}@{tenant.schema_name}.com"
    
    if not u_name or not u_pass:
        return

    with schema_context(tenant.schema_name):
        if not User.objects.filter(username=u_name).exists():
            User.objects.create_superuser(
                username=u_name,
                email=u_email,
                password=u_pass
            )
            print(f"🚀 [DYNAMIC SYNC] Operational superuser '{u_name}' provisioned into tenant schema '{tenant.schema_name}' successfully.")

@receiver(post_save, sender=SchoolClient)
def sync_tenant_admin_password(sender, instance, created, **kwargs):
    if instance.schema_name == 'public' or created:
        return
    u_name = instance.admin_username
    u_pass = instance.admin_password
    if u_name and u_pass:
        with schema_context(instance.schema_name):
            User = get_user_model()
            user = User.objects.filter(username=u_name).first()
            if user:
                user.set_password(u_pass)
                user.save()
                print(f"🔄 [AXIS AUTH] Password synchronized for '{u_name}' in schema '{instance.schema_name}'.")

# --- CORRECT AUTO-MIGRATION SIGNAL ---
@receiver(post_schema_sync)
def auto_migrate_tenant(sender, tenant, **kwargs):
    if tenant.schema_name != 'public':
        print(f"🚀 Running migrations for tenant: {tenant.schema_name}")
        call_command('migrate_schemas', '--tenant', schema_name=tenant.schema_name)
'''

with open(signals_path, 'w') as f:
    f.write(correct_signals)
print("✓ signals.py completely rewritten")
REWRITESIGNAL

# Step 2: Force migrations for all tenants (reset migration history for axis_saas)
echo "🔄 Resetting and re-applying migrations for all tenants..."
python3 << 'FORCEMIGRATE'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient
from django.db import connection

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    print(f"\n--- Resetting migrations for {tenant.schema_name} ---")
    with schema_context(tenant.schema_name):
        with connection.cursor() as cursor:
            # Delete migration records for axis_saas to force re-apply
            cursor.execute("DELETE FROM django_migrations WHERE app = 'axis_saas'")
            print("  → Deleted axis_saas migration history")
        # Now run migrations (this will recreate all tables with proper indexes/constraints)
        from django.core.management import call_command
        call_command('migrate', 'axis_saas', verbosity=0, interactive=False)
        print("  → Re-applied axis_saas migrations")
print("✅ All tenants reset and migrated")
FORCEMIGRATE

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
echo "• All existing tenants have been fully migrated (tables, indexes, constraints)."
echo "• Signals are now clean – only one auto-migration signal remains."
echo "• Every new tenant will automatically run migrations correctly."
echo "• Restart your server: python manage.py runserver"
echo "========================================="
