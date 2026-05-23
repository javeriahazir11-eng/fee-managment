#!/bin/bash

# fix_middleware.sh – removes SafeSessionMiddleware from settings.py
# Run once: ./fix_middleware.sh

set -e

cd ~/axis_school_sys

# Backup settings.py
cp axis_saas/settings.py axis_saas/settings.py.backup_middleware

# Comment out the line with SafeSessionMiddleware
sed -i '/axis_saas.middleware_session.SafeSessionMiddleware/s/^/#/' axis_saas/settings.py

echo "✅ SafeSessionMiddleware disabled (commented out)."
echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
