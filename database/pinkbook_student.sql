-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pinkbook
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `usn` varchar(45) NOT NULL,
  `sname` varchar(45) NOT NULL,
  `spassword` varchar(45) NOT NULL,
  `smail` varchar(45) NOT NULL,
  `sphone` varchar(45) NOT NULL,
  `saddress` varchar(45) NOT NULL,
  `sgender` varchar(45) NOT NULL,
  `sdob` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`usn`,`fid`),
  KEY `fkfid_idx` (`fid`),
  CONSTRAINT `fkf` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('4sf20cs001','sandeep','1234','sandeep@gmail.com','1234578955','kumta','MALE','Sun Jan 08 17:15:30 IST 2023','fa003',NULL),('4sf20cs002','shahi','shahi123','shahi@gmail.com','7349693447','kerala','MALE','16-02-2022','fa001','dint submit record\n'),('4sf20cs031','Deepak shetty','deepak1234','deepak@gmail.com','1234567891','kerala','MALE','15-12-2002','fa001','dint do hw'),('4sf20cs033','vghkj','vedasamved','samved@gmail.com','9663584624','hghjhj','MALE','11-11-2020','fa001',NULL),('4sf20cs123','gandi','12345678','gandi@gmail.com','1234567891','karwar','MALE','31-12-2002','fa001',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `student_BEFORE_INSERT` BEFORE INSERT ON `student` FOR EACH ROW BEGIN
	 IF NEW.usn = '' or NEW.sname= '' or NEW.spassword= '' or new.smail= '' or new.sphone= '' or new.saddress= ''  or new.sdob= '' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Please fill all the Details';
    END IF;
    
    IF NOT NEW.usn REGEXP '^[0-9]{1}+[a-zA-Z]{2}+[0-9]{2}+[a-zA-Z]{2}+[0-9]{3}' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'PLease Enter the Valid USN Exaple   ';
    END IF;
    
    IF LENGTH(NEW.spassword) < 8 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Password must be at least 8 characters.';
	END IF;
    
       IF NOT NEW.smail REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid email format';
    END IF;

    IF NOT NEW.sphone REGEXP '^[0-9]{10}$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid phone number format';
    END IF;
    
    IF NOT NEW.sdob REGEXP '^(?:0[1-9]|[12][0-9]|3[01])-(?:0[1-9]|1[0-2])-(?:(?:(?:19|20)[0-9]{2}))$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'PLease Enter the Valid Date   ';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `student_BEFORE_UPDATE` BEFORE UPDATE ON `student` FOR EACH ROW BEGIN
	IF NEW.sname= '' or NEW.spassword= '' or new.smail= '' or new.sphone= ''  or new.sdob= '' or new.saddress='' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Please fill all the Details';
    END IF;
    
    IF LENGTH(NEW.spassword) < 8 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Password must be at least 8 characters.';
	END IF;
    
       IF NOT NEW.smail REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid email format';
    END IF;

    IF NOT NEW.sphone REGEXP '^[0-9]{10}$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid phone number format';
    END IF;
    
    IF NOT NEW.sdob REGEXP '^(?:0[1-9]|[12][0-9]|3[01])-(?:0[1-9]|1[0-2])-(?:(?:(?:19|20)[0-9]{2}))$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'PLease Enter the Valid Date   ';
    END IF;
    
    IF  NOT (NEW.sgender='MALE'or NEW.sgender='FEMALE') THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Please Enter Gender MALE or FEMALE';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 10:32:11
