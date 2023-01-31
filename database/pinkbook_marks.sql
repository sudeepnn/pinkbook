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
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `usn` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `sem` varchar(45) NOT NULL,
  `scode` varchar(45) NOT NULL,
  `cie1` int NOT NULL,
  `cie2` int NOT NULL,
  `cie3` int NOT NULL,
  `inter` int NOT NULL,
  `exter` int NOT NULL,
  `total` int NOT NULL,
  KEY `sidfk_idx` (`usn`),
  CONSTRAINT `sidfk` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES ('4sf20cs001','1','1','18cs11',20,20,20,20,54,74),('4sf20cs001','1','1','18cs12',26,26,29,27,45,72),('4sf20cs001','1','1','18cs13',24,25,25,24,45,69),('4sf20cs001','1','1','18cs14',24,25,25,24,45,69),('4sf20cs001','1','1','18cs15',26,26,26,26,56,82),('4sf20cs001','1','1','18csL11',28,28,28,28,45,73),('4sf20cs001','1','1','18csL12',27,27,27,27,45,72),('4sf20cs031','1','1','18cs11',30,30,30,30,60,90),('4sf20cs031','1','1','18cs12',16,12,15,14,56,80),('4sf20cs031','1','1','18cs13',3,3,3,3,6,19),('4sf20cs031','1','1','18cs14',25,2,4,10,15,25),('4sf20cs031','1','1','18cs15',17,5,5,9,45,54),('4sf20cs031','1','1','18cs16',5,6,4,5,45,50),('4sf20cs031','1','1','18cs17',15,15,15,15,45,60),('4sf20cs031','1','1','18cs18',4,4,4,4,45,49),('4sf20cs031','1','1','18cs19',4,5,6,5,15,20),('4sf20cs031','1','2','18cs21',30,30,30,30,60,90),('4sf20cs031','1','2','18cs22',25,24,28,25,56,91),('4sf20cs031','1','2','18cs23',24,24,27,25,54,79),('4sf20cs031','1','2','18cs24',27,28,29,28,45,73),('4sf20cs031','1','2','18cs25',28,28,29,28,45,73),('4sf20cs031','1','2','18cs26',27,29,30,28,56,84),('4sf20cs031','1','2','18csL21',27,25,26,26,55,81),('4sf20cs031','1','2','18csL22',27,28,29,28,47,75),('4sf20cs031','1','3','18cs13',3,3,3,3,6,19),('4sf20cs031','1','3','sdf',30,30,30,30,60,100),('4sf20cs031','1','3','fsd',30,30,30,30,60,100),('4sf20cs031','1','3','dgf',30,30,30,30,60,100),('4sf20cs031','1','3','ftuf',30,30,30,30,60,100),('4sf20cs031','1','3','gfgcfgc',30,30,30,30,60,100),('4sf20cs031','1','3','fhfgv',30,30,30,30,60,100),('4sf20cs031','1','3','cfhcgh',30,30,30,30,60,100);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `marks_BEFORE_UPDATE` BEFORE UPDATE ON `marks` FOR EACH ROW BEGIN
	  IF NEW.cie1>30 or NEW.cie2> 30 or NEW.cie3>30 or new.exter>100 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'incorrect marks';
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
