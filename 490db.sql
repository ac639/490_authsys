-- MySQL dump 10.13  Distrib 5.7.25, for Linux (i686)
--
-- Host: localhost    Database: 490db
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `apidata`
--

DROP TABLE IF EXISTS `apidata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apidata` (
  `competition__area__id` varchar(255) DEFAULT NULL,
  `competition__area__name` varchar(255) DEFAULT NULL,
  `competition__code` varchar(255) DEFAULT NULL,
  `competition__id` varchar(255) DEFAULT NULL,
  `competition__lastUpdated` varchar(255) DEFAULT NULL,
  `competition__name` varchar(255) DEFAULT NULL,
  `competition__plan` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `matches__awayTeam__id` varchar(255) DEFAULT NULL,
  `matches__awayTeam__name` varchar(255) DEFAULT NULL,
  `matches__group` varchar(255) DEFAULT NULL,
  `matches__homeTeam__id` varchar(255) DEFAULT NULL,
  `matches__homeTeam__name` varchar(255) DEFAULT NULL,
  `matches__id` varchar(255) DEFAULT NULL,
  `matches__lastUpdated` varchar(255) DEFAULT NULL,
  `matches__matchday` varchar(255) DEFAULT NULL,
  `matches__referees__id` varchar(255) DEFAULT NULL,
  `matches__referees__name` varchar(255) DEFAULT NULL,
  `matches__referees__nationality` varchar(255) DEFAULT NULL,
  `matches__score__duration` varchar(255) DEFAULT NULL,
  `matches__score__` varchar(255) DEFAULT NULL,
  `matches__score____awayTeam` varchar(255) DEFAULT NULL,
  `matches__score____homeTeam` varchar(255) DEFAULT NULL,
  `matches__score__winner` varchar(255) DEFAULT NULL,
  `matches__season__currentMatchday` varchar(255) DEFAULT NULL,
  `matches__season__endDate` varchar(255) DEFAULT NULL,
  `matches__season__id` varchar(255) DEFAULT NULL,
  `matches__season__startDate` varchar(255) DEFAULT NULL,
  `matches__stage` varchar(255) DEFAULT NULL,
  `matches__status` varchar(255) DEFAULT NULL,
  `matches__utcDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apidata`
--

LOCK TABLES `apidata` WRITE;
/*!40000 ALTER TABLE `apidata` DISABLE KEYS */;
/*!40000 ALTER TABLE `apidata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'andre','password','andre@njit.edu'),(2,'test','test','test@njit.edu'),(3,'test2','test2','test2@njit.edu'),(4,'test3','test3','test3t@test.com'),(5,'test4','test4','test4@test.com'),(6,'andre5','password','andre5@blah.com'),(7,'andre6','password','andre6@blah.com'),(8,'doritos','doritos','doritos@gmail.com'),(9,'doritos2','','doritos2@gmail.com'),(10,'doritos3','doritos','doritos3@gmail.com'),(11,'doritos4','password','doritos4@gmail.com'),(12,'doritos5','doritos','doritos5@gmail.com'),(13,'doritos6','doritos','doritos6@gmail.com'),(14,'doritos7','password','doritos7@gmail.com'),(15,'doritos8','password','doritos8@gmail.com'),(16,'doritos9','password','doritos9@gmail.com'),(17,'cheetos','cheetos','cheetos@njit.com'),(18,'realdude','password','realaf@njit.edu'),(19,'realdude2','password','realaf2@njit.edu'),(20,'realdude5','password','real5'),(21,'realdude6','password','real6'),(22,'realdude7','password','real7'),(23,'realdude8','password','real8'),(24,'realdude9','password','real9'),(25,'blah1','password','blah1'),(26,'blah2','password','blah2'),(27,'blah3','password','blah3'),(28,'BLAH7','password','BLAH7'),(29,'andre2','password','andre2'),(30,'andre3','password','andre3'),(32,'bob1','bob','bob'),(33,'yo','password','yo'),(34,'doritos10','password','doritos10'),(35,'doritos11','password','11');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet` (
  `id` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,100),(23,100),(24,100),(25,100),(26,100),(27,100),(30,100),(32,100),(33,100),(34,100),(35,100);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25  2:26:48
