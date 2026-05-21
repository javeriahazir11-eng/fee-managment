import re

FILE = "axis_saas/public_urls.py"

with open(FILE, "r") as f:
    content = f.read()

# Find and replace the fee_status_api and manual_generate_api functions
# We'll replace the entire block from "@tenant_login_required\ndef fee_status_api" until the end of manual_generate_api

# 1. Remove tenant_login_required decorator and add manual auth check
new_status_api = '''@csrf_exempt
def fee_status_api(request):
    """Return last generation date and next scheduled date."""
    if not request.session.get('school_admin_authenticated'):
        return JsonResponse({'error': 'Unauthorized'}, status=401)
    schema_name = request.session.get('school_admin_schema')
    if not schema_name:
        return JsonResponse({'error': 'No tenant schema'}, status=400)
    from django_tenants.utils import schema_context
    with schema_context(schema_name):
        from .models import SchoolFeeSettings, FeeRecord
        settings, _ = SchoolFeeSettings.objects.get_or_create(tenant__schema_name=schema_name)
        # Get the latest fee record
        last_record = FeeRecord.objects.order_by('-year', '-month').first()
        last_gen = f"{last_record.month}/{last_record.year}" if last_record else "Never"
        # Calculate next generation date
        from datetime import date, timedelta
        from calendar import monthrange
        today = date.today()
        gen_day = settings.fee_generation_day
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
        })'''

new_manual_api = '''@csrf_exempt
def manual_generate_api(request):
    """Manually generate fees for current month."""
    if request.method != 'POST':
        return JsonResponse({'error': 'Only POST allowed'}, status=405)
    if not request.session.get('school_admin_authenticated'):
        return JsonResponse({'error': 'Unauthorized'}, status=401)
    schema_name = request.session.get('school_admin_schema')
    if not schema_name:
        return JsonResponse({'error': 'No tenant schema'}, status=400)
    from django_tenants.utils import schema_context
    with schema_context(schema_name):
        from .models import SchoolFeeSettings, Student, FeeRecord, FeeStructure
        from datetime import date, timedelta
        settings, _ = SchoolFeeSettings.objects.get_or_create(tenant__schema_name=schema_name)
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
        return JsonResponse({'message': f'Generated {created} fee records for {month}/{year}.'})'''

# Remove the old API functions and replace with new ones
# First, locate the old API block and remove it
old_api_start = content.find("@tenant_login_required\ndef fee_status_api")
if old_api_start == -1:
    old_api_start = content.find("def fee_status_api")
if old_api_start == -1:
    print("Could not find old API functions")
    exit(1)
# Find the end of the manual_generate_api function (the line before next decorator or end)
old_api_end = content.find("@tenant_login_required\ndef fee_settings", old_api_start)
if old_api_end == -1:
    old_api_end = content.find("urlpatterns = [", old_api_start)
if old_api_end == -1:
    old_api_end = len(content)
# Extract and replace
content = content[:old_api_start] + content[old_api_end:]

# Now insert the new functions before the urlpatterns
urlpatterns_pos = content.find("urlpatterns = [")
if urlpatterns_pos == -1:
    print("Could not find urlpatterns")
    exit(1)

# Also need to add csrf_exempt import
if "from django.views.decorators.csrf import csrf_exempt" not in content:
    # Add import after the last existing import
    last_import = content.rfind("from ", 0, urlpatterns_pos)
    last_import_line_end = content.find("\n", last_import)
    content = content[:last_import_line_end+1] + "from django.views.decorators.csrf import csrf_exempt\n" + content[last_import_line_end+1:]

# Insert the new API functions
api_block = new_status_api + "\n\n" + new_manual_api + "\n\n"
content = content[:urlpatterns_pos] + api_block + content[urlpatterns_pos:]

with open(FILE, "w") as f:
    f.write(content)

print("✅ Fixed API views: removed tenant_login_required, added manual auth and csrf_exempt")
