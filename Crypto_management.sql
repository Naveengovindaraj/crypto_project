-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: crypto
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `api_cryptoprice`
--

DROP TABLE IF EXISTS `api_cryptoprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_cryptoprice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `price` decimal(20,10) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `org_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_cryptoprice_org_id_6c367aa2_fk_api_organization_id` (`org_id`),
  CONSTRAINT `api_cryptoprice_org_id_6c367aa2_fk_api_organization_id` FOREIGN KEY (`org_id`) REFERENCES `api_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_cryptoprice`
--

LOCK TABLES `api_cryptoprice` WRITE;
/*!40000 ALTER TABLE `api_cryptoprice` DISABLE KEYS */;
INSERT INTO `api_cryptoprice` VALUES (1,'BTC',83619.0000000000,'2025-03-17 10:01:43.261165','5b82770f7b344d919422681d2121b67e'),(2,'ETH',1909.0900000000,'2025-03-17 10:01:43.261165','5b82770f7b344d919422681d2121b67e'),(3,'BTC',83446.0000000000,'2025-03-17 10:33:59.799802','1630305fe15c40b29fe99b04ffde4ae6'),(4,'ETH',1911.7300000000,'2025-03-17 10:33:59.806198','1630305fe15c40b29fe99b04ffde4ae6'),(5,'BTC',83446.0000000000,'2025-03-17 10:33:59.806198','37fa432f22794a83b1dfcbcf2136dfb8'),(6,'ETH',1911.7300000000,'2025-03-17 10:33:59.806198','37fa432f22794a83b1dfcbcf2136dfb8'),(7,'BTC',83446.0000000000,'2025-03-17 10:33:59.806198','384d620f5f4648b1b7ea9a2506d840e6'),(8,'ETH',1911.7300000000,'2025-03-17 10:33:59.806198','384d620f5f4648b1b7ea9a2506d840e6'),(9,'BTC',83446.0000000000,'2025-03-17 10:33:59.821915','3a94f33e7c864f2ca5248c5e93814775'),(10,'ETH',1911.7300000000,'2025-03-17 10:33:59.871409','3a94f33e7c864f2ca5248c5e93814775'),(11,'BTC',83446.0000000000,'2025-03-17 10:33:59.871409','454fbd951ac24c2b81373af196db0ff3'),(12,'ETH',1911.7300000000,'2025-03-17 10:33:59.885920','454fbd951ac24c2b81373af196db0ff3'),(13,'BTC',83446.0000000000,'2025-03-17 10:33:59.885920','49987eb359cc4ac38c08c3c789b187c4'),(14,'ETH',1911.7300000000,'2025-03-17 10:33:59.885920','49987eb359cc4ac38c08c3c789b187c4'),(15,'BTC',83446.0000000000,'2025-03-17 10:33:59.885920','5064dd9f826845209a2a1d5f83fa86e0'),(16,'ETH',1911.7300000000,'2025-03-17 10:33:59.902201','5064dd9f826845209a2a1d5f83fa86e0'),(17,'BTC',83446.0000000000,'2025-03-17 10:33:59.902201','520bd9b9b3e7422eb0dca57a334a8ed2'),(18,'ETH',1911.7300000000,'2025-03-17 10:33:59.902201','520bd9b9b3e7422eb0dca57a334a8ed2'),(19,'BTC',83446.0000000000,'2025-03-17 10:33:59.902201','5b82770f7b344d919422681d2121b67e'),(20,'ETH',1911.7300000000,'2025-03-17 10:33:59.902201','5b82770f7b344d919422681d2121b67e'),(21,'BTC',83446.0000000000,'2025-03-17 10:33:59.902201','5f8f5ab7dbba4d769d99af0997f7a71c'),(22,'ETH',1911.7300000000,'2025-03-17 10:33:59.902201','5f8f5ab7dbba4d769d99af0997f7a71c'),(23,'BTC',83446.0000000000,'2025-03-17 10:33:59.902201','61bb9821bc444b238a5cd31eaf912a9e'),(24,'ETH',1911.7300000000,'2025-03-17 10:33:59.917476','61bb9821bc444b238a5cd31eaf912a9e'),(25,'BTC',83446.0000000000,'2025-03-17 10:33:59.917476','6b985ccc4f6e4d58847325487e461c35'),(26,'ETH',1911.7300000000,'2025-03-17 10:33:59.917476','6b985ccc4f6e4d58847325487e461c35'),(27,'BTC',83446.0000000000,'2025-03-17 10:33:59.917476','817f2499ca26404caa23d84246a473cf'),(28,'ETH',1911.7300000000,'2025-03-17 10:33:59.917476','817f2499ca26404caa23d84246a473cf'),(29,'BTC',83446.0000000000,'2025-03-17 10:33:59.917476','915dbd9cfa8c45e5b2394ef0290c4f8f'),(30,'ETH',1911.7300000000,'2025-03-17 10:33:59.917476','915dbd9cfa8c45e5b2394ef0290c4f8f'),(31,'BTC',83446.0000000000,'2025-03-17 10:33:59.917476','989a70e83f8245258dc626c4949b611d'),(32,'ETH',1911.7300000000,'2025-03-17 10:33:59.917476','989a70e83f8245258dc626c4949b611d'),(33,'BTC',83446.0000000000,'2025-03-17 10:33:59.917476','a56644a2e6784b4c8eedf802d6c2370a'),(34,'ETH',1911.7300000000,'2025-03-17 10:33:59.917476','a56644a2e6784b4c8eedf802d6c2370a'),(35,'BTC',83446.0000000000,'2025-03-17 10:33:59.917476','ab0a789d8e4b4a2f80c822eb5411bf28'),(36,'ETH',1911.7300000000,'2025-03-17 10:33:59.917476','ab0a789d8e4b4a2f80c822eb5411bf28'),(37,'BTC',83446.0000000000,'2025-03-17 10:33:59.933773','b631aa076a624ba995971e6938139470'),(38,'ETH',1911.7300000000,'2025-03-17 10:33:59.933773','b631aa076a624ba995971e6938139470'),(39,'BTC',83446.0000000000,'2025-03-17 10:33:59.933773','bea4f09992684e12b8030740afe13948'),(40,'ETH',1911.7300000000,'2025-03-17 10:33:59.933773','bea4f09992684e12b8030740afe13948'),(41,'BTC',83446.0000000000,'2025-03-17 10:33:59.933773','c921fec9f51d4bf8b00619b818a626f2'),(42,'ETH',1911.7300000000,'2025-03-17 10:33:59.933773','c921fec9f51d4bf8b00619b818a626f2'),(43,'BTC',83446.0000000000,'2025-03-17 10:33:59.933773','d3c37657f97942fb8334d225b7184ad6'),(44,'ETH',1911.7300000000,'2025-03-17 10:33:59.933773','d3c37657f97942fb8334d225b7184ad6'),(45,'BTC',83446.0000000000,'2025-03-17 10:33:59.933773','d9e221c13c4a4b4f84e2c2e472229fa5'),(46,'ETH',1911.7300000000,'2025-03-17 10:33:59.933773','d9e221c13c4a4b4f84e2c2e472229fa5'),(47,'BTC',83446.0000000000,'2025-03-17 10:33:59.933773','e0334f59f1e0427db69efb064dfded3c'),(48,'ETH',1911.7300000000,'2025-03-17 10:33:59.933773','e0334f59f1e0427db69efb064dfded3c'),(49,'BTC',83446.0000000000,'2025-03-17 10:33:59.933773','fbcd9c1569b74bf1a90daa2626c5944a'),(50,'ETH',1911.7300000000,'2025-03-17 10:33:59.933773','fbcd9c1569b74bf1a90daa2626c5944a'),(51,'BTC',83446.0000000000,'2025-03-17 10:33:59.948939','fdb6a944359e4c54971d37bf99c58fc6'),(52,'ETH',1911.7300000000,'2025-03-17 10:33:59.948939','fdb6a944359e4c54971d37bf99c58fc6'),(53,'BTC',83354.0000000000,'2025-03-17 10:42:13.658887','1630305fe15c40b29fe99b04ffde4ae6'),(54,'ETH',1910.6900000000,'2025-03-17 10:42:13.663634','1630305fe15c40b29fe99b04ffde4ae6'),(55,'BTC',83354.0000000000,'2025-03-17 10:42:13.673641','37fa432f22794a83b1dfcbcf2136dfb8'),(56,'ETH',1910.6900000000,'2025-03-17 10:42:13.673641','37fa432f22794a83b1dfcbcf2136dfb8'),(57,'BTC',83354.0000000000,'2025-03-17 10:42:13.673641','384d620f5f4648b1b7ea9a2506d840e6'),(58,'ETH',1910.6900000000,'2025-03-17 10:42:13.673641','384d620f5f4648b1b7ea9a2506d840e6'),(59,'BTC',83354.0000000000,'2025-03-17 10:42:13.673641','3a94f33e7c864f2ca5248c5e93814775'),(60,'ETH',1910.6900000000,'2025-03-17 10:42:13.673641','3a94f33e7c864f2ca5248c5e93814775'),(61,'BTC',83354.0000000000,'2025-03-17 10:42:13.689481','454fbd951ac24c2b81373af196db0ff3'),(62,'ETH',1910.6900000000,'2025-03-17 10:42:13.689481','454fbd951ac24c2b81373af196db0ff3'),(63,'BTC',83354.0000000000,'2025-03-17 10:42:13.689481','49987eb359cc4ac38c08c3c789b187c4'),(64,'ETH',1910.6900000000,'2025-03-17 10:42:13.689481','49987eb359cc4ac38c08c3c789b187c4'),(65,'BTC',83354.0000000000,'2025-03-17 10:42:13.689481','5064dd9f826845209a2a1d5f83fa86e0'),(66,'ETH',1910.6900000000,'2025-03-17 10:42:13.689481','5064dd9f826845209a2a1d5f83fa86e0'),(67,'BTC',83354.0000000000,'2025-03-17 10:42:13.689481','520bd9b9b3e7422eb0dca57a334a8ed2'),(68,'ETH',1910.6900000000,'2025-03-17 10:42:13.705159','520bd9b9b3e7422eb0dca57a334a8ed2'),(69,'BTC',83354.0000000000,'2025-03-17 10:42:13.705159','5b82770f7b344d919422681d2121b67e'),(70,'ETH',1910.6900000000,'2025-03-17 10:42:13.705159','5b82770f7b344d919422681d2121b67e'),(71,'BTC',83354.0000000000,'2025-03-17 10:42:13.705159','5f8f5ab7dbba4d769d99af0997f7a71c'),(72,'ETH',1910.6900000000,'2025-03-17 10:42:13.705159','5f8f5ab7dbba4d769d99af0997f7a71c'),(73,'BTC',83354.0000000000,'2025-03-17 10:42:13.705159','61bb9821bc444b238a5cd31eaf912a9e'),(74,'ETH',1910.6900000000,'2025-03-17 10:42:13.705159','61bb9821bc444b238a5cd31eaf912a9e'),(75,'BTC',83354.0000000000,'2025-03-17 10:42:13.720811','6b985ccc4f6e4d58847325487e461c35'),(76,'ETH',1910.6900000000,'2025-03-17 10:42:13.720811','6b985ccc4f6e4d58847325487e461c35'),(77,'BTC',83354.0000000000,'2025-03-17 10:42:13.720811','817f2499ca26404caa23d84246a473cf'),(78,'ETH',1910.6900000000,'2025-03-17 10:42:13.720811','817f2499ca26404caa23d84246a473cf'),(79,'BTC',83354.0000000000,'2025-03-17 10:42:13.720811','915dbd9cfa8c45e5b2394ef0290c4f8f'),(80,'ETH',1910.6900000000,'2025-03-17 10:42:13.720811','915dbd9cfa8c45e5b2394ef0290c4f8f'),(81,'BTC',83354.0000000000,'2025-03-17 10:42:13.720811','989a70e83f8245258dc626c4949b611d'),(82,'ETH',1910.6900000000,'2025-03-17 10:42:13.736463','989a70e83f8245258dc626c4949b611d'),(83,'BTC',83354.0000000000,'2025-03-17 10:42:13.737971','a56644a2e6784b4c8eedf802d6c2370a'),(84,'ETH',1910.6900000000,'2025-03-17 10:42:13.737971','a56644a2e6784b4c8eedf802d6c2370a'),(85,'BTC',83354.0000000000,'2025-03-17 10:42:13.737971','ab0a789d8e4b4a2f80c822eb5411bf28'),(86,'ETH',1910.6900000000,'2025-03-17 10:42:13.737971','ab0a789d8e4b4a2f80c822eb5411bf28'),(87,'BTC',83354.0000000000,'2025-03-17 10:42:13.737971','b631aa076a624ba995971e6938139470'),(88,'ETH',1910.6900000000,'2025-03-17 10:42:13.737971','b631aa076a624ba995971e6938139470'),(89,'BTC',83354.0000000000,'2025-03-17 10:42:13.737971','bea4f09992684e12b8030740afe13948'),(90,'ETH',1910.6900000000,'2025-03-17 10:42:13.752240','bea4f09992684e12b8030740afe13948'),(91,'BTC',83354.0000000000,'2025-03-17 10:42:13.752240','c921fec9f51d4bf8b00619b818a626f2'),(92,'ETH',1910.6900000000,'2025-03-17 10:42:13.755384','c921fec9f51d4bf8b00619b818a626f2'),(93,'BTC',83354.0000000000,'2025-03-17 10:42:13.755384','d3c37657f97942fb8334d225b7184ad6'),(94,'ETH',1910.6900000000,'2025-03-17 10:42:13.755384','d3c37657f97942fb8334d225b7184ad6'),(95,'BTC',83354.0000000000,'2025-03-17 10:42:13.755384','d9e221c13c4a4b4f84e2c2e472229fa5'),(96,'ETH',1910.6900000000,'2025-03-17 10:42:13.755384','d9e221c13c4a4b4f84e2c2e472229fa5'),(97,'BTC',83354.0000000000,'2025-03-17 10:42:13.755384','e0334f59f1e0427db69efb064dfded3c'),(98,'ETH',1910.6900000000,'2025-03-17 10:42:13.767776','e0334f59f1e0427db69efb064dfded3c'),(99,'BTC',83354.0000000000,'2025-03-17 10:42:13.767776','fbcd9c1569b74bf1a90daa2626c5944a'),(100,'ETH',1910.6900000000,'2025-03-17 10:42:13.767776','fbcd9c1569b74bf1a90daa2626c5944a'),(101,'BTC',83354.0000000000,'2025-03-17 10:42:13.767776','fdb6a944359e4c54971d37bf99c58fc6'),(102,'ETH',1910.6900000000,'2025-03-17 10:42:13.767776','fdb6a944359e4c54971d37bf99c58fc6');
/*!40000 ALTER TABLE `api_cryptoprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_organization`
--

DROP TABLE IF EXISTS `api_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_organization` (
  `id` char(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_organization`
