# Create your models here.
from datetime import datetime
from django.db.models.fields import DateTimeField

from django.utils import timezone
from django.db import models, connection 


cursor = connection.cursor()


class CustomerDetails(models.Model):
    """ Represents customer details """

    cust_email = models.CharField(max_length=64,default="")
    password = models.CharField(max_length=64,default="")
    name = models.CharField(max_length=100,default="")
    address = models.TextField(default="")
    age = models.IntegerField(default=30)
    pincode = models.IntegerField(default=00000)
    phone_number = models.CharField(max_length=10,default="")
    emergency_contact1 = models.CharField(max_length=10,default="")
    emergency_contact2 = models.CharField(max_length=10,default="")

    class Meta:
        verbose_name_plural = "Customer Details"

