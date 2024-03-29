-- MySQL dump 10.13  Distrib 5.1.39, for portbld-freebsd6.4 (amd64)
--
-- Host: localhost    Database: shenderov_vadimshenderov
-- ------------------------------------------------------
-- Server version	5.1.39-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES cp1251 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wcz6s_assets`
--

DROP TABLE IF EXISTS `wcz6s_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_assets`
--

LOCK TABLES `wcz6s_assets` WRITE;
/*!40000 ALTER TABLE `wcz6s_assets` DISABLE KEYS */;
INSERT INTO `wcz6s_assets` VALUES (1,0,1,93,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,44,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,45,46,1,'com_cpanel','com_cpanel','{}'),(10,1,47,48,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,49,50,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,51,52,1,'com_login','com_login','{}'),(13,1,53,54,1,'com_mailto','com_mailto','{}'),(14,1,55,56,1,'com_massmail','com_massmail','{}'),(15,1,57,58,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,59,60,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,61,62,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,63,64,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,65,68,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,69,70,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,71,72,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,73,74,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,75,76,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,77,80,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,81,84,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,85,86,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,66,67,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,82,83,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,78,79,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,87,88,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,89,90,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,8,20,21,2,'com_content.category.8','Featured',''),(36,8,22,39,2,'com_content.category.9','Articles',''),(37,36,23,24,3,'com_content.article.1','Home','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(38,36,25,26,3,'com_content.article.2','�������',''),(39,36,27,28,3,'com_content.article.3','� ����','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,36,29,30,3,'com_content.article.4','�������',''),(41,36,31,32,3,'com_content.article.5','��� �������� �������','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,36,33,34,3,'com_content.article.6','��������','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,36,35,36,3,'com_content.article.9','�������2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(46,36,37,38,3,'com_content.article.10','�������3','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(50,1,91,92,1,'com_phocagallery','com_phocagallery','{\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,8,40,43,2,'com_content.category.10','News','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(54,51,41,42,3,'com_content.article.16','����� ���������� �� ��� ����!','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `wcz6s_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_associations`
--

DROP TABLE IF EXISTS `wcz6s_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_associations`
--

LOCK TABLES `wcz6s_associations` WRITE;
/*!40000 ALTER TABLE `wcz6s_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_banner_clients`
--

DROP TABLE IF EXISTS `wcz6s_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_banner_clients`
--

LOCK TABLES `wcz6s_banner_clients` WRITE;
/*!40000 ALTER TABLE `wcz6s_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_banner_tracks`
--

DROP TABLE IF EXISTS `wcz6s_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_banner_tracks`
--

LOCK TABLES `wcz6s_banner_tracks` WRITE;
/*!40000 ALTER TABLE `wcz6s_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_banners`
--

DROP TABLE IF EXISTS `wcz6s_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_banners`
--

LOCK TABLES `wcz6s_banners` WRITE;
/*!40000 ALTER TABLE `wcz6s_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_categories`
--

DROP TABLE IF EXISTS `wcz6s_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_categories`
--

LOCK TABLES `wcz6s_categories` WRITE;
/*!40000 ALTER TABLE `wcz6s_categories` DISABLE KEYS */;
INSERT INTO `wcz6s_categories` VALUES (1,0,0,0,19,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(8,35,1,13,14,1,'featured','com_content','Featured','featured','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',838,'2013-03-19 19:29:30',0,'0000-00-00 00:00:00',0,'*'),(9,36,1,15,16,1,'articles','com_content','Articles','articles','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',838,'2013-03-19 19:29:30',0,'0000-00-00 00:00:00',0,'*'),(10,51,1,17,18,1,'news','com_content','News','news','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',838,'2013-03-26 21:08:02',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `wcz6s_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_contact_details`
--

DROP TABLE IF EXISTS `wcz6s_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_contact_details`
--

LOCK TABLES `wcz6s_contact_details` WRITE;
/*!40000 ALTER TABLE `wcz6s_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_content`
--

DROP TABLE IF EXISTS `wcz6s_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_content`
--

LOCK TABLES `wcz6s_content` WRITE;
/*!40000 ALTER TABLE `wcz6s_content` DISABLE KEYS */;
INSERT INTO `wcz6s_content` VALUES (1,37,'Home','article','','<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>','',1,0,0,9,'2013-03-19 19:29:30',838,'','2013-03-23 17:11:04',838,838,'2013-03-23 17:11:04','2013-03-19 19:29:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"0\",\"show_article_options\":\"0\",\"show_urls_images_backend\":\"0\",\"show_urls_images_frontend\":\"0\"}',33,0,6,'','',1,1625,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,38,'�������','article-1','','\n            <p>�������� �������<br></p>\n        \n        ','',2,0,0,9,'2013-03-19 19:29:30',838,'','2013-03-19 19:29:30',838,0,'0000-00-00 00:00:00','2013-03-19 19:29:30','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,0,8,'','',1,75,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,39,'� ����','article-2','','<p><em>����� �� ���� � ����� ��, ��� �����!</em><em>�� � � �</em></p>\r\n<p><span style=\"font-family: Garamond, serif;\"><span lang=\"ru-RU\"><em><span style=\"font-family: arial, helvetica, sans-serif;\">�� � � � ������� � � 1991 ���� � ������ ��������. � ������� ������ ���-�� ��������: �����, �������, �����, ������� � ������.</span></em></span></span></p>\r\n<p>�<span style=\"font-family: Garamond, serif;\"><em><span style=\"font-family: arial, helvetica, sans-serif;\">�� � � � ������ ����� ���������� ������� ���� � 12 ���. ��� ����� ������ ������� �� ����������. ��� ���� �����������. � ������� 2010 ���� ���������� ������� ��� ����������, ���� ���� ���� �������� ��� ����.</span></em></span></p>\r\n<p>�<span style=\"font-family: Garamond, serif;\"><em><span style=\"font-family: arial, helvetica, sans-serif;\">�� � � � ��� ������ ��������� ���������� ����������� ������� ������ ��� � ���� ���������������� �������� ��������. �������� ������� � ���, ����� �������� �� ������� ������, �������� � ��������� ������� ����� ������� ��������. � �������� ������ ���� ������ � ������ �������, ��� ������ ��� ���������.</span></em></span></p>\r\n<p>�<span style=\"font-family: Garamond, serif;\"><em><span style=\"font-family: arial, helvetica, sans-serif;\">�� � � � �� ����� 2013 ���� ���������� �������������� 350 ��������� �� ����� ����������, �������� � ��������� ��������. � �������� ���� ���������� �������� �� �������, ��� ��������� ��� ����������� ���������� ��� �� ��������.</span></em></span></p>\r\n<p>�<span style=\"font-family: Garamond, serif;\"><em><span style=\"font-family: arial, helvetica, sans-serif;\">�� � � � ������ ��������� ��� ��������� ��� ����, �������� ��������� ������������ (<em><a href=\"http://www.shenderov.com/\" target=\"_blank\">shenderov.com</a>)</em>. �� � ������� ��������, � ��� ������ ��� ������ �������� � ���������� ����������� ���� � ������� ���������� ��������� � ������������. ������ ������� � ����� ������������ � ������� ��������������.</span></em></span></p>\r\n<p>�<span style=\"font-family: Garamond, serif;\"><em><span style=\"font-family: arial, helvetica, sans-serif;\">�� � � � ����� ��������� � ��� � ������ ������ �����, ��� � ������������ ������� ������������. ���������� ���� �������, � ����� ����� ������� ��������� ����� � ������� ����� ����� � � ���������� �����!</span></em></span></p>','',1,0,0,9,'2013-03-19 19:29:30',838,'','2013-04-09 08:13:41',838,838,'2013-04-09 08:13:41','2013-03-19 19:29:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',21,0,7,'','',1,597,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,40,'�������','article-3','','\n            <span style=\"color: #FFFFFF;\">�������� �������</span>\n        \n        ','',1,0,0,9,'2013-03-19 19:29:30',838,'','2013-03-19 19:29:30',838,0,'0000-00-00 00:00:00','2013-03-19 19:29:30','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,0,6,'','',1,110,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,41,'��� �������� �������','article-4','','<address style=\"padding-left: 30px;\">�������� ������� ����� ������!</address><address>�</address><address>�� �� �� ������� ��� ����� �������� ���������� ��� �� shenderov-paint@mail.ru, � ����� ����� �� ������ ������������ � �������� �������� � �������� ����������, � ��� � ��� � ������������� ������ ��� ������� ��� � ���������� ������. ����� ����� ������ ���������� (30% �� ��������� ��������). ��� �������� ����������� ���������� ��������� ��� �����. ������� ������������ ��� ����� ������ ������ (���������� ������ ��� ��������� �������� � ��������� ������ ������, ���������� ������� ��� �����).</address><address><br />� � � �� ����� �������� � ����������. ���������� 3-4 ������������ ����.</address><address><br />���� � � ����� �������� ��������� ��������, �������� ��� ������� ����������, �������� ��� ���� ���������. ��������� ��������� ����, ��������� ������, ���� � ������ ���������� ��������. �� ������ �������� ������������ �������, �������� �������, ������� � ����� ���-���, ������� � ����� �������, ������� �� ����� ��� � ������ ����. ����� ����� �������� ��������. ����� �������� ������� - ������ �� ��������.</address><address><br />��� �� � ����� ���������� ������ �� 2� �� 14 ����. ��������� �������� �������������, ���� ��������� ���������� ����� ������ �������� ��� �������������� ������� ������ - ��� ��� �� ��������������.<br /><br /></address><address>�</address>\r\n<h4 style=\"padding-left: 30px; text-align: center;\">�<em><strong>���� �� ��������</strong></em></h4>\r\n<table style=\"width: 621px; height: 111px;\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" rowspan=\"2\"><em>��<strong>������� ����������</strong></em></td>\r\n<td style=\"text-align: center;\" colspan=\"7\"><strong><em>�������</em></strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><em>30�21�</em></td>\r\n<td style=\"text-align: center;\"><em>40�30</em></td>\r\n<td style=\"text-align: center;\"><em>�50�40</em></td>\r\n<td style=\"text-align: center;\"><em>�70�50</em></td>\r\n<td style=\"text-align: center;\"><em>80�60�</em></td>\r\n<td style=\"text-align: center;\"><em>�100�70</em></td>\r\n<td style=\"text-align: center;\"><em>120�90</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><em>������, �����</em></td>\r\n<td style=\"text-align: center;\"><em>�350</em></td>\r\n<td style=\"text-align: center;\"><em>�500</em></td>\r\n<td style=\"text-align: center;\"><em>�800</em></td>\r\n<td style=\"text-align: center;\"><em>�1200</em></td>\r\n<td style=\"text-align: center;\"><em>�1500</em></td>\r\n<td style=\"text-align: center;\"><em>�2200</em></td>\r\n<td style=\"text-align: center;\"><em>�3200</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><em>��������, ������</em></td>\r\n<td style=\"text-align: center;\"><em>�250</em></td>\r\n<td style=\"text-align: center;\"><em>�400</em></td>\r\n<td style=\"text-align: center;\"><em>�600</em></td>\r\n<td style=\"text-align: center;\"><em>�900</em></td>\r\n<td style=\"text-align: center;\"><em>�1200</em></td>\r\n<td style=\"text-align: center;\"><em>�-</em></td>\r\n<td style=\"text-align: center;\"><em>�-</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><em>���������,������</em></td>\r\n<td style=\"text-align: center;\"><em>�150</em></td>\r\n<td style=\"text-align: center;\"><em>�200</em></td>\r\n<td style=\"text-align: center;\"><em>�320</em></td>\r\n<td style=\"text-align: center;\"><em>�500</em></td>\r\n<td style=\"text-align: center;\"><em>�700</em></td>\r\n<td style=\"text-align: center;\"><em>�-</em></td>\r\n<td style=\"text-align: center;\"><em>�-</em></td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,0,0,9,'2013-03-19 19:29:30',838,'','2013-04-01 08:40:42',838,838,'2013-04-01 08:40:42','2013-03-19 19:29:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',29,0,5,'','',1,651,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,42,'��������','article-5','','<p><em><img src=\"images/icons/mobile-phone(1).png\" border=\"0\" alt=\"\" />���. life:) - 063-995-74-88</em></p>\r\n<p><em><img src=\"images/icons/mobile-phone(1).png\" border=\"0\" alt=\"\" />���. kyivstar - 067-161-71-48</em></p>\r\n<div class=\"fc_msg wrapped \">\r\n<p><em><img src=\"images/icons/retro-phone(1).png\" border=\"0\" alt=\"\" />���. ����� - 0472-56-13-02</em></p>\r\n<p><em><img src=\"images/icons/mail(1).png\" border=\"0\" alt=\"\" />E-mail: <a href=\"mailto:shenderov-psint@mail.ru\"><span style=\"color: #ff9900;\">shenderov-paint@mail.ru</span></a></em></p>\r\n</div>','',1,0,0,9,'2013-03-19 19:29:30',838,'','2013-04-01 14:33:31',838,0,'0000-00-00 00:00:00','2013-03-19 19:29:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,0,4,'','',1,439,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,45,'�������2','2','','<p><span style=\"color: #0000ff;\">�������2 �������2 �������2 �������2 �������2 �������2</span></p>\r\n<p><span style=\"font-size: large; color: #0000ff;\">�������2 �������2 �������2 �������2 �������2 �������2</span></p>\r\n<p>�</p>\r\n<hr width=\"100%\" style=\"width: 100%;\" />\r\n<ul>\r\n<li><span style=\"font-size: large;\">������</span></li>\r\n</ul>','',2,0,0,9,'2013-03-23 14:30:03',838,'','2013-03-23 15:59:04',838,0,'0000-00-00 00:00:00','2013-03-23 14:30:03','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,3,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,46,'�������3','3','','<p>�������3 �������3 �������3 �������3 �������3 �������3 �������3</p>\r\n<p>�������3 �������3 �������3 �������3 �������3 �������3 �������3</p>','',2,0,0,9,'2013-03-23 14:30:39',838,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-03-23 14:30:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,1,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,54,'����� ���������� �� ��� ����!','dobro-pozhalovat-na-moj-sajt','','<p><em>����� ���������� �� ��� ����! </em></p>\r\n<p><em>����� �� ������ ������ ����� ��� ������, �������� � ������� � ������������! </em></p>\r\n<p><em>����� ������������ ��� �������������� � ���������� �����!</em></p>','',1,0,0,10,'2013-03-28 23:11:24',838,'','2013-03-28 23:14:03',838,0,'0000-00-00 00:00:00','2013-03-28 23:11:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,0,'','',1,79,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `wcz6s_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_content_frontpage`
--

DROP TABLE IF EXISTS `wcz6s_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_content_frontpage`
--

LOCK TABLES `wcz6s_content_frontpage` WRITE;
/*!40000 ALTER TABLE `wcz6s_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_content_rating`
--

DROP TABLE IF EXISTS `wcz6s_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_content_rating`
--

LOCK TABLES `wcz6s_content_rating` WRITE;
/*!40000 ALTER TABLE `wcz6s_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_core_log_searches`
--

DROP TABLE IF EXISTS `wcz6s_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_core_log_searches`
--

LOCK TABLES `wcz6s_core_log_searches` WRITE;
/*!40000 ALTER TABLE `wcz6s_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_extensions`
--

DROP TABLE IF EXISTS `wcz6s_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_extensions`
--

LOCK TABLES `wcz6s_extensions` WRITE;
/*!40000 ALTER TABLE `wcz6s_extensions` DISABLE KEYS */;
INSERT INTO `wcz6s_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"1\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"0\",\"feed_summary\":\"1\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2012\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"2\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"applet,iframe\",\"extended_elements\":\"style,script,div[*]\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Vadimsite2','template','vadimsite2','',0,1,1,0,'{\"legacy\":false,\"name\":\"Vadimsite2\",\"type\":\"template\",\"creationDate\":\"2013-03-19\",\"author\":\"Ruslan Ternovoy\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10001,'Russian','language','ru-RU','',0,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-11-14\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.8.4\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'Russian','language','ru-RU','',1,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-11-14\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.8.4\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'TinyMCE ru-RU','file','tinymce_ru-ru','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE ru-RU\",\"type\":\"file\",\"creationDate\":\"2012-06-19\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.5.2.1\",\"description\":\"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10004,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"legacy\":false,\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.8.4\",\"description\":\"Joomla 2.5 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10005,'com_phocagallery','component','com_phocagallery','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_phocagallery\",\"type\":\"component\",\"creationDate\":\"01\\/10\\/2012\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"3.2.2\",\"description\":\"Phoca Gallery\",\"group\":\"\"}','{\"categories_description\":\"\",\"categories_columns\":\"2\",\"equal_percentage_width\":\"1\",\"display_image_categories\":\"1\",\"categories_box_width\":\"100%\",\"image_categories_size\":\"1\",\"categories_image_ordering\":\"7\",\"categories_display_avatar\":\"1\",\"display_subcategories\":\"0\",\"display_empty_categories\":\"0\",\"hide_categories\":\"\",\"show_categories\":\"\",\"display_access_category\":\"0\",\"default_pagination_categories\":\"10\",\"pagination_categories\":\"5,10,15,20,50\",\"font_color\":\"#ffff66\",\"background_color\":\"0\",\"background_color_hover\":\"0\",\"image_background_color\":\"0\",\"image_background_shadow\":\"none\",\"border_color\":\"0\",\"border_color_hover\":\"0\",\"margin_box\":\"5\",\"padding_box\":\"5\",\"display_new\":\"0\",\"display_hot\":\"0\",\"display_name\":\"1\",\"display_icon_detail\":\"0\",\"display_icon_download\":\"0\",\"display_icon_folder\":\"1\",\"font_size_name\":\"12\",\"char_length_name\":\"35\",\"category_box_space\":\"0\",\"display_categories_sub\":\"0\",\"display_subcat_page\":\"2\",\"display_category_icon_image\":\"1\",\"category_image_ordering\":\"9\",\"display_back_button\":\"1\",\"display_categories_back_button\":\"1\",\"default_pagination_category\":\"50\",\"pagination_category\":\"5,10,15,20,50\",\"display_img_desc_box\":\"0\",\"font_size_img_desc\":\"10\",\"img_desc_box_height\":\"30\",\"char_length_img_desc\":\"300\",\"display_categories_cv\":\"0\",\"display_subcat_page_cv\":\"2\",\"display_category_icon_image_cv\":\"1\",\"category_image_ordering_cv\":\"3\",\"display_back_button_cv\":\"1\",\"display_categories_back_button_cv\":\"1\",\"categories_columns_cv\":\"1\",\"display_image_categories_cv\":\"1\",\"image_categories_size_cv\":\"0\",\"detail_window\":\"10\",\"detail_window_background_color\":\"#ffffff\",\"modal_box_overlay_color\":\"#000000\",\"modal_box_overlay_opacity\":\"0.3\",\"modal_box_border_color\":\"#6b6b6b\",\"modal_box_border_width\":\"2\",\"sb_slideshow_delay\":\"5\",\"sb_lang\":\"en\",\"highslide_class\":\"rounded-white\",\"highslide_opacity\":\"0\",\"highslide_outline_type\":\"rounded-white\",\"highslide_fullimg\":\"0\",\"highslide_close_button\":\"0\",\"highslide_slideshow\":\"1\",\"jak_slideshow_delay\":\"5\",\"jak_orientation\":\"none\",\"jak_description\":\"1\",\"jak_description_height\":\"10\",\"boxplus_theme\":\"shadow\",\"boxplus_bautocenter\":\"1\",\"boxplus_autofit\":\"1\",\"boxplus_slideshow\":\"0\",\"boxplus_loop\":\"1\",\"boxplus_captions\":\"bottom\",\"boxplus_thumbs\":\"outside\",\"boxplus_duration\":\"400\",\"boxplus_transition\":\"expo\",\"boxplus_contextmenu\":\"1\",\"ytb_display\":\"0\",\"enable_multibox\":\"0\",\"display_multibox\":[\"1\"],\"multibox_width\":\"980\",\"multibox_height\":\"560\",\"multibox_map_width\":\"280\",\"multibox_map_height\":\"300\",\"multibox_thubms_box_width\":\"300\",\"multibox_thubms_count\":\"4\",\"multibox_comments_width\":\"300\",\"multibox_comments_height\":\"600\",\"multibox_left_bgcolor\":\"#000000\",\"multibox_right_bgcolor\":\"#ffffff\",\"multibox_fixed_cols\":\"1\",\"display_description_detail\":\"0\",\"display_title_description\":\"0\",\"font_size_desc\":\"11\",\"font_color_desc\":\"#333333\",\"description_detail_height\":\"16\",\"description_lightbox_font_size\":\"12\",\"description_lightbox_font_color\":\"#ffffff\",\"description_lightbox_bg_color\":\"#000000\",\"slideshow_delay\":\"3000\",\"slideshow_pause\":\"2000\",\"slideshow_random\":\"0\",\"slideshow_description\":\"peekaboo\",\"detail_buttons\":\"0\",\"phocagallery_width\":\"\",\"phocagallery_center\":\"0\",\"category_ordering\":\"1\",\"image_ordering\":\"1\",\"gallery_metadesc\":\"\",\"gallery_metakey\":\"\",\"alt_value\":\"1\",\"tags_links\":\"0\",\"display_tags_links\":\"0\",\"enable_custom_css\":\"0\",\"custom_css\":\"\",\"enable_cooliris\":\"0\",\"start_cooliris\":\"0\",\"piclens_image\":\"1\",\"switch_image\":\"0\",\"switch_width\":\"640\",\"switch_height\":\"480\",\"switch_fixed_size\":\"0\",\"enable_overlib\":\"0\",\"ol_bg_color\":\"#666666\",\"ol_fg_color\":\"#f6f6f6\",\"ol_tf_color\":\"#000000\",\"ol_cf_color\":\"#ffffff\",\"overlib_overlay_opacity\":\"0.7\",\"overlib_image_rate\":\"\",\"create_watermark\":\"0\",\"watermark_position_x\":\"center\",\"watermark_position_y\":\"middle\",\"display_category_statistics\":\"0\",\"display_main_cat_stat\":\"1\",\"display_lastadded_cat_stat\":\"1\",\"count_lastadded_cat_stat\":\"3\",\"display_mostviewed_cat_stat\":\"0\",\"count_mostviewed_cat_stat\":\"3\",\"display_feed\":\"0\",\"feed_cat_ids\":\"\",\"feed_img_ordering\":\"6\",\"feed_img_count\":\"5\",\"feed_title\":\"\",\"enable_user_cp\":\"0\",\"enable_upload_avatar\":\"0\",\"enable_avatar_approve\":\"0\",\"enable_usercat_approve\":\"0\",\"enable_usersubcat_approve\":\"0\",\"enable_direct_subcat\":\"0\",\"user_subcat_count\":\"5\",\"max_create_cat_char\":\"1000\",\"user_ucp_lang\":\"1\",\"enable_userimage_approve\":\"0\",\"max_upload_char\":\"1000\",\"upload_maxsize\":\"3145728\",\"upload_maxres_width\":\"3072\",\"upload_maxres_height\":\"2304\",\"user_images_max_size\":\"20971520\",\"enable_multiple\":\"0\",\"multiple_upload_method\":\"1\",\"multiple_upload_chunk\":\"0\",\"multiple_resize_width\":\"-1\",\"multiple_resize_height\":\"-1\",\"enable_java\":\"0\",\"java_box_width\":\"480\",\"java_box_height\":\"480\",\"youtube_upload\":\"0\",\"display_rating\":\"0\",\"display_rating_img\":\"0\",\"display_comment\":\"0\",\"display_comment_img\":\"0\",\"comment_width\":\"500\",\"max_comment_char\":\"1000\",\"display_comment_nopup\":\"0\",\"external_comment_system\":\"0\",\"fb_comment_user_id\":\"\",\"display_camera_info\":\"0\",\"exif_information\":\"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED_Height,COMPUTED_Width,COMPUTED_IsColor,COMPUTED_ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp\",\"display_categories_geotagging\":\"0\",\"categories_lng\":\"\",\"categories_lat\":\"\",\"categories_zoom\":\"2\",\"categories_map_width\":\"\",\"categories_map_height\":\"500\",\"display_icon_geotagging\":\"0\",\"display_category_geotagging\":\"0\",\"category_map_width\":\"\",\"category_map_height\":\"400\",\"display_icon_vm\":\"0\",\"pagination_thumbnail_creation\":\"0\",\"clean_thumbnails\":\"0\",\"enable_thumb_creation\":\"1\",\"crop_thumbnail\":\"0\",\"jpeg_quality\":\"85\",\"enable_picasa_loading\":\"0\",\"picasa_load_pagination\":\"20\",\"enable_facebook_loading\":\"0\",\"icon_format\":\"png\",\"large_image_width\":\"640\",\"large_image_height\":\"480\",\"medium_image_width\":\"130\",\"medium_image_height\":\"130\",\"small_image_width\":\"50\",\"small_image_height\":\"50\",\"front_modal_box_width\":\"680\",\"front_modal_box_height\":\"560\",\"folder_permissions\":\"0755\",\"jfile_thumbs\":\"1\",\"alias_iconv\":\"0\",\"enable_cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10006,'Russian Phoca Gallery 3.2.0','file','ru-RU.com_phocagallery','',0,1,0,0,'{\"legacy\":false,\"name\":\"Russian Phoca Gallery 3.2.0\",\"type\":\"file\",\"creationDate\":\"29.04.2012\",\"author\":\"Andrey Lifanov\",\"copyright\":\"Copyright (C) 2006-2012 - Andrey Lifanov. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.rifmaplet.ru\",\"version\":\"3.2.0\",\"description\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a \\u0434\\u043b\\u044f (site) Phoca Gallery 3.1.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `wcz6s_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_filters`
--

