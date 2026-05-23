#!/bin/bash

# fix_session.sh – creates missing Django session directory
# Run this once from the project root: ./fix_session.sh

SESSION_DIR="/tmp/django_sessions"

echo "🔧 Fixing Django session storage path..."

if [ -d "$SESSION_DIR" ]; then
    echo "✓ Directory already exists: $SESSION_DIR"
else
    echo "📁 Creating directory: $SESSION_DIR"
    mkdir -p "$SESSION_DIR"
fi

# Grant full read/write access (safe for local development)
chmod 777 "$SESSION_DIR"

echo "✅ Permissions set: $(ls -ld $SESSION_DIR)"

# Optional: verify that Django can write a test file
TEST_FILE="$SESSION_DIR/test_write_$$"
if touch "$TEST_FILE" 2>/dev/null; then
    rm -f "$TEST_FILE"
    echo "🎉 Write test passed – session storage is ready."
else
    echo "⚠️  Warning: cannot write to $SESSION_DIR. Check your user permissions."
fi

echo ""
echo "🚀 Now restart your Django server:"
echo "   source venv/bin/activate"
echo "   python3 manage.py runserver"
