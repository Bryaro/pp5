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


def policy(request):
    """ View to Privacy Policy page """
    return render(request, 'home/policy.html')


def quality(request):
    """ View for the Quality & Certification page """
    return render(request, 'home/quality.html')


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
            user_message = form.cleaned_data['message']  # Rename to avoid conflict

            subject = f"Contact Form Submission from {name}"
            message_body = f"From: {name}\nEmail: {email}\n\nMessage:\n{user_message}"
            recipient_list = [settings.DEFAULT_FROM_EMAIL]

            # CORRECT VERSION:
            send_mail(
                subject,
                message_body,
                settings.DEFAULT_FROM_EMAIL,  # ← Use YOUR authorized email here
                recipient_list,
                fail_silently=False,
                reply_to=[email],  # ← Add reply_to with visitor's email
            )

            messages.success(request, 'Your message has been sent. Thank you!')
            return redirect('home')
    else:
        form = ContactForm()

    return render(request, 'home/contact.html', {'form': form})