
from rest_framework import status
from rest_framework.response import Response

from account.models import User
from api.Response import AlreadyLogin, LoginReqResponse


def login_req(func, message='Login required'):
    def wrapper(*args, **kwargs):
        req = args[0]
        user: User = req.user
        if not user.is_authenticated:
            return Response(LoginReqResponse(error_code=12, msg=message, goto='/login'), status=status.HTTP_200_OK)
        return func(*args, **kwargs)
    return wrapper


def logout_in_req(func, message='Already Logged in'):
    def wrapper(*args, **kwargs):
        req = args[0]
        user: User = req.user
        if user.is_authenticated:
            if hasattr(user, 'doctor'):
                return Response(AlreadyLogin(msg=message, goto='/doctor', error_code=1))
            return Response(AlreadyLogin(msg=message, goto='/', error_code=1))
        return func(*args, **kwargs)
    return wrapper

