from django import forms
from .models import Product


class ProductForm(forms.ModelForm):
    """
    A form for creating and updating Product instances.

    Utilizes all fields from the Product model.
    Fields can be explicitly specified if desired.
    """
    class Meta:
        model = Product
        fields = '__all__'
