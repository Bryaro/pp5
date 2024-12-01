from django.contrib import admin
from django.db import models
from ckeditor.widgets import CKEditorWidget
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
        'image',
    )

    ordering = ('sku',)


    # Use CKEditor for the description field
    formfield_overrides = {
        models.TextField: {'widget': CKEditorWidget},
    }


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
