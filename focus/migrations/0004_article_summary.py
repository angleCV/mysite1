# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-06-07 09:39
from __future__ import unicode_literals

import DjangoUeditor.models
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('focus', '0003_auto_20170527_0931'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='summary',
            field=DjangoUeditor.models.UEditorField(blank=True, default='', verbose_name='内容'),
        ),
    ]
