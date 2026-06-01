#!/usr/bin/env python3
"""
Scanner: check axis_saas/public_urls.py for syntax errors.
Run: python3 scan_urls.py
"""

import os

FILE_PATH = "axis_saas/public_urls.py"

if not os.path.exists(FILE_PATH):
    print(f"❌ File not found: {FILE_PATH}")
    exit(1)

print(f"\n📁 Scanning {FILE_PATH}\n")

with open(FILE_PATH, "r") as f:
    lines = f.readlines()

total_lines = len(lines)
print(f"Total lines: {total_lines}\n")

# Show lines 120-145 (around the error at line 134)
start = max(0, 120)
end = min(total_lines, 145)

print("=" * 60)
print(f"Lines {start+1} to {end} (around reported error at line 134):")
print("=" * 60)
for i in range(start, end):
    line_num = i + 1
    # Show line with visible whitespace (repr)
    print(f"{line_num:4d}: {lines[i].rstrip()}")
    # Also show hex dump of first 50 chars to catch hidden characters
    if 130 <= line_num <= 138:
        raw = lines[i]
        print(f"      -> Hex: {raw[:50].encode('unicode_escape')}")

# Also count and show the exact line 134 if exists
print("\n" + "=" * 60)
if len(lines) >= 134:
    line134 = lines[133]
    print("Line 134 content (exact):")
    print(repr(line134))
    print("Bytes:", line134.encode())
else:
    print("Line 134 does not exist (file shorter)")

# Check for unterminated string literals in the whole file
print("\n" + "=" * 60)
print("Checking for unmatched quotes / broken strings...")
for i, line in enumerate(lines):
    # Simple check for odd number of quotes (not perfect but indicative)
    single_quotes = line.count("'")
    double_quotes = line.count('"')
    if single_quotes % 2 == 1 or double_quotes % 2 == 1:
        print(f"⚠️ Line {i+1}: possible unmatched quotes (single={single_quotes%2}, double={double_quotes%2})")
        print(f"   {line[:80]}")

# Also show if the re_path line is split across multiple lines
print("\n" + "=" * 60)
print("Searching for 're_path' patterns:")
for i, line in enumerate(lines):
    if 're_path' in line:
        print(f"Line {i+1}: {line.strip()[:100]}")
        # also show next few lines if the pattern continues
        if i+1 < len(lines) and ('fee/collection' in lines[i+1] or ']+)/' in lines[i+1]):
            print(f"   Next line {i+2}: {lines[i+1].strip()[:100]}")
