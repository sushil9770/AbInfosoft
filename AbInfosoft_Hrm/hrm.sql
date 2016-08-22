-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: webapp
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
-- Table structure for table `abinfo _event_details`
--

DROP TABLE IF EXISTS `abinfo _event_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abinfo _event_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(45) DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `eventmanager` varchar(45) DEFAULT NULL,
  `eventtype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abinfo _event_details`
--

LOCK TABLES `abinfo _event_details` WRITE;
/*!40000 ALTER TABLE `abinfo _event_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `abinfo _event_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abinfo_holiday_details`
--

DROP TABLE IF EXISTS `abinfo_holiday_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abinfo_holiday_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `holidayname` varchar(45) DEFAULT NULL,
  `holidaydatefrom` date DEFAULT NULL,
  `holidaydateto` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `repeatannually` varchar(3) DEFAULT NULL,
  `holidaydate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abinfo_holiday_details`
--

LOCK TABLES `abinfo_holiday_details` WRITE;
/*!40000 ALTER TABLE `abinfo_holiday_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `abinfo_holiday_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abinfo_leave_type_details`
--

DROP TABLE IF EXISTS `abinfo_leave_type_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abinfo_leave_type_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leavename` varchar(45) DEFAULT NULL,
  `leavedescription` varchar(500) NOT NULL,
  `leavetype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`leavedescription`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abinfo_leave_type_details`
--

