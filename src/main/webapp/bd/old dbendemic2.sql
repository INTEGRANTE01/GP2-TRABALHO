CREATE DATABASE  IF NOT EXISTS `dbendemic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbendemic`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: dbendemic
-- ------------------------------------------------------
-- Server version	5.6.14-log

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
-- Table structure for table `ac_corretiva`
--

DROP TABLE IF EXISTS `ac_corretiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_corretiva` (
  `idac_corretiva` int(11) NOT NULL AUTO_INCREMENT,
  `nome_ac_corretiva` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idac_corretiva`),
  UNIQUE KEY `idtipoac_corretiva_UNIQUE` (`idac_corretiva`),
  UNIQUE KEY `nome_ac_corretiva_UNIQUE` (`nome_ac_corretiva`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ac_corretiva`
--

LOCK TABLES `ac_corretiva` WRITE;
/*!40000 ALTER TABLE `ac_corretiva` DISABLE KEYS */;
INSERT INTO `ac_corretiva` VALUES (2,'Borrifação');
INSERT INTO `ac_corretiva` VALUES (1,'Nebolização');
/*!40000 ALTER TABLE `ac_corretiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `idbairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome_bairro` varchar(45) NOT NULL,
  `nome_cidade` varchar(40) NOT NULL,
  PRIMARY KEY (`idbairro`),
  UNIQUE KEY `idbairro_UNIQUE` (`idbairro`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Setor Central','Goiânia');
INSERT INTO `bairro` VALUES (3,'Setor Monte Sinai','Trindade');
INSERT INTO `bairro` VALUES (4,'Vila Roberto Monteiro','Trindade');
INSERT INTO `bairro` VALUES (5,'Jardim Novo Horizonte','Goiânia');
INSERT INTO `bairro` VALUES (6,'Setor Serra Dourada','Trindade');
INSERT INTO `bairro` VALUES (8,'Morada do Bosque','íaiá');
INSERT INTO `bairro` VALUES (9,'Setor Comercial','Senador Canedo');
INSERT INTO `bairro` VALUES (10,'Conjunto Uirapuru','Senador Canedo');
INSERT INTO `bairro` VALUES (11,'Vila São sebastião ','Senador Canedo');
INSERT INTO `bairro` VALUES (12,'São francisco','Senador Canedo');
INSERT INTO `bairro` VALUES (13,'Vila Matinha','Senador Canedo');
INSERT INTO `bairro` VALUES (14,'Jardim Imperial','Trindade');
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `idcidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(40) NOT NULL,
  PRIMARY KEY (`idcidade`),
  UNIQUE KEY `idcidade_UNIQUE` (`idcidade`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Aparecida de Goiânia');
INSERT INTO `cidade` VALUES (2,'Goiânia');
INSERT INTO `cidade` VALUES (3,'Senador Canedo');
INSERT INTO `cidade` VALUES (4,'Trindade');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estagio`
--

DROP TABLE IF EXISTS `estagio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estagio` (
  `idestagio` int(11) NOT NULL AUTO_INCREMENT,
  `nome_estagio` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idestagio`),
  UNIQUE KEY `idnew_table_UNIQUE` (`idestagio`),
  UNIQUE KEY `nome_estagio_UNIQUE` (`nome_estagio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estagio`
--

LOCK TABLES `estagio` WRITE;
/*!40000 ALTER TABLE `estagio` DISABLE KEYS */;
INSERT INTO `estagio` VALUES (2,'Larva');
INSERT INTO `estagio` VALUES (4,'Mosquito');
INSERT INTO `estagio` VALUES (1,'Ovo');
INSERT INTO `estagio` VALUES (3,'Pupa');
/*!40000 ALTER TABLE `estagio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao`
--

DROP TABLE IF EXISTS `funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcao` (
  `idfuncao` int(11) NOT NULL AUTO_INCREMENT,
  `nome_funcao` varchar(25) NOT NULL,
  PRIMARY KEY (`idfuncao`),
  UNIQUE KEY `idfuncao_UNIQUE` (`idfuncao`),
  UNIQUE KEY `nome_funcao_UNIQUE` (`nome_funcao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
INSERT INTO `funcao` VALUES (1,'Administrador');
INSERT INTO `funcao` VALUES (2,'Agente');
INSERT INTO `funcao` VALUES (3,'Atendente');
/*!40000 ALTER TABLE `funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(10) CHARACTER SET utf8 NOT NULL,
  `nome` varchar(60) CHARACTER SET utf8 NOT NULL,
  `funcao` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `senha` varchar(15) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idfuncionario`),
  UNIQUE KEY `matricula_UNIQUE` (`matricula`),
  UNIQUE KEY `idfuncionario_UNIQUE` (`idfuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'admin','Administrador','Administrador','administrador@sysendemic.com','admin');
INSERT INTO `funcionario` VALUES (2,'100001','Sabrina Carneiro','Administrador','sabrina@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (3,'100002','Henrique Coimbra','Agente','henrique@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (4,'100003','Eduardo Braz','Agente','eduardo@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (5,'100004','Marieta Severo','Atendente','marieta@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (6,'100005','Lorena Abrahão','Atendente','lorena@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (7,'100006','Márcio Coimbra','Agente','marcio@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (8,'100007','Cinara de Jesus','Agente','cinara@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (9,'100008','Marcos Nascimento Pereira','Agente','marcos@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (10,'100009','Lourenço Peixoto','Atendente','lourenco@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (11,'100010','Moisés Assunção','Agente','moises@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (12,'100011','Maria de Fátima da Silva','Atendente','maria@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (13,'100012','Carlos Daniel Menezes','Atendente','carlos@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (14,'100013','Zélia Costa','Agente','zelia@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (15,'100014','Talita Queróz','Agente','talita@sysendemic.com','123');
INSERT INTO `funcionario` VALUES (16,'100015','Bruna Nunes','Agente','bruna@sysendemic.com','123');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacao`
--

DROP TABLE IF EXISTS `notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificacao` (
  `idnotificacao` int(11) NOT NULL AUTO_INCREMENT,
  `data_notificacao` datetime NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `quadra` varchar(5) DEFAULT NULL,
  `lote` varchar(5) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `cidade` varchar(30) NOT NULL,
  `tp_imovel` varchar(15) NOT NULL,
  `desc_notificacao` varchar(300) NOT NULL,
  `verificado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idnotificacao`),
  UNIQUE KEY `iddenuncia_UNIQUE` (`idnotificacao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacao`
--

LOCK TABLES `notificacao` WRITE;
/*!40000 ALTER TABLE `notificacao` DISABLE KEYS */;
INSERT INTO `notificacao` VALUES (4,'2017-07-04 00:00:00','Leste Vila Nova','Rua X','10','10','10','íaiá','Apartamento','O condomínio possui muitos focos de mosquito da dengue.',1);
INSERT INTO `notificacao` VALUES (5,'2017-07-13 05:00:00','Nova Vila','Rua A','10','10','10','Goiânia','Casa','José Peixoto',1);
INSERT INTO `notificacao` VALUES (6,'2017-07-05 06:00:00','Setor Alto da Glória','Rua AAA','10','11','50','Goiânia','Apartamento','Muitos pneus acumulando água na rua.',1);
INSERT INTO `notificacao` VALUES (7,'2017-07-07 00:00:00','Setor Jaó','AAA','1','1','1','Aparecida de Goiânia','Casa','Muitos focos na rua.',1);
INSERT INTO `notificacao` VALUES (8,'2017-11-19 00:00:00','Setor Garavelo','Rua 3','14','11','S/N','Aparecida de Goiânia','Sala Comercial','Teste',0);
INSERT INTO `notificacao` VALUES (10,'2017-08-02 00:00:00','Setor Serrinha','Rua dos Açores','17','14','1','Goiânia','Casa','Testede ',1);
INSERT INTO `notificacao` VALUES (11,'2017-08-02 00:00:00','Setor Oeste','Rua 14','14','14','1','Aparecida de Goiânia','Loja','Fulano de tal Sabe',1);
INSERT INTO `notificacao` VALUES (12,'2017-08-27 00:00:00','Setor Central','RUA DOS TESTE','33','23','22','Aparecida de Goiânia','Apartamento','CHEIO DE MOSQUITOS',0);
INSERT INTO `notificacao` VALUES (14,'2017-09-06 10:12:00','Setor Central','Rua 23','10','10','11','Goiânia','Deposito','teste',1);
INSERT INTO `notificacao` VALUES (15,'2017-11-17 00:00:00','Morada do Bosque','Rua dos Açoeres','12','11','1125','Goiânia','Deposito','Teste',1);
INSERT INTO `notificacao` VALUES (16,'2017-11-18 00:00:00','São francisco','Rua dos teste','666','1','333','Goiânia','Casa','Teste',1);
/*!40000 ALTER TABLE `notificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoimovel`
--

DROP TABLE IF EXISTS `tipoimovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoimovel` (
  `idimovel` int(11) NOT NULL AUTO_INCREMENT,
  `nome_tpimovel` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idimovel`),
  UNIQUE KEY `idimovel_UNIQUE` (`idimovel`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoimovel`
--

LOCK TABLES `tipoimovel` WRITE;
/*!40000 ALTER TABLE `tipoimovel` DISABLE KEYS */;
INSERT INTO `tipoimovel` VALUES (1,'Apartamento');
INSERT INTO `tipoimovel` VALUES (2,'Casa');
INSERT INTO `tipoimovel` VALUES (3,'Deposito');
INSERT INTO `tipoimovel` VALUES (4,'Loja');
INSERT INTO `tipoimovel` VALUES (5,'Lote');
INSERT INTO `tipoimovel` VALUES (6,'Sala Comercial');
/*!40000 ALTER TABLE `tipoimovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamento`
--

DROP TABLE IF EXISTS `tratamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tratamento` (
  `idtratamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome_tratamento` varchar(30) NOT NULL,
  `tp_tratamento` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idtratamento`),
  UNIQUE KEY `idlarvicida_UNIQUE` (`idtratamento`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamento`
--

LOCK TABLES `tratamento` WRITE;
/*!40000 ALTER TABLE `tratamento` DISABLE KEYS */;
INSERT INTO `tratamento` VALUES (10,'Biovech','Larvicida');
INSERT INTO `tratamento` VALUES (11,'Pyriproxyfen','Larvicida');
INSERT INTO `tratamento` VALUES (12,'Malathion','Adulticida');
INSERT INTO `tratamento` VALUES (13,'Bendiocarb','Adulticida');
/*!40000 ALTER TABLE `tratamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visita`
--

DROP TABLE IF EXISTS `visita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visita` (
  `idvisita` int(11) NOT NULL AUTO_INCREMENT,
  `idnotificacao` int(11) DEFAULT NULL,
  `agente` varchar(60) NOT NULL,
  `data_visita` datetime NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `quadra` varchar(5) DEFAULT NULL,
  `lote` varchar(5) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `cidade` varchar(30) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `tp_imovel` varchar(15) NOT NULL,
  `estagio` varchar(25) DEFAULT 'Não encontrado',
  `tp_larvicida` varchar(50) DEFAULT NULL,
  `ac_corretiva` varchar(30) DEFAULT NULL,
  `local_foco` varchar(45) DEFAULT NULL,
  `foco` tinyint(4) DEFAULT '0',
  `dp1` tinyint(4) DEFAULT '0',
  `dp2` tinyint(4) DEFAULT '0',
  `dp3` tinyint(4) DEFAULT '0',
  `dp4` tinyint(4) DEFAULT '0',
  `dp5` tinyint(4) DEFAULT '0',
  `dp6` tinyint(4) DEFAULT '0',
  `dp7` tinyint(4) DEFAULT '0',
  `qt1` int(4) DEFAULT '0',
  `qt2` int(4) DEFAULT '0',
  `qt3` int(4) DEFAULT '0',
  `qt4` int(4) DEFAULT '0',
  `qt5` int(4) DEFAULT '0',
  `qt6` int(4) DEFAULT '0',
  `qt7` int(4) DEFAULT '0',
  PRIMARY KEY (`idvisita`),
  UNIQUE KEY `idvisita_UNIQUE` (`idvisita`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
INSERT INTO `visita` VALUES (19,NULL,'Administrador','2017-09-06 00:00:00','São francisco','FRANCISCA MAIA DA SILVEIRA','4 ','6','S/N','Senador Canedo','-16.700155099331496','-49.080993088498204','Casa','Larva,Mosquito','Malathion,Pyriproxyfen','Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (20,NULL,'Administrador','2017-09-06 00:00:00','Vila Matinha','Rua 8',' 19 ','6','S/N','Senador Canedo','-16.635573599163052','-49.136737325053005','Apartamento','Ovo','Pyriproxyfen','Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (21,NULL,'Administrador','2017-09-06 00:00:00','Vila São sebastião','Presidente Getulio Vargas',' 45 ','21','S/N','Senador Canedo','-16.72069752','-49.08506706','Sala Comercial','Mosquito,Ovo','Malathion','Borrifação','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (22,NULL,'Administrador','2017-09-06 00:00:00','Jardim Imperial','Av. Sumaré','40 ','30','S/N','Trindade','-16.651024469996052','-49.516455060004006','Lote','Larva,Mosquito','Bendiocarb,Biovech','Borrifação,Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (23,NULL,'Administrador','2017-09-06 00:00:00','Morada do Bosque','JOSE MANOEL DA SILVEIRA',' 6 ','5','S/N','Trindade','-16.64511799498515','-49.431106980006646','Loja','Pupa','Biovech','Borrifação,Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (25,14,'Bruna Nunes','2017-11-17 00:00:00','Setor Central','Rua 23','10 ','10','11','Goiânia','-16.686891199999998','-49.2647943','Deposito','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (26,0,'Bruna Nunes','2017-11-17 00:00:00','Setor Central','Teste','14','44','1','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (27,0,'Bruna Nunes','2017-11-16 00:00:00','Setor Central','Teste',' 18 ','2','33','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Mosquito,Ovo,Pupa','Biovech,Malathion','Borrifação,Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (28,0,'Bruna Nunes','2017-11-17 00:00:00','Setor Monte Sinai','testa',' 11','1','44','Trindade','-16.686891199999998','-49.2647943','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação,Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (29,0,'Bruna Nunes','2017-11-18 00:00:00','São francisco','testa','444','555','4','Senador Canedo','-16.686891199999998','-49.2647943','Casa','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (32,15,'Bruna Nunes','2017-11-17 00:00:00','Morada do Bosque','Rua dos Açoeres','12 ','11','1125','Goiânia','-16.686891199999998','-49.2647943','Deposito','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (33,0,'Bruna Nunes','2017-11-17 00:00:00','Vila Matinha','GGGG','18','44','1125','Goiânia','-16.686891199999998','-49.2647943','Casa','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (34,0,'Bruna Nunes','2017-11-17 00:00:00','Conjunto Uirapuru','testa','11','2','1125','Goiânia','-16.686891199999998','-49.2647943','Lote','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (35,0,'Bruna Nunes','2017-11-17 00:00:00','Conjunto Uirapuru','Rua dos teste','666','666','333','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (36,0,'Bruna Nunes','2017-11-20 00:00:00','Setor Central','Rua dos teste','666','444','111','Goiânia','-16.686891199999998','-49.2647943','Loja','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (38,0,'Bruna Nunes','2017-11-18 00:00:00','Vila Matinha','Rua dos Açoeres','18','444','1125','Senador Canedo','-16.686891199999998','-49.2647943','Sala Comercial','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (39,0,'Bruna Nunes','2017-11-19 00:00:00','Morada do Bosque','GGGG','11','2','333','Goiânia','-16.686891199999998','-49.2647943','Deposito','Larva','Malathion','Borrifação','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (40,0,'Bruna Nunes','2017-11-19 00:00:00','Morada do Bosque','GGGG','11','2','333','Goiânia','-16.686891199999998','-49.2647943','Deposito','Larva','Malathion','Borrifação','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (41,0,'Bruna Nunes','2017-11-19 00:00:00','Morada do Bosque','GGGG','11','2','333','Goiânia','-16.686891199999998','-49.2647943','Deposito','Larva','Malathion','Borrifação','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (42,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Novo Horizonte','Rua dos teste','11','44','33','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Mosquito','Biovech',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (43,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Novo Horizonte','Rua dos teste','11','44','33','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Mosquito','Biovech',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (44,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','11','44','33','Goiânia','-16.686891199999998','-49.2647943','Casa','Mosquito','Pyriproxyfen','Borrifação','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (45,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','18','1','1125','Goiânia','-16.686891199999998','-49.2647943','Deposito','Mosquito','Bendiocarb','Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (46,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','18','1','1125','Goiânia','-16.686891199999998','-49.2647943','Deposito','Mosquito','Bendiocarb','Nebolização','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (47,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','666','2','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (48,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','666','2','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (49,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','18','44','1125','Senador Canedo','-16.686891199999998','-49.2647943','Casa','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (50,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','18','44','1125','Senador Canedo','-16.686891199999998','-49.2647943','Casa','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (51,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','18','44','1125','Senador Canedo','-16.686891199999998','-49.2647943','Casa','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (52,0,'Bruna Nunes','2017-11-19 00:00:00','Conjunto Uirapuru','testa','666','2','333','Goiânia','-16.686891199999998','-49.2647943','Casa','Mosquito',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (53,0,'Bruna Nunes','2017-11-19 00:00:00','Conjunto Uirapuru','testa','666','2','333','Goiânia','-16.686891199999998','-49.2647943','Casa','Mosquito',NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (54,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','18','44','1125','Goiânia','-16.686891199999998','-49.2647943','Deposito','Não encontrado',NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (55,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','18','44','1125','Goiânia','-16.686891199999998','-49.2647943','Deposito','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (56,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','666','44','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Larva',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (57,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','666','44','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Larva',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (58,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','666','44','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Larva',NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (59,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','666','44','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Larva',NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (60,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','GGGG','666','2','1125','Aparecida de Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (61,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','Rua dos teste','666','2','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (62,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','Rua dos teste','666','2','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (63,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','Rua dos teste','666','2','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (64,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','Rua dos teste','666','2','1125','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (65,0,'Bruna Nunes','2017-11-19 00:00:00','Conjunto Uirapuru','testa','18','1','1125','Goiânia','-16.686891199999998','-49.2647943','Casa','Larva,Mosquito','Bendiocarb','Borrifação,Nebolização','',0,1,0,1,0,1,0,1,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (66,0,'Bruna Nunes','2017-11-19 00:00:00','Conjunto Uirapuru','testa','18','1','1125','Goiânia','-16.686891199999998','-49.2647943','Casa','Larva,Mosquito','Bendiocarb','Borrifação,Nebolização','',0,0,1,0,1,0,1,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (67,0,'Bruna Nunes','2017-11-19 00:00:00','Conjunto Uirapuru','testa','18','1','1125','Goiânia','-16.686891199999998','-49.2647943','Casa','Larva,Mosquito','Bendiocarb','Borrifação,Nebolização','',0,1,1,1,1,0,1,0,0,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (68,0,'Bruna Nunes','2017-11-19 00:00:00','Conjunto Uirapuru','Rua dos teste','18','44','33','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Não encontrado',NULL,NULL,NULL,0,1,0,1,0,0,0,0,44,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (69,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','testa','11','44','33','Goiânia','-16.686891199999998','-49.2647943','Apartamento','Mosquito','Pyriproxyfen','Borrifação','',0,1,0,1,1,0,0,0,555,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (70,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Novo Horizonte','GGGG','18','2','33','Goiânia','-16.686891199999998','-49.2647943','Lote','Mosquito',NULL,NULL,NULL,0,1,0,1,1,0,0,0,343,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (71,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Novo Horizonte','GGGG','12','432','34324','Senador Canedo','-16.686891199999998','-49.2647943','Casa','Mosquito,Ovo','Bendiocarb',NULL,NULL,0,0,1,1,0,0,0,0,44,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (72,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Imperial','weeqw',' 222','333','333','Trindade','-16.686891199999998','-49.2647943','Loja','Larva,Ovo',NULL,NULL,NULL,0,1,1,1,0,0,0,0,33,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (73,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Novo Horizonte','tretre',' 34','42','32','Aparecida de Goiânia','-16.686891199999998','-49.2647943','Casa','Larva,Mosquito','Bendiocarb,Biovech','Borrifação','',0,1,1,0,1,0,0,0,33,45,0,23,0,0,0);
INSERT INTO `visita` VALUES (74,0,'Bruna Nunes','2017-11-19 00:00:00','Jardim Novo Horizonte','tretre',' 34','42','32','Aparecida de Goiânia','-16.686891199999998','-49.2647943','Casa','Larva,Mosquito','Bendiocarb,Biovech','Borrifação','',0,0,0,1,0,1,1,0,0,0,23432,0,22,33,0);
INSERT INTO `visita` VALUES (75,0,'Bruna Nunes','2017-11-20 00:00:00','Conjunto Uirapuru','GGGG','444','2','444','Trindade','-16.686891199999998','-49.2647943','Loja','Larva,Mosquito','Bendiocarb','Borrifação','',0,1,1,1,0,1,0,0,5,5,4,0,5,0,0);
INSERT INTO `visita` VALUES (76,0,'Bruna Nunes','2017-11-22 00:00:00','Conjunto Uirapuru','Rua dos Açoeres','33','44','44','Aparecida de Goiânia','-16.686891199999998','-49.2647943','Apartamento','Larva,Mosquito','Biovech,Malathion','Borrifação,Nebolização','',0,1,1,1,0,0,0,0,44,44,33,0,0,0,0);
INSERT INTO `visita` VALUES (77,0,'Bruna Nunes','2017-11-22 00:00:00','Conjunto Uirapuru','Rua dos Açoeres','33','44','44','Aparecida de Goiânia','-16.686891199999998','-49.2647943','Apartamento','Larva,Mosquito','Biovech,Malathion','Borrifação,Nebolização','',0,1,1,1,1,1,1,0,44,44,33,0,0,0,0);
/*!40000 ALTER TABLE `visita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbendemic'
--
/*!50003 DROP PROCEDURE IF EXISTS `procedure_grafico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_grafico`(
OUT Janeiro int,
OUT Fevereiro int,
OUT Março int,
OUT Abril int,
OUT Maio int,
OUT Junho int,
OUT Julho int,
OUT Agosto int,
OUT Setembro int,
OUT Outubro int,
OUT Novembro int,
OUT Dezembro int)
begin

-- Janeiro
select count(data_visita) into Janeiro
	from
		visita 	
	where
		data_visita between '2017-01-01' and '2017-01-31';

-- Fevereiro
select count(data_visita) into Fevereiro
	from
		visita 	
	where
		data_visita between '2017-02-01' and '2017-02-31';


-- Março
select count(data_visita) into Março
	from
		visita 	
	where
		data_visita between '2017-03-01' and '2017-03-31';

-- Abril
select count(data_visita) into Abril
	from
		visita 	
	where
		data_visita between '2017-04-01' and '2017-04-30';

-- Maio
select count(data_visita) into Maio	
	from
		visita 	
	where
		data_visita between '2017-05-01' and '2017-05-31';

-- Junho
select count(data_visita) into Junho
	from
		visita 	
	where
		data_visita between '2017-06-01' and '2017-06-30';

-- Julho
select count(data_visita) into Julho
	from
		visita 	
	where
		data_visita between '2017-07-01' and '2017-07-31';

-- Agosto
select count(data_visita) into Agosto
	from
		visita 	
	where
		data_visita between '2017-08-01' and '2017-08-31';


-- Setembro
select count(data_visita) into Setembro
	from
		visita 	
	where
		data_visita between '2017-09-01' and '2017-09-30';

-- Outubro
select count(data_visita) into Outubro
	from
		visita 	
	where
		data_visita between '2017-10-01' and '2017-10-31';

-- Novembro
select count(data_visita) into Novembro
	from
		visita 	
	where
		data_visita between '2017-11-01' and '2017-11-30';

-- Dezembro
select count(data_visita) into Dezembro
	from
		visita 	
	where
		data_visita between '2017-12-01' and '2017-01-31';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-19 23:00:32
