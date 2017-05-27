from django import template
from django.template.defaultfilters import stringfilter


register = template.Library()


@register.filter(is_safe=True)
@stringfilter
def test_fitter(value):
    return value[0:3]


@register.filter(is_safe=True)
@stringfilter
def change_date(value):
    from datetime import datetime
    try:
        d = datetime.datetime.strptime(value, "%b, %d %Y - %H:%M:%S")
        res = datetime.today() - d
        print(value)
        print("格式化日期")
        print(d)
    except:
        return "转化失败111"
    if res[1] > 10000000:
        return value

    res1 = "距现在" + str(res[1]) + "秒"
    return res1
