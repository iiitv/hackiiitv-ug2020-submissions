from django.urls import path

from . import views

urlpatterns = [
    path("", views.index),

    path("customers/signup", views.customer_signup, name="signup"),
    path("customers/login", views.customer_login, name="login"),
    path("customers/send-sms", views.send_sms, name= "sendsms"),

]