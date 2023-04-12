from django.contrib import admin
from django.urls import path, include
from . import views
from rest_framework import routers

from .views import *

router = routers.DefaultRouter(trailing_slash=False)
router.register('signup', views.accountView)

urlpatterns = [
    path('', include(router.urls)),
    #path('signup/', signup, name='signup'),
    #path('login/', login, name='login'),
]