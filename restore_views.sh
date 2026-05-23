#!/bin/bash

# restore_views.sh – restores original axis_saas/views.py from backup
# Run once: ./restore_views.sh

set -e

cd ~/axis_school_sys

# Check if backup exists
if [ -f axis_saas/views.py.backup ]; then
    echo "📁 Restoring axis_saas/views.py from backup..."
    cp axis_saas/views.py.backup axis_saas/views.py
    echo "✅ Restore complete."
else
    echo "❌ Backup file axis_saas/views.py.backup not found."
    echo "   Please provide the original views.py file."
    exit 1
fi

echo ""
echo "🚀 Restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
