# AXIS School Management System - Quick Start Guide

## ⚡ 5-Minute Setup

### **For Schools/Gym Owners (End Users)**

#### 1. **Access Your Portal**
```
URL: https://yourdomain.com/portal/{your_school_slug}/login/
Username: (provided by admin)
Password: (provided by admin)
```

#### 2. **Login**
- Enter your username and password
- Click "Login"

#### 3. **Add Students**
- Go to "Students" → "Add Student"
- Fill in student details
- Click "Save"
- Fee records auto-created

#### 4. **Collect Fees**
- Go to "Fee Collection"
- Select student
- Enter amount
- Select payment mode
- Click "Submit"
- Receipt auto-generated

#### 5. **View Reports**
- Go to "Reports"
- Select date range
- View collection data
- Export if needed

---

### **For Super Admin (Platform Owner)**

#### 1. **Access Admin Panel**
```
URL: https://yourdomain.com/admin/
Username: (superuser)
Password: (superuser)
```

#### 2. **Create New School**
- Click "School Clients"
- Click "Add School Client"
- Fill in:
  - Name: "ABC School"
  - Schema Name: "abc_school"
  - Admin Username: "admin"
  - Admin Password: "SecurePassword123!"
- Click "Save"

#### 3. **Share Portal Link**
```
Send to school admin:
URL: https://yourdomain.com/portal/abc_school/login/
Username: admin
Password: SecurePassword123!
```

#### 4. **Monitor Schools**
- View all schools in admin panel
- Check active status
- View school details

---

## 🎯 Common Tasks

### **Add a Student**
```
1. Login to school portal
2. Students → Add Student
3. Fill in:
   - Name
   - Father's Name
   - CNIC
   - Mobile
   - Grade
   - Section
4. Save
```

### **Collect Fee Payment**
```
1. Fee Collection
2. Select Student
3. Enter Amount
4. Select Payment Mode (Cash/Bank/Cheque/Online)
5. Submit
6. Receipt auto-generated
```

### **View Student Profile**
```
1. Students → List
2. Click on student name
3. View:
   - Student details
   - Fee records
   - Payment history
   - Pending amount
```

### **Generate Reports**
```
1. Reports
2. Select Report Type:
   - Collection Report
   - Defaulters Report
   - Class-wise Report
3. Select Date Range
4. View/Export
```

### **Manage Fee Structure**
```
1. Fee Structure
2. Select Grade
3. Enter Monthly Fee
4. Save
5. Auto-applies to all students in that grade
```

### **View Defaulters**
```
1. Defaulters
2. Filter by:
   - Days Overdue
   - Grade
   - Section
3. View pending amount
4. Take action
```

---

## 📱 Features Overview

### **Dashboard**
- Today's collection
- Monthly collection
- Pending fees
- Top defaulters
- Recent payments
- 6-month trend

### **Students**
- Add/Edit/Delete
- Search
- Filter by grade/section
- View profile
- Track fees

### **Fee Management**
- Collect payments
- Generate receipts
- Track status
- Manage structure
- Configure settings

### **Reports**
- Collection reports
- Defaulters list
- Class-wise analysis
- Payment trends
- Export data

### **Settings**
- School name
- Admin credentials
- School logo
- Fee settings

---

## 🔑 Default Credentials

### **Super Admin**
- URL: `/admin/`
- Username: (created during setup)
- Password: (created during setup)

### **School Admin**
- URL: `/portal/{school_slug}/login/`
- Username: (set by super admin)
- Password: (set by super admin)

---

## 🆘 Troubleshooting

### **Can't Login**
- Check username/password
- Clear browser cookies
- Try incognito mode

### **Student Not Showing**
- Refresh page
- Check student status is "active"
- Verify student is in correct grade

### **Fee Not Showing**
- Check fee structure is set for grade
- Verify student status is "active"
- Check due date hasn't passed

### **Payment Not Recording**
- Check amount doesn't exceed pending
- Verify student has pending fees
- Check database connection

### **Can't Access Portal**
- Verify school slug is correct
- Check school is active
- Verify you're logged in

---

## 📞 Support

**For Issues**:
1. Check this guide
2. Review SETUP_GUIDE.md
3. Check API_DOCUMENTATION.md
4. Contact system admin

---

## 🚀 Next Steps

1. ✅ Login to portal
2. ✅ Add first student
3. ✅ Configure fee structure
4. ✅ Collect first payment
5. ✅ Generate report
6. ✅ Invite other admins

---

**Version**: 1.0  
**Last Updated**: 2026-06-08

