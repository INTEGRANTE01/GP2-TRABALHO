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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
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
INSERT INTO `bairro` VALUES (8,'Morada do Bosque','Aparecida de Goiânia');
INSERT INTO `bairro` VALUES (9,'Setor Comercial','Senador Canedo');
INSERT INTO `bairro` VALUES (10,'Conjunto Uirapuru','Senador Canedo');
INSERT INTO `bairro` VALUES (11,'Vila São sebastião ','Senador Canedo');
INSERT INTO `bairro` VALUES (12,'São francisco','Senador Canedo');
INSERT INTO `bairro` VALUES (13,'Vila Matinha','Senador Canedo');
INSERT INTO `bairro` VALUES (14,'Jardim Imperial','Trindade');
INSERT INTO `bairro` VALUES (15,'Jardim Novo Horizonte','Trindade');
INSERT INTO `bairro` VALUES (16,'Morada do Bosque','Trindade');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
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
INSERT INTO `notificacao` VALUES (8,'2017-11-19 00:00:00','Setor Garavelo','Rua 3','14','11','S/N','Aparecida de Goiânia','Sala Comercial','Teste',1);
INSERT INTO `notificacao` VALUES (10,'2017-08-02 00:00:00','Setor Serrinha','Rua dos Açores','17','14','1','Goiânia','Casa','Testede ',1);
INSERT INTO `notificacao` VALUES (11,'2017-08-02 00:00:00','Setor Oeste','Rua 14','14','14','1','Aparecida de Goiânia','Loja','Fulano de tal Sabe',1);
INSERT INTO `notificacao` VALUES (12,'2017-08-27 00:00:00','Setor Central','RUA DOS TESTE','33','23','22','Aparecida de Goiânia','Apartamento','CHEIO DE MOSQUITOS',1);
INSERT INTO `notificacao` VALUES (14,'2017-09-06 10:12:00','Setor Central','Rua 23','10','10','11','Goiânia','Deposito','teste',1);
INSERT INTO `notificacao` VALUES (15,'2017-11-17 00:00:00','Morada do Bosque','Rua dos Açoeres','12','11','1125','Goiânia','Deposito','Teste',1);
INSERT INTO `notificacao` VALUES (16,'2017-11-18 00:00:00','São francisco','Rua dos teste','666','1','333','Goiânia','Casa','Teste',1);
INSERT INTO `notificacao` VALUES (17,'2017-11-29 00:00:00','Conjunto Uirapuru','Ruas dos Teste','14','25','74','Aparecida de Goiânia','Deposito','ttt',1);
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
  `status` varchar(15) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
