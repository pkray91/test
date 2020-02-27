from django.shortcuts import render

from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from rest_framework.views import APIView
from rest_framework import status
from rest_framework.response import Response
from . models import Api
from . serializers import ApiSerializer

class employeeList(APIView):
	def get(self,request):
		emp = Api.objects.all()
		serializer = ApiSerializer(emp,many=True)
		return HttpResponse(serializer.data)

	def post(self):
		pass