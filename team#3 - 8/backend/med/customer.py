from med.models import CustomerDetails
from datetime import datetime


class Customer:  

    def customer_signup(self, data):

        signup = CustomerDetails(
            cust_email=data['cust_email'], 
            password=data['password'],
            name = data['name'],
            address = data['address'],
            age = data['age'],
            pincode = data['pincode'],
            phone_number = data['phone_number'],
            emergency_contact1 = data['emergency_contact1'],
            emergency_contact2 = data['emergency_contact2']

            )
        signup.save()
        return signup

    def customer_login(self, email):

        login = CustomerDetails.objects.get(cust_email=email)
        return login

    