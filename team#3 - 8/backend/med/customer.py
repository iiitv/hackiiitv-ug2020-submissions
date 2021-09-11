from med.models import CustomerDetails
from datetime import datetime


class Customer:  

    def customer_signup(self, data):

        signup = CustomerDetails(
            cust_email=data['cust_email'], 
            password=data['password'],
            name = data['name'],
            address = data['address'],
            dob = datetime.strptime(data['dob'], "%d/%m/%y"),
            pincode = data['pincode'],
            phone_number = data['phone_number'],
            emergency_contact1 = data['emergency_contact1'],
            emergency_contact2 = data['emergency_contact2']

            )
        signup.save()
        return signup

    def customer_login(self, cust_id):

        login = CustomerDetails.objects.get(pk=cust_id)
        return login

    