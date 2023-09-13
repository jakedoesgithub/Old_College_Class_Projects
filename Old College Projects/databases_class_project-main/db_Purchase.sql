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
-- Table structure for table `Purchase`
--

DROP TABLE IF EXISTS `Purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Purchase` (
  `Purchase_ID` int(11) NOT NULL,
  `Package_Name` varchar(20) NOT NULL,
  `Buyer_ID` int(11) NOT NULL,
  `Payment_Method` varchar(45) NOT NULL,
  `Payment_amount` int(11) NOT NULL,
  `Order_verification` tinyint(1) DEFAULT NULL,
  `Recipient_ID` int(11) NOT NULL,
  `Order_Date` date DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Delivery_Date` date DEFAULT NULL,
  `Completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Purchase_ID`),
  KEY `Purchase_ibfk_1` (`Buyer_ID`),
  KEY `Purchase_ibfk_2` (`Recipient_ID`),
  KEY `Purchase_ibfk_3` (`Employee_ID`),
  CONSTRAINT `Purchase_ibfk_1` FOREIGN KEY (`Buyer_ID`) REFERENCES `Buyer` (`Buyer_ID`),
  CONSTRAINT `Purchase_ibfk_2` FOREIGN KEY (`Recipient_ID`) REFERENCES `Recipient` (`Recipient_ID`),
  CONSTRAINT `Purchase_ibfk_3` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Purchase`
--

LOCK TABLES `Purchase` WRITE;
/*!40000 ALTER TABLE `Purchase` DISABLE KEYS */;
INSERT INTO `Purchase` VALUES (1,'Package A',10,'Citibank Card',5000,NULL,5,'1990-09-01',1,NULL,NULL),(2,'Package B',9,'Citibank Card',6300,1,2,'1980-02-11',5,'1990-09-20',1),(3,'Package C',8,'Bank Note',6100,1,3,'1991-01-15',NULL,NULL,NULL),(4,'Package D',7,'Loan',1400,NULL,4,'2000-07-11',2,NULL,NULL),(5,'Package E',6,'Bank Statement',2300,1,1,'2005-03-01',3,'2005-04-20',1),(6,'Package F',5,'Paypal',9200,NULL,8,'2007-12-31',8,NULL,NULL),(7,'Package G',4,'Visa Card',7100,NULL,9,'2012-10-23',9,NULL,NULL),(8,'Package H',3,'Mastercard',3400,1,6,'2014-11-30',10,'2014-12-20',NULL),(9,'Package I',2,'Citibank Card',5500,NULL,7,'2001-04-18',NULL,NULL,NULL),(10,'Package J',1,'Visa Card',1200,1,10,'2003-08-19',4,'2003-10-20',1),(11,'Package 11',1,'Discovery Card',2560,1,1,'0000-00-00',3,'0000-00-00',1),(12,'Package 12',4,'Capital One Card',1600,NULL,9,'2012-11-23',9,NULL,NULL),(13,'Package 13',4,'Paypal',6300,1,6,'2002-11-30',10,'2014-12-12',NULL),(14,'Package 14',4,'Paypal',2100,NULL,7,'2011-04-18',NULL,NULL,NULL),(15,'Package 15',3,'Capital One Card',6600,1,10,'2003-08-19',4,'2003-01-16',NULL),(16,'Package 16',1,'Discovery Card',8310,1,1,'2000-02-22',3,'2000-02-23',NULL),(17,'Package 17',9,'Check',1500,1,9,'2019-10-10',5,'2019-10-15',1),(18,'Package 18',6,'Discovery Card',3300,NULL,10,'1997-04-02',NULL,NULL,NULL),(19,'Package 19',2,'Check',6900,1,2,'2001-11-20',1,'2001-12-15',1),(20,'Package 20',7,'Check',1900,1,8,'2009-03-01',6,'2009-03-07',NULL),(21,'Package 21',4,'Bank Statement',7200,NULL,5,'2015-07-16',NULL,NULL,NULL),(22,'Package 22',10,'Capital One Card',4400,1,3,'2004-01-04',1,'2004-03-04',1),(23,'Package 23',6,'Visa Card',6200,1,8,'2010-09-23',5,'2010-10-03',NULL),(24,'Package 24',10,'Paypal',1700,NULL,4,'1970-12-07',9,NULL,NULL),(25,'Package 25',1,'Discovery Card',2800,1,5,'1999-02-02',8,'1999-02-03',1);
/*!40000 ALTER TABLE `Purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 16:37:37
