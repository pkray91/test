from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.models import User,auth
from django.contrib import messages
# Create your views here.
def register(request):
	if request.method == 'POST':
		fname = request.POST['fname']
		lname = request.POST['lname']
		username = request.POST['username']
		email = request.POST['email']
		password = request.POST['password']
		cpassword = request.POST['cpassword']
		#data = [fname,lname,email,username,password,cpassword]
		#return HttpResponse(data)
		if password == cpassword:
			if User.objects.filter(email=email).exists():
				messages.info(request,'Email exists')
				return redirect('/account/register')
			elif User.objects.filter(username=username).exists():
				messages.info(request,'Username exists')
				return redirect('/account/register')
			else:
				user = User.objects.create_user(username=username,first_name=fname,last_name=lname,password=password,email=email)
				user.save()	
				return HttpResponse('user created')	
			
		else:
			messages.info(request,'password did not match')
			return redirect('/account/register')		
	else:
		return render(request,'registered.html')	


def login(request):
	if request.method == 'POST':
		username = request.POST['username']
		password = request.POST['password']
		user = auth.authenticate(username=username,password=password)
		if user is not None:
			auth.login(request, user)
			return redirect('/')
		else:
			messages.info(request,'invalid username or password')
			return redirect('/account/login/')
	else:
		return render(request,'login.html')	

def logout(request):
	auth.logout(request)
	return redirect('/')
	