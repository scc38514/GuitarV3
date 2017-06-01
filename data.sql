CREATE DATABASE  IF NOT EXISTS `guitars` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `guitars`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: guitars
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `guitar`
--

DROP TABLE IF EXISTS `guitar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guitar` (
  `serialNumber` varchar(225) NOT NULL,
  `price` double DEFAULT NULL,
  `builder` varchar(225) DEFAULT NULL,
  `model` varchar(225) DEFAULT NULL,
  `type` varchar(225) DEFAULT NULL,
  `numStrings` int(11) DEFAULT NULL,
  `backWood` varchar(225) DEFAULT NULL,
  `topWood` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guitar`
--

LOCK TABLES `guitar` WRITE;
/*!40000 ALTER TABLE `guitar` DISABLE KEYS */;
INSERT INTO `guitar` VALUES ('1092',12995.95,'Olson','SJ','acoustic',6,'Indian Rosewood','Cedar'),('11277',3999.95,'Collings','CJ','acoustic',6,'Indian Rosewood','Sitka'),('122784',5495.95,'Martin','D-18','acoustic',6,'Mahogany','Adirondack'),('566-62',8999.95,'Ryan','Cathedral','acoustic',12,'Cocobolo','Cedar'),('629584',2100.95,'PRS','Dave Navarro Signature','electric',6,'Mahogany','Maple'),('70108276',2295.95,'Gibson','Les Paul','electric',6,'Mahogany','Maple'),('76531',6295.95,'Martin','OM-28','acoustic',6,'Brazilian Rosewood','Adriondack'),('77023',6275.95,'Martin','D-28','acoustic',6,'Brazilian Rosewood','Adirondack'),('82765501',1890.95,'Gibson','SG \'61 Reissue','electric',6,'Mahogany','Mahogany'),('V9512',1549.95,'Fender','Stratocastor','electric',6,'Alder','Alder'),('V95693',1499.95,'Fender','Stratocastor','electric',6,'Alder','Alder');
/*!40000 ALTER TABLE `guitar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-01 14:58:45
