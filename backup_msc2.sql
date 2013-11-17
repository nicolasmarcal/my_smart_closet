-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: my_smart_closet
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2

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
-- Table structure for table `cors`
--

DROP TABLE IF EXISTS `cors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_cor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rgb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `proxima_cor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cors`
--

LOCK TABLES `cors` WRITE;
/*!40000 ALTER TABLE `cors` DISABLE KEYS */;
INSERT INTO `cors` VALUES (1,'Vermelho','Roupa','#FF3068','2013-10-05 17:47:01','2013-10-05 17:47:02',2),(2,'Laranja','Roupa','#FFAA05','2013-10-05 17:47:01','2013-10-05 17:47:02',3),(3,'Amarelo','Roupa','#FEFB16','2013-10-05 17:47:01','2013-10-05 17:47:02',4),(4,'Verde Água','Roupa','#00F0C3','2013-10-05 17:47:01','2013-10-05 17:47:02',5),(5,'Azul Claro','Roupa','#23A4FF','2013-10-05 17:47:01','2013-10-05 17:47:02',6),(6,'Azul Caneta','Roupa','#006EB9','2013-10-05 17:47:01','2013-10-05 17:47:02',7),(7,'Azul Bebê','Roupa','#B6E6FA','2013-10-05 17:47:01','2013-10-05 17:47:02',8),(8,'Rosa Bebê','Roupa','#FCD3F5','2013-10-05 17:47:01','2013-10-05 17:47:02',9),(9,'Amarelo Claro','Roupa','#FFF3C3','2013-10-05 17:47:01','2013-10-05 17:47:02',10),(10,'Verde Claro','Roupa','#C4FFC5','2013-10-05 17:47:01','2013-10-05 17:47:02',11),(11,'Gelo','Roupa','#F4F2E6','2013-10-05 17:47:01','2013-10-05 17:47:02',12),(12,'Bege Claro','Roupa','#ECE3D2','2013-10-05 17:47:01','2013-10-05 17:47:02',13),(13,'Bege','Roupa','#9D8F74','2013-10-05 17:47:01','2013-10-05 17:47:02',14),(14,'Marrom','Roupa','#4C3513','2013-10-05 17:47:01','2013-10-05 17:47:03',15),(15,'Camelo','Roupa','#A98030','2013-10-05 17:47:01','2013-10-05 17:47:03',16),(16,'Laranja Escuro','Roupa','#DD6D17','2013-10-05 17:47:01','2013-10-05 17:47:03',17),(17,'Vinho','Roupa','#A62819','2013-10-05 17:47:01','2013-10-05 17:47:03',18),(18,'Roxo','Roupa','#672742','2013-10-05 17:47:01','2013-10-05 17:47:03',19),(19,'Azul Petróleo','Roupa','#2C385E','2013-10-05 17:47:01','2013-10-05 17:47:03',20),(20,'Azul Esverdeado','Roupa','#2F5B5E','2013-10-05 17:47:01','2013-10-05 17:47:03',21),(21,'Verde','Roupa','#305E37','2013-10-05 17:47:01','2013-10-05 17:47:03',22),(22,'Verde Musgo','Roupa','#535F2F','2013-10-05 17:47:01','2013-10-05 17:47:03',23),(23,'Verde Oliva','Roupa','#8F9F70','2013-10-05 17:47:01','2013-10-05 17:47:03',24),(24,'Cinza Claro','Roupa','#B3B5A0','2013-10-05 17:47:02','2013-10-05 17:47:03',25),(25,'Cinza','Roupa','#6B6D60','2013-10-05 17:47:02','2013-10-05 17:47:03',26),(26,'Cinza Escuro','Roupa','#343530','2013-10-05 17:47:02','2013-10-05 17:47:03',27),(27,'Chumbo','Roupa','#1B1B19','2013-10-05 17:47:02','2013-10-05 17:47:03',28),(28,'Preto','Roupa','#010101','2013-10-05 17:47:02','2013-10-05 17:47:03',29),(29,'Cinza Médio','Roupa','#5E5E5E','2013-10-05 17:47:02','2013-10-05 17:47:03',30),(30,'Branco','Roupa','#FFFFFF','2013-10-05 17:47:02','2013-10-05 17:47:03',1);
/*!40000 ALTER TABLE `cors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destinos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ocasiao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estilos`
--

DROP TABLE IF EXISTS `estilos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estilos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilos`
--

LOCK TABLES `estilos` WRITE;
/*!40000 ALTER TABLE `estilos` DISABLE KEYS */;
/*!40000 ALTER TABLE `estilos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faixa_temperaturas`
--

DROP TABLE IF EXISTS `faixa_temperaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faixa_temperaturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faixa_min` decimal(10,2) DEFAULT NULL,
  `faixa_max` decimal(10,2) DEFAULT NULL,
  `classificacao_temperatura` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_faixa_temperaturas_on_usuario_id` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faixa_temperaturas`
--

LOCK TABLES `faixa_temperaturas` WRITE;
/*!40000 ALTER TABLE `faixa_temperaturas` DISABLE KEYS */;
INSERT INTO `faixa_temperaturas` VALUES (1,0.00,7.00,'MUITO_FRIO',1,'2013-10-05 17:56:27','2013-10-05 17:56:27'),(2,7.10,17.00,'FRIO',1,'2013-10-05 17:56:27','2013-10-05 17:56:27'),(3,17.10,25.00,'NORMAL',1,'2013-10-05 17:56:27','2013-10-05 17:56:27'),(4,25.10,33.00,'QUENTE',1,'2013-10-05 17:56:27','2013-10-05 17:56:27'),(5,33.10,47.00,'MUITO_QUENTE',1,'2013-10-05 17:56:27','2013-10-05 17:56:27');
/*!40000 ALTER TABLE `faixa_temperaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faixa_temperaturas_peca_de_roupas`
--

DROP TABLE IF EXISTS `faixa_temperaturas_peca_de_roupas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faixa_temperaturas_peca_de_roupas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faixa_temperatura_id` int(11) DEFAULT NULL,
  `peca_de_roupa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faixa_temperaturas_peca_de_roupas`
--

LOCK TABLES `faixa_temperaturas_peca_de_roupas` WRITE;
/*!40000 ALTER TABLE `faixa_temperaturas_peca_de_roupas` DISABLE KEYS */;
INSERT INTO `faixa_temperaturas_peca_de_roupas` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,1,7),(30,2,7),(31,3,7),(32,1,8),(33,2,8),(34,3,8),(35,1,9),(36,2,9),(37,3,9),(38,4,9),(39,5,9),(40,1,10),(41,2,10),(42,3,10),(43,4,10),(44,5,10),(45,1,11),(46,2,11),(47,3,11),(48,4,11),(49,5,11),(50,1,12),(51,2,12),(52,3,12),(53,4,12),(54,5,12),(55,1,13),(56,2,13),(57,3,13),(58,4,13),(59,5,13),(60,1,14),(61,2,14),(62,3,14),(63,4,14),(64,5,14),(65,3,15),(66,4,15),(67,5,15),(68,1,16),(69,2,16),(70,3,16),(71,4,16),(72,5,16),(73,1,17),(74,2,17),(75,3,17),(76,4,17),(77,5,17),(78,3,18),(79,4,18),(80,5,18),(81,3,19),(82,4,19),(83,5,19),(84,3,20),(85,4,20),(86,5,20),(87,1,21),(88,2,21),(89,3,21),(90,4,21),(91,5,21),(92,1,22),(93,2,22),(94,3,22),(95,4,22),(96,5,22),(97,3,23),(98,4,23),(99,5,23),(100,1,24),(101,2,24),(102,4,25),(103,5,25),(104,1,26),(105,2,26),(106,3,26),(107,4,26),(108,5,26),(109,1,27),(110,2,27),(111,3,27),(112,4,27),(113,5,27),(114,1,28),(115,2,28),(116,3,28),(117,4,28),(118,5,28),(119,1,29),(120,2,29),(121,3,29),(122,4,29),(123,5,29),(124,1,30),(125,2,30),(126,3,30),(127,4,30),(128,5,30),(129,3,31),(130,4,31),(131,5,31),(132,1,32),(133,2,32),(134,3,32),(135,4,32),(136,5,32),(137,3,33),(138,4,33),(139,5,33),(140,3,34),(141,4,34),(142,5,34),(143,1,35),(144,2,35),(145,3,35),(146,4,35),(147,5,35),(148,1,36),(149,2,36),(150,3,36),(151,4,36),(152,5,36),(153,1,37),(154,2,37),(155,3,37),(156,4,37),(157,5,37),(158,1,38),(159,2,38),(160,3,38),(161,1,39),(162,2,39),(163,3,39),(164,4,39),(165,5,39),(166,1,40),(167,2,40),(168,3,40),(169,4,40),(170,5,40),(171,3,41),(172,4,41),(173,5,41),(174,3,42),(175,4,42),(176,5,42);
/*!40000 ALTER TABLE `faixa_temperaturas_peca_de_roupas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `looks`
--

