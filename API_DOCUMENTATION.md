# AXIS School Management System - API Documentation

## 🔐 Authentication

All API endpoints require the user to be logged in via the school portal.

### Login Flow
```
POST /portal/{school_slug}/login/
Content-Type: application/x-www-form-urlencoded

username=admin&password=password123

Response: Redirects to dashboard with session cookie
```

---

## 📡 API Endpoints

### **1. Student Search API**
Search for students by name, roll number, or father's name.

**Endpoint**: `GET /portal/{school_slug}/api/student-search/`

**Query Parameters**:
```
q: string (search query)
```

**Example**:
```
GET /portal/abc_school/api/student-search/?q=john
```

**Response**:
```json
{
  "students": [
    {
      "id": 1,
      "name": "John Doe",
      "roll_number": "1001",
      "grade": "10",
      "section": "A",
      "father_name": "James Doe",
      "parent_mobile": "03001234567"
    }
  ]
}
```

---

### **2. Student Fee Records API**
Get all fee records for a specific student.

**Endpoint**: `GET /portal/{school_slug}/api/student/{student_id}/fee-records/`

**Example**:
```
GET /portal/abc_school/api/student/1/fee-records/
```

**Response**:
```json
{
  "student": {
    "id": 1,
    "name": "John Doe",
    "roll_number": "1001"
  },
  "fee_records": [
    {
      "id": 1,
      "month": 6,
      "year": 2026,
      "amount": "5000.00",
      "paid_amount": "2500.00",
      "remaining": "2500.00",
      "due_date": "2026-06-15",
      "status": "partial",
      "remarks": ""
    },
    {
      "id": 2,
      "month": 5,
      "year": 2026,
      "amount": "5000.00",
      "paid_amount": "0.00",
      "remaining": "5000.00",
      "due_date": "2026-05-15",
      "status": "overdue",
      "remarks": ""
    }
  ],
  "total_fee": "10000.00",
  "total_paid": "2500.00",
  "total_pending": "7500.00"
}
```

---

### **3. Student Payments API**
Get all payment transactions for a specific student.

**Endpoint**: `GET /portal/{school_slug}/api/student/{student_id}/payments/`

**Example**:
```
GET /portal/abc_school/api/student/1/payments/
```

**Response**:
```json
{
  "student": {
    "id": 1,
    "name": "John Doe"
  },
  "payments": [
    {
      "id": 1,
      "receipt_number": "RCPT-20260608-0001",
      "amount": "2500.00",
      "payment_date": "2026-06-08",
      "payment_mode": "cash",
      "payment_type": "partial",
      "remarks": "Partial payment for June",
      "created_by": "admin"
    }
  ],
  "total_paid": "2500.00",
  "payment_count": 1
}
```

---

### **4. Fee Status API**
Get current fee status for a student.

**Endpoint**: `GET /api/fee-status/`

**Query Parameters**:
```
student_id: integer (required)
```

**Example**:
```
GET /api/fee-status/?student_id=1
```

**Response**:
```json
{
  "student_id": 1,
  "student_name": "John Doe",
  "total_fee": "10000.00",
  "total_paid": "2500.00",
  "total_pending": "7500.00",
  "pending_records": [
    {
      "month": 5,
      "year": 2026,
      "amount": "5000.00",
      "paid_amount": "0.00",
      "remaining": "5000.00",
      "status": "overdue",
      "days_overdue": 24
    }
  ]
}
```

---

### **5. Manual Fee Generation API**
Manually generate fees for all students.

**Endpoint**: `POST /api/manual-generate/`

**Parameters**:
```json
{
  "month": 6,
  "year": 2026
}
```

**Response**:
```json
{
  "success": true,
  "message": "Fees generated for 150 students",
  "generated_count": 150,
  "skipped_count": 5
}
```

---

### **6. Manual Single Student Fee Generation API**
Generate fee for a single student.

**Endpoint**: `POST /api/manual-generate-single/`

**Parameters**:
```json
{
  "student_id": 1,
  "month": 6,
  "year": 2026
}
```

**Response**:
```json
{
  "success": true,
  "message": "Fee generated for John Doe",
  "fee_record": {
    "id": 1,
    "student_id": 1,
    "month": 6,
    "year": 2026,
    "amount": "5000.00",
    "due_date": "2026-06-15",
    "status": "pending"
  }
}
```

---

### **7. Debug Payments API**
Get recent payments (for debugging).

**Endpoint**: `GET /api/debug-payments/`

