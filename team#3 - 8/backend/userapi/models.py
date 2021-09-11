from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.translation import ugettext_lazy as _
from django.conf import settings
from django.utils import timezone

class User(AbstractUser):
    username = models.CharField(blank=True, null=True, max_length=50)
    email = models.EmailField(_('email address'), unique=True)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username', 'first_name', 'last_name']

    def __str__(self):
        return "{}".format(self.email)

class UserProfile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='profile')
    Name = models.CharField(max_length=100)
    dob = models.DateField()
    address= models.CharField(max_length=500)
    pincode=models.IntegerField()
    phone_number = models.IntegerField()
    emergency_contact1=models.IntegerField()
    emergency_contact2=models.IntegerField()


