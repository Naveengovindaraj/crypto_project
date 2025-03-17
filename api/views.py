import requests
from rest_framework import generics
from rest_framework.response import Response
from rest_framework.views import APIView
from .models import Organization, CryptoPrice
from .serializers import OrganizationSerializer, CryptoPriceSerializer
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework.permissions import IsAuthenticated

from rest_framework.pagination import PageNumberPagination

class CryptoPricePagination(PageNumberPagination):
    page_size = 10
    page_size_query_param = "page_size"
    max_page_size = 100

class OrganizationListCreateView(generics.ListCreateAPIView):
    queryset = Organization.objects.all()
    serializer_class = OrganizationSerializer
    authentication_classes = [JWTAuthentication]
    permission_classes = [IsAuthenticated]

class OrganizationDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Organization.objects.all()
    serializer_class = OrganizationSerializer
    authentication_classes = [JWTAuthentication]
    permission_classes = [IsAuthenticated]

class CryptoPriceListView(generics.ListAPIView):
    serializer_class = CryptoPriceSerializer
    authentication_classes = [JWTAuthentication]
    permission_classes = [IsAuthenticated]
    pagination_class = CryptoPricePagination

    def get_queryset(self):
        org_id = self.request.query_params.get("org_id")
        if org_id:
            return CryptoPrice.objects.filter(org_id=org_id).order_by("-timestamp")
        return CryptoPrice.objects.all().order_by("-timestamp")

class FetchCryptoPricesView(APIView):
    authentication_classes = [JWTAuthentication]
    permission_classes = [IsAuthenticated]

    def get(self, request):
        url = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd"
        response = requests.get(url).json()
        return Response(response)

from api.tasks import fetch_crypto_prices

class TriggerCryptoPriceView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        fetch_crypto_prices.delay()  
        return Response({"message": "Crypto Price Fetching Started!"})

