
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
    ph = serializers.RegexField(r'^\d{10}$')


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


class EditDocProfileSerializer(serializers.Serializer):
    available_days = serializers.JSONField() # TODO: complete the serializer
    profile_pic = serializers.ImageField(required=False)
    max_patience_per_hr = serializers.IntegerField(min_value=1, max_value=12, required=False)
    ph = serializers.RegexField(r'^\d{10}$', required=False)
    address = serializers.CharField(required=False)
    degree = serializers.ImageField(required=False)
    description = serializers.CharField(required=False)


class AvailableSerializer(serializers.Serializer):
    start = serializers.TimeField()
    end = serializers.TimeField()


class AddQueue(serializers.Serializer):
    doc_id = serializers.CharField()
    slot = serializers.CharField(max_length=3)
    prev_reports = serializers.ListField(child=serializers.ImageField(), required=False)
