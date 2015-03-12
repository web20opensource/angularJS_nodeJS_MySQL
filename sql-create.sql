-- MySQL dump 10.13  Distrib 5.5.24, for Win32 (x86)
--
-- Host: localhost    Database: local_swfrasp
-- ------------------------------------------------------
-- Server version	5.5.24-log

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
-- Current Database: `local_swfrasp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `local_swfrasp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `local_swfrasp`;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_code` tinyint(4) NOT NULL,
  `area_key` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `area_desc` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`area_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (8,'CSH','Ciencias Sociales y Humanidades'),(9,'CNS','Ciencias Naturales y de la Salud'),(10,'ECO','Economía'),(11,'ING','Ingenierías'),(20,'PRE','Preparatorias'),(21,'B5M','Bachillerato 5 de Mayo');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `SPRIDEN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SPRIDEN_LAST_NAME` varchar(60) CHARACTER SET latin1 NOT NULL,
  `SPRIDEN_FIRST_NAME` varchar(60) CHARACTER SET latin1 NOT NULL,
  `SPRIDEN_MI` varchar(60) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_STREET_LINE1` varchar(75) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_STREET_LINE2` varchar(75) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_STREET_LINE3` varchar(75) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_ZIP` varchar(30) CHARACTER SET latin1 NOT NULL,
  `PR_STVCNTY_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_STVSTAT_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_CITY` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_NATN_CODE` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_PHONE_AREA` varchar(6) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_PHONE_NUMBER` varchar(12) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_PHONE_EXT` varchar(10) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_STREET_LINE1` varchar(75) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_STREET_LINE2` varchar(75) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_STREET_LINE3` varchar(75) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_ZIP` varchar(30) CHARACTER SET latin1 NOT NULL,
  `LN_STVCNTY_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `LN_STVSTAT_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_CITY` varchar(100) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_NATN_CODE` varchar(5) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_PHONE_AREA` varchar(6) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_PHONE_NUMBER` varchar(12) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_PHONE_EXT` varchar(10) CHARACTER SET latin1 NOT NULL,
  `SPBPERS_SEX` varchar(1) CHARACTER SET latin1 NOT NULL,
  `SPBPERS_ITIN` varchar(6) CHARACTER SET latin1 NOT NULL,
  `SPBPERS_BIRTH_DATE` date NOT NULL,
  `SARADAP_PROGRAM_1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `SORHSCH_SBGI_DESC` varchar(6) CHARACTER SET latin1 NOT NULL,
  `SORHSCH_GRADUATION_DATE` date NOT NULL,
  `SORHSCH_GPA` varchar(24) CHARACTER SET latin1 NOT NULL,
  `folio` varchar(10) CHARACTER SET latin1 NOT NULL,
  `edificio` varchar(10) CHARACTER SET latin1 NOT NULL,
  `salon` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`SPRIDEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201312350 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stvmajr`
--

