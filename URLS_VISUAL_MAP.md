# 🗺️ AXIS URLs - Visual Map

## 🏠 Homepage & Admin

```
┌─────────────────────────────────────────┐
│  https://yourdomain.com/                │
│  (Homepage - Public)                    │
└─────────────────────────────────────────┘
         ↓
    ┌────┴────┐
    ↓         ↓
┌─────────┐  ┌──────────────────────────┐
│ /admin/ │  │ /portal/{slug}/login/    │
│ (Super  │  │ (School Admin Login)     │
│  Admin) │  └──────────────────────────┘
└─────────┘           ↓
                 ┌─────────────────────────────────────────┐
                 │  /portal/{slug}/                        │
                 │  (Dashboard - Main Hub)                 │
                 └─────────────────────────────────────────┘
```

---

## 👥 Student Management Routes

```
/portal/{slug}/students/
│
├─ GET  → View all students (with filters)
│         ?q=search &grade=10 &section=A &status=active
│
├─ /add/
│  ├─ GET  → Add student form
│  └─ POST → Create student
│
├─ /edit/{id}/
│  ├─ GET  → Edit student form
│  └─ POST → Update student
│
└─ /{id}/
   └─ GET  → Student profile (details + fees + payments)
```

**Example URLs**:
```
GET  /portal/abc_school/students/
GET  /portal/abc_school/students/?q=john&grade=10
GET  /portal/abc_school/students/add/
POST /portal/abc_school/students/add/
GET  /portal/abc_school/students/edit/1/
POST /portal/abc_school/students/edit/1/
GET  /portal/abc_school/students/1/
```

---

## 💰 Fee Management Routes

```
/portal/{slug}/fee/
│
├─ /collection/
│  ├─ GET  → Fee collection dashboard (list of students with pending fees)
│  │        ?pending_search=john &pending_grade=10 &page=1
│  ├─ POST → Process payment
│  │
│  └─ /{student_id}/
│     └─ GET → Collect fee from specific student
│
├─ /receipt/{receipt_id}/
│  └─ GET  → View/print payment receipt
│
├─ /structure/
│  ├─ GET  → View fee structure by grade
│  └─ POST → Update fee for a grade
│
├─ /settings/
│  ├─ GET  → View fee settings
│  └─ POST → Update fee settings
│
└─ /family-payment/
   ├─ GET  → Family payment form
   └─ POST → Process family payment
```

**Example URLs**:
```
GET  /portal/abc_school/fee/collection/
GET  /portal/abc_school/fee/collection/?pending_search=john
GET  /portal/abc_school/fee/collection/1/
POST /portal/abc_school/fee/collection/
GET  /portal/abc_school/fee/receipt/1/
GET  /portal/abc_school/fee/structure/
POST /portal/abc_school/fee/structure/
GET  /portal/abc_school/fee/settings/
POST /portal/abc_school/fee/settings/
GET  /portal/abc_school/fee/family-payment/
POST /portal/abc_school/fee/family-payment/
```

---

## 📊 Reports & Analytics Routes

```
/portal/{slug}/
│
├─ /reports/
│  └─ GET → Detailed reports
│           ?type=collection
│           &quick_filter=month
│           &start_date=2026-01-01
│           &end_date=2026-06-08
│           &search=RCPT-20260608
│           &page=1
│
└─ /defaulters/
   └─ GET → Defaulters list
            ?days=30
```

**Example URLs**:
```
GET /portal/abc_school/reports/
GET /portal/abc_school/reports/?quick_filter=month
GET /portal/abc_school/reports/?start_date=2026-01-01&end_date=2026-06-08
GET /portal/abc_school/defaulters/
GET /portal/abc_school/defaulters/?days=30
```

---

## ⚙️ Settings Routes

```
/portal/{slug}/settings/
│
├─ GET  → View school settings
│         (school name, admin credentials, logo)
│
└─ POST → Update school settings
```

