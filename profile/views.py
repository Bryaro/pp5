from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from checkout.models import Order


@login_required
def profile(request):
    orders = Order.objects.filter(email=request.user.email).order_by('-date')
    return render(request, 'profile/profile.html', {'orders': orders})