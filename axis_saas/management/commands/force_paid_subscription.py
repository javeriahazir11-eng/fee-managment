from django.core.management.base import BaseCommand
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, GymCustomer, GymSubscription, GymPayment
from datetime import date
from calendar import monthrange

class Command(BaseCommand):
    help = 'Force a paid subscription for a customer in the current month (useful for testing attendance)'

    def add_arguments(self, parser):
        parser.add_argument('--customer_id', type=int, required=True, help='Customer ID')
        parser.add_argument('--amount', type=float, default=500.0, help='Monthly fee (default 500)')
        parser.add_argument('--tenant', type=str, required=True, help='Tenant schema name (e.g., backhoomeinb)')

    def handle(self, *args, **options):
        customer_id = options['customer_id']
        amount = options['amount']
        schema = options['tenant']
        try:
            tenant = SchoolClient.objects.get(schema_name=schema)
        except SchoolClient.DoesNotExist:
            self.stdout.write(self.style.ERROR(f"Tenant '{schema}' not found"))
            return

        with schema_context(schema):
            try:
                customer = GymCustomer.objects.get(id=customer_id)
            except GymCustomer.DoesNotExist:
                self.stdout.write(self.style.ERROR(f"Customer with id {customer_id} not found in tenant {schema}"))
                return

            today = date.today()
            month, year = today.month, today.year
            days_in_month = monthrange(year, month)[1]
            due_date = date(year, month, days_in_month)

            sub, created = GymSubscription.objects.update_or_create(
                customer=customer, month=month, year=year,
                defaults={
                    'amount': amount,
                    'paid_amount': amount,
                    'due_date': due_date,
                    'status': 'paid'
                }
            )
            payment, _ = GymPayment.objects.get_or_create(
                customer=customer,
                amount=amount,
                payment_mode='cash',
                payment_type='full',
                remarks='Force created for testing',
                defaults={'receipt_number': f'TEST-{customer.id}-{today.strftime("%Y%m%d")}'}
            )
            payment.subscriptions.add(sub)

            self.stdout.write(self.style.SUCCESS(
                f"✅ Created paid subscription for {customer.name} ({month}/{year}) with amount ₹{amount}"
            ))
