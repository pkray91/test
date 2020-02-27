from django.shortcuts import render

# Create your views here.
def create(request):
	return render(request,'form.html') 
def store(request):
	if request.method == 'POST':
		image = request.POST['image']
		