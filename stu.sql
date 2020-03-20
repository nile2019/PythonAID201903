-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: stu
-- ------------------------------------------------------
-- Server version	8.0.19-0ubuntu0.19.10.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `hobby` set('sing','dance','draw') DEFAULT NULL,
  `course` char(1) NOT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES (1,'Alex','sing,draw','B',6888.00,'学习努力, 基础一般'),(2,'Nile','sing','A',6888.00,'非常优秀'),(3,'Lili','dance','C',6888.00,'需要加油'),(4,'Jone','draw','B',6888.00,'有前途'),(5,'Ping','sing,draw','A',6888.00,'非常有艺术天分'),(6,'Hong','sing','D',6888.00,'fighting');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myclass`
--

DROP TABLE IF EXISTS `myclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myclass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int NOT NULL,
  `gender` enum('w','m') DEFAULT NULL,
  `score` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myclass`
--

LOCK TABLES `myclass` WRITE;
/*!40000 ALTER TABLE `myclass` DISABLE KEYS */;
INSERT INTO `myclass` VALUES (1,'Abby',12,'w',87.5),(2,'Alex',13,'m',90),(3,'Baron',12,'m',89),(4,'Joy',10,NULL,88),(5,'Nile',20,NULL,0),(6,'Lili',18,'w',95.5);
/*!40000 ALTER TABLE `myclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textbook`
--

DROP TABLE IF EXISTS `textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textbook` (
  `编号` int NOT NULL AUTO_INCREMENT,
  `书名` varchar(32) DEFAULT NULL,
  `出版时间` date NOT NULL,
  `购买时间` datetime NOT NULL,
  `下架年份` year DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textbook`
--

LOCK TABLES `textbook` WRITE;
/*!40000 ALTER TABLE `textbook` DISABLE KEYS */;
INSERT INTO `textbook` VALUES (1,'天龙八部','1948-01-23','2012-03-26 14:00:00',2017),(2,'逍遥江湖','1983-05-01','2020-03-19 18:43:55',2021);
/*!40000 ALTER TABLE `textbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-20 10:50:19
