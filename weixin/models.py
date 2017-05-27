from django.db import models
from DjangoUeditor.models import UEditorField
# Create your models here.

class ImageStory(models.Model):
    title = models.CharField('图片标题',max_length=255,default='')
    homepic = models.ImageField('图片',upload_to='uploads/jnu/images/',default='uploads/jnu/images/default.jpg')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '首页中部栏左侧图片'

class WeiXinArticle(models.Model):
    set_top = models.BooleanField('设为头条',default=False)
    pic = models.ImageField('文章标头图片535*270',upload_to='uploads/jnu/images/',default='uploads/jnu/images/default.jpg')
    #pic2 = models.ImageField('首页图片宽144',upload_to='uploads/top_images/',default='uploads/top_images/default.jpg')
    title = models.CharField('标题',max_length=255)
    abstract = models.TextField('摘要', default='', blank=True)
    content = UEditorField('内容', height=500, width=1200,
        default='', blank=True, imagePath="uploads/jnu/images/content/%(basename)s_%(datetime)s.%(extname)s",
        toolbars='full', filePath='uploads/jnu/files/%(basename)s_%(datetime)s.%(extname)s')
    published = models.BooleanField('正式发布',default=True)
    pub_date = models.DateTimeField('发表日期')
    author = models.CharField('作者',default='暨大信息科学院',max_length=255)
    sourcefrom = models.CharField('来源',default='暨大信息科学院',max_length=255)
    slug_url = models.CharField('默认网址勿改',default='news',max_length=255)
    Tag = models.CharField('标签',max_length=155)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = "微信文章"


