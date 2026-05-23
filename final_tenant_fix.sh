#!/bin/bash
set -e

echo "========================================="
echo "FINAL TENANT TABLE FIXER"
echo "========================================="

if [ -z "$VIRTUAL_ENV" ]; then
    if [ -d "venv" ]; then
        source venv/bin/activate
        echo "✓ Virtualenv activated"
    else
        echo "✗ Virtualenv not found. Please activate manually and re-run."
        exit 1
    fi
fi

python3 << 'PYFIX'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings

# Models that MUST exist in every tenant schema
REQUIRED_MODELS = [Student, FeeRecord, PaymentTransaction, FeeStructure, SchoolFeeSettings]

def ensure_tables_in_schema(schema_name):
    print(f"\n🔧 Checking schema: {schema_name}")
    with schema_context(schema_name):
        missing = []
        for model in REQUIRED_MODELS:
            if not model._meta.db_table in connection.introspection.table_names():
                missing.append(model)
        if not missing:
            print(f"  ✅ All tables present")
            return

        print(f"  ⚠️ Missing tables: {[m._meta.db_table for m in missing]}")
        # Create missing tables using schema editor
        with connection.schema_editor() as schema_editor:
            for model in missing:
                try:
                    schema_editor.create_model(model)
                    print(f"  → Created {model._meta.db_table}")
                except Exception as e:
                    print(f"  ✗ Failed to create {model._meta.db_table}: {e}")

def fix_tenant_data(tenant):
    with schema_context(tenant.schema_name):
        # Ensure settings exist
        SchoolFeeSettings.objects.get_or_create(pk=1)

        # Create missing fee structures based on student grades
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
        from datetime import date, timedelta
        settings = SchoolFeeSettings.objects.get(pk=1)
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
            fr.save()  # triggers status update

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    ensure_tables_in_schema(tenant.schema_name)
    fix_tenant_data(tenant)

print("\n✅ ALL TENANT SCHEMAS NOW HAVE CORRECT TABLES AND DATA.")
PYFIX

echo
echo "🎉 Fix completed. Now restart your server: python manage.py runserver"
