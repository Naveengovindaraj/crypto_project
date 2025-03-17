import os
import django

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "crypto_project.settings")
django.setup()

import requests
from celery import shared_task
from .models import Organization, CryptoPrice

@shared_task
def fetch_crypto_prices():
    url = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd"
    response = requests.get(url).json()

    btc_price = response.get("bitcoin", {}).get("usd")
    eth_price = response.get("ethereum", {}).get("usd")

    if btc_price and eth_price:
        for org in Organization.objects.all():
            CryptoPrice.objects.create(org=org, symbol="BTC", price=btc_price)
            CryptoPrice.objects.create(org=org, symbol="ETH", price=eth_price)

