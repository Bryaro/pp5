from django.contrib.auth.decorators import login_required
from django.shortcuts import render

@login_required
def profile(request):
    # Here I will have Logic to fetch user-specific information, e.g., user profile, orders
    return render(request, 'profile/profile.html')