from django.db import connection
from django_tenants.middleware import TenantMainMiddleware
from django_tenants.utils import get_tenant_model
from django.urls import resolve

class URLPathTenantMiddleware(TenantMainMiddleware):
    """
    Custom tenant middleware: extract schema_name from URL path.
    If tenant record is missing, do NOT raise 404 – let the view handle creation.
    """
    def __call__(self, request):
        # Non‑portal paths → public schema
        if not request.path_info.startswith('/portal/'):
            request.tenant = None
            connection.set_schema_to_public()
            return self.get_response(request)

        # Extract schema_name from /portal/<schema_name>/...
        parts = request.path_info.strip('/').split('/')
        if len(parts) >= 2 and parts[0] == 'portal':
            schema_name = parts[1]
        else:
            request.tenant = None
            return self.get_response(request)

        TenantModel = get_tenant_model()
        try:
            tenant = TenantModel.objects.get(schema_name=schema_name)
            request.tenant = tenant
            connection.set_tenant(request.tenant)
        except TenantModel.DoesNotExist:
            # No SchoolClient row yet – set a flag so the view can auto‑create it
            request.tenant = None
            request.missing_tenant_schema = schema_name
            # Still proceed; we will keep connection on public schema
            connection.set_schema_to_public()

        return self.get_response(request)
