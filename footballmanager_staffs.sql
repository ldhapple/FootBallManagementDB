-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: footballmanager
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs` (
  `tname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  `age` int DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tname`,`name`),
  CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`tname`) REFERENCES `teams` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES ('FC바르셀로나','Carlos Nugueira','Mexico',61,'팀닥터'),('FC바르셀로나','David Prats','Portugal',38,'전력분석관'),('FC바르셀로나','Oscar Hernandez','Spain',53,'수석코치'),('FC바르셀로나','Sergio Alegre','Spain',51,'수석코치'),('FC바르셀로나','Xavi','Spain',41,'감독'),('레알마드리드','Carlo Ancelotti','Italy',63,'감독'),('레알마드리드','David Ancelotti','Italy',35,'수석코치'),('레알마드리드','Mino Pulco','Spain',53,'팀닥터'),('레알마드리드','Simone Montanaro','Italy',46,'전력분석관'),('맨체스터시티','Carles Planchart','Spain',45,'팀닥터'),('맨체스터시티','Huan Layo','Spain',61,'수석코치'),('맨체스터시티','Josep Guardiola','Spain',51,'감독'),('맨체스터시티','Manel Estiarte','Spain',56,'전력분석관'),('바이에른뮌헨','Dr. Jochen Hahne','Germany',43,'팀닥터'),('바이에른뮌헨','Giacomo Stey','Germany',27,'전력분석관'),('바이에른뮌헨','Julian Nagelsmann','Germany',34,'감독'),('바이에른뮌헨','Xaver Zembrod','Germany',55,'수석코치'),('아스날','Albert Stuivenberg','Germany',45,'수석코치'),('아스날','Gary O Driscoll','England',46,'팀닥터'),('아스날','Kevin Balvers','England',39,'전력분석관'),('아스날','Mikel Arteta','Spain',40,'감독'),('첼시','Anthony Barry','England',35,'수석코치'),('첼시','Paco Biosca','Spain',68,'팀닥터'),('첼시','Scott McLachlan','England',51,'전력분석관'),('첼시','Thomas Tuchel','Germany',49,'감독');
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13 10:04:29
