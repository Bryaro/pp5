from django.shortcuts import render, redirect, reverse
from django.shortcuts import get_object_or_404, HttpResponse
from django.contrib import messages
from django.conf import settings
from .models import Order, OrderLineItem
from products.models import Product
from cart.contexts import cart_contents
import stripe
import json

def create_checkout_session(request):
    """
    Creates a Stripe Checkout Session for the cart items.
    """
    stripe.api_key = settings.STRIPE_SECRET_KEY
    cart = request.session.get('cart', {})
    
    if not cart:
        messages.error(request, "Your cart is empty.")
        return redirect('products')  # Redirect to products instead of checkout
    
    line_items = []
    for item_id, item_data in cart.items():
        product = Product.objects.get(id=item_id)
        line_items.append({
            'price_data': {
                'currency': 'sek',
                'unit_amount': int(product.price * 100),
                'product_data': {
                    'name': product.name,
                    'images': [product.image.url] if product.image else [],
                },
            },
            'quantity': item_data,
        })
    
    session = stripe.checkout.Session.create(
        payment_method_types=['card'],
        line_items=line_items,
        mode='payment',
        success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url=request.build_absolute_uri(reverse('cart')),  # Redirect to cart instead of 'checkout'
    )
    
    return redirect(session.url, code=303)


def checkout_success(request):
    """
    Handles successful payments by verifying with Stripe Webhook.
    """
    session_id = request.GET.get('session_id')
    if not session_id:
        messages.error(request, "Invalid payment session.")
        return redirect('cart')  # Redirect to cart instead
    
    stripe.api_key = settings.STRIPE_SECRET_KEY
    session = stripe.checkout.Session.retrieve(session_id)
    
    if session.payment_status == 'paid':
        messages.success(request, "Payment successful! Your order is confirmed.")
        request.session['cart'] = {}  # Clear cart
        return render(request, 'checkout/checkout_success.html')
    
    messages.error(request, "Payment not verified.")
    return redirect('cart')
