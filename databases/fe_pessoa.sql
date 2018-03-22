-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: fe_pessoa
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Current Database: `fe_pessoa`
--

/*!40000 DROP DATABASE IF EXISTS `fe_pessoa`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fe_pessoa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fe_pessoa`;

--
-- Table structure for table `auth_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add user',6,'add_user'),(17,'Can change user',6,'change_user'),(18,'Can delete user',6,'delete_user'),(19,'Can add entidade',7,'add_entity'),(20,'Can change entidade',7,'change_entity'),(21,'Can delete entidade',7,'delete_entity'),(22,'Can add Pessoa',8,'add_pessoa'),(23,'Can change Pessoa',8,'change_pessoa'),(24,'Can delete Pessoa',8,'delete_pessoa'),(25,'Can add Cliente',9,'add_cliente'),(26,'Can change Cliente',9,'change_cliente'),(27,'Can delete Cliente',9,'delete_cliente'),(28,'Can add Fornecedor',10,'add_fornecedor'),(29,'Can change Fornecedor',10,'change_fornecedor'),(30,'Can delete Fornecedor',10,'delete_fornecedor');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

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
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-03-22 02:35:09.518128','fbe2d022-23a1-4e2d-ae0c-aa7b99bd407b','Cliente object (fbe2d022-23a1-4e2d-ae0c-aa7b99bd407b)',1,'[{\"added\": {}}]',9,'050a6912f48e483387ec4e415a0cf623'),(2,'2018-03-22 02:35:21.087092','a09ab5cc-c696-4586-b1e8-3faad77465db','Cliente object (a09ab5cc-c696-4586-b1e8-3faad77465db)',1,'[{\"added\": {}}]',9,'050a6912f48e483387ec4e415a0cf623'),(3,'2018-03-22 02:37:36.686343','fbe2d022-23a1-4e2d-ae0c-aa7b99bd407b','Cliente object (fbe2d022-23a1-4e2d-ae0c-aa7b99bd407b)',2,'[{\"changed\": {\"fields\": [\"telefone_celular\", \"email\"]}}]',9,'050a6912f48e483387ec4e415a0cf623'),(4,'2018-03-22 02:38:05.001350','a09ab5cc-c696-4586-b1e8-3faad77465db','Cliente object (a09ab5cc-c696-4586-b1e8-3faad77465db)',2,'[{\"changed\": {\"fields\": [\"telefone_celular\", \"email\"]}}]',9,'050a6912f48e483387ec4e415a0cf623'),(5,'2018-03-22 02:38:35.797915','055319e0-9905-4908-b228-f7f6c205f5d9','Cliente object (055319e0-9905-4908-b228-f7f6c205f5d9)',1,'[{\"added\": {}}]',9,'050a6912f48e483387ec4e415a0cf623'),(6,'2018-03-22 02:38:54.784363','3fa7d146-4186-46b4-ab0f-2e7934ea24a3','Cliente object (3fa7d146-4186-46b4-ab0f-2e7934ea24a3)',1,'[{\"added\": {}}]',9,'050a6912f48e483387ec4e415a0cf623'),(7,'2018-03-22 02:39:13.815789','1d5fcf5e-98ad-43ad-8dd8-036434c1781f','Cliente object (1d5fcf5e-98ad-43ad-8dd8-036434c1781f)',1,'[{\"added\": {}}]',9,'050a6912f48e483387ec4e415a0cf623');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'fe_core','entity'),(6,'fe_core','user'),(9,'fe_pessoa','cliente'),(10,'fe_pessoa','fornecedor'),(8,'fe_pessoa','pessoa'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-03-22 02:25:22.620193'),(2,'contenttypes','0002_remove_content_type_name','2018-03-22 02:25:22.671475'),(3,'auth','0001_initial','2018-03-22 02:25:22.883624'),(4,'auth','0002_alter_permission_name_max_length','2018-03-22 02:25:22.908367'),(5,'auth','0003_alter_user_email_max_length','2018-03-22 02:25:22.931804'),(6,'auth','0004_alter_user_username_opts','2018-03-22 02:25:22.939936'),(7,'auth','0005_alter_user_last_login_null','2018-03-22 02:25:22.946908'),(8,'auth','0006_require_contenttypes_0002','2018-03-22 02:25:22.951650'),(9,'auth','0007_alter_validators_add_error_messages','2018-03-22 02:25:22.959901'),(10,'auth','0008_alter_user_username_max_length','2018-03-22 02:25:22.966839'),(11,'fe_core','0001_initial','2018-03-22 02:25:23.247755'),(12,'admin','0001_initial','2018-03-22 02:25:23.350580'),(13,'admin','0002_logentry_remove_auto_add','2018-03-22 02:25:23.361808'),(14,'auth','0009_alter_user_last_name_max_length','2018-03-22 02:25:23.373059'),(15,'fe_pessoa','0001_initial','2018-03-22 02:25:23.489649'),(16,'fe_pessoa','0002_auto_20170616_1501','2018-03-22 02:25:23.548517'),(17,'fe_pessoa','0003_auto_20170627_1615','2018-03-22 02:25:23.615464'),(18,'sessions','0001_initial','2018-03-22 02:25:23.636295');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4oyd09dzshscapksfvsi867zfgwt3p4e','MzUwNmI2YjlmYTVmMDNmZjA2NTVmYzdjMjczNjRjNDZhZmQwYjk1Njp7Il9hdXRoX3VzZXJfaWQiOiIwNTBhNjkxMi1mNDhlLTQ4MzMtODdlYy00ZTQxNWEwY2Y2MjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFjMmE2MGQ4YjRkZGE5NDgyZWViOTMwMDgxY2NhNjdiODZiZTE5MTMifQ==','2018-04-05 02:34:55.207575');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_entity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_entity` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_entity`
--

LOCK TABLES `fe_core_entity` WRITE;
/*!40000 ALTER TABLE `fe_core_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_core_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `email` (`email`),
  KEY `fe_core_user_entity_id_8a3163a6_fk_fe_core_entity_uuid` (`entity_id`),
  CONSTRAINT `fe_core_user_entity_id_8a3163a6_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_user`
--

LOCK TABLES `fe_core_user` WRITE;
/*!40000 ALTER TABLE `fe_core_user` DISABLE KEYS */;
INSERT INTO `fe_core_user` VALUES ('pbkdf2_sha256$100000$UKYS2LcSorXN$/E2G9LMPfV4tb3xdjx3e1Bym9tKGPGpAea8dmI+KhGI=','2018-03-22 02:34:55.202496',1,'050a6912f48e483387ec4e415a0cf623','2018-03-22 02:34:33.951848','2018-03-22 02:34:33.957424','fer.esp@gmail.com',1,1,NULL),('',NULL,0,'5a32aa8718cf43ab8781be8160b57cee','2018-03-22 02:33:22.425358','2018-03-22 02:33:22.425475','fe@hp.com',0,1,NULL);
/*!40000 ALTER TABLE `fe_core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_user_groups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fe_core_user_groups_user_id_group_id_14b16de9_uniq` (`user_id`,`group_id`),
  KEY `fe_core_user_groups_group_id_cf9bf19e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `fe_core_user_groups_group_id_cf9bf19e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fe_core_user_groups_user_id_14a5486d_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_user_groups`
--

LOCK TABLES `fe_core_user_groups` WRITE;
/*!40000 ALTER TABLE `fe_core_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_core_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_user_user_permissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fe_core_user_user_permis_user_id_permission_id_e8d1cb52_uniq` (`user_id`,`permission_id`),
  KEY `fe_core_user_user_pe_permission_id_e8aa7629_fk_auth_perm` (`permission_id`),
  CONSTRAINT `fe_core_user_user_pe_permission_id_e8aa7629_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `fe_core_user_user_pe_user_id_68138537_fk_fe_core_u` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_user_user_permissions`
--

LOCK TABLES `fe_core_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `fe_core_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_core_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_pessoa_cliente`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_pessoa_cliente` (
  `pessoa_ptr_id` char(32) NOT NULL,
  PRIMARY KEY (`pessoa_ptr_id`),
  CONSTRAINT `fe_pessoa_cliente_pessoa_ptr_id_86ce18a1_fk_fe_pessoa` FOREIGN KEY (`pessoa_ptr_id`) REFERENCES `fe_pessoa_pessoa` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_pessoa_cliente`
--

LOCK TABLES `fe_pessoa_cliente` WRITE;
/*!40000 ALTER TABLE `fe_pessoa_cliente` DISABLE KEYS */;
INSERT INTO `fe_pessoa_cliente` VALUES ('055319e099054908b228f7f6c205f5d9'),('1d5fcf5e98ad43ad8dd8036434c1781f'),('3fa7d146418646b4ab0f2e7934ea24a3'),('a09ab5ccc6964586b1e83faad77465db'),('fbe2d02223a14e2dae0caa7b99bd407b');
/*!40000 ALTER TABLE `fe_pessoa_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_pessoa_fornecedor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_pessoa_fornecedor` (
  `pessoa_ptr_id` char(32) NOT NULL,
  PRIMARY KEY (`pessoa_ptr_id`),
  CONSTRAINT `fe_pessoa_fornecedor_pessoa_ptr_id_08d1fe7d_fk_fe_pessoa` FOREIGN KEY (`pessoa_ptr_id`) REFERENCES `fe_pessoa_pessoa` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_pessoa_fornecedor`
--

LOCK TABLES `fe_pessoa_fornecedor` WRITE;
/*!40000 ALTER TABLE `fe_pessoa_fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_pessoa_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_pessoa_pessoa`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_pessoa_pessoa` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `transiente` tinyint(1) NOT NULL,
  `entidade_id` char(32) DEFAULT NULL,
  `nome` varchar(128) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `nome_fantasia` varchar(128) DEFAULT NULL,
  `contato` varchar(128) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `inscricao_estadual` varchar(20) DEFAULT NULL,
  `inscricao_municipal` varchar(20) DEFAULT NULL,
  `endereco` char(32) DEFAULT NULL,
  `telefone_celular` varchar(32) DEFAULT NULL,
  `telefone_comercial` varchar(32) DEFAULT NULL,
  `telefone_residencial` varchar(32) DEFAULT NULL,
  `telefone_recado` varchar(32) DEFAULT NULL,
  `site` varchar(200) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `observacao` longtext,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `fe_pessoa_pessoa_entidade_id_b9d43c1f` (`entidade_id`),
  CONSTRAINT `fe_pessoa_pessoa_entidade_id_b9d43c1f_fk_fe_core_entity_uuid` FOREIGN KEY (`entidade_id`) REFERENCES `fe_core_entity` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_pessoa_pessoa`
--

LOCK TABLES `fe_pessoa_pessoa` WRITE;
/*!40000 ALTER TABLE `fe_pessoa_pessoa` DISABLE KEYS */;
INSERT INTO `fe_pessoa_pessoa` VALUES ('055319e099054908b228f7f6c205f5d9','2018-03-22 02:38:35.795762','2018-03-22 02:38:35.795797',0,NULL,'Cliente 3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'(33) 333.333.333',NULL,NULL,NULL,NULL,'3@example.com','',1),('1d5fcf5e98ad43ad8dd8036434c1781f','2018-03-22 02:39:13.813197','2018-03-22 02:39:13.813243',0,NULL,'Cliente 5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'(55) 555.555.555',NULL,NULL,NULL,NULL,'5@example.com','',1),('3fa7d146418646b4ab0f2e7934ea24a3','2018-03-22 02:38:54.771968','2018-03-22 02:38:54.772007',0,NULL,'Cliente 4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'(44) 444.444.444',NULL,NULL,NULL,NULL,'4@example.com','',1),('a09ab5ccc6964586b1e83faad77465db','2018-03-22 02:35:21.067565','2018-03-22 02:38:04.997076',0,NULL,'Cliente 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'(22) 222.222.222',NULL,NULL,NULL,NULL,'2@example.com','',1),('fbe2d02223a14e2dae0caa7b99bd407b','2018-03-22 02:35:09.515452','2018-03-22 02:37:36.680448',0,NULL,'Cliente 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'(11) 111.111.111',NULL,NULL,NULL,NULL,'1@example.com','',1);
/*!40000 ALTER TABLE `fe_pessoa_pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-22  2:52:20
