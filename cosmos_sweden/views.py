from django.shortcuts import render
from newsletter.forms import NewsletterSignupForm


def handler404(request, exception):
    """ Error Handler 404 - Page Not Found """
    return render(request, "errors/404.html", status=404)


def some_view(request):
    newsletter_form = NewsletterSignupForm()
    return render(request, 'yourtemplate.html', {'newsletter_form': newsletter_form})
