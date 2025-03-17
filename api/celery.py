import os
from celery import Celery

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "crypto_project.settings")

app = Celery("crypto_project")
app.config_from_object("django.conf:settings", namespace="CELERY")

# ✅ This fixes the Windows compatibility issue
if os.name == 'nt':
    app.conf.update(
        worker_pool='solo',  # 👈 This line fixes the error
    )

app.autodiscover_tasks()
