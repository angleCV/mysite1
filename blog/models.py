from django.db import models
from django.core.urlresolvers import reverse
from DjangoUeditor.models import UEditorField
# Create your models here.


class Tag(models.Model):
    tag_name = models.CharField(max_length=64)

    def __str__(self):
        return self.tag_name


class Article(models.Model):
    set_top = models.BooleanField('设为置顶', default=False)
    pic = models.ImageField('文章标头图片535*270',upload_to='uploads/blog/images/',default='uploads/blog/images/default.jpg')
    #pic2 = models.ImageField('首页图片宽144',upload_to='uploads/top_images/',default='uploads/top_images/default.jpg')
    title = models.CharField('标题',max_length=255)
    abstract = models.TextField('摘要', default='', blank=True)
    category = models.CharField(max_length=50, blank=True)
    content = UEditorField('内容', height=500, width=1200,
        default='', blank=True, imagePath="uploads/blog/images/content/%(basename)s_%(datetime)s.%(extname)s",
        toolbars='full', filePath='uploads/blog/files/%(basename)s_%(datetime)s.%(extname)s')
    published = models.BooleanField('正式发布',default=True)
    pub_date = models.DateTimeField('发表日期')
    author = models.CharField('作者',default='章半仙',max_length=255)
    sourcefrom = models.CharField('来源',default='本网',max_length=255)
    slug_url = models.CharField('默认网址勿改',default='./#',max_length=255)
    tag = models.ManyToManyField(Tag, blank=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        path = reverse('detail', kwargs={'id':self.id})
        return "http://127.0.0.1:8000%s" % path

    class Meta:
        verbose_name = 'Article'


class Author(models.Model):
    name = models.CharField('名字',default='章半仙',max_length=255)
    source_from = models.CharField('来源',default='本网',max_length=255)
    describtion = models.CharField('描述', default=' ', max_length=255)
    features = models.CharField('特征', default=' ', max_length=255)
    cookies = models.CharField('记录', default=' ', max_length=255)



