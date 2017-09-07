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
INSERT INTO `ac_corretiva` (`idac_corretiva`, `nome_ac_corretiva`) VALUES (2,'Borrifação'),(1,'Nebolização');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` (`idbairro`, `nome_bairro`, `nome_cidade`) VALUES (1,'Setor Central','Goiânia'),(3,'Setor Monte Sinai','Trindade'),(4,'Vila Roberto Monteiro','Trindade'),(5,'Jardim Novo Horizonte','Goiânia'),(6,'Setor Serra Dourada','Trindade'),(8,'Morada do Bosque','íaiá'),(9,'Setor Comercial','Senador Canedo'),(10,'Conjunto Uirapuru','Senador Canedo'),(11,'Vila São sebastião ','Senador Canedo'),(12,'São francisco','Senador Canedo'),(13,'Vila Matinha','Senador Canedo');
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
) ENGINE=InnoDB AUTO_INCREMENT=1732 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`idcidade`, `nome_cidade`) VALUES (2,'Goiânia'),(3,'Senador Canedo'),(4,'Trindade'),(1693,'Aparecida de Goiânia'),(1727,'íaiággg'),(1729,'TEstore Tero'),(1731,'teste444');
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
INSERT INTO `estagio` (`idestagio`, `nome_estagio`) VALUES (2,'Larva'),(4,'Mosquito'),(1,'Ovo'),(3,'Pupa');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
INSERT INTO `funcao` (`idfuncao`, `nome_funcao`) VALUES (1,'Administrador'),(2,'Agente'),(3,'Atendente'),(4,'Convidado'),(8,'thyeres');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`idfuncionario`, `matricula`, `nome`, `funcao`, `email`, `senha`) VALUES (1,'admin','Administrador','Administrador','administrador@sysendemic.com','admin'),(2,'100001','Sabrina Carneiro','Administrador','sabrina@sysendemic.com','123'),(3,'100002','Henrique Coimbra','Agente','henrique@sysendemic.com','123'),(4,'100003','Eduardo Braz','Agente','eduardo@sysendemic.com','123'),(5,'100004','Marieta Severo','Atendente','marieta@sysendemic.com','123'),(6,'100005','Lorena Abrahão','Atendente','lorena@sysendemic.com','123'),(7,'100006','Márcio Coimbra','Agente','marcio@sysendemic.com','123'),(8,'100007','Cinara de Jesus','Agente','cinara@sysendemic.com','123'),(9,'100008','Marcos Nascimento Pereira','Agente','marcos@sysendemic.com','123'),(10,'100009','Lourenço Peixoto','Atendente','lourenco@sysendemic.com','123'),(11,'100010','Moisés Assunção','Agente','moises@sysendemic.com','123'),(12,'100011','Maria de Fátima da Silva','Atendente','maria@sysendemic.com','123'),(13,'100012','Carlos Daniel Menezes','Atendente','carlos@sysendemic.com','123'),(14,'100013','Zélia Costa','Agente','zelia@sysendemic.com','123'),(15,'100014','Talita Queróz','Agente','talita@sysendemic.com','123'),(16,'100015','Bruna Nunes','Agente','bruna@sysendemic.com','123'),(17,'101','Thyeres Nahum','Administrador','thyeres@endemic.com','123'),(18,'teste','Usuario Teste','Atendente','usuarioteste@sysendemic.com','123');
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
  PRIMARY KEY (`idnotificacao`),
  UNIQUE KEY `iddenuncia_UNIQUE` (`idnotificacao`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacao`
--

