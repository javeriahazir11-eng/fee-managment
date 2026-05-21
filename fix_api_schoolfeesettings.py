import re

file_path = "axis_saas/public_urls.py"
with open(file_path, "r") as f:
    content = f.read()

# Find and replace the fee_status_api function
new_status_api = """@csrf_exempt
def fee_status_api(request):
    if not request.session.get('school_admin_authenticated'):
        return JsonResponse({'error': 'Unauthorized'}, status=401)
    schema_name = request.session.get('school_admin_schema')
    if not schema_name:
        return JsonResponse({'error': 'No tenant schema'}, status=400)
    # Get tenant from public schema
    from axis_saas.models import SchoolClient, SchoolFeeSettings, FeeRecord
    try:
        tenant = SchoolClient.objects.get(schema_name=schema_name)
    except SchoolClient.DoesNotExist:
        return JsonResponse({'error': 'Tenant not found'}, status=404)
    settings, _ = SchoolFeeSettings.objects.get_or_create(tenant=tenant)
    last_record = FeeRecord.objects.order_by('-year', '-month').first()
    last_gen = f"{last_record.month}/{last_record.year}" if last_record else "Never"
    today = date.today()
    gen_day = settings.fee_generation_day
    from calendar import monthrange
    try:
        if today.day <= gen_day:
            next_date = date(today.year, today.month, min(gen_day, monthrange(today.year, today.month)[1]))
        else:
            next_month = today.month + 1 if today.month < 12 else 1
            next_year = today.year + 1 if today.month == 12 else today.year
            next_date = date(next_year, next_month, min(gen_day, monthrange(next_year, next_month)[1]))
    except:
        next_date = today
    return JsonResponse({
        'last_generation': last_gen,
        'next_generation': next_date.strftime('%Y-%m-%d'),
        'status': 'success',
    })"""

new_manual_api = """@csrf_exempt
def manual_generate_api(request):
    if request.method != 'POST':
        return JsonResponse({'error': 'Only POST allowed'}, status=405)
    if not request.session.get('school_admin_authenticated'):
        return JsonResponse({'error': 'Unauthorized'}, status=401)
    schema_name = request.session.get('school_admin_schema')
    if not schema_name:
        return JsonResponse({'error': 'No tenant schema'}, status=400)
    from axis_saas.models import SchoolClient, SchoolFeeSettings, Student, FeeRecord, FeeStructure
    try:
        tenant = SchoolClient.objects.get(schema_name=schema_name)
    except SchoolClient.DoesNotExist:
        return JsonResponse({'error': 'Tenant not found'}, status=404)
    settings, _ = SchoolFeeSettings.objects.get_or_create(tenant=tenant)
    today = date.today()
    month = today.month
    year = today.year
    if FeeRecord.objects.filter(month=month, year=year).exists():
        return JsonResponse({'message': f'Fee records for {month}/{year} already exist.'})
    students = Student.objects.filter(status='active')
    due_date = today + timedelta(days=settings.due_date_offset)
    created = 0
    for student in students:
        base_fee = student.custom_fee if student.custom_fee > 0 else (FeeStructure.objects.filter(grade=student.grade).first().monthly_fee if FeeStructure.objects.filter(grade=student.grade).exists() else 0)
        if base_fee > 0:
            FeeRecord.objects.get_or_create(
                student=student, month=month, year=year,
                defaults={'amount': base_fee, 'due_date': due_date, 'status': 'pending'}
            )
            created += 1
    return JsonResponse({'message': f'Generated {created} fee records for {month}/{year}.'})"""

# Find the old API functions and replace them
# First, locate the start of fee_status_api
start_status = content.find("@csrf_exempt\ndef fee_status_api")
if start_status == -1:
    start_status = content.find("def fee_status_api")
if start_status == -1:
    print("Could not find fee_status_api")
    exit(1)

# Find the end of manual_generate_api (before the next urlpatterns or end)
end_manual = content.find("urlpatterns = [", start_status)
if end_manual == -1:
    end_manual = len(content)

# Replace the block
content = content[:start_status] + new_status_api + "\n\n" + new_manual_api + "\n\n" + content[end_manual:]

# Also ensure we have the necessary imports at the top (already have)
with open(file_path, "w") as f:
    f.write(content)

print("✅ Fixed API functions: now using public schema for SchoolFeeSettings")
