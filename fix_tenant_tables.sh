#!/bin/bash

# fix_tenant_tables.sh – ensures all tenant schemas have complete tables
# Run this once from the project root: ./fix_tenant_tables.sh

set -e

echo "🔧 AXIS – Repairing tenant schema tables"

# Activate virtual environment
source venv/bin/activate

# 1. Run migrations for ALL tenants (this recreates missing tables without deleting data)
echo "📦 Running migrate_schemas for all tenants..."
python manage.py migrate_schemas --noinput

# 2. Specifically target the 'hsc' tenant (the one that failed)
echo "🎯 Targeting schema 'hsc'..."
python manage.py migrate_schemas --schema hsc --noinput

# 3. Create default fee settings if missing (the model uses get_or_create)
echo "⚙️  Ensuring default fee settings exist in all tenants..."
python manage.py shell -c "
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, SchoolFeeSettings

tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
for tenant in tenants:
    with schema_context(tenant.schema_name):
        obj, created = SchoolFeeSettings.objects.get_or_create(pk=1)
        if created:
            print(f'✅ Created fee settings for {tenant.schema_name}')
"

# 4. Verify that the 'student' table is now visible in hsc
echo "🔍 Verifying table existence in 'hsc'..."
python manage.py shell -c "
from django.db import connection
connection.set_schema('hsc')
tables = connection.introspection.table_names()
if 'axis_saas_student' in tables:
    print('✅ axis_saas_student exists in hsc')
else:
    print('❌ axis_saas_student still missing – check PostgreSQL manually')
"

echo ""
echo "🚀 Restart your Django server now:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
