import re


string = '''<h3 class="ellipsis">                                                     2017斗鱼嘉年华                        </h3>'''
partren = r'''<h3 class="ellipsis">(.*)</h3>'''
print(re.findall(partren, string))