from django.shortcuts import render
from django.http import HttpResponseNotFound, JsonResponse, HttpResponseBadRequest
from django.views.decorators.csrf import csrf_protect

from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import generics

import re
from datetime import datetime, date

from .forms import ContractForm
from .models import Contract, Money_admission, Rate_accrual, RateContract

class ContractInfoView(APIView):
    permission_classes = (IsAuthenticated, )

    def get(self, request, number, *args, **kwargs):
        try:
            contract = Contract.objects.get(number=number)
        except Contract.DoesNotExist:
            print(number)
            answer = {
                'error': 'Контракт не найден!',
            }
            return Response(answer)

        data = {
            'number': contract.number,
            'surname': contract.surname,
            'name': contract.name,
            'patronymic': contract.patronymic,
            'status': contract.status.name,
            'city': contract.address.city,
            'street': contract.address.street,
            'home': contract.address.home,
            'flat': contract.address.flat,
        }

        return Response(data)

class ContractBalanceView(APIView):
    permission_classes = (IsAuthenticated, )

    def get(self, request, existing_date, number, *args, **kwargs):
        try:
            contract = Contract.objects.get(number=number)
        except Contract.DoesNotExist:
            answer = {
                'error': 'Контракт не найден!',
            }
            return Response(answer)

        match = re.search(r'\d{2}-\d{2}-\d{4}', existing_date)
        date = datetime.strptime(match.group(), '%d-%m-%Y').date()

        balance = 0
        mounths = 0
        rate_contracts = RateContract.objects.filter(contract=contract)
        for rate_contract in rate_contracts:
            if rate_contract.end_date < date:
                mounths += int((rate_contract.end_date - rate_contract.begin_date).days / 30)
                if int((rate_contract.end_date - rate_contract.begin_date).days) % 30 > 0:
                    mounths += 1
            elif rate_contract.end_date > date and rate_contract.begin_date < date:
                mounths += int((date - rate_contract.begin_date).days / 30)
                if int((date - rate_contract.begin_date).days) % 30 > 0:
                    mounths += 1

            balance -= mounths * int(rate_contract.rate.price)

            rate_accruals = Rate_accrual.objects.filter(rate_contract=rate_contract)
            for rate_accrual in rate_accruals:
                if rate_accrual.date <= date:
                    balance -= int(rate_accrual.sum)

            mounths = 0

        money_admissions = Money_admission.objects.filter(contract=contract)
        for money_admission in money_admissions:
            if money_admission.date <= date:
                balance += int(money_admission.sum)

        data = {
            'date': existing_date,
            'number': number,
            'balance': balance,
        }

        return Response(data)

class CurrentRateView(APIView):
    permission_classes = (IsAuthenticated, )

    def get(self, request, number, *args, **kwargs):
        try:
            contract = Contract.objects.get(number=number)
        except Contract.DoesNotExist:
            answer = {
                'error': 'Контракт не найден!',
            }
            return Response(answer)

        current_date = date.today()

        rate_contracts = RateContract.objects.filter(contract=contract)

        active_rate_exists = False
        for rate_contract in rate_contracts:
            if current_date > rate_contract.begin_date and current_date < rate_contract.end_date:
                current_rate_contract = rate_contract
                active_rate_exists = True

        if active_rate_exists:
            data = {
                'name': current_rate_contract.rate.name,
                'end_date': current_rate_contract.end_date,
            }
        else:
            data = {
                'error': 'У пользователя нет активных тарифов!',
            }

        return Response(data)

def index(request):
    return render(request, "contracts/index.html")

@csrf_protect
def get_contract(request):
    if (request.is_ajax and request.method == "POST"):
        form = ContractForm(request.POST)

        if form.is_valid():
            try:
                contract = Contract.objects.get(number=form.cleaned_data['number'])
                status = contract.status
                address = contract.address
                rate_contracts = RateContract.objects.filter(contract=contract)
                money_admissions = Money_admission.objects.filter(contract=contract)
                rate_accruals = []

                for rate_contract in rate_contracts:
                    rate_contract_accruals = Rate_accrual.objects.filter(rate_contract=rate_contract)
                    for rate_contract_accrual in rate_contract_accruals:
                        rate_accruals.append(rate_contract_accrual)

                contract_response = {
                    'number': contract.number,
                    'surname': contract.surname,
                    'name': contract.name,
                    'patronymic': contract.patronymic,
                    'individual': contract.individual,
                    'status': status.name
                }

                status_response = {
                    'name': status.name,
                    'description': status.description
                }

                address_response = {
                    'city': address.city,
                    'street': address.street,
                    'home': address.home,
                    'flat': address.flat
                }

                rates_response = []
                for rate_contract in rate_contracts:
                    rate_data = {
                        'name': rate_contract.rate.name,
                        'price': rate_contract.rate.price,
                        'begin_date': rate_contract.begin_date.strftime("%d.%m.%Y"),
                        'end_date': rate_contract.end_date.strftime("%d.%m.%Y")
                    }
                    rates_response.append(rate_data)

                money_admissions_response = []
                for i in money_admissions:
                    money_admissions_data = {
                        'sum': i.sum,
                        'date': i.date.strftime("%d.%m.%Y")
                    }
                    money_admissions_response.append(money_admissions_data)

                rate_accruals_response = []
                for rate_accrual in rate_accruals:
                    rate_accruals_data = {
                        'rate_name': rate_accrual.rate_contract.rate.name,
                        'sum': rate_accrual.sum,
                        'date': rate_accrual.date.strftime("%d.%m.%Y")
                    }
                    rate_accruals_response.append(rate_accruals_data)

                response = {
                    'contract': contract_response,
                    'status': status_response,
                    'address': address_response,
                    'rates': rates_response,
                    'money_admissions': money_admissions_response,
                    'rate_accruals': rate_accruals_response
                }

                return JsonResponse(response, status=200)
            except Contract.DoesNotExist:
                return JsonResponse({'answer': 'Данные не найдены!'}, status=404)
        else:
            return JsonResponse({'answer': 'Ошибка формы!'}, status=500)
    else:
        return JsonResponse({'answer': 'Ошибка запроса!'}, status=500)