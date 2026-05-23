#!/bin/bash
set -e

echo "========================================="
echo "COPY SCHEMA FROM WORKING TENANT"
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

python3 << 'PYCOPY'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient

# 1. Find a working tenant that has all tables (use 'as' - known good)
source_tenant = None
for tenant in SchoolClient.objects.filter(is_active=True).exclude(schema_name='public'):
    with schema_context(tenant.schema_name):
        with connection.cursor() as cursor:
            cursor.execute("SELECT to_regclass('axis_saas_student')")
            if cursor.fetchone()[0] is not None:
                source_tenant = tenant.schema_name
                break
if not source_tenant:
    print("❌ No working tenant found. Please create at least one tenant via admin first.")
    sys.exit(1)

print(f"✅ Using source tenant: {source_tenant}")

# 2. List of tables to copy
tables = [
    'axis_saas_student',
    'axis_saas_feerecord',
    'axis_saas_paymenttransaction',
    'axis_saas_feestructure',
    'axis_saas_schoolfeesettings'
]

# 3. For each target tenant, copy missing tables
target_tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for target in target_tenants:
    if target.schema_name == source_tenant:
        continue
    print(f"\n🔧 Processing {target.schema_name}...")
    with schema_context(target.schema_name):
        missing = []
        with connection.cursor() as cursor:
            for table in tables:
                cursor.execute(f"SELECT to_regclass('{table}')")
                if cursor.fetchone()[0] is None:
                    missing.append(table)
        if not missing:
            print("  ✅ All tables already exist")
            continue
        
        print(f"  ⚠️ Missing tables: {missing}")
        # Copy each missing table from source tenant
        with schema_context(source_tenant):
            for table in missing:
                # Get CREATE TABLE statement from source using LIKE
                with connection.cursor() as cursor:
                    # First, get the schema of source table
                    cursor.execute(f"""
                        SELECT 'CREATE TABLE ' || quote_ident('{table}') || ' (LIKE ' || quote_ident('{table}') || ' INCLUDING ALL);'
                    """)
                    create_sql = cursor.fetchone()[0]
                    # Switch to target schema and execute
                    with schema_context(target.schema_name):
                        try:
                            with connection.cursor() as cursor2:
                                cursor2.execute(create_sql)
                            print(f"  → Copied table {table}")
                        except Exception as e:
                            print(f"  ✗ Failed to copy {table}: {e}")

# 4. Data repair (fee structures, current month fees)
print("\n🔧 Running data repair for all tenants...")
from axis_saas.models import Student, FeeStructure, FeeRecord, SchoolFeeSettings
from datetime import date, timedelta

def repair_tenant(tenant):
    with schema_context(tenant.schema_name):
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)
        for student in Student.objects.filter(status='active'):
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for grade '{grade}'")
        for student in Student.objects.filter(status='active', custom_fee=0):
            fs = FeeStructure.objects.filter(grade=student.grade).first()
            if fs:
                student.custom_fee = fs.monthly_fee
                student.save(update_fields=['custom_fee'])
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
        for fr in FeeRecord.objects.filter(paid_amount__gt=0):
            fr.save()

for tenant in target_tenants:
    print(f"\n--- Repairing data for {tenant.schema_name} ---")
    repair_tenant(tenant)

print("\n✅ All tenants now have correct tables and data.")
PYCOPY

echo
echo "🎉 Script completed. Restart your server: python manage.py runserver"
