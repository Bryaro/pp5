from django import forms
from .models import Product

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        # I can also specify the fields if I want e.g., ['name', 'sku', 'description', 'price', 'category', 'image']
        fields = '__all__'