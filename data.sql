-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(22) DEFAULT NULL,
  `name` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_productcategory','Can add product category'),(26,7,'change_productcategory','Can change product category'),(27,7,'delete_productcategory','Can delete product category'),(28,7,'view_productcategory','Can view product category'),(29,8,'add_products','Can add products'),(30,8,'change_products','Can change products'),(31,8,'delete_products','Can delete products'),(32,8,'view_products','Can view products'),(33,9,'add_wishlist','Can add wish list'),(34,9,'change_wishlist','Can change wish list'),(35,9,'delete_wishlist','Can delete wish list'),(36,9,'view_wishlist','Can view wish list'),(37,10,'add_order','Can add order'),(38,10,'change_order','Can change order'),(39,10,'delete_order','Can delete order'),(40,10,'view_order','Can view order'),(41,11,'add_cart','Can add cart'),(42,11,'change_cart','Can change cart'),(43,11,'delete_cart','Can delete cart'),(44,11,'view_cart','Can view cart'),(45,12,'add_shippingaddress','Can add shipping address'),(46,12,'change_shippingaddress','Can change shipping address'),(47,12,'delete_shippingaddress','Can delete shipping address'),(48,12,'view_shippingaddress','Can view shipping address');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(5) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(16) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (4,'pbkdf2_sha256$320000$FguK8ODSUE0XAnUMJlQA95$lifLRgTip7FN8poiC0gEoWi3JPmUcJ888cJIhmwUI5Y=','2023-06-23',1,'diego','','zpesz3dl@kads.es',1,1,'2023-06-05',''),(6,'pbkdf2_sha256$320000$2kaw4zwEEsttGk6SLrRPwn$lmVZEVEJJkO289btwZUFINLii45C4A8GI5LHx/+S7SQ=','2023-06-21',1,'alee','','ale@gmail.com',1,1,'','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(37) DEFAULT NULL,
  `change_message` varchar(91) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (37,'2023-06-05',2,'Television','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,4,2),(38,'2023-06-21',5,'milla','[{\"added\": {}}]',4,4,1),(39,'2023-06-21',5,'milla','[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\"]}}]',4,4,2),(40,'2023-06-21',5,'milla','[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',4,4,2),(41,'2023-06-21',5,'milla','',4,4,3),(42,'2023-06-21',6,'alee','[{\"added\": {}}]',4,4,1),(43,'2023-06-21',6,'alee','[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\", \"Superuser status\"]}}]',4,4,2),(44,'2023-06-21',1,'sachin','',4,4,3),(45,'2023-06-21',3,'rohit123','',4,4,3),(46,'2023-06-23',6,'Anime','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(47,'2023-06-23',10,'Digital Camera','[]',8,6,2),(48,'2023-06-23',10,'Anime','[{\"changed\": {\"fields\": [\"Name\", \"Price\", \"Details\"]}}]',8,6,2),(49,'2023-06-23',10,'Anime','[{\"changed\": {\"fields\": [\"Image 01\", \"Image 02\", \"Image 03\"]}}]',8,6,2),(50,'2023-06-23',6,'Lilium','[{\"changed\": {\"fields\": [\"Category\"]}}]',7,6,2),(51,'2023-06-23',6,'Lilium','[]',7,6,2),(52,'2023-06-23',10,'Lilium','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,6,2),(53,'2023-06-23',1,'Volver a Amar','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(54,'2023-06-23',9,'Volver a amar','[{\"changed\": {\"fields\": [\"Name\", \"Price\", \"Details\", \"Image 01\", \"Image 02\", \"Image 03\"]}}]',8,6,2),(55,'2023-06-23',8,'Washing Machine','[]',8,6,2),(56,'2023-06-23',6,'Anime','[{\"changed\": {\"fields\": [\"Category\"]}}]',7,6,2),(57,'2023-06-23',10,'Lilium','[]',8,6,2),(58,'2023-06-23',1,'Amor','[{\"changed\": {\"fields\": [\"Category\"]}}]',7,6,2),(59,'2023-06-23',9,'Volver a amar','[{\"changed\": {\"fields\": [\"Details\"]}}]',8,6,2),(60,'2023-06-23',1,'Amor','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,6,2),(61,'2023-06-23',8,'Fly me to the moon','[{\"changed\": {\"fields\": [\"Name\", \"Price\", \"Details\", \"Image 01\", \"Image 02\", \"Image 03\"]}}]',8,6,2),(62,'2023-06-23',8,'Indie','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(63,'2023-06-23',8,'Indie','[]',7,6,2),(64,'2023-06-23',7,'Ciego','[{\"changed\": {\"fields\": [\"Name\", \"Price\", \"Details\", \"Image 01\", \"Image 02\", \"Image 03\"]}}]',8,6,2),(65,'2023-06-23',9,'Volver a amar','[]',8,6,2),(66,'2023-06-23',7,'Pop Latino','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(67,'2023-06-23',5,'Madonna','[{\"changed\": {\"fields\": [\"Name\", \"Price\", \"Details\", \"Image 01\"]}}]',8,6,2),(68,'2023-06-23',4,'Santa Feria','[{\"changed\": {\"fields\": [\"Name\", \"Price\", \"Details\", \"Image 01\"]}}]',8,6,2),(69,'2023-06-23',3,'Sonne','[{\"changed\": {\"fields\": [\"Name\", \"Price\", \"Details\", \"Image 01\"]}}]',8,6,2),(70,'2023-06-23',3,'Metal','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(71,'2023-06-23',4,'kpop','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(72,'2023-06-23',4,'Kpop','[{\"changed\": {\"fields\": [\"Category\"]}}]',7,6,2),(73,'2023-06-23',2,'Jonghyun','[{\"changed\": {\"fields\": [\"Category\", \"Name\", \"Price\", \"Details\", \"Image 01\"]}}]',8,6,2),(74,'2023-06-23',4,'Santa Feria','[{\"changed\": {\"fields\": [\"Category\"]}}]',8,6,2),(75,'2023-06-23',2,'Cumbia','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(76,'2023-06-23',4,'Santa Feria','[{\"changed\": {\"fields\": [\"Category\"]}}]',8,6,2),(77,'2023-06-23',5,'Pop electrónica','[{\"changed\": {\"fields\": [\"Category\", \"Image\"]}}]',7,6,2),(78,'2023-06-23',11,'123','[{\"added\": {}}]',8,4,1),(79,'2023-06-24',10,'Elfen Lied - Lilium','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(80,'2023-06-24',12,'test','[{\"added\": {}}]',8,4,1),(81,'2023-06-24',9,'Cristian Castro - Volver a amar','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(82,'2023-06-24',8,'Joytastica Sarah - Fly me to the moon','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(83,'2023-06-24',7,'Reik - Ciego','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(84,'2023-06-24',5,'Madonna -  Hanky Parky','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(85,'2023-06-24',4,'Santa Feria - Algun dia Volveras','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(86,'2023-06-24',3,'Rammstein - Sonne','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(87,'2023-06-24',2,'Let Me Out - Jonghyun','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,4,2),(88,'2023-06-24',8,'Joytastica Sarah - Fly me to the moon','[{\"changed\": {\"fields\": [\"Image 01\"]}}]',8,4,2),(89,'2023-06-24',9,'Cristian Castro - Volver a amar','[{\"changed\": {\"fields\": [\"Image 01\"]}}]',8,4,2),(90,'2023-06-24',10,'Elfen Lied - Lilium','[]',8,4,2),(91,'2023-06-24',10,'Elfen Lied - Lilium','[{\"changed\": {\"fields\": [\"Image 01\"]}}]',8,4,2),(92,'2023-06-24',8,'Joytastica Sarah - Fly me to the moon','[{\"changed\": {\"fields\": [\"Image 01\"]}}]',8,6,2),(93,'2023-06-24',13,'The Weeknd - Save your tears','[{\"added\": {}}]',8,6,1),(94,'2023-06-24',9,'R&B/Soul','[{\"added\": {}}]',7,6,1),(95,'2023-06-24',13,'The Weeknd - Save your tears','[{\"changed\": {\"fields\": [\"Category\", \"Price\"]}}]',8,6,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(11,'store','cart'),(10,'store','order'),(7,'store','productcategory'),(8,'store','products'),(12,'store','shippingaddress'),(9,'store','wishlist');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(62) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-07-13'),(2,'auth','0001_initial','2022-07-13'),(3,'admin','0001_initial','2022-07-13'),(4,'admin','0002_logentry_remove_auto_add','2022-07-13'),(5,'admin','0003_logentry_add_action_flag_choices','2022-07-13'),(6,'contenttypes','0002_remove_content_type_name','2022-07-13'),(7,'auth','0002_alter_permission_name_max_length','2022-07-13'),(8,'auth','0003_alter_user_email_max_length','2022-07-13'),(9,'auth','0004_alter_user_username_opts','2022-07-13'),(10,'auth','0005_alter_user_last_login_null','2022-07-13'),(11,'auth','0006_require_contenttypes_0002','2022-07-13'),(12,'auth','0007_alter_validators_add_error_messages','2022-07-13'),(13,'auth','0008_alter_user_username_max_length','2022-07-13'),(14,'auth','0009_alter_user_last_name_max_length','2022-07-13'),(15,'auth','0010_alter_group_name_max_length','2022-07-13'),(16,'auth','0011_update_proxy_permissions','2022-07-13'),(17,'auth','0012_alter_user_first_name_max_length','2022-07-13'),(18,'sessions','0001_initial','2022-07-13'),(19,'store','0001_initial','2022-07-13'),(20,'store','0002_order_order_status','2022-07-14'),(21,'store','0003_rename_address1_order_address_line1','2022-07-14'),(22,'store','0002_remove_order_address1_remove_order_address_line2_and_more','2022-07-15'),(23,'store','0003_alter_order_order_date','2022-07-15'),(24,'store','0004_remove_shippingaddress_order_id','2022-07-15'),(25,'store','0005_remove_products_image_02_remove_products_image_03','2023-06-23');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(228) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('eybsem8vz63l4r92s7beynkinkuu1ncc','.eJxVjEEOwiAQRe_C2hDAwoBL9z0DGWZAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xYnERWpx-t4T0yG0HfMd2myXNbV2mJHdFHrTLceb8vB7u30HFXr-1MgyJlUcip41GkylZlcArD9aZosw5AGhCWwI4qwNYP3DOpMtAlkG8P9QbN3Y:1oGxVn:D6Oa6_ss0Gtydj7Fe-9kt0aauqfNgd-O_9CG5Njpp_M','2022-08-11'),('u6ps298ywazupdyoylffak4193nbtxm2','.eJxVjMsOwiAQRf-FtSGG14BL934DGWZAqgaS0q4a_12bdKHbe865m4i4LjWuI89xYnERRpx-t4T0zG0H_MB275J6W-YpyV2RBx3y1jm_rof7d1Bx1G-dis8UQCkomoNhz9kBFFOgECdLPgTlOCOE5MGeLSuLiTR4ywTaoXh_AAf_OJs:1q6ILF:ebTOhsHfh0PjqHj90I3ZeyhQTL0Dt-lU1IVqzbouu7w','2023-06-19'),('4b9jhki2nko1kpagyrtxh4s6s57tx0qy','.eJxVjEEOwiAQRe_C2hCkOoBL956BzDCDVA0kpV0Z726bdKHb_977bxVxmUtcukxxZHVRJ3X43QjTU-oG-IH13nRqdZ5G0puid9r1rbG8rrv7d1Cwl7WGI-QEHpKTYDjkDMYlwuyRxA82mWwseMcI5MSeHQ1CGNwKhpBRWH2-_cs41g:1qBqqt:fX1EUXW7KILzxaOn9B4z2Sw7VfJM5yoAnIBD75l5zF4','2023-07-05'),('r3uuog13hx2l752tgpmvxru0e05tiody','.eJxVjEEOgjAQRe_StWlamA6MS_eegUyng6CmTSisjHdXEha6_e-9_zIDb-s0bFWXYU7mbNCcfrfI8tC8g3TnfCtWSl6XOdpdsQet9lqSPi-H-3cwcZ2-NfieQX2LJBgEO-cVKDSRAmJoAzYBSMC5MQn3gJyIusZRr15lZA_m_QGuHzbJ:1qC4fX:SQUAebQbbWMrVNIzSsvmd5Q9Tgcuko-gKaT_wnbG2kI','2023-07-05'),('648l2zqpcn8oytwa35nwdxwmwadzw479','.eJxVjEEOwiAQRe_C2hCkOoBL956BzDCDVA0kpV0Z726bdKHb_977bxVxmUtcukxxZHVRJ3X43QjTU-oG-IH13nRqdZ5G0puid9r1rbG8rrv7d1Cwl7WGI-QEHpKTYDjkDMYlwuyRxA82mWwseMcI5MSeHQ1CGNwKhpBRWH2-_cs41g:1qCq4x:Qe8-5KZaIOGY79kqdRgKs9l34hzFU5aMOp0oKJOPzIo','2023-07-07');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(21) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',25),('django_admin_log',95),('django_content_type',12),('auth_permission',48),('auth_group',0),('auth_user',6),('store_productcategory',9),('store_cart',43),('store_wishlist',9),('store_order',26),('store_shippingaddress',15),('store_products',13);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cart`
--

DROP TABLE IF EXISTS `store_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_cart` (
  `id` tinyint(4) DEFAULT NULL,
  `quantity` tinyint(4) DEFAULT NULL,
  `customer_id` tinyint(4) DEFAULT NULL,
  `product_id_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cart`
--

LOCK TABLES `store_cart` WRITE;
/*!40000 ALTER TABLE `store_cart` DISABLE KEYS */;
INSERT INTO `store_cart` VALUES (42,1,4,2);
/*!40000 ALTER TABLE `store_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_order` (
  `id` tinyint(4) DEFAULT NULL,
  `payment_mode` varchar(16) DEFAULT NULL,
  `customer_id` tinyint(4) DEFAULT NULL,
  `order_status` varchar(7) DEFAULT NULL,
  `product_id_id` tinyint(4) DEFAULT NULL,
  `quantity` tinyint(4) DEFAULT NULL,
  `order_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (18,'credit card',4,'Pending',2,1,'2023-06-23'),(19,'pago en efectivo',4,'Pending',3,1,'2023-06-24'),(20,'pago en efectivo',4,'Pending',2,1,'2023-06-24'),(21,'pago en efectivo',4,'Pending',2,1,'2023-06-24'),(22,'pago en efectivo',4,'Pending',3,1,'2023-06-24'),(23,'pago en efectivo',4,'Pending',3,1,'2023-06-24'),(24,'pago en efectivo',4,'Pending',7,1,'2023-06-24'),(25,'pago en efectivo',4,'Pending',3,1,'2023-06-24'),(26,'tarjeta',6,'Pagado',13,1,'2023-06-24');
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_productcategory`
--

DROP TABLE IF EXISTS `store_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_productcategory` (
  `id` tinyint(4) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `image` varchar(52) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_productcategory`
--

LOCK TABLES `store_productcategory` WRITE;
/*!40000 ALTER TABLE `store_productcategory` DISABLE KEYS */;
INSERT INTO `store_productcategory` VALUES (1,'Amor','amor.png'),(2,'Cumbia','cumbia.jpg'),(3,'Metal','metal.webp'),(4,'Kpop','kpop.webp'),(5,'Pop electrónica','Pop_electrónica.jpg'),(6,'Anime','Lilium.webp'),(7,'Pop Latino','pop_latino.jpeg'),(8,'Indie','v4-460px-Write-Indie-Songs-Step-1-Version-2.jpg.jpeg'),(9,'R&B/Soul','Soul_noHHKqP.jpg');
/*!40000 ALTER TABLE `store_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_products`
--

DROP TABLE IF EXISTS `store_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_products` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(37) DEFAULT NULL,
  `price` smallint(6) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  `image_01` varchar(29) DEFAULT NULL,
  `category_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_products`
--

LOCK TABLES `store_products` WRITE;
/*!40000 ALTER TABLE `store_products` DISABLE KEYS */;
INSERT INTO `store_products` VALUES (2,'Let Me Out - Jonghyun',9990,'Album de Let Me Out','jonghyun.webp',4),(3,'Rammstein - Sonne',8990,'Album de Rammstein','images.jpg',3),(4,'Santa Feria - Algun dia Volveras',8990,'Album de santa feria','santa_feria_algun_dia.jpg',2),(5,'Madonna -  Hanky Parky',5990,'Album de Madonna','producto2.webp',5),(7,'Reik - Ciego',6990,'Album de Reik, Ciego','reik.webp',7),(8,'Joytastica Sarah - Fly me to the moon',6990,'Album de Joytastica Sarah','Fly_me_t4eP3ra.jpg',8),(9,'Cristian Castro - Volver a amar',7990,'Álbum de Cristian Castro, Volver a Amar','christian_castro_1CL3bKf.webp',1),(10,'Elfen Lied - Lilium',9990,'Este es el disco de Lilium del anime de Elfen Lied','Lilium_Ybwnoh5.webp',6),(11,'123',123,'123','Ivan_ylykios.jpeg',1),(12,'test',123,'12312','Ivan_RPrsFNR.jpeg',1),(13,'The Weeknd - Save your tears',7990,'','weeknd_81wfKOg.jpg',9);
/*!40000 ALTER TABLE `store_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_shippingaddress`
--

DROP TABLE IF EXISTS `store_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_shippingaddress` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `email` varchar(24) DEFAULT NULL,
  `address_line1` varchar(10) DEFAULT NULL,
  `address_line2` varchar(9) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `customer_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_shippingaddress`
--

LOCK TABLES `store_shippingaddress` WRITE;
/*!40000 ALTER TABLE `store_shippingaddress` DISABLE KEYS */;
INSERT INTO `store_shippingaddress` VALUES (9,'Diego',947750405,'yoelmanzanitaa@gmail.com','213213','312123312','Santiago','Region Metropolitana',208000,'Chile',4),(10,'Erika Ayline Lorca P',1232123,'rosalesdiegl6@gmail.com','Miraflores','123312','Chimbarongo','No state/region',309000,'',4),(11,'Erika Ayline Lorca P',21312123,'rosalesdiegl6@gmail.com','Miraflores','12312','Chimbarongo','No state/region',309000,'',4),(12,'Erika Ayline Lorca P',123231123,'rosalesdiegl6@gmail.com','Miraflores','123123','Chimbarongo','No state/region',309000,'',4),(13,'Erika Ayline Lorca P',123123123,'rosalesdiegl6@gmail.com','Miraflores','123123','Chimbarongo','No state/region',3090000,'',4),(14,'Erika Ayline Lorca P',947750405,'rosalesdiegl6@gmail.com','Miraflores','12321','Chimbarongo','No state/region',3090000,'',4),(15,'Probando cancion',978457456,'probando@gmial.com','probando','probando','chile','La Pintana',280000,'',6);
/*!40000 ALTER TABLE `store_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_wishlist`
--

DROP TABLE IF EXISTS `store_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_wishlist` (
  `id` tinyint(4) DEFAULT NULL,
  `customer_id` tinyint(4) DEFAULT NULL,
  `product_id_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_wishlist`
--

LOCK TABLES `store_wishlist` WRITE;
/*!40000 ALTER TABLE `store_wishlist` DISABLE KEYS */;
INSERT INTO `store_wishlist` VALUES (9,4,9);
/*!40000 ALTER TABLE `store_wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
