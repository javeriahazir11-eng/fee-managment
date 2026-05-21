import re

file_path = "axis_saas/public_urls.py"
with open(file_path, "r") as f:
    content = f.read()

# Remove all old fee-related url patterns from the urlpatterns list
# We'll replace the urlpatterns list with new one
# But easier: find the old urlpatterns block and replace
start = content.find("urlpatterns = [")
if start == -1:
    print("urlpatterns not found")
    exit(1)
# Find the end of the urlpatterns list (closing bracket)
end = content.find("]", start)
if end == -1:
    end = len(content)

new_urlpatterns = """urlpatterns = [
    path('api/fee-status/', fee_status_api, name='fee_status_api'),
    path('api/manual-generate/', manual_generate_api, name='manual_generate_api'),
    path('portal/<slug:schema_name>/dashboard/', dashboard, name='fee_dashboard'),
    path('portal/<slug:schema_name>/students/', student_list, name='student_list'),
    path('portal/<slug:schema_name>/students/<int:student_id>/', student_profile, name='student_profile'),
    path('portal/<slug:schema_name>/fee/collection/', fee_collection, name='fee_collection'),
    path('portal/<slug:schema_name>/fee/collection/<int:student_id>/', fee_collection, name='fee_collection'),
    path('portal/<slug:schema_name>/fee/receipt/<int:receipt_id>/', fee_receipt, name='fee_receipt'),
    path('portal/<slug:schema_name>/defaulters/', defaulters, name='defaulters'),
    path('portal/<slug:schema_name>/reports/', reports, name='reports'),
    path('portal/<slug:schema_name>/api/student-search/', student_search_api, name='student_search_api'),
    # Keep old student management routes (add student, etc.)
    path('portal/<slug:schema_name>/students/add/', school_add_student, name='school_add_student'),
    path('portal/<slug:schema_name>/', school_dashboard, name='school_portal'),
    path('portal/<slug:schema_name>/login/', school_login, name='school_portal_login'),
    path('portal/<slug:schema_name>/logout/', school_logout, name='school_portal_logout'),
    path('portal/<slug:schema_name>/settings/', school_settings, name='school_portal_settings'),
    path('', saas_homepage),
    path('admin/', admin.site.urls),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) if settings.DEBUG else []"""

# Replace the old urlpatterns block with new one
content = content[:start] + new_urlpatterns + content[end+1:]

# Also need to import the new fee_views at top
if "from .fee_views import" not in content:
    # Find a good import location
    import_line = "from .forms import FeeStructureForm, FeeGenerationForm, PaymentForm, FamilyPaymentForm, FeeSettingsForm"
    content = content.replace(import_line, "from .fee_views import dashboard, student_list, student_profile, fee_collection, fee_receipt, defaulters, reports, student_search_api\n" + import_line)

with open(file_path, "w") as f:
    f.write(content)
print("Updated public_urls.py with new fee views")