INSERT INTO `visita` VALUES (89,0,'Visitado','Administrador','2017-11-27 22:28:00','Setor Monte Sinai','UMBELINO VICENTE DA SILVA','35','24','s/n','Trindade','-16.632344025000002','-49.504376879999995','Casa','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,1,1,0,0,0,1,0,2,1,0,0,0);
INSERT INTO `visita` VALUES (90,0,'Visitado','Administrador','2017-11-27 22:38:00','Setor Monte Sinai','JOAO MARIANO DE SOUZA','35','5','s/n','Trindade','-16.632801495','-49.5047376','Casa','Larva,Mosquito','Biovech,Pyriproxyfen','Borrifação','',0,1,1,0,0,1,0,0,2,1,0,0,2,0,0);
INSERT INTO `visita` VALUES (91,0,'Visitado','Administrador','2017-11-28 19:54:00','Setor Monte Sinai','RAIMUNDO LOPES','34','1','s/n','Trindade','-16.633328985','-49.505173920000004','Casa','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,1,0,0,1,0,1,2,1,0,0,2,0,3);
INSERT INTO `visita` VALUES (92,0,'Visitado','Administrador','2017-11-28 19:58:00','Setor Monte Sinai','RAIMUNDO LOPES','33','27','s/n','Trindade','-16.633393965','-49.5052245','Casa','Larva,Mosquito','Bendiocarb,Malathion','Borrifação,Nebolização','',0,1,1,1,0,1,0,1,1,1,0,0,2,0,2);
INSERT INTO `visita` VALUES (93,0,'Visitado','Administrador','2017-11-28 20:03:00','Setor Monte Sinai','JOAQUIM ALGUSTO PORTUGAL','32','2','s/n','Trindade','-16.63466652','-49.504376519999994','Apartamento','Mosquito','Bendiocarb','Borrifação','',0,0,1,0,1,0,0,1,0,1,0,1,0,0,2);
INSERT INTO `visita` VALUES (94,0,'Visitado','Administrador','2017-11-28 20:06:00','Setor Monte Sinai','NILO JOSE CORREIA','32','6','s/n','Trindade','-16.633752399662235','-49.50406736014549','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (95,0,'Visitado','Administrador','2017-11-28 20:08:00','Setor Monte Sinai','DIVINO LUIZ RIBEIRO','32','20','s/n','Trindade','-16.634055015','-49.503599460000004','Apartamento','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,2);
INSERT INTO `visita` VALUES (96,0,'Visitado','Administrador','2017-11-28 20:13:00','Setor Monte Sinai','DIVINO LUIZ RIBEIRO','19','12','s/n','Trindade','-16.634101995','-49.50352962','Apartamento','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,2);
INSERT INTO `visita` VALUES (97,0,'Visitado','Administrador','2017-11-28 20:19:00','Setor Monte Sinai','UMBELINO VICENTE DA SILVA','19','19','s/n','Trindade','-16.633532969999997','-49.502791619999996','Deposito','Larva,Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,1,1,0,0,1,2,0,1,2,0,0,3);
INSERT INTO `visita` VALUES (98,0,'Visitado','Administrador','2017-11-28 20:21:00','Setor Monte Sinai','JOAO DE DES GUIMARAES','19','20','s/n','Trindade','-16.634436975','-49.5030285','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,0,1,0,0,1,1,0,0,1,0,0,1);
INSERT INTO `visita` VALUES (99,0,'Visitado','Administrador','2017-11-28 20:23:00','Setor Monte Sinai','JOAQUIM ALGUSTO PORTUGAL','19','1','s/n','Trindade','-16.635006','-49.5037665','Loja','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,1,0,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (100,0,'Visitado','Administrador','2017-11-28 20:26:00','Setor Monte Sinai','JOAQUIM ALGUSTO PORTUGAL','18','1','s/n','Trindade','-16.635361005','-49.50317412','Loja','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,1,1,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (101,0,'Visitado','Administrador','2017-11-28 20:28:00','Setor Monte Sinai','ANTONIO ALVES FORTES','18','19','s/n','Trindade','-16.63497999','-49.50255456','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação,Nebolização','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (102,0,'Visitado','Administrador','2017-11-28 20:31:00','Setor Monte Sinai','JOAO CARLOS CAMILO','17','12','s/n','Trindade','-16.635551985','-49.502106','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,2);
INSERT INTO `visita` VALUES (103,0,'Visitado','Administrador','2017-11-28 20:33:00','Setor Monte Sinai','LUIZ CARLOS DE MORAES','31','3','s/n','Trindade','-16.63576299','-49.505085539999996','Casa','Mosquito,Ovo','Biovech,Malathion','Borrifação,Nebolização','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,3);
INSERT INTO `visita` VALUES (104,0,'Visitado','Administrador','2017-11-28 20:37:00','Setor Monte Sinai','JOAO CARLOS CAMILO','21','32','s/n','Trindade','-16.63619148','-49.502555099999995','Deposito','Larva,Mosquito,Ovo','Bendiocarb,Biovech,Malathion','Borrifação,Nebolização','',0,1,1,1,1,0,0,1,1,1,1,1,0,0,1);
INSERT INTO `visita` VALUES (105,0,'Visitado','Administrador','2017-11-28 20:39:00','Setor Monte Sinai','JOAO ATALIBA DE CAMPOS','20','3','s/n','Trindade','-16.63597854','-49.50359496','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (106,0,'Visitado','Administrador','2017-11-28 20:41:00','Setor Monte Sinai','OTAVIO DIAS DE OLIVEIRA','30','1','s/n','Trindade','-16.63744401','-49.506206399999996 ','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (107,0,'Visitado','Administrador','2017-11-28 20:43:00','Setor Monte Sinai','L DOMINGUES','30','5','s/n','Trindade','-16.63647736564217','-49.505937204818885','Loja','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,1,1,0,0,1,1,0,1,2,0,0,1);
INSERT INTO `visita` VALUES (108,0,'Visitado','Administrador','2017-11-28 20:45:00','Setor Monte Sinai','ARI PINTO DE MAGALHAES','22','01','s/n','Trindade','-16.6370715','-49.50429804','Loja','Ovo,Pupa','Biovech,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (109,0,'Visitado','Administrador','2017-11-28 20:49:00','Vila Roberto Monteiro','VESPAZIANO ODORICO VIEIRA','D','06','s/n','Trindade','-16.66604723573726','-49.49337209472187','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (110,0,'Visitado','Administrador','2017-11-28 20:52:00','Vila Roberto Monteiro','ADIR MOISES','D','10','s/n','Trindade','-16.666202475','-49.49293392','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,2);
INSERT INTO `visita` VALUES (111,0,'Visitado','Administrador','2017-11-28 20:54:00','Vila Roberto Monteiro','VEREADOR JAIME DE OLIVEIRA','E','13','s/n','Trindade','-16.66705446000000','-49.493007000000006','Casa','Mosquito,Ovo,Pupa','Bendiocarb,Biovech,Malathion','Borrifação,Nebolização','',0,1,0,1,1,0,0,1,1,0,1,1,0,0,1);
INSERT INTO `visita` VALUES (112,0,'Visitado','Administrador','2017-11-28 20:57:00','Vila Roberto Monteiro','SANTA TEREZINHA','A','02','s/n','Trindade','-16.66493298','-49.4929789','Casa','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,1,0,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (113,0,'Visitado','Administrador','2017-11-28 20:58:00','Vila Roberto Monteiro','JOSE QUIRINO','c','05','s/n','Trindade','-16.665756029997247','-49.493453039995856','Casa','Larva,Mosquito','Biovech','Borrifação','',0,1,0,1,1,0,0,1,1,0,1,0,0,0,0);
INSERT INTO `visita` VALUES (114,0,'Visitado','Administrador','2017-11-28 21:02:00','Vila Roberto Monteiro','F','F','3','s/n','Trindade','-16.66813698','-49.493056859999996','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (115,0,'Visitado','Administrador','2017-11-28 21:05:00','Jardim Novo Horizonte','ABRAO MANOEL DA COSTA','04','02','s/n','Trindade','-16.67090366393295','-49.49174380552995','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (116,0,'Visitado','Administrador','2017-11-28 21:09:00','Jardim Novo Horizonte','PADRE MAURILIO FERNANDES','01','01','s/n','Trindade','-16.67135502','-49.4906679','Apartamento','Larva,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (117,0,'Visitado','Administrador','2017-11-28 21:14:00','Setor Serra Dourada','PERCIANA NATAL DA CONCEICAO','1','33','s/n','Trindade','-16.639389','-49.4939169','Deposito','Larva,Ovo','Biovech,Malathion','Nebolização','',0,1,0,1,1,0,0,1,1,0,1,1,0,0,1);
INSERT INTO `visita` VALUES (118,0,'Visitado','Administrador','2017-11-28 21:16:00','Setor Serra Dourada','PERCIANA NATAL DA CONCEICAO','2','1','s/n','Trindade','-16.639678035','-49.49438904','Casa','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,1,0,0,1,1,0,0,1,0,0,1);
INSERT INTO `visita` VALUES (119,0,'Visitado','Administrador','2017-11-28 21:18:00','Setor Serra Dourada','ADELINA DE MORAIS BORGES','3','1','s/n','Trindade','-16.639413734315514','-49.4957979496141','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,1,1,0,0,1,1,0,1,1,0,0,2);
INSERT INTO `visita` VALUES (120,0,'Visitado','Administrador','2017-11-28 21:20:00','Setor Serra Dourada','KATIA ROVANE FERREIRA','03','17','s/n','Trindade','-16.638416505000002','-49.496166','Apartamento','Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,2);
INSERT INTO `visita` VALUES (121,0,'Visitado','Administrador','2017-11-28 21:22:00','Setor Serra Dourada','KATIA ROVANE FERREIRA','2','17','s/n','Trindade','-16.638027525','-49.49559648','Apartamento','Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (122,0,'Visitado','Administrador','2017-11-28 21:23:00','Setor Serra Dourada','KATIA ROVANE FERREIRA','1','16','s/n','Trindade','-16.637661','-49.49505792','Apartamento','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,10);
INSERT INTO `visita` VALUES (123,0,'Visitado','Administrador','2017-11-28 21:29:00','Setor Serra Dourada','DOIS','1','25','s/n','Trindade','-16.637928518091556','-49.49445550037899','Apartamento','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (124,0,'Visitado','Administrador','2017-11-28 21:30:00','Setor Serra Dourada','ELZA DE FREITAS','1','3','s/n','Trindade','-16.63864452','-49.49467938','Apartamento','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (125,0,'Visitado','Administrador','2017-11-28 21:32:00','Setor Serra Dourada','MARINA DE OLIVEIRA','3','20','s/n','Trindade','-16.639064505','-49.49530398','Apartamento','Mosquito,Ovo','Biovech,Malathion','Borrifação,Nebolização','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,2);
INSERT INTO `visita` VALUES (126,0,'Visitado','Administrador','2017-11-28 21:34:00','Setor Serra Dourada','ELZA DE FREITAS','2','21','s/n','Trindade','-16.638689024999998','-49.4947494','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (127,0,'Visitado','Administrador','2017-11-28 21:37:00','Setor Serra Dourada','OTILIA F ALMEIDA','12','8','s/n','Trindade','-16.632873','-49.49940042','Casa','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,1,1,0,0,1,1,1,0,2,0,0,1);
INSERT INTO `visita` VALUES (128,0,'Visitado','Administrador','2017-11-28 21:39:00','Setor Serra Dourada','JOSEFA SILVA VIERA','10','18','s/n','Trindade','-16.634957985','-49.498660619999995','Casa','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,1,1,0,0,1,1,0,1,1,0,0,10);
INSERT INTO `visita` VALUES (129,0,'Visitado','Administrador','2017-11-28 21:41:00','Setor Serra Dourada','MARINA DE OLIVEIRA','12','2','s/n','Trindade','-16.633863495','-49.49902944','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (130,0,'Visitado','Administrador','2017-11-28 21:43:00','Setor Serra Dourada','ELZA DE FREITAS','12','20','s/n','Trindade','-16.633506015000002','-49.498542','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (131,0,'Visitado','Administrador','2017-11-28 21:46:00','Setor Serra Dourada','JOSEFA SILVA VIEIRA','12','34','s/n','Trindade','-16.634496509999998','-49.49817102','Deposito','Mosquito,Ovo','Biovech,Malathion','Borrifação,Nebolização','',0,1,0,1,1,0,0,1,1,0,1,1,0,0,1);
INSERT INTO `visita` VALUES (132,0,'Visitado','Administrador','2017-11-28 21:49:00','Setor Serra Dourada','LAUDELINA TOLEDO','7','17','s/n','Trindade','-16.635914505000002','-49.4962974','Deposito','Larva,Mosquito,Ovo','Bendiocarb,Biovech,Malathion','Borrifação,Nebolização','',0,1,0,1,1,0,0,1,1,0,1,2,0,0,2);
INSERT INTO `visita` VALUES (133,0,'Visitado','Administrador','2017-11-28 21:50:00','Setor Serra Dourada','LAUDELINA TOLEDO','9','36','s/n','Trindade','-16.63624998','-49.496891579999996','Deposito','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,0,1,0,0,1,1,0,0,1,0,0,1);
INSERT INTO `visita` VALUES (134,0,'Visitado','Administrador','2017-11-28 21:52:00','Setor Serra Dourada','LAUDELINA TOLEDO','6','17','s/n','Trindade','-16.63631649','-49.49684406','Deposito','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (135,0,'Visitado','Administrador','2017-11-28 21:54:00','Setor Serra Dourada','ELZA DE FREITAS','7','2','s/n','Trindade','-16.636928985','-49.49593146','Loja','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (136,0,'Visitado','Administrador','2017-11-28 21:56:00','Setor Serra Dourada','IDALINA MARIA DE ALMEIDA','4','3','s/n','Trindade','-16.63829001','-49.49740638','Loja','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (137,0,'Visitado','Administrador','2017-11-28 21:58:00','Setor Serra Dourada','ADELINA DE MORAIS BORGES','5','3','s/n','Trindade','-16.63770839765473','-49.49707048087842','Loja','Mosquito,Ovo','Bendiocarb,Biovech','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,2);
INSERT INTO `visita` VALUES (138,0,'Visitado','Administrador','2017-11-28 22:12:00','Jardim Imperial','CENTO E QUARENTA E NOVE','37','24','s/n','Trindade','-16.65185949','-49.51616346','Loja','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,1,0,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (139,0,'Visitado','Administrador','2017-11-28 22:15:00','Jardim Imperial','CENTO E QUARENTA E NOVE','40','4','s/n','Trindade','-16.6523897295137','-49.51550299828689','Loja','Ovo,Pupa','Bendiocarb,Biovech','Nebolização','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (140,0,'Visitado','Administrador','2017-11-28 22:16:00','Jardim Imperial','CENTO E CINQUENTA E CINCO','40','36','s/n','Trindade','-16.65194669114303','-49.51507557563176','Loja','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (141,0,'Visitado','Administrador','2017-11-28 22:19:00','Jardim Imperial','CENTO E CINQUENTA E CINCO','43','1','s/n','Trindade','-16.652574989999998','-49.51429992','Loja','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,1,0,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (142,0,'Visitado','Administrador','2017-11-28 22:21:00','Jardim Imperial','CENTO E QUARENTA E CINCO','44','1','s/n','Trindade','-16.651409985','-49.51550537999999','Apartamento','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (143,0,'Visitado','Administrador','2017-11-28 22:24:00','Jardim Imperial','CENTO E VINTE','46','20','s/n','Trindade','-16.650927494999998','-49.51449684','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,1,0,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (144,0,'Visitado','Administrador','2017-11-28 22:26:00','Jardim Imperial','CENTO E VINTE','47','23','s/n','Trindade','-16.65087102','-49.5145575','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (145,0,'Visitado','Administrador','2017-11-28 22:31:00','Jardim Imperial','CENTO E CIQUENTA E NOVE','47','15','s/n','Trindade','-16.650233505','-49.51476702','Apartamento','Larva,Mosquito','Bendiocarb,Pyriproxyfen','Borrifação','',0,1,1,0,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (146,0,'Visitado','Administrador','2017-11-28 22:33:00','Jardim Imperial','CENTO E CIQUENTA E NOVE','46','26','s/n','Trindade','-16.651363005','-49.5135414','Apartamento','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,1,0,0,0,0,1,1,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (147,0,'Visitado','Administrador','2017-11-28 22:35:00','Jardim Imperial','CENTO E CIQUENTA E NOVE','49','1','s/n','Trindade','-16.651308014999998','-49.5134829','Apartamento','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,0,0,0,0,1,11,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (148,0,'Visitado','Administrador','2017-11-28 22:38:00','Jardim Imperial','CENTO E VINTE','49','16','s/n','Trindade','-16.650424035','-49.5139905','Casa','Mosquito,Ovo','Biovech,Malathion','Borrifação,Nebolização','',0,1,1,0,0,1,1,0,1,1,0,0,1,1,0);
INSERT INTO `visita` VALUES (149,0,'Visitado','Administrador','2017-11-28 22:42:00','Jardim Imperial','CENTO E VINTE','50','22','s/n','Trindade','-16.650364500000002','-49.51405098','Casa','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,1,0,1,0,1,0,1,1,0,1,0,1,0);
INSERT INTO `visita` VALUES (150,0,'Visitado','Administrador','2017-11-28 22:44:00','Jardim Imperial','CENTO E SESSENTA E TRES','50','15','s/n','Trindade','-16.64973351','-49.51426554','Casa','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,1,0,1,0,0,0,1,1,0,1,0,0,0);
INSERT INTO `visita` VALUES (151,0,'Visitado','Administrador','2017-11-28 22:48:00','Jardim Imperial','CENTO E SESSENTA E TRES','49','22','s/n','Trindade','-16.650880020000002','-49.5130446','Apartamento','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,0,0,0,0,1,1,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (152,0,'Visitado','Administrador','2017-11-28 22:50:00','Jardim Imperial','CENTO E SESSENTA E CINCO','52','15','s/n','Trindade','-16.6492845','-49.51380798','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,0,0,1,0,0,0,1,0,0,1,0,0,0);
INSERT INTO `visita` VALUES (153,0,'Visitado','Administrador','2017-11-28 22:51:00','Jardim Imperial','CENTO E CIQUENTA E SETE','45','20','s/n','Trindade','-16.652679525','-49.51205496','Loja','Mosquito','Biovech','Borrifação','',0,1,0,0,0,0,1,0,1,0,0,0,0,1,0);
INSERT INTO `visita` VALUES (154,0,'Visitado','Administrador','2017-11-28 22:53:00','Jardim Imperial','CENTO E DEZ','34','28','s/n','Trindade','-16.655730525000003','-49.512550499999996','Loja','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,1,0,0,0,1,0,1,1,0,0,0,1,0);
INSERT INTO `visita` VALUES (155,0,'Visitado','Administrador','2017-11-28 22:55:00','Jardim Imperial','CENTO E CIQUENTABE','38','22','s/n','Trindade','-16.655847951359082','-49.510919562547485','Loja','Larva,Mosquito','Bendiocarb,Malathion','Borrifação,Nebolização','',0,1,0,1,0,0,1,0,1,1,0,0,0,1,0);
INSERT INTO `visita` VALUES (156,0,'Visitado','Administrador','2017-11-28 23:01:00','Morada do Bosque','DOS TARUMAS','39','07','s/n','Trindade','-16.644375495','-49.433024880000005','Casa','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,1,0,1,0,0,0,0,1,0);
INSERT INTO `visita` VALUES (157,0,'Visitado','Administrador','2017-11-28 23:03:00','Morada do Bosque','JOSE MANOEL DA SILVEIRA','09','02','s/n','Trindade','-16.64511799498515','-49.431106980006646','Apartamento','Mosquito,Ovo','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,0,1,0,1,0,0,0,0,1,0);
INSERT INTO `visita` VALUES (158,0,'Visitado','Administrador','2017-11-28 23:06:00','Morada do Bosque','DONA OLIVIA MARIA','08','04','s/n','Trindade','-16.64500387912495','-49.43045413511623','Casa','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,10,0,0,0,1);
INSERT INTO `visita` VALUES (159,0,'Visitado','Administrador','2017-11-28 23:08:00','Morada do Bosque','JOSE MANOEL DA SILVEIRA','08','14','s/n','Trindade','-16.645101975','-49.431024539999996','Casa','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,0,0,1,0,0,1,0,0,0,1,0,0);
INSERT INTO `visita` VALUES (160,0,'Visitado','Administrador','2017-11-28 23:10:00','Morada do Bosque','DONA MARIQUINHA','04','14','s/n','Trindade','-16.644793741585392','-49.42889895590056','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação','',0,1,1,0,0,0,0,1,0,1,0,0,0,0,1);
INSERT INTO `visita` VALUES (161,0,'Visitado','Administrador','2017-11-28 23:13:00','Morada do Bosque',',DONA MARIQUINHA','06','08','s/n','Trindade','-16.644803845518744','-49.428993204995564','Casa','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,1,0,0,0,1,0,1,1,0,0,0,1,0,1);
INSERT INTO `visita` VALUES (162,0,'Visitado','Administrador','2017-11-28 23:14:00','Morada do Bosque','ISABEL ESPERDIAO JORGE','06','25','s/n','Trindade','-16.644868965','-49.42966356','Casa','Larva,Mosquito','Biovech,Malathion','Borrifação,Nebolização','',0,1,0,1,0,0,1,0,1,0,1,0,0,1,0);
INSERT INTO `visita` VALUES (163,0,'Visitado','Administrador','2017-11-28 23:18:00','Morada do Bosque','DONA OLIVIA MARIA','07','01','s/n','Trindade','-16.64498745721877','-49.43036213978498','Casa','Mosquito,Ovo,Pupa','Bendiocarb,Malathion,Pyriproxyfen','Borrifação,Nebolização','',0,1,1,0,0,1,0,1,1,1,0,0,1,0,1);
INSERT INTO `visita` VALUES (164,0,'Visitado','Administrador','2017-11-28 23:21:00','Morada do Bosque','DONA RACHIDE AUAD','09','11','s/n','Trindade','-16.644924830501076','-49.431769978367214','Apartamento','Mosquito','Malathion','Borrifação','',0,1,0,0,0,0,0,0,1,0,0,0,0,0,0);
INSERT INTO `visita` VALUES (165,0,'Visitado','Administrador','2017-11-28 23:22:00','Morada do Bosque','ANTONIO ARAUJO','09','07','s/n','Trindade','-16.64552102628985','-49.431666182791695','Apartamento','Larva,Mosquito','Bendiocarb,Malathion','Borrifação','',0,0,0,0,0,0,0,1,0,0,0,0,0,0,1);
INSERT INTO `visita` VALUES (166,0,'Visitado','Administrador','2017-11-28 23:25:00','Morada do Bosque','MANOEL FERNANDES','04','07','s/n','Trindade','-16.644735549893692','-49.42827187848232','Apartamento','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,0,0,1,0,0,0,1,0,0,1,0,0,0,1);
INSERT INTO `visita` VALUES (167,0,'Visitado','Administrador','2017-11-28 23:26:00','Morada do Bosque','JOSE FERNANDES ALVES','02','18','s/n','Trindade','-16.646630985','-49.428891','Apartamento','Mosquito,Ovo','Biovech,Malathion','Borrifação','',0,1,0,1,0,0,0,1,1,0,1,0,0,0,1);
/*!40000 ALTER TABLE `visita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbendemic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-28 23:44:35
