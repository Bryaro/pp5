from django.shortcuts import render, redirect, reverse
from django.contrib import messages
from django.conf import settings
from django.http import HttpResponse
from django.core.mail import send_mail
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from products.models import Product
from checkout.models import Order, OrderLineItem
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
        return redirect('products')

    line_items = []
    for item_id, item_data in cart.items():
        product = Product.objects.get(id=item_id)
        price = item_data['price']  # Get the price (either sale or regular price)
        line_items.append({
            'price_data': {
                'currency': 'sek',
                'unit_amount': int(price * 100),  # Convert to smallest unit (cents)
                'product_data': {
                    'name': product.name,
                    'images': [product.image.url] if product.image else [],
                },
            },
            'quantity': item_data['quantity'],
        })

    # Default payment methods (Apple Pay and Google Pay work automatically with "card")
    payment_methods = ["card", "link", "paypal", "mobilepay"]

    # List of all supported shipping countries
    shipping_countries = [
        "AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AO", "AQ", "AR", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ",
        "CA", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CV", "CW", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FO", "FR", "GA", "GB", "GD",
        "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH",
        "KI", "KM", "KN", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MK", "ML", "MM", "MN", "MO", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX",
        "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD",
        "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SZ", "TA", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY",
        "UZ", "VA", "VC", "VE", "VG", "VN", "VU", "WF", "WS", "XK", "YE", "YT", "ZA", "ZM", "ZW", "ZZ"
    ]

    # Add Hand Size as a custom field
    custom_fields = [
        {
            "key": "hand_size",
            "label": {
                "type": "custom",
                "custom": "Hand Size"
            },
            "type": "dropdown",
            "dropdown": {
                "options": [
                    {"label": "S", "value": "small"},
                    {"label": "M", "value": "medium"},
                    {"label": "L", "value": "large"}
                ]
            },
            "optional": True  # Marking it optional
        }
    ]

    session = stripe.checkout.Session.create(
        payment_method_types=payment_methods,
        line_items=line_items,
        mode='payment',
        success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url=request.build_absolute_uri(reverse('view_cart')),
        shipping_address_collection={"allowed_countries": shipping_countries},  # Collects shipping address
        custom_fields=custom_fields  # Adds hand size selection
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
    Saves the order and sends a confirmation email.
    """
    email = session["customer_details"]["email"]
    amount_total = session["amount_total"] / 100
    shipping_details = session.get("shipping", {})

    order = Order.objects.create(
        full_name=shipping_details.get("name", ""),
        email=email,
        phone_number=shipping_details.get("phone", ""),
        street_address1=shipping_details["address"].get("line1", ""),
        street_address2=shipping_details["address"].get("line2", ""),
        town_or_city=shipping_details["address"].get("city", ""),
        postcode=shipping_details["address"].get("postal_code", ""),
        country=shipping_details["address"].get("country", ""),
        order_total=amount_total,
        grand_total=amount_total,
        stripe_pid=session["id"]
    )

    send_order_confirmation_email(order)


def send_order_confirmation_email(order):
    """
    Sends an order confirmation email to the user after payment.
    """
    subject = f"Your Order #{order.order_number} Confirmation"
    recipient_email = order.email

    html_message = render_to_string("checkout/order_confirmation_email.html", {"order": order})
    plain_message = strip_tags(html_message)

    send_mail(
        subject,
        plain_message,
        settings.DEFAULT_FROM_EMAIL,
        [recipient_email],
        html_message=html_message,
        fail_silently=False,
    )
