from django.urls import path
from . import views
from .views import profile, view_order_detail, delete_account

urlpatterns = [
    path('profile/', profile, name='profile'),
    path('order_detail/<order_number>/',
         view_order_detail, name='order_detail'),
    path('delete_account/', delete_account, name='delete_account'),
]
