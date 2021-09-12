from med.customer import Customer
import json

from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_http_methods


def index(request):
    return HttpResponse("Hello, Welcome to the FoodStop!")


@csrf_exempt
@require_http_methods(["POST"])
def customer_signup(request):
    json_data = json.loads(request.body)
    print(json_data)
    customer_details = Customer.customer_signup(request, json_data)
    response = {
        "cust_id": customer_details.id,
        "cust_email": customer_details.cust_email,
        "password": customer_details.password,
        "name": customer_details.name,
        "address": customer_details.address,
        "age" : int(customer_details.age),
        "pincode": int(customer_details.pincode),
        "phone_number": customer_details.phone_number,
        "emergency_contact1": customer_details.emergency_contact1,
        "emergency_contact2": customer_details.emergency_contact2
        }
    return JsonResponse(response)

@csrf_exempt
@require_http_methods(["POST"]) 
def customer_login(request):
    json_data = json.loads(request.body)
    print(json_data)
    customer = Customer.customer_login(request, json_data['cust_email'])
    response = {
        "cust_id": customer.id,
        "cust_email": customer.cust_email,
        "name": customer.name
    }
    return JsonResponse(response, safe=False)

