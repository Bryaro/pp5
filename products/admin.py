from django.contrib import admin
from .models import Product, Category


class ProductAdmin(admin.ModelAdmin):
    """
    Admin interface options for Product.

    Defines the display of products in the admin interface,
    including sorting and fields to display.
    """
    list_display = (
        'sku',
        'name',
        'category',
        'price',
        'rating',
        'sold_out',
        'image',
    )
    list_editable = ('sold_out',)
    ordering = ('sku',)


class CategoryAdmin(admin.ModelAdmin):
    """
    Admin interface options for Category.

    Specifies how categories are displayed in the admin interface,
    focusing on frontend and internal names.
    """
    list_display = (
        'frontend_name',
        'name',
    )


admin.site.register(Product, ProductAdmin)
admin.site.register(Category, CategoryAdmin)