DROP TABLE IF EXISTS `wcz6s_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_filters`
--

LOCK TABLES `wcz6s_finder_filters` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links`
--

DROP TABLE IF EXISTS `wcz6s_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links`
--

LOCK TABLES `wcz6s_finder_links` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms0`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms0`
--

LOCK TABLES `wcz6s_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms1`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms1`
--

LOCK TABLES `wcz6s_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms2`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms2`
--

LOCK TABLES `wcz6s_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms3`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms3`
--

LOCK TABLES `wcz6s_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms4`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms4`
--

LOCK TABLES `wcz6s_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms5`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms5`
--

LOCK TABLES `wcz6s_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms6`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms6`
--

LOCK TABLES `wcz6s_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms7`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms7`
--

LOCK TABLES `wcz6s_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms8`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms8`
--

LOCK TABLES `wcz6s_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_terms9`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_terms9`
--

LOCK TABLES `wcz6s_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_termsa`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_termsa`
--

LOCK TABLES `wcz6s_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_termsb`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_termsb`
--

LOCK TABLES `wcz6s_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_termsc`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_termsc`
--

LOCK TABLES `wcz6s_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_termsd`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_termsd`
--

LOCK TABLES `wcz6s_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_termse`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_termse`
--

LOCK TABLES `wcz6s_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_links_termsf`
--

DROP TABLE IF EXISTS `wcz6s_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_links_termsf`
--

LOCK TABLES `wcz6s_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_taxonomy`
--

DROP TABLE IF EXISTS `wcz6s_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_taxonomy`
--

LOCK TABLES `wcz6s_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `wcz6s_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `wcz6s_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `wcz6s_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_taxonomy_map`
--

