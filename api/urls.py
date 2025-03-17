from django.urls import path
from .views import (
    OrganizationListCreateView, OrganizationDetailView,
    CryptoPriceListView, FetchCryptoPricesView, TriggerCryptoPriceView
)

urlpatterns = [
    path("organizations/", OrganizationListCreateView.as_view(), name="org-list"),
    path("organizations/<uuid:pk>/", OrganizationDetailView.as_view(), name="org-detail"),
    path("crypto-prices/", CryptoPriceListView.as_view(), name="crypto-price-list"),
    path("fetch-prices/", FetchCryptoPricesView.as_view(), name="fetch-prices"),
    path("trigger-fetch/", TriggerCryptoPriceView.as_view(), name="trigger-fetch"),
]