**Example URLs**:
```
GET  /portal/abc_school/settings/
POST /portal/abc_school/settings/
```

---

## 🔌 API Routes (JSON Responses)

```
/api/
│
├─ /fee-status/
│  └─ GET → Get fee status for student
│           ?student_id=1
│
├─ /manual-generate/
│  └─ POST → Generate fees for all students
│            Data: {month: 6, year: 2026}
│
├─ /manual-generate-single/
│  └─ POST → Generate fee for one student
│            Data: {student_id: 1, month: 6, year: 2026}
│
└─ /debug-payments/
   └─ GET → Get recent payments (debug)

/portal/{slug}/api/
│
├─ /student-search/
│  └─ GET → Search students
│           ?q=john
│
├─ /student/{id}/fee-records/
│  └─ GET → Get all fee records for student
│
└─ /student/{id}/payments/
   └─ GET → Get all payments for student
```

**Example URLs**:
```
GET  /api/fee-status/?student_id=1
POST /api/manual-generate/
POST /api/manual-generate-single/
GET  /api/debug-payments/
GET  /portal/abc_school/api/student-search/?q=john
GET  /portal/abc_school/api/student/1/fee-records/
GET  /portal/abc_school/api/student/1/payments/
```

---

## 🔐 Authentication Routes

```
/portal/{slug}/
│
├─ /login/
│  ├─ GET  → Display login form
│  └─ POST → Process login
│           Data: {username: "admin", password: "password123"}
│
└─ /logout/
   └─ GET  → Logout and clear session
```

**Example URLs**:
```
GET  /portal/abc_school/login/
POST /portal/abc_school/login/
GET  /portal/abc_school/logout/
```

---

## 📱 Complete URL Tree

```
https://yourdomain.com/
│
├─ /                                    [PUBLIC]
│
├─ /admin/                              [SUPER ADMIN]
│
├─ /api/
│  ├─ fee-status/                       [AUTHENTICATED]
│  ├─ manual-generate/                  [AUTHENTICATED]
│  ├─ manual-generate-single/           [AUTHENTICATED]
│  └─ debug-payments/                   [AUTHENTICATED]
│
└─ /portal/{school_slug}/
   │
   ├─ /login/                           [PUBLIC]
   │  └─ POST                           [PROCESS LOGIN]
   │
   ├─ /logout/                          [AUTHENTICATED]
   │
   ├─ /                                 [AUTHENTICATED - DASHBOARD]
   │
   ├─ /students/                        [AUTHENTICATED]
   │  ├─ GET (list)
   │  ├─ /add/
   │  │  ├─ GET (form)
   │  │  └─ POST (create)
   │  ├─ /edit/{id}/
   │  │  ├─ GET (form)
   │  │  └─ POST (update)
   │  └─ /{id}/                         [PROFILE]
   │
   ├─ /fee/
   │  ├─ /collection/                   [AUTHENTICATED]
   │  │  ├─ GET (dashboard)
   │  │  ├─ POST (process payment)
   │  │  └─ /{student_id}/              [SPECIFIC STUDENT]
   │  ├─ /receipt/{receipt_id}/         [VIEW RECEIPT]
   │  ├─ /structure/                    [MANAGE STRUCTURE]
   │  │  ├─ GET
   │  │  └─ POST
   │  ├─ /settings/                     [MANAGE SETTINGS]
   │  │  ├─ GET
   │  │  └─ POST
   │  └─ /family-payment/               [FAMILY PAYMENT]
   │     ├─ GET
   │     └─ POST
   │
   ├─ /reports/                         [AUTHENTICATED]
   │  └─ GET (with filters)
   │
   ├─ /defaulters/                      [AUTHENTICATED]
   │  └─ GET (with filters)
   │
   ├─ /settings/                        [AUTHENTICATED]
   │  ├─ GET
   │  └─ POST
   │
   └─ /api/
      ├─ /student-search/               [AUTHENTICATED]
      ├─ /student/{id}/fee-records/     [AUTHENTICATED]
      └─ /student/{id}/payments/        [AUTHENTICATED]
```

