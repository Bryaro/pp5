from django.shortcuts import render, redirect
from .forms import NewsletterSignupForm
from django.contrib import messages

def newsletter_signup(request):
    if request.method == 'POST':
        form = NewsletterSignupForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Thank you for subscribing to the Cosmos Watches newsletter!')
            return redirect('home')
    else:
        form = NewsletterSignupForm()
    return redirect('home')
