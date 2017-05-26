from django.contrib import admin

# Register your models here.
from twfabu.models import Item


def make_author(modeladmin, request, queryset):
    queryset.update(realname = '清朗')
make_author.short_description = "Mark selected content's Author as QL"

@admin.register(Item)
class ItemAdmin(admin.ModelAdmin):
    list_display = ('realname', 'content')
    ordering = ['-dt']
    actions = ['make_author']