LOCK TABLES `wcz6s_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_terms`
--

DROP TABLE IF EXISTS `wcz6s_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_terms`
--

LOCK TABLES `wcz6s_finder_terms` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_terms_common`
--

DROP TABLE IF EXISTS `wcz6s_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_terms_common`
--

LOCK TABLES `wcz6s_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_terms_common` DISABLE KEYS */;
INSERT INTO `wcz6s_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `wcz6s_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_tokens`
--

DROP TABLE IF EXISTS `wcz6s_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_tokens`
--

LOCK TABLES `wcz6s_finder_tokens` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `wcz6s_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_tokens_aggregate`
--

LOCK TABLES `wcz6s_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_finder_types`
--

DROP TABLE IF EXISTS `wcz6s_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_finder_types`
--

LOCK TABLES `wcz6s_finder_types` WRITE;
/*!40000 ALTER TABLE `wcz6s_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_languages`
--

DROP TABLE IF EXISTS `wcz6s_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_languages`
--

LOCK TABLES `wcz6s_languages` WRITE;
/*!40000 ALTER TABLE `wcz6s_languages` DISABLE KEYS */;
INSERT INTO `wcz6s_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `wcz6s_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_menu`
--

DROP TABLE IF EXISTS `wcz6s_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_menu`
--

LOCK TABLES `wcz6s_menu` WRITE;
/*!40000 ALTER TABLE `wcz6s_menu` DISABLE KEYS */;
INSERT INTO `wcz6s_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,103,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(103,'ct-horizontal-menu','�������','home','','home','index.php?option=com_content&view=article&id=1','component',1,1,1,22,1,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"-home\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',45,46,1,'*',0),(105,'ct-horizontal-menu','�������','news','','news','index.php?option=com_content&view=category&layout=blog&id=10','component',1,1,1,22,2,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,0,'*',0),(107,'ct-horizontal-menu','� ����','about','','about','index.php?option=com_content&view=article&id=3','component',1,1,1,22,3,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',53,54,0,'*',0),(109,'ct-horizontal-menu','�������','gallery','','gallery','index.php?option=com_phocagallery&view=categories','component',1,1,1,10005,4,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_pagination_categories\":\"0\",\"show_pagination_category\":\"0\",\"show_pagination_limit_categories\":\"0\",\"show_pagination_limit_category\":\"0\",\"show_ordering_categories\":\"0\",\"show_ordering_images\":\"0\",\"display_cat_name_title\":\"0\",\"display_cat_name_breadcrumbs\":\"0\",\"show_parent_categories\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',57,60,0,'*',0),(111,'ct-horizontal-menu','��� ��������','order','','order','index.php?option=com_content&view=article&id=5','component',1,1,1,22,5,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,64,0,'*',0),(113,'ct-horizontal-menu','��������','contacts','','contacts','index.php?option=com_content&view=article&id=6','component',1,1,1,22,6,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),(114,'ct-horizontal-menu','�������','glavnaya','','glavnaya','index.php?option=com_wrapper&view=wrapper','component',-2,1,1,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"url\":\"www.shenderov.com\",\"scrolling\":\"auto\",\"width\":\"100%\",\"height\":\"500\",\"height_auto\":\"0\",\"add_scheme\":\"1\",\"frameborder\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',75,76,0,'*',0),(115,'main','COM_PHOCAGALLERY','com-phocagallery','','com-phocagallery','index.php?option=com_phocagallery','component',0,1,1,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu.png',0,'',77,102,0,'',1),(116,'main','COM_PHOCAGALLERY_CONTROLPANEL','com-phocagallery-controlpanel','','com-phocagallery/com-phocagallery-controlpanel','index.php?option=com_phocagallery','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png',0,'',78,79,0,'',1),(117,'main','COM_PHOCAGALLERY_IMAGES','com-phocagallery-images','','com-phocagallery/com-phocagallery-images','index.php?option=com_phocagallery&view=phocagalleryimgs','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png',0,'',80,81,0,'',1),(118,'main','COM_PHOCAGALLERY_CATEGORIES','com-phocagallery-categories','','com-phocagallery/com-phocagallery-categories','index.php?option=com_phocagallery&view=phocagallerycs','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png',0,'',82,83,0,'',1),(119,'main','COM_PHOCAGALLERY_THEMES','com-phocagallery-themes','','com-phocagallery/com-phocagallery-themes','index.php?option=com_phocagallery&view=phocagalleryt','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png',0,'',84,85,0,'',1),(120,'main','COM_PHOCAGALLERY_CATEGORYRATING','com-phocagallery-categoryrating','','com-phocagallery/com-phocagallery-categoryrating','index.php?option=com_phocagallery&view=phocagalleryra','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png',0,'',86,87,0,'',1),(121,'main','COM_PHOCAGALLERY_IMAGERATING','com-phocagallery-imagerating','','com-phocagallery/com-phocagallery-imagerating','index.php?option=com_phocagallery&view=phocagalleryraimg','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png',0,'',88,89,0,'',1),(122,'main','COM_PHOCAGALLERY_CATEGORYCOMMENTS','com-phocagallery-categorycomments','','com-phocagallery/com-phocagallery-categorycomments','index.php?option=com_phocagallery&view=phocagallerycos','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png',0,'',90,91,0,'',1),(123,'main','COM_PHOCAGALLERY_IMAGECOMMENTS','com-phocagallery-imagecomments','','com-phocagallery/com-phocagallery-imagecomments','index.php?option=com_phocagallery&view=phocagallerycoimgs','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png',0,'',92,93,0,'',1),(124,'main','COM_PHOCAGALLERY_USERS','com-phocagallery-users','','com-phocagallery/com-phocagallery-users','index.php?option=com_phocagallery&view=phocagalleryusers','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png',0,'',94,95,0,'',1),(125,'main','COM_PHOCAGALLERY_FB','com-phocagallery-fb','','com-phocagallery/com-phocagallery-fb','index.php?option=com_phocagallery&view=phocagalleryfbs','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-fb.png',0,'',96,97,0,'',1),(126,'main','COM_PHOCAGALLERY_TAGS','com-phocagallery-tags','','com-phocagallery/com-phocagallery-tags','index.php?option=com_phocagallery&view=phocagallerytags','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-tags.png',0,'',98,99,0,'',1),(127,'main','COM_PHOCAGALLERY_INFO','com-phocagallery-info','','com-phocagallery/com-phocagallery-info','index.php?option=com_phocagallery&view=phocagalleryin','component',0,115,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png',0,'',100,101,0,'',1),(128,'ct-horizontal-menu','��������','karandash','','gallery/karandash','index.php?option=com_phocagallery&view=categories','component',-2,109,2,10005,0,0,'0000-00-00 00:00:00',1,1,'',0,'{\"show_pagination_categories\":\"0\",\"show_pagination_category\":\"1\",\"show_pagination_limit_categories\":\"0\",\"show_pagination_limit_category\":\"1\",\"show_ordering_categories\":\"0\",\"show_ordering_images\":\"1\",\"display_cat_name_title\":\"1\",\"display_cat_name_breadcrumbs\":\"0\",\"show_parent_categories\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',58,59,0,'*',0);
/*!40000 ALTER TABLE `wcz6s_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_menu_types`
--

DROP TABLE IF EXISTS `wcz6s_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_menu_types`
--

LOCK TABLES `wcz6s_menu_types` WRITE;
/*!40000 ALTER TABLE `wcz6s_menu_types` DISABLE KEYS */;
INSERT INTO `wcz6s_menu_types` VALUES (3,'ct-horizontal-menu','Content / Horizontal Menu','');
/*!40000 ALTER TABLE `wcz6s_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_messages`
--

DROP TABLE IF EXISTS `wcz6s_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_messages`
--

LOCK TABLES `wcz6s_messages` WRITE;
/*!40000 ALTER TABLE `wcz6s_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_messages_cfg`
--

DROP TABLE IF EXISTS `wcz6s_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_messages_cfg`
--

LOCK TABLES `wcz6s_messages_cfg` WRITE;
/*!40000 ALTER TABLE `wcz6s_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_modules`
--

DROP TABLE IF EXISTS `wcz6s_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_modules`
--

LOCK TABLES `wcz6s_modules` WRITE;
/*!40000 ALTER TABLE `wcz6s_modules` DISABLE KEYS */;
INSERT INTO `wcz6s_modules` VALUES (2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'Content / Horizontal Menu','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"ct-horizontal-menu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"vmenu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(88,'����� ���� 3','','<p><span style=\"color: #c7c7c7;\">������ ����</span> <span style=\"color: #c7c7c7;\"><span style=\"color: #c7c7c7;\">����</span></span><span style=\"color: #c7c7c7;\">�</span></p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>\n<p>�</p>',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-news-left\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(89,'News right','','<p><span style=\"color: #c4c4c4;\">���� ������� ������</span></p>',1,'position-6',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(90,'Footer','','<div class=\"footer-inner\">\r\n<div class=\"content-layout layout-item-0\">\r\n<div class=\"content-layout-row\">\r\n<div class=\"layout-cell\" style=\"width: 100%;\">\r\n<p><span style=\"font-size: 12px;\">Powered by <a href=\"http://vk.com/ruslan_ternovoy\" title=\"������:)\"><span style=\"color: #efc44d;\">Ruslan Ternovoy</span></a></span></p>\r\n<p><span style=\"font-size: 12px;\">Copyright � 2013. All Rights Reserved.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',1,'position-27',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(91,'Social','','<div style=\"padding-left: 15px; padding-top: 20px;\">\r\n<div class=\"rollover-vk\" title=\"� ��������\" onclick=\"window.location.href=\'http://vk.com/shenderov_v\'\"></div>\r\n<br />\r\n<div class=\"rollover-od\" title=\"�������������\" onclick=\"window.location.href=\'http://www.odnoklassniki.ru/profile/528658225636\'\"></div>\r\n<br />\r\n<div class=\"rollover-fb\" title=\"Facebook\" onclick=\"window.location.href=\'http://www.facebook.com/pages/%D0%92%D0%B0%D0%B4%D0%B8%D0%BC-%D0%A8%D0%B5%D0%BD%D0%B4%D0%B5%D1%80%D0%BE%D0%B2-%D1%85%D1%83%D0%B4%D0%BE%D0%B6%D0%BD%D0%B8%D0%BA/440057259388366\'\"></div>\r\n</div>',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(94,'News left','','',1,'position-20',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_articles_latest',1,1,'{\"catid\":[\"9\"],\"count\":\"10\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(95,'���� �������','','<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>\r\n<p>�</p>',1,'position-22',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(101,'share42','','<div class=\"share42init\" data-url=\"[url]\" data-title=\"[title]\" data-top1=\"150\" data-top2=\"20\" data-margin=\"0\"></div>\r\n<script type=\"text/javascript\"></script>',1,'position-5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(96,'Spacer left','','',1,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(97,'Spacer home right','','',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(98,'Spacer home left','','',1,'position-16',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(99,'News-new','','',1,'position-8',838,'2013-03-29 07:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,0,'{\"mode\":\"normal\",\"show_on_article_page\":\"1\",\"show_front\":\"show\",\"count\":\"0\",\"category_filtering_type\":\"1\",\"catid\":[\"10\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"item_heading\":\"6\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"20\",\"show_readmore\":\"0\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(100,'News-home','','',1,'position-17',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"1\",\"show_front\":\"show\",\"count\":\"0\",\"category_filtering_type\":\"1\",\"catid\":[\"10\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"item_heading\":\"6\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"100\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-news-home\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*');
/*!40000 ALTER TABLE `wcz6s_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_modules_menu`
--

DROP TABLE IF EXISTS `wcz6s_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_modules_menu`
--

LOCK TABLES `wcz6s_modules_menu` WRITE;
/*!40000 ALTER TABLE `wcz6s_modules_menu` DISABLE KEYS */;
INSERT INTO `wcz6s_modules_menu` VALUES (2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(79,0),(86,0),(87,103),(87,105),(87,107),(87,109),(87,111),(87,113),(88,103),(88,104),(88,106),(88,108),(88,110),(88,112),(88,114),(88,115),(88,116),(89,105),(89,107),(89,109),(89,111),(89,113),(90,103),(90,105),(90,107),(90,109),(90,111),(90,113),(91,101),(91,105),(91,107),(91,109),(91,111),(91,113),(94,103),(95,101),(95,103),(96,101),(96,105),(96,107),(96,109),(96,111),(96,113),(97,0),(98,0),(99,101),(99,105),(99,107),(99,109),(99,111),(99,113),(100,101),(100,103),(101,0);
/*!40000 ALTER TABLE `wcz6s_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_newsfeeds`
--

DROP TABLE IF EXISTS `wcz6s_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_newsfeeds`
--

LOCK TABLES `wcz6s_newsfeeds` WRITE;
/*!40000 ALTER TABLE `wcz6s_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_overrider`
--

DROP TABLE IF EXISTS `wcz6s_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_overrider`
--

LOCK TABLES `wcz6s_overrider` WRITE;
/*!40000 ALTER TABLE `wcz6s_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery`
--

LOCK TABLES `wcz6s_phocagallery` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery` DISABLE KEYS */;
INSERT INTO `wcz6s_phocagallery` VALUES (50,7,0,'2. ����� ��������, 40�30','2','pm4b/2.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,71977,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(51,7,0,'3. ������� �������, 40�30','3','pm4b/3.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,64576,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(49,7,0,'1. ����� � �����, 40�30','1','pm4b/1.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,59324,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(47,6,0,'17. ��� �� �����, 90�60','17','kmh/17.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,55909,1,1,0,'0000-00-00 00:00:00',17,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(48,6,0,'18. ����� �� ������, 90�50','18','kmh/18.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,52494,1,1,0,'0000-00-00 00:00:00',18,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(45,6,0,'15. ������ ������, 70�50','15','kmh/15.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,58174,1,1,0,'0000-00-00 00:00:00',15,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(46,6,0,'16. �������� �����, 90�60','16','kmh/16.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,53496,1,1,0,'0000-00-00 00:00:00',16,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(43,6,0,'13. �����, ����, 50�70','13','kmh/13.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,46584,1,1,0,'0000-00-00 00:00:00',13,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(44,6,0,'14. ������ �������� �����, 152�90','14','kmh/14.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,54407,1,1,0,'0000-00-00 00:00:00',14,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(41,6,0,'11. �� �������� ����, 90�60','11','kmh/11.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,48243,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(42,6,0,'12. ������� �����, 120�80','12','kmh/12.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,44792,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(38,6,0,'8. ����� � ������� �����, 140�80','8','kmh/8.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,52188,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(39,6,0,'9. �������, 114�76','9','kmh/9.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,51957,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(40,6,0,'10. ������ ����, 90�60','10','kmh/10.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,46571,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(36,6,0,'6. ���������, 100�65','6','kmh/6.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,43997,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(37,6,0,'7. � ������ �����, 150�80','7','kmh/7.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,45072,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(34,6,0,'4. �� ��������, 50�70','4','kmh/4.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,48765,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(35,6,0,'5. ����� ����, 50�70','5','kmh/5.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,53544,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(33,6,0,'3. �����, 150�90','3','kmh/3.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,32674,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(31,6,0,'1. ������� �����, 120�90','1','kmh/1.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,56100,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(32,6,0,'2. ������ ����� � ���� ���, 100�70','2','kmh/2.jpg','','2013-03-27 21:59:40',0,'','',0,'',0,'',0,49114,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(52,7,0,'4. ������� �������, 40�30','4','pm4b/4.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,50592,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(53,7,0,'5. ������� � �������, 40�30','5','pm4b/5.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,58920,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(54,7,0,'6. ������� �������, 50�40','6','pm4b/6.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,57835,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(55,7,0,'7. � ���� �������� ���� � ������ �� �������! 40�30','7','pm4b/7.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,63965,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(56,7,0,'8. �� �����, �����, �� ����� � �����! 40�30','8','pm4b/8.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,63331,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(57,7,0,'9. ������, 40�30','9','pm4b/9.jpg','','2013-03-27 22:31:58',0,'','',0,'',0,'',0,55424,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(58,4,0,'1. ������� � �������, 50�40','1','pmh/1.jpg','','2013-03-27 22:40:56',0,'','',0,'',0,'',0,50246,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(59,4,0,'2. ������� � �����, 50�40','2','pmh/2.jpg','','2013-03-27 22:40:56',0,'','',0,'',0,'',0,65420,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(60,4,0,'3. ������� ���� ������, 60�40','3','pmh/3.jpg','','2013-03-27 22:40:56',0,'','',0,'',0,'',0,46728,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(61,4,0,'4. �����, 40�30','4','pmh/4.jpg','','2013-03-27 22:40:56',0,'','',0,'',0,'',0,65356,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(62,3,0,'1. ��� �����, 60�50','1','ppb/1.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,59514,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(63,3,0,'2. ������ �����, 45�45','2','ppb/2.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,59758,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(64,3,0,'3. ������� � �������, 50�40','3','ppb/3.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,58425,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(65,3,0,'4. ����������, 55�45','4','ppb/4.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,66919,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(66,3,0,'5. ���� � ��������, 80�60','5','ppb/5.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,60507,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(67,3,0,'6. ������ �������, 50�40','6','ppb/6.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,45926,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(68,3,0,'7. ���������� ���������, 40�30','7','ppb/7.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,53503,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(69,3,0,'8. ������� �������, 50�40','8','ppb/8.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,52970,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(70,3,0,'9. ������� �������, 40�30','9','ppb/9.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,67960,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(71,3,0,'2. ������ �����, 45�45','10','ppb/10.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,60069,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(72,3,0,'11. �������� ����, 60�40','11','ppb/11.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,59288,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(73,3,0,'12. ������� �������, 40�30','12','ppb/12.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,54927,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(74,3,0,'13. ��������� �������, 55�45','13','ppb/13.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,65963,1,1,0,'0000-00-00 00:00:00',13,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(75,3,0,'14. ��������, ������..., 40�30','14','ppb/14.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,51986,1,1,0,'0000-00-00 00:00:00',14,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(76,3,0,'15. �������� �����, 50�40','15','ppb/15.jpg','','2013-03-28 00:18:17',0,'','',0,'',0,'',0,56929,1,1,0,'0000-00-00 00:00:00',15,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(77,5,0,'1. �������� �������, 40�30','1','pkb/1.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,69959,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(78,5,0,'2. ���������� ����, 40�30','2','pkb/2.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,61477,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(79,5,0,'3. �����������, 50�40','3','pkb/3.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,59668,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(80,5,0,'4. �����-�����, 40�30','4','pkb/4.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,58290,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(81,5,0,'5. �������� �������, 50�40','5','pkb/5.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,56129,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(82,5,0,'6. ���-���, 30�30','6','pkb/6.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,74740,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(83,5,0,'7. ����� ������, 40�30','7','pkb/7.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,62995,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(84,5,0,'8. ���������� ���������, 40�30','8','pkb/8.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,69118,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(85,5,0,'9. �� ��� ���, 80�60','9','pkb/9.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,51815,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(86,5,0,'10. ������� �������, 40�30','10','pkb/10.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,57726,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(87,5,0,'11. ������� �������, 40�40','11','pkb/11.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,70931,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(88,5,0,'12. ������ 40�30','12','pkb/12.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,52706,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(89,5,0,'13. ������ 40�30','13','pkb/13.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,60617,1,1,0,'0000-00-00 00:00:00',13,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(90,5,0,'14. ������ 40�30','14','pkb/14.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,57898,1,1,0,'0000-00-00 00:00:00',14,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(91,5,0,'15. �����, 40�30','15','pkb/15.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,59165,1,1,0,'0000-00-00 00:00:00',15,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(92,5,0,'16. ����� � �����, 55�45','16','pkb/16.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,57380,1,1,0,'0000-00-00 00:00:00',16,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(93,5,0,'17. ������ 40�30','17','pkb/17.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,56418,1,1,0,'0000-00-00 00:00:00',17,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(94,5,0,'18. ������� ���� ������ ���������, 40�30','18','pkb/18.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,53223,1,1,0,'0000-00-00 00:00:00',18,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(95,5,0,'19. ����������, 40�30','19','pkb/19.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,46671,1,1,0,'0000-00-00 00:00:00',19,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(96,5,0,'20. ������� �������, 40�30','20','pkb/20.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,57037,1,1,0,'0000-00-00 00:00:00',20,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(97,5,0,'21. ��������� �������, 40�30','21','pkb/21.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,54524,1,1,0,'0000-00-00 00:00:00',21,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(98,5,0,'22. ������� �������, 40�30','22','pkb/22.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,37814,1,1,0,'0000-00-00 00:00:00',22,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(99,5,0,'23. ������� �������, 50�40','23','pkb/23.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,53476,1,1,0,'0000-00-00 00:00:00',23,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(100,5,0,'24. ������� ������� � �������, 55�45','24','pkb/24.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,58132,1,1,0,'0000-00-00 00:00:00',24,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(101,5,0,'25. ������� �������, 40�30','25','pkb/25.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,56313,1,1,0,'0000-00-00 00:00:00',25,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(102,5,0,'26. ������ � ������� ���������, 50�40','26','pkb/26.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,44003,1,1,0,'0000-00-00 00:00:00',26,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(103,5,0,'27. ������� �������, 40�30','27','pkb/27.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,63702,1,1,0,'0000-00-00 00:00:00',27,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(104,5,0,'28. ������� �������, 40�30','28','pkb/28.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,65887,1,1,0,'0000-00-00 00:00:00',28,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(105,5,0,'29. ������� �������, 40�40','29','pkb/29.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,68222,1,1,0,'0000-00-00 00:00:00',29,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(106,5,0,'30. ������� �������, 40�30','30','pkb/30.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,53960,1,1,0,'0000-00-00 00:00:00',30,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),(107,5,0,'31. ������� �������, 40�30','31','pkb/31.jpg','','2013-03-28 00:31:30',0,'','',0,'',0,'',0,45154,1,1,0,'0000-00-00 00:00:00',31,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*');
/*!40000 ALTER TABLE `wcz6s_phocagallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_categories`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_categories`
--

LOCK TABLES `wcz6s_phocagallery_categories` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_categories` DISABLE KEYS */;
INSERT INTO `wcz6s_phocagallery_categories` VALUES (3,0,0,'�������, �������, ������','','portret-pastel-bumaga','','','','','2013-03-27 09:02:07',1,1,0,'0000-00-00 00:00:00',NULL,3,1,0,102,'0','0','0','ppb','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(4,0,0,'�������, �����, �����','','portret-maslo-kholst','','','','','2013-03-27 09:03:06',1,1,0,'0000-00-00 00:00:00',NULL,4,1,0,28,'0','0','0','pmh','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(5,0,0,'�������, ��������, ������','','portret-karandash-bumaga','','','','','2013-03-27 09:03:43',1,1,0,'0000-00-00 00:00:00',NULL,5,1,0,39,'0','0','0','pkb','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(6,0,0,'�������, �����, �����','','kartiny-maslo-kholst','','','','','2013-03-27 09:04:23',1,1,0,'0000-00-00 00:00:00',NULL,6,1,0,83,'0','0','0','kmh','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(7,0,0,'�������, ����� �/�, �����','','portret-maslo-ch-b-kholst','','','','','2013-03-27 09:09:00',1,1,0,'0000-00-00 00:00:00',NULL,7,1,0,38,'0','0','0','pm4b','','',0,'','','','','',0,'',NULL,'','',NULL,'*');
/*!40000 ALTER TABLE `wcz6s_phocagallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_comments`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_comments`
--

LOCK TABLES `wcz6s_phocagallery_comments` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_fb_users`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_fb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_fb_users`
--

LOCK TABLES `wcz6s_phocagallery_fb_users` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_fb_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_fb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_img_comments`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_img_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_img_comments`
--

LOCK TABLES `wcz6s_phocagallery_img_comments` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_img_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_img_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_img_votes`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_img_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_img_votes`
--

LOCK TABLES `wcz6s_phocagallery_img_votes` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_img_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_img_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_img_votes_statistics`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_img_votes_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_img_votes_statistics`
--

LOCK TABLES `wcz6s_phocagallery_img_votes_statistics` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_img_votes_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_img_votes_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_tags`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_tags`
--

LOCK TABLES `wcz6s_phocagallery_tags` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_tags_ref`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_tags_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_tags_ref`
--

LOCK TABLES `wcz6s_phocagallery_tags_ref` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_tags_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_tags_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_user`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_user`
--

LOCK TABLES `wcz6s_phocagallery_user` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_votes`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_votes`
--

LOCK TABLES `wcz6s_phocagallery_votes` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_phocagallery_votes_statistics`
--

DROP TABLE IF EXISTS `wcz6s_phocagallery_votes_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_phocagallery_votes_statistics`
--

LOCK TABLES `wcz6s_phocagallery_votes_statistics` WRITE;
/*!40000 ALTER TABLE `wcz6s_phocagallery_votes_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_phocagallery_votes_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_redirect_links`
--

DROP TABLE IF EXISTS `wcz6s_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_redirect_links`
--

LOCK TABLES `wcz6s_redirect_links` WRITE;
/*!40000 ALTER TABLE `wcz6s_redirect_links` DISABLE KEYS */;
INSERT INTO `wcz6s_redirect_links` VALUES (1,'http://localhost/shender_new/','','http://localhost/shender_new/index.php/ct-menu-item-5','',5,0,'2013-03-20 22:50:13','0000-00-00 00:00:00'),(2,'http://localhost/shender_new/index.php/ct-menu-item-3','','http://localhost/shender_new/','',2,0,'2013-03-23 17:09:02','0000-00-00 00:00:00'),(3,'http://localhost/shender_new/index.php/ct-menu-item-5','','http://localhost/shender_new/','',1,0,'2013-03-23 17:09:07','0000-00-00 00:00:00'),(4,'http://localhost/shender_new/index.php/ct-menu-item-9','','http://localhost/shender_new/','',3,0,'2013-03-23 17:09:15','0000-00-00 00:00:00'),(5,'http://localhost/shender_new/index.php/ct-menu-item-11','','http://localhost/shender_new/','',1,0,'2013-03-23 17:38:18','0000-00-00 00:00:00'),(6,'http://localhost/shender_new/index.php/..shender_new/templates/vadimsite2/images/images/page.jpeg','','http://localhost/shender_new/index.php/ct-menu-item-3','',3,0,'2013-03-24 19:16:58','0000-00-00 00:00:00'),(7,'http://localhost/shender_new/index.php/shender_new/templates/vadimsite2/images/images/page.jpeg','','http://localhost/shender_new/index.php/ct-menu-item-3','',1,0,'2013-03-24 19:17:21','0000-00-00 00:00:00'),(8,'http://localhost/shender_new/index.php/..shender_new/templates/vadimsite2/images/page.jpeg','','http://localhost/shender_new/index.php/ct-menu-item-3','',1,0,'2013-03-24 19:18:19','0000-00-00 00:00:00'),(9,'http://localhost/shender_new/index.php/shender_new/templates/vadimsite2/images/bg_home.jpeg','','http://localhost/shender_new/index.php/9-articles/12-5','',4,0,'2013-03-24 21:41:20','0000-00-00 00:00:00'),(10,'http://localhost/shender_new/index.php/templates/vadimsite2/images/bg_other.jpg','','http://localhost/shender_new/index.php/ct-menu-item-3/9-articles','',30,0,'2013-03-24 22:30:08','0000-00-00 00:00:00'),(11,'http://localhost/shender_new/index.php/ct-menu-item-3/templates/vadimsite2/images/bg_other.jpg','','http://localhost/shender_new/index.php/ct-menu-item-3/9-articles/9-2','',4,0,'2013-03-24 22:42:14','0000-00-00 00:00:00'),(12,'http://localhost/shender_new/index.php/ct-menu-item-7/tp=1','','','',1,0,'2013-03-25 08:47:06','0000-00-00 00:00:00'),(13,'http://localhost/shender_new/index.php/ct-menu-item-7','','http://localhost/shender_new/','',2,0,'2013-03-25 15:13:53','0000-00-00 00:00:00'),(14,'http://localhost/shender_new/index.php?Itemid=109','','http://localhost/shender_new/index.php/ct-menu-item-5','',1,0,'2013-03-26 09:23:59','0000-00-00 00:00:00'),(15,'http://vadimshenderov.com/index.php/templates/vadimsite2/images/bg_other.jpg','','http://vadimshenderov.com/index.php/ct-menu-item-3/15-aktsiya-dlya-vlyubljonnykh','',50,0,'2013-03-26 23:56:52','0000-00-00 00:00:00'),(16,'http://vadimshenderov.com/index.php/~/templates/vadimsite2/images/bg_other.jpg','','http://vadimshenderov.com/index.php/ct-menu-item-3','',2,0,'2013-03-27 00:05:35','0000-00-00 00:00:00'),(17,'http://vadimshenderov.com/index.php/templates/vadimsite2/images/bg_home.jpeg','','http://vadimshenderov.com/index.php/9-articles/12-5','',1,0,'2013-03-27 00:29:39','0000-00-00 00:00:00'),(18,'http://vadimshenderov.com/index.php/ct-menu-item-7/category/2-maslo','','','',1,0,'2013-03-28 03:24:06','0000-00-00 00:00:00'),(19,'http://vadimshenderov.com/index.php/ct-menu-item-7/category/1-karandash','','','',1,0,'2013-03-28 03:24:30','0000-00-00 00:00:00'),(20,'http://www.vadimshenderov.com/index.php/templates/vadimsite2/images/bg_other.jpg','','http://www.vadimshenderov.com/index.php/ct-menu-item-3/15-aktsiya-dlya-vlyubljonnykh','',2,0,'2013-03-28 18:17:19','0000-00-00 00:00:00'),(21,'http://vadimshenderov.com/index.php/ct-menu-item-7/templates/vadimsite2/images/bg_home.jpeg','','http://vadimshenderov.com/index.php/ct-menu-item-7/category/3-portret-pastel-bumaga','',2,0,'2013-04-03 12:02:38','0000-00-00 00:00:00'),(22,'http://vadimshenderov.com/index.php/ct-menu-item-3','','http://vadimshenderov.com/index.php/galery','',4,0,'2013-04-03 12:04:39','0000-00-00 00:00:00'),(23,'http://vadimshenderov.com/index.php/galery','','http://vadimshenderov.com/index.php/galery','',1,0,'2013-04-03 12:04:46','0000-00-00 00:00:00'),(24,'http://vadimshenderov.com/index.php/ct-menu-item-5','','http://vadimshenderov.com/index.php/news','',12,0,'2013-04-03 12:10:23','0000-00-00 00:00:00'),(25,'http://vadimshenderov.com/index.php/ct-menu-item-9','','http://vadimshenderov.com/index.php/ct-menu-item-9','',9,0,'2013-04-03 12:17:00','0000-00-00 00:00:00'),(26,'http://vadimshenderov.com/index.php/ct-menu-item-11','','http://vadimshenderov.com/index.php/ct-menu-item-11','',5,0,'2013-04-03 12:18:15','0000-00-00 00:00:00'),(27,'http://vadimshenderov.com/index.php/ct-menu-item-7','','','',3,0,'2013-04-04 12:29:01','0000-00-00 00:00:00'),(28,'http://vadimshenderov.com/index.php/templates/vadimsite2/images/bg_other.jpeg','','http://vadimshenderov.com/index.php/news/16-dobro-pozhalovat-na-moj-sajt','',5,0,'2013-04-07 18:14:51','0000-00-00 00:00:00'),(29,'http://vadimshenderov.com/index.php/index.php/templates/vadimsite2/images/bg_other.jpeg','','http://vadimshenderov.com/index.php/news/16-dobro-pozhalovat-na-moj-sajt','',1,0,'2013-04-07 18:21:53','0000-00-00 00:00:00'),(30,'http://vadimshenderov.com/index.php/vadimsite2/images/bg_other.jpeg','','http://vadimshenderov.com/index.php/news/16-dobro-pozhalovat-na-moj-sajt','',1,0,'2013-04-07 18:22:22','0000-00-00 00:00:00'),(31,'http://vadimshenderov.com/wp-admin/','','','',1,0,'2013-04-09 12:25:45','0000-00-00 00:00:00'),(32,'http://vadimshenderov.com/wordpress/wp-admin/','','','',1,0,'2013-04-09 12:25:46','0000-00-00 00:00:00'),(33,'http://vadimshenderov.com/blog/wp-admin/','','','',1,0,'2013-04-09 12:25:47','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `wcz6s_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_schemas`
--

DROP TABLE IF EXISTS `wcz6s_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_schemas`
--

LOCK TABLES `wcz6s_schemas` WRITE;
/*!40000 ALTER TABLE `wcz6s_schemas` DISABLE KEYS */;
INSERT INTO `wcz6s_schemas` VALUES (700,'2.5.8');
/*!40000 ALTER TABLE `wcz6s_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_session`
--

DROP TABLE IF EXISTS `wcz6s_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_session`
--

LOCK TABLES `wcz6s_session` WRITE;
/*!40000 ALTER TABLE `wcz6s_session` DISABLE KEYS */;
INSERT INTO `wcz6s_session` VALUES ('9991ecd9eebef503372d15fdb82bfe4e',0,1,'1365540210','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1365540210;s:18:\"session.timer.last\";i:1365540210;s:17:\"session.timer.now\";i:1365540210;s:24:\"session.client.forwarded\";s:13:\"217.20.145.17\";s:22:\"session.client.browser\";s:36:\"OdklBot/1.0 (klass@odnoklassniki.ru)\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'',''),('b3eaefb8b150d94bba9a31f720c39843',1,0,'1365542858','__default|a:9:{s:15:\"session.counter\";i:22;s:19:\"session.timer.start\";i:1365541884;s:18:\"session.timer.last\";i:1365542858;s:17:\"session.timer.now\";i:1365542858;s:24:\"session.client.forwarded\";s:12:\"10.11.146.52\";s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":5:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}s:11:\"com_content\";O:8:\"stdClass\":1:{s:8:\"articles\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":7:{s:6:\"search\";s:0:\"\";s:6:\"access\";i:0;s:9:\"author_id\";s:0:\"\";s:9:\"published\";s:1:\"*\";s:11:\"category_id\";s:0:\"\";s:5:\"level\";i:0;s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";i:0;s:8:\"ordercol\";s:7:\"a.title\";s:9:\"orderdirn\";s:3:\"asc\";}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";s:2:\"20\";}}s:13:\"com_templates\";O:8:\"stdClass\":2:{s:6:\"styles\";O:8:\"stdClass\":1:{s:10:\"limitstart\";i:0;}s:4:\"edit\";O:8:\"stdClass\":1:{s:5:\"style\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"838\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:6:\"ruster\";s:5:\"email\";s:19:\"fortestsite@mail.ru\";s:8:\"password\";s:65:\"dff05aa8234d03f9e525f54bde7dc06d:fX9fsH6jx708l5Qg4oYznp0KIDrU4h6w\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-03-19 19:24:59\";s:13:\"lastvisitDate\";s:19:\"2013-04-09 08:02:21\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"1a5a339ed377706a2a771e94ec47a477\";}',838,'ruster',''),('dafad949f29e43d308933778ed58067d',0,1,'1365543604','__default|a:9:{s:15:\"session.counter\";i:19;s:19:\"session.timer.start\";i:1365542247;s:18:\"session.timer.last\";i:1365542407;s:17:\"session.timer.now\";i:1365543602;s:24:\"session.client.forwarded\";s:12:\"10.11.146.52\";s:22:\"session.client.browser\";s:74:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:15.0) Gecko/20100101 Firefox/15.0.1\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"111e0141e24189ed5f5108db2dcad88c\";}',0,'',''),('d1b7a9545f5460b3c2f37c7fc9436eb9',0,1,'1365542236','__default|a:8:{s:15:\"session.counter\";i:22;s:19:\"session.timer.start\";i:1365539919;s:18:\"session.timer.last\";i:1365542234;s:17:\"session.timer.now\";i:1365542236;s:24:\"session.client.forwarded\";s:12:\"10.11.146.52\";s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'',''),('a2bc1d3882d5a442c3f29ccd8d0ef8a3',0,1,'1365540219','__default|a:8:{s:15:\"session.counter\";i:15;s:19:\"session.timer.start\";i:1365539919;s:18:\"session.timer.last\";i:1365540207;s:17:\"session.timer.now\";i:1365540219;s:24:\"session.client.forwarded\";s:13:\"109.122.3.159\";s:22:\"session.client.browser\";s:64:\"Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.15\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'','');
/*!40000 ALTER TABLE `wcz6s_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_template_styles`
--

DROP TABLE IF EXISTS `wcz6s_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_template_styles`
--

LOCK TABLES `wcz6s_template_styles` WRITE;
/*!40000 ALTER TABLE `wcz6s_template_styles` DISABLE KEYS */;
INSERT INTO `wcz6s_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'vadimsite2',0,'1','Vadimsite2 - Default','{}');
/*!40000 ALTER TABLE `wcz6s_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_update_categories`
--

DROP TABLE IF EXISTS `wcz6s_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_update_categories`
--

LOCK TABLES `wcz6s_update_categories` WRITE;
/*!40000 ALTER TABLE `wcz6s_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_update_sites`
--

DROP TABLE IF EXISTS `wcz6s_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_update_sites`
--

LOCK TABLES `wcz6s_update_sites` WRITE;
/*!40000 ALTER TABLE `wcz6s_update_sites` DISABLE KEYS */;
INSERT INTO `wcz6s_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',0,1363721144),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',0,1363721144),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',0,1363721144);
/*!40000 ALTER TABLE `wcz6s_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_update_sites_extensions`
--

DROP TABLE IF EXISTS `wcz6s_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_update_sites_extensions`
--

LOCK TABLES `wcz6s_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `wcz6s_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `wcz6s_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10004);
/*!40000 ALTER TABLE `wcz6s_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_updates`
--

DROP TABLE IF EXISTS `wcz6s_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_updates`
--

LOCK TABLES `wcz6s_updates` WRITE;
/*!40000 ALTER TABLE `wcz6s_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_user_notes`
--

DROP TABLE IF EXISTS `wcz6s_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_user_notes`
--

LOCK TABLES `wcz6s_user_notes` WRITE;
/*!40000 ALTER TABLE `wcz6s_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_user_profiles`
--

DROP TABLE IF EXISTS `wcz6s_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_user_profiles`
--

LOCK TABLES `wcz6s_user_profiles` WRITE;
/*!40000 ALTER TABLE `wcz6s_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_user_usergroup_map`
--

DROP TABLE IF EXISTS `wcz6s_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_user_usergroup_map`
--

LOCK TABLES `wcz6s_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `wcz6s_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `wcz6s_user_usergroup_map` VALUES (838,8);
/*!40000 ALTER TABLE `wcz6s_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_usergroups`
--

DROP TABLE IF EXISTS `wcz6s_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_usergroups`
--

LOCK TABLES `wcz6s_usergroups` WRITE;
/*!40000 ALTER TABLE `wcz6s_usergroups` DISABLE KEYS */;
INSERT INTO `wcz6s_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `wcz6s_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_users`
--

DROP TABLE IF EXISTS `wcz6s_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=839 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_users`
--

LOCK TABLES `wcz6s_users` WRITE;
/*!40000 ALTER TABLE `wcz6s_users` DISABLE KEYS */;
INSERT INTO `wcz6s_users` VALUES (838,'Super User','ruster','fortestsite@mail.ru','dff05aa8234d03f9e525f54bde7dc06d:fX9fsH6jx708l5Qg4oYznp0KIDrU4h6w','deprecated',0,1,'2013-03-19 19:24:59','2013-04-09 21:11:51','0','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `wcz6s_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_viewlevels`
--

DROP TABLE IF EXISTS `wcz6s_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_viewlevels`
--

LOCK TABLES `wcz6s_viewlevels` WRITE;
/*!40000 ALTER TABLE `wcz6s_viewlevels` DISABLE KEYS */;
INSERT INTO `wcz6s_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `wcz6s_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcz6s_weblinks`
--

DROP TABLE IF EXISTS `wcz6s_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcz6s_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcz6s_weblinks`
--

LOCK TABLES `wcz6s_weblinks` WRITE;
/*!40000 ALTER TABLE `wcz6s_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcz6s_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-10  0:41:30
