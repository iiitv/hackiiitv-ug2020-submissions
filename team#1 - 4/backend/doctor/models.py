
from django.core.validators import MinValueValidator, MaxValueValidator, RegexValidator
from django.db import models

from account.models import User


class Doctor(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    doc_id = models.BigAutoField(primary_key=True)
    specialization = models.TextField(verbose_name='Specialization')
    address = models.TextField(verbose_name='Clinic Address')
    profile_pic = models.ImageField(upload_to='uploads/profile_pic/')
    patient_per_hr = models.IntegerField(validators=[MinValueValidator(1), MaxValueValidator(12)])
    phone_number = models.CharField(validators=[
        RegexValidator(regex=r'^\d{10}$')
    ], max_length=10)
    description = models.TextField(verbose_name='Description')


class Available(models.Model):

    class Meta:
        unique_together = [('doc', 'day')]

    doc = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    day = models.IntegerField(validators=[MinValueValidator(1), MaxValueValidator(7)], verbose_name='Day')
    start = models.TimeField(auto_now=False, auto_now_add=False)
    end = models.TimeField(auto_now=False, auto_now_add=False)


class Degree(models.Model):
    doc = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    file = models.ImageField(upload_to='uploads/degree/')
