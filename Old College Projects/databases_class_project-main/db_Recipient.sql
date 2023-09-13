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
-- Table structure for table `Recipient`
--

DROP TABLE IF EXISTS `Recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recipient` (
  `Recipient_ID` int(11) NOT NULL,
  `Recipient_First_Name` varchar(20) NOT NULL,
  `Recipient_Last_Name` varchar(20) NOT NULL,
  `License_Number` varchar(20) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `Department_Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Recipient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipient`
--

LOCK TABLES `Recipient` WRITE;
/*!40000 ALTER TABLE `Recipient` DISABLE KEYS */;
INSERT INTO `Recipient` VALUES (1,'Samual','Lopez','MD067378Y',5136,'Emergency Services'),(2,'Katelin','Alvarez','ED034630Y',1858,'Vo Medical Clinic'),(3,'Belle','Henry','FA074226Y',3365,'Byrd Regional Hospit'),(4,'Mahek','Bernal','TY033615Y',4640,'CVS Pharmacy'),(5,'Everly','Senior','OI00864Y',7689,'Walgreens'),(6,'Ayra','Griffin','TN234323Y',5070,'Baton Rouge Clinic'),(7,'Ezra','Frederick','AF034363Y',4923,'Priority Care'),(8,'Dawud','Irvine','LR067311Y',4302,'Minute Clinic'),(9,'Freya','Bennett','OM045366Y',6013,'Moreau Therapy'),(10,'Caolan','Perry','QT937386Y',1059,'Health Clinic');
/*!40000 ALTER TABLE `Recipient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 16:37:45
