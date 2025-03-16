from django.shortcuts import render, redirect, reverse
from django.contrib import messages
from django.conf import settings
from products.models import Product
import stripe

def create_checkout_session(request):
    """
    Creates a Stripe Checkout Session for the cart items.
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

    # Default payment methods
    payment_methods = ["card", "link"]

    # Klarna will only be shown for supported countries
    klarna_supported_countries = ["SE", "NO", "DK", "FI", "DE", "NL", "AT", "BE"]
    shipping_countries = ["SE", "NO", "DK", "FI", "DE", "NL", "AT", "BE"]

    session = stripe.checkout.Session.create(
        payment_method_types=payment_methods + ["klarna"],  # Adds Klarna for supported countries
        line_items=line_items,
        mode='payment',
        success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url=request.build_absolute_uri(reverse('view_cart')),
        shipping_address_collection={"allowed_countries": shipping_countries},
    )

    return redirect(session.url, code=303)


def checkout_success(request):
    """
    Handles successful payments by verifying with Stripe Webhook.
    """
    session_id = request.GET.get('session_id')
    if not session_id:
        messages.error(request, "Invalid payment session.")
        return redirect('view_cart')

    stripe.api_key = settings.STRIPE_SECRET_KEY
    session = stripe.checkout.Session.retrieve(session_id)

    if session.payment_status == 'paid':
        messages.success(request, "Payment successful! Your order is confirmed.")
        request.session['cart'] = {}  # Clear cart
        return render(request, 'checkout/checkout_success.html')

    messages.error(request, "Payment verification failed.")
    return redirect('view_cart')


def webhook(request):
    """
    Handle Stripe webhooks.
    """
    payload = request.body
    sig_header = request.META.get('HTTP_STRIPE_SIGNATURE')
    endpoint_secret = settings.STRIPE_WEBHOOK_SECRET

    try:
        event = stripe.Webhook.construct_event(
            payload, sig_header, endpoint_secret
        )
    except ValueError:
        return HttpResponse(status=400)
    except stripe.error.SignatureVerificationError:
        return HttpResponse(status=400)

    # Handle successful checkout session
    if event['type'] == 'checkout.session.completed':
        session = event['data']['object']
        handle_checkout_session(session)

    return HttpResponse(status=200)


def handle_checkout_session(session):
    """
    Process the Stripe checkout session.
    """
    # Implement any logic you need, such as saving order details to the database.
    pass
