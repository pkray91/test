from django import forms
from cart.models import Cart

class MyCartForm(forms.ModelForm):
	class Meta:
		model = Cart
		fields = "__all__"

