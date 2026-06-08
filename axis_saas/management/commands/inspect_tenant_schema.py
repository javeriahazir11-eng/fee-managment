from django.core.management.base import BaseCommand
from django.db import connection
from django_tenants.utils import schema_context
from axis_saas.models import SchoolClient

class Command(BaseCommand):
    help = 'Print full database schema for a given tenant (tables + columns)'

    def add_arguments(self, parser):
        parser.add_argument('schema_name', type=str, help='Tenant schema name (e.g., school1)')

    def handle(self, *args, **options):
        schema_name = options['schema_name']
        try:
            tenant = SchoolClient.objects.get(schema_name=schema_name)
        except SchoolClient.DoesNotExist:
            self.stderr.write(self.style.ERROR(f"Tenant '{schema_name}' not found."))
            return

        with schema_context(schema_name):
            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT table_name 
                    FROM information_schema.tables 
                    WHERE table_schema = %s AND table_type = 'BASE TABLE'
                    ORDER BY table_name
                """, [schema_name])
                tables = [row[0] for row in cursor.fetchall()]

                if not tables:
                    self.stdout.write(self.style.WARNING(f"No tables found in schema '{schema_name}'"))
                    return

                for table in tables:
                    self.stdout.write(self.style.SUCCESS(f"\n📋 Table: {table}"))
                    cursor.execute("""
                        SELECT column_name, data_type, is_nullable, column_default
                        FROM information_schema.columns
                        WHERE table_schema = %s AND table_name = %s
                        ORDER BY ordinal_position
                    """, [schema_name, table])
                    columns = cursor.fetchall()
                    for col in columns:
                        nullable = "NULL" if col[2] == "YES" else "NOT NULL"
                        default = f" DEFAULT {col[3]}" if col[3] else ""
                        self.stdout.write(f"   ├─ {col[0]} : {col[1]} {nullable}{default}")

                    cursor.execute("""
                        SELECT
                            kcu.column_name,
                            ccu.table_name AS foreign_table_name,
                            ccu.column_name AS foreign_column_name
                        FROM information_schema.table_constraints AS tc
                        JOIN information_schema.key_column_usage AS kcu
                          ON tc.constraint_name = kcu.constraint_name
                        JOIN information_schema.constraint_column_usage AS ccu
                          ON ccu.constraint_name = tc.constraint_name
                        WHERE tc.constraint_type = 'FOREIGN KEY'
                          AND tc.table_schema = %s
                          AND tc.table_name = %s
                    """, [schema_name, table])
                    fks = cursor.fetchall()
                    for fk in fks:
                        self.stdout.write(f"   └─ FOREIGN KEY ({fk[0]}) REFERENCES {fk[1]}.{fk[2]}")
