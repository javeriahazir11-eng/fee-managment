#!/bin/bash
# Final Fix: Payment History URL and Display
set -e

echo "============================================="
echo "Fixing Payment History URL and Display"
echo "============================================="

# Backup templates
cp templates/tenant/fee_collection.html templates/tenant/fee_collection.html.bak
cp templates/tenant/payment_history.html templates/tenant/payment_history.html.bak
cp templates/tenant/base.html templates/tenant/base.html.bak

# 1. Fix fee_collection.html: remove schema_name from payment_history URL
echo "Fixing fee_collection.html..."
sed -i 's|{% url '\''payment_history'\'' schema_name=tenant.schema_name %}|{% url '\''payment_history'\'' %}|g' templates/tenant/fee_collection.html

# 2. Fix payment_history.html: remove schema_name from its own reset link
echo "Fixing payment_history.html..."
sed -i 's|{% url '\''payment_history'\'' schema_name=tenant.schema_name %}|{% url '\''payment_history'\'' %}|g' templates/tenant/payment_history.html

# 3. If base.html has a sidebar link for payment_history, fix it too
echo "Fixing base.html sidebar link if present..."
sed -i 's|{% url '\''payment_history'\'' schema_name=tenant.schema_name %}|{% url '\''payment_history'\'' %}|g' templates/tenant/base.html

# 4. Ensure the URL pattern in tenant_urls.py is correct (already is)
# No changes needed.

# 5. Verify the view exists (it does)
echo "View exists check:"
if grep -q "def payment_history" axis_saas/views.py; then
    echo "  ✅ payment_history view found."
else
    echo "  ❌ payment_history view missing! Adding it..."
    # Append the view at the end of views.py (safely)
    cat >> axis_saas/views.py << 'EOF'

# ------------------- Payment History -------------------
def payment_history(request, schema_name):
    tenant = get_tenant(request, schema_name)
    with schema_context(schema_name):
        search_q = request.GET.get("search", "").strip()
        mode_filter = request.GET.get("mode", "")
        page_number = request.GET.get("page", 1)
        payments = PaymentTransaction.objects.all().order_by("-payment_date")
        if search_q:
            payments = payments.filter(
                Q(receipt_number__icontains=search_q) |
                Q(student__name__icontains=search_q) |
                Q(student__roll_number__icontains=search_q) |
                Q(student__father_cnic__icontains=search_q)
            )
        if mode_filter:
            payments = payments.filter(payment_mode=mode_filter)
        paginator = Paginator(payments, 20)
        page_obj = paginator.get_page(page_number)
        mode_choices = PaymentTransaction.PAYMENT_MODE_CHOICES
        total_amount = payments.aggregate(Sum("amount"))["amount__sum"] or Decimal("0")
    context = {
        "tenant": tenant,
        "payments": page_obj,
        "search_query": search_q,
        "mode_filter": mode_filter,
        "mode_choices": mode_choices,
        "total_amount": total_amount,
        "logo_url": tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, "tenant/payment_history.html", context)
EOF
    echo "  ✅ view added."
fi

# 6. Ensure the URL route is in tenant_urls.py (exactly one)
echo "Checking tenant_urls.py..."
if ! grep -q "payments/history/" axis_saas/tenant_urls.py; then
    echo "  Adding payment_history URL..."
    # Insert before the api/student-search line
    sed -i "/path('api\/student-search\/'/i \    path('payments/history/', views.payment_history, name='payment_history')," axis_saas/tenant_urls.py
else
    echo "  ✅ URL already present."
fi

# 7. Remove duplicate lines if any (there were many earlier, but now fixed)
echo "Cleaning duplicate payment_history entries in tenant_urls.py..."
awk '!seen[$0]++' axis_saas/tenant_urls.py > axis_saas/tenant_urls.py.tmp && mv axis_saas/tenant_urls.py.tmp axis_saas/tenant_urls.py

echo ""
echo "============================================="
echo "✅ All fixes applied successfully!"
echo "============================================="
echo ""
echo "🚀 Restart your server: python3 manage.py runserver"
echo "📋 Then go to Fee Collection page – the link 'View All Payments' should now work."
echo "   Direct URL: http://localhost:8000/portal/YOUR_SCHEMA/payments/history/"
echo ""