LOCK TABLES `abinfo_leave_type_details` WRITE;
/*!40000 ALTER TABLE `abinfo_leave_type_details` DISABLE KEYS */;
INSERT INTO `abinfo_leave_type_details` VALUES (2,'Leave for Emergency Services','Leave for Emergency Services',NULL),(3,'Annual Leave','Annual Leave',NULL),(4,'Sick Leave','Sick Leave',NULL),(5,'Time Off with Compensation','Time Off with Compensation',NULL);
/*!40000 ALTER TABLE `abinfo_leave_type_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abinfo_salary_details`
--

DROP TABLE IF EXISTS `abinfo_salary_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abinfo_salary_details` (
  `id` int(11) NOT NULL DEFAULT '0',
  `employeeid` varchar(45) DEFAULT NULL,
  `bankno` varchar(45) DEFAULT NULL,
  `basicpay` varchar(45) DEFAULT NULL,
  `dearnessallowance` varchar(45) DEFAULT NULL,
  `medicalallowance` varchar(45) DEFAULT NULL,
  `overtime` varchar(45) DEFAULT NULL,
  `houserentallowance` varchar(45) DEFAULT NULL,
  `conveyanceallowance` varchar(45) DEFAULT NULL,
  `totalearnings` varchar(45) DEFAULT NULL,
  `previousbalance` varchar(45) DEFAULT NULL,
  `carryoverroundoff` varchar(45) DEFAULT NULL,
  `employeestateinsurancededuction` varchar(45) DEFAULT NULL,
  `providentfunddeduction` varchar(45) DEFAULT NULL,
  `professionaltaxdeduction` varchar(45) DEFAULT NULL,
  `totaldeduction` varchar(45) DEFAULT NULL,
  `netpay` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abinfo_salary_details`
--

LOCK TABLES `abinfo_salary_details` WRITE;
/*!40000 ALTER TABLE `abinfo_salary_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `abinfo_salary_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_address_details`
--

DROP TABLE IF EXISTS `emp_address_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_address_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `landmark` varchar(500) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `addresstype` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_address_details`
--

LOCK TABLES `emp_address_details` WRITE;
/*!40000 ALTER TABLE `emp_address_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_address_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_bank_details`
--

DROP TABLE IF EXISTS `emp_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bankname` varchar(45) DEFAULT NULL,
  `ifsccode` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `accno` varchar(45) DEFAULT NULL,
  `bankaddress` varchar(200) DEFAULT NULL,
  `netbankingid` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_bank_details`
--

LOCK TABLES `emp_bank_details` WRITE;
/*!40000 ALTER TABLE `emp_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_contact_details`
--

DROP TABLE IF EXISTS `emp_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneno1` varchar(20) DEFAULT NULL,
  `phoneno2` varchar(20) DEFAULT NULL,
  `mobileno1` varchar(20) DEFAULT NULL,
  `mobileno2` varchar(20) DEFAULT NULL,
  `emailid1` varchar(45) DEFAULT NULL,
  `emailid2` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `emp_contact_detailscol` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_contact_details`
--

LOCK TABLES `emp_contact_details` WRITE;
/*!40000 ALTER TABLE `emp_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_document_details`
--

DROP TABLE IF EXISTS `emp_document_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_document_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentname` varchar(45) DEFAULT NULL,
  `documenttype` varchar(45) DEFAULT NULL,
  `validatefrom` date DEFAULT NULL,
  `validthru` date DEFAULT NULL,
  `documentno` varchar(45) DEFAULT NULL,
  `docurl` varchar(500) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_document_details`
--

LOCK TABLES `emp_document_details` WRITE;
/*!40000 ALTER TABLE `emp_document_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_document_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_employment_details`
--

DROP TABLE IF EXISTS `emp_employment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_employment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(45) DEFAULT NULL,
  `companyaddress` varchar(500) DEFAULT NULL,
  `companycontactno` varchar(20) DEFAULT NULL,
  `dateofjoining` date DEFAULT NULL,
  `dateofrelieving` date DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `jobtype` varchar(20) DEFAULT NULL,
  `reasonofleaving` varchar(500) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `supervisorname` varchar(45) DEFAULT NULL,
  `empid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_employment_details`
--

LOCK TABLES `emp_employment_details` WRITE;
/*!40000 ALTER TABLE `emp_employment_details` DISABLE KEYS */;
INSERT INTO `emp_employment_details` VALUES (1,'Ab Infosoft ','#13/1,2nd floor Srinivas Tower 100ft Ring Road BTM 1st stage, Opposite to reliance fresh, Bengaluru, Karnataka 560029','080 4132 3597','2015-10-14','2015-10-14','Software developer','Permanent',NULL,2,'Active','Praval Srivastava','ING 0039'),(2,'Ab Infosoft ','#13/1,2nd floor Srinivas Tower 100ft Ring Road BTM 1st stage, Opposite to reliance fresh, Bengaluru, Karnataka 560029','080 4132 3597','2016-01-15','2016-08-15','Android Developer','Permanent',NULL,3,'In-Active','Praval Srivastava','ING 0042');
/*!40000 ALTER TABLE `emp_employment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_leave_details`
--

DROP TABLE IF EXISTS `emp_leave_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_leave_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leavename` varchar(45) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `leave_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_leave_details`
--

LOCK TABLES `emp_leave_details` WRITE;
/*!40000 ALTER TABLE `emp_leave_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_leave_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_leave_request_receiver`
--

DROP TABLE IF EXISTS `emp_leave_request_receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_leave_request_receiver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_leave_request_receivercol` varchar(45) DEFAULT NULL,
  `leaveid` int(11) NOT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_leave_request_receiver`
--

LOCK TABLES `emp_leave_request_receiver` WRITE;
/*!40000 ALTER TABLE `emp_leave_request_receiver` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_leave_request_receiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_personal_details`
--

DROP TABLE IF EXISTS `emp_personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_personal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `imageurl` varchar(500) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_personal_details`
--

LOCK TABLES `emp_personal_details` WRITE;
/*!40000 ALTER TABLE `emp_personal_details` DISABLE KEYS */;
INSERT INTO `emp_personal_details` VALUES (1,'Sushil','Kumar','1991-08-08','imgurl','male',2),(2,'Parag','Sarkar','1991-07-01','imgurl','male',3);
/*!40000 ALTER TABLE `emp_personal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_qualification_details`
--

DROP TABLE IF EXISTS `emp_qualification_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_qualification_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(200) DEFAULT NULL,
  `specialisation` varchar(45) DEFAULT NULL,
  `institute` varchar(200) DEFAULT NULL,
  `passingyear` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `percentage` varchar(45) DEFAULT NULL,
  `othercertification` varchar(200) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_qualification_details`
--

LOCK TABLES `emp_qualification_details` WRITE;
/*!40000 ALTER TABLE `emp_qualification_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_qualification_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_salary_details`
--

DROP TABLE IF EXISTS `emp_salary_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_salary_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(45) DEFAULT NULL,
  `bankno` varchar(45) DEFAULT NULL,
  `basicpay` varchar(45) DEFAULT NULL,
  `dearnessallowance` varchar(45) DEFAULT NULL,
  `medicalallowance` varchar(45) DEFAULT NULL,
  `overtime` varchar(45) DEFAULT NULL,
  `houserentallowance` varchar(45) DEFAULT NULL,
  `conveyanceallowance` varchar(45) DEFAULT NULL,
  `totalearnings` varchar(45) DEFAULT NULL,
  `previousbalance` varchar(45) DEFAULT NULL,
  `carryoverroundoff` varchar(45) DEFAULT NULL,
  `employeestateinsurancededuction` varchar(45) DEFAULT NULL,
  `providentfunddeduction` varchar(45) DEFAULT NULL,
  `professionaltaxdeduction` varchar(45) DEFAULT NULL,
  `totaldeduction` varchar(45) DEFAULT NULL,
  `netpay` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_salary_details`
--

LOCK TABLES `emp_salary_details` WRITE;
/*!40000 ALTER TABLE `emp_salary_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_salary_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credentials`
--

DROP TABLE IF EXISTS `user_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `userrole` varchar(20) DEFAULT NULL,
  `orgid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credentials`
--

LOCK TABLES `user_credentials` WRITE;
/*!40000 ALTER TABLE `user_credentials` DISABLE KEYS */;
INSERT INTO `user_credentials` VALUES (1,'admin@abinfosoft.com','abinfosoft','admin','1'),(2,'emp@abinfosoft.com','abinfosoft','employee','1'),(3,'emp2@abinfosoft.com','abinfosoft','employee','1');
/*!40000 ALTER TABLE `user_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'webapp'
--

--
-- Dumping routines for database 'webapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-22 11:17:48
