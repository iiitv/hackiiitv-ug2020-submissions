from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.response import Response
from rest_framework.request import Request


@api_view()
def ping(request: Request):
    return Response({'msg': 'Pong'}, status=status.HTTP_200_OK)


@api_view(['POST'])
def patient_register(request: Request):
    ...

