from rest_framework import serializers
from userapi.models import User, UserProfile

class UserProfileSerializer(serializers.ModelSerializer):

    class Meta:
        model = UserProfile
        fields = ('Name', 'dob', 'address','emergency_contact1','emergency_contact2','phone_number','pincode')

class UserSerializer(serializers.HyperlinkedModelSerializer):
    profile = UserProfileSerializer(required=True)

    class Meta:
        model = User
        fields = ('url', 'email', 'first_name', 'last_name', 'password', 'profile')
        extra_kwargs = {'password': {'write_only': True}}

def create(self, validated_data):
    profile_data = validated_data.pop('profile')
    password = validated_data.pop('password')
    user = User(**validated_data)
    user.set_password(password)
    user.save()
    UserProfile.objects.create(user=user, **profile_data)
    return user

def update(self, instance, validated_data):
    profile_data = validated_data.pop('profile')
    profile = instance.profile

    instance.email = validated_data.get('email', instance.email)
    instance.save()

    profile.Name = profile_data.get('Name', profile.Name)
    profile.dob = profile_data.get('dob', profile.dob)
    profile.address = profile_data.get('address', profile.address)
    profile.pincode = profile_data.get('pincode', profile.pincode)
    profile.phone_number = profile_data.get('phone_number', profile.phone_number)
    profile.emergency_contact1 = profile_data.get('emergency_contact1', profile.emergency_contact1)
    profile.emergency_contact2 = profile_data.get('emergency_contact2', profile.emergency_contact2)
    profile.save()

    return instance