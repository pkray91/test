
from django.contrib import admin
from django.urls import path, include,re_path
from crud import views
#from fileupload import views
from django.conf import settings 
from django.conf.urls.static import static

urlpatterns = [
    # path('file/',include('fileupload.urls')),
    # path('store/',views.store),
    path('emp/',views.emp),
    path('show/',views.show),
    path('edit/<int:id>',views.edit),
    path('update/<int:id>',views.update),
    path('delete/<int:id>',views.delete),
	path('upload/', include('profile_maker.urls')),
	path('',include('firstapp.urls')),#we have to create
    path('admin/', admin.site.urls),
]
if settings.DEBUG:
        urlpatterns += static(settings.MEDIA_URL,
                              document_root=settings.MEDIA_ROOT)
