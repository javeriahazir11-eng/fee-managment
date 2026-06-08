# 🌐 AXIS School Management System - Complete URLs Reference

## 📍 Base URL Structure

```
Production: https://yourdomain.com
Local Dev: http://localhost:8000
```

---

## 🔓 PUBLIC ROUTES (No Login Required)

### **Homepage**
```
GET /
Purpose: Welcome page with links to admin and school portals
Access: Public
```

### **Django Admin Panel** (Super Admin Only)
```
GET  /admin/
POST /admin/
Purpose: Manage schools, users, system settings
Access: Super Admin (requires superuser login)
Credentials: Created via `python manage.py createsuperuser`
```

### **Debug API** (Authenticated Admin)
```
GET /api/debug-payments/
Purpose: Get recent payments for debugging
Access: Authenticated school admin
Response: JSON with recent payments
```

---

## 🔐 SCHOOL PORTAL ROUTES (Login Required)

### **Base URL Pattern**
```
/portal/{school_slug}/
```

Where `{school_slug}` is the school's schema name (e.g., `abc_school`, `xyz_gym`)

---

## 🔑 AUTHENTICATION ROUTES

### **School Login Page**
```
GET /portal/{school_slug}/login/
Purpose: Display login form
Access: Public (but redirects to dashboard if already logged in)
Form Fields: username, password
```

### **Process Login**
```
POST /portal/{school_slug}/login/
Purpose: Authenticate school admin
Access: Public
Form Data:
  - username: string (required)
  - password: string (required)
Response: Redirects to dashboard on success, shows error on failure
```

### **School Logout**
```
GET /portal/{school_slug}/logout/
Purpose: Logout and clear session
Access: Authenticated admin
Response: Redirects to login page
```

---

## 📊 DASHBOARD & CORE ROUTES

### **Main Dashboard**
```
GET /portal/{school_slug}/
Purpose: Main dashboard with overview
Access: Authenticated admin
Shows:
  - Today's collection
  - Monthly collection
  - Pending fees
  - Top defaulters
  - Recent payments
  - 6-month trend chart
```

---

## 👥 STUDENT MANAGEMENT ROUTES

### **Student List**
```
GET /portal/{school_slug}/students/
Purpose: View all students with filters
Access: Authenticated admin
Query Parameters:
  - q: Search query (name, roll number, father name, CNIC, mobile)
  - grade: Filter by grade
  - section: Filter by section
  - status: Filter by status (active, suspended, graduated)
  - page: Page number for pagination
```

### **Add Student Form**
```
GET /portal/{school_slug}/students/add/
Purpose: Display add student form
Access: Authenticated admin
```

### **Add Student (Process)**
```
POST /portal/{school_slug}/students/add/
Purpose: Create new student
Access: Authenticated admin
Form Data:
  - name: string (required)
  - father_name: string (required)
  - father_cnic: string (required, format: 35202-XXXXXXX-X)
  - parent_mobile: string (required)
  - grade: string (required)
  - section: string (required)
  - gender: string (optional: male/female)
  - date_of_birth: date (optional)
  - address: text (optional)
  - photo: file (optional, image)
  - notes: text (optional)
Response: Redirects to student list with success message
Auto-generates: Roll number, fee records
```

### **Edit Student Form**
```
GET /portal/{school_slug}/students/edit/{student_id}/
Purpose: Display edit student form
Access: Authenticated admin
Parameters:
  - student_id: integer (student ID)
```

### **Edit Student (Process)**
```
POST /portal/{school_slug}/students/edit/{student_id}/
Purpose: Update student details
Access: Authenticated admin
Parameters:
  - student_id: integer (student ID)
Form Data: Same as Add Student
Response: Redirects to student profile with success message
```

### **Student Profile**
```
GET /portal/{school_slug}/students/{student_id}/
Purpose: View complete student profile
Access: Authenticated admin
Parameters:
  - student_id: integer (student ID)
Shows:
  - Student details
  - Fee records (all months)
  - Payment history
  - Total fee, paid, pending
```

---

## 💰 FEE MANAGEMENT ROUTES

### **Fee Collection Dashboard**
```
GET /portal/{school_slug}/fee/collection/
Purpose: View students with pending fees and collect payments
Access: Authenticated admin
Query Parameters:
  - pending_search: Search by name/roll number
  - pending_grade: Filter by grade
  - pending_section: Filter by section
  - page: Page number
Shows:
  - List of students with pending fees
  - Recent payments
  - Total pending amount
```

