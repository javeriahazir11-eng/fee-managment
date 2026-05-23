from django_tenants.middleware import TenantMainMiddleware
from django_tenants.utils import get_tenant_model
from django.urls import resolve
from django.http import Http404

class URLPathTenantMiddleware(TenantMainMiddleware):
    """
    Override tenant selection: first try the URL path parameter 'schema_name',
    then fall back to domain‑based tenant detection.
    """
    def __call__(self, request):
        # Try to get schema_name from URL
        schema_name = None
        try:
            match = resolve(request.path_info)
            if 'schema_name' in match.kwargs:
                schema_name = match.kwargs['schema_name']
        except:
            pass

        if schema_name:
            # Manually set the tenant
            TenantModel = get_tenant_model()
            try:
                tenant = TenantModel.objects.get(schema_name=schema_name)
                request.tenant = tenant
                connection.set_tenant(request.tenant)
                # Also set schema for the connection
                from django.db import connection
                connection.set_schema(tenant.schema_name)
                return self.get_response(request)
            except TenantModel.DoesNotExist:
                pass  # fall back to domain detection

        # Fallback to default domain‑based behaviour
        return super().__call__(request)
