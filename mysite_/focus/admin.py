from django.contrib import admin
from django.db import models
from django import forms
from .models import Comment, Article, Column, NewUser,Author


class CommentAdmin(admin.ModelAdmin):
	list_display = ('user_id', 'article_id', 'pub_date', 'content', 'poll_num')


class ArticleAdmin(admin.ModelAdmin):
	'''
		formfield_overrides = {
		models.TextField:
			{'widget': forms.Textarea(
                attrs={'rows': 41, 'cols': 100})
			},
    }
	'''
	list_display = ('title','pub_date', 'poll_num', 'set_top', 'published')
	actions = ['make_published', 'set_them_top', 'drop_published', 'drop_them_top']
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



class ColumnAdmin(admin.ModelAdmin):
	list_display = ('name', 'intro') 


admin.site.register(Comment, CommentAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Column, ColumnAdmin)
admin.site.register(NewUser)
admin.site.register(Author)