### **Fee Collection for Specific Student**
```
GET /portal/{school_slug}/fee/collection/{student_id}/
Purpose: Collect fee from specific student
Access: Authenticated admin
Parameters:
  - student_id: integer (student ID)
Shows:
  - Student details
  - Pending fee records
  - Payment form
```

### **Process Fee Payment**
```
POST /portal/{school_slug}/fee/collection/
Purpose: Record payment transaction
Access: Authenticated admin
Form Data:
  - student_id: integer (required)
  - amount: decimal (required)
  - payment_mode: string (required: cash/bank_transfer/cheque/online)
  - remarks: text (optional)
Response: Redirects to fee collection with receipt number
Auto-generates: Receipt number, updates fee records
```

### **View Payment Receipt**
```
GET /portal/{school_slug}/fee/receipt/{receipt_id}/
Purpose: View/print payment receipt
Access: Authenticated admin
Parameters:
  - receipt_id: integer (payment transaction ID)
Shows:
  - Receipt details
  - Student info
  - Payment amount
  - Fee records paid
  - School logo
```

### **Fee Structure Management**
```
GET /portal/{school_slug}/fee/structure/
Purpose: View and manage fee structure by grade
Access: Authenticated admin
Shows:
  - All grades
  - Monthly fee per grade
  - Edit form
```

### **Update Fee Structure**
```
POST /portal/{school_slug}/fee/structure/
Purpose: Update monthly fee for a grade
Access: Authenticated admin
Form Data:
  - grade: string (required)
  - monthly_fee: decimal (required)
Response: Redirects to fee structure with success message
Auto-applies: To all students in that grade
```

### **Fee Settings**
```
GET /portal/{school_slug}/fee/settings/
Purpose: Configure fee generation and penalty settings
Access: Authenticated admin
Shows:
  - Fee generation day (1-31)
  - Due date offset (days after generation)
  - Late fee penalty (percentage)
```

### **Update Fee Settings**
```
POST /portal/{school_slug}/fee/settings/
Purpose: Update fee settings
Access: Authenticated admin
Form Data:
  - fee_generation_day: integer (1-31)
  - due_date_offset: integer (days)
  - late_fee_penalty: decimal (percentage)
Response: Redirects to fee settings with success message
```

### **Family Payment**
```
GET /portal/{school_slug}/fee/family-payment/
Purpose: Collect payment for multiple family members
Access: Authenticated admin
Shows:
  - Multiple student selection
  - Combined payment form
```

---

## 📈 REPORTS & ANALYTICS ROUTES

### **Reports Dashboard**
```
GET /portal/{school_slug}/reports/
Purpose: View detailed financial reports
Access: Authenticated admin
Query Parameters:
  - type: Report type (collection, defaulters, etc.)
  - quick_filter: Preset filter (today, week, month, year, all, last6months)
  - start_date: Custom start date (YYYY-MM-DD)
  - end_date: Custom end date (YYYY-MM-DD)
  - search: Search by receipt number or student name
  - page: Page number
Shows:
  - Collection reports
  - Defaulters list
  - Class-wise pending fees
  - Payment mode distribution
  - Top defaulters
  - Monthly trends
  - Detailed payment history
```

### **Defaulters List**
```
GET /portal/{school_slug}/defaulters/
Purpose: View students with pending/overdue fees
Access: Authenticated admin
Query Parameters:
  - days: Filter by days overdue (0 = all)
Shows:
  - Student list with pending amount
  - Days overdue
  - Oldest due date
  - Total pending amount
```

---

## ⚙️ SETTINGS ROUTES

### **School Settings**
```
GET /portal/{school_slug}/settings/
Purpose: Manage school configuration
Access: Authenticated admin
Shows:
  - School name
  - Admin username
  - Admin password change form
  - School logo upload
```

### **Update School Settings**
```
POST /portal/{school_slug}/settings/
Purpose: Update school configuration
Access: Authenticated admin
Form Data:
  - school_name: string (optional)
  - admin_username: string (optional)
  - admin_password: string (optional)
  - admin_password_confirm: string (required if password provided)
  - school_logo: file (optional, image)
Response: Redirects to settings with success message
```

---

## 🔌 API ENDPOINTS (JSON)

### **Student Search API**
```
GET /portal/{school_slug}/api/student-search/
Purpose: Search students (returns JSON)
Access: Authenticated admin
Query Parameters:
  - q: Search query (required)
Response: JSON with matching students
Example:
  GET /portal/abc_school/api/student-search/?q=john
  Response: {"students": [{...}, {...}]}
```

