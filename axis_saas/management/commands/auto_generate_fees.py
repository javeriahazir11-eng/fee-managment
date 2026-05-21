from django.core.management.base import BaseCommand
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, SchoolFeeSettings, Student, FeeRecord, FeeStructure
from datetime import date, timedelta

class Command(BaseCommand):
    help = 'Generate monthly fees for all tenants based on their generation day'

    def handle(self, *args, **options):
        tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
        today = date.today()
        for tenant in tenants:
            with schema_context(tenant.schema_name):
                settings, _ = SchoolFeeSettings.objects.get_or_create(tenant=tenant)
                if today.day == settings.fee_generation_day:
                    month, year = today.month, today.year
                    if FeeRecord.objects.filter(month=month, year=year).exists():
                        continue
                    due_date = today + timedelta(days=settings.due_date_offset)
                    students = Student.objects.filter(status='active')
                    created = 0
                    for s in students:
                        fee = s.custom_fee or (FeeStructure.objects.filter(grade=s.grade).first().monthly_fee if FeeStructure.objects.filter(grade=s.grade).exists() else 0)
                        if fee:
                            FeeRecord.objects.get_or_create(student=s, month=month, year=year, defaults={'amount': fee, 'due_date': due_date})
                            created += 1
                    self.stdout.write(f"{tenant.schema_name}: generated {created} records for {month}/{year}")
