#!/bin/bash

# fix_student_profile_final.sh – correctly compute aggregates before list conversion
# Run once from project root: ./fix_student_profile_final.sh

set -e

cd ~/axis_school_sys

# Backup current views.py
cp axis_saas/views.py axis_saas/views.py.backup_student_final

python3 << 'EOF'
import re

file_path = "axis_saas/views.py"
with open(file_path, "r") as f:
    content = f.read()

# Define the corrected student_profile function
corrected_func = '''def student_profile(request, schema_name, student_id):
    tenant = get_tenant(request, schema_name)
    with schema_context(schema_name):
        student = get_object_or_404(Student, id=student_id)
        fee_records_qs = student.fee_records.all().order_by('-year', '-month')
        total_fee = fee_records_qs.aggregate(Sum('amount'))['amount__sum'] or 0
        fee_records = list(fee_records_qs)
        payments_qs = student.payments.all().order_by('-payment_date')
        total_paid = payments_qs.aggregate(Sum('amount'))['amount__sum'] or 0
        payments = list(payments_qs)
        pending_total = total_fee - total_paid
    context = {
        'tenant': tenant, 'student': student, 'fee_records': fee_records, 'payments': payments,
        'total_fee': total_fee, 'total_paid': total_paid, 'pending_total': pending_total,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/student_profile.html', context)'''

# Use regex to replace the entire student_profile function
pattern = r'(def student_profile\(request, schema_name, student_id\):.*?)(?=\n\ndef |\Z)'
content_new = re.sub(pattern, corrected_func, content, flags=re.DOTALL)

with open(file_path, "w") as f:
    f.write(content_new)

print("✅ student_profile view fixed – aggregates calculated before list conversion.")
EOF

echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
