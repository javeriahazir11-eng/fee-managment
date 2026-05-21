import re

file_path = "axis_saas/public_urls.py"
with open(file_path, "r") as f:
    content = f.read()

# Find the position of the first urlpatterns list
urlpatterns_pos = content.find("urlpatterns = [")
if urlpatterns_pos == -1:
    print("Could not find urlpatterns")
    exit(1)

# Find the start of the API block (at the end of the file)
api_block_start = content.find("# ----------------------------------------------------------------------\n# API for fee generation status & manual trigger")
if api_block_start == -1:
    # fallback search
    api_block_start = content.find("# API for fee generation status")
if api_block_start == -1:
    print("Could not find API block")
    exit(1)

# The API block runs to the end of the file. Extract it.
api_block = content[api_block_start:]

# Remove the API block from its current location
content = content[:api_block_start]

# Remove any duplicate "urlpatterns = [" that might be inside the API block? Not needed.

# Insert the API block right before the first urlpatterns
content = content[:urlpatterns_pos] + api_block + "\n\n" + content[urlpatterns_pos:]

# Also ensure the necessary imports (JsonResponse, date, timedelta, monthrange) are moved to top.
# They are currently inside the API block but will now be before urlpatterns but still not at top.
# We'll extract them and place them at the top with other imports.
imports_to_add = []
# Find the import lines inside the API block
import_lines = re.findall(r'^(from django.http import JsonResponse|from datetime import date, timedelta|from calendar import monthrange)', api_block, re.MULTILINE)
if import_lines:
    # Remove these imports from the API block (they will be moved to top)
    for line in import_lines:
        api_block = api_block.replace(line + "\n", "")
    # Now add them at the top of the file (after existing imports)
    top_imports = "\n".join(import_lines) + "\n"
    # Insert after the last existing import (find the last line that starts with 'from ' or 'import ')
    lines = content.splitlines()
    last_import_index = 0
    for i, line in enumerate(lines):
        if line.startswith('from ') or line.startswith('import '):
            last_import_index = i
    lines.insert(last_import_index + 1, top_imports)
    content = "\n".join(lines)

# Write the modified content
with open(file_path, "w") as f:
    f.write(content)

print("✅ Reordered public_urls.py: API functions now before urlpatterns")
