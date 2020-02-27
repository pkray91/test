#step 1 copy and pest from project's url
from django.urls import path,re_path
#step 2
from . import views
#step 3
urlpatterns = [
	
		path('',views.home,name='home'),
		path('about/',views.about,name='about'),
		path('services/',views.services,name='services'),
		path('contact/',views.contact,name='contact'),
		re_path('^form/$',views.form,name='form'),
		path('show/',views.show,name='show')
]
