from django.db import models


# Create your models here.
class Says(models.Model):
    published = models.BooleanField("发布", default=True)
    title = models.CharField("标题两三字", max_length=100)
    content = models.CharField("内容", max_length=300)
    cate = models.CharField("末尾按钮", max_length=30)
    url = models.CharField("超链接", max_length=100)
    pub_date = models.DateTimeField("留言日期")

    class Meta:
        verbose_name = '留言'

class Pics(models.Model):
    title = models.CharField("图片名称", max_length=100, default="不采用")
    pic = models.ImageField('小图片110x80', upload_to='uploads/', default='uploads/default.jpg')
    published = models.BooleanField("选用", default=True)

    class Meta:
        verbose_name = '4张小图片110x80'


## 娱乐推荐
class Amuse(models.Model):
    title = models.CharField("标题两三字", max_length=100)
    content = models.CharField("内容", max_length=300)
    pic = models.ImageField('小图片110x80', upload_to='uploads/', default='uploads/default.jpg')
    url = models.CharField("超链接", max_length=100)

    class Meta:
        verbose_name = '4张轮播广告图'


