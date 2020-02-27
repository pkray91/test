
from django.contrib import admin
from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static
#from rest_framework.urlpatterns import format_suffix__patterns
from api import views
urlpatterns = [
	path('',include('slider.urls')),
	path('crud/',include('crud.urls')),
	path('basicapi/',include('basic_api.urls')),
	path('api/',views.employeeList.as_view()),
	path('session/',include('session.urls')),
	path('cart/',include('cart.urls')),
    path('account/',include('account.urls')),
    path('admin/', admin.site.urls),
]
if settings.DEBUG:
        urlpatterns += static(settings.MEDIA_URL,
                              document_root=settings.MEDIA_ROOT)