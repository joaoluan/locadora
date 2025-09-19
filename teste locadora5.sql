CREATE DATABASE  IF NOT EXISTS `locadora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `locadora`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `atividademanutencao`
--

DROP TABLE IF EXISTS `atividademanutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividademanutencao` (
  `IDAtividade` int NOT NULL AUTO_INCREMENT,
  `IDManutencao` int NOT NULL,
  `DescricaoAtividade` text NOT NULL,
  `Data` date NOT NULL,
  `Hora` time NOT NULL,
  PRIMARY KEY (`IDAtividade`),
  KEY `IDManutencao` (`IDManutencao`),
  CONSTRAINT `atividademanutencao_ibfk_1` FOREIGN KEY (`IDManutencao`) REFERENCES `manutencao` (`IDManutencao`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividademanutencao`
--

LOCK TABLES `atividademanutencao` WRITE;
/*!40000 ALTER TABLE `atividademanutencao` DISABLE KEYS */;
INSERT INTO `atividademanutencao` VALUES (31,11,'Troca de óleo','2024-03-05','08:00:00'),(32,12,'Troca de filtro de ar','2024-03-06','09:30:00'),(33,13,'Alinhamento e balanceamento','2024-03-07','10:45:00'),(34,14,'Substituição de pastilhas de freio','2024-03-08','11:20:00'),(35,15,'Verificação de sistema elétrico','2024-03-09','13:15:00'),(36,16,'Revisão do motor','2024-03-10','14:30:00'),(37,17,'Troca de pneus','2024-03-11','15:45:00'),(38,18,'Limpeza do sistema de injeção','2024-03-12','16:10:00'),(39,19,'Verificação de sistema de arrefecimento','2024-03-13','17:20:00'),(40,20,'Reparo de sistema de escapamento','2024-03-14','18:00:00');
/*!40000 ALTER TABLE `atividademanutencao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CPF` varchar(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `CategoriaCNH` enum('A','B','C','D','E') NOT NULL,
  `DataNascimento` date NOT NULL,
  `Rua` varchar(100) NOT NULL,
  `Numero` int NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `CEP` varchar(9) NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('00852605600','Joao Barbosa','B','1977-06-22','Travessa D',1708,'Santa Maria','Rio grande do Sul','49876-626'),('11067691564','Marcelo Santos','A','1932-09-30','Avenida B',37,'Pelotas','Rio grande do Sul','61508-388'),('12152848149','Vinicius Costa','A','1981-01-18','Rua A',7058,'Santa Cruz do Sul','Rio grande do Sul','87410-635'),('15036076418','Thiago Martins','B','1946-04-15','Rua A',21386,'Santana do Livramento','Rio grande do Sul','26983-205'),('22497930610','Bruno Carvalho','E','1970-11-12','Praça C',135,'Bento Gonçalves','Rio grande do Sul','30563-549'),('22843392794','Gustavo Oliveira','B','1985-02-25','Rua A',98,'Santa Cruz do Sul','Rio grande do Sul','28142-270'),('23078376442','Laura Rodrigues','C','1978-05-06','Rua A',45,'Novo Hamburgo','Rio grande do Sul','29310-134'),('23738516429','Joao Barbosa','D','1981-04-01','Alameda E',92,'Passo Fundo','Rio grande do Sul','06130-632'),('27671643357','Lucas Silva','B','1971-01-03','Rua A',85,'Alegrete','Rio grande do Sul','95963-799'),('30161320960','Ricardo Silva','A','1980-02-08','Avenida B',47,'Sapucaia do Sul','Rio grande do Sul','04105-247'),('30379358246','Carolina Lima','E','1952-06-20','Avenida B',9987,'Porto Alegre','Rio grande do Sul','40055-460'),('32231562970','Bruno Carvalho','B','1975-07-26','Rua A',2,'Santa Cruz do Sul','Rio grande do Sul','90450-344'),('37120149498','Carolina Lima','D','1973-09-18','Alameda E',56586,'Caxias do Sul','Rio grande do Sul','09912-919'),('38073152190','Gustavo Oliveira','C','1975-11-27','Rua A',864,'Alegrete','Rio grande do Sul','68294-415'),('39657850202','Carolina Lima','B','1935-01-20','Rua A',34041,'Caxias do Sul','Rio grande do Sul','28594-595'),('40727064465','Luana Pereira','B','1971-06-16','Travessa D',9969,'Cachoeira do Sul','Rio grande do Sul','03271-481'),('46247193752','Larissa Barbosa','E','1960-02-23','Travessa D',234,'Santa Maria','Rio grande do Sul','31420-010'),('46943706193','Amanda Cardoso','D','1963-10-06','Rua A',1885,'São Leopoldo','Rio grande do Sul','23293-475'),('47297821761','Amanda Cardoso','B','1950-01-27','Rua A',360,'Caxias do Sul','Rio grande do Sul','21528-408'),('48813416006','Gustavo Oliveira','E','1973-09-17','Praça C',800,'Santa Cruz do Sul','Rio grande do Sul','77852-652'),('51317715586','Joao Barbosa','A','1973-01-08','Praça C',49,'Santa Cruz do Sul','Rio grande do Sul','78257-612'),('54802443990','Laura Rodrigues','B','1945-02-20','Avenida B',648,'Santa Cruz do Sul','Rio grande do Sul','26788-182'),('54992846209','Vinicius Costa','C','1964-04-26','Rua A',9726,'São Leopoldo','Rio grande do Sul','78105-254'),('55629891326','Vinicius Costa','B','1970-09-13','Alameda E',99830,'Santana do Livramento','Rio grande do Sul','10679-844'),('58054863790','Carolina Lima','A','1942-09-24','Travessa D',39,'Caxias do Sul','Rio grande do Sul','93530-706'),('59231753769','Manuela Lima','D','1993-11-23','Avenida B',312,'Camaquã','Rio grande do Sul','95758-234'),('59374284240','Larissa Barbosa','D','1981-08-14','Alameda E',784,'Pelotas','Rio grande do Sul','62168-780'),('61000755365','Amanda Cardoso','D','1971-08-30','Alameda E',989,'Santa Cruz do Sul','Rio grande do Sul','61276-745'),('61975149509','Laura Rodrigues','D','1969-05-14','Praça C',29,'Passo Fundo','Rio grande do Sul','48270-608'),('62085591916','Joao Barbosa','C','1982-12-18','Avenida B',953,'Passo Fundo','Rio grande do Sul','08813-234'),('63067442927','Pedro Oliveira','E','1945-04-12','Avenida B',154,'Erechim','Rio grande do Sul','04582-071'),('72072657048','Amanda Cardoso','D','1938-07-14','Praça C',951,'Farroupilha','Rio grande do Sul','30799-571'),('77494304672','Ricardo Silva','C','1933-02-05','Alameda E',9072,'Lajeado','Rio grande do Sul','39743-374'),('78203769143','Vinicius Costa','D','1977-05-03','Rua A',956,'Pelotas','Rio grande do Sul','97050-079'),('79043383256','Marcelo Santos','C','1957-06-19','Rua A',623,'Pelotas','Rio grande do Sul','27020-702'),('82220644230','Thiago Martins','D','1981-11-08','Praça C',88,'Novo Hamburgo','Rio grande do Sul','01092-005'),('83278856883','Laura Rodrigues','E','1991-12-19','Praça C',136,'Pelotas','Rio grande do Sul','97136-380'),('85067929429','Lucas Silva','D','1988-05-02','Travessa D',37,'Pelotas','Rio grande do Sul','72167-437'),('85758928592','Marcelo Santos','B','1948-11-30','Avenida B',937,'Santa Cruz do Sul','Rio grande do Sul','26740-587'),('86781401573','Larissa Barbosa','C','1974-10-02','Alameda E',83,'Lajeado','Rio grande do Sul','39717-619'),('86789072356','Lucas Silva','C','1986-03-15','Rua A',1,'Novo Hamburgo','Rio grande do Sul','39468-457'),('90100534551','Laura Rodrigues','C','1967-02-14','Rua A',823,'Alegrete','Rio grande do Sul','52412-349'),('91323297024','Vinicius Costa','E','1960-02-05','Praça C',15770,'Ijuí','Rio grande do Sul','60207-094'),('96413347713','Larissa Barbosa','A','1969-08-03','Alameda E',22374,'Rio Grande','Rio grande do Sul','88261-670'),('97183274791','Gustavo Oliveira','D','1987-10-05','Rua A',79615,'Santa Cruz do Sul','Rio grande do Sul','70782-450'),('98360037391','Manuela Lima','C','1973-07-10','Avenida B',996,'Camaquã','Rio grande do Sul','06984-792'),('99293598937','Luana Pereira','B','1997-09-07','Rua A',69988,'Porto Alegre','Rio grande do Sul','89665-204');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `CPFCliente` varchar(11) NOT NULL,
  `PlacaVeiculo` varchar(10) NOT NULL,
  `DataInicial` date NOT NULL,
  `DataFinal` date NOT NULL,
  `ValorPago` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CPFCliente`,`PlacaVeiculo`),
  KEY `PlacaVeiculo` (`PlacaVeiculo`),
  KEY `idx_cpf_cliente_locacao` (`CPFCliente`),
  KEY `idx_data_inicial_locacao` (`DataInicial`),
  CONSTRAINT `locacao_ibfk_1` FOREIGN KEY (`CPFCliente`) REFERENCES `cliente` (`CPF`),
  CONSTRAINT `locacao_ibfk_2` FOREIGN KEY (`PlacaVeiculo`) REFERENCES `veiculo` (`Placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES ('00852605600','ABC1234','2024-04-03','2024-04-07',6000.00),('00852605600','STU5678','2024-04-15','2024-04-20',5800.00),('11067691564','BCD7890','2024-04-02','2024-04-06',8000.00),('11067691564','YZA3456','2024-04-16','2024-04-19',8500.00),('12152848149','DEF5678','2024-04-01','2024-04-05',5000.00),('12152848149','OPQ3456','2024-04-17','2024-04-21',7500.00),('15036076418','EFG1234','2024-04-04','2024-04-08',6500.00),('15036076418','RST7890','2024-04-18','2024-04-22',8500.00),('22497930610','GHI9012','2024-04-03','2024-04-07',8000.00),('22497930610','PQR1234','2024-04-19','2024-04-23',6500.00),('22843392794','HIJ5678','2024-04-02','2024-04-06',6000.00),('22843392794','JKL3456','2024-04-20','2024-04-24',7500.00),('23078376442','DEF5678','2024-04-21','2024-04-25',5000.00),('23078376442','JKL3456','2024-04-05','2024-04-09',7500.00),('23738516429','EFG1234','2024-04-22','2024-04-26',6500.00),('23738516429','LMN9012','2024-04-06','2024-04-10',6500.00),('27671643357','LMN9012','2024-04-23','2024-04-27',6500.00),('27671643357','MNO7890','2024-04-07','2024-04-11',5500.00),('30161320960','BCD7890','2024-04-24','2024-04-28',8000.00),('30161320960','OPQ3456','2024-04-08','2024-04-12',7500.00),('30379358246','GHI9012','2024-04-25','2024-04-29',8000.00),('30379358246','PQR1234','2024-04-09','2024-04-13',6500.00),('32231562970','HIJ5678','2024-04-26','2024-04-30',6000.00),('32231562970','RST7890','2024-04-10','2024-04-14',8500.00),('37120149498','ABC1234','2024-04-27','2024-05-01',6000.00),('37120149498','STU5678','2024-04-03','2024-04-07',5800.00),('38073152190','VWX9012','2024-04-04','2024-04-08',7000.00),('38073152190','YZA3456','2024-04-28','2024-05-02',8500.00),('39657850202','MNO7890','2024-04-29','2024-05-03',5500.00),('39657850202','YZA3456','2024-04-05','2024-04-09',8500.00),('40727064465','ABC1234','2024-04-06','2024-04-10',6000.00),('40727064465','VWX9012','2024-04-30','2024-05-04',7000.00),('46247193752','BCD7890','2024-04-07','2024-04-11',8000.00),('46247193752','STU5678','2024-05-01','2024-05-05',5800.00),('46943706193','DEF5678','2024-04-08','2024-04-12',5000.00),('46943706193','RST7890','2024-05-02','2024-05-06',8500.00),('47297821761','EFG1234','2024-04-09','2024-04-13',6500.00),('47297821761','PQR1234','2024-05-03','2024-05-07',6500.00),('48813416006','GHI9012','2024-04-10','2024-04-14',8000.00),('48813416006','OPQ3456','2024-05-04','2024-05-08',7500.00),('51317715586','ABC1234','2024-05-10','2024-05-15',6000.00),('51317715586','JKL3456','2024-05-05','2024-05-09',7500.00),('54802443990','BCD7890','2024-05-11','2024-05-16',8000.00),('54802443990','DEF5678','2024-05-06','2024-05-10',5000.00),('54992846209','DEF5678','2024-05-12','2024-05-17',5000.00),('54992846209','EFG1234','2024-05-07','2024-05-11',6500.00),('55629891326','EFG1234','2024-05-13','2024-05-18',6500.00),('55629891326','LMN9012','2024-05-08','2024-05-12',6500.00),('58054863790','BCD7890','2024-05-09','2024-05-13',8000.00),('58054863790','GHI9012','2024-05-14','2024-05-19',8000.00),('59231753769','GHI9012','2024-05-10','2024-05-14',8000.00),('59231753769','HIJ5678','2024-05-15','2024-05-20',6000.00),('59374284240','HIJ5678','2024-05-11','2024-05-15',6000.00),('59374284240','JKL3456','2024-05-16','2024-05-21',7500.00),('61000755365','ABC1234','2024-05-12','2024-05-16',6000.00),('61000755365','LMN9012','2024-05-17','2024-05-22',6500.00),('61975149509','MNO7890','2024-05-18','2024-05-23',5500.00),('61975149509','YZA3456','2024-05-13','2024-05-17',8500.00),('62085591916','OPQ3456','2024-05-19','2024-05-24',7500.00),('63067442927','PQR1234','2024-05-20','2024-05-25',6500.00),('72072657048','RST7890','2024-05-21','2024-05-26',8500.00),('77494304672','STU5678','2024-05-22','2024-05-27',5800.00),('78203769143','VWX9012','2024-05-23','2024-05-28',7000.00),('79043383256','YZA3456','2024-05-24','2024-05-29',8500.00),('82220644230','ABC1234','2024-05-25','2024-05-30',6000.00),('83278856883','BCD7890','2024-05-26','2024-05-31',8000.00),('85067929429','OPQ3456','2024-04-10','2024-04-14',7500.00),('85758928592','MNO7890','2024-04-09','2024-04-13',5500.00),('86781401573','LMN9012','2024-04-08','2024-04-12',6500.00),('86789072356','JKL3456','2024-04-07','2024-04-11',7500.00),('90100534551','HIJ5678','2024-04-06','2024-04-10',6000.00),('91323297024','GHI9012','2024-04-05','2024-04-09',8000.00),('96413347713','EFG1234','2024-04-04','2024-04-08',6500.00),('97183274791','DEF5678','2024-04-01','2024-05-01',18000.00),('98360037391','BCD7890','2024-04-01','2024-04-08',8000.00),('99293598937','ABC1234','2024-04-01','2024-04-02',1800.00);
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `locadora` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`JOAO MOURA`@`%`*/ /*!50003 TRIGGER `calcular_valor_locacao` BEFORE INSERT ON `locacao` FOR EACH ROW BEGIN
    DECLARE valor DECIMAL(10,2);
    IF NEW.DataFinal <= DATE_ADD(NEW.DataInicial, INTERVAL 1 DAY) THEN
        -- Calcular o valor para um dia
        SET valor = DATEDIFF(NEW.DataFinal, NEW.DataInicial) * (SELECT ValorLocacaoDia FROM Veiculo WHERE Placa = NEW.PlacaVeiculo);
    ELSEIF NEW.DataFinal <= DATE_ADD(NEW.DataInicial, INTERVAL 7 DAY) THEN
        -- Calcular o valor para uma semana
        SET valor = CEIL(DATEDIFF(NEW.DataFinal, NEW.DataInicial) / 7) * (SELECT ValorLocacaoSemana FROM Veiculo WHERE Placa = NEW.PlacaVeiculo);
    ELSE
        -- Calcular o valor para um mês
        SET valor = CEIL(DATEDIFF(NEW.DataFinal, NEW.DataInicial) / 30) * (SELECT ValorLocacaoMes FROM Veiculo WHERE Placa = NEW.PlacaVeiculo);
    END IF;
    SET NEW.ValorPago = valor;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `locadora` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_locacao_insert` AFTER INSERT ON `locacao` FOR EACH ROW BEGIN
    UPDATE veiculo
    SET Status = 'Alugado'
    WHERE Placa = NEW.PlacaVeiculo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `manutencao`
--

DROP TABLE IF EXISTS `manutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencao` (
  `IDManutencao` int NOT NULL AUTO_INCREMENT,
  `PlacaVeiculo` varchar(7) NOT NULL,
  `DataInicio` date NOT NULL,
  `DataTermino` date NOT NULL,
  `Custos` decimal(10,2) NOT NULL,
  PRIMARY KEY (`IDManutencao`),
  KEY `PlacaVeiculo` (`PlacaVeiculo`),
  CONSTRAINT `manutencao_ibfk_1` FOREIGN KEY (`PlacaVeiculo`) REFERENCES `veiculo` (`Placa`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencao`
--

LOCK TABLES `manutencao` WRITE;
/*!40000 ALTER TABLE `manutencao` DISABLE KEYS */;
INSERT INTO `manutencao` VALUES (11,'ABC1234','2024-03-01','2024-03-05',500.00),(12,'DEF5678','2024-03-02','2024-03-06',600.00),(13,'GHI9012','2024-03-03','2024-03-07',450.00),(14,'JKL3456','2024-03-04','2024-03-08',700.00),(15,'MNO7890','2024-03-05','2024-03-09',550.00),(16,'PQR1234','2024-03-06','2024-03-10',800.00),(17,'STU5678','2024-03-07','2024-03-11',650.00),(18,'VWX9012','2024-03-08','2024-03-12',750.00),(19,'YZA3456','2024-03-09','2024-03-13',700.00),(20,'BCD7890','2024-03-10','2024-03-14',600.00);
/*!40000 ALTER TABLE `manutencao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `Placa` varchar(7) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Ano` int NOT NULL,
  `Fabricante` varchar(50) NOT NULL,
  `NumPassageiros` int NOT NULL,
  `CapacidadePortaMalas` decimal(10,2) NOT NULL,
  `ValorLocacaoDia` decimal(10,2) NOT NULL,
  `ValorLocacaoSemana` decimal(10,2) NOT NULL,
  `ValorLocacaoMes` decimal(10,2) NOT NULL,
  `Categoria` enum('A','B','C','D','E') NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Disponível',
  PRIMARY KEY (`Placa`),
  KEY `idx_placa_veiculo` (`Placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES ('ABC1234','Gol','Gol G4',2015,'Volkswagen',5,300.00,1800.00,6000.00,20000.00,'B','Disponível'),('BCD7890','Ranger','Ranger XLT',2020,'Ford',5,400.00,2400.00,8000.00,25000.00,'D','Disponível'),('DEF5678','Uno','Uno Way',2018,'Fiat',5,250.00,1500.00,5000.00,18000.00,'A','Disponível'),('EFG1234','Tiggo','Tiggo 5X',2019,'Chery',5,320.00,1900.00,6500.00,21000.00,'C','Disponível'),('GHI9012','Civic','Civic EX',2019,'Honda',5,400.00,2400.00,8000.00,25000.00,'C','Alugado'),('HIJ5678','Argo','Argo Drive',2020,'Fiat',5,300.00,1800.00,6000.00,20000.00,'B','Disponível'),('JKL3456','Corolla','Corolla XEi',2017,'Toyota',5,380.00,2200.00,7500.00,23000.00,'C','Em Manutenção'),('LMN9012','Fit','Fit LX',2017,'Honda',5,320.00,1900.00,6500.00,21000.00,'C','Disponível'),('MNO7890','HB20','HB20 Comfort',2016,'Hyundai',5,280.00,1600.00,5500.00,19000.00,'B','Em Manutenção'),('OPQ3456','Golf','Golf TSI',2018,'Volkswagen',5,380.00,2200.00,7500.00,23000.00,'C','Disponível'),('PQR1234','Onix','Onix LT',2020,'Chevrolet',5,320.00,1900.00,6500.00,21000.00,'B','Alugado'),('RST7890','Compass','Compass Longitude',2021,'Jeep',5,420.00,2500.00,8500.00,27000.00,'D','Disponível'),('STU5678','Fiesta','Fiesta SE',2019,'Ford',5,290.00,1700.00,5800.00,20000.00,'B','Alugado'),('VWX9012','Creta','Creta Attitude',2018,'Hyundai',5,350.00,2000.00,7000.00,22000.00,'C','Em Manutenção'),('YZA3456','Toro','Toro Freedom',2021,'Fiat',5,420.00,2500.00,8500.00,27000.00,'D','Em Manutenção');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'locadora'
--

--
-- Dumping routines for database 'locadora'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 14:48:11
