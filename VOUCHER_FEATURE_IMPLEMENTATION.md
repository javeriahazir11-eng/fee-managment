# Voucher Feature Implementation Documentation

## Overview
Implemented a comprehensive fee voucher system for the student profile management system that allows school admins to manually generate monthly fee vouchers with custom amounts and additional charges.

## Database Changes

### New Model: FeeVoucher
- **File**: `axis_saas/models.py`
- **Migration**: `axis_saas/migrations/0011_feevoucher.py`
- **Fields**:
  - `student` (ForeignKey to Student)
  - `fee_record` (OneToOneField to FeeRecord)
  - `month`, `year` (PositiveSmallIntegerField)
  - `base_fee` (DecimalField) - Fee from class structure
  - `custom_fee` (DecimalField) - Custom fee for this month only
  - `extra_charges` (JSONField) - List of charges {title, amount}
  - `save_charges_for_future` (BooleanField)
  - `status` (CharField) - generated/paid_partial/paid_full
  - `receipt_number` (CharField) - Auto-generated unique number
  - `created_at`, `updated_at` (DateTimeField)
- **Properties**:
  - `total_amount` - Returns total of custom_fee + charges
- **Unique Constraint**: (student, month, year)

### Updated Model: Student
- `default_extra_charges` field already exists (JSONField)
- Stores charges to be pre-filled for future manual generations

## API Endpoints

### 1. Voucher Status API
**URL**: `/portal/<schema_name>/api/student/<student_id>/voucher-status/`
**Method**: GET
**Response**:
```json
{
  "exists": boolean,
  "can_edit": boolean,
  "student_name": string,
  "student_roll": string,
  "grade": string,
  "section": string,
  "default_fee": number,
  "default_charges": array,
  "total_pending": number,
  // If exists=true:
  "amount": number,
  "extra_charges": array,
  "receipt_number": string,
  "fee_amount": number,
  "charges": array,
  "generated_on": string (YYYY-MM-DD),
  "due_date": string (YYYY-MM-DD),
  "status": string
}
```

### 2. Generate Voucher API
**URL**: `/portal/<schema_name>/api/student/<student_id>/generate-voucher/`
**Method**: POST
**Request**:
```json
{
  "custom_amount": number (optional),
  "charges": array[{title, amount}],
  "save_default_charges": boolean
}
```
**Response**:
```json
{
  "success": true,
  "voucher": {
    "receipt_number": string,
    "student_name": string,
    "student_roll": string,
    "grade": string,
    "section": string,
    "month": number,
    "year": number,
    "fee_amount": number,
    "charges": array,
    "total_pending": number,
    "generated_on": string,
    "due_date": string,
    "can_edit": true
  }
}
```

### 3. Update Voucher API
**URL**: `/portal/<schema_name>/api/student/<student_id>/update-voucher/`
**Method**: POST
**Request**: Same as generate-voucher
**Response**: Same as generate-voucher with can_edit based on payment status

## Frontend Components

### Desktop Template
- **File**: `templates/tenant/student_profile.html`
- Contains: Fee Voucher button in header
- Global variables: `window.studentId`, `window.schema`
- Button handler: Calls `openVoucherModal()`

### Mobile Template
- **File**: `templates/mobile/student_profile.html`
- Contains: Fee Voucher button in profile actions
- Same global variables and handlers as desktop

### Voucher Modal
- **File**: `templates/tenant/voucher_modal.html` (shared by both desktop and mobile)
- Components:
  - Voucher generation/edit form modal
  - Voucher display modal
  - CSS styling for both modals
  - JavaScript handlers for all 3 scenarios

## Three Scenarios Implementation

### Scenario 1: No Fee Generated for Current Month
**Trigger**: User clicks "Fee Voucher" button, no voucher exists
**Flow**:
1. `openVoucherModal()` calls `loadVoucherStatus()`
2. API returns `exists: false`
3. `showVoucherForm(data, false)` displays generation form
4. Form shows:
   - Default fee from class structure
   - Option to customize fee for this month only
   - Add charges button to add custom charges
   - Checkbox to save charges for future
   - Display of pending fees from previous months
   - Cancel/Generate buttons
5. User submits → `submitVoucher()` calls generate API
6. API creates FeeRecord and FeeVoucher
7. `showVoucherDisplay()` shows generated voucher with can_edit=true
8. Voucher display includes:
   - Student details
   - Fee breakdown (base + charges)
   - Total amount
   - Pending fees note
   - 3-dot menu: Print, Save, Edit

### Scenario 2: Fee Generated but Unpaid/Partially Paid
**Trigger**: User clicks "Fee Voucher" button, voucher exists and unpaid
**Flow**:
1. `openVoucherModal()` calls `loadVoucherStatus()`
2. API returns `exists: true, can_edit: true` (paid_amount == 0)
3. `showVoucherForm(data, true)` displays edit form
4. Form pre-fills with:
   - Current custom fee (or base fee)
   - Current charges
   - Default charges checkbox
