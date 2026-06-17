#!/usr/bin/env python3
"""
Fix the broken {% url %} tag in student_profile.html.
Run: python3 fix_url_tag.py
"""

import re
import os

TEMPLATE = "templates/tenant/student_profile.html"

def main():
    if not os.path.exists(TEMPLATE):
        print(f"❌ File not found: {TEMPLATE}")
        return

    with open(TEMPLATE, "r") as f:
        content = f.read()

    # The exact broken pattern
    broken_pattern = r'<a href="{% url \\\'fee_collection\\\' schema_name=tenant\.schema_name student_id=student\.id %}"\s+class="btn-primary">.*?Collect Pending</a>'

    # Replacement with correct syntax and proper SVG
    correct = '<a href="{% url \'fee_collection\' schema_name=tenant.schema_name student_id=student.id %}" class="btn-primary"><svg class="inline-icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><circle cx="12" cy="12" r="10"/><path d="M12 6v12M8 10h8"/></svg> Collect Pending</a>'

    if re.search(broken_pattern, content, re.DOTALL):
        content = re.sub(broken_pattern, correct, content, flags=re.DOTALL)
        print("✅ Fixed the {% url %} tag.")
    else:
        # Fallback: look for any href containing the broken pattern
        alt_pattern = r'href="{% url \\\'fee_collection\\\'.*?"'
        if re.search(alt_pattern, content):
            content = re.sub(
                r'href="{% url \\\'fee_collection\\\' schema_name=tenant\.schema_name student_id=student\.id %}"',
                'href="{% url \'fee_collection\' schema_name=tenant.schema_name student_id=student.id %}"',
                content
            )
            print("✅ Fixed the href attribute.")
        else:
            print("⚠️ Could not find the broken tag. Manual check required.")
            # Let's try to find any occurrence of 'fee_collection' with escaped quotes
            if "\\'fee_collection\\'" in content:
                content = content.replace("\\'fee_collection\\'", "'fee_collection'")
                print("✅ Replaced escaped quotes with normal quotes.")
            else:
                print("ℹ️ No escaped quotes found. The file might already be fixed.")

    with open(TEMPLATE, "w") as f:
        f.write(content)

    print("🎯 Done! Restart your server and test the student profile page.")

if __name__ == "__main__":
    main()
