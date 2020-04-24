-- MariaDB dump 10.17  Distrib 10.4.12-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: gama_consult
-- ------------------------------------------------------
-- Server version	10.4.12-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Medicamentos`
--

DROP TABLE IF EXISTS `Medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Medicamentos` (
  `MedicamentoID` int(11) NOT NULL AUTO_INCREMENT,
  `SustanciaActiva` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Presentacion` varchar(20) NOT NULL,
  `Gramaje` varchar(20) DEFAULT NULL,
  `DosisMG` varchar(20) DEFAULT NULL,
  `Laboratorio` varchar(20) DEFAULT NULL,
  `Proveedor` varchar(20) DEFAULT NULL,
  `P_Proveedor` decimal(5,3) NOT NULL,
  `P_Publico` decimal(5,3) NOT NULL,
  `Descuento` decimal(3,2) DEFAULT NULL,
  `P_Descuento` decimal(5,3) DEFAULT NULL,
  `Saldo` int(11) DEFAULT NULL,
  `Caducidad` date DEFAULT NULL,
  PRIMARY KEY (`MedicamentoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicamentos`
--

LOCK TABLES `Medicamentos` WRITE;
/*!40000 ALTER TABLE `Medicamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Medicamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24 14:29:41
