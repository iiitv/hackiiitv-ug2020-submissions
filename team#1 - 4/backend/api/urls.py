from django.urls import path, include

from .views import logout, login, doctor_registration, patient_register, ping, me

urlpatterns = [
    path('ping', ping, name='Ping'),
    path('me', me, name='Me'),
    path('login', login, name='Login'),
    path('logout', logout, name='Logout'),
    path('doc-register', doctor_registration, name='Doc Registration'),
    path('register', patient_register, name='Patient Registration'),
]
