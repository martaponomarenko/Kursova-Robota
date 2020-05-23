-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: beauty_salon
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Olesia Kushnir','380961230001'),(2,'Natalia Vorona','380961230002'),(3,'Yana Kostiuk','380961230003'),(4,'Chrystyna Kotyk','380961230004'),(5,'Maria Reznik','380961230005'),(6,'Liuba Shynkar','380961230006'),(7,'Galina Belei','380961230007'),(8,'Viktoria Krestenchuk','380961230008'),(9,'Anna Kravchuk','380961230009'),(10,'Daryna Laba','380961230010'),(11,'Oksana Shtiba','380961230011'),(12,'Marta Melnyk','380961230012'),(13,'Iryna Romaniuk','380961230013'),(14,'Nina Shved','380961230014'),(15,'Alina Vorona','380961230015'),(16,'Vasyl Sharp','380961230016'),(17,'Sasha Savka','380961230017'),(18,'Andrii Ivashkiv','380961230018'),(19,'Ostap Girnyk','380961230019'),(20,'Vitalii Dykyj','380961230020'),(21,'Nazar Maslyak','380961230021'),(22,'Oleksandr Palamar','380961230022'),(23,'Andrii Shymanskyi','380961230023'),(24,'Ivan Vyval','380961230024'),(25,'Mykola Myshchak','380961230025');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_services_id_fk` (`order`),
  CONSTRAINT `orders_clients_id_fk_2` FOREIGN KEY (`id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_services_id_fk` FOREIGN KEY (`order`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2',5),(2,'1',5),(3,'2',6),(4,'5',6),(5,'11',3),(6,'10',1),(7,'8',13),(8,'29',17),(9,'30',11),(10,'15',15),(11,'16',15),(12,'20',15),(13,'9',2),(14,'10',3),(15,'7',23),(16,'21',NULL),(17,'22',NULL),(18,'',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `size salary` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `salary_workers_id_fk` FOREIGN KEY (`id`) REFERENCES `workers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,40000),(2,20000),(3,20000),(4,12000),(5,10000),(6,30000),(7,30000),(8,30000),(9,30000),(10,25000),(11,25000),(12,20000),(13,20000),(14,29000),(15,8000),(16,25000),(17,27000),(18,25000),(19,20000),(20,30000),(21,26000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `praise` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'women\'s  haircut and washing',400),(2,'women\'s haircut',300),(3,'shampoo',150),(4,'hair styling',250),(5,'hair polishing',300),(6,'men\'s haircut (clipper)',200),(7,'men\'s haircut (scissors)',300),(8,'men\'s haircut (scissors + clipper)',250),(9,'hair coloring short',450),(10,'hair coloring medium ',650),(11,'hair coloring long',850),(12,'highlighting hair',600),(13,'hair extensions',2700),(14,'baby haircut',150),(15,'make-up',600),(16,'evening make-up',800),(17,'eye brow tattoo',650),(18,'threading',300),(19,'waxing',400),(20,'hair removal',700),(21,'nail cleaning',200),(22,'manicure',400),(23,'pedicure',500),(24,'complex(make-up + manicure)',900);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Marta','Balyk',30,'director','0670000001'),(2,'Tetiana','Klish',25,'administrator','0670000002'),(3,'Viktoria','Potatkovska',24,'administrator','0670000003'),(4,'Diana','Rybachova',22,'secretary','0670000004'),(5,'Sofia','Borkovska',35,'accountant','0670000005'),(6,'Alisa','Vanilka',28,'female hairdresser','0670000006'),(7,'Oksana','Gutsiv',23,'female hairdresser','0670000007'),(8,'Veronika','Bastyn',20,'female hairdresser','0670000008'),(9,'Anastasia','Kovajska',34,'female hairdresser','0670000009'),(10,'Maksim','Batavol',27,'male hairdresser','0670000010'),(11,'Andrian','Kovalshyk',22,'male hairdresser','0670000011'),(12,'Solomia','Korchar',19,'manicurist','0670000012'),(13,'Evangelina','Chebot',25,'manicurist','0670000013'),(14,'Natalia','Steslavska',24,'manicurist','0670000014'),(15,'Nika','Fedorov',40,'maid','0670000015'),(16,'Vika','Melova',26,'make-up artist','0670000016'),(17,'Alina','Navorova',36,'make-up artist','0670000017'),(18,'Oksana','Yrchilo',31,'make-up artist','0670000018'),(19,'Julia','Matskiv',29,'eyebrow master','0670000019'),(20,'Margaryta','Shpakovska',32,'epilation master','0670000020'),(21,'Olena','Sloboda',30,'lashes master','0670000021');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-20 13:19:58
