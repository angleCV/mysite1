from django.conf.urls import *
from . import views

from .views import RSSFeed

app_name = 'blog'
urlpatterns = [
    url(r'^$', views.home, name='index_base'),
    url(r'^(?P<id>\d+)$', views.detail, name="PageDetail"),

    url(r'^archives/$', views.archives, name='archives'),
    url(r'^aboutme/$', views.about_me, name='about_me'),
    url(r'^tag/(?P<tag>\w+)/$', views.search_tag, name='search_tag'),
    url(r'^search/$', views.blog_search, name='search'),
    url(r'^feed/$', RSSFeed(), name="RSS"),
]