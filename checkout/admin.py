from django.contrib import admin
from .models import Order, OrderLineItem


class OrderLineItemAdminInline(admin.TabularInline):
    """
    Defines the layout for inline order line item editing within
    the Django admin interface for an Order.

    This class allows for direct editing of order line items from
    the Order model admin page, improving user workflow by
    allowing all components of an order to be edited in one location.
    """
    model = OrderLineItem
    readonly_fields = ('lineitem_total',)


class OrderAdmin(admin.ModelAdmin):
    """
    Customizes the appearance of the Order model in the Django admin interface.
    This class modifies how orders are displayed and
    interacted with in the admin interface, including
    which fields are displayed, which are read-only,
    and the overall layout of the order edit page.
    Inline editing of related OrderLineItems is enabled to
    streamline order management.
    """
    inlines = (OrderLineItemAdminInline,)

    readonly_fields = (
        'order_number',
        'date',
        'order_total',
        'grand_total',
        'original_cart',
        'stripe_pid',
    )

    fields = (
        'order_number',
        'date',
        'full_name',
        'email',
        'phone_number',
        'country',
        'postcode',
        'town_or_city',
        'street_address1',
        'street_address2',
        'county',
        'delivery_cost',
        'order_total',
        'grand_total',
        'original_cart',
        'stripe_pid',
    )

    list_display = (
        'order_number',
        'date',
        'full_name',
        'order_total',
        'grand_total',
    )

    ordering = ('-date',)


admin.site.register(Order, OrderAdmin)
