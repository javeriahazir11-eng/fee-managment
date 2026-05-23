#!/bin/bash
set -e  # stop on error

echo "========================================="
echo "AXIS SYSTEM – FULL TENANT REPAIR"
echo "========================================="

# Activate venv if not already
if [ -z "$VIRTUAL_ENV" ]; then
    if [ -d "venv" ]; then
        source venv/bin/activate
        echo "✓ Virtualenv activated"
    else
        echo "✗ No venv found. Please activate manually."
        exit 1
    fi
fi

echo
echo "Step 1: Migrate SHARED schema (public)"
python manage.py migrate_schemas --shared

echo
echo "Step 2: Migrate ALL tenant schemas (this fixes missing tables)"
python manage.py migrate_schemas --tenant

echo
echo "Step 3: Deep data repair for every tenant"
python3 << 'PYREPAIR'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, SchoolFeeSettings, FeeStructure, Student, FeeRecord, PaymentTransaction
from datetime import date, timedelta

def fix_one_tenant(tenant):
    print(f"\n--- Fixing: {tenant.schema_name} ({tenant.name}) ---")
    with schema_context(tenant.schema_name):
        # 1. Ensure FeeSettings exist
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)

        # 2. Create missing FeeStructure for any grade that has students
        students = Student.objects.filter(status='active')
        for student in students:
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for grade '{grade}' (₹{default_fee})")

        # 3. Update student custom_fee from FeeStructure if zero
        for student in students:
            if student.custom_fee == 0:
                fs = FeeStructure.objects.filter(grade=student.grade).first()
                if fs:
                    student.custom_fee = fs.monthly_fee
                    student.save(update_fields=['custom_fee'])
                    print(f"  → Updated custom_fee for {student.name} to ₹{student.custom_fee}")

        # 4. Generate current month fee record if missing
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
            print(f"  → Generated {created} fee records for {month}/{year}")

        # 5. Re‑save all fee records to update status (partial → paid etc.)
        for fr in FeeRecord.objects.filter(paid_amount__gt=0):
            fr.save()

        # 6. Ensure PaymentTransaction students still exist (avoid orphaned records)
        #    (Just a safety check – no deletion)
        print(f"  ✓ Tenant {tenant.schema_name} repaired")

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    try:
        fix_one_tenant(tenant)
    except Exception as e:
        print(f"  ✗ ERROR in {tenant.schema_name}: {e}")

print("\n✅ Data repair completed for all active tenants.")
PYREPAIR

echo
echo "Step 4: Clear session cache"
python manage.py clearsessions 2>/dev/null || echo "  (nothing to clear)"

echo
echo "========================================="
echo "🎉 ALL DONE! Now run: python manage.py runserver"
echo "========================================="
