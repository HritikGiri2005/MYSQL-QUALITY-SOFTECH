-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hritik
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `amazon`
--

DROP TABLE IF EXISTS `amazon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amazon` (
  `product_id` int DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amazon`
--

LOCK TABLES `amazon` WRITE;
/*!40000 ALTER TABLE `amazon` DISABLE KEYS */;
INSERT INTO `amazon` VALUES (1,'Television'),(2,'Air Conditioner'),(3,'Smartwatch'),(4,'Smartphone'),(5,'Tshirt'),(6,'Shirt'),(7,'Tracksuite'),(8,'Trackpant'),(9,'Jacket'),(10,'Jeans');
/*!40000 ALTER TABLE `amazon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `deptno` int NOT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS'),(30,'SALES','CHICAGO'),(50,'HR','BOSTON'),(60,'IT','SAN FRANCISCO');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `empno` int DEFAULT NULL,
  `ename` varchar(25) DEFAULT NULL,
  `job` varchar(25) DEFAULT NULL,
  `mgr` int DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` int DEFAULT NULL,
  `comm` int DEFAULT NULL,
  `deptno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,NULL),(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,80),(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10),(7788,'SCOTT','ANALYST',7566,'1982-12-09',5000,NULL,20),(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,NULL,30),(7876,'ADAMS','CLERK',7788,'1983-01-12',1100,NULL,20),(7900,'JAMES','CLERK',7696,'1981-12-03',950,NULL,30),(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10),(10,'BOB','HR',966,'2022-12-07',9000,NULL,40);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flipkart`
--

DROP TABLE IF EXISTS `flipkart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flipkart` (
  `product_id` int DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flipkart`
--

LOCK TABLES `flipkart` WRITE;
/*!40000 ALTER TABLE `flipkart` DISABLE KEYS */;
INSERT INTO `flipkart` VALUES (1,'Television'),(2,'Air Conditioner'),(3,'Smartwatch'),(4,'Smartphone'),(5,'Tshirt'),(6,'Shirt'),(7,'Tracksuite'),(8,'Trackpant'),(9,'Jacket'),(10,'Jeans'),(11,'Shorts'),(12,'Macbook'),(13,'Asus Vivobook'),(14,'Dell Inspiron'),(15,'PS 5');
/*!40000 ALTER TABLE `flipkart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instagram`
--

DROP TABLE IF EXISTS `instagram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instagram` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobile_no` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `bio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instagram`
--

LOCK TABLES `instagram` WRITE;
/*!40000 ALTER TABLE `instagram` DISABLE KEYS */;
/*!40000 ALTER TABLE `instagram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentqst`
--

DROP TABLE IF EXISTS `studentqst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentqst` (
  `rollno` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `std` int NOT NULL,
  `division` varchar(1) DEFAULT NULL,
  `jo_date` date DEFAULT NULL,
  UNIQUE KEY `rollno` (`rollno`),
  UNIQUE KEY `division` (`division`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentqst`
--

LOCK TABLES `studentqst` WRITE;
/*!40000 ALTER TABLE `studentqst` DISABLE KEYS */;
INSERT INTO `studentqst` VALUES (1001,'Hritik',12,'C',NULL);
/*!40000 ALTER TABLE `studentqst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentx`
--

DROP TABLE IF EXISTS `studentx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentx` (
  `roll_no` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `std` varchar(1) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `Joining_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentx`
--

LOCK TABLES `studentx` WRITE;
/*!40000 ALTER TABLE `studentx` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_posts`
--

DROP TABLE IF EXISTS `x_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x_posts` (
  `postId` int DEFAULT NULL,
  `post_desc` varchar(255) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `post_media` varchar(250) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  KEY `fk_posts_users` (`user_id`),
  CONSTRAINT `fk_posts_users` FOREIGN KEY (`user_id`) REFERENCES `x_users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_posts`
--

LOCK TABLES `x_posts` WRITE;
/*!40000 ALTER TABLE `x_posts` DISABLE KEYS */;
INSERT INTO `x_posts` VALUES (1001,'Hritik','2025-12-10','a.jpg',101);
/*!40000 ALTER TABLE `x_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_users`
--

DROP TABLE IF EXISTS `x_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x_users` (
  `userid` int NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `pwd` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_users`
--

LOCK TABLES `x_users` WRITE;
/*!40000 ALTER TABLE `x_users` DISABLE KEYS */;
INSERT INTO `x_users` VALUES (101,'abc','xyz','abcdefg','Hello this is bio');
/*!40000 ALTER TABLE `x_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-23 19:43:22
