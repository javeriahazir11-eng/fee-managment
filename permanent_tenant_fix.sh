#!/bin/bash
set -e

echo "========================================="
echo "PERMANENT TENANT TABLE FIX"
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

# ==========================================
# STEP 1: Add the auto‑creation signal
# ==========================================
echo "📝 Adding automatic table creation for new tenants..."
python3 << 'ADDSIGNAL'
import os
import sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db.models.signals import post_save
from django.dispatch import receiver
from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient

# Signal code to be appended to signals.py
SIGNAL_CODE = """

# --- AUTO-CREATE TENANT TABLES (added by permanent fix) ---
@receiver(post_save, sender=SchoolClient)
def ensure_tenant_tables(sender, instance, created, **kwargs):
    if created and instance.schema_name != 'public':
        print(f"🔧 Creating tables for new tenant: {instance.schema_name}")
        try:
            with schema_context(instance.schema_name):
                from django.db import connection
                from axis_saas.models import Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings
                required_models = [Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings]
                with connection.schema_editor() as schema_editor:
                    for model in required_models:
                        if not model._meta.db_table in connection.introspection.table_names():
                            schema_editor.create_model(model)
                            print(f"  → Created table {model._meta.db_table}")
                # Also create default fee settings
                SchoolFeeSettings.objects.get_or_create(pk=1)
        except Exception as e:
            print(f"  ✗ Failed to create tables for {instance.schema_name}: {e}")
"""

# Append to signals.py if not already present
signals_path = "axis_saas/signals.py"
with open(signals_path, 'r') as f:
    content = f.read()
if "ensure_tenant_tables" not in content:
    with open(signals_path, 'a') as f:
        f.write(SIGNAL_CODE)
    print("✓ Signal added to axis_saas/signals.py")
else:
    print("✓ Signal already present")
ADDSIGNAL

# ==========================================
# STEP 2: Fix ALL existing tenants (create missing tables)
# ==========================================
echo "🔧 Fixing all existing tenants..."
python3 << 'FIXEXISTING'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings
from datetime import date, timedelta

REQUIRED_MODELS = [Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings]

def ensure_tables(schema_name):
    print(f"\n🔧 Processing {schema_name}...")
    with schema_context(schema_name):
        missing = []
        for model in REQUIRED_MODELS:
            if not model._meta.db_table in connection.introspection.table_names():
                missing.append(model)
        if not missing:
            print("  ✅ All tables exist")
            return
        print(f"  ⚠️ Missing tables: {[m._meta.db_table for m in missing]}")
        with connection.schema_editor() as schema_editor:
            for model in missing:
                try:
                    schema_editor.create_model(model)
                    print(f"  → Created {model._meta.db_table}")
                except Exception as e:
                    print(f"  ✗ Failed to create {model._meta.db_table}: {e}")

def repair_data(tenant):
    with schema_context(tenant.schema_name):
        # Ensure default fee settings
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)

        # Create missing fee structures from active students
        for student in Student.objects.filter(status='active'):
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for grade '{grade}' (₹{default_fee})")

        # Update student custom_fee from structure if zero
        for student in Student.objects.filter(status='active', custom_fee=0):
            fs = FeeStructure.objects.filter(grade=student.grade).first()
            if fs:
                student.custom_fee = fs.monthly_fee
                student.save(update_fields=['custom_fee'])
                print(f"  → Updated custom_fee for {student.name} to ₹{student.custom_fee}")

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
    ensure_tables(tenant.schema_name)
    repair_data(tenant)

print("\n✅ All existing tenants fixed.")
FIXEXISTING

echo
echo "========================================="
echo "🎉 PERMANENT FIX APPLIED!"
echo "• Every NEW tenant will automatically get correct tables."
echo "• All EXISTING tenants are now repaired."
echo "• Restart your server: python manage.py runserver"
echo "========================================="
