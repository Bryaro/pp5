from django.urls import path
from . import views
from .views import profile, view_order_detail

urlpatterns = [
    path('profile/', profile, name='profile'),
    path('order_detail/<order_number>/', view_order_detail, name='order_detail'),  # New URL pattern
]