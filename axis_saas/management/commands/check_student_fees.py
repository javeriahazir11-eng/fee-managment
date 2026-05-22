from django.core.management.base import BaseCommand
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeRecord, PaymentTransaction
from django.db import models

class Command(BaseCommand):
    help = 'Check student fee records and payments for consistency'

    def handle(self, *args, **options):
        tenants = SchoolClient.objects.filter(is_active=True).exclude(schema_name='public')
        for tenant in tenants:
            self.stdout.write(f"\n=== Tenant: {tenant.schema_name} ({tenant.name}) ===")
            with schema_context(tenant.schema_name):
                students = Student.objects.all()
                for student in students:
                    fee_records = student.fee_records.all()
                    payments = student.payments.all()
                    total_fee = fee_records.aggregate(models.Sum('amount'))['amount__sum'] or 0
                    total_paid = payments.aggregate(models.Sum('amount'))['amount__sum'] or 0
                    self.stdout.write(f"Student: {student.name} (ID:{student.id})")
                    self.stdout.write(f"  Fee records count: {fee_records.count()}")
                    self.stdout.write(f"  Payments count: {payments.count()}")
                    self.stdout.write(f"  Total fee: {total_fee}, Total paid: {total_paid}")
                    if fee_records.count() == 0 and total_fee > 0:
                        self.stdout.write(self.style.ERROR(f"  -> INCONSISTENCY: Fee records count 0 but total fee {total_fee}"))
                    if payments.count() == 0 and total_paid > 0:
                        self.stdout.write(self.style.ERROR(f"  -> INCONSISTENCY: Payments count 0 but total paid {total_paid}"))
                    # List first few fee records
                    for fr in fee_records[:3]:
                        self.stdout.write(f"    - {fr.month}/{fr.year}: amount {fr.amount}, paid {fr.paid_amount}, status {fr.status}")
