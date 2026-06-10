#!/usr/bin/env python3
"""
axis_local_fix.py - Local development fix for ALLOWED_HOSTS & DEBUG
Run: python3 axis_local_fix.py
"""
import os
import re

SETTINGS_FILE = "axis_saas/settings.py"

def patch_settings():
    if not os.path.exists(SETTINGS_FILE):
        print(f"❌ {SETTINGS_FILE} not found!")
        return False

    with open(SETTINGS_FILE, "r") as f:
        content = f.read()

    # 1. Fix ALLOWED_HOSTS line
    # Replace current line with safe version: if no env var, default to ['*']
    # Also add localhost and 127.0.0.1 when DEBUG is True
    old_allowed = r"ALLOWED_HOSTS = os\.environ\.get\('ALLOWED_HOSTS', ''\)\.split\(','\) or \['\*'\]"
    new_allowed = """ALLOWED_HOSTS = os.environ.get('ALLOWED_HOSTS', '').split(',') if os.environ.get('ALLOWED_HOSTS') else ['*']
# Auto-add local development hosts when DEBUG is True
if DEBUG:
    ALLOWED_HOSTS += ['127.0.0.1', 'localhost']"""

    if re.search(old_allowed, content):
        content = re.sub(old_allowed, new_allowed, content)
        print("✅ Fixed ALLOWED_HOSTS logic")
    else:
        # Fallback: try to find line and replace manually
        lines = content.splitlines()
        for i, line in enumerate(lines):
            if line.strip().startswith("ALLOWED_HOSTS ="):
                lines[i] = new_allowed.splitlines()[0]
                # Insert the DEBUG conditional after this line
                indent = line[:len(line)-len(line.lstrip())]
                lines.insert(i+1, f"{indent}# Auto-add local development hosts when DEBUG is True")
                lines.insert(i+2, f"{indent}if DEBUG:")
                lines.insert(i+3, f"{indent}    ALLOWED_HOSTS += ['127.0.0.1', 'localhost']")
                content = "\n".join(lines)
                print("✅ Manually patched ALLOWED_HOSTS")
                break

    # 2. Ensure DEBUG reads from .env but defaults to True on local (no DATABASE_URL set)
    # Railway production has DATABASE_URL, local usually doesn't.
    # Insert a safe DEBUG default after the env reading
    if "DEBUG = env('DEBUG', default=False)" in content:
        # Already using environ, but we want default=True when no DATABASE_URL and not on Railway
        debug_line = "DEBUG = env('DEBUG', default=False)"
        new_debug = """# Auto-detect local development (no DATABASE_URL means local)
if not os.environ.get('DATABASE_URL'):
    DEBUG = True
else:
    DEBUG = env('DEBUG', default=False)"""
        # Replace the line
        content = content.replace(debug_line, new_debug)
        print("✅ Set DEBUG=True automatically for local environment")
    else:
        print("⚠️ Could not auto-set DEBUG, but it's fine. You can manually set DEBUG=True in .env")

    # Write back
    with open(SETTINGS_FILE, "w") as f:
        f.write(content)

    print("\n🎯 Patches applied successfully!")
    print("   Now run: source venv/bin/activate")
    print("   Then: python manage.py runserver")
    print("   Visit: http://127.0.0.1:8000/admin")
    print("\n⚠️ Note: Railway pe push karne se pehle ensure ALLOWED_HOSTS env variable set ho (e.g., 'yourdomain.com')")
    return True

if __name__ == "__main__":
    patch_settings()
