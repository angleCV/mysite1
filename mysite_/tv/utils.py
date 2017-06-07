# -*- coding: utf-8 -*-
import os
import re
import django
import urllib.request as ur

class DySpyder():

    def __init__(self):
        pass

    def open_url(self, url):
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}
        req = ur.Request(url=url, headers=headers)  # python2，urllib.request()
        response = ur.urlopen(req)  # python2，urllib2.urlopen()
        return response.read().decode('utf-8')

    def tv_spyder(self):
        url = "https://www.douyu.com/directory/all"
        data = self.open_url(url)
        from bs4 import BeautifulSoup
        cate = ['', 'serach_lastli', 'last','lastserach_lastli']  # - - s- l - ll 6loop
        soup1 = BeautifulSoup(data, 'html.parser')
        soup = soup1.find("ul", id='live-list-contentbox')
        res = []
        for c in cate:
            tmp = soup.findAll('li', c)
            res.extend(tmp)
        return res

    import datetime
    def set_data(self, x):
        import datetime
        res = {}
        # title.__init__
        title0 = str(x.find("h3").next_element)
        spans = x.findAll(["span"])
        # basic info to the link
        tag, dy_name, dy_num = tuple([s.next_element for s in spans][2:5])
        parterb = r'''.*<img data-original=(.*?) height="163" src=(.*?) width="283"/>.*'''
        # the urls of img and gif
        img, gif = re.findall(parterb, repr(x))[0]
        p2 = r'''.*a class="play-list-link" (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?)>.*'''
        t1 = [x for x in re.findall(p2, repr(x))][0]
        # the head of link-info
        for i in range(int(len(t1)/2 - 1)):
            res.setdefault(t1[2*i], t1[2*i+1])
        res.setdefault("dt", datetime.datetime.today())
        res.setdefault('tag', tag)
        res.setdefault('dy_name', dy_name)
        res.setdefault('dy_num', dy_num)
        res.setdefault('title0', title0)
        res.setdefault('img', img)
        res.setdefault('gif', gif)

        return res

    def summary_data180(self):
        l = []
        for x in self.tv_spyder():
            try:
                l.append(self.set_data(x))
            except IndexError:
                pass
        #l = [self.set_data(x) for x in self.tv_spyder()]
        print("进库" + str(len(l))+ "条")
        import pandas as pd
        df_tmp = pd.DataFrame(l)
        df_tmp.to_csv("C:\\Users\\lenovo\\Desktop\\dy180.csv")
        return df_tmp

    #print(summary_data180())

    def main(self):
        os.environ.setdefault("DJANGO_SETTINGS_MODULE", "minicms.settings")
        django.setup()

        from tv.models import Info
        from django.utils import timezone

        df = self.summary_data180()
        print(df.columns)
        import numpy as np
        array2 = np.array(df)
        for i in range(len(df)):
            Info.objects.create(data_rid=array2[i][0],
                                data_rpos=array2[i][1],
                                data_sid=array2[i][2],
                                data_sub_rt=array2[i][3],
                                data_tid=array2[i][4],
                                dt=timezone.now(), ##修改了时间
                                dy_name=array2[i][6],
                                dy_num=array2[i][7],
                                gif=array2[i][8],
                                href=array2[i][9],
                                img=array2[i][10],
                                tag=array2[i][11],
                                target=array2[i][12],
                                title0=array2[i][13]
                                )
        print("执行完毕")


dyspyder = DySpyder()
dyspyder.main()