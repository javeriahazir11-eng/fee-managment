from django.core.management.base import BaseCommand
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeRecord, FeeStructure, SchoolFeeSettings
from datetime import date, timedelta
from decimal import Decimal

class Command(BaseCommand):
    help = 'Repair missing fee records for students based on their grade fee structure'

    def add_arguments(self, parser):
        parser.add_argument('--month', type=int, help='Month to generate (default: current month)')
        parser.add_argument('--year', type=int, help='Year to generate (default: current year)')
        parser.add_argument('--force', action='store_true', help='Force generation even if records exist')

    def handle(self, *args, **options):
        today = date.today()
        month = options.get('month', today.month)
        year = options.get('year', today.year)
        force = options.get('force', False)

        tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
        total_created = 0
        for tenant in tenants:
            self.stdout.write(f"\nProcessing tenant: {tenant.schema_name}")
            with schema_context(tenant.schema_name):
                # Ensure SchoolFeeSettings exists with defaults
                settings, created = SchoolFeeSettings.objects.get_or_create(pk=1, defaults={
                    'fee_generation_day': 1,
                    'due_date_offset': 15,
                    'late_fee_penalty': Decimal('0.00')
                })
                if created:
                    self.stdout.write(f"  Created default FeeSettings for tenant")
                # Calculate due date (handle month overflow)
                try:
                    due_date = date(year, month, 1) + timedelta(days=settings.due_date_offset - 1)
                except (ValueError, TypeError):
                    # Fallback: set due_date to 15th of month
                    due_date = date(year, month, 15)
                
                students = Student.objects.filter(status='active')
                created_count = 0
                for student in students:
                    # Check if fee record exists
                    exists = FeeRecord.objects.filter(student=student, month=month, year=year).exists()
                    if exists and not force:
                        continue
                    # Determine fee amount: custom_fee > 0 else from FeeStructure by grade
                    fee_amount = student.custom_fee if student.custom_fee > 0 else Decimal('0')
                    if fee_amount == 0:
                        fee_struct = FeeStructure.objects.filter(grade=student.grade).first()
                        if fee_struct:
                            fee_amount = fee_struct.monthly_fee
                    if fee_amount > 0:
                        obj, is_new = FeeRecord.objects.update_or_create(
                            student=student, month=month, year=year,
                            defaults={'amount': fee_amount, 'due_date': due_date, 'status': 'pending'}
                        )
                        if is_new:
                            created_count += 1
                            self.stdout.write(f"    Created fee record for {student.name} (Grade {student.grade}) - ₹{fee_amount}")
                total_created += created_count
                self.stdout.write(self.style.SUCCESS(f"  Created {created_count} fee records for {month}/{year}"))
        self.stdout.write(self.style.SUCCESS(f"\nTotal fee records created: {total_created}"))
