#!/usr/bin/env python3
"""
Patcher for mobile/student_list.html:
- Reduces card padding and spacing to eliminate excess whitespace.
- Moves action buttons closer to the content (smaller margin-top).
- Enhances card appearance with subtle border gradients and a more premium feel.
"""

import os
import re

TEMPLATE_PATH = "templates/mobile/student_list.html"

def patch_template():
    with open(TEMPLATE_PATH, 'r', encoding='utf-8') as f:
        content = f.read()

    # --- 1. Replace the entire <style> block with a refined version ---
    # We'll define a new, more compact and premium style.
    # We'll keep the existing structure but adjust spacing and visual details.

    new_style = """
  /* ============================================================
     PREMIUM MOBILE STUDENT CARDS – ultra compact, glassmorphism
     ============================================================ */

  :root {
    --card-shadow: 0 2px 12px rgba(15, 23, 42, 0.06);
    --card-radius: 1rem;
    --glass-bg: rgba(255, 255, 255, 0.92);
    --glass-border: rgba(255, 255, 255, 0.6);
    --gradient-start: #3b82f6;
    --gradient-end: #1d4ed8;
    --status-active: #10b981;
    --status-suspended: #f59e0b;
    --status-graduated: #8b5cf6;
  }

  /* ---- Analytics Strip (glass, clickable) ---- */
  .analytics-strip {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 0.5rem;
    margin-bottom: 1rem;
    padding: 0.25rem 0.1rem;
    background: var(--glass-bg);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-radius: 1.5rem;
    border: 1px solid var(--glass-border);
    box-shadow: var(--card-shadow);
    text-align: center;
  }
  .analytics-strip .stat-item {
    display: flex;
    flex-direction: column;
    padding: 0.2rem 0;
    border-radius: 1rem;
    cursor: pointer;
    transition: background 0.2s;
    text-decoration: none;
    color: inherit;
  }
  .analytics-strip .stat-item:hover {
    background: rgba(59, 130, 246, 0.06);
  }
  .analytics-strip .stat-item:active {
    transform: scale(0.96);
  }
  .analytics-strip .stat-number {
    font-size: 1.2rem;
    font-weight: 800;
    color: var(--text);
    line-height: 1.2;
  }
  .analytics-strip .stat-label {
    font-size: 0.55rem;
    text-transform: uppercase;
    letter-spacing: 0.04em;
    color: var(--muted);
    font-weight: 600;
    margin-top: 0.05rem;
  }
  .analytics-strip .stat-item.pending .stat-number {
    color: var(--danger);
  }
  .analytics-strip .stat-item.active .stat-number {
    color: var(--primary);
  }
  .analytics-strip .stat-item.total .stat-number {
    color: var(--text);
  }

  /* ---- Page Header ---- */
  .page-header {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    margin-bottom: 0.2rem;
    padding: 0 0.25rem;
  }
  .page-header h1 {
    font-size: 1.6rem;
    font-weight: 800;
    margin: 0;
    background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    letter-spacing: -0.02em;
  }

  /* ---- FAB ---- */
  .fab-add {
    position: fixed;
    bottom: 80px;
    right: 1.5rem;
    background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
    color: white;
    border: none;
    border-radius: 999px;
    width: 48px;
    height: 48px;
    font-size: 1.6rem;
    box-shadow: 0 8px 28px rgba(59, 130, 246, 0.35);
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 30;
    transition: transform 0.25s cubic-bezier(0.34, 1.56, 0.64, 1), box-shadow 0.3s;
  }
  .fab-add:hover {
    transform: scale(1.06);
    box-shadow: 0 12px 36px rgba(59, 130, 246, 0.45);
  }
  .fab-add:active {
    transform: scale(0.92);
  }
  .fab-add svg {
    width: 24px;
    height: 24px;
    stroke-width: 2.5;
  }

  /* ---- Search & Filter (Sticky) ---- */
  .search-section {
    position: sticky;
    top: 0;
    z-index: 20;
    background: var(--bg);
    padding: 0.3rem 0 0.5rem;
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
  }
  .search-bar {
    display: flex;
    gap: 0.4rem;
    align-items: center;
    background: var(--glass-bg);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-radius: 3rem;
    padding: 0.1rem 0.1rem 0.1rem 0.8rem;
    border: 1px solid var(--glass-border);
    box-shadow: 0 4px 20px rgba(0,0,0,0.04);
  }
  .search-bar input {
    flex: 1;
    border: none;
    background: transparent;
    font-size: 0.8rem;
    padding: 0.3rem 0;
    outline: none;
    color: var(--text);
    font-weight: 500;
  }
  .search-bar input::placeholder {
    color: var(--muted);
    font-weight: 400;
  }
  .search-bar button {
    background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
    color: white;
    border: none;
    border-radius: 2.5rem;
    padding: 0.4rem 1rem;
    font-weight: 700;
    font-size: 0.7rem;
    cursor: pointer;
    transition: all 0.2s;
    white-space: nowrap;
    box-shadow: 0 4px 12px rgba(59, 130, 246, 0.2);
  }
  .search-bar button:hover {
    transform: translateY(-1px);
    box-shadow: 0 6px 20px rgba(59, 130, 246, 0.3);
  }
  .filter-toggle {
    background: transparent;
    border: none;
    color: var(--muted);
    padding: 0.3rem 0.5rem;
    cursor: pointer;
    display: flex;
    align-items: center;
    gap: 0.2rem;
    font-size: 0.7rem;
    font-weight: 500;
    border-radius: 2rem;
    transition: background 0.2s;
  }
  .filter-toggle:hover {
    background: var(--surface-alt);
  }
  .filter-toggle svg {
    width: 18px;
    height: 18px;
  }

  /* ---- Filter Drawer ---- */
  .filter-drawer {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.35s ease, padding 0.35s ease, opacity 0.3s;
    opacity: 0;
    padding: 0 0.5rem;
    background: var(--glass-bg);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-radius: 0 0 1.5rem 1.5rem;
    margin: 0 0 0.8rem 0;
    border-left: 1px solid var(--glass-border);
    border-right: 1px solid var(--glass-border);
    border-bottom: 1px solid var(--glass-border);
    box-shadow: 0 4px 20px rgba(0,0,0,0.04);
  }
  .filter-drawer.open {
    max-height: 400px;
    padding: 0.5rem 0.5rem 0.8rem;
    opacity: 1;
  }
  .filter-chips {
    display: flex;
    flex-wrap: wrap;
    gap: 0.4rem;
    align-items: center;
  }
  .filter-chips select {
    flex: 1 1 100px;
    padding: 0.3rem 0.6rem;
    border-radius: 2rem;
    border: 1px solid var(--border);
    background: var(--surface-alt);
    font-size: 0.7rem;
    font-weight: 500;
    color: var(--text);
    appearance: none;
    -webkit-appearance: none;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 24 24' fill='none' stroke='%2364748b' stroke-width='2'%3E%3Cpath d='M6 9l6 6 6-6'/%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: right 0.6rem center;
    padding-right: 1.8rem;
  }
  .filter-chips .clear-link {
    background: var(--surface-alt);
    color: var(--text);
    padding: 0.3rem 0.8rem;
    border-radius: 2rem;
    border: 1px solid var(--border);
    font-weight: 600;
    text-decoration: none;
    font-size: 0.7rem;
    display: inline-flex;
    align-items: center;
    gap: 0.2rem;
    transition: all 0.2s;
  }
  .filter-chips .clear-link:hover {
    background: var(--surface);
  }

  /* ---- Student Cards (ultra‑compact, premium) ---- */
  .student-list {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    animation: fadeInUp 0.4s ease;
  }
  .student-card {
    background: var(--glass-bg);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-radius: var(--card-radius);
    padding: 0.4rem 0.7rem 0.3rem 0.7rem;  /* reduced bottom padding */
    border: 1px solid var(--glass-border);
    box-shadow: var(--card-shadow);
    display: flex;
    flex-direction: column;
    gap: 0.1rem;  /* minimal gap */
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    position: relative;
    overflow: hidden;
  }
  /* Left accent bar – status color with gradient */
  .student-card::before {
    content: '';
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
    width: 4px;
    border-radius: 0 2px 2px 0;
    background: linear-gradient(180deg, var(--status-active), var(--status-active));
  }
  .student-card.status-active::before {
    background: linear-gradient(180deg, var(--status-active), #059669);
  }
  .student-card.status-suspended::before {
    background: linear-gradient(180deg, var(--status-suspended), #d97706);
  }
  .student-card.status-graduated::before {
    background: linear-gradient(180deg, var(--status-graduated), #6d28d9);
  }

  .student-card:active {
    transform: scale(0.98);
  }

  /* Card top row: name left, badge right */
  .card-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 0.4rem;
  }
  .student-name {
    font-weight: 700;
    font-size: 0.85rem;
    color: var(--text);
    letter-spacing: -0.01em;
  }
  .badge {
    display: inline-block;
    padding: 0.05rem 0.5rem;
    border-radius: 999px;
    font-size: 0.5rem;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.04em;
    white-space: nowrap;
    flex-shrink: 0;
  }
  .badge-active { background: #d1fae5; color: #065f46; }
  .badge-suspended { background: #fef3c7; color: #92400e; }
  .badge-graduated { background: #ede9fe; color: #5b21b6; }

  .student-meta {
    font-size: 0.7rem;
    color: var(--muted);
    margin-top: 0.05rem;
  }
  .student-meta .separator {
    margin: 0 0.2rem;
    opacity: 0.4;
  }
  .student-father {
    font-size: 0.6rem;
    color: var(--muted);
    margin-top: 0.02rem;
  }
  .student-father svg {
    display: inline;
    vertical-align: middle;
    margin-right: 0.15rem;
    width: 12px;
    height: 12px;
    stroke: var(--muted);
  }

  /* Pending (only shown when > 0) */
  .student-pending {
    font-weight: 700;
    font-size: 0.7rem;
    margin-top: 0.05rem;
    display: flex;
    align-items: center;
    gap: 0.2rem;
  }
  .student-pending .pending-dot {
    width: 6px;
    height: 6px;
    border-radius: 50%;
    display: inline-block;
    background: var(--danger);
    animation: pulse 1.5s infinite;
  }
  @keyframes pulse {
    0%, 100% { opacity: 0.4; transform: scale(0.9); }
    50% { opacity: 1; transform: scale(1.2); }
  }
  .student-pending .pending-amount {
    color: var(--danger);
  }

  /* Action buttons – moved closer to content */
  .student-actions {
    display: flex;
    gap: 0.2rem;
    margin-top: 0.1rem;  /* reduced from 0.3rem */
    justify-content: flex-end;
  }
  .student-actions a {
    background: var(--surface-alt);
    border: 1px solid var(--border);
    border-radius: 2rem;
    padding: 0.15rem 0.4rem;
    font-size: 0.6rem;
    font-weight: 600;
    text-decoration: none;
    color: var(--text);
    transition: all 0.2s;
    display: flex;
    align-items: center;
    gap: 0.1rem;
  }
  .student-actions a:hover {
    background: var(--primary);
    color: white;
    border-color: var(--primary);
  }
  .student-actions a svg {
    width: 14px;
    height: 14px;
  }

  /* ---- Pagination ---- */
  .pagination {
    display: flex;
    justify-content: center;
    gap: 0.3rem;
    margin-top: 1rem;
    flex-wrap: wrap;
  }
  .pagination a, .pagination span {
    padding: 0.3rem 0.7rem;
    border-radius: 2rem;
    border: 1px solid var(--border);
    background: var(--surface);
    text-decoration: none;
    color: var(--text);
    font-size: 0.7rem;
    font-weight: 500;
    transition: all 0.2s;
  }
  .pagination a:hover {
    background: var(--primary);
    color: white;
    border-color: var(--primary);
  }
  .pagination .active {
    background: var(--primary);
    color: white;
    border-color: var(--primary);
  }
  .pagination .disabled {
    opacity: 0.4;
    pointer-events: none;
  }

  /* ---- Empty State ---- */
  .empty-state {
    text-align: center;
    padding: 2rem 1.5rem;
    color: var(--muted);
  }
  .empty-state svg {
    width: 60px;
    height: 60px;
    stroke: var(--muted);
    opacity: 0.3;
    margin-bottom: 0.8rem;
  }
  .empty-state h3 {
    font-size: 1.1rem;
    font-weight: 700;
    color: var(--text);
    margin-bottom: 0.2rem;
  }
  .empty-state p {
    font-size: 0.8rem;
    margin-bottom: 0.8rem;
  }
  .empty-state a {
    color: var(--primary);
    font-weight: 600;
    text-decoration: none;
    border: 1px solid var(--primary);
    padding: 0.4rem 1rem;
    border-radius: 2rem;
    display: inline-block;
    transition: all 0.2s;
  }
  .empty-state a:hover {
    background: var(--primary);
    color: white;
  }

  /* ---- Animations ---- */
  @keyframes fadeInUp {
    from { opacity: 0; transform: translateY(12px); }
    to { opacity: 1; transform: translateY(0); }
  }

  /* ---- Responsive ---- */
  @media (max-width: 480px) {
    .page-header h1 {
      font-size: 1.4rem;
    }
    .analytics-strip {
      gap: 0.4rem;
      padding: 0.2rem 0.1rem;
    }
    .analytics-strip .stat-number {
      font-size: 1rem;
    }
    .search-bar input {
      font-size: 0.8rem;
      padding: 0.3rem 0;
    }
    .search-bar button {
      font-size: 0.7rem;
      padding: 0.3rem 0.8rem;
    }
    .fab-add {
      width: 44px;
      height: 44px;
      bottom: 75px;
      right: 1rem;
    }
    .fab-add svg {
      width: 22px;
      height: 22px;
    }
    .student-card {
      padding: 0.3rem 0.6rem 0.2rem 0.6rem;
    }
    .student-name {
      font-size: 0.8rem;
    }
    .student-meta {
      font-size: 0.65rem;
    }
    .student-father {
      font-size: 0.55rem;
    }
    .student-pending {
      font-size: 0.65rem;
    }
    .student-actions a {
      padding: 0.1rem 0.35rem;
      font-size: 0.55rem;
    }
  }
"""

    # Replace the style block
    style_pattern = re.compile(r'<style>.*?</style>', re.DOTALL)
    content = re.sub(style_pattern, f'<style>{new_style}</style>', content)

    # --- 2. (Optional) Adjust HTML to reduce bottom margin - no change needed, CSS handles it ---

    # Write back
    with open(TEMPLATE_PATH, 'w', encoding='utf-8') as f:
        f.write(content)

    print("✅ Updated templates/mobile/student_list.html with ultra-compact, premium card design.")
    print("   - Reduced card padding, gaps, and margins.")
    print("   - Action buttons moved closer to content.")
    print("   - Added subtle gradient accents for status.")
    return True

def main():
    if not os.path.exists(TEMPLATE_PATH):
        print(f"❌ Error: {TEMPLATE_PATH} not found.")
        return
    patch_template()
    print("\n👉 Please hard-refresh your browser (Ctrl+F5) to see the premium new look.")

if __name__ == "__main__":
    main()
