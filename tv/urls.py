from django.conf.urls import include, url

from . import views


urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'douyu/$', views.douyu, name='douyu'),
    url(r'longzhu/$', views.longzhu, name='longzhu'),
    url(r'zhanqi/$', views.zhanqi, name='zhanqi'),
    url(r'huya/$', views.huya, name='zhanqi'),

]
