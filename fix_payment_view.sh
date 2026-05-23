#!/bin/bash
# Fix missing payment_history view and clean up

cd /home/sami/axis_school_sys || exit

# Backup
cp axis_saas/views.py axis_saas/views.py.bak

# Remove the wrong "Payment History" section (misplaced student_search_api)
sed -i '/^# ------------------- Payment History -------------------$/,/^# ------------------- API: Student Search -------------------$/ { /^# ------------------- API: Student Search -------------------$/!d; }' axis_saas/views.py

# Insert correct payment_history function right before the API section
sed -i '/^# ------------------- API: Student Search -------------------$/i \
# ------------------- Payment History -------------------\
def payment_history(request, schema_name):\
    tenant = get_tenant(request, schema_name)\
    with schema_context(schema_name):\
        search_q = request.GET.get("search", "").strip()\
        mode_filter = request.GET.get("mode", "")\
        page_number = request.GET.get("page", 1)\
        payments = PaymentTransaction.objects.all().order_by("-payment_date")\
        if search_q:\
            payments = payments.filter(\
                Q(receipt_number__icontains=search_q) |\
                Q(student__name__icontains=search_q) |\
                Q(student__roll_number__icontains=search_q) |\
                Q(student__father_cnic__icontains=search_q)\
            )\
        if mode_filter:\
            payments = payments.filter(payment_mode=mode_filter)\
        paginator = Paginator(payments, 20)\
        page_obj = paginator.get_page(page_number)\
        mode_choices = PaymentTransaction.PAYMENT_MODE_CHOICES\
        total_amount = payments.aggregate(Sum("amount"))["amount__sum"] or Decimal("0")\
    context = {\
        "tenant": tenant,\
        "payments": page_obj,\
        "search_query": search_q,\
        "mode_filter": mode_filter,\
        "mode_choices": mode_choices,\
        "total_amount": total_amount,\
        "logo_url": tenant.school_logo.url if tenant.school_logo else None,\
    }\
    return render(request, "tenant/payment_history.html", context)\
' axis_saas/views.py

echo "✅ payment_history view added."
echo "🚀 Restart server: python3 manage.py runserver"
