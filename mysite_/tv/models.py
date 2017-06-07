from django.db import models

# Create your models here.

class Info(models.Model):
    data_rid = models.CharField("房间ID", max_length=20)
    data_rpos = models.CharField("data_rpos", max_length=20)
    data_sid = models.CharField("data_sid", max_length=20)
    data_sub_rt = models.CharField("data_sub_rt", max_length=20)
    data_tid = models.CharField("", max_length=20)
    dt = models.DateTimeField("时间")
    dy_name = models.CharField("账号名字", max_length=50)
    dy_num = models.CharField("观看数", max_length=20)
    gif= models.CharField("GIF", max_length=120)
    href = models.CharField("房间url", max_length=20)
    img = models.CharField("IMG_url", max_length=120)
    tag = models.CharField("标签", max_length=120)
    target = models.CharField("目标", max_length=20)
    title0 = models.CharField("标题", max_length=120)

    def __str__(self):
        return self.dy_name + "_" + self.title0

    class Meta:
        verbose_name = '斗鱼时间信息'
        verbose_name_plural = '斗鱼时间信息180条'

class ImgTools(models.Model):
    img_url = models.URLField(verbose_name="线上路径")
    dt = models.DateTimeField("时间")
    data_rid = models.CharField("房间ID", max_length=20)
    upload_to = models.URLField(verbose_name="本地路径")