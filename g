#!/usr/bin/env python3
"""
Stock Management & Product Detail Patcher
- Adds K/M/B number formatting to stock management KPIs.
- Replaces product detail page with a modern, professional design.
Usage: python3 patch_stock_display.py
"""

import os
import re

# ----------------------------
# 1. Patch stock_management.html
# ----------------------------
STOCK_TEMPLATE = "templates/tenant/stock_management.html"

with open(STOCK_TEMPLATE, "r") as f:
    stock_content = f.read()

# Add load fee_extras if missing
if "{% load fee_extras %}" not in stock_content:
    # Insert after {% extends 'tenant/base.html' %}
    stock_content = stock_content.replace(
        "{% extends 'tenant/base.html' %}",
        "{% extends 'tenant/base.html' %}\n{% load fee_extras %}"
    )
    print("✅ Added {% load fee_extras %} to stock_management.html")

# Replace KPI values with humanize filter
replacements = {
    r'<div class="kpi-value">{{ analytics\.total_products }}</div>': '<div class="kpi-value">{{ analytics.total_products|humanize_number }}</div>',
    r'<div class="kpi-value">{{ analytics\.total_categories }}</div>': '<div class="kpi-value">{{ analytics.total_categories|humanize_number }}</div>',
    r'<div class="kpi-value">₹{{ analytics\.total_stock_value\|floatformat:2 }}</div>': '<div class="kpi-value">₹{{ analytics.total_stock_value|humanize_number }}</div>',
    r'<div class="kpi-value">{{ analytics\.low_stock_count }}</div>': '<div class="kpi-value">{{ analytics.low_stock_count|humanize_number }}</div>',
    r'<div class="kpi-value">{{ analytics\.total_units_sold }}</div>': '<div class="kpi-value">{{ analytics.total_units_sold|humanize_number }}</div>',
    r'<div class="kpi-value">₹{{ analytics\.total_sales_value\|floatformat:2 }}</div>': '<div class="kpi-value">₹{{ analytics.total_sales_value|humanize_number }}</div>',
}

for pattern, replacement in replacements.items():
    stock_content = re.sub(pattern, replacement, stock_content)

with open(STOCK_TEMPLATE, "w") as f:
    f.write(stock_content)
print("✅ Applied K/M/B formatting to stock management KPIs")


# ----------------------------
# 2. Replace product_detail.html
# ----------------------------
PRODUCT_DETAIL_TEMPLATE = "templates/tenant/product_detail.html"

