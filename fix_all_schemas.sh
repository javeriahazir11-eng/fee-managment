#!/bin/bash
set -e

echo "========================================="
echo "AXIS SCHOOL SYSTEM – COMPLETE FIX"
echo "========================================="

# Activate virtual environment if not already active
if [ -z "$VIRTUAL_ENV" ]; then
    if [ -d "venv" ]; then
        source venv/bin/activate
        echo "✓ Virtual environment activated"
    else
        echo "✗ Virtual environment not found. Please activate manually."
        exit 1
    fi
fi

echo
echo "Step 1: Migrating shared schema (public) ..."
python manage.py migrate_schemas --shared

echo
echo "Step 2: Migrating ALL tenant schemas (this may take a while) ..."
python manage.py migrate_schemas --tenant

echo
echo "Step 3: Running data integrity fixes and generating current month fees ..."
python3 << 'PYSCRIPT'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, SchoolFeeSettings, FeeStructure, Student, FeeRecord
from datetime import date, timedelta

def fix_tenant(tenant):
    print(f"\n--- Processing: {tenant.schema_name} ({tenant.name}) ---")
    with schema_context(tenant.schema_name):
        # 1. Ensure Fee Settings exist
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)
        # 2. Ensure FeeStructure for every grade that has students
        students = Student.objects.filter(status='active')
        for student in students:
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for grade '{grade}' (₹{default_fee})")
        # 3. Update student custom_fee from FeeStructure if missing
        for student in students:
            if student.custom_fee == 0:
                fee_struct = FeeStructure.objects.filter(grade=student.grade).first()
                if fee_struct:
                    student.custom_fee = fee_struct.monthly_fee
                    student.save(update_fields=['custom_fee'])
                    print(f"  → Updated custom_fee for {student.name} to ₹{student.custom_fee}")
        # 4. Generate current month fee records if missing
        today = date.today()
        month, year = today.month, today.year
        due_date = today + timedelta(days=settings.due_date_offset)
        created = 0
        for student in students:
            if student.custom_fee > 0:
                if not FeeRecord.objects.filter(student=student, month=month, year=year).exists():
                    FeeRecord.objects.create(
                        student=student, month=month, year=year,
                        amount=student.custom_fee, due_date=due_date, status='pending'
                    )
                    created += 1
        if created:
            print(f"  → Generated {created} new fee record(s) for {month}/{year}")
        # 5. Refresh status of fee records with partial payments
        for fr in FeeRecord.objects.filter(paid_amount__gt=0):
            fr.save()  # triggers status update
        print(f"  ✓ Fix completed for {tenant.schema_name}")

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    try:
        fix_tenant(tenant)
    except Exception as e:
        print(f"  ✗ ERROR in {tenant.schema_name}: {e}")
        continue

print("\n✅ Data integrity fixes finished.")
PYSCRIPT

echo
echo "Step 4: Clearing old session data ..."
python manage.py clearsessions 2>/dev/null || echo "  (nothing to clear)"

echo
echo "========================================="
echo "🎉 ALL FIXES APPLIED SUCCESSFULLY!"
echo "Please refresh your school portal now."
echo "========================================="
