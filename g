#!/usr/bin/env python3
"""
Make receipt compact, professional, printer-friendly.
- Green watermark for PAID, larger.
- Replace emojis with SVG icons.
- Reduce padding and font sizes for small thermal printers.
- Apply to both school (receipt.html) and gym (gym_receipt.html) receipts.
"""

import shutil
from pathlib import Path

PROJECT_ROOT = Path("/home/sami/axis_school_sys")
SCHOOL_RECEIPT = PROJECT_ROOT / "templates/tenant/receipt.html"
GYM_RECEIPT = PROJECT_ROOT / "templates/tenant/gym_receipt.html"

# ------------------------------------------------------------------
# New compact school receipt content
# ------------------------------------------------------------------
NEW_SCHOOL_RECEIPT = '''{% extends 'tenant/base.html' %}
{% block title %}Receipt {{ payment.receipt_number }}{% endblock %}

{% block body %}
<div class="receipt-wrapper">
    <div class="receipt-card" id="receipt">
        <!-- Watermark -->
        <div class="watermark {% if payment.payment_type == 'full' %}watermark-full watermark-paid{% else %}watermark-partial watermark-partial-pay{% endif %}">
            {% if payment.payment_type == 'full' %}PAID{% else %}PARTIAL{% endif %}
        </div>

        <!-- Header -->
        <div class="receipt-header">
            {% if logo_url %}
                <img src="{{ logo_url }}" class="receipt-logo" alt="Logo">
            {% else %}
                <div class="receipt-icon">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8">
                        <path d="M12 14l9-5-9-5-9 5 9 5z" />
                        <path d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z" />
                    </svg>
                </div>
            {% endif %}
            <div class="school-info">
                <h2>{{ tenant.name }}</h2>
                <p>Fee Receipt</p>
            </div>
        </div>

        <div class="receipt-meta">
            <div><span class="meta-label">Receipt:</span> <span class="meta-value">{{ payment.receipt_number }}</span></div>
            <div><span class="meta-label">Date:</span> <span class="meta-value">{{ payment.payment_date|date:"d-m-Y" }}</span></div>
        </div>

        <div class="details">
            <div><span class="detail-label">Student:</span> {{ payment.student.name }}</div>
            <div><span class="detail-label">Roll No:</span> {{ payment.student.roll_number }}</div>
            <div><span class="detail-label">Father:</span> {{ payment.student.father_name }}</div>
            <div><span class="detail-label">Class:</span> {{ payment.student.grade }} - {{ payment.student.section }}</div>
        </div>

        <div class="payment-summary">
            <div><span class="summary-label">Amount</span><span class="summary-value">₹{{ payment.amount|floatformat:2 }}</span></div>
            <div><span class="summary-label">Mode</span><span class="summary-value">{{ payment.get_payment_mode_display }}</span></div>
            <div><span class="summary-label">Status</span><span class="summary-value status-badge {% if payment.payment_type == 'full' %}status-paid{% else %}status-partial{% endif %}">{{ payment.get_payment_type_display|upper }}</span></div>
            {% if payment.remarks %}<div><span class="summary-label">Remarks</span><span class="summary-value">{{ payment.remarks }}</span></div>{% endif %}
        </div>

        <div class="fee-table">
            <h4>Fee Details</h4>
            <table>
                <thead><tr><th>Month/Year</th><th>Amount</th><th>Paid</th><th>Status</th></tr></thead>
                <tbody>
                    {% for fr in fee_records %}
                    <tr>
                        <td>{{ fr.month }}/{{ fr.year }}</td>
                        <td>₹{{ fr.amount|floatformat:2 }}</td>
                        <td>₹{{ fr.paid_amount|floatformat:2 }}</td>
                        <td><span class="status-badge status-{{ fr.status }}">{{ fr.get_status_display }}</span></td>
                    </tr>
                    {% endfor %}
                </tbody>
            </table>
        </div>

        <div class="receipt-footer">
            <p>Thank you for your payment</p>
            <div class="powered">AXIS Platform</div>
        </div>
    </div>
</div>

<div class="action-buttons">
    <button onclick="window.print()" class="btn-print">🖨️ Print</button>
    <button onclick="downloadReceipt()" class="btn-download">⬇️ Download</button>
    <a href="{% url 'fee_collection' schema_name=tenant.schema_name %}" class="btn-back">← Back</a>
</div>

<style>
    .receipt-wrapper {
        display: flex;
        justify-content: center;
        padding: 1rem;
    }
    .receipt-card {
        max-width: 420px;
        width: 100%;
        background: var(--surface);
        border-radius: 0.75rem;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        position: relative;
        overflow: hidden;
        border: 1px solid var(--border);
        font-size: 0.75rem;
    }
    .watermark {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%) rotate(-25deg);
        font-weight: 800;
        white-space: nowrap;
        pointer-events: none;
        z-index: 1;
        opacity: 0.15;
        letter-spacing: 0.1em;
    }
    .watermark-full {
        font-size: 4rem;
        color: #10b981;
    }
    .watermark-paid {
        color: #10b981;
        opacity: 0.2;
    }
    .watermark-partial {
        font-size: 3rem;
        color: #f59e0b;
        opacity: 0.18;
    }
    .receipt-header {
        display: flex;
        align-items: center;
        gap: 0.75rem;
        padding: 0.75rem;
        background: var(--surface-alt);
        border-bottom: 2px solid var(--primary);
    }
    .receipt-logo {
        height: 40px;
        width: auto;
    }
    .receipt-icon {
        width: 40px;
        height: 40px;
        background: var(--primary);
        border-radius: 0.5rem;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
    }
    .school-info h2 {
        margin: 0;
        font-size: 1rem;
        font-weight: 700;
    }
    .school-info p {
        margin: 0;
        font-size: 0.7rem;
        color: var(--muted);
    }
    .receipt-meta {
        display: flex;
        justify-content: space-between;
        padding: 0.5rem 0.75rem;
        background: var(--surface-alt);
        border-bottom: 1px solid var(--border);
        font-size: 0.7rem;
    }
    .meta-label {
        font-weight: 600;
        color: var(--muted);
    }
    .meta-value {
        font-family: monospace;
        font-weight: 500;
    }
    .details {
        padding: 0.75rem;
        border-bottom: 1px solid var(--border);
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 0.5rem;
        font-size: 0.7rem;
    }
    .detail-label {
        font-weight: 600;
        color: var(--muted);
        margin-right: 0.25rem;
    }
    .payment-summary {
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
        padding: 0.75rem;
        background: var(--surface-alt);
        border-bottom: 1px solid var(--border);
        font-size: 0.7rem;
    }
    .payment-summary > div {
        flex: 1;
        min-width: 100px;
    }
    .summary-label {
        display: block;
        font-size: 0.6rem;
        text-transform: uppercase;
        color: var(--muted);
    }
    .summary-value {
        font-weight: 700;
        font-size: 0.8rem;
    }
    .status-badge {
        display: inline-block;
        padding: 0.15rem 0.4rem;
        border-radius: 1rem;
        font-size: 0.6rem;
        font-weight: 600;
    }
    .status-paid { background: #d1fae5; color: #065f46; }
    .status-partial { background: #fed7aa; color: #9a3412; }
    .status-pending { background: #fff3e0; color: #e67e22; }
    .status-overdue { background: #fee2e2; color: #991b1b; }
    [data-theme="dark"] .status-paid { background: #064e3b; color: #a7f3d0; }
    [data-theme="dark"] .status-partial { background: #7c2d12; color: #fdba74; }
    .fee-table {
        padding: 0.75rem;
    }
    .fee-table h4 {
        margin: 0 0 0.5rem 0;
        font-size: 0.75rem;
        font-weight: 600;
    }
    .fee-table table {
        width: 100%;
        border-collapse: collapse;
        font-size: 0.65rem;
    }
    .fee-table th, .fee-table td {
        padding: 0.3rem 0;
        text-align: left;
        border-bottom: 1px solid var(--border);
    }
    .fee-table th {
        color: var(--muted);
        font-weight: 600;
    }
    .fee-table td:nth-child(2), .fee-table th:nth-child(2),
    .fee-table td:nth-child(3), .fee-table th:nth-child(3) {
        text-align: right;
    }
    .receipt-footer {
        text-align: center;
        padding: 0.5rem;
        background: var(--surface-alt);
        border-top: 1px solid var(--border);
        font-size: 0.6rem;
        color: var(--muted);
    }
    .powered {
        margin-top: 0.25rem;
        font-size: 0.55rem;
        opacity: 0.7;
    }
    .action-buttons {
        text-align: center;
        margin-top: 1rem;
        display: flex;
        gap: 0.5rem;
        justify-content: center;
    }
    .btn-print, .btn-download, .btn-back {
        background: var(--surface-alt);
        padding: 0.3rem 0.8rem;
        border-radius: 2rem;
        border: 1px solid var(--border);
        font-size: 0.7rem;
        cursor: pointer;
        text-decoration: none;
        color: var(--text);
    }
    @media print {
        body * { visibility: hidden; }
        .receipt-card, .receipt-card * { visibility: visible; }
        .receipt-card {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            margin: 0;
            border-radius: 0;
            box-shadow: none;
        }
        .watermark { opacity: 0.2; }
        .action-buttons { display: none; }
    }
</style>
<script src="https://cdn.jsdelivr.net/npm/html2canvas@1.4.1/dist/html2canvas.min.js"></script>
<script>
function downloadReceipt() {
    const element = document.getElementById('receipt');
    html2canvas(element, { scale: 2, backgroundColor: getComputedStyle(document.documentElement).getPropertyValue('--surface') }).then(canvas => {
        const link = document.createElement('a');
        link.download = 'receipt_{{ payment.receipt_number }}.png';
        link.href = canvas.toDataURL();
        link.click();
    });
}
</script>
{% endblock %}
'''

