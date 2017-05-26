from django.contrib import admin

# Register your models here.
from .models import Article, Tag
from django.contrib.contenttypes.models import ContentType
from django.http import HttpResponseRedirect


class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'abstract', 'set_top', 'published')
    ordering = ['-pub_date']
    actions = ['set_them_top', 'make_published','drop_published', 'drop_them_top', 'export_selected_objects']

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

    def export_selected_objects(self, request, queryset):
        selected = request.POST.getlist(admin.ACTION_CHECKBOX_NAME)
        ct = ContentType.objects.get_for_model(queryset.model)
        return HttpResponseRedirect("/export/?ct=%s&ids=%s" % (ct.pk, ",".join(selected)))
    export_selected_objects.short_description = "导出请求"

admin.site.register(Article, ArticleAdmin)
admin.site.register(Tag)