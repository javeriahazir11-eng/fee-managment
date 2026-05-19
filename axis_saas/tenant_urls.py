from django.urls import path
from axis_saas.tenant_views import tenant_dashboard, add_student_instance, fee_management_dashboard
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', tenant_dashboard, name='school_home'),
    path('login/', auth_views.LoginView.as_view(template_name='tenant/login.html', redirect_authenticated_user=True), name='tenant_login'),
    path('students/add/', add_student_instance, name='add_student'),
    path('fees/', fee_management_dashboard, name='fee_dashboard'),
    path('logout/', auth_views.LogoutView.as_view(next_page='tenant_login'), name='school_logout'),
]