---

## 🎯 Quick Navigation Guide

### **For School Admin**
```
1. Login
   → /portal/{slug}/login/

2. Dashboard
   → /portal/{slug}/

3. Add Student
   → /portal/{slug}/students/add/

4. Collect Fee
   → /portal/{slug}/fee/collection/

5. View Reports
   → /portal/{slug}/reports/

6. View Defaulters
   → /portal/{slug}/defaulters/

7. Settings
   → /portal/{slug}/settings/

8. Logout
   → /portal/{slug}/logout/
```

### **For Super Admin**
```
1. Admin Panel
   → /admin/

2. Create School
   → /admin/ → School Clients → Add

3. View School
   → /admin/ → School Clients → Select School

4. Manage Users
   → /admin/ → Users

5. System Settings
   → /admin/ → Settings
```

---

## 🔗 URL Parameter Reference

### **School Slug**
```
Format: lowercase, alphanumeric, underscores
Examples: abc_school, xyz_gym, test_school
Used in: /portal/{school_slug}/...
```

### **Student ID**
```
Format: integer
Examples: 1, 2, 100
Used in: /students/{student_id}/, /fee/collection/{student_id}/
```

### **Receipt ID**
```
Format: integer
Examples: 1, 2, 100
Used in: /fee/receipt/{receipt_id}/
```

### **Query Parameters**
```
Search:     ?q=search_term
Grade:      &grade=10
Section:    &section=A
Status:     &status=active
Page:       &page=2
Date Range: &start_date=2026-01-01&end_date=2026-06-08
Filter:     &quick_filter=month
Days:       &days=30
```

---

## 📊 HTTP Methods

| Method | Purpose | Example |
|--------|---------|---------|
| GET | Retrieve data/display form | `/students/` |
| POST | Submit form/create data | `/students/add/` |

---

## 🔐 Access Levels

```
PUBLIC (No Login)
├─ /
├─ /portal/{slug}/login/
└─ /admin/ (requires superuser)

AUTHENTICATED (School Admin Login)
├─ /portal/{slug}/
├─ /portal/{slug}/students/
├─ /portal/{slug}/fee/
├─ /portal/{slug}/reports/
├─ /portal/{slug}/defaulters/
├─ /portal/{slug}/settings/
├─ /portal/{slug}/api/
└─ /api/
```

---

## 💡 Tips

1. **Always include school slug** in portal URLs
2. **Use query parameters** for filtering and pagination
3. **POST requests** require CSRF token (auto-handled by forms)
4. **API endpoints** return JSON responses
5. **Session required** for authenticated routes
6. **Logout** clears session and redirects to login

---

## 🚀 Common Workflows

### **Add Student & Collect Fee**
```
1. /portal/{slug}/students/add/          [Add student form]
2. POST /portal/{slug}/students/add/     [Create student]
3. /portal/{slug}/fee/collection/        [Fee collection]
4. POST /portal/{slug}/fee/collection/   [Process payment]
5. /portal/{slug}/fee/receipt/{id}/      [View receipt]
```

### **View Reports**
```
1. /portal/{slug}/reports/               [Reports dashboard]
2. ?quick_filter=month                   [Filter by month]
3. ?start_date=...&end_date=...          [Custom date range]
4. ?search=RCPT-...                      [Search receipt]
```

### **Manage Defaulters**
```
1. /portal/{slug}/defaulters/            [Defaulters list]
2. ?days=30                              [Filter by days overdue]
3. Click student name                    [View profile]
4. /portal/{slug}/fee/collection/{id}/   [Collect fee]
```

---

**Version**: 1.0  
**Last Updated**: 2026-06-08  
**Status**: Complete ✅

