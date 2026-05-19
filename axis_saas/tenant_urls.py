from django.urls import path
from django.shortcuts import redirect
from axis_saas.tenant_views import tenant_dashboard, add_student_instance, fee_management_dashboard
from django.contrib.auth import views as auth_views

def tenant_root(request, schema_name=None):
    if request.user.is_authenticated:
        return redirect('school_portal', schema_name=request.tenant.schema_name)
    return redirect('tenant_login')

urlpatterns = [
    path('', tenant_root, name='tenant_root'),
    path('portal/', tenant_dashboard, name='school_portal'),
    path('portal/dashboard/', tenant_dashboard, name='school_dashboard'),
    path('login/', auth_views.LoginView.as_view(template_name='tenant/login.html', redirect_authenticated_user=True), name='tenant_login'),
    path('students/add/', add_student_instance, name='add_student'),
    path('fees/', fee_management_dashboard, name='fee_dashboard'),
    # Note: ensure your settings view is mapped here if needed to avoid missing routing
    path('portal/settings/', tenant_dashboard, name='school_portal_settings'), 
    path('logout/', auth_views.LogoutView.as_view(next_page='tenant_login'), name='school_portal_logout'),
]\n