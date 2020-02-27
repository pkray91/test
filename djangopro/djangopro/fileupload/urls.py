from django.urls import path
from . import views
from djangopro import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.create, name = 'create'),
    path('file/store', views.store),
]