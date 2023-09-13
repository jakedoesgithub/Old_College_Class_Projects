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
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `Supplier_ID` int(11) NOT NULL,
  `Supplier_Name` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `ZIP_Code` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (1,'King Pharmaceuticals, Inc.','235 East 42nd Street','10017','New York','NY','(678)-620-3186'),(2,'Anacor Pharmaceuticals, Inc.','235 East 42nd Street','10017','New York','NY','(212)-733-2323'),(3,'Nagase America Corp.','546 5th Avenue 16F','10036','New York','NY','(212)-703-1340'),(4,'Napo Pharmaceuticals, Inc.','201 Mission Street','94105','San Francisco','CA','(415)-963-9938'),(5,'Radius Health Inc.','950 Winter Street','02451','Waltham','MA','(617)-551-4000'),(6,'Clovis Oncology, Inc.','5500 Flatiron Parkway','80301','Boulder','CO','(303)-625-5000'),(7,'Edwards Pharmaceuticals','111 Mulberry Street','38663','Ripley','MS','(800)-543-9560'),(8,'Shionogi Inc.','100 Campus Drive','07932','Florham Park','NJ','(973)-966-6900'),(9,'Flexion Therapeutics, Inc.','10 Mall Road, Suite 301','01803','Burlington','MA','(781)-305-7777'),(10,'Galectin Therapeutics Inc.','4960 Peachtree Industrial Boulevard','30071','Norcross','GA','(678)-620-3186'),(11,'ALK-Abello Inc.','1700 Royston Lane','78664','Round Rock','TX','(512) 251-0037'),(12,'Bausch & Lomb Inc.','1400 North Goodman Street','14692','Rochester','NY','(800) 553-5340'),(13,'VeroScience, LLC','1334 Main Road','02878','Tiverton','RI','(401) 816-0525'),(14,'Portola Pharmaceuticals, Inc.','270 E. Grand Avenue','94080','South San Francisco','CA','(650) 246-7000'),(15,'Nomax Inc.','9735 Green Park Industrial Drive','63123','St. Louis','MO','(314) 815-5200'),(16,'Intellia Therapeutics, Inc.','40 Erie Street','02139','Cambridge','MA','(857) 285-6200'),(17,'Sunovion Pharmaceuticals, Inc.','84 Waterford Drive','01752','Marlborough','MA','(888) 394-7377'),(18,'KVK Tech, Inc.','110 Terry Drive','18940','Newtown','PA','(215) 579-1842'),(19,'Gensco Pharma, LLC','8550 NW 33rd Street','33122','Miami','FL','(855) 743-6726'),(20,'Proteon Therapeutics, Inc.','200 West Street','02451','Waltham','MA','(781) 890-0102'),(21,'Lundbeck Inc.','6 Parkway North','60015','Deerfield','IL','(866) 337-6996'),(22,'OPKO Health, Inc.','4400 Biscayne Boulevard','33137','Miami','FL','(305) 575-4100'),(23,'Supernus Pharmaceuticals, Inc.','1550 East Gude Drive','20850','Rockville','MD','(301) 838-2500'),(24,'Neurocrine Biosciences, Inc.','12780 El Camino Real','92130','San Diego','CA','(858) 617-7600'),(25,'Omeros Corporation','201 Elliott Avenue West','98119','Seattle','WA','(206) 676-5000');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 16:37:42
