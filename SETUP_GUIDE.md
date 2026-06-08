# AXIS School Management System - Complete Setup Guide

## 📋 System Overview

This is a **Multi-Tenant SaaS** application for managing school fees and student records. Each school (gym, institution) gets its own isolated database and portal.

### Architecture:
- **Public Portal**: Shared across all schools (admin panel, school login)
- **Tenant Portals**: Each school has its own isolated database and dashboard
- **Database**: PostgreSQL with django-tenants for multi-tenancy

---

## 🌐 URL Structure & Routes

### **PUBLIC ROUTES** (Shared - No Login Required)
Base URL: `https://yourdomain.com`

| Route | Purpose | Access |
|-------|---------|--------|
| `/` | Homepage | Public |
| `/admin/` | Django Admin Panel | Super Admin Only |
| `/api/debug-payments/` | Debug API | Authenticated Admin |

### **SCHOOL PORTAL ROUTES** (Tenant-Specific - Login Required)
Base URL: `https://yourdomain.com/portal/{school_slug}/`

#### Authentication
| Route | Method | Purpose |
|-------|--------|---------|
| `/portal/{school_slug}/login/` | GET/POST | School Admin Login |
| `/portal/{school_slug}/logout/` | GET | School Admin Logout |

#### Dashboard & Core
| Route | Purpose | Access |
|-------|---------|--------|
| `/portal/{school_slug}/` | Main Dashboard | School Admin |
| `/portal/{school_slug}/students/` | Student List | School Admin |
| `/portal/{school_slug}/students/add/` | Add New Student | School Admin |
| `/portal/{school_slug}/students/edit/{student_id}/` | Edit Student | School Admin |
| `/portal/{school_slug}/students/{student_id}/` | Student Profile | School Admin |

#### Fee Management
| Route | Purpose | Access |
|-------|---------|--------|
| `/portal/{school_slug}/fee/collection/` | Fee Collection Dashboard | School Admin |
| `/portal/{school_slug}/fee/collection/{student_id}/` | Collect Fee from Student | School Admin |
| `/portal/{school_slug}/fee/receipt/{receipt_id}/` | View Payment Receipt | School Admin |
| `/portal/{school_slug}/fee/structure/` | Manage Fee Structure | School Admin |
| `/portal/{school_slug}/fee/settings/` | Fee Settings | School Admin |
| `/portal/{school_slug}/fee/family-payment/` | Family Payment | School Admin |

#### Reports & Analytics
| Route | Purpose | Access |
|-------|---------|--------|
| `/portal/{school_slug}/reports/` | Detailed Reports | School Admin |
| `/portal/{school_slug}/defaulters/` | Defaulters List | School Admin |

#### Settings
| Route | Purpose | Access |
|-------|---------|--------|
| `/portal/{school_slug}/settings/` | School Settings | School Admin |

#### APIs (Internal)
| Route | Purpose | Access |
|-------|---------|--------|
| `/portal/{school_slug}/api/student-search/` | Search Students | School Admin |
| `/portal/{school_slug}/api/student/{student_id}/fee-records/` | Get Fee Records | School Admin |
| `/portal/{school_slug}/api/student/{student_id}/payments/` | Get Payments | School Admin |

---

## 👥 User Roles & Access Levels

### **1. Super Admin** (Platform Owner)
- **Access**: Django Admin Panel (`/admin/`)
- **Credentials**: Set via Django superuser
- **Permissions**:
  - Create/manage schools
  - View all school data
  - Manage system settings
  - Access debug APIs

**How to Access**:
```
1. Go to: https://yourdomain.com/admin/
2. Login with superuser credentials
3. Manage schools under "School Clients"
```

### **2. School Admin** (School/Gym Owner)
- **Access**: School Portal (`/portal/{school_slug}/`)
- **Credentials**: Username & Password set in school settings
- **Permissions**:
  - Manage students
  - Collect fees
  - View reports
  - Manage fee structure
  - View defaulters

**How to Access**:
```
1. Go to: https://yourdomain.com/portal/{school_slug}/login/
2. Enter school admin username & password
3. Access dashboard and all features
```

---

## 🔧 Configuration & Setup

### **Step 1: Environment Variables**
Create `.env` file in project root:

```env
# Database
DATABASE_URL=postgresql://user:password@localhost:5432/axis_saas

# Django
SECRET_KEY=your-secret-key-here
DEBUG=False
ALLOWED_HOSTS=yourdomain.com,www.yourdomain.com

# Security
SECURE_SSL_REDIRECT=True
SESSION_COOKIE_SECURE=True
CSRF_COOKIE_SECURE=True
```

### **Step 2: Database Setup**
```bash
# Run migrations for shared apps
python manage.py migrate_schemas --shared

# Create superuser
python manage.py createsuperuser
```

