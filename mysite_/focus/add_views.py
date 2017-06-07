from django.shortcuts import render, redirect, get_object_or_404
from .models import Article, Comment, Poll, NewUser
from .forms import CommmentForm, LoginForm, RegisterForm, SetInfoForm, SearchForm
from django.contrib.auth.decorators import login_required
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth import authenticate, login, logout

class CSS():
    def __init__(self):
        pass

    def django(self, requset):
        pass

    def datamining(self, requset):
        pass

    def directx(self, requset):
        pass

    def others(self, requset):
        pass

    def lowchat(self, requset):
        pass

    def python(self, requset):
        pass

    def c(self, requset):
        pass

    def aboutme(self, requset):
        pass

    # liuyanban
    def says(self, request):
        pass

add_views = CSS()