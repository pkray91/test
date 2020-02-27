from django.shortcuts import render
from django.http import HttpResponse
def create(requset):
	requset.session['uname']='harshit@123#'
	requset.session['password']='pass@123#'
	return HttpResponse('session set')

def getsession(request):
    response = "<h1>Welcome to Sessions of learnforweb </h1><br>"
    if request.session.get('uname'):
        response += "Name : {0} <br>".format(request.session.get('uname'))
    if request.session.get('password'):
        response += "Password : {0} <br>".format(request.session.get('password'))
        return HttpResponse(response)
    else:
    	return redirect('create/')
def test(request):
	a = 'name'
	a = 'email'
	return HttpResponse(a)





