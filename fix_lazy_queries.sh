#!/bin/bash

# fix_lazy_queries.sh – correctly evaluate querysets inside tenant schema context
# Run once from project root: ./fix_lazy_queries.sh

set -e

cd ~/axis_school_sys

# Backup current views.py
cp axis_saas/views.py axis_saas/views.py.backup_lazy

python3 << 'EOF'
import re

with open("axis_saas/views.py", "r") as f:
    lines = f.readlines()

new_lines = []
i = 0
while i < len(lines):
    line = lines[i]
    new_lines.append(line)

    # ---- Dashboard: recent_payments ----
    if "recent_payments = PaymentTransaction.objects.select_related('student').order_by('-payment_date')[:5]" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        # Check if conversion line already exists (avoid duplicates)
        if i+1 < len(lines) and "recent_payments = list(recent_payments)" not in lines[i+1]:
            new_lines.append(f"{indent}recent_payments = list(recent_payments)  # force evaluation inside schema context\n")

    # ---- Fee Collection: recent_payments ----
    if "        recent_payments = PaymentTransaction.objects.select_related('student').order_by('-payment_date')[:5]" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        if i+1 < len(lines) and "recent_payments = list(recent_payments)" not in lines[i+1]:
            new_lines.append(f"{indent}recent_payments = list(recent_payments)  # force evaluation\n")

    # ---- Student Profile: fee_records and payments ----
    if "fee_records = student.fee_records.all().order_by('-year', '-month')" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        if i+1 < len(lines) and "fee_records = list(fee_records)" not in lines[i+1]:
            new_lines.append(f"{indent}fee_records = list(fee_records)  # force evaluation\n")
    if "payments = student.payments.all().order_by('-payment_date')" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        if i+1 < len(lines) and "payments = list(payments)" not in lines[i+1]:
            new_lines.append(f"{indent}payments = list(payments)  # force evaluation\n")

    # ---- Reports: payments (after ordering) ----
    if "payments = payments_qs.order_by('-payment_date')" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        if i+1 < len(lines) and "payments = list(payments)" not in lines[i+1]:
            new_lines.append(f"{indent}payments = list(payments)  # force evaluation\n")

    i += 1

with open("axis_saas/views.py", "w") as f:
    f.writelines(new_lines)

print("✅ views.py patched – querysets will be evaluated inside schema context.")
EOF

echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
