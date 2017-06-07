-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: minicms
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'No');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add item',6,'add_item'),(17,'Can change item',6,'change_item'),(18,'Can delete item',6,'delete_item'),(19,'Can add last post id',7,'add_lastpostid'),(20,'Can change last post id',7,'change_lastpostid'),(21,'Can delete last post id',7,'delete_lastpostid'),(22,'Can add column',8,'add_column'),(23,'Can change column',8,'change_column'),(24,'Can delete column',8,'delete_column'),(25,'Can add comment',9,'add_comment'),(26,'Can change comment',9,'change_comment'),(27,'Can delete comment',9,'delete_comment'),(28,'Can add article',10,'add_article'),(29,'Can change article',10,'change_article'),(30,'Can delete article',10,'delete_article'),(31,'Can add poll',11,'add_poll'),(32,'Can change poll',11,'change_poll'),(33,'Can delete poll',11,'delete_poll'),(34,'Can add author',12,'add_author'),(35,'Can change author',12,'change_author'),(36,'Can delete author',12,'delete_author'),(37,'Can add user',13,'add_newuser'),(38,'Can change user',13,'change_newuser'),(39,'Can delete user',13,'delete_newuser'),(40,'Can add 首页中部栏左侧图片',14,'add_imagestory'),(41,'Can change 首页中部栏左侧图片',14,'change_imagestory'),(42,'Can delete 首页中部栏左侧图片',14,'delete_imagestory'),(43,'Can add 微信文章',15,'add_weixinarticle'),(44,'Can change 微信文章',15,'change_weixinarticle'),(45,'Can delete 微信文章',15,'delete_weixinarticle');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_focus_newuser_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_focus_newuser_id` FOREIGN KEY (`user_id`) REFERENCES `focus_newuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-05-27 01:48:18.602149','1','测试1',1,'[{\"added\": {}}]',8,1),(2,'2017-05-27 01:48:45.167669','1','actanble',1,'[{\"added\": {}}]',12,1),(3,'2017-05-27 01:48:51.228015','1','1111',1,'[{\"added\": {}}]',10,1),(4,'2017-05-27 01:49:00.843565','1','1111111111111111111111111111111111',1,'[{\"added\": {}}]',9,1),(5,'2017-05-27 01:51:56.699624','1','2017-05-27 09:51:00+08:00_测试1:<p>111111111111111111<br/></p>',1,'[{\"added\": {}}]',6,1),(6,'2017-05-27 01:53:56.912499','2','22222222222',1,'[{\"added\": {}}]',10,1),(7,'2017-05-27 02:31:08.709151','3','微信开发注意事项',1,'[{\"added\": {}}]',10,1),(8,'2017-05-27 02:32:21.836333','1','111111',1,'[{\"added\": {}}]',15,1),(9,'2017-05-27 02:33:54.148613','3','微信开发注意事项',2,'[]',10,1),(10,'2017-05-27 02:39:13.361871','2','22222222222',3,'',10,1),(11,'2017-05-27 07:32:06.830016','4','werobot-Api',1,'[{\"added\": {}}]',10,1),(12,'2017-05-27 07:40:10.948706','1','No',1,'[{\"added\": {}}]',2,1),(13,'2017-05-27 07:40:56.361304','2','user1',1,'[{\"added\": {}}]',13,1),(14,'2017-05-27 07:54:08.049586','2','2017-05-27 15:54:00+08:00_作者1:<p>测试图文发布</p><p><br/></p><p><strong>粗体</strong></p><p><strong><br/></strong></p><p><img src=\"/media/uploads/images/p4_20170527155403.jpg\" title=\"\" alt=\"p4.jpg\"/></p>',1,'[{\"added\": {}}]',6,1),(15,'2017-05-27 07:54:54.520244','3','2017-05-27 15:54:00+08:00_测试2:<p>图文发布<br/></p>',1,'[{\"added\": {}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'contenttypes','contenttype'),(10,'focus','article'),(12,'focus','author'),(8,'focus','column'),(9,'focus','comment'),(13,'focus','newuser'),(11,'focus','poll'),(5,'sessions','session'),(6,'twfabu','item'),(7,'twfabu','lastpostid'),(14,'weixin','imagestory'),(15,'weixin','weixinarticle');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-05-27 01:45:29.076453'),(2,'contenttypes','0002_remove_content_type_name','2017-05-27 01:45:30.926559'),(3,'auth','0001_initial','2017-05-27 01:45:36.338868'),(4,'auth','0002_alter_permission_name_max_length','2017-05-27 01:45:37.419930'),(5,'auth','0003_alter_user_email_max_length','2017-05-27 01:45:37.496934'),(6,'auth','0004_alter_user_username_opts','2017-05-27 01:45:37.547937'),(7,'auth','0005_alter_user_last_login_null','2017-05-27 01:45:37.599940'),(8,'auth','0006_require_contenttypes_0002','2017-05-27 01:45:37.644943'),(9,'focus','0001_initial','2017-05-27 01:46:09.862786'),(10,'admin','0001_initial','2017-05-27 01:46:16.035139'),(11,'admin','0002_logentry_remove_auto_add','2017-05-27 01:46:16.294153'),(12,'auth','0007_alter_validators_add_error_messages','2017-05-27 01:46:16.410160'),(13,'auth','0008_alter_user_username_max_length','2017-05-27 01:46:16.532167'),(14,'focus','0002_auto_20170527_0755','2017-05-27 01:46:21.019424'),(15,'focus','0003_auto_20170527_0931','2017-05-27 01:46:25.250666'),(16,'sessions','0001_initial','2017-05-27 01:46:26.116715'),(17,'twfabu','0001_initial','2017-05-27 01:46:27.331785'),(18,'weixin','0001_initial','2017-05-27 02:29:19.518905');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('p81l68y4se5rvr9alpnan7z19nlvpkuf','NzRhMDAxMzc0ZWU0ZjBjYjNkZDkyNzAzYjMxZjdjZjk0MTg3ZWM5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZmOWEzZmY2ZDhlMDU5YzZmMmM0YzQ1NmRlZjA4MmZhNzcwZGFkNWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-06-10 01:47:26.463167');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_article`
--

DROP TABLE IF EXISTS `focus_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `content` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `poll_num` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `keep_num` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `column_id` int(11),
  `pic` varchar(100) NOT NULL,
  `set_top` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `focus_article_author_id_ba2809a9_fk_focus_author_id` (`author_id`),
  KEY `focus_article_column_id_3d390601_fk_focus_column_id` (`column_id`),
  CONSTRAINT `focus_article_author_id_ba2809a9_fk_focus_author_id` FOREIGN KEY (`author_id`) REFERENCES `focus_author` (`id`),
  CONSTRAINT `focus_article_column_id_3d390601_fk_focus_column_id` FOREIGN KEY (`column_id`) REFERENCES `focus_column` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_article`
--

LOCK TABLES `focus_article` WRITE;
/*!40000 ALTER TABLE `focus_article` DISABLE KEYS */;
INSERT INTO `focus_article` VALUES (1,'1111','11','2017-05-27 01:48:51.178012','2017-05-27 01:48:51.178012',1,0,0,0,1,1,'uploads/blog/images/default.jpg',1),(3,'微信开发注意事项','<blockquote><p>tips: 本文面向的对象是已经会使用django开发web后端的人员</p></blockquote><h2>微信小程序后端与普通web的区别</h2><p>微信小程序的后端开发和普通的restful API 大致上相同，只不过要注意以下几点限制</p><ul class=\" list-paddingleft-2\"><li><p>必须使用HTTPS协议请求后端服务器</p></li><li><p>不支持COOKIE</p></li><li><p>不支持django内置的user登录, 因为它使用的是微信的用户系统</p></li></ul><h2>应对方法</h2><ul class=\" list-paddingleft-2\"><li><p>对于HTTPS的限制, 很简单, 去godaddy等网站申请一个https证书, 下载后使用nginx指定即可, 可以参照<a href=\"http://www.cnblogs.com/yanghuahui/archive/2012/06/25/2561568.html\" target=\"_blank\">此文章</a>, 这篇文章的证书是自己生成的, 这里需要替换为申请的证书</p></li><li><p>不支持cookie, django原生的session机制就会失效</p></li><li><p>不支持django内置的user登录, 因为它使用的是微信的用户系统</p><p>对于上边这两个问题,我使用了<code>JWT</code>来保证了用户的在线验证. 那么什么是JWT呢, 可以看下推酷的<a href=\"http://www.tuicool.com/articles/R7Rj6r3\" target=\"_blank\">这篇文章</a>了解一下, 简要的来说就是用户登录以后, 原先保存在cookie里边的一个随机的sessionid变成了保存在http头部的<code>Authorization</code>字段的一个token值, 这个值是服务端自身加密的, 客户端无需解密, 只要服务端知道这个token对应这个用户就好, 当然这里也有很多的附加功能, 比如超时等等, 不再赘述</p><p>然而网上有很多的jwt开源项目, 比如<code>django-jwt</code>, <code>rest-framework-jwt</code>, 你都可以使用, 但是却不适用于微信小程序, 为什么这么说? 是因为这两个项目都和django内置的user相耦合, 在上边提出的第三个问题的地方会引起问题, 在尝试了<code>rest-framework-jwt</code>发现问题后, 我毅然决定自己使用<code>pyjwt</code>实现一个用户登录/鉴权的组件.</p><p>首先要知道微信小程序的登录流程是:</p><p>看起来好像步骤很多, 但是我们没有必要去重新造轮子, 早有人已经写好认证流程<a href=\"https://github.com/gusibi/python-weixin\" target=\"_blank\">python-weixin</a>我们可以省去4-6的步骤, 那么剩下的问题就是如何解决第7步也就是维持session的问题了.</p></li><ol class=\" list-paddingleft-2\"><li><p>客户端请求用户授权</p></li><li><p>用户授权成功</p></li><li><p>客户端或得到用户基本信息(包括code,没有openid的用户明文信息, 有openid的加密后的信息, 解密向量iv)</p></li><li><p>客户端把返回的信息发送到服务器</p></li><li><p>服务器使用code去微信服务器换取session_key</p></li><li><p>服务器用这个session_key+iv去解密用户密文, 得到用户完整信息(基本+openid)</p></li><li><p>将用户在服务器登录, 维持用户session(这里的失效时间微信约定是30天)</p></li></ol></ul><p>因为jwt始终使用http头部的token进行验证这里我的思路是:</p><ol class=\" list-paddingleft-2\"><li><p>微信用户登录后, 返回客户端token, 并在缓存创建用户的session信息</p></li><li><p>客户端请求时附加http头<code>Authorization=JWT &lt;token&gt;</code></p></li><li><p>使用中间件检验http头的token, 审查通过则在request上追加一个<code>jwt_user</code>属性(这里不想覆盖django自带user), 同时去缓存寻找这个用户的session信息, 加载到<code>request.jwt_session</code>, 审查如果不通过则jwt_user设置为None, jwt_session为一个空的session对象</p></li><li><p>使用认证方法, 对于需要进行登录的接口检验用户是否为<code>None</code></p></li></ol><p>到这一步就已经完成了整个的用户鉴权/session持久化流程, 如果你只是为了了解django开发小程序注意的点到这里已经可以结束了, 下边我要介绍的是我实现的一套中间件逻辑, 有兴趣可以拿去直接使用.</p><p>这里中间件我已经实现了参见<a href=\"https://github.com/weidwonder/django-jwt-session-auth\" target=\"_blank\">django-jwt-session-auth</a>, 调用模块内部的<code>jwt_login</code>函数, 登录你的用户时会返回一个token, 这个token将要返回客户端, 同时它也会做user的session缓存动作.下一次客户端带着<code>Authorization=JWT &lt;token&gt;</code>调用的时候中间件会直接将对应的user和session加载到<code>request.jwt_user</code>和<code>request.jwt_session</code>, 这里你需要设置的只有设置两个值: <code>USER_TO_PAYLOAD</code>和<code>PAYLOAD_TO_USER</code>两个方法:</p><pre class=\"hljs asciidoc\">*&nbsp;USER_TO_PAYLOAD:&nbsp;根据当前登录的用户生成一个字典payload方法*&nbsp;PAYLOAD_TO_USER:&nbsp;根据你之前生成的payload找到对应的用户</pre><blockquote><p>注: 2017.1.15我这个组件还没有完整的readme, 后续会加上</p></blockquote><p>最后, 关于认证器, 如果你使用rest-framework可以直接继承<code>BaseAuthentication</code>在<code>authenticate</code>方法里校验<code>jwt_user</code>是否为None即可, 如果直接使用django原生的view, 可以写一个装饰器装饰在类view的<code>dispatch</code>方法上或直接装饰在函数的view上.</p><p>示例</p><pre class=\"hljs python\">#&nbsp;django-jwt-session-auth设置,&nbsp;放在settings.py文件中JWT_AUTH&nbsp;=&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&#39;PAYLOAD_TO_USER&#39;:&nbsp;&#39;user.auth.payload_to_user&#39;,&nbsp;&nbsp;&nbsp;&nbsp;&#39;USER_TO_PAYLOAD&#39;:&nbsp;&#39;user.auth.user_to_payload&#39;,\r\n}#&nbsp;rest-framework验证器class&nbsp;WechatUserAuthentication(BaseAuthentication):\r\n&nbsp;&nbsp;&nbsp;&nbsp;def&nbsp;authenticate(self,&nbsp;request):\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;not&nbsp;request.jwt_user:\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;msg&nbsp;=&nbsp;u&#39;请先授权&#39;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raise&nbsp;exceptions.AuthenticationFailed(msg)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;(request.jwt_user,&nbsp;request.jwt_user.uuid)#&nbsp;原生django验证装饰器def&nbsp;login_required(func):&nbsp;&nbsp;&nbsp;&nbsp;@wraps(func)\r\n&nbsp;&nbsp;&nbsp;&nbsp;def&nbsp;verify_login(request,&nbsp;*args,&nbsp;**kwargs):\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;request.jwt_user:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;func(request,&nbsp;*args,&nbsp;**kwargs)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;返回HTTP_401\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;verify_login</pre><p>&nbsp; &nbsp; &nbsp; &nbsp;</p><p><br/></p>','2017-05-27 02:31:08.606145','2017-05-27 02:33:54.139613',1,0,0,0,1,1,'uploads/blog/images/default.jpg',1),(4,'werobot-Api','<h1>API</h1><p><span id=\"id1\"></span></p><h2>应用对象</h2><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.robot.</code><code class=\"descname\">BaseRoBot</code><span class=\"sig-paren\">(</span><em>token=None</em>, <em>logger=None</em>, <em>enable_session=None</em>, <em>session_storage=None</em>, <em>app_id=None</em>, <em>app_secret=None</em>, <em>encoding_aes_key=None</em>, <em>config=None</em>, <em>**kwargs</em><span class=\"sig-paren\">)</span></p></li><li><p>BaseRoBot 是整个应用的核心对象，负责提供 handler 的维护，消息和事件的处理等核心功能。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><br/></td></tr></tbody></table><p class=\"first admonition-title\">注解</p><p class=\"last\">对于下面的参数推荐使用 <a class=\"reference internal\" href=\"https://werobot.readthedocs.io/zh_CN/latest/api.html#werobot.config.Config\" title=\"werobot.config.Config\"><code class=\"xref py py-class docutils literal\"><span class=\"pre\">Config</span></code></a> 进行设置， &nbsp; &nbsp;并且以下参数均已 <strong>deprecated</strong>。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><br/></td></tr></tbody></table></li><ul class=\"method list-paddingleft-2\" style=\"list-style-type: square;\"><li><p><code class=\"descname\">voice</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为语音 <code class=\"docutils literal\"><span class=\"pre\">(voice)</span></code> 消息添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">view</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为链接 <code class=\"docutils literal\"><span class=\"pre\">(view)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">unsubscribe</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为被取消关注 <code class=\"docutils literal\"><span class=\"pre\">(unsubscribe)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">unknown_event</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为未知类型 <code class=\"docutils literal\"><span class=\"pre\">(unknown_event)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">unknown</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为未知类型 <code class=\"docutils literal\"><span class=\"pre\">(unknown)</span></code> 消息添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">text</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为文本 <code class=\"docutils literal\"><span class=\"pre\">(text)</span></code> 消息添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">subscribe</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为被关注 <code class=\"docutils literal\"><span class=\"pre\">(subscribe)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">scancode_waitmsg</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为扫描弹消息 <code class=\"docutils literal\"><span class=\"pre\">(scancode_waitmsg)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">scancode_push</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为扫描推送 <code class=\"docutils literal\"><span class=\"pre\">(scancode_push)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">parse_message</code><span class=\"sig-paren\">(</span><em>body</em>, <em>timestamp=None</em>, <em>nonce=None</em>, <em>msg_signature=None</em><span class=\"sig-paren\">)</span></p></li><li><p>解析获取到的 Raw XML ，如果需要的话进行解密，返回 WeRoBot Message。\r\n:param body: 微信服务器发来的请求中的 Body。\r\n:return: WeRoBot Message</p></li><li><p><code class=\"descname\">location_event</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为上报位置 <code class=\"docutils literal\"><span class=\"pre\">(location_event)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">location</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为位置 <code class=\"docutils literal\"><span class=\"pre\">(location)</span></code> 消息添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">link</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为链接 <code class=\"docutils literal\"><span class=\"pre\">(link)</span></code> 消息添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">key_click</code><span class=\"sig-paren\">(</span><em>key</em><span class=\"sig-paren\">)</span></p></li><li><p>为自定义菜单 <code class=\"docutils literal\"><span class=\"pre\">(click)</span></code> 事件添加 handler 的简便方法。</p><p><strong>@key_click(‘KEYNAME’)</strong> 用来为特定 key 的点击事件添加 handler 方法。</p></li><li><p><code class=\"descname\">image</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为图像 <code class=\"docutils literal\"><span class=\"pre\">(image)</span></code> 消息添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">handler</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为每一条消息或事件添加一个 handler 方法的装饰器。</p></li><li><p><code class=\"descname\">get_reply</code><span class=\"sig-paren\">(</span><em>message</em><span class=\"sig-paren\">)</span></p></li><li><p>根据 message 的内容获取 Reply 对象。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>message</strong> – 要处理的 message</td></tr><tr class=\"field-even field\"><th class=\"field-name\">返回:</th><td class=\"field-body\">获取的 Reply 对象</td></tr></tbody></table></li><li><p><code class=\"descname\">get_encrypted_reply</code><span class=\"sig-paren\">(</span><em>message</em><span class=\"sig-paren\">)</span></p></li><li><p>对一个指定的 WeRoBot Message ，获取 handlers 处理后得到的 Reply。\r\n如果可能，对该 Reply 进行加密。\r\n返回 Reply Render 后的文本。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>message</strong> – 一个 WeRoBot Message 实例。</td></tr><tr class=\"field-even field\"><th class=\"field-name\">返回:</th><td class=\"field-body\">reply （纯文本）</td></tr></tbody></table></li><li><p><code class=\"descname\">filter</code><span class=\"sig-paren\">(</span><em>*args</em><span class=\"sig-paren\">)</span></p></li><li><p>为文本 <code class=\"docutils literal\"><span class=\"pre\">(text)</span></code> 消息添加 handler 的简便方法。</p><p>使用 <code class=\"docutils literal\"><span class=\"pre\">@filter(&quot;xxx&quot;)</span></code>, <code class=\"docutils literal\"><span class=\"pre\">@filter(re.compile(&quot;xxx&quot;))</span></code>或 <code class=\"docutils literal\"><span class=\"pre\">@filter(&quot;xxx&quot;,</span> <span class=\"pre\">&quot;xxx2&quot;)</span></code> 的形式为特定内容添加 handler。</p></li><li><p><code class=\"descname\">error_page</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为 robot 指定 Signature 验证不通过时显示的错误页面。</p><p>Usage:</p><pre>@robot.error_pagedef&nbsp;make_error_page(url):\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;&quot;&lt;h1&gt;喵喵喵&nbsp;%s&nbsp;不是给麻瓜访问的快走开&lt;/h1&gt;&quot;&nbsp;%&nbsp;url</pre></li><li><p><code class=\"descname\">click</code><span class=\"sig-paren\">(</span><em>f</em><span class=\"sig-paren\">)</span></p></li><li><p>为自定义菜单事件 <code class=\"docutils literal\"><span class=\"pre\">(click)</span></code> 事件添加一个 handler 方法的装饰器。</p></li><li><p><strong>timestamp</strong> – 时间戳</p></li><li><p><strong>nonce</strong> – 生成签名的随机字符串</p></li><li><p><strong>signature</strong> – 要检查的签名</p></li><li><p><code class=\"descname\">check_signature</code><span class=\"sig-paren\">(</span><em>timestamp</em>, <em>nonce</em>, <em>signature</em><span class=\"sig-paren\">)</span></p></li><li><p>根据时间戳和生成签名的字符串 (nonce) 检查签名。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><br/></td></tr><tr class=\"field-even field\"><th class=\"field-name\">返回:</th><td class=\"field-body\"><p class=\"first last\">如果签名合法将返回 <code class=\"docutils literal\"><span class=\"pre\">True</span></code>，不合法将返回 <code class=\"docutils literal\"><span class=\"pre\">False</span></code></p></td></tr></tbody></table></li><li><p><strong>func</strong> – 要作为 handler 的方法。</p></li><li><p><strong>type</strong> – handler 的种类。</p></li><li><p><code class=\"descname\">add_handler</code><span class=\"sig-paren\">(</span><em>func</em>, <em>type=&#39;all&#39;</em><span class=\"sig-paren\">)</span></p></li><li><p>为 BaseRoBot 实例添加一个 handler。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><br/></td></tr><tr class=\"field-even field\"><th class=\"field-name\">返回:</th><td class=\"field-body\"><p class=\"first last\">None</p></td></tr></tbody></table></li><li><p><strong>func</strong> – 如果 rules 通过，则处理该消息的 handler。</p></li><li><p><strong>rules</strong> – 一个 list，包含要匹配的字符串或者正则表达式。</p></li><li><p><code class=\"descname\">add_filter</code><span class=\"sig-paren\">(</span><em>func</em>, <em>rules</em><span class=\"sig-paren\">)</span></p></li><li><p>为 BaseRoBot 添加一个 <code class=\"docutils literal\"><span class=\"pre\">filter</span> <span class=\"pre\">handler</span></code>。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><br/></td></tr><tr class=\"field-even field\"><th class=\"field-name\">返回:</th><td class=\"field-body\"><p class=\"first last\">None</p></td></tr></tbody></table></li><li><p><strong>token</strong> – 微信公众号设置的 token <strong>(deprecated)</strong></p></li><li><p><strong>enable_session</strong> – 是否开启 session <strong>(deprecated)</strong></p></li><li><p><strong>session_storage</strong> – 用来储存 session 的对象，如果为 <code class=\"docutils literal\"><span class=\"pre\">None</span></code>， &nbsp; &nbsp;将使用 werobot.session.sqlitestorage.SQLiteStorage <strong>(deprecated)</strong></p></li><li><p><strong>app_id</strong> – 微信公众号设置的 app id <strong>(deprecated)</strong></p></li><li><p><strong>app_secret</strong> – 微信公众号设置的 app secret <strong>(deprecated)</strong></p></li><li><p><strong>encoding_aes_key</strong> – 用来加解密消息的 aes key <strong>(deprecated)</strong></p></li><li><p><strong>logger</strong> – 用来输出 log 的 logger，如果是 <code class=\"docutils literal\"><span class=\"pre\">None</span></code>，将使用 werobot.logger</p></li><li><p><strong>config</strong> – 用来设置的 <a class=\"reference internal\" href=\"https://werobot.readthedocs.io/zh_CN/latest/api.html#werobot.config.Config\" title=\"werobot.config.Config\"><code class=\"xref py py-class docutils literal\"><span class=\"pre\">werobot.config.Config</span></code></a> 对象</p></li></ul></ul><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.robot.</code><code class=\"descname\">WeRoBot</code><span class=\"sig-paren\">(</span><em>token=None</em>, <em>logger=None</em>, <em>enable_session=None</em>, <em>session_storage=None</em>, <em>app_id=None</em>, <em>app_secret=None</em>, <em>encoding_aes_key=None</em>, <em>config=None</em>, <em>**kwargs</em><span class=\"sig-paren\">)</span></p></li><li><p>WeRoBot 是一个继承自 BaseRoBot 的对象，在 BaseRoBot 的基础上使用了 bottle 框架，\r\n提供接收微信服务器发来的请求的功能。</p></li><ul class=\"first last simple list-paddingleft-2\" style=\"list-style-type: square;\"><li><p><strong>server</strong> – 传递给 Bottle 框架 run 方法的参数，详情见 &nbsp; &nbsp; &nbsp; &nbsp;<a class=\"reference external\" href=\"https://bottlepy.org/docs/dev/deployment.html#switching-the-server-backend\">bottle 文档</a></p></li><li><p><strong>host</strong> – 运行时绑定的主机地址</p></li><li><p><strong>port</strong> – 运行时绑定的主机端口</p></li><li><p><strong>enable_pretty_logging</strong> – 是否开启 log 的输出格式优化</p></li><li><p><code class=\"descname\">run</code><span class=\"sig-paren\">(</span><em>server=None</em>, <em>host=None</em>, <em>port=None</em>, <em>enable_pretty_logging=True</em><span class=\"sig-paren\">)</span></p></li><li><p>运行 WeRoBot。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><br/></td></tr></tbody></table></li></ul></ul><p><span id=\"id2\"></span></p><h2>配置对象</h2><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.config.</code><code class=\"descname\">Config</code></p></li><li><p><br/></p></li><ul class=\"method list-paddingleft-2\" style=\"list-style-type: square;\"><li><p><code class=\"descname\">from_pyfile</code><span class=\"sig-paren\">(</span><em>filename</em><span class=\"sig-paren\">)</span></p></li><li><p>在一个 Python 文件中读取配置。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>filename</strong> – 配置文件的文件名</td></tr><tr class=\"field-even field\"><th class=\"field-name\">返回:</th><td class=\"field-body\">如果读取成功，返回 <code class=\"docutils literal\"><span class=\"pre\">True</span></code>，如果失败，会抛出错误异常</td></tr></tbody></table></li><li><p><code class=\"descname\">from_object</code><span class=\"sig-paren\">(</span><em>obj</em><span class=\"sig-paren\">)</span></p></li><li><p>在给定的 Python 对象中读取配置。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>obj</strong> – 一个 Python 对象</td></tr></tbody></table></li></ul></ul><p><span id=\"session\"></span></p><h2>Session 对象</h2><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.session.sqlitestorage.</code><code class=\"descname\">SQLiteStorage</code><span class=\"sig-paren\">(</span><em>filename=&#39;werobot_session.sqlite3&#39;</em><span class=\"sig-paren\">)</span></p></li><li><p>SQLiteStorge 会把 Session 数据储存在一个 SQLite 数据库文件中</p><pre>import&nbsp;werobotfrom&nbsp;werobot.session.sqlitestorage&nbsp;import&nbsp;SQLiteStoragesession_storage&nbsp;=&nbsp;SQLiteStoragerobot&nbsp;=&nbsp;werobot.WeRoBot(token=&quot;token&quot;,&nbsp;enable_session=True,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;session_storage=session_storage)</pre><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>filename</strong> – SQLite数据库的文件名, 默认是 <code class=\"docutils literal\"><span class=\"pre\">werobot_session.sqlite3</span></code></td></tr></tbody></table></li></ul><p><span class=\"target\" id=\"module-werobot.session.filestorage\"></span></p><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.session.filestorage.</code><code class=\"descname\">FileStorage</code><span class=\"sig-paren\">(</span><em>filename=&#39;werobot_session&#39;</em><span class=\"sig-paren\">)</span></p></li><li><p>FileStorage 会把你的 Session 数据以 dbm 形式储存在文件中。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>filename</strong> – 文件名， 默认为 <code class=\"docutils literal\"><span class=\"pre\">werobot_session</span></code></td></tr></tbody></table></li></ul><p><span class=\"target\" id=\"module-werobot.session.mongodbstorage\"></span></p><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.session.mongodbstorage.</code><code class=\"descname\">MongoDBStorage</code><span class=\"sig-paren\">(</span><em>collection</em><span class=\"sig-paren\">)</span></p></li><li><p>MongoDBStorage 会把你的 Session 数据储存在一个 MongoDB Collection 中</p><pre>import&nbsp;pymongoimport&nbsp;werobotfrom&nbsp;werobot.session.mongodbstorage&nbsp;import&nbsp;MongoDBStoragecollection&nbsp;=&nbsp;pymongo.MongoClient()[&quot;wechat&quot;][&quot;session&quot;]session_storage&nbsp;=&nbsp;MongoDBStorage(collection)robot&nbsp;=&nbsp;werobot.WeRoBot(token=&quot;token&quot;,&nbsp;enable_session=True,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;session_storage=session_storage)</pre><p>你需要安装 <code class=\"docutils literal\"><span class=\"pre\">pymongo</span></code> 才能使用 MongoDBStorage 。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>collection</strong> – 一个 MongoDB Collection。</td></tr></tbody></table></li></ul><p><span class=\"target\" id=\"module-werobot.session.redisstorage\"></span></p><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.session.redisstorage.</code><code class=\"descname\">RedisStorage</code><span class=\"sig-paren\">(</span><em>redis</em>, <em>prefix=&#39;ws_&#39;</em><span class=\"sig-paren\">)</span></p></li><li><p>RedisStorage 会把你的 Session 数据储存在 Redis 中</p><pre>import&nbsp;redisimport&nbsp;werobotfrom&nbsp;werobot.session.redisstorage&nbsp;import&nbsp;RedisStoragedb&nbsp;=&nbsp;redis.Redis()session_storage&nbsp;=&nbsp;RedisStorage(db,&nbsp;prefix=&quot;my_prefix_&quot;)robot&nbsp;=&nbsp;werobot.WeRoBot(token=&quot;token&quot;,&nbsp;enable_session=True,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;session_storage=session_storage)</pre><p>你需要安装 <code class=\"docutils literal\"><span class=\"pre\">redis</span></code> 才能使用 RedisStorage 。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><br/></td></tr></tbody></table></li><ul class=\"first last simple list-paddingleft-2\" style=\"list-style-type: square;\"><li><p><strong>redis</strong> – 一个 Redis Client。</p></li><li><p><strong>prefix</strong> – Reids 中 Session 数据 key 的 prefix 。默认为 <code class=\"docutils literal\"><span class=\"pre\">ws_</span></code></p></li></ul></ul><p><span class=\"target\" id=\"module-werobot.session.saekvstorage\"></span></p><ul class=\"class list-paddingleft-2\"><li><p><em class=\"property\">class </em><code class=\"descclassname\">werobot.session.saekvstorage.</code><code class=\"descname\">SaeKVDBStorage</code><span class=\"sig-paren\">(</span><em>prefix=&#39;ws_&#39;</em><span class=\"sig-paren\">)</span></p></li><li><p>SaeKVDBStorage 使用SAE 的 KVDB 来保存你的session</p><pre>import&nbsp;werobotfrom&nbsp;werobot.session.saekvstorage&nbsp;import&nbsp;SaeKVDBStoragesession_storage&nbsp;=&nbsp;SaeKVDBStorage()robot&nbsp;=&nbsp;werobot.WeRoBot(token=&quot;token&quot;,&nbsp;enable_session=True,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;session_storage=session_storage)</pre><p>需要先在后台开启 KVDB 支持</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"><strong>prefix</strong> – KVDB 中 Session 数据 key 的 prefix 。默认为 <code class=\"docutils literal\"><span class=\"pre\">ws_</span></code></td></tr></tbody></table></li></ul><p><span id=\"log\"></span></p><h2>log</h2><ul class=\"function list-paddingleft-2\"><li><p><code class=\"descclassname\">werobot.logger.</code><code class=\"descname\">enable_pretty_logging</code><span class=\"sig-paren\">(</span><em>logger</em>, <em>level=&#39;info&#39;</em><span class=\"sig-paren\">)</span></p></li><li><p>按照配置开启 log 的格式化优化。</p><table class=\"docutils field-list\" frame=\"void\" rules=\"none\"><colgroup><col class=\"field-name\"/><col class=\"field-body\"/></colgroup><tbody valign=\"top\"><tr class=\"field-odd field firstRow\"><th class=\"field-name\">参数:</th><td class=\"field-body\"></td></tr></tbody></table></li><ul class=\"first last simple list-paddingleft-2\" style=\"list-style-type: square;\"><li><p><strong>logger</strong> – 配置的 logger 对象</p></li><li><p><strong>level</strong> – 要为 logger 设置的等级</p></li></ul></ul><p><br/></p><p>https://werobot.readthedocs.io/zh_CN/latest/api.html</p>','2017-05-27 07:32:06.801015','2017-05-27 07:32:06.801015',1,0,0,0,1,1,'uploads/blog/images/default.jpg',1);
/*!40000 ALTER TABLE `focus_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_article_user`
--

DROP TABLE IF EXISTS `focus_article_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_article_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `newuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `focus_article_user_article_id_642bd271_uniq` (`article_id`,`newuser_id`),
  KEY `focus_article_user_newuser_id_c553cc27_fk_focus_newuser_id` (`newuser_id`),
  CONSTRAINT `focus_article_user_article_id_b973228c_fk_focus_article_id` FOREIGN KEY (`article_id`) REFERENCES `focus_article` (`id`),
  CONSTRAINT `focus_article_user_newuser_id_c553cc27_fk_focus_newuser_id` FOREIGN KEY (`newuser_id`) REFERENCES `focus_newuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_article_user`
--

LOCK TABLES `focus_article_user` WRITE;
/*!40000 ALTER TABLE `focus_article_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `focus_article_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_author`
--

