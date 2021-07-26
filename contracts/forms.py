from django import forms
from .models import Contract

class ContractForm(forms.Form):
    number = forms.CharField(max_length=10)

    class Meta:
        model = Contract
        fields = ['number']