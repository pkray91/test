from django.shortcuts import render,redirect
from crud.forms import EmployeeForm
from crud.models import Employee
from django.http import HttpResponse
# Create your views here
def emp(request):
	if request.method == 'POST':
		form = EmployeeForm(request.POST,request.FILES)
		if form.is_valid():
			form.save()
			return redirect('/show')
	else:
		form = EmployeeForm()
	return render(request,"index.html",{'form':form})

def show(request):
	employee = Employee.objects.all()
	return render(request,"show.html",{'employee':employee})
def edit(request,id):
	employee = Employee.objects.get(id=id)
	return render(request,"edit.html",{'employee':employee})
def update(request,id):
	employee = Employee.objects.get(id=id)
	form = EmployeeForm(request.GET, instance=employee)
	if form.is_valid():
		form.save()
		return redirect('/show')
	return render (request,"edit.html",{'employee':employee})
def delete(request,id):
	employee = Employee.objects.get(id=id)
	employee.delete()
	return redirect('/show')