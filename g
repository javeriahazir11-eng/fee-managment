#!/usr/bin/env python3
"""
patcher_defaulters.py
Patches the defaulters page with:
- Clickable analytics KPIs (Total Defaulters, Total Pending, Avg Overdue, Max Overdue)
- Search bar (name, roll, father name)
- Grade & Section filters
- Pagination: 15 students per page
- Removes old "Class-wise Defaulters" & "Overdue Distribution" sections
"""

import os
import re
import sys

# ----------------------------------------------------------------------
# PATHS
# ----------------------------------------------------------------------
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
VIEWS_FILE = os.path.join(BASE_DIR, "axis_saas", "views.py")
TEMPLATE_FILE = os.path.join(BASE_DIR, "templates", "tenant", "defaulters.html")

# ----------------------------------------------------------------------
# 1. PATCH views.py – replace defaulters() function
# ----------------------------------------------------------------------
def patch_views():
    if not os.path.exists(VIEWS_FILE):
        print(f"❌ views.py not found at {VIEWS_FILE}")
        return False

    with open(VIEWS_FILE, "r", encoding="utf-8") as f:
        content = f.read()

    # Locate the existing defaulters function
    old_func_pattern = r'def defaulters\(request, schema_name\):.*?(?=\n@|\ndef |\Z)'
    old_func_match = re.search(old_func_pattern, content, re.DOTALL)
    if not old_func_match:
        print("❌ Could not find existing defaulters() function in views.py")
        return False

    old_func = old_func_match.group(0)

    # ------------------------------------------------------------------
    # NEW defaulters() function with full features
    # ------------------------------------------------------------------
    new_func = '''def defaulters(request, schema_name):
    """Defaulters list with search, filters, pagination, and analytics KPIs."""
    tenant = get_tenant(request, schema_name)
    
    # Get query parameters
    q = request.GET.get('q', '').strip()
    grade = request.GET.get('grade', '')
    section = request.GET.get('section', '')
    days = request.GET.get('days', '0')
    sort_by = request.GET.get('sort_by', 'overdue')  # overdue, pending, name
    page_number = request.GET.get('page', 1)
    
    try:
        days = int(days)
    except:
        days = 0
    if days < 0:
        days = 0

    with schema_context(schema_name):
        today = timezone.localdate()
        cutoff = today - timedelta(days=days) if days > 0 else None
        
        # Base queryset: students with pending/partial/overdue fees
        base_qs = Student.objects.filter(
            fee_records__status__in=['pending', 'partial', 'overdue']
        ).distinct()
        
        # Apply overdue days filter
        if cutoff:
            base_qs = base_qs.filter(fee_records__due_date__lte=cutoff)
        
        # Apply search
        if q:
            base_qs = base_qs.filter(
                Q(name__icontains=q) |
                Q(roll_number__icontains=q) |
                Q(father_name__icontains=q) |
                Q(father_cnic__icontains=q) |
                Q(parent_mobile__icontains=q)
            )
        
        # Apply grade filter
        if grade:
            base_qs = base_qs.filter(grade=grade)
        
        # Apply section filter
        if section:
            base_qs = base_qs.filter(section=section)
        
        # Build result list with computed fields
        result = []
        for student in base_qs:
            fee_pending = sum(fr.remaining for fr in student.fee_records.filter(status__in=['pending','partial','overdue']))
            total_pending = get_overall_pending(student)
            oldest_due = student.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date').first()
            days_overdue = (today - oldest_due.due_date).days if oldest_due and oldest_due.due_date < today else 0
            result.append({
                'student': student,
                'pending_amount': total_pending,
                'fee_pending': fee_pending,
                'days_overdue': days_overdue
            })
        
        # Sorting
        if sort_by == 'pending':
            result.sort(key=lambda x: x['pending_amount'], reverse=True)
        elif sort_by == 'name':
            result.sort(key=lambda x: x['student'].name.lower())
        else:  # overdue (default)
            result.sort(key=lambda x: x['days_overdue'], reverse=True)
        
        # --- Analytics KPIs ---
        total_defaulters = len(result)
        total_pending_all = sum(r['pending_amount'] for r in result)
        avg_overdue = sum(r['days_overdue'] for r in result) / total_defaulters if total_defaulters > 0 else 0
        max_overdue = max((r['days_overdue'] for r in result), default=0)
        
        # --- Pagination (15 per page) ---
        paginator = Paginator(result, 15)
        page_obj = paginator.get_page(page_number)
        
        # --- Distinct grades & sections for filter dropdowns ---
        grades = list(Student.objects.values_list('grade', flat=True).distinct().order_by('grade'))
        sections = list(Student.objects.values_list('section', flat=True).distinct().order_by('section'))
    
    context = {
        'tenant': tenant,
        'defaulters': page_obj,                    # paginated list
        'total_defaulters': total_defaulters,
        'total_pending_all': total_pending_all,
        'avg_overdue': round(avg_overdue, 1),
        'max_overdue': max_overdue,
        'days': days,
        'search_query': q,
        'grade_filter': grade,
        'section_filter': section,
        'sort_by': sort_by,
        'grades': grades,
        'sections': sections,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/defaulters.html', context)'''

    # Replace the old function with the new one
    content = content.replace(old_func, new_func)

    # Ensure required imports are present (Paginator is already imported)
    # We need Q if not already imported
    if 'from django.db.models import Q' not in content:
        # Find a good place to add the import
        import_lines = [
            'from django.db.models import Sum, Q, Exists, OuterRef',
            'from django.db.models.functions import TruncMonth, TruncDay',
            'from django.db.models import Count'
        ]
        for line in import_lines:
            if line not in content:
                # Add after existing imports
                content = content.replace('from django.db.models import Sum,', 'from django.db.models import Sum, Q,')
                break

    with open(VIEWS_FILE, "w", encoding="utf-8") as f:
        f.write(content)

    print("✅ views.py patched – defaulters() function updated")
    return True


