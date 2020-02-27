from rest_framework import serializers

from basic_api.models import Basicapi 

class BasicapiSerializer(serializers.ModelSerializer):
    class Meta:
        model = Basicapi
        fields = '__all__'

