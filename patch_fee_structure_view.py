import re

file_path = "axis_saas/public_urls.py"
with open(file_path, "r") as f:
    content = f.read()

# Find the fee_structure function and replace it with enhanced version
old_func = r'@tenant_login_required\s+def fee_structure\(request, schema_name, tenant=None\):.*?(?=\n\n@tenant_login_required|\n\n# -----|\Z)'
new_func = """@tenant_login_required
def fee_structure(request, schema_name, tenant=None):
    from django.db.models import Q
    edit_grade = request.GET.get('edit', '')
    with schema_context(tenant.schema_name):
        fee_structures = FeeStructure.objects.all().order_by('grade')
        edit_obj = None
        if edit_grade:
            try:
                edit_obj = FeeStructure.objects.get(grade=edit_grade)
            except FeeStructure.DoesNotExist:
                pass
        
        if request.method == 'POST':
            grade = request.POST.get('grade')
            amount = request.POST.get('monthly_fee')
            # Check for duplicate if not editing
            if not edit_grade and FeeStructure.objects.filter(grade=grade).exists():
                messages.error(request, f'Fee structure for class "{grade}" already exists!')
                # Highlight the duplicate row by passing the duplicate_grade
                return render(request, 'tenant/fee_structure.html', {
                    'tenant': tenant,
                    'fee_structures': fee_structures,
                    'form': None,
                    'logo_url': logo_url,
                    'duplicate_grade': grade,
                })
            # Update or create
            obj, created = FeeStructure.objects.update_or_create(
                grade=grade,
                defaults={'monthly_fee': amount}
            )
            # Update all students in that grade
            Student.objects.filter(grade=grade).update(custom_fee=amount)
            if created:
                messages.success(request, f'Fee structure for {grade} added successfully.')
            else:
                messages.success(request, f'Fee structure for {grade} updated to Rs {amount}.')
            return redirect('fee_structure', schema_name=tenant.schema_name)
        
        # Prepare form for add/edit
        from .forms import FeeStructureForm
        initial = {}
        if edit_obj:
            initial = {'grade': edit_obj.grade, 'monthly_fee': edit_obj.monthly_fee}
        form = FeeStructureForm(initial=initial) if not request.method == 'POST' else None
        
    logo_url = tenant.school_logo.url if tenant.school_logo else None
    return render(request, 'tenant/fee_structure.html', {
        'tenant': tenant,
        'fee_structures': fee_structures,
        'form': form,
        'logo_url': logo_url,
        'edit_grade': edit_grade,
        'duplicate_grade': request.GET.get('dup', ''),
    })"""

# Replace using regex with DOTALL
content = re.sub(old_func, new_func, content, flags=re.DOTALL)

with open(file_path, "w") as f:
    f.write(content)

print("✅ Updated fee_structure view with edit, duplicate handling")
