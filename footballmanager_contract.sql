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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `tname` varchar(30) NOT NULL,
  `bnum` int NOT NULL,
  `wage` int DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  PRIMARY KEY (`tname`,`bnum`),
  CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`tname`, `bnum`) REFERENCES `athletes` (`tname`, `bnum`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES ('FC바르셀로나',1,400000000,'2025-06-30'),('FC바르셀로나',3,90000000,'2024-06-30'),('FC바르셀로나',4,60000000,'2023-06-30'),('FC바르셀로나',5,130000000,'2023-06-30'),('FC바르셀로나',7,400000000,'2022-06-30'),('FC바르셀로나',8,10000000,'2023-06-30'),('FC바르셀로나',9,200000000,'2023-06-30'),('FC바르셀로나',10,150000000,'2027-06-30'),('FC바르셀로나',16,120000000,'2026-06-30'),('FC바르셀로나',18,150000000,'2025-06-30'),('FC바르셀로나',21,250000000,'2024-06-30'),('FC바르셀로나',28,20000000,'2023-06-30'),('FC바르셀로나',30,20000000,'2023-06-30'),('레알마드리드',1,280000000,'2026-06-30'),('레알마드리드',2,210000000,'2025-06-30'),('레알마드리드',3,230000000,'2025-06-30'),('레알마드리드',4,560000000,'2026-06-30'),('레알마드리드',7,650000000,'2024-06-30'),('레알마드리드',8,310000000,'2023-06-30'),('레알마드리드',9,420000000,'2023-06-30'),('레알마드리드',10,420000000,'2022-06-30'),('레알마드리드',14,280000000,'2025-06-30'),('레알마드리드',15,100000000,'2027-06-30'),('레알마드리드',20,280000000,'2024-06-30'),('레알마드리드',23,230000000,'2025-06-30'),('레알마드리드',25,35000000,'2027-06-30'),('맨체스터시티',2,170000000,'2024-06-30'),('맨체스터시티',3,160000000,'2027-06-30'),('맨체스터시티',7,360000000,'2023-06-30'),('맨체스터시티',8,170000000,'2023-06-30'),('맨체스터시티',9,100000000,'2023-06-30'),('맨체스터시티',10,390000000,'2027-06-30'),('맨체스터시티',14,160000000,'2025-06-30'),('맨체스터시티',16,140000000,'2024-06-30'),('맨체스터시티',17,490000000,'2025-06-30'),('맨체스터시티',20,170000000,'2025-06-30'),('맨체스터시티',27,100000000,'2025-06-30'),('맨체스터시티',31,230000000,'2026-06-30'),('맨체스터시티',47,20000000,'2024-06-30'),('바이에른뮌헨',1,370000000,'2023-06-30'),('바이에른뮌헨',2,190000000,'2026-06-30'),('바이에른뮌헨',4,80000000,'2022-06-30'),('바이에른뮌헨',5,170000000,'2024-06-30'),('바이에른뮌헨',6,360000000,'2025-06-30'),('바이에른뮌헨',7,200000000,'2023-06-30'),('바이에른뮌헨',8,260000000,'2026-06-30'),('바이에른뮌헨',9,460000000,'2023-06-30'),('바이에른뮌헨',10,140000000,'2025-06-30'),('바이에른뮌헨',18,150000000,'2025-06-30'),('바이에른뮌헨',19,130000000,'2025-06-30'),('바이에른뮌헨',22,120000000,'2025-06-30'),('바이에른뮌헨',25,310000000,'2023-06-30'),('아스날',3,160000000,'2026-06-30'),('아스날',4,170000000,'2026-06-30'),('아스날',5,280000000,'2025-06-30'),('아스날',6,80000000,'2025-06-30'),('아스날',7,50000000,'2024-06-30'),('아스날',8,240000000,'2025-06-30'),('아스날',9,210000000,'2022-06-30'),('아스날',10,40000000,'2026-06-30'),('아스날',14,320000000,'2023-06-30'),('아스날',18,120000000,'2025-06-30'),('아스날',20,40000000,'2025-06-30'),('아스날',26,20000000,'2025-06-30'),('아스날',32,120000000,'2025-06-30'),('첼시',2,140000000,'2022-06-30'),('첼시',5,160000000,'2023-06-30'),('첼시',6,150000000,'2022-06-30'),('첼시',7,350000000,'2023-06-30'),('첼시',9,400000000,'2026-06-30'),('첼시',10,190000000,'2024-06-30'),('첼시',11,340000000,'2025-06-30'),('첼시',16,70000000,'2025-06-30'),('첼시',19,90000000,'2024-06-30'),('첼시',21,240000000,'2025-06-30'),('첼시',22,170000000,'2025-06-30'),('첼시',24,80000000,'2025-06-30'),('첼시',29,200000000,'2025-06-30');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
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
