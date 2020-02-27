from django.shortcuts import render,redirect
from django.http import HttpResponse
from cart.forms import MyCartForm
from cart.models import Cart
# Create your views here.

def additem(request):

	if request.user.is_authenticated:
		if request.method == 'POST':
			form = MyCartForm(request.POST)
			if form.is_valid():
				form.save()
				return redirect('/cart/cartdetails/')
			else:
				form = MyCartForm()
				return render(request,'single.html',{'form':form})
	else:
		return redirect('/account/login/')


def cartdetails(request):

	data = Cart.objects.all()
	price = Cart.objects.values_list('pprice', flat=True)
	quant = Cart.objects.values_list('quantity', flat=True)
	total = [a*b for a,b in zip(price,quant)]
	return render(request,'cartdetail.html',{'data':data,'total':total})



		