#!/usr/bin/env python3
"""
Patch collect_fee.html:
- Redesign the summary cards (Pending Fee, Selected Items, Total Due) with icons and better layout.
- Move the "Pending Fee Records" table to the bottom of the page.
- Overall visual polish: cleaner spacing, shadows, and modern card design.
"""

import re
from pathlib import Path

TEMPLATE_PATH = Path("templates/tenant/collect_fee.html")

if not TEMPLATE_PATH.exists():
    print(f"❌ File not found: {TEMPLATE_PATH}")
    exit(1)

with open(TEMPLATE_PATH, "r", encoding="utf-8") as f:
    content = f.read()

# ===================== 1. Replace the mini-summary-grid with a nicer version =====================
# Find the mini-summary-grid block
old_summary = """        <div class="mini-summary-grid">
            <div class="mini-summary-card"><span>Pending Fee</span><strong>₹{{ total_pending|floatformat:2 }}</strong></div>
            <div class="mini-summary-card"><span>Selected Items</span><strong>₹<span id="miniCartTotal">0.00</span></strong></div>
            <div class="mini-summary-card"><span>Total Due</span><strong>₹<span id="miniTotalDue">{{ total_pending|floatformat:2 }}</span></strong></div>
        </div>"""

new_summary = """        <div class="mini-summary-grid">
            <div class="mini-summary-card pending-card">
                <div class="mini-icon">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="12" cy="12" r="10"/>
                        <path d="M12 6v6l4 2"/>
                    </svg>
                </div>
                <div class="mini-info">
                    <span class="mini-label">Pending Fee</span>
                    <strong class="mini-value">₹{{ total_pending|floatformat:2 }}</strong>
                </div>
            </div>
            <div class="mini-summary-card items-card">
                <div class="mini-icon">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M20 7h-4.18A3 3 0 0016 5.18V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v1.18A3 3 0 008.18 7H4a2 2 0 00-2 2v10a2 2 0 002 2h16a2 2 0 002-2V9a2 2 0 00-2-2z"/>
                        <path d="M12 12v4m-2-2h4"/>
                    </svg>
                </div>
                <div class="mini-info">
                    <span class="mini-label">Selected Items</span>
                    <strong class="mini-value">₹<span id="miniCartTotal">0.00</span></strong>
                </div>
            </div>
            <div class="mini-summary-card total-card">
                <div class="mini-icon">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M12 2v4M12 18v4M4.93 4.93l2.83 2.83M16.24 16.24l2.83 2.83M2 12h4M18 12h4M4.93 19.07l2.83-2.83M16.24 7.76l2.83-2.83"/>
                    </svg>
                </div>
                <div class="mini-info">
                    <span class="mini-label">Total Due</span>
                    <strong class="mini-value">₹<span id="miniTotalDue">{{ total_pending|floatformat:2 }}</span></strong>
                </div>
            </div>
        </div>"""

content = content.replace(old_summary, new_summary)

# ===================== 2. Move the pending fee records table to the bottom =====================
# Find the pending-table block (inside student-panel)
# We'll locate the div with class "pending-table" and move it after the payment form and before the closing </div> of student-panel.
# But we need to remove it from its original position and then insert it at the end.

# First, find the start of the pending-table block
pending_start = content.find('<div class="pending-table">')
if pending_start == -1:
    print("❌ Could not find pending-table div.")
    exit(1)

# Find the matching closing </div> for this block (we'll scan for nested divs)
depth = 0
pending_end = pending_start
i = pending_start
while i < len(content):
    if content[i:i+4] == '<div':
        depth += 1
    elif content[i:i+6] == '</div>':
        depth -= 1
        if depth == 0:
            pending_end = i + 6
            break
    i += 1

if depth != 0:
    print("❌ Could not find matching closing tag for pending-table.")
    exit(1)

# Extract the pending-table block
pending_block = content[pending_start:pending_end]

