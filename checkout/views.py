import stripe
from django.conf import settings
from django.shortcuts import redirect, reverse
from django.contrib import messages
from products.models import Product
import json

def create_checkout_session(request):
    """
    Creates a Stripe Checkout Session for the cart items.
    """
    try:
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

        session = stripe.checkout.Session.create(
            payment_method_types=['card', 'klarna', 'link'],  # Ensure Stripe supports them
            line_items=line_items,
            mode='payment',
            billing_address_collection="required",
            shipping_address_collection={
                "allowed_countries": ["SE", "NO", "DK", "FI", "DE", "US", "GB"],
            },
            success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
            cancel_url=request.build_absolute_uri(reverse('cart')),
        )

        return redirect(session.url, code=303)

    except stripe.error.StripeError as e:
        messages.error(request, f"Stripe Error: {str(e)}")
        return redirect('cart')

    except Exception as e:
        messages.error(request, f"Error: {str(e)}")
        return redirect('cart')
