#!/bin/bash
# =============================================================================
# AXIS School System – Production Deployment Prep (Hugging Face Spaces)
# =============================================================================
# This script:
# 1. Updates settings.py for production (DEBUG=False, static/media, DB env)
# 2. Adds WhiteNoise, dj-database-url, gunicorn, psycopg2-binary to requirements
# 3. Creates Dockerfile, .dockerignore, start.sh for HF Spaces
# 4. Adds a runtime.txt for Python version
# =============================================================================

set -e

echo "🚀 Starting deployment preparation..."

# 1. Backup important files
cp axis_saas/settings.py axis_saas/settings.py.bak
cp requirements.txt requirements.txt.bak 2>/dev/null || true

# 2. Ensure requirements.txt has necessary packages
REQ_FILE="requirements.txt"
touch "$REQ_FILE"

for pkg in "gunicorn" "whitenoise" "psycopg2-binary" "dj-database-url" "django-environ"; do
    if ! grep -q "^$pkg==" "$REQ_FILE" && ! grep -q "^$pkg$" "$REQ_FILE"; then
        echo "$pkg" >> "$REQ_FILE"
        echo "➕ Added $pkg to requirements.txt"
    else
        echo "✅ $pkg already in requirements.txt"
    fi
done

# 3. Patch settings.py
cat >> axis_saas/settings.py << 'EOF'

# ---------- PRODUCTION OVERRIDES (added by deploy_prep.sh) ----------
import dj_database_url
import os

DEBUG = False

ALLOWED_HOSTS = ['*']   # HF Space ka domain automatically allow ho jayega

# Static files (WhiteNoise)
STATIC_URL = '/static/'
STATIC_ROOT = os.path.join('/data', 'staticfiles')   # HF persistent storage
MEDIA_ROOT = os.path.join('/data', 'media')
MEDIA_URL = '/media/'

# WhiteNoise middleware (must be high up)
MIDDLEWARE.insert(1, 'whitenoise.middleware.WhiteNoiseMiddleware')

STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

# Database from environment variable
DATABASES['default'] = dj_database_url.config(conn_max_age=600, ssl_require=True)

# Session & security (adjust as needed)
CSRF_TRUSTED_ORIGINS = ['https://*.hf.space', 'http://localhost:8000']
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SECURE = True
# --------------------------------------------------------------------
EOF

echo "✅ settings.py updated for production"

# 4. Create Dockerfile
cat > Dockerfile << 'EOF'
FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

# Install system dependencies (for psycopg2, etc.)
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc libpq-dev && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Create persistent directories
RUN mkdir -p /data/staticfiles /data/media

# Collect static files (shared schema)
RUN python manage.py collectstatic --noinput

# Copy entrypoint script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 7860

CMD ["/start.sh"]
EOF

echo "✅ Dockerfile created"

# 5. Create start.sh (runs migrations and starts gunicorn)
cat > start.sh << 'EOF'
#!/bin/bash
set -e

echo "Running migrations on public schema..."
python manage.py migrate_schemas --shared

echo "Running migrations on tenant schemas (if any)..."
python manage.py migrate_schemas --tenants

echo "Starting Gunicorn..."
gunicorn axis_saas.wsgi:application --bind 0.0.0.0:7860 --workers 3 --threads 2
EOF
chmod +x start.sh
echo "✅ start.sh created"

# 6. .dockerignore
cat > .dockerignore << 'EOF'
.git
__pycache__
*.pyc
*.log
.env
venv
axis_saas/settings.py.bak
requirements.txt.bak
EOF
echo "✅ .dockerignore created"

# 7. runtime.txt (optional but good)
echo "python-3.11" > runtime.txt

echo ""
echo "🎉 All files prepared! Now follow the deployment steps below."
