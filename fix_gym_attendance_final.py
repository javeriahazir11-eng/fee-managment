#!/usr/bin/env python3
import os
import re

views_path = 'axis_saas/views.py'

with open(views_path, 'r') as f:
    content = f.read()

# Remove the 'import pytz' line (exact match on its own line)
content = re.sub(r'^import pytz\n', '', content, flags=re.MULTILINE)

# Also remove any leftover blank lines if needed (optional)
# Ensure the datetime parsing remains correct.

with open(views_path, 'w') as f:
    f.write(content)

print("✅ Removed 'import pytz' from axis_saas/views.py")
print("✅ Restart your Django server: python3 manage.py runserver")
