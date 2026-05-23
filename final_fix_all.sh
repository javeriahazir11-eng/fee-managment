#!/bin/bash

# final_fix_all.sh – evaluate all querysets inside schema context
# Run once from project root: ./final_fix_all.sh

set -e

cd ~/axis_school_sys

# Backup current views.py (again)
cp axis_saas/views.py axis_saas/views.py.backup_before_final

python3 << 'EOF'
import re

file_path = "axis_saas/views.py"
with open(file_path, "r") as f:
    lines = f.readlines()

new_lines = []
i = 0
while i < len(lines):
    line = lines[i]
    new_lines.append(line)

    # ---- student_list: convert grades and sections to lists ----
    if "grades = Student.objects.values_list('grade', flat=True).distinct().order_by('grade')" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        # Insert the conversion line right after
        new_lines.append(f"{indent}grades = list(grades)  # force evaluation inside schema context\n")
    if "sections = Student.objects.values_list('section', flat=True).distinct().order_by('section')" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        new_lines.append(f"{indent}sections = list(sections)  # force evaluation inside schema context\n")

    # ---- fee_collection: convert grades and sections to lists ----
    if "grades = Student.objects.values_list('grade', flat=True).distinct().order_by('grade')" in line and i < len(lines)-1 and "list(grades)" not in lines[i+1]:
        indent = re.match(r'^(\s*)', line).group(1)
        new_lines.append(f"{indent}grades = list(grades)  # force evaluation\n")
    if "sections = Student.objects.values_list('section', flat=True).distinct().order_by('section')" in line and i < len(lines)-1 and "list(sections)" not in lines[i+1]:
        indent = re.match(r'^(\s*)', line).group(1)
        new_lines.append(f"{indent}sections = list(sections)  # force evaluation\n")

    # ---- reports: evaluate payments_qs as a list inside the block ----
    # Find the line that creates payments_qs and convert it to list
    if "payments_qs = PaymentTransaction.objects.filter(payment_date__gte=start_date, payment_date__lte=end_date)" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        # After this line, add a conversion to list
        new_lines.append(f"{indent}payments_qs = list(payments_qs)  # force evaluation inside schema context\n")
        # Also, later in the same view there is 'payments = payments_qs.order_by(...)' which will now fail because payments_qs is a list.
        # We'll handle that by replacing that line with a proper list comprehension.
        # But we'll do it in a separate pass – for now, add a marker comment.
        # We'll replace the order_by line later.
    # Fix the later part: replace 'payments = payments_qs.order_by(...)' with proper list creation
    # We'll look for that line and replace it.
    if "payments = payments_qs.order_by('-payment_date')" in line:
        indent = re.match(r'^(\s*)', line).group(1)
        # Replace the line with: payments = sorted(payments_qs, key=lambda p: p.payment_date, reverse=True)
        new_lines.pop()  # remove the line we just added
        new_lines.append(f"{indent}payments = sorted(payments_qs, key=lambda p: p.payment_date, reverse=True)  # evaluate after list conversion\n")
        # Also, we need to adjust any later .count() calls? They are already changed to len() in previous patches.

    i += 1

with open(file_path, "w") as f:
    f.writelines(new_lines)

print("✅ views.py patched – all querysets evaluated inside schema context.")
EOF

echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
