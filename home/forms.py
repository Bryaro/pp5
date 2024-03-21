from django import forms


class ContactForm(forms.Form):
    """
    A form for collecting contact information and a message from a user.
    
    This form is designed to capture a user's name,
    email address, and a message they wish to send, 
    with appropriate styling and placeholders for a user-friendly interface.
    """
    name = forms.CharField(
        max_length=100, widget=forms.TextInput(
            attrs={'class': 'form-control', 'placeholder': 'Your Name'}))
    email = forms.EmailField(
        widget=forms.EmailInput(
            attrs={'class': 'form-control', 'placeholder': 'Your Email Address'}))
    message = forms.CharField(
        widget=forms.Textarea(
            attrs={'class': 'form-control', 'placeholder': 'Your Message'}))
