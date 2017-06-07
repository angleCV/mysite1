from django.shortcuts import render

# Create your views here.

def index(request):
    return render(request, "index.html", {})

def douyu(request):
    return render(request, "tv.html", {})


def longzhu(request):
    return render(request, "tv.html", {})


def zhanqi(request):
    return render(request, "tv.html", {})


def huya(request):
    return render(request, "tv.html", {})