# ----------------------------------------------------------------------
# 2. PATCH defaulters.html – complete redesign
# ----------------------------------------------------------------------
def patch_template():
    if not os.path.exists(TEMPLATE_FILE):
        print(f"❌ defaulters.html not found at {TEMPLATE_FILE}")
        return False

    # Read the existing template
    with open(TEMPLATE_FILE, "r", encoding="utf-8") as f:
        old_content = f.read()

    # ------------------------------------------------------------------
    # NEW defaulters.html – full redesign
    # ------------------------------------------------------------------
    new_template = '''{% extends 'tenant/base.html' %}
{% block title %}Defaulters | {{ tenant.name }}{% endblock %}

{% block extra_head %}
<style>
    /* ---- KPI Cards ---- */
    .kpi-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 1rem;
        margin-bottom: 1.5rem;
    }
    .kpi-card {
        background: var(--surface);
        border-radius: var(--radius);
        border: 1px solid var(--border);
        padding: 1rem 1.25rem;
        display: flex;
        align-items: center;
        gap: 1rem;
        cursor: pointer;
        transition: all 0.2s ease;
        box-shadow: var(--shadow-sm);
        position: relative;
        overflow: hidden;
    }
    .kpi-card:hover {
        transform: translateY(-3px);
        box-shadow: var(--shadow);
        border-color: var(--primary);
    }
    .kpi-card.active {
        border-color: var(--primary);
        background: var(--surface-alt);
    }
    .kpi-card .kpi-icon {
        width: 48px;
        height: 48px;
        border-radius: 2rem;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-shrink: 0;
        font-size: 1.4rem;
    }
    .kpi-card .kpi-icon.blue { background: #dbeafe; color: #2563eb; }
    .kpi-card .kpi-icon.green { background: #d1fae5; color: #059669; }
    .kpi-card .kpi-icon.orange { background: #fef3c7; color: #d97706; }
    .kpi-card .kpi-icon.red { background: #fee2e2; color: #dc2626; }
    .kpi-card .kpi-info { flex: 1; }
    .kpi-card .kpi-label {
        font-size: 0.7rem;
        text-transform: uppercase;
        color: var(--muted);
        letter-spacing: 0.5px;
        font-weight: 600;
    }
    .kpi-card .kpi-value {
        font-size: 1.6rem;
        font-weight: 700;
        line-height: 1.2;
        color: var(--text);
    }
    .kpi-card .kpi-sub {
        font-size: 0.7rem;
        color: var(--muted);
        margin-top: 0.1rem;
    }
    .kpi-card .click-hint {
        position: absolute;
        bottom: 0.4rem;
        right: 0.8rem;
        font-size: 0.6rem;
        color: var(--muted);
        opacity: 0.5;
        font-style: italic;
    }
    [data-theme="dark"] .kpi-card .kpi-icon.blue { background: #1e3a5f; color: #60a5fa; }
    [data-theme="dark"] .kpi-card .kpi-icon.green { background: #0a3d2e; color: #34d399; }
    [data-theme="dark"] .kpi-card .kpi-icon.orange { background: #4a3a1a; color: #fbbf24; }
    [data-theme="dark"] .kpi-card .kpi-icon.red { background: #4a1a1a; color: #f87171; }

    /* ---- Filter Bar ---- */
    .filter-bar {
        background: var(--surface);
        border-radius: var(--radius);
        border: 1px solid var(--border);
        padding: 1rem 1.25rem;
        margin-bottom: 1.5rem;
        display: flex;
        flex-wrap: wrap;
        gap: 0.75rem;
        align-items: flex-end;
        box-shadow: var(--shadow-sm);
    }
    .filter-group {
        display: flex;
        flex-direction: column;
        gap: 0.2rem;
        flex: 1;
        min-width: 140px;
    }
    .filter-group label {
        font-size: 0.7rem;
        text-transform: uppercase;
        color: var(--muted);
        font-weight: 600;
        letter-spacing: 0.3px;
    }
    .filter-group input,
    .filter-group select {
        padding: 0.5rem 0.75rem;
        border-radius: 0.5rem;
        border: 1px solid var(--border);
        background: var(--surface-alt);
        color: var(--text);
        font-size: 0.85rem;
        width: 100%;
        transition: border-color 0.2s;
    }
    .filter-group input:focus,
    .filter-group select:focus {
        outline: none;
        border-color: var(--primary);
        box-shadow: 0 0 0 2px rgba(59,130,246,0.15);
    }
    .filter-group .search-wrapper {
        position: relative;
    }
    .filter-group .search-wrapper svg {
        position: absolute;
        left: 0.7rem;
        top: 50%;
        transform: translateY(-50%);
        color: var(--muted);
        width: 16px;
        height: 16px;
    }
    .filter-group .search-wrapper input {
        padding-left: 2.2rem;
    }
    .filter-actions {
        display: flex;
        gap: 0.5rem;
        align-items: center;
        flex-wrap: wrap;
    }
    .btn-filter, .btn-reset, .btn-clear {
        padding: 0.5rem 1.2rem;
        border-radius: 2rem;
        font-weight: 600;
        font-size: 0.8rem;
        border: none;
        cursor: pointer;
        transition: all 0.2s;
        white-space: nowrap;
    }
    .btn-filter {
        background: var(--primary);
        color: white;
    }
    .btn-filter:hover {
        background: var(--primary-dark);
        transform: translateY(-1px);
    }
    .btn-reset, .btn-clear {
        background: var(--surface-alt);
        color: var(--text);
        border: 1px solid var(--border);
    }
    .btn-reset:hover, .btn-clear:hover {
        background: var(--surface);
    }
    .filter-stats {
        font-size: 0.8rem;
        color: var(--muted);
        margin-left: auto;
        padding: 0.3rem 0.8rem;
        background: var(--surface-alt);
        border-radius: 2rem;
        white-space: nowrap;
    }
    .filter-stats strong {
        color: var(--text);
    }

    /* ---- Table ---- */
    .table-card {
        background: var(--surface);
        border-radius: var(--radius);
        border: 1px solid var(--border);
        overflow: hidden;
        box-shadow: var(--shadow-sm);
    }
    .table-responsive {
        overflow-x: auto;
    }
    .data-table {
        width: 100%;
        border-collapse: collapse;
    }
    .data-table th {
        text-align: left;
        padding: 0.85rem 1rem;
        background: var(--surface-alt);
        font-weight: 600;
        color: var(--muted);
        font-size: 0.75rem;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        border-bottom: 1px solid var(--border);
        cursor: default;
        white-space: nowrap;
    }
    .data-table td {
        padding: 0.75rem 1rem;
        border-bottom: 1px solid var(--border);
        color: var(--text);
        vertical-align: middle;
    }
    .data-table tbody tr:hover {
        background: var(--surface-alt);
    }
    .data-table .roll-badge {
        font-family: monospace;
        background: var(--surface-alt);
        padding: 0.2rem 0.5rem;
        border-radius: 0.5rem;
        font-size: 0.8rem;
        display: inline-block;
    }
    .data-table .student-meta {
        font-size: 0.7rem;
        color: var(--muted);
        display: block;
        margin-top: 0.1rem;
    }
    .data-table .pending-amount {
        font-weight: 700;
        color: var(--danger);
    }
    .data-table .total-pending {
        font-weight: 600;
        color: var(--primary);
    }
    .data-table .overdue-badge {
        display: inline-block;
        padding: 0.2rem 0.6rem;
        border-radius: 2rem;
        font-size: 0.7rem;
        font-weight: 600;
    }
    .overdue-badge.medium { background: #fed7aa; color: #9a3412; }
    .overdue-badge.high { background: #fee2e2; color: #991b1b; }
    .overdue-badge.critical { background: #fecaca; color: #7f1d1d; }
    [data-theme="dark"] .overdue-badge.medium { background: #7c2d12; color: #fdba74; }
    [data-theme="dark"] .overdue-badge.high { background: #7f1d1d; color: #fecaca; }
    [data-theme="dark"] .overdue-badge.critical { background: #991b1b; color: #fecaca; }

    .data-table .action-btns {
        display: flex;
        gap: 0.5rem;
        align-items: center;
    }
    .data-table .action-icon {
        color: var(--muted);
        transition: color 0.2s;
        display: inline-flex;
        padding: 0.2rem;
        border-radius: 0.5rem;
        text-decoration: none;
    }
    .data-table .action-icon:hover {
        color: var(--primary);
        background: var(--surface-alt);
    }

    .empty-row {
        text-align: center;
        padding: 2.5rem 1rem;
        color: var(--muted);
    }
    .empty-row svg {
        margin-bottom: 0.5rem;
        opacity: 0.4;
    }
    .empty-row .btn-sm {
        background: var(--primary);
        color: white;
        padding: 0.3rem 0.8rem;
        border-radius: 2rem;
        text-decoration: none;
        font-size: 0.8rem;
        display: inline-block;
        margin-top: 0.5rem;
    }

    /* ---- Pagination ---- */
    .pagination-bar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0.75rem 1rem;
        border-top: 1px solid var(--border);
        flex-wrap: wrap;
        gap: 0.5rem;
        background: var(--surface-alt);
    }
    .pagination-info {
        font-size: 0.8rem;
        color: var(--muted);
    }
    .pagination-info strong {
        color: var(--text);
    }
    .pagination-links {
        display: flex;
        gap: 0.3rem;
        align-items: center;
        flex-wrap: wrap;
    }
    .page-link {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        min-width: 2.2rem;
        height: 2.2rem;
        padding: 0 0.6rem;
        border-radius: 0.5rem;
        border: 1px solid var(--border);
        background: var(--surface);
        color: var(--text);
        text-decoration: none;
        font-size: 0.8rem;
        font-weight: 500;
        transition: all 0.2s;
        cursor: pointer;
    }
    .page-link:hover {
        background: var(--primary);
        color: white;
        border-color: var(--primary);
    }
    .page-link.active {
        background: var(--primary);
        color: white;
        border-color: var(--primary);
    }
    .page-link.disabled {
        opacity: 0.4;
        pointer-events: none;
    }

    /* ---- Responsive ---- */
    @media (max-width: 768px) {
        .kpi-grid {
            grid-template-columns: repeat(2, 1fr);
        }
        .filter-bar {
            flex-direction: column;
            align-items: stretch;
        }
        .filter-group {
            min-width: 100%;
        }
        .filter-stats {
            margin-left: 0;
            text-align: center;
        }
        .filter-actions {
            justify-content: stretch;
        }
        .filter-actions .btn-filter,
        .filter-actions .btn-reset,
        .filter-actions .btn-clear {
            flex: 1;
            text-align: center;
        }
        .pagination-bar {
            flex-direction: column;
            align-items: stretch;
            text-align: center;
        }
        .pagination-links {
            justify-content: center;
        }
        .data-table th, .data-table td {
            padding: 0.5rem 0.6rem;
            font-size: 0.8rem;
        }
    }
    @media (max-width: 480px) {
        .kpi-grid {
            grid-template-columns: 1fr 1fr;
        }
        .kpi-card .kpi-value {
            font-size: 1.2rem;
        }
        .kpi-card .kpi-icon {
            width: 38px;
            height: 38px;
            font-size: 1rem;
        }
    }
</style>
{% endblock %}

{% block body %}
<div class="page-header">
    <div>
        <h1 class="page-title">Fee Defaulters</h1>
        <p class="page-desc">Students with overdue or pending fee payments</p>
    </div>
</div>

<!-- ====== KPI CARDS (clickable) ====== -->
<div class="kpi-grid" id="kpiGrid">
    <div class="kpi-card" data-sort="overdue" data-label="Total Defaulters">
        <div class="kpi-icon blue">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8">
                <path d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"/>
            </svg>
        </div>
        <div class="kpi-info">
            <div class="kpi-label">Total Defaulters</div>
            <div class="kpi-value">{{ total_defaulters }}</div>
            <div class="kpi-sub">students with pending fees</div>
        </div>
        <span class="click-hint">click to sort</span>
    </div>
    <div class="kpi-card" data-sort="pending" data-label="Total Pending">
        <div class="kpi-icon green">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8">
                <circle cx="12" cy="12" r="10"/>
                <path d="M12 6v6l4 2"/>
            </svg>
        </div>
        <div class="kpi-info">
            <div class="kpi-label">Total Pending</div>
            <div class="kpi-value">₹{{ total_pending_all|floatformat:2 }}</div>
            <div class="kpi-sub">across all defaulters</div>
        </div>
        <span class="click-hint">click to sort</span>
    </div>
    <div class="kpi-card" data-sort="overdue" data-label="Avg Overdue">
        <div class="kpi-icon orange">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8">
                <circle cx="12" cy="12" r="10"/>
                <path d="M12 6v6l4 2"/>
            </svg>
        </div>
        <div class="kpi-info">
            <div class="kpi-label">Avg Overdue</div>
            <div class="kpi-value">{{ avg_overdue|floatformat:1 }} days</div>
            <div class="kpi-sub">average overdue days</div>
        </div>
        <span class="click-hint">click to sort</span>
    </div>
    <div class="kpi-card" data-sort="overdue" data-label="Max Overdue">
        <div class="kpi-icon red">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8">
                <circle cx="12" cy="12" r="10"/>
                <path d="M12 8v4l3 3"/>
            </svg>
        </div>
        <div class="kpi-info">
            <div class="kpi-label">Max Overdue</div>
            <div class="kpi-value">{{ max_overdue }} days</div>
            <div class="kpi-sub">longest overdue</div>
        </div>
        <span class="click-hint">click to sort</span>
    </div>
</div>

<!-- ====== FILTER BAR ====== -->
<div class="filter-bar">
    <div class="filter-group" style="flex: 2; min-width: 200px;">
        <label>🔍 Search</label>
        <div class="search-wrapper">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <circle cx="11" cy="11" r="8"/>
                <path d="M21 21l-4.35-4.35"/>
            </svg>
            <input type="text" name="q" id="searchInput" placeholder="Name, roll, father, CNIC, phone..." value="{{ search_query }}">
        </div>
    </div>
    <div class="filter-group">
        <label>Grade</label>
        <select name="grade" id="gradeSelect">
            <option value="">All Grades</option>
            {% for g in grades %}
            <option value="{{ g }}" {% if grade_filter == g %}selected{% endif %}>{{ g }}</option>
            {% endfor %}
        </select>
    </div>
    <div class="filter-group">
        <label>Section</label>
        <select name="section" id="sectionSelect">
            <option value="">All Sections</option>
            {% for s in sections %}
            <option value="{{ s }}" {% if section_filter == s %}selected{% endif %}>{{ s }}</option>
            {% endfor %}
        </select>
    </div>
    <div class="filter-group">
        <label>Overdue Days</label>
        <select name="days" id="daysSelect">
            <option value="0" {% if days == 0 %}selected{% endif %}>All pending</option>
            <option value="30" {% if days == 30 %}selected{% endif %}>30+ days</option>
            <option value="60" {% if days == 60 %}selected{% endif %}>60+ days</option>
            <option value="90" {% if days == 90 %}selected{% endif %}>90+ days</option>
            <option value="180" {% if days == 180 %}selected{% endif %}>180+ days</option>
        </select>
    </div>
    <div class="filter-group" style="flex: 0 0 auto;">
        <label>&nbsp;</label>
        <div class="filter-actions">
            <button type="button" class="btn-filter" id="applyFiltersBtn">Apply</button>
            <button type="button" class="btn-clear" id="clearFiltersBtn">Clear</button>
        </div>
    </div>
    <div class="filter-stats">
        Showing <strong>{{ defaulters|length }}</strong> of <strong>{{ total_defaulters }}</strong>
    </div>
</div>

<!-- ====== TABLE ====== -->
<div class="table-card">
    <div class="table-responsive">
        <table class="data-table">
            <thead>
                <tr>
                    <th>Roll No</th>
                    <th>Student Name</th>
                    <th>Father Name</th>
                    <th>Class</th>
                    <th>Pending Fee (₹)</th>
                    <th>Total Pending (₹)</th>
                    <th>Overdue Days</th>
                    <th style="text-align: center;">Actions</th>
                </tr>
            </thead>
            <tbody>
                {% for d in defaulters %}
                <tr>
                    <td><span class="roll-badge">{{ d.student.roll_number }}</span></td>
                    <td>
                        <strong>{{ d.student.name }}</strong>
                        <span class="student-meta">{{ d.student.grade }} - {{ d.student.section }}</span>
                    </td>
                    <td>{{ d.student.father_name }}</td>
                    <td>{{ d.student.grade }}</td>
                    <td class="pending-amount">₹{{ d.fee_pending|floatformat:2 }}</td>
                    <td class="total-pending">₹{{ d.pending_amount|floatformat:2 }}</td>
                    <td>
                        <span class="overdue-badge 
                            {% if d.days_overdue > 90 %}critical
                            {% elif d.days_overdue > 60 %}high
                            {% else %}medium{% endif %}">
                            {{ d.days_overdue }} days
                        </span>
                    </td>
                    <td style="text-align: center;">
                        <div class="action-btns" style="justify-content: center;">
                            <a href="{% url 'student_profile' schema_name=tenant.schema_name student_id=d.student.id %}" class="action-icon" title="Profile">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                                    <path d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/>
                                </svg>
                            </a>
                            <a href="{% url 'fee_collection' schema_name=tenant.schema_name student_id=d.student.id %}" class="action-icon" title="Collect Fee">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2z"/>
                                </svg>
                            </a>
                        </div>
                    </td>
                </tr>
                {% empty %}
                <tr>
                    <td colspan="8" class="empty-row">
                        <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
                            <circle cx="12" cy="12" r="10"/>
                            <path d="M8 12h8"/>
                        </svg>
                        <p>No defaulters match the current filters.</p>
                        {% if total_defaulters > 0 %}
                        <p style="font-size: 0.8rem; margin-top: 0.25rem;">
                            Try adjusting the search or filters above.
                        </p>
                        {% else %}
                        <p style="font-size: 0.8rem; margin-top: 0.25rem;">
                            All fees are paid! 🎉
                        </p>
                        {% endif %}
                    </td>
                </tr>
                {% endfor %}
            </tbody>
        </table>
    </div>

    <!-- ====== PAGINATION ====== -->
    {% if defaulters.has_other_pages %}
    <div class="pagination-bar">
        <div class="pagination-info">
            Showing <strong>{{ defaulters.start_index }}</strong> – <strong>{{ defaulters.end_index }}</strong>
            of <strong>{{ defaulters.paginator.count }}</strong> defaulters
        </div>
        <div class="pagination-links">
            {% if defaulters.has_previous %}
                <a href="?page=1{% if search_query %}&q={{ search_query }}{% endif %}{% if grade_filter %}&grade={{ grade_filter }}{% endif %}{% if section_filter %}&section={{ section_filter }}{% endif %}{% if days %}&days={{ days }}{% endif %}{% if sort_by %}&sort_by={{ sort_by }}{% endif %}" class="page-link" title="First">«</a>
                <a href="?page={{ defaulters.previous_page_number }}{% if search_query %}&q={{ search_query }}{% endif %}{% if grade_filter %}&grade={{ grade_filter }}{% endif %}{% if section_filter %}&section={{ section_filter }}{% endif %}{% if days %}&days={{ days }}{% endif %}{% if sort_by %}&sort_by={{ sort_by }}{% endif %}" class="page-link">‹</a>
            {% else %}
                <span class="page-link disabled">«</span>
                <span class="page-link disabled">‹</span>
            {% endif %}

            {% for num in defaulters.paginator.page_range %}
                {% if num == defaulters.number %}
                    <span class="page-link active">{{ num }}</span>
                {% elif num > defaulters.number|add:'-3' and num < defaulters.number|add:'3' %}
                    <a href="?page={{ num }}{% if search_query %}&q={{ search_query }}{% endif %}{% if grade_filter %}&grade={{ grade_filter }}{% endif %}{% if section_filter %}&section={{ section_filter }}{% endif %}{% if days %}&days={{ days }}{% endif %}{% if sort_by %}&sort_by={{ sort_by }}{% endif %}" class="page-link">{{ num }}</a>
                {% endif %}
            {% endfor %}

            {% if defaulters.has_next %}
                <a href="?page={{ defaulters.next_page_number }}{% if search_query %}&q={{ search_query }}{% endif %}{% if grade_filter %}&grade={{ grade_filter }}{% endif %}{% if section_filter %}&section={{ section_filter }}{% endif %}{% if days %}&days={{ days }}{% endif %}{% if sort_by %}&sort_by={{ sort_by }}{% endif %}" class="page-link">›</a>
                <a href="?page={{ defaulters.paginator.num_pages }}{% if search_query %}&q={{ search_query }}{% endif %}{% if grade_filter %}&grade={{ grade_filter }}{% endif %}{% if section_filter %}&section={{ section_filter }}{% endif %}{% if days %}&days={{ days }}{% endif %}{% if sort_by %}&sort_by={{ sort_by }}{% endif %}" class="page-link" title="Last">»</a>
            {% else %}
                <span class="page-link disabled">›</span>
                <span class="page-link disabled">»</span>
            {% endif %}
        </div>
    </div>
    {% endif %}
</div>

<!-- ====== JAVASCRIPT ====== -->
<script>
    (function() {
        // ---- KPI click: update sort_by and reload ----
        const kpiCards = document.querySelectorAll('.kpi-card');
        kpiCards.forEach(card => {
            card.addEventListener('click', function() {
                const sort = this.dataset.sort || 'overdue';
                const currentUrl = new URL(window.location.href);
                // If same sort, toggle? No, just set it.
                currentUrl.searchParams.set('sort_by', sort);
                // Reset to page 1 when sorting changes
                currentUrl.searchParams.set('page', '1');
                window.location.href = currentUrl.toString();
            });
        });

        // ---- Highlight active KPI based on current sort_by ----
        const currentSort = '{{ sort_by|default:"overdue" }}';
        kpiCards.forEach(card => {
            if (card.dataset.sort === currentSort) {
                card.classList.add('active');
            }
        });

        // ---- Apply filters ----
        const applyBtn = document.getElementById('applyFiltersBtn');
        const clearBtn = document.getElementById('clearFiltersBtn');
        const searchInput = document.getElementById('searchInput');
        const gradeSelect = document.getElementById('gradeSelect');
        const sectionSelect = document.getElementById('sectionSelect');
        const daysSelect = document.getElementById('daysSelect');

        function buildUrl(params) {
            const url = new URL(window.location.href);
            // Clear all filter params
            ['q', 'grade', 'section', 'days', 'page', 'sort_by'].forEach(p => url.searchParams.delete(p));
            // Set new ones
            for (const [key, val] of Object.entries(params)) {
                if (val && val !== '') {
                    url.searchParams.set(key, val);
                }
            }
            url.searchParams.set('page', '1');
            return url.toString();
        }

        applyBtn.addEventListener('click', function() {
            const params = {
                q: searchInput.value.trim(),
                grade: gradeSelect.value,
                section: sectionSelect.value,
                days: daysSelect.value,
                sort_by: currentSort
            };
            window.location.href = buildUrl(params);
        });

        clearBtn.addEventListener('click', function() {
            const url = new URL(window.location.href);
            ['q', 'grade', 'section', 'days', 'page', 'sort_by'].forEach(p => url.searchParams.delete(p));
            url.searchParams.set('page', '1');
            window.location.href = url.toString();
        });

        // ---- Enter key on search field triggers apply ----
        searchInput.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                e.preventDefault();
                applyBtn.click();
            }
        });

        // ---- Auto-submit on filter change (optional: uncomment to enable) ----
        // gradeSelect.addEventListener('change', applyBtn.click);
        // sectionSelect.addEventListener('change', applyBtn.click);
        // daysSelect.addEventListener('change', applyBtn.click);
    })();
</script>
{% endblock %}'''

    # Write the new template
    with open(TEMPLATE_FILE, "w", encoding="utf-8") as f:
        f.write(new_template)

    print("✅ defaulters.html patched – full redesign with KPIs, filters, pagination")
    return True


# ----------------------------------------------------------------------
# MAIN
# ----------------------------------------------------------------------
def main():
    print("\n" + "=" * 60)
    print("  AXIS SCHOOL SYSTEM – DEFAULTERS PAGE PATCHER")
    print("=" * 60 + "\n")

    success = True
    if not patch_views():
        success = False
    if not patch_template():
        success = False

    print("\n" + "=" * 60)
    if success:
        print("✅ PATCH COMPLETE – defaulters page upgraded!")
        print("\n   Changes applied:")
        print("   • 4 clickable KPI cards at top (Total Defaulters, Total Pending, Avg Overdue, Max Overdue)")
        print("   • Search bar (name, roll, father, CNIC, phone)")
        print("   • Grade & Section dropdown filters")
        print("   • Overdue days filter (30, 60, 90, 180+)")
        print("   • Pagination: 15 students per page with prev/next")
        print("   • Removed old 'Class-wise Defaulters' & 'Overdue Distribution' sections")
        print("\n   Restart server: python manage.py runserver")
    else:
        print("❌ PATCH FAILED – see errors above")
    print("=" * 60 + "\n")


if __name__ == "__main__":
    main()
