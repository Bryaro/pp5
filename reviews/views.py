from django.shortcuts import render, redirect, get_object_or_404
from .forms import ReviewForm
from products.models import Product
from django.contrib.auth.decorators import login_required
from .models import Review
from django.db.models import Avg
from checkout.models import Order


@login_required
def add_review(request, product_id):
    """
    Allows a logged-in user to add a review for a product.
    """
    product = get_object_or_404(Product, id=product_id)
    if request.method == 'POST':
        form = ReviewForm(request.POST, request.FILES)
        if form.is_valid():
            review = form.save(commit=False)
            review.user = request.user
            review.product = product
            review.save()
            product_average_rate_calculator(product_id)
            return redirect('product_info', product_id=product.id)
    else:
        form = ReviewForm()
    star_range = range(1, 6)
    return render(
        request, 'reviews/add_review.html', {'form': form, 'product': product})


@login_required
def edit_review(request, review_id):
    """
    Allows a logged-in user to edit their own review.
    """
    review = get_object_or_404(Review, id=review_id, user=request.user)
    product = review.product
    if request.method == 'POST':
        form = ReviewForm(request.POST, request.FILES, instance=review)
        if form.is_valid():
            form.save()
            product_average_rate_calculator(product.id)
            return redirect('product_info', product_id=review.product.id)
    else:
        form = ReviewForm(instance=review)

    return render(request, 'reviews/add_review.html', {
        'form': form,
        'product': product,
        'review': review,
    })


@login_required
def delete_review(request, review_id):
    """
    Allows a logged-in user to delete their own review.
    """
    review = get_object_or_404(Review, id=review_id, user=request.user)
    product_id = review.product.id
    review.delete()
    return redirect('product_info', product_id=product_id)


def all_reviews(request):
    """
    Displays all reviews.
    """
    reviews = Review.objects.all()
    return render(request, 'reviews/all_reviews.html', {'reviews': reviews})


def product_average_rate_calculator(product_id):
    """
    Calculates and updates the average rating
    for a product based on its reviews.
    """
    product = Product.objects.get(pk=product_id)
    average_rating = product.reviews.aggregate(Avg('rating'))['rating__avg']

    if average_rating is not None:
        product.rating = round(average_rating, 2)
        product.save()


def profile(request):
    """
    Displays the user's profile and their orders.
    """
    orders = Order.objects.filter(email=request.user.email).order_by('-date')
    context = {
        'orders': orders,
    }
    return render(request, 'profile.html', context)
