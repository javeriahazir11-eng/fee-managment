# 🎓 AXIS School Management System

A comprehensive **Multi-Tenant SaaS** platform for managing school/gym fees, student records, and financial reporting.

## ✨ Features

### 📊 **Dashboard**
- Real-time collection metrics
- Monthly/daily collection tracking
- Pending fees overview
- Top defaulters list
- Recent payment history
- 6-month collection trends

### 👥 **Student Management**
- Add/Edit/Delete students
- Advanced search & filtering
- Student profiles with complete history
- Automatic roll number generation
- Photo upload support
- Status tracking (active/suspended/graduated)

### 💰 **Fee Management**
- Flexible fee structure per grade
- Automatic monthly fee generation
- Partial/full payment tracking
- Multiple payment modes (Cash, Bank, Cheque, Online)
- Auto-generated receipts
- Payment history per student

### 📈 **Reports & Analytics**
- Collection reports (daily/weekly/monthly/yearly)
- Defaulters analysis
- Class-wise pending fees
- Payment mode distribution
- Top defaulters ranking
- Customizable date ranges
- Export capabilities

### 🔐 **Multi-Tenant Architecture**
- Complete data isolation per school
- Separate databases per tenant
- Independent admin credentials
- Scalable to unlimited schools

### 🛡️ **Security**
- Session-based authentication
- CSRF protection
- XSS prevention
- Secure password storage
- HTTPS support
- Tenant isolation

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────┐
│         Public Portal (Shared)          │
│  - Admin Panel (/admin/)                │
│  - School Login (/portal/{slug}/login/) │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│    Django-Tenants Multi-Tenant Layer    │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│  School Tenant Portals (Isolated DBs)   │
│  - Dashboard                            │
│  - Students                             │
│  - Fee Collection                       │
│  - Reports                              │
│  - Settings                             │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│      PostgreSQL (Multi-Schema)          │
│  - Public Schema (Shared)               │
│  - School Schemas (Isolated)            │
└─────────────────────────────────────────┘
```

---

## 🚀 Quick Start

### **Local Development**
```bash
# Clone repo
git clone https://github.com/yourusername/fee-managment.git
cd fee-managment

# Setup
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Configure
cp .env.example .env
# Edit .env with your database URL

# Initialize
python manage.py migrate_schemas --shared
python manage.py createsuperuser
python manage.py setup_school "Test School" --schema test_school

