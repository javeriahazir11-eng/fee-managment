from django.shortcuts import render, redirect, get_object_or_404
from django.http import JsonResponse
from django.contrib import messages
from django.db.models import Sum, Q
from django.db import connection
from django_tenants.utils import schema_context
from decimal import Decimal
from datetime import date, timedelta
import json
from functools import wraps

from .models import SchoolClient, Student, FeeStructure, FeeRecord, PaymentTransaction, SchoolFeeSettings
from .forms import StudentForm, FeeCollectionForm, FeeSettingsForm, FeeStructureForm, FamilyPaymentForm

# ------------------- Dashboard -------------------
def dashboard(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        today = date.today()
        first_day_month = today.replace(day=1)
        
        today_collection = PaymentTransaction.objects.filter(payment_date=today).aggregate(Sum('amount'))['amount__sum'] or 0
        month_collection = PaymentTransaction.objects.filter(payment_date__gte=first_day_month).aggregate(Sum('amount'))['amount__sum'] or 0
        
        pending_records = FeeRecord.objects.filter(status__in=['pending', 'partial', 'overdue'])
        total_pending = sum(r.remaining for r in pending_records)
        defaulters_count = Student.objects.filter(fee_records__status__in=['pending', 'partial', 'overdue']).distinct().count()
        recent_payments = PaymentTransaction.objects.select_related('student').order_by('-payment_date')[:10]
        
        top_defaulters = []
        for student in Student.objects.all():
            pending = sum(fr.remaining for fr in student.fee_records.filter(status__in=['pending', 'partial', 'overdue']))
            if pending > 0:
                top_defaulters.append({'student': student, 'pending': pending})
        top_defaulters = sorted(top_defaulters, key=lambda x: x['pending'], reverse=True)[:5]
        
        months_labels = []
        months_amounts = []
        for i in range(5, -1, -1):
            m = today.month - i
            y = today.year
            if m <= 0:
                m += 12
                y -= 1
            total = PaymentTransaction.objects.filter(payment_date__year=y, payment_date__month=m).aggregate(Sum('amount'))['amount__sum'] or 0
            months_labels.append(f"{m}/{y}")
            months_amounts.append(float(total))
    
    context = {
        'tenant': tenant,
        'today_collection': today_collection,
        'month_collection': month_collection,
        'total_pending': total_pending,
        'defaulters_count': defaulters_count,
        'recent_payments': recent_payments,
        'top_defaulters': top_defaulters,
        'months_labels': months_labels,
        'months_amounts': months_amounts,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/dashboard.html', context)

# ------------------- Student List -------------------
def student_list(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    query = request.GET.get('q', '')
    grade = request.GET.get('grade', '')
    section = request.GET.get('section', '')
    status = request.GET.get('status', '')
    
    with schema_context(schema_name):
        students = Student.objects.all()
        if query:
            students = students.filter(
                Q(name__icontains=query) | Q(roll_number__icontains=query) |
                Q(father_name__icontains=query) | Q(father_cnic__icontains=query) |
                Q(parent_mobile__icontains=query) | Q(grade__icontains=query)
            )
        if grade: students = students.filter(grade=grade)
        if section: students = students.filter(section=section)
        if status: students = students.filter(status=status)
        
        students = students.order_by('-enrolled_on')
        for s in students:
            s.pending_amount = sum(fr.remaining for fr in s.fee_records.filter(status__in=['pending', 'partial', 'overdue']))
        
        grades = Student.objects.values_list('grade', flat=True).distinct().order_by('grade')
        sections = Student.objects.values_list('section', flat=True).distinct().order_by('section')
        status_choices = Student.STATUS_CHOICES
    
    context = {
        'tenant': tenant,
        'students': students,
        'grades': grades,
        'sections': sections,
        'status_choices': status_choices,
        'search_query': query,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/student_list.html', context)

# ------------------- Student Profile -------------------
def student_profile(request, schema_name, student_id):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        student = get_object_or_404(Student, id=student_id)
        fee_records = student.fee_records.all().order_by('-year', '-month')
        payments = student.payments.all().order_by('-payment_date')
        total_fee = fee_records.aggregate(Sum('amount'))['amount__sum'] or 0
        total_paid = payments.aggregate(Sum('amount'))['amount__sum'] or 0
    
    context = {
        'tenant': tenant,
        'student': student,
        'fee_records': fee_records,
        'payments': payments,
        'total_fee': total_fee,
        'total_paid': total_paid,
        'pending_total': total_fee - total_paid,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/student_profile.html', context)

# ------------------- Fee Collection -------------------
def fee_collection(request, schema_name, student_id=None):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        if request.method == 'POST':
            form = FeeCollectionForm(request.POST)
            if form.is_valid():
                student = form.cleaned_data['student']
                amount = form.cleaned_data['amount']
                payment_mode = form.cleaned_data['payment_mode']
                remarks = form.cleaned_data['remarks']
                
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
                
                payment = PaymentTransaction.objects.create(
                    student=student,
                    amount=amount,
                    payment_mode=payment_mode,
                    payment_type='full' if remaining == 0 else 'partial',
                    remarks=remarks,
                    created_by=request.session.get('school_admin_username', 'admin')
                )
                payment.fee_records.set(updated_records)
                messages.success(request, f"₹{amount} received from {student.name}. Receipt: {payment.receipt_number}")
                return redirect('fee_receipt', schema_name=schema_name, receipt_id=payment.id)
        else:
            form = FeeCollectionForm(initial={'student': student_id} if student_id else {})
        
        selected_student = None
        pending_list = []
        if student_id:
            selected_student = get_object_or_404(Student, id=student_id)
            pending_list = selected_student.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date')
        
        context = {
            'tenant': tenant,
            'form': form,
            'selected_student': selected_student,
            'pending_records': pending_list,
            'total_pending': sum(r.remaining for r in pending_list),
            'logo_url': tenant.school_logo.url if tenant.school_logo else None,
        }
        return render(request, 'tenant/fee_collection.html', context)

# ------------------- Receipt -------------------
def fee_receipt(request, schema_name, receipt_id):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        payment = get_object_or_404(PaymentTransaction, id=receipt_id)
        context = {
            'tenant': tenant,
            'payment': payment,
            'fee_records': payment.fee_records.all(),
            'logo_url': tenant.school_logo.url if tenant.school_logo else None,
        }
        return render(request, 'tenant/receipt.html', context)

# ------------------- Defaulters -------------------
def defaulters(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    days = request.GET.get('days', '30')
    try:
        days = int(days)
    except:
        days = 30
    
    with schema_context(schema_name):
        today = date.today()
        cutoff = today - timedelta(days=days)
        defaulters_list = Student.objects.filter(
            fee_records__status__in=['pending', 'partial', 'overdue'],
            fee_records__due_date__lte=cutoff
        ).distinct()
        
        result = []
        for student in defaulters_list:
            pending_fee = sum(fr.remaining for fr in student.fee_records.filter(status__in=['pending', 'partial', 'overdue']))
            oldest_due = student.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date').first()
            result.append({
                'student': student,
                'pending_amount': pending_fee,
                'days_overdue': (today - oldest_due.due_date).days if oldest_due else 0
            })
        result.sort(key=lambda x: x['days_overdue'], reverse=True)
    
    context = {
        'tenant': tenant,
        'defaulters': result,
        'days': days,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/defaulters.html', context)

# ------------------- Reports -------------------
def reports(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    report_type = request.GET.get('type', 'collection')
    with schema_context(schema_name):
        if report_type == 'collection':
            start_date = request.GET.get('start_date')
            end_date = request.GET.get('end_date')
            if not start_date or not end_date:
                end_date = date.today()
                start_date = end_date.replace(day=1)
            else:
                start_date = date.fromisoformat(start_date)
                end_date = date.fromisoformat(end_date)
            
            payments = PaymentTransaction.objects.filter(payment_date__range=[start_date, end_date]).order_by('-payment_date')
            total = payments.aggregate(Sum('amount'))['amount__sum'] or 0
            context = {
                'tenant': tenant,
                'report_type': 'collection',
                'payments': payments,
                'total': total,
                'start_date': start_date,
                'end_date': end_date,
            }
        else:
            students = Student.objects.all()
            data = []
            for student in students:
                pending = sum(fr.remaining for fr in student.fee_records.filter(status__in=['pending', 'partial', 'overdue']))
                if pending > 0:
                    data.append({'student': student, 'pending': pending})
            data.sort(key=lambda x: x['pending'], reverse=True)
            context = {
                'tenant': tenant,
                'report_type': 'defaulters',
                'report_data': data,
            }
        context['logo_url'] = tenant.school_logo.url if tenant.school_logo else None
    return render(request, 'tenant/reports.html', context)

# ------------------- Settings -------------------
def settings(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    if request.method == 'POST':
        admin_username = request.POST.get('admin_username')
        admin_password = request.POST.get('admin_password')
        if admin_username:
            tenant.admin_username = admin_username
        if admin_password:
            tenant.admin_password = admin_password
        if request.FILES.get('school_logo'):
            tenant.school_logo = request.FILES['school_logo']
        tenant.save()
        messages.success(request, "Settings updated successfully.")
        return redirect('settings', schema_name=schema_name)
    
    context = {
        'tenant': tenant,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/settings.html', context)

# ------------------- Fee Structure -------------------
def fee_structure(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        if request.method == 'POST':
            form = FeeStructureForm(request.POST)
            if form.is_valid():
                form.save()
                messages.success(request, "Fee structure saved.")
                return redirect('fee_structure', schema_name=schema_name)
        else:
            form = FeeStructureForm()
        structures = FeeStructure.objects.all().order_by('grade')
    
    context = {
        'tenant': tenant,
        'form': form,
        'structures': structures,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/fee_structure.html', context)

# ------------------- Fee Settings -------------------
def fee_settings(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context('public'):
        settings_obj, _ = SchoolFeeSettings.objects.get_or_create(tenant=tenant)
        if request.method == 'POST':
            form = FeeSettingsForm(request.POST, instance=settings_obj)
            if form.is_valid():
                form.save()
                messages.success(request, "Fee settings updated.")
                return redirect('fee_settings', schema_name=schema_name)
        else:
            form = FeeSettingsForm(instance=settings_obj)
    
    context = {
        'tenant': tenant,
        'form': form,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/fee_settings.html', context)

# ------------------- Family Payment -------------------
def family_payment(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        if request.method == 'POST':
            form = FamilyPaymentForm(request.POST)
            if form.is_valid():
                cnic = form.cleaned_data['father_cnic']
                amount = form.cleaned_data['amount'] or None
                mode = form.cleaned_data['payment_mode']
                remarks = form.cleaned_data['remarks']
                
                students = Student.objects.filter(father_cnic=cnic, status='active')
                if not students.exists():
                    messages.error(request, "No student found with this CNIC.")
                    return redirect('family_payment', schema_name=schema_name)
                
                total_pending = 0
                all_pending_records = []
                for s in students:
                    records = s.fee_records.filter(status__in=['pending', 'partial', 'overdue']).order_by('due_date')
                    total_pending += sum(r.remaining for r in records)
                    all_pending_records.extend(records)
                
                if amount is None:
                    amount = total_pending
                if amount > total_pending:
                    messages.error(request, f"Amount exceeds total pending ({total_pending})")
                    return redirect('family_payment', schema_name=schema_name)
                
                remaining = amount
                paid_records = []
                for record in all_pending_records:
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
                
                for student in students:
                    student_paid = [r for r in paid_records if r.student == student]
                    if student_paid:
                        payment = PaymentTransaction.objects.create(
                            student=student,
                            amount=sum(r.paid_amount for r in student_paid),
                            payment_mode=mode,
                            payment_type='full' if remaining == 0 else 'partial',
                            remarks=remarks,
                            created_by=request.session.get('school_admin_username', 'admin')
                        )
                        payment.fee_records.set(student_paid)
                
                messages.success(request, f"Family payment of ₹{amount} processed for CNIC {cnic}")
                return redirect('reports', schema_name=schema_name)
        else:
            form = FamilyPaymentForm()
    
    context = {
        'tenant': tenant,
        'form': form,
        'logo_url': tenant.school_logo.url if tenant.school_logo else None,
    }
    return render(request, 'tenant/family_payment.html', context)

# ------------------- API: Student Search -------------------
def student_search_api(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    q = request.GET.get('q', '')
    with schema_context(schema_name):
        students = Student.objects.filter(
            Q(name__icontains=q) | Q(roll_number__icontains=q) | Q(father_name__icontains=q)
        )[:10]
        data = [{'id': s.id, 'name': s.name, 'roll_no': s.roll_number, 'grade': s.grade} for s in students]
    return JsonResponse(data, safe=False)

# ------------------- Add Student -------------------
def add_student(request, schema_name):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        if request.method == 'POST':
            form = StudentForm(request.POST)
            if form.is_valid():
                student = form.save(commit=False)
                # Roll number auto-generate hoga model ke save() mein
                student.save()
                messages.success(request, f"Student {student.name} added successfully. Roll No: {student.roll_number}")
                return redirect('student_list', schema_name=schema_name)
        else:
            form = StudentForm()
        # For grade dropdown, pre-populate grades from FeeStructure
        grades = FeeStructure.objects.values_list('grade', flat=True).distinct()
        context = {
            'tenant': tenant,
            'form': form,
            'grades': grades,
            'logo_url': tenant.school_logo.url if tenant.school_logo else None,
        }
        return render(request, 'tenant/student_form.html', context)

# ------------------- Edit Student -------------------
def edit_student(request, schema_name, student_id):
    tenant = get_object_or_404(SchoolClient, schema_name=schema_name)
    with schema_context(schema_name):
        student = get_object_or_404(Student, id=student_id)
        if request.method == 'POST':
            form = StudentForm(request.POST, instance=student)
            if form.is_valid():
                form.save()
                messages.success(request, f"Student {student.name} updated successfully.")
                return redirect('student_profile', schema_name=schema_name, student_id=student.id)
        else:
            form = StudentForm(instance=student)
        grades = FeeStructure.objects.values_list('grade', flat=True).distinct()
        context = {
            'tenant': tenant,
            'form': form,
            'student': student,
            'grades': grades,
            'logo_url': tenant.school_logo.url if tenant.school_logo else None,
        }
        return render(request, 'tenant/student_form.html', context)
