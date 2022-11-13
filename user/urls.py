from django.urls import path
from user.views.index import index

app_name = "user"

urlpatterns = [
    path('templates/', index, name='index'),
]
