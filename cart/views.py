from django.shortcuts import render

# Create your views here.

def view_cart(request):
    """ View cart to render users added items """
    return render(request, 'cart/cart.html')