-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: rm-wz9z23v5h3b52tdlgko.mysql.rds.aliyuncs.com    Database: newxton_company_website
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `nxt_banner`
--

DROP TABLE IF EXISTS `nxt_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploadfile_id` bigint(20) DEFAULT NULL,
  `urlpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `click_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_banner`
--

LOCK TABLES `nxt_banner` WRITE;
/*!40000 ALTER TABLE `nxt_banner` DISABLE KEYS */;
INSERT INTO `nxt_banner` VALUES (87,'项目页',302,'/2020-08-26-1880966921.jpg','http://e.com3'),(88,'项目页',303,'/2020-08-26-1703771865.jpg','http://c.com2'),(89,'项目页',304,'/2020-08-26-1343663833.jpg','http://d.com21'),(90,'项目页',321,'/2020-08-28-1142419365.png','11111'),(91,'首页',304,'/2020-08-26-1343663833.jpg','http://d.com3'),(92,'首页',303,'/2020-08-26-1703771865.jpg','http://c.com1'),(93,'首页',322,'/2020-08-28-1384867982.png',''),(101,'案例页',302,'/2020-08-26-1880966921.jpg','https://cn.bing.com/2'),(102,'案例页',323,'/2020-08-28-1855675747.png',''),(103,'案例页',324,'/2020-08-28-1702373006.jpg','');
/*!40000 ALTER TABLE `nxt_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_content`
--

DROP TABLE IF EXISTS `nxt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `content_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dateline_update` bigint(20) DEFAULT NULL,
  `dateline_create` bigint(20) DEFAULT NULL,
  `is_recommend` int(11) DEFAULT NULL,
  `sort_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_content`
--

