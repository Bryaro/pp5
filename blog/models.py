from django.db import models
from django.contrib.auth.models import User
from django.conf import settings


class Category(models.Model):
    """
    Represents a category for grouping blog posts.
    Each category has a name and an optional description.
    """
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True)

    def __str__(self):
        return self.name


class Post(models.Model):
    """
    Represents a blog post.
    Each post has a title, body, creation and modification timestamps,
    an optional image, and may be associated with multiple categories and an author.
    """
    title = models.CharField(max_length=200)
    body = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)
    categories = models.ManyToManyField('Category', related_name='posts')
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='post_images/', blank=True, null=True)

    def __str__(self):
        return self.title


class Comment(models.Model):
    """
    Represents a comment made by a user on a blog post.
    Each comment is linked to a specific post and user,
    contains a body of text, and has a timestamp indicating when it was created.
    The comments are ordered by their creation timestamp.
    """
    post = models.ForeignKey(
        'Post', on_delete=models.CASCADE, related_name='comments')
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
        related_name='comments', null=True)
    body = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['created_on']

    def __str__(self):
        username = self.user.username if self.user else 'Anonymous'
        return f'Comment {self.body[:50]} by {username}'
