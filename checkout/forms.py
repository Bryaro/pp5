from django import forms
from .models import Order


class OrderForm(forms.ModelForm):
    """
    A form for creating and updating Orders.

    This form is linked to the Order model and
    specifies which fields should be included in the form.
    It can customize form initialization to set placeholders,
    can apply CSS classes, and manage the autofocus
    of input fields to improve user experience.
    """
    class Meta:
        model = Order
        fields = (
            'full_name',
            'email',
            'phone_number',
            'street_address1',
            'street_address2',
            'town_or_city',
            'postcode',
            'country',
            'county',
        )

    def __init__(self, *args, **kwargs):
        """
        Initialize placeholders and classes, eliminate automatically generated
        labels, and set autofocus on the first field.

        This method enhances form usability
        by setting user-friendly placeholders,
        applying custom CSS classes for styling,
        and removing field labels for a cleaner appearance.
        The autofocus is set on the 'full_name' field
        to guide the user on form entry.
        """
        super().__init__(*args, **kwargs)
        placeholders = {
            'full_name': 'Full Name',
            'email': 'Email Address',
            'phone_number': 'Phone Number',
            'country': 'Country',
            'postcode': 'Postal Code',
            'town_or_city': 'Town or City',
            'street_address1': 'Street Address 1',
            'street_address2': 'Street Address 2',
            'county': 'County, State or Locality',
        }

        self.fields['full_name'].widget.attrs['autofocus'] = True
        for field in self.fields:
            if self.fields[field].required:
                placeholder = f'{placeholders[field]} *'
            else:
                placeholder = placeholders[field]
            self.fields[field].widget.attrs['placeholder'] = placeholder
            self.fields[field].widget.attrs['class'] = 'stripe-style-input'
            self.fields[field].label = False