5. User can modify and submit → `submitVoucher()` calls update API
6. API updates FeeRecord and FeeVoucher
7. `showVoucherDisplay()` shows updated voucher with can_edit=true
8. Edit button available in 3-dot menu

### Scenario 3: Fee Generated and Paid (Fully or Partially)
**Trigger**: User clicks "Fee Voucher" button, voucher exists and paid
**Flow**:
1. `openVoucherModal()` calls `loadVoucherStatus()`
2. API returns `exists: true, can_edit: false` (paid_amount > 0)
3. `showVoucherDisplay(data, false)` displays voucher directly
4. Closes form modal (users stay on display)
5. 3-dot menu only shows: Print, Save (no Edit)
6. Edit button is hidden

## JavaScript Functions (voucher_modal.html)

### Main Functions
- `openVoucherModal(studentId, schema)` - Opens voucher modal
- `loadVoucherStatus(studentId, schema)` - Fetches current status
- `showVoucherForm(data, isEdit)` - Shows generation/edit form
- `showVoucherDisplay(voucherData, schema, studentId, canEdit)` - Shows voucher display
- `submitVoucher(studentId, schema, isEdit)` - Submits form to API

### Helper Functions
- `addCharge()` - Adds a new charge field
- `removeCharge(btn)` - Removes a charge field
- `getChargesFromForm()` - Extracts charges from form
- `getCsrfToken()` - Gets CSRF token from cookies
- `closeVoucherModal()` - Closes form modal
- `closeVoucherDisplay()` - Closes display modal

### Feature Functions
- **Print**: `printVoucherBtn.addEventListener()` - Opens print dialog
- **Download**: Uses html2canvas library to convert voucher to image

## Styling

### CSS Classes
- `.voucher-form` - Main form container
- `.form-field` - Individual form fields
- `.charge-item` - Individual charge row
- `.voucher-receipt` - Receipt display
- `.receipt-header` - School name and voucher number
- `.student-info` - Student details grid
- `.fee-details` - Fee breakdown table
- `.pending-note` - Warning for pending fees
- `.voucher-actions` - Action buttons (Print, Save, Edit)
- `.modal-header` - Modal header with title and close button

## Data Flow

```
Student Profile Page
  ↓
Fee Voucher Button Click
  ↓
openVoucherModal(studentId, schema)
  ↓
loadVoucherStatus() [GET API]
  ↓
Three Branches:
  1. No voucher → showVoucherForm(false) → Generation flow
  2. Unpaid → showVoucherForm(true) → Edit flow
  3. Paid → showVoucherDisplay(false) → View only flow

For Generation/Edit:
  User fills form
  ↓
submitVoucher() [POST API]
  ↓
showVoucherDisplay(true/can_edit)

For View Only:
  showVoucherDisplay(false)
```

## Security Considerations

1. **CSRF Protection**: Uses Django's CSRF token in POST requests
2. **Schema Isolation**: All queries use `schema_context()` for tenant isolation
3. **Authentication**: API views wrapped with `login_required_for_schema()` decorator
4. **Edit Prevention**: Can only edit unpaid vouchers (checked server-side)
5. **Decimal Precision**: Uses Python Decimal for financial calculations

## Testing Checklist

### Scenario 1 (No Fee Generated)
- [ ] Fee Voucher button visible in student profile
- [ ] Clicking opens form with default fee displayed
- [ ] Can add custom fee
- [ ] Can add/remove charges
- [ ] Can save charges for default
- [ ] Form shows total pending correctly
- [ ] Generate button creates FeeRecord and FeeVoucher
- [ ] Voucher displays after generation
- [ ] Edit button visible on voucher
- [ ] Print button opens print dialog
- [ ] Save button downloads voucher as image

### Scenario 2 (Unpaid/Partial)
- [ ] Clicking Fee Voucher shows edit form (not generation form)
- [ ] Form pre-fills with current data
- [ ] Can modify fee and charges
- [ ] Update button updates FeeRecord and FeeVoucher
- [ ] Voucher displays with updated data
- [ ] Edit button still visible
- [ ] Print/Save work correctly

### Scenario 3 (Paid/Fully Paid)
- [ ] Clicking Fee Voucher shows voucher directly
- [ ] Form modal never appears
- [ ] Edit button hidden
- [ ] Only Print and Save buttons visible
- [ ] Cannot modify voucher

### Mobile Testing
- [ ] Responsive layout on mobile screens
- [ ] Modals display properly
- [ ] Form fields easily accessible
- [ ] Print/Save buttons work on mobile
- [ ] Touch interactions smooth

## Future Enhancements

1. Email voucher to parents
2. SMS notification
3. Bulk voucher generation
4. Recurring charges automation
5. Payment reminders based on due date
6. Voucher cancellation/void
7. Export to Excel
8. Digital signature
9. QR code on voucher
10. Integration with payment gateway
