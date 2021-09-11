
from django.db import models
from django.core.validators import RegexValidator
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    name = models.CharField(max_length=100, verbose_name='Name')
    banned = models.BooleanField(default=False)
    username = models.CharField(max_length=12, verbose_name='Aadhaar number', validators=[
        RegexValidator(regex=r'^\d{12}$')
    ], unique=True)

