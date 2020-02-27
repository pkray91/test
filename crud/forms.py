from django import forms
from crud.models import Crud

class CrudForm(forms.ModelForm):


	class Meta:
		model = Crud
		fields = '__all__'
	# name = forms.CharField()
	# lname = forms.CharField()
	# email = forms.EmailField()
	# mobile = forms.CharField()
	# salary = forms.IntegerField()
	# address = forms.CharField()
