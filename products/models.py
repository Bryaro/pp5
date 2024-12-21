from django.db import models


class Category(models.Model):
    """
    Represents a category for products.
    Categories help in organizing products on the frontend.

    Each category has a name and an optional frontend_name for display purposes.
    """
    name = models.CharField(max_length=254)
    frontend_name = models.CharField(max_length=254, null=True, blank=True)

    class Meta:
        verbose_name_plural = "Categories"

    def __str__(self):
        return self.name

    def get_for_frontend(self):
        return self.frontend_name


class Product(models.Model):
    """
    Represents a product, including details like name,
    description, price, and category.

    Products can have an associated image and rating.
    """
    category = models.ForeignKey(
        'Category', null=True, blank=True, on_delete=models.SET_NULL)
    sku = models.CharField(max_length=254, null=True, blank=True)
    name = models.CharField(max_length=254)
    description = models.TextField()
    price = models.DecimalField(max_digits=6, decimal_places=2)
    sold_out = models.BooleanField(default=False)
    rating = models.DecimalField(
        max_digits=6, decimal_places=2, null=True, blank=True)
    image = models.ImageField(upload_to='product_images/', null=True, blank=True)

    def __str__(self):
        return self.name


class ProductImage(models.Model):
    """
    Represents additional images for a product.

    Each ProductImage is linked to a specific product and contains an image file.
    """
    product = models.ForeignKey(
        Product, related_name="images", on_delete=models.CASCADE
    )
    image = models.ImageField(upload_to="product_images/", null=True, blank=True)

    def __str__(self):
        return f"Image for {self.product.name}"
