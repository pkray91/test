from django.shortcuts import render,HttpResponse
from slider.models import Slider
from category.models import Category
from products.models import Products


# Create your views here.

def index(request):
	data = Slider.objects.all()
	cat = Category.objects.all()
	pro = Products.objects.all()
	#return HttpResponse(data)
	return render(request,'index.html',{"data":data,"cat":cat,'pro':pro})


def details(request,id):
	#return HttpResponse(id)
	pro = Products.objects.get(id=id)
	return render(request,'single.html',{'pro':pro})