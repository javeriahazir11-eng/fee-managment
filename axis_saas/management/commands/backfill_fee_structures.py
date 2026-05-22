from django.core.management.base import BaseCommand
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure
from decimal import Decimal

class Command(BaseCommand):
    help = 'Backfill student custom_fee from grade fee structures and create missing fee structures with a placeholder'

    def add_arguments(self, parser):
        parser.add_argument(
            '--default-fee',
            type=Decimal,
            default=Decimal('0'),
            help='Default monthly fee to assign for grades without a structure (default 0)'
        )
        parser.add_argument(
            '--create-missing',
            action='store_true',
            help='Create missing FeeStructure entries with the default fee'
        )

    def handle(self, *args, **options):
        default_fee = options['default_fee']
        create_missing = options['create_missing']
        tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
        
        for tenant in tenants:
            self.stdout.write(f"Processing tenant: {tenant.schema_name}")
            with schema_context(tenant.schema_name):
                # Get all distinct grades from students
                grades = Student.objects.values_list('grade', flat=True).distinct()
                for grade in grades:
                    fee_struct = FeeStructure.objects.filter(grade=grade).first()
                    if not fee_struct:
                        if create_missing:
                            FeeStructure.objects.create(grade=grade, monthly_fee=default_fee)
                            self.stdout.write(f"  Created missing FeeStructure for grade {grade} with fee {default_fee}")
                        else:
                            self.stdout.write(f"  WARNING: No FeeStructure for grade {grade}. Students in this grade will have no fee.")
                    else:
                        # Update students in this grade to have custom_fee = fee_struct.monthly_fee if not already set
                        updated = Student.objects.filter(grade=grade, custom_fee=0).update(custom_fee=fee_struct.monthly_fee)
                        if updated:
                            self.stdout.write(f"  Updated {updated} students in grade {grade} with fee {fee_struct.monthly_fee}")
        self.stdout.write(self.style.SUCCESS("Backfill completed."))