--

LOCK TABLES `api_organization` WRITE;
/*!40000 ALTER TABLE `api_organization` DISABLE KEYS */;
INSERT INTO `api_organization` VALUES ('1630305fe15c40b29fe99b04ffde4ae6','Shiba Inu Community','2025-03-17 10:22:56.977877'),('37fa432f22794a83b1dfcbcf2136dfb8','Crypto King Org','2025-03-17 10:24:36.697891'),('384d620f5f4648b1b7ea9a2506d840e6','CoinBase Organization','2025-03-17 10:21:58.082055'),('3a94f33e7c864f2ca5248c5e93814775','Pancake Swap Org','2025-03-17 10:23:38.943762'),('454fbd951ac24c2b81373af196db0ff3','Near Protocol Organization','2025-03-17 10:24:22.643729'),('49987eb359cc4ac38c08c3c789b187c4','Cardano Org','2025-03-17 10:22:50.940540'),('5064dd9f826845209a2a1d5f83fa86e0','Decentralized Finance Org','2025-03-17 10:24:43.775912'),('520bd9b9b3e7422eb0dca57a334a8ed2','Polygon Organization','2025-03-17 10:22:36.841790'),('5b82770f7b344d919422681d2121b67e','Binance Organization','2025-03-17 09:43:09.145336'),('5f8f5ab7dbba4d769d99af0997f7a71c','Stellar Org','2025-03-17 10:23:51.691591'),('61bb9821bc444b238a5cd31eaf912a9e','Uniswap Org','2025-03-17 10:23:25.065535'),('6b985ccc4f6e4d58847325487e461c35','Crypto Market Org','2025-03-17 10:22:06.081442'),('817f2499ca26404caa23d84246a473cf','Polkadot Organization','2025-03-17 10:23:17.760569'),('915dbd9cfa8c45e5b2394ef0290c4f8f','Blockchain Org','2025-03-17 10:22:13.807878'),('989a70e83f8245258dc626c4949b611d','Solana Organization','2025-03-17 10:22:20.618159'),('a56644a2e6784b4c8eedf802d6c2370a','Litecoin Organization','2025-03-17 10:23:31.581736'),('ab0a789d8e4b4a2f80c822eb5411bf28','Ethereum Organization','2025-03-17 10:20:50.050751'),('b631aa076a624ba995971e6938139470','Chainlink Organization','2025-03-17 10:23:11.204530'),('bea4f09992684e12b8030740afe13948','Avalanche Org','2025-03-17 10:23:04.260664'),('c921fec9f51d4bf8b00619b818a626f2','Grow Organization','2025-03-17 10:11:51.256846'),('d3c37657f97942fb8334d225b7184ad6','BitTorrent Org','2025-03-17 10:24:29.488106'),('d9e221c13c4a4b4f84e2c2e472229fa5','Tron Organization','2025-03-17 10:23:45.693191'),('e0334f59f1e0427db69efb064dfded3c','Dogecoin Community','2025-03-17 10:22:44.063072'),('fbcd9c1569b74bf1a90daa2626c5944a','Ripple Labs','2025-03-17 10:22:27.482287'),('fdb6a944359e4c54971d37bf99c58fc6','Aptos Organization','2025-03-17 10:24:15.107226');
/*!40000 ALTER TABLE `api_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add organization',7,'add_organization'),(26,'Can change organization',7,'change_organization'),(27,'Can delete organization',7,'delete_organization'),(28,'Can view organization',7,'view_organization'),(29,'Can add crypto price',8,'add_cryptoprice'),(30,'Can change crypto price',8,'change_cryptoprice'),(31,'Can delete crypto price',8,'delete_cryptoprice'),(32,'Can view crypto price',8,'view_cryptoprice');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$rE9vX92JQwUyplcKKI4dYi$pghWS5TAnONidgFEQ+HN940u0IvEystSrbsVThuTXVU=',NULL,1,'admin','','','admin@gmail.com',1,1,'2025-03-17 09:08:04.821920');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'api','cryptoprice'),(7,'api','organization'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-03-17 09:07:36.307108'),(2,'auth','0001_initial','2025-03-17 09:07:36.785813'),(3,'admin','0001_initial','2025-03-17 09:07:36.948856'),(4,'admin','0002_logentry_remove_auto_add','2025-03-17 09:07:36.964707'),(5,'admin','0003_logentry_add_action_flag_choices','2025-03-17 09:07:36.964707'),(6,'api','0001_initial','2025-03-17 09:07:37.051673'),(7,'contenttypes','0002_remove_content_type_name','2025-03-17 09:07:37.115150'),(8,'auth','0002_alter_permission_name_max_length','2025-03-17 09:07:37.169226'),(9,'auth','0003_alter_user_email_max_length','2025-03-17 09:07:37.187227'),(10,'auth','0004_alter_user_username_opts','2025-03-17 09:07:37.189093'),(11,'auth','0005_alter_user_last_login_null','2025-03-17 09:07:37.237049'),(12,'auth','0006_require_contenttypes_0002','2025-03-17 09:07:37.237049'),(13,'auth','0007_alter_validators_add_error_messages','2025-03-17 09:07:37.246180'),(14,'auth','0008_alter_user_username_max_length','2025-03-17 09:07:37.286979'),(15,'auth','0009_alter_user_last_name_max_length','2025-03-17 09:07:37.337850'),(16,'auth','0010_alter_group_name_max_length','2025-03-17 09:07:37.361124'),(17,'auth','0011_update_proxy_permissions','2025-03-17 09:07:37.367294'),(18,'auth','0012_alter_user_first_name_max_length','2025-03-17 09:07:37.422941'),(19,'sessions','0001_initial','2025-03-17 09:07:37.441006');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 17:06:52
