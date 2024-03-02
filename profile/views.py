from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from checkout.models import Order


@login_required
def profile(request):
    user_email = request.user.email
    # Debugging statement (will remove this beofre submitting my pp5)
    print(f"Querying orders for email: {user_email}")
    orders = Order.objects.filter(email=user_email).order_by('-date')
    # Debugging statement to see if orders are being fetched (will remove before finishing my pp5)
    print(orders)
    return render(request, 'profile/profile.html', {'orders': orders})