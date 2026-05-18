import os

patcher_code = """import os

admin_path = 'axis_saas/admin.py'

if os.path.exists(admin_path):
    with open(admin_path, 'r') as f:
        content = f.read()

    # Define the secure custom User overriding matrix
    security_hardening_block = '''
# --- AXIS SECURITY HARDENING: MULTI-TENANT ISOLATION OVERRIDE ---
from django.contrib.auth.models import User, Group
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.admin import GroupAdmin as BaseGroupAdmin

# Completely unregister default configurations from the shared fallback registry
try:
    admin.site.unregister(User)
    admin.site.unregister(Group)
except admin.sites.NotRegistered:
    pass

@admin.register(User)
class TenantSecuredUserAdmin(BaseUserAdmin):
    def has_module_permission(self, request):
        # Master global admin retains full visual scope. Tenant nodes see nothing.
        return request.tenant.schema_name == 'public'

    def has_view_permission(self, request, obj=None):
        return request.tenant.schema_name == 'public'

    def has_add_permission(self, request):
        return request.tenant.schema_name == 'public'

    def has_change_permission(self, request, obj=None):
        return request.tenant.schema_name == 'public'

    def has_delete_permission(self, request, obj=None):
        return request.tenant.schema_name == 'public'

    def save_model(self, request, obj, form, change):
        # Strict dynamic execution block: No school admin can ever escalate an account to superuser boundaries
        if request.tenant.schema_name != 'public':
            obj.is_superuser = False
        super().save_model(request, obj, form, change)


@admin.register(Group)
class TenantSecuredGroupAdmin(BaseGroupAdmin):
    def has_module_permission(self, request):
        return request.tenant.schema_name == 'public'

    def has_view_permission(self, request, obj=None):
        return request.tenant.schema_name == 'public'

    def has_add_permission(self, request):
        return request.tenant.schema_name == 'public'

    def has_change_permission(self, request, obj=None):
        return request.tenant.schema_name == 'public'

    def has_delete_permission(self, request, obj=None):
        return request.tenant.schema_name == 'public'
'''

    # Append the security shield to the end of the admin core matrix
    if "TenantSecuredUserAdmin" not in content:
        content += security_hardening_block
        with open(admin_path, 'w') as f:
            f.write(content)
        print("✅ Exploit fixed! Authentication & Authorization modules are now hidden and isolated from School Tenants.")
    else:
        print("ℹ️ Isolation Matrix already applied inside axis_saas/admin.py.")
else:
    print("❌ Error: axis_saas/admin.py file not found.")
"""

# Write the temporary patcher execution script
with open('patch_security.py', 'w') as f:
    f.write(patcher_code)

# Run the python patcher to execute security hardening live
os.system('python3 patch_security.py')

# Clean up / self-destruct the patcher file immediately to avoid terminal clutter
if os.path.exists('patch_security.py'):
    os.remove('patch_security.py')
