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
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athletes` (
  `tname` varchar(30) NOT NULL,
  `bnum` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `position` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tname`,`bnum`),
  CONSTRAINT `athletes_ibfk_1` FOREIGN KEY (`tname`) REFERENCES `teams` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES ('FC바르셀로나',1,'Marc-Andre ter Stegen','Germany',30,'GK'),('FC바르셀로나',3,'Gerard Pique','Spain',35,'CB'),('FC바르셀로나',4,'Ronald Araujo','Uruguay',23,'CB'),('FC바르셀로나',5,'Sergio Busquets','Spain',34,'CDM'),('FC바르셀로나',7,'Ousmane Dembele','France',25,'FW'),('FC바르셀로나',8,'Dani Alves','Brazil',39,'RB'),('FC바르셀로나',9,'Memphis Depay','Netherlands',28,'FW'),('FC바르셀로나',10,'Ansu Fati','Spain',20,'FW'),('FC바르셀로나',16,'Pedri','Spain',20,'CM'),('FC바르셀로나',18,'Jordi Alba','Spain',33,'LB'),('FC바르셀로나',21,'Frenkie De Jong','Netherlands',25,'CM'),('FC바르셀로나',28,'Nico Gonzalez','Spain',20,'CM'),('FC바르셀로나',30,'Pablo Gavi','Spain',18,'CM'),('레알마드리드',1,'Thibaut Courtois','Belgium',30,'GK'),('레알마드리드',2,'Daniel Carvajal Ramos','Spain',30,'RB'),('레알마드리드',3,'Eder Militao','Brazil',24,'CB'),('레알마드리드',4,'David Alaba','Austria',30,'CB'),('레알마드리드',7,'Eden Hazard','Belgium',31,'FW'),('레알마드리드',8,'Toni Kroos','Germany',32,'CM'),('레알마드리드',9,'Karim Benzema','France',35,'FW'),('레알마드리드',10,'Luka Modric','Croatia',37,'CM'),('레알마드리드',14,'Casemiro','Brazil',30,'CDM'),('레알마드리드',15,'Federico Valverde','Uruguay',24,'CM'),('레알마드리드',20,'Vinicius Junior','Brazil',22,'FW'),('레알마드리드',23,'Ferland Mendy','France',27,'LB'),('레알마드리드',25,'Eduardo Camavinga','France',20,'CM'),('맨체스터시티',2,'Kyle Andrew Walker','England',32,'RB'),('맨체스터시티',3,'Ruben Dias','Portugal',25,'CB'),('맨체스터시티',7,'Raheem Sterling','England',28,'FW'),('맨체스터시티',8,'Ilkay Gundogan','Germany',32,'CM'),('맨체스터시티',9,'Gabriel Fernando de Jesus','Brazil',25,'FW'),('맨체스터시티',10,'Jack Grealish','England',27,'FW'),('맨체스터시티',14,'Aymeric Laporte','France',28,'CB'),('맨체스터시티',16,'Rodri','Spain',26,'CDM'),('맨체스터시티',17,'Kevin De Bruyne','Belgium',31,'CM'),('맨체스터시티',20,'Bernardo Silva','Portugal',28,'CM'),('맨체스터시티',27,'Joao Cancelo','Portugal',28,'LB'),('맨체스터시티',31,'Ederson Santana De Moraes','Brazil',29,'GK'),('맨체스터시티',47,'Phil Foden','England',22,'FW'),('바이에른뮌헨',1,'Manuel Neuer','Germany',36,'GK'),('바이에른뮌헨',2,'Dayot Upamecano','France',24,'CB'),('바이에른뮌헨',4,'Niklas Sule','Germany',27,'CB'),('바이에른뮌헨',5,'Benjamin Pavard','France',26,'RB'),('바이에른뮌헨',6,'Joshua Walter Kimmich','Germany',27,'CM'),('바이에른뮌헨',7,'Serge Gnabry','Germany',27,'FW'),('바이에른뮌헨',8,'Leon Goretzka','Germany',27,'CM'),('바이에른뮌헨',9,'Robert Lewandowski','Poland',34,'FW'),('바이에른뮌헨',10,'Leroy Sane','Germany',26,'FW'),('바이에른뮌헨',18,'Marcel Sabitzer','Austria',28,'CM'),('바이에른뮌헨',19,'Alphonso Davies','Canada',22,'LB'),('바이에른뮌헨',22,'Marc Roca','Spain',24,'CM'),('바이에른뮌헨',25,'Thomas Muller','Germany',33,'FW'),('아스날',3,'Kieran Tierney','Scotland',25,'LB'),('아스날',4,'Ben White','England',25,'CB'),('아스날',5,'Thomas Teye Partey','Ghana',29,'CM'),('아스날',6,'Gabriel Magalhaes','Brazil',25,'CB'),('아스날',7,'Bukayo Saka','England',21,'FW'),('아스날',8,'Martin Odegaard','Norway',24,'CM'),('아스날',9,'Alexandre Lacazette','France',31,'FW'),('아스날',10,'Emile Smith Rowe','England',22,'FW'),('아스날',14,'Pierre Emerick Aubameyang','Gabon',33,'FW'),('아스날',18,'Tomiyasu Takehiro','Japan',24,'RB'),('아스날',20,'Nuno Tavares','Portugal',21,'LB'),('아스날',26,'Folarin Balogun','USA',21,'FW'),('아스날',32,'Aaron Ramsdale','England',24,'GK'),('첼시',2,'Antonio Rudiger','Germany',29,'CB'),('첼시',5,'Jorginho','Italy',31,'CM'),('첼시',6,'Thiago Silva','Brazil',38,'CB'),('첼시',7,'N`Golo Kante','France',31,'CDM'),('첼시',9,'Romelu Lukaku','Belgium',29,'FW'),('첼시',10,'Christian Pulisic','USA',24,'FW'),('첼시',11,'Timo Werner','Germany',26,'FW'),('첼시',16,'Edouard Mendy','France',30,'GK'),('첼시',19,'Mason Mount','England',23,'CM'),('첼시',21,'Ben Chilwell','England',26,'LB'),('첼시',22,'Hakim Ziyech','Morocco',29,'FW'),('첼시',24,'Reece James','England',23,'RB'),('첼시',29,'Kai Havertz','Germany',23,'CM');
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
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
