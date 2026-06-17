#!/usr/bin/env python3
"""
Fix for fee collection total_pending calculation.
Replaces sum of fee record remaining with get_overall_pending(student)
to include unpaid item costs.
"""
import os
import re

FILE_PATH = "axis_saas/views.py"

def patch_views():
    if not os.path.exists(FILE_PATH):
        print(f"❌ Error: {FILE_PATH} not found. Run from project root.")
        return

    with open(FILE_PATH, "r") as f:
        content = f.read()

    # Find the block where student_id is not None (GET request for specific student)
    # We'll replace the line that sets total_pending after pending_records.
    # Pattern: total_pending = sum(fr.remaining for fr in pending_records)
    # We want to change it to total_pending = get_overall_pending(student)
    
    # Use regex to find and replace the exact line in the correct context.
    # We'll search for the pattern with surrounding lines to be safe.
    pattern = r'(pending_records = student\.fee_records\.filter\(status__in=\[\'pending\', \'partial\', \'overdue\'\]\)\.order_by\(\'due_date\'\)\s+total_pending = )sum\(fr\.remaining for fr in pending_records\)'
    replacement = r'\1get_overall_pending(student)'

    new_content, count = re.subn(pattern, replacement, content)

    if count == 0:
        # Fallback: try a simpler pattern just in case
        pattern_simple = r'total_pending = sum\(fr\.remaining for fr in pending_records\)'
        replacement_simple = 'total_pending = get_overall_pending(student)'
        new_content, count = re.subn(pattern_simple, replacement_simple, content)

    if count == 0:
        print("⚠️ Could not find the line to patch. It may have already been fixed.")
        return

    with open(FILE_PATH, "w") as f:
        f.write(new_content)

    print(f"✅ Patched {count} occurrence(s) of total_pending calculation.")
    print("   Now fee collection page will show overall pending (fee + unpaid items).")
    print("\n🔄 Restart your server: python manage.py runserver")

if __name__ == "__main__":
    patch_views()
