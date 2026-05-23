#!/bin/bash
set -e

echo "========================================="
echo "ULTIMATE TABLE FIXER (COPY FROM EXISTING)"
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

python3 << 'PYSCRIPT'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient

# Find a tenant that has the student table
source_tenant = None
for tenant in SchoolClient.objects.filter(is_active=True).exclude(schema_name='public'):
    with schema_context(tenant.schema_name):
        with connection.cursor() as cursor:
            cursor.execute("SELECT to_regclass('axis_saas_student')")
            if cursor.fetchone()[0] is not None:
                source_tenant = tenant.schema_name
                break

if not source_tenant:
    print("❌ No tenant with existing axis_saas_student table found. Please create at least one tenant with migrations first.")
    sys.exit(1)

print(f"✅ Found source tenant: {source_tenant}")

# Get CREATE TABLE statements for required tables
tables = ['axis_saas_student', 'axis_saas_feerecord', 'axis_saas_paymenttransaction', 
          'axis_saas_feestructure', 'axis_saas_schoolfeesettings']

create_statements = {}
with schema_context(source_tenant):
    with connection.cursor() as cursor:
        for table in tables:
            cursor.execute(f"""
                SELECT 'CREATE TABLE ' || quote_ident('{table}') || ' (' || 
                string_agg(quote_ident(attname) || ' ' || pg_catalog.format_type(atttypid, atttypmod), ', ') || ');'
                FROM pg_attribute
                WHERE attrelid = '{table}'::regclass
                AND attnum > 0
                AND NOT attisdropped
                GROUP BY attrelid;
            """)
            row = cursor.fetchone()
            if row:
                create_statements[table] = row[0]
                print(f"  → Retrieved definition for {table}")
            else:
                print(f"  ⚠️ Could not get definition for {table}")

# Get foreign key constraints separately
with schema_context(source_tenant):
    with connection.cursor() as cursor:
        for table in tables:
            cursor.execute(f"""
                SELECT 'ALTER TABLE ' || quote_ident('{table}') || ' ADD CONSTRAINT ' || quote_ident(conname) || ' ' || pg_get_constraintdef(conoid) || ';'
                FROM pg_constraint
                WHERE conrelid = '{table}'::regclass AND contype = 'f'
            """)
            for fk_row in cursor.fetchall():
                create_statements[table] += "\n" + fk_row[0]

# Now apply to all tenants that miss any table
for tenant in SchoolClient.objects.filter(is_active=True).exclude(schema_name='public'):
    print(f"\n🔧 Processing {tenant.schema_name}...")
    with schema_context(tenant.schema_name):
        missing = []
        with connection.cursor() as cursor:
            for table in tables:
                cursor.execute(f"SELECT to_regclass('{table}')")
                if cursor.fetchone()[0] is None:
                    missing.append(table)
        if not missing:
            print("  ✅ All tables exist")
            continue
        
        print(f"  ⚠️ Missing tables: {missing}")
        for table in missing:
            create_sql = create_statements.get(table)
            if create_sql:
                try:
                    with connection.cursor() as cursor:
                        cursor.execute(create_sql)
                    print(f"  → Created table {table}")
                except Exception as e:
                    print(f"  ✗ Failed to create {table}: {e}")
            else:
                print(f"  ✗ No definition available for {table}")

# Data repair
def repair_tenant_data(tenant):
    with schema_context(tenant.schema_name):
        from axis_saas.models import SchoolFeeSettings, FeeStructure, Student, FeeRecord
        from datetime import date, timedelta
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)
        for student in Student.objects.filter(status='active'):
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for '{grade}'")
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
                FeeRecord.objects.create(student=student, month=month, year=year,
                                         amount=student.custom_fee, due_date=due_date, status='pending')
                created += 1
        if created:
            print(f"  → Generated {created} fee record(s) for {month}/{year}")
        for fr in FeeRecord.objects.filter(paid_amount__gt=0):
            fr.save()

print("\n🔧 Running data repair for all tenants...")
for tenant in SchoolClient.objects.filter(is_active=True).exclude(schema_name='public'):
    print(f"\n--- Repairing {tenant.schema_name} ---")
    repair_tenant_data(tenant)

print("\n✅ ALL TENANTS FIXED. Restart your server now.")
PYSCRIPT

echo
echo "🎉 Done! Now restart your server: python manage.py runserver"
