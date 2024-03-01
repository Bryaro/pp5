from django.shortcuts import render, redirect, get_object_or_404
from .forms import ReviewForm
from products.models import Product
from django.contrib.auth.decorators import login_required
from .models import Review
from django.db.models import Avg

@login_required
def add_review(request, product_id):
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
    return render(request, 'reviews/add_review.html', {'form': form, 'product': product})


def all_reviews(request):
    reviews = Review.objects.all()
    return render(request, 'reviews/all_reviews.html', {'reviews': reviews})


def product_average_rate_calculator(product_id):
    product = Product.objects.get(pk=product_id)
    average_rating = product.reviews.aggregate(Avg('rating'))['rating__avg']
    
    if average_rating is not None:
        product.rating = round(average_rating, 2)
        product.save()