#!/usr/bin/env python3
"""
Fix dashboard total_pending and ensure fee collection uses correct pending amount.
Also ensures get_overall_pending works with proper imports.
"""

import re

VIEWS_FILE = "axis_saas/views.py"
TEMPLATE_FILE = "templates/tenant/collect_fee.html"

def fix_views():
    with open(VIEWS_FILE, "r") as f:
        content = f.read()

    # 1. Fix dashboard: replace total_pending line
    # Look for "total_pending = get_overall_pending(student)" and replace with sum over all students
    content = re.sub(
        r'total_pending = get_overall_pending\(student\)',
        'total_pending = sum(get_overall_pending(s) for s in Student.objects.all())',
        content
    )

    # 2. Also ensure get_overall_pending has the correct import of Sum
    # We already have it, but just in case: add 'from django.db.models import Sum' inside the function
    # We'll replace the function definition to be safe.
    new_helper = """def get_overall_pending(student):
    \"\"\"Compute overall remaining balance: total fee + total items cost - total paid.\"\"\"
    from decimal import Decimal
    from django.db.models import Sum
    total_fee = student.fee_records.aggregate(Sum('amount'))['amount__sum'] or Decimal('0')
    total_paid = student.payments.aggregate(Sum('amount'))['amount__sum'] or Decimal('0')
    # Compute total items cost from all payments
    total_items_cost = Decimal('0')
    for p in student.payments.all():
        items = _extract_item_sales_from_remarks(p.remarks or '')
        total_items_cost += sum(item['line_total'] for item in items)
    return total_fee + total_items_cost - total_paid"""

    # Replace the existing function with this version
    pattern = r"def get_overall_pending\(student\):.*?return total_fee \+ total_items_cost - total_paid"
    content = re.sub(pattern, new_helper, content, flags=re.DOTALL)

    with open(VIEWS_FILE, "w") as f:
        f.write(content)
    print("✅ Views patched: dashboard fixed, get_overall_pending updated.")

def fix_template():
    with open(TEMPLATE_FILE, "r") as f:
        content = f.read()

    # Find the script block
    script_start = content.find("<script>")
    script_end = content.find("</script>", script_start)
    if script_start == -1 or script_end == -1:
        print("❌ Could not find script in collect_fee.html")
        return

    script = content[script_start:script_end+9]

    # Ensure basePending is declared with server-side total_pending
    # We'll add it after "const studentId = {{ student.id }};"
    if "const basePending" not in script:
        # Insert after studentId line
        script = script.replace(
            "const studentId = {{ student.id }};",
            "const studentId = {{ student.id }};\nconst basePending = {{ total_pending|floatformat:2 }};"
        )
    # If getBasePendingTotal is not correct, replace it
    if "function getBasePendingTotal" in script:
        script = re.sub(
            r"function getBasePendingTotal\(\) \{.*?\}",
            "function getBasePendingTotal() { return basePending; }",
            script,
            flags=re.DOTALL
        )
    else:
        # If function doesn't exist, add it after basePending
        script = script.replace(
            "const basePending = {{ total_pending|floatformat:2 }};",
            "const basePending = {{ total_pending|floatformat:2 }};\nfunction getBasePendingTotal() { return basePending; }"
        )

    # Replace the script block
    content = content[:script_start] + script + content[script_end+9:]

    with open(TEMPLATE_FILE, "w") as f:
        f.write(content)
    print("✅ collect_fee.html patched: basePending and getBasePendingTotal fixed.")

if __name__ == "__main__":
    fix_views()
    fix_template()
    print("\n🎯 All fixes applied. Restart server: python manage.py runserver")
    print("   Then check /portal/ilama/fee/collection/391/ again.")
