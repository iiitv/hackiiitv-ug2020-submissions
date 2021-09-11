
from django.db import models
from django.core.validators import RegexValidator
from django.contrib.auth.models import AbstractUser

from django.utils.translation import ugettext_lazy as _


class User(AbstractUser):
    USERNAME_FIELD = 'email'
    email = models.EmailField(_('email address'), unique=True)
    REQUIRED_FIELDS = []
    name = models.CharField(max_length=100, verbose_name='Name')
    banned = models.BooleanField(default=False)
    username = models.CharField(max_length=12, verbose_name='Aadhaar number', validators=[
        RegexValidator(regex=r'^\d{12}$')
    ], unique=True)

