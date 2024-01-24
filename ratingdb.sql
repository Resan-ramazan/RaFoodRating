CREATE DATABASE  IF NOT EXISTS `ratingdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ratingdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ratingdb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `et_bistro`
--

DROP TABLE IF EXISTS `et_bistro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `et_bistro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `range` varchar(50) NOT NULL,
  `hours` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `given_vote` varchar(20) DEFAULT NULL,
  `current_vote` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `et_bistro`
--

LOCK TABLES `et_bistro` WRITE;
/*!40000 ALTER TABLE `et_bistro` DISABLE KEYS */;
INSERT INTO `et_bistro` VALUES (2,'Bistro1','8','10','7 AM - 5 PM','Istanbul','9','7'),(3,'Bistro2','10','10','6 AM - 3 PM','Krakow','9','7');
/*!40000 ALTER TABLE `et_bistro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `et_restaurant`
--

DROP TABLE IF EXISTS `et_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `et_restaurant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `range` varchar(50) NOT NULL,
  `hours` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `given_vote` varchar(20) DEFAULT NULL,
  `current_vote` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `et_restaurant`
--

LOCK TABLES `et_restaurant` WRITE;
/*!40000 ALTER TABLE `et_restaurant` DISABLE KEYS */;
INSERT INTO `et_restaurant` VALUES (5,'Restaurant2','5','10','8 AM - 10 PM','Poznan','10','5'),(6,'Restaurant3','8','10','7 AM - 5 PM','Istanbul','9','7');
/*!40000 ALTER TABLE `et_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `et_take_away`
--

DROP TABLE IF EXISTS `et_take_away`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `et_take_away` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `range` varchar(50) NOT NULL,
  `hours` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `given_vote` varchar(20) DEFAULT NULL,
  `current_vote` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `et_take_away`
--

LOCK TABLES `et_take_away` WRITE;
/*!40000 ALTER TABLE `et_take_away` DISABLE KEYS */;
INSERT INTO `et_take_away` VALUES (1,'Ramazan Alkoyun','','10','12','istanbul','',NULL);
/*!40000 ALTER TABLE `et_take_away` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `et_user`
--

DROP TABLE IF EXISTS `et_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `et_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_surname` varchar(20) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `et_user`
--

LOCK TABLES `et_user` WRITE;
/*!40000 ALTER TABLE `et_user` DISABLE KEYS */;
INSERT INTO `et_user` VALUES (1,'John','Doe','john_doe','password123');
/*!40000 ALTER TABLE `et_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-24 12:04:44
