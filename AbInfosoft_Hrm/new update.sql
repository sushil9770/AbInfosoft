-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: abinfo_hrm
-- ------------------------------------------------------
-- Server version	5.5.1-m2-community

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
-- Table structure for table `employee_salary`
--

DROP TABLE IF EXISTS `employee_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_salary` (
  `ref_no` varchar(255) DEFAULT NULL,
  `amount_transfer` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `deduction` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(45) DEFAULT NULL,
  `emp_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_salary_employee_table_idx` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary`
--

LOCK TABLES `employee_salary` WRITE;
/*!40000 ALTER TABLE `employee_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_table`
--

DROP TABLE IF EXISTS `employee_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(45) DEFAULT NULL,
  `employee_email` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `employee_phone` varchar(45) DEFAULT NULL,
  `employee_payment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_table`
--

LOCK TABLES `employee_table` WRITE;
/*!40000 ALTER TABLE `employee_table` DISABLE KEYS */;
INSERT INTO `employee_table` VALUES (1,'Sanjeev',NULL,NULL,NULL,'2016-08-10'),(2,'Prakash',NULL,NULL,NULL,'2016-08-10'),(3,'Vaibhava',NULL,NULL,NULL,'2016-08-10'),(4,'Vijay',NULL,NULL,NULL,'2016-08-10'),(5,'Sushil',NULL,NULL,NULL,'2016-08-20'),(6,'Ayush',NULL,NULL,NULL,'2016-08-20'),(7,'Parag',NULL,NULL,NULL,'2016-08-20'),(8,'Niranjan',NULL,NULL,NULL,'2016-08-10'),(9,'Shantanu',NULL,NULL,NULL,'2016-08-20'),(10,'Savitha',NULL,NULL,NULL,'2016-08-10');
/*!40000 ALTER TABLE `employee_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `reference_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credential`
--

DROP TABLE IF EXISTS `user_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_credential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `userrole` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credential`
--

LOCK TABLES `user_credential` WRITE;
/*!40000 ALTER TABLE `user_credential` DISABLE KEYS */;
INSERT INTO `user_credential` VALUES (1,'admin@abinfosoft.com','demo123','admin'),(2,'emp@abinfosoft.com','demo123','employee');
/*!40000 ALTER TABLE `user_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'abinfo_hrm'
--

--
-- Dumping routines for database 'abinfo_hrm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-13 14:56:06
