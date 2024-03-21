from django import forms
from .models import Review

class ReviewForm(forms.ModelForm):
    """
    A form for submitting reviews, including a rating,
    comment, and optional image.
    
    This form is linked to the Review model,
    specifying that a user can submit a rating, 
    write a comment, and upload an image as part of their review.
    """
    class Meta:
        model = Review
        fields = ['rating', 'comment', 'image']
