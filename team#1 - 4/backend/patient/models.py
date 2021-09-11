
from django.db import models

from account.models import User


class Patient(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
