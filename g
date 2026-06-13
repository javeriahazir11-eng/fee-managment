#!/usr/bin/env python3
"""
Patcher to remove two sections from the fee collection template:
- "Find Student by Roll Number / Name / CNIC"
- "School Items & Add-on Products"
Usage: python3 patcher.py
"""

import re
import os

TEMPLATE_PATH = "templates/tenant/fee_collection.html"

def remove_section_by_header(content, header_text, start_tag_class, end_tag="</div>"):
    """
    Removes an HTML block that starts with a <div class="..."> tag
    and contains the given header_text inside it.
    Returns (new_content, removed_flag).
    """
    # Find the line that contains the header
    lines = content.splitlines(keepends=True)
    header_index = None
    for i, line in enumerate(lines):
        if header_text in line:
            header_index = i
            break
    if header_index is None:
        print(f"  ⚠️ Header '{header_text}' not found – skipping")
        return content, False

    # Find the opening <div> that contains this header and has the required class
    open_tag_pattern = re.compile(rf'<div\s+class=["\'].*?{start_tag_class}.*?["\']')
    open_index = None
    for i in range(header_index, -1, -1):
        if re.search(open_tag_pattern, lines[i]):
            open_index = i
            break
    if open_index is None:
        print(f"  ⚠️ Could not find opening <div> with class '{start_tag_class}' above header")
        return content, False

    # Count nested <div> levels to find matching closing </div>
    level = 0
    close_index = None
    for i in range(open_index, len(lines)):
        line = lines[i]
        # Count opening <div> tags (simple count, ignores self-closing etc. – fine for this file)
        level += line.count("<div")
        level -= line.count("</div>")
        if level == 0:
            close_index = i
            break
    if close_index is None:
        print(f"  ⚠️ Could not find matching closing </div> for the section")
        return content, False

    # Remove the lines from open_index to close_index inclusive
    new_lines = lines[:open_index] + lines[close_index+1:]
    return "".join(new_lines), True

def main():
    if not os.path.exists(TEMPLATE_PATH):
        print(f"❌ Error: {TEMPLATE_PATH} not found in current directory.")
        return

    print(f"📄 Reading {TEMPLATE_PATH} ...")
    with open(TEMPLATE_PATH, "r", encoding="utf-8") as f:
        original = f.read()

    # Backup original
    backup_path = TEMPLATE_PATH + ".backup"
    print(f"💾 Creating backup at {backup_path}")
    with open(backup_path, "w", encoding="utf-8") as f:
        f.write(original)

    content = original
    removed_any = False

    # 1. Remove "Find Student" section
    content, removed = remove_section_by_header(
        content,
        header_text="Find Student by Roll Number / Name / CNIC",
        start_tag_class="filter-card"
    )
    if removed:
        print("✅ Removed 'Find Student' section")
        removed_any = True

    # 2. Remove "School Items & Add-on Products" section
    content, removed = remove_section_by_header(
        content,
        header_text="School Items & Add-on Products",
        start_tag_class="students-list-card"
    )
    if removed:
        print("✅ Removed 'School Items & Add-on Products' section")
        removed_any = True

    if not removed_any:
        print("⚠️ No changes made – sections not found.")
        return

    # Write modified file
    with open(TEMPLATE_PATH, "w", encoding="utf-8") as f:
        f.write(content)

    print("\n🎉 Patch applied successfully!")
    print("👉 Restart your Django server (Ctrl+C then `python manage.py runserver`)")
    print("   Then visit http://localhost:8000/portal/ilama/fee/collection/")
    print("   The two sections should no longer appear.")

if __name__ == "__main__":
    main()
