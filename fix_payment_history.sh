#!/bin/bash
# Final Fix: Payment History URL & View
set -e

echo "============================================="
echo "🔧 Fixing Payment History URL & View"
echo "============================================="

# Backup original files
cp axis_saas/views.py axis_saas/views.py.bak
cp axis_saas/tenant_urls.py axis_saas/tenant_urls.py.bak

# ------------------- 1. Ensure payment_history view exists -------------------
if ! grep -q "def payment_history" axis_saas/views.py; then
    echo "➕ Adding payment_history view to views.py"
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
    echo "✅ View added."
else
    echo "✅ View already exists."
fi

# ------------------- 2. Clean and add URL pattern to tenant_urls.py -------------------
echo "🔗 Cleaning and adding URL pattern..."

# Remove all existing payment_history lines (including any duplicates)
sed -i '/payments\/history\//d' axis_saas/tenant_urls.py

# Insert a single line before the api/student-search/ line
sed -i "/path('api\/student-search\/'/i \ \ \ \ path('payments/history/', views.payment_history, name='payment_history')," axis_saas/tenant_urls.py

echo "✅ URL pattern added."

# ------------------- 3. Ensure the template uses correct URL (without schema_name) -------------------
echo "📄 Fixing template URL tag..."
sed -i 's|{% url '\''payment_history'\'' schema_name=tenant.schema_name %}|{% url '\''payment_history'\'' %}|g' templates/tenant/fee_collection.html
sed -i 's|{% url '\''payment_history'\'' schema_name=tenant.schema_name %}|{% url '\''payment_history'\'' %}|g' templates/tenant/payment_history.html

echo "✅ Template updated."

# ------------------- 4. Final message -------------------
echo ""
echo "============================================="
echo "✅ All fixes applied successfully!"
echo "============================================="
echo ""
echo "🚀 Restart your server:"
echo "   python3 manage.py runserver"
echo ""
echo "📋 Then visit any tenant portal (e.g., /portal/b/) and click 'Fee Collection'."
echo "   The 'View All Payments' link should now work properly."
echo ""
echo "💡 If the error persists, clear your browser cache and restart the server."
