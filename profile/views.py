from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404
from checkout.models import Order
from django.contrib import messages
from django.shortcuts import redirect
from django.contrib.auth import logout

@login_required
def profile(request):
    """
    Display the user's profile, including their past orders.
    """
    user_email = request.user.email
    orders = Order.objects.filter(email=user_email).order_by('-date')
    return render(request, 'profile/profile.html', {'orders': orders})
