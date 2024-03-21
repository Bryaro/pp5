from django import forms
from .models import Post, Comment


class PostForm(forms.ModelForm):
    """
    A form for creating and updating `Post` instances.
    Includes fields for the post's title, body, categories, and an image.
    The `categories` field uses a CheckboxSelectMultiple widget for selection.
    """
    class Meta:
        model = Post
        fields = ['title', 'body', 'categories', 'image']
        widgets = {
            'categories': forms.CheckboxSelectMultiple(),
        }


class CommentForm(forms.ModelForm):
    """
    A form for creating and updating `Comment` instances.
    Includes a single field for the comment's body.
    """
    class Meta:
        model = Comment
        fields = ['body']
