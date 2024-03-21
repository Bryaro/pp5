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


@login_required
def view_order_detail(request, order_number):
    """
    Display detailed information about a specific order.
    """
    order = get_object_or_404(
        Order, order_number=order_number, email=request.user.email)
    context = {
        'order': order
    }
    return render(request, 'profile/order_detail.html', context)


@login_required
def delete_account(request):
    """
    Allows a user to delete their account. This action is irreversible.
    """
    if request.method == "POST":
        user = request.user
        user.delete()
        messages.success(request, "Your account has been deleted.")
        logout(request)
        return redirect('home')
    else:
        messages.error(request, "Invalid request.")
        return redirect('profile')
