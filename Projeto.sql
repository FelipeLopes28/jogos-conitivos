CREATE DATABASE  IF NOT EXISTS `projeto_jogo_cognitivo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projeto_jogo_cognitivo`;
-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: projeto_jogo_cognitivo
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `Dificuldade`
--

DROP TABLE IF EXISTS `Dificuldade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dificuldade` (
  `id_Dificuldade` int(11) NOT NULL AUTO_INCREMENT,
  `desc_Dificuldade` varchar(45) DEFAULT NULL,
  `qntde_objetos` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_Dificuldade`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dificuldade`
--

LOCK TABLES `Dificuldade` WRITE;
/*!40000 ALTER TABLE `Dificuldade` DISABLE KEYS */;
INSERT INTO `Dificuldade` VALUES (1,'Fácil','16','Vermelho','circulo'),(2,'Médio','30','Azul','circulo'),(3,'Difícil','80','Verde','circulo');
/*!40000 ALTER TABLE `Dificuldade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa`
--

DROP TABLE IF EXISTS `Pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pessoa` (
  `id_Pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `end` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa`
--

LOCK TABLES `Pessoa` WRITE;
/*!40000 ALTER TABLE `Pessoa` DISABLE KEYS */;
INSERT INTO `Pessoa` VALUES (1,'Felipe','João da Silva Tavares','55996226702','felipe18'),(2,'Antonio','General Netto','53999011439','bozzano');
/*!40000 ALTER TABLE `Pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resultado`
--

DROP TABLE IF EXISTS `Resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resultado` (
  `id_Medico` int(11) NOT NULL,
  `id_Paciente` int(11) DEFAULT NULL,
  `datahora` varchar(45) DEFAULT NULL,
  `id_Dificuldade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Medico`),
  KEY `paciente_pessoa_fk` (`id_Paciente`),
  KEY `resultado_dificuldade_fk` (`id_Dificuldade`),
  CONSTRAINT `medico_pessoa_fk` FOREIGN KEY (`id_Medico`) REFERENCES `Pessoa` (`id_Pessoa`),
  CONSTRAINT `paciente_pessoa_fk` FOREIGN KEY (`id_Paciente`) REFERENCES `Pessoa` (`id_Pessoa`),
  CONSTRAINT `resultado_dificuldade_fk` FOREIGN KEY (`id_Dificuldade`) REFERENCES `Dificuldade` (`id_Dificuldade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resultado`
--

LOCK TABLES `Resultado` WRITE;
/*!40000 ALTER TABLE `Resultado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Resultado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-12 19:48:24
