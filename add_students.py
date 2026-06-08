#!/usr/bin/env python3
"""
Add 479 realistic students to a school tenant.
Fixes roll_number duplicate error.
Usage: python3 add_students.py <schema_name>
Example: python3 add_students.py ilama
"""
import os
import sys
import random
from decimal import Decimal

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'axis_saas.settings')
import django
django.setup()

from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient, Student, FeeStructure
from faker import Faker

fake = Faker('en_IN')  # Indian locale – realistic names, phone numbers

GRADES = ['Nursery', 'KG', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
SECTIONS = ['A', 'B', 'C', 'D']
STATUSES = ['active', 'active', 'active', 'active', 'suspended', 'graduated']

def generate_cnic():
    return f"{random.randint(30000, 42999)}-{random.randint(1000000, 9999999)}-{random.randint(1,9)}"

def fix_empty_roll_numbers(schema_name):
    """Assign roll numbers to existing students that have empty string."""
    with schema_context(schema_name):
        empty_roll_students = Student.objects.filter(roll_number='')
        if empty_roll_students.exists():
            print(f"Found {empty_roll_students.count()} students with empty roll_number. Fixing...")
            max_roll = 0
            # get max numeric roll_number from non-empty ones
            existing = Student.objects.exclude(roll_number='').values_list('roll_number', flat=True)
            for r in existing:
                try:
                    max_roll = max(max_roll, int(r))
                except ValueError:
                    pass
            next_roll = max_roll + 1
            for s in empty_roll_students.order_by('id'):
                s.roll_number = str(next_roll)
                s.save(update_fields=['roll_number'])
                next_roll += 1
            print("Fixed empty roll numbers.")

def add_students(schema_name, target_count=479):
    try:
        tenant = SchoolClient.objects.get(schema_name=schema_name)
    except SchoolClient.DoesNotExist:
        print(f"❌ Tenant '{schema_name}' not found.")
        return

    with schema_context(schema_name):
        # First, fix any existing empty roll numbers
        fix_empty_roll_numbers(schema_name)

        # Ensure fee structures exist for all grades
        for grade in GRADES:
            FeeStructure.objects.get_or_create(grade=grade, defaults={'monthly_fee': Decimal('500.00')})

        existing_count = Student.objects.count()
        if existing_count >= target_count:
            print(f"Already have {existing_count} students. No new students added.")
            return

        to_add = target_count - existing_count
        print(f"Adding {to_add} realistic students...")

        # Get the current maximum roll number (as integer)
        max_roll = 0
        all_rolls = Student.objects.values_list('roll_number', flat=True)
        for r in all_rolls:
            if r and r.isdigit():
                max_roll = max(max_roll, int(r))
        next_roll = max_roll + 1

        students_to_create = []
        for _ in range(to_add):
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
                parent_mobile=fake.phone_number(),
                grade=grade,
                section=section,
                admission_date=fake.date_between(start_date='-3y', end_date='today'),
                status=random.choice(STATUSES),
                gender=random.choice(['male', 'female']),
                date_of_birth=fake.date_of_birth(minimum_age=4, maximum_age=18),
                address=fake.address(),
                notes="Auto‑generated for demo",
                custom_fee=custom_fee,
                roll_number=str(next_roll)   # assign roll number now
            )
            students_to_create.append(student)
            next_roll += 1

        # Bulk create (now roll_number is set, no empty strings)
        Student.objects.bulk_create(students_to_create)

        print(f"✅ Successfully added {to_add} students. Total now: {Student.objects.count()}")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python3 add_students.py <schema_name>")
        sys.exit(1)
    add_students(sys.argv[1])