DROP TABLE IF EXISTS `stvmajr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stvmajr` (
  `stvmajr_key` varchar(4) CHARACTER SET latin1 NOT NULL,
  `stvmajr_desc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `area_code` tinyint(4) NOT NULL,
  PRIMARY KEY (`stvmajr_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stvmajr`
--

LOCK TABLES `stvmajr` WRITE;
/*!40000 ALTER TABLE `stvmajr` DISABLE KEYS */;
INSERT INTO `stvmajr` VALUES ('ACP','Lic.en Admon.Publica y Cs.Pol',10),('ACT','Lic. en Actuaría',11),('ADI','Lic. en Arte Digital',8),('ANT','Lic en Antropologia',8),('APL','Lic. en Artes Plásticas',8),('ARQ','Lic. en Arquitectura',11),('BIO','Lic. en Biología',9),('CCO','Lic. en Cs. de la Computación',11),('CIN','Lic. en Cinematografía',8),('DLAE','Lic. en Admon de Empresas Dist',10),('DLCM','Lic. en Comunicacion - Distanc',8),('DLCP','Lic en Contaduria Publica Dist',10),('DLDE','Lic. en Derecho - Distancia',8),('DSG','Lic. en Diseño Grafico',11),('EFR','Lic. Enseñanza del Francés',8),('EIN','Lic. Enseñanza del Inglés',8),('ENF','Lic. en Enfermería',9),('ETM','Lic. en Estomatología',9),('FAR','Lic. en Farmacia',9),('FIL','Lic. en Filosofía',8),('FIS','Lic. en Física',11),('HIS','Lic. en Historia',8),('IAF','Ing. Agroforestal Tetela',9),('IAH','Ing. Agrohidráulica',9),('IAL','Ing. en Alimentos',11),('IAM','Ing. Ambiental',11),('IAZ','Ing. Agronómica y  Zootecnia',9),('ICC','Ing. en Cs. de la Computación',11),('ICV','Ing. Civil',11),('IER','Ing. en Energías Renovables',11),('IGF','Ing. Geofísica',11),('IID','Ing. Industrial',11),('IME','Ing. Mecánica y Eléctrica',11),('IQU','Ing. Química',11),('ISA','Ing. en Sistemas Automotrices',11),('ITG','Ing. Topográfica y Geodésica',11),('ITI','Ing. en Tecnologias de la Inf.',11),('ITX','Ing. Textil',11),('LAD','Lic. en Arte Dramatico',8),('LAE','Lic. en Admon. de Empresas',10),('LAT','Lic.en Admon. Turistica',10),('LBM','Lic. en Biomedicina',9),('LBT','Lic. en Biotecnología',9),('LCE','Lic. en Electrónica',11),('LCI','Lic. en Comercio Internacional',10),('LCJ','Lic. en Consultoría Jurídica',8),('LCM','Lic. en Comunicación',8),('LCP','Lic en Contaduria Publica',10),('LCR','Lic. en Criminología',8),('LDA','Lic. en Danza',8),('LDE','Lic. en Derecho',8),('LEC','Lic. en Economía',10),('LED','Lic. en Procesos Educativos',8),('LEF','Lic. en Cultura Física',8),('LET','Lic. en Etnocoreología',8),('LFA','Lic. en Física Aplicada',11),('LFI','Lic. en Finanzas',10),('LFT','Lic. en Fisioterapia',9),('LGA','Lic. en Gastronomía',10),('LIA','Ing. en Materiales',11),('LIM','Lic. en Ing. en Mecatrónica',11),('LLH','Lic.Linguistica y Lit. Hispani',8),('LMA','Lic. en Matemáticas Aplicadas',11),('LMU','Lic. en Musica',8),('LNC','Lic. en Nutrición Clínica',9),('LPO','Lic. en Ciencias Políticas',8),('LRI','Lic Relaciones Internacionales',8),('LSO','Lic. en Sociologia',8),('LUR','Licenciatura en Urbanismo',11),('MAT','Lic. en Matemáticas',11),('MED','Lic. en Medicina',9),('MVZ','Lic. en Med. Vet. y Zootecnia',9),('PAI','Prof Asoc en Imagenología',9),('PSI','Lic en Psicología',8),('QFB','Lic. en Quimico Farmacobiologo',9),('QUI','Lic. en Química',9),('RAA','Lic.en Admon.de Empresas Acatz',10),('RAE','Lic.en Admón.de Empresas Chig',10),('RAH','Lic. en Admon de Empresas Huau',10),('RAI','Ing. Agroindustrial Acatzingo',11),('RAT','Lic. en Admon. Turistica Chig',10),('RCA','Lic. en Admón. Turística Cuetz',10),('RCD','Lic. en Derecho Chignahuapan',8),('RCF','Lic. en Fisioterapia Cuetzalan',9),('RCS','Prep. Ciudad Serdán',20),('RCU','Prep. Cuetzalan',20),('RDH','Lic.en Derecho (Huauchinango)',8),('REC','Prep. Enrique Cabrera (Teca)',20),('REE','Lic. en Enfermería Tetela',9),('REP','Lic. en Contaduría Tetela',10),('RET','Lic. en Estomatologia Tehuacan',9),('RHE','Lic. Admón. Empresas Chiautla',10),('RIA','Ing en Tecno de Inf (Acatzing)',11),('RIM','Prep. Izucar de Matamoros',20),('RLA','Lic.en Admon. de Empresas Libr',10),('RLC','Lic. en Contaduría Pública Lib',10),('RME','Lic. Medicina Tehuacán',9),('RMT','Prep. Sn Martin Texmelucan',20),('RPA','Preparatoria Acajete',20),('RPC','Preparatoria Chiautla de Tapia',20),('RPL','Prep. Regional Libres',20),('RPN','Preparatoria Zacatlán',20),('RPT','Preparatoria Tepeaca',20),('RPZ','Lic. en Psicología Zacapoaxtla',8),('RSB','Prep. \"Simon Bolivar\"(Atlixco)',20),('RTA','Lic.en Admon.de Empresas Tehu',10),('RTD','Lic. en Derecho Tehuacán',8),('RTG','Lic. en Diseño Gráfico Tehua',11),('RTP','Lic. en Cs. Políticas Tehuacán',8),('RTQ','Lic. en Arquitectura Tehua',11),('RTZ','Preparatoria Teziutlán',20),('RXC','Lic.en Contaduría Pub. Atlixco',10),('RXE','Lic.en Admón. Empresas Atlixco',10),('RXM','Lic. en Comunicacion Atlixco',8),('RZC','Lic. en Contaduria Publica Zacapoaxtla',10),('SLAE','Lic. en Admon.de Empresas Semi',10),('SLCM','Lic. en  Comunicación  Semi',8),('SLCP','Lic. en Contaduria Públi Semi',10),('SLDE','Lic. en Derecho - Semi',8),('TMU','Tec. en Música',20),('UAC','Prep. Alfonso Calderón Moreno',20),('UBI','Bachillerato 5 de Mayo',21),('UBJ','Prep. Lic.Benito Juarez Garcia',20),('UDO','Prep. 2 de Octubre de 1968',20),('UEC','Prep. Urb. Enrique Cabrera B.',20),('UEZ','Prep. Emiliano Zapata',20),('ULC','Prep. Gral. Lázaro Cárdenas',20);
/*!40000 ALTER TABLE `stvmajr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `local_swfrasp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `local_swfrasp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `local_swfrasp`;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_code` tinyint(4) NOT NULL,
  `area_key` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `area_desc` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`area_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (8,'CSH','Ciencias Sociales y Humanidades'),(9,'CNS','Ciencias Naturales y de la Salud'),(10,'ECO','Economía'),(11,'ING','Ingenierías'),(20,'PRE','Preparatorias'),(21,'B5M','Bachillerato 5 de Mayo');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `SPRIDEN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SPRIDEN_LAST_NAME` varchar(60) CHARACTER SET latin1 NOT NULL,
  `SPRIDEN_FIRST_NAME` varchar(60) CHARACTER SET latin1 NOT NULL,
  `SPRIDEN_MI` varchar(60) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_STREET_LINE1` varchar(75) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_STREET_LINE2` varchar(75) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_STREET_LINE3` varchar(75) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_ZIP` varchar(30) CHARACTER SET latin1 NOT NULL,
  `PR_STVCNTY_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_STVSTAT_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_CITY` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_NATN_CODE` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_PHONE_AREA` varchar(6) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_PHONE_NUMBER` varchar(12) CHARACTER SET latin1 NOT NULL,
  `PR_SPRADDR_PHONE_EXT` varchar(10) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_STREET_LINE1` varchar(75) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_STREET_LINE2` varchar(75) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_STREET_LINE3` varchar(75) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_ZIP` varchar(30) CHARACTER SET latin1 NOT NULL,
  `LN_STVCNTY_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `LN_STVSTAT_DESC` varchar(100) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_CITY` varchar(100) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_NATN_CODE` varchar(5) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_PHONE_AREA` varchar(6) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_PHONE_NUMBER` varchar(12) CHARACTER SET latin1 NOT NULL,
  `LN_SPRADDR_PHONE_EXT` varchar(10) CHARACTER SET latin1 NOT NULL,
  `SPBPERS_SEX` varchar(1) CHARACTER SET latin1 NOT NULL,
  `SPBPERS_ITIN` varchar(6) CHARACTER SET latin1 NOT NULL,
  `SPBPERS_BIRTH_DATE` date NOT NULL,
  `SARADAP_PROGRAM_1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `SORHSCH_SBGI_DESC` varchar(6) CHARACTER SET latin1 NOT NULL,
  `SORHSCH_GRADUATION_DATE` date NOT NULL,
  `SORHSCH_GPA` varchar(24) CHARACTER SET latin1 NOT NULL,
  `folio` varchar(10) CHARACTER SET latin1 NOT NULL,
  `edificio` varchar(10) CHARACTER SET latin1 NOT NULL,
  `salon` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`SPRIDEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201312350 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stvmajr`
--

DROP TABLE IF EXISTS `stvmajr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stvmajr` (
  `stvmajr_key` varchar(4) CHARACTER SET latin1 NOT NULL,
  `stvmajr_desc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `area_code` tinyint(4) NOT NULL,
  PRIMARY KEY (`stvmajr_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stvmajr`
--

LOCK TABLES `stvmajr` WRITE;
/*!40000 ALTER TABLE `stvmajr` DISABLE KEYS */;
INSERT INTO `stvmajr` VALUES ('ACP','Lic.en Admon.Publica y Cs.Pol',10),('ACT','Lic. en Actuaría',11),('ADI','Lic. en Arte Digital',8),('ANT','Lic en Antropologia',8),('APL','Lic. en Artes Plásticas',8),('ARQ','Lic. en Arquitectura',11),('BIO','Lic. en Biología',9),('CCO','Lic. en Cs. de la Computación',11),('CIN','Lic. en Cinematografía',8),('DLAE','Lic. en Admon de Empresas Dist',10),('DLCM','Lic. en Comunicacion - Distanc',8),('DLCP','Lic en Contaduria Publica Dist',10),('DLDE','Lic. en Derecho - Distancia',8),('DSG','Lic. en Diseño Grafico',11),('EFR','Lic. Enseñanza del Francés',8),('EIN','Lic. Enseñanza del Inglés',8),('ENF','Lic. en Enfermería',9),('ETM','Lic. en Estomatología',9),('FAR','Lic. en Farmacia',9),('FIL','Lic. en Filosofía',8),('FIS','Lic. en Física',11),('HIS','Lic. en Historia',8),('IAF','Ing. Agroforestal Tetela',9),('IAH','Ing. Agrohidráulica',9),('IAL','Ing. en Alimentos',11),('IAM','Ing. Ambiental',11),('IAZ','Ing. Agronómica y  Zootecnia',9),('ICC','Ing. en Cs. de la Computación',11),('ICV','Ing. Civil',11),('IER','Ing. en Energías Renovables',11),('IGF','Ing. Geofísica',11),('IID','Ing. Industrial',11),('IME','Ing. Mecánica y Eléctrica',11),('IQU','Ing. Química',11),('ISA','Ing. en Sistemas Automotrices',11),('ITG','Ing. Topográfica y Geodésica',11),('ITI','Ing. en Tecnologias de la Inf.',11),('ITX','Ing. Textil',11),('LAD','Lic. en Arte Dramatico',8),('LAE','Lic. en Admon. de Empresas',10),('LAT','Lic.en Admon. Turistica',10),('LBM','Lic. en Biomedicina',9),('LBT','Lic. en Biotecnología',9),('LCE','Lic. en Electrónica',11),('LCI','Lic. en Comercio Internacional',10),('LCJ','Lic. en Consultoría Jurídica',8),('LCM','Lic. en Comunicación',8),('LCP','Lic en Contaduria Publica',10),('LCR','Lic. en Criminología',8),('LDA','Lic. en Danza',8),('LDE','Lic. en Derecho',8),('LEC','Lic. en Economía',10),('LED','Lic. en Procesos Educativos',8),('LEF','Lic. en Cultura Física',8),('LET','Lic. en Etnocoreología',8),('LFA','Lic. en Física Aplicada',11),('LFI','Lic. en Finanzas',10),('LFT','Lic. en Fisioterapia',9),('LGA','Lic. en Gastronomía',10),('LIA','Ing. en Materiales',11),('LIM','Lic. en Ing. en Mecatrónica',11),('LLH','Lic.Linguistica y Lit. Hispani',8),('LMA','Lic. en Matemáticas Aplicadas',11),('LMU','Lic. en Musica',8),('LNC','Lic. en Nutrición Clínica',9),('LPO','Lic. en Ciencias Políticas',8),('LRI','Lic Relaciones Internacionales',8),('LSO','Lic. en Sociologia',8),('LUR','Licenciatura en Urbanismo',11),('MAT','Lic. en Matemáticas',11),('MED','Lic. en Medicina',9),('MVZ','Lic. en Med. Vet. y Zootecnia',9),('PAI','Prof Asoc en Imagenología',9),('PSI','Lic en Psicología',8),('QFB','Lic. en Quimico Farmacobiologo',9),('QUI','Lic. en Química',9),('RAA','Lic.en Admon.de Empresas Acatz',10),('RAE','Lic.en Admón.de Empresas Chig',10),('RAH','Lic. en Admon de Empresas Huau',10),('RAI','Ing. Agroindustrial Acatzingo',11),('RAT','Lic. en Admon. Turistica Chig',10),('RCA','Lic. en Admón. Turística Cuetz',10),('RCD','Lic. en Derecho Chignahuapan',8),('RCF','Lic. en Fisioterapia Cuetzalan',9),('RCS','Prep. Ciudad Serdán',20),('RCU','Prep. Cuetzalan',20),('RDH','Lic.en Derecho (Huauchinango)',8),('REC','Prep. Enrique Cabrera (Teca)',20),('REE','Lic. en Enfermería Tetela',9),('REP','Lic. en Contaduría Tetela',10),('RET','Lic. en Estomatologia Tehuacan',9),('RHE','Lic. Admón. Empresas Chiautla',10),('RIA','Ing en Tecno de Inf (Acatzing)',11),('RIM','Prep. Izucar de Matamoros',20),('RLA','Lic.en Admon. de Empresas Libr',10),('RLC','Lic. en Contaduría Pública Lib',10),('RME','Lic. Medicina Tehuacán',9),('RMT','Prep. Sn Martin Texmelucan',20),('RPA','Preparatoria Acajete',20),('RPC','Preparatoria Chiautla de Tapia',20),('RPL','Prep. Regional Libres',20),('RPN','Preparatoria Zacatlán',20),('RPT','Preparatoria Tepeaca',20),('RPZ','Lic. en Psicología Zacapoaxtla',8),('RSB','Prep. \"Simon Bolivar\"(Atlixco)',20),('RTA','Lic.en Admon.de Empresas Tehu',10),('RTD','Lic. en Derecho Tehuacán',8),('RTG','Lic. en Diseño Gráfico Tehua',11),('RTP','Lic. en Cs. Políticas Tehuacán',8),('RTQ','Lic. en Arquitectura Tehua',11),('RTZ','Preparatoria Teziutlán',20),('RXC','Lic.en Contaduría Pub. Atlixco',10),('RXE','Lic.en Admón. Empresas Atlixco',10),('RXM','Lic. en Comunicacion Atlixco',8),('RZC','Lic. en Contaduria Publica Zacapoaxtla',10),('SLAE','Lic. en Admon.de Empresas Semi',10),('SLCM','Lic. en  Comunicación  Semi',8),('SLCP','Lic. en Contaduria Públi Semi',10),('SLDE','Lic. en Derecho - Semi',8),('TMU','Tec. en Música',20),('UAC','Prep. Alfonso Calderón Moreno',20),('UBI','Bachillerato 5 de Mayo',21),('UBJ','Prep. Lic.Benito Juarez Garcia',20),('UDO','Prep. 2 de Octubre de 1968',20),('UEC','Prep. Urb. Enrique Cabrera B.',20),('UEZ','Prep. Emiliano Zapata',20),('ULC','Prep. Gral. Lázaro Cárdenas',20);
/*!40000 ALTER TABLE `stvmajr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-06  9:39:34
