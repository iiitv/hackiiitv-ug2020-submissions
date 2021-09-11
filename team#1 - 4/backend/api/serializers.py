
from rest_framework import serializers


class DocRegisterSerializer(serializers.Serializer):
    email = serializers.EmailField()
    name = serializers.CharField(max_length=100)
    password = serializers.CharField(max_length=100)
    aadhaar_number = serializers.IntegerField()
    latitude = serializers.CharField()
    longitude = serializers.CharField()
    ph = serializers.CharField(max_length=10)
    doc = serializers.FileField(required=False)


class PatientRegisterSerializer(serializers.Serializer):
    email = serializers.EmailField()
    name = serializers.CharField(max_length=100)
    password = serializers.CharField(max_length=100)
    aadhaar_number = serializers.RegexField(r'^\d{12}$')


class LoginSerializer(serializers.Serializer):
    email = serializers.EmailField()
    password = serializers.CharField(max_length=100)


class LookupSerializer(serializers.Serializer):
    query = serializers.CharField()
    category = serializers.CharField(required=False)


class DocProfileSerializer(serializers.Serializer):
    doc_id = serializers.CharField()


class ImageSerializer(serializers.RelatedField):
    image = serializers.ImageField()


class AddQueue(serializers.Serializer):
    doc_id = serializers.CharField()
    slot = serializers.CharField(max_length=3)
    # prev_reports = ImageSerializer(many=True, required=False)
