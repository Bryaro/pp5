from django import forms
from django.forms import inlineformset_factory
from ckeditor.widgets import CKEditorWidget  # Import CKEditorWidget
from .models import Product, ProductImage

class ProductForm(forms.ModelForm):
    """
    A form for creating and updating Product instances.
    """
    description = forms.CharField(widget=CKEditorWidget())  # Use CKEditorWidget for description

    class Meta:
        model = Product
        fields = '__all__'

# Inline formset for ProductImage
ProductImageFormSet = inlineformset_factory(
    Product, ProductImage, 
    fields=('image',), 
    extra=3,  # Number of additional images
    can_delete=True  # Allow deleting images
)
