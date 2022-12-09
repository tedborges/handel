-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (6,'action_scheduler/migration_hook','complete','2022-11-07 02:31:59','2022-11-06 23:31:59','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667788319;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667788319;}',1,1,'2022-11-07 02:32:17','2022-11-06 23:32:17',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (7,'action_scheduler/migration_hook','canceled','2022-11-07 02:32:00','2022-11-06 23:32:00','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667788320;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667788320;}',2,0,'2022-11-07 02:32:15','2022-11-06 23:32:15',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (8,'woocommerce_cleanup_draft_orders','complete','2022-11-07 02:31:05','2022-11-06 23:31:05','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1667788265;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1667788265;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-07 02:31:06','2022-11-06 23:31:06',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (9,'woocommerce_cleanup_draft_orders','complete','2022-11-08 02:31:06','2022-11-07 23:31:06','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1667874666;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1667874666;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-09 19:19:14','2022-11-09 16:19:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (10,'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','[]','O:28:\"ActionScheduler_NullSchedule\":0:{}',0,1,'2022-11-07 03:28:39','2022-11-07 00:28:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (11,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-07 03:28:23','2022-11-07 00:28:23','[11,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667791703;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667791703;}',3,1,'2022-11-07 03:28:39','2022-11-07 00:28:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (12,'woocommerce_cleanup_draft_orders','complete','2022-11-10 19:19:14','2022-11-10 16:19:14','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668107954;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668107954;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-10 22:51:24','2022-11-10 19:51:24',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (13,'wc-admin_import_customers','complete','2022-11-09 19:34:09','2022-11-09 16:34:09','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668022449;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668022449;}',4,1,'2022-11-09 19:35:15','2022-11-09 16:35:15',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (14,'wc-admin_import_customers','complete','2022-11-10 16:30:00','2022-11-10 13:30:00','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668097800;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668097800;}',4,1,'2022-11-10 16:48:02','2022-11-10 13:48:02',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (15,'woocommerce_run_product_attribute_lookup_regeneration_callback','complete','2022-11-10 17:18:58','2022-11-10 14:18:58','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668100738;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668100738;}',3,1,'2022-11-10 17:19:13','2022-11-10 14:19:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (16,'woocommerce_run_product_attribute_lookup_regeneration_callback','complete','2022-11-10 17:18:57','2022-11-10 14:18:57','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668100737;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668100737;}',3,1,'2022-11-10 17:19:11','2022-11-10 14:19:11',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (17,'woocommerce_run_on_woocommerce_admin_updated','complete','2022-11-10 17:18:58','2022-11-10 14:18:58','[\"Automattic\\\\WooCommerce\\\\Admin\\\\RemoteInboxNotifications\\\\RemoteInboxNotificationsEngine\",\"run_on_woocommerce_admin_updated\"]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668100738;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668100738;}',5,1,'2022-11-10 17:19:13','2022-11-10 14:19:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (18,'woocommerce_run_on_woocommerce_admin_updated','complete','2022-11-10 17:18:58','2022-11-10 14:18:58','[\"Automattic\\\\WooCommerce\\\\Admin\\\\RemoteInboxNotifications\\\\RemoteInboxNotificationsEngine\",\"run_on_woocommerce_admin_updated\"]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668100738;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668100738;}',6,1,'2022-11-10 17:19:14','2022-11-10 14:19:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (19,'woocommerce_cleanup_draft_orders','complete','2022-11-11 22:51:24','2022-11-11 19:51:24','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668207084;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668207084;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-14 18:58:27','2022-11-14 15:58:27',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (20,'wc_schedule_update_product_default_cat','complete','2022-11-10 23:31:13','2022-11-10 20:31:13','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668123073;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668123073;}',7,1,'2022-11-10 23:31:58','2022-11-10 20:31:58',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (21,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:42:11','2022-11-10 20:42:11','[11,3]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668123731;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668123731;}',3,1,'2022-11-10 23:42:13','2022-11-10 20:42:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (22,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:45:46','2022-11-10 20:45:46','[26,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668123946;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668123946;}',3,1,'2022-11-10 23:45:47','2022-11-10 20:45:47',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (23,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:47:13','2022-11-10 20:47:13','[29,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124033;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124033;}',3,1,'2022-11-10 23:48:09','2022-11-10 20:48:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (24,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:51:36','2022-11-10 20:51:36','[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124296;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124296;}',3,1,'2022-11-10 23:52:04','2022-11-10 20:52:04',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (25,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:53:16','2022-11-10 20:53:16','[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124396;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124396;}',3,1,'2022-11-10 23:54:35','2022-11-10 20:54:35',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (26,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:54:36','2022-11-10 20:54:36','[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124476;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124476;}',3,1,'2022-11-10 23:54:37','2022-11-10 20:54:37',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (27,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:55:20','2022-11-10 20:55:20','[33,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124520;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124520;}',3,1,'2022-11-10 23:55:37','2022-11-10 20:55:37',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (28,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:55:23','2022-11-10 20:55:23','[34,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124523;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124523;}',3,1,'2022-11-10 23:55:38','2022-11-10 20:55:38',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (29,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:55:27','2022-11-10 20:55:27','[35,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124527;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124527;}',3,1,'2022-11-10 23:55:39','2022-11-10 20:55:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (30,'adjust_download_permissions','complete','2022-11-10 23:55:30','2022-11-10 20:55:30','[31]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124530;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124530;}',0,1,'2022-11-10 23:55:39','2022-11-10 20:55:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (31,'adjust_download_permissions','complete','2022-11-10 23:57:11','2022-11-10 20:57:11','[31]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124631;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124631;}',0,1,'2022-11-10 23:57:16','2022-11-10 20:57:16',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (32,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:57:13','2022-11-10 20:57:13','[33,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124633;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124633;}',3,1,'2022-11-10 23:57:17','2022-11-10 20:57:17',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (33,'adjust_download_permissions','complete','2022-11-10 23:57:16','2022-11-10 20:57:16','[31]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124636;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124636;}',0,1,'2022-11-10 23:57:19','2022-11-10 20:57:19',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (34,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:59:41','2022-11-10 20:59:41','[35,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124781;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124781;}',3,1,'2022-11-10 23:59:46','2022-11-10 20:59:46',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (35,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:59:42','2022-11-10 20:59:42','[34,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124782;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124782;}',3,1,'2022-11-10 23:59:47','2022-11-10 20:59:47',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (36,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:59:44','2022-11-10 20:59:44','[33,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124784;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124784;}',3,1,'2022-11-10 23:59:48','2022-11-10 20:59:48',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (37,'adjust_download_permissions','complete','2022-11-10 23:59:45','2022-11-10 20:59:45','[31]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124785;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124785;}',0,1,'2022-11-10 23:59:48','2022-11-10 20:59:48',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (38,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-10 23:59:45','2022-11-10 20:59:45','[31,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124785;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124785;}',3,1,'2022-11-10 23:59:49','2022-11-10 20:59:49',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (39,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:00:44','2022-11-10 21:00:44','[35,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124844;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124844;}',3,1,'2022-11-11 00:00:50','2022-11-10 21:00:50',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (40,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:00:46','2022-11-10 21:00:46','[34,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124846;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124846;}',3,1,'2022-11-11 00:00:51','2022-11-10 21:00:51',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (41,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:00:47','2022-11-10 21:00:47','[33,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124847;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124847;}',3,1,'2022-11-11 00:00:52','2022-11-10 21:00:52',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (42,'adjust_download_permissions','complete','2022-11-11 00:00:48','2022-11-10 21:00:48','[31]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668124848;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668124848;}',0,1,'2022-11-11 00:00:52','2022-11-10 21:00:52',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (43,'adjust_download_permissions','complete','2022-11-11 00:09:30','2022-11-10 21:09:30','[31]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125370;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125370;}',0,1,'2022-11-11 00:10:18','2022-11-10 21:10:18',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (44,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:09:30','2022-11-10 21:09:30','[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125370;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125370;}',3,1,'2022-11-11 00:10:18','2022-11-10 21:10:18',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (45,'wc-admin_import_customers','complete','2022-11-11 00:09:47','2022-11-10 21:09:47','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125387;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125387;}',4,1,'2022-11-11 00:10:19','2022-11-10 21:10:19',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (46,'adjust_download_permissions','complete','2022-11-11 00:10:45','2022-11-10 21:10:45','[31]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125445;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125445;}',0,1,'2022-11-11 00:11:01','2022-11-10 21:11:01',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (47,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:10:56','2022-11-10 21:10:56','[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125456;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125456;}',3,1,'2022-11-11 00:11:03','2022-11-10 21:11:03',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (48,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:17:28','2022-11-10 21:17:28','[37,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125848;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125848;}',3,1,'2022-11-11 00:17:43','2022-11-10 21:17:43',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (49,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:19:25','2022-11-10 21:19:25','[40,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125965;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125965;}',3,1,'2022-11-11 00:20:08','2022-11-10 21:20:08',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (50,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:19:29','2022-11-10 21:19:29','[41,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125969;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125969;}',3,1,'2022-11-11 00:20:09','2022-11-10 21:20:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (51,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:19:32','2022-11-10 21:19:32','[42,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125972;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125972;}',3,1,'2022-11-11 00:20:10','2022-11-10 21:20:10',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (52,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:19:36','2022-11-10 21:19:36','[43,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125976;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125976;}',3,1,'2022-11-11 00:20:11','2022-11-10 21:20:11',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (53,'adjust_download_permissions','complete','2022-11-11 00:19:38','2022-11-10 21:19:38','[40]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125978;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125978;}',0,1,'2022-11-11 00:20:11','2022-11-10 21:20:11',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (54,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:19:38','2022-11-10 21:19:38','[40,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668125978;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668125978;}',3,1,'2022-11-11 00:20:12','2022-11-10 21:20:12',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (55,'adjust_download_permissions','complete','2022-11-11 00:21:42','2022-11-10 21:21:42','[40]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126102;}',0,1,'2022-11-11 00:22:18','2022-11-10 21:22:18',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (56,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:21:42','2022-11-10 21:21:42','[40,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126102;}',3,1,'2022-11-11 00:22:20','2022-11-10 21:22:20',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (57,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:22:22','2022-11-10 21:22:22','[44,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126142;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126142;}',3,1,'2022-11-11 00:22:25','2022-11-10 21:22:25',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (58,'adjust_download_permissions','complete','2022-11-11 00:22:24','2022-11-10 21:22:24','[40]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126144;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126144;}',0,1,'2022-11-11 00:22:26','2022-11-10 21:22:26',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (59,'adjust_download_permissions','complete','2022-11-11 00:22:36','2022-11-10 21:22:36','[40]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126156;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126156;}',0,1,'2022-11-11 00:23:24','2022-11-10 21:23:24',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (60,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:22:40','2022-11-10 21:22:40','[44,3]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126160;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126160;}',3,1,'2022-11-11 00:23:25','2022-11-10 21:23:25',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (61,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:22:42','2022-11-10 21:22:42','[44,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126162;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126162;}',3,1,'2022-11-11 00:23:26','2022-11-10 21:23:26',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (62,'adjust_download_permissions','complete','2022-11-11 00:23:24','2022-11-10 21:23:24','[40]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126204;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126204;}',0,1,'2022-11-11 00:23:28','2022-11-10 21:23:28',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (63,'adjust_download_permissions','complete','2022-11-11 00:24:21','2022-11-10 21:24:21','[40]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126261;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126261;}',0,1,'2022-11-11 00:24:37','2022-11-10 21:24:37',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (64,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:24:35','2022-11-10 21:24:35','[40,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126275;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126275;}',3,1,'2022-11-11 00:24:38','2022-11-10 21:24:38',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (65,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:24:53','2022-11-10 21:24:53','[45,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126293;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126293;}',3,1,'2022-11-11 00:25:30','2022-11-10 21:25:30',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (66,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:27:39','2022-11-10 21:27:39','[51,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126459;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126459;}',3,1,'2022-11-11 00:27:57','2022-11-10 21:27:57',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (67,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:27:43','2022-11-10 21:27:43','[52,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126463;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126463;}',3,1,'2022-11-11 00:27:58','2022-11-10 21:27:58',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (68,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:27:48','2022-11-10 21:27:48','[53,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126468;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126468;}',3,1,'2022-11-11 00:27:59','2022-11-10 21:27:59',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (69,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:27:52','2022-11-10 21:27:52','[54,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126472;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126472;}',3,1,'2022-11-11 00:28:00','2022-11-10 21:28:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (70,'adjust_download_permissions','complete','2022-11-11 00:27:55','2022-11-10 21:27:55','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126475;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126475;}',0,1,'2022-11-11 00:28:00','2022-11-10 21:28:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (71,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:27:55','2022-11-10 21:27:55','[51,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126475;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126475;}',3,1,'2022-11-11 00:28:01','2022-11-10 21:28:01',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (72,'adjust_download_permissions','complete','2022-11-11 00:30:01','2022-11-10 21:30:01','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126601;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126601;}',0,1,'2022-11-11 00:30:07','2022-11-10 21:30:07',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (73,'adjust_download_permissions','complete','2022-11-11 00:30:47','2022-11-10 21:30:47','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126647;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126647;}',0,1,'2022-11-11 00:31:15','2022-11-10 21:31:15',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (74,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:30:47','2022-11-10 21:30:47','[51,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126647;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126647;}',3,1,'2022-11-11 00:31:17','2022-11-10 21:31:17',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (75,'adjust_download_permissions','complete','2022-11-11 00:31:16','2022-11-10 21:31:16','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126676;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126676;}',0,1,'2022-11-11 00:31:19','2022-11-10 21:31:19',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (76,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:31:57','2022-11-10 21:31:57','[55,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126717;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126717;}',3,1,'2022-11-11 00:32:01','2022-11-10 21:32:01',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (77,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:33:34','2022-11-10 21:33:34','[56,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126814;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126814;}',3,1,'2022-11-11 00:34:01','2022-11-10 21:34:01',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (78,'woocommerce_run_product_attribute_lookup_update_callback','complete','2022-11-11 00:34:44','2022-11-10 21:34:44','[57,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668126884;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668126884;}',3,1,'2022-11-11 00:35:18','2022-11-10 21:35:18',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (79,'woocommerce_cleanup_draft_orders','complete','2022-11-15 18:58:27','2022-11-15 15:58:27','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668538707;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668538707;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-19 19:10:47','2022-11-19 16:10:47',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (80,'woocommerce_cleanup_draft_orders','complete','2022-11-20 19:10:48','2022-11-20 16:10:48','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668971448;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668971448;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-20 19:12:39','2022-11-20 16:12:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (81,'wc-admin_import_customers','complete','2022-11-20 18:48:45','2022-11-20 15:48:45','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1668970125;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1668970125;}',4,1,'2022-11-20 18:48:59','2022-11-20 15:48:59',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (82,'woocommerce_cleanup_draft_orders','complete','2022-11-21 19:12:40','2022-11-21 16:12:40','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669057960;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669057960;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-21 19:17:58','2022-11-21 16:17:58',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (83,'wc-admin_import_customers','complete','2022-11-21 14:09:12','2022-11-21 11:09:12','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1669039752;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1669039752;}',4,1,'2022-11-21 14:11:49','2022-11-21 11:11:49',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (84,'woocommerce_cleanup_draft_orders','complete','2022-11-22 19:17:58','2022-11-22 16:17:58','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669144678;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669144678;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-23 01:13:36','2022-11-22 22:13:36',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (85,'woocommerce_cleanup_draft_orders','complete','2022-11-24 01:13:36','2022-11-23 22:13:36','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669252416;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669252416;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-11-24 03:31:36','2022-11-24 00:31:36',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (86,'wc-admin_import_customers','complete','2022-11-23 02:52:41','2022-11-22 23:52:41','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1669171961;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1669171961;}',4,1,'2022-11-23 02:53:03','2022-11-22 23:53:03',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (87,'woocommerce_cleanup_draft_orders','pending','2022-11-25 03:31:36','2022-11-25 00:31:36','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669347096;s:18:\"\0*\0first_timestamp\";i:1667788265;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669347096;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (3,'woocommerce-db-updates');
INSERT INTO `wp_actionscheduler_groups` VALUES (4,'wc-admin-data');
INSERT INTO `wp_actionscheduler_groups` VALUES (5,'woocommerce-remote-inbox-engine');
INSERT INTO `wp_actionscheduler_groups` VALUES (6,'woocommerce-remote-inbox-engine');
INSERT INTO `wp_actionscheduler_groups` VALUES (7,'wc_update_product_default_cat');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,6,'ação criada','2022-11-07 02:31:00','2022-11-06 23:31:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,7,'ação criada','2022-11-07 02:31:00','2022-11-06 23:31:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,8,'ação criada','2022-11-07 02:31:05','2022-11-06 23:31:05');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,8,'ação iniciada por WP Cron','2022-11-07 02:31:06','2022-11-06 23:31:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,8,'ação completa por WP Cron','2022-11-07 02:31:06','2022-11-06 23:31:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,9,'ação criada','2022-11-07 02:31:06','2022-11-06 23:31:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,6,'ação iniciada por WP Cron','2022-11-07 02:32:16','2022-11-06 23:32:16');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,7,'ação cancelada','2022-11-07 02:32:16','2022-11-06 23:32:16');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,6,'ação completa por WP Cron','2022-11-07 02:32:17','2022-11-06 23:32:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,7,'ação ignorada por WP Cron','2022-11-07 02:32:17','2022-11-06 23:32:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,10,'ação criada','2022-11-07 03:28:17','2022-11-07 00:28:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,11,'ação criada','2022-11-07 03:28:22','2022-11-07 00:28:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,10,'ação iniciada por Async Request','2022-11-07 03:28:38','2022-11-07 00:28:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,10,'ação completa por Async Request','2022-11-07 03:28:38','2022-11-07 00:28:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (15,11,'ação iniciada por Async Request','2022-11-07 03:28:39','2022-11-07 00:28:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,11,'ação completa por Async Request','2022-11-07 03:28:39','2022-11-07 00:28:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,9,'ação iniciada por WP Cron','2022-11-09 19:19:13','2022-11-09 16:19:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,9,'ação completa por WP Cron','2022-11-09 19:19:14','2022-11-09 16:19:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (19,12,'ação criada','2022-11-09 19:19:14','2022-11-09 16:19:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (20,13,'ação criada','2022-11-09 19:34:04','2022-11-09 16:34:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (21,13,'ação iniciada por WP Cron','2022-11-09 19:35:15','2022-11-09 16:35:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (22,13,'ação completa por WP Cron','2022-11-09 19:35:15','2022-11-09 16:35:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (23,14,'ação criada','2022-11-10 16:29:55','2022-11-10 13:29:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (24,14,'ação iniciada por WP Cron','2022-11-10 16:48:01','2022-11-10 13:48:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (25,14,'ação completa por WP Cron','2022-11-10 16:48:01','2022-11-10 13:48:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (26,15,'ação criada','2022-11-10 17:18:57','2022-11-10 14:18:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (27,16,'ação criada','2022-11-10 17:18:57','2022-11-10 14:18:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (28,17,'ação criada','2022-11-10 17:18:59','2022-11-10 14:18:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (29,18,'ação criada','2022-11-10 17:18:59','2022-11-10 14:18:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (30,16,'ação iniciada por WP Cron','2022-11-10 17:19:07','2022-11-10 14:19:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (31,16,'ação completa por WP Cron','2022-11-10 17:19:11','2022-11-10 14:19:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (32,15,'ação iniciada por WP Cron','2022-11-10 17:19:11','2022-11-10 14:19:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (33,15,'ação completa por WP Cron','2022-11-10 17:19:12','2022-11-10 14:19:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (34,17,'ação iniciada por WP Cron','2022-11-10 17:19:13','2022-11-10 14:19:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (35,17,'ação completa por WP Cron','2022-11-10 17:19:13','2022-11-10 14:19:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (36,18,'ação iniciada por WP Cron','2022-11-10 17:19:13','2022-11-10 14:19:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (37,18,'ação completa por WP Cron','2022-11-10 17:19:14','2022-11-10 14:19:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (38,12,'ação iniciada por WP Cron','2022-11-10 22:51:23','2022-11-10 19:51:23');
INSERT INTO `wp_actionscheduler_logs` VALUES (39,12,'ação completa por WP Cron','2022-11-10 22:51:24','2022-11-10 19:51:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (40,19,'ação criada','2022-11-10 22:51:24','2022-11-10 19:51:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (41,20,'ação criada','2022-11-10 23:31:13','2022-11-10 20:31:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (42,20,'ação iniciada por Async Request','2022-11-10 23:31:57','2022-11-10 20:31:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (43,20,'ação completa por Async Request','2022-11-10 23:31:57','2022-11-10 20:31:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (44,21,'ação criada','2022-11-10 23:42:10','2022-11-10 20:42:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (45,21,'ação iniciada por Async Request','2022-11-10 23:42:13','2022-11-10 20:42:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (46,21,'ação completa por Async Request','2022-11-10 23:42:13','2022-11-10 20:42:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (47,22,'ação criada','2022-11-10 23:45:45','2022-11-10 20:45:45');
INSERT INTO `wp_actionscheduler_logs` VALUES (48,22,'ação iniciada por Async Request','2022-11-10 23:45:47','2022-11-10 20:45:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (49,22,'ação completa por Async Request','2022-11-10 23:45:47','2022-11-10 20:45:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (50,23,'ação criada','2022-11-10 23:47:12','2022-11-10 20:47:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (51,23,'ação iniciada por WP Cron','2022-11-10 23:48:08','2022-11-10 20:48:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (52,23,'ação completa por WP Cron','2022-11-10 23:48:09','2022-11-10 20:48:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (53,24,'ação criada','2022-11-10 23:51:35','2022-11-10 20:51:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (54,24,'ação iniciada por WP Cron','2022-11-10 23:52:04','2022-11-10 20:52:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (55,24,'ação completa por WP Cron','2022-11-10 23:52:04','2022-11-10 20:52:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (56,25,'ação criada','2022-11-10 23:53:15','2022-11-10 20:53:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (57,25,'ação iniciada por WP Cron','2022-11-10 23:54:34','2022-11-10 20:54:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (58,26,'ação criada','2022-11-10 23:54:35','2022-11-10 20:54:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (59,25,'ação completa por WP Cron','2022-11-10 23:54:35','2022-11-10 20:54:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (60,26,'ação iniciada por WP Cron','2022-11-10 23:54:36','2022-11-10 20:54:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (61,26,'ação completa por WP Cron','2022-11-10 23:54:36','2022-11-10 20:54:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (62,27,'ação criada','2022-11-10 23:55:19','2022-11-10 20:55:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (63,28,'ação criada','2022-11-10 23:55:22','2022-11-10 20:55:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (64,29,'ação criada','2022-11-10 23:55:26','2022-11-10 20:55:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (65,30,'ação criada','2022-11-10 23:55:29','2022-11-10 20:55:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (66,27,'ação iniciada por Async Request','2022-11-10 23:55:37','2022-11-10 20:55:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (67,27,'ação completa por Async Request','2022-11-10 23:55:37','2022-11-10 20:55:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (68,28,'ação iniciada por Async Request','2022-11-10 23:55:37','2022-11-10 20:55:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (69,28,'ação completa por Async Request','2022-11-10 23:55:38','2022-11-10 20:55:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (70,29,'ação iniciada por Async Request','2022-11-10 23:55:38','2022-11-10 20:55:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (71,29,'ação completa por Async Request','2022-11-10 23:55:39','2022-11-10 20:55:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (72,30,'ação iniciada por Async Request','2022-11-10 23:55:39','2022-11-10 20:55:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (73,30,'ação completa por Async Request','2022-11-10 23:55:39','2022-11-10 20:55:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (74,31,'ação criada','2022-11-10 23:57:11','2022-11-10 20:57:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (75,32,'ação criada','2022-11-10 23:57:12','2022-11-10 20:57:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (76,31,'ação iniciada por WP Cron','2022-11-10 23:57:15','2022-11-10 20:57:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (77,33,'ação criada','2022-11-10 23:57:15','2022-11-10 20:57:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (78,31,'ação completa por WP Cron','2022-11-10 23:57:16','2022-11-10 20:57:16');
INSERT INTO `wp_actionscheduler_logs` VALUES (79,32,'ação iniciada por WP Cron','2022-11-10 23:57:16','2022-11-10 20:57:16');
INSERT INTO `wp_actionscheduler_logs` VALUES (80,32,'ação completa por WP Cron','2022-11-10 23:57:17','2022-11-10 20:57:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (81,33,'ação iniciada por WP Cron','2022-11-10 23:57:18','2022-11-10 20:57:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (82,33,'ação completa por WP Cron','2022-11-10 23:57:19','2022-11-10 20:57:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (83,34,'ação criada','2022-11-10 23:59:40','2022-11-10 20:59:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (84,35,'ação criada','2022-11-10 23:59:41','2022-11-10 20:59:41');
INSERT INTO `wp_actionscheduler_logs` VALUES (85,36,'ação criada','2022-11-10 23:59:43','2022-11-10 20:59:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (86,37,'ação criada','2022-11-10 23:59:44','2022-11-10 20:59:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (87,38,'ação criada','2022-11-10 23:59:45','2022-11-10 20:59:45');
INSERT INTO `wp_actionscheduler_logs` VALUES (88,34,'ação iniciada por Async Request','2022-11-10 23:59:46','2022-11-10 20:59:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (89,34,'ação completa por Async Request','2022-11-10 23:59:46','2022-11-10 20:59:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (90,35,'ação iniciada por Async Request','2022-11-10 23:59:46','2022-11-10 20:59:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (91,35,'ação completa por Async Request','2022-11-10 23:59:47','2022-11-10 20:59:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (92,36,'ação iniciada por Async Request','2022-11-10 23:59:47','2022-11-10 20:59:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (93,36,'ação completa por Async Request','2022-11-10 23:59:48','2022-11-10 20:59:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (94,37,'ação iniciada por Async Request','2022-11-10 23:59:48','2022-11-10 20:59:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (95,37,'ação completa por Async Request','2022-11-10 23:59:48','2022-11-10 20:59:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (96,38,'ação iniciada por Async Request','2022-11-10 23:59:48','2022-11-10 20:59:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (97,38,'ação completa por Async Request','2022-11-10 23:59:49','2022-11-10 20:59:49');
INSERT INTO `wp_actionscheduler_logs` VALUES (98,39,'ação criada','2022-11-11 00:00:43','2022-11-10 21:00:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (99,40,'ação criada','2022-11-11 00:00:45','2022-11-10 21:00:45');
INSERT INTO `wp_actionscheduler_logs` VALUES (100,41,'ação criada','2022-11-11 00:00:46','2022-11-10 21:00:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (101,42,'ação criada','2022-11-11 00:00:47','2022-11-10 21:00:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (102,39,'ação iniciada por Async Request','2022-11-11 00:00:50','2022-11-10 21:00:50');
INSERT INTO `wp_actionscheduler_logs` VALUES (103,39,'ação completa por Async Request','2022-11-11 00:00:50','2022-11-10 21:00:50');
INSERT INTO `wp_actionscheduler_logs` VALUES (104,40,'ação iniciada por Async Request','2022-11-11 00:00:51','2022-11-10 21:00:51');
INSERT INTO `wp_actionscheduler_logs` VALUES (105,40,'ação completa por Async Request','2022-11-11 00:00:51','2022-11-10 21:00:51');
INSERT INTO `wp_actionscheduler_logs` VALUES (106,41,'ação iniciada por Async Request','2022-11-11 00:00:51','2022-11-10 21:00:51');
INSERT INTO `wp_actionscheduler_logs` VALUES (107,41,'ação completa por Async Request','2022-11-11 00:00:52','2022-11-10 21:00:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (108,42,'ação iniciada por Async Request','2022-11-11 00:00:52','2022-11-10 21:00:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (109,42,'ação completa por Async Request','2022-11-11 00:00:52','2022-11-10 21:00:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (110,43,'ação criada','2022-11-11 00:09:29','2022-11-10 21:09:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (111,44,'ação criada','2022-11-11 00:09:29','2022-11-10 21:09:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (112,45,'ação criada','2022-11-11 00:09:42','2022-11-10 21:09:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (113,43,'ação iniciada por WP Cron','2022-11-11 00:10:17','2022-11-10 21:10:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (114,43,'ação completa por WP Cron','2022-11-11 00:10:17','2022-11-10 21:10:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (115,44,'ação iniciada por WP Cron','2022-11-11 00:10:18','2022-11-10 21:10:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (116,44,'ação completa por WP Cron','2022-11-11 00:10:18','2022-11-10 21:10:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (117,45,'ação iniciada por WP Cron','2022-11-11 00:10:19','2022-11-10 21:10:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (118,45,'ação completa por WP Cron','2022-11-11 00:10:19','2022-11-10 21:10:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (119,46,'ação criada','2022-11-11 00:10:44','2022-11-10 21:10:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (120,47,'ação criada','2022-11-11 00:10:55','2022-11-10 21:10:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (121,46,'ação iniciada por WP Cron','2022-11-11 00:11:00','2022-11-10 21:11:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (122,46,'ação completa por WP Cron','2022-11-11 00:11:01','2022-11-10 21:11:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (123,47,'ação iniciada por WP Cron','2022-11-11 00:11:02','2022-11-10 21:11:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (124,47,'ação completa por WP Cron','2022-11-11 00:11:03','2022-11-10 21:11:03');
INSERT INTO `wp_actionscheduler_logs` VALUES (125,48,'ação criada','2022-11-11 00:17:28','2022-11-10 21:17:28');
INSERT INTO `wp_actionscheduler_logs` VALUES (126,48,'ação iniciada por Async Request','2022-11-11 00:17:43','2022-11-10 21:17:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (127,48,'ação completa por Async Request','2022-11-11 00:17:43','2022-11-10 21:17:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (128,49,'ação criada','2022-11-11 00:19:24','2022-11-10 21:19:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (129,50,'ação criada','2022-11-11 00:19:28','2022-11-10 21:19:28');
INSERT INTO `wp_actionscheduler_logs` VALUES (130,51,'ação criada','2022-11-11 00:19:32','2022-11-10 21:19:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (131,52,'ação criada','2022-11-11 00:19:35','2022-11-10 21:19:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (132,53,'ação criada','2022-11-11 00:19:37','2022-11-10 21:19:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (133,54,'ação criada','2022-11-11 00:19:38','2022-11-10 21:19:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (134,49,'ação iniciada por WP Cron','2022-11-11 00:20:06','2022-11-10 21:20:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (135,49,'ação completa por WP Cron','2022-11-11 00:20:08','2022-11-10 21:20:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (136,50,'ação iniciada por WP Cron','2022-11-11 00:20:08','2022-11-10 21:20:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (137,50,'ação completa por WP Cron','2022-11-11 00:20:09','2022-11-10 21:20:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (138,51,'ação iniciada por WP Cron','2022-11-11 00:20:09','2022-11-10 21:20:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (139,51,'ação completa por WP Cron','2022-11-11 00:20:10','2022-11-10 21:20:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (140,52,'ação iniciada por WP Cron','2022-11-11 00:20:10','2022-11-10 21:20:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (141,52,'ação completa por WP Cron','2022-11-11 00:20:11','2022-11-10 21:20:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (142,53,'ação iniciada por WP Cron','2022-11-11 00:20:11','2022-11-10 21:20:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (143,53,'ação completa por WP Cron','2022-11-11 00:20:11','2022-11-10 21:20:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (144,54,'ação iniciada por WP Cron','2022-11-11 00:20:11','2022-11-10 21:20:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (145,54,'ação completa por WP Cron','2022-11-11 00:20:12','2022-11-10 21:20:12');
INSERT INTO `wp_actionscheduler_logs` VALUES (146,55,'ação criada','2022-11-11 00:21:41','2022-11-10 21:21:41');
INSERT INTO `wp_actionscheduler_logs` VALUES (147,56,'ação criada','2022-11-11 00:21:41','2022-11-10 21:21:41');
INSERT INTO `wp_actionscheduler_logs` VALUES (148,55,'ação iniciada por WP Cron','2022-11-11 00:22:17','2022-11-10 21:22:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (149,55,'ação completa por WP Cron','2022-11-11 00:22:18','2022-11-10 21:22:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (150,56,'ação iniciada por WP Cron','2022-11-11 00:22:19','2022-11-10 21:22:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (151,56,'ação completa por WP Cron','2022-11-11 00:22:20','2022-11-10 21:22:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (152,57,'ação criada','2022-11-11 00:22:21','2022-11-10 21:22:21');
INSERT INTO `wp_actionscheduler_logs` VALUES (153,58,'ação criada','2022-11-11 00:22:23','2022-11-10 21:22:23');
INSERT INTO `wp_actionscheduler_logs` VALUES (154,57,'ação iniciada por Async Request','2022-11-11 00:22:24','2022-11-10 21:22:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (155,57,'ação completa por Async Request','2022-11-11 00:22:25','2022-11-10 21:22:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (156,58,'ação iniciada por Async Request','2022-11-11 00:22:25','2022-11-10 21:22:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (157,58,'ação completa por Async Request','2022-11-11 00:22:26','2022-11-10 21:22:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (158,59,'ação criada','2022-11-11 00:22:35','2022-11-10 21:22:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (159,60,'ação criada','2022-11-11 00:22:39','2022-11-10 21:22:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (160,61,'ação criada','2022-11-11 00:22:41','2022-11-10 21:22:41');
INSERT INTO `wp_actionscheduler_logs` VALUES (161,59,'ação iniciada por WP Cron','2022-11-11 00:23:22','2022-11-10 21:23:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (162,62,'ação criada','2022-11-11 00:23:23','2022-11-10 21:23:23');
INSERT INTO `wp_actionscheduler_logs` VALUES (163,59,'ação completa por WP Cron','2022-11-11 00:23:24','2022-11-10 21:23:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (164,60,'ação iniciada por WP Cron','2022-11-11 00:23:24','2022-11-10 21:23:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (165,60,'ação completa por WP Cron','2022-11-11 00:23:25','2022-11-10 21:23:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (166,61,'ação iniciada por WP Cron','2022-11-11 00:23:26','2022-11-10 21:23:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (167,61,'ação completa por WP Cron','2022-11-11 00:23:26','2022-11-10 21:23:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (168,62,'ação iniciada por WP Cron','2022-11-11 00:23:27','2022-11-10 21:23:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (169,62,'ação completa por WP Cron','2022-11-11 00:23:28','2022-11-10 21:23:28');
INSERT INTO `wp_actionscheduler_logs` VALUES (170,63,'ação criada','2022-11-11 00:24:20','2022-11-10 21:24:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (171,64,'ação criada','2022-11-11 00:24:34','2022-11-10 21:24:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (172,63,'ação iniciada por Async Request','2022-11-11 00:24:36','2022-11-10 21:24:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (173,63,'ação completa por Async Request','2022-11-11 00:24:37','2022-11-10 21:24:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (174,64,'ação iniciada por Async Request','2022-11-11 00:24:37','2022-11-10 21:24:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (175,64,'ação completa por Async Request','2022-11-11 00:24:38','2022-11-10 21:24:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (176,65,'ação criada','2022-11-11 00:24:53','2022-11-10 21:24:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (177,65,'ação iniciada por WP Cron','2022-11-11 00:25:30','2022-11-10 21:25:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (178,65,'ação completa por WP Cron','2022-11-11 00:25:30','2022-11-10 21:25:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (179,66,'ação criada','2022-11-11 00:27:38','2022-11-10 21:27:38');
INSERT INTO `wp_actionscheduler_logs` VALUES (180,67,'ação criada','2022-11-11 00:27:43','2022-11-10 21:27:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (181,68,'ação criada','2022-11-11 00:27:47','2022-11-10 21:27:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (182,69,'ação criada','2022-11-11 00:27:52','2022-11-10 21:27:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (183,70,'ação criada','2022-11-11 00:27:54','2022-11-10 21:27:54');
INSERT INTO `wp_actionscheduler_logs` VALUES (184,71,'ação criada','2022-11-11 00:27:54','2022-11-10 21:27:54');
INSERT INTO `wp_actionscheduler_logs` VALUES (185,66,'ação iniciada por Async Request','2022-11-11 00:27:56','2022-11-10 21:27:56');
INSERT INTO `wp_actionscheduler_logs` VALUES (186,66,'ação completa por Async Request','2022-11-11 00:27:57','2022-11-10 21:27:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (187,67,'ação iniciada por Async Request','2022-11-11 00:27:57','2022-11-10 21:27:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (188,67,'ação completa por Async Request','2022-11-11 00:27:58','2022-11-10 21:27:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (189,68,'ação iniciada por Async Request','2022-11-11 00:27:58','2022-11-10 21:27:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (190,68,'ação completa por Async Request','2022-11-11 00:27:59','2022-11-10 21:27:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (191,69,'ação iniciada por Async Request','2022-11-11 00:27:59','2022-11-10 21:27:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (192,69,'ação completa por Async Request','2022-11-11 00:28:00','2022-11-10 21:28:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (193,70,'ação iniciada por Async Request','2022-11-11 00:28:00','2022-11-10 21:28:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (194,70,'ação completa por Async Request','2022-11-11 00:28:00','2022-11-10 21:28:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (195,71,'ação iniciada por Async Request','2022-11-11 00:28:00','2022-11-10 21:28:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (196,71,'ação completa por Async Request','2022-11-11 00:28:00','2022-11-10 21:28:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (197,72,'ação criada','2022-11-11 00:30:00','2022-11-10 21:30:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (198,72,'ação iniciada por WP Cron','2022-11-11 00:30:06','2022-11-10 21:30:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (199,72,'ação completa por WP Cron','2022-11-11 00:30:07','2022-11-10 21:30:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (200,73,'ação criada','2022-11-11 00:30:46','2022-11-10 21:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (201,74,'ação criada','2022-11-11 00:30:46','2022-11-10 21:30:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (202,73,'ação iniciada por WP Cron','2022-11-11 00:31:13','2022-11-10 21:31:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (203,75,'ação criada','2022-11-11 00:31:15','2022-11-10 21:31:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (204,73,'ação completa por WP Cron','2022-11-11 00:31:15','2022-11-10 21:31:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (205,74,'ação iniciada por WP Cron','2022-11-11 00:31:15','2022-11-10 21:31:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (206,74,'ação completa por WP Cron','2022-11-11 00:31:17','2022-11-10 21:31:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (207,75,'ação iniciada por WP Cron','2022-11-11 00:31:18','2022-11-10 21:31:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (208,75,'ação completa por WP Cron','2022-11-11 00:31:19','2022-11-10 21:31:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (209,76,'ação criada','2022-11-11 00:31:56','2022-11-10 21:31:56');
INSERT INTO `wp_actionscheduler_logs` VALUES (210,76,'ação iniciada por WP Cron','2022-11-11 00:32:01','2022-11-10 21:32:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (211,76,'ação completa por WP Cron','2022-11-11 00:32:01','2022-11-10 21:32:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (212,77,'ação criada','2022-11-11 00:33:34','2022-11-10 21:33:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (213,77,'ação iniciada por WP Cron','2022-11-11 00:34:01','2022-11-10 21:34:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (214,77,'ação completa por WP Cron','2022-11-11 00:34:01','2022-11-10 21:34:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (215,78,'ação criada','2022-11-11 00:34:44','2022-11-10 21:34:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (216,78,'ação iniciada por WP Cron','2022-11-11 00:35:16','2022-11-10 21:35:16');
INSERT INTO `wp_actionscheduler_logs` VALUES (217,78,'ação completa por WP Cron','2022-11-11 00:35:17','2022-11-10 21:35:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (218,19,'ação iniciada por WP Cron','2022-11-14 18:58:26','2022-11-14 15:58:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (219,19,'ação completa por WP Cron','2022-11-14 18:58:27','2022-11-14 15:58:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (220,79,'ação criada','2022-11-14 18:58:27','2022-11-14 15:58:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (221,79,'ação iniciada por WP Cron','2022-11-19 19:10:47','2022-11-19 16:10:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (222,79,'ação completa por WP Cron','2022-11-19 19:10:47','2022-11-19 16:10:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (223,80,'ação criada','2022-11-19 19:10:48','2022-11-19 16:10:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (224,81,'ação criada','2022-11-20 18:48:40','2022-11-20 15:48:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (225,81,'ação iniciada por Async Request','2022-11-20 18:48:58','2022-11-20 15:48:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (226,81,'ação completa por Async Request','2022-11-20 18:48:59','2022-11-20 15:48:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (227,80,'ação iniciada por WP Cron','2022-11-20 19:12:39','2022-11-20 16:12:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (228,80,'ação completa por WP Cron','2022-11-20 19:12:39','2022-11-20 16:12:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (229,82,'ação criada','2022-11-20 19:12:40','2022-11-20 16:12:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (230,83,'ação criada','2022-11-21 14:09:07','2022-11-21 11:09:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (231,83,'ação iniciada por WP Cron','2022-11-21 14:11:49','2022-11-21 11:11:49');
INSERT INTO `wp_actionscheduler_logs` VALUES (232,83,'ação completa por WP Cron','2022-11-21 14:11:49','2022-11-21 11:11:49');
INSERT INTO `wp_actionscheduler_logs` VALUES (233,82,'ação iniciada por WP Cron','2022-11-21 19:17:57','2022-11-21 16:17:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (234,82,'ação completa por WP Cron','2022-11-21 19:17:57','2022-11-21 16:17:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (235,84,'ação criada','2022-11-21 19:17:58','2022-11-21 16:17:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (236,84,'ação iniciada por WP Cron','2022-11-23 01:13:35','2022-11-22 22:13:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (237,84,'ação completa por WP Cron','2022-11-23 01:13:36','2022-11-22 22:13:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (238,85,'ação criada','2022-11-23 01:13:36','2022-11-22 22:13:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (239,86,'ação criada','2022-11-23 02:52:37','2022-11-22 23:52:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (240,86,'ação iniciada por WP Cron','2022-11-23 02:53:02','2022-11-22 23:53:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (241,86,'ação completa por WP Cron','2022-11-23 02:53:02','2022-11-22 23:53:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (242,85,'ação iniciada por Async Request','2022-11-24 03:31:35','2022-11-24 00:31:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (243,85,'ação completa por Async Request','2022-11-24 03:31:35','2022-11-24 00:31:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (244,87,'ação criada','2022-11-24 03:31:36','2022-11-24 00:31:36');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-11-07 01:48:25','2022-11-07 01:48:25','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1891 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://handel.test','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://handel.test','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Handel','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','j \\d\\e F \\d\\e Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:166:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"loja/?$\";s:27:\"index.php?post_type=product\";s:37:\"loja/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"loja/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"loja/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categoria-produto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categoria-produto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categoria-produto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"produto-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"produto-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"produto-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:49:\"tamanhos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?pa_tamanhos=$matches[1]&feed=$matches[2]\";s:44:\"tamanhos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?pa_tamanhos=$matches[1]&feed=$matches[2]\";s:25:\"tamanhos/([^/]+)/embed/?$\";s:44:\"index.php?pa_tamanhos=$matches[1]&embed=true\";s:37:\"tamanhos/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?pa_tamanhos=$matches[1]&paged=$matches[2]\";s:19:\"tamanhos/([^/]+)/?$\";s:33:\"index.php?pa_tamanhos=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)/pagar(/(.*))?/?$\";s:48:\"index.php?pagename=$matches[1]&pagar=$matches[3]\";s:34:\"(.?.+?)/pedido-recebido(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&pedido-recebido=$matches[3]\";s:26:\"(.?.+?)/pedidos(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&pedidos=$matches[3]\";s:29:\"(.?.+?)/ver-pedido(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&ver-pedido=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/editar-conta(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&editar-conta=$matches[3]\";s:34:\"(.?.+?)/editar-endereco(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&editar-endereco=$matches[3]\";s:35:\"(.?.+?)/metodo-pagamento(/(.*))?/?$\";s:59:\"index.php?pagename=$matches[1]&metodo-pagamento=$matches[3]\";s:32:\"(.?.+?)/senha-perdida(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&senha-perdida=$matches[3]\";s:32:\"(.?.+?)/sair-da-conta(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&sair-da-conta=$matches[3]\";s:45:\"(.?.+?)/adicionar-metodo-pagamento(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&adicionar-metodo-pagamento=$matches[3]\";s:43:\"(.?.+?)/deletar-metodo-pagamento(/(.*))?/?$\";s:67:\"index.php?pagename=$matches[1]&deletar-metodo-pagamento=$matches[3]\";s:42:\"(.?.+?)/padrao-metodo-pagamento(/(.*))?/?$\";s:66:\"index.php?pagename=$matches[1]&padrao-metodo-pagamento=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:23:\"loco-translate/loco.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','handel','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','handel','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','760','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','840','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','gravatar_default','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','America/Bahia','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','16','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1683337681','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"loco_admin\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:22:{i:1669260718;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1669260722;a:1:{s:28:\"wp_1_wc_privacy_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:37:\"wp_1_wc_privacy_cleanup_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1669261710;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1669264259;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1669264273;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1669264296;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1669288728;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1669297710;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1669297711;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1669297822;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1669310338;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669310339;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669321128;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669321129;a:1:{s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669340908;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669341022;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669341025;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669343446;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669345200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669396789;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1669686508;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','Y_j`Pg| =ynOC$s)IB]S}#j%|0nO=vG!.nr|9pTueLn@<mm6_YM>%P8^h/){DM49','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','AbPp7DOkD2(&M{!lIn9-:MwciYyjzGlyy_br@w~u6uR!]io) AvWf{|g9FemHu+A','no');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1667792933;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (128,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}','yes');
INSERT INTO `wp_options` VALUES (133,'auth_key','vI^`]xv>RRcnlWp34uYb|LBF;xvyp;D=|F3nR<>@{h~0)EObT%7(z[8b}wT:65gX','no');
INSERT INTO `wp_options` VALUES (134,'auth_salt','TwX]-M dy$a_F>U(oKAmTKk]L9Y39I9(6Fz?cTGBzY|p5[n-iyqA>FhI@W[EK68W','no');
INSERT INTO `wp_options` VALUES (135,'logged_in_key','Hp%55pO!JRn;4fzZ%t<l}rr.CbwN2ig,NHRZ@oSy7f{7tbC.<eIDjpL[H2!m@p`K','no');
INSERT INTO `wp_options` VALUES (136,'logged_in_salt','A&$Bd%faQ)g%/W)8`D|@TB*&1l(:usLcOAydTeu)W7T ~!uolig*#Ke?`N3C1{^;','no');
INSERT INTO `wp_options` VALUES (149,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (158,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (165,'WPLANG','pt_BR','yes');
INSERT INTO `wp_options` VALUES (166,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (175,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (189,'action_scheduler_hybrid_store_demarkation','5','yes');
INSERT INTO `wp_options` VALUES (190,'schema-ActionScheduler_StoreSchema','6.0.1667788152','yes');
INSERT INTO `wp_options` VALUES (191,'schema-ActionScheduler_LoggerSchema','3.0.1667788153','yes');
INSERT INTO `wp_options` VALUES (195,'woocommerce_schema_version','430','yes');
INSERT INTO `wp_options` VALUES (196,'woocommerce_store_address','Av. da França, 393 - 2º andar - Comercio','yes');
INSERT INTO `wp_options` VALUES (197,'woocommerce_store_address_2','','yes');
INSERT INTO `wp_options` VALUES (198,'woocommerce_store_city','Salvador','yes');
INSERT INTO `wp_options` VALUES (199,'woocommerce_default_country','BR:BA','yes');
INSERT INTO `wp_options` VALUES (200,'woocommerce_store_postcode','40010-000','yes');
INSERT INTO `wp_options` VALUES (201,'woocommerce_allowed_countries','all','yes');
INSERT INTO `wp_options` VALUES (202,'woocommerce_all_except_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (203,'woocommerce_specific_allowed_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (204,'woocommerce_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (205,'woocommerce_specific_ship_to_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (206,'woocommerce_default_customer_address','base','yes');
INSERT INTO `wp_options` VALUES (207,'woocommerce_calc_taxes','no','yes');
INSERT INTO `wp_options` VALUES (208,'woocommerce_enable_coupons','yes','yes');
INSERT INTO `wp_options` VALUES (209,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `wp_options` VALUES (210,'woocommerce_currency','BRL','yes');
INSERT INTO `wp_options` VALUES (211,'woocommerce_currency_pos','left_space','yes');
INSERT INTO `wp_options` VALUES (212,'woocommerce_price_thousand_sep','.','yes');
INSERT INTO `wp_options` VALUES (213,'woocommerce_price_decimal_sep',',','yes');
INSERT INTO `wp_options` VALUES (214,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `wp_options` VALUES (215,'woocommerce_shop_page_id','6','yes');
INSERT INTO `wp_options` VALUES (216,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `wp_options` VALUES (217,'woocommerce_enable_ajax_add_to_cart','no','yes');
INSERT INTO `wp_options` VALUES (218,'woocommerce_placeholder_image','5','yes');
INSERT INTO `wp_options` VALUES (219,'woocommerce_weight_unit','kg','yes');
INSERT INTO `wp_options` VALUES (220,'woocommerce_dimension_unit','cm','yes');
INSERT INTO `wp_options` VALUES (221,'woocommerce_enable_reviews','no','yes');
INSERT INTO `wp_options` VALUES (222,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `wp_options` VALUES (223,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `wp_options` VALUES (224,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `wp_options` VALUES (225,'woocommerce_review_rating_required','yes','no');
INSERT INTO `wp_options` VALUES (226,'woocommerce_manage_stock','yes','yes');
INSERT INTO `wp_options` VALUES (227,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `wp_options` VALUES (228,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `wp_options` VALUES (229,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `wp_options` VALUES (230,'woocommerce_stock_email_recipient','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (231,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `wp_options` VALUES (232,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `wp_options` VALUES (233,'woocommerce_hide_out_of_stock_items','yes','yes');
INSERT INTO `wp_options` VALUES (234,'woocommerce_stock_format','','yes');
INSERT INTO `wp_options` VALUES (235,'woocommerce_file_download_method','force','no');
INSERT INTO `wp_options` VALUES (236,'woocommerce_downloads_redirect_fallback_allowed','no','no');
INSERT INTO `wp_options` VALUES (237,'woocommerce_downloads_require_login','yes','no');
INSERT INTO `wp_options` VALUES (238,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `wp_options` VALUES (239,'woocommerce_downloads_deliver_inline','no','no');
INSERT INTO `wp_options` VALUES (240,'woocommerce_downloads_add_hash_to_filename','yes','yes');
INSERT INTO `wp_options` VALUES (242,'woocommerce_attribute_lookup_direct_updates','no','yes');
INSERT INTO `wp_options` VALUES (243,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `wp_options` VALUES (244,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `wp_options` VALUES (245,'woocommerce_shipping_tax_class','inherit','yes');
INSERT INTO `wp_options` VALUES (246,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `wp_options` VALUES (247,'woocommerce_tax_classes','','yes');
INSERT INTO `wp_options` VALUES (248,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `wp_options` VALUES (249,'woocommerce_tax_display_cart','excl','yes');
INSERT INTO `wp_options` VALUES (250,'woocommerce_price_display_suffix','','yes');
INSERT INTO `wp_options` VALUES (251,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `wp_options` VALUES (252,'woocommerce_enable_shipping_calc','yes','no');
INSERT INTO `wp_options` VALUES (253,'woocommerce_shipping_cost_requires_address','no','yes');
INSERT INTO `wp_options` VALUES (254,'woocommerce_ship_to_destination','billing','no');
INSERT INTO `wp_options` VALUES (255,'woocommerce_shipping_debug_mode','no','yes');
INSERT INTO `wp_options` VALUES (256,'woocommerce_enable_guest_checkout','no','no');
INSERT INTO `wp_options` VALUES (257,'woocommerce_enable_checkout_login_reminder','yes','no');
INSERT INTO `wp_options` VALUES (258,'woocommerce_enable_signup_and_login_from_checkout','yes','no');
INSERT INTO `wp_options` VALUES (259,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `wp_options` VALUES (260,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `wp_options` VALUES (261,'woocommerce_registration_generate_password','yes','no');
INSERT INTO `wp_options` VALUES (262,'woocommerce_erasure_request_removes_order_data','no','no');
INSERT INTO `wp_options` VALUES (263,'woocommerce_erasure_request_removes_download_data','no','no');
INSERT INTO `wp_options` VALUES (264,'woocommerce_allow_bulk_remove_personal_data','no','no');
INSERT INTO `wp_options` VALUES (265,'woocommerce_registration_privacy_policy_text','Seus dados pessoais serão usados para aprimorar a sua experiência em todo este site, para gerenciar o acesso a sua conta e para outros propósitos, como descritos em nossa [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (266,'woocommerce_checkout_privacy_policy_text','Os seus dados pessoais serão utilizados para processar a sua compra, apoiar a sua experiência em todo este site e para outros fins descritos na nossa [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (267,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (268,'woocommerce_trash_pending_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no');
INSERT INTO `wp_options` VALUES (269,'woocommerce_trash_failed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no');
INSERT INTO `wp_options` VALUES (270,'woocommerce_trash_cancelled_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no');
INSERT INTO `wp_options` VALUES (271,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (272,'woocommerce_email_from_name','Handel','no');
INSERT INTO `wp_options` VALUES (273,'woocommerce_email_from_address','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (274,'woocommerce_email_header_image','','no');
INSERT INTO `wp_options` VALUES (275,'woocommerce_email_footer_text','{site_title}','no');
INSERT INTO `wp_options` VALUES (276,'woocommerce_email_base_color','#000000','no');
INSERT INTO `wp_options` VALUES (277,'woocommerce_email_background_color','#f7f7f7','no');
INSERT INTO `wp_options` VALUES (278,'woocommerce_email_body_background_color','#ffffff','no');
INSERT INTO `wp_options` VALUES (279,'woocommerce_email_text_color','#3c3c3c','no');
INSERT INTO `wp_options` VALUES (280,'woocommerce_merchant_email_notifications','no','no');
INSERT INTO `wp_options` VALUES (281,'woocommerce_cart_page_id','7','no');
INSERT INTO `wp_options` VALUES (282,'woocommerce_checkout_page_id','8','no');
INSERT INTO `wp_options` VALUES (283,'woocommerce_myaccount_page_id','9','no');
INSERT INTO `wp_options` VALUES (284,'woocommerce_terms_page_id','','no');
INSERT INTO `wp_options` VALUES (285,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (286,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (287,'woocommerce_checkout_pay_endpoint','pagar','yes');
INSERT INTO `wp_options` VALUES (288,'woocommerce_checkout_order_received_endpoint','pedido-recebido','yes');
INSERT INTO `wp_options` VALUES (289,'woocommerce_myaccount_add_payment_method_endpoint','adicionar-metodo-pagamento','yes');
INSERT INTO `wp_options` VALUES (290,'woocommerce_myaccount_delete_payment_method_endpoint','deletar-metodo-pagamento','yes');
INSERT INTO `wp_options` VALUES (291,'woocommerce_myaccount_set_default_payment_method_endpoint','padrao-metodo-pagamento','yes');
INSERT INTO `wp_options` VALUES (292,'woocommerce_myaccount_orders_endpoint','pedidos','yes');
INSERT INTO `wp_options` VALUES (293,'woocommerce_myaccount_view_order_endpoint','ver-pedido','yes');
INSERT INTO `wp_options` VALUES (294,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `wp_options` VALUES (295,'woocommerce_myaccount_edit_account_endpoint','editar-conta','yes');
INSERT INTO `wp_options` VALUES (296,'woocommerce_myaccount_edit_address_endpoint','editar-endereco','yes');
INSERT INTO `wp_options` VALUES (297,'woocommerce_myaccount_payment_methods_endpoint','metodo-pagamento','yes');
INSERT INTO `wp_options` VALUES (298,'woocommerce_myaccount_lost_password_endpoint','senha-perdida','yes');
INSERT INTO `wp_options` VALUES (299,'woocommerce_logout_endpoint','sair-da-conta','yes');
INSERT INTO `wp_options` VALUES (300,'woocommerce_api_enabled','no','yes');
INSERT INTO `wp_options` VALUES (301,'woocommerce_allow_tracking','no','no');
INSERT INTO `wp_options` VALUES (302,'woocommerce_show_marketplace_suggestions','yes','no');
INSERT INTO `wp_options` VALUES (303,'woocommerce_single_image_width','600','yes');
INSERT INTO `wp_options` VALUES (304,'woocommerce_thumbnail_image_width','300','yes');
INSERT INTO `wp_options` VALUES (305,'woocommerce_checkout_highlight_required_fields','yes','yes');
INSERT INTO `wp_options` VALUES (306,'woocommerce_demo_store','no','no');
INSERT INTO `wp_options` VALUES (307,'wc_downloads_approved_directories_mode','enabled','yes');
INSERT INTO `wp_options` VALUES (308,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:8:\"/produto\";s:13:\"category_base\";s:17:\"categoria-produto\";s:8:\"tag_base\";s:11:\"produto-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (309,'current_theme_supports_woocommerce','yes','yes');
INSERT INTO `wp_options` VALUES (310,'woocommerce_queue_flush_rewrite_rules','no','yes');
INSERT INTO `wp_options` VALUES (313,'default_product_cat','15','yes');
INSERT INTO `wp_options` VALUES (317,'woocommerce_refund_returns_page_id','10','yes');
INSERT INTO `wp_options` VALUES (322,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:107:\"Pague com PayPal; você pode pagar com o seu cartão de crédito caso você não tenha uma conta no PayPal.\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:24:\"dev-email@flywheel.local\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (323,'woocommerce_version','7.1.0','yes');
INSERT INTO `wp_options` VALUES (324,'woocommerce_db_version','7.1.0','yes');
INSERT INTO `wp_options` VALUES (325,'woocommerce_admin_install_timestamp','1667788254','yes');
INSERT INTO `wp_options` VALUES (326,'woocommerce_inbox_variant_assignment','1','yes');
INSERT INTO `wp_options` VALUES (331,'_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','yes');
INSERT INTO `wp_options` VALUES (332,'action_scheduler_lock_async-request-runner','1669261234','yes');
INSERT INTO `wp_options` VALUES (333,'woocommerce_admin_notices','a:1:{i:0;s:20:\"no_secure_connection\";}','yes');
INSERT INTO `wp_options` VALUES (334,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"3HJouLg0HMEbzFL7456QPb6bzTteHrHH\";}','yes');
INSERT INTO `wp_options` VALUES (335,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (337,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (339,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (341,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (343,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (345,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (347,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (349,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (351,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (353,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (355,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (357,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (359,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (364,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (373,'wc_blocks_db_schema_version','260','yes');
INSERT INTO `wp_options` VALUES (374,'wc_remote_inbox_notifications_stored_state','O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}','no');
INSERT INTO `wp_options` VALUES (379,'_transient_woocommerce_reports-transient-version','1667788465','yes');
INSERT INTO `wp_options` VALUES (390,'woocommerce_task_list_tracked_completed_tasks','a:6:{i:0;s:8:\"purchase\";i:1;s:13:\"store_details\";i:2;s:8:\"shipping\";i:3;s:8:\"products\";i:4;s:15:\"review-shipping\";i:5;s:8:\"payments\";}','yes');
INSERT INTO `wp_options` VALUES (391,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (394,'woocommerce_onboarding_profile','a:11:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:24:\"dev-email@flywheel.local\";s:20:\"is_store_country_set\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:27:\"fashion-apparel-accessories\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:5:\"1000+\";s:14:\"selling_venues\";s:2:\"no\";s:12:\"setup_client\";b:1;s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:15:\"twentytwentytwo\";s:9:\"completed\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (396,'woocommerce_task_list_dismissed_tasks','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (397,'_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs','1669865537','no');
INSERT INTO `wp_options` VALUES (398,'_transient_woocommerce_admin_remote_inbox_notifications_specs','a:1:{s:5:\"pt_BR\";a:33:{s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:24:\"admin.php?page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:14:23\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:261:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:118:\"https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:135:\"https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:251:\"WooCommerce Shipping & Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:17:25\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:467:\"That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:177:\"It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:144:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:49\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:13\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:50\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:738:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:30:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:31:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:442:\"Heads up! There’s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:33:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:358:\"Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:34:30\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:574:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:59:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:38;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}i:39;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.5.10\";}i:40;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.7\";}i:41;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.3\";}i:42;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.3\";}i:43;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.5\";}i:44;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.4\";}i:45;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.4\";}i:46;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.5\";}i:47;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.6\";}i:48;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.4\";}i:49;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.5\";}i:50;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.5\";}i:51;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.4\";}i:52;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.3\";}i:53;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.5\";}i:54;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.3\";}i:55;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:56;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.5\";}i:57;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.3\";}i:58;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.4\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:32:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:42\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:18\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"We’re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:136:\"We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:37:30\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:26:\"ecomm-wc-navigation-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"ecomm-wc-navigation-survey\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"We’d like your feedback on the WooCommerce navigation\";s:7:\"content\";s:134:\"We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:63:\"https://automattic.survey.fm/feedback-on-woocommerce-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:38:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:90;}}}s:42:\"woocommerce-core-paypal-march-2022-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:391:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-core-paypal-march-2022-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:44:57\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"5.5\";}i:1;a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}}}}}}}s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:237:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:45:04\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}s:24:\"pinterest_03_2022_update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"pinterest_03_2022_update\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Your Pinterest for WooCommerce plugin is out of date!\";s:7:\"content\";s:262:\"Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"pinterest_03_2022_update\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"Update Instructions\";}}s:3:\"url\";s:148:\"https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-23 00:00:39\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"pinterest-for-woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"1.0.8\";}}}s:33:\"store_setup_survey_survey_q2_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:33:\"store_setup_survey_survey_q2_2022\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:30:\"How is your store setup going?\";s:7:\"content\";s:232:\"Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:53:\"store_setup_survey_survey_q2_2022_share_your_thoughts\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Tell us how it’s going\";}}s:3:\"url\";s:52:\"https://automattic.survey.fm/store-setup-survey-2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-05-09 08:42:10\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:7;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:9;}}}s:17:\"wc-admin-wisepad3\";O:8:\"stdClass\":8:{s:4:\"slug\";s:17:\"wc-admin-wisepad3\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:74:\"Take your business on the go in Canada with WooCommerce In-Person Payments\";s:7:\"content\";s:275:\"Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"wc-admin-wisepad3\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Grow my business offline\";}}s:3:\"url\";s:126:\"https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-06-15 10:00:28\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}}}s:47:\"woocommerce-payments-august-2022-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"Action required: Please update WooCommerce Payments\";s:7:\"content\";s:213:\"An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:44:17\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"3.9\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"4.5.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.1\";}}}s:46:\"woocommerce-payments-august-2022-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-payments-august-2022-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"WooCommerce Payments has been automatically updated\";s:7:\"content\";s:265:\"You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:41:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.1\";}}}}}s:25:\"shipping_category_q4_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:25:\"shipping_category_q4_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:21:\"Save time on shipping\";s:7:\"content\";s:197:\"Is your store all set to ship? Save valuable time (and money!) by automating your fulfillment process for the busiest shopping season. Explore our range of trusted shipping partners to get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:31:\"shipping_category_q4_2022_click\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:20:\"Automate my shipping\";}}s:3:\"url\";s:229:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-delivery-and-fulfillment/?categoryIds=28685&collections=product&page=1&utm_source=inbox_note&utm_medium=product&utm_campaign=shipping_category_q4_2022_click\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-10-10 14:01:31\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-11-10 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"shipstation-integration\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:12:\"packlink-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:6:\"shippo\";}}}}}}}}s:37:\"woocommerce_admin_deprecation_q4_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"woocommerce_admin_deprecation_q4_2022\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:41:\"WooCommerce Admin is part of WooCommerce!\";s:7:\"content\";s:163:\"To make sure your store continues to run smoothly, check that WooCommerce is up-to-date – at least version 6.5 – and then disable the WooCommerce Admin plugin.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:37:\"woocommerce_admin_deprecation_q4_2022\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:28:\"Deactivate WooCommerce Admin\";}}s:3:\"url\";s:11:\"plugins.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-11-04 09:00:33\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2023-01-31 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}}}s:23:\"tiktok-targeted-q4-2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:23:\"tiktok-targeted-q4-2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:76:\"Get $200 in ad credit from TikTok after you spend $20 on your first campaign\";s:7:\"content\";s:324:\"Reach one billion shoppers with TikTok for WooCommerce this holiday season! Sync your product catalog, capture insights, and create ad campaigns right from your dashboard. Connect your store today to unlock this limited time offer! <a href=\"https://ads.tiktok.com/help/article?aid=10011326\">Terms &amp; conditions apply</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:29:\"tiktok-targeted-q4-2022-click\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Launch a campaign\";}}s:3:\"url\";s:140:\"https://woocommerce.com/products/tiktok-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=tiktok-targeted-q4-2022-click\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-10-25 00:40:14\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-12-31 23:59:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:30;}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:20:\"total_payments_value\";s:9:\"timeframe\";s:9:\"last_year\";s:5:\"value\";i:1000;s:9:\"operation\";s:1:\">\";}}}s:24:\"paypal_paylater_g3_q4_22\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"paypal_paylater_g3_q4_22\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:7:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:40:\"Turn browsers into buyers with Pay Later\";s:7:\"content\";s:322:\"Add PayPal at checkout, plus give customers a buy now, pay later option from the name they trust. With Pay in 4 &amp; Pay Monthly, available in PayPal Payments, you get paid up front while letting customers spread their payments over time. Boost your average order value and convert more sales – at no extra cost to you.\";}i:1;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en-GB\";s:5:\"title\";s:55:\"Turn browsers into buyers with Pay in 3 & PayPal Credit\";s:7:\"content\";s:324:\"Add PayPal at checkout, plus give customers a buy now, pay later option from the name they trust. With Pay in 3 &amp; PayPal Credit, available in PayPal Payments, you get paid up front while letting customers spread their payments over time. Boost your average order value and convert more sales – at no extra cost to you.\";}i:2;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_AU\";s:5:\"title\";s:39:\"Turn browsers into buyers with Pay in 4\";s:7:\"content\";s:304:\"Add PayPal at checkout, plus give customers a buy now, pay later option from the name they trust. With Pay in 4, available in PayPal Payments, you get paid up front while letting customers spread their payments over time. Boost your average order value and convert more sales – at no extra cost to you.\";}i:3;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"fr_FR\";s:5:\"title\";s:61:\"Transformez les visiteurs en acheteurs avec le Paiement en 4X\";s:7:\"content\";s:321:\"Ajoutez PayPal à vos modes de paiement et proposez notre Paiement en 4X. Disponible dans les Paiements PayPal, le Paiement en 4X vous permet de recevoir votre paiement immédiatement, tandis que vos clients paient en plusieurs fois. Augmentez le panier moyen et boostez vos ventes, sans frais supplémentaires pour vous.\";}i:4;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"de_DE\";s:5:\"title\";s:127:\"Verwandeln Sie potenzielle Käufer*innen mit der PayPal Ratenzahlung und Bezahlung nach 30 Tagen in tatsächliche Käufer*innen\";s:7:\"content\";s:327:\"Bieten Sie mit PayPal Payments die „Später bezahlen“-Optionen einer vertrauenswürdigen Marke an. Sie erhalten Ihr Geld mit PayPal Ratenzahlung und Bezahlen nach 30 Tagen sofort und Ihre Kund*innen können flexibel bezahlen. Steigern Sie den durchschnittlichen Bestellwert und Ihre Conversion – ohne zusätzliche Kosten.\";}i:5;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_ES\";s:5:\"title\";s:62:\"Convierte a los visitantes en compradores con Paga en 3 plazos\";s:7:\"content\";s:326:\"Añade PayPal al pago y ofrece a los clientes la opción de pagar a plazos con una marca de confianza. Con Paga en 3 plazos de PayPal, los clientes pueden pagar poco a poco y tú recibes el importe por adelantado. Contribuye a aumentar el valor medio de tus pedidos y a lograr más ventas, sin ningún coste adicional para ti.\";}i:6;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"it_IT\";s:5:\"title\";s:53:\"Con Paga in 3 rate i visitatori diventano acquirenti.\";s:7:\"content\";s:341:\"Aggiungi PayPal tra i tuoi metodi di pagamento e offri ai tuoi clienti un pagamento a rate di cui si fidano. Con Paga in 3 rate di PayPal tu ricevi il pagamento interamente all\'acquisto e i tuoi clienti possono dilazionarlo in più rate. Promuovi un incremento del valore medio degli ordini e delle conversioni, senza alcun costo aggiuntivo.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"paypal_paylater_g3_q4_22\";s:7:\"locales\";a:7:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:23:\"Install PayPal Payments\";}i:1;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_GB\";s:5:\"label\";s:23:\"Install PayPal Payments\";}i:2;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_AU\";s:5:\"label\";s:23:\"Install PayPal Payments\";}i:3;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"fr_FR\";s:5:\"label\";s:30:\"Installer les Paiements PayPal\";}i:4;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"de_DE\";s:5:\"label\";s:28:\"PayPal Payments installieren\";}i:5;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_ES\";s:5:\"label\";s:25:\"Instalar Pagos con PayPal\";}i:6;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"it_IT\";s:5:\"label\";s:25:\"Installa Pagamenti PayPal\";}}s:3:\"url\";s:140:\"https://woocommerce.com/products/woocommerce-paypal-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=paypal_paylater_g3_q4_22\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-11-01 15:00:48\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2023-01-31 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ES\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IT\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:15:\"paypal-advanced\";}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:9:\"braintree\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:10:\"paypal-pro\";}}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:15:\"paypal-standard\";}}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"paypal-plus-for-germany\";}}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:35:\"woocommerce-gateway-paypal-checkout\";}}}}}}}}s:24:\"paypal_paylater_g2_q4_22\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"paypal_paylater_g2_q4_22\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:57:\"Upgrade to PayPal Payments to offer Pay Later at checkout\";s:7:\"content\";s:283:\"PayPal Pay Later is included in PayPal Payments at no additional cost to you. Customers can spread their payments over time while you get paid up front. \r\nThere’s never been a better time to upgrade your PayPal plugin. Simply download it and connect with a PayPal Business account.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"paypal_paylater_g2_q4_22\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:23:\"Install PayPal Payments\";}}s:3:\"url\";s:140:\"https://woocommerce.com/products/woocommerce-paypal-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=paypal_paylater_g2_q4_22\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-11-03 15:00:41\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2023-02-01 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ES\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IT\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:15:\"paypal-advanced\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:9:\"braintree\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:10:\"paypal-pro\";}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:15:\"paypal-standard\";}}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"paypal-plus-for-germany\";}}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:35:\"woocommerce-gateway-paypal-checkout\";}}}}}}}}','no');
INSERT INTO `wp_options` VALUES (399,'_transient_shipping-transient-version','1667788552','yes');
INSERT INTO `wp_options` VALUES (400,'woocommerce_admin_created_default_shipping_zones','yes','yes');
INSERT INTO `wp_options` VALUES (401,'_transient_woocommerce_shipping_task_zone_count_transient','1','yes');
INSERT INTO `wp_options` VALUES (402,'woocommerce_task_list_prompt_shown','1','yes');
INSERT INTO `wp_options` VALUES (429,'_transient_product_query-transient-version','1669172029','yes');
INSERT INTO `wp_options` VALUES (430,'_transient_product-transient-version','1668126934','yes');
INSERT INTO `wp_options` VALUES (440,'_transient_timeout_wc_shipping_method_count_legacy','1670383784','no');
INSERT INTO `wp_options` VALUES (441,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1667788552\";s:5:\"value\";i:1;}','no');
INSERT INTO `wp_options` VALUES (465,'_transient_timeout_wc_shipping_method_count','1670384156','no');
INSERT INTO `wp_options` VALUES (466,'_transient_wc_shipping_method_count','a:2:{s:7:\"version\";s:10:\"1667788552\";s:5:\"value\";i:1;}','no');
INSERT INTO `wp_options` VALUES (469,'woocommerce_admin_reviewed_default_shipping_zones','yes','yes');
INSERT INTO `wp_options` VALUES (470,'woocommerce_task_list_reminder_bar_hidden','yes','yes');
INSERT INTO `wp_options` VALUES (473,'woocommerce_cod_settings','a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Pagamento na entrega\";s:11:\"description\";s:29:\"Pagar em dinheiro na entrega.\";s:12:\"instructions\";s:29:\"Pagar em dinheiro na entrega.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}','yes');
INSERT INTO `wp_options` VALUES (476,'woocommerce_gateway_order','a:3:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (500,'current_theme','Handel','yes');
INSERT INTO `wp_options` VALUES (501,'theme_mods_handel','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (502,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (503,'woocommerce_maybe_regenerate_images_hash','991b1ca641921cf0f5baf7a2fe85861b','yes');
INSERT INTO `wp_options` VALUES (534,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":4,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (658,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (763,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (764,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (785,'woocommerce_analytics_enabled','yes','yes');
INSERT INTO `wp_options` VALUES (786,'woocommerce_navigation_enabled','no','yes');
INSERT INTO `wp_options` VALUES (788,'woocommerce_feature_custom_order_tables_enabled','no','yes');
INSERT INTO `wp_options` VALUES (804,'woocommerce_attribute_lookup_enabled','no','yes');
INSERT INTO `wp_options` VALUES (805,'woocommerce_attribute_lookup_regeneration_aborted','yes','yes');
INSERT INTO `wp_options` VALUES (889,'medium_crop','1','yes');
INSERT INTO `wp_options` VALUES (912,'product_cat_children','a:2:{i:19;a:2:{i:0;i:20;i:1;i:21;}i:16;a:2:{i:0;i:22;i:1;i:23;}}','yes');
INSERT INTO `wp_options` VALUES (914,'_transient_wc_attribute_taxonomies','a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:8:\"tamanhos\";s:15:\"attribute_label\";s:8:\"Tamanhos\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}','yes');
INSERT INTO `wp_options` VALUES (1029,'_transient_timeout_wc_product_children_31','1670717461','no');
INSERT INTO `wp_options` VALUES (1030,'_transient_wc_product_children_31','a:2:{s:3:\"all\";a:3:{i:0;i:33;i:1;i:34;i:2;i:35;}s:7:\"visible\";a:3:{i:0;i:33;i:1;i:34;i:2;i:35;}}','no');
INSERT INTO `wp_options` VALUES (1031,'_transient_timeout_wc_var_prices_31','1670718944','no');
INSERT INTO `wp_options` VALUES (1032,'_transient_wc_var_prices_31','{\"version\":\"1668126934\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"33\":\"129.00\",\"34\":\"129.00\",\"35\":\"129.00\"},\"regular_price\":{\"33\":\"129.00\",\"34\":\"129.00\",\"35\":\"129.00\"},\"sale_price\":{\"33\":\"129.00\",\"34\":\"129.00\",\"35\":\"129.00\"}}}','no');
INSERT INTO `wp_options` VALUES (1041,'_transient_timeout_wc_product_children_0','1670717958','no');
INSERT INTO `wp_options` VALUES (1042,'_transient_wc_product_children_0','a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1093,'_transient_timeout_wc_product_children_40','1670718277','no');
INSERT INTO `wp_options` VALUES (1094,'_transient_wc_product_children_40','a:2:{s:3:\"all\";a:3:{i:0;i:41;i:1;i:42;i:2;i:43;}s:7:\"visible\";a:3:{i:0;i:41;i:1;i:42;i:2;i:43;}}','no');
INSERT INTO `wp_options` VALUES (1095,'_transient_timeout_wc_var_prices_40','1670718944','no');
INSERT INTO `wp_options` VALUES (1096,'_transient_wc_var_prices_40','{\"version\":\"1668126934\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"41\":\"59.00\",\"42\":\"59.00\",\"43\":\"59.00\"},\"regular_price\":{\"41\":\"59.00\",\"42\":\"59.00\",\"43\":\"59.00\"},\"sale_price\":{\"41\":\"59.00\",\"42\":\"59.00\",\"43\":\"59.00\"}}}','no');
INSERT INTO `wp_options` VALUES (1131,'_transient_timeout_wc_product_children_51','1670718679','no');
INSERT INTO `wp_options` VALUES (1132,'_transient_wc_product_children_51','a:2:{s:3:\"all\";a:3:{i:0;i:52;i:1;i:53;i:2;i:54;}s:7:\"visible\";a:3:{i:0;i:52;i:1;i:53;i:2;i:54;}}','no');
INSERT INTO `wp_options` VALUES (1134,'_transient_timeout_wc_var_prices_51','1670720397','no');
INSERT INTO `wp_options` VALUES (1135,'_transient_wc_var_prices_51','{\"version\":\"1668126934\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"52\":\"299.00\",\"53\":\"129.00\",\"54\":\"129.00\"},\"regular_price\":{\"52\":\"299.00\",\"53\":\"129.00\",\"54\":\"129.00\"},\"sale_price\":{\"52\":\"299.00\",\"53\":\"129.00\",\"54\":\"129.00\"}}}','no');
INSERT INTO `wp_options` VALUES (1230,'_transient_timeout_wc_term_counts','1670722855','no');
INSERT INTO `wp_options` VALUES (1231,'_transient_wc_term_counts','a:7:{i:23;s:1:\"2\";i:16;s:1:\"5\";i:27;s:1:\"7\";i:20;s:1:\"3\";i:19;s:1:\"5\";i:22;s:1:\"3\";i:21;s:1:\"2\";}','no');
INSERT INTO `wp_options` VALUES (1388,'_transient_timeout_woocommerce_admin_remote_free_extensions_specs','1669574929','no');
INSERT INTO `wp_options` VALUES (1389,'_transient_woocommerce_admin_remote_free_extensions_specs','a:1:{s:5:\"pt_BR\";a:4:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:20:\"Comece com o básico\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:163:\"Accept credit cards and other popular payment methods with <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooCommerce Payments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:127:\"Imprima etiquetas de entrega com o <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:128:\"Tenha cálculo de impostos automatizado com o <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:118:\"Aumente a velocidade e segurança com o <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:16:\"Expanda sua loja\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:118:\"Evolua seu marketing por e-mail com o <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:8:\"mailpoet\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:123:\"Gere vendas com <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google Listing & Ads</a>\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:23:\"google-listings-and-ads\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Facebook para WooCommerce\";s:11:\"description\";s:141:\"List products and create ads on Facebook and Instagram with <a href=\"https://woocommerce.com/products/facebook/\">Facebook for WooCommerce</a>\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:24:\"facebook-for-woocommerce\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:23:\"TikTok para WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:168:\"Create ad campaigns and reach one billion global users with <a href=\"https://woocommerce.com/products/tiktok-for-woocommerce\" target=\"_blank\">TikTok for WooCommerce</a>\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:23:\"tiktok-for-business:alt\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:16:\"Alcance clientes\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:124:\"Crie e envie e-mails de acompanhamento de compras, boletins informativos e campanhas promocionais diretamente do seu painel.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.png\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"Mailchimp\";s:11:\"description\";s:88:\"Envie campanhas direcionadas, recupere carrinhos abandonados e muito mais com Mailchimp.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp-for-woocommerce.png\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:25:\"mailchimp-for-woocommerce\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"Creative Mail para WooCommerce\";s:11:\"description\";s:105:\"Crie campanhas de loja, promoções rápidas por e-mail e redirecionamento de clientes com Creative Mail.\";s:9:\"image_url\";s:121:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/creative-mail-by-constant-contact.png\";s:10:\"manage_url\";s:27:\"admin.php?page=creativemail\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"creative-mail-by-constant-contact\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:16:\"Expanda sua loja\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:163:\"Alcance mais compradores e impulsione as vendas da sua loja. Integre-se ao Google para listar seus produtos gratuitamente e lançar campanhas publicitárias pagas.\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:23:\"TikTok para WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:118:\"Grow your online sales by promoting your products on TikTok to over one billion monthly active users around the world.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PH\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VN\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TH\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"KR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IL\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UA\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TR\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SA\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Facebook para WooCommerce\";s:11:\"description\";s:55:\"List products and create ads on Facebook and Instagram.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:28:\"facebook-for-woocommerce:alt\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:26:\"Pinterest para WooCommerce\";s:11:\"description\";s:159:\"Get your products in front of Pinterest users searching for ideas and things to buy. Get started with Pinterest and make your entire product catalog browsable.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}}}}}','no');
INSERT INTO `wp_options` VALUES (1390,'_site_transient_timeout_browser_f318d71f51e2f42138d3a75f6a7137a8','1669574932','no');
INSERT INTO `wp_options` VALUES (1391,'_site_transient_browser_f318d71f51e2f42138d3a75f6a7137a8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"107.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1392,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1669574934','no');
INSERT INTO `wp_options` VALUES (1393,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1403,'_transient_timeout_orders-all-statuses','1669574950','no');
INSERT INTO `wp_options` VALUES (1404,'_transient_orders-all-statuses','a:2:{s:7:\"version\";s:10:\"1667788465\";s:5:\"value\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1413,'_transient_timeout_woocommerce_admin_payment_method_promotion_specs','1669575647','no');
INSERT INTO `wp_options` VALUES (1414,'_transient_woocommerce_admin_payment_method_promotion_specs','a:1:{s:5:\"pt_BR\";a:1:{s:20:\"woocommerce_payments\";O:8:\"stdClass\":8:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:369:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.<br/><br/>By clicking “Install”, you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}}}','no');
INSERT INTO `wp_options` VALUES (1415,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (1876,'_transient_timeout_global_styles_handel','1669260763','no');
INSERT INTO `wp_options` VALUES (1877,'_transient_global_styles_handel','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
INSERT INTO `wp_options` VALUES (1879,'_transient_timeout__woocommerce_helper_subscriptions','1669261609','no');
INSERT INTO `wp_options` VALUES (1880,'_transient__woocommerce_helper_subscriptions','a:0:{}','no');
INSERT INTO `wp_options` VALUES (1881,'_site_transient_timeout_theme_roots','1669262510','no');
INSERT INTO `wp_options` VALUES (1882,'_site_transient_theme_roots','a:1:{s:6:\"handel\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1883,'_transient_timeout__woocommerce_helper_updates','1669303910','no');
INSERT INTO `wp_options` VALUES (1884,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1669260710;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no');
INSERT INTO `wp_options` VALUES (1885,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.1.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:3:\"6.1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1669260717;s:15:\"version_checked\";s:3:\"6.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"6.1\";s:7:\"updated\";s:19:\"2022-11-11 11:26:05\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}','no');
INSERT INTO `wp_options` VALUES (1886,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1669260718;s:7:\"checked\";a:1:{s:6:\"handel\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1887,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1669260720;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"7.1.0\";s:7:\"updated\";s:19:\"2022-11-21 11:04:40\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/7.1.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"7.1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.7.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}}s:7:\"checked\";a:2:{s:23:\"loco-translate/loco.php\";s:5:\"2.6.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"7.1.0\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_wp_attached_file','woocommerce-placeholder.png');
INSERT INTO `wp_postmeta` VALUES (4,5,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11776;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2273;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36138;}s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11776;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:92539;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4209;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56337;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (5,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (6,11,'_edit_lock','1668123465:1');
INSERT INTO `wp_postmeta` VALUES (7,11,'_wp_old_date','2022-11-06');
INSERT INTO `wp_postmeta` VALUES (8,11,'_sku','camisa-preta');
INSERT INTO `wp_postmeta` VALUES (9,11,'_regular_price','59');
INSERT INTO `wp_postmeta` VALUES (10,11,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (11,11,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (12,11,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (13,11,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (14,11,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (15,11,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (16,11,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (17,11,'_length','5');
INSERT INTO `wp_postmeta` VALUES (18,11,'_width','5');
INSERT INTO `wp_postmeta` VALUES (19,11,'_height','5');
INSERT INTO `wp_postmeta` VALUES (20,11,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (21,11,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (22,11,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (23,11,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (24,11,'_stock','10');
INSERT INTO `wp_postmeta` VALUES (25,11,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (26,11,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (27,11,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (28,11,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (29,11,'_price','59');
INSERT INTO `wp_postmeta` VALUES (33,16,'_edit_lock','1669068599:1');
INSERT INTO `wp_postmeta` VALUES (34,16,'_wp_page_template','page-home.php');
INSERT INTO `wp_postmeta` VALUES (35,7,'_edit_lock','1668129221:1');
INSERT INTO `wp_postmeta` VALUES (50,24,'_wp_attached_file','2022/11/feminino.jpg');
INSERT INTO `wp_postmeta` VALUES (51,24,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:920;s:4:\"file\";s:20:\"2022/11/feminino.jpg\";s:8:\"filesize\";i:476325;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"feminino-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:255224;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"feminino-1024x654.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:192596;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"feminino-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12132;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"feminino-768x491.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105749;}s:5:\"slide\";a:5:{s:4:\"file\";s:21:\"feminino-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:279393;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"feminino-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35816;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"feminino-600x383.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65086;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"feminino-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6911;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (52,25,'_wp_attached_file','2022/11/masculino.jpg');
INSERT INTO `wp_postmeta` VALUES (53,25,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:920;s:4:\"file\";s:21:\"2022/11/masculino.jpg\";s:8:\"filesize\";i:223811;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"masculino-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116300;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"masculino-1024x654.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109126;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"masculino-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7655;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"masculino-768x491.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64378;}s:5:\"slide\";a:5:{s:4:\"file\";s:22:\"masculino-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145616;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"masculino-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21321;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"masculino-600x383.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41958;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"masculino-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4651;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (54,11,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (55,11,'_wp_trash_meta_time','1668123731');
INSERT INTO `wp_postmeta` VALUES (56,11,'_wp_desired_post_slug','camisa-preta');
INSERT INTO `wp_postmeta` VALUES (57,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (58,26,'_edit_lock','1668123880:1');
INSERT INTO `wp_postmeta` VALUES (61,28,'_wp_attached_file','2022/11/feminino-1.jpg');
INSERT INTO `wp_postmeta` VALUES (62,28,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2022/11/feminino-1.jpg\";s:8:\"filesize\";i:105313;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"feminino-1-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90617;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"feminino-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:130569;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6873;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"feminino-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84989;}s:5:\"slide\";a:5:{s:4:\"file\";s:23:\"feminino-1-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102428;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"feminino-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20069;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"feminino-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57231;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3778;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (63,26,'_thumbnail_id','28');
INSERT INTO `wp_postmeta` VALUES (64,26,'_sku','camisa-marrom');
INSERT INTO `wp_postmeta` VALUES (65,26,'_regular_price','159');
INSERT INTO `wp_postmeta` VALUES (66,26,'_sale_price','99');
INSERT INTO `wp_postmeta` VALUES (67,26,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (68,26,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (69,26,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (70,26,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (71,26,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (72,26,'_low_stock_amount','1');
INSERT INTO `wp_postmeta` VALUES (73,26,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (74,26,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (75,26,'_length','10');
INSERT INTO `wp_postmeta` VALUES (76,26,'_width','10');
INSERT INTO `wp_postmeta` VALUES (77,26,'_height','10');
INSERT INTO `wp_postmeta` VALUES (78,26,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (79,26,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (80,26,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (81,26,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (82,26,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (83,26,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (84,26,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (85,26,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (86,26,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (87,26,'_price','99');
INSERT INTO `wp_postmeta` VALUES (88,29,'_sku','saia-azul-1');
INSERT INTO `wp_postmeta` VALUES (89,29,'_regular_price','239');
INSERT INTO `wp_postmeta` VALUES (91,29,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (92,29,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (93,29,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (94,29,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (95,29,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (96,29,'_low_stock_amount','1');
INSERT INTO `wp_postmeta` VALUES (97,29,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (98,29,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (99,29,'_length','10');
INSERT INTO `wp_postmeta` VALUES (100,29,'_width','10');
INSERT INTO `wp_postmeta` VALUES (101,29,'_height','10');
INSERT INTO `wp_postmeta` VALUES (102,29,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (103,29,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (104,29,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (105,29,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (106,29,'_thumbnail_id','30');
INSERT INTO `wp_postmeta` VALUES (107,29,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (108,29,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (109,29,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (110,29,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (111,29,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (112,29,'_price','239');
INSERT INTO `wp_postmeta` VALUES (113,29,'_edit_lock','1668124141:1');
INSERT INTO `wp_postmeta` VALUES (114,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (115,30,'_wp_attached_file','2022/11/feminino-2.jpg');
INSERT INTO `wp_postmeta` VALUES (116,30,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2022/11/feminino-2.jpg\";s:8:\"filesize\";i:103604;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"feminino-2-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85905;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"feminino-2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127922;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6036;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"feminino-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78655;}s:5:\"slide\";a:5:{s:4:\"file\";s:23:\"feminino-2-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105526;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"feminino-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17123;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"feminino-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50765;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3430;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (117,31,'_sku','camisa-preta-f-1');
INSERT INTO `wp_postmeta` VALUES (119,31,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (120,31,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (121,31,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (122,31,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (123,31,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (125,31,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (126,31,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (127,31,'_length','10');
INSERT INTO `wp_postmeta` VALUES (128,31,'_width','10');
INSERT INTO `wp_postmeta` VALUES (129,31,'_height','10');
INSERT INTO `wp_postmeta` VALUES (130,31,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (131,31,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (132,31,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (133,31,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (134,31,'_thumbnail_id','32');
INSERT INTO `wp_postmeta` VALUES (135,31,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (136,31,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (137,31,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (138,31,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (139,31,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (141,31,'_edit_lock','1668125362:1');
INSERT INTO `wp_postmeta` VALUES (142,32,'_wp_attached_file','2022/11/feminino-3.jpg');
INSERT INTO `wp_postmeta` VALUES (143,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2022/11/feminino-3.jpg\";s:8:\"filesize\";i:128015;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"feminino-3-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105946;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"feminino-3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164565;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4966;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"feminino-3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:96033;}s:5:\"slide\";a:5:{s:4:\"file\";s:23:\"feminino-3-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124436;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"feminino-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16186;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"feminino-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58937;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2774;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (144,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (145,31,'_product_attributes','a:1:{s:11:\"pa_tamanhos\";a:6:{s:4:\"name\";s:11:\"pa_tamanhos\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}');
INSERT INTO `wp_postmeta` VALUES (146,33,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (147,33,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (148,33,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (149,33,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (150,33,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (151,33,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (152,33,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (153,33,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (154,33,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (155,33,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (156,33,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (157,33,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (158,33,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (159,33,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (160,33,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (161,33,'attribute_pa_tamanhos','pequeno');
INSERT INTO `wp_postmeta` VALUES (162,33,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (163,34,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (164,34,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (165,34,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (166,34,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (167,34,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (168,34,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (169,34,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (170,34,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (171,34,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (172,34,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (173,34,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (174,34,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (175,34,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (176,34,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (177,34,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (178,34,'attribute_pa_tamanhos','medio');
INSERT INTO `wp_postmeta` VALUES (179,34,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (180,35,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (181,35,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (182,35,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (183,35,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (184,35,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (185,35,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (186,35,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (187,35,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (188,35,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (189,35,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (190,35,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (191,35,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (192,35,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (193,35,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (194,35,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (195,35,'attribute_pa_tamanhos','grande');
INSERT INTO `wp_postmeta` VALUES (196,35,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (197,35,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (198,35,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (199,35,'_price','129');
INSERT INTO `wp_postmeta` VALUES (200,34,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (201,34,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (202,34,'_price','129');
INSERT INTO `wp_postmeta` VALUES (203,33,'_sku','camisa-preta-p');
INSERT INTO `wp_postmeta` VALUES (204,33,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (205,33,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (206,33,'_price','129');
INSERT INTO `wp_postmeta` VALUES (213,34,'_sku','camisa-preta-m');
INSERT INTO `wp_postmeta` VALUES (214,35,'_sku','camisa-preta-g');
INSERT INTO `wp_postmeta` VALUES (215,31,'_price','129');
INSERT INTO `wp_postmeta` VALUES (216,37,'_sku','saia-rosa');
INSERT INTO `wp_postmeta` VALUES (217,37,'_regular_price','259');
INSERT INTO `wp_postmeta` VALUES (218,37,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (219,37,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (220,37,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (221,37,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (222,37,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (223,37,'_low_stock_amount','1');
INSERT INTO `wp_postmeta` VALUES (224,37,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (225,37,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (226,37,'_length','10');
INSERT INTO `wp_postmeta` VALUES (227,37,'_width','10');
INSERT INTO `wp_postmeta` VALUES (228,37,'_height','10');
INSERT INTO `wp_postmeta` VALUES (229,37,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (230,37,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (231,37,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (232,37,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (233,37,'_thumbnail_id','38');
INSERT INTO `wp_postmeta` VALUES (234,37,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (235,37,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (236,37,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (237,37,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (238,37,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (239,37,'_price','259');
INSERT INTO `wp_postmeta` VALUES (240,37,'_edit_lock','1668125804:1');
INSERT INTO `wp_postmeta` VALUES (241,38,'_wp_attached_file','2022/11/feminino-4.jpg');
INSERT INTO `wp_postmeta` VALUES (242,38,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2022/11/feminino-4.jpg\";s:8:\"filesize\";i:106344;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"feminino-4-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84907;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"feminino-4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122012;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6404;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"feminino-4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77588;}s:5:\"slide\";a:5:{s:4:\"file\";s:23:\"feminino-4-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95601;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"feminino-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18248;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"feminino-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52130;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3485;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (243,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (244,39,'_wp_attached_file','2022/11/feminino-5.jpg');
INSERT INTO `wp_postmeta` VALUES (245,39,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2022/11/feminino-5.jpg\";s:8:\"filesize\";i:98652;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"feminino-5-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81914;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"feminino-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:115995;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6455;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"feminino-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74170;}s:5:\"slide\";a:5:{s:4:\"file\";s:23:\"feminino-5-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94616;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"feminino-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17739;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"feminino-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50095;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"feminino-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3678;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (246,40,'_sku','camisa-branca-f');
INSERT INTO `wp_postmeta` VALUES (247,40,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (248,40,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (249,40,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (250,40,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (251,40,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (252,40,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (253,40,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (254,40,'_length','10');
INSERT INTO `wp_postmeta` VALUES (255,40,'_width','10');
INSERT INTO `wp_postmeta` VALUES (256,40,'_height','10');
INSERT INTO `wp_postmeta` VALUES (257,40,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (258,40,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (259,40,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (260,40,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (261,40,'_thumbnail_id','39');
INSERT INTO `wp_postmeta` VALUES (262,40,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (263,40,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (264,40,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (265,40,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (266,40,'_product_attributes','a:1:{s:11:\"pa_tamanhos\";a:6:{s:4:\"name\";s:11:\"pa_tamanhos\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}');
INSERT INTO `wp_postmeta` VALUES (267,40,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (268,41,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (269,41,'_sku','camisa-branca-p');
INSERT INTO `wp_postmeta` VALUES (270,41,'_regular_price','59');
INSERT INTO `wp_postmeta` VALUES (271,41,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (272,41,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (273,41,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (274,41,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (275,41,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (276,41,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (277,41,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (278,41,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (279,41,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (280,41,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (281,41,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (282,41,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (283,41,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (284,41,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (285,41,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (286,41,'attribute_pa_tamanhos','pequeno');
INSERT INTO `wp_postmeta` VALUES (287,41,'_price','59');
INSERT INTO `wp_postmeta` VALUES (288,41,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (289,42,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (290,42,'_sku','camisa-branca-m');
INSERT INTO `wp_postmeta` VALUES (291,42,'_regular_price','59');
INSERT INTO `wp_postmeta` VALUES (292,42,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (293,42,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (294,42,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (295,42,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (296,42,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (297,42,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (298,42,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (299,42,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (300,42,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (301,42,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (302,42,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (303,42,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (304,42,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (305,42,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (306,42,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (307,42,'attribute_pa_tamanhos','medio');
INSERT INTO `wp_postmeta` VALUES (308,42,'_price','59');
INSERT INTO `wp_postmeta` VALUES (309,42,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (310,43,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (311,43,'_sku','camisa-branca-g');
INSERT INTO `wp_postmeta` VALUES (312,43,'_regular_price','59');
INSERT INTO `wp_postmeta` VALUES (313,43,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (314,43,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (315,43,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (316,43,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (317,43,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (318,43,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (319,43,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (320,43,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (321,43,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (322,43,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (323,43,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (324,43,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (325,43,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (326,43,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (327,43,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (328,43,'attribute_pa_tamanhos','grande');
INSERT INTO `wp_postmeta` VALUES (329,43,'_price','59');
INSERT INTO `wp_postmeta` VALUES (330,43,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (332,40,'_edit_lock','1668126139:1');
INSERT INTO `wp_postmeta` VALUES (333,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (354,44,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (355,44,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (356,44,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (357,44,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (358,44,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (359,44,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (360,44,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (361,44,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (362,44,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (363,44,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (364,44,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (365,44,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (366,44,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (369,44,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (370,44,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (371,44,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (378,40,'_price','59');
INSERT INTO `wp_postmeta` VALUES (379,45,'_sku','camisa-vermelha');
INSERT INTO `wp_postmeta` VALUES (380,45,'_regular_price','199');
INSERT INTO `wp_postmeta` VALUES (381,45,'_sale_price','99');
INSERT INTO `wp_postmeta` VALUES (382,45,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (383,45,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (384,45,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (385,45,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (386,45,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (387,45,'_low_stock_amount','1');
INSERT INTO `wp_postmeta` VALUES (388,45,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (389,45,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (390,45,'_length','10');
INSERT INTO `wp_postmeta` VALUES (391,45,'_width','10');
INSERT INTO `wp_postmeta` VALUES (392,45,'_height','10');
INSERT INTO `wp_postmeta` VALUES (393,45,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (394,45,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (395,45,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (396,45,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (397,45,'_thumbnail_id','46');
INSERT INTO `wp_postmeta` VALUES (398,45,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (399,45,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (400,45,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (401,45,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (402,45,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (403,45,'_price','99');
INSERT INTO `wp_postmeta` VALUES (404,45,'_edit_lock','1668126299:1');
INSERT INTO `wp_postmeta` VALUES (405,46,'_wp_attached_file','2022/11/masculino-1.jpg');
INSERT INTO `wp_postmeta` VALUES (406,46,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2022/11/masculino-1.jpg\";s:8:\"filesize\";i:171808;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"masculino-1-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116345;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"masculino-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:171312;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6848;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"masculino-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104914;}s:5:\"slide\";a:5:{s:4:\"file\";s:24:\"masculino-1-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128397;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"masculino-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21913;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"masculino-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68234;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3553;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (407,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (408,47,'_wp_attached_file','2022/11/masculino-2.jpg');
INSERT INTO `wp_postmeta` VALUES (409,47,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2022/11/masculino-2.jpg\";s:8:\"filesize\";i:179350;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"masculino-2-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:136350;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"masculino-2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:206914;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8048;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"masculino-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:126392;}s:5:\"slide\";a:5:{s:4:\"file\";s:24:\"masculino-2-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:149031;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"masculino-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25561;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"masculino-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80641;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4268;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (410,48,'_wp_attached_file','2022/11/masculino-3.jpg');
INSERT INTO `wp_postmeta` VALUES (411,48,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2022/11/masculino-3.jpg\";s:8:\"filesize\";i:146624;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"masculino-3-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124348;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"masculino-3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:184056;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8774;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"masculino-3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116409;}s:5:\"slide\";a:5:{s:4:\"file\";s:24:\"masculino-3-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:147091;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"masculino-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26598;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"masculino-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77213;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4721;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (412,49,'_wp_attached_file','2022/11/masculino-4.jpg');
INSERT INTO `wp_postmeta` VALUES (413,49,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2022/11/masculino-4.jpg\";s:8:\"filesize\";i:83773;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"masculino-4-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75697;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"masculino-4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112931;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5291;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"masculino-4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72180;}s:5:\"slide\";a:5:{s:4:\"file\";s:24:\"masculino-4-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87025;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"masculino-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15802;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"masculino-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48136;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3016;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (414,50,'_wp_attached_file','2022/11/masculino-5.jpg');
INSERT INTO `wp_postmeta` VALUES (415,50,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2022/11/masculino-5.jpg\";s:8:\"filesize\";i:139976;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"masculino-5-760x840.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109864;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"masculino-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164631;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6394;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"masculino-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100707;}s:5:\"slide\";a:5:{s:4:\"file\";s:24:\"masculino-5-1000x800.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124452;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"masculino-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19890;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"masculino-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64095;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"masculino-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3413;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (416,51,'_sku','camisa-preta-mas');
INSERT INTO `wp_postmeta` VALUES (417,51,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (418,51,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (419,51,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (420,51,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (421,51,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (422,51,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (423,51,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (424,51,'_length','10');
INSERT INTO `wp_postmeta` VALUES (425,51,'_width','10');
INSERT INTO `wp_postmeta` VALUES (426,51,'_height','10');
INSERT INTO `wp_postmeta` VALUES (427,51,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (428,51,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (429,51,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (430,51,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (431,51,'_thumbnail_id','49');
INSERT INTO `wp_postmeta` VALUES (432,51,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (433,51,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (434,51,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (435,51,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (436,51,'_product_attributes','a:1:{s:11:\"pa_tamanhos\";a:6:{s:4:\"name\";s:11:\"pa_tamanhos\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}');
INSERT INTO `wp_postmeta` VALUES (437,51,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (438,52,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (439,52,'_sku','camisa-preta-p-1');
INSERT INTO `wp_postmeta` VALUES (440,52,'_regular_price','299');
INSERT INTO `wp_postmeta` VALUES (441,52,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (442,52,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (443,52,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (444,52,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (445,52,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (446,52,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (447,52,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (448,52,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (449,52,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (450,52,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (451,52,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (452,52,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (453,52,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (454,52,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (455,52,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (456,52,'attribute_pa_tamanhos','pequeno');
INSERT INTO `wp_postmeta` VALUES (457,52,'_price','299');
INSERT INTO `wp_postmeta` VALUES (458,52,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (459,53,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (460,53,'_sku','camisa-preta-m-1');
INSERT INTO `wp_postmeta` VALUES (461,53,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (462,53,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (463,53,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (464,53,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (465,53,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (466,53,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (467,53,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (468,53,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (469,53,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (470,53,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (471,53,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (472,53,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (473,53,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (474,53,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (475,53,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (476,53,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (477,53,'attribute_pa_tamanhos','medio');
INSERT INTO `wp_postmeta` VALUES (478,53,'_price','129');
INSERT INTO `wp_postmeta` VALUES (479,53,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (480,54,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (481,54,'_sku','camisa-preta-g-1');
INSERT INTO `wp_postmeta` VALUES (482,54,'_regular_price','129');
INSERT INTO `wp_postmeta` VALUES (483,54,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (484,54,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (485,54,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (486,54,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (487,54,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (488,54,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (489,54,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (490,54,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (491,54,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (492,54,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (493,54,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (494,54,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (495,54,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (496,54,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (497,54,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (498,54,'attribute_pa_tamanhos','grande');
INSERT INTO `wp_postmeta` VALUES (499,54,'_price','129');
INSERT INTO `wp_postmeta` VALUES (500,54,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (502,51,'_edit_lock','1668126564:1');
INSERT INTO `wp_postmeta` VALUES (503,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (508,51,'_price','129');
INSERT INTO `wp_postmeta` VALUES (509,51,'_price','299');
INSERT INTO `wp_postmeta` VALUES (510,55,'_sku','camisa-laranja');
INSERT INTO `wp_postmeta` VALUES (511,55,'_regular_price','299');
INSERT INTO `wp_postmeta` VALUES (513,55,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (514,55,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (515,55,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (516,55,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (517,55,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (518,55,'_low_stock_amount','1');
INSERT INTO `wp_postmeta` VALUES (519,55,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (520,55,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (521,55,'_length','10');
INSERT INTO `wp_postmeta` VALUES (522,55,'_width','10');
INSERT INTO `wp_postmeta` VALUES (523,55,'_height','10');
INSERT INTO `wp_postmeta` VALUES (524,55,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (525,55,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (526,55,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (527,55,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (528,55,'_thumbnail_id','47');
INSERT INTO `wp_postmeta` VALUES (529,55,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (530,55,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (531,55,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (532,55,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (533,55,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (534,55,'_price','299');
INSERT INTO `wp_postmeta` VALUES (535,55,'_edit_lock','1668126662:1');
INSERT INTO `wp_postmeta` VALUES (536,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (537,56,'_sku','bermuda-jeans');
INSERT INTO `wp_postmeta` VALUES (538,56,'_regular_price','59');
INSERT INTO `wp_postmeta` VALUES (539,56,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (540,56,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (541,56,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (542,56,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (543,56,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (544,56,'_low_stock_amount','1');
INSERT INTO `wp_postmeta` VALUES (545,56,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (546,56,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (547,56,'_length','10');
INSERT INTO `wp_postmeta` VALUES (548,56,'_width','10');
INSERT INTO `wp_postmeta` VALUES (549,56,'_height','10');
INSERT INTO `wp_postmeta` VALUES (550,56,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (551,56,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (552,56,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (553,56,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (554,56,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (555,56,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (556,56,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (557,56,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (558,56,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (559,56,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (560,56,'_price','59');
INSERT INTO `wp_postmeta` VALUES (561,56,'_edit_lock','1668126731:1');
INSERT INTO `wp_postmeta` VALUES (562,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (563,57,'_sku','bermuda-preta');
INSERT INTO `wp_postmeta` VALUES (564,57,'_regular_price','69');
INSERT INTO `wp_postmeta` VALUES (565,57,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (566,57,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (567,57,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (568,57,'_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES (569,57,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (570,57,'_low_stock_amount','1');
INSERT INTO `wp_postmeta` VALUES (571,57,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (572,57,'_weight','0.5');
INSERT INTO `wp_postmeta` VALUES (573,57,'_length','10');
INSERT INTO `wp_postmeta` VALUES (574,57,'_width','10');
INSERT INTO `wp_postmeta` VALUES (575,57,'_height','10');
INSERT INTO `wp_postmeta` VALUES (576,57,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (577,57,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (578,57,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (579,57,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (580,57,'_thumbnail_id','50');
INSERT INTO `wp_postmeta` VALUES (581,57,'_stock','5');
INSERT INTO `wp_postmeta` VALUES (582,57,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (583,57,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (584,57,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (585,57,'_product_version','7.1.0');
INSERT INTO `wp_postmeta` VALUES (586,57,'_price','69');
INSERT INTO `wp_postmeta` VALUES (587,57,'_edit_lock','1668128253:1');
INSERT INTO `wp_postmeta` VALUES (588,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (589,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (590,7,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (591,7,'_wp_trash_meta_time','1668129369');
INSERT INTO `wp_postmeta` VALUES (592,7,'_wp_desired_post_slug','carrinho');
INSERT INTO `wp_postmeta` VALUES (593,60,'_edit_lock','1668130676:1');
INSERT INTO `wp_postmeta` VALUES (594,69,'_edit_lock','1668970221:1');
INSERT INTO `wp_postmeta` VALUES (595,70,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (596,70,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (597,70,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (598,70,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (599,70,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (600,70,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (601,70,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (602,70,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (603,71,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (604,71,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (605,71,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (606,71,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (607,71,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (608,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (609,71,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (610,71,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (627,74,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (628,74,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (629,74,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (630,74,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (631,74,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (632,74,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (633,74,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (634,74,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (635,75,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (636,75,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (637,75,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (638,75,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (639,75,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (640,75,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (641,75,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (642,75,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (643,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (644,69,'_wp_trash_meta_time','1668970265');
INSERT INTO `wp_postmeta` VALUES (645,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (646,76,'_wp_trash_meta_time','1668970889');
INSERT INTO `wp_postmeta` VALUES (647,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (648,16,'categoria_esquerda','masculino');
INSERT INTO `wp_postmeta` VALUES (653,16,'categoria_direita','feminino');
INSERT INTO `wp_postmeta` VALUES (654,77,'_edit_lock','1669068672:1');
INSERT INTO `wp_postmeta` VALUES (655,78,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (656,78,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (657,78,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (658,78,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (659,78,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (660,78,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (661,78,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (662,78,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (663,79,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (664,79,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (665,79,'_menu_item_object_id','79');
INSERT INTO `wp_postmeta` VALUES (666,79,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (667,79,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (668,79,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (669,79,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (670,79,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (671,80,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (672,80,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (673,80,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (674,80,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (675,80,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (676,80,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (677,80,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (678,80,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (679,81,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (680,81,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (681,81,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (682,81,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (683,81,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (684,81,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (685,81,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (686,81,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (687,82,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (688,82,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (689,82,'_menu_item_object_id','60');
INSERT INTO `wp_postmeta` VALUES (690,82,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (691,82,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (692,82,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (693,82,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (694,82,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (695,83,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (696,83,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (697,83,'_menu_item_object_id','83');
INSERT INTO `wp_postmeta` VALUES (698,83,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (699,83,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (700,83,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (701,83,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (702,83,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (703,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (704,77,'_wp_trash_meta_time','1669068691');
INSERT INTO `wp_postmeta` VALUES (705,84,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (706,84,'_wp_trash_meta_time','1669068704');
INSERT INTO `wp_postmeta` VALUES (707,85,'_edit_lock','1669068733:1');
INSERT INTO `wp_postmeta` VALUES (708,86,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (709,86,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (710,86,'_menu_item_object_id','86');
INSERT INTO `wp_postmeta` VALUES (711,86,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (712,86,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (713,86,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (714,86,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (715,86,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (716,87,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (717,87,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (718,87,'_menu_item_object_id','87');
INSERT INTO `wp_postmeta` VALUES (719,87,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (720,87,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (721,87,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (722,87,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (723,87,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (724,88,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (725,88,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (726,88,'_menu_item_object_id','88');
INSERT INTO `wp_postmeta` VALUES (727,88,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (728,88,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (729,88,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (730,88,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (731,88,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (732,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (733,85,'_wp_trash_meta_time','1669068772');
INSERT INTO `wp_postmeta` VALUES (734,90,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (735,90,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (736,90,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (737,90,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (738,90,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (739,90,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (740,90,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (741,90,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (742,91,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (743,91,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (744,91,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (745,91,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (746,91,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (747,91,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (748,91,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (749,91,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (750,92,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (751,92,'_menu_item_menu_item_parent','91');
INSERT INTO `wp_postmeta` VALUES (752,92,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (753,92,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (754,92,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (755,92,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (756,92,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (757,92,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (758,93,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (759,93,'_menu_item_menu_item_parent','90');
INSERT INTO `wp_postmeta` VALUES (760,93,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (761,93,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (762,93,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (763,93,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (764,93,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (765,93,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (766,94,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (767,94,'_menu_item_menu_item_parent','91');
INSERT INTO `wp_postmeta` VALUES (768,94,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (769,94,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (770,94,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (771,94,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (772,94,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (773,94,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (774,95,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (775,95,'_menu_item_menu_item_parent','90');
INSERT INTO `wp_postmeta` VALUES (776,95,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (777,95,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (778,95,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (779,95,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (780,95,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (781,95,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (782,89,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (783,89,'_wp_trash_meta_time','1669172030');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-11-07 01:48:25','2022-11-07 01:48:25','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-11-07 01:48:25','2022-11-07 01:48:25','',0,'http://handel.test/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-11-07 01:48:25','2022-11-07 01:48:25','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://handel.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-11-07 01:48:25','2022-11-07 01:48:25','',0,'http://handel.test/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-11-07 01:48:25','2022-11-07 01:48:25','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://handel.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-11-07 01:48:25','2022-11-07 01:48:25','',0,'http://handel.test/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-11-06 23:30:46','2022-11-07 02:30:46','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2022-11-06 23:30:46','2022-11-07 02:30:46','',0,'http://handel.test/wp-content/uploads/2022/11/woocommerce-placeholder.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-11-06 23:30:48','2022-11-07 02:30:48','','Loja','','publish','closed','closed','','loja','','','2022-11-06 23:30:48','2022-11-07 02:30:48','',0,'http://handel.test/loja/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-11-06 23:30:49','2022-11-07 02:30:49','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->','Carrinho','','trash','closed','closed','','carrinho__trashed','','','2022-11-10 22:16:09','2022-11-11 01:16:09','',0,'http://handel.test/carrinho/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-11-06 23:30:50','2022-11-07 02:30:50','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Finalização de compra','','publish','closed','closed','','finalizar-compra','','','2022-11-06 23:30:50','2022-11-07 02:30:50','',0,'http://handel.test/finalizar-compra/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-11-06 23:30:50','2022-11-07 02:30:50','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','Minha conta','','publish','closed','closed','','minha-conta','','','2022-11-06 23:30:50','2022-11-07 02:30:50','',0,'http://handel.test/minha-conta/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-11-06 23:30:51','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Política de reembolso e devoluções','','draft','closed','closed','','reembolso_devolucoes','','','2022-11-06 23:30:51','0000-00-00 00:00:00','',0,'http://handel.test/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-11-07 00:28:16','2022-11-07 03:28:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit lobortis tempor. Pellentesque ultricies at sapien finibus cursus. Etiam egestas massa at nisl iaculis, sit amet cursus elit vestibulum. Cras ac tempor ex. Donec varius dui sit amet ultrices fringilla. Nunc tellus libero, maximus vitae sodales at, semper quis leo. Sed augue lectus, consequat ac congue nec, laoreet eget orci. Pellentesque pellentesque ornare ex, eu volutpat magna consequat nec. Nam a mauris ultricies, mattis felis ut, malesuada turpis. Integer facilisis lectus sed mi auctor, vel ultrices neque ultrices. Cras et ante finibus, tincidunt diam et, consequat turpis.','Camisa Preta','','trash','closed','closed','','camisa-preta__trashed','','','2022-11-10 20:42:11','2022-11-10 23:42:11','',0,'http://handel.test/?post_type=product&#038;p=11',0,'product','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-11-09 16:58:49','2022-11-09 19:58:49','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-handel','','','2022-11-09 16:58:49','2022-11-09 19:58:49','',0,'http://handel.test/wp-global-styles-handel/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-11-09 17:03:51','2022-11-09 20:03:51','','Home','','publish','closed','closed','','home','','','2022-11-21 16:51:12','2022-11-21 19:51:12','',0,'http://handel.test/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-11-09 17:03:51','2022-11-09 20:03:51','','Home','','inherit','closed','closed','','16-revision-v1','','','2022-11-09 17:03:51','2022-11-09 20:03:51','',16,'http://handel.test/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-11-10 20:40:04','2022-11-10 23:40:04','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit lobortis tempor. Pellentesque ultricies at sapien finibus cursus. Etiam egestas massa at nisl iaculis, sit amet cursus elit vestibulum. Cras ac tempor ex. Donec varius dui sit amet ultrices fringilla. Nunc tellus libero, maximus vitae sodales at, semper quis leo. Sed augue lectus, consequat ac congue nec, laoreet eget orci. Pellentesque pellentesque ornare ex, eu volutpat magna consequat nec. Nam a mauris ultricies, mattis felis ut, malesuada turpis. Integer facilisis lectus sed mi auctor, vel ultrices neque ultrices. Cras et ante finibus, tincidunt diam et, consequat turpis.','Camisa Preta','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\n\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','inherit','closed','closed','','11-autosave-v1','','','2022-11-10 20:40:04','2022-11-10 23:40:04','',11,'http://handel.test/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-11-10 20:30:16','2022-11-10 23:30:16','','feminino','','inherit','open','closed','','feminino','','','2022-11-10 20:30:16','2022-11-10 23:30:16','',0,'http://handel.test/wp-content/uploads/2022/11/feminino.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-11-10 20:31:33','2022-11-10 23:31:33','','masculino','','inherit','open','closed','','masculino','','','2022-11-10 20:31:33','2022-11-10 23:31:33','',0,'http://handel.test/wp-content/uploads/2022/11/masculino.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-11-10 20:45:39','2022-11-10 23:45:39','Essa é uma Camisa Marrom.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue.','Camisa Morrom','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','publish','closed','closed','','camisa-morrom','','','2022-11-10 20:45:46','2022-11-10 23:45:46','',0,'http://handel.test/?post_type=product&#038;p=26',0,'product','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-11-10 20:44:16','2022-11-10 23:44:16','','feminino-1','','inherit','open','closed','','feminino-1','','','2022-11-10 20:44:16','2022-11-10 23:44:16','',26,'http://handel.test/wp-content/uploads/2022/11/feminino-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-11-10 20:47:07','2022-11-10 23:47:07','Essa é uma Saia Azul.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','Saia Azul','Essa é uma Saia Azul.','publish','closed','closed','','saia-azul','','','2022-11-10 20:50:34','2022-11-10 23:50:34','',0,'http://handel.test/?post_type=product&#038;p=29',0,'product','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-11-10 20:48:31','2022-11-10 23:48:31','','feminino-2','','inherit','open','closed','','feminino-2','','','2022-11-10 20:48:31','2022-11-10 23:48:31','',29,'http://handel.test/wp-content/uploads/2022/11/feminino-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-11-10 20:51:30','2022-11-10 23:51:30','Essa é uma Camisa Preta.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','Camisa Preta','Essa é uma Saia Azul.','publish','closed','closed','','camisa-preta','','','2022-11-10 21:10:55','2022-11-11 00:10:55','',0,'http://handel.test/?post_type=product&#038;p=31',0,'product','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-11-10 20:52:14','2022-11-10 23:52:14','','feminino-3','','inherit','open','closed','','feminino-3','','','2022-11-10 20:52:14','2022-11-10 23:52:14','',31,'http://handel.test/wp-content/uploads/2022/11/feminino-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-11-10 20:55:15','2022-11-10 23:55:15','','Camisa Preta - Pequeno','Tamanhos: Pequeno','publish','closed','closed','','camisa-preta-pequeno','','','2022-11-10 21:00:45','2022-11-11 00:00:45','',31,'http://handel.test/?post_type=product_variation&p=33',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-11-10 20:55:19','2022-11-10 23:55:19','','Camisa Preta - Médio','Tamanhos: Médio','publish','closed','closed','','camisa-preta-medio','','','2022-11-10 21:10:44','2022-11-11 00:10:44','',31,'http://handel.test/?post_type=product_variation&p=34',2,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-11-10 20:55:22','2022-11-10 23:55:22','','Camisa Preta - Grande','Tamanhos: Grande','publish','closed','closed','','camisa-preta-grande','','','2022-11-10 21:10:45','2022-11-11 00:10:45','',31,'http://handel.test/?post_type=product_variation&p=35',3,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-11-10 21:17:23','2022-11-11 00:17:23','Essa é uma Saia Rosa.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','Saia Rosa','Essa é uma Saia Rosa.','publish','closed','closed','','saia-rosa','','','2022-11-10 21:19:03','2022-11-11 00:19:03','',0,'http://handel.test/?post_type=product&#038;p=37',0,'product','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-11-10 21:18:26','2022-11-11 00:18:26','','feminino-4','','inherit','open','closed','','feminino-4','','','2022-11-10 21:18:26','2022-11-11 00:18:26','',37,'http://handel.test/wp-content/uploads/2022/11/feminino-4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-11-10 21:18:40','2022-11-11 00:18:40','','feminino-5','','inherit','open','closed','','feminino-5','','','2022-11-10 21:18:40','2022-11-11 00:18:40','',37,'http://handel.test/wp-content/uploads/2022/11/feminino-5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-11-10 21:19:18','2022-11-11 00:19:18','Essa é uma Camisa Branca.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','Camisa Branca','Essa é uma Saia Azul.','publish','closed','closed','','camisa-branca','','','2022-11-10 21:24:35','2022-11-11 00:24:35','',0,'http://handel.test/?post_type=product&#038;p=40',0,'product','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-11-10 21:19:24','2022-11-11 00:19:24','','Camisa Branca - Pequeno','Tamanhos: Pequeno','publish','closed','closed','','camisa-preta-pequeno-2','','','2022-11-10 21:24:20','2022-11-11 00:24:20','',40,'http://handel.test/?post_type=product_variation&#038;p=41',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-11-10 21:19:28','2022-11-11 00:19:28','','Camisa Branca - Médio','Tamanhos: Médio','publish','closed','closed','','camisa-preta-medio-2','','','2022-11-10 21:24:21','2022-11-11 00:24:21','',40,'http://handel.test/?post_type=product_variation&p=42',2,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-11-10 21:19:32','2022-11-11 00:19:32','','Camisa Branca - Grande','Tamanhos: Grande','publish','closed','closed','','camisa-preta-grande-2','','','2022-11-10 21:24:21','2022-11-11 00:24:21','',40,'http://handel.test/?post_type=product_variation&p=43',3,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-11-10 21:24:48','2022-11-11 00:24:48','Essa é uma Camisa Vermelha.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue.','Camisa Vermelha','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','publish','closed','closed','','camisa-vermelha','','','2022-11-10 21:27:15','2022-11-11 00:27:15','',0,'http://handel.test/?post_type=product&#038;p=45',0,'product','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-11-10 21:25:45','2022-11-11 00:25:45','','masculino-1','','inherit','open','closed','','masculino-1','','','2022-11-10 21:25:45','2022-11-11 00:25:45','',45,'http://handel.test/wp-content/uploads/2022/11/masculino-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-11-10 21:26:04','2022-11-11 00:26:04','','masculino-2','','inherit','open','closed','','masculino-2','','','2022-11-10 21:26:04','2022-11-11 00:26:04','',45,'http://handel.test/wp-content/uploads/2022/11/masculino-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-11-10 21:26:06','2022-11-11 00:26:06','','masculino-3','','inherit','open','closed','','masculino-3','','','2022-11-10 21:26:06','2022-11-11 00:26:06','',45,'http://handel.test/wp-content/uploads/2022/11/masculino-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-11-10 21:26:09','2022-11-11 00:26:09','','masculino-4','','inherit','open','closed','','masculino-4','','','2022-11-10 21:26:09','2022-11-11 00:26:09','',45,'http://handel.test/wp-content/uploads/2022/11/masculino-4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-11-10 21:26:11','2022-11-11 00:26:11','','masculino-5','','inherit','open','closed','','masculino-5','','','2022-11-10 21:26:11','2022-11-11 00:26:11','',45,'http://handel.test/wp-content/uploads/2022/11/masculino-5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-11-10 21:27:34','2022-11-11 00:27:34','Essa é uma Camisa Preta.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','Camisa Preta','Essa é uma Saia Azul.','publish','closed','closed','','camisa-preta-2','','','2022-11-10 21:31:15','2022-11-11 00:31:15','',0,'http://handel.test/?post_type=product&#038;p=51',0,'product','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-11-10 21:27:38','2022-11-11 00:27:38','','Camisa Preta - Pequeno','Tamanhos: Pequeno','publish','closed','closed','','camisa-preta-pequeno-3','','','2022-11-10 21:30:01','2022-11-11 00:30:01','',51,'http://handel.test/?post_type=product_variation&p=52',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-11-10 21:27:43','2022-11-11 00:27:43','','Camisa Preta - Médio','Tamanhos: Médio','publish','closed','closed','','camisa-preta-medio-3','','','2022-11-10 21:30:00','2022-11-11 00:30:00','',51,'http://handel.test/?post_type=product_variation&p=53',2,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-11-10 21:27:47','2022-11-11 00:27:47','','Camisa Preta - Grande','Tamanhos: Grande','publish','closed','closed','','camisa-preta-grande-3','','','2022-11-10 21:30:01','2022-11-11 00:30:01','',51,'http://handel.test/?post_type=product_variation&p=54',3,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-11-10 21:31:52','2022-11-11 00:31:52','Essa é uma Camisa Laranja.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue.','Camisa Laranja','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','publish','closed','closed','','camisa-laranja','','','2022-11-10 21:33:22','2022-11-11 00:33:22','',0,'http://handel.test/?post_type=product&#038;p=55',0,'product','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-11-10 21:33:29','2022-11-11 00:33:29','Essa é uma Bermuda Jeans.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue.','Bermuda Jeans','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','publish','closed','closed','','bermuda-jeans','','','2022-11-10 21:34:31','2022-11-11 00:34:31','',0,'http://handel.test/?post_type=product&#038;p=56',0,'product','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-11-10 21:34:39','2022-11-11 00:34:39','Essa é uma Bermuda Preta.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue.','Bermuda Preta','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel tempor erat. Pellentesque urna mi, condimentum a sem eget, molestie semper ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris in mauris augue. In efficitur, lorem eget tempor aliquet, est urna accumsan augue, nec tincidunt velit mi et ex. Integer rhoncus sed ante vitae feugiat. Vivamus tempor enim sapien, sagittis eleifend nisl tincidunt sed. Vestibulum molestie iaculis mattis. Sed scelerisque maximus fringilla. In sit amet velit tincidunt, porta est eget, malesuada nulla. Quisque gravida dui nec neque eleifend, at sollicitudin sem vestibulum.\r\n\r\nEtiam blandit eros metus, sit amet feugiat libero ultricies ut. Ut euismod lacinia dolor sit amet laoreet. Maecenas convallis lacus neque, sed auctor elit blandit id. Donec eu consequat mi. Cras molestie lacus sit amet metus tincidunt dictum. Aenean a est id sapien lobortis eleifend ac vel dui. Nam sem magna, aliquet in laoreet et, tristique sit amet neque.','publish','closed','closed','','bermuda-preta','','','2022-11-10 21:35:33','2022-11-11 00:35:33','',0,'http://handel.test/?post_type=product&#038;p=57',0,'product','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-11-10 22:07:58','2022-11-11 01:07:58','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','7-revision-v1','','','2022-11-10 22:07:58','2022-11-11 01:07:58','',7,'http://handel.test/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-11-10 22:08:10','2022-11-11 01:08:10','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','7-autosave-v1','','','2022-11-10 22:08:10','2022-11-11 01:08:10','',7,'http://handel.test/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-11-10 22:16:26','2022-11-11 01:16:26','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->','Carrinho','','publish','closed','closed','','carrinho','','','2022-11-10 22:40:07','2022-11-11 01:40:07','',0,'http://handel.test/?page_id=60',0,'page','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-11-10 22:16:26','2022-11-11 01:16:26','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','60-revision-v1','','','2022-11-10 22:16:26','2022-11-11 01:16:26','',60,'http://handel.test/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-11-10 22:17:08','2022-11-11 01:17:08','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','60-revision-v1','','','2022-11-10 22:17:08','2022-11-11 01:17:08','',60,'http://handel.test/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-11-10 22:17:29','2022-11-11 01:17:29','<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','60-revision-v1','','','2022-11-10 22:17:29','2022-11-11 01:17:29','',60,'http://handel.test/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-11-10 22:17:46','2022-11-11 01:17:46','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','60-revision-v1','','','2022-11-10 22:17:46','2022-11-11 01:17:46','',60,'http://handel.test/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-11-10 22:19:30','2022-11-11 01:19:30','<!-- wp:shortcode -->\n[product_page id=\"99\"]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','60-revision-v1','','','2022-11-10 22:19:30','2022-11-11 01:19:30','',60,'http://handel.test/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2022-11-10 22:40:07','2022-11-11 01:40:07','<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->','Carrinho','','inherit','closed','closed','','60-revision-v1','','','2022-11-10 22:40:07','2022-11-11 01:40:07','',60,'http://handel.test/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2022-11-20 15:48:55','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2022-11-20 15:48:55','0000-00-00 00:00:00','',0,'http://handel.test/?p=68',0,'post','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2022-11-20 15:50:52','2022-11-20 18:50:52','{\n    \"nav_menu[-902655507938433000]\": {\n        \"value\": {\n            \"name\": \"categorias\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 18:50:21\"\n    },\n    \"nav_menu_item[-1327170273258451000]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"taxonomy\",\n            \"title\": \"Masculino\",\n            \"url\": \"http://handel.test/categoria-produto/masculino/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Masculino\",\n            \"nav_menu_term_id\": -902655507938433000,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 18:50:21\"\n    },\n    \"nav_menu_item[-5745965687079283000]\": {\n        \"value\": {\n            \"object_id\": 19,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"Feminino\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Feminino\",\n            \"nav_menu_term_id\": -902655507938433000,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 18:50:21\"\n    },\n    \"nav_menu_item[-8240174854074880000]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -5745965687079283000,\n            \"position\": 5,\n            \"type\": \"taxonomy\",\n            \"title\": \"Camisas Feminino\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/camisa-f/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Camisas Feminino\",\n            \"nav_menu_term_id\": -902655507938433000,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 18:50:21\"\n    },\n    \"nav_menu_item[-7652147585549240000]\": {\n        \"value\": {\n            \"object_id\": 22,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -1327170273258451000,\n            \"position\": 2,\n            \"type\": \"taxonomy\",\n            \"title\": \"Camisas Masculino\",\n            \"url\": \"http://handel.test/categoria-produto/masculino/camisas-m/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Camisas Masculino\",\n            \"nav_menu_term_id\": -902655507938433000,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 18:50:21\"\n    },\n    \"nav_menu_item[-5574861135371102000]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -5745965687079283000,\n            \"position\": 6,\n            \"type\": \"taxonomy\",\n            \"title\": \"Saias\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/saia/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Saias\",\n            \"nav_menu_term_id\": -902655507938433000,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 18:50:21\"\n    },\n    \"nav_menu_item[-6328071916825510000]\": {\n        \"value\": {\n            \"object_id\": 23,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -1327170273258451000,\n            \"position\": 3,\n            \"type\": \"taxonomy\",\n            \"title\": \"Bermudas\",\n            \"url\": \"http://handel.test/categoria-produto/masculino/bermudas/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bermudas\",\n            \"nav_menu_term_id\": -902655507938433000,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 18:50:21\"\n    }\n}','','','trash','closed','closed','','343af7cb-036d-4574-999d-41e69eb5bbce','','','2022-11-20 15:50:52','2022-11-20 18:50:52','',0,'http://handel.test/?p=69',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2022-11-20 15:50:52','2022-11-20 18:50:52',' ','','','publish','closed','closed','','70','','','2022-11-20 15:50:52','2022-11-20 18:50:52','',0,'http://handel.test/70/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2022-11-20 16:01:27','2022-11-20 18:50:54',' ','','','publish','closed','closed','','71','','','2022-11-20 16:01:27','2022-11-20 19:01:27','',0,'http://handel.test/71/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2022-11-20 16:01:29','2022-11-20 18:51:00',' ','','','publish','closed','closed','','74','','','2022-11-20 16:01:29','2022-11-20 19:01:29','',19,'http://handel.test/74/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2022-11-20 16:01:27','2022-11-20 18:51:02',' ','','','publish','closed','closed','','75','','','2022-11-20 16:01:27','2022-11-20 19:01:27','',16,'http://handel.test/75/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2022-11-20 16:01:25','2022-11-20 19:01:25','{\n    \"nav_menu_item[73]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 19:01:25\"\n    },\n    \"nav_menu_item[75]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 23,\n            \"object\": \"product_cat\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Categoria\",\n            \"url\": \"http://handel.test/categoria-produto/masculino/bermudas/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 28,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Bermudas\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 19:01:25\"\n    },\n    \"nav_menu_item[71]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 19,\n            \"object\": \"product_cat\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Categoria\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 28,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Feminino\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 19:01:25\"\n    },\n    \"nav_menu_item[72]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 19:01:25\"\n    },\n    \"nav_menu_item[74]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 21,\n            \"object\": \"product_cat\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Categoria\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/saia/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 28,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Saias\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-20 19:01:25\"\n    }\n}','','','trash','closed','closed','','004c66cb-4d9a-4ca8-b5dd-5a58a58a1c02','','','2022-11-20 16:01:25','2022-11-20 19:01:25','',0,'http://handel.test/004c66cb-4d9a-4ca8-b5dd-5a58a58a1c02/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2022-11-21 19:11:17','2022-11-21 22:11:17','{\n    \"nav_menu[-7503687461013955000]\": {\n        \"value\": {\n            \"name\": \"Footer\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:10:39\"\n    },\n    \"nav_menu_item[-621457768739727400]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://handel.test/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -7503687461013955000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina principal\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:10:39\"\n    },\n    \"nav_menu_item[-4952764986466974000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Sobre\",\n            \"url\": \"/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Sobre\",\n            \"nav_menu_term_id\": -7503687461013955000,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:10:39\"\n    },\n    \"nav_menu_item[-6773163304296536000]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Loja\",\n            \"url\": \"http://handel.test/loja/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Loja\",\n            \"nav_menu_term_id\": -7503687461013955000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina da loja\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:10:47\"\n    },\n    \"nav_menu_item[-2977826446310435000]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Minha conta\",\n            \"url\": \"http://handel.test/minha-conta/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Minha conta\",\n            \"nav_menu_term_id\": -7503687461013955000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina minha conta\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:10:52\"\n    },\n    \"nav_menu_item[-9112079563068674000]\": {\n        \"value\": {\n            \"object_id\": 60,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Carrinho\",\n            \"url\": \"http://handel.test/carrinho/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Carrinho\",\n            \"nav_menu_term_id\": -7503687461013955000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:11:09\"\n    },\n    \"nav_menu_item[-7774563679064621000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"Contato\",\n            \"url\": \"/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contato\",\n            \"nav_menu_term_id\": -7503687461013955000,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:11:09\"\n    }\n}','','','trash','closed','closed','','1e9bc55d-6f7f-4348-8e92-a8f4043b82a1','','','2022-11-21 19:11:17','2022-11-21 22:11:17','',0,'http://handel.test/?p=77',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2022-11-21 19:11:18','2022-11-21 22:11:18',' ','','','publish','closed','closed','','78','','','2022-11-21 19:11:18','2022-11-21 22:11:18','',0,'http://handel.test/78/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2022-11-21 19:11:20','2022-11-21 22:11:20','','Sobre','','publish','closed','closed','','sobre','','','2022-11-21 19:11:20','2022-11-21 22:11:20','',0,'http://handel.test/sobre/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2022-11-21 19:11:22','2022-11-21 22:11:22',' ','','','publish','closed','closed','','80','','','2022-11-21 19:11:22','2022-11-21 22:11:22','',0,'http://handel.test/80/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2022-11-21 19:11:24','2022-11-21 22:11:24',' ','','','publish','closed','closed','','81','','','2022-11-21 19:11:24','2022-11-21 22:11:24','',0,'http://handel.test/81/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2022-11-21 19:11:26','2022-11-21 22:11:26',' ','','','publish','closed','closed','','82','','','2022-11-21 19:11:26','2022-11-21 22:11:26','',0,'http://handel.test/82/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2022-11-21 19:11:28','2022-11-21 22:11:28','','Contato','','publish','closed','closed','','contato','','','2022-11-21 19:11:28','2022-11-21 22:11:28','',0,'http://handel.test/contato/',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2022-11-21 19:11:44','2022-11-21 22:11:44','{\n    \"nav_menu[29]\": {\n        \"value\": {\n            \"name\": \"footer\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:11:44\"\n    }\n}','','','trash','closed','closed','','83205dbf-5592-4af3-8e19-bc90d33c8283','','','2022-11-21 19:11:44','2022-11-21 22:11:44','',0,'http://handel.test/83205dbf-5592-4af3-8e19-bc90d33c8283/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2022-11-21 19:12:45','2022-11-21 22:12:45','{\n    \"nav_menu[-1449223408938088400]\": {\n        \"value\": {\n            \"name\": \"redes\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:12:00\"\n    },\n    \"nav_menu_item[-8474780819878640000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Facebook\",\n            \"nav_menu_term_id\": -1449223408938088400,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:12:45\"\n    },\n    \"nav_menu_item[-439761857973518340]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Instagram\",\n            \"nav_menu_term_id\": -1449223408938088400,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:12:45\"\n    },\n    \"nav_menu_item[-2810856530797562000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Youtube\",\n            \"url\": \"/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Youtube\",\n            \"nav_menu_term_id\": -1449223408938088400,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-21 22:12:45\"\n    }\n}','','','trash','closed','closed','','2416a4c4-8088-481e-908c-2236879bf551','','','2022-11-21 19:12:45','2022-11-21 22:12:45','',0,'http://handel.test/?p=85',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2022-11-21 19:12:45','2022-11-21 22:12:45','','Facebook','','publish','closed','closed','','facebook','','','2022-11-21 19:12:45','2022-11-21 22:12:45','',0,'http://handel.test/facebook/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2022-11-21 19:12:47','2022-11-21 22:12:47','','Instagram','','publish','closed','closed','','instagram','','','2022-11-21 19:12:47','2022-11-21 22:12:47','',0,'http://handel.test/instagram/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2022-11-21 19:12:50','2022-11-21 22:12:50','','Youtube','','publish','closed','closed','','youtube','','','2022-11-21 19:12:50','2022-11-21 22:12:50','',0,'http://handel.test/youtube/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2022-11-22 23:53:34','2022-11-23 02:53:34','{\n    \"nav_menu[-647793540955590700]\": {\n        \"value\": {\n            \"name\": \"categorias-internas\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-23 02:53:34\"\n    },\n    \"nav_menu_item[-6083590700912927000]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"taxonomy\",\n            \"title\": \"Masculino\",\n            \"url\": \"http://handel.test/categoria-produto/masculino/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Masculino\",\n            \"nav_menu_term_id\": -647793540955590700,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-23 02:53:34\"\n    },\n    \"nav_menu_item[-7247297499453460000]\": {\n        \"value\": {\n            \"object_id\": 19,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"Feminino\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Feminino\",\n            \"nav_menu_term_id\": -647793540955590700,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-23 02:53:34\"\n    },\n    \"nav_menu_item[-2894283153982681000]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -7247297499453460000,\n            \"position\": 5,\n            \"type\": \"taxonomy\",\n            \"title\": \"Camisas Feminino\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/camisa-f/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Camisas Feminino\",\n            \"nav_menu_term_id\": -647793540955590700,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-23 02:53:34\"\n    },\n    \"nav_menu_item[-3824080496221909000]\": {\n        \"value\": {\n            \"object_id\": 22,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -6083590700912927000,\n            \"position\": 2,\n            \"type\": \"taxonomy\",\n            \"title\": \"Camisas Masculino\",\n            \"url\": \"http://handel.test/categoria-produto/masculino/camisas-m/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Camisas Masculino\",\n            \"nav_menu_term_id\": -647793540955590700,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-23 02:53:34\"\n    },\n    \"nav_menu_item[-1871264377782972400]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -7247297499453460000,\n            \"position\": 6,\n            \"type\": \"taxonomy\",\n            \"title\": \"Saias\",\n            \"url\": \"http://handel.test/categoria-produto/feminino/saia/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Saias\",\n            \"nav_menu_term_id\": -647793540955590700,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-23 02:53:34\"\n    },\n    \"nav_menu_item[-4754377176379728000]\": {\n        \"value\": {\n            \"object_id\": 23,\n            \"object\": \"product_cat\",\n            \"menu_item_parent\": -6083590700912927000,\n            \"position\": 3,\n            \"type\": \"taxonomy\",\n            \"title\": \"Bermudas\",\n            \"url\": \"http://handel.test/categoria-produto/masculino/bermudas/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bermudas\",\n            \"nav_menu_term_id\": -647793540955590700,\n            \"_invalid\": false,\n            \"type_label\": \"Categoria\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-23 02:53:34\"\n    }\n}','','','trash','closed','closed','','37f729ac-c907-4695-a093-3102abbc23f8','','','2022-11-22 23:53:34','2022-11-23 02:53:34','',0,'http://handel.test/37f729ac-c907-4695-a093-3102abbc23f8/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2022-11-22 23:53:35','2022-11-23 02:53:35',' ','','','publish','closed','closed','','90','','','2022-11-22 23:53:35','2022-11-23 02:53:35','',0,'http://handel.test/90/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2022-11-22 23:53:37','2022-11-23 02:53:37',' ','','','publish','closed','closed','','91','','','2022-11-22 23:53:37','2022-11-23 02:53:37','',0,'http://handel.test/91/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2022-11-22 23:53:40','2022-11-23 02:53:40',' ','','','publish','closed','closed','','92','','','2022-11-22 23:53:40','2022-11-23 02:53:40','',19,'http://handel.test/92/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2022-11-22 23:53:43','2022-11-23 02:53:43',' ','','','publish','closed','closed','','93','','','2022-11-22 23:53:43','2022-11-23 02:53:43','',16,'http://handel.test/93/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2022-11-22 23:53:45','2022-11-23 02:53:45',' ','','','publish','closed','closed','','94','','','2022-11-22 23:53:45','2022-11-23 02:53:45','',19,'http://handel.test/94/',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2022-11-22 23:53:48','2022-11-23 02:53:48',' ','','','publish','closed','closed','','95','','','2022-11-22 23:53:48','2022-11-23 02:53:48','',16,'http://handel.test/95/',3,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (11,2,0);
INSERT INTO `wp_term_relationships` VALUES (11,16,0);
INSERT INTO `wp_term_relationships` VALUES (13,18,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,19,0);
INSERT INTO `wp_term_relationships` VALUES (26,20,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,19,0);
INSERT INTO `wp_term_relationships` VALUES (29,21,0);
INSERT INTO `wp_term_relationships` VALUES (29,27,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (31,19,0);
INSERT INTO `wp_term_relationships` VALUES (31,20,0);
INSERT INTO `wp_term_relationships` VALUES (31,24,0);
INSERT INTO `wp_term_relationships` VALUES (31,25,0);
INSERT INTO `wp_term_relationships` VALUES (31,26,0);
INSERT INTO `wp_term_relationships` VALUES (31,27,0);
INSERT INTO `wp_term_relationships` VALUES (37,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,19,0);
INSERT INTO `wp_term_relationships` VALUES (37,21,0);
INSERT INTO `wp_term_relationships` VALUES (37,27,0);
INSERT INTO `wp_term_relationships` VALUES (40,4,0);
INSERT INTO `wp_term_relationships` VALUES (40,19,0);
INSERT INTO `wp_term_relationships` VALUES (40,20,0);
INSERT INTO `wp_term_relationships` VALUES (40,24,0);
INSERT INTO `wp_term_relationships` VALUES (40,25,0);
INSERT INTO `wp_term_relationships` VALUES (40,26,0);
INSERT INTO `wp_term_relationships` VALUES (40,27,0);
INSERT INTO `wp_term_relationships` VALUES (45,2,0);
INSERT INTO `wp_term_relationships` VALUES (45,16,0);
INSERT INTO `wp_term_relationships` VALUES (45,22,0);
INSERT INTO `wp_term_relationships` VALUES (51,4,0);
INSERT INTO `wp_term_relationships` VALUES (51,16,0);
INSERT INTO `wp_term_relationships` VALUES (51,22,0);
INSERT INTO `wp_term_relationships` VALUES (51,24,0);
INSERT INTO `wp_term_relationships` VALUES (51,25,0);
INSERT INTO `wp_term_relationships` VALUES (51,26,0);
INSERT INTO `wp_term_relationships` VALUES (51,27,0);
INSERT INTO `wp_term_relationships` VALUES (55,2,0);
INSERT INTO `wp_term_relationships` VALUES (55,16,0);
INSERT INTO `wp_term_relationships` VALUES (55,22,0);
INSERT INTO `wp_term_relationships` VALUES (55,27,0);
INSERT INTO `wp_term_relationships` VALUES (56,2,0);
INSERT INTO `wp_term_relationships` VALUES (56,16,0);
INSERT INTO `wp_term_relationships` VALUES (56,23,0);
INSERT INTO `wp_term_relationships` VALUES (56,27,0);
INSERT INTO `wp_term_relationships` VALUES (57,2,0);
INSERT INTO `wp_term_relationships` VALUES (57,16,0);
INSERT INTO `wp_term_relationships` VALUES (57,23,0);
INSERT INTO `wp_term_relationships` VALUES (70,28,0);
INSERT INTO `wp_term_relationships` VALUES (71,28,0);
INSERT INTO `wp_term_relationships` VALUES (74,28,0);
INSERT INTO `wp_term_relationships` VALUES (75,28,0);
INSERT INTO `wp_term_relationships` VALUES (78,29,0);
INSERT INTO `wp_term_relationships` VALUES (79,29,0);
INSERT INTO `wp_term_relationships` VALUES (80,29,0);
INSERT INTO `wp_term_relationships` VALUES (81,29,0);
INSERT INTO `wp_term_relationships` VALUES (82,29,0);
INSERT INTO `wp_term_relationships` VALUES (83,29,0);
INSERT INTO `wp_term_relationships` VALUES (86,30,0);
INSERT INTO `wp_term_relationships` VALUES (87,30,0);
INSERT INTO `wp_term_relationships` VALUES (88,30,0);
INSERT INTO `wp_term_relationships` VALUES (90,31,0);
INSERT INTO `wp_term_relationships` VALUES (91,31,0);
INSERT INTO `wp_term_relationships` VALUES (92,31,0);
INSERT INTO `wp_term_relationships` VALUES (93,31,0);
INSERT INTO `wp_term_relationships` VALUES (94,31,0);
INSERT INTO `wp_term_relationships` VALUES (95,31,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'product_type','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'product_type','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'product_cat','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'product_cat','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'product_cat','',19,3);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'product_cat','',19,2);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'product_cat','',16,3);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'product_cat','',16,2);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'pa_tamanhos','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'pa_tamanhos','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'pa_tamanhos','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (27,27,'product_tag','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (28,28,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (29,29,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (30,30,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (31,31,'nav_menu','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,16,'order','0');
INSERT INTO `wp_termmeta` VALUES (3,16,'product_count_product_cat','5');
INSERT INTO `wp_termmeta` VALUES (4,15,'product_count_product_cat','0');
INSERT INTO `wp_termmeta` VALUES (6,16,'display_type','');
INSERT INTO `wp_termmeta` VALUES (7,16,'thumbnail_id','25');
INSERT INTO `wp_termmeta` VALUES (8,19,'order','0');
INSERT INTO `wp_termmeta` VALUES (9,19,'display_type','');
INSERT INTO `wp_termmeta` VALUES (10,19,'thumbnail_id','24');
INSERT INTO `wp_termmeta` VALUES (11,20,'order','0');
INSERT INTO `wp_termmeta` VALUES (12,20,'display_type','');
INSERT INTO `wp_termmeta` VALUES (13,20,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (14,21,'order','0');
INSERT INTO `wp_termmeta` VALUES (15,21,'display_type','');
INSERT INTO `wp_termmeta` VALUES (16,21,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (17,22,'order','0');
INSERT INTO `wp_termmeta` VALUES (18,22,'display_type','');
INSERT INTO `wp_termmeta` VALUES (19,22,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (20,23,'order','0');
INSERT INTO `wp_termmeta` VALUES (21,23,'display_type','');
INSERT INTO `wp_termmeta` VALUES (22,23,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (23,24,'order_pa_tamanhos','0');
INSERT INTO `wp_termmeta` VALUES (24,25,'order_pa_tamanhos','0');
INSERT INTO `wp_termmeta` VALUES (25,26,'order_pa_tamanhos','0');
INSERT INTO `wp_termmeta` VALUES (26,24,'order','1');
INSERT INTO `wp_termmeta` VALUES (27,26,'order','3');
INSERT INTO `wp_termmeta` VALUES (28,25,'order','2');
INSERT INTO `wp_termmeta` VALUES (29,19,'product_count_product_cat','5');
INSERT INTO `wp_termmeta` VALUES (30,20,'product_count_product_cat','3');
INSERT INTO `wp_termmeta` VALUES (31,21,'product_count_product_cat','2');
INSERT INTO `wp_termmeta` VALUES (32,27,'product_count_product_tag','7');
INSERT INTO `wp_termmeta` VALUES (33,22,'product_count_product_cat','3');
INSERT INTO `wp_termmeta` VALUES (34,23,'product_count_product_cat','2');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'simple','simple',0);
INSERT INTO `wp_terms` VALUES (3,'grouped','grouped',0);
INSERT INTO `wp_terms` VALUES (4,'variable','variable',0);
INSERT INTO `wp_terms` VALUES (5,'external','external',0);
INSERT INTO `wp_terms` VALUES (6,'exclude-from-search','exclude-from-search',0);
INSERT INTO `wp_terms` VALUES (7,'exclude-from-catalog','exclude-from-catalog',0);
INSERT INTO `wp_terms` VALUES (8,'featured','featured',0);
INSERT INTO `wp_terms` VALUES (9,'outofstock','outofstock',0);
INSERT INTO `wp_terms` VALUES (10,'rated-1','rated-1',0);
INSERT INTO `wp_terms` VALUES (11,'rated-2','rated-2',0);
INSERT INTO `wp_terms` VALUES (12,'rated-3','rated-3',0);
INSERT INTO `wp_terms` VALUES (13,'rated-4','rated-4',0);
INSERT INTO `wp_terms` VALUES (14,'rated-5','rated-5',0);
INSERT INTO `wp_terms` VALUES (15,'Sem categoria','sem-categoria',0);
INSERT INTO `wp_terms` VALUES (16,'Masculino','masculino',0);
INSERT INTO `wp_terms` VALUES (18,'handel','handel',0);
INSERT INTO `wp_terms` VALUES (19,'Feminino','feminino',0);
INSERT INTO `wp_terms` VALUES (20,'Camisas Feminino','camisa-f',0);
INSERT INTO `wp_terms` VALUES (21,'Saias','saia',0);
INSERT INTO `wp_terms` VALUES (22,'Camisas Masculino','camisas-m',0);
INSERT INTO `wp_terms` VALUES (23,'Bermudas','bermudas',0);
INSERT INTO `wp_terms` VALUES (24,'Pequeno','pequeno',0);
INSERT INTO `wp_terms` VALUES (25,'Médio','medio',0);
INSERT INTO `wp_terms` VALUES (26,'Grande','grande',0);
INSERT INTO `wp_terms` VALUES (27,'slide','slide',0);
INSERT INTO `wp_terms` VALUES (28,'categorias','categorias',0);
INSERT INTO `wp_terms` VALUES (29,'footer','footer',0);
INSERT INTO `wp_terms` VALUES (30,'redes','redes',0);
INSERT INTO `wp_terms` VALUES (31,'categorias-internas','categorias-internas',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','handel');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"b99a07d69832fce478a444a8d5388352c8d2571731daa6c416e742df0b7692db\";a:4:{s:10:\"expiration\";i:1669344756;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36\";s:5:\"login\";i:1669171956;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','68');
INSERT INTO `wp_usermeta` VALUES (18,1,'_woocommerce_tracks_anon_id','woo:7X08yEFgx4P/XXD3Zg4VNt4q');
INSERT INTO `wp_usermeta` VALUES (19,1,'wc_last_active','1669161600');
INSERT INTO `wp_usermeta` VALUES (20,1,'meta-box-order_product','a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:56:\"woocommerce-product-data,,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:4:{s:32:\"f20322dfa1365932acb1d2b8725b4648\";a:11:{s:3:\"key\";s:32:\"f20322dfa1365932acb1d2b8725b4648\";s:10:\"product_id\";i:31;s:12:\"variation_id\";i:33;s:9:\"variation\";a:1:{s:21:\"attribute_pa_tamanhos\";s:7:\"pequeno\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"013bfe21a74b072fa0457aa46f71922c\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:129;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:129;s:8:\"line_tax\";i:0;}s:32:\"4e732ced3463d06de0ca9a15b6153677\";a:11:{s:3:\"key\";s:32:\"4e732ced3463d06de0ca9a15b6153677\";s:10:\"product_id\";i:26;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:99;s:8:\"line_tax\";i:0;}s:32:\"9f61408e3afb633e50cdf1b20de6f466\";a:11:{s:3:\"key\";s:32:\"9f61408e3afb633e50cdf1b20de6f466\";s:10:\"product_id\";i:56;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:59;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:59;s:8:\"line_tax\";i:0;}s:32:\"72b32a1f754ba1c09b3695e0cb6cde7f\";a:11:{s:3:\"key\";s:32:\"72b32a1f754ba1c09b3695e0cb6cde7f\";s:10:\"product_id\";i:57;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:69;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:69;s:8:\"line_tax\";i:0;}}}');
INSERT INTO `wp_usermeta` VALUES (23,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:4:{s:32:\"f20322dfa1365932acb1d2b8725b4648\";a:11:{s:3:\"key\";s:32:\"f20322dfa1365932acb1d2b8725b4648\";s:10:\"product_id\";i:31;s:12:\"variation_id\";i:33;s:9:\"variation\";a:1:{s:21:\"attribute_pa_tamanhos\";s:7:\"pequeno\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"013bfe21a74b072fa0457aa46f71922c\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:129;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:129;s:8:\"line_tax\";i:0;}s:32:\"4e732ced3463d06de0ca9a15b6153677\";a:11:{s:3:\"key\";s:32:\"4e732ced3463d06de0ca9a15b6153677\";s:10:\"product_id\";i:26;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:99;s:8:\"line_tax\";i:0;}s:32:\"9f61408e3afb633e50cdf1b20de6f466\";a:11:{s:3:\"key\";s:32:\"9f61408e3afb633e50cdf1b20de6f466\";s:10:\"product_id\";i:56;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:59;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:59;s:8:\"line_tax\";i:0;}s:32:\"72b32a1f754ba1c09b3695e0cb6cde7f\";a:11:{s:3:\"key\";s:32:\"72b32a1f754ba1c09b3695e0cb6cde7f\";s:10:\"product_id\";i:57;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:69;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:69;s:8:\"line_tax\";i:0;}}}');
INSERT INTO `wp_usermeta` VALUES (24,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_user-settings','libraryContent=browse&editor=html');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings-time','1668123943');
INSERT INTO `wp_usermeta` VALUES (27,1,'screen_layout_product','2');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_product','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_product','a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'last_update','1668129154');
INSERT INTO `wp_usermeta` VALUES (31,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:8:\"template\";}s:26:\"isComplementaryAreaVisible\";b:1;}s:9:\"_modified\";s:24:\"2022-11-11T01:12:34.170Z\";}');
INSERT INTO `wp_usermeta` VALUES (33,1,'enable_custom_fields','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'handel','$P$Bd4K6NL9sN.G9AAps1pzulUcAZV0Ro.','handel','dev-email@flywheel.local','http://handel.test','2022-11-07 01:48:21','',0,'handel');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (1,1,'connect','Conectar','?page=wc-addons&section=helper','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (41,35,'visit-the-theme-marketplace','Visite o marketplace de temas','https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (42,36,'day-after-first-product','Aprenda mais','https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (43,37,'affirm-insight-first-product-and-payment','Sim','','actioned','Obrigado pelo seu comentário',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (44,37,'affirm-insight-first-product-and-payment','Não','','actioned','Obrigado pelo seu comentário',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (45,38,'learn-more','Aprenda mais','https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (46,39,'learn-more','Aprenda mais','https://woocommerce.com/mobile/?utm_medium=product','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (125,40,'affirm-insight-first-sale','Sim','','actioned','Obrigado pelo seu comentário',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (126,40,'deny-insight-first-sale','Não','','actioned','Obrigado pelo seu comentário',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (127,41,'tracking-opt-in','Ativar rastreamento de uso','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (362,2,'browse_extensions','Browse extensions','http://handel.test/wp-admin/admin.php?page=wc-addons','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (363,3,'wayflyer_bnpl_q4_2021','Level up with funding','https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (364,4,'wc_shipping_mobile_app_usps_q4_2021','Get WooCommerce Shipping','https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (365,5,'learn-more','Learn more','https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (366,6,'learn-more','Learn more','https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (367,7,'optimizing-the-checkout-flow','Learn more','https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (368,8,'qualitative-feedback-from-new-users','Share feedback','https://automattic.survey.fm/wc-pay-new','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (369,9,'share-feedback','Share feedback','http://automattic.survey.fm/paypal-feedback','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (370,10,'get-started','Get started','https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (371,11,'update-wc-subscriptions-3-0-15','View latest version','http://handel.test/wp-admin/&page=wc-addons&section=helper','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (372,12,'update-wc-core-5-4-0','How to update WooCommerce','https://docs.woocommerce.com/document/how-to-update-woocommerce/','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (373,15,'ppxo-pps-install-paypal-payments-1','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (374,16,'ppxo-pps-install-paypal-payments-2','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (375,17,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (376,17,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (377,18,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (378,18,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (379,19,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (380,19,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (381,20,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (382,20,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (383,21,'share-feedback','Share feedback','https://automattic.survey.fm/store-management','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (384,22,'share-navigation-survey-feedback','Share feedback','https://automattic.survey.fm/feedback-on-woocommerce-navigation','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (385,23,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (386,23,'woocommerce-core-paypal-march-2022-dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (387,24,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (388,24,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (389,25,'pinterest_03_2022_update','Update Instructions','https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (390,26,'store_setup_survey_survey_q2_2022_share_your_thoughts','Tell us how it’s going','https://automattic.survey.fm/store-setup-survey-2022','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (391,27,'wc-admin-wisepad3','Grow my business offline','https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (392,28,'learn-more','Find out more','https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (393,28,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (394,29,'learn-more','Find out more','https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (395,29,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (396,30,'shipping_category_q4_2022_click','Automate my shipping','https://woocommerce.com/product-category/woocommerce-extensions/shipping-delivery-and-fulfillment/?categoryIds=28685&collections=product&page=1&utm_source=inbox_note&utm_medium=product&utm_campaign=shipping_category_q4_2022_click','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (397,31,'woocommerce_admin_deprecation_q4_2022','Deactivate WooCommerce Admin','http://handel.test/wp-admin/plugins.php','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (398,32,'tiktok-targeted-q4-2022-click','Launch a campaign','https://woocommerce.com/products/tiktok-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=tiktok-targeted-q4-2022-click','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (399,33,'paypal_paylater_g3_q4_22','Install PayPal Payments','https://woocommerce.com/products/woocommerce-paypal-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=paypal_paylater_g3_q4_22','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (400,34,'paypal_paylater_g2_q4_22','Install PayPal Payments','https://woocommerce.com/products/woocommerce-paypal-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=paypal_paylater_g2_q4_22','unactioned','',NULL,NULL);
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'wc-admin-wc-helper-connection','info','en_US','Conectar ao WooCommerce.com','Conecte-se para receber notificações e atualizações importantes do produto.','{}','unactioned','woocommerce-admin','2022-11-07 02:31:04',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (2,'new_in_app_marketplace_2021','info','en_US','Customize your store with extensions','Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.','{}','unactioned','woocommerce.com','2022-11-07 02:35:45',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (3,'wayflyer_bnpl_q4_2021','marketing','en_US','Grow your business with funding through Wayflyer','Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.','{}','pending','woocommerce.com','2022-11-07 02:35:45',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (4,'wc_shipping_mobile_app_usps_q4_2021','marketing','en_US','Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App','Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!','{}','pending','woocommerce.com','2022-11-07 02:35:46',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (5,'woocommerce-services','info','en_US','WooCommerce Shipping & Tax','WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.','{}','pending','woocommerce.com','2022-11-07 02:35:46',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (6,'your-first-product','info','en_US','Your first product','That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.','{}','unactioned','woocommerce.com','2022-11-09 19:19:42',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (7,'wc-admin-optimizing-the-checkout-flow','info','en_US','Optimizing the checkout flow','It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.','{}','unactioned','woocommerce.com','2022-11-10 16:23:19',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (8,'wc-payments-qualitative-feedback','info','en_US','WooCommerce Payments setup - let us know what you think','Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.','{}','pending','woocommerce.com','2022-11-07 02:35:47',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (9,'share-your-feedback-on-paypal','info','en_US','Share your feedback on PayPal','Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.','{}','pending','woocommerce.com','2022-11-07 02:35:48',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (10,'google_listings_and_ads_install','marketing','en_US','Drive traffic and sales with Google','Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.','{}','pending','woocommerce.com','2022-11-07 02:35:48',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (11,'wc-subscriptions-security-update-3-0-15','info','en_US','WooCommerce Subscriptions security update!','We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.','{}','pending','woocommerce.com','2022-11-07 02:35:48',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (12,'woocommerce-core-update-5-4-0','info','en_US','Update to WooCommerce 5.4.1 now','WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.','{}','pending','woocommerce.com','2022-11-07 02:35:48',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (13,'wcpay-promo-2020-11','marketing','en_US','wcpay-promo-2020-11','wcpay-promo-2020-11','{}','pending','woocommerce.com','2022-11-07 02:35:49',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (14,'wcpay-promo-2020-12','marketing','en_US','wcpay-promo-2020-12','wcpay-promo-2020-12','{}','pending','woocommerce.com','2022-11-07 02:35:49',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (15,'ppxo-pps-upgrade-paypal-payments-1','info','en_US','Get the latest PayPal extension for WooCommerce','Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.','{}','pending','woocommerce.com','2022-11-07 02:35:49',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (16,'ppxo-pps-upgrade-paypal-payments-2','info','en_US','Upgrade your PayPal experience!','Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.','{}','pending','woocommerce.com','2022-11-07 02:35:49',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (17,'woocommerce-core-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-11-07 02:35:50',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (18,'woocommerce-blocks-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-11-07 02:35:50',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (19,'woocommerce-core-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-11-07 02:35:50',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (20,'woocommerce-blocks-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-11-07 02:35:51',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (21,'habit-moment-survey','marketing','en_US','We’re all ears! Share your experience so far with WooCommerce','We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.','{}','pending','woocommerce.com','2022-11-07 02:35:51',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (22,'ecomm-wc-navigation-survey','info','en_US','We’d like your feedback on the WooCommerce navigation','We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.','{}','pending','woocommerce.com','2022-11-07 02:35:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (23,'woocommerce-core-paypal-march-2022-updated','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.','{}','pending','woocommerce.com','2022-11-07 02:35:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (24,'woocommerce-core-paypal-march-2022-updated-nopp','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).','{}','pending','woocommerce.com','2022-11-07 02:35:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (25,'pinterest_03_2022_update','marketing','en_US','Your Pinterest for WooCommerce plugin is out of date!','Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.','{}','pending','woocommerce.com','2022-11-07 02:35:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (26,'store_setup_survey_survey_q2_2022','survey','en_US','How is your store setup going?','Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.','{}','unactioned','woocommerce.com','2022-11-14 18:58:36',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (27,'wc-admin-wisepad3','marketing','en_US','Take your business on the go in Canada with WooCommerce In-Person Payments','Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.','{}','pending','woocommerce.com','2022-11-07 02:35:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (28,'woocommerce-payments-august-2022-need-to-update','update','en_US','Action required: Please update WooCommerce Payments','An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.','{}','pending','woocommerce.com','2022-11-07 02:35:54',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (29,'woocommerce-payments-august-2022-store-patched','update','en_US','WooCommerce Payments has been automatically updated','You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.','{}','pending','woocommerce.com','2022-11-07 02:35:54',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (30,'shipping_category_q4_2022','marketing','en_US','Save time on shipping','Is your store all set to ship? Save valuable time (and money!) by automating your fulfillment process for the busiest shopping season. Explore our range of trusted shipping partners to get started.','{}','unactioned','woocommerce.com','2022-11-07 02:35:55',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (31,'woocommerce_admin_deprecation_q4_2022','info','en_US','WooCommerce Admin is part of WooCommerce!','To make sure your store continues to run smoothly, check that WooCommerce is up-to-date – at least version 6.5 – and then disable the WooCommerce Admin plugin.','{}','pending','woocommerce.com','2022-11-07 02:35:55',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (32,'tiktok-targeted-q4-2022','marketing','en_US','Get $200 in ad credit from TikTok after you spend $20 on your first campaign','Reach one billion shoppers with TikTok for WooCommerce this holiday season! Sync your product catalog, capture insights, and create ad campaigns right from your dashboard. Connect your store today to unlock this limited time offer! <a href=\"https://ads.tiktok.com/help/article?aid=10011326\">Terms &amp; conditions apply</a>.','{}','pending','woocommerce.com','2022-11-07 02:35:55',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (33,'paypal_paylater_g3_q4_22','marketing','en_US','Turn browsers into buyers with Pay Later','Add PayPal at checkout, plus give customers a buy now, pay later option from the name they trust. With Pay in 4 &amp; Pay Monthly, available in PayPal Payments, you get paid up front while letting customers spread their payments over time. Boost your average order value and convert more sales – at no extra cost to you.','{}','pending','woocommerce.com','2022-11-07 02:35:56',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (34,'paypal_paylater_g2_q4_22','marketing','en_US','Upgrade to PayPal Payments to offer Pay Later at checkout','PayPal Pay Later is included in PayPal Payments at no additional cost to you. Customers can spread their payments over time while you get paid up front. \r\nThere’s never been a better time to upgrade your PayPal plugin. Simply download it and connect with a PayPal Business account.','{}','pending','woocommerce.com','2022-11-07 02:35:56',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (35,'wc-admin-choosing-a-theme','marketing','en_US','Escolhendo um tema?','Confira os temas compatíveis com o WooCommerce e escolha um alinhado com sua marca e necessidades de negócios.','{}','unactioned','woocommerce-admin','2022-11-09 19:19:37',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (36,'wc-admin-customizing-product-catalog','info','en_US','Como personalizar seu catálogo do produtos','Você deseja que seu catálogo de produtos e imagens tenham uma ótima aparência e se alinhem à sua marca. Este guia fornecerá todas as dicas necessárias para que seus produtos fiquem ótimos em sua loja.','{}','unactioned','woocommerce-admin','2022-11-09 19:19:38',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (37,'wc-admin-insight-first-product-and-payment','survey','en_US','Insight','Mais de 80% dos novos comerciantes adicionam o primeiro produto e têm pelo menos uma forma de pagamento configurada durante a primeira semana.<br><br>Você acha esse tipo de insight útil?','{}','unactioned','woocommerce-admin','2022-11-09 19:19:38',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (38,'wc-admin-launch-checklist','info','en_US','Pronto para lançar sua loja?','Para garantir que você nunca fique com aquela sensação de \"o que eu esqueci\", reunimos uma lista com tudo que é essencial para você verificar antes do lançamento.','{}','unactioned','woocommerce-admin','2022-11-09 19:19:39',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (39,'wc-admin-mobile-app','info','en_US','Instale o aplicativo Woo','Instale o aplicativo do WooCommerce para gerenciar pedidos, receber notificações de vendas e visualizar as principais métricas, onde quer que você esteja.','{}','unactioned','woocommerce-admin','2022-11-09 19:19:39',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (40,'wc-admin-insight-first-sale','survey','en_US','Você sabia?','Uma loja com tecnologia WooCommerce precisa, em média, de 31 dias para obter a primeira venda. Você está no caminho certo! Você acha esse tipo de insight útil?','{}','unactioned','woocommerce-admin','2022-11-14 18:58:28',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (41,'wc-admin-usage-tracking-opt-in','info','en_US','Ajude o WooCommerce a melhorar ativando o rastreamento de uso.','A coleta de dados de uso nos permite melhorar o WooCommerce. Sua loja será considerada à medida que avaliarmos novos recursos, julgarmos a qualidade de uma atualização ou determinarmos se uma melhoria faz sentido. Você sempre pode visitar as <a href=\"http://handel.test/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Configurações</a> e optar por parar de compartilhar dados. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Saiba mais</a> sobre quais dados coletamos.','{}','unactioned','woocommerce-admin','2022-11-14 18:58:29',NULL,0,'plain','',0,0,'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (15,15);
INSERT INTO `wp_wc_category_lookup` VALUES (16,16);
INSERT INTO `wp_wc_category_lookup` VALUES (16,22);
INSERT INTO `wp_wc_category_lookup` VALUES (16,23);
INSERT INTO `wp_wc_category_lookup` VALUES (17,17);
INSERT INTO `wp_wc_category_lookup` VALUES (19,19);
INSERT INTO `wp_wc_category_lookup` VALUES (19,20);
INSERT INTO `wp_wc_category_lookup` VALUES (19,21);
INSERT INTO `wp_wc_category_lookup` VALUES (20,20);
INSERT INTO `wp_wc_category_lookup` VALUES (21,21);
INSERT INTO `wp_wc_category_lookup` VALUES (22,22);
INSERT INTO `wp_wc_category_lookup` VALUES (23,23);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_attributes_lookup`
--

LOCK TABLES `wp_wc_product_attributes_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (33,31,'pa_tamanhos',24,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (34,31,'pa_tamanhos',25,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (35,31,'pa_tamanhos',26,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (41,40,'pa_tamanhos',24,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (42,40,'pa_tamanhos',25,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (43,40,'pa_tamanhos',26,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (52,51,'pa_tamanhos',24,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (53,51,'pa_tamanhos',25,1,1);
INSERT INTO `wp_wc_product_attributes_lookup` VALUES (54,51,'pa_tamanhos',26,1,1);
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_download_directories`
--

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

LOCK TABLES `wp_wc_product_download_directories` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_download_directories` DISABLE KEYS */;
INSERT INTO `wp_wc_product_download_directories` VALUES (1,'file:///home/borges/Local Sites/handel/app/public/wp-content/uploads/woocommerce_uploads/',1);
INSERT INTO `wp_wc_product_download_directories` VALUES (2,'http://handel.test/wp-content/uploads/woocommerce_uploads/',1);
/*!40000 ALTER TABLE `wp_wc_product_download_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES (11,'camisa-preta',0,0,59.0000,59.0000,0,10,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (26,'camisa-marrom',0,0,99.0000,99.0000,1,5,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (29,'saia-azul-1',0,0,239.0000,239.0000,0,5,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (31,'camisa-preta-f-1',0,0,129.0000,129.0000,0,NULL,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (33,'camisa-preta-p',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (34,'camisa-preta-m',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (35,'camisa-preta-g',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (37,'saia-rosa',0,0,259.0000,259.0000,0,5,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (40,'camisa-branca-f',0,0,59.0000,59.0000,0,NULL,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (41,'camisa-branca-p',0,0,59.0000,59.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (42,'camisa-branca-m',0,0,59.0000,59.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (43,'camisa-branca-g',0,0,59.0000,59.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (44,'',0,0,0.0000,0.0000,0,NULL,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (45,'camisa-vermelha',0,0,99.0000,99.0000,1,5,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (51,'camisa-preta-mas',0,0,129.0000,299.0000,0,NULL,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (52,'camisa-preta-p-1',0,0,299.0000,299.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (53,'camisa-preta-m-1',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (54,'camisa-preta-g-1',0,0,129.0000,129.0000,0,5,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (55,'camisa-laranja',0,0,299.0000,299.0000,0,5,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (56,'bermuda-jeans',0,0,59.0000,59.0000,0,5,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (57,'bermuda-preta',0,0,69.0000,69.0000,0,5,'instock',0,0.00,0,'taxable','');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_rate_limits`
--

DROP TABLE IF EXISTS `wp_wc_rate_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_rate_limits`
--

LOCK TABLES `wp_wc_rate_limits` WRITE;
/*!40000 ALTER TABLE `wp_wc_rate_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_rate_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Taxa reduzida','taxa-reduzida');
INSERT INTO `wp_wc_tax_rate_classes` VALUES (2,'Taxa zero','taxa-zero');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_attribute_taxonomies` VALUES (1,'tamanhos','Tamanhos','select','menu_order',1);
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (49,'t_99dc67cd5ba8c63d825d94460d6e1b','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:720:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"BA\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"BA\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}',1669315868);
INSERT INTO `wp_woocommerce_sessions` VALUES (50,'1','a:11:{s:4:\"cart\";s:1668:\"a:4:{s:32:\"f20322dfa1365932acb1d2b8725b4648\";a:11:{s:3:\"key\";s:32:\"f20322dfa1365932acb1d2b8725b4648\";s:10:\"product_id\";i:31;s:12:\"variation_id\";i:33;s:9:\"variation\";a:1:{s:21:\"attribute_pa_tamanhos\";s:7:\"pequeno\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"013bfe21a74b072fa0457aa46f71922c\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:129;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:129;s:8:\"line_tax\";i:0;}s:32:\"4e732ced3463d06de0ca9a15b6153677\";a:11:{s:3:\"key\";s:32:\"4e732ced3463d06de0ca9a15b6153677\";s:10:\"product_id\";i:26;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:99;s:8:\"line_tax\";i:0;}s:32:\"9f61408e3afb633e50cdf1b20de6f466\";a:11:{s:3:\"key\";s:32:\"9f61408e3afb633e50cdf1b20de6f466\";s:10:\"product_id\";i:56;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:59;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:59;s:8:\"line_tax\";i:0;}s:32:\"72b32a1f754ba1c09b3695e0cb6cde7f\";a:11:{s:3:\"key\";s:32:\"72b32a1f754ba1c09b3695e0cb6cde7f\";s:10:\"product_id\";i:57;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:69;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:69;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:396:\"a:15:{s:8:\"subtotal\";s:3:\"356\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:3:\"356\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"356.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:482:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_55d616b337c8beabadbc30ae246dfbef\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Frete grátis\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Itens\";s:107:\"Camisa Preta - Pequeno &times; 1, Camisa Morrom &times; 1, Bermuda Jeans &times; 1, Bermuda Preta &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:771:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2022-11-10T22:12:34-03:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"BA\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"BA\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}',1669344767);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_locations` VALUES (1,1,'BR','country');
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_methods` VALUES (1,1,'free_shipping',1,1);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zones` VALUES (1,'Brasil',0);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-24 22:46:45
