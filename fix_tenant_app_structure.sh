#!/bin/bash
set -e

echo "========================================="
echo "FIXING APP STRUCTURE FOR MULTI-TENANCY"
echo "========================================="

if [ -z "$VIRTUAL_ENV" ]; then
    if [ -d "venv" ]; then
        source venv/bin/activate
        echo "✓ Virtualenv activated"
    else
        echo "✗ Virtualenv not found. Please activate manually."
        exit 1
    fi
fi

# Step 1: Fix settings.py
echo "📝 Modifying settings.py..."
python3 << 'PYFIXSETTINGS'
import re
settings_path = 'axis_saas/settings.py'
with open(settings_path, 'r') as f:
    content = f.read()

# Remove 'axis_saas' from SHARED_APPS
pattern_shared = r"(SHARED_APPS\s*=\s*\[)(.*?)(\])"
def repl_shared(match):
    apps = match.group(2)
    # Remove lines containing 'axis_saas'
    apps_lines = apps.split('\n')
    filtered = [line for line in apps_lines if 'axis_saas' not in line]
    return match.group(1) + '\n'.join(filtered) + match.group(3)
content = re.sub(pattern_shared, repl_shared, content, flags=re.DOTALL)

# Ensure 'axis_saas' is in TENANT_APPS (if not already)
pattern_tenant = r"(TENANT_APPS\s*=\s*\[)(.*?)(\])"
def repl_tenant(match):
    apps = match.group(2)
    if "'axis_saas'" not in apps and '"axis_saas"' not in apps:
        # Add after opening bracket
        indent = '    '
        new_apps = apps.rstrip() + ',\n' + indent + "'axis_saas',"
        return match.group(1) + new_apps + match.group(3)
    return match.group(0)
content = re.sub(pattern_tenant, repl_tenant, content, flags=re.DOTALL)

# Write back
with open(settings_path, 'w') as f:
    f.write(content)
print("✓ settings.py updated.")
PYFIXSETTINGS

# Step 2: Run migrations for shared schema (public)
echo "🔄 Migrating shared schema..."
python manage.py migrate_schemas --shared

# Step 3: Run migrations for ALL tenant schemas (this will create missing tables)
echo "🔄 Migrating all tenant schemas (this may take a minute)..."
python manage.py migrate_schemas --tenant

# Step 4: Data repair (fee structures, current month fees)
echo "🔧 Repairing data for all tenants..."
python3 << 'PYREPAIR'
import os, sys
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure, FeeRecord, SchoolFeeSettings
from datetime import date, timedelta

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    print(f"\n--- Repairing {tenant.schema_name} ---")
    with schema_context(tenant.schema_name):
        # Ensure settings exist
        settings, _ = SchoolFeeSettings.objects.get_or_create(pk=1)
        
        # Create fee structures for grades that have students
        for student in Student.objects.filter(status='active'):
            grade = student.grade
            if grade and not FeeStructure.objects.filter(grade=grade).exists():
                default_fee = student.custom_fee if student.custom_fee > 0 else 1000
                FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                print(f"  → Created FeeStructure for grade '{grade}'")
        
        # Update student custom_fee
        for student in Student.objects.filter(status='active', custom_fee=0):
            fs = FeeStructure.objects.filter(grade=student.grade).first()
            if fs:
                student.custom_fee = fs.monthly_fee
                student.save(update_fields=['custom_fee'])
                print(f"  → Updated custom_fee for {student.name}")
        
        # Generate current month fees if missing
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

print("\n✅ Data repair complete.")
PYREPAIR

echo
echo "🎉 DONE! Now restart your server: python manage.py runserver"
echo "All tenant schemas should now have the correct tables."
