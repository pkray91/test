from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home(request):
	#return render(request, "p1.html")
	#return render(request, "p1.html",{"name":"Harshit"})
	return render(request, "index.html")
def about(request):
	return HttpResponse("<h1>I am about</h1>")#now we can use DTL for layout

def services(request):
	return HttpResponse("I am services")

def contact(request):
	return HttpResponse("contact US")
def form(request):
	return render(request,'form.html')
def show(request):
	# name = request.GET['name']
	# email = request.GET['email']
	# mobile = request.GET.get('mob')
	# salary = request.GET.get('sal')
	# add = request.GET.get('add')
	name = request.POST['name']
	email = request.POST['email']
	mobile = request.POST.get('mob')
	salary = request.POST.get('sal')
	add = request.POST.get('add')
	value = name,email,mobile,salary,add
	#return HttpResponse([name,email,mobile,salary,add])
	return render(request,'formdata.html',{"data":value})