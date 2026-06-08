#!/usr/bin/env python3
"""
Add 50 more Pakistani students to the ilama tenant.
Run: python3 add_50_students.py
"""
import os
import random
from decimal import Decimal

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure
from faker import Faker

fake = Faker('en_PK')

GRADES = ['Nursery', 'KG', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
SECTIONS = ['A', 'B', 'C', 'D']
STATUSES = ['active', 'active', 'active', 'active', 'suspended', 'graduated']

def generate_cnic():
    """Generate a 13-digit Pakistani CNIC (no dashes)."""
    return f"{random.randint(30000, 42999)}{random.randint(1000000, 9999999)}{random.randint(1,9)}"

def generate_phone():
    """Generate a valid Pakistani mobile number (max 13 digits)."""
    # Format: 03xx-xxxxxxx (12 digits) or 03xxxxxxxxx (11 digits)
    phone = f"03{random.randint(0, 9)}{random.randint(0, 9)}-{random.randint(1000000, 9999999)}"
    # Remove dash if we want pure digits, but keep dash for readability; total length 13 including dash
    if len(phone) > 15:
        phone = phone.replace('-', '')[:15]
    return phone

def add_students(schema_name, count=50):
    try:
        tenant = SchoolClient.objects.get(schema_name=schema_name)
    except SchoolClient.DoesNotExist:
        print(f"❌ Tenant '{schema_name}' not found.")
        return

    with schema_context(schema_name):
        # Ensure fee structures exist
        for grade in GRADES:
            FeeStructure.objects.get_or_create(grade=grade, defaults={'monthly_fee': Decimal('500.00')})

        # Find current max roll number
        max_roll = 0
        for r in Student.objects.values_list('roll_number', flat=True):
            if r and r.isdigit():
                max_roll = max(max_roll, int(r))
        next_roll = max_roll + 1

        students_to_create = []
        for _ in range(count):
            first_name = fake.first_name()
            last_name = fake.last_name()
            name = f"{first_name} {last_name}"
            father_name = f"{fake.first_name_male()} {last_name}"
            grade = random.choice(GRADES)
            section = random.choice(SECTIONS)
            fee_struct = FeeStructure.objects.filter(grade=grade).first()
            custom_fee = fee_struct.monthly_fee if fee_struct else Decimal('0')

            student = Student(
                name=name,
                father_name=father_name,
                father_cnic=generate_cnic(),
                parent_mobile=generate_phone(),
                grade=grade,
                section=section,
                admission_date=fake.date_between(start_date='-3y', end_date='today'),
                status=random.choice(STATUSES),
                gender=random.choice(['male', 'female']),
                date_of_birth=fake.date_of_birth(minimum_age=4, maximum_age=18),
                address=fake.address(),
                notes="Auto‑generated for demo video",
                custom_fee=custom_fee,
                roll_number=str(next_roll)
            )
            students_to_create.append(student)
            next_roll += 1

        Student.objects.bulk_create(students_to_create)
        print(f"✅ Added {count} Pakistani students to '{schema_name}'. Total students now: {Student.objects.count()}")

if __name__ == '__main__':
    add_students('ilama', 50)
