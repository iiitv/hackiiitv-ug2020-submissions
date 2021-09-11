## Backend APIs:

### Signup:
```
curl --location --request POST 'http://127.0.0.1:8000/customers/signup' \
--header 'Content-Type: application/json' \
--data-raw '{
    "cust_email": "demo@gmail.com",
    "password": "111",
    "name": "abc",
    "address": "abc",
    "dob": "18/09/19",
    "pincode": 44444,
    "phone_number" : "1234567890",
    "emergency_contact1" : "1234567890",
    "emergency_contact2" : "1234567890"
}'
```

### Login:
```
curl --location --request POST 'http://127.0.0.1:8000/customers/4/login' \
--header 'Content-Type: application/json' \
--data-raw '{
    "cust_email": "demo@gmail.com",
    "password": "111"
}'
```