LOCK TABLES `notificacao` WRITE;
/*!40000 ALTER TABLE `notificacao` DISABLE KEYS */;
INSERT INTO `notificacao` (`idnotificacao`, `data_notificacao`, `bairro`, `rua`, `quadra`, `lote`, `numero`, `cidade`, `tp_imovel`, `desc_notificacao`) VALUES (4,'2017-07-04 00:00:00','Leste Vila Nova','Rua X','10','10','10','íaiá','Apartamento','O condomínio possui muitos focos de mosquito da dengue.'),(5,'2017-07-13 05:00:00','Nova Vila','Rua A','10','10','10','Goiânia','Casa','José Peixoto'),(6,'2017-07-05 06:00:00','Setor Alto da Glória','Rua AAA','10','11','50','Goiânia','Apartamento','Muitos pneus acumulando água na rua.'),(7,'2017-07-07 00:00:00','Setor Jaó','AAA','1','1','1','Aparecida de Goiânia','Casa','Muitos focos na rua.'),(8,'2017-07-27 00:00:00','Setor Garavelo','Rua 3','14','11','S/N','Aparecida de Goiânia','Apartamento','Teste'),(10,'2017-08-02 00:00:00','Setor Serrinha','Rua dos Açores','17','14','1','Goiânia','Casa','Testede '),(11,'2017-08-02 00:00:00','Setor Oeste','Rua 14','14','14','1','Aparecida de Goiânia','Loja','Fulano de tal Sabe'),(12,'2017-08-27 00:00:00','Setor Central','RUA DOS TESTE','33','23','22','Aparecida de Goiânia','Apartamento','CHEIO DE MOSQUITOS'),(14,'2017-09-06 10:12:00','Setor Central','Rua 23','10','10','11','Goiânia','Deposito','teste');
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
INSERT INTO `tipoimovel` (`idimovel`, `nome_tpimovel`) VALUES (1,'Apartamento'),(2,'Casa'),(3,'Deposito'),(4,'Loja'),(5,'Lote'),(6,'Sala Comercial');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamento`
--

LOCK TABLES `tratamento` WRITE;
/*!40000 ALTER TABLE `tratamento` DISABLE KEYS */;
INSERT INTO `tratamento` (`idtratamento`, `nome_tratamento`, `tp_tratamento`) VALUES (7,'Larvicida 1','Larvicida'),(8,'Larvicida 2','Larvicida'),(9,'Adulticida 1','Adulticida');
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
  `estagio` varchar(25) DEFAULT NULL,
  `tp_larvicida` varchar(50) DEFAULT NULL,
  `ac_corretiva` varchar(30) DEFAULT NULL,
  `local_foco` varchar(45) DEFAULT NULL,
  `foco` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idvisita`),
  UNIQUE KEY `idvisita_UNIQUE` (`idvisita`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
INSERT INTO `visita` (`idvisita`, `agente`, `data_visita`, `bairro`, `rua`, `quadra`, `lote`, `numero`, `cidade`, `latitude`, `longitude`, `tp_imovel`, `estagio`, `tp_larvicida`, `ac_corretiva`, `local_foco`, `foco`) VALUES (2,'Eduardo Braz','2017-03-13 15:00:00','Morada Nova','TEste','20','16','2','Senador Canedo','-16.695039','-49.101233','Apartamento','Larva','Tipo 1','Borrifação','caixa d\'agua',0),(3,'Márcio Coimbra','2017-04-11 00:00:00','Setor dos Arcos','Rua Rodriguez Peixoto','10 ','11','sn','Aparecida de Goiânia','-16.824134','-49.253728','Deposito','Mosquito,Larva','Tipo 3','Borrifação','espalhado por todo depósito',0),(4,'Cinara de Jesus','2017-07-03 17:00:00','Setor Aeroporto','Avenida Independência','20 ','12','10','Goiânia','-16.669820','-49.276510','Loja','Ovo,Larva,Mosquito','Adulticida 1,Larvicida 1,Larvicida 2','Nebolização','',0),(5,'Marcos Nascimento Pereira','2017-05-09 00:00:00','Setor Jaó','Alameda Couto Paranhos','10','47','sn','Goiânia','-16.643337','-49.235922','Sala','Mosquito','Tipo 3','Borrifação','vasos',0),(6,'Moisés Assunção','2017-02-20 00:00:00','Santa Genoveva','Rua Alberto Gonçalez','54 ','11','2','Goiânia','-16.633160','-49.236371','Loja','Pupa','Tipo 3','Borrifação','vasos',0),(9,'Bruna Nunes','2017-05-29 00:00:00','Negrão de Lima','Rua das Flores','10','11','12','Aparecida de Goiânia','-16.751548','-49.293462','Casa','Pupa','Tipo 2','Nebolização','',0),(11,'Administrador','2017-07-27 00:00:00','Negrão de Lima','Avenida Antonio Alves 33','11','11','1','Goiânia','-16.652455','-49.244211','Deposito','Larva','Tipo 1','Nebolização','',0),(12,'Administrador','2017-08-04 08:00:00','Jardim da Luz','Alimrante Barroso','12','12','S/N','Goiânia','-16.7291895','-49.2357745','Casa','Larva','Tipo 2','Nebolização','Em toda a casa',0),(13,'Administrador','2017-08-27 00:00:00','Setor Central','Rua dos Amores','12','1','ss','Goiânia','-16.7537101','-49.208909299999995','nullCasaCasa','Larva,Mosquito','nullAdulticida 1,Larvicida 1','nullBorrifação,Nebolização','',0),(14,'Administrador','2017-08-27 00:00:00','Setor Central','Rua dos Amores','12 ','1','ss','Aparecida de Goiânia','-16.7537101','-49.208909299999995','Apartamento','Larva','Adulticida 1','Borrifação,Nebolização','',0),(15,'Administrador','2017-08-27 00:00:00','Setor Sul','Rua dos Amores','12','1','ss','Goiânia','-16.7537101','-49.208909299999995','Casa','Larva,Mosquito','Adulticida 1','Borrifação,Nebolização','',0),(16,'Administrador','2017-08-27 00:00:00','Setor Sul','Rua dos Amores','12','ee','ee','Aparecida de Goiânia','-16.7537101','-49.208909299999995','Deposito','Mosquito,Ovo','Adulticida 1,Larvicida 1','Borrifação,Nebolização','',0),(17,'Administrador','2017-08-27 00:00:00','Setor Central','RUA DOS TESTE','12','1','44','Goiânia','-16.7537101','-49.208909299999995','Casa','Mosquito,Ovo','Adulticida 1,Larvicida 1','Borrifação,Nebolização','Teste Teste',0),(18,'Administrador','2017-08-28 10:00:00','Setor Sul','Rua 23','10 ','14','10','Aparecida de Goiânia','-16.686891199999998','-49.2647943','Loja','Larva,Mosquito,Ovo','Adulticida 1','Borrifação','Teste',0);
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

-- Dump completed on 2017-09-06 15:45:39