LOCK TABLES `nxt_content` WRITE;
/*!40000 ALTER TABLE `nxt_content` DISABLE KEYS */;
INSERT INTO `nxt_content` VALUES (24,2,'SpaceX载人龙飞船成功返回地球 完成终极测试再创历史','<p>5624352111115233<img class=\"wscnph\" src=\"http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1759334020.jpg\" />3333</p>',1596532686625,1596418999575,0,33),(31,5,'啊啊啊','<p>sdddd3333344443335<img class=\"wscnph\" src=\"http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1567359448.jpg\" />55555544441111145545555</p>',1596540174161,1596523072465,1,27),(32,6,'sssss','<p>ffff<img class=\"wscnph\" src=\"http://newxton-image-domain/2020-08-26-1343663833.jpg\" />fflkjhlijkkjh</p>',1598407316961,1596541040537,1,32),(33,5,'fff','<p>asffff</p>',1596546235844,1596541342492,0,31),(34,6,'23423','<p>23434</p>',1596546469023,1596545378436,1,34),(35,7,'aaa','<p>fff</p>',1596546247556,1596546226474,0,35),(36,7,'111','111',1596935588451,1596612924807,0,36);
/*!40000 ALTER TABLE `nxt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_guestmessage`
--

DROP TABLE IF EXISTS `nxt_guestmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_guestmessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guest_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message_dateline` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_guestmessage`
--

LOCK TABLES `nxt_guestmessage` WRITE;
/*!40000 ALTER TABLE `nxt_guestmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `nxt_guestmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_news_category`
--

DROP TABLE IF EXISTS `nxt_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_news_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_news_category`
--

LOCK TABLES `nxt_news_category` WRITE;
/*!40000 ALTER TABLE `nxt_news_category` DISABLE KEYS */;
INSERT INTO `nxt_news_category` VALUES (1,'新闻AAA',0),(2,'十三水1111',8),(5,'国内新闻',1),(6,'领导动态1222',5),(7,'政府通知222',5),(8,'法律',0);
/*!40000 ALTER TABLE `nxt_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_product`
--

DROP TABLE IF EXISTS `nxt_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `price_negotiation` int(11) DEFAULT NULL,
  `price_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dateline_create` bigint(20) DEFAULT NULL,
  `dateline_updated` bigint(20) DEFAULT NULL,
  `is_recommend` int(11) DEFAULT NULL,
  `sort_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_product`
--

LOCK TABLES `nxt_product` WRITE;
/*!40000 ALTER TABLE `nxt_product` DISABLE KEYS */;
INSERT INTO `nxt_product` VALUES (52,1,'111',NULL,899,NULL,NULL,'1111',1598524504058,1598524504058,1,53),(55,1,'图片',NULL,NULL,NULL,NULL,'<p>的方式感到<img class=\"wscnph\" src=\"http://newxton-image-domain/2020-08-26-1874525256.jpg\" height=\"200\" />附属国豆腐干</p>',1598407256841,1598407256841,1,55),(60,1,'11',NULL,NULL,NULL,NULL,'11',1598411403477,1598411403477,1,60),(62,1,'11','1234434',111,1,'3123','11',1598411555363,1598411555363,1,NULL),(63,1,'11','1234434',111,1,'3123','11',1598411814052,1598411814052,1,63),(64,1,'11','3333',2222,0,'2222','11',1598412642463,1598412642463,1,64),(65,1,'bbb','undefi',123,1,'undefi','<p>b<img class=\"wscnph\" src=\"http://newxton-image-domain/2020-08-28-1321007314.jpg\" />bb</p>',1598614752437,1598614752437,1,65),(66,1,'222','11',1200,0,'13','bbb',1598528790269,1598528790269,0,66),(79,5,'啊啊啊','aaaaa',12300,1,'aaa','<p>啊啊<img class=\"wscnph\" src=\"http://newxton-image-domain/2020-08-27-1278853159.jpg\" />啊啊</p>',1598531454309,1598531454309,0,79),(80,5,'aaaaaa','aaaabbb',3209,0,'cccc','',1598531896473,1598531896473,0,80),(81,0,'','',NULL,0,'','',1598537448830,1598537448830,0,81),(82,0,'','',NULL,0,'','',1598538187634,1598538187634,0,82),(83,0,'','',NULL,0,'','',1598538293888,1598538293888,0,83),(84,0,'','',NULL,0,'','',1598538385395,1598538385395,0,84),(85,0,'','',NULL,0,'','',1598538434665,1598538434665,0,85),(86,0,'','',NULL,0,'','',1598538484229,1598538484229,0,86),(87,0,'','',NULL,0,'','',1598538731995,1598538731995,0,87),(88,0,'','',NULL,0,'','',1598538935463,1598538935463,0,88),(89,4,'111','111',1100,0,'111','<p>sss</p>',1598577774246,1598577774246,0,89),(90,0,'dddd','asadfa32333',1245,0,'aaa1111','',1598608162658,1598608162658,0,90);
/*!40000 ALTER TABLE `nxt_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_product_category`
--

DROP TABLE IF EXISTS `nxt_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_product_category`
--

LOCK TABLES `nxt_product_category` WRITE;
/*!40000 ALTER TABLE `nxt_product_category` DISABLE KEYS */;
INSERT INTO `nxt_product_category` VALUES (1,'类别A',0),(2,'类别B',0),(4,'类别2',1),(5,'类别1122',4),(6,'类别22',2),(7,'类别甲',2);
/*!40000 ALTER TABLE `nxt_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_product_picture`
--

DROP TABLE IF EXISTS `nxt_product_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_product_picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `uploadfile_id` bigint(20) DEFAULT NULL,
  `sort_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_product_picture`
--

LOCK TABLES `nxt_product_picture` WRITE;
/*!40000 ALTER TABLE `nxt_product_picture` DISABLE KEYS */;
INSERT INTO `nxt_product_picture` VALUES (1,5,20,1),(2,5,23,2),(3,9,20,3),(4,10,20,4),(5,11,20,5),(14,13,23,14),(15,13,20,15),(16,41,222,16),(17,41,223,17),(20,40,222,20),(21,40,223,21),(22,46,234,22),(23,39,238,23),(24,42,239,24),(25,49,241,25),(26,49,240,26),(39,53,36,39),(40,53,37,40),(41,53,38,41),(47,50,45,47),(48,50,46,48),(75,51,281,75),(76,51,283,76),(85,57,286,85),(86,57,287,86),(87,57,288,87),(88,56,289,88),(89,56,290,89),(92,58,294,92),(93,58,295,93),(96,55,302,96),(97,55,303,97),(104,66,302,104),(105,66,303,105),(122,79,309,122),(129,65,302,129),(130,65,303,130);
/*!40000 ALTER TABLE `nxt_product_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_product_sku`
--

DROP TABLE IF EXISTS `nxt_product_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_product_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_product_sku`
--

LOCK TABLES `nxt_product_sku` WRITE;
/*!40000 ALTER TABLE `nxt_product_sku` DISABLE KEYS */;
INSERT INTO `nxt_product_sku` VALUES (9,60,'颜色a'),(10,60,'尺码a'),(17,61,'颜色c'),(18,61,'尺码ca'),(19,63,'颜色c'),(20,63,'尺码ca'),(33,64,'颜色1'),(34,64,'尺码ca'),(43,75,'颜色'),(44,75,'尺码'),(45,75,'属性名称'),(46,76,'颜色'),(47,77,'颜色'),(48,77,'尺码'),(49,77,'属性名称'),(50,78,'颜色'),(51,78,'尺码'),(52,78,'属性名称'),(53,66,'颜色'),(54,66,'尺码'),(55,66,'属性名称'),(83,79,'颜色'),(84,79,'尺码'),(85,79,'属性名称'),(89,80,'颜色'),(90,80,'尺码'),(91,80,'属性名称'),(92,84,'123'),(93,85,'123'),(94,86,'111'),(95,87,'123'),(96,88,'123'),(97,88,'456'),(107,89,'阿发啊'),(108,89,'xx'),(109,90,'搜索'),(110,90,'11'),(111,65,'颜色'),(112,65,'尺码'),(113,65,'属性名称');
/*!40000 ALTER TABLE `nxt_product_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_product_sku_value`
--

DROP TABLE IF EXISTS `nxt_product_sku_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_product_sku_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku_id` bigint(20) DEFAULT NULL,
  `sku_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sku_id` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_product_sku_value`
--

LOCK TABLES `nxt_product_sku_value` WRITE;
/*!40000 ALTER TABLE `nxt_product_sku_value` DISABLE KEYS */;
INSERT INTO `nxt_product_sku_value` VALUES (25,9,'红2'),(26,9,'绿2'),(27,9,'蓝2'),(28,10,'大1'),(29,10,'很大1'),(30,10,'非常大1'),(43,15,'红2'),(44,15,'绿2'),(45,15,'蓝2'),(46,16,'大1'),(47,16,'很大1'),(48,16,'非常大1'),(49,17,'红2'),(50,17,'绿2'),(51,17,'蓝2'),(52,18,'大1'),(53,18,'很大1'),(54,18,'非常大1'),(55,19,'红2'),(56,19,'绿2'),(57,19,'蓝2'),(58,20,'大1'),(59,20,'很大1'),(60,20,'非常大1'),(97,33,'红1'),(98,33,'绿2'),(99,33,'蓝2'),(100,34,'大1'),(101,34,'很大1'),(102,34,'非常大1'),(127,50,'1'),(128,51,'2'),(129,52,'3'),(130,53,'1'),(131,54,'1'),(132,55,'3'),(188,83,'白'),(189,83,'黑'),(190,84,'L'),(191,84,'XL'),(192,85,'是否'),(193,85,'搜索'),(199,89,'ss'),(200,89,'bb'),(201,90,'a'),(202,90,'b'),(203,91,'嗷嗷'),(204,92,'1111\"'),(205,92,'11112'),(206,93,'111'),(207,93,'111222'),(208,94,'123'),(209,94,'123123'),(210,95,'111'),(211,95,'111222'),(212,96,'111'),(213,97,'222'),(214,97,'22211'),(237,107,'s'),(238,108,'b'),(239,108,'c'),(240,109,'ss'),(241,109,'11'),(242,109,'22'),(243,110,'aaf'),(244,110,'ddd'),(245,111,'红'),(246,111,'绿'),(247,112,'大'),(248,112,'很大'),(249,112,'非常大'),(250,113,'1111'),(251,113,'123');
/*!40000 ALTER TABLE `nxt_product_sku_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_setting`
--

DROP TABLE IF EXISTS `nxt_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `setting_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateline_updated` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_key_UNIQUE` (`setting_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_setting`
--

LOCK TABLES `nxt_setting` WRITE;
/*!40000 ALTER TABLE `nxt_setting` DISABLE KEYS */;
INSERT INTO `nxt_setting` VALUES (1,'site_name','22211222aaabbb','网站名','input',1596543270337),(2,'stat_code','333112aaabbb122','统计代码','textarea',1600345603425),(3,'beian','粤ICP备888822aaabbb','备案','input',1596543270344),(4,'domain','www.dafo.com44422aaabbb','域名','input',1596543270343),(5,'admin_name','张主任22aaabbb','管理员','input',1596543270345);
/*!40000 ALTER TABLE `nxt_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_uploadfile`
--

DROP TABLE IF EXISTS `nxt_uploadfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_uploadfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_location` int(11) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `file_ext` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename_saved` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filepath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `dateline_update` bigint(20) DEFAULT NULL,
  `netdisk_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `netdisk_pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_uploadfile`
--

LOCK TABLES `nxt_uploadfile` WRITE;
/*!40000 ALTER TABLE `nxt_uploadfile` DISABLE KEYS */;
INSERT INTO `nxt_uploadfile` VALUES (17,1,NULL,'jpg','5c11a4bce3855_610.jpg',NULL,'2020-07-24-1384956789.jpg','2020-07-24-1384956789.jpg',143358,1595579546269,NULL,NULL),(18,1,NULL,'jpg','5c11a4bce3855_610.jpg','2020-07-24-1002886254.jpg','2020-07-24-1002886254.jpg','http://company-website-test.s3-cn-south-1.qiniucs.com/2020-07-24-1002886254.jpg',143358,1595579852853,NULL,NULL),(19,1,NULL,'jpg','5c11a4bce3855_610.jpg','2020-07-24-1493694469.jpg','2020-07-24-1493694469.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-07-24-1493694469.jpg',143358,1595579946390,NULL,NULL),(20,1,0,'jpg','5c11a4bce3855_610.jpg','2020-07-24-1415459657.jpg','2020-07-24-1415459657.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-07-24-1415459657.jpg',143358,1595581775378,NULL,NULL),(21,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'qewrqewr','342'),(22,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'qewrqewr','342'),(23,1,0,'jpg','5c11a4bce3855_610.jpg','2020-07-24-1407495951.jpg','2020-07-24-1407495951.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-07-24-1407495951.jpg',143358,1595581863006,NULL,NULL),(24,1,0,'jpg','111.jpg','2020-08-03-1992176448.jpg','2020-08-03-1992176448.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-03-1992176448.jpg',325576,1596439604582,NULL,NULL),(25,1,0,'jpg','111.jpg','2020-08-03-1098184375.jpg','2020-08-03-1098184375.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-03-1098184375.jpg',325576,1596458636062,NULL,NULL),(26,1,0,'jpg','111.jpg','2020-08-03-1655781501.jpg','2020-08-03-1655781501.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-03-1655781501.jpg',325576,1596458822176,NULL,NULL),(27,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1525317402.jpg','2020-08-04-1525317402.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1525317402.jpg',12880,1596507819107,NULL,NULL),(28,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1156898432.jpg','2020-08-04-1156898432.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1156898432.jpg',12880,1596508937473,NULL,NULL),(29,1,0,'jpg','111.jpg','2020-08-04-1685664924.jpg','2020-08-04-1685664924.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1685664924.jpg',325576,1596509171281,NULL,NULL),(30,1,0,'jpg','111.jpg','2020-08-04-1655175353.jpg','2020-08-04-1655175353.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1655175353.jpg',325576,1596509178656,NULL,NULL),(31,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1317375426.jpg','2020-08-04-1317375426.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1317375426.jpg',12880,1596509217421,NULL,NULL),(32,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1985019231.jpg','2020-08-04-1985019231.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1985019231.jpg',12880,1596509328743,NULL,NULL),(33,1,0,'jpg','111.jpg','2020-08-04-1857654781.jpg','2020-08-04-1857654781.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1857654781.jpg',325576,1596509337074,NULL,NULL),(34,1,0,'jpg','111.jpg','2020-08-04-1370531849.jpg','2020-08-04-1370531849.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1370531849.jpg',325576,1596509341447,NULL,NULL),(35,1,0,'jpg','111.jpg','2020-08-04-1084791040.jpg','2020-08-04-1084791040.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1084791040.jpg',325576,1596509375746,NULL,NULL),(36,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1696977016.jpg','2020-08-04-1696977016.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1696977016.jpg',12880,1596509712557,NULL,NULL),(37,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1667500381.jpg','2020-08-04-1667500381.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1667500381.jpg',12880,1596509733837,NULL,NULL),(38,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1951046770.jpg','2020-08-04-1951046770.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1951046770.jpg',12880,1596509792805,NULL,NULL),(39,1,0,'jpg','111.jpg','2020-08-04-1814775766.jpg','2020-08-04-1814775766.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1814775766.jpg',325576,1596509856939,NULL,NULL),(40,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1977418383.jpg','2020-08-04-1977418383.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1977418383.jpg',12880,1596509866133,NULL,NULL),(41,1,0,'jpg','260.jpg','2020-08-04-1964515391.jpg','2020-08-04-1964515391.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1964515391.jpg',16443,1596509963545,NULL,NULL),(42,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1081331152.jpg','2020-08-04-1081331152.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1081331152.jpg',12880,1596509984698,NULL,NULL),(43,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1656704489.jpg','2020-08-04-1656704489.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1656704489.jpg',12880,1596510406464,NULL,NULL),(44,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1535630748.jpg','2020-08-04-1535630748.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1535630748.jpg',12880,1596510449897,NULL,NULL),(45,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1115460038.jpg','2020-08-04-1115460038.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1115460038.jpg',12880,1596510500995,NULL,NULL),(46,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1282373623.jpg','2020-08-04-1282373623.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1282373623.jpg',12880,1596510574327,NULL,NULL),(47,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1475847462.jpg','2020-08-04-1475847462.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1475847462.jpg',12880,1596510706731,NULL,NULL),(48,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1974379881.jpg','2020-08-04-1974379881.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1974379881.jpg',548465,1596511218152,NULL,NULL),(49,1,0,'jpg','260.jpg','2020-08-04-1479527263.jpg','2020-08-04-1479527263.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1479527263.jpg',16443,1596511474940,NULL,NULL),(50,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1051292119.jpg','2020-08-04-1051292119.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1051292119.jpg',12880,1596511504064,NULL,NULL),(51,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1992185941.jpg','2020-08-04-1992185941.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1992185941.jpg',12880,1596511556483,NULL,NULL),(52,1,0,'jpg','260.jpg','2020-08-04-1057095915.jpg','2020-08-04-1057095915.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1057095915.jpg',16443,1596511578371,NULL,NULL),(53,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1256802037.jpg','2020-08-04-1256802037.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1256802037.jpg',12880,1596511640516,NULL,NULL),(54,1,0,'jpg','260.jpg','2020-08-04-1643375480.jpg','2020-08-04-1643375480.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1643375480.jpg',16443,1596511732626,NULL,NULL),(55,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1809126922.jpg','2020-08-04-1809126922.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1809126922.jpg',12880,1596511767264,NULL,NULL),(56,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1414276713.jpg','2020-08-04-1414276713.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1414276713.jpg',12880,1596511808442,NULL,NULL),(57,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1560691526.jpg','2020-08-04-1560691526.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1560691526.jpg',548465,1596513236712,NULL,NULL),(58,1,0,'jpg','111.jpg','2020-08-04-1023102302.jpg','2020-08-04-1023102302.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1023102302.jpg',325576,1596513390670,NULL,NULL),(59,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1271014887.jpg','2020-08-04-1271014887.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1271014887.jpg',12880,1596513423296,NULL,NULL),(60,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1478557662.jpg','2020-08-04-1478557662.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1478557662.jpg',12880,1596513499187,NULL,NULL),(61,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1438336520.jpg','2020-08-04-1438336520.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1438336520.jpg',12880,1596513535651,NULL,NULL),(62,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1263086082.jpg','2020-08-04-1263086082.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1263086082.jpg',12880,1596513737973,NULL,NULL),(63,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1342715616.jpg','2020-08-04-1342715616.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1342715616.jpg',548465,1596514273101,NULL,NULL),(64,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1387008455.jpg','2020-08-04-1387008455.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1387008455.jpg',12880,1596515392248,NULL,NULL),(65,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1276411091.jpg','2020-08-04-1276411091.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1276411091.jpg',548465,1596516866011,NULL,NULL),(66,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1634611847.jpg','2020-08-04-1634611847.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1634611847.jpg',548465,1596521076048,NULL,NULL),(67,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1195562507.jpg','2020-08-04-1195562507.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1195562507.jpg',548465,1596521080766,NULL,NULL),(68,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1303369025.jpg','2020-08-04-1303369025.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1303369025.jpg',548465,1596522174438,NULL,NULL),(69,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1610676859.jpg','2020-08-04-1610676859.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1610676859.jpg',548465,1596522408141,NULL,NULL),(70,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1217960502.jpg','2020-08-04-1217960502.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1217960502.jpg',548465,1596522594100,NULL,NULL),(71,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1716606181.jpg','2020-08-04-1716606181.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1716606181.jpg',115593,1596522600059,NULL,NULL),(72,1,0,'jpg','111.jpg','2020-08-04-1968035303.jpg','2020-08-04-1968035303.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1968035303.jpg',325576,1596522971720,NULL,NULL),(73,1,0,'jpg','111.jpg','2020-08-04-1610358240.jpg','2020-08-04-1610358240.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1610358240.jpg',325576,1596522984449,NULL,NULL),(74,1,0,'jpg','111.jpg','2020-08-04-1822424809.jpg','2020-08-04-1822424809.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1822424809.jpg',325576,1596523003960,NULL,NULL),(75,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1679824756.jpg','2020-08-04-1679824756.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1679824756.jpg',548465,1596524423646,NULL,NULL),(76,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1123306121.jpg','2020-08-04-1123306121.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1123306121.jpg',12880,1596524460617,NULL,NULL),(77,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1708099443.jpg','2020-08-04-1708099443.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1708099443.jpg',548465,1596524472635,NULL,NULL),(78,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1326642760.jpg','2020-08-04-1326642760.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1326642760.jpg',12880,1596524481620,NULL,NULL),(79,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1349294339.jpg','2020-08-04-1349294339.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1349294339.jpg',12880,1596524533428,NULL,NULL),(80,1,0,'jpg','111.jpg','2020-08-04-1900043941.jpg','2020-08-04-1900043941.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1900043941.jpg',325576,1596524621138,NULL,NULL),(81,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1443627324.jpg','2020-08-04-1443627324.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1443627324.jpg',548465,1596524652470,NULL,NULL),(82,1,0,'jpg','111.jpg','2020-08-04-1729402661.jpg','2020-08-04-1729402661.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1729402661.jpg',325576,1596524673641,NULL,NULL),(83,1,0,'jpg','111.jpg','2020-08-04-1172958233.jpg','2020-08-04-1172958233.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1172958233.jpg',325576,1596524705162,NULL,NULL),(84,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1576215801.jpg','2020-08-04-1576215801.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1576215801.jpg',548465,1596524709653,NULL,NULL),(85,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1851255676.jpg','2020-08-04-1851255676.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1851255676.jpg',115593,1596524748799,NULL,NULL),(86,1,0,'jpg','111.jpg','2020-08-04-1364156728.jpg','2020-08-04-1364156728.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1364156728.jpg',325576,1596524757899,NULL,NULL),(87,1,0,'jpg','111.jpg','2020-08-04-1755771304.jpg','2020-08-04-1755771304.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1755771304.jpg',325576,1596524763253,NULL,NULL),(88,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1956401910.jpg','2020-08-04-1956401910.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1956401910.jpg',138615,1596524767534,NULL,NULL),(89,1,0,'jpg','111.jpg','2020-08-04-1274216004.jpg','2020-08-04-1274216004.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1274216004.jpg',325576,1596524784851,NULL,NULL),(90,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1522448135.jpg','2020-08-04-1522448135.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1522448135.jpg',138615,1596524789695,NULL,NULL),(91,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1361491688.jpg','2020-08-04-1361491688.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1361491688.jpg',138615,1596524843641,NULL,NULL),(92,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1850262741.jpg','2020-08-04-1850262741.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1850262741.jpg',548465,1596524920734,NULL,NULL),(93,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1234060742.jpg','2020-08-04-1234060742.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1234060742.jpg',548465,1596525200785,NULL,NULL),(94,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1403948786.jpg','2020-08-04-1403948786.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1403948786.jpg',115593,1596525205388,NULL,NULL),(95,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1677259166.jpg','2020-08-04-1677259166.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1677259166.jpg',138615,1596525308664,NULL,NULL),(96,1,0,'jpg','260.jpg','2020-08-04-1019262998.jpg','2020-08-04-1019262998.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1019262998.jpg',16443,1596525378618,NULL,NULL),(97,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1211703806.jpg','2020-08-04-1211703806.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1211703806.jpg',548465,1596525434545,NULL,NULL),(98,1,0,'jpg','260.jpg','2020-08-04-1258220115.jpg','2020-08-04-1258220115.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1258220115.jpg',16443,1596525448300,NULL,NULL),(99,1,0,'jpg','images.jpg','2020-08-04-1316255760.jpg','2020-08-04-1316255760.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1316255760.jpg',6909,1596525482505,NULL,NULL),(100,1,0,'jpg','images.jpg','2020-08-04-1478723495.jpg','2020-08-04-1478723495.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1478723495.jpg',6909,1596525489719,NULL,NULL),(101,1,0,'jpg','images.jpg','2020-08-04-1102704917.jpg','2020-08-04-1102704917.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1102704917.jpg',6909,1596525503206,NULL,NULL),(102,1,0,'jpg','images.jpg','2020-08-04-1010368809.jpg','2020-08-04-1010368809.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1010368809.jpg',6909,1596525516616,NULL,NULL),(103,1,0,'jpg','images.jpg','2020-08-04-1922361690.jpg','2020-08-04-1922361690.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1922361690.jpg',6909,1596525528968,NULL,NULL),(104,1,0,'jpg','images.jpg','2020-08-04-1741152013.jpg','2020-08-04-1741152013.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1741152013.jpg',6909,1596525534551,NULL,NULL),(105,1,0,'jpg','images.jpg','2020-08-04-1541250715.jpg','2020-08-04-1541250715.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1541250715.jpg',6909,1596525558283,NULL,NULL),(106,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1169436356.jpg','2020-08-04-1169436356.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1169436356.jpg',12880,1596525558686,NULL,NULL),(107,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1161868771.jpg','2020-08-04-1161868771.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1161868771.jpg',548465,1596525563314,NULL,NULL),(108,1,0,'jpg','images.jpg','2020-08-04-1659100386.jpg','2020-08-04-1659100386.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1659100386.jpg',6909,1596525572212,NULL,NULL),(109,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1377288265.jpg','2020-08-04-1377288265.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1377288265.jpg',548465,1596525601270,NULL,NULL),(110,1,0,'jpg','unnamed.jpg','2020-08-04-1923693159.jpg','2020-08-04-1923693159.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1923693159.jpg',43319,1596525619414,NULL,NULL),(111,1,0,'jpg','images.jpg','2020-08-04-1262131794.jpg','2020-08-04-1262131794.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1262131794.jpg',6909,1596525622469,NULL,NULL),(112,1,0,'jpg','unnamed.jpg','2020-08-04-1482873349.jpg','2020-08-04-1482873349.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1482873349.jpg',43319,1596525659679,NULL,NULL),(113,1,0,'jpg','images.jpg','2020-08-04-1263260753.jpg','2020-08-04-1263260753.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1263260753.jpg',6909,1596525663467,NULL,NULL),(114,1,0,'jpg','images.jpg','2020-08-04-1277064707.jpg','2020-08-04-1277064707.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1277064707.jpg',6909,1596525671093,NULL,NULL),(115,1,0,'jpg','260.jpg','2020-08-04-1539296230.jpg','2020-08-04-1539296230.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1539296230.jpg',16443,1596525676995,NULL,NULL),(116,1,0,'jpg','unnamed.jpg','2020-08-04-1938802411.jpg','2020-08-04-1938802411.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1938802411.jpg',43319,1596525705594,NULL,NULL),(117,1,0,'jpg','images.jpg','2020-08-04-1075133650.jpg','2020-08-04-1075133650.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1075133650.jpg',6909,1596525708165,NULL,NULL),(118,1,0,'jpg','unnamed.jpg','2020-08-04-1195376308.jpg','2020-08-04-1195376308.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1195376308.jpg',43319,1596525713503,NULL,NULL),(119,1,0,'jpg','images.jpg','2020-08-04-1190928169.jpg','2020-08-04-1190928169.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1190928169.jpg',6909,1596525729210,NULL,NULL),(120,1,0,'jpg','unnamed.jpg','2020-08-04-1019901924.jpg','2020-08-04-1019901924.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1019901924.jpg',43319,1596525737684,NULL,NULL),(121,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1033899871.jpg','2020-08-04-1033899871.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1033899871.jpg',12880,1596525881079,NULL,NULL),(122,1,0,'jpg','260.jpg','2020-08-04-1586338424.jpg','2020-08-04-1586338424.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1586338424.jpg',16443,1596525888560,NULL,NULL),(123,1,0,'jpg','260.jpg','2020-08-04-1516141047.jpg','2020-08-04-1516141047.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1516141047.jpg',16443,1596525908633,NULL,NULL),(124,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1238393180.jpg','2020-08-04-1238393180.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1238393180.jpg',12880,1596525916343,NULL,NULL),(125,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1087020932.jpg','2020-08-04-1087020932.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1087020932.jpg',548465,1596526150956,NULL,NULL),(126,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1503556878.jpg','2020-08-04-1503556878.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1503556878.jpg',548465,1596526247433,NULL,NULL),(127,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1535059499.jpg','2020-08-04-1535059499.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1535059499.jpg',12880,1596526247880,NULL,NULL),(128,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1383199125.jpg','2020-08-04-1383199125.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1383199125.jpg',115593,1596526308485,NULL,NULL),(129,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1003378796.jpg','2020-08-04-1003378796.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1003378796.jpg',548465,1596526436899,NULL,NULL),(130,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1128545794.jpg','2020-08-04-1128545794.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1128545794.jpg',115593,1596526559625,NULL,NULL),(131,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1816613383.jpg','2020-08-04-1816613383.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1816613383.jpg',548465,1596526758014,NULL,NULL),(132,1,0,'jpg','260.jpg','2020-08-04-1861156030.jpg','2020-08-04-1861156030.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1861156030.jpg',16443,1596526803399,NULL,NULL),(133,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1462341064.jpg','2020-08-04-1462341064.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1462341064.jpg',115593,1596526856387,NULL,NULL),(134,1,0,'jpg','260.jpg','2020-08-04-1469969998.jpg','2020-08-04-1469969998.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1469969998.jpg',16443,1596526968131,NULL,NULL),(135,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1411072799.jpg','2020-08-04-1411072799.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1411072799.jpg',548465,1596526998555,NULL,NULL),(136,1,0,'jpg','260.jpg','2020-08-04-1311865919.jpg','2020-08-04-1311865919.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1311865919.jpg',16443,1596527019072,NULL,NULL),(137,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1847190319.jpg','2020-08-04-1847190319.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1847190319.jpg',12880,1596527041069,NULL,NULL),(138,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1158784775.jpg','2020-08-04-1158784775.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1158784775.jpg',548465,1596527068463,NULL,NULL),(139,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1286908169.jpg','2020-08-04-1286908169.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1286908169.jpg',12880,1596527121926,NULL,NULL),(140,1,0,'jpg','260.jpg','2020-08-04-1187230516.jpg','2020-08-04-1187230516.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1187230516.jpg',16443,1596527142057,NULL,NULL),(141,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1112651546.jpg','2020-08-04-1112651546.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1112651546.jpg',548465,1596527303449,NULL,NULL),(142,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1991738016.jpg','2020-08-04-1991738016.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1991738016.jpg',138615,1596527347253,NULL,NULL),(143,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1368133630.jpg','2020-08-04-1368133630.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1368133630.jpg',96453,1596527357234,NULL,NULL),(144,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1034047676.jpg','2020-08-04-1034047676.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1034047676.jpg',96453,1596527412773,NULL,NULL),(145,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1113923693.jpg','2020-08-04-1113923693.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1113923693.jpg',96453,1596527434239,NULL,NULL),(146,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1348561335.jpg','2020-08-04-1348561335.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1348561335.jpg',138615,1596527446691,NULL,NULL),(147,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1113886197.jpg','2020-08-04-1113886197.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1113886197.jpg',548465,1596527885988,NULL,NULL),(148,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1468232519.jpg','2020-08-04-1468232519.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1468232519.jpg',548465,1596528001694,NULL,NULL),(149,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1423768046.jpg','2020-08-04-1423768046.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1423768046.jpg',115593,1596528037692,NULL,NULL),(150,1,0,'jpg','260.jpg','2020-08-04-1368373829.jpg','2020-08-04-1368373829.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1368373829.jpg',16443,1596530926615,NULL,NULL),(151,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1015380346.jpg','2020-08-04-1015380346.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1015380346.jpg',12880,1596530961240,NULL,NULL),(152,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1667628023.jpg','2020-08-04-1667628023.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1667628023.jpg',12880,1596530994873,NULL,NULL),(153,1,0,'jpg','260.jpg','2020-08-04-1605488696.jpg','2020-08-04-1605488696.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1605488696.jpg',16443,1596531058828,NULL,NULL),(154,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1710253564.jpg','2020-08-04-1710253564.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1710253564.jpg',12880,1596531083923,NULL,NULL),(155,1,0,'jpg','260.jpg','2020-08-04-1187393909.jpg','2020-08-04-1187393909.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1187393909.jpg',16443,1596531145284,NULL,NULL),(156,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1715122840.jpg','2020-08-04-1715122840.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1715122840.jpg',12880,1596531220671,NULL,NULL),(157,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1409016246.jpg','2020-08-04-1409016246.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1409016246.jpg',115593,1596531230532,NULL,NULL),(158,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1383001189.jpg','2020-08-04-1383001189.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1383001189.jpg',138615,1596531483121,NULL,NULL),(159,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1759334020.jpg','2020-08-04-1759334020.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1759334020.jpg',96453,1596532684243,NULL,NULL),(160,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1487485083.jpg','2020-08-04-1487485083.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1487485083.jpg',138615,1596533297229,NULL,NULL),(161,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1461139553.jpg','2020-08-04-1461139553.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1461139553.jpg',548465,1596536294383,NULL,NULL),(162,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1687001157.jpg','2020-08-04-1687001157.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1687001157.jpg',548465,1596536375353,NULL,NULL),(163,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-04-1922423323.jpg','2020-08-04-1922423323.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1922423323.jpg',115593,1596536397446,NULL,NULL),(164,1,0,'jpg','login-gogoup-ground.jpg','2020-08-04-1153264779.jpg','2020-08-04-1153264779.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1153264779.jpg',548465,1596536404153,NULL,NULL),(165,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1319902393.jpg','2020-08-04-1319902393.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1319902393.jpg',138615,1596539142063,NULL,NULL),(166,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1978408305.jpg','2020-08-04-1978408305.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1978408305.jpg',96453,1596539148373,NULL,NULL),(167,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1894726207.jpg','2020-08-04-1894726207.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1894726207.jpg',138615,1596539258824,NULL,NULL),(168,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1026657640.jpg','2020-08-04-1026657640.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1026657640.jpg',96453,1596539262676,NULL,NULL),(169,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1698309311.jpg','2020-08-04-1698309311.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1698309311.jpg',96453,1596539273472,NULL,NULL),(170,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1462923521.jpg','2020-08-04-1462923521.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1462923521.jpg',138615,1596539281421,NULL,NULL),(171,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1567359448.jpg','2020-08-04-1567359448.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1567359448.jpg',138615,1596540172158,NULL,NULL),(172,1,0,'jpg','images.jpg','2020-08-04-1263554118.jpg','2020-08-04-1263554118.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1263554118.jpg',6909,1596541037134,NULL,NULL),(173,1,0,'jpg','unnamed.jpg','2020-08-04-1099326636.jpg','2020-08-04-1099326636.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1099326636.jpg',43319,1596543479633,NULL,NULL),(174,1,0,'jpg','images.jpg','2020-08-04-1300186158.jpg','2020-08-04-1300186158.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1300186158.jpg',6909,1596543497678,NULL,NULL),(175,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1244813106.jpg','2020-08-04-1244813106.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1244813106.jpg',12880,1596545756275,NULL,NULL),(176,1,0,'jpg','260.jpg','2020-08-04-1979304865.jpg','2020-08-04-1979304865.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1979304865.jpg',16443,1596545770075,NULL,NULL),(177,1,0,'jpg','u=3968417432,4100418615&fm=26&gp=0.jpg','2020-08-04-1616258992.jpg','2020-08-04-1616258992.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1616258992.jpg',12880,1596545777238,NULL,NULL),(178,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1414689064.jpg','2020-08-04-1414689064.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1414689064.jpg',138615,1596546278140,NULL,NULL),(179,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1501262746.jpg','2020-08-04-1501262746.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1501262746.jpg',96453,1596546307293,NULL,NULL),(180,1,0,'jpg','533ed30de651499da1c463bca44b6d60.jpg','2020-08-04-1408617700.jpg','2020-08-04-1408617700.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1408617700.jpg',138615,1596546312261,NULL,NULL),(181,1,0,'jpg','v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg','2020-08-04-1265800877.jpg','2020-08-04-1265800877.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1265800877.jpg',96453,1596546489406,NULL,NULL),(182,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1890021550.jpg','2020-08-05-1890021550.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1890021550.jpg',115593,1596591027560,NULL,NULL),(183,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1865137523.jpg','2020-08-05-1865137523.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1865137523.jpg',548465,1596591069298,NULL,NULL),(184,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1273742029.jpg','2020-08-05-1273742029.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1273742029.jpg',548465,1596591678625,NULL,NULL),(185,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1994142927.jpg','2020-08-05-1994142927.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1994142927.jpg',115593,1596591691347,NULL,NULL),(186,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1461438392.jpg','2020-08-05-1461438392.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1461438392.jpg',548465,1596591784469,NULL,NULL),(187,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1487715294.jpg','2020-08-05-1487715294.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1487715294.jpg',115593,1596591789520,NULL,NULL),(188,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1770055215.jpg','2020-08-05-1770055215.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1770055215.jpg',548465,1596591869420,NULL,NULL),(189,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1868004091.jpg','2020-08-05-1868004091.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1868004091.jpg',115593,1596591876646,NULL,NULL),(190,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1728530809.jpg','2020-08-05-1728530809.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1728530809.jpg',115593,1596591941483,NULL,NULL),(191,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1725311040.jpg','2020-08-05-1725311040.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1725311040.jpg',548465,1596591945420,NULL,NULL),(192,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1378242262.jpg','2020-08-05-1378242262.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1378242262.jpg',548465,1596608218100,NULL,NULL),(193,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1328186210.jpg','2020-08-05-1328186210.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1328186210.jpg',115593,1596608262482,NULL,NULL),(194,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1346058818.jpg','2020-08-05-1346058818.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1346058818.jpg',548465,1596608266594,NULL,NULL),(195,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1022507317.jpg','2020-08-05-1022507317.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1022507317.jpg',548465,1596608447700,NULL,NULL),(196,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1077831711.jpg','2020-08-05-1077831711.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1077831711.jpg',115593,1596608452452,NULL,NULL),(197,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1612140508.jpg','2020-08-05-1612140508.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1612140508.jpg',548465,1596610226054,NULL,NULL),(198,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1934881529.jpg','2020-08-05-1934881529.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1934881529.jpg',115593,1596610230890,NULL,NULL),(199,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1195704040.jpg','2020-08-05-1195704040.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1195704040.jpg',548465,1596610239908,NULL,NULL),(200,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1658051900.jpg','2020-08-05-1658051900.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1658051900.jpg',548465,1596610369400,NULL,NULL),(201,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1151399916.jpg','2020-08-05-1151399916.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1151399916.jpg',548465,1596610381775,NULL,NULL),(202,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1846569071.jpg','2020-08-05-1846569071.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1846569071.jpg',548465,1596611357651,NULL,NULL),(203,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1422180792.jpg','2020-08-05-1422180792.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1422180792.jpg',115593,1596611361592,NULL,NULL),(204,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1650580368.jpg','2020-08-05-1650580368.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1650580368.jpg',548465,1596611367631,NULL,NULL),(205,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1662350538.jpg','2020-08-05-1662350538.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1662350538.jpg',548465,1596611602697,NULL,NULL),(206,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1596382598.jpg','2020-08-05-1596382598.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1596382598.jpg',548465,1596611878091,NULL,NULL),(207,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1301045925.jpg','2020-08-05-1301045925.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1301045925.jpg',548465,1596611971880,NULL,NULL),(208,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1339798143.jpg','2020-08-05-1339798143.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1339798143.jpg',115593,1596611977147,NULL,NULL),(209,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1343211298.jpg','2020-08-05-1343211298.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1343211298.jpg',548465,1596612265618,NULL,NULL),(210,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1764035236.jpg','2020-08-05-1764035236.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1764035236.jpg',115593,1596612271290,NULL,NULL),(211,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1862062187.jpg','2020-08-05-1862062187.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1862062187.jpg',548465,1596612333438,NULL,NULL),(212,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1559614838.jpg','2020-08-05-1559614838.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1559614838.jpg',548465,1596612749226,NULL,NULL),(213,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1462885406.jpg','2020-08-05-1462885406.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1462885406.jpg',548465,1596612835807,NULL,NULL),(214,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1512518998.jpg','2020-08-05-1512518998.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1512518998.jpg',548465,1596613038337,NULL,NULL),(215,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1978753479.jpg','2020-08-05-1978753479.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1978753479.jpg',115593,1596613411254,NULL,NULL),(216,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1424783919.jpg','2020-08-05-1424783919.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1424783919.jpg',548465,1596613442752,NULL,NULL),(217,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1955775167.jpg','2020-08-05-1955775167.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1955775167.jpg',548465,1596613450816,NULL,NULL),(218,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1428990022.jpg','2020-08-05-1428990022.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1428990022.jpg',548465,1596613564286,NULL,NULL),(219,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1932833475.jpg','2020-08-05-1932833475.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1932833475.jpg',548465,1596613576839,NULL,NULL),(220,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1773335295.jpg','2020-08-05-1773335295.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1773335295.jpg',548465,1596613695762,NULL,NULL),(221,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1077221748.jpg','2020-08-05-1077221748.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1077221748.jpg',115593,1596613699515,NULL,NULL),(222,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1160655679.jpg','2020-08-05-1160655679.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1160655679.jpg',548465,1596614145683,NULL,NULL),(223,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1664168166.jpg','2020-08-05-1664168166.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1664168166.jpg',115593,1596614149362,NULL,NULL),(224,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1045645468.jpg','2020-08-05-1045645468.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1045645468.jpg',115593,1596614203625,NULL,NULL),(225,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1512724100.jpg','2020-08-05-1512724100.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1512724100.jpg',548465,1596614207618,NULL,NULL),(226,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1985528673.jpg','2020-08-05-1985528673.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1985528673.jpg',548465,1596614681874,NULL,NULL),(227,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1351907176.jpg','2020-08-05-1351907176.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1351907176.jpg',115593,1596614687239,NULL,NULL),(228,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1529981690.jpg','2020-08-05-1529981690.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1529981690.jpg',548465,1596614735922,NULL,NULL),(229,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1695891834.jpg','2020-08-05-1695891834.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1695891834.jpg',115593,1596614740826,NULL,NULL),(230,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1930778381.jpg','2020-08-05-1930778381.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1930778381.jpg',548465,1596614778164,NULL,NULL),(231,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1476097311.jpg','2020-08-05-1476097311.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1476097311.jpg',115593,1596614784145,NULL,NULL),(232,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1809666076.jpg','2020-08-05-1809666076.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1809666076.jpg',548465,1596614987660,NULL,NULL),(233,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1647158875.jpg','2020-08-05-1647158875.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1647158875.jpg',115593,1596614992090,NULL,NULL),(234,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1463912004.jpg','2020-08-05-1463912004.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1463912004.jpg',548465,1596615040681,NULL,NULL),(235,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1580545758.jpg','2020-08-05-1580545758.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1580545758.jpg',548465,1596615881684,NULL,NULL),(236,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1873793042.jpg','2020-08-05-1873793042.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1873793042.jpg',548465,1596615930488,NULL,NULL),(237,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1274831476.jpg','2020-08-05-1274831476.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1274831476.jpg',548465,1596615968529,NULL,NULL),(238,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1154258530.jpg','2020-08-05-1154258530.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1154258530.jpg',115593,1596616040335,NULL,NULL),(239,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1427667538.jpg','2020-08-05-1427667538.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1427667538.jpg',548465,1596617396167,NULL,NULL),(240,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1250766350.jpg','2020-08-05-1250766350.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1250766350.jpg',548465,1596617921121,NULL,NULL),(241,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1069307907.jpg','2020-08-05-1069307907.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1069307907.jpg',115593,1596617925997,NULL,NULL),(242,1,0,'jpg','微信图片_20200701120443.jpg','2020-08-05-1294960861.jpg','2020-08-05-1294960861.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1294960861.jpg',115593,1596617948755,NULL,NULL),(243,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1761809722.jpg','2020-08-05-1761809722.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1761809722.jpg',548465,1596618769523,NULL,NULL),(244,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1033771741.jpg','2020-08-05-1033771741.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1033771741.jpg',28126,1596621302530,NULL,NULL),(245,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1413705866.jpg','2020-08-05-1413705866.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1413705866.jpg',138615,1596621723523,NULL,NULL),(246,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1783442633.jpg','2020-08-05-1783442633.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1783442633.jpg',28126,1596621727052,NULL,NULL),(247,1,0,'jpg','111.jpg','2020-08-05-1999235126.jpg','2020-08-05-1999235126.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1999235126.jpg',325576,1596621746794,NULL,NULL),(248,1,0,'jpg','111.jpg','2020-08-05-1244839961.jpg','2020-08-05-1244839961.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1244839961.jpg',325576,1596621758304,NULL,NULL),(249,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1029341381.jpg','2020-08-05-1029341381.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1029341381.jpg',548465,1596621818372,NULL,NULL),(250,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1141350272.jpg','2020-08-05-1141350272.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1141350272.jpg',548465,1596621913425,NULL,NULL),(251,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1524849288.jpg','2020-08-05-1524849288.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1524849288.jpg',548465,1596621936435,NULL,NULL),(252,1,0,'jpg','login-gogoup-ground.jpg','2020-08-05-1787364402.jpg','2020-08-05-1787364402.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1787364402.jpg',548465,1596622093525,NULL,NULL),(253,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1235387244.jpg','2020-08-05-1235387244.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1235387244.jpg',138615,1596622120502,NULL,NULL),(254,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1767261879.jpg','2020-08-05-1767261879.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1767261879.jpg',28126,1596622142118,NULL,NULL),(255,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1791213145.jpg','2020-08-05-1791213145.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1791213145.jpg',138615,1596622197658,NULL,NULL),(256,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1192910500.jpg','2020-08-05-1192910500.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1192910500.jpg',28126,1596622202375,NULL,NULL),(257,1,0,'jpg','111.jpg','2020-08-05-1799640851.jpg','2020-08-05-1799640851.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1799640851.jpg',325576,1596622207304,NULL,NULL),(258,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1639900281.jpg','2020-08-05-1639900281.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1639900281.jpg',28126,1596622985587,NULL,NULL),(259,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1621048922.jpg','2020-08-05-1621048922.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1621048922.jpg',138615,1596622994917,NULL,NULL),(260,1,0,'png','QQ浏览器截图20200614132313.png','2020-08-05-1660030116.png','2020-08-05-1660030116.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1660030116.png',279422,1596623071395,NULL,NULL),(261,1,0,'png','QQ浏览器截图20200530102055.png','2020-08-05-1387622658.png','2020-08-05-1387622658.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1387622658.png',107204,1596623075987,NULL,NULL),(262,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1262203115.jpg','2020-08-05-1262203115.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1262203115.jpg',1680,1596623431032,NULL,NULL),(263,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1461207349.jpg','2020-08-05-1461207349.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1461207349.jpg',1680,1596623445611,NULL,NULL),(264,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1067035118.jpg','2020-08-05-1067035118.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1067035118.jpg',1680,1596623666567,NULL,NULL),(265,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1849940658.jpg','2020-08-05-1849940658.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1849940658.jpg',1680,1596623729365,NULL,NULL),(266,1,0,'png','QQ浏览器截图20200430095613.png','2020-08-05-1654475756.png','2020-08-05-1654475756.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1654475756.png',16511,1596623914694,NULL,NULL),(267,1,0,'png','QQ浏览器截图20200614132059.png','2020-08-05-1673224997.png','2020-08-05-1673224997.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1673224997.png',208743,1596623921506,NULL,NULL),(268,1,0,'png','QQ浏览器截图20200614132313.png','2020-08-05-1235590314.png','2020-08-05-1235590314.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1235590314.png',279422,1596623925934,NULL,NULL),(269,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1926238188.jpg','2020-08-05-1926238188.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1926238188.jpg',1680,1596623935747,NULL,NULL),(270,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1668979063.jpg','2020-08-05-1668979063.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1668979063.jpg',1680,1596623945163,NULL,NULL),(271,1,0,'png','QQ浏览器截图20200710154351.png','2020-08-05-1117167565.png','2020-08-05-1117167565.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1117167565.png',3207,1596623995101,NULL,NULL),(272,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1209047853.jpg','2020-08-05-1209047853.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1209047853.jpg',1680,1596624234738,NULL,NULL),(273,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1315031456.jpg','2020-08-05-1315031456.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1315031456.jpg',1680,1596624263667,NULL,NULL),(274,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1693126547.jpg','2020-08-05-1693126547.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1693126547.jpg',28126,1596624306287,NULL,NULL),(275,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1926218336.jpg','2020-08-05-1926218336.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1926218336.jpg',138615,1596624344305,NULL,NULL),(276,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1644149056.jpg','2020-08-05-1644149056.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1644149056.jpg',1680,1596624388686,NULL,NULL),(277,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1588973188.jpg','2020-08-05-1588973188.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1588973188.jpg',28126,1596624399197,NULL,NULL),(278,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1912324575.jpg','2020-08-05-1912324575.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1912324575.jpg',1680,1596624437328,NULL,NULL),(279,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1595125010.jpg','2020-08-05-1595125010.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1595125010.jpg',1680,1596624502589,NULL,NULL),(280,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1880062445.jpg','2020-08-05-1880062445.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1880062445.jpg',1680,1596624507817,NULL,NULL),(281,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1152082120.jpg','2020-08-05-1152082120.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1152082120.jpg',138615,1596624511220,NULL,NULL),(282,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1322721250.jpg','2020-08-05-1322721250.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1322721250.jpg',1680,1596624514954,NULL,NULL),(283,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1227067242.jpg','2020-08-05-1227067242.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1227067242.jpg',28126,1596624927719,NULL,NULL),(284,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1812374361.jpg','2020-08-05-1812374361.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1812374361.jpg',138615,1596624994422,NULL,NULL),(285,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1351931543.jpg','2020-08-05-1351931543.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1351931543.jpg',1680,1596625148772,NULL,NULL),(286,1,0,'jpg','QQ浏览器截图20200115100756.jpg','2020-08-05-1353111915.jpg','2020-08-05-1353111915.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1353111915.jpg',1680,1596625209835,NULL,NULL),(287,1,0,'png','QQ浏览器截图20200710154351.png','2020-08-05-1696709196.png','2020-08-05-1696709196.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1696709196.png',3207,1596625215095,NULL,NULL),(288,1,0,'png','QQ浏览器截图20200505101706.png','2020-08-05-1494846573.png','2020-08-05-1494846573.png','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1494846573.png',19797,1596625221905,NULL,NULL),(289,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1793836932.jpg','2020-08-05-1793836932.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1793836932.jpg',138615,1596625485943,NULL,NULL),(290,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1627597128.jpg','2020-08-05-1627597128.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1627597128.jpg',28126,1596625489311,NULL,NULL),(291,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-05-1202449120.jpg','2020-08-05-1202449120.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1202449120.jpg',138615,1596625498566,NULL,NULL),(292,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-05-1615856024.jpg','2020-08-05-1615856024.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-05-1615856024.jpg',28126,1596625509318,NULL,NULL),(293,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-06-1599556390.jpg','2020-08-06-1599556390.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-06-1599556390.jpg',28126,1596678142282,NULL,NULL),(294,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-06-1341018399.jpg','2020-08-06-1341018399.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-06-1341018399.jpg',28126,1596678146675,NULL,NULL),(295,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-06-1203236042.jpg','2020-08-06-1203236042.jpg','http://qdyrmq5wy.bkt.clouddn.com/2020-08-06-1203236042.jpg',138615,1596678150417,NULL,NULL),(296,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-26-1850193919.jpg','2020-08-26-1850193919.jpg','http://newxton-companywebsite-test-img.new-x-ton.com/2020-08-26-1850193919.jpg',28126,1598407025764,NULL,NULL),(297,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-26-1916520102.jpg','2020-08-26-1916520102.jpg','http://newxton-companywebsite-test-img.new-x-ton.com/2020-08-26-1916520102.jpg',138615,1598407031157,NULL,NULL),(298,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-26-1123660419.jpg','2020-08-26-1123660419.jpg','http://newxton-companywebsite-test-img.new-x-ton.com/2020-08-26-1123660419.jpg',138615,1598407040390,NULL,NULL),(299,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-26-1434165310.jpg','2020-08-26-1434165310.jpg','http://newxton-companywebsite-test-img.new-x-ton.com/2020-08-26-1434165310.jpg',28126,1598407096732,NULL,NULL),(300,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-26-1110616239.jpg','2020-08-26-1110616239.jpg','http://newxton-companywebsite-test-img.new-x-ton.com/2020-08-26-1110616239.jpg',138615,1598407100138,NULL,NULL),(301,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-26-1874525256.jpg','2020-08-26-1874525256.jpg','http://newxton-companywebsite-test-img.new-x-ton.com/2020-08-26-1874525256.jpg',138615,1598407111878,NULL,NULL),(302,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-26-1880966921.jpg','2020-08-26-1880966921.jpg','/2020-08-26-1880966921.jpg',28126,1598407243680,NULL,NULL),(303,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-26-1703771865.jpg','2020-08-26-1703771865.jpg','/2020-08-26-1703771865.jpg',138615,1598407247142,NULL,NULL),(304,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-26-1343663833.jpg','2020-08-26-1343663833.jpg','/2020-08-26-1343663833.jpg',138615,1598407314265,NULL,NULL),(305,1,0,'png','enterprise.png','2020-08-26-1024782104.png','2020-08-26-1024782104.png','/2020-08-26-1024782104.png',286197,1598454628191,NULL,NULL),(306,1,0,'png','enterprise.png','2020-08-26-1900068448.png','2020-08-26-1900068448.png','/2020-08-26-1900068448.png',286197,1598454763235,NULL,NULL),(307,1,0,'png','home.png','2020-08-26-1092636768.png','2020-08-26-1092636768.png','/2020-08-26-1092636768.png',116445,1598455379896,NULL,NULL),(308,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-27-1023005699.jpg','2020-08-27-1023005699.jpg','/2020-08-27-1023005699.jpg',28126,1598530591276,NULL,NULL),(309,1,0,'jpg','111.jpg','2020-08-27-1728111819.jpg','2020-08-27-1728111819.jpg','/2020-08-27-1728111819.jpg',325576,1598531376602,NULL,NULL),(310,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-27-1278853159.jpg','2020-08-27-1278853159.jpg','/2020-08-27-1278853159.jpg',138615,1598531385839,NULL,NULL),(311,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-28-1815562126.jpg','2020-08-28-1815562126.jpg','/2020-08-28-1815562126.jpg',28126,1598577356997,NULL,NULL),(312,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-28-1687698059.jpg','2020-08-28-1687698059.jpg','/2020-08-28-1687698059.jpg',28126,1598577422454,NULL,NULL),(313,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-28-1586652270.jpg','2020-08-28-1586652270.jpg','/2020-08-28-1586652270.jpg',138615,1598577522662,NULL,NULL),(314,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-28-1660122638.jpg','2020-08-28-1660122638.jpg','/2020-08-28-1660122638.jpg',138615,1598577541143,NULL,NULL),(315,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-28-1545027330.jpg','2020-08-28-1545027330.jpg','/2020-08-28-1545027330.jpg',138615,1598577569011,NULL,NULL),(316,1,0,'jpg','2020-08-04-1265800877.jpg','2020-08-28-1917097606.jpg','2020-08-28-1917097606.jpg','/2020-08-28-1917097606.jpg',28126,1598578063043,NULL,NULL),(317,1,0,'png','home-shape2.png','2020-08-28-1652307989.png','2020-08-28-1652307989.png','/2020-08-28-1652307989.png',257300,1598579196739,NULL,NULL),(318,1,0,'png','home-shape2.png','2020-08-28-1640303377.png','2020-08-28-1640303377.png','/2020-08-28-1640303377.png',257300,1598579235399,NULL,NULL),(319,1,0,'png','home-shape2.png','2020-08-28-1782421603.png','2020-08-28-1782421603.png','/2020-08-28-1782421603.png',257300,1598579438439,NULL,NULL),(320,1,0,'png','home-shape2.png','2020-08-28-1983971656.png','2020-08-28-1983971656.png','/2020-08-28-1983971656.png',257300,1598579525755,NULL,NULL),(321,1,0,'png','home-shape2.png','2020-08-28-1142419365.png','2020-08-28-1142419365.png','/2020-08-28-1142419365.png',257300,1598579707785,NULL,NULL),(322,1,0,'png','home-shape2.png','2020-08-28-1384867982.png','2020-08-28-1384867982.png','/2020-08-28-1384867982.png',257300,1598580156074,NULL,NULL),(323,1,0,'png','home-shape2.png','2020-08-28-1855675747.png','2020-08-28-1855675747.png','/2020-08-28-1855675747.png',257300,1598580199528,NULL,NULL),(324,1,0,'jpg','2020-08-04-1991738016.jpg','2020-08-28-1702373006.jpg','2020-08-28-1702373006.jpg','/2020-08-28-1702373006.jpg',138615,1598608088777,NULL,NULL),(325,1,0,'jpg','下载.jpg','2020-08-28-1321007314.jpg','2020-08-28-1321007314.jpg','/2020-08-28-1321007314.jpg',9225,1598614746811,NULL,NULL),(326,1,0,'png','WX20200831-190206@2x.png','2020-09-18-1103470988.png','2020-09-18-1103470988.png','/2020-09-18-1103470988.png',774740,1600398692343,NULL,NULL),(327,1,0,'jpg','5e1f04243bd12.jpg','2020-09-18-1285914730.jpg','2020-09-18-1285914730.jpg','/2020-09-18-1285914730.jpg',29317,1600398711090,NULL,NULL),(328,1,0,'jpg','5e10aa91cc30c.jpg','2020-09-18-1784259761.jpg','2020-09-18-1784259761.jpg','/2020-09-18-1784259761.jpg',32468,1600398730760,NULL,NULL),(329,1,0,'png','a328dd46-da3e-4334-b139-c8b0999d3a4d.png','2020-09-18-1986436585.png','2020-09-18-1986436585.png','/2020-09-18-1986436585.png',649592,1600398737860,NULL,NULL),(330,1,0,'png','WX20200831-190217@2x.png','2020-09-18-1551093932.png','2020-09-18-1551093932.png','/2020-09-18-1551093932.png',661390,1600398752040,NULL,NULL);
/*!40000 ALTER TABLE `nxt_uploadfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_uploadfile_category`
--

DROP TABLE IF EXISTS `nxt_uploadfile_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_uploadfile_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_uploadfile_category`
--

LOCK TABLES `nxt_uploadfile_category` WRITE;
/*!40000 ALTER TABLE `nxt_uploadfile_category` DISABLE KEYS */;
INSERT INTO `nxt_uploadfile_category` VALUES (1,'新闻资讯',0),(2,'科技B',1),(3,'政策解读',0),(4,'税收A',1),(5,'新材料',2),(6,'芯片',2),(7,'sssss',6),(8,'',0);
/*!40000 ALTER TABLE `nxt_uploadfile_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_user`
--

DROP TABLE IF EXISTS `nxt_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_user`
--

LOCK TABLES `nxt_user` WRITE;
/*!40000 ALTER TABLE `nxt_user` DISABLE KEYS */;
INSERT INTO `nxt_user` VALUES (3,'admin','f0866b655980a3f4aabf8133432a03bc','D7d5uKC&qRRei*nsc&2oA()$FN@Yj89Z','c6811133768afc4f6e149f901b5910ab',0,1),(6,'orange','1895e1666bc0d312284f6b97ad7a3b6f','jvr^aejZVWzlTTPp!v*Zhl(!#kDoMwmd','f8b301ff46a0459c89aabce2fc491da8',0,1),(7,'apple','ecd8a47d682c5777eedfc5a47d35a499','bury!3qr9IYsuZ$7$VrZuePC623yiN(f','7da9b7524a1a00eefb0d0a83b008e676',-1,2),(8,'apple3','745a44dc02f5b43a309438cb8869e0cb','hd!u3V4JCBkU115qGlYmES*j$1R!sRaw','05bd02fa431124882fddadf79927726e',0,0),(9,'test','03b9b1c79fceeaf80e12344c5ed2705c','b2paXO%mkF!By&XKF)MUhvBhOLBMVQLs',NULL,0,0),(10,'test11','a4207d3f2d9f77275b5df0ac82957abe','oF8j@aPcfVsJZEPTsJXXR*nNA7Cma&sQ',NULL,0,0),(11,'333','0dfdb43cd4e5badd25040b6a538d3830','%V@GwM@s6^bE)M98HrP0h#Sl9nEtq4!b',NULL,0,2),(12,'3445','47671640864c51bcdb5767fc7f734209','6R9Kq&hdOpZvwi@Dq@N&7MSRAZaejQvn',NULL,0,0),(13,'1111','d2315bd9edcbb93f5713c4b2774e0a98','er3tnwZZI0c8xy&O14n9I%ynnhWL&o9c',NULL,0,2),(14,'222','1d82a795a3000f22b3fae911b3afaf54','0)wc(44EBU&BkQ)x&BsTgd0@eLPh61Xs',NULL,0,2),(15,'11111','7d4084087c49da8e2150f4ea5e1c8c70','GfTgsWnnWAK0E1cOqxioG4!8@au^oM75','0de8dd3f1295fdc39427d9788e57b6e3',0,0),(16,'abc888','4b5487c1868182b42fc2d71fa9bb6369','Lpq0I&%d1*Vig%V3LNEx771#oOE1z1P%','8f0e5f6e7dac59d11e34c43924dc6b43',-1,0),(17,'main','a36b36b56dee556e59f97b9bb375039f','!ow4F*M9HI7rite57re6^POsYar!QmwU','4a61fe44f0ecaab9e87ca536b90831a2',0,1),(18,'abc123','10ff109ed38f7209f6624607f20106a5','D6&#dg0NxApoY9YveLaVNQaHwkvMJz!Y',NULL,0,2);
/*!40000 ALTER TABLE `nxt_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nxt_web_page`
--

DROP TABLE IF EXISTS `nxt_web_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nxt_web_page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `web_key` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dateline_update` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_web_key` (`web_key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nxt_web_page`
--

LOCK TABLES `nxt_web_page` WRITE;
/*!40000 ALTER TABLE `nxt_web_page` DISABLE KEYS */;
INSERT INTO `nxt_web_page` VALUES (1,NULL,'联系我们111','联系我们x222','<p>。。是否反反复复<img class=\"wscnph\" src=\"http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1414689064.jpg\" />ssssb<img class=\"wscnph\" src=\"http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1501262746.jpg\" />b<img class=\"wscnph\" src=\"http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1408617700.jpg\" />b</p>',NULL,1596546321979),(2,NULL,'关于我们','关于我们xxx','<p>。。adsf</p>',NULL,1596513033323),(3,NULL,'加入我们','加入我们xxx','。。',NULL,0),(4,NULL,'sss','aaaa','<p>asdf<img class=\"wscnph\" src=\"http://qdyrmq5wy.bkt.clouddn.com/2020-08-04-1265800877.jpg\" />bb</p>',NULL,1596546491113);
/*!40000 ALTER TABLE `nxt_web_page` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 20:17:56
