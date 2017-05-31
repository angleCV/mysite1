#from django.test import TestCase

# Create your tests here.
import urllib.request as ur

url = "http://zhannei.baidu.com/cse/search?q=%E5%AF%92%E9%97%A8&click=1&s=13603361664978768713&nsid="



def open_url(url):
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}
    req = ur.Request(url=url, headers=headers)  # python2，urllib.request()
    response = ur.urlopen(req)  # python2，urllib2.urlopen()
    return response.read().decode('utf-8')

data = open_url(url)
print(data)

