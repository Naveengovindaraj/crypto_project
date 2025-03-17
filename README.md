
Organization CRUD APIs  
Crypto Price Fetching API  
Celery + Redis for Background Task Scheduling  
JWT Authentication with Org-based Access Control  
Pagination
Store Historical Price Data  
Django Signals for Logging  

- Django
- Django Rest Framework
- Celery
- Redis
- Simple JWT Authentication
- CoinGecko API for Crypto Prices  

find crytpo_management.sql file attached on this folder

1.pip install -r requirements.txt

2.python manage.py migrate

3.redis-server

4.celery -A crypto_project worker --loglevel=info

5.python manage.py runserver

jwt token

6.POST http://127.0.0.1:8000/api/token/

{
  "username": "admin",
  "password": "admin"
}

API	Method	Endpoint
1.Create Organization	POST	/api/organizations/

2.Get All Organizations	GET	/api/organizations/

3.Update Organization	PUT	/api/organizations/<org_id>/

4.Delete Organization	DELETE	/api/organizations/<org_id>/

API	Method	Endpoint
1.Fetch Crypto Prices	GET	/api/crypto-prices/?org_id=<org_id>

2.Trigger Celery Task Manually	POST	/api/trigger-fetch/


http://127.0.0.1:8000/api/crypto-prices/?org_id=<org_id>&page=1&page_size=5

crypto prices

http://127.0.0.1:8000/api/fetch-prices/

crypto prices by organizations

http://127.0.0.1:8000/api/crypto-prices/?org_id=<org_id>

