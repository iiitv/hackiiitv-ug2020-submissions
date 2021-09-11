from django.urls import path, include

from .views import logout, login, doctor_registration, patient_register, ping

urlpatterns = [
    path('ping', ping, name='Ping'),
    path('login', login, name='Login'),
    path('doc-regiter', doctor_registration, name='Doc Registration'),
    path('register', patient_register, name='Patient Registration'),
]
