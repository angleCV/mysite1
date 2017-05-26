from django.shortcuts import render

# Create your views here.
from django.http import JsonResponse
from django.http import HttpResponse
from .models import Item,LastPostID
from datetime import datetime

## init-need now is no-use
def zbList(request):
    #if not request.is_ajax():
    #    return HttpResponse(None)
    if LastPostID.objects.all() is None:
        LastPostID.objects.create(postdt = datetime.today(), postid = 1)
    length = len(LastPostID.objects.all())
    last = LastPostID.objects.all()[length - 1]
    # the last post datetime
    last_dt = last.postdt
    # set the name_dict
    name_dict = {}
    lst = [x for x in Item.objects.all() if x.dt > last_dt]
    # set the zblist above owing to the need
    zblist = []
    for x in lst:
        i_dir = {}
        i_dir.setdefault("realname", x.realname)
        i_dir.setdefault("content", x.content)
        zblist.append(i_dir)
    name_dict.setdefault('zblist', zblist)

    LastPostID.objects.create(postdt=datetime.today(), postid=length+1)
    return JsonResponse(name_dict)

### add the history of all and use ;
def history(request):
    lst = Item.objects.all()
    pid = Item.objects.all()[0]
    LastPostID.objects.create(postdt=datetime.today(), postid=pid.id)
    # set the zblist
    zblist = []
    for x in lst:
        i_dir = {}
        i_dir.setdefault("realname", x.realname)
        i_dir.setdefault("content", x.content)
        zblist.append(i_dir)

    return render(request, "resource.html", {"zblist":zblist})


## add data on the top;
def new_append(request):
    if LastPostID.objects.all() is None:
        LastPostID.objects.create(postdt = datetime.today(), postid = 0)
    length = len(Item.objects.all())
    # the sign of last add
    pid = LastPostID.objects.all()[len(LastPostID.objects.all()) - 1]
    last = Item.objects.all()[0]
    lst = [x for x in Item.objects.all() if x.id > pid.postid] # add_need of the data from database
    # sign the date that have add
    add_ls = []
    for x in lst:
        i_dir = {}
        i_dir.setdefault("realname", x.realname)
        i_dir.setdefault("content", x.content)
        add_ls.append(i_dir)
        LastPostID.objects.create(postdt=datetime.today(), postid=last.id)
    print(add_ls)
    return JsonResponse({"value":add_ls})

def add_ls(request):
    if LastPostID.objects.all() is None:
        LastPostID.objects.create(postdt = datetime.today(), postid = 1)
    length = len(LastPostID.objects.all())
    last = LastPostID.objects.all()[length - 1]
    last_dt = last.postdt
    lst = [x for x in Item.objects.all() if x.dt > last_dt]
    add_ls = []
    for x in lst:
        i_dir = {}
        i_dir.setdefault("realname", x.realname)
        i_dir.setdefault("content", x.content)
        add_ls().append(i_dir)
    test = "test-for-ul-get-add"
    return render(request, "ul.html", {"add_ls":add_ls, "test":test})

def home(request):
    return history(request)

def test_ajax(request):
    dict = [
        {"optionKey": "1", "optionValue": "Canon in D"},
        {"optionKey": "2", "optionValue": "Wind Song"},
        {"optionKey": "3", "optionValue": "Wings"}
    ]
    return JsonResponse({"dict": dict})

def test_list(request):
    name_dict = {}
    lst = Item.objects.all()
    # set the zblist
    zblist = []
    for x in lst:
        i_dir = {}
        i_dir.setdefault("realname", x.realname)
        i_dir.setdefault("content", x.content)
        zblist.append(i_dir)
    return JsonResponse({"value":zblist})
#no use
def new_append1(request):
    if LastPostID.objects.all() is None:
        LastPostID.objects.create(postdt = datetime.today(), postid = 1)
    length = len(LastPostID.objects.all())
    last = LastPostID.objects.all()[length - 1]
    last_dt = last.postdt
    print(last_dt)
    lst = [x for x in Item.objects.all() if x.dt > last_dt] # add_need of the data from database
    # sign the date that have add
    add_ls = []
    flag  = False
    for x in lst:
        i_dir = {}
        i_dir.setdefault("realname", x.realname)
        i_dir.setdefault("content", x.content)
        add_ls.append(i_dir)
        flag = True
    if flag:
        print ("不是空, 进去添加过元素")
        LastPostID.objects.create(postdt=datetime.today(), postid=length + 1)
    print(add_ls)

    return JsonResponse({"value":add_ls})



