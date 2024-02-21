from django.shortcuts import render

# Create your views here.

def index(request):
    """ View to return idnex page """
    return render(request, 'home/index.html')