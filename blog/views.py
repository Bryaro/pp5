from django.shortcuts import render, redirect, get_object_or_404
from .models import Post, Category, Comment
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
from django.utils import timezone
from .forms import PostForm, CommentForm
from django.urls import reverse
from django.conf import settings


def blog_index(request):
    """
    View function to display a list of posts.
    Posts are displayed in descending order of their creation time.
    """
    posts = Post.objects.all().order_by('-created_on')
    return render(request, "blog/blog_index.html", {"posts": posts})


def blog_detail(request, pk):
    """
    View function for a detailed view of a blog post,
    identified by its primary key (pk).
    Handles both displaying the post's details along with its comments,
    and the submission of new comments. Redirects unauthenticated users
    to login page when attempting to post a comment.
    """
    post = get_object_or_404(Post, pk=pk)
    comments = post.comments.all()

    if request.method == 'POST':
        if not request.user.is_authenticated:
            next_url = request.build_absolute_uri()
            return HttpResponseRedirect(
                f'{settings.LOGIN_URL}?next={next_url}')

    if request.method == 'POST':
        comment_form = CommentForm(request.POST)
        if comment_form.is_valid():
            comment = comment_form.save(commit=False)
            comment.post = post
            comment.user = request.user
            comment.save()
            return redirect('blog:blog_detail', pk=post.pk)
    else:
        comment_form = CommentForm()

    return render(request, 'blog/blog_detail.html', {
        'post': post,
        'comments': comments,
        'comment_form': comment_form
    })


def blog_category(request, category):
    """
    View function to display posts filtered by a specific category.
    """
    posts = Post.objects.filter(
        categories__name__contains=category).order_by('created_on')
    return render(
        request, "blog/blog_category.html", {
            "category": category, "posts": posts})


@login_required
def create_post(request):
    """
    View function for creating a new blog post.
    Access is restricted to staff members.
    Handles both the display of the post creation form,
    and the saving of new post data.
    """
    if not request.user.is_staff:
        return redirect('block:blog_index')

    if request.method == 'POST':
        form = PostForm(request.POST, request.FILES)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.save()
            return redirect('blog:blog_detail', pk=post.pk)
    else:
        form = PostForm()
    return render(request, 'blog/create_post.html', {'form': form})


@login_required
def post_comment(request, pk):
    """
    View function for posting a comment on a blog post.
    Access is restricted to authenticated users.
    Handles the submission of new comments.
    """
    post = get_object_or_404(Post, pk=pk)
    if request.method == 'POST':
        comment_form = CommentForm(data=request.POST)
        if comment_form.is_valid():
            new_comment = comment_form.save(commit=False)
            new_comment.post = post
            new_comment.user = request.user
            new_comment.save()
            return redirect('blog:blog_detail', pk=post.pk)
    else:
        comment_form = CommentForm()
    return render(request, 'blog/add_comment.html', {
        'comment_form': comment_form
    })