DROP TABLE IF EXISTS `focus_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `profile` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `register_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_author`
--

LOCK TABLES `focus_author` WRITE;
/*!40000 ALTER TABLE `focus_author` DISABLE KEYS */;
INSERT INTO `focus_author` VALUES (1,'actanble','1','112233..','2017-05-27 01:48:45.062663');
/*!40000 ALTER TABLE `focus_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_column`
--

DROP TABLE IF EXISTS `focus_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `intro` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_column`
--

LOCK TABLES `focus_column` WRITE;
/*!40000 ALTER TABLE `focus_column` DISABLE KEYS */;
INSERT INTO `focus_column` VALUES (1,'测试1','测试1');
/*!40000 ALTER TABLE `focus_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_comment`
--

DROP TABLE IF EXISTS `focus_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `poll_num` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `focus_comment_article_id_9f521bfe_fk_focus_article_id` (`article_id`),
  KEY `focus_comment_user_id_85082fd0_fk_focus_newuser_id` (`user_id`),
  CONSTRAINT `focus_comment_article_id_9f521bfe_fk_focus_article_id` FOREIGN KEY (`article_id`) REFERENCES `focus_article` (`id`),
  CONSTRAINT `focus_comment_user_id_85082fd0_fk_focus_newuser_id` FOREIGN KEY (`user_id`) REFERENCES `focus_newuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_comment`
