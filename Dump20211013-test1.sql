-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: proy2
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiento` (
  `idasiento` int NOT NULL AUTO_INCREMENT,
  `documentocomprobante` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `glosa` varchar(255) DEFAULT NULL,
  `libroregistro` varchar(255) DEFAULT NULL,
  `numeroasiento` varchar(255) DEFAULT NULL,
  `librodiarioid` int DEFAULT NULL,
  PRIMARY KEY (`idasiento`),
  KEY `FK2j4nh96tbm8dgsd8ya7mf4elt` (`librodiarioid`),
  CONSTRAINT `FK2j4nh96tbm8dgsd8ya7mf4elt` FOREIGN KEY (`librodiarioid`) REFERENCES `librodiario` (`idlibrodiario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
INSERT INTO `asiento` (`idasiento`, `documentocomprobante`, `fecha`, `glosa`, `libroregistro`, `numeroasiento`, `librodiarioid`) VALUES (1,'01','12-12-2021','iiiiii','1','0001',1),(11,'02','12-12-2021','Glodsa glosa','2,3','0002',1),(12,'03','12-12-2021','Lkjghiuyio','1,1','0003',1),(13,'05','12-12-2021','Lkjghiuyio','1,1','0004',1);
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentacontable`
--

DROP TABLE IF EXISTS `cuentacontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentacontable` (
  `idcuentacontable` int NOT NULL AUTO_INCREMENT,
  `cuenta` varchar(10) DEFAULT NULL,
  `denominacion` varchar(200) DEFAULT NULL,
  `digitos` int DEFAULT NULL,
  `nivelcuenta` varchar(1) DEFAULT NULL,
  `tipocuenta` varchar(3) DEFAULT NULL,
  `estructura` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idcuentacontable`),
  UNIQUE KEY `UK_tojh3hynfk6i9n920s1hm2teb` (`cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=1769 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentacontable`
--

LOCK TABLES `cuentacontable` WRITE;
/*!40000 ALTER TABLE `cuentacontable` DISABLE KEYS */;
INSERT INTO `cuentacontable` (`idcuentacontable`, `cuenta`, `denominacion`, `digitos`, `nivelcuenta`, `tipocuenta`, `estructura`) VALUES (1,'1','ACTIVO DISPONIBLE Y EXIGIBLE',1,'','ACT',''),(2,'10','EFECTIVO Y EQUIVALENTES DE EFECTIVO',2,'C','ACT',''),(3,'101','Caja',3,'','ACT',''),(4,'102','Fondos fijos',3,'','ACT',''),(5,'103','Efectivo y cheques en tránsito',3,'','ACT',''),(6,'1031','Efectivo en tránsito',4,'','ACT',''),(7,'1032','Cheques en tránsito',4,'R','ACT',''),(8,'104','Cuentas corrientes en instituciones financieras',3,'','ACT',''),(9,'1041','Cuentas corrientes operativas',4,'','ACT',''),(10,'1042','Cuentas corrientes para fines específicos',4,'','ACT',''),(11,'105','Otros equivalentes de efectivo',3,'','ACT',''),(12,'1051','Otro equivalentes de efectivo',4,'','ACT',''),(13,'106','Depósitos en instituciones financieras',3,'','ACT',''),(14,'1061','Depósitos de ahorro',4,'R','ACT',''),(15,'1062','Depósitos a plazo',4,'R','ACT',''),(16,'107','Fondos sujetos a restricción',3,'','ACT',''),(17,'1071','Fondos en garantía',4,'','ACT',''),(18,'1072','Fondos retenidos por mandato de la autoridad',4,'','ACT',''),(19,'1073','Otros fondos sujetos a restricción',4,'','ACT',''),(20,'11','INVERSIONES FINANCIERAS',2,'C','ACT',''),(21,'111','Inversiones mantenidas para negociación',3,'','ACT',''),(22,'1111','Valores emitidos o garantizados por el Estado',4,'','ACT',''),(23,'11111','Costo',5,'','ACT',''),(24,'11112','Valor Razonable',5,'','ACT',''),(25,'1112','Valores emitidos por el sistema financiero',4,'','ACT',''),(26,'11121','Costo',5,'','ACT',''),(27,'11122','Valor Razonable',5,'','ACT',''),(28,'1113','Valores emitidos por entidades',4,'','ACT',''),(29,'11131','Costo',5,'','ACT',''),(30,'11132','Valor Razonable',5,'','ACT',''),(31,'1114','Otros títulos representativos de deuda',4,'','ACT',''),(32,'11141','Costo',5,'','ACT',''),(33,'11142','Valor Razonable',5,'','ACT',''),(34,'1115','Participaciones en entidades',4,'','ACT',''),(35,'11151','Costo',5,'','ACT',''),(36,'11152','Valor Razonable',5,'','ACT',''),(37,'112','Otras inversiones financieras',3,'','ACT',''),(38,'1121','Otras inversiones financieras',4,'','ACT',''),(39,'11211','Costo',5,'','ACT',''),(40,'11212','Valor Razonable',5,'','ACT',''),(41,'113','Activos financieros  Acuerdo de compra',3,'','ACT',''),(42,'1131','Inversiones mantenidas para negociación  Acuerdo de compra',4,'','ACT',''),(43,'11311','Costo',5,'','ACT',''),(44,'11312','Valor Razonable',5,'','ACT',''),(45,'1132','Otras inversiones financieras',4,'','ACT',''),(46,'11321','Costo',5,'','ACT',''),(47,'11322','Valor Razonable',5,'','ACT',''),(48,'12','CUENTAS POR COBRAR COMERCIALES  TERCEROS',2,'C','ACT',''),(49,'121','Facturas, boletas y otros comprobantes por cobrar',3,'','ACT',''),(50,'1211','No emitidas',4,'','ACT',''),(51,'1212','Emitidas en cartera',4,'','ACT',''),(52,'1213','En cobranza',4,'','ACT',''),(53,'1214','En descuento',4,'','ACT',''),(54,'122','Anticipos de clientes',3,'','ACT',''),(55,'123','Letras por cobrar',3,'','ACT',''),(56,'1232','En cartera',4,'','ACT',''),(57,'1233','En cobranza',4,'','ACT',''),(58,'1234','En descuento',4,'','ACT',''),(59,'13','CUENTAS POR COBRAR COMERCIALES  RELACIONADAS',2,'C','ACT',''),(60,'131','Facturas, boletas y otros comprobantes por cobrar',3,'','ACT',''),(61,'1311','No emitidas',4,'','ACT',''),(62,'1312','En cartera',4,'','ACT',''),(63,'1313','En cobranza',4,'','ACT',''),(64,'1314','En descuento',4,'','ACT',''),(65,'132','Anticipos recibidos',3,'','ACT',''),(66,'1321','Anticipos recibidos',4,'','ACT',''),(67,'133','Letras por cobrar',3,'','ACT',''),(68,'1331','En cartera',4,'','ACT',''),(69,'1332','En cobranza',4,'','ACT',''),(70,'1333','En descuento',4,'','ACT',''),(71,'14','CUENTAS POR COBRAR AL PERSONAL, A LOS ACCIONISTAS (SOCIOS) Y DIRECTORES',2,'C','ACT',''),(72,'141','Personal',3,'','ACT',''),(73,'1411','Préstamos',4,'','ACT',''),(74,'1412','Adelanto de remuneraciones',4,'','ACT',''),(75,'1413','Entregas a rendir cuenta',4,'','ACT',''),(76,'1419','Otras cuentas por cobrar al personal',4,'','ACT',''),(77,'142','Accionistas (o socios)',3,'','ACT',''),(78,'1421','Suscripciones por cobrar a socios o accionistas',4,'','ACT',''),(79,'1422','Préstamos',4,'','ACT',''),(80,'143','Directores',3,'','ACT',''),(81,'1431','Préstamos',4,'','ACT',''),(82,'1432','Adelanto de dietas',4,'','ACT',''),(83,'1433','Entregas a rendir cuenta',4,'','ACT',''),(84,'149','Diversas',3,'','ACT',''),(85,'16','CUENTAS POR COBRAR DIVERSAS  TERCEROS',2,'C','ACT',''),(86,'161','Préstamos',3,'','ACT',''),(87,'1611','Con garantía',4,'','ACT',''),(88,'1612','Sin garantía',4,'','ACT',''),(89,'162','Reclamaciones a terceros',3,'','ACT',''),(90,'1621','Compańías aseguradoras',4,'','ACT',''),(91,'1622','Transportadoras',4,'','ACT',''),(92,'1623','Servicios públicos',4,'','ACT',''),(93,'1624','Tributos',4,'','ACT',''),(94,'1629','Otras',4,'','ACT',''),(95,'163','Intereses, regalías y dividendos',3,'','ACT',''),(96,'1631','Intereses',4,'','ACT',''),(97,'1632','Regalías',4,'','ACT',''),(98,'1633','Dividendos',4,'','ACT',''),(99,'164','Depósitos otorgados en garantía',3,'','ACT',''),(100,'1641','Préstamos de instituciones financieras',4,'','ACT',''),(101,'1642','Préstamos de instituciones no financieras',4,'','ACT',''),(102,'1643','Depósitos en garantía por alquileres',4,'','ACT',''),(103,'1649','Otros depósitos en garantía',4,'','ACT',''),(104,'165','Venta de activo inmovilizado',3,'','ACT',''),(105,'1651','Inversión mobiliaria',4,'','ACT',''),(106,'1652','Propiedades de inversión',4,'','ACT',''),(107,'1653','Propiedad, planta y equipo',4,'','ACT',''),(108,'1654','Intangibles',4,'','ACT',''),(109,'1655','Activos biológicos',4,'','ACT',''),(110,'1659','Otros activos inmovilizados',4,'','ACT',''),(111,'166','Activos por instrumentos financieros',3,'','ACT',''),(112,'1661','Instrumentos financieros primarios',4,'','ACT',''),(113,'16611','Costo',5,'','ACT',''),(114,'16612','Valor razonable',5,'','ACT',''),(115,'1662','Instrumentos financieros derivados',4,'','ACT',''),(116,'16621','Costo',5,'','ACT',''),(117,'16622','Valor razonable',5,'','ACT',''),(118,'167','Tributos por acreditar',3,'','ACT',''),(119,'1671','Pagos a cuenta del impuesto a la renta',4,'','ACT',''),(120,'1672','Pagos a cuenta de ITAN',4,'','ACT',''),(121,'1673','IGV por acreditar en compras',4,'','ACT',''),(122,'1674','IGV por acreditar no domiciliados',4,'','ACT',''),(123,'1675','Obras por impuestos',4,'','ACT',''),(124,'169','Otras cuentas por cobrar diversas',3,'','ACT',''),(125,'1691','Entregas a rendir cuenta a terceros',4,'','ACT',''),(126,'1699','Otras cuentas por cobrar diversas',4,'','ACT',''),(127,'17','CUENTAS POR COBRAR DIVERSAS  RELACIONADAS',2,'C','ACT',''),(128,'171','Préstamos',3,'','ACT',''),(129,'1711','Con garantía',4,'','ACT',''),(130,'1712','Sin garantía',4,'','ACT',''),(131,'173','Intereses, regalías y dividendos',3,'','ACT',''),(132,'1731','Intereses',4,'','ACT',''),(133,'1732','Regalías',4,'','ACT',''),(134,'1733','Dividendos',4,'','ACT',''),(135,'174','Depósitos otorgados en garantía',3,'','ACT',''),(136,'1741','Préstamos de instituciones financieras',4,'','ACT',''),(137,'1742','Préstamos de instituciones no financieras',4,'','ACT',''),(138,'1743','Depósitos en garantía por alquileres',4,'','ACT',''),(139,'1749','Otros depósitos en garantía',4,'','ACT',''),(140,'175','Venta de activo inmovilizado',3,'','ACT',''),(141,'1751','Inversión mobiliaria',4,'','ACT',''),(142,'1752','Propiedades de inversión',4,'','ACT',''),(143,'1753','Propiedad, planta y equipo',4,'','ACT',''),(144,'1754','Intangibles',4,'','ACT',''),(145,'1755','Activos biológicos',4,'','ACT',''),(146,'1759','Otros activos inmovilizados',4,'','ACT',''),(147,'176','Activos por instrumentos financieros',3,'','ACT',''),(148,'1761','Instrumentos financieros primarios',4,'','ACT',''),(149,'17611','Costo',5,'','ACT',''),(150,'17612','Valor razonable',5,'','ACT',''),(151,'1762','Instrumentos financieros derivados',4,'','ACT',''),(152,'17621','Costo',5,'','ACT',''),(153,'17622','Valor razonable',5,'','ACT',''),(154,'179','Otras cuentas por cobrar diversas',3,'','ACT',''),(155,'18','SERVICIOS Y OTROS CONTRATADOS POR ANTICIPADO',2,'C','ACT',''),(156,'181','Costos financieros',3,'','ACT',''),(157,'182','Seguros',3,'','ACT',''),(158,'183','Alquileres',3,'','ACT',''),(159,'184','Primas pagadas por opciones',3,'','ACT',''),(160,'185','Mantenimiento de activos inmovilizados',3,'','ACT',''),(161,'189','Otros gastos contratados por anticipado',3,'','ACT',''),(162,'19','ESTIMACIÓN DE CUENTAS DE COBRANZA DUDOSA',2,'C','ACT',''),(163,'191','Cuentas por cobrar comerciales  Terceros',3,'','ACT',''),(164,'1911','Facturas, boletas y otros comprobantes por cobrar',4,'','ACT',''),(165,'1913','Letras por cobrar',4,'','ACT',''),(166,'192','Cuentas por cobrar comerciales  Relacionadas',3,'','ACT',''),(167,'1921','Facturas, boletas y otros comprobantes por cobrar',4,'','ACT',''),(168,'1923','Letras por cobrar',4,'','ACT',''),(169,'193','Cuentas por cobrar al personal, a los accionistas (socios) y directores',3,'','ACT',''),(170,'1931','Personal',4,'','ACT',''),(171,'1932','Accionistas (o socios)',4,'','ACT',''),(172,'1933','Directores',4,'','ACT',''),(173,'1939','Diversas',4,'','ACT',''),(174,'194','Cuentas por cobrar diversas  Terceros',3,'','ACT',''),(175,'1941','Préstamos',4,'','ACT',''),(176,'1942','Reclamaciones a terceros',4,'','ACT',''),(177,'1943','Intereses, regalías y dividendos',4,'','ACT',''),(178,'1944','Depósitos otorgados en garantía',4,'','ACT',''),(179,'1945','Venta de activo inmovilizado',4,'','ACT',''),(180,'1946','Activos por instrumentos financieros',4,'','ACT',''),(181,'1949','Otras cuentas por cobrar diversas',4,'','ACT',''),(182,'195','Cuentas por cobrar diversas  Relacionadas',3,'','ACT',''),(183,'1951','Préstamos',4,'','ACT',''),(184,'1953','Intereses, regalías y dividendos',4,'','ACT',''),(185,'1954','Depósitos otorgados en garantía',4,'','ACT',''),(186,'1955','Venta de activo inmovilizado',4,'','ACT',''),(187,'1956','Activos por instrumentos financieros',4,'','ACT',''),(188,'1959','Otras cuentas por cobrar diversas',4,'','ACT',''),(189,'2','ACTIVO REALIZABLE',1,'','ACT',''),(190,'20','MERCADERÍAS',2,'C','ACT',''),(191,'201','Mercaderías',3,'','ACT',''),(192,'2011','Mercaderías',4,'','ACT',''),(193,'20111','Costo',5,'','ACT',''),(194,'20114','Valor razonable',5,'','ACT',''),(195,'21','PRODUCTOS TERMINADOS',2,'C','ACT',''),(196,'211','Productos terminados',3,'','ACT',''),(197,'2111','Productos terminados',4,'','ACT',''),(198,'21111','Costo',5,'','ACT',''),(199,'21113','Costo de financiación',5,'','ACT',''),(200,'21114','Valor razonable',5,'','ACT',''),(201,'215','Inventario de servicios terminados',3,'','ACT',''),(202,'2151','Servicios terminados',4,'','ACT',''),(203,'21511','Costo',5,'','ACT',''),(204,'22','SUBPRODUCTOS, DESECHOS Y DESPERDICIOS',2,'C','ACT',''),(205,'221','Subproductos',3,'','ACT',''),(206,'222','Desechos y desperdicios',3,'','ACT',''),(207,'23','PRODUCTOS EN PROCESO',2,'C','ACT',''),(208,'231','Productos en proceso',3,'','ACT',''),(209,'2311','Productos en proceso',4,'','ACT',''),(210,'23111','Costo',5,'','ACT',''),(211,'23113','Costo de financiación',5,'','ACT',''),(212,'235','Inventario de servicios en proceso',3,'','ACT',''),(213,'2351','Servicios en proceso',4,'','ACT',''),(214,'23511','Costo',5,'','ACT',''),(215,'24','MATERIAS PRIMAS',2,'C','ACT',''),(216,'241','Materias primas',3,'','ACT',''),(217,'2411','Materias primas',4,'','ACT',''),(218,'24111','Costo',5,'','ACT',''),(219,'24114','Valor razonable',5,'','ACT',''),(220,'25','MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS',2,'C','ACT',''),(221,'251','Materiales auxiliares',3,'','ACT',''),(222,'252','Suministros',3,'','ACT',''),(223,'2521','Combustibles',4,'','ACT',''),(224,'2522','Lubricantes',4,'','ACT',''),(225,'2523','Energía',4,'','ACT',''),(226,'2524','Otros suministros',4,'','ACT',''),(227,'253','Repuestos',3,'','ACT',''),(228,'26','ENVASES Y EMBALAJES',2,'C','ACT',''),(229,'261','Envases',3,'','ACT',''),(230,'262','Embalajes',3,'','ACT',''),(231,'27','ACTIVOS NO CORRIENTES MANTENIDOS PARA LA VENTA',2,'C','ACT',''),(232,'271','Propiedades de inversión',3,'','ACT',''),(233,'2711','Terrenos',4,'','ACT',''),(234,'27111','Costo',5,'','ACT',''),(235,'27112','Revaluación',5,'','ACT',''),(236,'27114','Valor razonable',5,'','ACT',''),(237,'2712','Edificaciones',4,'','ACT',''),(238,'27121','Costo',5,'','ACT',''),(239,'27122','Revaluación',5,'','ACT',''),(240,'27123','Costos de financiación',5,'','ACT',''),(241,'27124','Valor razonable',5,'','ACT',''),(242,'272','Propiedad, planta y equipo',3,'','ACT',''),(243,'2720','Planta productora en producción',4,'','ACT',''),(244,'27201','Costo',5,'','ACT',''),(245,'27202','Revaluación',5,'','ACT',''),(246,'27203','Costo de financiación',5,'','ACT',''),(247,'27204','Valor razonable',5,'','ACT',''),(248,'2721','Planta productora en desarrollo',4,'','ACT',''),(249,'27211','Costo',5,'','ACT',''),(250,'27212','Revaluación',5,'','ACT',''),(251,'27213','Costo de financiación',5,'','ACT',''),(252,'27214','Valor razonable',5,'','ACT',''),(253,'2722','Terrenos',4,'','ACT',''),(254,'27221','Costo',5,'','ACT',''),(255,'27222','Revaluación',5,'','ACT',''),(256,'2723','Edificaciones',4,'','ACT',''),(257,'27231','Costo',5,'','ACT',''),(258,'27232','Revaluación',5,'','ACT',''),(259,'27233','Costo de financiación',5,'','ACT',''),(260,'2724','Maquinarias y equipos de explotación',4,'','ACT',''),(261,'27241','Costo',5,'','ACT',''),(262,'27242','Revaluación',5,'','ACT',''),(264,'2725','Unidades de transporte',4,'','ACT',''),(265,'27251','Costo',5,'','ACT',''),(266,'27252','Revaluación',5,'','ACT',''),(267,'2726','Muebles y enseres',4,'','ACT',''),(268,'27261','Costo',5,'','ACT',''),(269,'27262','Revaluación',5,'','ACT',''),(270,'2727','Equipos diversos',4,'','ACT',''),(271,'27271','Costo',5,'','ACT',''),(272,'27272','Revaluación',5,'','ACT',''),(273,'2728','Herramientas y unidades de reemplazo',4,'','ACT',''),(274,'27281','Costo',5,'','ACT',''),(275,'27282','Revaluación',5,'','ACT',''),(276,'2729','Obras en curso',4,'','ACT',''),(277,'27291','Costo',5,'','ACT',''),(278,'27292','Revaluación',5,'','ACT',''),(279,'273','Intangibles',3,'','ACT',''),(280,'2731','Concesiones, licencias y derechos',4,'','ACT',''),(281,'27311','Costo',5,'','ACT',''),(282,'27312','Revaluación',5,'','ACT',''),(283,'2732','Patentes y propiedad industrial',4,'','ACT',''),(284,'27321','Costo',5,'','ACT',''),(285,'27322','Revaluación',5,'','ACT',''),(286,'2733','Programas de computadora (software)',4,'','ACT',''),(287,'27331','Costo',5,'','ACT',''),(288,'27332','Revaluación',5,'','ACT',''),(289,'2734','Costos de exploración y desarrollo',4,'','ACT',''),(290,'27341','Costo',5,'','ACT',''),(291,'27342','Revaluación',5,'','ACT',''),(292,'2735','Fórmulas, diseńos y prototipos',4,'','ACT',''),(293,'27351','Costo',5,'','ACT',''),(294,'27352','Revaluación',5,'','ACT',''),(295,'2739','Otros activos intangibles',4,'','ACT',''),(296,'27391','Costo',5,'','ACT',''),(297,'27392','Revaluación',5,'','ACT',''),(298,'274','Activos biológicos',3,'','ACT',''),(299,'2741','Activos biológicos en producción',4,'','ACT',''),(300,'27411','Costo',5,'','ACT',''),(301,'27413','Costos de financiación',5,'','ACT',''),(302,'27414','Valor razonable',5,'','ACT',''),(303,'2742','Activos biológicos en desarrollo',4,'','ACT',''),(304,'27421','Costo',5,'','ACT',''),(305,'27423','Costos de financiación',5,'','ACT',''),(306,'27424','Valor razonable',5,'','ACT',''),(307,'275','Depreciación acumulada  Propiedades de inversión',3,'','ACT',''),(308,'2752','Edificaciones',4,'','ACT',''),(309,'27521','Costo',5,'','ACT',''),(310,'27522','Revaluación',5,'','ACT',''),(311,'27523','Costo de financiación',5,'','ACT',''),(312,'276','Depreciación acumulada  Propiedad, planta y equipo',3,'','ACT',''),(313,'2760','Planta productora en producción',4,'','ACT',''),(314,'27601','Costo',5,'','ACT',''),(315,'27602','Revaluación',5,'','ACT',''),(316,'27603','Costo de financiación\n27604 Valor razonable',5,'','ACT',''),(317,'2762','Edificaciones',4,'','ACT',''),(318,'27621','Costo',5,'','ACT',''),(319,'27622','Revaluación',5,'','ACT',''),(320,'27623','Costo de financiación',5,'','ACT',''),(321,'2763','Maquinarias y equipo de explotación',4,'','ACT',''),(322,'27631','Costo',5,'','ACT',''),(323,'27632','Revaluación',5,'','ACT',''),(324,'27633','Costo de financiación',5,'','ACT',''),(325,'2764','Unidades de transporte',4,'','ACT',''),(326,'27641','Costo',5,'','ACT',''),(327,'27642','Revaluación',5,'','ACT',''),(328,'2765','Muebles y enseres',4,'','ACT',''),(329,'27651','Costo',5,'','ACT',''),(330,'27652','Revaluación',5,'','ACT',''),(331,'2766','Equipos diversos',4,'','ACT',''),(332,'27661','Costo',5,'','ACT',''),(333,'27662','Revaluación',5,'','ACT',''),(334,'2767','Herramientas y unidades de reemplazo',4,'','ACT',''),(335,'27671','Costo',5,'','ACT',''),(336,'27672','Revaluación',5,'','ACT',''),(337,'277','Amortización acumulada  Intangibles',3,'','ACT',''),(338,'2771','Concesiones, licencias y derechos',4,'','ACT',''),(339,'27711','Costo',5,'','ACT',''),(340,'27712','Revaluación',5,'','ACT',''),(341,'2772','Patentes y propiedad industrial',4,'','ACT',''),(342,'27721','Costo',5,'','ACT',''),(343,'27722','Revaluación',5,'','ACT',''),(344,'2773','Programas de computadora (software)',4,'','ACT',''),(345,'27731','Costo',5,'','ACT',''),(346,'27732','Revaluación',5,'','ACT',''),(347,'2774','Costos de exploración y desarrollo',4,'','ACT',''),(348,'27741','Costo',5,'','ACT',''),(349,'27742','Revaluación',5,'','ACT',''),(350,'2775','Fórmulas, diseńos y prototipos',4,'','ACT',''),(351,'27751','Costo',5,'','ACT',''),(352,'27752','Revaluación',5,'','ACT',''),(353,'2779','Otros activos intangibles',4,'','ACT',''),(354,'27791','Costo',5,'','ACT',''),(355,'27792','Revaluación',5,'','ACT',''),(356,'278','Depreciación acumulada  Activos biológicos',3,'','ACT',''),(357,'2781','Activos biológicos en producción',4,'','ACT',''),(358,'27811','Costo',5,'','ACT',''),(359,'27813','Costo de financiación',5,'','ACT',''),(360,'2782','Activos biológicos en desarrollo',4,'','ACT',''),(361,'27821','Costo',5,'','ACT',''),(362,'27823','Costo de financiación',5,'','ACT',''),(363,'279','Desvalorización acumulada',3,'','ACT',''),(364,'2791','Propiedad de inversión',4,'','ACT',''),(365,'27910','Planta productora en producción',5,'','ACT',''),(366,'27911','Planta productora en desarrollo',5,'','ACT',''),(367,'27912','Terrenos',5,'','ACT',''),(368,'27913','Edificaciones',5,'','ACT',''),(369,'2793','Propiedad, planta y equipo',4,'','ACT',''),(370,'27930','Plantas productoras en producción',5,'','ACT',''),(371,'27931','Planta productora en desarrollo',5,'','ACT',''),(372,'27932','Terrenos',5,'','ACT',''),(373,'27933','Edificaciones',5,'','ACT',''),(374,'27934','Maquinarias y equipos de explotación',5,'','ACT',''),(375,'27935','Unidades de transporte',5,'','ACT',''),(376,'27936','Muebles y enseres',5,'','ACT',''),(377,'27937','Equipos diversos',5,'','ACT',''),(378,'27938','Herramientas y unidades de reemplazo',5,'','ACT',''),(379,'2794','Intangibles',4,'','ACT',''),(380,'27941','Concesiones, licencias y otros derechos',5,'','ACT',''),(381,'27942','Patentes y propiedad industrial',5,'','ACT',''),(382,'27943','Programas de computadora (software)',5,'','ACT',''),(383,'27944','Costos de exploración y desarrollo',5,'','ACT',''),(384,'27945','Fórmulas, diseńos y prototipos',5,'','ACT',''),(385,'27949','Otros activos intangibles',5,'','ACT',''),(386,'2795','Activos biológicos',4,'','ACT',''),(387,'27951','Activos biológicos en producción',5,'','ACT',''),(388,'27952','Activos biológicos en desarrollo',5,'','ACT',''),(389,'28','INVENTARIOS POR RECIBIR',2,'C','ACT',''),(390,'281','Mercaderías',3,'','ACT',''),(391,'284','Materias primas',3,'','ACT',''),(392,'285','Materiales auxiliares, suministros y repuestos',3,'','ACT',''),(393,'286','Envases y embalajes',3,'','ACT',''),(394,'29','DESVALORIZACIÓN DE INVENTARIOS',2,'C','ACT',''),(395,'291','Mercaderías',3,'','ACT',''),(396,'2911','Mercaderías',4,'','ACT',''),(397,'29111','Costo',5,'','ACT',''),(398,'292','Productos terminados',3,'','ACT',''),(399,'2921','Productos terminados',4,'','ACT',''),(400,'29211','Costo',5,'','ACT',''),(401,'29213','Costo de financiación',5,'','ACT',''),(402,'2925','Inventario de servicios terminados',4,'','ACT',''),(403,'29251','Costo',5,'','ACT',''),(404,'293','Subproductos, desechos y desperdicios',3,'','ACT',''),(405,'2931','Subproductos',4,'','ACT',''),(406,'2932','Desechos y desperdicios',4,'','ACT',''),(407,'294','Productos en proceso',3,'','ACT',''),(408,'2941','Productos en proceso',4,'','ACT',''),(409,'29411','Costo',5,'','ACT',''),(410,'29413','Costo de financiación',5,'','ACT',''),(411,'2945','Inventario de servicios en proceso',4,'','ACT',''),(412,'295','Materias primas',3,'','ACT',''),(413,'2951','Materias primas',4,'','ACT',''),(414,'29511','Costo',5,'','ACT',''),(415,'296','Materiales auxiliares, suministros y repuestos',3,'','ACT',''),(416,'2961','Materiales auxiliares',4,'','ACT',''),(417,'2962','Suministros',4,'','ACT',''),(418,'2963','Repuestos',4,'','ACT',''),(419,'297','Envases y embalajes',3,'','ACT',''),(420,'2971','Envases',4,'','ACT',''),(421,'2972','Embalajes',4,'','ACT',''),(422,'298','Existencias por recibir',3,'','ACT',''),(423,'2981','Mercaderías',4,'','ACT',''),(424,'2982','Materias primas',4,'','ACT',''),(425,'2983','Materiales auxiliares, suministros y repuestos',4,'','ACT',''),(426,'2984','Envases y embalajes',4,'','ACT',''),(427,'3','ACTIVO INMOVILIZADO',1,'','ACT',''),(428,'30','INVERSIONES MOBILIARIAS',2,'C','ACT',''),(429,'301','Inversiones a ser mantenidas hasta el vencimiento',3,'','ACT',''),(430,'3011','Instrumentos financieros representativos de deuda',4,'','ACT',''),(431,'30221','Costo',5,'','ACT',''),(432,'30224','Valor razonable',5,'','ACT',''),(433,'302','Instrumentos financieros representativos de derecho patrimonial',3,'','ACT',''),(434,'3021','Certificados de suscripción preferente',4,'','ACT',''),(435,'3022','Acciones representativas de capital social  Comunes',4,'','ACT',''),(438,'30225','Participación patrimonial',5,'','ACT',''),(439,'3023','Acciones representativas de capital social  Preferentes',4,'','ACT',''),(440,'30231','Costo',5,'','ACT',''),(441,'30234','Valor razonable',5,'','ACT',''),(442,'30235','Participación patrimonial',5,'','ACT',''),(443,'3024','Acciones de inversión',4,'','ACT',''),(444,'30241','Costo',5,'','ACT',''),(445,'30244','Valor razonable',5,'','ACT',''),(446,'30245','Participación patrimonial',5,'','ACT',''),(447,'3028','Otros títulos representativos de patrimonio',4,'','ACT',''),(448,'30281','Costo',5,'','ACT',''),(449,'30284','Valor razonable',5,'','ACT',''),(450,'30285','Participación patrimonial',5,'','ACT',''),(451,'303','Certificados de participación en fondos - Cuotas',3,'','ACT',''),(452,'3031','Fondos de inversión',4,'','ACT',''),(453,'30311','Costo',5,'','ACT',''),(454,'30314','Valor razonable',5,'','ACT',''),(455,'3032','Fondos mutuos',4,'','ACT',''),(456,'30321','Costo',5,'','ACT',''),(457,'30324','Valor razonable',5,'','ACT',''),(458,'304','Participaciones en acuerdos conjuntos',3,'','ACT',''),(459,'3041','Operaciones conjuntas',4,'','ACT',''),(460,'30411','Costo',5,'','ACT',''),(461,'30414','Valor razonable',5,'','ACT',''),(462,'30415','Participación patrimonial',5,'','ACT',''),(463,'3042','Negocios conjuntos',4,'','ACT',''),(464,'30421','Costo',5,'','ACT',''),(465,'30424','Valor razonable',5,'','ACT',''),(466,'30425','Participación patrimonial',5,'','ACT',''),(467,'308','Inversiones mobiliarias  Acuerdos de compra',3,'','ACT',''),(468,'3081','Instrumentos financieros representativos de deuda  Acuerdo de compra',4,'','ACT',''),(469,'30811','Costo',5,'','ACT',''),(470,'30814','Valor razonable',5,'','ACT',''),(471,'3082','Instrumentos financieros representativos de derecho patrimonial \nAcuerdo de compra',4,'','ACT',''),(472,'30821','Costo',5,'','ACT',''),(473,'30824','Valor razonable',5,'','ACT',''),(474,'31','PROPIEDADES DE INVERSIÓN',2,'C','ACT',''),(475,'311','Terrenos',3,'','ACT',''),(476,'3111','Urbanos',4,'','ACT',''),(477,'31111','Costo',5,'','ACT',''),(478,'31112','Revaluación',5,'','ACT',''),(479,'31114','Valor razonable',5,'','ACT',''),(480,'3112','Rurales',4,'','ACT',''),(481,'31121','Costo',5,'','ACT',''),(482,'31122','Revaluación',5,'','ACT',''),(483,'31124','Valor razonable',5,'','ACT',''),(484,'312','Edificaciones',3,'','ACT',''),(485,'3121','Edificaciones',4,'','ACT',''),(486,'31211','Costo',5,'','ACT',''),(487,'31212','Revaluación',5,'','ACT',''),(488,'31213','Costos de financiación',5,'','ACT',''),(489,'31214','Valor razonable',5,'','ACT',''),(490,'313','Construcciones en curso',3,'','ACT',''),(491,'3131','Edificaciones',4,'','ACT',''),(492,'31311','Costo',5,'','ACT',''),(493,'31312','Revaluación',5,'','ACT',''),(494,'31313','Costos de financiación',5,'','ACT',''),(495,'31314','Valor razonable',5,'','ACT',''),(496,'32','ACTIVOS POR DERECHO DE USO',2,'C','ACT',''),(497,'321','Propiedades de inversión - Arrendamiento financiero',3,'','ACT',''),(498,'3211','Terrenos',4,'','ACT',''),(499,'32111','Costo',5,'','ACT',''),(500,'32112','Revaluación',5,'','ACT',''),(501,'32114','Valor razonable',5,'','ACT',''),(502,'3212','Edificaciones',4,'','ACT',''),(503,'32121','Costo',5,'','ACT',''),(504,'32122','Revaluación',5,'','ACT',''),(505,'32123','Costo de financiación',5,'','ACT',''),(506,'32124','Valor razonable',5,'','ACT',''),(507,'322','Propiedad, planta y equipo - Arrendamiento financiero',3,'','ACT',''),(508,'3220','Planta productora en producción',4,'','ACT',''),(509,'32201','Costo',5,'','ACT',''),(510,'32202','Revaluación',5,'','ACT',''),(511,'32203','Costo de financiación',5,'','ACT',''),(512,'3221','Planta productora en desarrollo',4,'','ACT',''),(513,'32211','Costo',5,'','ACT',''),(514,'32212','Revaluación',5,'','ACT',''),(515,'32213','Costo de financiación',5,'','ACT',''),(516,'3222','Terrenos',4,'','ACT',''),(517,'32221','Costo',5,'','ACT',''),(518,'32222','Revaluación',5,'','ACT',''),(519,'3223','Edificaciones',4,'','ACT',''),(520,'32231','Costo',5,'','ACT',''),(521,'32232','Revaluación',5,'','ACT',''),(522,'32233','Costo de financiación',5,'','ACT',''),(523,'3224','Maquinaria y equipo de explotación',4,'','ACT',''),(524,'32241','Costo',5,'','ACT',''),(525,'32242','Revaluación',5,'','ACT',''),(526,'32243','Costo de financiación',5,'','ACT',''),(527,'3225','Unidades de transporte',4,'','ACT',''),(528,'32251','Costo',5,'','ACT',''),(529,'32252','Revaluación',5,'','ACT',''),(530,'3226','Muebles y enseres',4,'','ACT',''),(531,'32261','Costo',5,'','ACT',''),(532,'32262','Revaluación',5,'','ACT',''),(533,'3227','Equipos diversos',4,'','ACT',''),(534,'32271','Costo',5,'','ACT',''),(535,'32272','Revaluación',5,'','ACT',''),(536,'3228','Herramientas y unidades de reemplazo',4,'','ACT',''),(537,'32281','Costo',5,'','ACT',''),(538,'32282','Revaluación',5,'','ACT',''),(539,'323','Propiedad, planta y equipo - Arrendamiento operativo',3,'','ACT',''),(540,'3230','Planta productora en producción',4,'','ACT',''),(541,'32301','Costo',5,'','ACT',''),(542,'32302','Revaluación',5,'','ACT',''),(543,'3232','Terrenos',4,'','ACT',''),(544,'32321','Costo',5,'','ACT',''),(545,'3233','Edificaciones',4,'','ACT',''),(546,'32331','Costo',5,'','ACT',''),(547,'32332','Revaluación',5,'','ACT',''),(548,'3234','Maquinaria y equipo de explotación',4,'','ACT',''),(549,'32341','Costo',5,'','ACT',''),(550,'32342','Revaluación',5,'','ACT',''),(551,'3235','Unidades de transporte',4,'','ACT',''),(552,'32351','Costo',5,'','ACT',''),(553,'32352','Revaluación',5,'','ACT',''),(554,'3236','Equipos diversos',4,'','ACT',''),(555,'32361','Costo',5,'','ACT',''),(556,'32362','Revaluación',5,'','ACT',''),(557,'33','PROPIEDAD, PLANTA Y EQUIPO',2,'C','ACT',''),(558,'330','Planta productora',3,'','ACT',''),(559,'3301','Planta productora en producción',4,'','ACT',''),(560,'33011','Costo',5,'','ACT',''),(561,'33012','Revaluación',5,'','ACT',''),(562,'33013','Costo de financiación',5,'','ACT',''),(563,'33014','Valor razonable',5,'','ACT',''),(564,'3302','Planta productora en desarrollo',4,'','ACT',''),(565,'33021','Costo',5,'','ACT',''),(566,'33022','Revaluación',5,'','ACT',''),(567,'33023','Costo de financiación',5,'','ACT',''),(568,'33024','Valor razonable',5,'','ACT',''),(569,'331','Terrenos',3,'','ACT',''),(570,'3311','Terrenos',4,'','ACT',''),(571,'33111','Costo',5,'','ACT',''),(572,'33112','Revaluación',5,'','ACT',''),(573,'332','Edificaciones',3,'','ACT',''),(574,'3321','Edificaciones',4,'','ACT',''),(575,'33211','Costo',5,'','ACT',''),(576,'33212','Revaluación',5,'','ACT',''),(577,'33213','Costo de financiación',5,'','ACT',''),(578,'3324','Instalaciones',4,'','ACT',''),(579,'33241','Costo',5,'','ACT',''),(580,'33242','Revaluación',5,'','ACT',''),(581,'33243','Costo de financiación',5,'','ACT',''),(582,'3325','Mejoras en locales arrendados.',4,'','ACT',''),(583,'33251','Costo',5,'','ACT',''),(584,'33252','Revaluación',5,'','ACT',''),(585,'33253','Costo de Financiación',5,'','ACT',''),(586,'333','Maquinaria y equipo de explotación',3,'','ACT',''),(587,'3331','Maquinaria y equipo de explotación',4,'','ACT',''),(588,'33311','Costo',5,'','ACT',''),(589,'33312','Revaluación',5,'','ACT',''),(590,'33313','Costo de financiación',5,'','ACT',''),(591,'334','Unidades de transporte',3,'','ACT',''),(592,'3341','Vehículos motorizados',4,'','ACT',''),(593,'33411','Costo',5,'','ACT',''),(594,'33412','Revaluación',5,'','ACT',''),(595,'3342','Vehículos no motorizados',4,'','ACT',''),(596,'33421','Costo',5,'','ACT',''),(597,'33422','Revaluación',5,'','ACT',''),(598,'335','Muebles y enseres',3,'','ACT',''),(599,'3351','Muebles',4,'','ACT',''),(600,'33511','Costo',5,'','ACT',''),(601,'33512','Revaluación',5,'','ACT',''),(602,'3352','Enseres',4,'','ACT',''),(603,'33521','Costo',5,'','ACT',''),(604,'33522','Revaluación',5,'','ACT',''),(605,'336','Equipos diversos',3,'','ACT',''),(606,'3361','Equipo para procesamiento de información',4,'','ACT',''),(607,'33611','Costo',5,'','ACT',''),(608,'33612','Revaluación',5,'','ACT',''),(609,'3362','Equipo de comunicación',4,'','ACT',''),(610,'33621','Costo',5,'','ACT',''),(611,'33622','Revaluación',5,'','ACT',''),(612,'3363','Equipo de seguridad',4,'','ACT',''),(613,'33631','Costo',5,'','ACT',''),(614,'33632','Revaluación',5,'','ACT',''),(615,'3364','Equipo de medio ambiente',4,'','ACT',''),(616,'33641','Costo',5,'','ACT',''),(617,'33642','Revaluación',5,'','ACT',''),(618,'3369','Otros equipos',4,'','ACT',''),(619,'33691','Costo',5,'','ACT',''),(620,'33692','Revaluación',5,'','ACT',''),(621,'337','Herramientas y unidades de reemplazo',3,'','ACT',''),(622,'3371','Herramientas',4,'','ACT',''),(623,'33711','Costo',5,'','ACT',''),(624,'33712','Revaluación',5,'','ACT',''),(625,'3372','Unidades de reemplazo',4,'','ACT',''),(626,'33721','Costo',5,'','ACT',''),(627,'33722','Revaluación',5,'','ACT',''),(628,'338','Unidades por recibir',3,'','ACT',''),(629,'3381','Maquinaria y equipo de explotación',4,'','ACT',''),(630,'3382','Equipo de transporte',4,'','ACT',''),(631,'3383','Muebles y enseres',4,'','ACT',''),(632,'3386','Equipos diversos',4,'','ACT',''),(633,'3387','Herramientas y unidades de reemplazo',4,'','ACT',''),(634,'339','Obras en curso',3,'','ACT',''),(635,'3391','Adecuación de terrenos',4,'','ACT',''),(636,'3392','Edificaciones en curso',4,'','ACT',''),(637,'33921','Costo',5,'','ACT',''),(638,'33922','Costo de financiación',5,'','ACT',''),(639,'3393','Maquinaria en montaje',4,'','ACT',''),(640,'33931','Costo',5,'','ACT',''),(641,'33932','Costo de financiación',5,'','ACT',''),(642,'34','INTANGIBLES',2,'C','ACT',''),(643,'341','Concesiones, licencias y otros derechos',3,'','ACT',''),(644,'3411','Derechos por concesiones',4,'','ACT',''),(645,'34111','Costo',5,'','ACT',''),(646,'34112','Revaluación',5,'','ACT',''),(647,'3412','Licencias',4,'','ACT',''),(648,'34121','Costo',5,'','ACT',''),(649,'34122','Revaluación',5,'','ACT',''),(650,'3419','Otros derechos',4,'','ACT',''),(651,'34191','Costo',5,'','ACT',''),(652,'34192','Revaluación',5,'','ACT',''),(653,'342','Patentes y propiedad industrial',3,'','ACT',''),(654,'3421','Patentes',4,'','ACT',''),(655,'34211','Costo',5,'','ACT',''),(656,'34212','Revaluación',5,'','ACT',''),(657,'3422','Marcas',4,'','ACT',''),(658,'34221','Costo',5,'','ACT',''),(659,'34222','Revaluación',5,'','ACT',''),(660,'343','Programas de computadora (software)',3,'','ACT',''),(661,'3431','Aplicaciones informáticas',4,'','ACT',''),(662,'34311','Costo',5,'','ACT',''),(663,'34312','Revaluación',5,'','ACT',''),(664,'344','Costos de exploración y desarrollo',3,'','ACT',''),(665,'3441','Costos de exploración',4,'','ACT',''),(666,'34411','Costo',5,'','ACT',''),(667,'34412','Revaluación',5,'','ACT',''),(668,'34413','Costo de financiación',5,'','ACT',''),(669,'3442','Costos de desarrollo',4,'','ACT',''),(670,'34421','Costo',5,'','ACT',''),(671,'34422','Revaluación',5,'','ACT',''),(672,'34423','Costo de financiación',5,'','ACT',''),(673,'345','Fórmulas, diseńos y prototipos',3,'','ACT',''),(674,'3451','Fórmulas',4,'','ACT',''),(675,'34511','Costo',5,'','ACT',''),(676,'34512','Revaluación',5,'','ACT',''),(677,'3452','Diseńos y prototipos',4,'','ACT',''),(678,'34521','Costo',5,'','ACT',''),(679,'34522','Revaluación',5,'','ACT',''),(680,'347','Plusvalía mercantil',3,'','ACT',''),(681,'3471','Plusvalía mercantil',4,'','ACT',''),(682,'349','Otros activos intangibles',3,'','ACT',''),(683,'3491','Otros activos intangibles',4,'','ACT',''),(684,'34911','Costo',5,'','ACT',''),(685,'34912','Revaluación',5,'','ACT',''),(686,'35','ACTIVOS BIOLÓGICOS',2,'C','ACT',''),(687,'351','Activos biológicos en producción',3,'','ACT',''),(688,'3511','De origen animal',4,'','ACT',''),(689,'35111','Costo',5,'','ACT',''),(690,'35113','Costo de financiación',5,'','ACT',''),(691,'35114','Valor razonable',5,'','ACT',''),(692,'3512','De origen vegetal',4,'','ACT',''),(693,'35121','Costo',5,'','ACT',''),(694,'35123','Costo de financiación',5,'','ACT',''),(695,'35124','Valor razonable',5,'','ACT',''),(696,'352','Activos biológicos en desarrollo',3,'','ACT',''),(697,'3521','De origen animal',4,'','ACT',''),(698,'35211','Costo',5,'','ACT',''),(699,'35213','Costo de financiación',5,'','ACT',''),(700,'35214','Valor razonable',5,'','ACT',''),(701,'3522','De origen vegetal',4,'','ACT',''),(702,'35221','Costo',5,'','ACT',''),(703,'35223','Costo de financiación',5,'','ACT',''),(704,'35224','Valor razonable',5,'','ACT',''),(705,'36','DESVALORIZACIÓN DE ACTIVO INMOVILIZADO',2,'C','ACT',''),(706,'361','Desvalorización de propiedades de inversión',3,'','ACT',''),(707,'3611','Terrenos',4,'','ACT',''),(708,'36111','Costo',5,'','ACT',''),(709,'36112','Revaluación',5,'','ACT',''),(710,'3612','Edificaciones',4,'','ACT',''),(711,'36121','Costo',5,'','ACT',''),(712,'36122','Revaluación',5,'','ACT',''),(713,'36123','Costo de financiación',5,'','ACT',''),(714,'3613','Construcciones en curso - edificaciones',4,'','ACT',''),(715,'36131','Costo',5,'','ACT',''),(716,'36132','Revaluación',5,'','ACT',''),(717,'36133','Costo de financiación',5,'','ACT',''),(718,'362','Desvalorización de propiedades de inversión - Arrendamiento financiero',3,'','ACT',''),(719,'3621','Terrenos',4,'','ACT',''),(720,'36211','Costo',5,'','ACT',''),(721,'36212','Revaluación',5,'','ACT',''),(722,'3622','Edificaciones',4,'','ACT',''),(723,'36221','Costo',5,'','ACT',''),(724,'36222','Revaluación',5,'','ACT',''),(725,'36223','Costo de financiación',5,'','ACT',''),(726,'363','Desvalorización de propiedad, planta y equipo - Arrendamiento financiero',3,'','ACT',''),(727,'3631','Terrenos',4,'','ACT',''),(728,'36311','Costo',5,'','ACT',''),(729,'36312','Revaluación',5,'','ACT',''),(730,'3632','Edificaciones',4,'','ACT',''),(731,'36321','Costo',5,'','ACT',''),(732,'36322','Revaluación',5,'','ACT',''),(733,'36323','Costo de financiación',5,'','ACT',''),(734,'3633','Maquinaria y equipo de explotación',4,'','ACT',''),(735,'36331','Costo',5,'','ACT',''),(736,'36332','Revaluación',5,'','ACT',''),(737,'36333','Costo de financiación',5,'','ACT',''),(738,'3634','Unidades de transporte',4,'','ACT',''),(739,'36341','Costo',5,'','ACT',''),(740,'36342','Revaluación',5,'','ACT',''),(741,'3635','Muebles y enseres',4,'','ACT',''),(742,'36351','Costo',5,'','ACT',''),(743,'36352','Revaluación',5,'','ACT',''),(744,'3636','Equipos diversos',4,'','ACT',''),(745,'36361','Costo',5,'','ACT',''),(746,'36362','Revaluación',5,'','ACT',''),(747,'364','Desvalorización de propiedad, planta y equipo',3,'','ACT',''),(748,'3640','Planta productora en producción',4,'','ACT',''),(749,'36401','Costo',5,'','ACT',''),(750,'36402','Planta productora en producción - Revaluación',5,'','ACT',''),(751,'36403','Planta productora en producción - Costo de financiación',5,'','ACT',''),(752,'33404','Planta productora en producción - Valor razonable',5,'','ACT',''),(753,'36405','Planta productora en desarrollo - Costo',5,'','ACT',''),(754,'36406','Planta productora en desarrollo - Revaluación',5,'','ACT',''),(755,'36407','Planta productora en desarrollo - Costo de financiación',5,'','ACT',''),(756,'36408','Planta productora en desarrollo - Valor razonable',5,'','ACT',''),(757,'3641','Terrenos',4,'','ACT',''),(758,'36411','Costo',5,'','ACT',''),(759,'36412','Revaluación',5,'','ACT',''),(760,'3642','Edificaciones',4,'','ACT',''),(761,'36421','Edificaciones - Costo',5,'','ACT',''),(762,'36422','Edificaciones - Revaluación',5,'','ACT',''),(763,'36423','Edificaciones - Costo de financiación',5,'','ACT',''),(764,'36424','Instalaciones - Costo',5,'','ACT',''),(765,'36425','Instalaciones - Revaluación',5,'','ACT',''),(766,'36426','Instalaciones - Costo de financiación',5,'','ACT',''),(767,'36427','Mejoras en locales arrendados - Costo',5,'','ACT',''),(768,'36428','Mejoras en locales arrendados - Revaluación',5,'','ACT',''),(769,'36429','Mejoras en locales arrendados - Costo de financiación',5,'','ACT',''),(770,'3643','Maquinaria y equipo de explotación',4,'','ACT',''),(771,'36431','Costo',5,'','ACT',''),(772,'36432','Revaluación',5,'','ACT',''),(773,'36433','Costo de financiación',5,'','ACT',''),(774,'3644','Unidades de transporte',4,'','ACT',''),(775,'36441','Costo',5,'','ACT',''),(776,'36442','Revaluación',5,'','ACT',''),(777,'3645','Muebles y enseres',4,'','ACT',''),(778,'36451','Costo',5,'','ACT',''),(779,'36452','Revaluación',5,'','ACT',''),(780,'3646','Equipos diversos',4,'','ACT',''),(781,'36461','Costo',5,'','ACT',''),(782,'36462','Revaluación',5,'','ACT',''),(783,'3647','Herramientas y unidades de reemplazo',4,'','ACT',''),(784,'36471','Herramientas - Costo',5,'','ACT',''),(785,'38472','Herramientas - Revaluación',5,'','ACT',''),(786,'38473','Unidades de reemplazo - costo',5,'','ACT',''),(787,'38474','Unidades de reemplazo - Revaluación',5,'','ACT',''),(788,'3649','Obras en curso',4,'','ACT',''),(789,'36491','Costo',5,'','ACT',''),(790,'36492','Revaluación',5,'','ACT',''),(791,'365','Desvalorización de intangibles',3,'','ACT',''),(792,'3651','Concesiones, licencias y otros derechos',4,'','ACT',''),(793,'36511','Costo',5,'','ACT',''),(794,'36512','Revaluación',5,'','ACT',''),(795,'3652','Patentes y propiedad industrial',4,'','ACT',''),(796,'36521','Costo',5,'','ACT',''),(797,'36522','Revaluación',5,'','ACT',''),(798,'3653','Programas de computadora (software)',4,'','ACT',''),(799,'36531','Costo',5,'','ACT',''),(800,'36532','Revaluación',5,'','ACT',''),(801,'3654','Costos de exploración y desarrollo',4,'','ACT',''),(802,'36541','Costo',5,'','ACT',''),(803,'36542','Revaluación',5,'','ACT',''),(804,'36543','Costo de financiación',5,'','ACT',''),(805,'3655','Fórmulas, diseńos y prototipos',4,'','ACT',''),(806,'36551','Costo',5,'','ACT',''),(807,'36552','Revaluación',5,'','ACT',''),(808,'3657','Plusvalía mercantil',4,'','ACT',''),(809,'3659','Otros activos intangibles',4,'','ACT',''),(810,'36591','Costo',5,'','ACT',''),(811,'36592','Revaluación',5,'','ACT',''),(812,'366','Desvalorización de activos biológicos',3,'','ACT',''),(813,'3661','Activos biológicos en producción',4,'','ACT',''),(814,'36611','Costo',5,'','ACT',''),(815,'36613','Costo de financiación',5,'','ACT',''),(816,'3662','Activos biológicos en desarrollo',4,'','ACT',''),(817,'36621','Costo',5,'','ACT',''),(818,'36622','Costo de financiación',5,'','ACT',''),(819,'367','Desvalorización de inversiones mobiliarias',3,'','ACT',''),(820,'3671','Inversiones a ser mantenidas hasta el vencimiento',4,'','ACT',''),(821,'36711','Costo',5,'','ACT',''),(822,'3672','Inversiones financieras representativas de derecho patrimonial',4,'','ACT',''),(823,'36721','Costo',5,'','ACT',''),(824,'3673','Otras inversiones financieras',4,'','ACT',''),(825,'36731','Costo',5,'','ACT',''),(826,'37','ACTIVO DIFERIDO',2,'C','ACT',''),(827,'371','Impuesto a la renta diferido',3,'','ACT',''),(828,'3711','Impuesto a la renta diferido  Patrimonio',4,'','ACT',''),(829,'3712','Impuesto a la renta diferido  Resultados',4,'','ACT',''),(830,'372','Participaciones de los trabajadores diferidas',3,'','ACT',''),(831,'3721','Participaciones de los trabajadores diferidas  Patrimonio',4,'','ACT',''),(832,'3722','Participaciones de los trabajadores diferidas  Resultados',4,'','ACT',''),(833,'373','Intereses diferidos',3,'','ACT',''),(834,'3731','Intereses no devengados en transacciones con terceros',4,'','ACT',''),(835,'3732','Intereses no devengados en medición a valor descontado',4,'','ACT',''),(836,'38','OTROS ACTIVOS',2,'C','ACT',''),(837,'381','Bienes de arte y cultura',3,'','ACT',''),(838,'3811','Obras de arte',4,'','ACT',''),(839,'3812','Biblioteca',4,'','ACT',''),(840,'3813','Otros',4,'','ACT',''),(841,'382','Diversos',3,'','ACT',''),(842,'3821','Monedas y joyas',4,'','ACT',''),(843,'3822','Bienes entregados en comodato',4,'','ACT',''),(844,'3823','Bienes recibidos en pago (adjudicados y realizables)',4,'','ACT',''),(845,'3829','Otros',4,'','ACT',''),(846,'39','DEPRECIACIÓN y AMORTIZACIÓN ACUMULADOS',2,'C','ACT',''),(847,'391','Depreciación acumulada propiedades de inversión',3,'','ACT',''),(848,'3911','Edificaciones',4,'','ACT',''),(849,'39111','Costo',5,'','ACT',''),(850,'39112','Revaluación',5,'','ACT',''),(851,'39113','Costo de financiación',5,'','ACT',''),(852,'392','Depreciación acumulada propiedades de inversión - Arrendamiento financiero',3,'','ACT',''),(853,'3921','Edificaciones',4,'','ACT',''),(854,'39211','Costo',5,'','ACT',''),(855,'39212','Revaluación',5,'','ACT',''),(856,'39213','Costo de financiación',5,'','ACT',''),(857,'393','Depreciación acumulada propiedad, planta y equipo - Arrendamiento financiero',3,'','ACT',''),(858,'3932','Edificaciones',4,'','ACT',''),(859,'39321','Costo',5,'','ACT',''),(860,'39322','Revaluación',5,'','ACT',''),(861,'39323','Costo de financiación',5,'','ACT',''),(862,'3933','Maquinarias y equipos de explotación',4,'','ACT',''),(863,'39331','Costo',5,'','ACT',''),(864,'39332','Revaluación',5,'','ACT',''),(865,'39333','Costo de financiación',5,'','ACT',''),(866,'3934','Unidades de transporte',4,'','ACT',''),(867,'39341','Costo',5,'','ACT',''),(868,'39342','Revaluación',5,'','ACT',''),(869,'3935','Muebles y enseres',4,'','ACT',''),(870,'39351','Costo',5,'','ACT',''),(871,'38352','Revaluación',5,'','ACT',''),(872,'3936','Equipos diversos',4,'','ACT',''),(873,'39361','Costo',5,'','ACT',''),(874,'39362','Revaluación',5,'','ACT',''),(875,'394','Depreciación acumulada - Arrendamiento operativo',3,'','ACT',''),(876,'3941','Activos por derecho de uso - arrendamiento operativo',4,'','ACT',''),(877,'39410','Plantas productoras',5,'','ACT',''),(878,'39411','Terrenos',5,'','ACT',''),(879,'39412','Edificaciones',5,'','ACT',''),(880,'39413','Maquinarias y equipos de explotación',5,'','ACT',''),(881,'39414','Unidades de transporte',5,'','ACT',''),(882,'39415','Equipos diversos',5,'','ACT',''),(883,'395','Depreciación acumulada de propiedad, planta y equipo',3,'','ACT',''),(884,'3952','Depreciación acumulada - Costo',4,'','ACT',''),(885,'39520','Plantas productoras',5,'','ACT',''),(886,'39521','Edificaciones',5,'','ACT',''),(887,'39522','Instalaciones',5,'','ACT',''),(888,'39523','Mejoras en locales arrendados',5,'','ACT',''),(889,'39524','Maquinarias y equipos de explotación',5,'','ACT',''),(890,'39525','Unidades de transporte',5,'','ACT',''),(891,'39526','Muebles y enseres',5,'','ACT',''),(892,'39527','Equipos diversos',5,'','ACT',''),(893,'39528','Herramientas',5,'','ACT',''),(894,'39529','Unidades de reemplazo',5,'','ACT',''),(895,'3953','Propiedad, planta y equipo - Revaluación',4,'','ACT',''),(896,'39530','Plantas productoras',5,'','ACT',''),(897,'39531','Edificaciones',5,'','ACT',''),(898,'39532','Instalaciones',5,'','ACT',''),(899,'39533','Mejoras en locales arrendados',5,'','ACT',''),(900,'39534','Maquinarias y equipos de explotación',5,'','ACT',''),(901,'39535','Unidades de transporte',5,'','ACT',''),(902,'39536','Muebles y enseres',5,'','ACT',''),(903,'39537','Equipos diversos',5,'','ACT',''),(904,'39538','Herramientas y unidades de reemplazo',5,'','ACT',''),(905,'3954','Propiedad, planta y equipo - Costo de financiación',4,'','ACT',''),(906,'39540','Plantas productoras',5,'','ACT',''),(907,'39541','Edificaciones',5,'','ACT',''),(908,'39542','Maquinarias y equipos de explotación',5,'','ACT',''),(909,'3955','Propiedad, planta y equipo - Valor razonable',4,'','ACT',''),(910,'39550','Plantas productoras',5,'','ACT',''),(911,'396','Amortización acumulada',3,'','ACT',''),(912,'3961','Intangibles  Costo',4,'','ACT',''),(913,'39611','Concesiones, licencias y otros derechos',5,'','ACT',''),(914,'39612','Patentes y propiedad industrial',5,'','ACT',''),(915,'39613','Programas de computadora (software)',5,'','ACT',''),(916,'39614','Costos de exploración y desarrollo',5,'','ACT',''),(917,'39615','Fórmulas, diseńos y prototipos',5,'','ACT',''),(918,'39619','Otros activos intangibles',5,'','ACT',''),(919,'3962','Intangibles  Revaluación',4,'','ACT',''),(920,'39621','Concesiones, licencias y otros derechos',5,'','ACT',''),(921,'39622','Patentes y propiedad industrial',5,'','ACT',''),(922,'39623','Programas de computadora (software)',5,'','ACT',''),(923,'39624','Costos de exploración y desarrollo',5,'','ACT',''),(924,'39625','Fórmulas, diseńos y prototipos',5,'','ACT',''),(925,'39629','Otros activos intangibles',5,'','ACT',''),(926,'3963','Intangibles  Costos de financiación',4,'','ACT',''),(927,'39633','Programas de computadora',5,'','ACT',''),(928,'39634','Costos de exploración',5,'','ACT',''),(929,'39635','Costos de desarrollo',5,'','ACT',''),(930,'398','Depreciación acumulada - Activos biológicos en producción',3,'','ACT',''),(931,'3981','Activos biológicos en producción - Costo',4,'','ACT',''),(932,'39811','Activos biológicos en producción',5,'','ACT',''),(933,'4','PASIVO',1,'','PAS',''),(934,'40','TRIBUTOS, CONTRAPRESTACIONES Y APORTES AL SISTEMA PÚBLICO DE PENSIONES Y DE SALUD POR PAGAR\n',2,'C','PAS',''),(935,'401','Gobierno nacional',3,'','PAS',''),(936,'4011','Impuesto general a las ventas',4,'','PAS',''),(937,'40111','IGV  Cuenta propia',5,'','PAS',''),(938,'40112','IGV  Servicios prestados por no domiciliados',5,'','PAS',''),(939,'40113','IGV  Régimen de percepciones',5,'','PAS',''),(940,'40114','IGV  Régimen de retenciones\n40115 IGV  Importaciones\n40116 IGV  Destinado a operaciones gravadas\n40117 IGV - Destinado a operaciones comunes',5,'','PAS',''),(941,'4012','Impuesto selectivo al consumo',4,'','PAS',''),(942,'4015','Derechos aduaneros',4,'','PAS',''),(943,'40151','Derechos arancelarios',5,'','PAS',''),(944,'40152','Otros derechos arancelarios',5,'','PAS',''),(945,'4017','Impuesto a la renta',4,'','PAS',''),(946,'40171','Renta de tercera categoría',5,'','PAS',''),(947,'40172','Renta de cuarta categoría',5,'','PAS',''),(948,'40173','Renta de quinta categoría',5,'','PAS',''),(949,'40174','Renta de no domiciliados',5,'','PAS',''),(950,'40175','Otras retenciones',5,'','PAS',''),(951,'4018','Otros impuestos y contraprestaciones',4,'','PAS',''),(952,'40181','Impuesto a las transacciones financieras',5,'','PAS',''),(953,'40182','Impuesto a los juegos de casino y tragamonedas',5,'','PAS',''),(954,'40183','Tasas por la prestación de servicios públicos',5,'','PAS',''),(955,'40184','Regalías',5,'','PAS',''),(956,'40185','Impuesto a los dividendos',5,'','PAS',''),(957,'40186','Impuesto temporal a los activos netos',5,'','PAS',''),(958,'40189','Otros impuestos',5,'','PAS',''),(959,'402','Certificados tributarios',3,'','PAS',''),(960,'403','Instituciones públicas',3,'','PAS',''),(961,'4031','ESSALUD',4,'','PAS',''),(962,'4032','ONP',4,'','PAS',''),(963,'4033','Contribución al SENATI',4,'','PAS',''),(964,'4034','Contribución al SENCICO',4,'','PAS',''),(965,'4039','Otras instituciones',4,'','PAS',''),(966,'405','Gobiernos regionales',3,'','PAS',''),(967,'406','Gobiernos locales',3,'','PAS',''),(968,'4061','Impuestos',4,'','PAS',''),(969,'40611','Impuesto al patrimonio vehicular',5,'','PAS',''),(970,'40612','Impuesto a las apuestas',5,'','PAS',''),(971,'40613','Impuesto a los juegos',5,'','PAS',''),(972,'40614','Impuesto de alcabala',5,'','PAS',''),(973,'40615','Impuesto predial',5,'','PAS',''),(974,'40616','Impuesto a los espectáculos públicos no deportivos',5,'','PAS',''),(975,'4062','Contribuciones',4,'','PAS',''),(976,'4063','Tasas',4,'','PAS',''),(977,'40631','Licencia de apertura de establecimientos',5,'','PAS',''),(978,'40632','Transporte público',5,'','PAS',''),(979,'40633','Estacionamiento de vehículos',5,'','PAS',''),(980,'40634','Servicios públicos o arbitrios',5,'','PAS',''),(981,'40635','Servicios administrativos o derechos',5,'','PAS',''),(982,'409','Otros costos administrativos e intereses',3,'','PAS',''),(983,'41','REMUNERACIONES Y PARTICIPACIONES POR PAGAR',2,'C','PAS',''),(984,'411','Remuneraciones por pagar',3,'','PAS',''),(985,'4111','Sueldos y salarios por pagar',4,'','PAS',''),(986,'4112','Comisiones por pagar',4,'','PAS',''),(987,'4113','Remuneraciones en especie por pagar',4,'','PAS',''),(988,'4114','Gratificaciones por pagar',4,'','PAS',''),(989,'4115','Vacaciones por pagar',4,'','PAS',''),(990,'413','Participaciones de los trabajadores por pagar',3,'','PAS',''),(991,'415','Beneficios sociales de los trabajadores por pagar',3,'','PAS',''),(992,'4151','Compensación por tiempo de servicios',4,'','PAS',''),(993,'4152','Adelanto de compensación por tiempo de servicios',4,'','PAS',''),(994,'4153','Pensiones y jubilaciones',4,'','PAS',''),(995,'417','Administradoras de fondos de pensiones',3,'','PAS',''),(996,'419','Otras remuneraciones y participaciones por pagar',3,'','PAS',''),(997,'42','CUENTAS POR PAGAR COMERCIALES TERCEROS',2,'C','PAS',''),(998,'421','Facturas, boletas y otros comprobantes por pagar',3,'','PAS',''),(999,'4211','No emitidas',4,'','PAS',''),(1000,'4212','Emitidas',4,'','PAS',''),(1001,'422','Anticipos a proveedores',3,'','PAS',''),(1002,'423','Letras por pagar',3,'','PAS',''),(1003,'424','Honorarios por pagar',3,'','PAS',''),(1004,'43','CUENTAS POR PAGAR COMERCIALES RELACIONADAS',2,'C','PAS',''),(1005,'431','Facturas, boletas y otros comprobantes por pagar',3,'','PAS',''),(1006,'4311','No emitidas',4,'','PAS',''),(1007,'4312','Emitidas',4,'','PAS',''),(1008,'432','Anticipos otorgados',3,'','PAS',''),(1009,'4321','Anticipos otorgados',4,'','PAS',''),(1010,'433','Letras por pagar',3,'','PAS',''),(1011,'4331','Letras por pagar',4,'','PAS',''),(1012,'434','Honorarios por pagar',3,'','PAS',''),(1013,'4341','Honorarios por pagar',4,'','PAS',''),(1014,'44','CUENTAS POR PAGAR A LOS ACCIONISTAS (SOCIOS, PARTÍCIPES) Y DIRECTORES',2,'C','PAS',''),(1015,'441','Accionistas ( socios, partícipes)',3,'','PAS',''),(1016,'4411','Préstamos',4,'','PAS',''),(1017,'4412','Dividendos',4,'','PAS',''),(1018,'4419','Otras cuentas por pagar',4,'','PAS',''),(1019,'442','Directores',3,'','PAS',''),(1020,'4421','Dietas',4,'','PAS',''),(1021,'4429','Otras cuentas por pagar',4,'','PAS',''),(1022,'45','OBLIGACIONES FINANCIERAS',2,'C','PAS',''),(1023,'451','Préstamos de instituciones financieras y otras entidades',3,'','PAS',''),(1024,'4511','Instituciones financieras',4,'','PAS',''),(1025,'4512','Otras entidades',4,'','PAS',''),(1026,'452','Contratos de arrendamiento financiero',3,'','PAS',''),(1027,'453','Obligaciones emitidas',3,'','PAS',''),(1028,'4531','Bonos emitidos',4,'','PAS',''),(1029,'4532','Bonos titulizados',4,'','PAS',''),(1030,'4533','Papeles comerciales',4,'','PAS',''),(1031,'4539','Otras obligaciones',4,'','PAS',''),(1032,'454','Otros Instrumentos financieros por pagar',3,'','PAS',''),(1033,'4541','Letras',4,'','PAS',''),(1034,'4542','Papeles comerciales',4,'','PAS',''),(1035,'4543','Bonos',4,'','PAS',''),(1036,'4544','Pagarés',4,'','PAS',''),(1037,'4545','Facturas conformadas',4,'','PAS',''),(1038,'4549','Otras obligaciones financieras',4,'','PAS',''),(1039,'455','Costos de financiación por pagar',3,'','PAS',''),(1040,'4551','Préstamos de instituciones financieras y otras entidades',4,'','PAS',''),(1041,'45511','Instituciones financieras',5,'','PAS',''),(1042,'45512','Otras entidades',5,'','PAS',''),(1043,'4552','Contratos de arrendamiento financiero',4,'','PAS',''),(1044,'4553','Obligaciones emitidas',4,'','PAS',''),(1045,'45531','Bonos emitidos',5,'','PAS',''),(1046,'45532','Bonos titulizados',5,'','PAS',''),(1047,'45533','Papeles comerciales',5,'','PAS',''),(1048,'45539','Otras obligaciones',5,'','PAS',''),(1049,'4554','Otros instrumentos financieros por pagar',4,'','PAS',''),(1050,'45541','Letras',5,'','PAS',''),(1051,'45542','Papeles comerciales',5,'','PAS',''),(1052,'45543','Bonos',5,'','PAS',''),(1053,'45544','Pagarés',5,'','PAS',''),(1054,'45545','Facturas conformadas',5,'','PAS',''),(1055,'45549','Otras obligaciones financieras',5,'','PAS',''),(1056,'456','Préstamos con compromisos de recompra',3,'','PAS',''),(1057,'46','CUENTAS POR PAGAR DIVERSAS  TERCEROS',2,'C','PAS',''),(1058,'461','Reclamaciones de terceros',3,'','PAS',''),(1059,'464','Pasivos por instrumentos financieros',3,'','PAS',''),(1060,'4641','Instrumentos financieros primarios',4,'','PAS',''),(1061,'4642','Instrumentos financieros derivados',4,'','PAS',''),(1062,'46421','Cartera de negociación',5,'','PAS',''),(1063,'46422','Instrumentos de cobertura',5,'','PAS',''),(1064,'465','Pasivos por compra de activo inmovilizado',3,'','PAS',''),(1065,'4651','Inversiones mobiliarias',4,'','PAS',''),(1066,'4652','Propiedades de inversión',4,'','PAS',''),(1067,'4653','Activos adquiridos en arrendamiento financiero',4,'','PAS',''),(1068,'4654','Propiedad, planta y equipo',4,'','PAS',''),(1069,'4655','Intangibles',4,'','PAS',''),(1070,'4656','Activos biológicos',4,'','PAS',''),(1071,'466','Participación de terceros en acuerdos conjuntos',3,'','PAS',''),(1072,'467','Depósitos recibidos en garantía',3,'','PAS',''),(1073,'469','Otras cuentas por pagar diversas',3,'','PAS',''),(1074,'4691','Subsidios gubernamentales',4,'','PAS',''),(1075,'4692','Donaciones condicionadas',4,'','PAS',''),(1076,'4699','Otras cuentas por pagar',4,'','PAS',''),(1077,'47','CUENTAS POR PAGAR DIVERSAS  RELACIONADAS',2,'C','PAS',''),(1078,'471','Préstamos',3,'','PAS',''),(1079,'472','Costos de financiación',3,'','PAS',''),(1080,'473','Anticipos recibidos',3,'','PAS',''),(1081,'474','Regalías',3,'','PAS',''),(1082,'475','Dividendos',3,'','PAS',''),(1083,'476','Depósitos recibidos en garantía',3,'','PAS',''),(1084,'477','Pasivo por compra de activo inmovilizado',3,'','PAS',''),(1085,'4771','Inversiones mobiliarias',4,'','PAS',''),(1086,'4772','Inversiones inmobiliarias',4,'','PAS',''),(1087,'4773','Activos adquiridos en arrendamiento financiero',4,'','PAS',''),(1088,'4774','Propiedad, planta y equipo',4,'','PAS',''),(1089,'4775','Intangibles',4,'','PAS',''),(1090,'4776','Activos biológicos',4,'','PAS',''),(1091,'479','Otras cuentas por pagar diversas',3,'','PAS',''),(1092,'4791','Otras cuentas por pagar diversas',4,'','PAS',''),(1093,'48','PROVISIONES',2,'C','PAS',''),(1094,'481','Provisión para litigios',3,'','PAS',''),(1095,'482','Provisión por desmantelamiento, retiro o rehabilitación del inmovilizado',3,'','PAS',''),(1096,'483','Provisión para reestructuraciones',3,'','PAS',''),(1097,'484','Provisión para protección y remediación del medio ambiente',3,'','PAS',''),(1098,'485','Provisión para gastos de responsabilidad social',3,'','PAS',''),(1099,'486','Provisión para garantías',3,'','PAS',''),(1100,'487','Provisión por activos por derecho de uso',3,'','PAS',''),(1101,'489','Otras provisiones',3,'','PAS',''),(1102,'49','PASIVO DIFERIDO',2,'C','PAS',''),(1103,'491','Impuesto a la renta diferido',3,'','PAS',''),(1104,'4911','Impuesto a la renta diferido  Patrimonio',4,'','PAS',''),(1105,'4912','Impuesto a la renta diferido  Resultados',4,'','PAS',''),(1106,'492','Participaciones de los trabajadores diferidas',3,'','PAS',''),(1107,'4921','Participaciones de los trabajadores diferidas  Patrimonio',4,'','PAS',''),(1108,'4922','Participaciones de los trabajadores diferidas  Resultados',4,'','PAS',''),(1109,'493','Intereses diferidos',3,'','PAS',''),(1110,'4931','Intereses no devengados en transacciones con terceros',4,'','PAS',''),(1111,'4932','Intereses no devengados en medición a valor descontado',4,'','PAS',''),(1112,'494','Ganancia en venta con arrendamiento financiero paralelo',3,'','PAS',''),(1113,'495','Subsidios recibidos diferidos',3,'','PAS',''),(1114,'496','Ingresos diferidos',3,'','PAS',''),(1115,'497','Costos diferidos',3,'','PAS',''),(1116,'5','PATRIMONIO NETO',1,'','PAT',''),(1117,'50','CAPITAL',2,'C','PAT',''),(1118,'501','Capital social',3,'','PAT',''),(1119,'5011','Acciones',4,'','PAT',''),(1120,'5012','Participaciones',4,'','PAT',''),(1121,'502','Acciones en tesorería',3,'','PAT',''),(1122,'51','ACCIONES DE INVERSIÓN',2,'C','PAT',''),(1123,'511','Acciones de inversión',3,'','PAT',''),(1124,'512','Acciones de inversión en tesorería',3,'','PAT',''),(1125,'52','CAPITAL ADICIONAL',2,'C','PAT',''),(1126,'521','Primas (descuento) de acciones',3,'','PAT',''),(1127,'522','Capitalizaciones en trámite',3,'','PAT',''),(1128,'5221','Aportes',4,'','PAT',''),(1129,'5222','Reservas',4,'','PAT',''),(1130,'5223','Acreencias',4,'','PAT',''),(1131,'5224','Utilidades',4,'','PAT',''),(1132,'523','Reducciones de capital pendientes de formalización',3,'','PAT',''),(1133,'56','RESULTADOS NO REALIZADOS',2,'C','PAT',''),(1134,'561','Diferencia en cambio de inversiones permanentes en entidades extranjeras',3,'','PAT',''),(1135,'562','Instrumentos financieros  Coberturas',3,'','PAT',''),(1136,'563','Resultado en activos o pasivos financieros mantenidos para negociación',3,'','PAT',''),(1137,'5631','Ganancia',4,'','PAT',''),(1138,'5632','Pérdida',4,'','PAT',''),(1139,'564','Resultado en otros activos o pasivos por inversiones financieras',3,'','PAT',''),(1140,'5641','Ganancia',4,'','PAT',''),(1141,'5642','Pérdida',4,'','PAT',''),(1142,'565','Resultado en activos o pasivos financieros mantenidos para negociación  Compra\no venta convencional fecha de liquidación',3,'','PAT',''),(1143,'5651','Ganancia',4,'','PAT',''),(1144,'5652','Pérdida',4,'','PAT',''),(1145,'57','EXCEDENTE DE REVALUACIÓN',2,'C','PAT',''),(1146,'571','Excedente de revaluación',3,'','PAT',''),(1147,'5711','Propiedad de inversión',4,'','PAT',''),(1148,'57111','Adquisición directa',5,'','PAT',''),(1149,'57112','Arrendamiento financiero',5,'','PAT',''),(1150,'5712','Propiedad, planta y equipo',4,'','PAT',''),(1151,'57121','Adquisición directa',5,'','PAT',''),(1152,'57122','Arrendamiento financiero',5,'','PAT',''),(1153,'5713','Intangibles',4,'','PAT',''),(1154,'5714','Activos por derecho de uso - arrendamiento operativo',4,'','PAT',''),(1155,'572','Excedente de revaluación  Acciones liberadas recibidas',3,'','PAT',''),(1156,'573','Participación en excedente de revaluación  Inversiones en entidades relacionadas',3,'','PAT',''),(1157,'58','RESERVAS',2,'C','PAT',''),(1158,'581','Reinversión',3,'','PAT',''),(1159,'582','Legal',3,'','PAT',''),(1160,'583','Contractuales',3,'','PAT',''),(1161,'584','Estatutarias',3,'','PAT',''),(1162,'585','Facultativas',3,'','PAT',''),(1163,'589','Otras reservas',3,'','PAT',''),(1164,'59','RESULTADOS ACUMULADOS',2,'C','PAT',''),(1165,'591','Utilidades no distribuidas',3,'','PAT',''),(1166,'5911','Utilidades acumuladas',4,'','PAT',''),(1167,'5912','Ingresos de ańos anteriores',4,'','PAT',''),(1168,'592','Pérdidas acumuladas',3,'','PAT',''),(1169,'5921','Pérdidas acumuladas',4,'','PAT',''),(1170,'5922','Gastos de ańos anteriores',4,'','PAT',''),(1171,'6','GASTOS POR NATURALEZA',1,'','NAT',''),(1172,'60','COMPRAS',2,'C','NAT',''),(1173,'601','Mercaderías',3,'','NAT',''),(1174,'6011','Mercaderías',4,'','NAT',''),(1175,'602','Materias primas',3,'','NAT',''),(1176,'603','Materiales auxiliares, suministros y repuestos',3,'','NAT',''),(1177,'6031','Materiales auxiliares',4,'','NAT',''),(1178,'6032','Suministros',4,'','NAT',''),(1179,'6033','Repuestos',4,'','NAT',''),(1180,'604','Envases y embalajes',3,'','NAT',''),(1181,'6041','Envases',4,'','NAT',''),(1182,'6042','Embalajes',4,'','NAT',''),(1183,'609','Costos vinculados con las compras',3,'','NAT',''),(1184,'6091','Costos vinculados con las compras de mercaderías',4,'','NAT',''),(1185,'60911','Transporte',5,'','NAT',''),(1186,'60912','Seguros',5,'','NAT',''),(1187,'60913','Derechos aduaneros',5,'','NAT',''),(1188,'60914','Comisiones',5,'','NAT',''),(1189,'60919','Otros costos',5,'','NAT',''),(1190,'6092','Costos vinculados con las compras de materias primas',4,'','NAT',''),(1191,'60921','Transporte',5,'','NAT',''),(1192,'60922','Seguros',5,'','NAT',''),(1193,'60923','Derechos aduaneros',5,'','NAT',''),(1194,'60924','Comisiones',5,'','NAT',''),(1195,'60925','Otros costos',5,'','NAT',''),(1196,'6093','Costos vinculados con las compras de materiales, suministros y repuestos',4,'','NAT',''),(1197,'60931','Transporte',5,'','NAT',''),(1198,'60932','Seguros',5,'','NAT',''),(1199,'60933','Derechos aduaneros',5,'','NAT',''),(1200,'60934','Comisiones',5,'','NAT',''),(1201,'60935','Otros costos',5,'','NAT',''),(1202,'6094','Costos vinculados con las compras de envases y embalajes',4,'','NAT',''),(1203,'60941','Transporte',5,'','NAT',''),(1204,'60942','Seguros',5,'','NAT',''),(1205,'60943','Derechos aduaneros',5,'','NAT',''),(1206,'60944','Comisiones',5,'','NAT',''),(1207,'60945','Otros costos',5,'','NAT',''),(1208,'61','VARIACIÓN DE INVENTARIOS',2,'C','NAT',''),(1209,'611','Mercaderías',3,'','NAT',''),(1210,'6111','Mercaderías',4,'','NAT',''),(1211,'612','Materias primas',3,'','NAT',''),(1212,'6121','Materias primas',4,'','NAT',''),(1213,'613','Materiales auxiliares, suministros y repuestos',3,'','NAT',''),(1214,'6131','Materiales auxiliares',4,'','NAT',''),(1215,'6132','Suministros',4,'','NAT',''),(1216,'6133','Repuestos',4,'','NAT',''),(1217,'614','Envases y embalajes',3,'','NAT',''),(1218,'6141','Envases',4,'','NAT',''),(1219,'6142','Embalajes',4,'','NAT',''),(1220,'62','GASTOS DE PERSONAL Y DIRECTORES',2,'C','NAT',''),(1221,'621','Remuneraciones',3,'','NAT',''),(1222,'6211','Sueldos y salarios',4,'','NAT',''),(1223,'6212','Comisiones',4,'','NAT',''),(1224,'6213','Remuneraciones en especie',4,'','NAT',''),(1225,'6214','Gratificaciones',4,'','NAT',''),(1226,'6215','Vacaciones',4,'','NAT',''),(1227,'622','Otras remuneraciones',3,'','NAT',''),(1228,'623','Indemnizaciones al personal',3,'','NAT',''),(1229,'624','Capacitación',3,'','NAT',''),(1230,'625','Atención al personal',3,'','NAT',''),(1231,'627','Seguridad, previsión social y otras contribuciones',3,'','NAT',''),(1232,'6271','Régimen de prestaciones de salud',4,'','NAT',''),(1233,'6272','Régimen de pensiones - Aporte de empresa',4,'','NAT',''),(1234,'6273','Seguro complementario de trabajo de riesgo, accidentes de trabajo y\nenfermedades profesionales',4,'','NAT',''),(1235,'6274','Seguro de vida',4,'','NAT',''),(1236,'6275','Seguros particulares de prestaciones de salud  EPS y otros particulares',4,'','NAT',''),(1237,'6276','Caja de beneficios de seguridad social del pescador',4,'','NAT',''),(1238,'6277','Contribuciones al SENATI',4,'','NAT',''),(1239,'628','Retribuciones al directorio',3,'','NAT',''),(1240,'629','Beneficios sociales de los trabajadores',3,'','NAT',''),(1241,'6291','Compensación por tiempo de servicio',4,'','NAT',''),(1242,'6292','Pensiones y jubilaciones',4,'','NAT',''),(1243,'6293','Otros beneficios post-empleo',4,'','NAT',''),(1244,'6294','Participación en las utilidades',4,'','NAT',''),(1245,'62941','Participación corriente',5,'','NAT',''),(1246,'62942','Participación diferida',5,'','NAT',''),(1247,'63','GASTOS DE SERVICIOS PRESTADOS POR TERCEROS',2,'C','NAT',''),(1248,'631','Transporte, correos y gastos de viaje',3,'','NAT',''),(1249,'6311','Transporte',4,'','NAT',''),(1250,'63111','De carga',5,'','NAT',''),(1251,'63112','De pasajeros',5,'','NAT',''),(1252,'6312','Correos',4,'','NAT',''),(1253,'6313','Alojamiento',4,'','NAT',''),(1254,'6314','Alimentación',4,'','NAT',''),(1255,'6315','Otros gastos de viaje',4,'','NAT',''),(1256,'632','Asesoría y consultoría',3,'','NAT',''),(1257,'6321','Administrativa',4,'','NAT',''),(1258,'6322','Legal y tributaria',4,'','NAT',''),(1259,'6323','Auditoría y contable',4,'','NAT',''),(1260,'6324','Mercadotecnia',4,'','NAT',''),(1261,'6325','Medioambiental',4,'','NAT',''),(1262,'6326','Investigación y desarrollo',4,'','NAT',''),(1263,'6327','Producción',4,'','NAT',''),(1264,'6329','Otros',4,'','NAT',''),(1265,'633','Producción encargada a terceros',3,'','NAT',''),(1266,'634','Mantenimiento y reparaciones',3,'','NAT',''),(1267,'6341','Propiedad de inversión',4,'','NAT',''),(1268,'6342','Activos por derecho de uso',4,'','NAT',''),(1269,'63421','Financiero',5,'','NAT',''),(1270,'63432','Operativo',5,'','NAT',''),(1271,'6343','Propiedad, planta y equipo',4,'','NAT',''),(1272,'6344','Intangibles',4,'','NAT',''),(1273,'6345','Activos biológicos',4,'','NAT',''),(1274,'635','Alquileres',3,'','NAT',''),(1275,'6351','Terrenos',4,'','NAT',''),(1276,'6352','Edificaciones',4,'','NAT',''),(1277,'6353','Maquinarias y equipos de explotación',4,'','NAT',''),(1278,'6354','Equipo de transporte',4,'','NAT',''),(1279,'6355','Muebles y enseres',4,'','NAT',''),(1280,'6356','Equipos diversos',4,'','NAT',''),(1281,'636','Servicios básicos',3,'','NAT',''),(1282,'6361','Energía eléctrica',4,'','NAT',''),(1283,'6362','Gas',4,'','NAT',''),(1284,'6363','Agua',4,'','NAT',''),(1285,'6364','Teléfono',4,'','NAT',''),(1286,'6365','Internet',4,'','NAT',''),(1287,'6366','Radio',4,'','NAT',''),(1288,'6367','Cable',4,'','NAT',''),(1289,'637','Publicidad, publicaciones, relaciones públicas',3,'','NAT',''),(1290,'6371','Publicidad',4,'','NAT',''),(1291,'6372','Publicaciones',4,'','NAT',''),(1292,'6373','Relaciones públicas',4,'','NAT',''),(1293,'638','Servicios de contratistas',3,'','NAT',''),(1294,'639','Otros servicios prestados por terceros',3,'','NAT',''),(1295,'6391','Gastos bancarios',4,'','NAT',''),(1296,'6392','Gastos de laboratorio',4,'','NAT',''),(1297,'64','GASTOS POR TRIBUTOS',2,'C','NAT',''),(1298,'641','Gobierno nacional',3,'','NAT',''),(1299,'6411','Impuesto general a las ventas y selectivo al consumo',4,'','NAT',''),(1300,'6412','Impuesto a las transacciones financieras',4,'','NAT',''),(1301,'6413','Impuesto temporal a los activos netos',4,'','NAT',''),(1302,'6414','Impuesto a los juegos de casino y máquinas tragamonedas',4,'','NAT',''),(1303,'6415','Regalías mineras',4,'','NAT',''),(1304,'6416','Cánones',4,'','NAT',''),(1305,'6419','Otros',4,'','NAT',''),(1306,'642','Gobierno regional',3,'','NAT',''),(1307,'643','Gobierno local',3,'','NAT',''),(1308,'6431','Impuesto predial',4,'','NAT',''),(1309,'6432','Arbitrios municipales y seguridad ciudadana',4,'','NAT',''),(1310,'6433','Impuesto al patrimonio vehicular',4,'','NAT',''),(1311,'6434','Licencia de funcionamiento',4,'','NAT',''),(1312,'6439','Otros',4,'','NAT',''),(1313,'644','Otros gastos por tributos',3,'','NAT',''),(1314,'6442','Contribución al SENCICO',4,'','NAT',''),(1315,'6443','Otros',4,'','NAT',''),(1316,'645','Gastos en deuda tributaria',3,'','NAT',''),(1317,'6451','Intereses',4,'','NAT',''),(1318,'6452','intereses - fraccionamiento',4,'','NAT',''),(1319,'6453','Multas',4,'','NAT',''),(1320,'6454','Costas y otros',4,'','NAT',''),(1321,'65','OTROS GASTOS DE GESTION',2,'C','NAT',''),(1322,'651','Seguros',3,'','NAT',''),(1323,'652','Regalías',3,'','NAT',''),(1324,'653','Suscripciones',3,'','NAT',''),(1325,'654','Licencias y derechos de vigencia',3,'','NAT',''),(1326,'655','Costo neto de enajenación de activos inmovilizados y operaciones discontinuadas',3,'','NAT',''),(1327,'6551','Costo neto de enajenación de activos inmovilizados',4,'','NAT',''),(1328,'65511','Inversiones mobiliarias',5,'','NAT',''),(1329,'65512','Propiedades de inversión',5,'','NAT',''),(1330,'65513','Activos por derecho de uso - arrendamiento financiero',5,'','NAT',''),(1331,'65514','Propiedad, planta y equipo',5,'','NAT',''),(1332,'65515','Intangibles',5,'','NAT',''),(1333,'65516','Activos biológicos',5,'','NAT',''),(1334,'6552','Operaciones discontinuadas  Abandono de activos',4,'','NAT',''),(1335,'65521','Propiedades de inversión',5,'','NAT',''),(1336,'65522','Activos por derecho de uso - Arrendamiento financiero',5,'','NAT',''),(1337,'65523','Propiedad, planta y equipo',5,'','NAT',''),(1338,'65524','Intangibles',5,'','NAT',''),(1339,'65525','Activos biológicos',5,'','NAT',''),(1340,'656','Suministros',3,'','NAT',''),(1341,'658','Gestión medioambiental',3,'','NAT',''),(1342,'659','Otros gastos de gestión',3,'','NAT',''),(1343,'6591','Donaciones',4,'','NAT',''),(1344,'6592','Sanciones administrativas',4,'','NAT',''),(1345,'66','PERDIDA POR MEDICIÓN DE ACTIVOS NO FINANCIEROS AL VALOR RAZONABLE',2,'C','NAT',''),(1346,'661','Activo realizable',3,'','NAT',''),(1347,'6611','Mercaderías',4,'','NAT',''),(1348,'6612','Productos terminados',4,'','NAT',''),(1349,'6613','Activos no corrientes mantenidos para la venta',4,'','NAT',''),(1350,'66131','Propiedades de inversión',5,'','NAT',''),(1351,'66132','Propiedad, planta y equipo',5,'','NAT',''),(1352,'66133','Intangibles',5,'','NAT',''),(1353,'66134','Activos biológicos',5,'','NAT',''),(1354,'662','Activo inmovilizado',3,'','NAT',''),(1355,'6621','Propiedades de inversión',4,'','NAT',''),(1356,'6622','Activos biológicos',4,'','NAT',''),(1357,'67','GASTOS FINANCIEROS',2,'C','NAT',''),(1358,'671','Gastos en operaciones de endeudamiento y otros',3,'','NAT',''),(1359,'6711','Préstamos de instituciones financieras y otras entidades',4,'','NAT',''),(1360,'6712','Contratos de arrendamiento financiero',4,'','NAT',''),(1361,'6713','Emisión y colocación de instrumentos representativos de deuda y\npatrimonio',4,'','NAT',''),(1362,'6714','Documentos vendidos o descontados',4,'','NAT',''),(1363,'672','Pérdida por instrumentos financieros derivados',3,'','NAT',''),(1364,'673','Intereses por préstamos y otras obligaciones',3,'','NAT',''),(1365,'6731','Préstamos de instituciones financieras y otras entidades',4,'','NAT',''),(1366,'67311','Instituciones financieras',5,'','NAT',''),(1367,'67312','Otras entidades',5,'','NAT',''),(1368,'6732','Contratos de arrendamiento financiero',4,'','NAT',''),(1369,'6733','Otros instrumentos financieros por pagar',4,'','NAT',''),(1370,'6734','Documentos vendidos o descontados',4,'','NAT',''),(1371,'6735','Obligaciones emitidas',4,'','NAT',''),(1372,'6736','Obligaciones comerciales',4,'','NAT',''),(1373,'674','Gastos en operaciones de factoraje (factoring)',3,'','NAT',''),(1374,'6741','Pérdida en instrumentos vendidos',4,'','NAT',''),(1375,'675','Descuentos concedidos por pronto pago',3,'','NAT',''),(1376,'676','Diferencia de cambio',3,'','NAT',''),(1377,'677','Pérdida por medición de activos y pasivos financieros al valor razonable',3,'','NAT',''),(1378,'6771','Inversiones mantenidas para negociación',4,'','NAT',''),(1379,'6772','Otras inversiones financieras',4,'','NAT',''),(1380,'6773','Otros',4,'','NAT',''),(1381,'678','Participación en resultados de entidades relacionadas',3,'','NAT',''),(1382,'6781','Participación en los resultados de subsidiarias y asociadas bajo el método\ndel valor patrimonial',4,'','NAT',''),(1383,'6782','Participaciones en negocios conjuntos',4,'','NAT',''),(1384,'679','Otros gastos financieros',3,'','NAT',''),(1385,'6791','Primas por opciones',4,'','NAT',''),(1386,'6792','Gastos financieros en medición a valor descontado',4,'','NAT',''),(1387,'6793','Gastos financieros en actualización de activos por derecho de uso',4,'','NAT',''),(1388,'68','VALUACIÓN Y DETERIORO DE ACTIVOS Y PROVISIONES',2,'C','NAT',''),(1389,'681','Depreciación de propiedades de inversión',3,'','NAT',''),(1390,'6811','Edificaciones',4,'','NAT',''),(1391,'68111','Costo',5,'','NAT',''),(1392,'68112','Revaluación',5,'','NAT',''),(1393,'68113','Costo de financiación',5,'','NAT',''),(1394,'682','Depreciación de activos por derecho de uso - arrendamiento financiero',3,'','NAT',''),(1395,'6821','Propiedades de inversión',4,'','NAT',''),(1396,'68211','Edificaciones',5,'','NAT',''),(1397,'682111','Costo',6,'','NAT',''),(1398,'682112','Revaluación',6,'','NAT',''),(1399,'682113','Costo de financiación',6,'','NAT',''),(1400,'6822','Propiedad, planta y equipo',4,'','NAT',''),(1401,'68221','Edificaciones',5,'','NAT',''),(1402,'682211','Costo',6,'','NAT',''),(1403,'682212','Revaluación',6,'','NAT',''),(1404,'682213','Costo de financiación',6,'','NAT',''),(1405,'68222','Maquinarias y equipos de explotación',5,'','NAT',''),(1406,'682221','Costo',6,'','NAT',''),(1407,'682222','Revaluación',6,'','NAT',''),(1408,'682223','Costo de financiación',6,'','NAT',''),(1409,'68223','Unidades de transporte',5,'','NAT',''),(1410,'682231','Costo',6,'','NAT',''),(1411,'682232','Revaluación',6,'','NAT',''),(1412,'68225','Equipos diversos',5,'','NAT',''),(1413,'682251','Costo',6,'','NAT',''),(1414,'682252','Revaluación',6,'','NAT',''),(1415,'683','Depreciación de activos por derecho de uso - arrendamiento operativo',3,'','NAT',''),(1416,'6831','Depreciación de activos por derecho de uso - arrendamiento operativo',4,'','NAT',''),(1417,'68311','Edificaciones',5,'','NAT',''),(1418,'683111','Costo',6,'','NAT',''),(1419,'683112','Revaluación',6,'','NAT',''),(1420,'68312','Maquinarias y equipos de explotación',5,'','NAT',''),(1421,'683121','Costo',6,'','NAT',''),(1422,'683122','Revaluación',6,'','NAT',''),(1423,'68313','Unidades de transporte',5,'','NAT',''),(1424,'683131','Costo',6,'','NAT',''),(1425,'683132','Revaluación',6,'','NAT',''),(1426,'68315','Equipos diversos',5,'','NAT',''),(1427,'683351','Costo',6,'','NAT',''),(1428,'683152','Revaluación',6,'','NAT',''),(1429,'684','Depreciación de propiedad, planta y equipo',3,'','NAT',''),(1430,'6841','Depreciación de propiedad, planta y equipo - Costo',4,'','NAT',''),(1431,'68410','Plantas productoras',5,'','NAT',''),(1432,'68411','Edificaciones',5,'','NAT',''),(1433,'68412','Maquinarias y equipos de explotación',5,'','NAT',''),(1434,'68413','Unidades de transporte',5,'','NAT',''),(1435,'68414','Muebles y enseres',5,'','NAT',''),(1436,'68415','Equipos diversos',5,'','NAT',''),(1437,'68416','Herramientas y unidades de reemplazo',5,'','NAT',''),(1438,'6842','Depreciación de propiedad, planta y equipo - Revaluación',4,'','NAT',''),(1439,'68420','Plantas productoras',5,'','NAT',''),(1440,'68421','Edificaciones',5,'','NAT',''),(1441,'68422','Maquinarias y equipos de explotación',5,'','NAT',''),(1442,'68423','Unidades de transporte',5,'','NAT',''),(1443,'68424','Muebles y enseres',5,'','NAT',''),(1444,'68425','Equipos diversos',5,'','NAT',''),(1445,'68426','Herramientas y unidades de reemplazo',5,'','NAT',''),(1446,'6843','Depreciación de propiedad, planta y equipo - Costos de financiación',4,'','NAT',''),(1447,'68430','Plantas productoras',5,'','NAT',''),(1448,'68431','Edificaciones',5,'','NAT',''),(1449,'68432','Maquinarias y equipos de explotación',5,'','NAT',''),(1450,'685','Depreciación de activos biológicos en producción',3,'','NAT',''),(1451,'6851','Depreciación de activos biológicos en producción - costo',4,'','NAT',''),(1452,'68511','Activos biológicos de origen animal',5,'','NAT',''),(1453,'68512','Activos biológicos de origen vegetal',5,'','NAT',''),(1454,'6852','Depreciación de activos biológicos en producción - costo de financiación',4,'','NAT',''),(1455,'68521','Activos biológicos de origen animal',5,'','NAT',''),(1456,'68522','Activos biológicos de origen vegetal',5,'','NAT',''),(1457,'686','Amortización de intangibles',3,'','NAT',''),(1458,'6861','Amortización de intangibles  Costo',4,'','NAT',''),(1459,'68611','Concesiones, licencias y otros derechos',5,'','NAT',''),(1460,'68612','Patentes y propiedad industrial',5,'','NAT',''),(1461,'68613','Programas de computadora (software)',5,'','NAT',''),(1462,'68614','Costos de exploración y desarrollo',5,'','NAT',''),(1463,'68615','Fórmulas, diseńos y prototipos',5,'','NAT',''),(1464,'68619','Otros activos intangibles',5,'','NAT',''),(1465,'6862','Amortización de intangibles  Revaluación',4,'','NAT',''),(1466,'68621','Concesiones, licencias y otros derechos',5,'','NAT',''),(1467,'68622','Patentes y propiedad industrial',5,'','NAT',''),(1468,'68623','Programas de computadora (software)',5,'','NAT',''),(1469,'68624','Costos de exploración y desarrollo',5,'','NAT',''),(1470,'68625','Fórmulas, diseńos y prototipos',5,'','NAT',''),(1471,'68629','Otros activos intangibles',5,'','NAT',''),(1472,'687','Valuación de activos',3,'','NAT',''),(1473,'6871','Estimación de cuentas de cobranza dudosa',4,'','NAT',''),(1474,'68711','Cuentas por cobrar comerciales  Terceros',5,'','NAT',''),(1475,'68712','Cuentas por cobrar comerciales  Relacionadas',5,'','NAT',''),(1476,'68713','Cuentas por cobrar al personal, a los accionistas (socios) y\ndirectores',5,'','NAT',''),(1477,'68714','Cuentas por cobrar diversas  Terceros',5,'','NAT',''),(1478,'68715','Cuentas por cobrar diversas  Relacionadas',5,'','NAT',''),(1479,'6873','Desvalorización de inversiones mobiliarias',4,'','NAT',''),(1480,'68731','Inversiones a ser mantenidas hasta el vencimiento',5,'','NAT',''),(1481,'68732','Instrumentos financieros representativos de derecho\npatrimonial',5,'','NAT',''),(1482,'688','Deterioro del valor de los activos',3,'','NAT',''),(1483,'6882','Desvalorización de propiedad de inversión',4,'','NAT',''),(1484,'68812','Edificaciones',5,'','NAT',''),(1485,'68813','Construcciones en curso',5,'','NAT',''),(1487,'68820','Planta productora en producción',5,'','NAT',''),(1488,'68821','Planta productora en desarrollo',5,'','NAT',''),(1489,'68822','Terrenos',5,'','NAT',''),(1490,'68823','Edificaciones',5,'','NAT',''),(1491,'68824','Maquinarias y equipos de explotación',5,'','NAT',''),(1492,'68825','Unidades de transporte',5,'','NAT',''),(1493,'68826','Muebles y enseres',5,'','NAT',''),(1494,'68827','Equipos diversos',5,'','NAT',''),(1495,'68828','Herramientas y unidades de reemplazo',5,'','NAT',''),(1496,'6883','Desvalorización de propiedad, planta y equipo',4,'','NAT',''),(1497,'68830','Planta productora en producción',5,'','NAT',''),(1498,'68831','Planta productora en desarrollo',5,'','NAT',''),(1499,'68832','Terrenos',5,'','NAT',''),(1500,'68833','Edificaciones',5,'','NAT',''),(1501,'68834','Maquinarias y equipos de explotación',5,'','NAT',''),(1502,'68835','Unidades de transporte',5,'','NAT',''),(1503,'68836','Muebles y enseres',5,'','NAT',''),(1504,'68837','Equipos diversos',5,'','NAT',''),(1505,'68838','Herramientas y unidades de reemplazo',5,'','NAT',''),(1506,'6884','Desvalorización de intangibles',4,'','NAT',''),(1507,'68841','Concesiones, licencias y otros derechos',5,'','NAT',''),(1508,'68842','Patentes y propiedad industrial',5,'','NAT',''),(1509,'68843','Programas de computadora (software)',5,'','NAT',''),(1510,'68844','Costos de exploración y desarrollo',5,'','NAT',''),(1511,'68845','Fórmulas, diseńos y prototipos',5,'','NAT',''),(1512,'68846','Otros activos intangibles',5,'','NAT',''),(1513,'68847','Plusvalía mercantil',5,'','NAT',''),(1514,'6889','Desvalorización de activos biológicos en producción',4,'','NAT',''),(1515,'68891','Activos biológicos de origen animal',5,'','NAT',''),(1516,'68892','Activos biológicos de origen vegetal',5,'','NAT',''),(1517,'689','Provisiones',3,'','NAT',''),(1518,'6891','Provisión para litigios',4,'','NAT',''),(1519,'68911','Provisión para litigios  Costo',5,'','NAT',''),(1520,'68912','Provisión para litigios  Actualización financiera',5,'','NAT',''),(1521,'6892','Provisión por desmantelamiento, retiro o rehabilitación del inmovilizado',4,'','NAT',''),(1522,'68921','Provisión por desmantelamiento, retiro o rehabilitación del\ninmovilizado  Costo',5,'','NAT',''),(1523,'68922','Provisión por desmantelamiento, retiro o rehabilitación del\ninmovilizado  Actualización financiera',5,'','NAT',''),(1524,'6893','Provisión para reestructuraciones',4,'','NAT',''),(1525,'6894','Provisión para protección y remediación del medio ambiente',4,'','NAT',''),(1526,'68941','Provisión para protección y remediación del medio ambiente \nCosto',5,'','NAT',''),(1527,'68942','Provisión para protección y remediación del medio ambiente \nActualización financiera',5,'','NAT',''),(1528,'6896','Provisión para garantías',4,'','NAT',''),(1529,'68961','Provisión para garantías  Costo',5,'','NAT',''),(1530,'68962','Provisión para garantías  Actualización financiera',5,'','NAT',''),(1531,'6897','Provisión por activos por derecho de uso',4,'','NAT',''),(1532,'68971','Provisión por activos por derecho de uso arrendamiento\noperativo',5,'','NAT',''),(1533,'68972','Provisión por activos por derecho de uso arrendamiento\noperativo - actualización financiera',5,'','NAT',''),(1534,'6899','Otras provisiones',4,'','NAT',''),(1535,'69','COSTO DE VENTAS',2,'C','NAT',''),(1536,'691','Mercaderías',3,'','NAT',''),(1537,'6911','Mercaderías - exportación',4,'','NAT',''),(1538,'69111','Terceros',5,'','NAT',''),(1539,'69112','Relacionadas',5,'','NAT',''),(1540,'6912','Mercaderías - venta local',4,'','NAT',''),(1541,'69121','Terceros',5,'','NAT',''),(1542,'69122','Relacionadas',5,'','NAT',''),(1543,'692','Productos terminados',3,'','NAT',''),(1544,'6921','Productos terminados - Exportación',4,'','NAT',''),(1545,'69211','Terceros',5,'','NAT',''),(1546,'69212','Relacionadas',5,'','NAT',''),(1547,'6922','Productos terminados - Venta local',4,'','NAT',''),(1548,'69221','Terceros',5,'','NAT',''),(1549,'69222','Relacionadas',5,'','NAT',''),(1550,'6923','Costos de financiación  Productos terminados',4,'','NAT',''),(1551,'69231','Terceros',5,'','NAT',''),(1552,'69232','Relacionadas',5,'','NAT',''),(1553,'6924','Costos de producción no absorbido  Productos terminados',4,'','NAT',''),(1554,'6925','Costo de ineficiencia  Productos terminados',4,'','NAT',''),(1555,'693','Servicios terminados',3,'','NAT',''),(1556,'6931','Servicios  Exportación',4,'','NAT',''),(1557,'69311','Terceros',5,'','NAT',''),(1558,'69312','Relacionadas',5,'','NAT',''),(1559,'6932','Servicios  local',4,'','NAT',''),(1560,'69321','Terceros',5,'','NAT',''),(1561,'69322','Relacionadas',5,'','NAT',''),(1562,'694','Subproductos, desechos y desperdicios',3,'','NAT',''),(1563,'6941','Subproductos',4,'','NAT',''),(1564,'69411','Terceros',5,'','NAT',''),(1565,'69412','Relacionadas',5,'','NAT',''),(1566,'6942','Desechos y desperdicios',4,'','NAT',''),(1567,'69421','Terceros',5,'','NAT',''),(1568,'69422','Relacionadas',5,'','NAT',''),(1569,'695','Gastos por desvalorización de inventarios al costo',3,'','NAT',''),(1570,'6951','Mercaderías',4,'','NAT',''),(1571,'6952','Productos terminados',4,'','NAT',''),(1572,'6953','Subproductos, desechos y desperdicios',4,'','NAT',''),(1573,'6954','Productos en proceso',4,'','NAT',''),(1574,'6955','Materias primas',4,'','NAT',''),(1575,'6956','Materiales auxiliares, suministros y repuestos',4,'','NAT',''),(1576,'6957','Envases y embalajes',4,'','NAT',''),(1577,'6958','Inventarios por recibir',4,'','NAT',''),(1578,'7','INGRESOS',1,'','RES',''),(1579,'70','VENTAS',2,'C','RES',''),(1580,'701','Mercaderías',3,'','RES',''),(1581,'7011','Mercaderías - venta de exportación',4,'','RES',''),(1582,'70111','Terceros',5,'','RES',''),(1583,'70112','Relacionadas',5,'','RES',''),(1584,'7012','Mercaderías - venta local',4,'','RES',''),(1587,'702','Productos terminados',3,'','RES',''),(1588,'7021','Productos terminados - venta de exportación',4,'','RES',''),(1589,'70211','Terceros',5,'','RES',''),(1590,'70212','Relacionadas',5,'','RES',''),(1591,'7022','Productos terminados - venta local',4,'','RES',''),(1592,'70221','Terceros',5,'','RES',''),(1593,'70222','Relacionadas',5,'','RES',''),(1594,'703','Servicios terminados',3,'','RES',''),(1595,'7031','Servicios  exportación',4,'','RES',''),(1596,'70311','Terceros',5,'','RES',''),(1597,'70312','Relacionadas',5,'','RES',''),(1598,'7032','Servicios  local',4,'','RES',''),(1599,'70321','Terceros',5,'','RES',''),(1600,'70322','Relacionadas',5,'','RES',''),(1601,'704','Subproductos, desechos y desperdicios',3,'','RES',''),(1602,'7041','Subproductos',4,'','RES',''),(1603,'70411','Terceros',5,'','RES',''),(1604,'70412','Relacionadas',5,'','RES',''),(1605,'7042','Desechos y desperdicios',4,'','RES',''),(1606,'70421','Terceros',5,'','RES',''),(1607,'70422','Relacionadas',5,'','RES',''),(1608,'709','Devoluciones sobre ventas',3,'','RES',''),(1609,'7091','Mercaderías - Venta de exportación',4,'','RES',''),(1610,'70911','Terceros',5,'','RES',''),(1611,'70912','Relacionadas',5,'','RES',''),(1612,'7092','Mercaderías - Venta local',4,'','RES',''),(1613,'70921','Terceros',5,'','RES',''),(1614,'70922','Relacionadas',5,'','RES',''),(1615,'7093','Productos terminados - Venta de exportación',4,'','RES',''),(1616,'70931','Terceros',5,'','RES',''),(1617,'70932','Relacionadas',5,'','RES',''),(1618,'7094','Productos terminados - Venta local',4,'','RES',''),(1619,'70941','Terceros',5,'','RES',''),(1620,'70942','Relacionadas',5,'','RES',''),(1621,'7095','Inventarios de servicios rechazados',4,'','RES',''),(1622,'70951','Terceros',5,'','RES',''),(1623,'70952','Relacionadas',5,'','RES',''),(1624,'7096','Subproductos, desechos y desperdicios',4,'','RES',''),(1625,'70961','Terceros',5,'','RES',''),(1626,'70962','Relacionadas',5,'','RES',''),(1627,'71','VARIACIÓN DE LA PRODUCCIÓN ALMACENADA',2,'C','RES',''),(1628,'711','Variación de productos terminados',3,'','RES',''),(1629,'7111','Productos terminados',4,'','RES',''),(1630,'712','Variación de subproductos, desechos y desperdicios',3,'','RES',''),(1631,'7121','Subproductos',4,'','RES',''),(1632,'7122','Desechos y desperdicios',4,'','RES',''),(1633,'713','Variación de productos en proceso',3,'','RES',''),(1634,'7131','Productos en proceso de manufactura',4,'','RES',''),(1635,'714','Variación de envases y embalajes',3,'','RES',''),(1636,'7141','Envases',4,'','RES',''),(1637,'7142','Embalajes',4,'','RES',''),(1638,'715','Variación de inventarios de servicios',3,'','RES',''),(1639,'7151',' Inventarios de servicios en proceso',4,'','RES',''),(1640,'72','PRODUCCIÓN DE ACTIVO INMOVILIZADO',2,'C','RES',''),(1641,'721','Propiedades de inversión',3,'','RES',''),(1642,'7211','Edificaciones',4,'','RES',''),(1643,'722','Propiedad, planta y equipo',3,'','RES',''),(1644,'7220','Planta productora',4,'','RES',''),(1645,'7221','Edificaciones',4,'','RES',''),(1646,'7222','Maquinarias y otros equipos de explotación',4,'','RES',''),(1647,'7223','Unidades de transporte',4,'','RES',''),(1648,'7224','Muebles y enseres',4,'','RES',''),(1649,'7225','Equipos diversos',4,'','RES',''),(1650,'723','Intangibles',3,'','RES',''),(1651,'7231','Programas de computadora (software)',4,'','RES',''),(1652,'7232','Costos de exploración y desarrollo',4,'','RES',''),(1653,'7233','Fórmulas, diseńos y prototipos',4,'','RES',''),(1654,'724','Activos biológicos',3,'','RES',''),(1655,'7241','Activos biológicos en desarrollo de origen animal',4,'','RES',''),(1656,'7242','Activos biológicos en desarrollo de origen vegetal',4,'','RES',''),(1657,'725','Costos de financiación capitalizados',3,'','RES',''),(1658,'7251','Costos de financiación  Propiedades de inversión',4,'','RES',''),(1659,'72511','Plantas productoras en desarrollo',5,'','RES',''),(1660,'72512','Edificaciones',5,'','RES',''),(1661,'7252','Costos de financiación  Propiedad, planta y equipo',4,'','RES',''),(1662,'72521','Plantas productoras en desarrollo',5,'','RES',''),(1663,'72522','Edificaciones',5,'','RES',''),(1664,'72523','Maquinarias y otros equipos de explotación',5,'','RES',''),(1665,'7253','Costos de financiación  Intangibles',4,'','RES',''),(1666,'7254','Costos de financiación  Activos biológicos en desarrollo',4,'','RES',''),(1667,'72541','Activos biológicos de origen animal',5,'','RES',''),(1668,'72542','Activos biológicos de origen vegetal',5,'','RES',''),(1669,'73','DESCUENTOS, REBAJAS Y BONIFICACIONES OBTENIDOS',2,'C','RES',''),(1670,'731','Descuentos, rebajas y bonificaciones obtenidos',3,'','RES',''),(1671,'7311','Terceros',4,'','RES',''),(1672,'7312','Relacionadas',4,'','RES',''),(1673,'74','DESCUENTOS, REBAJAS y BONIFICACIONES CONCEDIDOS',2,'C','RES',''),(1674,'741','Descuentos, rebajas y bonificaciones concedidos',3,'','RES',''),(1675,'7411','Terceros',4,'','RES',''),(1676,'7412','Relacionadas',4,'','RES',''),(1677,'75','OTROS INGRESOS DE GESTIÓN',2,'C','RES',''),(1678,'751','Servicios en beneficio del personal',3,'','RES',''),(1679,'752','Comisiones y corretajes',3,'','RES',''),(1680,'753','Regalías',3,'','RES',''),(1681,'754','Alquileres',3,'','RES',''),(1682,'7540','Plantas productoras',4,'','RES',''),(1683,'7541','Terrenos',4,'','RES',''),(1684,'7542','Edificaciones',4,'','RES',''),(1685,'7543','Maquinarias y equipos de explotación',4,'','RES',''),(1686,'7544','Unidades de transporte',4,'','RES',''),(1687,'7545','Equipos diversos',4,'','RES',''),(1688,'755','Recuperación de cuentas de valuación',3,'','RES',''),(1689,'7551','Recuperación  Cuentas de cobranza dudosa',4,'','RES',''),(1690,'7552','Recuperación  Desvalorización de inventarios',4,'','RES',''),(1691,'7553','Recuperación  Desvalorización de inversiones mobiliarias',4,'','RES',''),(1692,'756','Enajenación de activos inmovilizados',3,'','RES',''),(1693,'7561','Inversiones mobiliarias',4,'','RES',''),(1694,'7562','Propiedades de inversión',4,'','RES',''),(1695,'7563','Activos adquiridos en arrendamiento financiero',4,'','RES',''),(1696,'7564','Propiedad, planta y equipo',4,'','RES',''),(1697,'7565','Intangibles',4,'','RES',''),(1698,'7566','Activos biológicos',4,'','RES',''),(1699,'757','Recuperación de deterioro de cuentas de activos inmovilizados',3,'','RES',''),(1700,'7571','Recuperación de deterioro de propiedades de inversión',4,'','RES',''),(1701,'7572','Recuperación de deterioro de propiedad, planta y equipo',4,'','RES',''),(1702,'7573','Recuperación de deterioro de intangibles',4,'','RES',''),(1703,'7574','Recuperación de deterioro de activos biológicos',4,'','RES',''),(1704,'759','Otros ingresos de gestión',3,'','RES',''),(1705,'7591','Subsidios gubernamentales',4,'','RES',''),(1706,'7592','Reclamos al seguro',4,'','RES',''),(1707,'7593','Donaciones',4,'','RES',''),(1708,'7594','Devoluciones tributarias',4,'','RES',''),(1709,'7599','Otros ingresos de gestión',4,'','RES',''),(1710,'76','GANANCIA POR MEDICIÓN DE ACTIVOS NO FINANCIEROS AL VALOR RAZONABLE',2,'C','RES',''),(1711,'761','Activo realizable',3,'','RES',''),(1712,'7611','Mercaderías',4,'','RES',''),(1713,'7612','Productos terminados',4,'','RES',''),(1714,'7613','Activos no corrientes mantenidos para la venta',4,'','RES',''),(1715,'76131','Propiedades de inversión',5,'','RES',''),(1716,'76132','Propiedad, planta y equipo',5,'','RES',''),(1717,'76133','Intangibles',5,'','RES',''),(1718,'76134','Activos biológicos',5,'','RES',''),(1719,'762','Activo inmovilizado',3,'','RES',''),(1720,'7621','Propiedades de inversión',4,'','RES',''),(1721,'7622','Activos biológicos',4,'','RES',''),(1722,'77','INGRESOS FINANCIEROS',2,'C','RES',''),(1723,'771','Ganancia por instrumento financiero derivado',3,'','RES',''),(1724,'772','Rendimientos ganados',3,'','RES',''),(1725,'7721','Depósitos en instituciones financieras',4,'','RES',''),(1726,'7722','Cuentas por cobrar comerciales',4,'','RES',''),(1727,'7723','Préstamos otorgados',4,'','RES',''),(1728,'7724','Inversiones a ser mantenidas hasta el vencimiento',4,'','RES',''),(1729,'7725','Instrumentos financieros representativos de derecho patrimonial',4,'','RES',''),(1730,'773','Dividendos',3,'','RES',''),(1731,'774','Ingresos en operaciones de factoraje (factoring)',3,'','RES',''),(1732,'775','Descuentos obtenidos por pronto pago',3,'','RES',''),(1733,'776','Diferencia en cambio',3,'','RES',''),(1734,'777','Ganancia por medición de activos y pasivos financieros al valor razonable',3,'','RES',''),(1735,'7771','Inversiones mantenidas para negociación',4,'','RES',''),(1736,'7772','Otras inversiones',4,'','RES',''),(1737,'7773','Otras',4,'','RES',''),(1738,'778','Participación en resultados de entidades relacionadas',3,'','RES',''),(1739,'7781','Participación en los resultados de subsidiarias y asociadas bajo el método del valor patrimonial',4,'','RES',''),(1740,'7782','Ingresos por participaciones en negocios conjuntos',4,'','RES',''),(1741,'779','Otros ingresos financieros',3,'','RES',''),(1742,'7792','Ingresos financieros en medición a valor descontado',4,'','RES',''),(1743,'78','CARGAS CUBIERTAS POR PROVISIONES',2,'C','RES',''),(1744,'781','Cargas cubiertas por provisiones',3,'','RES',''),(1745,'79','CARGAS IMPUTABLES A CUENTAS DE COSTOS Y GASTOS',2,'C','RES',''),(1746,'791','Cargas imputables a cuentas de costos y gastos',3,'','RES',''),(1747,'792','Gastos financieros imputables a cuentas de inventarios',3,'','RES',''),(1748,'8',': SALDOS INTERMEDIARIOS DE GESTIÓN Y DETERMINACIÓN DEL\nRESULTADO DEL EJERCICIO',1,'','MAY',''),(1749,'80','MARGEN COMERCIAL',2,'C','MAY',''),(1750,'801','Margen comercial',3,'','MAY',''),(1751,'81','PRODUCCIÓN DEL EJERCICIO',2,'C','MAY',''),(1752,'811','Producción de bienes',3,'','MAY',''),(1753,'812','Producción de servicios',3,'','MAY',''),(1754,'813','Producción de activo inmovilizado',3,'','MAY',''),(1755,'82','VALOR AGREGADO',2,'C','MAY',''),(1756,'821','Valor agregado',3,'','MAY',''),(1757,'83','EXCEDENTE BRUTO (INSUFICIENCIA BRUTA) DE EXPLOTACIÓN',2,'C','MAY',''),(1758,'831','Excedente bruto (insuficiencia bruta) de explotación',3,'','MAY',''),(1759,'84','RESULTADO DE EXPLOTACIÓN',2,'C','MAY',''),(1760,'841','Resultado de explotación',3,'','MAY',''),(1761,'85','RESULTADO ANTES DE PARTICIPACIONES E IMPUESTOS',2,'C','MAY',''),(1762,'851','Resultado antes del impuesto a las ganancias',3,'','MAY',''),(1763,'88','IMPUESTO A LA RENTA',2,'C','MAY',''),(1764,'881','Impuesto a las ganancias  Corriente',3,'','MAY',''),(1765,'882','Impuesto a las ganancias  Diferido',3,'','MAY',''),(1766,'89','DETERMINACIÓN DEL RESULTADO DEL EJERCICIO',2,'C','MAY',''),(1767,'891','Utilidad',3,'','MAY',''),(1768,'892','Pérdida',3,'','MAY','');
/*!40000 ALTER TABLE `cuentacontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentocomprobante`
--

DROP TABLE IF EXISTS `documentocomprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentocomprobante` (
  `iddocumentocomprobante` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iddocumentocomprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentocomprobante`
--

LOCK TABLES `documentocomprobante` WRITE;
/*!40000 ALTER TABLE `documentocomprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentocomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librodiario`
--

DROP TABLE IF EXISTS `librodiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librodiario` (
  `idlibrodiario` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(9) DEFAULT NULL,
  `denominacion` varchar(150) DEFAULT NULL,
  `totaldebe` decimal(10,2) DEFAULT NULL,
  `totalhaber` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idlibrodiario`),
  UNIQUE KEY `idlibrodiario_UNIQUE` (`idlibrodiario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librodiario`
--

LOCK TABLES `librodiario` WRITE;
/*!40000 ALTER TABLE `librodiario` DISABLE KEYS */;
INSERT INTO `librodiario` (`idlibrodiario`, `codigo`, `denominacion`, `totaldebe`, `totalhaber`) VALUES (1,'C00000001','Empresa CORPAC.SAC',NULL,NULL);
/*!40000 ALTER TABLE `librodiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libroregistro`
--

DROP TABLE IF EXISTS `libroregistro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libroregistro` (
  `idLibroRegistro` varchar(20) NOT NULL,
  `idLibroTitulo` int DEFAULT NULL,
  `denominacion` varchar(150) DEFAULT NULL,
  `codigoSunat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idLibroRegistro`),
  KEY `idLibroTitulo` (`idLibroTitulo`),
  CONSTRAINT `libroregistro_ibfk_1` FOREIGN KEY (`idLibroTitulo`) REFERENCES `libroregistrotitulo` (`idLibroTitulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libroregistro`
--

LOCK TABLES `libroregistro` WRITE;
/*!40000 ALTER TABLE `libroregistro` DISABLE KEYS */;
/*!40000 ALTER TABLE `libroregistro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libroregistrotitulo`
--

DROP TABLE IF EXISTS `libroregistrotitulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libroregistrotitulo` (
  `idLibroTitulo` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idLibroTitulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libroregistrotitulo`
--

LOCK TABLES `libroregistrotitulo` WRITE;
/*!40000 ALTER TABLE `libroregistrotitulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `libroregistrotitulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacion`
--

DROP TABLE IF EXISTS `operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operacion` (
  `idoperacion` int NOT NULL AUTO_INCREMENT,
  `correlacion` int DEFAULT NULL,
  `debe` decimal(10,2) DEFAULT NULL,
  `haber` decimal(10,2) DEFAULT NULL,
  `asientoid` int DEFAULT NULL,
  `cuentacontableid` int DEFAULT NULL,
  PRIMARY KEY (`idoperacion`),
  KEY `FKo18s5xgqm5auvbyekfw2udyxq` (`asientoid`),
  KEY `FK33a8h3gmdkn907xq3ja282xef` (`cuentacontableid`),
  CONSTRAINT `FK33a8h3gmdkn907xq3ja282xef` FOREIGN KEY (`cuentacontableid`) REFERENCES `cuentacontable` (`idcuentacontable`),
  CONSTRAINT `FKo18s5xgqm5auvbyekfw2udyxq` FOREIGN KEY (`asientoid`) REFERENCES `asiento` (`idasiento`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacion`
--

LOCK TABLES `operacion` WRITE;
/*!40000 ALTER TABLE `operacion` DISABLE KEYS */;
INSERT INTO `operacion` (`idoperacion`, `correlacion`, `debe`, `haber`, `asientoid`, `cuentacontableid`) VALUES (1,1,0.00,0.00,1,305),(18,2,0.00,0.00,12,200),(19,3,0.00,0.00,12,1200),(20,4,0.00,0.00,12,100),(21,5,0.00,0.00,12,55),(22,6,0.00,0.00,12,1500),(23,7,0.00,0.00,12,1600),(24,7,0.00,0.00,12,1500),(25,8,0.00,0.00,13,111),(26,9,0.00,0.00,13,111),(27,11,0.00,0.00,13,31),(28,12,0.00,0.00,13,35);
/*!40000 ALTER TABLE `operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idPersona` varchar(20) NOT NULL,
  `tipoDocumentoId` varchar(5) DEFAULT NULL,
  `denominacion` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `afiliado` varchar(50) DEFAULT NULL,
  `detraccion` varchar(50) DEFAULT NULL,
  `nota` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPersona`),
  KEY `tipoDocumentoId` (`tipoDocumentoId`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`tipoDocumentoId`) REFERENCES `tipodocumento` (`idTipoDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodocumento` (
  `idTipoDocumento` varchar(5) NOT NULL,
  `denominacion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idTipoDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proy2'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_asiento_buscar_x_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_asiento_buscar_x_id`(IN `_id` int(7))
begin
   select * from asiento where idasiento = _id ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_asiento_listar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_asiento_listar`()
begin
   select * from asiento ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_asiento_registrar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_asiento_registrar`(
 
IN `_documento` VARCHAR(255), 
IN `_fecha` VARCHAR(50), 
IN `_glosa` VARCHAR(100),
IN `_libroregistro` VARCHAR(255),
-- IN `_numeroasiento` VARCHAR(20),
IN `_librodiario_id` INT(7)

)
    MODIFIES SQL DATA
begin  
declare mensaje varchar (100) default 'insercion correcta';

/* logica para numero de asiento*/
declare maximo varchar(10);
   declare num int;
   declare cod_asiento varchar(10);
   set maximo =(select max(numeroasiento)from asiento);
   set num=(select ltrim(right(maximo,3)));
   
   if num>=1 and num<=8 then
   set num=num+1;
   set cod_asiento=(select concat('000',cast(num as char)));
   
   elseif num>=9 and num<=98 then
   set num=num+1;
   set cod_asiento=(select concat('00',cast(num as char)));
   
   elseif num>=99 and num<=998 then
   set num=num+1;
   set cod_asiento=(select concat('0',cast(num as char)));
   else
   set cod_asiento=(select '0001');
   end if;
  -- ** insert into persona (codigo,nombre) values (cod,nombre_p);
   

/*QUITAMOS LOS ESPACIOS*/


set _documento= upper(LTRIM(RTRIM(_documento)));
set _fecha= upper(LTRIM(RTRIM(_fecha)));
set _glosa= (CONCAT(UPPER(LEFT(_glosa,1)), LOWER(SUBSTRING(_glosa,2))));
set _libroregistro= upper(LTRIM(RTRIM(_libroregistro)));
-- set _numeroasiento= upper(LTRIM(RTRIM(_numeroasiento)));
set _librodiario_id  = upper(LTRIM(RTRIM(_librodiario_id)));

-- <<<<<<<<<<<<<<<<<<<-------------
 
-- 1 VALIDACION - QUE NO LLEGEN DATOS VACIOS*/
 if length(_documento)=0 then
       set mensaje='Es necesario el documento';
   elseif length(_fecha)=0 then
       set mensaje='Es necesario la fecha';
   elseif length(_glosa)=0 then
       set mensaje='Es necesario la glosa';
   elseif length(_libroregistro)=0 then
       set mensaje='Es necesario el libro registro';   
 --  elseif length(_numeroasiento)=0 then
 --      set mensaje='Es necesario el numero de asiento';
   elseif length(_librodiario_id)=0 then
       set mensaje='Es necesario el id de libro diario';     
        
	end if; 
    

start transaction; 
 insert into asiento  (documentocomprobante,fecha, glosa, libroregistro,numeroasiento, librodiarioid ) 
             -- values (_documento,_fecha, _glosa, _libroregistro,_numeroasiento, _librodiario_id  ) ;
             values (_documento,_fecha, _glosa, _libroregistro,cod_asiento, _librodiario_id  ) ;

-- insert into operacion (correlacion,debe,haber,asientoid,cuentacontableid) 
   --           values (_correlacion,_debe,_haber,(select max(idasiento) from asiento),_cuentacontableid);
    
    
-- elseif _eleccion>1 then
-- insert into operacion (correlacion,debe,haber,asientoid,cuentacontableid) 
   --  values (_correlacion,_debe,_haber,(select max(idasiento) from asiento),_cuentacontableid);
-- end if;

if mensaje<>'insercion correcta' then
    rollback;
end if; 
select mensaje;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cuenta_editar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cuenta_editar`(
IN `_nivelcuenta` CHAR (1),
IN `_id` INT (7) 
)
    MODIFIES SQL DATA
begin  
declare mensaje varchar (100) default 'insercion correcta';
/*QUITAMOS LOS ESPACIOS*/
set _nivelcuenta  = upper(LTRIM(RTRIM(_nivelcuenta)));
-- <<<<<<<<<<<<<<<<<<<-------------
-- 1 VALIDACION - QUE NO LLEGEN DATOS VACIOS*/
 if  length(_nivelcuenta)=0 then
       set mensaje='Es necesario el nivel de cuanta';     
        
	end if; 
    

start transaction; 
           
UPDATE cuentacontable SET nivelcuenta = _nivelcuenta  
WHERE (idcuentacontable = _id);

if mensaje<>'insercion correcta' then
    rollback;
end if; 
select mensaje;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cuenta_listar_codigocuenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cuenta_listar_codigocuenta`(
IN `_cuenta` VARCHAR (10)
)
    MODIFIES SQL DATA
begin  
-- <<<<<<<<<<<<<<<<<<<-------------
-- 1 VALIDACION - QUE NO LLEGEN DATOS VACIOS*/
     start transaction; 
    select *from cuentacontable where cuenta = _cuenta;



end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cuenta_lista_x` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cuenta_lista_x`(
IN _x VARCHAR (250))
begin
select * from cuentacontable
where cuenta like concat('%',_x,'%') or denominacion like  concat('%',_x,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_operacion_asiento_registrar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_operacion_asiento_registrar`(
 
IN `_documento` VARCHAR(255), 
IN `_fecha` VARCHAR(50), 
IN `_glosa` VARCHAR(100),
IN `_libroregistro` VARCHAR(255),
-- IN `_numeroasiento` VARCHAR(20),
IN `_librodiario_id` INT(7),

IN `_correlacion`INT (7),
IN `_debe` decimal (8,2),
IN `_haber` decimal (8,2),
IN `_cuentacontableid` int (7) ,
IN `_eleccion` int (3)
)
    MODIFIES SQL DATA
begin  
declare mensaje varchar (100) default 'insercion correcta';

/* logica para numero de asiento*/
declare maximo varchar(10);
   declare num int;
   declare cod_asiento varchar(10);
   set maximo =(select max(numeroasiento)from asiento);
   set num=(select ltrim(right(maximo,3)));
   
   if num>=1 and num<=8 then
   set num=num+1;
   set cod_asiento=(select concat('000',cast(num as char)));
   
   elseif num>=9 and num<=98 then
   set num=num+1;
   set cod_asiento=(select concat('00',cast(num as char)));
   
   elseif num>=99 and num<=998 then
   set num=num+1;
   set cod_asiento=(select concat('0',cast(num as char)));
   else
   set cod_asiento=(select '0001');
   end if;
  -- ** insert into persona (codigo,nombre) values (cod,nombre_p);
   

/*QUITAMOS LOS ESPACIOS*/


set _documento= upper(LTRIM(RTRIM(_documento)));
set _fecha= upper(LTRIM(RTRIM(_fecha)));
set _glosa= (CONCAT(UPPER(LEFT(_glosa,1)), LOWER(SUBSTRING(_glosa,2))));
set _libroregistro= upper(LTRIM(RTRIM(_libroregistro)));
-- set _numeroasiento= upper(LTRIM(RTRIM(_numeroasiento)));
set _librodiario_id  = upper(LTRIM(RTRIM(_librodiario_id)));

set _correlacion = upper(LTRIM(RTRIM(_correlacion)));
set _debe = upper(LTRIM(RTRIM(_debe)));
set _haber = upper(LTRIM(RTRIM(_haber)));
set _cuentacontableid = upper(LTRIM(RTRIM(_cuentacontableid)));
set _eleccion = upper(LTRIM(RTRIM(_eleccion)));
-- <<<<<<<<<<<<<<<<<<<-------------
 
-- 1 VALIDACION - QUE NO LLEGEN DATOS VACIOS*/
 if length(_documento)=0 then
       set mensaje='Es necesario el documento';
   elseif length(_fecha)=0 then
       set mensaje='Es necesario la fecha';
   elseif length(_glosa)=0 then
       set mensaje='Es necesario la glosa';
   elseif length(_libroregistro)=0 then
       set mensaje='Es necesario el libro registro';   
 --  elseif length(_numeroasiento)=0 then
 --      set mensaje='Es necesario el numero de asiento';
   elseif length(_librodiario_id)=0 then
       set mensaje='Es necesario el id de libro diario';     
        
	elseif length(_correlacion)=0 then
       set mensaje='Es necesario la correlacion' ;
    elseif length(_debe)=0 then
       set mensaje='Es necesario el debe';
    elseif length(_haber)=0 then
      set mensaje='Es necesario el haber' ;
    -- elseif length(_asientoid)=0 then
       -- set mensaje='Es necesario el id asiento' ;
	elseif length(_cuentacontableid)=0 then
       set mensaje='Es necesario la cuenta contable' ;
    elseif length(_eleccion)=0 then
       set mensaje='Es necesario la eleccion' ;
    
	end if; 
    

start transaction; 
if _eleccion=1 then
 insert into asiento  (documentocomprobante,fecha, glosa, libroregistro,numeroasiento, librodiarioid ) 
             -- values (_documento,_fecha, _glosa, _libroregistro,_numeroasiento, _librodiario_id  ) ;
             values (_documento,_fecha, _glosa, _libroregistro,cod_asiento, _librodiario_id  ) ;

insert into operacion (correlacion,debe,haber,asientoid,cuentacontableid) 
              values (_correlacion,_debe,_haber,(select max(idasiento) from asiento),_cuentacontableid);
    
    
elseif _eleccion>1 then
insert into operacion (correlacion,debe,haber,asientoid,cuentacontableid) 
    values (_correlacion,_debe,_haber,(select max(idasiento) from asiento),_cuentacontableid);
end if;

if mensaje<>'insercion correcta' then
    rollback;
end if; 
select mensaje;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_operacion_listar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_operacion_listar`()
begin
   select * from operacion order by asientoid ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_operacion_registrar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_operacion_registrar`(
 
IN `_correlacion` INT (7),
IN `_debe` decimal (8,2),
IN `_haber` decimal (8,2),
IN `_cuentacontableid` INT (7) 
)
    MODIFIES SQL DATA
begin  
declare mensaje varchar (100) default 'insercion correcta';

 
/*QUITAMOS LOS ESPACIOS*/


set _correlacion = upper(LTRIM(RTRIM(_correlacion)));
set _debe = upper(LTRIM(RTRIM(_debe)));
set _haber = upper(LTRIM(RTRIM(_haber)));
set _cuentacontableid = upper(LTRIM(RTRIM(_cuentacontableid)));
-- set _eleccion = upper(LTRIM(RTRIM(_eleccion)));
-- <<<<<<<<<<<<<<<<<<<-------------
 
-- 1 VALIDACION - QUE NO LLEGEN DATOS VACIOS*/
    
if length(_correlacion)=0 then
       set mensaje='Es necesario la correlacion' ;
    elseif length(_debe)=0 then
       set mensaje='Es necesario el debe';
    elseif length(_haber)=0 then
      set mensaje='Es necesario el haber' ;
  
	elseif length(_cuentacontableid)=0 then
       set mensaje='Es necesario la cuenta contable' ;
   
    
	end if; 
    

start transaction; 

INSERT INTO operacion (correlacion, debe, haber, asientoid, cuentacontableid) 

              values (_correlacion,_debe,_haber,(select max(idasiento) from asiento),_cuentacontableid);
    
    


if mensaje<>'insercion correcta' then
    rollback;
end if; 
select mensaje;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_operation_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_operation_save`(
 
IN `_correlacion` INT (7),
IN `_debe` decimal (8,2),
IN `_haber` decimal (8,2),
-- IN `_asientoid` INT (7),
IN `_cuentacontableid` INT (7) 
)
    MODIFIES SQL DATA
begin  
declare mensaje varchar (100) default 'insercion correcta';

 -- <<<<<<<<<<<<<<<<<<<-------------
 
-- 1 VALIDACION - QUE NO LLEGEN DATOS VACIOS*/
    
    

start transaction; 

INSERT INTO operacion (correlacion, debe, haber, asientoid, cuentacontableid) 

              values (_correlacion,_debe,_haber,(select max(idasiento) from asiento),_cuentacontableid);
    
    

if mensaje<>'insercion correcta' then
    rollback;
end if; 
select mensaje;
end ;;
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

-- Dump completed on 2021-10-13 23:50:21