# ------------------------------------------------------------------
# New compact gym receipt content (similar but with gym styling)
# ------------------------------------------------------------------
NEW_GYM_RECEIPT = '''{% extends 'tenant/base.html' %}
{% block title %}Gym Receipt {{ payment.receipt_number }}{% endblock %}

{% block body %}
<div class="receipt-wrapper">
    <div class="receipt-card gym-receipt" id="receipt">
        <div class="watermark {% if payment.payment_type == 'full' %}watermark-full watermark-paid{% else %}watermark-partial watermark-partial-pay{% endif %}">
            {% if payment.payment_type == 'full' %}PAID{% else %}PARTIAL{% endif %}
        </div>

        <div class="receipt-header gym-header">
            {% if logo_url %}
                <img src="{{ logo_url }}" class="receipt-logo" alt="Logo">
            {% else %}
                <div class="receipt-icon gym-icon">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8">
                        <path d="M6 4L8 6M6 20L8 18M18 4L16 6M18 20L16 18M4 6L6 8M4 18L6 16M20 6L18 8M20 18L18 16M12 8L10 10M12 8L14 10M12 8V12M8 12H12M12 16H16M12 16V12"/>
                        <circle cx="12" cy="12" r="2"/>
                    </svg>
                </div>
            {% endif %}
            <div class="tenant-info">
                <h2>{{ tenant.name }}</h2>
                <p>Gym Receipt</p>
            </div>
        </div>

        <div class="receipt-meta">
            <div><span class="meta-label">Receipt:</span> {{ payment.receipt_number }}</div>
            <div><span class="meta-label">Date:</span> {{ payment.payment_date|date:"Y-m-d" }}</div>
        </div>

        <div class="details">
            <div><span class="detail-label">Customer:</span> {{ payment.customer.name }}</div>
            <div><span class="detail-label">Phone:</span> {{ payment.customer.phone }}</div>
            {% if payment.customer.email %}<div><span class="detail-label">Email:</span> {{ payment.customer.email }}</div>{% endif %}
        </div>

        <div class="payment-summary">
            <div><span class="summary-label">Amount</span><span class="summary-value">₹{{ payment.amount|floatformat:2 }}</span></div>
            <div><span class="summary-label">Mode</span><span class="summary-value">{{ payment.get_payment_mode_display }}</span></div>
            <div><span class="summary-label">Status</span><span class="summary-value status-badge {% if payment.payment_type == 'full' %}status-paid{% else %}status-partial{% endif %}">{{ payment.get_payment_type_display|upper }}</span></div>
            {% if payment.remarks %}<div><span class="summary-label">Remarks</span><span class="summary-value">{{ payment.remarks }}</span></div>{% endif %}
        </div>

        <div class="fee-table">
            <h4>Subscription Details</h4>
            <table>
                <thead><tr><th>Month/Year</th><th>Amount</th><th>Paid</th></tr></thead>
                <tbody>
                    {% for sub in subscriptions %}
                    <tr>
                        <td>{{ sub.month }}/{{ sub.year }}</td>
                        <td>₹{{ sub.amount|floatformat:2 }}</td>
                        <td>₹{{ sub.paid_amount|floatformat:2 }}</td>
                    </tr>
                    {% endfor %}
                </tbody>
            </table>
        </div>

        <div class="receipt-footer">
            <p>Thank you for your payment</p>
            <div class="powered">AXIS Gym Management</div>
        </div>
    </div>
</div>

<div class="action-buttons">
    <button onclick="window.print()" class="btn-print">🖨️ Print</button>
    <button onclick="downloadReceipt()" class="btn-download">⬇️ Download</button>
    <a href="{% url 'gym_payment' schema_name=tenant.schema_name %}" class="btn-back">← Back</a>
</div>

<style>
    /* Same compact styles as school receipt, with gym accent */
    .receipt-wrapper {
        display: flex;
        justify-content: center;
        padding: 1rem;
    }
    .receipt-card {
        max-width: 420px;
        width: 100%;
        background: var(--surface);
        border-radius: 0.75rem;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        position: relative;
        overflow: hidden;
        border: 1px solid var(--border);
        font-size: 0.75rem;
    }
    .watermark {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%) rotate(-25deg);
        font-weight: 800;
        white-space: nowrap;
        pointer-events: none;
        z-index: 1;
        opacity: 0.15;
        letter-spacing: 0.1em;
    }
    .watermark-full {
        font-size: 4rem;
        color: #10b981;
    }
    .watermark-paid {
        color: #10b981;
        opacity: 0.2;
    }
    .watermark-partial {
        font-size: 3rem;
        color: #f59e0b;
        opacity: 0.18;
    }
    .receipt-header {
        display: flex;
        align-items: center;
        gap: 0.75rem;
        padding: 0.75rem;
        background: var(--surface-alt);
        border-bottom: 2px solid #f97316;
    }
    .gym-header {
        border-bottom-color: #f97316;
    }
    .receipt-logo {
        height: 40px;
        width: auto;
    }
    .receipt-icon {
        width: 40px;
        height: 40px;
        background: #f97316;
        border-radius: 0.5rem;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
    }
    .tenant-info h2 {
        margin: 0;
        font-size: 1rem;
        font-weight: 700;
        background: linear-gradient(135deg, #f97316, #ea580c);
        -webkit-background-clip: text;
        background-clip: text;
        color: transparent;
    }
    .tenant-info p {
        margin: 0;
        font-size: 0.7rem;
        color: var(--muted);
    }
    .receipt-meta {
        display: flex;
        justify-content: space-between;
        padding: 0.5rem 0.75rem;
        background: var(--surface-alt);
        border-bottom: 1px solid var(--border);
        font-size: 0.7rem;
    }
    .meta-label {
        font-weight: 600;
        color: var(--muted);
    }
    .details {
        padding: 0.75rem;
        border-bottom: 1px solid var(--border);
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 0.5rem;
        font-size: 0.7rem;
    }
    .detail-label {
        font-weight: 600;
        color: var(--muted);
        margin-right: 0.25rem;
    }
    .payment-summary {
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
        padding: 0.75rem;
        background: var(--surface-alt);
        border-bottom: 1px solid var(--border);
        font-size: 0.7rem;
    }
    .payment-summary > div {
        flex: 1;
        min-width: 100px;
    }
    .summary-label {
        display: block;
        font-size: 0.6rem;
        text-transform: uppercase;
        color: var(--muted);
    }
    .summary-value {
        font-weight: 700;
        font-size: 0.8rem;
    }
    .status-badge {
        display: inline-block;
        padding: 0.15rem 0.4rem;
        border-radius: 1rem;
        font-size: 0.6rem;
        font-weight: 600;
    }
    .status-paid { background: #d1fae5; color: #065f46; }
    .status-partial { background: #fed7aa; color: #9a3412; }
    .fee-table {
        padding: 0.75rem;
    }
    .fee-table h4 {
        margin: 0 0 0.5rem 0;
        font-size: 0.75rem;
        font-weight: 600;
    }
    .fee-table table {
        width: 100%;
        border-collapse: collapse;
        font-size: 0.65rem;
    }
    .fee-table th, .fee-table td {
        padding: 0.3rem 0;
        text-align: left;
        border-bottom: 1px solid var(--border);
    }
    .fee-table th {
        color: var(--muted);
        font-weight: 600;
    }
    .fee-table td:nth-child(2), .fee-table th:nth-child(2),
    .fee-table td:nth-child(3), .fee-table th:nth-child(3) {
        text-align: right;
    }
    .receipt-footer {
        text-align: center;
        padding: 0.5rem;
        background: var(--surface-alt);
        border-top: 1px solid var(--border);
        font-size: 0.6rem;
        color: var(--muted);
    }
    .powered {
        margin-top: 0.25rem;
        font-size: 0.55rem;
        opacity: 0.7;
    }
    .action-buttons {
        text-align: center;
        margin-top: 1rem;
        display: flex;
        gap: 0.5rem;
        justify-content: center;
    }
    .btn-print, .btn-download, .btn-back {
        background: var(--surface-alt);
        padding: 0.3rem 0.8rem;
        border-radius: 2rem;
        border: 1px solid var(--border);
        font-size: 0.7rem;
        cursor: pointer;
        text-decoration: none;
        color: var(--text);
    }
    @media print {
        body * { visibility: hidden; }
        .receipt-card, .receipt-card * { visibility: visible; }
        .receipt-card {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            margin: 0;
            border-radius: 0;
            box-shadow: none;
        }
        .watermark { opacity: 0.2; }
        .action-buttons { display: none; }
    }
</style>
<script src="https://cdn.jsdelivr.net/npm/html2canvas@1.4.1/dist/html2canvas.min.js"></script>
<script>
function downloadReceipt() {
    const element = document.getElementById('receipt');
    html2canvas(element, { scale: 2, backgroundColor: getComputedStyle(document.documentElement).getPropertyValue('--surface') }).then(canvas => {
        const link = document.createElement('a');
        link.download = 'gym_receipt_{{ payment.receipt_number }}.png';
        link.href = canvas.toDataURL();
        link.click();
    });
}
</script>
{% endblock %}
'''

def patch_file(filepath, new_content, description):
    if not filepath.exists():
        print(f"⚠️ {filepath} not found. Skipping {description}.")
        return False
    backup = filepath.with_suffix(filepath.suffix + ".compact_backup")
    shutil.copy2(filepath, backup)
    print(f"✅ Backup: {backup}")
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(new_content)
    print(f"🔧 Updated: {filepath} ({description})")
    return True

def main():
    print("🚀 Compact receipt patcher starting...\n")
    patch_file(SCHOOL_RECEIPT, NEW_SCHOOL_RECEIPT, "School receipt")
    patch_file(GYM_RECEIPT, NEW_GYM_RECEIPT, "Gym receipt")
    print("\n✅ All receipts updated successfully.")
    print("📌 Restart Django server and test print on thermal printer.")
    print("   Watermark: PAID = green, PARTIAL = amber.")
    print("   Width reduced to ~420px, fonts and padding minimized.")

if __name__ == "__main__":
    main()
