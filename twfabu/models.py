from django.db import models
import datetime
from django.utils import timezone
from django.utils.encoding import python_2_unicode_compatible
from DjangoUeditor.models import UEditorField


class Item(models.Model):
    #img = models.ImageField(upload_to='pic', default= None)
    realname = models.CharField(max_length=30, default="None")
    content = UEditorField('内容', height=500, width=1200,
        default='', blank=True, imagePath="uploads/images/%(basename)s_%(datetime)s.%(extname)s",
        toolbars='full', filePath='uploads/files/%(basename)s_%(datetime)s.%(extname)s')
    dt = models.DateTimeField('DatetimeCommit')

    class Meta:
        ordering = ['-id']

    def __str__(self):
        return str(self.dt)+"_"+str(self.realname)+":"+str(self.content)

class LastPostID(models.Model):
    postdt = models.DateTimeField('DatetimeCommit')
    postid = models.IntegerField()


