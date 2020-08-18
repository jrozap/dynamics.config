CREATE DATABASE  IF NOT EXISTS `dynadev_dental` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dynadev_dental`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: dynadev_dental
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.12-MariaDB-log

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
-- Table structure for table `dental.asientos`
--

DROP TABLE IF EXISTS `dental.asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.asientos` (
  `contab.cod.cta` int(11) NOT NULL COMMENT 'Codigo de Cuenta Contable (Sub-Cuentas)',
  `contab.fecha.as` date DEFAULT NULL COMMENT 'Fecha del Asiento Contable',
  `contab.descr.asiento` varchar(60) DEFAULT NULL COMMENT 'Descripcion del Asiento Contable',
  `contab.tipo.asiento` varchar(1) DEFAULT NULL COMMENT 'Tipo de Asiento Contable:\nD = Debe\nH = Haber',
  `contab.monto.asiento` double DEFAULT NULL COMMENT 'Monto del Asiento Contable',
  `contab.fecha.creac` datetime DEFAULT NULL COMMENT 'Fecha de Creacion del asiento',
  `contab.fecha.modrg` datetime DEFAULT NULL COMMENT 'Fecha de Modificacion del registro',
  PRIMARY KEY (`contab.cod.cta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Asientos Contables generados automaticamente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.asientos`
--

LOCK TABLES `dental.asientos` WRITE;
/*!40000 ALTER TABLE `dental.asientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.catgs`
--

DROP TABLE IF EXISTS `dental.catgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.catgs` (
  `catg.code` varchar(4) NOT NULL COMMENT 'Codigo Categoria - Codigo de la categoria en la estructura de datos de Dynamics Schema',
  `catg.descp.sp` varchar(45) NOT NULL COMMENT 'Cat Description: Descripcion de la Categoria (Idioma: Spanish)',
  `catg.specs.1.sp` varchar(255) DEFAULT NULL COMMENT 'Cat Specs 1: Especificacion de la Categoria 1 (Idioma: Spanish)',
  `catg.specs.2.sp` varchar(255) DEFAULT NULL COMMENT 'Cat Specs 2: Especificacion de la Categoria 2 (Idioma: Spanish)',
  `catg.specs.3.sp` varchar(255) DEFAULT NULL COMMENT 'Cat Specs 3: Especificacion de la Categoria 3 (Idioma: Spanish)',
  `catg.descp.en` varchar(45) NOT NULL COMMENT 'Cat Description: Descripcion de la Categoria (Idioma: English)',
  `catg.specs.1.en` varchar(255) DEFAULT NULL COMMENT 'Cat Specs 1: Especificacion de la Categoria 1 (Idioma: English)',
  `catg.specs.2.en` varchar(255) DEFAULT NULL COMMENT 'Cat Specs 2: Especificacion de la Categoria 2 (Idioma: English)',
  `catg.specs.3.en` varchar(255) DEFAULT NULL COMMENT 'Cat Specs 3: Especificacion de la Categoria 3 (Idioma: English)',
  PRIMARY KEY (`catg.code`) COMMENT 'Primary Key for Categories Table',
  UNIQUE KEY `catg.code_UNIQUE` (`catg.code`) COMMENT 'Primary Key for Categories Table (UNIQUE KEY)',
  KEY `catg.descr.sp` (`catg.descp.sp`) COMMENT 'Index on Categories Table (Descrp SP Index): Indice de Categoria por descripcion (Spanish)',
  KEY `carg.descr.en` (`catg.descp.en`) COMMENT 'Index on Categories Table (Descrp SP Index): Indice de Categoria por descripcion (English)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Master Table for Categories in Dynamics Product Schema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.catgs`
--

