#!/bin/bash

# fix_fee_collection.sh - Adds missing fee_collection view to axis_saas/views.py
# Run from project root: cd ~/axis_school_sys && chmod +x fix_fee_collection.sh && ./fix_fee_collection.sh

set -e

VIEWS_FILE="axis_saas/views.py"

if [ ! -f "$VIEWS_FILE" ]; then
    echo "ERROR: $VIEWS_FILE not found. Are you in the project root?"
    exit 1
fi

# 1. Add missing import (if not already present)
if ! grep -q "from django.core.paginator import Paginator" "$VIEWS_FILE"; then
    echo "Adding missing import: Paginator"
    # Insert after the last 'from' line or at the top of the imports section
    sed -i '/^from decimal import Decimal/a from django.core.paginator import Paginator' "$VIEWS_FILE"
else
    echo "Import Paginator already present."
fi

# 2. Check if fee_collection function already exists
if grep -q "^def fee_collection(" "$VIEWS_FILE"; then
    echo "fee_collection view already exists. Nothing to do."
    exit 0
fi

echo "Appending fee_collection view function to $VIEWS_FILE ..."

# 3. Append the function definition (using a heredoc)
cat >> "$VIEWS_FILE" << 'EOF'

def fee_collection(request, schema_name, student_id=None):
    tenant = get_tenant(request, schema_name)
    with schema_context(schema_name):
        # Handle POST payment
        if request.method == 'POST':
            student_id_post = request.POST.get('student_id')
            amount = request.POST.get('amount')
            payment_mode = request.POST.get('payment_mode')
            remarks = request.POST.get('remarks', '')
            if student_id_post and amount:
                try:
                    student = Student.objects.get(id=student_id_post)
                    amount = Decimal(amount)
                    # Get pending records for this student
                    pending_records = student.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date')
                    total_pending = sum(r.remaining for r in pending_records)
                    if amount > total_pending:
                        messages.error(request, f"Amount exceeds total pending (₹{total_pending})")
                        return redirect('fee_collection', schema_name=schema_name, student_id=student.id)
                    remaining = amount
                    paid_records = []
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
                        paid_records.append(record)
                    # Create payment transaction
                    payment = PaymentTransaction.objects.create(
                        student=student,
                        amount=amount,
                        payment_mode=payment_mode,
                        payment_type='full' if remaining == 0 else 'partial',
                        remarks=remarks,
                        created_by=request.session.get('school_admin_username', 'admin')
                    )
                    payment.fee_records.set(paid_records)
                    messages.success(request, f"Payment of ₹{amount} received. Receipt: {payment.receipt_number}")
                    return redirect('fee_collection', schema_name=schema_name, student_id=student.id)
                except Student.DoesNotExist:
                    messages.error(request, "Student not found")
                except Exception as e:
                    messages.error(request, f"Error processing payment: {str(e)}")
            else:
                messages.error(request, "Invalid payment data")
            return redirect('fee_collection', schema_name=schema_name)

        # GET request - prepare filters and student data
        search_filter = request.GET.get('pending_search', '')
        grade_filter = request.GET.get('pending_grade', '')
        section_filter = request.GET.get('pending_section', '')
        page_number = request.GET.get('page', 1)

        # Get all students with pending fees (aggregated)
        students_qs = Student.objects.all()
        if search_filter:
            students_qs = students_qs.filter(
                Q(name__icontains=search_filter) | Q(roll_number__icontains=search_filter) |
                Q(father_name__icontains=search_filter) | Q(father_cnic__icontains=search_filter)
            )
        if grade_filter:
            students_qs = students_qs.filter(grade=grade_filter)
        if section_filter:
            students_qs = students_qs.filter(section=section_filter)

        # Annotate pending total
        pending_students = []
        for s in students_qs:
            pending = sum(fr.remaining for fr in s.fee_records.filter(status__in=['pending', 'partial', 'overdue']))
            if pending > 0:
                s.pending_total = pending
                pending_students.append(s)
        pending_students.sort(key=lambda x: x.pending_total, reverse=True)

        # Pagination
        paginator = Paginator(pending_students, 20)
        pending_page = paginator.get_page(page_number)

        # Selected student details if student_id provided
        selected_student = None
        total_pending = 0
        pending_records = []
        if student_id:
            try:
                selected_student = Student.objects.get(id=student_id)
                pending_records = selected_student.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date')
                total_pending = sum(r.remaining for r in pending_records)
            except Student.DoesNotExist:
                pass

        # Recent payments
        recent_payments = list(PaymentTransaction.objects.select_related('student').order_by('-payment_date')[:5])
        total_pending_all = sum(fr.remaining for fr in FeeRecord.objects.filter(status__in=['pending', 'partial', 'overdue']))
        total_payments_count = PaymentTransaction.objects.count()
        grades = list(Student.objects.values_list('grade', flat=True).distinct().order_by('grade'))
        sections = list(Student.objects.values_list('section', flat=True).distinct().order_by('section'))

        context = {
            'tenant': tenant,
            'pending_students': pending_page,
            'selected_student': selected_student,
            'total_pending': total_pending,
            'pending_records': pending_records,
            'recent_payments': recent_payments,
            'total_pending_all': total_pending_all,
            'total_payments_count': total_payments_count,
            'grades': grades,
            'sections': sections,
            'search_filter': search_filter,
            'grade_filter': grade_filter,
            'section_filter': section_filter,
            'logo_url': tenant.school_logo.url if tenant.school_logo else None,
        }
        return render(request, 'tenant/fee_collection.html', context)
EOF

echo "✅ fee_collection view added successfully."
echo "🚀 Now restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
