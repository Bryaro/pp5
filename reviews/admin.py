from django.contrib import admin
from .models import Review


class ReviewAdmin(admin.ModelAdmin):
    """
    Admin interface customization for the Review model.

    Configures list display, filtering options,
    and search capabilities for reviews, facilitating
    easier management and overview of product reviews by admin users.
    """
    list_display = ('product', 'user', 'rating', 'created_at')
    list_filter = ('rating', 'created_at')
    search_fields = ('comment', 'product__name', 'user__username')


admin.site.register(Review, ReviewAdmin)
