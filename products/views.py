from django.shortcuts import render, redirect, reverse, get_object_or_404
from django.contrib import messages
from django.db.models import Q
from .models import Product, Category

from django.contrib.auth.decorators import login_required, user_passes_test
from .forms import ProductForm


def staff_or_superuser_check(user):
    """Check if the user is staff or a superuser."""
    return user.is_staff or user.is_superuser


def all_products(request):
    """
    Display all products, handle sorting, search queries,
    and category filtering.
    """
    products = Product.objects.all()
    query = None
    categories = None
    sort = None
    direction = None

    if request.GET:
        if 'sort' in request.GET:
            sortkey = request.GET['sort']
            sort = sortkey
            if sortkey == 'name':
                sortkey = 'lower_name'
                products = products.annotate(lower_name=Lower('name'))

            if 'direction' in request.GET:
                direction = request.GET['direction']
                if direction == 'desc':
                    sortkey = f'-{sortkey}'
            products = products.order_by(sortkey)

        if 'category' in request.GET:
            categories = request.GET['category'].split(',')
            products = products.filter(category__name__in=categories)
            categories = Category.objects.filter(name__in=categories)

        if 'q' in request.GET:
            query = request.GET['q']
            if not query:
                messages.error(request, "You must enter a key word to search")
                return redirect(reverse('products'))

            queries = Q(
                name__icontains=query) | Q(description__icontains=query)
            products = products.filter(queries)

    current_sorting = f'{sort}_{direction}'

    context = {
        'products': products,
        'search_term': query,
        'current_categories': categories,
    }

    return render(request, 'products/products.html', context)


def product_info(request, product_id):
    """ View to show product information when product is opened """

    product = get_object_or_404(Product, pk=product_id)

    context = {
        'product': product,
    }

    return render(request, 'products/product_info.html', context)


@login_required
@user_passes_test(staff_or_superuser_check)
def add_product(request):
    """
    Allow staff or superusers to add a new product to the store.
    """
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('products')
    else:
        form = ProductForm()
    # simply to query all products for now, till full CRUD is checked
    products = Product.objects.all()
    return render(
        request, 'products/add_product.html', {
            'form': form, 'products': products})


@login_required
@user_passes_test(staff_or_superuser_check)
def edit_product(request, product_id):
    """
    Allow staff or superusers to edit an existing product's details.
    """
    product = get_object_or_404(Product, id=product_id)
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES, instance=product)
        if form.is_valid():
            form.save()
            return redirect('add_product')
    else:
        form = ProductForm(instance=product)

    context = {
        'form': form,
        'product': product,
    }
    return render(request, 'products/edit_product.html', context)


@login_required
@user_passes_test(staff_or_superuser_check)
def delete_product(request, product_id):
    """
    Allow staff or superusers to delete a product from the store.
    """
    product = get_object_or_404(Product, id=product_id)
    product.delete()
    messages.success(request, 'Product deleted successfully!')
    return redirect('add_product')
