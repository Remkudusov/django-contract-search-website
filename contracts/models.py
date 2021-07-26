from django.db import models

class Status(models.Model):
    name = models.CharField(max_length=50)
    description = models.CharField(max_length=500)

class Address(models.Model):
    city = models.CharField(max_length=100)
    street = models.CharField(max_length=100)
    home = models.IntegerField()
    flat = models.IntegerField()

class Rate(models.Model):
    name = models.CharField(max_length=50)
    price = models.FloatField(max_length=6)

class Contract(models.Model):
    number = models.CharField(max_length=10, primary_key=True)
    surname = models.CharField(max_length=50)
    name = models.CharField(max_length=50)
    patronymic = models.CharField(max_length=50)
    individual = models.BooleanField()
    status = models.ForeignKey(Status, on_delete=models.SET_NULL, null=True)
    address = models.ForeignKey(Address, on_delete=models.SET_NULL, null=True)

class RateContract(models.Model):
    contract = models.ForeignKey(Contract, on_delete=models.SET_NULL, null=True)
    rate = models.ForeignKey(Rate, on_delete=models.SET_NULL, null=True)
    begin_date = models.DateField()
    end_date = models.DateField()

class Money_admission(models.Model):
    contract = models.ForeignKey(Contract, on_delete=models.SET_NULL, null=True)
    sum = models.FloatField(max_length=6)
    date = models.DateField()

class Rate_accrual(models.Model):
    rate_contract = models.ForeignKey(RateContract, on_delete=models.SET_NULL, null=True)
    sum = models.FloatField(max_length=6)
    date = models.DateField()