-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: rsue_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `classroom` varchar(7) NOT NULL,
  `day_of_week` varchar(3) NOT NULL,
  `week_type` int NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `group_id` (`group_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `student_groups` (`group_id`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  CONSTRAINT `schedule_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (2,1,1,'214','Пн',1,'08:30:00','10:00:00',1),(3,1,2,'214','Пн',1,'10:10:00','11:40:00',2),(4,1,3,'605','Пн',1,'11:50:00','13:20:00',3),(5,1,4,'313','Пн',1,'13:50:00','15:20:00',4),(6,5,13,'212','Вт',1,'13:50:00','15:20:00',13),(7,7,26,'212','Пн',1,'11:50:00','13:20:00',15),(8,9,28,'212','Вт',1,'11:50:00','13:20:00',16),(9,10,13,'212','Пн',1,'10:10:00','11:40:00',17),(10,10,13,'212','Пн',1,'08:30:00','10:00:00',18),(11,11,13,'212','Ср',1,'08:30:00','10:00:00',18),(12,11,28,'212','Пн',1,'10:10:00','11:40:00',16),(13,14,35,'212','Вт',1,'15:30:00','17:00:00',19),(14,9,29,'313','Чт',1,'11:50:00','13:20:00',20),(15,10,29,'313','Чт',1,'11:50:00','13:20:00',20),(16,11,29,'302','Ср',1,'10:10:00','11:40:00',20),(17,12,29,'302','Ср',1,'10:10:00','11:40:00',20),(18,13,29,'212','Чт',1,'15:30:00','17:00:00',21);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_groups`
--

DROP TABLE IF EXISTS `student_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_groups` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `course_number` int NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_groups`
--

LOCK TABLES `student_groups` WRITE;
/*!40000 ALTER TABLE `student_groups` DISABLE KEYS */;
INSERT INTO `student_groups` VALUES (1,'ИСТ-311','КТиИБ',1),(3,'ПИ-311','КТиИБ',1),(5,'ИСТ-321','КТиИБ',2),(6,'ИСТ-322','КТиИБ',2),(7,'ПИ-321','КТиИБ',2),(9,'ИСТ-331','КТиИБ',3),(10,'ИСТ-332','КТиИБ',3),(11,'ПИ-331','КТиИБ',3),(12,'ПИ-332','КТиИБ',3),(13,'ИСТ-341','КТиИБ',4),(14,'ИСТ-342','КТиИБ',4),(15,'ПИ-341','КТиИБ',4),(16,'ПИ-342','КТиИБ',4);
/*!40000 ALTER TABLE `student_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Иностранный язык'),(2,'Введение в специальность'),(3,'История России'),(4,'Основы российской государственности'),(5,'История России'),(6,'Безопасность жизнедеятельности'),(7,'Математика'),(8,'Экономическая теория'),(9,'Культура речи и деловое общение'),(10,'Инфокоммуникационные системы, сети и телекоммуникации'),(11,'Информатика и программирование'),(12,'Алгоритмизация и программирование'),(13,'Технологии обработки данных'),(14,'Информационные технологии'),(15,'Теория вероятностей и математическая статистика'),(16,'Математическое и имитационное моделирование'),(17,'Web- программирование'),(18,'Web- технологии'),(19,'Администрирование информационных систем'),(20,'Разработка и сопровождение программных систем'),(21,'Глубокое обучение');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Лебединский Д.Э.','Преподаватель'),(2,'Серов А.О.','Ассистент'),(3,'Филатов С.В.','Преподаватель'),(4,'Самыгин П.С.','Профессор'),(5,'Козловский В.А.','Доцент'),(6,'Лукьянова Г.В.','Доцент'),(7,'Чернышева Н.И.','Доцент'),(8,'Маркина Ю.В.','Доцент'),(9,'Дегтярев С.С.','Ассистент'),(10,'Хохлов А.А.','Ст. преподаватель'),(11,'Мирошниченко И.И.','Доцент'),(12,'Ионова Е.С.','Ст. преподаватель'),(13,'Шкодина Т.А.','Ст. преподаватель'),(14,'Павленко Г.В.','Доцент'),(15,'Лозина Е.Н.','Доцент'),(16,'Карелина В.И.','Преподаватель'),(17,'Терентьева Е.А.','Преподаватель'),(18,'Мануйленко Э.В.','Преподаватель'),(19,'Фрид Л.М.','Доцент'),(20,'Аручиди Н.А.','Преподаватель'),(21,'Липчанская И.В.','Доцент'),(22,'Веретенникова Е.Г.','Доцент'),(23,'Прохорова А.М.','Ст. преподаватель'),(24,'Декамили Ю.Г.','Ст. преподаватель'),(25,'Абрамова А.В.','Ассистент'),(26,'Трегубова А.А.','Доцент'),(27,'Рудяга А.А.','Доцент'),(28,'Бекмурза В.Ю.','Ст. преподаватель'),(29,'Долженко А.И.','Профессор'),(30,'Белокур И.В.','Доцент'),(31,'Макаренко Т.В.','Доцент'),(32,'Казармщиков В.М.','Ассистент'),(33,'Котлярова Е.А.','Преподаватель'),(34,'Хубаев Г.H.','Профессор'),(35,'Киселев В.Н.','Ассистент'),(36,'Полуянов В.П.','Профессор'),(37,'Стрельцова Е.Д.','Профессор'),(38,'Данилова Т.В.','Доцент'),(39,'Синявская Т.Г.','Доцент');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-31 23:03:41
