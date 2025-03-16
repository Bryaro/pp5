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

    # Payment method settings
    allowed_payment_methods = ["card", "link"]

    # Only show Klarna if user is from a supported country
    supported_klarna_countries = ["SE", "NO", "DK", "FI", "DE", "NL", "AT", "BE"]
    if request.user.is_authenticated and request.user.profile.country in supported_klarna_countries:
        allowed_payment_methods.append("klarna")

    session = stripe.checkout.Session.create(
        payment_method_types=allowed_payment_methods,
        line_items=line_items,
        mode='payment',
        success_url=request.build_absolute_uri(reverse('checkout_success')) + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url=request.build_absolute_uri(reverse('view_cart')),
        shipping_address_collection={"allowed_countries": ["SE", "NO", "DK", "FI", "DE", "NL", "AT", "BE"]},
    )

    return redirect(session.url, code=303)