**Response**:
```json
{
  "payments": [
    {
      "id": 1,
      "receipt_number": "RCPT-20260608-0001",
      "student_id": 1,
      "amount": "2500.00",
      "date": "2026-06-08"
    }
  ],
  "total": 1
}
```

---

## 🔄 Form Submissions

### **Add Student**
**Endpoint**: `POST /portal/{school_slug}/students/add/`

**Form Data**:
```
name: string (required)
father_name: string (required)
father_cnic: string (required, format: 35202-XXXXXXX-X)
parent_mobile: string (required)
grade: string (required)
section: string (required)
gender: string (optional, male/female)
date_of_birth: date (optional)
address: text (optional)
photo: file (optional, image)
notes: text (optional)
```

**Response**: Redirects to student list with success message

---

### **Edit Student**
**Endpoint**: `POST /portal/{school_slug}/students/edit/{student_id}/`

**Form Data**: Same as Add Student

**Response**: Redirects to student profile with success message

---

### **Collect Fee**
**Endpoint**: `POST /portal/{school_slug}/fee/collection/`

**Form Data**:
```
student_id: integer (required)
amount: decimal (required)
payment_mode: string (required, cash/bank_transfer/cheque/online)
remarks: text (optional)
```

**Response**: Redirects to fee collection with receipt number

---

### **Update Fee Settings**
**Endpoint**: `POST /portal/{school_slug}/fee/settings/`

**Form Data**:
```
fee_generation_day: integer (1-31)
due_date_offset: integer (days after generation)
late_fee_penalty: decimal (percentage)
```

**Response**: Redirects to fee settings with success message

---

### **Update Fee Structure**
**Endpoint**: `POST /portal/{school_slug}/fee/structure/`

**Form Data**:
```
grade: string (required)
monthly_fee: decimal (required)
```

**Response**: Redirects to fee structure with success message

---

### **Update School Settings**
**Endpoint**: `POST /portal/{school_slug}/settings/`

**Form Data**:
```
school_name: string (optional)
admin_username: string (optional)
admin_password: string (optional)
admin_password_confirm: string (required if password provided)
school_logo: file (optional, image)
```

**Response**: Redirects to settings with success message

---

## 📊 Data Formats

### **Student Status**
```
active: Active student
suspended: Suspended student
graduated: Graduated student
```

### **Fee Status**
```
pending: Not paid
partial: Partially paid
paid: Fully paid
overdue: Past due date and not paid
waived: Fee waived
```

### **Payment Mode**
```
cash: Cash payment
bank_transfer: Bank transfer
cheque: Cheque payment
online: Online payment
```

### **Payment Type**
```
full: Full payment
partial: Partial payment
```

---

## 🔒 Security Notes

1. **Session-Based Auth**: All endpoints require active session
2. **CSRF Protection**: All POST requests require CSRF token
3. **Tenant Isolation**: Each school can only access its own data
4. **Admin Only**: All endpoints require school admin login

---

## 📝 Error Responses

### **Unauthorized (401)**
```json
{
  "error": "Unauthorized",
  "message": "Please login first"
}
```

### **Not Found (404)**
```json
{
  "error": "Not Found",
  "message": "Student not found"
}
```

### **Bad Request (400)**
```json
{
  "error": "Bad Request",
  "message": "Invalid payment data"
}
```

### **Server Error (500)**
```json
{
  "error": "Server Error",
  "message": "Error processing payment: [error details]"
}
```

---

## 🧪 Testing APIs

### Using cURL

**Login**:
```bash
curl -c cookies.txt -X POST \
  -d "username=admin&password=password123" \
  https://yourdomain.com/portal/abc_school/login/
```

**Search Students**:
```bash
curl -b cookies.txt \
  "https://yourdomain.com/portal/abc_school/api/student-search/?q=john"
```

**Get Fee Records**:
```bash
curl -b cookies.txt \
  "https://yourdomain.com/portal/abc_school/api/student/1/fee-records/"
```

### Using Python Requests

```python
import requests

session = requests.Session()

# Login
session.post(
    'https://yourdomain.com/portal/abc_school/login/',
    data={'username': 'admin', 'password': 'password123'}
)

# Search students
response = session.get(
    'https://yourdomain.com/portal/abc_school/api/student-search/',
    params={'q': 'john'}
)
print(response.json())

# Get fee records
response = session.get(
    'https://yourdomain.com/portal/abc_school/api/student/1/fee-records/'
)
print(response.json())
```

---

## 📞 Support

For API issues:
1. Check authentication (login first)
2. Verify student/school exists
3. Check browser console for errors
4. Review Django logs for backend errors

---

**Version**: 1.0  
**Last Updated**: 2026-06-08