# Run
python manage.py runserver
```

### **Railway Deployment**
```bash
# 1. Connect GitHub repo to Railway
# 2. Add PostgreSQL database
# 3. Set environment variables
# 4. Deploy
# 5. Run migrations:
python manage.py migrate_schemas --shared
python manage.py createsuperuser
```

See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) for detailed instructions.

---

## 📚 Documentation

| Document | Purpose |
|----------|---------|
| [SETUP_GUIDE.md](SETUP_GUIDE.md) | Complete system setup & configuration |
| [QUICKSTART.md](QUICKSTART.md) | 5-minute quick start guide |
| [API_DOCUMENTATION.md](API_DOCUMENTATION.md) | API endpoints & integration |
| [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) | Deployment instructions |

---

## 🌐 URL Routes

### **Public Routes**
```
GET  /                          → Homepage
GET  /admin/                    → Django Admin Panel
GET  /api/debug-payments/       → Debug API
```

### **School Portal Routes**
```
GET  /portal/{slug}/login/      → Login page
POST /portal/{slug}/login/      → Process login
GET  /portal/{slug}/logout/     → Logout
GET  /portal/{slug}/            → Dashboard
GET  /portal/{slug}/students/   → Student list
POST /portal/{slug}/students/add/    → Add student
GET  /portal/{slug}/students/{id}/   → Student profile
GET  /portal/{slug}/fee/collection/  → Fee collection
POST /portal/{slug}/fee/collection/  → Process payment
GET  /portal/{slug}/reports/    → Reports
GET  /portal/{slug}/defaulters/ → Defaulters list
GET  /portal/{slug}/settings/   → Settings
```

### **API Routes**
```
GET  /portal/{slug}/api/student-search/              → Search students
GET  /portal/{slug}/api/student/{id}/fee-records/    → Get fee records
GET  /portal/{slug}/api/student/{id}/payments/       → Get payments
```

See [SETUP_GUIDE.md](SETUP_GUIDE.md) for complete URL documentation.

---

## 👥 User Roles

### **Super Admin**
- Access: `/admin/`
- Manage all schools
- Create/edit school credentials
- View system-wide data

### **School Admin**
- Access: `/portal/{school_slug}/`
- Manage students
- Collect fees
- View reports
- Configure settings

---

## 🗄️ Database Models

### **SchoolClient** (Tenant)
- School name, schema, credentials
- Logo, active status

### **Student**
- Name, father info, contact
- Grade, section, status
- Photo, notes

### **FeeStructure**
- Grade-wise monthly fees

### **FeeRecord** (Monthly Fee)
- Student, month, year
- Amount, paid amount, status
- Due date, remarks

### **PaymentTransaction** (Receipt)
- Student, amount, date
- Payment mode, receipt number
- Created by, remarks

### **SchoolFeeSettings**
- Fee generation day
- Due date offset
- Late fee penalty

---

## 🔧 Configuration

### **Environment Variables**
```env
DATABASE_URL=postgresql://user:pass@host:5432/db
SECRET_KEY=your-secret-key
DEBUG=False
ALLOWED_HOSTS=yourdomain.com
SECURE_SSL_REDIRECT=True
SESSION_COOKIE_SECURE=True
CSRF_COOKIE_SECURE=True
```

### **Create School**
```bash
python manage.py setup_school "School Name" --schema school_slug --username admin --password password123
```

---

## 📊 Key Features

✅ Multi-tenant architecture  
✅ Complete student management  
✅ Flexible fee collection  
✅ Comprehensive reporting  
✅ Payment tracking  
✅ Defaulters management  
✅ Receipt generation  
✅ Data export  
✅ Secure authentication  
✅ Mobile-friendly UI  

---

## 🔐 Security

- ✅ Session-based authentication
- ✅ CSRF protection on all forms
- ✅ XSS prevention
- ✅ Secure password storage
- ✅ HTTPS/SSL support
- ✅ Tenant data isolation
- ✅ Secure cookies (HTTPOnly, Secure)
- ✅ SQL injection prevention

---

## 📱 Browser Support

- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+

---

## 🛠️ Tech Stack

- **Backend**: Django 4.2
- **Database**: PostgreSQL
- **Multi-Tenancy**: django-tenants
- **Server**: Gunicorn
- **Frontend**: HTML5, CSS3, JavaScript
- **Deployment**: Railway, Docker

---

## 📦 Dependencies

```
Django==4.2.28
django-tenants==3.7.0
django-environ==0.11.2
psycopg2-binary==2.9.12
pillow==12.1.1
fpdf==1.7.2
gunicorn==23.0.0
whitenoise==6.6.0
```

---

## 🚀 Deployment Options

- **Railway** (Recommended)
- **Docker**
- **Heroku**
- **AWS**
- **DigitalOcean**
- **Self-hosted**

See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) for detailed instructions.

---

## 📞 Support & Documentation

- 📖 [Setup Guide](SETUP_GUIDE.md) - Complete setup instructions
- ⚡ [Quick Start](QUICKSTART.md) - 5-minute quick start
- 🔌 [API Documentation](API_DOCUMENTATION.md) - API endpoints
- 🚀 [Deployment Guide](DEPLOYMENT_GUIDE.md) - Deployment instructions

---

## 📝 License

This project is proprietary software. All rights reserved.

---

## 👨‍💻 Author

**AXIS School Management System**  
Built with ❤️ for schools and educational institutions

---

## 🎯 Roadmap

- [ ] Mobile app (iOS/Android)
- [ ] SMS notifications
- [ ] Email receipts
- [ ] Online payment gateway integration
- [ ] Attendance tracking
- [ ] Exam management
- [ ] Parent portal
- [ ] Advanced analytics
- [ ] Bulk import/export
- [ ] Multi-language support

---

## 📊 Statistics

- **Supported Schools**: Unlimited
- **Students per School**: Unlimited
- **Payment Modes**: 4 (Cash, Bank, Cheque, Online)
- **Report Types**: 5+
- **API Endpoints**: 7+
- **User Roles**: 2 (Super Admin, School Admin)

---

**Version**: 1.0  
**Last Updated**: 2026-06-08  
**Status**: Production Ready ✅

---

## 🙏 Acknowledgments

Built using:
- Django Framework
- django-tenants
- PostgreSQL
- Bootstrap

---

For more information, visit the documentation files or contact support.