--

LOCK TABLES `focus_comment` WRITE;
/*!40000 ALTER TABLE `focus_comment` DISABLE KEYS */;
INSERT INTO `focus_comment` VALUES (1,'1111111111111111111111111111111111','2017-05-27 01:49:00.194528',1,1,1);
/*!40000 ALTER TABLE `focus_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_newuser`
--

DROP TABLE IF EXISTS `focus_newuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_newuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_newuser`
--

LOCK TABLES `focus_newuser` WRITE;
/*!40000 ALTER TABLE `focus_newuser` DISABLE KEYS */;
INSERT INTO `focus_newuser` VALUES (1,'pbkdf2_sha256$30000$B1QBme3agei0$MLmTvUi15rK5mv+NuCgO7ScNn7xF6hF3/u8rrRVKGIk=','2017-05-27 01:47:26.367161',1,'actanble','','','a@1.com',1,1,'2017-05-27 01:47:20.619833',''),(2,'112233..','2017-05-27 07:39:00.000000',1,'user1','1','1','1@1.com',1,1,'2017-05-27 07:39:00.000000','....');
/*!40000 ALTER TABLE `focus_newuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_newuser_groups`
--

DROP TABLE IF EXISTS `focus_newuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_newuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `focus_newuser_groups_newuser_id_4b595a5a_uniq` (`newuser_id`,`group_id`),
  KEY `focus_newuser_groups_group_id_583844b1_fk_auth_group_id` (`group_id`),
  CONSTRAINT `focus_newuser_groups_group_id_583844b1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `focus_newuser_groups_newuser_id_19434e35_fk_focus_newuser_id` FOREIGN KEY (`newuser_id`) REFERENCES `focus_newuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_newuser_groups`
--

LOCK TABLES `focus_newuser_groups` WRITE;
/*!40000 ALTER TABLE `focus_newuser_groups` DISABLE KEYS */;
INSERT INTO `focus_newuser_groups` VALUES (1,2,1);
/*!40000 ALTER TABLE `focus_newuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_newuser_user_permissions`
--

DROP TABLE IF EXISTS `focus_newuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_newuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `focus_newuser_user_permissions_newuser_id_41814ea8_uniq` (`newuser_id`,`permission_id`),
  KEY `focus_newuser_user__permission_id_b2b03d7e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `focus_newuser_user__permission_id_b2b03d7e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `focus_newuser_user_permi_newuser_id_2369309a_fk_focus_newuser_id` FOREIGN KEY (`newuser_id`) REFERENCES `focus_newuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_newuser_user_permissions`
--

LOCK TABLES `focus_newuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `focus_newuser_user_permissions` DISABLE KEYS */;
INSERT INTO `focus_newuser_user_permissions` VALUES (1,2,40);
/*!40000 ALTER TABLE `focus_newuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus_poll`
--

DROP TABLE IF EXISTS `focus_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `focus_poll_article_id_fc37803c_fk_focus_article_id` (`article_id`),
  KEY `focus_poll_comment_id_0e933625_fk_focus_comment_id` (`comment_id`),
  KEY `focus_poll_user_id_6ba9f9df_fk_focus_newuser_id` (`user_id`),
  CONSTRAINT `focus_poll_article_id_fc37803c_fk_focus_article_id` FOREIGN KEY (`article_id`) REFERENCES `focus_article` (`id`),
  CONSTRAINT `focus_poll_comment_id_0e933625_fk_focus_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `focus_comment` (`id`),
  CONSTRAINT `focus_poll_user_id_6ba9f9df_fk_focus_newuser_id` FOREIGN KEY (`user_id`) REFERENCES `focus_newuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus_poll`
--

LOCK TABLES `focus_poll` WRITE;
/*!40000 ALTER TABLE `focus_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `focus_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twfabu_item`
--

DROP TABLE IF EXISTS `twfabu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twfabu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(30) NOT NULL,
  `content` longtext NOT NULL,
  `dt` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twfabu_item`
--

LOCK TABLES `twfabu_item` WRITE;
/*!40000 ALTER TABLE `twfabu_item` DISABLE KEYS */;
INSERT INTO `twfabu_item` VALUES (1,'测试1','<p>111111111111111111<br/></p>','2017-05-27 01:51:00.000000'),(2,'作者1','<p>测试图文发布</p><p><br/></p><p><strong>粗体</strong></p><p><strong><br/></strong></p><p><img src=\"/media/uploads/images/p4_20170527155403.jpg\" title=\"\" alt=\"p4.jpg\"/></p>','2017-05-27 07:54:00.000000'),(3,'测试2','<p>图文发布<br/></p>','2017-05-27 07:54:00.000000');
/*!40000 ALTER TABLE `twfabu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twfabu_lastpostid`
--

DROP TABLE IF EXISTS `twfabu_lastpostid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twfabu_lastpostid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postdt` datetime(6) NOT NULL,
  `postid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twfabu_lastpostid`
--

LOCK TABLES `twfabu_lastpostid` WRITE;
/*!40000 ALTER TABLE `twfabu_lastpostid` DISABLE KEYS */;
INSERT INTO `twfabu_lastpostid` VALUES (1,'2017-05-27 01:52:02.047930',1),(2,'2017-05-27 07:54:24.552530',2),(3,'2017-05-27 07:54:55.194283',3);
/*!40000 ALTER TABLE `twfabu_lastpostid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_imagestory`
--

DROP TABLE IF EXISTS `weixin_imagestory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_imagestory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_imagestory`
--

LOCK TABLES `weixin_imagestory` WRITE;
/*!40000 ALTER TABLE `weixin_imagestory` DISABLE KEYS */;
/*!40000 ALTER TABLE `weixin_imagestory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_weixinarticle`
--

DROP TABLE IF EXISTS `weixin_weixinarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_weixinarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `set_top` tinyint(1) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `Tag` varchar(155) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_weixinarticle`
--

LOCK TABLES `weixin_weixinarticle` WRITE;
/*!40000 ALTER TABLE `weixin_weixinarticle` DISABLE KEYS */;
INSERT INTO `weixin_weixinarticle` VALUES (1,0,'uploads/jnu/images/default.jpg','111111','1111','11111111111',1,'2017-05-27 02:32:00.000000','暨大信息科学院','暨大信息科学院','news','11');
/*!40000 ALTER TABLE `weixin_weixinarticle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-27 15:55:42
