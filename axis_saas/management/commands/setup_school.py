from django.core.management.base import BaseCommand
from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, FeeStructure, SchoolFeeSettings
import string
import random

class Command(BaseCommand):
    help = 'Setup a new school with initial configuration'

    def add_arguments(self, parser):
        parser.add_argument('school_name', type=str, help='Name of the school')
        parser.add_argument('--schema', type=str, help='Schema name (auto-generated if not provided)')
        parser.add_argument('--username', type=str, default='admin', help='Admin username')
        parser.add_argument('--password', type=str, help='Admin password (auto-generated if not provided)')

    def handle(self, *args, **options):
        school_name = options['school_name']
        schema_name = options.get('schema') or self._generate_schema_name(school_name)
        username = options['username']
        password = options.get('password') or self._generate_password()

        self.stdout.write(f"Creating school: {school_name}")
        self.stdout.write(f"Schema: {schema_name}")
        self.stdout.write(f"Admin Username: {username}")
        self.stdout.write(f"Admin Password: {password}")

        try:
            # Create school
            school = SchoolClient.objects.create(
                name=school_name,
                schema_name=schema_name,
                admin_username=username,
                admin_password=password,
                is_active=True
            )
            self.stdout.write(self.style.SUCCESS(f"✓ School created: {school.name}"))

            # Setup fee structure for common grades
            with schema_context(schema_name):
                grades = ['Nursery', 'KG', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12']
                default_fee = 5000  # Default monthly fee

                for grade in grades:
                    FeeStructure.objects.get_or_create(
                        grade=grade,
                        defaults={'monthly_fee': default_fee}
                    )
                self.stdout.write(self.style.SUCCESS(f"✓ Fee structure created for {len(grades)} grades"))

                # Create fee settings
                SchoolFeeSettings.objects.get_or_create(
                    defaults={
                        'fee_generation_day': 1,
                        'due_date_offset': 15,
                        'late_fee_penalty': 0.00
                    }
                )
                self.stdout.write(self.style.SUCCESS("✓ Fee settings configured"))

            self.stdout.write(self.style.SUCCESS("\n" + "="*60))
            self.stdout.write(self.style.SUCCESS("SCHOOL SETUP COMPLETE"))
            self.stdout.write(self.style.SUCCESS("="*60))
            self.stdout.write(f"\nAccess Portal at:")
            self.stdout.write(f"  https://yourdomain.com/portal/{schema_name}/login/")
            self.stdout.write(f"\nLogin Credentials:")
            self.stdout.write(f"  Username: {username}")
            self.stdout.write(f"  Password: {password}")
            self.stdout.write(f"\nNext Steps:")
            self.stdout.write(f"  1. Login to the portal")
            self.stdout.write(f"  2. Add students")
            self.stdout.write(f"  3. Configure fee structure if needed")
            self.stdout.write(f"  4. Start collecting fees")

        except Exception as e:
            self.stdout.write(self.style.ERROR(f"✗ Error: {str(e)}"))

    def _generate_schema_name(self, school_name):
        """Generate schema name from school name"""
        schema = school_name.lower().replace(' ', '_').replace('-', '_')
        schema = ''.join(c for c in schema if c.isalnum() or c == '_')
        return schema[:50]  # Limit to 50 chars

    def _generate_password(self):
        """Generate a secure random password"""
        chars = string.ascii_letters + string.digits + '!@#$%'
        return ''.join(random.choice(chars) for _ in range(12))

