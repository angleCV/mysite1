# -*- coding: utf-8 -*-
import re
import urllib.request as ur

from django.shortcuts import render

def open_url(url):
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}
    req = ur.Request(url=url, headers=headers)  # python2，urllib.request()
    response = ur.urlopen(req)  # python2，urllib2.urlopen()
    return response.read().decode('utf-8')

def find_min(nums):
    for i in range(len(nums)):
        if nums[i+1] > nums[i]:
            return i, nums[i]

def set_urls(book_id):
    url = "http://www.biqudu.com/" + book_id + "/"
    partern = r".*<dd> <a href=(.*?)>(.*?)</a></dd>.*"
    import pandas as pd
    import numpy as np
    ## 本方法不能分卷， 后续补上相关的事情优化
    df1 = pd.DataFrame(np.array(re.findall(partern, open_url(url))), columns=["url", "title"])
    df1["num"] = [int(list(re.findall(r".*/(.*?).html", x))[0]) for x in df1["url"]]
    ####### find all-span
    start_index = find_min(df1["num"])[0]
    return df1[start_index: len(df1)]


#print(set_urls("21_21470"))


def tv_spyder():
    url = "https://www.douyu.com/directory/all"
    #url = "http://longzhu.com/channels/all"
    data = open_url(url)
    from bs4 import BeautifulSoup
    cate = ['', 'serach_lastli', 'last','lastserach_lastli'] # - - s- l - ll 6loop
    soup1 = BeautifulSoup(data, 'html.parser')
    soup = soup1.find("ul", id='live-list-contentbox')
    res = []
    for c in cate:
        tmp = soup.findAll('li', c)
        res.extend(tmp)
    return res

import datetime
def set_data(x):
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


def summary_data180():
    l = [set_data(x) for x in tv_spyder()]
    import pandas as pd
    df_tmp = pd.DataFrame(l)
    df_tmp.to_csv("C:\\Users\\lenovo\\Desktop\\dy180.csv")
    return df_tmp

#print(summary_data180())

# 为单独一个小说页面爬取;txt 文档; content;
def detail():
    url = "http://www.biqudu.com/21_21470/1394112.html"
    data = open_url(url)
    from bs4 import BeautifulSoup
    soup = BeautifulSoup(data, 'html.parser')
    content = soup.findAll('div', id="content")[0]
    return content

# print(detail())


def test(request):
    content = detail()
    return render(request, "base_test.html", {"content": content})


def tv_spyder2():
    #url = "https://www.douyu.com/directory/all"
    url = "http://longzhu.com/channels/all"
    data = open_url(url)
    from bs4 import BeautifulSoup
    soup1 = BeautifulSoup(data, 'html.parser')
    soup = soup1.find("div", id="list-con")
    print(soup.findAll("a"))

#tv_spyder2()
'''
data = open_url("https://www.pixiv.net/ranking.php?mode=daily&content=illust")
print(data)
'''

def web_write_pic():
    web = ur.urlopen("https://www.pixiv.net/member_illust.php?mode=medium&illust_id=61131170")
    itdata = web.read()
    f = open('test.png', "wb")
    f.write(itdata)
    f.close()
#web_write_pic()
