# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-05-27 01:31
from __future__ import unicode_literals

import DjangoUeditor.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('focus', '0002_auto_20170527_0755'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='pic',
            field=models.ImageField(default='uploads/blog/images/default.jpg', upload_to='uploads/blog/images/', verbose_name='文章标头图片535*270'),
        ),
        migrations.AddField(
            model_name='article',
            name='set_top',
            field=models.BooleanField(default=False, verbose_name='设为置顶'),
        ),
        migrations.AlterField(
            model_name='article',
            name='content',
            field=DjangoUeditor.models.UEditorField(blank=True, default='', verbose_name='内容'),
        ),
    ]
