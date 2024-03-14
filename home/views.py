from django.shortcuts import render

# Create your views here.

def index(request):
    """ View to return idnex page """
    return render(request, 'home/index.html')

def about(request):
    """ View to about page """
    return render(request, 'home/about.html')

def faq(request):
    """ View to FAQ page """
    return render(request, 'home/faq.html')