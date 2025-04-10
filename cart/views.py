from django.shortcuts import render, redirect, reverse, HttpResponse
from products.models import Product

def view_cart(request):
    """ View cart to render users added items """
    return render(request, 'cart/cart.html')


def add_to_cart(request, item_id):
    """ Add a quantity of the specified product to the shopping cart """
    quantity = request.POST.get('quantity')
    redirect_url = request.POST.get('redirect_url')
    cart = request.session.get('cart', {})

    # Fetch the product from the database
    product = Product.objects.get(id=item_id)

    # Check if sale_price exists; otherwise, use regular price
    price = float(product.sale_price) if product.sale_price else float(product.price)  # Convert Decimal to float

    if quantity is not None:
        quantity = int(quantity)
    else:
        quantity = 1

    # Add product to the cart with the correct price
    if item_id in cart:
        cart[item_id]['quantity'] += quantity
    else:
        cart[item_id] = {
            'quantity': quantity,
            'price': price  # Save sale_price if available
        }

    # Save updated cart back to session
    request.session['cart'] = cart
    return redirect(redirect_url)


def adjust_cart(request, item_id):
    """Adjust the quantity of the specified product to the specified amount"""

    quantity = int(request.POST.get('quantity'))
    size = None
    if 'product_size' in request.POST:
        size = request.POST['product_size']
    cart = request.session.get('cart', {})

    if size:
        if quantity > 0:
            cart[item_id]['items_by_size'][size] = quantity
        else:
            del cart[item_id]['items_by_size'][size]
            if not cart[item_id]['items_by_size']:
                cart.pop(item_id)
    else:
        if quantity > 0:
            cart[item_id] = quantity
        else:
            cart.pop(item_id)

    request.session['cart'] = cart
    return redirect(reverse('view_cart'))


def remove_from_cart(request, item_id):
    """Remove the item from the shopping cart"""
    try:
        size = None
        if 'product_size' in request.POST:
            size = request.POST['product_size']
        cart = request.session.get('cart', {})

        if size:
            del cart[item_id]['items_by_size'][size]
            if not cart[item_id]['items_by_size']:
                cart.pop(item_id)
        else:
            cart.pop(item_id)

        request.session['cart'] = cart
        return HttpResponse(status=200)

    except Exception as e:
        return HttpResponse(status=500)