# Remove it from the original position
content = content[:pending_start] + content[pending_end:]

# Now find where to insert it: we want it after the payment form and before the closing </div> of student-panel.
# The student-panel div is the parent; we'll find the closing </div> of student-panel.
# We'll locate the student-panel opening and then find its matching closing.
# But easier: we can insert it after the payment form (which is inside student-panel).
# The payment form ends with </form>. We'll insert after that.
form_end = content.find('</form>', content.find('id="paymentForm"'))
if form_end == -1:
    print("❌ Could not find payment form.")
    exit(1)

# Insert the pending block after the form
insert_pos = form_end + len('</form>')
content = content[:insert_pos] + '\n' + pending_block + content[insert_pos:]

# ===================== 3. Add new CSS for the mini-summary cards =====================
# We'll append CSS to the existing style block (before </style>).
# Find the last </style> tag and insert before it.
css_to_add = """
/* Mini summary cards - redesigned */
.mini-summary-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1rem;
    margin: 1rem 0 1.5rem 0;
}
.mini-summary-card {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    background: var(--surface);
    border-radius: var(--radius);
    border: 1px solid var(--border);
    padding: 0.75rem 1rem;
    box-shadow: var(--shadow-sm);
    transition: transform 0.2s;
}
.mini-summary-card:hover {
    transform: translateY(-2px);
}
.mini-icon {
    width: 40px;
    height: 40px;
    border-radius: 2rem;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
}
.pending-card .mini-icon {
    background: #fef3c7;
    color: #d97706;
}
.items-card .mini-icon {
    background: #dbeafe;
    color: #2563eb;
}
.total-card .mini-icon {
    background: #d1fae5;
    color: #059669;
}
.mini-info {
    display: flex;
    flex-direction: column;
    line-height: 1.2;
}
.mini-label {
    font-size: 0.7rem;
    text-transform: uppercase;
    color: var(--muted);
    letter-spacing: 0.5px;
}
.mini-value {
    font-size: 1.2rem;
    font-weight: 700;
    color: var(--text);
}
.pending-card .mini-value { color: #d97706; }
.items-card .mini-value { color: #2563eb; }
.total-card .mini-value { color: #059669; }

@media (max-width: 600px) {
    .mini-summary-grid {
        grid-template-columns: 1fr;
    }
}

/* Style for the item hero section */
.item-hero {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 1rem;
    background: var(--surface-alt);
    padding: 0.75rem 1rem;
    border-radius: var(--radius);
    border: 1px solid var(--border);
}
.item-hero .card-header {
    padding: 0;
    border: none;
    background: transparent;
}
.item-hero .card-header h3 {
    font-size: 1.1rem;
    font-weight: 600;
}
.item-hero .btn-primary {
    flex-shrink: 0;
}

/* Pending table at bottom - extra spacing */
.pending-table {
    margin-top: 1.5rem;
}
"""

# Find the last </style> and insert before it
last_style_pos = content.rfind('</style>')
if last_style_pos != -1:
    content = content[:last_style_pos] + css_to_add + '\n' + content[last_style_pos:]
else:
    # If no style tag, add one at the end of head (but we'll just append to body)
    # We'll add a style block before </body>
    body_end = content.rfind('</body>')
    if body_end != -1:
        content = content[:body_end] + f'<style>{css_to_add}</style>\n' + content[body_end:]

# ===================== 4. Minor tweaks: add a divider or spacing =====================
# We'll also add a subtle separator between the item hero and the payment form
# But not necessary; we'll rely on the existing spacing.

# ===================== 5. Write the updated file =====================
with open(TEMPLATE_PATH, "w", encoding="utf-8") as f:
    f.write(content)

print("✅ collect_fee.html UI patched successfully.")
print("   - Redesigned summary cards with icons and colors.")
print("   - Moved pending fee records table to the bottom.")
print("   - Enhanced visual styling with hover effects and better spacing.")
print("\n🚀 Restart your server: python manage.py runserver")
