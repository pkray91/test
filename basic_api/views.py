from django.shortcuts import render
from rest_framework import generics
from basic_api.models import Basicapi
from basic_api.serializers import BasicapiSerializer
class API_objects(generics.ListCreateAPIView):
    queryset = Basicapi.objects.all()
    serializer_class = BasicapiSerializer
class API_objects_details(generics.RetrieveUpdateDestroyAPIView):
    queryset = Basicapi.objects.all()
    serializer_class = BasicapiSerializer