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
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `idcidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  PRIMARY KEY (`idcidade`),
  UNIQUE KEY `idcidade_UNIQUE` (`idcidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncia`
--

DROP TABLE IF EXISTS `denuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denuncia` (
  `iddenuncia` int(11) NOT NULL AUTO_INCREMENT,
  `data_denuncia` datetime NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `quadra` varchar(5) DEFAULT NULL,
  `lote` varchar(5) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `cidade` varchar(30) NOT NULL,
  `tp_imovel` varchar(15) NOT NULL,
  `desc_den` varchar(300) NOT NULL,
  `denunciante` varchar(255) NOT NULL,
  `cep` varchar(20) NOT NULL,
  PRIMARY KEY (`iddenuncia`),
  UNIQUE KEY `iddenuncia_UNIQUE` (`iddenuncia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncia`
--

LOCK TABLES `denuncia` WRITE;
/*!40000 ALTER TABLE `denuncia` DISABLE KEYS */;
INSERT INTO `denuncia` (`iddenuncia`, `data_denuncia`, `bairro`, `rua`, `quadra`, `lote`, `numero`, `cidade`, `tp_imovel`, `desc_den`, `denunciante`, `cep`) VALUES (1,'2017-06-14 06:45:00','Setor Aeroporto','Rua Antonio Carlos','10','8','1','Goiania','Apartamento','A casa dos fundos está com muitos focos de dengue.','Maria Antonieta da Silva 2','75400000'),(2,'2017-07-03 00:00:00','Centro','Rua 1','10','11','2','Goiania','Apartamento','No condomínio, a caixa d\'agua está cheia de larvas.','Leonardo José','74000000'),(3,'2017-07-03 00:00:00','Setor Goiá','Rua X','34','12','1','Goiania','Loja','O vizinho de frente acumula água nos vasos de planta.','João Nascimento','74000000'),(4,'2017-07-04 00:00:00','Leste Vila Nova','Rua X','10','10','10','Goiania','Apartamento','O condomínio possui muitos focos de mosquito da dengue.','Mogli Cunhal','74000000'),(5,'2017-07-13 05:00:00','Nova Vila','Rua A','10','10','10','Goiania','Casa','José Peixoto','José Peixoto','74000000'),(6,'2017-07-05 06:00:00','Setor Alto da Glória','Rua AAA','10','11','50','Goiania','Apartamento','Muitos pneus acumulando água na rua.','Adriana Silveira','74000000'),(7,'2017-07-07 00:00:00','Setor Jaó','AAA','1','1','1','Aparecida de Goiânia','Casa','Muitos focos na rua.','Marcos Daniel da Silva','10'),(8,'2017-07-27 00:00:00','Setor Garavelo','Rua 3','14','11','','Aparecida de Goiânia','Apartamento','Teste','Maria Antonieta','74850330');
/*!40000 ALTER TABLE `denuncia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estagio`
--

DROP TABLE IF EXISTS `estagio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estagio` (
  `idnew_table` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`idnew_table`),
  UNIQUE KEY `idnew_table_UNIQUE` (`idnew_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estagio`
--

LOCK TABLES `estagio` WRITE;
/*!40000 ALTER TABLE `estagio` DISABLE KEYS */;
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
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`idfuncao`),
  UNIQUE KEY `idfuncao_UNIQUE` (`idfuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
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
  `funcao` varchar(20) CHARACTER SET utf8 NOT NULL,
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
INSERT INTO `funcionario` (`idfuncionario`, `matricula`, `nome`, `funcao`, `email`, `senha`) VALUES (1,'admin','Administrador','Administrador','administrador@sysendemic.com','admin'),(2,'100001','Sabrina Carneiro','Atendente','sabrina@sysendemic.com','123'),(3,'100002','Henrique Coimbra','Agente','henrique@sysendemic.com','123'),(4,'100003','Eduardo Braz','Agente','eduardo@sysendemic.com','123'),(5,'100004','Marieta Severo','Atendente','marieta@sysendemic.com','123'),(6,'100005','Lorena Abrahão','Atendente','lorena@sysendemic.com','123'),(7,'100006','Márcio Coimbra','Agente','marcio@sysendemic.com','123'),(8,'100007','Cinara de Jesus','Agente','cinara@sysendemic.com','123'),(9,'100008','Marcos Nascimento Pereira','Agente','marcos@sysendemic.com','123'),(10,'100009','Lourenço Peixoto','Atendente','lourenco@sysendemic.com','123'),(11,'100010','Moisés Assunção','Agente','moises@sysendemic.com','123'),(12,'100011','Maria de Fátima da Silva','Atendente','maria@sysendemic.com','123'),(13,'100012','Carlos Daniel Menezes','Atendente','carlos@sysendemic.com','123'),(14,'100013','Zélia Costa','Agente','zelia@sysendmic.com','123'),(15,'100014','Talita Queróz','Agente','talita@sysendmic.com','123'),(16,'100015','Bruna Nunes','Agente','bruna@sysendemic.com','123'),(17,'101','Thyeres Nahum','Administrador','thyres@sousa.com','123'),(18,'102','Thyeres Sousa','Administrador','thyres@sousa.com','123');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imovel` (
  `idimovel` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idimovel`),
  UNIQUE KEY `idimovel_UNIQUE` (`idimovel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipofoco`
--

DROP TABLE IF EXISTS `tipofoco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipofoco` (
  `idtipofoco` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idtipofoco`),
  UNIQUE KEY `idtipofoco_UNIQUE` (`idtipofoco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipofoco`
--

LOCK TABLES `tipofoco` WRITE;
/*!40000 ALTER TABLE `tipofoco` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipofoco` ENABLE KEYS */;
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
  `quadra` varchar(5) NOT NULL,
  `lote` int(11) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `cep` int(11) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `tp_imovel` varchar(15) NOT NULL,
  `estagio` varchar(10) NOT NULL,
  `tp_larvicida` varchar(10) NOT NULL,
  `ac_corretiva` varchar(15) NOT NULL,
  `local_foco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvisita`),
  UNIQUE KEY `idvisita_UNIQUE` (`idvisita`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
INSERT INTO `visita` (`idvisita`, `agente`, `data_visita`, `bairro`, `rua`, `quadra`, `lote`, `numero`, `cep`, `cidade`, `latitude`, `longitude`, `tp_imovel`, `estagio`, `tp_larvicida`, `ac_corretiva`, `local_foco`) VALUES (1,'Henrique Coimbra','2017-02-06 00:11:00','Negrão de Lima','Rua Dona','25',2,'sn',74650130,'Goiânia','-16.652459','-49.244200','Casa','Pupa','Tipo 2','Borrifacao','garrafas plásticas'),(2,'Eduardo Braz','2017-03-13 15:00:00','Morada Nova','TEste','20',16,'2',756000000,'Senador Canedo','-16.695039','-49.101233','Apartamento','Larva','Tipo 1','Borrifação','caixa d\'agua'),(3,'Márcio Coimbra','2017-04-11 00:00:00','Setor dos Arcos','Rua Rodriguez Peixoto','10',11,'sn',74000000,'Aparecida de Goiânia','-16.824134','-49.253728','Deposito','Mosquito','Tipo 3','Borrifação','espalhado por todo depósito'),(4,'Cinara de Jesus','2017-07-03 17:00:00','Setor Aeroporto','Avenida Independência','20',12,'10',74000000,'Goiânia','-16.669820','-49.276510','Loja','Ovo','Tipo 1','Nebolização',''),(5,'Marcos Nascimento Pereira','2017-05-09 00:00:00','Setor Jaó','Alameda Couto Paranhos','10',47,'sn',74000000,'Goiânia','-16.643337','-49.235922','Sala','Mosquito','Tipo 3','Borrifação','vasos'),(6,'Moisés Assunção','2017-02-20 00:00:00','Santa Genoveva','Rua Alberto Gonçalez','54',11,'2',74001000,'Goiânia','-16.633160','-49.236371','Apartamento','Pupa','Tipo 3','Borrifação','vasos'),(9,'Bruna Nunes','2017-05-29 00:00:00','Negrão de Lima','Rua das Flores','10',11,'12',74000000,'Aparecida de Goiânia','-16.751548','-49.293462','Casa','Pupa','Tipo 2','Nebolização',''),(11,'Administrador','2017-07-27 00:00:00','Negrão de Lima','Avenida Antonio Alves 33','11',11,'1',11111111,'Goiânia','11','111','Deposito','Larva','Tipo 1','Nebolização','');
/*!40000 ALTER TABLE `visita` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-27 17:12:22