NEW_PRODUCT_DETAIL = """{% extends 'tenant/base.html' %}
{% load fee_extras %}
{% block title %}{{ product.name }} | Stock Details{% endblock %}

{% block body %}
<div class="page-header">
    <div>
        <h1 class="page-title">{{ product.name }}</h1>
        <p class="page-desc">SKU: {{ product.sku }} • Category: {{ product.category.name }}</p>
    </div>
    <div class="header-actions">
        <a href="{% url 'stock_management' schema_name=tenant.schema_name %}" class="btn-secondary">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M15 18l-6-6 6-6"/></svg>
            Back to Stock
        </a>
    </div>
</div>

<!-- Summary Grid -->
<div class="summary-grid">
    <div class="summary-card"><span class="summary-label">Current Stock</span><strong class="summary-value">{{ product.quantity|humanize_number }}</strong></div>
    <div class="summary-card"><span class="summary-label">Unit Price</span><strong class="summary-value">₹{{ product.selling_price|floatformat:2 }}</strong></div>
    <div class="summary-card"><span class="summary-label">Stock Value</span><strong class="summary-value">₹{{ analytics.stock_value|humanize_number }}</strong></div>
    <div class="summary-card"><span class="summary-label">Units Sold</span><strong class="summary-value">{{ analytics.total_units_sold|humanize_number }}</strong></div>
    <div class="summary-card"><span class="summary-label">Sales Value</span><strong class="summary-value">₹{{ analytics.total_sales_value|humanize_number }}</strong></div>
    <div class="summary-card"><span class="summary-label">Avg. Sale</span><strong class="summary-value">₹{{ analytics.average_sale_value|floatformat:2 }}</strong></div>
    <div class="summary-card"><span class="summary-label">Last Sale</span><strong class="summary-value">{% if analytics.last_sale_date %}{{ analytics.last_sale_date|date:"d M Y" }}{% else %}—{% endif %}</strong></div>
    <div class="summary-card"><span class="summary-label">Status</span><strong class="summary-value {% if analytics.low_stock %}status-low{% else %}status-healthy{% endif %}">{% if analytics.low_stock %}Low Stock{% else %}Healthy{% endif %}</strong></div>
</div>

<!-- Details & Sales History -->
<div class="detail-grid">
    <!-- Product Notes & Buyers -->
    <div class="detail-card">
        <div class="card-header">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M4 6h16M4 12h16M4 18h16"/></svg>
            <h3>Product Notes</h3>
        </div>
        <div class="card-body">
            {{ product.notes|default:"No notes added." }}
        </div>
    </div>

    <div class="detail-card">
        <div class="card-header">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"/></svg>
            <h3>Recent Buyers</h3>
        </div>
        <div class="card-body">
            {% if recent_buyers %}
                <ul class="buyer-list">
                    {% for buyer in recent_buyers %}
                        <li><a href="{% url 'student_profile' schema_name=tenant.schema_name student_id=buyer.id %}#payment-history" style="color: var(--primary); text-decoration: none;">{{ buyer.name }}</a></li>
                    {% endfor %}
                </ul>
            {% else %}
                <p class="empty-text">No buyers yet.</p>
            {% endif %}
        </div>
    </div>
</div>

<!-- Sales History Table -->
<div class="table-card">
    <div class="table-header">
        <h3>Sales History</h3>
        <span class="badge">{{ sales_events|length }} transactions</span>
    </div>
    <div class="table-responsive">
        <table class="data-table">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Student</th>
                    <th>Quantity</th>
                    <th>Amount (₹)</th>
                    <th>Receipt</th>
                </tr>
            </thead>
            <tbody>
                {% for event in sales_events %}
                <tr>
                    <td>{{ event.payment.payment_date|date:"d M Y" }}</td>
                    <td><a href="{% url 'student_profile' schema_name=tenant.schema_name student_id=event.student.id %}#payment-history" style="color: var(--primary); text-decoration: none; font-weight: 600;">{{ event.student.name }}</a></td>
                    <td>{{ event.item.quantity }}</td>
                    <td>₹{{ event.item.line_total|floatformat:2 }}</td>
                    <td><a href="/portal/{{ tenant.schema_name }}/fee/receipt/{{ event.payment.id }}/" class="receipt-link" target="_blank">{{ event.payment.receipt_number }}</a></td>
                </tr>
                {% empty %}
                <tr><td colspan="5" class="empty-row">No sales recorded for this product yet.</td></tr>
                {% endfor %}
            </tbody>
        </table>
    </div>
</div>

<!-- Product Actions (optional) -->
<div class="action-row">
    <a href="{% url 'stock_management' schema_name=tenant.schema_name %}" class="btn-secondary">← Back to Stock</a>
</div>

<style>
    /* Summary Grid */
    .summary-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 1.5rem;
    }
    .summary-card {
        background: var(--surface);
        border: 1px solid var(--border);
        border-radius: var(--radius);
        padding: 1rem;
        text-align: center;
        transition: transform 0.2s;
    }
    .summary-card:hover {
        transform: translateY(-2px);
    }
    .summary-label {
        display: block;
        font-size: 0.7rem;
        text-transform: uppercase;
        color: var(--muted);
        letter-spacing: 0.5px;
        margin-bottom: 0.25rem;
    }
    .summary-value {
        font-size: 1.25rem;
        font-weight: 700;
        color: var(--text);
    }
    .status-low { color: var(--danger); }
    .status-healthy { color: #10b981; }

    /* Detail Grid */
    .detail-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
        gap: 1.5rem;
        margin-bottom: 1.5rem;
    }
    .detail-card {
        background: var(--surface);
        border: 1px solid var(--border);
        border-radius: var(--radius);
        overflow: hidden;
    }
    .card-header {
        display: flex;
        align-items: center;
        gap: 0.75rem;
        padding: 0.75rem 1rem;
        background: var(--surface-alt);
        border-bottom: 1px solid var(--border);
    }
    .card-header h3 {
        margin: 0;
        font-size: 1rem;
        font-weight: 600;
    }
    .card-body {
        padding: 1rem;
        line-height: 1.5;
        color: var(--text);
    }
    .buyer-list {
        margin: 0;
        padding-left: 1.2rem;
    }
    .buyer-list li {
        margin-bottom: 0.3rem;
    }
    .empty-text {
        color: var(--muted);
        font-size: 0.9rem;
    }

    /* Table Card */
    .table-card {
        background: var(--surface);
        border: 1px solid var(--border);
        border-radius: var(--radius);
        overflow: hidden;
        margin-bottom: 1.5rem;
    }
    .table-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0.75rem 1rem;
        background: var(--surface-alt);
        border-bottom: 1px solid var(--border);
    }
    .table-header h3 {
        margin: 0;
        font-size: 1rem;
        font-weight: 600;
    }
    .badge {
        background: var(--primary);
        color: white;
        padding: 0.2rem 0.6rem;
        border-radius: 2rem;
        font-size: 0.75rem;
        font-weight: 500;
    }
    .table-responsive {
        overflow-x: auto;
    }
    .data-table {
        width: 100%;
        border-collapse: collapse;
    }
    .data-table th, .data-table td {
        padding: 0.75rem 1rem;
        text-align: left;
        border-bottom: 1px solid var(--border);
        font-size: 0.85rem;
    }
    .data-table th {
        background: var(--surface-alt);
        font-weight: 600;
        font-size: 0.75rem;
        text-transform: uppercase;
        color: var(--muted);
    }
    .receipt-link {
        color: var(--primary);
        text-decoration: none;
        font-family: monospace;
    }
    .empty-row {
        text-align: center;
        color: var(--muted);
        padding: 2rem;
    }

    .action-row {
        text-align: right;
    }
    .btn-secondary {
        display: inline-flex;
        align-items: center;
        gap: 0.5rem;
        padding: 0.5rem 1rem;
        border-radius: 2rem;
        background: var(--surface-alt);
        color: var(--text);
        border: 1px solid var(--border);
        text-decoration: none;
        font-weight: 500;
        transition: 0.2s;
    }
    .btn-secondary:hover {
        background: var(--surface);
    }

    /* Responsive */
    @media (max-width: 768px) {
        .summary-grid {
            grid-template-columns: repeat(2, 1fr);
        }
        .detail-grid {
            grid-template-columns: 1fr;
        }
    }
</style>
{% endblock %}
"""

with open(PRODUCT_DETAIL_TEMPLATE, "w") as f:
    f.write(NEW_PRODUCT_DETAIL)
print("✅ Replaced product_detail.html with modern design")

print("\n🎉 All changes applied successfully!")
print("Restart your server: python manage.py runserver")
