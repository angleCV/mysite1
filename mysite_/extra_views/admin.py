from django.contrib import admin

# Register your models here.
from .models import Amuse, Says, Pics


class AmuseAdmin(admin.ModelAdmin):
    list_display = ['title', 'content', 'pic', 'url']

class SaysAdmin(admin.ModelAdmin):
    list_display = ['published', 'title', 'content', 'cate', 'pub_date', 'url']

class PicAdmin(admin.ModelAdmin):
    list_display = ['title', 'pic', 'published']

admin.site.register(Amuse, AmuseAdmin)
admin.site.register(Says, SaysAdmin)
admin.site.register(Pics, PicAdmin)

