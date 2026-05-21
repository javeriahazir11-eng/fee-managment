from django import forms
from .models import Student, FeeStructure, PaymentTransaction, SchoolFeeSettings

class StudentForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['name', 'father_name', 'father_cnic', 'parent_mobile', 'grade', 'section',
                  'admission_date', 'status', 'gender', 'date_of_birth', 'address', 'notes', 'custom_fee']
        widgets = {
            'admission_date': forms.DateInput(attrs={'type': 'date'}),
            'date_of_birth': forms.DateInput(attrs={'type': 'date'}),
            'address': forms.Textarea(attrs={'rows': 2}),
        }

class FeeCollectionForm(forms.Form):
    student = forms.ModelChoiceField(queryset=Student.objects.none(), label="Student")
    amount = forms.DecimalField(max_digits=10, decimal_places=2, label="Amount (₹)")
    payment_mode = forms.ChoiceField(choices=PaymentTransaction.PAYMENT_MODE_CHOICES, label="Payment Mode")
    remarks = forms.CharField(required=False, widget=forms.Textarea(attrs={'rows': 2}), label="Remarks")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['student'].queryset = Student.objects.all()

class FeeStructureForm(forms.ModelForm):
    class Meta:
        model = FeeStructure
        fields = ['grade', 'monthly_fee']
        widgets = {
            'grade': forms.TextInput(attrs={'class': 'form-control'}),
            'monthly_fee': forms.NumberInput(attrs={'class': 'form-control', 'step': '0.01'}),
        }

class FeeSettingsForm(forms.ModelForm):
    class Meta:
        model = SchoolFeeSettings
        fields = ['fee_generation_day', 'due_date_offset', 'late_fee_penalty']
        widgets = {
            'fee_generation_day': forms.NumberInput(attrs={'min': 1, 'max': 31}),
            'due_date_offset': forms.NumberInput(attrs={'min': 1}),
            'late_fee_penalty': forms.NumberInput(attrs={'step': '0.01'}),
        }

class FamilyPaymentForm(forms.Form):
    father_cnic = forms.CharField(max_length=15, label="Father CNIC")
    amount = forms.DecimalField(max_digits=10, decimal_places=2, required=False, label="Amount (leave empty for full)")
    payment_mode = forms.ChoiceField(choices=PaymentTransaction.PAYMENT_MODE_CHOICES, label="Payment Mode")
    remarks = forms.CharField(required=False, widget=forms.Textarea(attrs={'rows': 2}), label="Remarks")
