from django.conf.urls import include, url
from . import views
from .add_views import add_views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^register/$', views.register, name='register'),
    url(r'^login/$', views.log_in, name='login'),
    url(r'^logout/$', views.log_out, name='logout'),
    url(r'^(?P<article_id>[0-9]+)/comment/$', views.comment, name='comment'),
    url(r'^(?P<article_id>[0-9]+)/keep/$', views.get_keep, name='keep'), 
    url(r'^(?P<article_id>[0-9]+)/poll/$', views.get_poll_article, name='poll'),
    url(r'^(?P<article_id>[0-9]+)/$', views.article, name='article'),

    # add
    url(r'^django/$', add_views.django, name='django'),
    url(r'^dataminming/$', add_views.datamining, name='dataminming'),
    url(r'^directx/$', add_views.directx, name='directx'),
    url(r'^lowchat/$', add_views.lowchat, name='lowchat'),
    url(r'^others/$', add_views.others, name='others'),
    url(r'^aboutme/$', add_views.aboutme, name='aboutme'),
    url(r'^says/$', add_views.says, name='says'),
    url(r'^python/$', add_views.python, name='python'),
    url(r'^c/$', add_views.c, name='c'),

]
