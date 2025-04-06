from django.shortcuts import get_object_or_404
from products.models import Product


def cart_contents(request):
    """
    Context processor function to make the cart's contents available
    to all templates across the application. Calculates the total cost and
    the total number of items in the cart.
    """
    cart_items = []
    total = 0
    product_count = 0
    cart = request.session.get('cart', {})

    for item_id, item_data in cart.items():
        product = get_object_or_404(Product, pk=item_id)
        
        # Ensure the 'price' is correctly handled as a float (sale_price if available)
        price = item_data.get('price', product.price)  # Use the stored price in the cart or the default price

        # Check if the cart item is using the sale price
        if product.sale_price:
            price = product.sale_price

        total += item_data['quantity'] * price  # Multiply price by quantity
        product_count += item_data['quantity']

        cart_items.append({
            'item_id': item_id,
            'quantity': item_data['quantity'],
            'product': product,
            'price': price,  # Add price to context
        })

    grand_total = total

    context = {
        'cart_items': cart_items,
        'total': total,
        'product_count': product_count,
        'grand_total': grand_total,
    }

    return context