LOCK TABLES `dental.catgs` WRITE;
/*!40000 ALTER TABLE `dental.catgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.catgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.clients`
--

DROP TABLE IF EXISTS `dental.clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.clients` (
  `cli.email.reg` varchar(60) NOT NULL COMMENT 'Identificacion del Usuaro de eCommerce: e-Mail Valido',
  `cli.passwd.rg` binary(32) DEFAULT NULL COMMENT 'Password / Contraseña del usuario en el sistema',
  `cli.nombres.rg` varchar(25) DEFAULT NULL COMMENT 'Nombre(s) del Usuario',
  `cli.apellidos.rg` varchar(25) DEFAULT NULL COMMENT 'Apellido(s) del Usuario',
  `cli.dirres1.rg` varchar(50) DEFAULT NULL COMMENT 'Linea de Direccion # 1 Usuario',
  `cli.dirres2.rg` varchar(50) DEFAULT NULL COMMENT 'Linea de Direccion # 2 Usuario',
  `cli.direnvio1.rg` varchar(50) DEFAULT NULL COMMENT 'Linea 1 Direccion de Envio Compra',
  `cli.direnvio2.rg` varchar(50) DEFAULT NULL COMMENT 'Linea 2 Direccion de Envio Compra',
  `cli.numtelf.rg` varchar(15) DEFAULT NULL COMMENT 'Numero Telefono Fijo del Usuario',
  `cli.movilnbr.rg` varchar(15) DEFAULT NULL COMMENT 'Numero de Movil / Celular del usuario',
  `cli.ciudad.rg` varchar(30) DEFAULT NULL COMMENT 'Ciudad de Residencia User',
  `cli.estado.rg` varchar(30) DEFAULT NULL COMMENT 'Estado Residencia User',
  `cli.sendcity.rg` varchar(30) DEFAULT NULL COMMENT 'Ciudad seleccionada para envio de las compras',
  `clii.sendstate.rg` varchar(30) DEFAULT NULL COMMENT 'Estado para la Dir. de Envio de Compras',
  `cli.zipcode.rg` varchar(10) DEFAULT NULL COMMENT 'Cod. Postal User',
  `cli.sendzcod.rg` varchar(10) DEFAULT NULL COMMENT 'Codigo Postal Direccion Envio',
  `cli.country.rg` varchar(30) DEFAULT NULL COMMENT 'Pais del Usuario',
  `cli.special.rg` smallint(1) DEFAULT NULL COMMENT 'Define si es cliente especial (0=No 1=Si)',
  `cli.normal.rg` smallint(1) DEFAULT NULL COMMENT 'Define si es cliente Normal (0=No 1=Si)',
  `cli.fecha.creac` datetime DEFAULT NULL COMMENT 'Fecha / Hora Creacion del usuario',
  `cli.fecha.moddt` datetime DEFAULT NULL COMMENT 'Fecha / Hora Ultima Modificacion del usuario',
  `cli.lastubic.rg` varchar(100) DEFAULT NULL COMMENT 'Ultima Ubicacion del Usuario (Coordinates)',
  PRIMARY KEY (`cli.email.reg`) COMMENT 'Indice Primnario: e-Mail',
  UNIQUE KEY `cli.email.reg_UNIQUE` (`cli.email.reg`) COMMENT 'Indice UNIQUE: e-Mail User',
  KEY `cli.name` (`cli.nombres.rg`) COMMENT 'Indice: Nombres',
  KEY `cli.lastnm` (`cli.apellidos.rg`) COMMENT 'Indice: Apellidos',
  KEY `cli.addr` (`cli.dirres1.rg`,`cli.dirres2.rg`) COMMENT 'Indice: Direccion Residencia',
  KEY `cli.movilph` (`cli.movilnbr.rg`) COMMENT 'Indice: Telefono Movil',
  KEY `cli.city` (`cli.ciudad.rg`) COMMENT 'Indice: Ciudad de Residencia',
  KEY `cli.state` (`cli.estado.rg`) COMMENT 'Indice: Estado Residencia',
  KEY `cli.zipcd` (`cli.zipcode.rg`) COMMENT 'Indice: Codigo Postal',
  KEY `cli.country` (`cli.country.rg`) COMMENT 'Indice: Paises',
  KEY `cli.lastpos.glb` (`cli.lastubic.rg`) COMMENT 'Indice: Ultima Ubicacion de Uso de la Aplicacion',
  KEY `cli.sendaddr` (`cli.direnvio1.rg`,`cli.direnvio2.rg`),
  KEY `cli.sendcty` (`cli.sendcity.rg`),
  KEY `cli.sendstate` (`clii.sendstate.rg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Clientes / Usuarios de la aplicacion Movil DynDental';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.clients`
--

LOCK TABLES `dental.clients` WRITE;
/*!40000 ALTER TABLE `dental.clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.div`
--

DROP TABLE IF EXISTS `dental.div`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.div` (
  `div.code` varchar(4) NOT NULL COMMENT 'Codigo de la Division de Productos Dynamics',
  `div.descp.es` varchar(45) DEFAULT NULL COMMENT 'Nombre de la Division (Spanish)',
  `div.descp.en` varchar(45) DEFAULT NULL COMMENT 'Division Name (English)',
  `div.specs1.sp` varchar(255) DEFAULT NULL COMMENT 'Especificacion 1 (Spanish)',
  `div.specs2.sp` varchar(255) DEFAULT NULL COMMENT 'Especificacion 2 (Spanish)',
  `div.specs3.sp` varchar(255) DEFAULT NULL COMMENT 'Especificacion 3 (Spanish)',
  `div.specs1.en` varchar(255) DEFAULT NULL COMMENT 'Especificacion 1 (English)',
  `div.specs2.en` varchar(255) DEFAULT NULL COMMENT 'Especificacion 2 (English)',
  `div.specs3.en` varchar(255) DEFAULT NULL COMMENT 'Especificacion 3 (English)',
  PRIMARY KEY (`div.code`),
  UNIQUE KEY `div.code_UNIQUE` (`div.code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Divisiones Dynamics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.div`
--

LOCK TABLES `dental.div` WRITE;
/*!40000 ALTER TABLE `dental.div` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.div` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.frareng`
--

DROP TABLE IF EXISTS `dental.frareng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.frareng` (
  `reng.num.fra` varchar(8) NOT NULL COMMENT 'Numero de Factura',
  `reng.item.num` int(11) DEFAULT NULL COMMENT 'Numero del Item en la factura',
  `reng.cod.pro` varchar(45) DEFAULT NULL COMMENT 'Codigo del Producto',
  `reng.desc.pro` varchar(45) DEFAULT NULL COMMENT 'Descripcion Corta Producto',
  `reng.cant.pro` double DEFAULT NULL COMMENT 'Cantidad del producto',
  `reng.prunit.pro` double DEFAULT NULL COMMENT 'Precio Unitario del Prod.',
  `reng.ptot.reng` double DEFAULT NULL,
  PRIMARY KEY (`reng.num.fra`) COMMENT 'Indice Primario de la Tabla de Renglones de Factura - Numero de Factura',
  KEY `reng.item` (`reng.item.num`) COMMENT 'Indice - Numero de Item',
  KEY `reng.cod.pro` (`reng.cod.pro`) COMMENT 'Indice - Codigo Producto',
  KEY `reng.desc.pro` (`reng.desc.pro`) COMMENT 'Indice - Descripcion Producto'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Renglones de Facturacion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.frareng`
--

LOCK TABLES `dental.frareng` WRITE;
/*!40000 ALTER TABLE `dental.frareng` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.frareng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.fras`
--

DROP TABLE IF EXISTS `dental.fras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.fras` (
  `fras.num.factura` varchar(8) NOT NULL COMMENT 'Numero de Factura - Providencia Seniat - Factura Fiscal debe tener este numero generado por el sistema',
  `fras.numctrl.fra` int(11) NOT NULL COMMENT 'Numero de Control - Providencia Seniat - Factura Fiscal debe tener este numero generado e impreso en forma libre (si se usa forma libre impresa) o generado por sistema (consecutivo autogenerado a partir de esta tabla)',
  `fras.fecha.fact` date DEFAULT NULL COMMENT 'Fecha de la Factura',
  `fras.client.name` varchar(50) DEFAULT NULL,
  `fras.client.address` varchar(60) DEFAULT NULL,
  `fras.RIF.cliente` varchar(15) DEFAULT NULL,
  `fras.monto.siva` double DEFAULT NULL COMMENT 'Monto de la factura sin aplicar el IVA',
  `fras.porc.iva` double DEFAULT NULL COMMENT '% de Impuesto a las Ventas (IVA)',
  `fras.monto.iva` double DEFAULT NULL COMMENT 'Monto del Impuesto a Cobrar (IVA)',
  `fras.monto.tot.f` double DEFAULT NULL COMMENT 'Monto total de la factura:\nMonto S/IVA + Monto IVA',
  `fras.items.num` double DEFAULT NULL COMMENT 'Numero de Renglones Facturacion',
  `fras.fra.emitida` smallint(1) DEFAULT NULL COMMENT 'Indicador de Emision de Factura (entregada al cliente)',
  `fras.fra.anulada` smallint(1) DEFAULT NULL COMMENT 'Indicador de Factura Anulada',
  PRIMARY KEY (`fras.num.factura`) COMMENT 'Index Primario - Numero de Factura Fiscal',
  UNIQUE KEY `fras.num.factura_UNIQUE` (`fras.num.factura`) COMMENT 'Atributo de Clave Unica para Nro. Factura ',
  UNIQUE KEY `fras.numctrl.fra_UNIQUE` (`fras.numctrl.fra`) COMMENT 'Atributo de Clave Unica para el numero de Control',
  KEY `fras.fecha.f` (`fras.fecha.fact`) COMMENT 'Indice por Fecha de Emision de la Factura',
  KEY `fras.fct.emitida` (`fras.fra.emitida`) COMMENT 'Indice por facturas Emitidas',
  KEY `fras.fct.anulada` (`fras.fra.anulada`) COMMENT 'Indice de Facturas Anuladas',
  KEY `fras.cli.name` (`fras.client.name`),
  KEY `fras.cli.addr` (`fras.client.address`),
  KEY `fras.cli.RIF` (`fras.RIF.cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Facturas generadas por Ventas de Dynamics Dental';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.fras`
--

LOCK TABLES `dental.fras` WRITE;
/*!40000 ALTER TABLE `dental.fras` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.fras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.inventory`
--

DROP TABLE IF EXISTS `dental.inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.inventory` (
  `inv.barcode` varchar(30) NOT NULL COMMENT 'Codigo de Barra / Codigo Producto',
  `inv.qrposcod` varchar(45) DEFAULT NULL COMMENT 'Codigo QR de Posicion del Producto en el Almacen',
  `inv.measureu` varchar(45) DEFAULT NULL COMMENT 'Unidad de Medida del Producto',
  `inv.tpack` varchar(45) DEFAULT NULL COMMENT 'Tipo de Empaque: -Caja   -Unidad    -Paquete',
  `inv.minstk` double DEFAULT NULL COMMENT 'Numero de Unidades de Stock Minimo - Alerta de Reposicion',
  `inv.actstk.fis` double DEFAULT NULL COMMENT 'Unidades Fisicas del Producto existentes en el Alamacen - Unidades disponibles para la Venta',
  `inv.actstk.ctb` double DEFAULT NULL COMMENT 'Unidades del Producto registradas contablemente -  Informacion requerida para el registro en Libros',
  `inv.blkprd.cart` double DEFAULT NULL COMMENT 'Cantidad de Productos en pre-venta que se descuentan en forma virtual del inventario fisico... Al finalizar la venta se descuentan del fisico si se efectua la compra sino se eliminan de este bloqueo sin afectar el inventario fisico.',
  `inv.costo.prod` double DEFAULT NULL COMMENT 'Costo del Producto',
  `inv.pventa.prod` double DEFAULT NULL COMMENT 'Precio de Venta del Producto',
  `inv.ctacontb.prd` varchar(45) DEFAULT NULL COMMENT 'Cuenta Contable asignada al producto',
  `inv.saldoctb.prd` double DEFAULT NULL COMMENT 'Saldo de la Cuenta Contable',
  PRIMARY KEY (`inv.barcode`) COMMENT 'Indice Primario de la Tabla',
  UNIQUE KEY `inv.barcode_UNIQUE` (`inv.barcode`) COMMENT 'Atributo UNIQUE del Indice Primario',
  KEY `inv.qrcodep` (`inv.qrposcod`) COMMENT 'Indice de Busqueda por Posicion en Almacen',
  KEY `inv.stock.min` (`inv.minstk`) COMMENT 'Indice de Busquedas por Stock Minimo',
  KEY `inv.ctactab.prd` (`inv.ctacontb.prd`) COMMENT 'Indice de Busqueda por Cuenta Contable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla deel control de Inventario Fisico del e-Commerce / Replica sobre el inventario fisico contable de Dynamics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.inventory`
--

LOCK TABLES `dental.inventory` WRITE;
/*!40000 ALTER TABLE `dental.inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.lines`
--

DROP TABLE IF EXISTS `dental.lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.lines` (
  `lines.cod` varchar(4) NOT NULL COMMENT 'Codigo de la Linea de Productos en el esquema Dynamics',
  `lines.descp.es` varchar(45) DEFAULT NULL COMMENT 'Descripcion de la Linea de Productos (Nombre; Spanish)',
  `lines.specs1.sp` varchar(255) DEFAULT NULL COMMENT 'Especificacion de la Linea de Productos (Specs 1; Spanish)',
  `lines.specs2.sp` varchar(255) DEFAULT NULL COMMENT 'Especificacion de la Linea de Productos (Specs 2; Spanish)',
  `lines.specs3.sp` varchar(255) DEFAULT NULL COMMENT 'Especificacion de la Linea de Productos (Specs 3; Spanish)',
  `lines.descp.en` varchar(45) DEFAULT NULL COMMENT 'Descripcion de la Linea de Productos (Name; English)',
  `lines.specs2.en` varchar(255) DEFAULT NULL COMMENT 'Especificacion de la Linea de Productos (Specs 2; English)',
  `lines.specs1.en` varchar(255) DEFAULT NULL COMMENT 'Especificacion de la Linea de Productos (Specs 1; English)',
  `lines.specs3.en` varchar(255) DEFAULT NULL COMMENT 'Especificacion de la Linea de Productos (Specs 3; English)',
  PRIMARY KEY (`lines.cod`) COMMENT 'Primary Key for Table Lines',
  UNIQUE KEY `lines.cod_UNIQUE` (`lines.cod`) COMMENT 'UNIQUE Attrib for Primary Key',
  KEY `lines.descp.sp` (`lines.descp.es`) COMMENT 'Index for searching by Cat Name Language: Spanish',
  KEY `lines.descp.en` (`lines.descp.en`) COMMENT 'Index for searching by Cat Name Language: English'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Lineas de Productos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.lines`
--

LOCK TABLES `dental.lines` WRITE;
/*!40000 ALTER TABLE `dental.lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dental.prod`
--

DROP TABLE IF EXISTS `dental.prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental.prod` (
  `prod.divcode` varchar(4) NOT NULL COMMENT 'Product Division Code - Indicates the division to set the product at the Organization',
  `prod.linecode` varchar(4) NOT NULL COMMENT 'Product Lne Code - Indicates the line to set the product on the Division. Depends on prod.divcode',
  `prod.catcode` varchar(4) NOT NULL COMMENT 'Product Category Code - Indicates the category of products to set the product at the Organization. Depends on - Div. Code & Line Code',
  `prod.barcode` varchar(30) NOT NULL COMMENT 'Product Bar Code - Indicates the code that register and identify the product. This doesn''t have duplicates because this an unique code... This a Primary Key on the Table',
  `prod.descprod.sp` varchar(45) NOT NULL COMMENT 'Product Description - Indicates the name / description of the product in the master record (Language: Spanish) ',
  `prod.descprod.en` varchar(45) NOT NULL COMMENT 'Product Description - Indicates the name / description of the product in the master record (Language: English)',
  `prod.unidad` varchar(25) DEFAULT NULL COMMENT 'Product Unit (Unidad) - Indicates the measure unit of contents in product at the master record (Language: Spanish/International Measures Standard - MKS)',
  `prod.unit` varchar(25) DEFAULT NULL COMMENT 'Product Unit  - Indicates the measure unit of contents in product at the master record (Language: English/International Measures Standard - MKS or British Standards - BS)',
  `prod.tipoemp` varchar(25) DEFAULT NULL COMMENT 'Product Package (tipoemp) - Indicates the form of paqckage of  product at the master record (Language: Spanish)',
  `prod.pack` varchar(25) DEFAULT NULL COMMENT 'Product Package (pack) - Indicates the form of paqckage of  product at the master record (Language: English)',
  `prod.supcode` varchar(4) NOT NULL COMMENT 'Product Supplier Code (supcode) - Indicates the supplier code of  product at the master record',
  `prod.spec.1.sp` varchar(255) DEFAULT NULL COMMENT 'Product Specification Line 1 (specs) - Indicates the specifications of  product at the master record (Language: Spanish)',
  `prod.spec.2.sp` varchar(255) DEFAULT NULL COMMENT 'Product Specification Line 2 (specs) - Indicates the specifications of  product at the master record (Language: Spanish)',
  `prod.spec.3.sp` varchar(255) DEFAULT NULL COMMENT 'Product Specification Line 3 (specs) - Indicates the specifications of  product at the master record (Language: Spanish)',
  `prod.spec.1.en` varchar(255) DEFAULT NULL COMMENT 'Product Specification Line 1 (specs) - Indicates the specifications of  product at the master record (Language: English)',
  `prod.spec.2.en` varchar(255) DEFAULT NULL COMMENT 'Product Specification Line 2 (specs) - Indicates the specifications of  product at the master record (Language: English)',
  `prod.spec.3.en` varchar(255) DEFAULT NULL COMMENT 'Product Specification Line 1 (specs) - Indicates the specifications of  product at the master record (Language: English)',
  `prod.qrcode.codp` varchar(30) DEFAULT NULL COMMENT 'Product QR Code - Indicates the code of  product in other format in the master record',
  `prod.qrcode.posalm` varchar(60) NOT NULL COMMENT 'Product QR Warehouse Postion - Indicates the position of product in the warehouse at the master record',
  `prod.picture.location` varchar(60) NOT NULL COMMENT 'Product Image Location - Indicates the path and the name of the product image (photo) file ----> (.jpg - .png - .bmp)',
  PRIMARY KEY (`prod.barcode`) COMMENT 'Primary Index (Product BarCode)',
  UNIQUE KEY `prod.barcode_UNIQUE` (`prod.barcode`) COMMENT 'Index Product Bar Code',
  KEY `prod.divcode` (`prod.divcode`) COMMENT 'Index Division Code',
  KEY `prod.linecode` (`prod.linecode`) COMMENT 'Index Line Code',
  KEY `prod.catcode` (`prod.catcode`) COMMENT 'Index Cat Code',
  KEY `prod.descprod.es` (`prod.descprod.sp`) COMMENT 'Index Prod Desc Spanish',
  KEY `prod.descprod.en` (`prod.descprod.en`) COMMENT 'Index Prod Description English'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Productos Linea Dental';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental.prod`
--

LOCK TABLES `dental.prod` WRITE;
/*!40000 ALTER TABLE `dental.prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `dental.prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secure.payments`
--

DROP TABLE IF EXISTS `secure.payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure.payments` (
  `keycode.id` varchar(2) NOT NULL COMMENT 'Codigo del Medio de Pago - Clave Unica en el sistema Dynamics',
  `keycode.name` varchar(45) DEFAULT NULL COMMENT 'Descripcion del Medio de Pago',
  `keycodde.spec` varchar(255) DEFAULT NULL COMMENT 'Especificaciones del Medio de Pago',
  `keycode.id.value` varchar(70) DEFAULT NULL COMMENT 'Valor del Identificador o Usuario del Medio de pago valido para el operador del pago',
  `keycode.data.value` varchar(70) DEFAULT NULL COMMENT 'Valor de la clave publica o de la clave de cifrado de datos del medio de pago',
  PRIMARY KEY (`keycode.id`) COMMENT 'Clave Primaria para Medios de Pago',
  UNIQUE KEY `keycode.id_UNIQUE` (`keycode.id`) COMMENT 'Clave UNIQUE para Medios de Pago',
  KEY `keycode.id` (`keycode.id.value`) COMMENT 'Indice de busqueda por la identificacion/usuario de la clave',
  KEY `keycode.data` (`keycode.data.value`) COMMENT 'Indice de busqueda por el valor de la clave'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Secure Payments Keycodes Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secure.payments`
--

LOCK TABLES `secure.payments` WRITE;
/*!40000 ALTER TABLE `secure.payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `secure.payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dynadev_dental'
--

--
-- Dumping routines for database 'dynadev_dental'
--
/*!50003 DROP PROCEDURE IF EXISTS `catg.en` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `catg.en`()
BEGIN
SELECT * FROM dental.catgs ORDER BY catg.code, catg.descp.en;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `catg.sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `catg.sp`()
BEGIN
SELECT * FROM dental.catgs ORDER BY catg.code, catg.descp.sp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `catg_nameen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `catg_nameen`()
BEGIN
DECLARE CodCat VARCHAR(4);
SELECT `catg.descp.en` FROM dental.catgs WHERE catg.code = CodCat;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `catg_namesp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `catg_namesp`()
BEGIN
DECLARE CodCat VARCHAR(4);
SELECT `catg.descp.sp` FROM dental.catgs WHERE catg.code = CodCat;
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

-- Dump completed on 2019-06-26 18:18:44


dim cod_in as integer
dim str-sql as string

sql-str = "SELECT codigo, descripcion FROM dental.tablax WHERE codigo = 'cod_in'"

recordset1.datasource= str_sql