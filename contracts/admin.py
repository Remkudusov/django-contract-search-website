from django.contrib import admin
from .models import Status, Address, Rate, Contract, RateContract, Money_admission, Rate_accrual

admin.site.register(Status)
admin.site.register(Address)
admin.site.register(Rate)
admin.site.register(Contract)
admin.site.register(RateContract)
admin.site.register(Money_admission)
admin.site.register(Rate_accrual)