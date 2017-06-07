from django.contrib import admin
from django.db import models
from django import forms
from .models import WeiXinArticle

class WeiXinArticleAdmin(admin.ModelAdmin):
	formfield_overrides = {
		models.TextField:
			{'widget': forms.Textarea(
                attrs={'rows': 41, 'cols': 100})
			},
    }

	list_display = ('title','pub_date', 'author')

	def make_published(self, request, queryset):
		queryset.update(published=True)
	make_published.short_description = "选定出版"

	def set_them_top(self, request, queryset):
		queryset.update(set_top=True)
	set_them_top.short_description = "选定置顶"

	def drop_published(self, request, queryset):
		queryset.update(published=True)
	drop_published.short_description = "取消出版"

	def drop_them_top(self, request, queryset):
		queryset.update(set_top=True)
	drop_them_top.short_description = "取消置顶"

admin.site.register(WeiXinArticle, WeiXinArticleAdmin)
