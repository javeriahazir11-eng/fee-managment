#!/usr/bin/env python3
"""
AXIS PWA Sidebar Nav Patcher – moves Install App button to the sidebar navigation list.
Run once from the project root.
"""

import re
from pathlib import Path

BASE_HTML = Path("templates/tenant/base.html")

if not BASE_HTML.exists():
    print("❌ templates/tenant/base.html not found. Are you in the project root?")
    exit(1)

with open(BASE_HTML, "r") as f:
    content = f.read()

# ----------------------------------------------------------------------
# 1. Remove the existing sidebar install button (if it was in sidebar-footer)
# ----------------------------------------------------------------------
# The button is identified by id="installAppSidebarBtn".
# We'll remove the whole button element from wherever it is.
# We'll search for: <button id="installAppSidebarBtn" ...> ... </button>
pattern = r'<button id="installAppSidebarBtn".*?</button>'
content = re.sub(pattern, '', content, flags=re.DOTALL)
print("✅ Removed old sidebar install button.")

# ----------------------------------------------------------------------
# 2. Insert the new install button inside sidebar-nav (after all nav items)
# ----------------------------------------------------------------------
# We want to insert it after the last nav-item (which might be Fee Structure or Settings).
# We'll find the closing </nav> tag and insert before it.
new_button_html = '''
                <!-- PWA Install Button (inside nav list) -->
                <button id="installAppSidebarBtn" class="nav-item" style="display: none; width: 100%; background: none; border: none; text-align: left; cursor: pointer;">
                    <svg class="nav-icon" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M4 16v1a2 2 0 002 2h12a2 2 0 002-2v-1M12 4v12m-4-4l4 4 4-4"/>
                    </svg>
                    <span>Install App</span>
                </button>
'''

# Find the closing </nav> tag inside sidebar-nav
nav_end = content.find('</nav>', content.find('class="sidebar-nav"'))
if nav_end != -1:
    content = content[:nav_end] + new_button_html + content[nav_end:]
    print("✅ Inserted new install button into sidebar-nav.")
else:
    print("⚠️ Could not find </nav> inside sidebar. Trying fallback...")
    # Fallback: insert before the sidebar-footer div
    footer_start = content.find('class="sidebar-footer"')
    if footer_start != -1:
        content = content[:footer_start] + new_button_html + content[footer_start:]
        print("✅ Inserted button before sidebar-footer.")
    else:
        print("❌ Could not insert button. Manual intervention required.")

# ----------------------------------------------------------------------
# 3. Ensure the button is hidden in standalone mode (already present)
# ----------------------------------------------------------------------
# The existing CSS has a rule:
# @media all and (display-mode: standalone) { ... #installAppSidebarBtn { display: none !important; } }
# We'll check if it's present; if not, add it.
if "#installAppSidebarBtn" not in content:
    hide_standalone = """
@media all and (display-mode: standalone) {
    #pwaInstallContainer { display: none !important; }
    #installAppSidebarBtn { display: none !important; }
}
"""
    # Insert before </style> or </head>
    if "</style>" in content:
        content = content.replace("</style>", hide_standalone + "\n</style>")
    else:
        content = content.replace("</head>", f"<style>{hide_standalone}</style></head>")
    print("✅ Added standalone hiding for sidebar button.")
else:
    print("ℹ️ Standalone hiding already present.")

# ----------------------------------------------------------------------
# 4. Ensure JavaScript for sidebar button exists (already present)
# ----------------------------------------------------------------------
# The existing JS has the sidebarInstallBtn click listener. We'll keep it.

# ----------------------------------------------------------------------
# 5. Write the updated base.html
# ----------------------------------------------------------------------
with open(BASE_HTML, "w") as f:
    f.write(content)

print("\n✅ PWA Sidebar Navigation Patcher complete!")
print("\nNext steps:")
print("1. Restart your Django server (python manage.py runserver).")
print("2. Log in to any tenant portal.")
print("3. The 'Install App' button should now appear in the sidebar, right below the last navigation item.")
print("4. On desktop, if the browser supports PWA, the button will be visible; clicking it triggers the install prompt.")
print("5. Once installed, the button is automatically hidden in standalone mode.")
