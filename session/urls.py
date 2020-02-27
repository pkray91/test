from django.urls import path

from session import views

urlpatterns = [

	path('create/',views.create),
	path('getsession/',views.getsession),
	path('test/',views.test)

]