from django.urls import path
from django.shortcuts import redirect

def tenant_root(request, schema_name=None):
    return redirect('dashboard', schema_name=request.tenant.schema_name)

urlpatterns = [
    path('', tenant_root),
    # You can add tenant-specific URLs here if needed
]
