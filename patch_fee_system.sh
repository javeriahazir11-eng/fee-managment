#!/bin/bash
# AXIS SCHOOL SYSTEM – FULL FEE MANAGEMENT PATCHER
# Run this script from your project root (where manage.py is located)

set -e  # stop on any error

echo "============================================"
echo "AXIS SCHOOL SYSTEM – AUTO PATCHER"
echo "============================================"

# 1. Activate virtual environment (adjust path if needed)
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
    echo "✅ Virtual environment activated."
else
    echo "⚠️ Could not find venv/bin/activate. Assuming Python environment is ready."
fi

# 2. Ensure django-tenants migrations exist
echo "→ Checking for migrations..."
if [ ! -d "axis_saas/migrations" ] || [ -z "$(ls -A axis_saas/migrations/*.py 2>/dev/null)" ]; then
    echo "   Creating migrations for axis_saas..."
    python manage.py makemigrations axis_saas
fi

# 3. Migrate shared (public) schema – removes any tenant tables from public
echo "→ Migrating shared schema (public)..."
python manage.py migrate_schemas --shared

# 4. Migrate all tenant schemas – adds missing tables/columns
echo "→ Migrating all tenant schemas..."
python manage.py migrate_schemas --tenant

# 5. Run a Python fix script inside the Django environment
echo "→ Running data fixes (fee generation, custom_fee sync, etc.)..."
python << 'PYTHON_FIX_SCRIPT'
import os
import sys
import django
from datetime import date, timedelta
from decimal import Decimal

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
django.setup()

from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure, FeeRecord, SchoolFeeSettings
from django.db import connection

# ------------------------------------------------------------
# 1. Clean up public schema: drop student table if it exists
# ------------------------------------------------------------
with schema_context('public'):
    cursor = connection.cursor()
    cursor.execute("SELECT to_regclass('public.axis_saas_student');")
    if cursor.fetchone()[0]:
        print("⚠️ Found axis_saas_student in public schema. Dropping it...")
        cursor.execute("DROP TABLE axis_saas_student CASCADE;")
        print("   Dropped.")
    else:
        print("✅ public.axis_saas_student does not exist – good.")

# ------------------------------------------------------------
# 2. Process each active tenant (school)
# ------------------------------------------------------------
tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
today = date.today()
current_month = today.month
current_year = today.year

for tenant in tenants:
    print(f"\n📚 Processing tenant: {tenant.schema_name} – {tenant.name}")
    with schema_context(tenant.schema_name):
        # Ensure fee settings exist (with defaults)
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)
        
        # 2.1 Sync custom_fee for all students from FeeStructure
        fee_structures = {fs.grade: fs.monthly_fee for fs in FeeStructure.objects.all()}
        updated = 0
        for student in Student.objects.all():
            if student.custom_fee == 0 and student.grade in fee_structures:
                student.custom_fee = fee_structures[student.grade]
                student.save(update_fields=['custom_fee'])
                updated += 1
        print(f"   Synced custom_fee for {updated} student(s).")
        
        # 2.2 Generate missing fee records for current month
        existing = FeeRecord.objects.filter(month=current_month, year=current_year)
        if existing.exists():
            print(f"   Fee records for {current_month}/{current_year} already exist ({existing.count()} records).")
        else:
            students_with_fee = []
            for student in Student.objects.filter(status='active'):
                base_fee = student.custom_fee if student.custom_fee > 0 else 0
                if base_fee == 0:
                    if student.grade in fee_structures:
                        base_fee = fee_structures[student.grade]
                        student.custom_fee = base_fee
                        student.save(update_fields=['custom_fee'])
                if base_fee > 0:
                    students_with_fee.append((student, base_fee))
            
            if students_with_fee:
                due_date = today + timedelta(days=settings.due_date_offset)
                created = 0
                for student, amount in students_with_fee:
                    FeeRecord.objects.create(
                        student=student,
                        month=current_month,
                        year=current_year,
                        amount=amount,
                        due_date=due_date,
                        status='pending'
                    )
                    created += 1
                print(f"   Generated {created} fee record(s) for {current_month}/{current_year}.")
            else:
                print(f"   No active students with valid fee structure – skipping generation.")
        
        # 2.3 (Optional) Recalculate status of overdue fee records
        overdue_records = FeeRecord.objects.filter(
            status__in=['pending', 'partial'],
            due_date__lt=today
        )
        count_overdue = overdue_records.update(status='overdue')
        if count_overdue:
            print(f"   Marked {count_overdue} overdue record(s).")
        
        # 2.4 Show pending totals
        pending_total = sum(fr.remaining for fr in FeeRecord.objects.filter(status__in=['pending', 'partial', 'overdue']))
        print(f"   Total pending fees in this school: ₹{pending_total:.2f}")

print("\n✅ All tenants processed successfully.")
PYTHON_FIX_SCRIPT

echo "============================================"
echo "PATCHER FINISHED"
echo "============================================"
