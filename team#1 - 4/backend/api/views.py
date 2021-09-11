
from django.contrib.auth import logout as django_logout, login as django_login, authenticate
from django.core.files.uploadedfile import InMemoryUploadedFile

from rest_framework import status
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.decorators import api_view

from account.models import User
from doctor.models import Doctor, Degree
from patient.models import Patient
from .decorators import logout_in_req, login_req

from .serializers import PatientRegisterSerializer, DocRegisterSerializer, LoginSerializer
from .Response import AlreadyLogin, RegistrationSuccess, BasicError, LoginSuccess, LogoutSuccess, UserAlreadyExist, MeResponse


@api_view()
def me(request: Request):
    if request.user.is_authenticated:
        user: User = request.user
        return Response(MeResponse(logged_in=True, name=user.name))
    return Response(MeResponse(logged_in=False, name=None))


@api_view()
def ping(request: Request):
    return Response({'msg': 'Pong'}, status=status.HTTP_200_OK)


@api_view(['POST'])
@logout_in_req
def patient_register(request: Request):

    data = PatientRegisterSerializer(data=request.data)

    if not data.is_valid():
        errors = data.errors
        errors.update({'error_code': 2})
        return Response(errors, status=status.HTTP_400_BAD_REQUEST)

    data = data.data

    _users1 = User.objects.filter(username=data.get('aadhaar_number'))
    _users2 = User.objects.filter(email=data.get('email'))
    if _users1.exists() or _users2.exists():
        return Response(UserAlreadyExist(error_code=9, msg='User Already exist', goto='/login'), status=status.HTTP_400_BAD_REQUEST)

    user: User = User.objects.create_user(email=data.get('email'), password=data.get('password'),
                                          username=data.get('aadhaar_number'), name=data.get('name'))
    Patient.objects.create(user=user)

    return Response(RegistrationSuccess(goto='/'))


@api_view(['POST'])
@logout_in_req
def doctor_registration(request: Request):

    data = DocRegisterSerializer(data=request.data)

    if not data.is_valid():
        errors = data.errors
        errors.update({'error_code': 4})
        return Response(errors, status=status.HTTP_400_BAD_REQUEST)

    data = data.data

    _users1 = User.objects.filter(username=data.get('aadhaar_number'))
    _users2 = User.objects.filter(email=data.get('email'))
    if _users1.exists() or _users2.exists():
        return Response(UserAlreadyExist(error_code=9, msg='User Already exist', goto='/login'),
                        status=status.HTTP_400_BAD_REQUEST)

    user: User = User.objects.create_user(email=data.get('email'), password=data.get('password'),
                                          username=data.get('aadhaar_number'), name=data.get('name'))
    doc = Doctor.objects.create(user=user, latitude=float(data.get('latitude')), longitude=float(data.get('longitude')))
    print(data)
    if image := request.data.get('upload'):
        image: InMemoryUploadedFile
        Degree.objects.create(doc=doc, file=image)

    Patient.objects.create(user=user)
    django_login(request, user)

    return Response(RegistrationSuccess(goto='/doctor'))


@api_view(['POST'])
@logout_in_req
def login(request: Request):

    data = LoginSerializer(data=request.data)
    if not data.is_valid():
        errors = data.errors
        errors.update({'error_code': 5})
        return Response(errors, status=status.HTTP_400_BAD_REQUEST)

    data = data.data
    user: User = authenticate(email=data.get('email'), password=data.get('password'))

    if user is None:
        return Response(BasicError(msg='bad credentials', error_code=6), status=status.HTTP_400_BAD_REQUEST)

    django_login(request, user)

    if hasattr(user, 'doctor'):
        return Response(LoginSuccess(goto='/doctor'))
    return Response(LoginSuccess(goto='/'))


@api_view(['POST'])
def logout(request: Request):
    if request.user.is_authenticated:
        django_logout(request)
    return Response(LogoutSuccess(goto='/'))


@api_view(['POST'])
@login_req
def lookup(request: Request):
    ...
