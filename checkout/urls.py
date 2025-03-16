from django.urls import path
from . import views
from .webhooks import webhook

urlpatterns = [
    path('', views.checkout, name='checkout'),
    path('checkout_success/', views.checkout_success, name='checkout_success'),
    path('create-checkout-session/', views.create_checkout_session, name='create_checkout_session'),
    path('wh/', webhook, name='webhook'),
]
