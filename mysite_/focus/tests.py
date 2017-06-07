from django.test import TestCase
'''
	安全热点	/news/safeHot/	1
	管理政策	/news/ManagementPolicy/	2
	南方安全视角	/news/SouthernSecurityPerspective/	3
	安全法治	/news/SafeLaw/	4
	人才培养	/news/TalentDevolopment/	5
	前沿技术	/news/AdvancedTechnology/	6
	趣味科普	/news/FunScience/	7
	主题活动	/news/ThemeActivity/	8
	热点专题	/news/HotTopics/	9
	网络安全法	/news/NetSafeLaw/	10
	公民个人信息保护	/news/PersonInfoProtect/	11
	NSA武器库	/news/NSAarsenal/	12

'''


# Create your tests here.
'''
select a.*,b.* from (select *,1 as num from pages.news_focusarticle
    union all
select *,2 from pages.news_policyarticle
 union all
select *,4 from pages.news_lawarticle
 union all
 select *,5 from pages.news_talentsarticle
 union all
select *,6 from pages.news_techarticle
union all
select *,7 from pages.news_popularscience
) as a
left join(
    select * from db_3g.news_categary as b
)
on a.k = b.num;



'''
import pymysql
def test():
    conn = pymysql.connect(
        host='localhost',
        port=3306,
        user='actanble',
        passwd='123',
    )
    cur = conn.cursor()
    cur.execute('''
select *,1 from pages.news_focusarticle
    union all
select *,2 from pages.news_policyarticle
 union all
select *,3 from pages.news_lawarticle
 union all
 select *,4 from pages.news_talentsarticle
 union all
select *,5 from pages.news_techarticle
union all
select *,6 from pages.news_popularscience;
        ''')
    kk = []
    for row in cur.fetchall():
        kk.append((row[1], row[2], row[3], row[4])) #realname and content
    print(type(row[1]))
    print(kk)

    cur.execute('''
        select * from mainapp_lastpostid;
    ''')
    last_post = []
    for row in cur.fetchall():
        last_post.append(row)
        print(last_post)

    print(row)
    print('Done!')

'''
insert into db_3g.news_article (categary_id, pic, title, content, pub_date, author, sourcefrom) select c.categary_id, c.pic, c.title, c.content, c.pub_date, c.author,c.sourcefrom  from(

select a.toutiao, b.id as categary_id, a.pic, a.title, a.abstract, a.content, a.published, a.pub_date, a.author, a.sourcefrom, a.slug_url from
 (
    select *,1 as num from pages.news_focusarticle
    union all
    select *,2 from pages.news_policyarticle
     union all
    select *,4 from pages.news_lawarticle
     union all
     select *,5 from pages.news_talentsarticle
     union all
    select *,6 from pages.news_techarticle
    union all
    select *,7 from pages.news_popularscience
) as a

left join(
    select * from db_3g.news_categary
) as b
on a.num = b.num
)as c;

'''
'''
toutiao = models.BooleanField('设为头条', default=False)
    categary = models.ForeignKey(Categary)
    pic = models.ImageField('头条图片436*200',upload_to='uploads/top_images/', default='uploads/top_images/default.jpg')
    title = models.CharField('标题',max_length=255)
    abstract = models.TextField('摘要', default='', blank=True)
    content = UEditorField('内容', height=500, width=1200,
        default='', blank=True, imagePath="uploads/images/%(basename)s_%(datetime)s.%(extname)s",
        toolbars='full', filePath='uploads/files/%(basename)s_%(datetime)s.%(extname)s')
    published = models.BooleanField('正式发布',default=True)
    pub_date = models.DateTimeField('发表日期')
    author = models.CharField('作者',default='清朗安全',max_length=255)
    sourcefrom = models.CharField('来源',default='清朗安全',max_length=255)
    slug_url = models.CharField('默认网址勿改',default='focus_detail',max_length=255)
    slug_name = models.CharField('默认栏目名勿改', default='安全热点',max_length=255)

'''
