from rest_framework import serializers
from .models import Account

class AccountSerializer(serializers.ModelSerializer):
    class Meta:
        model = Account
        fields = ('id', 'user_id', 'user_pw', 'user_name', 'user_email', 'user_birth', 'user_role', 'user_phone', 'user_school')