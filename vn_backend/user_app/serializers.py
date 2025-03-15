from dj_rest_auth.serializers import LoginSerializer
from dj_rest_auth.registration.serializers import RegisterSerializer
from rest_framework import serializers

class NewRegisterSerializer(RegisterSerializer):
    first_name=serializers.CharField()
    last_name=serializers.CharField()
    pass

class NewLoginSerializer(LoginSerializer):
    pass

