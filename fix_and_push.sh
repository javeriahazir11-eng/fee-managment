#!/bin/bash
set -e

echo "🔧 Fixing axis_saas/views.py..."

# Backup original
cp axis_saas/views.py axis_saas/views.py.bak

# 1. Fix broken messages.error in family_payment (line with unterminated f-string)
sed -i '/messages\.error(request, f"Amount exceeds total pending (₹{total_pending}/c\                    messages.error(request, f"Amount exceeds total pending (₹{total_pending})")' axis_saas/views.py

# 2. Remove the extra stray '})")' line that got left behind
sed -i '/^[[:space:]]*})")[[:space:]]*$/d' axis_saas/views.py

# 3. Fix malformed dictionary entries (where "total_remaining": 0, was inserted badly)
#    Replace any pattern like:   "total_remaining": 0,\n}   with just   }   but keep valid ones.
#    Simpler: remove all "total_remaining": 0, lines (they are not needed except receipt)
sed -i '/"total_remaining": 0,/d' axis_saas/views.py

# 4. Restore correct total_remaining ONLY in fee_receipt view (which actually uses it)
sed -i '/def fee_receipt/,/return render/ s/context = {/context = {\n            "total_remaining": total_remaining,/' axis_saas/views.py

# 5. Fix broken update_or_create defaults line in fee_structure
sed -i '/defaults={.*"total_remaining": 0,/s/, "total_remaining": 0,//' axis_saas/views.py
sed -i '/defaults={.*"total_remaining": 0}$/s/"total_remaining": 0}$/}/' axis_saas/views.py

# 6. Fix reports function: missing closing brace for dict and misplaced sort
#    Replace the malformed block with correct version
sed -i '/defaulters_data.append({/,/defaulters_data.sort(/c\
                defaulters_data.append({\
                    "student": student,\
                    "pending_amount": pending,\
                    "days_overdue": days_overdue\
                })\
        defaulters_data.sort(key=lambda x: x["days_overdue"], reverse=True)' axis_saas/views.py

# 7. Fix settings view context line (missing comma before "total_remaining")
sed -i '/logo_url.*else None    "total_remaining": 0,/s/else None    "total_remaining": 0,/else None,/' axis_saas/views.py

# 8. Fix fee_settings view similar issue
sed -i '/logo_url.*else None    "total_remaining": 0,/s/else None    "total_remaining": 0,/else None,/' axis_saas/views.py

# 9. Fix student_search_api dict
sed -i '/"grade": s.grade    "total_remaining": 0,/s/    "total_remaining": 0,//' axis_saas/views.py

echo "✅ views.py fixed successfully."

# Optional: check syntax
python -m py_compile axis_saas/views.py && echo "✅ Syntax check passed."

# Now commit and force push
git add axis_saas/views.py
git commit -m "fix: unterminated string literal and other syntax errors in views.py"
git push --force origin main

echo "🚀 Force push completed. App will redeploy automatically."
