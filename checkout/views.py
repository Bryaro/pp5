from django.shortcuts import redirect, reverse, HttpResponse
from django.contrib import messages
from django.conf import settings
from products.models import Product
import stripe
import json

def create_checkout_session(request):
    """
    Creates a Stripe Checkout Session with Swish as a payment method.
    """
    stripe.api_key = settings.STRIPE_SECRET_KEY
    cart = request.session.get('cart', {})

    if not cart:
        messages.error(request, "Your cart is empty.")
        return redirect('products')

    line_items = []
    for item_id, item_data in cart.items():
        product = Product.objects.get(id=item_id)
        line_items.append({
            "price_data": {
                "currency": "sek",  # ✅ Swish requires SEK currency
                "unit_amount": int(product.price * 100),
                "product_data": {
                    "name": product.name,
                    "images": [product.image.url] if product.image else [],
                },
            },
            "quantity": item_data,
        })

    # ✅ Adding Swish as a payment method (without Klarna)
    session = stripe.checkout.Session.create(
        payment_method_types=['card', 'swish', 'link'],  # ✅ Swish added
        line_items=line_items,
        mode='payment',
        success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url=request.build_absolute_uri(reverse('view_cart')),
    )

    return redirect(session.url)


def checkout_success(request):
    """
    Handles successful payments.
    """
    messages.success(request, "Payment successful! Your order is confirmed.")
    request.session['cart'] = {}  # Clear cart after payment
    return redirect('products')

def webhook(request):
    """
    Handle Stripe webhooks.
    """
    payload = request.body
    sig_header = request.META.get('HTTP_STRIPE_SIGNATURE')
    endpoint_secret = settings.STRIPE_WEBHOOK_SECRET

    try:
        event = stripe.Webhook.construct_event(payload, sig_header, endpoint_secret)
    except ValueError:
        return HttpResponse(status=400)
    except stripe.error.SignatureVerificationError:
        return HttpResponse(status=400)

    if event['type'] == 'checkout.session.completed':
        session = event['data']['object']
        handle_checkout_session(session)

    return HttpResponse(status=200)

def handle_checkout_session(session):
    """
    Process the Stripe checkout session.
    """
    pass  # You can implement order processing logic here
