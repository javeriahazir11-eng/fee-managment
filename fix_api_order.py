import re

file_path = "axis_saas/public_urls.py"
with open(file_path, "r") as f:
    content = f.read()

# Find the API block (starts with "# API for fee generation status")
api_start = content.find("# ----------------------------------------------------------------------\n# API for fee generation status & manual trigger")
if api_start == -1:
    api_start = content.find("# API for fee generation status")
if api_start == -1:
    print("Could not find API block")
    exit(1)

# Find the first urlpatterns line after that
urlpatterns_pos = content.find("urlpatterns = [", api_start)
if urlpatterns_pos == -1:
    print("Could not find urlpatterns")
    exit(1)

# Extract API block and the urlpatterns that follow (we'll move the API block earlier)
# But actually the API block is already before the last urlpatterns? No, it's after.
# Let's just cut the API block and paste it before any urlpatterns definition.

# Find the first urlpatterns definition in the entire file (the one at line ~170)
first_urlpatterns = content.find("urlpatterns = [")
if first_urlpatterns == -1:
    print("No urlpatterns found")
    exit(1)

# Extract API block (from api_start to the line before the next urlpatterns? Actually, the API block ends before the duplicated urlpatterns? There are multiple urlpatterns? The file has only one now after previous fixes. We'll take from api_start to the end of the file? No.
# Let's find the end of the API block: the line just before the first urlpatterns after the API block.
end_api = content.find("urlpatterns = [", api_start)
if end_api == -1:
    end_api = len(content)
api_block = content[api_start:end_api].rstrip()

# Remove the API block from its location
content = content[:api_start] + content[end_api:]

# Now insert the API block right before the first urlpatterns (which is now at the same position)
new_urlpatterns_pos = content.find("urlpatterns = [")
if new_urlpatterns_pos == -1:
    print("Could not find urlpatterns after removal")
    exit(1)
content = content[:new_urlpatterns_pos] + api_block + "\n\n" + content[new_urlpatterns_pos:]

with open(file_path, "w") as f:
    f.write(content)

print("✅ Moved API functions before urlpatterns")
