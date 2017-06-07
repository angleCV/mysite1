# -*- coding: utf-8 -*-
import re
import urllib.request as ur

class LzSpyder():

    def __init__(self):
        pass

    def open_url(self, url):
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}
        req = ur.Request(url=url, headers=headers)  # python2，urllib.request()
        response = ur.urlopen(req)  # python2，urllib2.urlopen()
        return response.read().decode('utf-8')

    def tv_spyder(self):
        url = "http://longzhu.com/channels/all"
        data = self.open_url(url)
        from bs4 import BeautifulSoup
        soup1 = BeautifulSoup(data, 'html.parser')
        soup = soup1.find("div", id='list-con')
        for x in soup.findAll("a"):
            print("==============")
            print(x)
            return x

    def extract_data(self, x):
        import datetime
        res = {}
        # title.__init__
        title0 = str(x.find("h3").next_element)
        p2 = r'''.*<a class="livecard" (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?),(.*?):(.*?),(.*?):(.*?),(.*?):(.*?)" (.*?)=(.*?) (.*?)=(.*?) (.*?)=(.*?)>.*'''
        t1 = [x for x in re.findall(p2, repr(x))][0]
        # the head of link-info
        for i in range(int(len(t1) / 2 - 1)):
            res.setdefault(t1[2 * i], t1[2 * i + 1])
        res.setdefault("dt", datetime.datetime.today())

        p3 = r'''.*<ul class="livecard-meta">
<li class="livecard-meta-item livecard-meta-views">
<span class="livecard-meta-item-label">(.*?):</span>
<span class="livecard-meta-item-text">(.*?)</span>
</li>
<li class="livecard-meta-item livecard-meta-game">
<span class="livecard-meta-item-label">(.*?):</span>
<span class="livecard-meta-item-text">(.*?)</span>
</li>
</ul>
<span class="livecard-modal">
<strong class="livecard-modal-username">(.*?)</strong>
<i class="licecard-modal-playicon"></i>
</span>.*'''
        t2 = [x for x in re.findall(p3, repr(x))][0]
        print(t2)



test = LzSpyder()
test.extract_data(test.tv_spyder()[0])