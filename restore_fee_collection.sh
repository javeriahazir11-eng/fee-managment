#!/bin/bash

# restore_fee_collection.sh – restores missing fee_collection and other functions
# Run once from project root: ./restore_fee_collection.sh

set -e

cd ~/axis_school_sys

# Ensure we are in the virtual environment
source venv/bin/activate

# Backup current views.py
cp axis_saas/views.py axis_saas/views.py.backup_missing

python3 << 'EOF'
import re

file_path = "axis_saas/views.py"
backup_path = "axis_saas/views.py.backup_student_profile"
# If the backup exists, simply restore it and exit
import os
if os.path.exists(backup_path):
    print("Found backup file. Restoring from axis_saas/views.py.backup_student_profile")
    with open(backup_path, "r") as src, open(file_path, "w") as dst:
        dst.write(src.read())
    print("✅ Restored from backup.")
    exit(0)

# Otherwise, we need to reconstruct the missing function from scratch.
print("No backup found. Manually inserting missing fee_collection function.")

with open(file_path, "r") as f:
    lines = f.readlines()

# Find the line where fee_receipt begins (or where we want to insert)
insert_index = None
for i, line in enumerate(lines):
    if line.strip().startswith("def fee_receipt("):
        insert_index = i
        break

if insert_index is None:
    print("❌ Could not find insertion point for fee_collection.")
    exit(1)

# The fee_collection function from earlier version
fee_collection_func = '''
def fee_collection(request, schema_name, student_id=None):
    tenant = get_tenant(request, schema_name)
    with schema_context(schema_name):
        today = date.today()
        today_collection = PaymentTransaction.objects.filter(payment_date=today).aggregate(Sum('amount'))['amount__sum'] or 0
        total_payments_count = PaymentTransaction.objects.count()
        recent_payments = PaymentTransaction.objects.select_related('student').order_by('-payment_date')[:5]
        recent_payments = list(recent_payments)  # force evaluation inside schema context
        print(f"DEBUG fee_collection: total_payments={PaymentTransaction.objects.count()}, recent_count={len(recent_payments)}")
        total_pending_all = sum(fr.remaining for fr in FeeRecord.objects.filter(status__in=['pending', 'partial', 'overdue']))
        
        # Filters for pending students
        grade_filter = request.GET.get('pending_grade', '')
        section_filter = request.GET.get('pending_section', '')
        search_filter = request.GET.get('pending_search', '')
        page_number = request.GET.get('page', 1)
        
        # Base queryset for students with pending fees
        pending_students_qs = Student.objects.filter(status='active')
        if grade_filter:
            pending_students_qs = pending_students_qs.filter(grade=grade_filter)
        if section_filter:
            pending_students_qs = pending_students_qs.filter(section=section_filter)
        if search_filter:
            pending_students_qs = pending_students_qs.filter(
                Q(name__icontains=search_filter) | Q(roll_number__icontains=search_filter)
            )
        
        # Compute pending total for each
        pending_list = []
        for student in pending_students_qs:
            pending = sum(fr.remaining for fr in student.fee_records.filter(status__in=['pending', 'partial', 'overdue']))
            if pending > 0:
                pending_list.append({
                    'id': student.id,
                    'name': student.name,
                    'father_name': student.father_name,
                    'roll_number': student.roll_number,
                    'grade': student.grade,
                    'section': student.section,
                    'pending_total': pending
                })
        pending_list.sort(key=lambda x: x['pending_total'], reverse=True)
        
        # Paginate
        paginator = Paginator(pending_list, 15)
        pending_students_page = paginator.get_page(page_number)
        
        # Get distinct grades and sections for filters
        grades = Student.objects.values_list('grade', flat=True).distinct().order_by('grade')
        grades = list(grades)  # force evaluation inside schema context
        sections = Student.objects.values_list('section', flat=True).distinct().order_by('section')
        sections = list(sections)  # force evaluation inside schema context
        
        if request.method == 'POST':
            student_id_post = request.POST.get('student_id')
            amount = Decimal(request.POST.get('amount', '0'))
            payment_mode = request.POST.get('payment_mode')
            remarks = request.POST.get('remarks', '')
            if not student_id_post or amount <= 0:
                messages.error(request, "Invalid payment data.")
                return redirect('fee_collection', schema_name=schema_name)
            student = get_object_or_404(Student, id=student_id_post)
            pending_records = student.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date')
            if not pending_records:
                messages.error(request, f"No pending fee for {student.name}.")
                return redirect('fee_collection', schema_name=schema_name)
            remaining = amount
            updated_records = []
            for record in pending_records:
                if remaining <= 0:
                    break
                due = record.remaining
                if remaining >= due:
                    record.paid_amount = record.amount
                    remaining -= due
                else:
                    record.paid_amount += remaining
                    remaining = 0
                record.save()
                updated_records.append(record)
            payment_type = 'full' if remaining == 0 else 'partial'
            payment = PaymentTransaction.objects.create(
                student=student, amount=amount, payment_mode=payment_mode,
                payment_type=payment_type, remarks=remarks,
                created_by=request.session.get('school_admin_username', 'admin')
            )
            payment.fee_records.set(updated_records)
            messages.success(request, f"₹{amount} received from {student.name}. Receipt: {payment.receipt_number}")
            return redirect('fee_receipt', schema_name=schema_name, receipt_id=payment.id)
        if not student_id:
            student_id = request.GET.get('student_id')
        selected_student = None
        pending_list = []
        if student_id:
            selected_student = get_object_or_404(Student, id=student_id)
            pending_list = selected_student.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date')
        context = {
            'tenant': tenant, 'selected_student': selected_student, 'pending_records': pending_list,
            'total_pending': sum(r.remaining for r in pending_list), 'today_collection': today_collection,
            'recent_payments': recent_payments, 'total_pending_all': total_pending_all,
            'pending_students': pending_students_page,
            'grades': grades, 'sections': sections,
            'grade_filter': grade_filter, 'section_filter': section_filter, 'search_filter': search_filter,
            'logo_url': tenant.school_logo.url if tenant.school_logo else None,
        }
    return render(request, 'tenant/fee_collection.html', context)
'''

# Insert the function before fee_receipt
new_lines = lines[:insert_index] + [fee_collection_func] + lines[insert_index:]

with open(file_path, "w") as f:
    f.writelines(new_lines)

print("✅ fee_collection function reinserted.")
EOF

echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
