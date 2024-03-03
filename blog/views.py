from django.shortcuts import render, get_object_or_404
from .models import Post, Category

def blog_index(request):
    posts = Post.objects.all().order_by('-created_on')
    return render(request, "blog/blog_index.html", {"posts": posts})

def blog_detail(request, pk):
    post = get_object_or_404(Post, pk=pk)
    return render(request, "blog/blog_detail.html", {"post": post})

def blog_category(request, category):
    posts = Post.objects.filter(categories__name__contains=category).order_by('created_on')
    return render(request, "blog/blog_category.html", {"category": category, "posts": posts})