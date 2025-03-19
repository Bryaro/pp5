from django.shortcuts import render, redirect, reverse
from django.contrib import messages
from django.conf import settings
from checkout.models import Order, OrderLineItem
from products.models import Product
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
            "optional": True
        }
    ]

    # Store cart data in metadata
    metadata = {
        "cart": json.dumps(cart),
        "user_email": request.user.email if request.user.is_authenticated else ""
    }

    session = stripe.checkout.Session.create(
        payment_method_types=payment_methods,
        line_items=line_items,
        mode='payment',
        success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url=request.build_absolute_uri(reverse('view_cart')),
        shipping_address_collection={"allowed_countries": shipping_countries},
        custom_fields=custom_fields,
        metadata=metadata
    )

    return redirect(session.url, code=303)


def checkout_success(request):
    """
    Handles successful payments by verifying with Stripe Checkout.
    Saves order details to the database.
    """
    session_id = request.GET.get('session_id')
    if not session_id:
        messages.error(request, "Invalid payment session.")
        return redirect('view_cart')

    stripe.api_key = settings.STRIPE_SECRET_KEY
    session = stripe.checkout.Session.retrieve(session_id)

    if session.payment_status == 'paid':
        email = session["customer_details"]["email"]
        amount_total = session["amount_total"] / 100
        shipping_details = session.get("shipping", {})
        metadata = session.get("metadata", {})

        cart_json = metadata.get("cart", "{}")
        cart = json.loads(cart_json)

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
            stripe_pid=session["id"],
            original_cart=cart_json
        )

        if request.user.is_authenticated:
            order.user = request.user
            order.save()

        for item_id, item_data in cart.items():
            try:
                product = Product.objects.get(id=item_id)
                OrderLineItem.objects.create(
                    order=order,
                    product=product,
                    quantity=item_data
                )
            except Product.DoesNotExist:
                continue

        request.session['cart'] = {}

        messages.success(request, "Payment successful! Your order has been recorded.")
        return render(request, 'checkout/checkout_success.html', {"order": order})

    messages.error(request, "Payment verification failed.")
    return redirect('view_cart')