DROP TABLE IF EXISTS `looks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `looks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `destino_id` int(11) DEFAULT NULL,
  `ocasiao_id` int(11) DEFAULT NULL,
  `temperatura` decimal(10,0) DEFAULT NULL,
  `humor_usuario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `vestido` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_looks_on_usuario_id` (`usuario_id`),
  KEY `index_looks_on_destino_id` (`destino_id`),
  KEY `index_looks_on_ocasiao_id` (`ocasiao_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `looks`
--

LOCK TABLES `looks` WRITE;
/*!40000 ALTER TABLE `looks` DISABLE KEYS */;
INSERT INTO `looks` VALUES (1,1,NULL,2,14,NULL,'2013-10-05 18:18:41','2013-10-05 18:18:41',1),(2,1,NULL,5,14,NULL,'2013-10-05 18:31:10','2013-10-05 18:31:10',0),(3,1,NULL,3,14,NULL,'2013-10-05 18:34:52','2013-10-05 18:34:52',0),(4,1,NULL,4,15,NULL,'2013-10-05 21:19:05','2013-10-05 21:19:05',0),(5,1,NULL,2,15,NULL,'2013-10-05 21:24:13','2013-10-05 21:24:13',0),(6,1,NULL,2,15,NULL,'2013-10-05 21:38:22','2013-10-05 21:38:22',1),(7,1,NULL,3,15,NULL,'2013-10-05 21:41:21','2013-10-05 21:41:21',1),(8,1,NULL,4,15,NULL,'2013-10-05 21:44:46','2013-10-05 21:44:46',1),(9,1,NULL,2,15,NULL,'2013-10-05 21:46:28','2013-10-05 21:46:28',1),(10,1,NULL,1,15,NULL,'2013-10-05 21:50:46','2013-10-05 21:50:46',1),(11,1,NULL,5,15,NULL,'2013-10-05 21:51:57','2013-10-05 21:51:57',1),(12,1,NULL,3,15,NULL,'2013-10-05 21:54:49','2013-10-05 21:54:49',1),(13,1,NULL,3,15,NULL,'2013-10-05 21:56:17','2013-10-05 21:56:17',1),(14,1,NULL,5,15,NULL,'2013-10-05 22:02:52','2013-10-05 22:02:52',0),(15,1,NULL,2,15,NULL,'2013-10-05 22:13:14','2013-10-05 22:13:14',1),(16,1,NULL,5,15,NULL,'2013-10-05 22:16:14','2013-10-05 22:16:14',1),(17,NULL,NULL,4,15,NULL,'2013-10-05 22:29:11','2013-10-05 22:29:11',0),(18,1,NULL,4,15,NULL,'2013-10-05 22:30:41','2013-10-05 22:30:41',0),(19,1,NULL,4,15,NULL,'2013-10-05 22:31:08','2013-10-05 22:31:08',0);
/*!40000 ALTER TABLE `looks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `looks_peca_de_roupas`
--

DROP TABLE IF EXISTS `looks_peca_de_roupas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `looks_peca_de_roupas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `look_id` int(11) DEFAULT NULL,
  `peca_de_roupa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `looks_peca_de_roupas`
--

LOCK TABLES `looks_peca_de_roupas` WRITE;
/*!40000 ALTER TABLE `looks_peca_de_roupas` DISABLE KEYS */;
INSERT INTO `looks_peca_de_roupas` VALUES (1,1,9),(2,1,8),(3,1,24),(4,2,37),(5,2,21),(6,2,6),(7,3,16),(8,3,8),(9,3,40),(10,4,10),(11,4,38),(12,4,28),(13,5,17),(14,5,8),(15,5,27),(16,6,9),(17,6,8),(18,6,26),(19,7,37),(20,7,8),(21,7,30),(22,8,10),(23,8,6),(24,8,24),(25,9,16),(26,9,8),(27,9,40),(28,10,9),(29,10,8),(30,11,37),(31,11,21),(32,11,38),(33,12,17),(34,12,8),(35,12,27),(36,13,16),(37,13,8),(38,13,30),(39,14,10),(40,14,21),(41,14,6),(42,15,17),(43,15,8),(44,15,26),(45,16,9),(46,16,22),(47,16,6),(48,18,37),(49,18,38),(50,18,28);
/*!40000 ALTER TABLE `looks_peca_de_roupas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_roupas`
--

DROP TABLE IF EXISTS `modelo_roupas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_roupas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_roupa_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `descricao_modelo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_roupas`
--

LOCK TABLES `modelo_roupas` WRITE;
/*!40000 ALTER TABLE `modelo_roupas` DISABLE KEYS */;
INSERT INTO `modelo_roupas` VALUES (1,'Mini Saia',2,'2013-10-05 17:47:04','2013-10-05 17:47:04',NULL),(2,'Saia Reta',2,'2013-10-05 17:47:04','2013-10-05 17:47:04',NULL),(3,'Saia Balonê',2,'2013-10-05 17:47:04','2013-10-05 17:47:04',NULL),(4,'Saia Envelope',2,'2013-10-05 17:47:04','2013-10-05 17:47:04',NULL),(5,'Saia de Pregas',2,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(6,'Calça Reta',2,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(7,'Calça Flair',2,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(8,'Calça Skinny',2,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(9,'Calça Boyfriend',2,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(10,'Short',2,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(11,'Camisa',1,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(12,'Camiseta',1,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(13,'Regata',1,'2013-10-05 17:47:05','2013-10-05 17:47:05',NULL),(14,'Bata',1,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(15,'Blusa Ombro Caído',1,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(16,'Blusa Tomara-Que-Caia',1,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(17,'Camisa Tradicional',1,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(18,'Bota de Montaria',5,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(19,'Sapatilha',5,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(20,'Scarpin',5,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(21,'Tênis',5,'2013-10-05 17:47:06','2013-10-05 17:47:06',NULL),(22,'Vestido Longo',4,'2013-10-05 17:47:07','2013-10-05 17:47:07',NULL),(23,'Vestido Balonê',4,'2013-10-05 17:47:07','2013-10-05 17:47:07',NULL),(24,'Vestido Envelope',4,'2013-10-05 17:47:07','2013-10-05 17:47:07',NULL),(25,'Vestido Tubinho',4,'2013-10-05 17:47:07','2013-10-05 17:47:07',NULL),(26,'Blazer',3,'2013-10-05 17:47:07','2013-10-05 17:47:07',NULL),(27,'Jaqueta de Couro',3,'2013-10-05 17:47:08','2013-10-05 17:47:08',NULL);
/*!40000 ALTER TABLE `modelo_roupas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_roupas_ocasiaos`
--

DROP TABLE IF EXISTS `modelo_roupas_ocasiaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_roupas_ocasiaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_roupa_id` int(11) DEFAULT NULL,
  `ocasiao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_roupas_ocasiaos`
--

LOCK TABLES `modelo_roupas_ocasiaos` WRITE;
/*!40000 ALTER TABLE `modelo_roupas_ocasiaos` DISABLE KEYS */;
INSERT INTO `modelo_roupas_ocasiaos` VALUES (1,1,5),(2,2,2),(3,2,3),(4,3,5),(5,3,4),(6,4,4),(7,4,5),(8,5,5),(9,8,4),(10,8,5),(11,6,1),(12,7,1),(13,6,2),(14,7,2),(15,6,3),(16,7,3),(17,6,4),(18,7,4),(19,6,5),(20,7,5),(21,10,5),(22,11,1),(23,11,2),(24,11,3),(25,11,4),(26,11,5),(27,12,1),(28,12,2),(29,12,3),(30,12,4),(31,12,5),(32,13,1),(33,13,2),(34,13,3),(35,13,4),(36,13,5),(37,14,5),(38,14,4),(39,15,5),(40,16,5),(41,17,3),(42,17,2),(43,17,4),(44,18,3),(45,18,4),(46,18,2),(47,19,3),(48,19,4),(49,19,2),(50,20,2),(51,20,3),(52,20,1),(53,21,4),(54,21,5),(55,22,1),(56,23,1),(57,23,4),(58,24,3),(59,24,2),(60,25,2),(61,25,1),(62,25,3),(63,26,1),(64,26,2),(65,26,3),(66,26,4),(67,26,5),(68,27,4),(69,27,5);
/*!40000 ALTER TABLE `modelo_roupas_ocasiaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_roupas_tipo_corpos`
--

DROP TABLE IF EXISTS `modelo_roupas_tipo_corpos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_roupas_tipo_corpos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_corpo_id` int(11) DEFAULT NULL,
  `modelo_roupa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_roupas_tipo_corpos`
--

LOCK TABLES `modelo_roupas_tipo_corpos` WRITE;
/*!40000 ALTER TABLE `modelo_roupas_tipo_corpos` DISABLE KEYS */;
INSERT INTO `modelo_roupas_tipo_corpos` VALUES (1,1,1),(2,3,1),(3,5,1),(4,1,2),(5,3,2),(6,5,2),(7,1,3),(8,3,3),(9,5,3),(10,1,14),(11,3,14),(12,1,15),(13,3,15),(14,4,15),(15,1,16),(16,1,18),(17,2,18),(18,3,18),(19,4,18),(20,5,18),(21,1,19),(22,2,19),(23,3,19),(24,4,19),(25,5,19),(26,1,20),(27,2,20),(28,3,20),(29,4,20),(30,5,20),(31,1,23),(32,5,23),(33,3,23),(34,1,5),(35,1,4),(36,1,6),(37,1,10),(38,1,24),(39,1,25),(40,1,26),(41,1,27),(42,2,5),(43,2,4),(44,2,6),(45,2,10),(46,2,24),(47,2,25),(48,2,26),(49,2,27),(50,3,5),(51,3,4),(52,3,6),(53,3,10),(54,3,24),(55,3,25),(56,3,26),(57,3,27),(58,4,5),(59,4,4),(60,4,6),(61,4,10),(62,4,24),(63,4,25),(64,4,26),(65,4,27),(66,5,5),(67,5,4),(68,5,6),(69,5,10),(70,5,24),(71,5,25),(72,5,26),(73,5,27);
/*!40000 ALTER TABLE `modelo_roupas_tipo_corpos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocasiaos`
--

DROP TABLE IF EXISTS `ocasiaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocasiaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_ocasiao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocasiaos`
--

LOCK TABLES `ocasiaos` WRITE;
/*!40000 ALTER TABLE `ocasiaos` DISABLE KEYS */;
INSERT INTO `ocasiaos` VALUES (1,'Formal Evento','FORMAL','2013-10-05 17:47:03','2013-10-05 17:47:03'),(2,'Formal Trabalho','FORMAL_TRABALHO','2013-10-05 17:47:03','2013-10-05 17:47:03'),(3,'Formal Entrevista de Emprego','FORMAL_ENTREVISTA','2013-10-05 17:47:03','2013-10-05 17:47:03'),(4,'Casual Trabalho','CASUAL','2013-10-05 17:47:03','2013-10-05 17:47:03'),(5,'Casual Passeio','CASUAL_PASSEIO','2013-10-05 17:47:03','2013-10-05 17:47:03'),(6,'Casual Trabalho','CASUAL_TRABALHO','2013-10-05 17:47:03','2013-10-05 17:47:03'),(7,'Casual Balada','CASUAL_BALADA','2013-10-05 17:47:03','2013-10-05 17:47:03'),(8,'Casual Reunião em Família','CASUAL_REUNIAO_FAMILIA','2013-10-05 17:47:03','2013-10-05 17:47:03'),(9,'Esporte','ESPORTE','2013-10-05 17:47:03','2013-10-05 17:47:03'),(10,'Despojado','DESPOJADO','2013-10-05 17:47:03','2013-10-05 17:47:03');
/*!40000 ALTER TABLE `ocasiaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peca_de_roupas`
--

DROP TABLE IF EXISTS `peca_de_roupas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peca_de_roupas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_android` int(11) DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `estilo_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `caminho_imagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ocasiao_id` int(11) DEFAULT NULL,
  `tipo_roupa_id` int(11) DEFAULT NULL,
  `cor_id` int(11) DEFAULT NULL,
  `estampada` tinyint(1) DEFAULT NULL,
  `modelo_roupa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_peca_de_roupas_on_usuario_id` (`usuario_id`),
  KEY `index_peca_de_roupas_on_estilo_id` (`estilo_id`),
  KEY `index_peca_de_roupas_on_marca_id` (`marca_id`),
  KEY `index_peca_de_roupas_on_material_id` (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peca_de_roupas`
--

LOCK TABLES `peca_de_roupas` WRITE;
/*!40000 ALTER TABLE `peca_de_roupas` DISABLE KEYS */;
INSERT INTO `peca_de_roupas` VALUES (1,1,'Regata da hering',1,NULL,NULL,NULL,'http://moda.culturamix.com/blog/wp-content/gallery/regata-branca-feminina/foto-regata-feminina-04.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,1,30,0,13),(2,2,'Regata Hering',1,NULL,NULL,NULL,'http://www.tudoclaro.com/wp-content/uploads/2012/12/Regata-feminina-imagem-1.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,1,1,0,13),(3,3,'Camiseta Estampada',1,NULL,NULL,NULL,'http://www.animatoons.com.br/wp-content/uploads/2008/08/camisetaadormecida.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,1,16,1,12),(4,4,'Camisa',1,NULL,NULL,NULL,'http://www.gasdacoca.com/img/fotos/camisa%20dudalina%20feminina%202.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,1,5,1,11),(5,5,'Camisa',1,NULL,NULL,NULL,'http://www.chiceelegante.com.br/arquivos/ids/198629_10/Blusa-feminina-renda-1003_.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,1,6,0,11),(6,6,'Jaqueta de couro',1,NULL,NULL,NULL,'http://3.bp.blogspot.com/-bLOwIHPh3H8/TaMU6KP59aI/AAAAAAAAYjI/sZns7QodTN0/s1600/jaqueta-de-couro-feminina-4.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,3,28,0,27),(7,7,'Blazer Azul Caneta',1,NULL,NULL,NULL,'http://www.camisariarg.com/media/catalog/product/cache/1/image/500x500/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer-feminino-colors-04.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,3,6,0,26),(8,8,'Blazer preto',1,NULL,NULL,NULL,'http://www.roupasocial.net/files/2012/02/blazer-acinturado.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,3,28,0,26),(9,9,'Calça reta',1,NULL,NULL,NULL,'http://i.s8.com.br/images/fashion/cover/img2/1979302.jpg','2013-10-05 17:56:27','2013-10-05 17:56:29',NULL,2,28,0,6),(10,10,'Calça estampada',1,NULL,NULL,NULL,'http://imagens.paraisofeminino.com.br/AM/farfetch/106005_02.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,13,1,6),(11,11,'Calça Boyfriend',1,NULL,NULL,NULL,'http://www.dresstoshop.com.br/media/catalog/product/cache/13/image/9df78eab33525d08d6e5fb8d27136e95/r/e/ref5750.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,25,0,9),(12,12,'Calça Skinny',1,NULL,NULL,NULL,'http://lojavirtual.lojasrenner.com.br/images/variant/large/528041812-19-1650%20TP_z_1.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,17,0,8),(13,13,'Calça Skinny',1,NULL,NULL,NULL,'http://bimg2.mlstatic.com/calca-jeans-american-eagle-feminina-skinny-stretch-tam-38_MLB-F-4143848418_042013.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,27,0,8),(14,14,'Calça Flair',1,NULL,NULL,NULL,'http://d2v00stn2h670x.cloudfront.net/produto/707/full/calca-flare-a053-260707-244611-full.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,17,0,7),(15,15,'Mini Saia',1,NULL,NULL,NULL,'http://bimg2.mlstatic.com/mini-saia-cintura-alta-com-aplicaco-de-tachasspike_MLB-F-3727441871_012013.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,28,0,1),(16,16,'Saia Reta',1,NULL,NULL,NULL,'http://jeorane.files.wordpress.com/2008/12/saia1.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,15,0,2),(17,17,'Saia Reta branca',1,NULL,NULL,NULL,'http://encontrodeamigas.files.wordpress.com/2011/05/saia_reta2.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,30,0,2),(18,18,'Saia Envelope',1,NULL,NULL,NULL,'http://4.bp.blogspot.com/-37edlXH2d4Y/UNuAtBAuCLI/AAAAAAAAA90/qmTLX-596nc/s1600/saia+envelope2.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,19,0,4),(19,19,'Saia com laço',1,NULL,NULL,NULL,'http://3.bp.blogspot.com/-qgAp6yTpYGY/UEFA2R4NLxI/AAAAAAAAAFw/H_KKS7T8yxM/s400/saia-envelope2.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,8,0,4),(20,20,'Saia Pregas',1,NULL,NULL,NULL,'http://1.bp.blogspot.com/-kLqYUP-w4qk/UZj89xwBT6I/AAAAAAAAIDw/kC3yBax1xTA/s1600/00026906_Ampliada.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,2,28,0,5),(21,21,'Ombro Caido com caveira',1,NULL,NULL,NULL,'https://qol.s3.amazonaws.com/products/7732-79fc255e0cbbcbc2e23252d2d3c4ad5f.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,1,30,1,15),(22,22,'Ombro Caído Vermelha',1,NULL,NULL,NULL,'http://d3cznlo0697e08.cloudfront.net/products/7732-0315336fd3c96bfc806c325f9fb6485d.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,1,1,0,15),(23,23,'Bata',1,NULL,NULL,NULL,'http://www.sugiki.com.br/images/produtos/15_09_720.jpg','2013-10-05 17:56:28','2013-10-05 17:56:29',NULL,1,18,0,14),(24,24,'Bota Montaria',1,NULL,NULL,NULL,'http://onlyblack.fplace.com.br/image/stores/cache/140/data/127bota-montaria-em-couro0-800x800.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,5,28,0,18),(25,25,'Tomara-Que-Caia',1,NULL,NULL,NULL,'http://1.bp.blogspot.com/-lN-L7FVZNmM/UGtbAnYe1HI/AAAAAAAAAUo/tswguWYZWvo/s1600/Item-10329-500.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,1,3,0,16),(26,26,'Sapatilha de oncinha',1,NULL,NULL,NULL,'http://cea.com.br.s3.amazonaws.com/imagem/produtocor/ampliada/sapatilha-ampliada-10789.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,5,1,1,19),(27,27,'Sapatilha Vermelha',1,NULL,NULL,NULL,'http://cea.com.br.s3.amazonaws.com/imagem/produtocor/ampliada/sapatilha-ampliada-10802a1.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,5,1,0,19),(28,28,'Sapatilha preta',1,NULL,NULL,NULL,'http://www.gasdacoca.com/img/fotos/sapatilha%20preta%205.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,5,28,0,19),(29,29,'Scarpin',1,NULL,NULL,NULL,'http://images04.olx.com.br/ui/15/28/98/1361284069_483882098_1-Fotos-de--Scarpin-Schutz-Anil.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,5,6,0,20),(30,30,'Scarpin Vinho',1,NULL,NULL,NULL,'http://www.calcados.com/files/2013/04/scarpin-schutz.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,5,17,0,20),(31,31,'Vestido envelope colorido',1,NULL,NULL,NULL,'http://teusvestidos.files.wordpress.com/2010/11/dress1.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,4,28,1,24),(32,32,'Tenis Lona',1,NULL,NULL,NULL,'http://paneladagabi.files.wordpress.com/2011/12/1980_05563.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,5,30,0,21),(33,33,'Vestido cinza',1,NULL,NULL,NULL,'http://www.styleshop.com.br/wp/wp-content/uploads/2012/03/vestido-seda-dvf-cinza.jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,4,25,0,24),(34,34,'Vestido Envelope Vermelho',1,NULL,NULL,NULL,'http://msalx.elle.abril.com.br/2013/04/01/0645/vestido-envelope-dvf-div.jpeg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,4,1,0,24),(35,35,'Camisa verde agua',1,NULL,NULL,NULL,'http://www.shoxbay.com/produtos/foto1/grande/Ref-2875.Camisa.Social-Feminina-Dudalina.Verde.Agua%20(1).jpg','2013-10-05 17:56:28','2013-10-05 17:56:30',NULL,1,4,0,11),(36,36,'Camisa Amarela',1,NULL,NULL,NULL,'http://img.elo7.com.br/product/main/544522/camisa-chiffon-amarela.jpg','2013-10-05 17:56:29','2013-10-05 17:56:30',NULL,NULL,9,0,11),(37,37,'Calça reta',1,NULL,NULL,NULL,'http://static.dafity.com.br/p/Colcci-Cal%C3%A7a-Sarja-Colcci-Reta-Rodrigo-Vermelha-3917-6258911-1.jpg','2013-10-05 17:56:29','2013-10-05 17:56:30',NULL,2,17,0,6),(38,38,'Jaqueta Couro Marrom',1,NULL,NULL,NULL,'http://www.camisariarg.com/media/catalog/product/cache/1/image/500x500/9df78eab33525d08d6e5fb8d27136e95/j/a/jaqueta-de-couro-feminina-32-06.jpg','2013-10-05 17:56:29','2013-10-05 17:56:30',NULL,3,14,0,27),(39,40,'Camiseta',1,NULL,NULL,NULL,'http://modanapassarela.com.br/wp-content/uploads/2012/10/6400284012-Blusa-Feminina.jpg','2013-10-05 17:56:29','2013-10-05 17:56:30',NULL,1,28,1,12),(40,43,'Sapatilha Smurf',1,NULL,NULL,NULL,'http://www.docevidafashionstore.com.br/loja/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/a/sapatilha-melissa-wanting_smurfs.jpg','2013-10-05 17:56:29','2013-10-05 17:56:30',NULL,5,28,0,19),(41,44,'Neque porro quisquam est qui dolorem',1,NULL,NULL,NULL,'http://bimg2.mlstatic.com/mini-saia-pretapregueadarodada-rebelde-tam-14-veste-36_MLB-F-206525420_8104.jpg','2013-10-05 17:56:29','2013-10-05 17:56:30',NULL,2,27,1,1),(42,45,'Saia de Oncinha',1,NULL,NULL,NULL,'http://www.netlet.com.br/arquivos/ids/1636589-260-391/A580414100_0.jpg','2013-10-05 17:56:29','2013-10-05 17:56:30',NULL,2,24,1,2);
/*!40000 ALTER TABLE `peca_de_roupas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peca_de_roupas_tipo_corpos`
--

DROP TABLE IF EXISTS `peca_de_roupas_tipo_corpos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peca_de_roupas_tipo_corpos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peca_de_roupas_id` int(11) DEFAULT NULL,
  `tipo_corpos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peca_de_roupas_tipo_corpos`
--

LOCK TABLES `peca_de_roupas_tipo_corpos` WRITE;
/*!40000 ALTER TABLE `peca_de_roupas_tipo_corpos` DISABLE KEYS */;
/*!40000 ALTER TABLE `peca_de_roupas_tipo_corpos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130519190320'),('20130519191323'),('20130519191708'),('20130519193041'),('20130519193111'),('20130519193147'),('20130519193523'),('20130519193652'),('20130519194132'),('20130519194303'),('20130519194554'),('20130709190502'),('20130709192138'),('20130709213342'),('20130709230620'),('20130709231905'),('20130709233313'),('20130709233841'),('20130709233911'),('20130709234115'),('20130709234857'),('20130718001459'),('20130718002215'),('20130718003436'),('20130718003955'),('20130720205245'),('20130720212650'),('20130721203611'),('20130721205039'),('20130721214739'),('20130722003009'),('20130801001959'),('20130818010903'),('20130818234040'),('20130820224403');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_corpos`
--

DROP TABLE IF EXISTS `tipo_corpos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_corpos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_corpos`
--

LOCK TABLES `tipo_corpos` WRITE;
/*!40000 ALTER TABLE `tipo_corpos` DISABLE KEYS */;
INSERT INTO `tipo_corpos` VALUES (1,'Ampulheta','2013-10-05 17:47:04','2013-10-05 17:47:04'),(2,'Oval','2013-10-05 17:47:04','2013-10-05 17:47:04'),(3,'Retângulo','2013-10-05 17:47:04','2013-10-05 17:47:04'),(4,'Pêra','2013-10-05 17:47:04','2013-10-05 17:47:04'),(5,'Triângulo','2013-10-05 17:47:04','2013-10-05 17:47:04');
/*!40000 ALTER TABLE `tipo_corpos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_roupas`
--

DROP TABLE IF EXISTS `tipo_roupas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_roupas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_roupa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_roupas`
--

LOCK TABLES `tipo_roupas` WRITE;
/*!40000 ALTER TABLE `tipo_roupas` DISABLE KEYS */;
INSERT INTO `tipo_roupas` VALUES (1,'Camisa/Camiseta','CAMISA','2013-10-05 17:47:03','2013-10-05 17:47:03'),(2,'Calça/Saia/Short/Bermuda','CALCA','2013-10-05 17:47:04','2013-10-05 17:47:04'),(3,'Casaco','CASACO','2013-10-05 17:47:04','2013-10-05 17:47:04'),(4,'Vestido','VESTIDO','2013-10-05 17:47:04','2013-10-05 17:47:04'),(5,'Sapato','SAPATO','2013-10-05 17:47:04','2013-10-05 17:47:04');
/*!40000 ALTER TABLE `tipo_roupas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_android` int(11) DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_nasc` datetime DEFAULT NULL,
  `cor_cabelo_id` int(11) DEFAULT NULL,
  `cor_olhos_id` int(11) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `altura` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ocasiao_trabalho_id` int(11) DEFAULT NULL,
  `importancia_temperatura` int(11) DEFAULT NULL,
  `importancia_humor` int(11) DEFAULT NULL,
  `tipo_corpo_id` int(11) DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_usuarios_on_cor_cabelo_id` (`cor_cabelo_id`),
  KEY `index_usuarios_on_cor_olhos_id` (`cor_olhos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'Mônica','monica@teste.com','123','1965-05-19 03:00:00',NULL,NULL,NULL,NULL,'2013-10-05 17:56:26','2013-10-05 17:56:26',1,10,20,1,'F');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-05 19:39:38
