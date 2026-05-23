#!/bin/bash

# fix_lazy_querysets.sh – evaluates all lazy querysets inside schema context
# Run this once from the project root: ./fix_lazy_querysets.sh

set -e

echo "🔧 Patching axis_saas/views.py to evaluate querysets inside schema context..."

cd ~/axis_school_sys

# Backup original views.py
cp axis_saas/views.py axis_saas/views.py.backup

# Patch the file using sed (safe replacement)
# 1. Dashboard view: recent_payments
sed -i '/recent_payments = PaymentTransaction.objects.select_related/a\    recent_payments = list(recent_payments)  # force evaluation inside schema context' axis_saas/views.py

# 2. Fee collection view: recent_payments (same line pattern)
sed -i '/recent_payments = PaymentTransaction.objects.select_related/a\        recent_payments = list(recent_payments)  # force evaluation' axis_saas/views.py

# 3. Fee collection view: pending_students_page is already evaluated (Paginator), but ensure grade/section lists are lists
# (grades and sections are already lists from values_list)

# 4. Reports view: payments_qs and payments
sed -i '/payments_qs = PaymentTransaction.objects.filter/a\    payments_qs = list(payments_qs)  # force evaluation' axis_saas/views.py
sed -i '/payments = payments_qs.order_by/a\    payments = list(payments)  # force evaluation' axis_saas/views.py

# 5. Student profile view: fee_records and payments
sed -i '/fee_records = student.fee_records.all()/a\        fee_records = list(fee_records)  # force evaluation' axis_saas/views.py
sed -i '/payments = student.payments.all()/a\        payments = list(payments)  # force evaluation' axis_saas/views.py

echo "✅ Patch applied. Backup saved as axis_saas/views.py.backup"

# Optional: restart server suggestion
echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
