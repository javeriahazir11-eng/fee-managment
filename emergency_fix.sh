#!/bin/bash
# AXIS SYSTEM – EMERGENCY TABLE CREATOR & FEE FIXER
# Run from project root (where manage.py is)

set -e

echo "============================================"
echo "EMERGENCY PATCHER – FORCE CREATE MISSING TABLES"
echo "============================================"

# 1. Activate virtual environment
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
    echo "✅ Virtual environment activated."
else
    echo "⚠️ No venv found – assuming Python environment is ready."
fi

# 2. Migrate shared schema
echo "→ Migrating shared (public) schema..."
python manage.py migrate_schemas --shared

# 3. Migrate all tenants (standard)
echo "→ Running standard tenant migrations..."
python manage.py migrate_schemas --tenant

# 4. Force table creation for any missing tables (using schema_editor)
echo "→ Force‑creating missing tables for axis_saas models in each tenant..."
python << 'PYTHON_FORCE_CREATE'
import os
import sys
import django
from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure, FeeRecord, PaymentTransaction, SchoolFeeSettings

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
django.setup()

from django.core.management import call_command
from django.db import connections

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
models_to_create = [Student, FeeStructure, FeeRecord, PaymentTransaction, SchoolFeeSettings]

for tenant in tenants:
    print(f"\n🔧 Processing tenant: {tenant.schema_name}")
    with schema_context(tenant.schema_name):
        # Check if the Student table exists
        cursor = connection.cursor()
        cursor.execute("SELECT to_regclass(%s)", [f'{tenant.schema_name}.axis_saas_student'])
        exists = cursor.fetchone()[0] is not None
        if not exists:
            print(f"   ⚠️ Student table missing – forcing creation of all axis_saas tables.")
            # Use schema_editor to create all tables for the axis_saas app
            with connection.schema_editor() as schema_editor:
                for model in models_to_create:
                    if not model._meta.db_table in connection.introspection.table_names():
                        schema_editor.create_model(model)
                        print(f"      → Created table {model._meta.db_table}")
        else:
            print(f"   ✅ Student table exists – no table creation needed.")

        # Also run any pending migrations (for other apps like auth, admin)
        call_command('migrate', interactive=False, verbosity=0)
PYTHON_FORCE_CREATE

# 5. Data fixes (fee generation, custom_fee sync, overdue status)
echo "→ Running data fixes (fee generation, custom_fee sync, overdue status)..."
python << 'PYTHON_DATA_FIX'
import os
import sys
import django
from datetime import date, timedelta
from decimal import Decimal

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
django.setup()

from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure, FeeRecord, SchoolFeeSettings, PaymentTransaction

today = date.today()
current_month = today.month
current_year = today.year

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
total_fee_records_created = 0
total_pending_all = 0

for tenant in tenants:
    print(f"\n📘 Processing tenant: {tenant.schema_name} – {tenant.name}")
    with schema_context(tenant.schema_name):
        # Ensure fee settings exist
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)

        # 1. Sync custom_fee from FeeStructure
        fee_structures = {fs.grade: fs.monthly_fee for fs in FeeStructure.objects.all()}
        updated = 0
        for student in Student.objects.all():
            if student.custom_fee == 0 and student.grade in fee_structures:
                student.custom_fee = fee_structures[student.grade]
                student.save(update_fields=['custom_fee'])
                updated += 1
        if updated:
            print(f"   Synced custom_fee for {updated} student(s).")

        # 2. Generate missing fee records for current month
        existing = FeeRecord.objects.filter(month=current_month, year=current_year)
        if existing.exists():
            print(f"   Fee records for {current_month}/{current_year} already exist ({existing.count()} records).")
        else:
            created = 0
            for student in Student.objects.filter(status='active'):
                base_fee = student.custom_fee if student.custom_fee > 0 else 0
                if base_fee == 0 and student.grade in fee_structures:
                    base_fee = fee_structures[student.grade]
                    student.custom_fee = base_fee
                    student.save(update_fields=['custom_fee'])
                if base_fee > 0:
                    due_date = today + timedelta(days=settings.due_date_offset)
                    FeeRecord.objects.create(
                        student=student, month=current_month, year=current_year,
                        amount=base_fee, due_date=due_date, status='pending'
                    )
                    created += 1
            if created:
                print(f"   Generated {created} new fee record(s) for {current_month}/{current_year}.")
                total_fee_records_created += created

        # 3. Mark overdue records
        overdue_records = FeeRecord.objects.filter(
            status__in=['pending', 'partial'], due_date__lt=today
        )
        overdue_count = overdue_records.update(status='overdue')
        if overdue_count:
            print(f"   Marked {overdue_count} record(s) as overdue.")

        # 4. Total pending fees for this tenant
        pending_total = sum(fr.remaining for fr in FeeRecord.objects.filter(status__in=['pending', 'partial', 'overdue']))
        total_pending_all += pending_total
        print(f"   Total pending fees in this school: ₹{pending_total:.2f}")

print("\n✅ Data fixes completed.")
print(f"📊 Total new fee records generated across all tenants: {total_fee_records_created}")
print(f"💰 Total pending fees across all schools: ₹{total_pending_all:.2f}")
PYTHON_DATA_FIX

echo "============================================"
echo "PATCHER FINISHED"
echo "============================================"
echo ""
echo "What was done:"
echo "  ✓ Migrated public schema"
echo "  ✓ Ran standard tenant migrations"
echo "  ✓ Force‑created any missing axis_saas tables (e.g., Student, FeeRecord)"
echo "  ✓ Synced custom_fee from FeeStructure"
echo "  ✓ Generated missing fee records for current month"
echo "  ✓ Marked overdue records"
echo ""
echo "👉 Restart your Django server now:"
echo "   python manage.py runserver"
