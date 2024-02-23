from django.shortcuts import render, redirect

# Create your views here.

def view_cart(request):
    """ View cart to render users added items """
    return render(request, 'cart/cart.html')

def add_to_cart(request, item_id):
    """ Add a quantity of the specified product to the shopping cart """
    # Use a default quantity of 1 (or another value) if 'quantity' is not provided in the POST data
    quantity = request.POST.get('quantity')
    redirect_url = request.POST.get('redirect_url')
    cart = request.session.get('cart', {})

    if quantity is not None:
        quantity = int(quantity)
    else:
        # Default quantity can be set to 1 or any value that makes sense for your application
        quantity = 1

    if item_id in cart:
        cart[item_id] += quantity
    else:
        cart[item_id] = quantity

    request.session['cart'] = cart
    return redirect(redirect_url)