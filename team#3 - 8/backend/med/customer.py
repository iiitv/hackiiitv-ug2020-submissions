from med.models import CustomerDetails
from datetime import datetime
import requests


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

    def send_sms(self, email):

        login = CustomerDetails.objects.get(cust_email=email)
        url = "https://www.fast2sms.com/dev/bulk"
        message= f"{login.name} needs medical emergency and is admitted to Hospital LifeLine. Please reach immediately."
        emergency_contact1= login.emergency_contact1
        emergency_contact2= login.emergency_contact2

        payload = f"sender_id=FSTSMS&message={message}&language=english&route=p&numbers={emergency_contact1},{emergency_contact2}"
        headers = {
        'authorization': "1nyqRIL5gJ6ehWjTc7pBvlbr2UfsdSHawiu8xo4COAXYVGQmE9a8gFKBzTHOCIc5ZexmvysrA10WDbJn",
        'Content-Type': "application/x-www-form-urlencoded",
        'Cache-Control': "no-cache",
        }
        response = requests.request("POST", url, data=payload, headers=headers)
        print(response.text)
        return response.text
        
    