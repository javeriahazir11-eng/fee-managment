# AXIS School Management System - Deployment Guide

## 🚀 Railway Deployment

### **Step 1: Prepare Your Repository**

1. Ensure all files are committed to GitHub
2. Create `.env.example` file:
```env
DATABASE_URL=postgresql://user:password@host:5432/dbname
SECRET_KEY=your-secret-key-here
DEBUG=False
ALLOWED_HOSTS=yourdomain.com,www.yourdomain.com
SECURE_SSL_REDIRECT=True
SESSION_COOKIE_SECURE=True
CSRF_COOKIE_SECURE=True
CSRF_TRUSTED_ORIGINS=https://yourdomain.com,https://www.yourdomain.com
```

3. Update `requirements.txt`:
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

### **Step 2: Deploy on Railway**

1. **Connect GitHub Repository**
   - Go to Railway.com
   - Create new project
   - Connect your GitHub repo

2. **Add PostgreSQL Database**
   - Click "Add Service"
   - Select "PostgreSQL"
   - Railway will create DATABASE_URL automatically

3. **Configure Environment Variables**
   - Go to Variables tab
   - Add all variables from `.env.example`
   - Generate SECRET_KEY:
     ```bash
     python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
     ```

4. **Set Start Command**
   - In Railway settings, set:
     ```
     gunicorn axis_saas.wsgi:application
     ```

5. **Run Migrations**
   - After first deployment, run:
     ```bash
     python manage.py migrate_schemas --shared
     ```
   - Create superuser:
     ```bash
     python manage.py createsuperuser
     ```

### **Step 3: Configure Custom Domain**

1. **Add Domain in Railway**
   - Go to Networking
   - Add custom domain
   - Get CNAME target

2. **Update DNS**
   - Go to your domain registrar
   - Add CNAME record:
     ```
     yourdomain.com CNAME your-railway-domain.railway.app
     ```

3. **Update Django Settings**
   - Add domain to ALLOWED_HOSTS
   - Update CSRF_TRUSTED_ORIGINS

### **Step 4: Create First School**

1. **Access Admin Panel**
   ```
   https://yourdomain.com/admin/
   ```

2. **Login with Superuser**
   - Use credentials created in Step 2

3. **Create School**
   - Click "School Clients"
   - Add New
   - Fill in details:
     - Name: "ABC School"
     - Schema Name: "abc_school"
     - Admin Username: "admin"
     - Admin Password: "SecurePassword123!"

4. **Access School Portal**
   ```
   https://yourdomain.com/portal/abc_school/login/
   ```

---

## 🔧 Local Development Setup

### **Prerequisites**
- Python 3.10+
- PostgreSQL 12+
- Git

### **Installation**

1. **Clone Repository**
   ```bash
   git clone https://github.com/yourusername/fee-managment.git
   cd fee-managment
   ```

2. **Create Virtual Environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Create .env File**
   ```bash
   cp .env.example .env
   ```
   
   Edit `.env`:
   ```env
   DATABASE_URL=postgresql://postgres:password@localhost:5432/axis_saas
   SECRET_KEY=your-secret-key-here
   DEBUG=True
   ALLOWED_HOSTS=localhost,127.0.0.1
   ```

5. **Create Database**
   ```bash
   createdb axis_saas
   ```

6. **Run Migrations**
   ```bash
   python manage.py migrate_schemas --shared
   ```

7. **Create Superuser**
   ```bash
   python manage.py createsuperuser
   ```

8. **Create Test School**
   ```bash
   python manage.py setup_school "Test School" --schema test_school --username admin --password admin123
   ```

9. **Run Development Server**
   ```bash
   python manage.py runserver
   ```

10. **Access Application**
    - Admin: http://localhost:8000/admin/
    - School Portal: http://localhost:8000/portal/test_school/login/

---

## 📦 Docker Deployment

### **Dockerfile**
```dockerfile
FROM python:3.11-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Collect static files
RUN python manage.py collectstatic --noinput

# Run migrations and start server
CMD ["sh", "-c", "python manage.py migrate_schemas --shared && gunicorn axis_saas.wsgi:application --bind 0.0.0.0:8000"]
```

### **docker-compose.yml**
```yaml
version: '3.8'

services:
  db:
    image: postgres:15
    environment:
      POSTGRES_DB: axis_saas
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
    volumes:
      - postgres_data:/var/lib/postgresql/data
    ports:
      - "5432:5432"

  web:
    build: .
    command: gunicorn axis_saas.wsgi:application --bind 0.0.0.0:8000
    volumes:
      - .:/app
    ports:
      - "8000:8000"
    environment:
      DATABASE_URL: postgresql://postgres:postgres@db:5432/axis_saas
      SECRET_KEY: your-secret-key
      DEBUG: "False"
    depends_on:
      - db

volumes:
  postgres_data:
```

### **Run with Docker**
```bash
docker-compose up -d
docker-compose exec web python manage.py migrate_schemas --shared
docker-compose exec web python manage.py createsuperuser
```

---

## 🔐 Production Checklist

- [ ] Set DEBUG=False
- [ ] Generate strong SECRET_KEY
- [ ] Configure ALLOWED_HOSTS
- [ ] Enable HTTPS/SSL
- [ ] Set secure cookie flags
- [ ] Configure CSRF_TRUSTED_ORIGINS
- [ ] Run migrations
- [ ] Create superuser
- [ ] Collect static files
- [ ] Configure email (optional)
- [ ] Setup logging
- [ ] Configure backups
- [ ] Test all features
- [ ] Monitor performance

---

## 🐛 Troubleshooting

### **Database Connection Error**
```
Error: could not connect to server
```
**Solution**: Check DATABASE_URL format and PostgreSQL is running

### **Migration Error**
```
Error: relation "axis_saas_schoolclient" does not exist
```
**Solution**: Run `python manage.py migrate_schemas --shared`

### **Static Files Not Loading**
```
404 Not Found for /static/...
```
**Solution**: Run `python manage.py collectstatic`

### **Login Not Working**
```
Session error or authentication failed
```
**Solution**: 
- Clear browser cookies
- Check SESSION_ENGINE setting
- Verify admin credentials

### **School Not Accessible**
```
404 Not Found for /portal/school_slug/
```
**Solution**:
- Verify schema_name is correct
- Check school is active (is_active=True)
- Verify domain is created

---

## 📊 Monitoring

### **Check Application Health**
```bash
curl https://yourdomain.com/
```

### **View Logs**
```bash
# Railway
railway logs

# Docker
docker-compose logs -f web
```

### **Database Backup**
```bash
# PostgreSQL
pg_dump axis_saas > backup.sql

# Restore
psql axis_saas < backup.sql
```

---

## 🔄 Updates & Maintenance

### **Update Dependencies**
```bash
pip install --upgrade -r requirements.txt
```

### **Run Migrations After Update**
```bash
python manage.py migrate_schemas --shared
```

### **Collect Static Files**
```bash
python manage.py collectstatic --noinput
```

### **Restart Application**
```bash
# Railway
railway redeploy

# Docker
docker-compose restart web
```

---

## 📞 Support

For deployment issues:
1. Check Railway logs
2. Verify environment variables
3. Test database connection
4. Review Django error messages
5. Check browser console

---

**Version**: 1.0  
**Last Updated**: 2026-06-08

