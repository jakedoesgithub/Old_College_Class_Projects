-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: database-project.cvydxzebdtzu.us-east-2.rds.amazonaws.com    Database: db
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `Package`
--

DROP TABLE IF EXISTS `Package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Package` (
  `Package_ID` int(11) NOT NULL,
  `Supplier_ID` int(11) NOT NULL,
  `Purchase_ID` int(11) NOT NULL,
  `Medicine_ID` int(11) NOT NULL,
  `Weight` float DEFAULT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`Package_ID`),
  KEY `Package_ibfk_1` (`Supplier_ID`),
  KEY `Package_ibfk_2` (`Purchase_ID`),
  KEY `Package_ibfk_3` (`Medicine_ID`),
  CONSTRAINT `Package_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `Supplier` (`Supplier_ID`),
  CONSTRAINT `Package_ibfk_2` FOREIGN KEY (`Purchase_ID`) REFERENCES `Purchase` (`Purchase_ID`),
  CONSTRAINT `Package_ibfk_3` FOREIGN KEY (`Medicine_ID`) REFERENCES `Medicine` (`Medicine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Package`
--

LOCK TABLES `Package` WRITE;
/*!40000 ALTER TABLE `Package` DISABLE KEYS */;
INSERT INTO `Package` VALUES (1,2,1,1,3,3),(2,3,2,5,4,5),(3,6,3,2,2,3),(4,5,4,10,3,1),(5,4,5,5,1,2),(6,9,6,4,6,4),(7,10,7,3,9,5),(8,8,8,7,9,3),(9,7,9,8,4,1),(10,4,10,6,10,2),(11,3,11,6,20,5),(12,10,3,3,31,1),(13,6,4,7,18,2),(14,2,2,8,15,3),(15,4,2,1,6,4),(16,9,2,2,20,5),(17,11,15,10,25,5),(18,25,17,5,7,1),(19,13,20,7,15,3),(20,19,12,9,32,2),(21,12,25,2,27,4),(22,17,22,4,3,1),(23,14,19,6,22,2),(24,23,13,5,10,5),(25,20,21,8,1,3);
/*!40000 ALTER TABLE `Package` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 16:37:40
