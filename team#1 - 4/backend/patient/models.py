
from django.db import models

from account.models import User


class Patient(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)


class Reports(models.Model):
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    date_added = models.DateTimeField(auto_now_add=True)
    doc = models.ImageField(upload_to='uploads/reports/')
