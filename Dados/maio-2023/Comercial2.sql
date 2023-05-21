CREATE DATABASE  IF NOT EXISTS `comercial2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `comercial2`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: comercial2
-- ------------------------------------------------------
-- Server version	5.5.20

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
-- Table structure for table `tbcaixa`
--

DROP TABLE IF EXISTS `tbcaixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcaixa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora` timestamp NULL DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idconta` int(11) DEFAULT NULL,
  `valor` decimal(15,2) DEFAULT '0.00',
  `tipo` char(1) COLLATE latin1_general_ci DEFAULT 'R',
  `forma_pagamento` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `descricao` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `idvenda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbcaixa1` (`idconta`),
  KEY `fk_tbcaixa2` (`idusuario`),
  CONSTRAINT `fk_tbcaixa1` FOREIGN KEY (`idconta`) REFERENCES `tbconta` (`idconta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbcaixa2` FOREIGN KEY (`idusuario`) REFERENCES `tbusuario` (`idtbusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcaixa`
--

LOCK TABLES `tbcaixa` WRITE;
/*!40000 ALTER TABLE `tbcaixa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcaixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcartao`
--

DROP TABLE IF EXISTS `tbcartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcartao` (
  `idcartao` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `adm` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`idcartao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcartao`
--

LOCK TABLES `tbcartao` WRITE;
/*!40000 ALTER TABLE `tbcartao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcategoria`
--

DROP TABLE IF EXISTS `tbcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcategoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcategoria`
--

LOCK TABLES `tbcategoria` WRITE;
/*!40000 ALTER TABLE `tbcategoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcheque`
--

DROP TABLE IF EXISTS `tbcheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcheque` (
  `idtbcheque` int(11) NOT NULL AUTO_INCREMENT,
  `numcheque` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `banco` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agencia` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `conta` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tipo_cheque` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'P' COMMENT 't - terceiros, p - proprio',
  `documento_terceiro` varchar(14) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `valor` decimal(15,2) DEFAULT '0.00',
  `data_vencimento` date DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `nome_terceiro` varchar(60) DEFAULT NULL,
  `idfornecedor` int(11) DEFAULT NULL COMMENT 'no caso do cheque ser repassado',
  `tipo_chque` char(1) DEFAULT 'P' COMMENT 'proprio ou terceiro',
  `status` char(1) DEFAULT 'P',
  `obs` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idtbcheque`),
  KEY `fk_tbcheque_1_idx` (`idcliente`),
  KEY `fk_tbcheque_2_idx` (`idfornecedor`),
  CONSTRAINT `fk_tbcheque_1` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbcheque_2` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcheque`
--

LOCK TABLES `tbcheque` WRITE;
/*!40000 ALTER TABLE `tbcheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcliente`
--

DROP TABLE IF EXISTS `tbcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcliente` (
  `codcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `documento` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `endereco` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `bairro` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `cidade` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `uf` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `telefone` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `celular` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `cep` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `dtaniversario` date DEFAULT NULL,
  `dtcadastro` date DEFAULT NULL,
  `dtalteracao` date DEFAULT NULL,
  `salario` decimal(15,2) DEFAULT NULL,
  `obs` text COLLATE latin1_general_ci,
  `fantasia` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `nome_contato` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tel1_contato` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tel2_contato` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email_contato` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `situacao` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `status_abo` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `motivo` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `inscricao_estadual` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `inscricao_municipal` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `certificados` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `endereco_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `cidade_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `uf_fat` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `bairro_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `cep_fat` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `referencia_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo_frete` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `prazo_pagamento` int(11) DEFAULT NULL,
  `transportadora` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo_pagamento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL,
  `dtultima_visita` date DEFAULT NULL,
  `dtultima_campanha` date DEFAULT NULL,
  `dtproximo_contato` date DEFAULT NULL,
  `dtproxima_visita` date DEFAULT NULL,
  `dtultimo_contato` date DEFAULT NULL,
  `dtultima_compra` date DEFAULT NULL,
  `referencia` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `nome_contato2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tel1_contato2` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tel2_contato2` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email_contato2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `margem_lucro_adicional` decimal(15,2) DEFAULT NULL,
  `atraso_medio` int(11) DEFAULT NULL,
  `sexo` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `codgarra` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `complemento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `numero` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `complemento_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `numero_fat` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `matricula` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `prefeitura` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `idprefeitura` int(11) DEFAULT NULL,
  PRIMARY KEY (`codcliente`),
  UNIQUE KEY `documento_UNIQUE` (`documento`),
  KEY `fk_tbcliente1_idx` (`idprefeitura`),
  CONSTRAINT `fk_tbcliente1` FOREIGN KEY (`idprefeitura`) REFERENCES `tbcliente` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcliente`
--

LOCK TABLES `tbcliente` WRITE;
/*!40000 ALTER TABLE `tbcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcliente_preco`
--

DROP TABLE IF EXISTS `tbcliente_preco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcliente_preco` (
  `idcliente` int(11) NOT NULL,
  `idproduto` int(11) NOT NULL,
  `preco` decimal(15,2) NOT NULL,
  `edital` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idcliente`,`idproduto`),
  KEY `fk_tbcliente_preco2` (`idproduto`),
  CONSTRAINT `fk_tbcliente_preco1` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbcliente_preco2` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcliente_preco`
--

LOCK TABLES `tbcliente_preco` WRITE;
/*!40000 ALTER TABLE `tbcliente_preco` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcliente_preco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbconfigs`
--

DROP TABLE IF EXISTS `tbconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbconfigs` (
  `id` int(11) NOT NULL,
  `razaosocial` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `cnpj` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `endereco` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `bairro` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `cidade` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `uf` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `telefone` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `cep` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `numero` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `complemento` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `cordedit` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `host` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `user_ftp` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `senha_ftp` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `porta_ftp` smallint(6) DEFAULT '21',
  `atualiza_compra_fornecedor` char(1) COLLATE latin1_general_ci DEFAULT 'T',
  `atualizar_valor_compra_produto` char(1) COLLATE latin1_general_ci DEFAULT 'T',
  `processar_cartao_credito` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `descontar_taxa_operadora` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `data_sistema` date DEFAULT NULL,
  `estoque_gasolina` int(11) DEFAULT NULL,
  `site` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `imprime_recibo` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `imprime_sem_visualizar` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `num_copias` smallint(6) DEFAULT '1',
  `cor_fundo` varchar(12) COLLATE latin1_general_ci DEFAULT '$00C38155',
  `valor_min_parcela` decimal(15,2) DEFAULT '40.00',
  `indice_dinheiro` decimal(15,2) DEFAULT '0.00',
  `indice_debito` decimal(15,2) DEFAULT '0.00',
  `indice_credito` decimal(15,2) DEFAULT '0.00',
  `indice_2x` decimal(15,2) DEFAULT '0.00',
  `indice_3x` decimal(15,2) DEFAULT '0.00',
  `indice_4x` decimal(15,2) DEFAULT '0.00',
  `indice_5x` decimal(15,2) DEFAULT '0.00',
  `indice_6x` decimal(15,2) DEFAULT '0.00',
  `exibir_formapg` char(1) COLLATE latin1_general_ci DEFAULT 'T',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbconfigs`
--

LOCK TABLES `tbconfigs` WRITE;
/*!40000 ALTER TABLE `tbconfigs` DISABLE KEYS */;
INSERT INTO `tbconfigs` VALUES (1,'EMPRESA TESTE','00000000000000','RUA MARIANO PROCOPIO ','MARIANO PROCOPIO','JUIZ DE FORA','MG','3232150934','vendas@altapatente.com.br','36035780','1025','01184725000140','3288335244','65535',NULL,NULL,NULL,21,'T','T','F','F',NULL,NULL,'www.altapatente.com.br','F','F',1,'12812629',5.00,0.00,2.10,3.00,3.60,4.10,4.60,5.30,6.20,'F');
/*!40000 ALTER TABLE `tbconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbconta`
--

DROP TABLE IF EXISTS `tbconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbconta` (
  `idconta` int(11) NOT NULL AUTO_INCREMENT,
  `data_lancamento` date NOT NULL,
  `data_vencimento` date DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor` decimal(15,2) DEFAULT '0.00',
  `valor_pago` decimal(15,2) DEFAULT '0.00',
  `desconto` decimal(15,2) DEFAULT '0.00',
  `acrescimo` decimal(15,2) DEFAULT '0.00',
  `forma_pagamento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `idvenda` int(11) DEFAULT NULL,
  `idfornecedor` int(11) DEFAULT NULL,
  `descricao` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `obs` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `parcela` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo` char(1) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'R- receita D - Despesa',
  `usuario_cadastro` int(11) DEFAULT NULL,
  `usuario_pagamento` int(11) DEFAULT NULL,
  `idconta_grupo` int(11) DEFAULT NULL COMMENT 'grava o id(pk) da canta da primeira parcela caso tenha mais de uma',
  `idcartao` int(11) DEFAULT NULL,
  `automatica` char(1) COLLATE latin1_general_ci DEFAULT 'T',
  `numcheque` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `banco` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `agencia` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `conta` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `idgrupoconta` int(11) DEFAULT NULL,
  `documento` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo_cheque` char(1) COLLATE latin1_general_ci DEFAULT 'P' COMMENT 't - terceiros, p - proprio',
  `documento_terceiro` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `idfuncionario` int(11) DEFAULT NULL,
  `encargo` decimal(15,2) NOT NULL DEFAULT '0.00',
  `bonificacao` decimal(15,2) NOT NULL DEFAULT '0.00',
  `salario` decimal(15,2) NOT NULL DEFAULT '0.00',
  `idveiculo` int(11) DEFAULT NULL,
  `idsubgrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idconta`),
  KEY `fk_conta1` (`idvenda`),
  KEY `fk_conta2` (`idcliente`),
  KEY `fk_conta3` (`idfornecedor`),
  KEY `fk_conta4` (`usuario_cadastro`),
  KEY `fk_conta5` (`usuario_pagamento`),
  KEY `fk_conta6` (`idcartao`),
  KEY `fk_conta7` (`idgrupoconta`),
  KEY `fk_conta8` (`idfuncionario`),
  KEY `fk_conta9` (`idveiculo`),
  KEY `fk_conta10_idx` (`idsubgrupo`),
  CONSTRAINT `fk_conta1` FOREIGN KEY (`idvenda`) REFERENCES `tbvenda` (`idvenda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta10` FOREIGN KEY (`idsubgrupo`) REFERENCES `tbsubgrupoconta` (`idsubgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta2` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta3` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta4` FOREIGN KEY (`usuario_cadastro`) REFERENCES `tbusuario` (`idtbusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta5` FOREIGN KEY (`usuario_pagamento`) REFERENCES `tbusuario` (`idtbusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta6` FOREIGN KEY (`idcartao`) REFERENCES `tbcartao` (`idcartao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta7` FOREIGN KEY (`idgrupoconta`) REFERENCES `tbgrupoconta` (`idgrupoconta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta8` FOREIGN KEY (`idfuncionario`) REFERENCES `tbfuncionario` (`idfuncionario`),
  CONSTRAINT `fk_conta9` FOREIGN KEY (`idveiculo`) REFERENCES `tbveiculo` (`idveiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbconta`
--

LOCK TABLES `tbconta` WRITE;
/*!40000 ALTER TABLE `tbconta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbconta_cheque`
--

DROP TABLE IF EXISTS `tbconta_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbconta_cheque` (
  `idconta` int(11) NOT NULL,
  `idcheque` int(11) NOT NULL,
  PRIMARY KEY (`idconta`,`idcheque`),
  KEY `fk_tbconta_cheque1_idx` (`idconta`),
  KEY `fk_tbconta_cheque2_idx` (`idcheque`),
  CONSTRAINT `fk_tbconta_cheque1` FOREIGN KEY (`idconta`) REFERENCES `tbconta` (`idconta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbconta_cheque2` FOREIGN KEY (`idcheque`) REFERENCES `tbcheque` (`idtbcheque`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbconta_cheque`
--

LOCK TABLES `tbconta_cheque` WRITE;
/*!40000 ALTER TABLE `tbconta_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbconta_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbfornecedor`
--

DROP TABLE IF EXISTS `tbfornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbfornecedor` (
  `idfornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `razao` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `cnpj` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `endereco` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `bairro` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `cidade` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `cep` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `uf` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `contato` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tel2` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `site` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `inscricao_estadual` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `dtcadastro` date DEFAULT NULL,
  `dtalteracao` date DEFAULT NULL,
  `fantasia` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `nome_contato` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tel1_contato` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tel2_contato` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email_contato` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `situacao` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `status_abo` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `motivo` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `inscricao_municipal` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `certificados` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `endereco_fat` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cidade_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `uf_fat` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `bairro_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `cep_fat` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `referencia_fat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo_frete` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `prazo_pagamento` int(11) DEFAULT NULL,
  `prazo_medio_entrega` int(11) DEFAULT NULL,
  `plano_contas` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `transportadora` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo_pagamento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL,
  `dtultima_visita` date DEFAULT NULL,
  `dtultima_campanha` date DEFAULT NULL,
  `dtproximo_contato` date DEFAULT NULL,
  `dtultima_compra` date DEFAULT NULL,
  `referencia` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `nome_contato2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tel1_contato2` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tel2_contato2` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email_contato2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `banco1` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `agencia1` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `conta1` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `banco2` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `agencia2` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `conta2` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `banco3` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `conta3` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `agencia3` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `obs` text COLLATE latin1_general_ci,
  `dtproxima_visita` date DEFAULT NULL,
  `dtultimo_contato` date DEFAULT NULL,
  PRIMARY KEY (`idfornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbfornecedor`
--

LOCK TABLES `tbfornecedor` WRITE;
/*!40000 ALTER TABLE `tbfornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbfornecedor_produto`
--

DROP TABLE IF EXISTS `tbfornecedor_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbfornecedor_produto` (
  `idfornecedor` int(11) NOT NULL,
  `idproduto` int(11) NOT NULL,
  `ultima_compra` date DEFAULT NULL,
  `ultimo_valor` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`idfornecedor`,`idproduto`),
  KEY `fk_tbfornecedor_produto2` (`idproduto`),
  KEY `fk_tbfornecedor_produto1` (`idfornecedor`),
  CONSTRAINT `fk_tbfornecedor_produto1` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbfornecedor_produto2` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbfornecedor_produto`
--

LOCK TABLES `tbfornecedor_produto` WRITE;
/*!40000 ALTER TABLE `tbfornecedor_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfornecedor_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbfuncionario`
--

DROP TABLE IF EXISTS `tbfuncionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbfuncionario` (
  `idfuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `endereco` varchar(60) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `salario` decimal(15,2) DEFAULT NULL,
  `idsetor` int(11) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `dtaniversario` date DEFAULT NULL,
  `dtcadastro` date DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  `nome_contato` varchar(100) DEFAULT NULL,
  `tel1_contato` varchar(15) DEFAULT NULL,
  `tel2_contato` varchar(15) DEFAULT NULL,
  `email_contato` varchar(100) DEFAULT NULL,
  `nome_contato2` varchar(100) DEFAULT NULL,
  `tel1_contato2` varchar(15) DEFAULT NULL,
  `tel2_contato2` varchar(15) DEFAULT NULL,
  `email_contato2` varchar(100) DEFAULT NULL,
  `unidade_trabalho` varchar(100) DEFAULT NULL,
  `dtadmissao` date DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `dtexamemedico` date DEFAULT NULL,
  `dtvctoexamemedico` date DEFAULT NULL,
  `dtexameintegracao` date DEFAULT NULL,
  `dtvctoexameintegracao` date DEFAULT NULL,
  `cnhvcto` date DEFAULT NULL,
  `cnhcategoria` varchar(10) DEFAULT NULL,
  `cnhnumero` varchar(40) DEFAULT NULL,
  `banco` varchar(30) DEFAULT NULL,
  `numbanco` int(11) DEFAULT NULL,
  `agencia` varchar(15) DEFAULT NULL,
  `conta` varchar(15) DEFAULT NULL,
  `operacao` varchar(10) DEFAULT NULL,
  `banco2` varchar(30) DEFAULT NULL,
  `numbanco2` int(11) DEFAULT NULL,
  `agencia2` varchar(15) DEFAULT NULL,
  `conta2` varchar(15) DEFAULT NULL,
  `operacao2` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idfuncionario`),
  KEY `fk_tbfuncionario1_idx` (`idsetor`),
  CONSTRAINT `fk_tbfuncionario1` FOREIGN KEY (`idsetor`) REFERENCES `tbsetor` (`idsetor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbfuncionario`
--

LOCK TABLES `tbfuncionario` WRITE;
/*!40000 ALTER TABLE `tbfuncionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfuncionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbgrupoconta`
--

DROP TABLE IF EXISTS `tbgrupoconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbgrupoconta` (
  `idgrupoconta` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `tipo` char(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idgrupoconta`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbgrupoconta`
--

LOCK TABLES `tbgrupoconta` WRITE;
/*!40000 ALTER TABLE `tbgrupoconta` DISABLE KEYS */;
INSERT INTO `tbgrupoconta` VALUES (1,'VENDA DE PRODUTOS','R'),(2,'PAGAMENTOS DIVERSOS','D'),(3,'RECEBIMENTOS DIVERSOS','R'),(4,'PAGAMENTO DE FUNCIONÁRIOS','D'),(5,'CUSTOS FIXOS','D'),(6,'FINANCIAMENTOS','D'),(7,'ALIMENTAÇÃO','D');
/*!40000 ALTER TABLE `tbgrupoconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbkit`
--

DROP TABLE IF EXISTS `tbkit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbkit` (
  `idkit` int(11) NOT NULL AUTO_INCREMENT,
  `codbarras` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `descricao` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `valor_custo` decimal(15,2) DEFAULT '0.00',
  `valor_varejo` decimal(15,2) DEFAULT '0.00',
  `info_adicional` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `est_minimo` int(11) DEFAULT '0',
  `dt_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`idkit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbkit`
--

LOCK TABLES `tbkit` WRITE;
/*!40000 ALTER TABLE `tbkit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbkit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbkit_produto`
--

DROP TABLE IF EXISTS `tbkit_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbkit_produto` (
  `idkit` int(11) NOT NULL,
  `idproduto` int(11) NOT NULL,
  `qtde` int(11) NOT NULL,
  PRIMARY KEY (`idkit`,`idproduto`),
  KEY `fk_kit_produto_1` (`idkit`),
  KEY `fk_kitproduto_1` (`idkit`),
  KEY `fk_kitproduto_2` (`idproduto`),
  CONSTRAINT `fk_kitproduto_1` FOREIGN KEY (`idkit`) REFERENCES `tbkit` (`idkit`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_kitproduto_2` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbkit_produto`
--

LOCK TABLES `tbkit_produto` WRITE;
/*!40000 ALTER TABLE `tbkit_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbkit_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblog`
--

DROP TABLE IF EXISTS `tblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblog` (
  `idtblog` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `acao` text COLLATE latin1_general_ci,
  `sistema` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  PRIMARY KEY (`idtblog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblog`
--

LOCK TABLES `tblog` WRITE;
/*!40000 ALTER TABLE `tblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbmeta`
--

DROP TABLE IF EXISTS `tbmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbmeta` (
  `idmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idveiculo` int(11) NOT NULL,
  `data_inicial` date NOT NULL,
  `data_final` date NOT NULL,
  `minimo` decimal(15,2) NOT NULL,
  `cota` decimal(15,2) NOT NULL,
  `super` decimal(15,2) NOT NULL,
  `dias_uteis` smallint(6) NOT NULL,
  PRIMARY KEY (`idmeta`),
  KEY `fk_tbmeta1_idx` (`idveiculo`),
  CONSTRAINT `fk_tbmeta1` FOREIGN KEY (`idveiculo`) REFERENCES `tbveiculo` (`idveiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmeta`
--

LOCK TABLES `tbmeta` WRITE;
/*!40000 ALTER TABLE `tbmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbnota`
--

DROP TABLE IF EXISTS `tbnota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbnota` (
  `idnota` int(11) NOT NULL AUTO_INCREMENT,
  `datanota` date DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `idfornecedor` int(11) DEFAULT NULL,
  `datalancamento` timestamp NULL DEFAULT NULL,
  `numnota` int(11) DEFAULT NULL,
  `tipo_nota` char(1) COLLATE latin1_general_ci DEFAULT 'E',
  `desconto` decimal(15,2) DEFAULT NULL,
  `acrescimo` decimal(15,2) DEFAULT NULL,
  `total_itens` decimal(15,2) DEFAULT NULL,
  `idtransportadora` int(11) DEFAULT NULL,
  `icms` decimal(15,2) DEFAULT '0.00',
  `valor_frete` decimal(15,2) DEFAULT '0.00',
  `frete` decimal(15,2) DEFAULT '0.00',
  `ipi` decimal(15,5) DEFAULT '0.00000',
  `previsao` date DEFAULT NULL,
  `tipo_frete` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `obs` text COLLATE latin1_general_ci,
  `prazo_pagamento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `finalizado_em` date DEFAULT NULL,
  `idcliente_venda` int(11) DEFAULT NULL,
  `numedital` int(11) DEFAULT NULL,
  `forma_pg` int(11) DEFAULT NULL,
  `lote` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `operacao` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idnota`),
  KEY `fk_nota1_idx` (`idtransportadora`),
  KEY `fk_nota2_idx` (`idfornecedor`),
  KEY `fk_nota3_idx` (`idcliente`),
  KEY `fk_nota4_idx` (`idcliente_venda`),
  CONSTRAINT `fk_nota1` FOREIGN KEY (`idtransportadora`) REFERENCES `tbtransportadora` (`idtransportadora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota2` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota3` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota4` FOREIGN KEY (`idcliente_venda`) REFERENCES `tbcliente` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnota`
--

LOCK TABLES `tbnota` WRITE;
/*!40000 ALTER TABLE `tbnota` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbnota` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbnota_BD0`
before delete ON `comercial2`.`tbnota`
FOR EACH ROW
BEGIN
		delete from tbnota_item where idnota = old.idnota;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbnota_item`
--

DROP TABLE IF EXISTS `tbnota_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbnota_item` (
  `iditem` int(11) NOT NULL AUTO_INCREMENT,
  `idnota` int(11) NOT NULL,
  `idproduto` int(11) DEFAULT NULL,
  `qtde` int(11) NOT NULL,
  `valor_unit` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tipo_nota` char(1) COLLATE latin1_general_ci DEFAULT 'E' COMMENT 'E = lancamento em estoque P = pedido de compra',
  `idkit` int(11) DEFAULT NULL,
  `edital` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`iditem`),
  KEY `fk_nota_item1` (`idnota`),
  KEY `fk_nota_item2` (`idproduto`),
  KEY `fk_nota_item3_idx` (`idkit`),
  CONSTRAINT `fk_nota_item1` FOREIGN KEY (`idnota`) REFERENCES `tbnota` (`idnota`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_nota_item2` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_item3` FOREIGN KEY (`idkit`) REFERENCES `tbkit` (`idkit`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnota_item`
--

LOCK TABLES `tbnota_item` WRITE;
/*!40000 ALTER TABLE `tbnota_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbnota_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbnota_item_BI0`
AFTER INSERT ON `comercial2`.`tbnota_item`
FOR EACH ROW
BEGIN
    declare aux char(1);
    declare vqtde int;
    declare vup_valor char(1);
    declare vup_fornecedor char(1);
    declare vidfornecedor int;
    
	declare vidproduto int;
	declare vqtdekit int;
	declare done bool default false;
	declare cur cursor for select idproduto, qtde from tbkit_produto where idkit = new.idkit;
	declare continue handler for not found set done = true;

	if (new.tipo_nota = 'E') or (new.tipo_nota = 'V') then    
	select atualiza_compra_fornecedor, atualizar_valor_compra_produto from tbconfigs where id = 1 into vup_fornecedor, vup_valor;
		if new.idproduto is not null then
			select controla_estoque, coalesce(est_atual, 0)  from tbproduto where idproduto = new.idproduto into aux, vqtde;
			
			if (vup_fornecedor = 'T') then
				select idfornecedor from tbnota where idnota = new.idnota into vidfornecedor;
				if (vidfornecedor > 0) then 
					insert tbfornecedor_produto(idfornecedor, idproduto, ultima_compra, ultimo_valor) VALUES 
					(vidfornecedor, new.idproduto, current_date, new.valor_unit) ON DUPLICATE KEY UPDATE 
					ultima_compra = current_date, ultimo_valor = new.valor_unit;
				end if;    
			end if;
			
			if (aux = 'T') then
				if (new.tipo_nota = 'E') then
					set vqtde = vqtde + new.qtde;
				else
					set vqtde = vqtde - new.qtde;
				end if;
				if (vqtde < 0) then set vqtde = 0; end if;
				update tbproduto set est_atual = vqtde where idproduto = new.idproduto;
			end if;
		elseif new.idkit is not null then
			open cur;
			myloop: loop
				fetch cur into vidproduto, vqtdekit;
				if done then
					leave myloop;
				end if;
				select controla_estoque, coalesce(est_atual, 0)  from tbproduto where idproduto = vidproduto into aux, vqtde;
				if (new.tipo_nota = 'E') then
					set vqtde = vqtde + (new.qtde * vqtdekit);
				else
					set vqtde = vqtde - (new.qtde * vqtdekit);
				end if;
				if (vqtde < 0) then set vqtde = 0; end if;
				if aux = 'T' then	
					update tbproduto set est_atual = vqtde where idproduto = vidproduto;	
				end if;
			end loop;
			close cur;
		end if;
    end if;


end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbnota_item_BU0`
BEFORE UPDATE ON `comercial2`.`tbnota_item`
FOR EACH ROW
begin
    declare aux char(1);
    declare vqtde int;
    declare vup_valor char(1);
    declare vup_fornecedor char(1);
    declare vidfornecedor int;
    
	declare vidproduto int;
	declare vqtdekit int;
	declare done bool default false;
	declare cur cursor for select idproduto, qtde from tbkit_produto where idkit = new.idkit;
	declare continue handler for not found set done = true;

    if (new.idproduto <> old.idproduto) then
        call fail('ID not changing');
    end if;

	if (new.tipo_nota <> old.tipo_nota) and (new.tipo_nota <> 'E') then
		call fail('Tipo_nota not changing');
	end if;

    
    if (new.tipo_nota <> old.tipo_nota) or (new.qtde <> old.qtde) then
        
		if new.idproduto is not null then
			if (new.tipo_nota <> old.tipo_nota) and (new.tipo_nota = 'E') then
				select atualiza_compra_fornecedor, atualizar_valor_compra_produto from tbconfigs where id = 1 into vup_fornecedor, vup_valor;
			
				if (vup_fornecedor = 'T') then
					select idfornecedor from tbnota where idnota = new.idnota into vidfornecedor;
					if (vidfornecedor > 0) then 
						insert tbfornecedor_produto(idfornecedor, idproduto, ultima_compra, ultimo_valor) VALUES 
						(vidfornecedor, new.idproduto, current_date, new.valor_unit) ON DUPLICATE KEY UPDATE 
						ultima_compra = current_date, ultimo_valor = new.valor_unit;
					end if;    
				end if;				
			end if;


			select controla_estoque, coalesce(est_atual, 0) from tbproduto where idproduto = new.idproduto into aux, vqtde;
			if ((vqtde < 0) or (vqtde is null)) then 
					set vqtde = 0;
			end if;
			if (new.tipo_nota <> 'V') then
				if new.qtde = old.qtde then
				  set vqtde = new.qtde;
				elseif (new.qtde > old.qtde)  then
					set vqtde = vqtde + (new.qtde - old.qtde);
				elseif (new.qtde < old.qtde)  then
					set vqtde = vqtde - (old.qtde - new.qtde);
				end if;
			elseif (new.tipo_nota = 'V') then
				if new.qtde = old.qtde then
				  set vqtde = new.qtde;
				elseif (new.qtde > old.qtde)  then
					set vqtde = vqtde - (new.qtde - old.qtde);
				elseif (new.qtde < old.qtde)  then
					set vqtde = vqtde + (old.qtde - new.qtde);
				end if;
			end if;
			if (aux = 'T') then
				if (vqtde < 0) then set vqtde = 0; end if;
				update tbproduto set est_atual = vqtde where idproduto = old.idproduto;
			end if;        
        elseif new.idkit is not null then
			open cur;
			myloop: loop
				fetch cur into vidproduto, vqtdekit;
				if done then
					leave myloop;
				end if;
				select controla_estoque, coalesce(est_atual, 0) from tbproduto where idproduto = vidproduto into aux, vqtde;
			
				if ((vqtde < 0) or (vqtde is null)) then 
					set vqtde = 0;
				end if; 
				if (new.tipo_nota <> 'V') then
					if new.qtde = old.qtde then
					  set vqtde = new.qtde * vqtdekit;
					elseif (new.qtde > old.qtde)  then
						set vqtde = vqtde + ((new.qtde - old.qtde) * vqtdekit);
					elseif (new.qtde < old.qtde)  then
						set vqtde = vqtde - ((old.qtde - new.qtde) * vqtdekit);
					end if;
				elseif (new.tipo_nota = 'V') then
					if new.qtde = old.qtde then
					  set vqtde = new.qtde * vqtdekit;
					elseif (new.qtde > old.qtde)  then
						set vqtde = vqtde - ((new.qtde - old.qtde) * vqtdekit);
					elseif (new.qtde < old.qtde)  then
						set vqtde = vqtde + ((old.qtde - new.qtde) * vqtdekit);
					end if;
				end if;
				if (aux = 'T') then
					if (vqtde < 0) then set vqtde = 0; end if;
					update tbproduto set est_atual = vqtde where idproduto = vidproduto;
				end if;								
			end loop;
			close cur;
		end if;
    end if;


end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbnota_item_AD0`
AFTER DELETE ON `comercial2`.`tbnota_item`
FOR EACH ROW
begin
    declare aux char(1);
    declare vqtde int;

	declare vidproduto int;
	declare vqtdekit int;
	declare done bool default false;
	declare cur cursor for select idproduto, qtde from tbkit_produto where idkit = old.idkit;
	declare continue handler for not found set done = true;

    if (old.tipo_nota = 'E') or (old.tipo_nota = 'V') then
		if old.idproduto is not null then
			select controla_estoque, coalesce(est_atual, 0) from tbproduto where idproduto = old.idproduto into aux, vqtde;
		
			if (old.tipo_nota = 'E') then
				set vqtde = vqtde - old.qtde;
			else  
				set vqtde = vqtde + old.qtde;
			end if;	
		 				
			if ((vqtde <= 0) or (vqtde is null)) then 
					set vqtde = 0;
			end if;
			if aux = 'T' then
				update tbproduto set est_atual = vqtde where idproduto = old.idproduto;
			end if;
        elseif old.idkit is not null then
			open cur;
			myloop: loop
				fetch cur into vidproduto, vqtdekit;
				if done then
					leave myloop;
				end if;
				select controla_estoque, coalesce(est_atual, 0)  from tbproduto where idproduto = vidproduto into aux, vqtde;
			
				
				if (old.tipo_nota = 'V') then
					set vqtde = vqtde + (old.qtde * vqtdekit);
				else
					set vqtde = vqtde - (old.qtde * vqtdekit);
				end if;

				if (vqtde < 0) then set vqtde = 0; end if;
				
				if aux = 'T' then	
					update tbproduto set est_atual = vqtde where idproduto = vidproduto;	
				end if;
			end loop;
			close cur;
		end if;
    end if;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbnota_pagamento`
--

DROP TABLE IF EXISTS `tbnota_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbnota_pagamento` (
  `idpagamento` int(11) NOT NULL AUTO_INCREMENT,
  `idnota` int(11) NOT NULL,
  `forma_pagamento` varchar(45) DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  `valor` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`idpagamento`),
  KEY `fk_notapagamento1_idx` (`idnota`),
  CONSTRAINT `fk_notapagamento1` FOREIGN KEY (`idnota`) REFERENCES `tbnota` (`idnota`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnota_pagamento`
--

LOCK TABLES `tbnota_pagamento` WRITE;
/*!40000 ALTER TABLE `tbnota_pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbnota_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpermissao`
--

DROP TABLE IF EXISTS `tbpermissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbpermissao` (
  `idtbpermissao` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idtbpermissao`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpermissao`
--

LOCK TABLES `tbpermissao` WRITE;
/*!40000 ALTER TABLE `tbpermissao` DISABLE KEYS */;
INSERT INTO `tbpermissao` VALUES (1,'Cadastro de Usuários do Sistema.'),(2,'Configurações do Sistema.'),(3,'Cadastro de Clientes.'),(4,'Cadastro de Fornecedores.'),(5,'Cadastro de Categoria de Produtos.'),(6,'Cadastro de Produtos.'),(7,'Cadastro de Estoque.'),(8,'Cadastro de Cartões.'),(9,'Caixa.'),(10,'Cadastro de Grupo de Contas.'),(11,'Cadastro de Contas.'),(12,'Venda de Produtos e Orçamento'),(13,'Efetuar Backup do Sistema.'),(14,'Controle de Cheques'),(15,'Relatório de Lucratividade'),(16,'Cadastro de Funcionáios'),(17,'Cadastro de Veículos'),(18,'Cadastro de Produção'),(19,'Cadastro de Cotas'),(20,'Controle de Combustível'),(21,'Cadastro de Transportadora'),(22,'Cadastro de Setores'),(23,'Cadastro de Status'),(24,'Cadastro de Produção');
/*!40000 ALTER TABLE `tbpermissao` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`permissao_AI0` AFTER INSERT ON `comercial2`.`tbpermissao`
  FOR EACH ROW begin
    insert into tbusuario_permissao( idtbusuario, idtbpermissao, alterar, excluir, incluir, visualizar)
     select  idtbusuario ,new.idtbpermissao, 'F','F','F','F' from tbusuario ;
    
     update tbusuario_permissao set
      alterar    = 'T',
      excluir    = 'T',
      incluir    = 'T',
      visualizar = 'T'
     where idtbpermissao = new.idtbpermissao and idtbusuario = 1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbproducao`
--

DROP TABLE IF EXISTS `tbproducao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbproducao` (
  `idproducao` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `peso` decimal(15,2) DEFAULT NULL,
  `valor_tonelada` decimal(15,2) DEFAULT NULL,
  `num_viagens` int(11) DEFAULT '1',
  `data` date DEFAULT NULL,
  `idveiculo` int(11) DEFAULT NULL,
  `data_casdastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idusuario` int(11) DEFAULT NULL,
  `tara` decimal(15,2) NOT NULL DEFAULT '0.00',
  `peso_bruto` decimal(15,2) DEFAULT '0.00',
  `valor_agregado` decimal(15,2) DEFAULT NULL,
  `tipo` char(1) DEFAULT 'M',
  `idimportacao` int(11) DEFAULT NULL,
  `dtimportacao` timestamp NULL DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`idproducao`),
  KEY `fk_tbproducao1_idx` (`idveiculo`),
  KEY `fk_tbproducao2_idx` (`idcliente`),
  KEY `fk_tbproducao3_idx` (`idusuario`),
  CONSTRAINT `fk_tbproducao1` FOREIGN KEY (`idveiculo`) REFERENCES `tbveiculo` (`idveiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbproducao2` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbproducao3` FOREIGN KEY (`idusuario`) REFERENCES `tbusuario` (`idtbusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproducao`
--

LOCK TABLES `tbproducao` WRITE;
/*!40000 ALTER TABLE `tbproducao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbproducao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproduto`
--

DROP TABLE IF EXISTS `tbproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbproduto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `codbarras` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `descricao` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `valor_custo` decimal(15,2) DEFAULT '0.00',
  `valor_varejo` decimal(15,2) DEFAULT '0.00',
  `valor_atacado` decimal(15,2) DEFAULT '0.00',
  `unidade` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `info_adicional` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `est_minimo` int(11) DEFAULT NULL,
  `est_atual` int(11) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `dt_cadastro` date DEFAULT NULL,
  `controla_estoque` char(1) COLLATE latin1_general_ci DEFAULT 'T',
  `referencia` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `cor` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `marca` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `acabamento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `grupo_materiais` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `medida` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `peso` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `plano_despesas` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `unidade_compra` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `imobilizado` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `qtde_empenho` int(11) DEFAULT NULL,
  `ultimo_balanco` date DEFAULT NULL,
  `prazo_reposicao` int(11) DEFAULT NULL,
  `qtde_ultimo_balanco` int(11) DEFAULT NULL,
  `avisar_reposicao` date DEFAULT NULL,
  `juros_cartao` decimal(15,2) DEFAULT NULL,
  `comissao_vendedor` decimal(15,2) DEFAULT NULL,
  `comissao_iterna` decimal(15,2) DEFAULT NULL,
  `comissao_especial` decimal(15,2) DEFAULT NULL,
  `comissao_outra` decimal(15,2) DEFAULT NULL,
  `iss` decimal(15,2) DEFAULT NULL,
  `icms` decimal(15,2) DEFAULT NULL,
  `ipi` decimal(15,2) DEFAULT NULL,
  `isv` decimal(15,2) DEFAULT NULL,
  `imposto_a` decimal(15,2) DEFAULT NULL,
  `imposto_b` decimal(15,2) DEFAULT NULL,
  `frete` decimal(15,2) DEFAULT NULL,
  `despesas_adm` decimal(15,2) DEFAULT NULL,
  `margem_lucro` decimal(15,2) DEFAULT NULL,
  `qtde_compra` int(11) DEFAULT NULL,
  `tamanho` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `edital` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  KEY `fk_tbproduto_tbcategoria1` (`idcategoria`),
  CONSTRAINT `fk_tbproduto_tbcategoria1` FOREIGN KEY (`idcategoria`) REFERENCES `tbcategoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproduto`
--

LOCK TABLES `tbproduto` WRITE;
/*!40000 ALTER TABLE `tbproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbsetor`
--

DROP TABLE IF EXISTS `tbsetor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbsetor` (
  `idsetor` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`idsetor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbsetor`
--

LOCK TABLES `tbsetor` WRITE;
/*!40000 ALTER TABLE `tbsetor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbsetor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbsistema`
--

DROP TABLE IF EXISTS `tbsistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbsistema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `idfornecedor` int(11) DEFAULT NULL,
  `npedido` varchar(45) DEFAULT NULL,
  `qtde_enviada` int(11) DEFAULT '0',
  `idproduto` int(11) DEFAULT NULL,
  `preco_unit` decimal(15,2) DEFAULT '0.00',
  `prev_entrega` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `iddestino` int(11) DEFAULT NULL,
  `idstatus` int(11) DEFAULT NULL,
  `qtde_entregue` int(11) DEFAULT '0',
  `valor_total` decimal(15,2) DEFAULT '0.00',
  `valor_pago` decimal(15,2) DEFAULT '0.00',
  `dia_pagamento` date DEFAULT NULL,
  `obs` varchar(300) DEFAULT NULL,
  `vale` decimal(15,2) DEFAULT '0.00',
  `data_vale` date DEFAULT NULL,
  `arquivado` varchar(1) DEFAULT 'F',
  PRIMARY KEY (`id`),
  KEY `idx1` (`arquivado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbsistema`
--

LOCK TABLES `tbsistema` WRITE;
/*!40000 ALTER TABLE `tbsistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbsistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbsistema_pagamento`
--

DROP TABLE IF EXISTS `tbsistema_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbsistema_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtbsistema` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(15,2) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_idx` (`idtbsistema`),
  CONSTRAINT `fk1` FOREIGN KEY (`idtbsistema`) REFERENCES `tbsistema` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbsistema_pagamento`
--

LOCK TABLES `tbsistema_pagamento` WRITE;
/*!40000 ALTER TABLE `tbsistema_pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbsistema_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbstatus`
--

DROP TABLE IF EXISTS `tbstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbstatus` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbstatus`
--

LOCK TABLES `tbstatus` WRITE;
/*!40000 ALTER TABLE `tbstatus` DISABLE KEYS */;
INSERT INTO `tbstatus` VALUES (1,'CORTE'),(2,'ACABAMENTO'),(3,'BORDANDO'),(4,'EMBALANDO');
/*!40000 ALTER TABLE `tbstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbsubgrupoconta`
--

DROP TABLE IF EXISTS `tbsubgrupoconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbsubgrupoconta` (
  `idsubgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  `tipo` char(1) NOT NULL,
  PRIMARY KEY (`idsubgrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbsubgrupoconta`
--

LOCK TABLES `tbsubgrupoconta` WRITE;
/*!40000 ALTER TABLE `tbsubgrupoconta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbsubgrupoconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbtransportadora`
--

DROP TABLE IF EXISTS `tbtransportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbtransportadora` (
  `idtransportadora` int(11) NOT NULL AUTO_INCREMENT,
  `razaosocial` varchar(100) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `contato_nome` varchar(45) DEFAULT NULL,
  `contato_telefone` varchar(15) DEFAULT NULL,
  `contato_email` varchar(100) DEFAULT NULL,
  `dt_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`idtransportadora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbtransportadora`
--

LOCK TABLES `tbtransportadora` WRITE;
/*!40000 ALTER TABLE `tbtransportadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbtransportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbusuario`
--

DROP TABLE IF EXISTS `tbusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbusuario` (
  `idtbusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `login` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `senha` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `administrador` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  PRIMARY KEY (`idtbusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusuario`
--

LOCK TABLES `tbusuario` WRITE;
/*!40000 ALTER TABLE `tbusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbusuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbusuarioAI_0` AFTER INSERT ON `comercial2`.`tbusuario`
  FOR EACH ROW BEGIN
      if (new.idtbusuario = 1) then
        insert into tbusuario_permissao(idtbpermissao, idtbusuario, alterar, excluir, incluir, visualizar)
          select idtbpermissao, new.idtbusuario,'T','T','T','T' from tbpermissao ;
      else
        insert into tbusuario_permissao(idtbpermissao, idtbusuario, alterar, excluir, incluir, visualizar)
          select idtbpermissao, new.idtbusuario,'F','F','F','F' from tbpermissao ;
      end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbusuario_permissao`
--

DROP TABLE IF EXISTS `tbusuario_permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbusuario_permissao` (
  `idtbusuario` int(11) NOT NULL,
  `idtbpermissao` int(11) NOT NULL,
  `alterar` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `incluir` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `excluir` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  `visualizar` char(1) COLLATE latin1_general_ci DEFAULT 'F',
  PRIMARY KEY (`idtbusuario`,`idtbpermissao`),
  KEY `fk_tbusuario_has_tbpermissao_tbpermissao1` (`idtbpermissao`),
  KEY `fk_tbusuario_has_tbpermissao_tbusuario` (`idtbusuario`),
  CONSTRAINT `fk_tbusuario_has_tbpermissao_tbpermissao1` FOREIGN KEY (`idtbpermissao`) REFERENCES `tbpermissao` (`idtbpermissao`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbusuario_has_tbpermissao_tbusuario` FOREIGN KEY (`idtbusuario`) REFERENCES `tbusuario` (`idtbusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusuario_permissao`
--

LOCK TABLES `tbusuario_permissao` WRITE;
/*!40000 ALTER TABLE `tbusuario_permissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbusuario_permissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbveiculo`
--

DROP TABLE IF EXISTS `tbveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbveiculo` (
  `idveiculo` int(11) NOT NULL AUTO_INCREMENT,
  `codveiculo` int(11) NOT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `renavan` varchar(45) DEFAULT NULL,
  `chassi` varchar(45) DEFAULT NULL,
  `valor_ipva` decimal(15,2) DEFAULT NULL,
  `valor_dpvat` decimal(15,2) DEFAULT NULL,
  `valor_licenciamento` decimal(15,2) DEFAULT NULL,
  `dt_pgipva` date DEFAULT NULL,
  `dt_pgdpvat` date DEFAULT NULL,
  `dt_pglicenciamento` date DEFAULT NULL,
  `rastreador` char(1) DEFAULT 'F',
  `idfornecedor` int(11) DEFAULT NULL COMMENT 'proprietario do veiculo',
  PRIMARY KEY (`idveiculo`),
  UNIQUE KEY `codveiculo_UNIQUE` (`codveiculo`),
  KEY `fk_tbveiculo1_idx` (`idfornecedor`),
  CONSTRAINT `fk_tbveiculo1` FOREIGN KEY (`idfornecedor`) REFERENCES `tbfornecedor` (`idfornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbveiculo`
--

LOCK TABLES `tbveiculo` WRITE;
/*!40000 ALTER TABLE `tbveiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbveiculo_funcionario`
--

DROP TABLE IF EXISTS `tbveiculo_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbveiculo_funcionario` (
  `idveiculo` int(11) NOT NULL,
  `idfuncionario` int(11) NOT NULL,
  PRIMARY KEY (`idveiculo`,`idfuncionario`),
  KEY `fk_veiculo_funcionario1_idx` (`idfuncionario`),
  CONSTRAINT `fk_veiculo_funcionario1` FOREIGN KEY (`idfuncionario`) REFERENCES `tbfuncionario` (`idfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_veiculo_funcionario2` FOREIGN KEY (`idveiculo`) REFERENCES `tbveiculo` (`idveiculo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbveiculo_funcionario`
--

LOCK TABLES `tbveiculo_funcionario` WRITE;
/*!40000 ALTER TABLE `tbveiculo_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbveiculo_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbvenda`
--

DROP TABLE IF EXISTS `tbvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbvenda` (
  `idvenda` int(11) NOT NULL AUTO_INCREMENT,
  `datahora` timestamp NULL DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `total_venda` decimal(15,2) DEFAULT '0.00',
  `aberta` char(1) COLLATE latin1_general_ci DEFAULT 'T',
  `codcliente` int(11) DEFAULT NULL,
  `tipo` char(1) COLLATE latin1_general_ci DEFAULT 'V',
  `desconto` decimal(15,2) DEFAULT '0.00',
  `acrescimo` decimal(15,2) DEFAULT '0.00',
  `forma_pagamento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `obs` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `kilometragem` int(11) DEFAULT NULL,
  PRIMARY KEY (`idvenda`),
  KEY `fktbvenda_1` (`codcliente`),
  CONSTRAINT `fktbvenda_1` FOREIGN KEY (`codcliente`) REFERENCES `tbcliente` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbvenda`
--

LOCK TABLES `tbvenda` WRITE;
/*!40000 ALTER TABLE `tbvenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbvenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbvenda_BD0`
before delete ON `comercial2`.`tbvenda`
FOR EACH ROW
BEGIN
	delete from tbvenda_item where idvenda = old.idvenda;


end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbvenda_item`
--

DROP TABLE IF EXISTS `tbvenda_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbvenda_item` (
  `idvenda` int(11) NOT NULL,
  `iditem` int(11) NOT NULL,
  `idproduto` int(11) DEFAULT NULL,
  `qtde` int(11) NOT NULL,
  `preco` decimal(15,2) NOT NULL DEFAULT '0.00',
  `desconto` decimal(15,2) DEFAULT '0.00',
  `idkit` int(11) DEFAULT NULL,
  `preco_custo` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`idvenda`,`iditem`),
  KEY `fkvenda_item_1` (`idvenda`),
  KEY `fkvenda_item_2` (`idproduto`),
  KEY `fkvenda_item_3_idx` (`idkit`),
  CONSTRAINT `fkvenda_item_1` FOREIGN KEY (`idvenda`) REFERENCES `tbvenda` (`idvenda`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fkvenda_item_2` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkvenda_item_3` FOREIGN KEY (`idkit`) REFERENCES `tbkit` (`idkit`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbvenda_item`
--

LOCK TABLES `tbvenda_item` WRITE;
/*!40000 ALTER TABLE `tbvenda_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbvenda_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbvenda_item_BI0`
AFTER INSERT ON `comercial2`.`tbvenda_item`
FOR EACH ROW
BEGIN
    declare vqtde int;	
    declare vtipo char(1);
	declare vidproduto int;
	declare vqtdekit int;
	declare done bool default false;
	declare cur cursor for select idproduto, qtde from tbkit_produto where idkit = new.idkit;
	declare continue handler for not found set done = true;
    
    select tipo from tbvenda where idvenda = new.idvenda into vtipo;
    
    if vtipo = 'V' then
		if new.idproduto is not null then
			select coalesce(est_atual, 0) from tbproduto where idproduto = new.idproduto into vqtde;
			
			set vqtde = vqtde - new.qtde;
			if vqtde < 0 then
				set vqtde = 0;
			end if;
			
			update tbproduto set est_atual = vqtde where idproduto = new.idproduto; 		
		elseif new.idkit is not null then	
          open cur;
			myloop: loop
				fetch cur into vidproduto, vqtdekit;
				if done then
					leave myloop;
				end if;
				select coalesce(est_atual, 0) from tbproduto where idproduto = vidproduto into vqtde;
			
				set vqtde = vqtde - (new.qtde * vqtdekit);
				if vqtde < 0 then
					set vqtde = 0;
				end if;
				
				update tbproduto set est_atual = vqtde where idproduto = vidproduto;	
			end loop;
			close cur;
		end if;
    end if;    
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbvenda_item_BU0`
BEFORE UPDATE ON `comercial2`.`tbvenda_item`
FOR EACH ROW
BEGIN
    declare vqtde int;
    declare vtipo char(1);
    declare vdiferenca int;
	declare vidproduto int;
	declare vqtdekit int;
	declare done bool default false;
	declare cur cursor for select idproduto, qtde from tbkit_produto where idkit = new.idkit;
	declare continue handler for not found set done = true;

    if (new.qtde <> old.qtde) then
        select tipo from tbvenda where idvenda = old.idvenda into vtipo;
        
        if vtipo = 'V' then
            set vdiferenca = new.qtde - old.qtde;
            
			if old.idproduto is not null then
				select coalesce(est_atual, 0) from tbproduto where idproduto = old.idproduto into vqtde;
				
				set vqtde = vqtde - vdiferenca;
				if vqtde < 0 then
					set vqtde = 0;
				end if;
				update tbproduto set est_atual = vqtde where idproduto = old.idproduto;
			elseif old.idkit is not null then
				open cur;
				myloop: loop
					fetch cur into vidproduto, vqtdekit;
					if done then
						leave myloop;
					end if;
					select coalesce(est_atual, 0) from tbproduto where idproduto = vidproduto into vqtde;
				
					set vqtde = vqtde - (vdiferenca * vqtdekit);
					if vqtde < 0 then
						set vqtde = 0;
					end if;
					
					update tbproduto set est_atual = vqtde where idproduto = vidproduto;	
				end loop;
				close cur;
			end if;
				 
        end if;   
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comercial2`.`tbvenda_item_AD0`
AFTER DELETE ON `comercial2`.`tbvenda_item`
FOR EACH ROW
BEGIN
    declare vqtde int;
    declare vtipo char(1);
	declare vidproduto int;
	declare vqtdekit int;
	declare done bool default false;
	declare cur cursor for select idproduto, qtde from tbkit_produto where idkit = old.idkit;
	declare continue handler for not found set done = true;
    
    select tipo from tbvenda where idvenda = old.idvenda into vtipo;
    
    if vtipo = 'V' then
		if old.idproduto is not null then
			select coalesce(est_atual, 0) from tbproduto where idproduto = old.idproduto into vqtde;
			
			set vqtde = vqtde + old.qtde;
			update tbproduto set est_atual = vqtde where idproduto = old.idproduto; 
        elseif old.idkit is not null then
			open cur;
				myloop: loop
					fetch cur into vidproduto, vqtdekit;
					if done then
						leave myloop;
					end if;
					select coalesce(est_atual, 0) from tbproduto where idproduto = vidproduto into vqtde;
				
					set vqtde = vqtde + (old.qtde * vqtdekit);
					if vqtde < 0 then
						set vqtde = 0;
					end if;
					
					update tbproduto set est_atual = vqtde where idproduto = vidproduto;	
				end loop;
				close cur;
		end if;
    end if;   

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbversao`
--

DROP TABLE IF EXISTS `tbversao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbversao` (
  `idtbversao` int(11) NOT NULL,
  `versao` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`idtbversao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbversao`
--

LOCK TABLES `tbversao` WRITE;
/*!40000 ALTER TABLE `tbversao` DISABLE KEYS */;
INSERT INTO `tbversao` VALUES (1,1);
/*!40000 ALTER TABLE `tbversao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'comercial2'
--

--
-- Dumping routines for database 'comercial2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21 11:26:42
