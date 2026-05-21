import re

file_path = "axis_saas/public_urls.py"
with open(file_path, "r") as f:
    content = f.read()

# Remove any occurrence of "fr@csrf_exempt" and replace with "@csrf_exempt"
content = re.sub(r'fr@csrf_exempt', '@csrf_exempt', content)

# Remove duplicate imports: the "from django.http import JsonResponse" appears twice
# We'll remove the second set
lines = content.splitlines()
new_lines = []
seen_imports = set()
skip = False
for line in lines:
    # Skip duplicate imports that are exactly the same as a previous line
    if line.startswith('from django.http import JsonResponse') and line in seen_imports:
        continue
    if line.startswith('from datetime import date, timedelta') and line in seen_imports:
        continue
    if line.startswith('from calendar import monthrange') and line in seen_imports:
        continue
    new_lines.append(line)
    if line.startswith(('from ', 'import ')):
        seen_imports.add(line)
content = '\n'.join(new_lines)

# Write back
with open(file_path, "w") as f:
    f.write(content)

print("✅ Fixed public_urls.py (removed invalid 'fr@csrf_exempt' and duplicate imports)")
