from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('ajax/get_contract/', views.get_contract, name='get_contract'),
    path('api/contract/get/<path:number>', views.ContractInfoView.as_view(), name="get_contract_api"),
    path('api/balance/get/<str:existing_date>/<path:number>', views.ContractBalanceView.as_view(), name="get_balance_api"),
    path('api/rate/get/<path:number>', views.CurrentRateView.as_view(), name="get_rate_api")
]