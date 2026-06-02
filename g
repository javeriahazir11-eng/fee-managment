#!/usr/bin/env python3
import re
import shutil
from pathlib import Path

VIEWS_PATH = Path("axis_saas/views.py")
BACKUP_PATH = VIEWS_PATH.with_suffix(".py.bak")

CORRECTED_FUNCTION = '''@csrf_exempt
@require_http_methods(["POST"])
def gym_checkin_api(request):
    if not request.session.get('school_admin_authenticated'):
        return JsonResponse({"error": "Unauthorized"}, status=401)
    schema_name = request.session.get('school_admin_schema')
    if not schema_name:
        return JsonResponse({"error": "No tenant schema"}, status=400)
    customer_id = request.POST.get('customer_id')
    if not customer_id:
        return JsonResponse({"error": "Customer ID required"}, status=400)
    try:
        tenant = SchoolClient.objects.get(schema_name=schema_name)
    except SchoolClient.DoesNotExist:
        return JsonResponse({"error": "Tenant not found"}, status=404)
    with schema_context(schema_name):
        from .models import GymCustomer, GymAttendance, GymSubscription
        from datetime import date
        from django.utils import timezone
        customer = get_object_or_404(GymCustomer, id=customer_id)
        today = date.today()
        has_paid = customer.subscriptions.filter(month=today.month, year=today.year, status='paid').exists()
        if not has_paid:
            return JsonResponse({"error": "No active paid subscription for current month. Please renew subscription first."}, status=403)
        attendance, created = GymAttendance.objects.get_or_create(
            customer=customer, date=today,
            defaults={"check_in": timezone.now()}
        )
        return JsonResponse({
            "message": f"Check-in recorded for {customer.name}",
            "customer_name": customer.name,
            "customer_phone": customer.phone,
            "check_in_time": attendance.check_in.strftime('%H:%M'),
            "customer_id": customer.id,
            "already_checked_in": not created
        })'''

def main():
    if not VIEWS_PATH.exists():
        print(f"❌ {VIEWS_PATH} not found. Run this script from the project root (axis_school_sys).")
        return

    # Backup original
    shutil.copy2(VIEWS_PATH, BACKUP_PATH)
    print(f"✅ Backup saved to {BACKUP_PATH}")

    with open(VIEWS_PATH, "r", encoding="utf-8") as f:
        content = f.read()

    # Regex to find the whole gym_checkin_api function (from def to next def or end of file)
    pattern = r'(def gym_checkin_api\(request\):.*?)(?=\n@csrf_exempt|\ndef [a-zA-Z_]|$)'
    match = re.search(pattern, content, re.DOTALL)
    if not match:
        print("❌ Could not locate gym_checkin_api function. It may have been modified already.")
        return

    old_func = match.group(1)
    new_content = content.replace(old_func, CORRECTED_FUNCTION, 1)

    with open(VIEWS_PATH, "w", encoding="utf-8") as f:
        f.write(new_content)

    print("✅ gym_checkin_api successfully patched in axis_saas/views.py")
    print("\n➡️  Restart your Django development server (Ctrl+C then python3 manage.py runserver)")
    print("   Then refresh the gym attendance page. The check-in should work correctly.")

if __name__ == "__main__":
    main()
