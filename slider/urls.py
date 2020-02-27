from django.urls import path
from slider import views
urlpatterns = [

		path('',views.index, name="index"),

		path('details/<int:id>',views.details)
]