### **Step 3: Create a School**
```bash
# Via Django Admin
1. Go to /admin/
2. Click "School Clients"
3. Add New School
4. Fill in:
   - Name: "ABC School"
   - Schema Name: "abc_school" (unique, lowercase, no spaces)
   - Admin Username: "admin"
   - Admin Password: "SecurePassword123!"
5. Save

# School will be accessible at:
# https://yourdomain.com/portal/abc_school/
```

### **Step 4: Add Students**
```
1. Login to school portal
2. Go to Students → Add Student
3. Fill in student details
4. System auto-generates roll number
5. Fee records auto-created based on fee structure
```

### **Step 5: Collect Fees**
```
1. Go to Fee Collection
2. Select student
3. Enter amount
4. Select payment mode (Cash, Bank Transfer, Cheque, Online)
5. Submit
6. Receipt auto-generated
```

---

## 📊 Data Models

### **SchoolClient** (Tenant)
```
- name: School name
- schema_name: Unique identifier (used in URLs)
- admin_username: Login username
- admin_password: Login password
- school_logo: School logo image
- is_active: Active/Inactive status
```

### **Student**
```
- name: Full name
- father_name: Father's name
- father_cnic: CNIC number
- parent_mobile: Contact number
- grade: Class/Grade
- section: Section
- roll_number: Auto-generated
- status: active/suspended/graduated
- custom_fee: Monthly fee amount
```

### **FeeStructure**
```
- grade: Class/Grade
- monthly_fee: Monthly fee amount
```

### **FeeRecord** (Monthly Fee)
```
- student: Student reference
- month: Month (1-12)
- year: Year
- amount: Fee amount
- paid_amount: Amount paid
- due_date: Payment due date
- status: pending/partial/paid/overdue/waived
```

### **PaymentTransaction** (Payment Receipt)
```
- student: Student reference
- amount: Payment amount
- payment_date: Date of payment
- payment_mode: cash/bank_transfer/cheque/online
- receipt_number: Auto-generated receipt number
- created_by: Admin who created payment
```

---

## 🔐 Security Features

1. **Multi-Tenant Isolation**: Each school's data is completely isolated
2. **Session-Based Auth**: School admin login via session
3. **CSRF Protection**: Enabled for all forms
4. **XSS Protection**: Enabled
5. **Secure Cookies**: HTTPOnly, Secure flags set
6. **Password Hashing**: Passwords stored securely

---

## 📱 Features

### **Dashboard**
- Today's collection
- Monthly collection
- Pending fees overview
- Top defaulters
- Recent payments
- 6-month collection trend

### **Student Management**
- Add/Edit/Delete students
- Search students
- Filter by grade, section, status
- View student profile
- Track fee history

### **Fee Management**
- Auto-generate monthly fees
- Collect partial/full payments
- Track payment status
- Generate receipts
- Manage fee structure per grade
- Configure fee settings

### **Reports**
- Collection reports (daily/weekly/monthly/yearly)
- Defaulters report
- Class-wise pending fees
- Payment mode distribution
- Top defaulters list
- Detailed payment history

### **Defaulters Management**
- View all defaulters
- Filter by overdue days
- Track pending amount
- Days overdue calculation

---

## 🚀 Deployment

### **Railway Deployment**
1. Connect GitHub repo
2. Set environment variables
3. Deploy PostgreSQL database
4. Run migrations:
   ```bash
   python manage.py migrate_schemas --shared
   ```
5. Create superuser
6. Access at: `https://your-railway-domain.com`

### **Custom Domain**
1. Add custom domain in Railway
2. Update ALLOWED_HOSTS in settings
3. Update CSRF_TRUSTED_ORIGINS

---

## 🐛 Troubleshooting

### **School not accessible**
- Check schema_name is correct
- Verify school is active (is_active=True)
- Check domain is created in SchoolDomain

### **Login not working**
- Verify admin_username and admin_password
- Check session is enabled
- Clear browser cookies

### **Fees not showing**
- Run fee generation command
- Check FeeStructure is set for student's grade
- Verify student status is 'active'

### **Payments not recording**
- Check database connection
- Verify student has pending fees
- Check payment amount doesn't exceed pending

---

## 📞 Support

For issues or questions, check:
1. Django logs
2. Database connection
3. Environment variables
4. Browser console for frontend errors

---

## 🎯 Next Steps

1. ✅ Deploy to Railway
2. ✅ Create superuser
3. ✅ Add first school
4. ✅ Add students
5. ✅ Configure fee structure
6. ✅ Start collecting fees
7. ✅ Generate reports

---

**Version**: 1.0  
**Last Updated**: 2026-06-08

