from django.shortcuts import render, redirect
from .forms import ContactForm
from django.core.mail import send_mail
from django.contrib import messages
from django.conf import settings


def index(request):
    """ View to return idnex page """
    return render(request, 'home/index.html')


def about(request):
    """ View to about page """
    return render(request, 'home/about.html')


def faq(request):
    """ View to FAQ page """
    return render(request, 'home/faq.html')


def contact(request):
    """ View to Contact page """
    return render(request, 'home/contact.html')

def policy(request):
    return render(request, 'home/policy.html')

def contact(request):
    """
    Handles the contact page display and form submission.

    On POST, sends an email with the form data. On success,
    redirects to the home page with a success message.
    """
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            message = form.cleaned_data['message']

            subject = f"Contact Form Submission from {name}"
            message = f"From: {name}\nEmail: {email}\n\nMessage:\n{message}"
            recipient_list = [settings.DEFAULT_FROM_EMAIL]

            send_mail(
                subject,
                message,
                email,
                recipient_list,
                fail_silently=False,
            )

            messages.success(request, 'Your message has been sent. Thank you!')
            return redirect('home')
    else:
        form = ContactForm()

    return render(request, 'home/contact.html', {'form': form})
