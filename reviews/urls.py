from django.urls import path
from .views import add_review, all_reviews, edit_review

app_name = 'reviews'

urlpatterns = [
    path('add/<int:product_id>/', add_review, name='add_review'),
    path('reviews/edit/<int:review_id>/', edit_review, name='edit_review'),
    path('', all_reviews, name='all_reviews'),
]