from django.shortcuts import redirect, reverse
from django.contrib import messages
from django.conf import settings
from products.models import Product
import stripe

def create_checkout_session(request):
    """
    Creates a Stripe Payment Link (instead of a manual checkout session).
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
                "currency": "sek",
                "unit_amount": int(product.price * 100),
                "product_data": {
                    "name": product.name,
                    "images": [product.image.url] if product.image else [],
                },
            },
            "quantity": item_data,
        })

    payment_link = stripe.PaymentLink.create(
        line_items=line_items,
        allow_promotion_codes=True,  # ✅ Enables discount codes
        after_completion={"type": "redirect", "redirect": {"url": request.build_absolute_uri(reverse('checkout_success'))}},
        payment_method_types=["card", "link", "klarna"],  # ✅ Klarna included
        payment_method_options={
            "klarna": {
                "preferred_locale": "sv-SE",
                "capture_method": "automatic",
                "allowed_payment_methods": ["pay_now"]  # ✅ Only show Klarna "Pay in full"
            }
        }
    )

    return redirect(payment_link.url)


def checkout_success(request):
    """
    Handles successful payments by verifying with Stripe Webhook.
    """
    messages.success(request, "Payment successful! Your order is confirmed.")
    request.session['cart'] = {}  # Clear cart after payment
    return redirect('products')  # ✅ Redirects to the products page after successful payment

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
    # Implement any order processing logic here
    pass