### **Student Fee Records API**
```
GET /portal/{school_slug}/api/student/{student_id}/fee-records/
Purpose: Get all fee records for a student (JSON)
Access: Authenticated admin
Parameters:
  - student_id: integer (student ID)
Response: JSON with fee records and totals
Example:
  GET /portal/abc_school/api/student/1/fee-records/
  Response: {"student": {...}, "fee_records": [...], "total_fee": "...", ...}
```

### **Student Payments API**
```
GET /portal/{school_slug}/api/student/{student_id}/payments/
Purpose: Get all payments for a student (JSON)
Access: Authenticated admin
Parameters:
  - student_id: integer (student ID)
Response: JSON with payment transactions
Example:
  GET /portal/abc_school/api/student/1/payments/
  Response: {"student": {...}, "payments": [...], "total_paid": "..."}
```

### **Fee Status API** (Public)
```
GET /api/fee-status/
Purpose: Get fee status for a student
Access: Authenticated admin
Query Parameters:
  - student_id: integer (required)
Response: JSON with fee status
Example:
  GET /api/fee-status/?student_id=1
  Response: {"student_id": 1, "total_fee": "...", "total_paid": "...", ...}
```

### **Manual Fee Generation API** (Public)
```
POST /api/manual-generate/
Purpose: Manually generate fees for all students
Access: Authenticated admin
Form Data:
  - month: integer (1-12)
  - year: integer
Response: JSON with generation results
Example:
  POST /api/manual-generate/
  Data: {"month": 6, "year": 2026}
  Response: {"success": true, "generated_count": 150, ...}
```

### **Manual Single Student Fee Generation API** (Public)
```
POST /api/manual-generate-single/
Purpose: Manually generate fee for one student
Access: Authenticated admin
Form Data:
  - student_id: integer (required)
  - month: integer (1-12)
  - year: integer
Response: JSON with fee record
Example:
  POST /api/manual-generate-single/
  Data: {"student_id": 1, "month": 6, "year": 2026}
  Response: {"success": true, "fee_record": {...}}
```

---

## 📋 URL PATTERNS SUMMARY

### **Authentication**
```
/portal/{slug}/login/          GET/POST
/portal/{slug}/logout/         GET
```

### **Dashboard**
```
/portal/{slug}/                GET
```

### **Students**
```
/portal/{slug}/students/                    GET
/portal/{slug}/students/add/                GET/POST
/portal/{slug}/students/edit/{id}/          GET/POST
/portal/{slug}/students/{id}/               GET
```

### **Fee Management**
```
/portal/{slug}/fee/collection/              GET/POST
/portal/{slug}/fee/collection/{id}/         GET
/portal/{slug}/fee/receipt/{id}/            GET
/portal/{slug}/fee/structure/               GET/POST
/portal/{slug}/fee/settings/                GET/POST
/portal/{slug}/fee/family-payment/          GET/POST
```

### **Reports**
```
/portal/{slug}/reports/                     GET
/portal/{slug}/defaulters/                  GET
```

### **Settings**
```
/portal/{slug}/settings/                    GET/POST
```

### **APIs**
```
/portal/{slug}/api/student-search/                      GET
/portal/{slug}/api/student/{id}/fee-records/            GET
/portal/{slug}/api/student/{id}/payments/               GET
/api/fee-status/                                        GET
/api/manual-generate/                                   POST
/api/manual-generate-single/                            POST
/api/debug-payments/                                    GET
```

### **Admin**
```
/admin/                        GET/POST
```

---

## 🔗 Example URLs

### **Local Development**
```
Homepage:           http://localhost:8000/
Admin Panel:        http://localhost:8000/admin/
School Login:       http://localhost:8000/portal/test_school/login/
Dashboard:          http://localhost:8000/portal/test_school/
Students:           http://localhost:8000/portal/test_school/students/
Add Student:        http://localhost:8000/portal/test_school/students/add/
Student Profile:    http://localhost:8000/portal/test_school/students/1/
Fee Collection:     http://localhost:8000/portal/test_school/fee/collection/
Reports:            http://localhost:8000/portal/test_school/reports/
Defaulters:         http://localhost:8000/portal/test_school/defaulters/
Settings:           http://localhost:8000/portal/test_school/settings/
```

