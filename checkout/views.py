from django.shortcuts import render, redirect, reverse, get_object_or_404
from django.contrib import messages
from django.conf import settings
from .models import Order, OrderLineItem
from products.models import Product
import stripe
import json

stripe.api_key = settings.STRIPE_SECRET_KEY

def create_checkout_session(request):
    """
    Creates a Stripe Checkout Session for the cart items.
    Redirects the user to a secure Stripe-hosted checkout page.
    """
    cart = request.session.get('cart', {})
    if not cart:
        messages.error(request, "Your cart is empty.")
        return redirect('products')

    line_items = []
    for item_id, item_data in cart.items():
        try:
            product = Product.objects.get(id=item_id)
            line_items.append({
                'price_data': {
                    'currency': 'sek',
                    'unit_amount': int(product.price * 100),  # Convert price to öre
                    'product_data': {
                        'name': product.name,
                        'images': [product.image.url] if product.image else [],
                    },
                },
                'quantity': item_data,
            })
        except Product.DoesNotExist:
            continue  # Skip products that no longer exist

    try:
        checkout_session = stripe.checkout.Session.create(
            payment_method_types=['card'],
            line_items=line_items,
            mode='payment',
            success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
            cancel_url=request.build_absolute_uri(reverse('checkout')),
        )
        return redirect(checkout_session.url)
    except Exception as e:
        messages.error(request, f"Stripe error: {str(e)}")
        return redirect('checkout')

def checkout_success(request):
    """
    Handles successful payments by verifying with Stripe.
    Creates an order in the database after payment is confirmed.
    """
    session_id = request.GET.get('session_id')
    if not session_id:
        messages.error(request, "Invalid payment session.")
        return redirect('checkout')

    try:
        session = stripe.checkout.Session.retrieve(session_id)
        if session.payment_status == 'paid':
            # Create an order
            order = Order.objects.create(
                full_name=session.customer_details.name,
                email=session.customer_details.email,
                stripe_pid=session.id,
                original_cart=json.dumps(request.session.get('cart', {})),
                order_total=session.amount_total / 100,  # Convert from öre to SEK
            )

            # Save order line items
            cart = request.session.get('cart', {})
            for item_id, item_data in cart.items():
                product = get_object_or_404(Product, id=item_id)
                OrderLineItem.objects.create(
                    order=order,
                    product=product,
                    quantity=item_data
                )

            # Clear the cart
            request.session['cart'] = {}

            messages.success(request, "Payment successful! Your order is confirmed.")
            return render(request, 'checkout/checkout_success.html', {'order': order})
        else:
            messages.error(request, "Payment verification failed.")
            return redirect('checkout')
    except Exception as e:
        messages.error(request, f"Error verifying payment: {str(e)}")
        return redirect('checkout')
