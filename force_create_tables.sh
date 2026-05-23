#!/bin/bash
set -e

echo "========================================="
echo "FORCE CREATE MISSING TENANT TABLES"
echo "========================================="

if [ -z "$VIRTUAL_ENV" ]; then
    if [ -d "venv" ]; then
        source venv/bin/activate
        echo "✓ Virtualenv activated"
    else
        echo "✗ No venv found. Activate manually and re-run."
        exit 1
    fi
fi

python3 << 'PYSCRIPT'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings
from django.db.models import Model
from datetime import date, timedelta

# List of tenant-specific models that must exist in each schema
MODELS_TO_ENSURE = [Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings]

def ensure_tables_in_schema(schema_name):
    print(f"\n🔧 Checking schema: {schema_name}")
    with schema_context(schema_name):
        missing = []
        for model in MODELS_TO_ENSURE:
            if not model._meta.db_table in connection.introspection.table_names():
                missing.append(model)
        if not missing:
            print(f"  ✅ All tables exist")
            return

        print(f"  ⚠️ Missing tables: {[m._meta.db_table for m in missing]}")
        # Create missing tables using schema editor
        with connection.schema_editor() as schema_editor:
            for model in missing:
                try:
                    schema_editor.create_model(model)
                    print(f"  → Created table {model._meta.db_table}")
                except Exception as e:
                    print(f"  ✗ Failed to create {model._meta.db_table}: {e}")

def repair_tenant_data(tenant):
    with schema_context(tenant.schema_name):
        # Fee settings
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)

        # Create missing fee structures for grades that have students
        for student in Student.objects.filter(status='active'):
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for grade '{grade}' (₹{default_fee})")

        # Update student custom_fee from fee structure if zero
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

        # Fix status of fee records with partial payments
        for fr in FeeRecord.objects.filter(paid_amount__gt=0):
            fr.save()  # triggers status update

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    ensure_tables_in_schema(tenant.schema_name)
    repair_tenant_data(tenant)

print("\n✅ All tenant schemas now have correct tables and data.")
PYSCRIPT

echo
echo "🎉 Done. Now restart your server: python manage.py runserver"
