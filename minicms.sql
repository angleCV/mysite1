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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add 安全热点',7,'add_focusarticle'),(20,'Can change 安全热点',7,'change_focusarticle'),(21,'Can delete 安全热点',7,'delete_focusarticle'),(22,'Can add 安全法治',8,'add_lawarticle'),(23,'Can change 安全法治',8,'change_lawarticle'),(24,'Can delete 安全法治',8,'delete_lawarticle'),(25,'Can add 管理政策',9,'add_policyarticle'),(26,'Can change 管理政策',9,'change_policyarticle'),(27,'Can delete 管理政策',9,'delete_policyarticle'),(28,'Can add 趣味科普',10,'add_popularscience'),(29,'Can change 趣味科普',10,'change_popularscience'),(30,'Can delete 趣味科普',10,'delete_popularscience'),(31,'Can add 人才培养',11,'add_talentsarticle'),(32,'Can change 人才培养',11,'change_talentsarticle'),(33,'Can delete 人才培养',11,'delete_talentsarticle'),(34,'Can add 前沿技术',12,'add_techarticle'),(35,'Can change 前沿技术',12,'change_techarticle'),(36,'Can delete 前沿技术',12,'delete_techarticle'),(37,'Can add 首页轮播图片',13,'add_slideimage'),(38,'Can change 首页轮播图片',13,'change_slideimage'),(39,'Can delete 首页轮播图片',13,'delete_slideimage'),(40,'Can add 首页管理政策图片',14,'add_policyhomeimage'),(41,'Can change 首页管理政策图片',14,'change_policyhomeimage'),(42,'Can delete 首页管理政策图片',14,'delete_policyhomeimage'),(43,'Can add 成果展示',15,'add_fruitarticle'),(44,'Can change 成果展示',15,'change_fruitarticle'),(45,'Can delete 成果展示',15,'delete_fruitarticle'),(46,'Can add 首页中部栏左侧图片',16,'add_homeimage'),(47,'Can change 首页中部栏左侧图片',16,'change_homeimage'),(48,'Can delete 首页中部栏左侧图片',16,'delete_homeimage'),(49,'Can add 行业资讯',17,'add_infoarticle'),(50,'Can change 行业资讯',17,'change_infoarticle'),(51,'Can delete 行业资讯',17,'delete_infoarticle'),(52,'Can add 新闻中心',18,'add_newsarticle'),(53,'Can change 新闻中心',18,'change_newsarticle'),(54,'Can delete 新闻中心',18,'delete_newsarticle'),(55,'Can add 产品和服务',19,'add_productarticle'),(56,'Can change 产品和服务',19,'change_productarticle'),(57,'Can delete 产品和服务',19,'delete_productarticle'),(58,'Can add 中心介绍',20,'add_introarticle'),(59,'Can change 中心介绍',20,'change_introarticle'),(60,'Can delete 中心介绍',20,'delete_introarticle'),(61,'Can add 成果展示',21,'add_fruitarticle'),(62,'Can change 成果展示',21,'change_fruitarticle'),(63,'Can delete 成果展示',21,'delete_fruitarticle'),(64,'Can add 首页中部栏左侧图片',22,'add_homeimage'),(65,'Can change 首页中部栏左侧图片',22,'change_homeimage'),(66,'Can delete 首页中部栏左侧图片',22,'delete_homeimage'),(67,'Can add 行业资讯',23,'add_infoarticle'),(68,'Can change 行业资讯',23,'change_infoarticle'),(69,'Can delete 行业资讯',23,'delete_infoarticle'),(70,'Can add 新闻中心',24,'add_newsarticle'),(71,'Can change 新闻中心',24,'change_newsarticle'),(72,'Can delete 新闻中心',24,'delete_newsarticle'),(73,'Can add 产品和服务',25,'add_productarticle'),(74,'Can change 产品和服务',25,'change_productarticle'),(75,'Can delete 产品和服务',25,'delete_productarticle'),(76,'Can add 中心介绍',26,'add_introarticle'),(77,'Can change 中心介绍',26,'change_introarticle'),(78,'Can delete 中心介绍',26,'delete_introarticle'),(79,'Can add item',27,'add_item'),(80,'Can change item',27,'change_item'),(81,'Can delete item',27,'delete_item'),(82,'Can add last post id',28,'add_lastpostid'),(83,'Can change last post id',28,'change_lastpostid'),(84,'Can delete last post id',28,'delete_lastpostid');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$HGQy0q0cEDGy$JPRtayzLB8hWLcCKoRxFwI+pZTP9XNN/TAxc4VXQKEg=',NULL,1,'lenovo','','','',1,1,'2017-05-22 03:49:26.543682'),(2,'pbkdf2_sha256$30000$o9mvlM7jsjbB$RjP2S5LqSAgT8dBPqlUNeHnGJmh9CmVc5b8b/G6otek=','2017-05-25 03:29:57.570117',1,'actanble','','','actanble@163.com',1,1,'2017-05-22 03:49:59.376560');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-05-22 07:43:59.699960','1','2017-05-22 15:42:26+08:00_作者测试1:<p>万能示例; ---<br/>初始值。。。<br/></p>',1,'[{\"added\": {}}]',27,2),(2,'2017-05-22 07:44:59.341371','2','2017-05-22 15:44:56+08:00_作者2:<p>插入图片1<br/><img src=\"http://maps.googleapis.com/maps/api/staticmap?center=30.601749009392254,114.29107699999997&zoom=16&size=520x340&maptype=roadmap&markers=30.601749,1',1,'[{\"added\": {}}]',27,2),(3,'2017-05-22 07:47:07.469700','3','2017-05-22 15:47:06+08:00_测试3:<p><img src=\"http://api.map.baidu.com/staticimage?center=116.404,39.915&zoom=10&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/></p>',1,'[{\"added\": {}}]',27,2),(4,'2017-05-22 07:47:58.111596','4','2017-05-22 15:47:56+08:00_None:<p>1111<br/></p>',1,'[{\"added\": {}}]',27,2),(5,'2017-05-22 09:14:51.108763','90','新闻中心 30 个批处理',3,'',24,2),(6,'2017-05-22 09:14:51.214769','89','新闻中心 29 个批处理',3,'',24,2),(7,'2017-05-22 09:14:51.278773','88','新闻中心 28 个批处理',3,'',24,2),(8,'2017-05-22 09:14:51.347776','87','新闻中心 27 个批处理',3,'',24,2),(9,'2017-05-22 09:14:51.397779','86','新闻中心 26 个批处理',3,'',24,2),(10,'2017-05-22 09:14:51.422781','85','新闻中心 25 个批处理',3,'',24,2),(11,'2017-05-22 09:14:51.470784','84','新闻中心 24 个批处理',3,'',24,2),(12,'2017-05-22 09:14:51.522786','83','新闻中心 23 个批处理',3,'',24,2),(13,'2017-05-22 09:14:51.547788','82','新闻中心 22 个批处理',3,'',24,2),(14,'2017-05-22 09:14:51.572789','81','新闻中心 21 个批处理',3,'',24,2),(15,'2017-05-22 09:14:51.601791','80','新闻中心 20 个批处理',3,'',24,2),(16,'2017-05-22 09:14:51.699797','79','新闻中心 19 个批处理',3,'',24,2),(17,'2017-05-22 09:14:51.731798','78','新闻中心 18 个批处理',3,'',24,2),(18,'2017-05-22 09:14:51.756800','77','新闻中心 17 个批处理',3,'',24,2),(19,'2017-05-22 09:14:51.814803','76','新闻中心 16 个批处理',3,'',24,2),(20,'2017-05-22 09:14:51.839805','75','新闻中心 15 个批处理',3,'',24,2),(21,'2017-05-22 09:14:51.864806','74','新闻中心 14 个批处理',3,'',24,2),(22,'2017-05-22 09:14:51.889807','73','新闻中心 13 个批处理',3,'',24,2),(23,'2017-05-22 09:14:51.914809','72','新闻中心 12 个批处理',3,'',24,2),(24,'2017-05-22 09:14:51.973812','71','新闻中心 11 个批处理',3,'',24,2),(25,'2017-05-22 09:14:51.998814','70','新闻中心 10 个批处理',3,'',24,2),(26,'2017-05-22 09:14:52.022815','69','新闻中心 9 个批处理',3,'',24,2),(27,'2017-05-22 09:14:52.047817','68','新闻中心 8 个批处理',3,'',24,2),(28,'2017-05-22 09:14:52.073818','67','新闻中心 7 个批处理',3,'',24,2),(29,'2017-05-22 09:14:52.107820','66','新闻中心 6 个批处理',3,'',24,2),(30,'2017-05-22 09:14:52.139822','65','新闻中心 5 个批处理',3,'',24,2),(31,'2017-05-22 09:14:52.165823','64','新闻中心 4 个批处理',3,'',24,2),(32,'2017-05-22 09:14:52.197825','63','新闻中心 3 个批处理',3,'',24,2),(33,'2017-05-22 09:14:52.222827','62','新闻中心 2 个批处理',3,'',24,2),(34,'2017-05-22 09:14:52.247828','61','新闻中心 1 个批处理',3,'',24,2),(35,'2017-05-22 09:14:52.306831','60','新闻中心 30 个批处理',3,'',24,2),(36,'2017-05-22 09:14:52.331833','59','新闻中心 29 个批处理',3,'',24,2),(37,'2017-05-22 09:14:52.356834','58','新闻中心 28 个批处理',3,'',24,2),(38,'2017-05-22 09:14:52.381836','57','新闻中心 27 个批处理',3,'',24,2),(39,'2017-05-22 09:14:52.406837','56','新闻中心 26 个批处理',3,'',24,2),(40,'2017-05-22 09:14:52.439839','55','新闻中心 25 个批处理',3,'',24,2),(41,'2017-05-22 09:14:52.497842','54','新闻中心 24 个批处理',3,'',24,2),(42,'2017-05-22 09:14:52.522844','53','新闻中心 23 个批处理',3,'',24,2),(43,'2017-05-22 09:14:52.547845','52','新闻中心 22 个批处理',3,'',24,2),(44,'2017-05-22 09:14:52.572847','51','新闻中心 21 个批处理',3,'',24,2),(45,'2017-05-22 09:14:52.597848','50','新闻中心 20 个批处理',3,'',24,2),(46,'2017-05-22 09:14:52.622849','49','新闻中心 19 个批处理',3,'',24,2),(47,'2017-05-22 09:14:52.689853','48','新闻中心 18 个批处理',3,'',24,2),(48,'2017-05-22 09:14:52.714855','47','新闻中心 17 个批处理',3,'',24,2),(49,'2017-05-22 09:14:52.739856','46','新闻中心 16 个批处理',3,'',24,2),(50,'2017-05-22 09:14:52.764858','45','新闻中心 15 个批处理',3,'',24,2),(51,'2017-05-22 09:14:52.789859','44','新闻中心 14 个批处理',3,'',24,2),(52,'2017-05-22 09:14:52.814860','43','新闻中心 13 个批处理',3,'',24,2),(53,'2017-05-22 09:14:52.881864','42','新闻中心 12 个批处理',3,'',24,2),(54,'2017-05-22 09:14:52.906866','41','新闻中心 11 个批处理',3,'',24,2),(55,'2017-05-22 09:14:52.931867','40','新闻中心 10 个批处理',3,'',24,2),(56,'2017-05-22 09:14:52.956869','39','新闻中心 9 个批处理',3,'',24,2),(57,'2017-05-22 09:14:52.981870','38','新闻中心 8 个批处理',3,'',24,2),(58,'2017-05-22 09:14:53.039873','37','新闻中心 7 个批处理',3,'',24,2),(59,'2017-05-22 09:14:53.064875','36','新闻中心 6 个批处理',3,'',24,2),(60,'2017-05-22 09:14:53.089876','35','新闻中心 5 个批处理',3,'',24,2),(61,'2017-05-22 09:14:53.114878','34','新闻中心 4 个批处理',3,'',24,2),(62,'2017-05-22 09:14:53.140879','33','新闻中心 3 个批处理',3,'',24,2),(63,'2017-05-22 09:14:53.164880','32','新闻中心 2 个批处理',3,'',24,2),(64,'2017-05-22 09:14:53.222884','31','新闻中心 1 个批处理',3,'',24,2),(65,'2017-05-22 09:14:53.247885','30','新闻中心 30 个批处理',3,'',24,2),(66,'2017-05-22 09:14:53.307889','29','新闻中心 29 个批处理',3,'',24,2),(67,'2017-05-22 09:14:53.392893','28','新闻中心 28 个批处理',3,'',24,2),(68,'2017-05-22 09:14:53.456897','27','新闻中心 27 个批处理',3,'',24,2),(69,'2017-05-22 09:14:53.506900','26','新闻中心 26 个批处理',3,'',24,2),(70,'2017-05-22 09:14:53.539902','25','新闻中心 25 个批处理',3,'',24,2),(71,'2017-05-22 09:14:53.600905','24','新闻中心 24 个批处理',3,'',24,2),(72,'2017-05-22 09:14:53.670909','23','新闻中心 23 个批处理',3,'',24,2),(73,'2017-05-22 09:14:53.689910','22','新闻中心 22 个批处理',3,'',24,2),(74,'2017-05-22 09:14:53.714912','21','新闻中心 21 个批处理',3,'',24,2),(75,'2017-05-22 09:14:53.739913','20','新闻中心 20 个批处理',3,'',24,2),(76,'2017-05-22 09:14:53.789916','19','新闻中心 19 个批处理',3,'',24,2),(77,'2017-05-22 09:14:53.822918','18','新闻中心 18 个批处理',3,'',24,2),(78,'2017-05-22 09:14:53.848920','17','新闻中心 17 个批处理',3,'',24,2),(79,'2017-05-22 09:14:53.881921','16','新闻中心 16 个批处理',3,'',24,2),(80,'2017-05-22 09:14:53.906923','15','新闻中心 15 个批处理',3,'',24,2),(81,'2017-05-22 09:14:53.931924','14','新闻中心 14 个批处理',3,'',24,2),(82,'2017-05-22 09:14:53.997928','13','新闻中心 13 个批处理',3,'',24,2),(83,'2017-05-22 09:14:54.022929','12','新闻中心 12 个批处理',3,'',24,2),(84,'2017-05-22 09:14:54.047931','11','新闻中心 11 个批处理',3,'',24,2),(85,'2017-05-22 09:14:54.072932','10','新闻中心 10 个批处理',3,'',24,2),(86,'2017-05-22 09:14:54.097934','9','新闻中心 9 个批处理',3,'',24,2),(87,'2017-05-22 09:14:54.122935','8','新闻中心 8 个批处理',3,'',24,2),(88,'2017-05-22 09:14:54.181939','7','新闻中心 7 个批处理',3,'',24,2),(89,'2017-05-22 09:14:54.206940','6','新闻中心 6 个批处理',3,'',24,2),(90,'2017-05-22 09:14:54.230941','5','新闻中心 5 个批处理',3,'',24,2),(91,'2017-05-22 09:14:54.255943','4','新闻中心 4 个批处理',3,'',24,2),(92,'2017-05-22 09:14:54.281944','3','新闻中心 3 个批处理',3,'',24,2),(93,'2017-05-22 09:14:54.316946','2','新闻中心 2 个批处理',3,'',24,2),(94,'2017-05-22 09:14:54.356949','1','新闻中心 1 个批处理',3,'',24,2),(95,'2017-05-22 09:21:10.524464','120','新闻中心 30 个批处理',2,'[{\"changed\": {\"fields\": [\"toutiao\", \"content\"]}}]',24,2),(96,'2017-05-22 09:21:49.466692','120','新闻中心 30 个批处理',2,'[{\"changed\": {\"fields\": [\"toutiao\"]}}]',24,2),(97,'2017-05-22 09:27:03.241638','1','one_pic',1,'[{\"added\": {}}]',22,2),(98,'2017-05-23 00:34:49.886234','30','新闻中心 30 个批处理',3,'',23,2),(99,'2017-05-23 00:34:49.958238','29','新闻中心 29 个批处理',3,'',23,2),(100,'2017-05-23 00:34:50.011241','28','新闻中心 28 个批处理',3,'',23,2),(101,'2017-05-23 00:34:50.053243','27','新闻中心 27 个批处理',3,'',23,2),(102,'2017-05-23 00:34:50.094246','26','新闻中心 26 个批处理',3,'',23,2),(103,'2017-05-23 00:34:50.127247','25','新闻中心 25 个批处理',3,'',23,2),(104,'2017-05-23 00:34:50.160249','24','新闻中心 24 个批处理',3,'',23,2),(105,'2017-05-23 00:34:50.204252','23','新闻中心 23 个批处理',3,'',23,2),(106,'2017-05-23 00:34:50.244254','22','新闻中心 22 个批处理',3,'',23,2),(107,'2017-05-23 00:34:50.277256','21','新闻中心 21 个批处理',3,'',23,2),(108,'2017-05-23 00:34:50.310258','20','新闻中心 20 个批处理',3,'',23,2),(109,'2017-05-23 00:34:50.344260','19','新闻中心 19 个批处理',3,'',23,2),(110,'2017-05-23 00:34:50.398263','18','新闻中心 18 个批处理',3,'',23,2),(111,'2017-05-23 00:34:50.544271','17','新闻中心 17 个批处理',3,'',23,2),(112,'2017-05-23 00:34:50.579273','16','新闻中心 16 个批处理',3,'',23,2),(113,'2017-05-23 00:34:50.636277','15','新闻中心 15 个批处理',3,'',23,2),(114,'2017-05-23 00:34:50.677279','14','新闻中心 14 个批处理',3,'',23,2),(115,'2017-05-23 00:34:50.761284','13','新闻中心 13 个批处理',3,'',23,2),(116,'2017-05-23 00:34:50.802286','12','新闻中心 12 个批处理',3,'',23,2),(117,'2017-05-23 00:34:50.835288','11','新闻中心 11 个批处理',3,'',23,2),(118,'2017-05-23 00:34:50.868290','10','新闻中心 10 个批处理',3,'',23,2),(119,'2017-05-23 00:34:50.902292','9','新闻中心 9 个批处理',3,'',23,2),(120,'2017-05-23 00:34:50.968296','8','新闻中心 8 个批处理',3,'',23,2),(121,'2017-05-23 00:34:51.020298','7','新闻中心 7 个批处理',3,'',23,2),(122,'2017-05-23 00:34:51.060301','6','新闻中心 6 个批处理',3,'',23,2),(123,'2017-05-23 00:34:51.094303','5','新闻中心 5 个批处理',3,'',23,2),(124,'2017-05-23 00:34:51.127305','4','新闻中心 4 个批处理',3,'',23,2),(125,'2017-05-23 00:34:51.160306','3','新闻中心 3 个批处理',3,'',23,2),(126,'2017-05-23 00:34:51.220310','2','新闻中心 2 个批处理',3,'',23,2),(127,'2017-05-23 00:34:51.344317','1','新闻中心 1 个批处理',3,'',23,2),(128,'2017-05-23 00:50:06.149641','61','举例1',1,'[{\"added\": {}}]',23,2),(129,'2017-05-25 03:30:10.201840','5','2017-05-25 11:30:08+08:00_None-在测试:<p>aaaaa<br/></p>',1,'[{\"added\": {}}]',27,2),(130,'2017-05-25 03:42:08.774940','6','2017-05-25 11:42:07+08:00_fdsafdsf:<p>dsfdsaf<br/></p>',1,'[{\"added\": {}}]',27,2),(131,'2017-05-25 04:43:44.287640','7','2017-05-25 12:43:42+08:00_测试400:<p><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/></p>',1,'[{\"added\": {}}]',27,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(4,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(21,'jhun','fruitarticle'),(22,'jhun','homeimage'),(23,'jhun','infoarticle'),(26,'jhun','introarticle'),(24,'jhun','newsarticle'),(25,'jhun','productarticle'),(15,'jnu','fruitarticle'),(16,'jnu','homeimage'),(17,'jnu','infoarticle'),(20,'jnu','introarticle'),(18,'jnu','newsarticle'),(19,'jnu','productarticle'),(7,'news','focusarticle'),(8,'news','lawarticle'),(9,'news','policyarticle'),(14,'news','policyhomeimage'),(10,'news','popularscience'),(13,'news','slideimage'),(11,'news','talentsarticle'),(12,'news','techarticle'),(6,'sessions','session'),(27,'twfabu','item'),(28,'twfabu','lastpostid');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-05-22 02:39:34.180893'),(2,'auth','0001_initial','2017-05-22 02:39:49.688780'),(3,'admin','0001_initial','2017-05-22 02:39:52.820959'),(4,'admin','0002_logentry_remove_auto_add','2017-05-22 02:39:52.893963'),(5,'contenttypes','0002_remove_content_type_name','2017-05-22 02:39:55.171093'),(6,'auth','0002_alter_permission_name_max_length','2017-05-22 02:39:57.029200'),(7,'auth','0003_alter_user_email_max_length','2017-05-22 02:39:58.445281'),(8,'auth','0004_alter_user_username_opts','2017-05-22 02:39:58.498284'),(9,'auth','0005_alter_user_last_login_null','2017-05-22 02:39:59.317331'),(10,'auth','0006_require_contenttypes_0002','2017-05-22 02:39:59.381334'),(11,'auth','0007_alter_validators_add_error_messages','2017-05-22 02:39:59.436337'),(12,'auth','0008_alter_user_username_max_length','2017-05-22 02:40:01.188438'),(13,'jhun','0001_initial','2017-05-22 02:40:04.014599'),(14,'jhun','0002_introarticle','2017-05-22 02:40:04.562631'),(15,'jnu','0001_initial','2017-05-22 02:40:07.185781'),(16,'jnu','0002_introarticle','2017-05-22 02:40:08.368848'),(17,'news','0001_initial','2017-05-22 02:40:11.437024'),(18,'news','0002_auto_20170318_1200','2017-05-22 02:40:11.833046'),(19,'news','0003_auto_20170318_1319','2017-05-22 02:40:17.967397'),(20,'news','0004_auto_20170318_1320','2017-05-22 02:40:24.941796'),(21,'news','0005_slideimage','2017-05-22 02:40:25.653837'),(22,'news','0006_policyhomeimage','2017-05-22 02:40:26.981913'),(23,'sessions','0001_initial','2017-05-22 02:40:27.876964'),(24,'twfabu','0001_initial','2017-05-22 07:41:59.920109');
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
INSERT INTO `django_session` VALUES ('7q08lexqb4oco5o2te3rakctbugrinfu','MjBjNThlZTdmNDQyOGQyNDkzZmIxYjZiNGJjM2FiODg2YzVmMGI0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDRlNzY0ZTQ0NjNmYjMwMmYzYjlkYzI1YzFkMzkyMGIwNWFkZDdmIn0=','2017-06-05 07:42:17.531116'),('djqwqk1hjknqpyrlsh6wdv50hir116aw','NzdlOWVlNjI4YzU3MWQ2NTE2OWFkMGI2ZjkzMGJhOWY1NjMyOGI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE0NGU3NjRlNDQ2M2ZiMzAyZjNiOWRjMjVjMWQzOTIwYjA1YWRkN2YiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-06-05 04:07:18.206978'),('w4mg7vyvqnc5dk89h7qy8wxmjucwln06','ZmM5OTAzY2U3OGFhNWM2ODAyYjkyYjhmMzVlM2U4N2I0ZDQzZDRhMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTQ0ZTc2NGU0NDYzZmIzMDJmM2I5ZGMyNWMxZDM5MjBiMDVhZGQ3ZiIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2017-06-08 03:29:57.643121');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhun_fruitarticle`
--

DROP TABLE IF EXISTS `jhun_fruitarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhun_fruitarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhun_fruitarticle`
--

LOCK TABLES `jhun_fruitarticle` WRITE;
/*!40000 ALTER TABLE `jhun_fruitarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhun_fruitarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhun_homeimage`
--

DROP TABLE IF EXISTS `jhun_homeimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhun_homeimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhun_homeimage`
--

LOCK TABLES `jhun_homeimage` WRITE;
/*!40000 ALTER TABLE `jhun_homeimage` DISABLE KEYS */;
INSERT INTO `jhun_homeimage` VALUES (1,'one_pic','uploads/jhun/images/sh.jpg');
/*!40000 ALTER TABLE `jhun_homeimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhun_infoarticle`
--

DROP TABLE IF EXISTS `jhun_infoarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhun_infoarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhun_infoarticle`
--

LOCK TABLES `jhun_infoarticle` WRITE;
/*!40000 ALTER TABLE `jhun_infoarticle` DISABLE KEYS */;
INSERT INTO `jhun_infoarticle` VALUES (31,0,'uploads/jhun/images/default.jpg','行业资讯 1 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:14.699653','暨大信息科学院','暨大信息科学院','info'),(32,0,'uploads/jhun/images/default.jpg','行业资讯 2 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:14.928666','暨大信息科学院','暨大信息科学院','info'),(33,0,'uploads/jhun/images/default.jpg','行业资讯 3 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.010671','暨大信息科学院','暨大信息科学院','info'),(34,0,'uploads/jhun/images/default.jpg','行业资讯 4 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.109676','暨大信息科学院','暨大信息科学院','info'),(35,0,'uploads/jhun/images/default.jpg','行业资讯 5 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.169680','暨大信息科学院','暨大信息科学院','info'),(36,0,'uploads/jhun/images/default.jpg','行业资讯 6 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.203682','暨大信息科学院','暨大信息科学院','info'),(37,0,'uploads/jhun/images/default.jpg','行业资讯 7 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.250684','暨大信息科学院','暨大信息科学院','info'),(38,0,'uploads/jhun/images/default.jpg','行业资讯 8 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.277686','暨大信息科学院','暨大信息科学院','info'),(39,0,'uploads/jhun/images/default.jpg','行业资讯 9 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.327689','暨大信息科学院','暨大信息科学院','info'),(40,0,'uploads/jhun/images/default.jpg','行业资讯 10 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.360691','暨大信息科学院','暨大信息科学院','info'),(41,0,'uploads/jhun/images/default.jpg','行业资讯 11 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.394693','暨大信息科学院','暨大信息科学院','info'),(42,0,'uploads/jhun/images/default.jpg','行业资讯 12 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.427695','暨大信息科学院','暨大信息科学院','info'),(43,0,'uploads/jhun/images/default.jpg','行业资讯 13 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.460696','暨大信息科学院','暨大信息科学院','info'),(44,0,'uploads/jhun/images/default.jpg','行业资讯 14 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.519700','暨大信息科学院','暨大信息科学院','info'),(45,0,'uploads/jhun/images/default.jpg','行业资讯 15 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.577703','暨大信息科学院','暨大信息科学院','info'),(46,0,'uploads/jhun/images/default.jpg','行业资讯 16 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.610705','暨大信息科学院','暨大信息科学院','info'),(47,0,'uploads/jhun/images/default.jpg','行业资讯 17 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.644707','暨大信息科学院','暨大信息科学院','info'),(48,0,'uploads/jhun/images/default.jpg','行业资讯 18 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.677709','暨大信息科学院','暨大信息科学院','info'),(49,0,'uploads/jhun/images/default.jpg','行业资讯 19 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.710711','暨大信息科学院','暨大信息科学院','info'),(50,0,'uploads/jhun/images/default.jpg','行业资讯 20 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.769714','暨大信息科学院','暨大信息科学院','info'),(51,0,'uploads/jhun/images/default.jpg','行业资讯 21 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.802716','暨大信息科学院','暨大信息科学院','info'),(52,0,'uploads/jhun/images/default.jpg','行业资讯 22 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.836718','暨大信息科学院','暨大信息科学院','info'),(53,0,'uploads/jhun/images/default.jpg','行业资讯 23 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.869720','暨大信息科学院','暨大信息科学院','info'),(54,0,'uploads/jhun/images/default.jpg','行业资讯 24 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.903722','暨大信息科学院','暨大信息科学院','info'),(55,0,'uploads/jhun/images/default.jpg','行业资讯 25 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:15.976726','暨大信息科学院','暨大信息科学院','info'),(56,0,'uploads/jhun/images/default.jpg','行业资讯 26 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:16.020728','暨大信息科学院','暨大信息科学院','info'),(57,0,'uploads/jhun/images/default.jpg','行业资讯 27 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:16.061731','暨大信息科学院','暨大信息科学院','info'),(58,0,'uploads/jhun/images/default.jpg','行业资讯 28 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:16.094733','暨大信息科学院','暨大信息科学院','info'),(59,0,'uploads/jhun/images/default.jpg','行业资讯 29 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:16.127735','暨大信息科学院','暨大信息科学院','info'),(60,0,'uploads/jhun/images/default.jpg','行业资讯 30 个批处理','行业资讯的内容概要;不换行','文本中心内容，略;',1,'2017-05-23 00:35:16.185738','暨大信息科学院','暨大信息科学院','info'),(61,0,'uploads/jhun/images/f5.jpg','举例1','今日举例1','<p>.。。。<br/></p>',1,'2017-05-23 00:50:04.000000','暨大信息科学院','暨大信息科学院','info');
/*!40000 ALTER TABLE `jhun_infoarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhun_introarticle`
--

DROP TABLE IF EXISTS `jhun_introarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhun_introarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhun_introarticle`
--

LOCK TABLES `jhun_introarticle` WRITE;
/*!40000 ALTER TABLE `jhun_introarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhun_introarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhun_newsarticle`
--

DROP TABLE IF EXISTS `jhun_newsarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhun_newsarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhun_newsarticle`
--

LOCK TABLES `jhun_newsarticle` WRITE;
/*!40000 ALTER TABLE `jhun_newsarticle` DISABLE KEYS */;
INSERT INTO `jhun_newsarticle` VALUES (91,0,'uploads/jhun/images/default.jpg','新闻中心 1 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:14:59.967269','暨大信息科学院','暨大信息科学院','news'),(92,0,'uploads/jhun/images/default.jpg','新闻中心 2 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.048274','暨大信息科学院','暨大信息科学院','news'),(93,0,'uploads/jhun/images/default.jpg','新闻中心 3 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.073276','暨大信息科学院','暨大信息科学院','news'),(94,0,'uploads/jhun/images/default.jpg','新闻中心 4 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.131279','暨大信息科学院','暨大信息科学院','news'),(95,0,'uploads/jhun/images/default.jpg','新闻中心 5 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.156280','暨大信息科学院','暨大信息科学院','news'),(96,0,'uploads/jhun/images/default.jpg','新闻中心 6 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.181282','暨大信息科学院','暨大信息科学院','news'),(97,0,'uploads/jhun/images/default.jpg','新闻中心 7 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.207283','暨大信息科学院','暨大信息科学院','news'),(98,0,'uploads/jhun/images/default.jpg','新闻中心 8 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.231285','暨大信息科学院','暨大信息科学院','news'),(99,0,'uploads/jhun/images/default.jpg','新闻中心 9 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.257286','暨大信息科学院','暨大信息科学院','news'),(100,0,'uploads/jhun/images/default.jpg','新闻中心 10 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.306289','暨大信息科学院','暨大信息科学院','news'),(101,0,'uploads/jhun/images/default.jpg','新闻中心 11 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.332290','暨大信息科学院','暨大信息科学院','news'),(102,0,'uploads/jhun/images/default.jpg','新闻中心 12 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.396294','暨大信息科学院','暨大信息科学院','news'),(103,0,'uploads/jhun/images/default.jpg','新闻中心 13 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.440297','暨大信息科学院','暨大信息科学院','news'),(104,0,'uploads/jhun/images/default.jpg','新闻中心 14 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.465298','暨大信息科学院','暨大信息科学院','news'),(105,0,'uploads/jhun/images/default.jpg','新闻中心 15 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.490299','暨大信息科学院','暨大信息科学院','news'),(106,0,'uploads/jhun/images/default.jpg','新闻中心 16 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.523301','暨大信息科学院','暨大信息科学院','news'),(107,0,'uploads/jhun/images/default.jpg','新闻中心 17 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.548303','暨大信息科学院','暨大信息科学院','news'),(108,0,'uploads/jhun/images/default.jpg','新闻中心 18 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.607306','暨大信息科学院','暨大信息科学院','news'),(109,0,'uploads/jhun/images/default.jpg','新闻中心 19 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.631307','暨大信息科学院','暨大信息科学院','news'),(110,0,'uploads/jhun/images/default.jpg','新闻中心 20 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.657309','暨大信息科学院','暨大信息科学院','news'),(111,0,'uploads/jhun/images/default.jpg','新闻中心 21 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.690311','暨大信息科学院','暨大信息科学院','news'),(112,0,'uploads/jhun/images/default.jpg','新闻中心 22 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.715312','暨大信息科学院','暨大信息科学院','news'),(113,0,'uploads/jhun/images/default.jpg','新闻中心 23 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.740314','暨大信息科学院','暨大信息科学院','news'),(114,0,'uploads/jhun/images/default.jpg','新闻中心 24 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.791317','暨大信息科学院','暨大信息科学院','news'),(115,0,'uploads/jhun/images/default.jpg','新闻中心 25 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.823318','暨大信息科学院','暨大信息科学院','news'),(116,0,'uploads/jhun/images/default.jpg','新闻中心 26 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.848320','暨大信息科学院','暨大信息科学院','news'),(117,0,'uploads/jhun/images/default.jpg','新闻中心 27 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.873321','暨大信息科学院','暨大信息科学院','news'),(118,0,'uploads/jhun/images/default.jpg','新闻中心 28 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.898323','暨大信息科学院','暨大信息科学院','news'),(119,0,'uploads/jhun/images/default.jpg','新闻中心 29 个批处理','新闻中心的内容概要;不换行','文本中心内容，略;',1,'2017-05-22 09:15:00.924324','暨大信息科学院','暨大信息科学院','news'),(120,0,'uploads/jhun/images/default.jpg','新闻中心 30 个批处理','新闻中心的内容概要;不换行','<p>&nbsp; &nbsp; 文本中心内容，略;</p>',1,'2017-05-22 09:15:00.000000','暨大信息科学院','暨大信息科学院','news');
/*!40000 ALTER TABLE `jhun_newsarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhun_productarticle`
--

DROP TABLE IF EXISTS `jhun_productarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhun_productarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhun_productarticle`
--

LOCK TABLES `jhun_productarticle` WRITE;
/*!40000 ALTER TABLE `jhun_productarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhun_productarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jnu_fruitarticle`
--

DROP TABLE IF EXISTS `jnu_fruitarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jnu_fruitarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jnu_fruitarticle`
--

LOCK TABLES `jnu_fruitarticle` WRITE;
/*!40000 ALTER TABLE `jnu_fruitarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnu_fruitarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jnu_homeimage`
--

DROP TABLE IF EXISTS `jnu_homeimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jnu_homeimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jnu_homeimage`
--

LOCK TABLES `jnu_homeimage` WRITE;
/*!40000 ALTER TABLE `jnu_homeimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnu_homeimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jnu_infoarticle`
--

DROP TABLE IF EXISTS `jnu_infoarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jnu_infoarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jnu_infoarticle`
--

LOCK TABLES `jnu_infoarticle` WRITE;
/*!40000 ALTER TABLE `jnu_infoarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnu_infoarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jnu_introarticle`
--

DROP TABLE IF EXISTS `jnu_introarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jnu_introarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jnu_introarticle`
--

LOCK TABLES `jnu_introarticle` WRITE;
/*!40000 ALTER TABLE `jnu_introarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnu_introarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jnu_newsarticle`
--

DROP TABLE IF EXISTS `jnu_newsarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jnu_newsarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jnu_newsarticle`
--

LOCK TABLES `jnu_newsarticle` WRITE;
/*!40000 ALTER TABLE `jnu_newsarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnu_newsarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jnu_productarticle`
--

DROP TABLE IF EXISTS `jnu_productarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jnu_productarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jnu_productarticle`
--

LOCK TABLES `jnu_productarticle` WRITE;
/*!40000 ALTER TABLE `jnu_productarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnu_productarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_focusarticle`
--

DROP TABLE IF EXISTS `news_focusarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_focusarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_focusarticle`
--

LOCK TABLES `news_focusarticle` WRITE;
/*!40000 ALTER TABLE `news_focusarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_focusarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_lawarticle`
--

DROP TABLE IF EXISTS `news_lawarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_lawarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_lawarticle`
--

LOCK TABLES `news_lawarticle` WRITE;
/*!40000 ALTER TABLE `news_lawarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_lawarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_policyarticle`
--

DROP TABLE IF EXISTS `news_policyarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_policyarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_policyarticle`
--

LOCK TABLES `news_policyarticle` WRITE;
/*!40000 ALTER TABLE `news_policyarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_policyarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_policyhomeimage`
--

DROP TABLE IF EXISTS `news_policyhomeimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_policyhomeimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_policyhomeimage`
--

LOCK TABLES `news_policyhomeimage` WRITE;
/*!40000 ALTER TABLE `news_policyhomeimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_policyhomeimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_popularscience`
--

DROP TABLE IF EXISTS `news_popularscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_popularscience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_popularscience`
--

LOCK TABLES `news_popularscience` WRITE;
/*!40000 ALTER TABLE `news_popularscience` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_popularscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_slideimage`
--

DROP TABLE IF EXISTS `news_slideimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_slideimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slidepic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_slideimage`
--

LOCK TABLES `news_slideimage` WRITE;
/*!40000 ALTER TABLE `news_slideimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_slideimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_talentsarticle`
--

DROP TABLE IF EXISTS `news_talentsarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_talentsarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_talentsarticle`
--

LOCK TABLES `news_talentsarticle` WRITE;
/*!40000 ALTER TABLE `news_talentsarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_talentsarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_techarticle`
--

DROP TABLE IF EXISTS `news_techarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_techarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sourcefrom` varchar(255) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_techarticle`
--

LOCK TABLES `news_techarticle` WRITE;
/*!40000 ALTER TABLE `news_techarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_techarticle` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twfabu_item`
--

LOCK TABLES `twfabu_item` WRITE;
/*!40000 ALTER TABLE `twfabu_item` DISABLE KEYS */;
INSERT INTO `twfabu_item` VALUES (1,'作者测试1','<p>万能示例; ---<br/>初始值。。。<br/></p>','2017-05-22 07:42:26.000000'),(2,'作者2','<p>插入图片1<br/><img src=\"http://maps.googleapis.com/maps/api/staticmap?center=30.601749009392254,114.29107699999997&zoom=16&size=520x340&maptype=roadmap&markers=30.601749,114.29107699999997&sensor=false\" width=\"520\" height=\"340\"/></p>','2017-05-22 07:44:56.000000'),(3,'测试3','<p><img src=\"http://api.map.baidu.com/staticimage?center=116.404,39.915&zoom=10&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/></p>','2017-05-22 07:47:06.000000'),(4,'None','<p>1111<br/></p>','2017-05-22 07:47:56.000000'),(5,'None-在测试','<p>aaaaa<br/></p>','2017-05-25 03:30:08.000000'),(6,'fdsafdsf','<p>dsfdsaf<br/></p>','2017-05-25 03:42:07.000000'),(7,'测试400','<p><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/></p>','2017-05-25 04:43:42.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twfabu_lastpostid`
--

LOCK TABLES `twfabu_lastpostid` WRITE;
/*!40000 ALTER TABLE `twfabu_lastpostid` DISABLE KEYS */;
INSERT INTO `twfabu_lastpostid` VALUES (1,'2017-05-22 07:44:03.593183',1),(2,'2017-05-22 07:45:18.561471',2),(3,'2017-05-22 07:47:46.418928',3),(4,'2017-05-22 07:47:59.075652',4),(5,'2017-05-25 03:30:10.405852',5),(6,'2017-05-25 03:42:10.395033',6),(7,'2017-05-25 04:40:46.876493',6),(8,'2017-05-25 04:43:15.053968',6),(9,'2017-05-25 04:43:45.615716',7),(10,'2017-05-25 07:46:21.283345',7);
/*!40000 ALTER TABLE `twfabu_lastpostid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-25 16:04:52
