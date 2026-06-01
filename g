#!/usr/bin/env python3
"""
Add tenant_type field to SchoolClient admin form and fieldsets.
Run: python3 add_tenant_type_final.py
"""

from pathlib import Path
import shutil

ADMIN_FILE = Path("axis_saas/admin.py")

def main():
    if not ADMIN_FILE.exists():
        print("❌ admin.py not found")
        return

    # Backup
    backup = ADMIN_FILE.with_suffix('.py.bak2')
    shutil.copy2(ADMIN_FILE, backup)
    print(f"📁 Backup saved: {backup}")

    with open(ADMIN_FILE, "r") as f:
        content = f.read()

    # 1. Add 'tenant_type' to SchoolClientForm.Meta.fields
    # Find the fields list and add tenant_type after 'is_active'
    # Look for: fields = ['name', 'schema_name', 'admin_username', 'admin_password', 'is_active']
    old_fields_line = "fields = ['name', 'schema_name', 'admin_username', 'admin_password', 'is_active']"
    new_fields_line = "fields = ['name', 'schema_name', 'tenant_type', 'admin_username', 'admin_password', 'is_active']"
    if old_fields_line in content:
        content = content.replace(old_fields_line, new_fields_line)
        print("✅ Added 'tenant_type' to form fields.")
    else:
        # Fallback: regex
        import re
        pattern = r"(fields\s*=\s*\[)(.*?)(\])"
        def repl(m):
            fields = m.group(2)
            if "'tenant_type'" not in fields and '"tenant_type"' not in fields:
                # Insert after 'schema_name' or at appropriate place
                # Simple: add at beginning or end? Better add after 'schema_name'
                if "'schema_name'" in fields:
                    fields = fields.replace("'schema_name'", "'schema_name', 'tenant_type'")
                else:
                    fields = fields.rstrip() + ", 'tenant_type'"
            return m.group(1) + fields + m.group(3)
        content = re.sub(pattern, repl, content)
        print("✅ Added 'tenant_type' to form fields (regex fallback).")

    # 2. Add tenant_type to fieldsets in SchoolClientAdmin
    # We'll add a new fieldset for Tenant Type after Master Identity Matrix
    # Find the fieldsets definition
    fieldsets_pattern = r"(fieldsets\s*=\s*\(\s*\([^)]+\)\s*,\s*\([^)]+\)\s*,\s*\([^)]+\)\s*\))"
    # Better to just add a new tuple before the last one
    # Look for the line with 'Generated Access Routes' and insert before it
    old_fieldset_part = "('Generated Access Routes', {"
    new_fieldset = "        ('Tenant Type', {\n            'fields': ('tenant_type',),\n        }),\n"
    if old_fieldset_part in content:
        content = content.replace(old_fieldset_part, new_fieldset + "        " + old_fieldset_part)
        print("✅ Added Tenant Type fieldset in admin.")
    else:
        print("⚠️ Could not find 'Generated Access Routes' fieldset, tenant_type might not appear in form layout.")

    # Write back
    with open(ADMIN_FILE, "w") as f:
        f.write(content)

    print("\n🎉 Done! Now refresh the admin page (or restart server).")
    print("You will see 'Tenant type' dropdown in SchoolClient add/edit form.")

if __name__ == "__main__":
    main()
