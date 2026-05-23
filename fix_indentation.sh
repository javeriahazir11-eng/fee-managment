#!/bin/bash

# fix_indentation.sh – removes duplicate line and fixes indentation in views.py
# Run from project root: ./fix_indentation.sh

set -e

cd ~/axis_school_sys

# Make a backup just in case
cp axis_saas/views.py axis_saas/views.py.backup_fix

# Use Python to safely edit the file
python3 << 'EOF'
import re

file_path = "axis_saas/views.py"

with open(file_path, "r") as f:
    lines = f.readlines()

new_lines = []
skip_next = False
for i, line in enumerate(lines):
    # Remove the duplicate line that is outside the block
    if line.strip() == "recent_payments = list(recent_payments)  # force evaluation inside schema context":
        continue
    # Fix indentation of the print line (should be 8 spaces, not 4)
    if "print(f\"DEBUG fee_collection: total_payments=" in line:
        # Ensure it has 8 spaces (two indentation levels) because it's inside the with block
        new_lines.append("        " + line.lstrip())
    else:
        new_lines.append(line)

with open(file_path, "w") as f:
    f.writelines(new_lines)

print("✅ Indentation fixed.")
EOF

echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