### **Production**
```
Homepage:           https://yourdomain.com/
Admin Panel:        https://yourdomain.com/admin/
School Login:       https://yourdomain.com/portal/abc_school/login/
Dashboard:          https://yourdomain.com/portal/abc_school/
Students:           https://yourdomain.com/portal/abc_school/students/
Add Student:        https://yourdomain.com/portal/abc_school/students/add/
Student Profile:    https://yourdomain.com/portal/abc_school/students/1/
Fee Collection:     https://yourdomain.com/portal/abc_school/fee/collection/
Reports:            https://yourdomain.com/portal/abc_school/reports/
Defaulters:         https://yourdomain.com/portal/abc_school/defaulters/
Settings:           https://yourdomain.com/portal/abc_school/settings/
```

---

## 🔐 Access Control

| Route | Public | Admin | School Admin | Notes |
|-------|--------|-------|-------------|-------|
| `/` | ✅ | ✅ | ✅ | Homepage |
| `/admin/` | ❌ | ✅ | ❌ | Super admin only |
| `/portal/{slug}/login/` | ✅ | ✅ | ✅ | Login page |
| `/portal/{slug}/` | ❌ | ❌ | ✅ | Dashboard |
| `/portal/{slug}/students/` | ❌ | ❌ | ✅ | Student list |
| `/portal/{slug}/fee/collection/` | ❌ | ❌ | ✅ | Fee collection |
| `/portal/{slug}/reports/` | ❌ | ❌ | ✅ | Reports |
| `/api/fee-status/` | ❌ | ❌ | ✅ | API |

---

## 📱 Query Parameters Reference

### **Student List**
```
?q=search_term           Search by name/roll/father name
&grade=10                Filter by grade
&section=A               Filter by section
&status=active           Filter by status
&page=2                  Pagination
```

### **Fee Collection**
```
?pending_search=john     Search students
&pending_grade=10        Filter by grade
&pending_section=A       Filter by section
&page=2                  Pagination
```

### **Reports**
```
?type=collection         Report type
&quick_filter=month      Preset filter (today/week/month/year/all/last6months)
&start_date=2026-01-01   Custom date range
&end_date=2026-06-08
&search=RCPT-20260608    Search receipts/students
&page=2                  Pagination
```

### **Defaulters**
```
?days=30                 Filter by days overdue
```

---

## 🚀 Navigation Flow

```
Homepage (/)
    ↓
    ├─→ Admin Panel (/admin/) [Super Admin]
    │   ├─→ School Clients
    │   ├─→ Users
    │   └─→ System Settings
    │
    └─→ School Portal (/portal/{slug}/)
        ├─→ Login (/portal/{slug}/login/)
        │   ↓
        ├─→ Dashboard (/portal/{slug}/)
        ├─→ Students (/portal/{slug}/students/)
        │   ├─→ Add (/portal/{slug}/students/add/)
        │   ├─→ Edit (/portal/{slug}/students/edit/{id}/)
        │   └─→ Profile (/portal/{slug}/students/{id}/)
        ├─→ Fee Collection (/portal/{slug}/fee/collection/)
        │   ├─→ Receipt (/portal/{slug}/fee/receipt/{id}/)
        │   ├─→ Structure (/portal/{slug}/fee/structure/)
        │   ├─→ Settings (/portal/{slug}/fee/settings/)
        │   └─→ Family Payment (/portal/{slug}/fee/family-payment/)
        ├─→ Reports (/portal/{slug}/reports/)
        ├─→ Defaulters (/portal/{slug}/defaulters/)
        ├─→ Settings (/portal/{slug}/settings/)
        └─→ Logout (/portal/{slug}/logout/)
```

---

## 📞 Common URL Patterns

### **Get School Slug**
```
From login URL: /portal/{school_slug}/login/
From dashboard: /portal/{school_slug}/
From any page: Check URL path
```

### **Get Student ID**
```
From student list: Click on student name
From student profile URL: /portal/{slug}/students/{student_id}/
From API response: "id" field
```

### **Get Receipt ID**
```
From fee collection: Receipt number shown after payment
From reports: Click on receipt
From API response: "id" field
```

---

## ✅ Checklist for Setup

- [ ] Homepage accessible at `/`
- [ ] Admin panel accessible at `/admin/`
- [ ] School login accessible at `/portal/{slug}/login/`
- [ ] Dashboard accessible after login
- [ ] All student routes working
- [ ] All fee routes working
- [ ] All report routes working
- [ ] All API endpoints responding
- [ ] Logout working properly
- [ ] Session management working

---

**Version**: 1.0  
**Last Updated**: 2026-06-08  
**Status**: Complete ✅

