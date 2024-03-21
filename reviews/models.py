from django.db import models
from django.contrib.auth.models import User
from products.models import Product


class Review(models.Model):
    """
    Represents a review by a user for a product,
    including rating, comment, and an optional image.

    Links to the `Product` and `User` models,
    capturing the user's feedback on products.
    """
    product = models.ForeignKey(
        Product, on_delete=models.CASCADE, related_name='reviews')
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    rating = models.IntegerField(
        default=1, choices=[(i, i) for i in range(1, 6)])
    comment = models.TextField()
    image = models.ImageField(
        upload_to='review_images/', null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.user}'s review of {self.product}"
