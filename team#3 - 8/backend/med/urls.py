from django.urls import path

from . import views

urlpatterns = [
    path("", views.index),

    path("customers/signup", views.customer_signup, name="signup"),
    path("customers/<int:cust_id>/login", views.customer_login, name="login"),

]