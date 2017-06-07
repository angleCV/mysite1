from django.contrib import admin
from .models import Info
# Register your models here.


class InfoAdmin(admin.ModelAdmin):

    list_display = ('dy_name', 'title0', 'dy_num', 'tag', 'data_rid', "dt")


admin.site.register(Info, InfoAdmin) 