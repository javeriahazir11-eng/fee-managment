#!/bin/bash

# final_fix.sh – clean patch for lazy queryset evaluation
# Run once: ./final_fix.sh

set -e

cd ~/axis_school_sys

# Backup current views.py
cp axis_saas/views.py axis_saas/views.py.backup_final

python3 << 'EOF'
import re

file_path = "axis_saas/views.py"
with open(file_path, "r") as f:
    lines = f.readlines()

new_lines = []
skip_next = False
for i, line in enumerate(lines):
    # Remove duplicate list conversions (the ones that appear twice in a row)
    if "recent_payments = list(recent_payments)" in line and i > 0 and "recent_payments = list(recent_payments)" in lines[i-1]:
        continue
    # Replace .count() with len() for recent_payments and payments
    if "recent_payments.count()" in line:
        line = line.replace("recent_payments.count()", "len(recent_payments)")
    if "payments.count()" in line:
        line = line.replace("payments.count()", "len(payments)")
    # Fix print line that had extra spaces (indentation)
    if 'print(f"DEBUG fee_collection: total_payments={PaymentTransaction.objects.count()}, recent_count={recent_payments.count()}' in line:
        # Ensure it's properly indented (8 spaces)
        line = '        print(f"DEBUG fee_collection: total_payments={PaymentTransaction.objects.count()}, recent_count={len(recent_payments)}")\n'
    new_lines.append(line)

with open(file_path, "w") as f:
    f.writelines(new_lines)

print("✅ views.py patched – querysets evaluated inside schema context, .count() replaced with len()")
EOF

echo ""
echo "📦 Running migrations for all tenants (ensures tables exist)..."
source venv/bin/activate
python manage.py migrate_schemas --noinput

echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
