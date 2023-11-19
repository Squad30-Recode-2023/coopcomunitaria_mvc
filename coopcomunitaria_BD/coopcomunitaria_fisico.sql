CREATE DATABASE  IF NOT EXISTS `coopcomunitaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coopcomunitaria`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: coopcomunitaria
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(50) DEFAULT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `telefone_cliente` int DEFAULT NULL,
  `email_cliente` varchar(50) DEFAULT NULL,
  `senha_cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cliente_empresa`
--

DROP TABLE IF EXISTS `cliente_empresa`;
/*!50001 DROP VIEW IF EXISTS `cliente_empresa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cliente_empresa` AS SELECT 
 1 AS `id_servico`,
 1 AS `nome_do_servico`,
 1 AS `preco`,
 1 AS `categoria`,
 1 AS `id_Empresa`,
 1 AS `nome_empresa`,
 1 AS `codigo_cadastro`,
 1 AS `telefone_empresa`,
 1 AS `email_empresa`,
 1 AS `senha`,
 1 AS `id_cliente`,
 1 AS `cpf`,
 1 AS `nome_cliente`,
 1 AS `telefone_cliente`,
 1 AS `email_cliente`,
 1 AS `senha_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id_Empresa` int NOT NULL AUTO_INCREMENT,
  `nome_empresa` varchar(50) DEFAULT NULL,
  `codigo_cadastro` varchar(50) DEFAULT NULL,
  `telefone_empresa` int DEFAULT NULL,
  `email_empresa` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `id_servico` int NOT NULL AUTO_INCREMENT,
  `nome_do_servico` varchar(50) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  PRIMARY KEY (`id_servico`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `servico_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cliente_empresa`
--

/*!50001 DROP VIEW IF EXISTS `cliente_empresa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_empresa` AS select `s`.`id_servico` AS `id_servico`,`s`.`nome_do_servico` AS `nome_do_servico`,`s`.`preco` AS `preco`,`s`.`categoria` AS `categoria`,`e`.`id_Empresa` AS `id_Empresa`,`e`.`nome_empresa` AS `nome_empresa`,`e`.`codigo_cadastro` AS `codigo_cadastro`,`e`.`telefone_empresa` AS `telefone_empresa`,`e`.`email_empresa` AS `email_empresa`,`e`.`senha` AS `senha`,`c`.`id_cliente` AS `id_cliente`,`c`.`cpf` AS `cpf`,`c`.`nome_cliente` AS `nome_cliente`,`c`.`telefone_cliente` AS `telefone_cliente`,`c`.`email_cliente` AS `email_cliente`,`c`.`senha_cliente` AS `senha_cliente` from ((`servico` `s` join `empresa` `e`) join `cliente` `c`) where ((`s`.`id_empresa` = `e`.`id_Empresa`) and (`s`.`id_cliente` = `c`.`id_cliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 20:20:13
