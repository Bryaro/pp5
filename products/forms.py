from django import forms
from django.forms import inlineformset_factory
from .models import Product, ProductImage

class ProductForm(forms.ModelForm):
    """
    A form for creating and updating Product instances.
    """
    class Meta:
        model = Product
        fields = ['name', 'description', 'price', 'sale_price', 'category', 'image', 'rating', 'sold', 'sold_out']

# Inline formset for ProductImage
ProductImageFormSet = inlineformset_factory(
    Product, ProductImage, 
    fields=('image',), 
    extra=3,  # Number of additional images
    can_delete=True  # Allow deleting images
)
