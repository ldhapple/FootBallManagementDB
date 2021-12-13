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
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work` (
  `tname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `task` varchar(30) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tname`,`name`),
  CONSTRAINT `work_ibfk_1` FOREIGN KEY (`tname`, `name`) REFERENCES `staffs` (`tname`, `name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES ('FC바르셀로나','Carlos Nugueira','부상자치료','Camp Nou'),('FC바르셀로나','David Prats','비디오분석','Portugal'),('FC바르셀로나','Oscar Hernandez','훈련','Camp Nou'),('FC바르셀로나','Sergio Alegre','훈련','Camp Nou'),('FC바르셀로나','Xavi','전술훈련','Camp Nou'),('레알마드리드','Carlo Ancelotti','전술훈련','Santiago Bernabeu'),('레알마드리드','David Ancelotti','훈련','Santiago Bernabeu'),('레알마드리드','Mino Pulco','부상자치료','Santiago Bernabeu'),('레알마드리드','Simone Montanaro','비디오분석','Italy'),('맨체스터시티','Carles Planchart','부상자치료','Etihad Stadium'),('맨체스터시티','Huan Layo','훈련','Etihad Stadium'),('맨체스터시티','Josep Guardiola','전술훈련','Etihad Stadium'),('맨체스터시티','Manel Estiarte','비디오분석','Spain'),('바이에른뮌헨','Dr. Jochen Hahne','부상자치료','Allianz Arena'),('바이에른뮌헨','Giacomo Stey','비디오분석','Germany'),('바이에른뮌헨','Julian Nagelsmann','전술훈련','Allianz Arena'),('바이에른뮌헨','Xaver Zembrod','훈련','Allianz Arena'),('아스날','Albert Stuivenberg','훈련','Emirates Stadium'),('아스날','Gary O Driscoll','부상자치료','Emirates Stadium'),('아스날','Kevin Balvers','비디오분석','Emirates Stadium'),('아스날','Mikel Arteta','전술훈련','Emirates Stadium'),('첼시','Anthony Barry','훈련','Stamford Bridge'),('첼시','Paco Biosca','부상자치료','Stamford Bridge'),('첼시','Scott McLachlan','비디오분석','Stamford Bridge'),('첼시','Thomas Tuchel','전술훈련','Stamford Bridge');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
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
