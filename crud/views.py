from django.shortcuts import render
from django.http import HttpResponse
from crud.forms import CrudForm

def adddata(requset):
	if requset.method == 'GET':
		form = CrudForm(requset.GET)
		if form.is_valid():
			form.save()
			return HttpResponse('done')
	else:
		
		form = CrudForm()
	return render(requset,'form.html',{'form':form})


