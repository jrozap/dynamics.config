-- MySQL SQL Script for create a schema dynamics.erp 10.13  Distrib 5.6.24, for Win32 (x86)
-- Schema: dynamics.erp -- Data Schema for Dynamics ERP software and Web Apps
--
-- Host: localhost    Database: dynamics.erp
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.12-MariaDB-log

-- 40101 SET @OLD.CHARACTER.SET.CLIENT=@@CHARACTER.SET.CLIENT */;
-- 40101 SET @OLD.CHARACTER.SET.RESULTS=@@CHARACTER.SET.RESULTS */;
-- 40101 SET @OLD.COLLATION.CONNECTION=@@COLLATION.CONNECTION */;
-- 40101 SET NAMES utf8 */;
-- 40103 SET @OLD.TIME.ZONE=@@TIME.ZONE */;
-- 40103 SET TIME.ZONE=`+00:00` */;
-- 40014 SET @OLD.UNIQUE.CHECKS=@@UNIQUE.CHECKS, UNIQUE.CHECKS=0 */;
-- 40014 SET @OLD.FOREIGN.KEY.CHECKS=@@FOREIGN.KEY.CHECKS, FOREIGN.KEY.CHECKS=0 */;
-- 40101 SET @OLD.SQL.MODE=@@SQL.MODE, SQL.MODE=`NO.AUTO.VALUE.ON.ZERO` */;
-- 40111 SET @OLD.SQL.NOTES=@@SQL.NOTES, SQL.NOTES=0 */;

CREATE DATABASE  IF NOT EXISTS `dynamics.erp` 
USE `dynamics.erp`;
-- 40100	 CHARACTER SET latin1 */;

--
-- Table structure for table `dynerp.ajuste`
--

DROP TABLE IF EXISTS `dynerp.ajuste`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ajuste` (
	`ajuste.ajue.num`	int 		 	NOT NULL	COMMENT 'Ajuste de Facturas',
	`ajuste.fecha` 		datetime	 	NOT NULL	COMMENT 'Fecha del Ajsute',
	`ajuste.motivo` 	varchar(80)	 	NOT NULL	COMMENT 'Motivo del Ajuste',
	`ajuste.total` 		double 		 	NOT NULL 	COMMENT 'Monto Total Ajuste',
	`ajuste.seriales`	int 		 	NOT NULL 	COMMENT 'Seriales del Ajuste',
	`ajuste.feccom` 	datetime	 	NOT NULL 	COMMENT 'Fecha del Comprobante de Ajuste',
	`ajuste.numcom` 	int 		 	NOT NULL 	COMMENT 'Numero del Comprobante de Ajuste',
	`ajuste.tasa` 		double 		 	NOT NULL 	COMMENT 'Tasa de Ajuste',
	`ajuste.moneda` 	varchar(06)	 	NOT NULL 	COMMENT 'Moneda (Currency) del Ajuste',
	`ajuste.dis.cen`	text 		 	NOT NULL 	COMMENT 'Ajuste distribuido',
	`ajuste.campo1` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 1',
	`ajuste.campo2` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 2',
	`ajuste.campo3` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 3',
	`ajuste.campo4` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 4',
	`ajuste.campo5` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 5',
	`ajuste.campo6` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 6',
	`ajuste.campo7` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 7',
	`ajuste.campo8` 	varchar(60)	 	NOT NULL 	COMMENT 'Campo Utility 8',
	`ajuste.co.us.ad` 	varchar(06)	 	NOT NULL 	COMMENT 'Usuario Generador de Ajuste',
	`ajuste.fe.us.ad` 	datetime		NOT NULL 	COMMENT 'Fecha de Adicion del Ajuste',
	`ajuste.co.us.up` 	varchar(06)	 	NOT NULL 	COMMENT 'Usuario que modifica el Ajuste',
	`ajuste.fe.us.up` 	datetime		NOT NULL 	COMMENT 'Fecha de Modificacion del Ajuste',
	`ajuste.co.us.de` 	varchar(06)	 	NOT NULL 	COMMENT 'Usuario que elimina el Ajsute',
	`ajuste.fe.us.de` 	datetime		NOT NULL 	COMMENT 'Fecha de Eliminacion del Ajuste',
	`ajuste.revisado` 	char(01)		NOT NULL 	COMMENT 'Ajuste Revisado (S/N)',
	`ajuste.trasnfe` 	char(01)		NOT NULL 	COMMENT 'Ajuste Transferido (S/N)',
	`ajuste.cod.suc` 	char(06)		NOT NULL 	COMMENT 'Codigo Sucursal',
	`ajuste.anulada` 	bit 			NOT NULL 	COMMENT 'Ajuste Anulado (0/1)',
	`ajuste.aux01` 		double 		 	NOT NULL 	COMMENT 'Monto Auxiliar Ajuste',
	`ajuste.aux02` 		varchar(30)	 	NOT NULL 	COMMENT 'Descripcion Auxiliar Ajuste',
	`ajuste.imp.num` 	int 			NOT NULL 	COMMENT 'Num Comprobante de ISLR Ajuste',
	`ajuste.fact.num` 	int 			NOT NULL 	COMMENT 'Num Factura aplicado el Ajuste',  
	PRIMARY KEY (`ajuste.ajue.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

--
-- Table structure for table `dynerp.almacen`
--

DROP TABLE IF EXISTS `dynerp.almacen`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.almacen` (
	`almacen.co.alma` 	char(6) 	 		NOT NULL	COMMENT ' ',
	`almacen.alma.des` 	varchar(60)			NOT NULL	COMMENT ' ',
	`almacen.nro.fact` 	int					NOT NULL 	COMMENT ' ',
	`almacen.fac.ini` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fac.fad` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.campo1` 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`almacen.campo2` 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`almacen.campo3` 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`almacen.campo4` 	varchar(60)			NOT NULL 	COMMENT ' ',
	`almacen.co.us.ad` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`almacen.fe.us.ad` 	datetime		 	NOT NULL 	COMMENT ' ',
	`almacen.co.us.mo` 	varchar(06)			NOT NULL 	COMMENT ' ',
	`almacen.fe.us.mo` 	datetime		 	NOT NULL 	COMMENT ' ',
	`almacen.co.us.el` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`almacen.fe.us.el` 	datetime		 	NOT NULL 	COMMENT ' ',
	`almacen.revisado` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`almacen.trasnfe` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`almacen.co.sucu` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`almacen.nc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ajus.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.tras.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fisi.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.num.kit` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.genk.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ped.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.cotc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.devc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ndd.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.post.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.cfxg.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.chdv.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.giro.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.reten.num` int 				NOT NULL 	COMMENT ' ',
	`almacen.cb.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.movb.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.movc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ordp.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.depc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.comp.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ordc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.cotp.num`	int 				NOT NULL 	COMMENT ' ',
	`almacen.devp.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ndr.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.postppnum` int 				NOT NULL 	COMMENT ' ',
	`almacen.ccxg.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.chdvppnum` int 				NOT NULL 	COMMENT ' ',
	`almacen.giroppnum` int 				NOT NULL 	COMMENT ' ',
	`almacen.nccpp.num` int 				NOT NULL 	COMMENT ' ',
	`almacen.ndcpp.num` int 				NOT NULL 	COMMENT ' ',
	`almacen.retppnum` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.pg.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.posm` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.posa` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.negm` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.nega` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.posmc` int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.posac` int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.negmc` int 				NOT NULL 	COMMENT ' ',
	`almacen.aju.negac` int 				NOT NULL 	COMMENT ' ',
	`almacen.pventa` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.turnosic` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.plv.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.plc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.tabislr` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.imp.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.rma.cli` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.rma.prov` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.rma.entc` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.rma.entp` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.rma.regs` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.s1` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.fact.s2` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.fact.s3` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.fact.s4`	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.fact.s5`	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nde.s1` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nde.s2` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nde.s3` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nde.s4` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nde.s5` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nc.s1` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nc.s2` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nc.s3` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nc.s4` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nc.s5` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nd.s1` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nd.s2` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nd.s3` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nd.s4` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.nd.s5` 	char(10)		 	NOT NULL 	COMMENT ' ',
	`almacen.fact.f1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.f2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.f3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.f4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.f1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.f2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.f3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.f4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.f1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.f2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.f3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.f4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.f1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.f2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.f3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.f4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.p1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.p2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.p3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.p4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.p5` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.p1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.p2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.p3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.p4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.p5` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.p1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.p2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.p3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.p4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.p5` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.p1` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.p2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.p3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.p4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.p5` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.num2` int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.num3` int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.num4` int 				NOT NULL 	COMMENT ' ',
	`almacen.fact.num5` int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.num2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.num3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.num4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nde.num5` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.num2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.num3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.num4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nc.num5` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.num2` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.num3` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.num4` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.nd.num5` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.serie2` 	bit 				NOT NULL 	COMMENT ' ',
	`almacen.serie3` 	bit 				NOT NULL 	COMMENT ' ',
	`almacen.serie4` 	bit 				NOT NULL 	COMMENT ' ',
	`almacen.serie5` 	bit 				NOT NULL 	COMMENT ' ',
	`almacen.emp.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.dmc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.tax.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ced.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ent.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.cie.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.odp.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.req.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.dev.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ex1.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.inp.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.cost.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.par.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.esc.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.pla.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.men.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.dist.num` 	int 				NOT NULL 	COMMENT ' ',
	`almacen.ex2.num` 	int 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`almacen.co.alma`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Almacenes del Sistema`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambaju`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambaju` (
	`ambaju.usua` 			char(06) 	 		NOT NULL	COMMENT ' ',
	`ambaju.ajue.num` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.moneda` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.monedad` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.co.mone` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambaju.fecha` 			bit 				NOT NULL 	COMMENT ' ',
	`ambaju.motivo` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.bt.ser.ent`		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.bt.ser.sal` 	bit 				NOT NULL 	COMMENT ' ',
	`ambaju.bt.anulo` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.bt.reversa` 	bit 				NOT NULL 	COMMENT ' ',
	`ambaju.almacen` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.almacend`		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.co.alma` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambaju.cantidad` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.cantidadd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.stock.act` 		double 				NOT NULL	COMMENT ' ',
	`ambaju.unidad` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.costo` 			bit 				NOT NULL 	COMMENT ' ',
	`ambaju.stock.neg` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.pstock.neg` 	bit 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol01` 		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol02`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol03`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol04`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol05`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol06`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol07`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol08`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol09`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol10`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol11`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol12`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.tamcol13`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol01`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol02`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol03`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol04`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol05`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol06`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol07`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol08`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol09`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol10`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol11`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol12`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.poscol13`  		int 				NOT NULL 	COMMENT ' ',
	`ambaju.campo1` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.campo2` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.campo3` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.campo4` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.campo5` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.campo6` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.campo7` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.campo8` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambaju.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambaju.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambaju.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambaju.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambaju.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambaju.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambaju.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambaju.p.lotefec` 		bit 				NOT NULL 	COMMENT ' ',
	`ambaju.p.control` 		bit 				NOT NULL 	COMMENT ' ',
 PRIMARY KEY (`ambaju.amb.usua`)
) ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Parametros del Sistema`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambart`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambart` (
	`ambart.amb.usua`		char(06)	 		NOT NULL 	COMMENT ' ',
	`ambart.co.artv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.art.desv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.fecha.regv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.manj.serv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.lind` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.linv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.lad`			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.co.catd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.catv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.cat`			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.co.subld` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.sublv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.subl`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.co.colord` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.colorv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.color`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.itemv` 			bit 				NOT NULL 	COMMENT ' ',
	`ambart.refv` 			bit 				NOT NULL 	COMMENT ' ',
	`ambart.modelov` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.procedencd` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.procedencv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.procedenci`		char(06)			NOT NULL 	COMMENT ' ',
	`ambart.comentariv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.provd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.provv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.co.prov`		char(10)		 	NOT NULL 	COMMENT ' ',
	`ambart.ubicacionv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.relac.autd` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.relac.autv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.relac.aut` 		int 				NOT NULL 	COMMENT ' ',
	`ambart.pto.pedidv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.bt.aranc` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.stock.maxv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.stock.minv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.omv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.vta1v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.vta2v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.vta3v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.vta4v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.vta5v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.agr1v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.agr2v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.agr3v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.agr4v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.prec.agr5v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.can.agrv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.marg.minv`		bit 				NOT NULL 	COMMENT ' ',
	`ambart.ult.cost.v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.cost.pro.v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.cost.merc.v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.cost.prov.v` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.ult.cosdov` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.cost.unanv`  	bit 				NOT NULL 	COMMENT ' ',
	`ambart.ult.cosomv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.cost.proomv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.fec.proomv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipo.cosd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipo.cosv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipo.cost` 		char(04)		 	NOT NULL 	COMMENT ' ',
	`ambart.mont.comiv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.punt.cliv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.punt.prov` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.anuladov` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipo.impd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipo.impv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipo.imp` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambart.licorv` 	 	bit 				NOT NULL 	COMMENT ' ',
	`ambart.picturev` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.campo1` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.campo2`	 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.campo3`			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.campo4` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.campo5` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.campo6` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.campo7` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.campo8` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambart.co.us.ad`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambart.co.us.mo`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambart.co.us.el`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambart.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambart.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambart.co.sucu`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.pesov` 			bit 				NOT NULL 	COMMENT ' ',
	`ambart.piev` 			bit 				NOT NULL 	COMMENT ' ',
	`ambart.margen1v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.margen2v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.margen3v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.margen4v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.margen5v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipod` 			bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipov` 			bit 				NOT NULL 	COMMENT ' ',
	`ambart.tipo` 			char(01)		 	NOT NULL 	COMMENT ' ',
	`ambart.lotev` 			bit 				NOT NULL 	COMMENT ' ',
	`ambart.reactivar` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.relacartv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.porc.adiv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.garantiav` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.bt.preclote`	bit 				NOT NULL 	COMMENT ' ',
	`ambart.art.desiv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.imagen1v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.imagen2v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambart.primaria`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.secundaria`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.alterna`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambart.equi.pri` 		double 		 		NOT NULL 	COMMENT ' ',
	`ambart.equi.sec` 		double 		 		NOT NULL 	COMMENT ' ',
	`ambart.equi.alt` 		double 		 		NOT NULL 	COMMENT ' ',
	`ambart.uni.relac1` 	double 		 		NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambart.amb.usua`)
) ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Articulos-Productos`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambcierre`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambcierre` (
	`ambcierre.amb.usua` 	char(06) 			NOT NULL 	COMMENT ' ',
	`ambcierre.ent.num` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.almacen` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.almacend` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.co.alma` 	char(06)			NOT NULL 	COMMENT ' ',
	`ambcierre.bt.serial`	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.bt.anulo` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.bt.reversa` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.fecha` 		bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.bt.confirm` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.odp.num` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.ent.des` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.bt.decon` 	bit 				NOT NULL 	COMMENT ' ',
	`ambcierre.campo1` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.campo2` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.campo3` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.campo4` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.campo5` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.campo6` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.campo7` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.campo8` 		char(30)			NOT NULL 	COMMENT ' ',
	`ambcierre.co.us.ad` 	char(06)			NOT NULL 	COMMENT ' ',
	`ambcierre.co.us.mo` 	char(06)			NOT NULL 	COMMENT ' ',
	`ambcierre.co.us.el` 	char(06)			NOT NULL 	COMMENT ' ',
	`ambcierre.fe.us.ad` 	datetime			NOT NULL 	COMMENT ' ',
	`ambcierre.fe.us.mo` 	datetime			NOT NULL 	COMMENT ' ',
	`ambcierre.fe.us.el` 	datetime			NOT NULL 	COMMENT ' ',
	`ambcierre.trasnfe` 	char(01)			NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambcierre.amb.usua`)
) ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Cierre de Inventario`;
-- 40101 SET character.set.client = @saved.cs.client */;


DROP TABLE IF EXISTS `dynerp.ambclpro`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambclpro` (
	`ambclpro.amb.usua` 		char(06) 			NOT NULL 	COMMENT ' ',
	`ambclpro.tipo.cyp` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.co.cliv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipod`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipov`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipo` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.cli.desv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.direc1v`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.direc2v`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.telefonosv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.faxv`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.inactivov`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.comentariv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.responsv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.fecha.regv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.saldov`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.mont.crev`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.plaz.pagv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.descppagov`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.con.zond`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.zonv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.zon` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.co.segd`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.segv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.seg` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.con.vend` 		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.venv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.ven` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.desc.globv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.horarcajav`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.frecuvistv`	  	bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.lunesv`	  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.martesv` 		 	bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.miercolesv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.juevesv` 		 	bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.viernesv` 	 	bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.sabadov` 	 		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.domingov`		  	bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.dir.ent2v`	  	bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.rifv`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.contribuv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.dis.cenv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.nitv`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.emailv` 	 		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.ingrd`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.ingrv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.ingr` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.tipo.perd`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipo.perv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipo.per`			char(01)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.co.tabv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipo.adid`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipo.adiv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.tipo.adi` 		int 				NOT NULL 	COMMENT ' ',
	`ambclpro.matrizd`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.matrizv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.matriz` 			char(10)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo1` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo2` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo3` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo4` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo5` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo6` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo7` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.campo8` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambclpro.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambclpro.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambclpro.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.trasnfe` 			char(01)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.co.sucu` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.serialp` 			char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.valido`	  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.loginv`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.passwordv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.estadov`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.vpasswordv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.paisv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.paisd`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.co.pais` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.zipv`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.ciudadv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.TaxIDv`  			bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.FormTypev`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.FormTyped`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.FormType` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambclpro.WebSitev`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.BWebSitev`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.Bemailv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.salestaxv`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.salestaxd`  		bit 				NOT NULL 	COMMENT ' ',
	`ambclpro.salestax` 		char(08)		 	NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambclpro.amb.usua`, `ambclpro.tipo.cyp`)
) ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Cierre de Inventario`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambdev`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambdev` (
	`ambdev.amb.usua` 		char(06) 			NOT NULL 	COMMENT ' ',
	`ambdev.almaori`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.almorid`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.alma.ori`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.almades`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.almdesd`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.alma.des` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.fecha`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.motivo` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.bt.ser` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.bt.anula` 	 	bit 				NOT NULL 	COMMENT ' ',
	`ambdev.bt.reversa`		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.confirma`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.desconfima`  	bit 				NOT NULL 	COMMENT ' ',
	`ambdev.stock.neg`  	bit 				NOT NULL 	COMMENT ' ',
	`ambdev.pstock.neg`  	bit 				NOT NULL 	COMMENT ' ',
	`ambdev.campo1` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo2` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo3`	 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo4`	 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo5` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo6` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo7`	 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo8` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambdev.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambdev.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambdev.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambdev.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.plotefec`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.dev.num`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.devolver`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.odp.num`  		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambdev.amb.usua`, `ambclpro.tipo.cyp`)
) ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Cierre de Inventario`;
-- 40101 SET character.set.client = @saved.cs.client */;


DROP TABLE IF EXISTS `dynerp.ambemp`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambemp` (
	`ambemp.amb.usua` 		char(06) 			NOT NULL 	COMMENT ' ',
	`ambemp.num.emp` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.fecha` 			bit 				NOT NULL 	COMMENT ' ',
	`ambemp.tipo.doc` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.nro.orig` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.descrip` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.camp.adi` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.unid` 			bit 				NOT NULL 	COMMENT ' ',
	`ambemp.bulto` 			bit 				NOT NULL 	COMMENT ' ',
	`ambemp.agrupar` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.reempaq` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.factura` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.canti` 			bit 				NOT NULL 	COMMENT ' ',
	`ambemp.canti.d` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambemp.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambemp.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambemp.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambemp.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambemp.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambemp.co.sucu`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambemp.campo1` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.campo2` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.campo3`	 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.campo4`			varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.campo5`	 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.campo6`	 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.campo7` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.campo8` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambemp.tipo.d`	 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.anular` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.dtipodoc` 		char(05)		 	NOT NULL 	COMMENT ' ',
	`ambemp.dcanti` 		double 				NOT NULL 	COMMENT ' ',
	`ambemp.reng.s` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambemp.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambemp.reng.c` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.coincide` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.envio` 			bit 				NOT NULL 	COMMENT ' ',
	`ambemp.recibido` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.empacado` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.alma.d` 		bit 				NOT NULL 	COMMENT ' ',
	`ambemp.alma` 			bit 				NOT NULL 	COMMENT ' ',
	`ambemp.dalma` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`ambemp.empr`			bit 				NOT NULL 	COMMENT ' ',
	`ambemp.finalizar` 		bit 				NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`ambemp.amb.usua`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;
	
DROP TABLE IF EXISTS `dynerp.ambentre`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambentre` (
	`ambentre.amb.usua` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ambentre.ent.num` 		bit 				NOT NULL 	COMMENT ' ',
	`ambentre.almacen` 		bit 				NOT NULL 	COMMENT ' ',
	`ambentre.almacend` 	bit 				NOT NULL 	COMMENT ' ',
	`ambentre.co.alma` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambentre.bt.serial` 	bit 				NOT NULL 	COMMENT ' ',
	`ambentre.bt.anulo` 	bit 				NOT NULL 	COMMENT ' ',
	`ambentre.bt.reversa` 	bit 				NOT NULL 	COMMENT ' ',
	`ambentre.fecha` 		bit 				NOT NULL 	COMMENT ' ',
	`ambentre.bt.confirm` 	bit 				NOT NULL 	COMMENT ' ',
	`ambentre.campo1` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.campo2` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.campo3` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.campo4` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.campo5` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.campo6` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.campo7` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.campo8` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambentre.co.us.ad` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ambentre.co.es.mo` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ambentre.co.us.el` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ambentre.fe.us.ad` 	datetime		 	NOT NULL 	COMMENT ' ',
	`ambentre.fe.us.mo` 	datetime		 	NOT NULL 	COMMENT ' ',
	`ambentre.fe.us.el` 	datetime		 	NOT NULL 	COMMENT ' ',
	`ambentre.odp.num` 		bit 				NOT NULL 	COMMENT ' ',
	`ambentre.ent.des` 		bit 				NOT NULL 	COMMENT ' ',
	`ambentre.bt.decon` 	bit 				NOT NULL 	COMMENT ' ',
	`ambentre.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambentre.amb.usua`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.amblcobr`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.amblcobr` (
	`amblcobr.ambusu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.amb.blco` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.cob.num` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.recibo` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vco.cli` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.dco.cli` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.co.cli` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vco.ven` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.dco.ven` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.co.ven` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.fec.con` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.monto.abo` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.dxpp` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.reten` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vtipo.cob` 	char(04)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.dtipo.cob` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.tipo.cob` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.num.doc` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vtarjeta`	 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.dtarjeta` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.tarjeta` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vcuenta` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.dcuenta` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.cuenta` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vbanco` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.dbanco` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.banco`		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.fec.cheque` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vcaja` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.dcaja` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.caja` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.monto.total` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.actual` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.cancelar` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.cheque` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.pago` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.reverso` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.despacho` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.facturas` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.caja` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.camb` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.tasa` 		double 				NOT NULL 	COMMENT ' ',
	`amblcobr.dmoneda` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.moneda` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.vmoneda` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.p.abrir.ca` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.p.detal` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.campo1` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.campo2` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.campo3` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.campo4` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.campo5` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.campo6` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.campo7` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.campo8` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblcobr.co.us.ad`	 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.fe.us.ad`	 	datetime		 	NOT NULL 	COMMENT ' ',
	`amblcobr.co.us.mo`	 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.fe.us.mo` 	datetime		 	NOT NULL 	COMMENT ' ',
	`amblcobr.co.us.el` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.fe.us.el` 	datetime		 	NOT NULL 	COMMENT ' ',
	`amblcobr.revisado` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.p.para1` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.p.para2` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.p.para3` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.p.para4` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.p.para5` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblcobr.edppago` 		bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.reactiva` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.bt.anulado` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.des.crip` 	bit 				NOT NULL 	COMMENT ' ',
	`amblcobr.mx.per` 		double 				NOT NULL 	COMMENT ' ',
	`amblcobr.permodret` 	bit 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`amblcobr.ambusu`, `amblcobr.amb.blco`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.amblfact`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.amblfact` (
	`amblfact.amb.usua` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.amb.blfa` 	char(04)		 	NOT NULL 	COMMENT ' ',
	`amblfact.fact.num` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.contrib` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.descrip`		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.fec.emis` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.fec.venc` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.vco.cli` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`amblfact.dco.cli` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.co.cli` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.vco.ven` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.dco.ven` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.co.ven` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.vco.tran` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.dco.tran` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.co.tran` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.vforma.pag` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.dforma.pag` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.forma.pag` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.vmoneda` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.dmoneda` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.moneda` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.monto.adi` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.com.relac` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.porc.gdesc` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.porc.reca` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.tot.flete`	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.stock.neg` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.cobrar.aut` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.num.listar` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.listar` 		int 				NOT NULL 	COMMENT ' ',
	`amblfact.pstock.neg` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pc1` 			bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pc2` 			bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pc3`			bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pc4`			bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pc5` 			bit 				NOT NULL 	COMMENT ' ',
	`amblfact.saldo`		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.fvenc` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.chdev` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.numcopia` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.vreng.4` 		double 				NOT NULL 	COMMENT ' ',
	`amblfact.dreng.4` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.vsucursal` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.vreng.3` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.dreng.3` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.3` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.4`		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.5`		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.6` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.7` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.8` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.9` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.reng.10` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.cobrar` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.importar` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.anular` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.seriales` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.notas` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.margen` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.margen` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.b.clien` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.fact` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol01` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol02` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol03` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol04` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol05` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol06` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol07` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol08` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol09` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol10` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol11` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol12` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol13` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol14` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol15` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol16` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol17` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol18` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol19` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.tamcol20` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol01` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol02` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol03` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol04` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol05` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol06` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol07` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol08` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol09` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol10`		int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol11`		int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol12` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol13` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol14` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol15` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol16` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol17` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol18` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol19` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.poscol20` 	int 				NOT NULL 	COMMENT ' ',
	`amblfact.campo1` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.campo2` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.campo3` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.campo4` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.campo5` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.campo6` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.campo7` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.campo8` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`amblfact.co.us.ad` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.fe.us.ad` 	datetime		 	NOT NULL 	COMMENT ' ',
	`amblfact.co.us.mo` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.fe.us.mo` 	datetime		 	NOT NULL 	COMMENT ' ',
	`amblfact.co.us.el` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.fe.us.el` 	datetime		 	NOT NULL 	COMMENT ' ',
	`amblfact.revisado`	 	char(01)		 	NOT NULL 	COMMENT ' ',
	`amblfact.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`amblfact.p.para1` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para2` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para3` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para4` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para5` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para6` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para7` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para8` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para9` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.para10` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`amblfact.b.reactivar` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.dev.reng` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.art` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.devdinero` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.b.revdinero` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.p.lotefec` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.1` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.2` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.3` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.4` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.5` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.SERIE` 		int 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.6` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.7`	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.8` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.pcontrol.9` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.Tax` 			bit 				NOT NULL 	COMMENT ' ',
	`amblfact.vtax` 		char(08)		 	NOT NULL 	COMMENT ' ',
	`amblfact.dtax` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.numcontrol` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.actforma` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.formapag` 	varchar(01)			NOT NULL 	COMMENT ' ',
	`amblfact.man.impr` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.serial.lleno` bit 				NOT NULL 	COMMENT ' ',
	`amblfact.des.fac` 		bit 				NOT NULL 	COMMENT ' ',
	`amblfact.rein.art` 	bit 				NOT NULL 	COMMENT ' ',
	`amblfact.maxefec` 		double 				NOT NULL 	COMMENT ' ',
	`amblfact.pimpfac` 		bit 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`amblfact.amb.usua`, `amblfact.amb.blfa`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambmov`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambmov` (
	`ambmov.amb.usua` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambmov.tipo.movi` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ambmov.mov.numv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.codigov` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.codigod` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.codigo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambmov.tipo.opv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.tipo.opd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.tipo.op` 		char(02) 			NOT NULL 	COMMENT ' ',
	`ambmov.forma.pagv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambmov.forma.pagd` 	bit 				NOT NULL 	COMMENT ' ',
	`ambmov.forma.pag` 		char(02) 			NOT NULL 	COMMENT ' ',
	`ambmov.fechav` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.doc.numv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.descripv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.montov` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.cta.egrev` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.cta.egred` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.cta.egre` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambmov.banc.tarjv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambmov.banc.tarjd` 	bit 				NOT NULL 	COMMENT ' ',
	`ambmov.banc.tarj` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambmov.bt.reverv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.bt.anulav` 		bit 				NOT NULL 	COMMENT ' ',
	`ambmov.tasav` 			bit 				NOT NULL 	COMMENT ' ',
	`ambmov.co.us.ad` 		char(06)			NOT NULL 	COMMENT ' ',
	`ambmov.fe.us.ad` 		datetime			NOT NULL 	COMMENT ' ',
	`ambmov.co.us.mo` 		char(06)			NOT NULL 	COMMENT ' ',
	`ambmov.fe.us.mo` 		datetime			NOT NULL 	COMMENT ' ',
	`ambmov.co.us.el` 		char(06)			NOT NULL 	COMMENT ' ',
	`ambmov.fe.us.el` 		datetime			NOT NULL 	COMMENT ' ',
	`ambmov.revisado` 		char(01)			NOT NULL 	COMMENT ' ',
	`ambmov.trasnfe` 		char(01)			NOT NULL 	COMMENT ' ',
	`ambmov.co.sucu` 		char(06)			NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambmov.amb.usua`, `ambmov.tipo.movi`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambdev`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambdev` (
	`ambdev.amb.usua` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.monum.odp` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.mopriorid`		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.prioridad` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.vaprioridad` 	int 				NOT NULL 	COMMENT ' ',
	`ambdev.mofe.emis` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.mofe.inic` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.mofe.fad` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.moco.ced` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.bt.anulo` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.bt.reversa`		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.importar` 		bit 				NOT NULL 	COMMENT ' ',
	`ambdev.campo1` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo2` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo3` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo4` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo5` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo6` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo7` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.campo8` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambdev.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambdev.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambdev.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambdev.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambdev.modi.op` 		bit 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambdev.amb.usua`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambordpa`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambordpa` (
	`ambordpa.amb.usua` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ambordpa.orden.num` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.fechav` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.bend` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.benv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.ben` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`ambordpa.forma.pagd` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.forma.pagv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.forma.pag` 	char(02) 			NOT NULL 	COMMENT ' ',
	`ambordpa.montov` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.tipo.impd` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.tipo.impv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.tipo.imp` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`ambordpa.fec.pagv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.ctad` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.ctav` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.cta` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambordpa.chequev` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.cajad` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.cajav` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cod.caja` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ambordpa.islrv` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cta.egred` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cta.egrev` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.cta.egre` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ambordpa.tasav` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.monedad` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.monedav` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.moneda` 		char(06)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo1` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo2` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo3` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo4` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo5` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo6` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo7` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.campo8` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambordpa.co.us.ad` 	char(06)			NOT NULL 	COMMENT ' ',
	`ambordpa.fe.us.ad` 	datetime			NOT NULL 	COMMENT ' ',
	`ambordpa.co.us.mo` 	char(06)			NOT NULL 	COMMENT ' ',
	`ambordpa.fe.us.mo` 	datetime			NOT NULL 	COMMENT ' ',
	`ambordpa.co.us.el` 	char(06)			NOT NULL 	COMMENT ' ',
	`ambordpa.fe.us.el` 	datetime			NOT NULL 	COMMENT ' ',
	`ambordpa.revisado` 	char(01)			NOT NULL 	COMMENT ' ',
	`ambordpa.trasnfe` 		char(01)			NOT NULL 	COMMENT ' ',
	`ambordpa.co.sucu` 		char(06)			NOT NULL 	COMMENT ' ',
	`ambordpa.impriv` 		bit	 				NOT NULL 	COMMENT ' ',
	`ambordpa.pago1v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.pago2v` 		bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.detallev` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.descripv` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.bt.anular` 	bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.bt.reactivar` bit 				NOT NULL 	COMMENT ' ',
	`ambordpa.permodret` 	bit 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambordpa.amb.usua`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;
-- CONSTRAINT `ambordpa.PK..ambordpa..2EBC916E` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.ambpar`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambpar` (	
	`ambpar.amb.usua` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambpar.falla.num` 		bit 				NOT NULL 	COMMENT ' ',
	`ambpar.falla.fut` 		bit 				NOT NULL 	COMMENT ' ',
	`ambpar.campo1` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambpar.campo2` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambpar.campo3` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambpar.campo4` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`ambpar.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambpar.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambpar.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambpar.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambpar.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambpar.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambpar.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambpar.amb.usua`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambreq`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambreq` (
	`ambreq.amb.usua` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambreq.odp.num` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.almaori` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.almorid` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.alma.ori` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambreq.almades` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.almdesd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.alma.des` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambreq.fecha` 			bit 				NOT NULL 	COMMENT ' ',
	`ambreq.motivo` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.bt.ser` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.bt.anula` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.bt.reversa` 	bit 				NOT NULL 	COMMENT ' ',
	`ambreq.confirma` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.desconfima` 	bit 				NOT NULL 	COMMENT ' ',
	`ambreq.stock.neg` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.pstock.neg` 	bit 				NOT NULL 	COMMENT ' ',
	`ambreq.campo1` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.campo2` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.campo3` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.campo4` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.campo5` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.campo6` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.campo7` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.campo8` 		char(60)		 	NOT NULL 	COMMENT ' ',
	`ambreq.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambreq.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambreq.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambreq.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambreq.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambreq.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambreq.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambreq.p.lotefec` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.req.num`		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.solicitar` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.entregar` 		bit 				NOT NULL 	COMMENT ' ',
	`ambreq.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambreq.amb.usua`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ambtras`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambtras` (
	`ambtras.amb.usua` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambtras.tras.num` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.almaori` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.almorid` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.alma.ori` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambtras.almades` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.almdesd` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.alma.des` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambtras.fecha`	 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.motivo` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.bt.ser` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.bt.anula` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.bt.reversa` 	bit 				NOT NULL 	COMMENT ' ',
	`ambtras.confirma` 		bit 				NOT NULL 	COMMENT ' ',
	`ambtras.desconfima` 	bit 				NOT NULL 	COMMENT ' ',
	`ambtras.stock.neg`	 	bit 				NOT NULL 	COMMENT ' ',
	`ambtras.pstock.neg` 	bit 				NOT NULL 	COMMENT ' ',
	`ambtras.campo1` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.campo2`		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.campo3` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.campo4` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.campo5`		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.campo6` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.campo7` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.campo8`		varchar(60)			NOT NULL 	COMMENT ' ',
	`ambtras.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambtras.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambtras.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambtras.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambtras.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambtras.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ambtras.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ambtras.p.lotefec`	 	bit 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ambtras.amb.usua`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.aranc`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.aranc` (
	`aranc.co.art` 			char(30)			NOT NULL 	COMMENT ' ',
	`aranc.co.ara` 			varchar(15)			NOT NULL 	COMMENT ' ',
	`aranc.des.ara` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`aranc.porc.ara` 		double 				NOT NULL 	COMMENT ' ',
	`aranc.calidad` 		char(01)			NOT NULL 	COMMENT ' ',
	`aranc.nivel` 			char(04)			NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`ajuste.ajue.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.art`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.art` (
	`art.cod.art` 			char(30) 			NOT NULL 	COMMENT ' ',
	`art.des.art` 			varchar(120)		NOT NULL 	COMMENT ' ',
	`art.fecha.reg` 		datetime 			NOT NULL 	COMMENT ' ',
	`art.manj.ser` 			bit 				NOT NULL 	COMMENT ' ',
	`art.co.lad` 			char(06) 			NOT NULL 	COMMENT ' ',
	`art.co.cat` 			char(06) 			NOT NULL 	COMMENT ' ',
	`art.co.subl` 			char(06) 			NOT NULL 	COMMENT ' ',
	`art.co.color` 			char(06)			NOT NULL 	COMMENT ' ',
	`art.item` 				char(10)			NOT NULL 	COMMENT ' ',
	`art.refer` 			char(20)			NOT NULL 	COMMENT ' ',
	`art.modelo` 			char(20)			NOT NULL 	COMMENT ' ',
	`art.procedenci` 		char(06)			NOT NULL 	COMMENT ' ',
	`art.comentario` 		text 				NOT NULL 	COMMENT ' ',
	`art.co.prov` 			char(10)			NOT NULL 	COMMENT ' ',
	`art.ubicacion` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`art.uni.venta` 		char(06)			NOT NULL 	COMMENT ' ',
	`art.uni.compra` 		char(06)			NOT NULL 	COMMENT ' ',
	`art.uni.relac` 		double 				NOT NULL 	COMMENT ' ',
	`art.relac.aut` 		int 				NOT NULL 	COMMENT ' ',
	`art.stock.act` 		double 				NOT NULL 	COMMENT ' ',
	`art.stock.com` 		double 				NOT NULL 	COMMENT ' ',
	`art.sstock.com` 		double 				NOT NULL 	COMMENT ' ',
	`art.stock.lle` 		double 				NOT NULL 	COMMENT ' ',
	`art.sstock.lle` 		double 				NOT NULL 	COMMENT ' ',
	`art.stock.des` 		double 				NOT NULL 	COMMENT ' ',
	`art.sstock.des` 		double 				NOT NULL 	COMMENT ' ',
	`art.suni.venta` 		char(06)			NOT NULL 	COMMENT ' ',
	`art.suni.compr` 		char(06)			NOT NULL 	COMMENT ' ',
	`art.suni.relac` 		decimal(18,3) 		NOT NULL 	COMMENT ' ',
	`art.sstock.act` 		double 				NOT NULL 	COMMENT ' ',
	`art.relac.comp` 		double 				NOT NULL 	COMMENT ' ',
	`art.relac.vent` 		double 				NOT NULL 	COMMENT ' ',
	`art.pto.pedido` 		double 				NOT NULL 	COMMENT ' ',
	`art.stock.mx` 			double 				NOT NULL 	COMMENT ' ',
	`art.stock.mad` 		double 				NOT NULL 	COMMENT ' ',
	`art.prec.om` 			bit 				NOT NULL 	COMMENT ' ',
	`art.prec.vta1` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.prec.v`		datetime	 		NOT NULL 	COMMENT ' ',
	`art.fec.prec.2` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.prec.vta2` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.prec.3` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.prec.vta3` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.prec.4` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.prec.vta4` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.prec.5` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.prec.vta5` 		double 				NOT NULL 	COMMENT ' ',
	`art.prec.agr1` 		double 				NOT NULL 	COMMENT ' ',
	`art.prec.agr2` 		double 				NOT NULL 	COMMENT ' ',
	`art.prec.agr3` 		double 				NOT NULL 	COMMENT ' ',
	`art.prec.agr4` 		double 				NOT NULL 	COMMENT ' ',
	`art.prec.agr5` 		double 				NOT NULL 	COMMENT ' ',
	`art.can.agr` 			double 				NOT NULL 	COMMENT ' ',
	`art.fec.des.p5` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.fec.has.p5` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.co.imp` 			char(04)	 		NOT NULL 	COMMENT ' ',
	`art.margen.mx` 		double 				NOT NULL 	COMMENT ' ',
	`art.ult.cto.un` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.ult.co` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.cto.pro.un` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.cto.pr` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.cto.merc` 			double 				NOT NULL 	COMMENT ' ',
	`art.fec.cto.me` 		datetime	 		NOT NULL 	COMMENT ' ',
	`art.cto.prov` 			double 				NOT NULL 	COMMENT ' ',
	`art.fec.cto.p2` 		datetime		 	NOT NULL 	COMMENT ' ',
	`art.ult.cto.dt` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.cto.dt` 		datetime		 	NOT NULL 	COMMENT ' ',
	`art.cto.un.an` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.cto.an` 		datetime		 	NOT NULL 	COMMENT ' ',
	`art.ult.cto.om` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.ult.om` 		datetime		 	NOT NULL 	COMMENT ' ',
	`art.cto.pro.om` 		double 				NOT NULL 	COMMENT ' ',
	`art.fec.pro.om` 		datetime		 	NOT NULL 	COMMENT ' ',
	`art.tipo.cto` 			char(04)		 	NOT NULL 	COMMENT ' ',
	`art.mont.comi` 		double 				NOT NULL 	COMMENT ' ',
	`art.porc.cto` 			double 				NOT NULL 	COMMENT ' ',
	`art.mont.cto` 			double 				NOT NULL 	COMMENT ' ',
	`art.porc.gas` 			double 				NOT NULL 	COMMENT ' ',
	`art.mont.gas` 			double 				NOT NULL 	COMMENT ' ',
	`art.f.cost` 			datetime		 	NOT NULL 	COMMENT ' ',
	`art.fisico` 			bit 				NOT NULL 	COMMENT ' ',
	`art.punt.cli` 			double 				NOT NULL 	COMMENT ' ',
	`art.punt.pro` 			double 				NOT NULL 	COMMENT ' ',
	`art.dias.repos` 		int 				NOT NULL 	COMMENT ' ',
	`art.tipo` 				char(01)		 	NOT NULL 	COMMENT ' ',
	`art.alm.prad` 			char(04)		 	NOT NULL 	COMMENT ' ',
	`art.anulado` 			bit 				NOT NULL 	COMMENT ' ',
	`art.tipo.imp` 			char(01)		 	NOT NULL 	COMMENT ' ',
	`art.dis.cen` 			text  				NOT NULL 	COMMENT ' ',
	`art.mon.ilc` 			double 				NOT NULL 	COMMENT ' ',
	`art.capacidad` 		decimal(18,3)		NOT NULL	COMMENT ' ',
	`art.grado.al` 			decimal(10,2)		NOT NULL	COMMENT ' ',
	`art.tipo.licor` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`art.compuesto` 		bit 				NOT NULL 	COMMENT ' ',
	`art.picture` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo1` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo2` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo3` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo4` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo5` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo6` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo7` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.campo8` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.co.us.ad` 			char(06)			NOT NULL 	COMMENT ' ',
	`art.fe.us.ad` 			datetime			NOT NULL 	COMMENT ' ',
	`art.co.us.mo` 			char(06)			NOT NULL 	COMMENT ' ',
	`art.fe.us.mo` 			datetime			NOT NULL 	COMMENT ' ',
	`art.co.us.el` 			char(06)			NOT NULL 	COMMENT ' ',
	`art.fe.us.el` 			datetime			NOT NULL 	COMMENT ' ',
	`art.revisado` 			char(01)			NOT NULL 	COMMENT ' ',
	`art.trasnfe` 			char(01)			NOT NULL 	COMMENT ' ',
	`art.co.sucu` 			char(06)			NOT NULL 	COMMENT ' ',
	`art.tuni.venta` 		char(06)			NOT NULL 	COMMENT ' ',
	`art.equi.uni1` 		double 				NOT NULL 	COMMENT ' ',
	`art.equi.uni2` 		double 				NOT NULL 	COMMENT ' ',
	`art.equi.uni3` 		double 				NOT NULL 	COMMENT ' ',
	`art.lote` 				bit 				NOT NULL 	COMMENT ' ',
	`art.serialp` 			char(30)			NOT NULL 	COMMENT ' ',
	`art.valido` 			bit 				NOT NULL 	COMMENT ' ',
	`art.atributo1` 		bit 				NOT NULL 	COMMENT ' ',
	`art.vatributo1` 		char(15)			NOT NULL 	COMMENT ' ',
	`art.atributo2` 		bit 				NOT NULL 	COMMENT ' ',
	`art.vatributo2` 		char(15)			NOT NULL 	COMMENT ' ',
	`art.atributo3` 		bit 				NOT NULL 	COMMENT ' ',
	`art.vatributo3` 		char(15)			NOT NULL 	COMMENT ' ',
	`art.atributo4` 		bit 				NOT NULL 	COMMENT ' ',
	`art.vatributo4` 		char(15)			NOT NULL 	COMMENT ' ',
	`art.atributo5` 		bit 				NOT NULL 	COMMENT ' ',
	`art.vatributo5` 		char(15)			NOT NULL 	COMMENT ' ',
	`art.atributo6` 		bit 				NOT NULL 	COMMENT ' ',
	`art.vatributo6` 		char(15)			NOT NULL 	COMMENT ' ',
	`art.garantia` 			char(30)			NOT NULL 	COMMENT ' ',
	`art.peso` 				double 				NOT NULL 	COMMENT ' ',
	`art.pie` 				double 				NOT NULL 	COMMENT ' ',
	`art.margen1` 			double 				NOT NULL 	COMMENT ' ',
	`art.margen2` 			double 				NOT NULL 	COMMENT ' ',
	`art.margen3` 			double 				NOT NULL 	COMMENT ' ',
	`art.margen4` 			double 				NOT NULL 	COMMENT ' ',
	`art.margen5` 			double 				NOT NULL 	COMMENT ' ',
	`art.fila.id` 			timestamp			NOT NULL 	COMMENT ' ',
	`art.imagen1` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.imagen2` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`art.i.art.des` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`art.uni.emp` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`art.rel.emp` 			double 				NOT NULL 	COMMENT ' ',
	`art.movil` 			bit 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`art.cod.art`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;
	
DROP TABLE IF EXISTS `dynerp.auxiliar`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.auxiliar` (
	`auxiliar.nom.aux` 		char(10) 	 	NOT NULL		DEFAULT (space(1)) 	COMMENT ' ',
	`auxiliar.val.aux` 		varchar(254) 	NOT NULL		DEFAULT (space(1)) 	COMMENT ' ',
	`auxiliar.tipo.aux` 	char(01) 	 	NOT NULL		DEFAULT (space(1)) 	COMMENT ' ',
	`auxiliar.form.aux` 	varchar(254) 	NOT NULL		DEFAULT (space(1)) 	COMMENT ' ',
	`auxiliar.cach.aux` 	bit 	 		NOT NULL		DEFAULT ((0)) 		COMMENT ' ',
	`auxiliar.grup.aux` 	char(16) 	 	NOT NULL		DEFAULT (space(1)) 	COMMENT ' ',
	`auxiliar.des.aux` 		varchar(60)  	NOT NULL		DEFAULT (space(1)) 	COMMENT ' ',
	PRIMARY KEY (`auxiliar.nom.aux`, `auxiliar.grup.aux`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.bancos`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.bancos` (
	`bancos.cod.ban` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`bancos.des.ban` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`bancos.telefonos`		varchar(60)			NOT NULL 	COMMENT ' ',
	`bancos.campo1` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`bancos.campo2` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`bancos.campo3` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`bancos.campo4` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`bancos.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`bancos.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`bancos.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`bancos.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`bancos.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`bancos.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`bancos.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`bancos.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`bancos.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`bancos.plazo1` 		decimal(18,0)		NOT NULL 	COMMENT ' ',
	`bancos.plazo2` 		decimal(18,0)		NOT NULL 	COMMENT ' ',
	`bancos.plazo3` 		decimal(18,0)		NOT NULL 	COMMENT ' ',
	`bancos.plazo4` 		decimal(18,0)		NOT NULL 	COMMENT ' ',
	`bancos.fila.id` 		timestamp		 	NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`bancos.cod.ban`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.benef`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.benef` (
	`benef.cod.ben` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`benef.ben.des` 		varchar(60)				NOT NULL 	COMMENT ' ',
	`benef.rif` 			char(18)		 		NOT NULL 	COMMENT ' ',
	`benef.direc1` 			char(100)		 		NOT NULL 	COMMENT ' ',
	`benef.dis.cen` 		text 					NOT NULL 	COMMENT ' ',
	`benef.telefono` 		varchar(60)				NOT NULL 	COMMENT ' ',
	`benef.campo1` 			varchar(60)				NOT NULL 	COMMENT ' ',
	`benef.campo2` 			varchar(60)				NOT NULL 	COMMENT ' ',
	`benef.campo3` 			varchar(60)				NOT NULL 	COMMENT ' ',
	`benef.campo4` 			varchar(60)				NOT NULL 	COMMENT ' ',
	`benef.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`benef.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`benef.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`benef.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`benef.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`benef.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`benef.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`benef.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`benef.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`benef.tipo.per` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`benef.CO.TAB` 			int 					NOT NULL 	COMMENT ' ',
	`benef.nit` 			char(18)		 		NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`benef.cod.ben`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.cajas`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cajas` (
	`cajas.cod.caja` 		char(06) 			NOT NULL 	COMMENT ' ',
	`cajas.descrip` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cajas.mes.ini` 		datetime 			NOT NULL 	COMMENT ' ',
	`cajas.saldo.i` 		double 				NOT NULL 	COMMENT ' ',
	`cajas.saldo.ei` 		double 				NOT NULL 	COMMENT ' ',
	`cajas.saldo.a` 		double 				NOT NULL 	COMMENT ' ',
	`cajas.saldo.e` 		double 				NOT NULL 	COMMENT ' ',
	`cajas.moneda` 			char(06) 			NOT NULL 	COMMENT ' ',
	`cajas.campo1` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cajas.campo2` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cajas.campo3` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cajas.campo4` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cajas.dis.cen` 		text 				NOT NULL	COMMENT ' ',
	`cajas.deb.ant` 		double	 			NOT NULL 	COMMENT ' ',
	`cajas.hab.ant` 		double 				NOT NULL 	COMMENT ' ',
	`cajas.co.us.ad` 		char(06) 			NOT NULL 	COMMENT ' ',
	`cajas.fe.us.ad` 		datetime 			NOT NULL 	COMMENT ' ',
	`cajas.co.us.mo` 		char(06)			NOT NULL 	COMMENT ' ',
	`cajas.fe.us.mo` 		datetime			NOT NULL 	COMMENT ' ',
	`cajas.co.us.el` 		char(06)			NOT NULL 	COMMENT ' ',
	`cajas.fe.us.el` 		datetime			NOT NULL 	COMMENT ' ',
	`cajas.revisado` 		char(01)			NOT NULL 	COMMENT ' ',
	`cajas.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`cajas.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cajas.inactivo` 		bit 				NOT NULL 	COMMENT ' ',
	`cajas.gavetaser` 		bit 				NOT NULL 	COMMENT ' ',
	`cajas.cajapri` 		bit 				NOT NULL 	COMMENT ' ',
	`cajas.sidisplay` 		bit 				NOT NULL 	COMMENT ' ',
	`cajas.puerto` 			char(01) 			NOT NULL 	COMMENT ' ',
	`cajas.bitdatos` 		char(01) 			NOT NULL 	COMMENT ' ',
	`cajas.bitstop` 		char(01) 			NOT NULL 	COMMENT ' ',
	`cajas.paridad` 		char(01) 			NOT NULL 	COMMENT ' ',
	`cajas.velocidad` 		char(05) 			NOT NULL 	COMMENT ' ',
	`cajas.puerto2` 		char(01) 			NOT NULL 	COMMENT ' ',
	`cajas.bitdatos2` 		char(01) 			NOT NULL 	COMMENT ' ',
	`cajas.bitstop2` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`cajas.paridad2` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`cajas.gcadena` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`cajas.velocidad2` 		char(05)		 	NOT NULL 	COMMENT ' ',
	`cajas.cajapvta` 		bit 				NOT NULL 	COMMENT ' ',
	`cajas.mvisa` 			bit 				NOT NULL 	COMMENT ' ',
	`cajas.vpostipo` 		int 				NOT NULL 	COMMENT ' ',
	`cajas.impfis` 			char(20)			NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`cajas.cod.caja`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ajustes en Facturas`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.catart`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.catart` (
	`catart.co.cat` 		char(06) 				NOT NULL 	COMMENT ' ',
	`catart.cat.des` 		varchar(60)			 	NOT NULL 	COMMENT ' ',
	`catart.dis.cen` 		text 					NOT NULL 	COMMENT ' ',
	`catart.campo1` 		varchar(60)			 	NOT NULL 	COMMENT ' ',
	`catart.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`catart.campo3` 		varchar(60)			 	NOT NULL 	COMMENT ' ',
	`catart.campo4` 		varchar(60)			 	NOT NULL 	COMMENT ' ',
	`catart.co.us.ad` 		char(06) 				NOT NULL 	COMMENT ' ',
	`catart.fe.us.ad` 		datetime 				NOT NULL 	COMMENT ' ',
	`catart.co.us.mo` 		char(06) 				NOT NULL 	COMMENT ' ',
	`catart.fe.us.mo` 		datetime 				NOT NULL 	COMMENT ' ',
	`catart.co.us.el` 		char(06) 				NOT NULL 	COMMENT ' ',
	`catart.fe.us.el` 		datetime 				NOT NULL 	COMMENT ' ',
	`catart.revisado` 		char(01) 				NOT NULL 	COMMENT ' ',
	`catart.trasnfe` 		char(01) 				NOT NULL 	COMMENT ' ',
	`catart.co.sucu` 		char(06) 				NOT NULL 	COMMENT ' ',
	`catart.co.imun` 		char(15) 				NOT NULL 	COMMENT ' ',
	`catart.co.reten` 		char(06) 				NOT NULL 	COMMENT ' ',
	`catart.row.id` 		timestamp 				NOT NULL 	COMMENT ' ',
	`catart.movil` 			bit 					NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`catart.co.cat`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Catagoria de Articulos`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.chras`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.chras` 
	`chras.Co.Chra` 		char(06) 				NOT NULL 	COMMENT ' ',
	`chras..Chra.Des` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`chras..cod.cta` 		char(06) 				NOT NULL 	COMMENT ' ',
	`chras..Fecha.Re` 		datetime 				NOT NULL 	COMMENT ' ',
	`chras..Num.Ch.P` 		int 					NOT NULL 	COMMENT ' ',
	`chras..Num.Ch.U` 		int 					NOT NULL 	COMMENT ' ',
	`chras..Respons` 		char(06) 				NOT NULL 	COMMENT ' ',
	`chras..Campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`chras..Campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`chras..Campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`chras..Campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`chras..Co.Us.ad` 		char(06) 				NOT NULL 	COMMENT ' ',
	`chras..Fe.Us.ad` 		datetime 				NOT NULL 	COMMENT ' ',
	`chras..Co.Us.Mo` 		char(06) 				NOT NULL 	COMMENT ' ',
	`chras..Fe.Us.Mo` 		datetime 				NOT NULL 	COMMENT ' ',
	`chras..Co.Us.El` 		char(06) 				NOT NULL 	COMMENT ' ',
	`chras..Fe.Us.El` 		datetime 				NOT NULL 	COMMENT ' ',
	`chras..Revisado` 		char(01) 				NOT NULL 	COMMENT ' ',
	`chras..Trasnfe` 		char(01) 				NOT NULL 	COMMENT ' ',
	`chras..Co.Sucu` 		char(06) 				NOT NULL 	COMMENT ' ',
	`chras..Status` 		char(03) 				NOT NULL 	COMMENT ' ',
	`chras..LimUsoRe` 		bit 					NOT NULL 	COMMENT ' ',
	`chras..Ch.Gen` 		bit 					NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`chras.Co.Chra`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Control de Chequeras`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.cheques`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cheques` (
	`cheques.Co.Cheq` 	char(20) 				NOT NULL 	COMMENT ' ',
	`cheques.Co.Chra` 	char(06) 				NOT NULL 	COMMENT ' ',
	`cheques.Status` 	char(03) 				NOT NULL 	COMMENT ' ',
	`cheques.Monto` 	double 					NOT NULL 	COMMENT ' ',
	`cheques.Descrip` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cheques.Fec.emis` 	datetime 				NULL 		COMMENT ' ',
	`cheques.Fec.ent` 	datetime 				NULL 		COMMENT ' ',
	`cheques.Entreg.a` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cheques.Coment` 	text 					NOT NULL 	COMMENT ' ',
	`cheques.Co.Us.ad` 	char(06) 				NOT NULL 	COMMENT ' ',
	`cheques.Fe.Us.ad` 	datetime 				NOT NULL 	COMMENT ' ',
	`cheques.Co.Us.Mo` 	char(06) 				NOT NULL 	COMMENT ' ',
	`cheques.Fe.Us.Mo` 	datetime 				NOT NULL 	COMMENT ' ',
	`cheques.Co.Us.El` 	char(06) 				NOT NULL 	COMMENT ' ',
	`cheques.Fe.Us.El` 	datetime 				NOT NULL 	COMMENT ' ',
	`cheques.mov.num` 	int 					NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`cheques.Co.Cheq`, `cheques.Co.Chra`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla control de Cheques`;
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.clientes`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.clientes` (
	`clientes.co.cli` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`clientes.tipo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`clientes.cli.des` 		varchar(100)		NOT NULL 	COMMENT ' ',
	`clientes.direc1` 		text 				NOT NULL 	COMMENT ' ',
	`clientes.direc2` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.telefonos` 	varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.fax` 			varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.inactivo` 	bit 				NOT NULL 	COMMENT ' ',
	`clientes.comentario`	text 				NOT NULL 	COMMENT ' ',
	`clientes.respons` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.fecha.reg` 	datetime			NOT NULL 	COMMENT ' ',
	`clientes.puntaje` 		int 				NOT NULL 	COMMENT ' ',
	`clientes.saldo` 		float 				NOT NULL 	COMMENT ' ',
	`clientes.saldo.ini` 	float 				NOT NULL 	COMMENT ' ',
	`clientes.fac.ult.ve` 	int 				NOT NULL 	COMMENT ' ',
	`clientes.fec.ult.ve` 	datetime			NOT NULL 	COMMENT ' ',
	`clientes.net.ult.ve` 	double 				NOT NULL 	COMMENT ' ',
	`clientes.mont.cre` 	double 				NOT NULL 	COMMENT ' ',
	`clientes.plaz.pag` 	int 				NOT NULL 	COMMENT ' ',
	`clientes.desc.ppago` 	double 				NOT NULL 	COMMENT ' ',
	`clientes.co.zon` 		char(06)			NOT NULL 	COMMENT ' ',
	`clientes.co.seg` 		char(06)			NOT NULL 	COMMENT ' ',
	`clientes.co.ven` 		char(06)			NOT NULL 	COMMENT ' ',
	`clientes.desc.glob` 	double 				NOT NULL 	COMMENT ' ',
	`clientes.horar.caja` 	varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.frecu.vist` 	varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.lunes` 		bit 				NOT NULL 	COMMENT ' ',
	`clientes.martes` 		bit 				NOT NULL 	COMMENT ' ',
	`clientes.miercoles` 	bit 				NOT NULL 	COMMENT ' ',
	`clientes.jueves` 		bit 				NOT NULL 	COMMENT ' ',
	`clientes.viernes` 		bit 				NOT NULL 	COMMENT ' ',
	`clientes.sabado` 		bit 				NOT NULL 	COMMENT ' ',
	`clientes.domingo` 		bit 				NOT NULL 	COMMENT ' ',
	`clientes.dir.ent2` 	text 				NOT NULL 	COMMENT ' ',
	`clientes.tipo.iva` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`clientes.iva` 			double 				NOT NULL 	COMMENT ' ',
	`clientes.rif` 			char(18)			NOT NULL 	COMMENT ' ',
	`clientes.contribu` 	bit 				NOT NULL 	COMMENT ' ',
	`clientes.dis.cen` 		text 				NOT NULL 	COMMENT ' ',
	`clientes.nit` 			char(18)			NOT NULL 	COMMENT ' ',
	`clientes.email` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.co.ingr` 		char(06)			NOT NULL 	COMMENT ' ',
	`clientes.campo1`		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.campo2`		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.campo3` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.campo4` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.campo5` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.campo6` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.campo7` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.campo8` 		varchar(60)			NOT NULL 	COMMENT ' ',
	`clientes.co.us.ad` 	char(06)			NOT NULL 	COMMENT ' ',
	`clientes.fe.us.ad` 	datetime			NOT NULL 	COMMENT ' ',
	`clientes.co.us.mo` 	char(06)			NOT NULL 	COMMENT ' ',
	`clientes.fe.us.mo` 	datetime			NOT NULL 	COMMENT ' ',
	`clientes.co.us.el` 	char(06)			NOT NULL 	COMMENT ' ',
	`clientes.fe.us.el` 	datetime			NOT NULL 	COMMENT ' ',
	`clientes.revisado` 	char(01)			NOT NULL 	COMMENT ' ',
	`clientes.trasnfe` 		char(01)			NOT NULL 	COMMENT ' ',
	`clientes.co.sucu` 		char(06)			NOT NULL 	COMMENT ' ',
	`clientes.juridico`		bit 				NOT NULL 	COMMENT ' ',
	`clientes.tipo.adi` 	numeric(1,0) 		NOT NULL 	COMMENT ' ',
	`clientes.matriz` 		char(10)			NOT NULL 	COMMENT ' ',
	`clientes.co.tab`		int 				NOT NULL 	COMMENT ' ',
	`clientes.tipo.per` 	char(01)			NOT NULL 	COMMENT ' ',
	`clientes.serialp` 		char(30)			NOT NULL 	COMMENT ' ',
	`clientes.valido` 		bit 				NOT NULL 	COMMENT ' ',
	`clientes.row.id` 		timestamp 			NOT NULL 	COMMENT ' ',
	`clientes.estado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`clientes.Id` 			int 				NOT NULL 	COMMENT ' ',
	`clientes.co.pais` 		varchar(06)		 	NOT NULL 	COMMENT ' ',
	`clientes.ciudad` 		varchar(50) 		NOT NULL 	COMMENT ' ',
	`clientes.zip` 			varchar(10)		 	NOT NULL 	COMMENT ' ',
	`clientes.logad` 		varchar(10)		 	NOT NULL 	COMMENT ' ',
	`clientes.password` 	varchar(50) 		NOT NULL 	COMMENT ' ',
	`clientes.website` 		varchar(50) 		NOT NULL 	COMMENT ' ',
	`clientes.salestax` 	char(08) 			NOT NULL 	COMMENT ' ',
	`clientes.sincredito` 	bit 				NOT NULL 	COMMENT ' ',
	`clientes.porc.esp` 	float 				NOT NULL 	COMMENT ' ',
	`clientes.contribu.e` 	bit 				NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`clientes.co.cli`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla control de Cheques`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.cobtmp`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cobtmp` (
	`cobtmp.cob.num` 		int 				NOT NULL 	COMMENT ' ',
	`cobtmp.reng.num` 		int 				NOT NULL 	COMMENT ' ',
	`cobtmp.tip.cob` 		char(04)			NOT NULL 	COMMENT ' ',
	`cobtmp.num.doc` 		char(20)			NOT NULL 	COMMENT ' ',
	`cobtmp.mont.doc` 		char(20)			NOT NULL 	COMMENT ' ',
	`cobtmp.banco` 			char(06)			NOT NULL 	COMMENT ' ',
	`cobtmp.cod.caja` 		char(06)			NOT NULL 	COMMENT ' ',
	`cobtmp.des.caja` 		char(20)			NOT NULL 	COMMENT ' ',
	`cobtmp.fec.cheq` 		char(20)			NOT NULL 	COMMENT ' ',
	`cobtmp.nombre.ban` 	char(60)			NOT NULL 	COMMENT ' ',
	`cobtmp.numero` 		char(20)			NOT NULL 	COMMENT ' ',
	`cobtmp.sino.pago` 		char(02) 			NOT NULL 	COMMENT ' ',
	`cobtmp.sino.reten` 	char(02) 			NOT NULL 	COMMENT ' ',
	`cobtmp.monto.dppa` 	char(14) 			NOT NULL 	COMMENT ' ',
	`cobtmp.monto.rete` 	char(14) 			NOT NULL 	COMMENT ' ',
	`cobtmp.mont.cobro` 	char(14) 			NOT NULL 	COMMENT ' ',
	`cobtmp.saldo` 			char(14) 			NOT NULL 	COMMENT ' ',
	`cobtmp.neto` 			char(14) 			NOT NULL 	COMMENT ' ',
	`cobtmp.giro` 			float 				NOT NULL 	COMMENT ' ',
	`cobtmp.revisado` 		char(01)			NOT NULL 	COMMENT ' ',
	`cobtmp.trasnfe` 		char(01)			NOT NULL 	COMMENT ' ',
	`cobtmp.fecha.ven` 		datetime 			NOT NULL 	COMMENT ' '
)
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.cobpvta`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cobpvta` (
	`cobpvta.fact.num` 		int 				NOT NULL 	COMMENT ' ',
	`cobpvta.num.turno` 	int 				NOT NULL 	COMMENT ' ',
	`cobpvta.efec1` 		float 				NOT NULL 	COMMENT ' ',
	`cobpvta.cheq1` 		float 				NOT NULL 	COMMENT ' ',
	`cobpvta.cheq2` 		float 				NOT NULL 	COMMENT ' ',
	`cobpvta.tarj1` 		float 				NOT NULL 	COMMENT ' ',
	`cobpvta.tarj2` 		float 				NOT NULL 	COMMENT ' ',
	`cobpvta.doc.num1` 		char(20)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.doc.num2` 		char(20)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.doc.num3` 		char(20)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.doc.num4` 		char(20)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.banc.tarj1` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.banc.tarj2` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.banc.tarj3` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.banc.tarj4` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.fecha.che1` 	datetime		 	NOT NULL 	COMMENT ' ',
	`cobpvta.fecha.che2` 	datetime		 	NOT NULL 	COMMENT ' ',
	`cobpvta.fecha.che3` 	datetime		 	NOT NULL 	COMMENT ' ',
	`cobpvta.fecha.che4` 	datetime		 	NOT NULL 	COMMENT ' ',
	`cobpvta.op1` 			char(04)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.op2` 			char(04)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.op3` 			char(04)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.op4` 			char(04)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.clave1` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.clave2` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.clave3` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.clave4` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.cobrador` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.moneda` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.tasa` 			float 				NOT NULL 	COMMENT ' ',
	`cobpvta.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`cobpvta.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`cobpvta.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`cobpvta.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobpvta.total` 		float 				NOT NULL 	COMMENT ' ',
	`cobpvta.vuelto` 		float 				NOT NULL 	COMMENT ' ',
	`cobpvta.aux01` 		double 				NOT NULL 	COMMENT ' ',
	`cobpvta.aux02` 		varchar(30)		 	NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`cobpvta.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla control CobranzaxVenta`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.cobros`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cobros` (
	`cobros.cob.num` 		int 				NOT NULL 	COMMENT ' ',
	`cobros.recibo` 		char(15)			NOT NULL 	COMMENT ' ',
	`cobros.co.cli` 		char(10)			NOT NULL 	COMMENT ' ',
	`cobros.co.ven` 		char(06)			NOT NULL 	COMMENT ' ',
	`cobros.fec.cob` 		datetime			NOT NULL 	COMMENT ' ',
	`cobros.anulado` 		bit 				NOT NULL 	COMMENT ' ',
	`cobros.monto` 			double 				NOT NULL 	COMMENT ' ',
	`cobros.dppago` 		double 				NOT NULL 	COMMENT ' ',
	`cobros.mont.ncr` 		double 				NOT NULL 	COMMENT ' ',
	`cobros.ncr` 			int 				NOT NULL 	COMMENT ' ',
	`cobros.tcomi.porc` 	double 				NOT NULL 	COMMENT ' ',
	`cobros.tcomi.line` 	double 				NOT NULL 	COMMENT ' ',
	`cobros.tcomi.art` 		double 				NOT NULL 	COMMENT ' ',
	`cobros.tcomi.conc` 	double 				NOT NULL 	COMMENT ' ',
	`cobros.feccom` 		datetime			NOT NULL 	COMMENT ' ',
	`cobros.tasa` 			double 				NOT NULL 	COMMENT ' ',
	`cobros.moneda` 		char(06)			NOT NULL 	COMMENT ' ',
	`cobros.numcom` 		int 				NOT NULL 	COMMENT ' ',
	`cobros.dis.cen` 		text 				NOT NULL 	COMMENT ' ',
	`cobros.campo1` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.campo2` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.campo3` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.campo4` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.campo5` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.campo6` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.campo7` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.campo8` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.co.us.ad` 		char(06)			NOT NULL 	COMMENT ' ',
	`cobros.fe.us.ad` 		datetime			NOT NULL 	COMMENT ' ',
	`cobros.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobros.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`cobros.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobros.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`cobros.recargo` 		bit 				NOT NULL 	COMMENT ' ',
	`cobros.adel.num` 		int 				NOT NULL 	COMMENT ' ',
	`cobros.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`cobros.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`cobros.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`cobros.descrip` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`cobros.num.dev` 		int 				NOT NULL 	COMMENT ' ',
	`cobros.devdinero` 		bit 				NOT NULL 	COMMENT ' ',
	`cobros.num.turno` 		int 				NOT NULL 	COMMENT ' ',
	`cobros.aux01` 			double 				NOT NULL 	COMMENT ' ',
	`cobros.aux02` 			varchar(30)		 	NOT NULL 	COMMENT ' ',
	`cobros.origen` 		char(01) 			NULL 		COMMENT ' ',
	`cobros.origen.d` 		char(20) 			NULL 		COMMENT ' ',
 	PRIMARY KEY (`cobros.cob.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla control Cobranza`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.colores`;
-- 40101 SET @saved.cs.client     = @@character.set.client */
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.colores` (
	`colores.co.col` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`colores.des.col` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`colores.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`colores.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`colores.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`colores.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`colores.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`colores.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`colores.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`colores.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`colores.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`colores.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`colores.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`colores.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`colores.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`colores.co.col`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla control Cobranza`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.comipre`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.comipre` (
	`comipre.co.comi` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`comipre.tipo.ven` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`comipre.tipo.comi` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`comipre.tipo.prec` 	char(01)		 	NOT NULL 	COMMENT ' ',
	`comipre.hasta1` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.hasta2` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.hasta3` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.hasta4` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.hasta5`		double 				NOT NULL 	COMMENT ' ',
	`comipre.porc1` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.porc2` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.porc3` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.porc4` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.porc5` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.porc6` 		double 				NOT NULL 	COMMENT ' ',
	`comipre.campo1` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.campo2` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.campo3` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.campo4` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.campo5` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.campo6` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.campo7` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.campo8` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`comipre.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`comipre.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`comipre.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`comipre.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`comipre.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`comipre.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`comipre.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`comipre.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`comipre.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`comipre.tipo.comi`, `comipre.tipo.ven`, `comipre.tipo.prec`, `comipre.co.comi`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla control Cobranza`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.compras`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.compras` (
	`compras.fact.num` 		int 				NOT NULL 	COMMENT ' ',
	`compras.factura` 		char(25) 			NOT NULL 	COMMENT ' ',
	`compras.contrib` 		bit 				NOT NULL 	COMMENT ' ',
	`compras.nombre` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.rif` 			char(18)		 	NOT NULL 	COMMENT ' ',
	`compras.nit` 			char(18)		 	NOT NULL 	COMMENT ' ',
	`compras.status` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`compras.comentario` 	text 				NOT NULL 	COMMENT ' ',
	`compras.descrip` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.saldo` 		double 				NOT NULL 	COMMENT ' ',
	`compras.fec.emis` 		datetime		 	NOT NULL 	COMMENT ' ',
	`compras.fec.venc` 		datetime		 	NOT NULL 	COMMENT ' ',
	`compras.co.cli` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`compras.co.ven` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.co.tran` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.dir.ent` 		text 				NOT NULL 	COMMENT ' ',
	`compras.forma.pag` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.tot.bruto` 	double 				NOT NULL 	COMMENT ' ',
	`compras.tot.neto` 		double 				NOT NULL 	COMMENT ' ',
	`compras.glob.desc` 	double 				NOT NULL 	COMMENT ' ',
	`compras.tot.reca` 		double 				NOT NULL 	COMMENT ' ',
	`compras.porc.gdesc` 	char(15)		 	NOT NULL 	COMMENT ' ',
	`compras.porc.reca` 	char(15)		 	NOT NULL 	COMMENT ' ',
	`compras.total.uc` 		double 				NOT NULL 	COMMENT ' ',
	`compras.total.cp` 		double 				NOT NULL 	COMMENT ' ',
	`compras.tot.flete` 	double 				NOT NULL 	COMMENT ' ',
	`compras.monto.dev` 	double 				NOT NULL 	COMMENT ' ',
	`compras.totklu` 		double 				NOT NULL 	COMMENT ' ',
	`compras.monto.adi` 	double 				NOT NULL 	COMMENT ' ',
	`compras.seriales` 		int 				NOT NULL 	COMMENT ' ',
	`compras.com.relac` 	int 				NOT NULL 	COMMENT ' ',
	`compras.anulada` 		bit 				NOT NULL 	COMMENT ' ',
	`compras.impresa` 		bit 				NOT NULL 	COMMENT ' ',
	`compras.iva` 			double 				NOT NULL 	COMMENT ' ',
	`compras.iva.dev` 		double 				NOT NULL 	COMMENT ' ',
	`compras.feccom` 		datetime		 	NOT NULL 	COMMENT,
	`compras.numcom` 		int 				NOT NULL 	COMMENT ' ',
	`compras.tasa` 			double 				NOT NULL 	COMMENT ' ',
	`compras.moneda` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.dis.cen` 		text 				NOT NULL 	COMMENT ' ',
	`compras.tasag` 		double 				NOT NULL 	COMMENT ' ',
	`compras.tasag10`		double 				NOT NULL 	COMMENT ' ',
	`compras.tasag20` 		double 				NOT NULL 	COMMENT ' ',
	`compras.campo1` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.campo2` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.campo3` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.campo4` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.campo5` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.campo6` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.campo7` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.campo8` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`compras.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`compras.co.us.el`		char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`compras.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`compras.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`compras.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`compras.mon.ilc` 		double 				NOT NULL 	COMMENT ' ',
	`compras.otros1` 		double 				NOT NULL 	COMMENT ' ',
	`compras.otros2` 		double 				NOT NULL 	COMMENT ' ',
	`compras.otros3` 		double 				NOT NULL 	COMMENT ' ',
	`compras.imp.num` 		int 				NOT NULL 	COMMENT ' ',
	`compras.tipo.dis` 		int 				NOT NULL 	COMMENT ' ',
	`compras.tot.pie` 		double 				NOT NULL 	COMMENT ' ',
	`compras.tot.peso` 		double 				NOT NULL 	COMMENT ' ',
	`compras.n.control` 	char(20)		 	NOT NULL 	COMMENT ' ',
	`compras.facgasto` 		bit 				NOT NULL 	COMMENT ' ',
	`compras.aux01` 		double 				NOT NULL 	COMMENT ' ',
	`compras.aux02` 		varchar(30)		 	NOT NULL 	COMMENT ' ',
	`compras.salestax` 		char(08) 			NOT NULL 	COMMENT ' ',
	`compras.origen` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`compras.origen.d` 		char(20)		 	NOT NULL 	COMMENT ' ',
	`compras.sta.prod` 		char(01) 			NULL 		COMMENT ' ',
	`compras.fec.reg` 		datetime		 	NOT NULL 	COMMENT ' ',
	`compras.numplaexp` 	varchar(20) 		NOT NULL 	COMMENT ' ',
	`compras.numexpimp` 	varchar(20) 		NOT NULL 	COMMENT ' ',
	`compras.telefono` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`compras.inf.imp` 		text 				NOT NULL 	COMMENT ' ',
	`compras.import` 		int 				NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`compras.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla control de Compras`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.conislr`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.conislr` (
	`conislr.co.islr` 		char(06)		 			NOT NULL 							COMMENT ' ',
	`conislr.islr.des` 		varchar(60) 				NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.islr.des2` 	varchar(250) 				NOT NULL	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.campo1` 		varchar(60) 				NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.campo2` 		varchar(60) 				NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.campo3` 		varchar(60) 				NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.campo4` 		varchar(60) 				NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.co.us.ad` 		char(06) 					NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.fe.us.ad` 		datetime 					NOT NULL 	DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime()))	COMMENT ' ',
	`conislr.co.us.mo` 		char(06) 					NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.fe.us.mo` 		datetime 					NOT NULL 	DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime()))	COMMENT ' ',
	`conislr.co.us.el` 		char(06)					NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.fe.us.el` 		datetime 					NOT NULL 	DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime()))	COMMENT ' ',
	`conislr.revisado` 		char(01) 					NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.trasnfe` 		char(01) 					NOT NULL 	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.co.sucu` 		char(06) 					NOT NULL	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.numeral` 		char(06) 					NOT NULL	DEFAULT (space((1)))	COMMENT ' ',
	`conislr.literal` 		char(06) 					NOT NULL	DEFAULT (space((1)))	COMMENT ' ',
 	PRIMARY KEY (`conislr.co.islr`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Codigos ISLR`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.conauto`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.conauto` (
	`conauto.cod.cta` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`conauto.mes` 			int 						NOT NULL 	COMMENT ' ',
	`conauto.ano` 			int 						NOT NULL 	COMMENT ' ',
	`conauto.fec.load` 		datetime		 			NOT NULL 	COMMENT ' ',
	`conauto.status` 		char(03) 					NOT NULL 	COMMENT ' ',
	`conauto.descrip` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`conauto.archivo` 		text 						NOT NULL 	COMMENT ' ',
	`conauto.saldo.ec` 		double 						NOT NULL 	COMMENT ' ',
	`conauto.Revisado` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`conauto.Trasnfe` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`conauto.Co.Us.ad` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`conauto.Fe.Us.ad` 		datetime		 			NOT NULL 	COMMENT ' ',
	`conauto.Co.Us.Mo` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`conauto.Fe.Us.Mo` 		datetime		 			NOT NULL 	COMMENT ' ',
	`conauto.Co.Us.El` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`conauto.Fe.Us.El` 		datetime		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`conauto.cod.cta`, `conauto.mes`, `conauto.ano`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Conciliacion Automatica`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.concban`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.concban` (
	`concban.cod.cta` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`concban.mes` 			int 						NOT NULL 	COMMENT ' ',
	`concban.ano` 			int 						NOT NULL 	COMMENT ' ',
	`concban.reng.num` 		int 						NOT NULL 	COMMENT ' ',
	`concban.mov.num` 		int 						NOT NULL 	COMMENT ' ',
	`concban.fec.conc` 		datetime		 			NOT NULL 	COMMENT ' ',
	`concban.con.auto` 		bit 						NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`concban.cod.cta`, `concban.mes`, `concban.ano`, `concban.reng.num`, `concban.mov.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Conciliacion Bancaria`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.condicio`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.condicio` (
	`condicio.co.cond` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`condicio.cond.des` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`condicio.dias.cred` 	int 						NOT NULL 	COMMENT ' ',
	`condicio.dis.cen` 		text 						NOT NULL 	COMMENT ' ',
	`condicio.campo1` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`condicio.campo2` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`condicio.campo3` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`condicio.campo4` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`condicio.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`condicio.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`condicio.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`condicio.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`condicio.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`condicio.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`condicio.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`condicio.trasnfe` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`condicio.co.sucu` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`condicio.row.id` 		timestamp 					NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`condicio.co.cond`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Condiciones`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.convi`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ambdev` (
CREATE TABLE [dbo`.[convi`(
	`convi.cod` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`convi.des` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`convi.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`convi.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`convi.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`convi.campo1` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`convi.campo2` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`convi.campo3` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`convi.campo4` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`convi.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`convi.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`convi.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`convi.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`convi.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`convi.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`convi.cod`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Conversiones`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.costimp`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.costimp` (
CREATE TABLE `costimp.dbo`.[costimp`(
	`costimp.co.art` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`costimp.nivel` 	char(04)		 			NOT NULL 	COMMENT ' ',
	`costimp.monto` 	double 						NOT NULL 	COMMENT ' ',
	`costimp.nro.doc` 	int 						NOT NULL 	COMMENT ' ',
	`costimp.reng.doc` 	int 						NOT NULL 	COMMENT ' ',
	`costimp.tipo.doc` 	char(04)		 			NOT NULL 	COMMENT ' ',
	`costimp.fecha` 	datetime		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`costimp.co.art`, `costimp.nivel`, `costimp.nro.doc`, `costimp.reng.doc`, `costimp.tipo.doc`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Costo Importaciones`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.cotizc`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cotizc` (
	`cotizc.fact.num` 	int 						NOT NULL 	COMMENT ' ',
	`cotizc.contrib` 	bit 						NOT NULL 	COMMENT ' ',
	`cotizc.nombre` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.rif` 		char(18)		 			NOT NULL 	COMMENT ' ',
	`cotizc.nit` 		char(18)		 			NOT NULL 	COMMENT ' ',
	`cotizc.status` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizc.comentario` text 						NOT NULL 	COMMENT ' ',
	`cotizc.descrip` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.saldo` 		double 						NOT NULL 	COMMENT ' ',
	`cotizc.fec.emis` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizc.fec.venc` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizc.co.cli` 	char(10)		 			NOT NULL 	COMMENT ' ',
	`cotizc.co.ven` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.co.tran` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.dir.ent` 	text						NOT NULL 	COMMENT ' ',
	`cotizc.forma.pag` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.tot.bruto` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.tot.neto` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.glob.dsc` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.tot.reca` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.porc.gdesc` char(15)		 			NOT NULL 	COMMENT ' ',
	`cotizc.porc.reca` 	char(15)		 			NOT NULL 	COMMENT ' ',
	`cotizc.total.uc` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.total.cp` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.tot.flete` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.monto.dev` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.totklu` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.anulada` 	bit 						NOT NULL 	COMMENT ' ',
	`cotizc.impresa` 	bit 						NOT NULL 	COMMENT ' ',
	`cotizc.iva` 		double 						NOT NULL 	COMMENT ' ',
	`cotizc.iva.dev` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.feccom` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizc.numcom` 	int 						NOT NULL 	COMMENT ' ',
	`cotizc.tasa` 		double 						NOT NULL 	COMMENT ' ',
	`cotizc.moneda` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.cta.contab` char(15)		 			NOT NULL 	COMMENT ' ',
	`cotizc.seriales` 	int 						NOT NULL 	COMMENT ' ',
	`cotizc.tasag` 		double 						NOT NULL 	COMMENT ' ',
	`cotizc.tasag10` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.tasag20` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.campo5` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.campo6` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.campo7` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.campo8` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizc.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizc.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizc.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizc.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizc.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizc.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizc.mon.ilc` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.otros1` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.otros2` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.otros3` 	double 						NOT NULL 	COMMENT ' ',
	`cotizc.aux01` 		double 						NOT NULL 	COMMENT ' ',
	`cotizc.aux02` 		varchar(30)		 			NOT NULL 	COMMENT ' ',
	`cotizc.salestax` 	char(08) 					NOT NULL 	COMMENT ' ',
	`cotizc.origen` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizc.origen.d` 	char(20)		 			NOT NULL 	COMMENT ' ',
	`cotizc.sta.prod` 	char(01) 					NULL 		COMMENT ' ',
	`cotizc.telefono` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`cotizc.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Cotizaciones Compras`; 
-- 40101 SET character.set.client = @saved.cs.client */;CONSTRAINT [PK.cobpvta` PRIMARY KEY CLUSTERED 

DROP TABLE IF EXISTS `dynerp.cotizp`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cotizp` (
	`cotizp.fact.num` 	int 						NOT NULL 	COMMENT ' ',
	`cotizp.contrib` 	bit 						NOT NULL 	COMMENT ' ',
	`cotizp.nombre` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.rif` 		char(18)		 			NOT NULL 	COMMENT ' ',
	`cotizp.nit` 		char(18)		 			NOT NULL 	COMMENT ' ',
	`cotizp.status` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizp.comentario` text 						NOT NULL 	COMMENT ' ',
	`cotizp.descrip` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.saldo` 		double 						NOT NULL 	COMMENT ' ',
	`cotizp.fec.emis` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizp.fec.venc` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizp.co.cli` 	char(10)		 			NOT NULL 	COMMENT ' ',
	`cotizp.co.ven` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.co.tran` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.dir.ent` 	text 						NOT NULL 	COMMENT ' ',
	`cotizp.forma.pag` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.tot.bruto` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.tot.neto` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.glob.des` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.tot.reca` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.porc.gdesc` char(15)		 			NOT NULL 	COMMENT ' ',
	`cotizp.porc.reca` 	char(15)		 			NOT NULL 	COMMENT ' ',
	`cotizp.total.uc` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.total.cp` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.tot.flete` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.monto.dev` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.totklu` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.anulada` 	bit 						NOT NULL 	COMMENT ' ',
	`cotizp.impresa` 	bit 						NOT NULL 	COMMENT ' ',
	`cotizp.iva` 		double 						NOT NULL 	COMMENT ' ',
	`cotizp.iva.dev` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.feccom` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizp.numcom` 	int 						NOT NULL 	COMMENT ' ',
	`cotizp.tasa` 		double 						NOT NULL 	COMMENT ' ',
	`cotizp.moneda` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.cta.contab` char(15)		 			NOT NULL 	COMMENT ' ',
	`cotizp.seriales` 	int 						NOT NULL 	COMMENT ' ',
	`cotizp.tasag` 		double 						NOT NULL 	COMMENT ' ',
	`cotizp.tasag10` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.tasag20` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.campo5` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.campo6` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.campo7` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.campo8` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`cotizp.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizp.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizp.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`cotizp.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizp.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizp.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`cotizp.mon.ilc` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.otros1` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.otros2` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.otros3` 	double 						NOT NULL 	COMMENT ' ',
	`cotizp.aux01` 		double 						NOT NULL 	COMMENT ' ',
	`cotizp.aux02` 		varchar(30)		 			NOT NULL 	COMMENT ' ',
	`cotizp.salestax` 	char(08) 					NOT NULL 	COMMENT ' ',
	`cotizp.origen` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`cotizp.origen.d` 	char(20)		 			NOT NULL 	COMMENT ' ',
	`cotizp.sta.prod` 	char(01) 					NULL 		COMMENT ' ',
	`cotizp.telefono` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`cotizp.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Cotizaciones Productos`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.crfis`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.crfis` (
	`crfis.co.art` 		char(30)		 	NOT NULL 	COMMENT ' ',
	`crfis.cred.fis` 	bit 				NOT NULL 	COMMENT ' ',
	`crfis.co.us.ad` 	char(06) 			NULL 		COMMENT ' ',
	`crfis.fe.us.ad` 	datetime 			NULL 		COMMENT ' ',
	`crfis.co.us.mo` 	char(06) 			NULL 		COMMENT ' ',
	`crfis.fe.us.mo` 	datetime 			NULL 		COMMENT ' ',
	`crfis.co.us.el` 	char(06) 			NULL 		COMMENT ' ',
	`crfis.fe.us.el` 	datetime 			NULL 		COMMENT ' ',
	`crfis.trasnfe` 	nchar(01) 			NULL 		COMMENT ' ',
	`crfis.revisado` 	nchar(01) 			NULL 		COMMENT ' ',
	`crfis.campo1` 		char(60) 			NULL	 	COMMENT ' ',
	`crfis.campo2` 		char(60) 			NULL 		COMMENT ' ',
	`crfis.campo3` 		char(60) 			NULL 		COMMENT ' ',
	`crfis.campo4` 		char(60) 			NULL 		COMMENT ' ',
	`crfis.campo5` 		char(60) 			NULL 		COMMENT ' ',
	`crfis.campo6` 		char(60) 			NULL 		COMMENT ' ',
	`crfis.campo7` 		char(60) 			NULL 		COMMENT ' ',
	`crfis.campo8` 		char(60) 			NULL 		COMMENT ' ',
 	PRIMARY KEY (`crfis.co.art`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Credito Fiscal`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ctaing`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ctaing` (
	`ctaing.co.ingr` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`ctaing.descrip` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`ctaing.cta.contab` char(20)		 			NOT NULL 	COMMENT ' ',
	`ctaing.dis.cen` 	text 						NOT NULL 	COMMENT ' ',
	`ctaing.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`ctaing.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`ctaing.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`ctaing.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`ctaing.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`ctaing.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`ctaing.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`ctaing.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`ctaing.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`ctaing.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`ctaing.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`ctaing.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`ctaing.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`ctaing.co.islr` 	char(06)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`ctaing.co.ingr`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Ingresos`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.cuentas`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.cuentas` (
	`cuentas.cod.cta` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`cuentas.co.banco` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`cuentas.num.cta` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`cuentas.dis.cen` 		text 					NOT NULL 	COMMENT ' ',
	`cuentas.sucursal` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cuentas.cta.contab` 	char(20)		 		NOT NULL 	COMMENT ' ',
	`cuentas.telefono` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cuentas.mes.ini` 		datetime		 		NOT NULL 	COMMENT ' ',
	`cuentas.saldo.i` 		double 					NOT NULL 	COMMENT ' ',
	`cuentas.saldo.ic` 		double 					NOT NULL 	COMMENT ' ',
	`cuentas.saldo.a` 		double 					NOT NULL 	COMMENT ' ',
	`cuentas.saldo.c` 		double 					NOT NULL 	COMMENT ' ',
	`cuentas.moneda` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`cuentas.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cuentas.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cuentas.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cuentas.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`cuentas.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`cuentas.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`cuentas.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`cuentas.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`cuentas.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`cuentas.fe.us.el`		datetime		 		NOT NULL 	COMMENT ' ',
	`cuentas.revisado`		char(01)		 		NOT NULL 	COMMENT ' ',
	`cuentas.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`cuentas.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`cuentas.inactivo` 		bit 					NOT NULL 	COMMENT ' ',
	`cuentas.row.id` 		timestamp 				NOT NULL 	COMMENT ' ',
	`cuentas.usa.chra` 		bit 					NOT NULL 	COMMENT ' ',
	`cuentas.ejec.cu` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`cuentas.direccion` 	varchar(120) 			NOT NULL 	COMMENT ' ',
	`cuentas.email` 		char(40) 				NOT NULL 	COMMENT ' ',
	`cuentas.saldo.co` 		double 					NOT NULL 	COMMENT ' ',
	`cuentas.tipo.cu` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`cuentas.fecini` 		datetime		 		NOT NULL 	COMMENT ' ',
	`cuentas.fec.chra` 		datetime		 		NOT NULL 	COMMENT ' ',
	`cuentas.foranea` 		bit 					NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`cuentas.cod.cta`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Cuentas`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.depcaj`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.depcaj` (
	`depcaj.dep.num` 	int 						NOT NULL 	COMMENT ' ',
	`depcaj.deposito` 	char(10)		 			NOT NULL 	COMMENT ' ',
	`depcaj.fecha` 		datetime		 			NOT NULL 	COMMENT ' ',
	`depcaj.movi` 		int 						NOT NULL 	COMMENT ' ',
	`depcaj.cod.cta` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.cod.caja` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.movie` 		int 						NOT NULL 	COMMENT ' ',
	`depcaj.total.efec` double 						NOT NULL 	COMMENT ' ',
	`depcaj.total.cheq` double	 					NOT NULL 	COMMENT ' ',
	`depcaj.total.tarj` double	 					NOT NULL 	COMMENT ' ',
	`depcaj.che.dev` 	int 						NOT NULL 	COMMENT ' ',
	`depcaj.cta.egre` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.feccom` 	datetime		 			NOT NULL 	COMMENT ' ',
	`depcaj.numcom` 	int 						NOT NULL 	COMMENT ' ',
	`depcaj.cta.cont01` char(20)			 		NOT NULL 	COMMENT ' ',
	`depcaj.cta.cont02` char(20)			 		NOT NULL 	COMMENT ' ',
	`depcaj.cta.cont03` char(20)			 		NOT NULL 	COMMENT ' ',
	`depcaj.dis.cen` 	text 						NOT NULL 	COMMENT ' ',
	`depcaj.moneda` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.tasa` 		decimal(18,10) 				NOT NULL 	COMMENT ' ',
	`depcaj.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.campo5` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.campo6` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.campo7` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.campo8` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`depcaj.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`depcaj.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`depcaj.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`depcaj.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`depcaj.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`depcaj.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`depcaj.aux01` 		double 						NOT NULL 	COMMENT ' ',
	`depcaj.aux02` 		varchar(30)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`depcaj.dep.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Depositos/Caja`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.descuen`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.descuen` (
	`descuen.co.des` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.tipo.cli` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`descuen.tipo.des` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`descuen.hasta1` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.hasta2` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.hasta3` 	double	 					NOT NULL 	COMMENT ' ',
	`descuen.hasta4` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.hasta5` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.porc1` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.porc2` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.porc3` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.porc4` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.porc5` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.porc6` 	double 						NOT NULL 	COMMENT ' ',
	`descuen.campo1` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.campo2` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.campo3` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.campo4` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.campo5` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.campo6` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.campo7` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.campo8` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`descuen.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`descuen.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`descuen.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`descuen.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`descuen.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`descuen.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`descuen.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`descuen.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`descuen.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`descuen.row.id` 	timestamp 					NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`descuen.tipo.des`, `descuen.tipo.cli`, `descuen.co.des`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de Depositos/Caja`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.devcli`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.devcli` (
	`devcli.fact.num` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.contrib` 		bit 					NOT NULL 	COMMENT ' ',
	`devcli.nombre` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.rif` 			char(18)		 		NOT NULL 	COMMENT ' ',
	`devcli.nit` 			char(18)		 		NOT NULL 	COMMENT ' ',
	`devcli.num.control` 	int 					NOT NULL 	COMMENT ' ',
	`devcli.status` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`devcli.comentario` 	text 					NOT NULL 	COMMENT ' ',
	`devcli.descrip` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.saldo` 			double 					NOT NULL 	COMMENT ' ',
	`devcli.fec.emis` 		datetime		 		NOT NULL 	COMMENT ' ',
	`devcli.fec.venc` 		datetime		 		NOT NULL 	COMMENT ' ',
	`devcli.co.cli` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`devcli.co.ven` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.co.tran` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.dir.ent` 		text 					NOT NULL 	COMMENT ' ',
	`devcli.forma.pag` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.tot.bruto` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.tot.neto` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.glob.des` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.tot.reca` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.porc.gdesc` 	char(15)	 			NOT NULL 	COMMENT ' ',
	`devcli.porc.reca` 		char(15)	 			NOT NULL 	COMMENT ' ',
	`devcli.total.uc` 		double	 				NOT NULL 	COMMENT ' ',
	`devcli.total.cp` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.tot.flete` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.monto.dev` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.totklu` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.anulada` 		bit 					NOT NULL 	COMMENT ' ',
	`devcli.impresa` 		bit 					NOT NULL 	COMMENT ' ',
	`devcli.iva` 			double 					NOT NULL 	COMMENT ' ',
	`devcli.iva.dev` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.feccom` 		datetime		 		NOT NULL 	COMMENT ' ',
	`devcli.numcom` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.tasa` 			double 					NOT NULL 	COMMENT ' ',
	`devcli.moneda` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.dis.cen` 		text 					NOT NULL 	COMMENT ' ',
	`devcli.nc.num` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.seriales` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.tasag` 			double 					NOT NULL 	COMMENT ' ',
	`devcli.tasag10`		double 					NOT NULL 	COMMENT ' ',
	`devcli.tasag20` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.campo5` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.campo6` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.campo7` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.campo8` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`devcli.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`devcli.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`devcli.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`devcli.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`devcli.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`devcli.numcon` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`devcli.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`devcli.mon.ilc` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.otros1` 		double	 				NOT NULL 	COMMENT ' ',
	`devcli.otros2` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.otros3` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.num.cob` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.mov.caj` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.mov.ban` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.saldoNCR` 		double 					NOT NULL 	COMMENT ' ',
	`devcli.num.turno` 		int 					NOT NULL 	COMMENT ' ',
	`devcli.aux01` 			double 					NOT NULL 	COMMENT ' ',
	`devcli.aux02` 			varchar(30)		 		NOT NULL 	COMMENT ' ',
	`devcli.salestax` 		char(08) 				NOT NULL 	COMMENT ' ',
	`devcli.origen` 		char(01)	 			NOT NULL 	COMMENT ' ',
	`devcli.origen.d` 		char(20)	 			NOT NULL 	COMMENT ' ',
	`devcli.sta.prod` 		char(01) 				NULL	 	COMMENT ' ',
	`devcli.telefono` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`devcli.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de DClientes`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.devpro`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.devpro` (
	`devpro.fact.num` 	int 						NOT NULL 	COMMENT ' ',
	`devpro.contrib` 	bit 						NOT NULL 	COMMENT ' ',
	`devpro.nombre` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.rif` 		char(18)		 			NOT NULL 	COMMENT ' ',
	`devpro.nit` 		char(18)		 			NOT NULL 	COMMENT ' ',
	`devpro.status` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`devpro.comentario` text 						NOT NULL 	COMMENT ' ',
	`devpro.descrip` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.saldo` 		double 						NOT NULL 	COMMENT ' ',
	`devpro.fec.emis` 	datetime		 			NOT NULL 	COMMENT ' ',
	`devpro.fec.venc` 	datetime		 			NOT NULL 	COMMENT ' ',
	`devpro.co.cli` 	char(10)		 			NOT NULL 	COMMENT ' ',
	`devpro.co.ven` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.co.tran` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.dir.ent` 	text 						NOT NULL 	COMMENT ' ',
	`devpro.forma.pag` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.tot.bruto` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.tot.neto` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.glob.des` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.tot.reca` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.porc.gdesc` char(15)		 			NOT NULL 	COMMENT ' ',
	`devpro.porc.reca` 	char(15)		 			NOT NULL 	COMMENT ' ',
	`devpro.total.uc` 	double		 				NOT NULL 	COMMENT ' ',
	`devpro.total.cp` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.tot.flete` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.monto.dev` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.totklu` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.anulada` 	bit 						NOT NULL 	COMMENT ' ',
	`devpro.impresa` 	bit 						NOT NULL 	COMMENT ' ',
	`devpro.iva` 		double 						NOT NULL 	COMMENT ' ',
	`devpro.iva.dev` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.feccom` 	datetime		 			NOT NULL 	COMMENT ' ',
	`devpro.numcom` 	int 						NOT NULL 	COMMENT ' ',
	`devpro.tasa` 		double 						NOT NULL 	COMMENT ' ',
	`devpro.moneda` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.dis.cen` 	text 						NOT NULL 	COMMENT ' ',
	`devpro.nc.num` 	int 						NOT NULL 	COMMENT ' ',
	`devpro.seriales` 	int 						NOT NULL 	COMMENT ' ',
	`devpro.tasag` 		double 						NOT NULL 	COMMENT ' ',
	`devpro.tasag10` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.tasag20` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.campo5` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.campo6` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.campo7` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.campo8` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`devpro.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`devpro.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`devpro.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`devpro.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`devpro.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`devpro.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`devpro.mon.ilc` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.otros1` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.otros2` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.otros3` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.num.cob` 	int 						NOT NULL 	COMMENT ' ',
	`devpro.mov.caj` 	int 						NOT NULL 	COMMENT ' ',
	`devpro.mov.ban` 	int 						NOT NULL 	COMMENT ' ',
	`devpro.saldoNCR` 	double 						NOT NULL 	COMMENT ' ',
	`devpro.n.control` 	char(20)		 			NOT NULL 	COMMENT ' ',
	`devpro.aux01` 		double 						NOT NULL 	COMMENT ' ',
	`devpro.aux02` 		varchar(30)		 			NOT NULL 	COMMENT ' ',
	`devpro.salestax` 	char(08) 					NOT NULL 	COMMENT ' ',
	`devpro.origen` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`devpro.origen.d` 	char(20)		 			NOT NULL 	COMMENT ' ',
	`devpro.factura` 	char(25) 					NOT NULL 	COMMENT ' ',
	`devpro.sta.prod` 	char(01) 					NULL        COMMENT ' ',
	`devpro.telefono` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`devpro.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de PClientes`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.dmc`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.dmc` (
	`dmc.num` 			int 						NOT NULL 	COMMENT ' ',
	`dmc.tipo.dmc` 		int 						NOT NULL 	COMMENT ' ',
	`dmc.fec.emis` 		datetime		 			NOT NULL 	COMMENT ' ',
	`dmc.co.ag.im` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.ag.ex` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.ent.a` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.sal.d` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.trans` 		char(20)		 			NOT NULL 	COMMENT ' ',
	`dmc.guia.emb` 		char(20)		 			NOT NULL 	COMMENT ' ',
	`dmc.fact.num` 		int 						NOT NULL 	COMMENT ' ',
	`dmc.fec.fact` 		datetime		 			NOT NULL 	COMMENT ' ',
	`dmc.co.trasb` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.reg.num` 		char(20)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.pais` 		char(20)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.pto` 		char(20)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.pa.od` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.pt.od` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.pt.tr` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.pt.en` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.pt.sa` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.dest` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.dr.de` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.em` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.dr.em` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.tot.fob` 		double 						NOT NULL 	COMMENT ' ',
	`dmc.tot.flet` 		double 						NOT NULL 	COMMENT ' ',
	`dmc.tot.seg` 		double		 				NOT NULL 	COMMENT ' ',
	`dmc.tot.gast` 		double 						NOT NULL 	COMMENT ' ',
	`dmc.tot.cif` 		double 						NOT NULL 	COMMENT ' ',
	`dmc.itbms` 		double 						NOT NULL 	COMMENT ' ',
	`dmc.des.rec` 		double 						NOT NULL 	COMMENT ' ',
	`dmc.status` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`dmc.anulada` 		bit 						NOT NULL 	COMMENT ' ',
	`dmc.impresa` 		bit 						NOT NULL 	COMMENT ' ',
	`dmc.tipo.doc` 		char(20)		 			NOT NULL 	COMMENT ' ',
	`dmc.co.us.ad` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.fe.us.ad` 		datetime		 			NOT NULL 	COMMENT ' ',
	`dmc.co.us.mo` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.fe.us.mo` 		datetime		 			NOT NULL 	COMMENT ' ',
	`dmc.co.us.el` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.fe.us.el` 		datetime		 			NOT NULL 	COMMENT ' ',
	`dmc.co.sucu` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`dmc.trasnfe` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`dmc.revisado` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo1` 		char(60)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo2` 		char(60)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo3` 		char(60)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo4` 		char(60)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo5` 		char(60)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo6` 		char(60)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo7` 		char(60)		 			NOT NULL 	COMMENT ' ',
	`dmc.campo8` 		char(60)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`dmc.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla de PClientes`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.doccxc`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.doccxc` (
	`doccxc.tipo.doc` 		char(04)		 		NOT NULL 	COMMENT ' ',
	`doccxc.nro.doc` 		int 					NOT NULL 	COMMENT ' ',
	`doccxc.anulado`		bit 					NOT NULL 	COMMENT ' ',
	`doccxc.movi` 			int 					NOT NULL 	COMMENT ' ',
	`doccxc.aut` 			bit 					NOT NULL 	COMMENT ' ',
	`doccxc.num.control` 	int 					NOT NULL 	COMMENT ' ',
	`doccxc.co.cli` 		char(10)	 			NOT NULL 	COMMENT ' ',
	`doccxc.contrib` 		bit 					NOT NULL 	COMMENT ' ',
	`doccxc.fec.emis` 		datetime	 			NOT NULL 	COMMENT ' ',
	`doccxc.fec.venc` 		datetime				NOT NULL 	COMMENT ' ',
	`doccxc.observa` 		varchar(120) 			NOT NULL 	COMMENT ' ',
	`doccxc.doc.orig` 		char(04)	 			NOT NULL 	COMMENT ' ',
	`doccxc.nro.orig` 		int 					NOT NULL 	COMMENT ' ',
	`doccxc.co.ban` 		char(06)				NOT NULL 	COMMENT ' ',
	`doccxc.nro.che` 		char(15)				NOT NULL 	COMMENT ' ',
	`doccxc.co.ven` 		char(06)				NOT NULL 	COMMENT ' ',
	`doccxc.tipo` 			char(01)	 			NOT NULL 	COMMENT ' ',
	`doccxc.tasa` 			double 					NOT NULL 	COMMENT ' ',
	`doccxc.moneda` 		char(06)				NOT NULL 	COMMENT ' ',
	`doccxc.monto.imp` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.monto.gen` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.monto.a1` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.monto.a2` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.monto.bru` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.descuentos` 	char(15)				NOT NULL 	COMMENT ' ',
	`doccxc.monto.des` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.recargo` 		char(15)		 		NOT NULL 	COMMENT ' ',
	`doccxc.monto.rec` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.monto.otr` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.monto.net` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.saldo` 			double 					NOT NULL 	COMMENT ' ',
	`doccxc.feccom` 		datetime	 			NOT NULL 	COMMENT ' ',
	`doccxc.numcom` 		int 					NOT NULL 	COMMENT ' ',
	`doccxc.dis.cen` 		text 					NOT NULL 	COMMENT ' ',
	`doccxc.comis1` 		double	 				NOT NULL 	COMMENT ' ',
	`doccxc.comis2` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.comis3` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.comis4` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.adicional` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.campo5` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.campo6` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.campo7` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.campo8` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxc.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxc.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxc.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxc.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxc.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxc.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxc.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`doccxc.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`doccxc.numcon` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`doccxc.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxc.mon.ilc` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.otros1` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.otros2` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.otros3` 		double	 				NOT NULL 	COMMENT ' ',
	`doccxc.reng.si` 		bit 					NOT NULL 	COMMENT ' ',
	`doccxc.comis5` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.comis6` 		double 					NOT NULL 	COMMENT ' ',
	`doccxc.row.id` 		timestamp 				NOT NULL 	COMMENT ' ',
	`doccxc.aux01` 			double 					NOT NULL 	COMMENT ' ',
	`doccxc.aux02` 			varchar(30)		 		NOT NULL 	COMMENT ' ',
	`doccxc.salestax` 		char(08) 				NOT NULL 	COMMENT ' ',
	`doccxc.origen` 		char(01) 				NULL 		COMMENT ' ',
	`doccxc.origen.d` 		char(20) 				NULL 		COMMENT ' ',
	`doccxc.fec.reg` 		datetim		 			NOT NULL 	COMMENT ' ',
	`doccxc.prov.ter`		char(10		 			NOT NULL 	COMMENT ' ',
	`doccxc.reng.ter` 		int 					NOT NULL 	COMMENT ' ',
	`doccxc.impfis` 		char(20)	 			NOT NULL 	COMMENT ' ',
	`doccxc.impfisfac` 		char(20)	 			NOT NULL 	COMMENT ' ',
	`doccxc.imp.nro.z` 		char(15)	 			NOT NULL 	COMMENT ' ',
	`doccxc.ven.ter` 		bit 					NOT NULL 	COMMENT ' ',
	`doccxc.fcomproban` 	datetime				NOT NULL 	COMMENT ' ',
	`doccxc.PtoVta` 		bit 					NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`doccxc.tipo.doc`, `doccxc.nro.doc`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Docs CXC`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.doccxp`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.doccxp` (
	`doccxp.tipo.doc` 		char(04)		 		NOT NULL 	COMMENT ' ',
	`doccxp.nro.doc` 		int 					NOT NULL 	COMMENT ' ',
	`doccxp.anulado` 		bit 					NOT NULL 	COMMENT ' ',
	`doccxp.movi` 			int 					NOT NULL 	COMMENT ' ',
	`doccxp.aut` 			bit 					NOT NULL 	COMMENT ' ',
	`doccxp.co.cli` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`doccxp.contrib` 		bit 					NOT NULL 	COMMENT ' ',
	`doccxp.pagar` 			int 					NOT NULL 	COMMENT ' ',
	`doccxp.fec.emis` 		datetime				NOT NULL 	COMMENT ' ',
	`doccxp.fec.venc` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxp.nro.fact` 		char(25) 				NOT NULL 	COMMENT ' ',
	`doccxp.observa` 		varchar(120) 			NOT NULL 	COMMENT ' ',
	`doccxp.doc.orig` 		char(04)		 		NOT NULL 	COMMENT ' ',
	`doccxp.nro.orig` 		int 					NOT NULL 	COMMENT ' ',
	`doccxp.co.ban` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxp.nro.che` 		char(15)		 		NOT NULL 	COMMENT ' ',
	`doccxp.co.ven` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxp.tipo` 			char(01)		 		NOT NULL 	COMMENT ' ',
	`doccxp.tasa` 			double 					NOT NULL 	COMMENT ' ',
	`doccxp.moneda` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxp.monto.imp` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.monto.gen` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.monto.a1` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.monto.a2` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.monto.bru` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.descuentos` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`doccxp.monto.des` 		double	 				NOT NULL 	COMMENT ' ',
	`doccxp.recargo` 		char(15)		 		NOT NULL 	COMMENT ' ',
	`doccxp.monto.rec` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.monto.otr` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.monto.net` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.saldo` 			double 					NOT NULL 	COMMENT ' ',
	`doccxp.feccom`		 	datetime		 		NOT NULL 	COMMENT ' ',
	`doccxp.numcom` 		int	 					NOT NULL 	COMMENT ' ',
	`doccxp.dis.cen` 		text	 				NOT NULL 	COMMENT ' ',
	`doccxp.comis1` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.comis2` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.comis3` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.comis4` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.adicional` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.campo5` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.campo6` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.campo7` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.campo8` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`doccxp.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxp.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxp.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxp.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxp.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxp.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxp.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`doccxp.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`doccxp.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`doccxp.mon.ilc` 		double	 				NOT NULL 	COMMENT ' ',
	`doccxp.otros1` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.otros2` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.otros3` 		double 					NOT NULL 	COMMENT ' ',
	`doccxp.reng.si` 		bit 					NOT NULL 	COMMENT ' ',
	`doccxp.n.control` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`doccxp.aux01` 			double 					NOT NULL 	COMMENT ' ',
	`doccxp.aux02` 			varchar(30)		 		NOT NULL 	COMMENT ' ',
	`doccxp.salestax` 		char(08) 				NOT NULL 	COMMENT ' ',
	`doccxp.origen` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`doccxp.origen.d` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`doccxp.fec.reg` 		datetime		 		NOT NULL 	COMMENT ' ',
	`doccxp.prov.ter` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`doccxp.reng.ter` 		int 					NOT NULL 	COMMENT ' ',
	`doccxp.fcomproban` 	datetime		 		NOT NULL 	COMMENT ' ',
	`doccxp.pro.pago` 		text 					NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`doccxp.tipo.doc`, `doccxp.nro.doc`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Docs CXP`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.dppago`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.dppago` (
	`dppago.tipo.cli` 	char(06)					NOT NULL 	COMMENT ' ',
	`dppago.descrip` 	varchar(60)			 		NOT NULL 	COMMENT ' ',
	`dppago.desde1` 	double		 				NOT NULL 	COMMENT ' ',
	`dppago.hasta1` 	double 						NOT NULL 	COMMENT ' ',
	`dppago.hasta2` 	double 						NOT NULL 	COMMENT ' ',
	`dppago.hasta3` 	double	 					NOT NULL 	COMMENT ' ',
	`dppago.hasta4` 	double 						NOT NULL 	COMMENT ' ',
	`dppago.hasta5` 	double	 					NOT NULL 	COMMENT ' ',
	`dppago.porc1` 		double 						NOT NULL 	COMMENT ' ',
	`dppago.porc2` 		double 						NOT NULL 	COMMENT ' ',
	`dppago.porc3` 		double	 					NOT NULL 	COMMENT ' ',
	`dppago.porc4` 		double 						NOT NULL 	COMMENT ' ',
	`dppago.porc5` 		double 						NOT NULL 	COMMENT ' ',
	`dppago.porc6` 		double 						NOT NULL 	COMMENT ' ',
	`dppago.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.campo5` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.campo6` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.campo7` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.campo8` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`dppago.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`dppago.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`dppago.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`dppago.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`dppago.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`dppago.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`dppago.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`dppago.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`dppago.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`dppago.tipo.cli`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Pagos Dep`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.empaques`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.empaques` (
	`empaques.emp.num` 		int 					NOT NULL 	COMMENT ' ',
	`empaques.fecha` 		datetime		 		NOT NULL 	COMMENT ' ',
	`empaques.nro.orig` 	int 					NOT NULL 	COMMENT ' ',
	`empaques.tipo.doc` 	char(04)		 		NOT NULL 	COMMENT ' ',
	`empaques.descrip` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.co.cli` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`empaques.status` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo5`		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo6` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo7` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.campo8` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`empaques.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`empaques.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`empaques.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`empaques.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`empaques.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`empaques.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`empaques.co.envio` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`empaques.fe.envio` 	datetime 				NULL,
	`empaques.co.resrc` 	char(04)		 		NOT NULL 	COMMENT ' ',
	`empaques.fe.resrc` 	datetime 				NULL,
	`empaques.co.resem` 	char(04)		 		NOT NULL 	COMMENT ' ',
	`empaques.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`empaques.fe.emp` 		datetime 				NULL,
	`empaques.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`empaques.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`empaques.anulada` 		bit 					NOT NULL 	COMMENT ' ',
	`empaques.fact.num` 	int 					NOT NULL 	COMMENT ' ',
	`empaques.empr` 		bit 					NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`empaques.emp.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Empaques`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.expimp`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.expimp` (
CREATE TABLE [dbo`.[expimp`(
	`expimp.expo.num` 	int 						NOT NULL 	COMMENT ' ',
	`expimp.expo.nro` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`expimp.descrip` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.co.age` 	char(10)		 			NOT NULL 	COMMENT ' ',
	`expimp.fec.emis` 	datetime		 			NOT NULL 	COMMENT ' ',
	`expimp.campo1` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.campo2`	 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.campo3` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.campo4` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.campo5` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.campo6` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.campo7` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.campo8` 	char(60)		 			NOT NULL 	COMMENT ' ',
	`expimp.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`expimp.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`expimp.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`expimp.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`expimp.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`expimp.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`expimp.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`expimp.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`expimp.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`expimp.imp.num` 	int 						NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`expimp.expo.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Importaciones/Exportaciones`; 
-- 40101 SET character.set.client = @saved.cs.client */; 

DROP TABLE IF EXISTS `dynerp.factura`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.factura` (
	`factura.num` 			int 					NOT NULL 	COMMENT ' ',
	`factura.contrib` 		bit 					NOT NULL 	COMMENT ' ',
	`factura.nombre`		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.rif` 			char(18)		 		NOT NULL 	COMMENT ' ',
	`factura.nit` 			char(18)		 		NOT NULL 	COMMENT ' ',
	`factura.num.control` 	int 					NOT NULL 	COMMENT ' ',
	`factura.status` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`factura.comentario` 	text 					NOT NULL 	COMMENT ' ',
	`factura.descrip` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.saldo` 		double 					NOT NULL 	COMMENT ' ',
	`factura.fec.emis` 		datetime		 		NOT NULL 	COMMENT ' ',
	`factura.fec.venc`	 	datetime		 		NOT NULL 	COMMENT ' ',
	`factura.co.cli` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`factura.co.ven` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`factura.co.tran` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`factura.dir.ent` 		text 					NOT NULL 	COMMENT ' ',
	`factura.forma.pag` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`factura.tot.bruto` 	double 					NOT NULL 	COMMENT ' ',
	`factura.tot.neto` 		double 					NOT NULL 	COMMENT ' ',
	`factura.glob.des` 		double 					NOT NULL 	COMMENT ' ',
	`factura.tot.reca` 		double 					NOT NULL 	COMMENT ' ',
	`factura.porc.gdesc` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`factura.porc.reca` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`factura.total.uc` 		double 					NOT NULL 	COMMENT ' ',
	`factura.total.cp` 		double 					NOT NULL 	COMMENT ' ',
	`factura.tot.flete` 	double 					NOT NULL 	COMMENT ' ',
	`factura.monto.dev` 	double 					NOT NULL 	COMMENT ' ',
	`factura.totklu` 		double 					NOT NULL 	COMMENT ' ',
	`factura.anulada` 		bit 					NOT NULL 	COMMENT ' ',
	`factura.impresa` 		bit 					NOT NULL 	COMMENT ' ',
	`factura.iva` 			double 					NOT NULL 	COMMENT ' ',
	`factura.iva.dev` 		double 					NOT NULL 	COMMENT ' ',
	`factura.feccom` 		datetime				NOT NULL 	COMMENT ' ',
	`factura.numcom` 		int 					NOT NULL 	COMMENT ' ',
	`factura.tasa` 			double 					NOT NULL 	COMMENT ' ',
	`factura.moneda` 		char(06)				NOT NULL 	COMMENT ' ',
	`factura.dis.cen` 		text 					NOT NULL 	COMMENT ' ',
	`factura.vuelto` 		double 					NOT NULL 	COMMENT ' ',
	`factura.seriales` 		int 					NOT NULL 	COMMENT ' ',
	`factura.tasag` 		double 					NOT NULL 	COMMENT ' ',
	`factura.tasag10` 		double 					NOT NULL 	COMMENT ' ',
	`factura.tasag20` 		double 					NOT NULL 	COMMENT ' ',
	`factura.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.campo5` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.campo6` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.campo7` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.campo8` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`factura.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`factura.fe.us.ad`		datetime		 		NOT NULL 	COMMENT ' ',
	`factura.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`factura.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`factura.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`factura.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`factura.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`factura.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`factura.numcon` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`factura.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`factura.mon.ilc` 		double	 				NOT NULL 	COMMENT ' ',
	`factura.otros1` 		double 					NOT NULL 	COMMENT ' ',
	`factura.otros2` 		double 					NOT NULL 	COMMENT ' ',
	`factura.otros3` 		double 					NOT NULL 	COMMENT ' ',
	`factura.num.turno` 	int 					NOT NULL 	COMMENT ' ',
	`factura.aux01` 		double 					NOT NULL 	COMMENT ' ',
	`factura.aux02` 		varchar(30)		 		NOT NULL 	COMMENT ' ',
	`factura.ID` 			int 					NOT NULL 	COMMENT ' ',
	`factura.salestax` 		char(08) 				NOT NULL 	COMMENT ' ',
	`factura.origen` 		char(01) 				NULL 		COMMENT ' ',
	`factura.origen.d` 		char(20) 				NULL 		COMMENT ' ',
	`factura.sta.prod` 		char(01) 				NULL 		COMMENT ' ',
	`factura.fec.reg` 		datetime		 		NOT NULL 	COMMENT ' ',
	`factura.impfis` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`factura.impfisfac` 	char(20)		 		NOT NULL 	COMMENT ' ',
	`factura.imp.nro.z` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`factura.ven.ter` 		bit 					NOT NULL 	COMMENT ' ',
	`factura.ptovta` 		bit 					NOT NULL 	COMMENT ' ',
	`factura.telefono` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`factura.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Facturas (Heading)`; 
-- 40101 SET character.set.client = @saved.cs.client */;  

DROP TABLE IF EXISTS `dynerp.fallas`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.fallas` (
	`fallas.code` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`fallas.falla.des` 	char(50) 					NOT NULL 	COMMENT ' ',
	`fallas.co.lad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fallas.campo1`		char(30)		 			NOT NULL 	COMMENT ' ',
	`fallas.campo2` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`fallas.campo3` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`fallas.campo4` 	char(30)		 			NOT NULL 	COMMENT ' ',
	`fallas.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fallas.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`fallas.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fallas.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`fallas.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fallas.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`fallas.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`fallas.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`fallas.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`fallas.code`, `fallas.co.lad`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Fallas`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.fisico`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.fisico` (
	`fisico.num.fis` 	int 						NOT NULL 	COMMENT ' ',
	`fisico.fecha.fis` 	datetime		 			NOT NULL 	COMMENT ' ',
	`fisico.observac` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.co.alma` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fisico.cerrado` 	bit			 				NOT NULL 	COMMENT ' ',
	`fisico.nro.ajuste` int			 				NOT NULL 	COMMENT ' ',
	`fisico.anulado` 	bit 						NOT NULL 	COMMENT ' ',
	`fisico.moneda` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fisico.tasa` 		double 						NOT NULL 	COMMENT ' ',
	`fisico.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.campo2`	 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.campo5` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.campo6` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.campo7` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.campo8` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`fisico.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fisico.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`fisico.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fisico.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`fisico.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fisico.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`fisico.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`fisico.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`fisico.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`fisico.aux01` 		double 						NOT NULL 	COMMENT ' ',
	`fisico.aux02` 		varchar(30)		 			NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`fisico.num.fis`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Fisico Fact`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.formatos`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.formatos` (
	`formatos.tipo.form` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`formatos.co.form`		char(02) 				NOT NULL 	COMMENT ' ',
	`formatos.descrip` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`formatos.guardo.en` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`formatos.nro.lad` 		int 					NOT NULL 	COMMENT ' ',
	`formatos.lin.encab` 	int 					NOT NULL 	COMMENT ' ',
	`formatos.lin.cuerpo` 	int 					NOT NULL 	COMMENT ' ',
	`formatos.tipo.letra` 	varchar(100)		 	NOT NULL 	COMMENT ' ',
	`formatos.colu.obse` 	int 					NOT NULL 	COMMENT ' ',
	`formatos.cant.obse` 	int 					NOT NULL 	COMMENT ' ',
	`formatos.letr.obse` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`formatos.cant.reng` 	int 					NOT NULL 	COMMENT ' ',
	`formatos.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`formatos.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`formatos.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`formatos.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`formatos.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`formatos.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`formatos.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`formatos.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`formatos.co.form`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Formatos Fact`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.genkit`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.genkit` (
	`genkit.gene.num` 		int 					NOT NULL 	COMMENT ' ',
	`genkit.fecha` 			datetime		 		NOT NULL 	COMMENT ' ',
	`genkit.co.art` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`genkit.tasa` 			double 					NOT NULL 	COMMENT ' ',
	`genkit.moneda` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`genkit.dis.cen` 		text 					NOT NULL 	COMMENT ' ',
	`genkit.feccom` 		datetime		 		NOT NULL 	COMMENT ' ',
	`genkit.numcom` 		int 					NOT NULL 	COMMENT ' ',
	`genkit.total.art` 		double 					NOT NULL 	COMMENT ' ',
	`genkit.stotal.art` 	double 					NOT NULL 	COMMENT ' ',
	`genkit.costo.tot` 		double 					NOT NULL 	COMMENT ' ',
	`genkit.co.alma` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`genkit.aju.ent` 		int 					NOT NULL 	COMMENT ' ',
	`genkit.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.campo5`			varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.campo6` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.campo7` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.campo8` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`genkit.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`genkit.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`genkit.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`genkit.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`genkit.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`genkit.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`genkit.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`genkit.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`genkit.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`genkit.pendiente2` 	double 					NOT NULL 	COMMENT ' ',
	`genkit.total.uni` 		double 					NOT NULL 	COMMENT ' ',
	`genkit.aux01` 			double 					NOT NULL 	COMMENT ' ',
	`genkit.aux02` 			varchar(30)		 		NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`genkit.gene.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Generador Fact`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.histp`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.histp` (
	`histp.id.hist` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`histp.co.plan` 		char(10)		 		NOT NULL 	COMMENT ' ',
	`histp.plan.num` 		char(20)		 		NOT NULL 	COMMENT ' ',
	`histp.des.hist` 		char(60)		 		NOT NULL 	COMMENT ' ',
	`histp.xml.cont` 		text 					NOT NULL 	COMMENT ' ',
	`histp.gen.fec` 		datetime		 		NOT NULL 	COMMENT ' ',
	`histp.mes.plan` 		char(02) 				NOT NULL 	COMMENT ' ',
	`histp.ano.plan` 		char(04)		 		NOT NULL 	COMMENT ' ',
	`histp.can.fech` 		datetime 				NULL 		COMMENT ' ',
	`histp.campo1` 			char(60)				NOT NULL 	COMMENT ' ',
	`histp.campo2` 			char(60)		 		NOT NULL 	COMMENT ' ',
	`histp.campo3` 			char(60)		 		NOT NULL 	COMMENT ' ',
	`histp.campo4` 			char(60)		 		NOT NULL 	COMMENT ' ',
	`histp.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`histp.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`histp.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`histp.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`histp.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`histp.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`histp.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`histp.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`histp.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`histp.id.hist`, `histp.co.plan`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Historicos (Plan)`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.impmun`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.impmun` (
	`impmun.co.imp` 	char(15)		 			NOT NULL 	COMMENT ' ',
	`impmun.imp.des` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`impmun.alicuota` 	decimal(6,2) 				NOT NULL 	COMMENT ' ',
	`impmun.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`impmun.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`impmun.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`impmun.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`impmun.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`impmun.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`impmun.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`impmun.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`impmun.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`impmun.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`impmun.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`impmun.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`impmun.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`impmun.co.alma` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`impmun.n.act` 		char(20)		 			NOT NULL 	COMMENT ' ',
	`impmun.m.trib` 	double 						NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`impmun.co.imp`, `impmun.co.alma`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Imp Municipales`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.import`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.import` (
	`import.num` 		int 						NOT NULL 	COMMENT ' ',
	`import.status` 	char(03) 					NOT NULL 	COMMENT ' ',
	`import.fec.imp` 	datetime		 			NOT NULL 	COMMENT ' ',
	`import.descrip` 	varchar(80) 				NOT NULL 	COMMENT ' ',
	`import.co.mone` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`import.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`import.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`import.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`import.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`import.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`import.co.us.mo` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`import.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`import.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`import.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`import.ajus.num` 	int 						NOT NULL 	COMMENT ' ',
	`import.ncost.b` 	char(04)		 			NOT NULL 	COMMENT ' ',
	`import.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.campo5` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.campo6` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.campo7` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.campo8` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`import.tasa` 		double 						NOT NULL 	COMMENT ' ',
	`import.dgasto` 	int 						NOT NULL 	COMMENT ' ',
	PRIMARY KEY (`import.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Importaciones`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.importac`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.importac` (
	`importac.num` 			int 					NOT NULL 	COMMENT ' ',
	`importac.num.plvc` 	int 					NOT NULL 	COMMENT ' ',
	`importac.tot.plvc` 	float 					NOT NULL 	COMMENT ' ',
	`importac.descrip` 		char(60)		 		NOT NULL 	COMMENT ' ',
	`importac.fec.emis` 	datetime		 		NOT NULL 	COMMENT ' ',
	`importac.otro.cos` 	float 					NOT NULL 	COMMENT ' ',
	`importac.tot.fai` 		float 					NOT NULL 	COMMENT ' ',
	`importac.tot.fci` 		float 					NOT NULL 	COMMENT ' ',
	`importac.tipo.dis` 	int 					NOT NULL 	COMMENT ' ',
	`importac.anulada` 		bit 					NOT NULL 	COMMENT ' ',
	`importac.impresa` 		bit 					NOT NULL 	COMMENT ' ',
	`importac.feccom` 		datetime		 		NOT NULL 	COMMENT ' ',
	`importac.numcom` 		int 					NOT NULL 	COMMENT ' ',
	`importac.campo1` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.campo2` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.campo3` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.campo4` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.campo5` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.campo6` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.campo7` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.campo8` 		char(30)		 		NOT NULL 	COMMENT ' ',
	`importac.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`importac.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`importac.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`importac.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`importac.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`importac.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`importac.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`importac.trasnfe`		char(01)		 		NOT NULL 	COMMENT ' ',
	`importac.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`importac.monto.base` 	double 					NOT NULL 	COMMENT ' ',
	`importac.iva` 			double 					NOT NULL 	COMMENT ' ',
	`importac.planilla` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`importac.comentario` 	text 					NOT NULL 	COMMENT ' ',
	`importac.aux01` 		double 					NOT NULL 	COMMENT ' ',
	`importac.aux02` 		varchar(30)		 		NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`importac.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Importaciones`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.infdmc`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.infdmc` (
	`infdmc.num` 			char(06)		 		NOT NULL 	COMMENT ' ',
	`infdmc.inf.des` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`infdmc.clave` 			char(10)		 		NOT NULL 	COMMENT ' ',
	`infdmc.tipo` 			char(04)		 		NOT NULL 	COMMENT ' ',
	`infdmc.telefono` 		char(15)		 		NOT NULL 	COMMENT ' ',
	`infdmc.co.us.el` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`infdmc.fe.us.el` 		datetime		 		NOT NULL 	COMMENT ' ',
	`infdmc.revisado` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`infdmc.trasnfe` 		char(01)		 		NOT NULL 	COMMENT ' ',
	`infdmc.co.sucu` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`infdmc.co.us.ad` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`infdmc.co.us.mo` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`infdmc.fe.us.ad` 		datetime		 		NOT NULL 	COMMENT ' ',
	`infdmc.fe.us.mo` 		datetime		 		NOT NULL 	COMMENT ' ',
	`infdmc.campo1` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`infdmc.campo2` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`infdmc.campo3` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`infdmc.campo4` 		varchar(60)		 		NOT NULL 	COMMENT ' ',
	`infdmc.dir` 			varchar(60)		 		NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`infdmc.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Informacion DMC`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.kit`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.kit` (
	`kit.num` 			int 						NOT NULL 	COMMENT ' ',
	`kit.co.art` 		char(30)		 			NOT NULL 	COMMENT ' ',
	`kit.fec.emis` 		datetime		 			NOT NULL 	COMMENT ' ',
	`kit.des.kit` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.total.art` 	double 						NOT NULL 	COMMENT ' ',
	`kit.co.us.ad` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`kit.fe.us.ad` 		datetime		 			NOT NULL 	COMMENT ' ',
	`kit.co.us.mo` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`kit.fe.us.mo` 		datetime		 			NOT NULL 	COMMENT ' ',
	`kit.co.us.el` 		char(06)		 			NOT NULL 	COMMENT ' ',
	`kit.fe.us.el` 		datetime		 			NOT NULL 	COMMENT ' ',
	`kit.campo1` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.campo2` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.campo3` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.campo4` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.campo7` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.campo6` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.campo5` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.campo8` 		varchar(60)		 			NOT NULL 	COMMENT ' ',
	`kit.uni.venta` 	char(04)		 			NOT NULL 	COMMENT ' ',
	`kit.costeo` 		int 						NOT NULL 	COMMENT ' ',
	`kit.revisado` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`kit.trasnfe` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`kit.co.sucu` 		char(06)		 			NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`kit.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Kits`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.linart`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.linart` (
	`linart.co.lad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`linart.lin.des` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`linart.dis.cen` 	text 						NOT NULL 	COMMENT ' ',
	`linart.campo1` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`linart.campo2` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`linart.campo3` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`linart.campo4` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`linart.co.us.ad` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`linart.fe.us.ad` 	datetime		 			NOT NULL 	COMMENT ' ',
	`linart.co.us.mo`	char(06)		 			NOT NULL 	COMMENT ' ',
	`linart.fe.us.mo` 	datetime		 			NOT NULL 	COMMENT ' ',
	`linart.co.us.el` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`linart.fe.us.el` 	datetime		 			NOT NULL 	COMMENT ' ',
	`linart.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`linart.trasnfe` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`linart.co.sucu` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`linart.co.imun` 	char(15)		 			NOT NULL 	COMMENT ' ',
	`linart.co.reten` 	char(06)		 			NOT NULL 	COMMENT ' ',
	`linart.comi.lad` 	double 						NOT NULL 	COMMENT ' ',
	`linart.comi.lin2`	numeric(6,2) 				NOT NULL 	COMMENT ' ',
	`linart.row.id` 	timestamp 					NOT NULL 	COMMENT ' ',
	`linart.va` 		bit 						NOT NULL 	COMMENT ' ',
	`linart.i.lindes` 	varchar(60)		 			NOT NULL 	COMMENT ' ',
	`linart.movil` 		bit 						NOT NULL 	COMMENT ' ',
 	PRIMARY KEY (`linart.co.lad`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Linea Art`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.lote`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.lote` (
	`lote.co.art` 		char(30)		 			NOT NULL 	COMMENT ' ',
	`lote.nro` 			char(20)		 			NOT NULL 	COMMENT ' ',
	`lote.fec` 			datetime		 			NOT NULL 	COMMENT ' ',
	`lote.revisado` 	char(01)		 			NOT NULL 	COMMENT ' ',
	`lote.trasnfe` 		char(01)		 			NOT NULL 	COMMENT ' ',
	`lote.prec.vta1` 	double 						NOT NULL 	COMMENT ' ',
	`lote.prec.vta2` 	double 						NOT NULL 	COMMENT ' ',
	`lote.prec.vta3`	double 						NOT NULL 	COMMENT ' ',
	`lote.prec.vta4` 	double		 				NOT NULL 	COMMENT ' ',
	`lote.prec.vta5` 	double 						NOT NULL 	COMMENT ' ',
	`lote.ult.cos.un` 	double 						NOT NULL 	COMMENT ' ',
	`lote.ult.cos.om` 	double 						NOT NULL 	COMMENT ' ',
	`lote.aux01` 		double 						NOT NULL 	COMMENT ' ',
	`lote.aux02` 		char(30)		 			NOT NULL 	COMMENT ' ',
  	PRIMARY KEY (`lote.co.art`, `lote.nro`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Lotes Art`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.moneda`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.moneda` (
	`moneda.cod` 		char(06)		 			NOT NULL 							COMMENT ' ',
	`moneda.des` 		varchar(60) 				NOT NULL DEFAULT (space((1)))		COMMENT ' ',	
	`moneda.cambio` 	double 						NOT NULL DEFAULT ((0))				COMMENT ' ',
	`moneda.campo1` 	varchar(60) 				NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.campo2` 	varchar(60) 				NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.campo3` 	varchar(60) 				NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.campo4` 	varchar(60) 				NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.co.us.ad` 	char(06) 					NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.fe.us.ad` 	datetime 					NOT NULL DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime()))		COMMENT ' ',
	`moneda.co.us.mo` 	char(06) 					NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.fe.us.mo` 	datetime 					NOT NULL DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime()))		COMMENT ' ',
	`moneda.co.us.el` 	char(06) 					NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.fe.us.el` 	datetime 					NOT NULL DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime()))		COMMENT ' ',
	`moneda.revisado` 	char(01) 					NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.trasnfe` 	char(01)				 	NOT NULL DEFAULT (space((1)))		COMMENT ' ',
	`moneda.co.sucu` 	char(06) 					NOT NULL DEFAULT (space((1)))		COMMENT ' ',
   	PRIMARY KEY (`moneda.cod`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Monedas`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.movban`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.movban` (
	`movban.movnum` 	int 					NOT NULL 	COMMENT ' ',
	`movban.codigo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.dep.num` 	int 					NOT NULL 	COMMENT ' ',
	`movban.reng.num` 	int 					NOT NULL 	COMMENT ' ',
	`movban.origen` 	char(03) 				NOT NULL 	COMMENT ' ',
	`movban.tipo.op` 	char(02) 				NOT NULL 	COMMENT ' ',
	`movban.forma.pag` 	char(02) 				NOT NULL 	COMMENT ' ',
	`movban.fecha` 		datetime				NOT NULL 	COMMENT ' ',
	`movban.doc.num` 	char(20)				NOT NULL 	COMMENT ' ',
	`movban.descrip` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movban.monto.d` 	double 					NOT NULL 	COMMENT ' ',
	`movban.monto.h` 	double 					NOT NULL 	COMMENT ' ',
	`movban.idb` 		double 					NOT NULL 	COMMENT ' ',
	`movban.cta.egre` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.cob.pag` 	int 					NOT NULL 	COMMENT ' ',
	`movban.ori.dep` 	bit 					NOT NULL 	COMMENT ' ',
	`movban.dep.con` 	int 					NOT NULL 	COMMENT ' ',
	`movban.fec.con` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movban.banc.tarj` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.cod.ingben` char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.fecha.che` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movban.feccom` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movban.numcom` 	int 					NOT NULL 	COMMENT ' ',
	`movban.dis.cen` 	text 					NOT NULL 	COMMENT ' ',
	`movban.moneda` 	char(06)	 			NOT NULL 	COMMENT ' ',
	`movban.tasa` 		double 					NOT NULL 	COMMENT ' ',
	`movban.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movban.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movban.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movban.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`movban.trasnfe` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`movban.co.sucu` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movban.anulado` 	bit 					NOT NULL 	COMMENT ' ',
	`movban.COMISIONTV` double 					NOT NULL 	COMMENT ' ',
	`movban.IMPUESTOTV` double 					NOT NULL 	COMMENT ' ',
	`movban.moneda2` 	varchar(06)		 		NOT NULL 	COMMENT ' ',
	`movban.tasa2` 		double 					NOT NULL 	COMMENT ' ',
	`movban.aux01` 		double 					NOT NULL 	COMMENT ' ',
	`movban.aux02` 		varchar(30)		 		NOT NULL 	COMMENT ' ',
	`movban.campo1` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movban.campo2` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movban.campo3` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movban.campo4` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
   	PRIMARY KEY (`movban.movnum`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Movimientos Bancarios`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.movcaj`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.movcaj` (
	`movcaj.num` 		int 					NOT NULL 	COMMENT ' ',
	`movcaj.codigo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.dep.num` 	int 					NOT NULL 	COMMENT ' ',
	`movcaj.reng.num`	int 					NOT NULL 	COMMENT ' ',
	`movcaj.mov.afec` 	int 					NOT NULL 	COMMENT ' ',
	`movcaj.mon.dep` 	double 					NOT NULL 	COMMENT ' ',
	`movcaj.origen` 	char(03)				NOT NULL 	COMMENT ' ',
	`movcaj.tipo.op` 	char(02) 				NOT NULL 	COMMENT ' ',
	`movcaj.forma.pag` 	char(02) 				NOT NULL 	COMMENT ' ',
	`movcaj.fecha` 		datetime		 		NOT NULL 	COMMENT ' ',
	`movcaj.doc.num` 	char(20)		 		NOT NULL 	COMMENT ' ',
	`movcaj.descrip` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movcaj.monto.d` 	double 					NOT NULL 	COMMENT ' ',
	`movcaj.monto.h` 	double 					NOT NULL 	COMMENT ' ',
	`movcaj.cta.egre` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.cob.pag` 	int 					NOT NULL 	COMMENT ' ',
	`movcaj.ori.dep` 	bit 					NOT NULL 	COMMENT ' ',
	`movcaj.dep.con` 	int 					NOT NULL 	COMMENT ' ',
	`movcaj.banc.tarj` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.cod.ingben` char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.fecha.che` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movcaj.feccom` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movcaj.numcom` 	int 					NOT NULL 	COMMENT ' ',
	`movcaj.dis.cen` 	text 					NOT NULL 	COMMENT ' ',
	`movcaj.moneda` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.tasa` 		double 					NOT NULL 	COMMENT ' ',
	`movcaj.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movcaj.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movcaj.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`movcaj.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`movcaj.trasnfe` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`movcaj.co.sucu` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.anulado` 	bit 					NOT NULL 	COMMENT ' ',
	`movcaj.num.turno` 	int	 					NOT NULL 	COMMENT ' ',
	`movcaj.movt.ori` 	int 					NOT NULL 	COMMENT ' ',
	`movcaj.movt.gen` 	int 					NOT NULL 	COMMENT ' ',
	`movcaj.tracaja` 	bit 					NOT NULL 	COMMENT ' ',
	`movcaj.operador` 	char(04)		 		NOT NULL 	COMMENT ' ',
	`movcaj.clave` 		char(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.moneda2` 	varchar(06)		 		NOT NULL 	COMMENT ' ',
	`movcaj.tasa2` 		double 					NOT NULL 	COMMENT ' ',
	`movcaj.aux01` 		double 					NOT NULL 	COMMENT ' ',
	`movcaj.aux02` 		varchar(30)		 		NOT NULL 	COMMENT ' ',
	`movcaj.campo1` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movcaj.campo2` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movcaj.campo3` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movcaj.campo4` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`movcaj.doc.sel`	bit 					NOT NULL 	COMMENT ' ',
   	PRIMARY KEY (`movcaj.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Movimientos de Caja`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.notdep`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.notdep` (
	`notdep.fact.num` 	int 					NOT NULL 	COMMENT ' ',
	`notdep.contrib` 	bit 					NOT NULL 	COMMENT ' ',
	`notdep.nombre`	 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.rif` 		char(18)		 		NOT NULL 	COMMENT ' ',
	`notdep.nit` 		char(18)		 		NOT NULL 	COMMENT ' ',
	`notdep.status` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notdep.comentario` text 					NOT NULL 	COMMENT ' ',
	`notdep.descrip` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.saldo` 		double 					NOT NULL 	COMMENT ' ',
	`notdep.fec.emis` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notdep.fec.venc` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notdep.co.cli` 	char(10)		 		NOT NULL 	COMMENT ' ',
	`notdep.co.ven` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.co.tran` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.dir.ent` 	text 					NOT NULL 	COMMENT ' ',
	`notdep.forma.pag` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.tot.bruto` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.tot.neto` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.glob.des` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.tot.reca` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.porc.gdesc` char(15)		 		NOT NULL 	COMMENT ' ',
	`notdep.porc.reca` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`notdep.total.uc` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.total.cp` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.tot.flete` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.monto.dev` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.totklu` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.anulada` 	bit 					NOT NULL 	COMMENT ' ',
	`notdep.impresa` 	bit 					NOT NULL 	COMMENT ' ',
	`notdep.iva` 		double 					NOT NULL 	COMMENT ' ',
	`notdep.iva.dev` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.feccom` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notdep.numcom` 	int 					NOT NULL 	COMMENT ' ',
	`notdep.tasa` 		double 					NOT NULL 	COMMENT ' ',
	`notdep.moneda` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.cta.contab` char(15)		 		NOT NULL 	COMMENT ' ',
	`notdep.seriales` 	int 					NOT NULL 	COMMENT ' ',
	`notdep.tasag` 		double 					NOT NULL 	COMMENT ' ',
	`notdep.tasag10` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.tasag20` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.campo1` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.campo2` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.campo3` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.campo4` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.campo5` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.campo6` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.campo7` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.campo8`	 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notdep.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notdep.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notdep.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notdep.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notdep.trasnfe` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notdep.co.sucu` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notdep.mon.ilc` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.otros1` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.otros2` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.otros3` 	double 					NOT NULL 	COMMENT ' ',
	`notdep.aux01` 		double 					NOT NULL 	COMMENT ' ',
	`notdep.aux02` 		varchar(30)		 		NOT NULL 	COMMENT ' ',
	`notdep.salestax` 	char(08) 				NOT NULL 	COMMENT ' ',
	`notdep.origen` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notdep.origen.d` 	char(20)		 		NOT NULL 	COMMENT ' ',
	`notdep.sta.prod` 	char(01) 				NULL 		COMMENT ' ',
	`notdep.telefono` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
   	PRIMARY KEY (`notdep.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Notas Dep`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.notent`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.notent` (
	`notent.fact.num` 	int 					NOT NULL 	COMMENT ' ',
	`notent.contrib` 	bit 					NOT NULL 	COMMENT ' ',
	`notent.nombre` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.rif` 		char(18)		 		NOT NULL 	COMMENT ' ',
	`notent.nit` 		char(18)		 		NOT NULL 	COMMENT ' ',
	`notent.status` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notent.comentario` text 					NOT NULL 	COMMENT ' ',
	`notent.descrip` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.saldo` 		double 					NOT NULL 	COMMENT ' ',
	`notent.fec.emis` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notent.fec.venc` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notent.co.cli` 	char(10)		 		NOT NULL 	COMMENT ' ',
	`notent.co.ven` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.co.tran` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.dir.ent` 	text 					NOT NULL 	COMMENT ' ',
	`notent.forma.pag` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.tot.bruto` 	double 					NOT NULL 	COMMENT ' ',
	`notent.tot.neto` 	double 					NOT NULL 	COMMENT ' ',
	`notent.glob.des` 	double 					NOT NULL 	COMMENT ' ',
	`notent.tot.reca` 	double 					NOT NULL 	COMMENT ' ',
	`notent.porc.gdesc` char(15)		 		NOT NULL 	COMMENT ' ',
	`notent.porc.reca` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`notent.total.uc` 	double 					NOT NULL 	COMMENT ' ',
	`notent.total.cp` 	double 					NOT NULL 	COMMENT ' ',
	`notent.tot.flete` 	double	 				NOT NULL 	COMMENT ' ',
	`notent.monto.dev` 	double 					NOT NULL 	COMMENT ' ',
	`notent.totklu` 	double 					NOT NULL 	COMMENT ' ',
	`notent.anulada` 	bit 					NOT NULL 	COMMENT ' ',
	`notent.impresa` 	bit 					NOT NULL 	COMMENT ' ',
	`notent.iva` 		double 					NOT NULL 	COMMENT ' ',
	`notent.iva.dev` 	double 					NOT NULL 	COMMENT ' ',
	`notent.feccom` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notent.numcom` 	int 					NOT NULL 	COMMENT ' ',
	`notent.tasa` 		double 					NOT NULL 	COMMENT ' ',
	`notent.moneda` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.cta.contab` char(15)		 		NOT NULL 	COMMENT ' ',
	`notent.seriales` 	int 					NOT NULL 	COMMENT ' ',
	`notent.tasag` 		double 					NOT NULL 	COMMENT ' ',
	`notent.tasag10` 	double 					NOT NULL 	COMMENT ' ',
	`notent.tasag20` 	double 					NOT NULL 	COMMENT ' ',
	`notent.campo1` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.campo2` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.campo3` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.campo4` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.campo5` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.campo6` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.campo7` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.campo8` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notent.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notent.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notent.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notent.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notent.trasnfe` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notent.co.sucu` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notent.numcon` 	char(20)		 		NOT NULL 	COMMENT ' ',
	`notent.mon.ilc` 	double 					NOT NULL 	COMMENT ' ',
	`notent.otros1` 	double 					NOT NULL 	COMMENT ' ',
	`notent.otros2` 	double 					NOT NULL 	COMMENT ' ',
	`notent.otros3` 	double 					NOT NULL 	COMMENT ' ',
	`notent.dis.cen` 	text 					NOT NULL 	COMMENT ' ',
	`notent.aux01` 		double 					NOT NULL 	COMMENT ' ',
	`notent.aux02` 		varchar(30)		 		NOT NULL 	COMMENT ' ',
	`notent.salestax` 	char(08) 				NOT NULL 	COMMENT ' ',
	`notent.origen` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notent.origen.d` 	char(20)		 		NOT NULL 	COMMENT ' ',
	`notent.sta.prod` 	char(01) 				NULL 		COMMENT ' ',
	`notent.telefono` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
    PRIMARY KEY (`notent.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Notas Entrega`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.notrec`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.notrec` (
	`notrec.fact.num` 	int 					NOT NULL 	COMMENT ' ',
	`notrec.factura` 	char(25) 				NOT NULL 	COMMENT ' ',
	`notrec.contrib` 	bit 					NOT NULL 	COMMENT ' ',
	`notrec.dis.cen` 	text 					NOT NULL 	COMMENT ' ',
	`notrec.nombre` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.rif` 		char(18)		 		NOT NULL 	COMMENT ' ',
	`notrec.nit` 		char(18)		 		NOT NULL 	COMMENT ' ',
	`notrec.status` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notrec.comentario` text 					NOT NULL 	COMMENT ' ',
	`notrec.descrip` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.saldo` 		double 					NOT NULL 	COMMENT ' ',
	`notrec.fec.emis` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notrec.fec.venc` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notrec.co.cli` 	char(10)		 		NOT NULL 	COMMENT ' ',
	`notrec.co.ven` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.co.tran` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.dir.ent` 	text 					NOT NULL 	COMMENT ' ',
	`notrec.forma.pag` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.tot.bruto` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.tot.neto` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.glob.des` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.tot.reca` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.porc.gdesc` char(15)		 		NOT NULL 	COMMENT ' ',
	`notrec.porc.reca` 	char(15)		 		NOT NULL 	COMMENT ' ',
	`notrec.total.uc` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.total.cp` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.tot.flete` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.monto.dev` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.totklu` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.anulada` 	bit 					NOT NULL 	COMMENT ' ',
	`notrec.impresa` 	bit 					NOT NULL 	COMMENT ' ',
	`notrec.iva` 		double 					NOT NULL 	COMMENT ' ',
	`notrec.iva.dev` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.feccom` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notrec.numcom` 	int 					NOT NULL 	COMMENT ' ',
	`notrec.tasa` 		double 					NOT NULL 	COMMENT ' ',
	`notrec.moneda` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.cta.contab` char(15)		 		NOT NULL 	COMMENT ' ',
	`notrec.seriales` 	int 					NOT NULL 	COMMENT ' ',
	`notrec.tasag` 		double 					NOT NULL 	COMMENT ' ',
	`notrec.tasag10` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.tasag20` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.campo1` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.campo2` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.campo3` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.campo4` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.campo5` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.campo6` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.campo7` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.campo8` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
	`notrec.co.us.ad` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.fe.us.ad` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notrec.co.us.mo` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.fe.us.mo` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notrec.co.us.el` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.fe.us.el` 	datetime		 		NOT NULL 	COMMENT ' ',
	`notrec.revisado` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notrec.trasnfe` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notrec.co.sucu` 	char(06)		 		NOT NULL 	COMMENT ' ',
	`notrec.mon.ilc` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.otros1` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.otros2` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.otros3` 	double 					NOT NULL 	COMMENT ' ',
	`notrec.aux01` 		double 					NOT NULL 	COMMENT ' ',
	`notrec.aux02` 		varchar(30)		 		NOT NULL 	COMMENT ' ',
	`notrec.salestax` 	char(08) 				NOT NULL 	COMMENT ' ',
	`notrec.origen` 	char(01)		 		NOT NULL 	COMMENT ' ',
	`notrec.origen.d` 	char(20)		 		NOT NULL 	COMMENT ' ',
	`notrec.sta.prod` 	char(01) 				NULL 		COMMENT ' ',
	`notrec.telefono` 	varchar(60)		 		NOT NULL 	COMMENT ' ',
    PRIMARY KEY (`notrec.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Notas Rec`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ordpago`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ordpago` (
	`ordpago.num` 			int 				NOT NULL 	COMMENT ' ',
	`ordpago.status` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordpago.fecha` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordpago.cod.ben` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`ordpago.descrip` 		text 				NOT NULL 	COMMENT ' ',
	`ordpago.forma.pag`		char(02) 			NOT NULL 	COMMENT ' ',
	`ordpago.monto` 		double 				NOT NULL 	COMMENT ' ',
	`ordpago.tipo.imp` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordpago.fec.pag` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordpago.cod.cta` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.cheque` 		char(20)		 	NOT NULL 	COMMENT ' ',
	`ordpago.cod.caja` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.mov.num` 		int 				NOT NULL 	COMMENT ' ',
	`ordpago.cta.egre` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.feccom` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordpago.dis.cen` 		text 				NOT NULL 	COMMENT ' ',
	`ordpago.numcom` 		int 				NOT NULL 	COMMENT ' ',
	`ordpago.tasa` 			double 				NOT NULL 	COMMENT ' ',
	`ordpago.moneda`	 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo1`	 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo2`	 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo3` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo4`	 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo5` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo6`	 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo7` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.campo8`	 	varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordpago.co.us.ad`	 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.fe.us.ad`	 	datetime		 	NOT NULL 	COMMENT ' ',
	`ordpago.co.us.mo`	 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.fe.us.mo`	 	datetime		 	NOT NULL 	COMMENT ' ',
	`ordpago.co.us.el`		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.fe.us.el`	 	datetime		 	NOT NULL 	COMMENT ' ',
	`ordpago.revisado`	 	char(01)		 	NOT NULL 	COMMENT ' ',
	`ordpago.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordpago.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.mov.islr` 		int 				NOT NULL 	COMMENT ' ',
	`ordpago.sino.reten` 	bit 				NOT NULL 	COMMENT ' ',
	`ordpago.reng.si` 		bit 				NOT NULL 	COMMENT ' ',
	`ordpago.monto.reten` 	double 				NOT NULL 	COMMENT ' ',
	`ordpago.monto.obj` 	double 				NOT NULL 	COMMENT ' ',
	`ordpago.sustraen` 		double 				NOT NULL 	COMMENT ' ',
	`ordpago.co.islr` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordpago.pagar` 		int 				NOT NULL 	COMMENT ' ',
	`ordpago.anulada` 		bit 				NOT NULL 	COMMENT ' ',
	`ordpago.porc.retn` 	decimal(18,8) 		NOT NULL 	COMMENT ' ',
	`ordpago.aux01` 		double 				NOT NULL 	COMMENT ' ',
	`ordpago.aux02` 		varchar(30)		 	NOT NULL 	COMMENT ' ',
	`ordpago.salestax` 		char(08) 			NOT NULL 	COMMENT ' ',
	`ordpago.origen` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordpago.origen.d` 		char(20)		 	NOT NULL 	COMMENT ' ',
    PRIMARY KEY (`ordpago.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Ordenes Pagos`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.ordenes`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.ordenes` (
	`ordenes.fact.num` 		int 				NOT NULL 	COMMENT ' ',
	`ordenes.contrib` 		bit 				NOT NULL 	COMMENT ' ',
	`ordenes.nombre` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.rif` 			char(18)		 	NOT NULL 	COMMENT ' ',
	`ordenes.nit`			char(18)		 	NOT NULL 	COMMENT ' ',
	`ordenes.status` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordenes.comentario` 	text 				NOT NULL 	COMMENT ' ',
	`ordenes.descrip` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.saldo` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.fec.emis` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordenes.fec.venc` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordenes.co.cli` 		char(10)		 	NOT NULL 	COMMENT ' ',
	`ordenes.co.ven` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.co.tran` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.dir.ent` 		text 				NOT NULL 	COMMENT ' ',
	`ordenes.forma.pag` 	char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.tot.bruto` 	double 				NOT NULL 	COMMENT ' ',
	`ordenes.tot.neto` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.glob.des` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.tot.reca` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.porc.gdesc` 	char(15)		 	NOT NULL 	COMMENT ' ',
	`ordenes.porc.reca` 	char(15)		 	NOT NULL 	COMMENT ' ',
	`ordenes.total.uc` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.total.cp` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.tot.flete` 	double 				NOT NULL 	COMMENT ' ',
	`ordenes.monto.dev` 	double 				NOT NULL 	COMMENT ' ',
	`ordenes.totklu` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.anulada` 		bit 				NOT NULL 	COMMENT ' ',
	`ordenes.impresa` 		bit 				NOT NULL 	COMMENT ' ',
	`ordenes.iva` 			double 				NOT NULL 	COMMENT ' ',
	`ordenes.iva.dev` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.feccom` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordenes.numcom` 		int 				NOT NULL 	COMMENT ' ',
	`ordenes.tasa` 			double 				NOT NULL 	COMMENT ' ',
	`ordenes.moneda` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.cta.contab` 	char(15)		 	NOT NULL 	COMMENT ' ',
	`ordenes.seriales` 		int 				NOT NULL 	COMMENT ' ',
	`ordenes.tasag` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.tasag10` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.tasag20` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.campo1` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.campo2` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.campo3` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.campo4` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.campo5` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.campo6` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.campo7` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.campo8` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`ordenes.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordenes.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordenes.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`ordenes.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordenes.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordenes.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`ordenes.mon.ilc` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.otros1` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.otros2` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.otros3` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.dis.cen` 		text 				NOT NULL 	COMMENT ' ',
	`ordenes.aux01` 		double 				NOT NULL 	COMMENT ' ',
	`ordenes.aux02` 		varchar(30)		 	NOT NULL 	COMMENT ' ',
	`ordenes.salestax` 		char(08) 			NOT NULL 	COMMENT ' ',
	`ordenes.origen` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`ordenes.origen.d` 		char(20)		 	NOT NULL 	COMMENT ' ',
	`ordenes.sta.prod` 		char(01) 			NULL 		COMMENT ' ',
	`ordenes.inf.imp` 		text 				NOT NULL 	COMMENT ' ',
	`ordenes.telefono` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
    PRIMARY KEY (`ordenes.fact.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Ordenes`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.pagos`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.pagos` (
	`pagos.cob.num` 		int 				NOT NULL 	COMMENT ' ',
	`pagos.recibo` 			char(15)		 	NOT NULL 	COMMENT ' ',
	`pagos.co.cli` 			char(10)		 	NOT NULL 	COMMENT ' ',
	`pagos.co.ven` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`pagos.fec.cob` 		datetime		 	NOT NULL 	COMMENT ' ',
	`pagos.anulado` 		bit 				NOT NULL 	COMMENT ' ',
	`pagos.monto` 			double 				NOT NULL 	COMMENT ' ',
	`pagos.dppago` 			double 				NOT NULL 	COMMENT ' ',
	`pagos.mont.ncr` 		double 				NOT NULL 	COMMENT ' ',
	`pagos.ncr` 			int 				NOT NULL 	COMMENT ' ',
	`pagos.tcomi.porc` 		double 				NOT NULL 	COMMENT ' ',
	`pagos.tcomi.line` 		double 				NOT NULL 	COMMENT ' ',
	`pagos.tcomi.art` 		double 				NOT NULL 	COMMENT ' ',
	`pagos.tcomi.conc` 		double 				NOT NULL 	COMMENT ' ',
	`pagos.feccom` 			datetime		 	NOT NULL 	COMMENT ' ',
	`pagos.tasa` 			double 				NOT NULL 	COMMENT ' ',
	`pagos.moneda` 			char(06)		 	NOT NULL 	COMMENT ' ',
	`pagos.dis.cen` 		text 				NOT NULL 	COMMENT ' ',
	`pagos.numcom` 			int 				NOT NULL 	COMMENT ' ',
	`pagos.campo1` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.campo2` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.campo3` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.campo4` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.campo5` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.campo6` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.campo7` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.campo8` 			varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.co.us.ad` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`pagos.fe.us.ad` 		datetime		 	NOT NULL 	COMMENT ' ',
	`pagos.co.us.mo` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`pagos.fe.us.mo` 		datetime		 	NOT NULL 	COMMENT ' ',
	`pagos.co.us.el` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`pagos.fe.us.el` 		datetime		 	NOT NULL 	COMMENT ' ',
	`pagos.adel.num` 		int 				NOT NULL 	COMMENT ' ',
	`pagos.revisado` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`pagos.trasnfe` 		char(01)		 	NOT NULL 	COMMENT ' ',
	`pagos.co.sucu` 		char(06)		 	NOT NULL 	COMMENT ' ',
	`pagos.descrip` 		varchar(60)		 	NOT NULL 	COMMENT ' ',
	`pagos.num.dev` 		int 				NOT NULL 	COMMENT ' ',
	`pagos.devdinero` 		bit 				NOT NULL 	COMMENT ' ',
	`pagos.aux01` 			double 				NOT NULL 	COMMENT ' ',
	`pagos.aux02` 			varchar(30)		 	NOT NULL 	COMMENT ' ',
	`pagos.origen` 			char(01) 			NULL	 	COMMENT ' ',
	`pagos.origen.d` 		char(20) 			NULL	 	COMMENT ' ',
    PRIMARY KEY (`pagos.cob.num`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Pagos`; 
-- 40101 SET character.set.client = @saved.cs.client */;

DROP TABLE IF EXISTS `dynerp.paises`;
-- 40101 SET @saved.cs.client     = @@character.set.client */;
-- 40101 SET character.set.client = utf8 */;
CREATE TABLE `dynerp.paises` (
	`paises.co.pais` 		char(06) 		NOT NULL 	DEFAULT (space((1))),
	`paises.pais.des` 		varchar(60) 	NOT NULL 	DEFAULT (space((1))),
	`paises.campo1` 		varchar(60) 	NOT NULL 	DEFAULT (space((1))),
	`paises.campo2` 		varchar(60) 	NOT NULL	DEFAULT (space((1))),
	`paises.campo3` 		varchar(60) 	NOT NULL	DEFAULT (space((1))),
	`paises.campo4` 		varchar(60) 	NOT NULL	DEFAULT (space((1))),
	`paises.co.us.ad` 		char(06) 		NOT NULL	DEFAULT (space((1))),
	`paises.fe.us.ad` 		datetime 		NOT NULL 	DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	`paises.co.us.mo` 		char(06) 		NOT NULL	DEFAULT (space((1))),
	`paises.fe.us.mo` 		datetime 		NOT NULL 	DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	`paises.co.us.el` 		char(06) 		NOT NULL 	DEFAULT (space((1))),
	`paises.fe.us.el` 		datetime 		NOT NULL 	DEFAULT (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	`paises.revisado` 		char(01) 		NOT NULL	DEFAULT (space((1))),
	`paises.trasnfe` 		char(01) 		NOT NULL	DEFAULT (space((1))),
	`paises.co.sucu` 		char(06) 		NOT NULL	DEFAULT ('CCS'),
	`paises.co.mone` 		char(06) 		NOT NULL	DEFAULT (space((1))),
    PRIMARY KEY (`paises.co.pais`)
) 	ENGINE=InnoDB	 CHARSET=latin1 COMMENT=`Tabla Paises`; 
-- 40101 SET character.set.client = @saved.cs.client */;

CREATE TABLE [dbo`.[par.conc`(
	[co.conf` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.conf` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.ban` char(06)		 			NOT NULL 	COMMENT ' ',
	[opc.doc` bit 				NOT NULL 	COMMENT ' ',
	[tip.conc` int 				NOT NULL 	COMMENT ' ',
	[cantidad` int 				NOT NULL 	COMMENT ' ',
	[opc.fec` bit 				NOT NULL 	COMMENT ' ',
	[margen` int 				NOT NULL 	COMMENT ' ',
	[margen2` int 				NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.par.conc` PRIMARY KEY CLUSTERED 
(
	[co.conf` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[par.emp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[par.emp`(
	[cod.emp` char(08) NOT NULL 	COMMENT ' ',
	[emp.imp` varchar(60) NOT NULL CONSTRAINT [DF..par.emp..emp.imp..5852D887` 	 DEFAULT (space((1))),
	[temp.num` int NOT NULL CONSTRAINT [DF..par.emp..temp.nu..5946FCC0` 	 ((0)),
	[cfxg.num` int NOT NULL CONSTRAINT [DF..par.emp..cfxg.nu..5A3B20F9` 	 ((0)),
	[ccxg.num` int NOT NULL CONSTRAINT [DF..par.emp..ccxg.nu..5B2F4532` 	 ((0)),
	[fact.num` int NOT NULL CONSTRAINT [DF..par.emp..fact.nu..5C23696B` 	 ((0)),
	[giro.num` int NOT NULL CONSTRAINT [DF..par.emp..giro.nu..5D178DA4` 	 ((0)),
	[girocppnum` int NOT NULL CONSTRAINT [DF..par.emp..girocpp..5E0BB1DD` 	 ((0)),
	[nota.num` int NOT NULL CONSTRAINT [DF..par.emp..nota.nu..5EFFD616` 	 ((0)),
	[ped.num` int NOT NULL CONSTRAINT [DF..par.emp..ped.num..5FF3FA4F` 	 ((0)),
	[ord.num` int NOT NULL CONSTRAINT [DF..par.emp..ord.num..60E81E88` 	 ((0)),
	[cotc.num` int NOT NULL CONSTRAINT [DF..par.emp..cotc.nu..61DC42C1` 	 ((0)),
	[cotp.num` int NOT NULL CONSTRAINT [DF..par.emp..cotp.nu..62D066FA` 	 ((0)),
	[nde.num` int NOT NULL CONSTRAINT [DF..par.emp..nde.num..63C48B33` 	 ((0)),
	[cb.num` int NOT NULL CONSTRAINT [DF..par.emp..cb.num..64B8AF6C` 	 ((0)),
	[pg.num` int NOT NULL CONSTRAINT [DF..par.emp..pg.num..65ACD3A5` 	 ((2)),
	[nd.num` int NOT NULL CONSTRAINT [DF..par.emp..nd.num..66A0F7DE` 	 ((0)),
	[ndcpp.num` int NOT NULL CONSTRAINT [DF..par.emp..ndcpp.n..67951C17` 	 ((0)),
	[nc.num` int NOT NULL CONSTRAINT [DF..par.emp..nc.num..68894050` 	 ((0)),
	[nccpp.num` int NOT NULL CONSTRAINT [DF..par.emp..nccpp.n..697D6489` 	 ((0)),
	[chdv.num` int NOT NULL CONSTRAINT [DF..par.emp..chdv.nu..6A7188C2` 	 ((0)),
	[chdvcppnum` int NOT NULL CONSTRAINT [DF..par.emp..chdvcpp..6B65ACFB` 	 ((0)),
	[comp.num` int NOT NULL CONSTRAINT [DF..par.emp..comp.nu..6C59D134` 	 ((0)),
	[devp.num` int NOT NULL CONSTRAINT [DF..par.emp..devp.nu..6D4DF56D` 	 ((0)),
	[devc.num` int NOT NULL CONSTRAINT [DF..par.emp..devc.nu..6E4219A6` 	 ((0)),
	[ajus.num` int NOT NULL CONSTRAINT [DF..par.emp..ajus.nu..6F363DDF` 	 ((0)),
	[depc.num` int NOT NULL CONSTRAINT [DF..par.emp..depc.nu..702A6218` 	 ((0)),
	[tras.num` int NOT NULL CONSTRAINT [DF..par.emp..tras.nu..711E8651` 	 ((0)),
	[genk.num` int NOT NULL CONSTRAINT [DF..par.emp..genk.nu..7212AA8A` 	 ((0)),
	[ords.num` int NOT NULL CONSTRAINT [DF..par.emp..ords.nu..7306CEC3` 	 ((0)),
	[ordp.num` int NOT NULL CONSTRAINT [DF..par.emp..ordp.nu..73FAF2FC` 	 ((0)),
	[ejep.num` int NOT NULL CONSTRAINT [DF..par.emp..ejep.nu..74EF1735` 	 ((0)),
	[inte.num` int NOT NULL CONSTRAINT [DF..par.emp..inte.nu..75E33B6E` 	 ((0)),
	[porc.db` double NOT NULL CONSTRAINT [DF..par.emp..porc.db..76D75FA7` 	 ((0)),
	[post.num` int NOT NULL CONSTRAINT [DF..par.emp..post.nu..77CB83E0` 	 ((0)),
	[postcppnum` int NOT NULL CONSTRAINT [DF..par.emp..postcpp..78BFA819` 	 ((0)),
	[reten.num` int NOT NULL CONSTRAINT [DF..par.emp..reten.n..79B3CC52` 	 ((0)),
	[retencppnum` int NOT NULL CONSTRAINT [DF..par.emp..retencp..7AA7F08B` 	 ((0)),
	[ndr.num` int NOT NULL CONSTRAINT [DF..par.emp..ndr.num..7B9C14C4` 	 ((0)),
	[ndd.num` int NOT NULL CONSTRAINT [DF..par.emp..ndd.num..7C9038FD` 	 ((0)),
	[movc.num` int NOT NULL CONSTRAINT [DF..par.emp..movc.nu..7D845D36` 	 ((0)),
	[movb.num` int NOT NULL CONSTRAINT [DF..par.emp..movb.nu..7E78816F` 	 ((2)),
	[desc.num` int NOT NULL CONSTRAINT [DF..par.emp..desc.nu..7F6CA5A8` 	 ((0)),
	[desccppnum` int NOT NULL CONSTRAINT [DF..par.emp..desccpp..0060C9E1` 	 ((0)),
	[num.kit` int NOT NULL CONSTRAINT [DF..par.emp..num.kit..0154EE1A` 	 ((0)),
	[fisi.num` int NOT NULL CONSTRAINT [DF..par.emp..fisi.nu..02491253` 	 ((0)),
	[docum1` int NOT NULL CONSTRAINT [DF..par.emp..docum1..033D368C` 	 ((0)),
	[docum2` int NOT NULL CONSTRAINT [DF..par.emp..docum2..04315AC5` 	 ((0)),
	[temp.char1` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..05257EFE` 	 DEFAULT (space((1))),
	[temp.char2` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..0619A337` 	 DEFAULT (space((1))),
	[temp.char3` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..070DC770` 	 DEFAULT (space((1))),
	[temp.char4` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..0801EBA9` 	 DEFAULT (space((1))),
	[temp.char5` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..08F60FE2` 	 DEFAULT (space((1))),
	[temp.char6` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..09EA341B` 	 DEFAULT (space((1))),
	[temp.char7` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..0ADE5854` 	 DEFAULT (space((1))),
	[temp.char8` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..0BD27C8D` 	 DEFAULT (space((1))),
	[p.comv.vol` bit NOT NULL CONSTRAINT [DF..par.emp..p.comv...0CC6A0C6` 	 ((0)),
	[p.comv.klu` bit NOT NULL CONSTRAINT [DF..par.emp..p.comv...0DBAC4FF` 	 ((0)),
	[p.comv.ven` bit NOT NULL CONSTRAINT [DF..par.emp..p.comv...0EAEE938` 	 ((0)),
	[p.comv.con` bit NOT NULL CONSTRAINT [DF..par.emp..p.comv...0FA30D71` 	 ((0)),
	[p.comv.r.c` bit NOT NULL CONSTRAINT [DF..par.emp..p.comv...109731AA` 	 ((0)),
	[p.comv.r.p` bit NOT NULL CONSTRAINT [DF..par.emp..p.comv...118B55E3` 	 ((0)),
	[p.comv.tip` bit NOT NULL CONSTRAINT [DF..par.emp..p.comv...127F7A1C` 	 ((0)),
	[p.desc.art` bit NOT NULL CONSTRAINT [DF..par.emp..p.desc...13739E55` 	 ((0)),
	[p.desc.cat` bit NOT NULL CONSTRAINT [DF..par.emp..p.desc...1467C28E` 	 ((0)),
	[p.desc.glo` bit NOT NULL CONSTRAINT [DF..par.emp..p.desc...155BE6C7` 	 ((0)),
	[p.desc.ofe` bit NOT NULL CONSTRAINT [DF..par.emp..p.desc...16500B00` 	 ((0)),
	[p.desc.lad` bit NOT NULL CONSTRAINT [DF..par.emp..p.desc...17442F39` 	 ((0)),
	[p.prec.isv` bit NOT NULL CONSTRAINT [DF..par.emp..p.prec...18385372` 	 ((0)),
	[p.prec1.isv` bit NOT NULL CONSTRAINT [DF..par.emp..p.prec1..192C77AB` 	 ((0)),
	[p.prec2.isv` bit NOT NULL CONSTRAINT [DF..par.emp..p.prec2..1A209BE4` 	 ((0)),
	[p.prec3.isv` bit NOT NULL CONSTRAINT [DF..par.emp..p.prec3..1B14C01D` 	 ((0)),
	[p.prec4.isv` bit NOT NULL CONSTRAINT [DF..par.emp..p.prec4..1C08E456` 	 ((0)),
	[p.prec5.isv` bit NOT NULL CONSTRAINT [DF..par.emp..p.prec5..1CFD088F` 	 ((0)),
	[p.roundfac` bit NOT NULL CONSTRAINT [DF..par.emp..p.round..1DF12CC8` 	 ((0)),
	[p.roundinf` bit NOT NULL CONSTRAINT [DF..par.emp..p.round..1EE55101` 	 ((0)),
	[p.val.red` int NOT NULL CONSTRAINT [DF..par.emp..p.val.r..1FD9753A` 	 ((0)),
	[p.roundequ` bit NOT NULL CONSTRAINT [DF..par.emp..p.round..20CD9973` 	 ((0)),
	[p.roundsup` bit NOT NULL CONSTRAINT [DF..par.emp..p.round..21C1BDAC` 	 ((0)),
	[p.costo.do` bit NOT NULL CONSTRAINT [DF..par.emp..p.costo..22B5E1E5` 	 ((0)),
	[p.com.auto` bit NOT NULL CONSTRAINT [DF..par.emp..p.com.a..23AA061E` 	 ((0)),
	[p.stock.neg` bit NOT NULL CONSTRAINT [DF..par.emp..p.stock..249E2A57` 	 ((0)),
	[p.ent.new` bit NOT NULL CONSTRAINT [DF..par.emp..p.ent.n..25924E90` 	 ((0)),
	[p.aju.comi` bit NOT NULL CONSTRAINT [DF..par.emp..p.aju.c..268672C9` 	 ((0)),
	[p.doble.un` bit NOT NULL CONSTRAINT [DF..par.emp..p.doble..277A9702` 	 ((0)),
	[p.pront.pg` bit NOT NULL CONSTRAINT [DF..par.emp..p.pront..286EBB3B` 	 ((0)),
	[p.grab.ren` bit NOT NULL CONSTRAINT [DF..par.emp..p.grab...2962DF74` 	 ((0)),
	[p.para1` bit NOT NULL CONSTRAINT [DF..par.emp..p.para1..2A5703AD` 	 ((0)),
	[p.para2` bit NOT NULL CONSTRAINT [DF..par.emp..p.para2..2B4B27E6` 	 ((0)),
	[p.para3` bit NOT NULL CONSTRAINT [DF..par.emp..p.para3..2C3F4C1F` 	 ((0)),
	[p.para4` bit NOT NULL CONSTRAINT [DF..par.emp..p.para4..2D337058` 	 ((0)),
	[p.para5` bit NOT NULL CONSTRAINT [DF..par.emp..p.para5..2E279491` 	 ((0)),
	[p.para6` bit NOT NULL CONSTRAINT [DF..par.emp..p.para6..2F1BB8CA` 	 ((0)),
	[p.para7` bit NOT NULL CONSTRAINT [DF..par.emp..p.para7..300FDD03` 	 ((0)),
	[p.para8` bit NOT NULL CONSTRAINT [DF..par.emp..p.para8..3104013C` 	 ((0)),
	[p.para9` bit NOT NULL CONSTRAINT [DF..par.emp..p.para9..31F82575` 	 ((0)),
	[p.para10` bit NOT NULL CONSTRAINT [DF..par.emp..p.para1..32EC49AE` 	 ((0)),
	[p.open.com` bit NOT NULL CONSTRAINT [DF..par.emp..p.open...33E06DE7` 	 ((0)),
	[p.marg.cap` bit NOT NULL CONSTRAINT [DF..par.emp..p.marg...34D49220` 	 ((0)),
	[p.dir.ent` bit NOT NULL CONSTRAINT [DF..par.emp..p.dir.e..35C8B659` 	 ((0)),
	[p.art.20` bit NOT NULL CONSTRAINT [DF..par.emp..p.art.2..36BCDA92` 	 ((0)),
	[p.imp.kit` bit NOT NULL CONSTRAINT [DF..par.emp..p.imp.k..37B0FECB` 	 ((0)),
	[p.red.com` bit NOT NULL CONSTRAINT [DF..par.emp..p.red.c..38A52304` 	 ((0)),
	[p.cyf.dol` bit NOT NULL CONSTRAINT [DF..par.emp..p.cyf.d..3999473D` 	 ((0)),
	[p.ser.art` bit NOT NULL CONSTRAINT [DF..par.emp..p.ser.a..3A8D6B76` 	 ((0)),
	[p.art.dol` bit NOT NULL CONSTRAINT [DF..par.emp..p.art.d..3B818FAF` 	 ((0)),
	[mone.art` char(06) NOT NULL CONSTRAINT [DF..par.emp..mone.ar..3C75B3E8` 	 DEFAULT (space((1))),
	[p.deb.ban` bit NOT NULL CONSTRAINT [DF..par.emp..p.deb.b..3D69D821` 	 ((0)),
	[p.deb.aut` bit NOT NULL CONSTRAINT [DF..par.emp..p.deb.a..3E5DFC5A` 	 ((0)),
	[p.fact.alm` bit NOT NULL CONSTRAINT [DF..par.emp..p.fact...3F522093` 	 ((0)),
	[p.despacho` bit NOT NULL CONSTRAINT [DF..par.emp..p.despa..404644CC` 	 ((0)),
	[p.idb` bit NOT NULL CONSTRAINT [DF..par.emp..p.idb..413A6905` 	 ((0)),
	[val.idb` double NOT NULL CONSTRAINT [DF..par.emp..val.idb..422E8D3E` 	 ((0)),
	[tempor1` int NOT NULL CONSTRAINT [DF..par.emp..tempor1..4322B177` 	 ((0)),
	[fecha.res` datetime NOT NULL CONSTRAINT [DF..par.emp..fecha.r..4416D5B0` 	 (CONVERT(varchar(10),getdatetime(),(104))),
	[fecha.fisi` datetime NOT NULL CONSTRAINT [DF..par.emp..fecha.f..450AF9E9` 	 (CONVERT(varchar(10),getdatetime(),(104))),
	[open.fisi` bit NOT NULL CONSTRAINT [DF..par.emp..open.fi..45FF1E22` 	 ((0)),
	[serial` char(04) NOT NULL CONSTRAINT [DF..par.emp..serial..46F3425B` 	 DEFAULT (space((1))),
	[cadena` varchar(60) NOT NULL CONSTRAINT [DF..par.emp..cadena..47E76694` 	 DEFAULT (space((1))),
	[inv.emp` varchar(250) NOT NULL CONSTRAINT [DF..par.emp..inv.emp..48DB8ACD` 	 DEFAULT (space((1))),
	[temp.char` char(20) NOT NULL CONSTRAINT [DF..par.emp..temp.ch..49CFAF06` 	 DEFAULT (space((1))),
	[fec.inte` datetime NOT NULL CONSTRAINT [DF..par.emp..fec.int..4AC3D33F` 	 (CONVERT(varchar(10),getdatetime(),(104))),
	[temp.fech` datetime NOT NULL CONSTRAINT [DF..par.emp..temp.fe..4BB7F778` 	 (CONVERT(varchar(10),getdatetime(),(104))),
	[ele.linea` bit NOT NULL CONSTRAINT [DF..par.emp..ele.lin..4CAC1BB1` 	 ((0)),
	[lon.linea` int NOT NULL CONSTRAINT [DF..par.emp..lon.lin..4DA03FEA` 	 ((0)),
	[ele.categ` bit NOT NULL CONSTRAINT [DF..par.emp..ele.cat..4E946423` 	 ((0)),
	[lon.categ` int NOT NULL CONSTRAINT [DF..par.emp..lon.cat..4F88885C` 	 ((0)),
	[ele.medid` bit NOT NULL CONSTRAINT [DF..par.emp..ele.med..507CAC95` 	 ((0)),
	[lon.medid` int NOT NULL CONSTRAINT [DF..par.emp..lon.med..5170D0CE` 	 ((0)),
	[ele.item` bit NOT NULL CONSTRAINT [DF..par.emp..ele.ite..5264F507` 	 ((0)),
	[lon.item` int NOT NULL CONSTRAINT [DF..par.emp..lon.ite..53591940` 	 ((0)),
	[ele.color` bit NOT NULL CONSTRAINT [DF..par.emp..ele.col..544D3D79` 	 ((0)),
	[lon.color` int NOT NULL CONSTRAINT [DF..par.emp..lon.col..554161B2` 	 ((0)),
	[ele.carter` bit NOT NULL CONSTRAINT [DF..par.emp..ele.car..563585EB` 	 ((0)),
	[caracter` char(01) NOT NULL CONSTRAINT [DF..par.emp..caracte..5729AA24` 	 DEFAULT (space((1))),
	[dec.prec` int NOT NULL CONSTRAINT [DF..par.emp..dec.pre..581DCE5D` 	 ((2)),
	[dec.cost` int NOT NULL CONSTRAINT [DF..par.emp..dec.cos..5911F296` 	 ((2)),
	[cant.art` int NOT NULL CONSTRAINT [DF..par.emp..cant.ar..5A0616CF` 	 ((2)),
	[total.cod` int NOT NULL CONSTRAINT [DF..par.emp..total.c..5AFA3B08` 	 ((0)),
	[tipo.com` bit NOT NULL CONSTRAINT [DF..par.emp..tipo.co..5BEE5F41` 	 ((0)),
	[tipo.lib` bit NOT NULL CONSTRAINT [DF..par.emp..tipo.li..5CE2837A` 	 ((1)),
	[co.us.ad` char(06) NOT NULL CONSTRAINT [DF..par.emp..co.us.i..5DD6A7B3` 	 DEFAULT (space((1))),
	[fe.us.ad` datetime NOT NULL CONSTRAINT [dflt.fe.us.in.par.emp` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[co.us.mo` char(06) NOT NULL CONSTRAINT [DF..par.emp..co.us.m..5FBEF025` 	 DEFAULT (space((1))),
	[fe.us.mo` datetime NOT NULL CONSTRAINT [dflt.fe.us.mo.par.emp` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[logo` [image` NULL,
	[revisado` char(01) NOT NULL CONSTRAINT [DF..par.emp..revisad..61A73897` 	 DEFAULT (space((1))),
	[trasnfe` char(01) NOT NULL CONSTRAINT [DF..par.emp..trasnfe..629B5CD0` 	 DEFAULT (space((1))),
	[p.sucursal` bit NOT NULL CONSTRAINT [DF..par.emp..p.sucur..638F8109` 	 ((0)),
	[p.imp65` bit NOT NULL CONSTRAINT [DF..par.emp..p.imp65` 	 ((0)),
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL CONSTRAINT [DF..par.emp..rowguid..251D4D44` 	 (newid()),
	[p.licores` bit NOT NULL CONSTRAINT [DF..par.emp..p.licor..6483A542` 	 ((0)),
	[p.lotenro` bit NOT NULL CONSTRAINT [DF..par.emp..p.loten..6577C97B` 	 ((0)),
	[p.lotefec` bit NOT NULL CONSTRAINT [DF..par.emp..p.lotef..666BEDB4` 	 ((0)),
	[serverolap` varchar(60) NOT NULL CONSTRAINT [DF..par.emp..servero..676011ED` 	 DEFAULT (space((1))),
	[dataolap` varchar(60) NOT NULL CONSTRAINT [DF..par.emp..dataola..68543626` 	 DEFAULT (space((1))),
	[p.loteaut` bit NOT NULL CONSTRAINT [DF..par.emp..p.lotea..69485A5F` 	 ((0)),
	[tipo.inve` numeric(1,0) NOT NULL CONSTRAINT [DF.par.emp.tipo.inve` 	 ((1)),
	[aju.posm` int NOT NULL CONSTRAINT [DF..par.emp..aju.pos..6A3C7E98` 	 ((0)),
	[aju.posa` int NOT NULL CONSTRAINT [DF..par.emp..aju.pos..6B30A2D1` 	 ((0)),
	[aju.negm` int NOT NULL CONSTRAINT [DF..par.emp..aju.neg..6C24C70A` 	 ((0)),
	[aju.nega` int NOT NULL CONSTRAINT [DF..par.emp..aju.neg..6D18EB43` 	 ((0)),
	[aju.posmc` int NOT NULL CONSTRAINT [DF..par.emp..aju.pos..6E0D0F7C` 	 ((0)),
	[aju.posac` int NOT NULL CONSTRAINT [DF..par.emp..aju.pos..6F0133B5` 	 ((0)),
	[aju.negmc` int NOT NULL CONSTRAINT [DF..par.emp..aju.neg..6FF557EE` 	 ((0)),
	[aju.negac` int NOT NULL CONSTRAINT [DF..par.emp..aju.neg..70E97C27` 	 ((0)),
	[plv.num` int NOT NULL CONSTRAINT [DF.par.emp.plv.num` 	 ((0)),
	[plc.num` int NOT NULL CONSTRAINT [DF.par.emp.plc.num` 	 ((0)),
	[pventa` int NOT NULL CONSTRAINT [DF.par.emp.pventa` 	 ((0)),
	[turnosic` int NOT NULL CONSTRAINT [DF.par.emp.turnosic` 	 ((0)),
	[tabislr` int NOT NULL CONSTRAINT [DF.par.emp.tabislr` 	 ((0)),
	[moneda` char(06) NOT NULL CONSTRAINT [DF.par.emp.moneda` 	 ('BS'),
	[imp.num` int NOT NULL CONSTRAINT [DF..PAR.EMP..imp.num..16F18B83` 	 ((0)),
	[rma.cli` int NOT NULL CONSTRAINT [DF..par.emp..rma.cli..2421696F` 	 ((0)),
	[rma.prov` int NOT NULL CONSTRAINT [DF..par.emp..rma.pro..25158DA8` 	 ((0)),
	[rma.entc` int NOT NULL CONSTRAINT [DF..par.emp..rma.ent..2609B1E1` 	 ((0)),
	[rma.entp` int NOT NULL CONSTRAINT [DF..par.emp..rma.ent..26FDD61A` 	 ((0)),
	[rma.regs` int NOT NULL CONSTRAINT [DF..par.emp..rma.reg..27F1FA53` 	 ((0)),
	[p.prov.new` bit NOT NULL CONSTRAINT [DF..par.emp..p.prov...28E61E8C` 	 ((0)),
	[p.ser.new` bit NOT NULL CONSTRAINT [DF..par.emp..p.ser.n..29DA42C5` 	 ((0)),
	[rmacliente` char(10) NOT NULL CONSTRAINT [DF..par.emp..rmaclie..2ACE66FE` 	 DEFAULT (space((1))),
	[rma.trans` char(06) NOT NULL CONSTRAINT [DF..par.emp..rma.tra..2BC28B37` 	 DEFAULT (space((1))),
	[garantia` char(08) NOT NULL CONSTRAINT [DF..par.emp..garanti..2CB6AF70` 	 DEFAULT (space((1))),
	[reem.prov` char(06) NOT NULL CONSTRAINT [DF..par.emp..reem.pr..2DAAD3A9` 	 DEFAULT (space((1))),
	[des.ser` [char`(12) NOT NULL CONSTRAINT [DF..par.emp..des.ser..2E9EF7E2` 	 DEFAULT (space((1))),
	[ser.auto` numeric(8,0) NOT NULL CONSTRAINT [DF..par.emp..ser.aut..2F931C1B` 	 ((0)),
	[pcontrol.1` bit NOT NULL CONSTRAINT [DF.par.emp.pcontrol.1` 	 ((0)),
	[pcontrol.2` bit NOT NULL CONSTRAINT [DF.par.emp.pcontrol.2` 	 ((0)),
	[pcontrol.3` bit NOT NULL CONSTRAINT [DF.par.emp.pcontrol.3` 	 ((0)),
	[pcontrol.4` bit NOT NULL CONSTRAINT [DF.par.emp.pcontrol.4` 	 ((0)),
	[pcontrol.5` bit NOT NULL CONSTRAINT [DF.par.emp.pcontrol.5` 	 ((0)),
	[idioma` char(01) NOT NULL CONSTRAINT [DF.par.emp.idioma` 	 DEFAULT (space((1))),
	[serie` bit NOT NULL CONSTRAINT [DF.par.emp.serie` 	 ((0)),
	[aux01` double NOT NULL CONSTRAINT [DF..par.emp..aux01..5CE5B0D6` 	 ((0)),
	[aux02` varchar(30) NOT NULL CONSTRAINT [DF..par.emp..aux02..5DD9D50F` 	 DEFAULT (space((1))),
	[eprofit` bit NOT NULL CONSTRAINT [DF.par.emp.eprofit` 	 ((0)),
	[pais` char(06) NOT NULL CONSTRAINT [DF.par.emp.pais` 	 DEFAULT (space((1))),
	[emp.num` int NOT NULL CONSTRAINT [DF.par.emp.emp.num` 	 ((0)),
	[dmc.num` int NOT NULL CONSTRAINT [DF.par.emp.dmc.num` 	 ((0)),
	[tax.num` int NOT NULL CONSTRAINT [DF.par.emp.tax.num` 	 ((0)),
	[ced.num` int NOT NULL CONSTRAINT [DF..par.emp..ced.num..10D03487` 	 ((0)),
	[ent.num` int NOT NULL CONSTRAINT [DF..par.emp..ent.num..11C458C0` 	 ((0)),
	[artinmp` bit NOT NULL CONSTRAINT [DF..par.emp..artinmp..12B87CF9` 	 ((0)),
	[tip.costo` int NOT NULL CONSTRAINT [DF..par.emp..tip.cos..13ACA132` 	 ((0)),
	[tip.cmat` int NOT NULL CONSTRAINT [DF..par.emp..tip.cma..14A0C56B` 	 ((0)),
	[co.aent` char(06) NOT NULL CONSTRAINT [DF..par.emp..co.aent..1594E9A4` 	 DEFAULT (space((1))),
	[cie.num` int NOT NULL CONSTRAINT [DF..par.emp..cie.num..16890DDD` 	 ((0)),
	[odp.num` int NOT NULL CONSTRAINT [DF..par.emp..odp.num..177D3216` 	 ((0)),
	[req.num` int NOT NULL CONSTRAINT [DF..par.emp..req.num..1871564F` 	 ((0)),
	[dev.num` int NOT NULL CONSTRAINT [DF..par.emp..dev.num..19657A88` 	 ((0)),
	[co.asal` char(06) NOT NULL CONSTRAINT [DF..par.emp..co.asal..1A599EC1` 	 DEFAULT (space((1))),
	[devmax` bit NOT NULL CONSTRAINT [DF..par.emp..devmax..1B4DC2FA` 	 ((0)),
	[exp.num` int NOT NULL CONSTRAINT [DF..par.emp..exp.num..1C41E733` 	 ((0)),
	[inp.num` int NOT NULL CONSTRAINT [DF..par.emp..inp.num..1D360B6C` 	 ((0)),
	[cost.num` int NOT NULL CONSTRAINT [DF..par.emp..cost.nu..1E2A2FA5` 	 ((0)),
	[par.num` int NOT NULL CONSTRAINT [DF..par.emp..par.num..1F1E53DE` 	 ((0)),
	[esc.num` int NOT NULL CONSTRAINT [DF..par.emp..esc.num..20127817` 	 ((0)),
	[cierre.mes` bit NOT NULL CONSTRAINT [DF..par.emp..cierre...21069C50` 	 ((0)),
	[pla.num` int NOT NULL CONSTRAINT [DF..par.emp..pla.num..1F1E53DE` 	 ((0)),
	[men.num` int NOT NULL CONSTRAINT [DF..par.emp..men.num..20127817` 	 ((0)),
	[max.lad` int NOT NULL	 ((0)),
	[val.max` bit NOT NULL CONSTRAINT [DF..par.emp..val.max` 	 ((0)),
	[server` char(32) NOT NULL	 DEFAULT (space((1))),
	[namedb` char(32) NOT NULL	 DEFAULT (space((1))),
	[logad` char(32) NOT NULL	 DEFAULT (space((1))),
	[password` char(32) NOT NULL	 DEFAULT (space((1))),
	[man.impr` bit NOT NULL	 ((0)),
	[ptovta` bit NOT NULL	 ((0)),
	[tipcosdev` int NOT NULL	 ((0)),
	[dist.num` int NOT NULL CONSTRAINT [DF.par.emp.dist.num` 	 ((0)),
	[exp.numi` int NOT NULL CONSTRAINT [DF.par.emp.exp.numi` 	 ((0)),
	[manivalic` bit NOT NULL CONSTRAINT [DF.par.emp.manivalic` 	 ((0)),
 CONSTRAINT [PK.par.emp` PRIMARY KEY NONCLUSTERED 
(
	[cod.emp` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[par.web`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[par.web`(
	[id` char(06)		 			NOT NULL 	COMMENT ' ',
	[url` char(250) NOT NULL 	COMMENT ' ',
	[Usuario` varchar(10)		 			NOT NULL 	COMMENT ' ',
	[PassWord` varchar(50) NOT NULL 	COMMENT ' ',
	[Db` varchar(100)		 			NOT NULL 	COMMENT ' ',
	[server` varchar(100)		 			NOT NULL 	COMMENT ' ',
	[co.zon` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.ven` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.seg` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.ing` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.sucur` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[NewClient` bit 				NOT NULL 	COMMENT ' ',
	[ViewAcc` bit 				NOT NULL 	COMMENT ' ',
	[ViewDoc` bit 				NOT NULL 	COMMENT ' ',
	[IdasLogad` bit 				NOT NULL 	COMMENT ' ',
	[NegStock` bit 				NOT NULL 	COMMENT ' ',
	[SinStock` bit 				NOT NULL 	COMMENT ' ',
	[Round` int 				NOT NULL 	COMMENT ' ',
	[DesByLine` bit 				NOT NULL 	COMMENT ' ',
	[DesByArt` bit 				NOT NULL 	COMMENT ' ',
	[DesByCat` bit 				NOT NULL 	COMMENT ' ',
	[GobalDes` bit 				NOT NULL 	COMMENT ' ',
	[DeliveryAd` bit 				NOT NULL 	COMMENT ' ',
	[MaxofOrder` datetime		 			NOT NULL 	COMMENT ' ',
	[Prefijo` char(05)		 			NOT NULL 	COMMENT ' ',
	[Fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[Unidad` char(01)		 			NOT NULL 	COMMENT ' ',
	[roundtype` char(01)		 			NOT NULL 	COMMENT ' ',
	[meses` int 				NOT NULL 	COMMENT ' ',
	[co.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[f.pago` char(06)		 			NOT NULL 	COMMENT ' ',
	[sqluser` char(50) NOT NULL 	COMMENT ' ',
	[sqlpass` [char`(180) NOT NULL 	COMMENT ' ',
	[tipoaut` int 				NOT NULL 	COMMENT ' ',
	[largo` int 				NOT NULL 	COMMENT ' ',
	[auto` bit 				NOT NULL 	COMMENT ' ',
	[horas` int 				NOT NULL 	COMMENT ' ',
	[tipo` int 				NOT NULL 	COMMENT ' ',
	[caja` char(06)		 			NOT NULL 	COMMENT ' ',
	[visa` char(06)		 			NOT NULL 	COMMENT ' ',
	[master` char(06)		 			NOT NULL 	COMMENT ' ',
	[dep` char(06)		 			NOT NULL 	COMMENT ' ',
	[Authoriza` char(100)		 			NOT NULL 	COMMENT ' ',
	[WsNumber` char(100)		 			NOT NULL 	COMMENT ' ',
	[License` char(25) NOT NULL 	COMMENT ' ',
	[LicenseN` char(50) NOT NULL 	COMMENT ' ',
	[tipo.cli` char(06)		 			NOT NULL 	COMMENT ' ',
	[slog` bit 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.par.web` PRIMARY KEY CLUSTERED 
(
	[id` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[pedidos`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[pedidos`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[contrib` bit 				NOT NULL 	COMMENT ' ',
	[nombre` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[rif` char(18)		 			NOT NULL 	COMMENT ' ',
	[nit` char(18)		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[saldo` double 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[fec.venc` datetime		 			NOT NULL 	COMMENT ' ',
	[co.cli` char(10)		 			NOT NULL 	COMMENT ' ',
	[co.ven` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[dir.ent` text NOT NULL 	COMMENT ' ',
	[forma.pag` char(06)		 			NOT NULL 	COMMENT ' ',
	[tot.bruto` double 				NOT NULL 	COMMENT ' ',
	[tot.neto` double 				NOT NULL 	COMMENT ' ',
	[glob.desc` double 				NOT NULL 	COMMENT ' ',
	[tot.reca` double 				NOT NULL 	COMMENT ' ',
	[porc.gdesc` char(15)		 			NOT NULL 	COMMENT ' ',
	[porc.reca` char(15)		 			NOT NULL 	COMMENT ' ',
	[total.uc` double 				NOT NULL 	COMMENT ' ',
	[total.cp` double 				NOT NULL 	COMMENT ' ',
	[tot.flete` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[totklu` double 				NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[impresa` bit 				NOT NULL 	COMMENT ' ',
	[iva` double 				NOT NULL 	COMMENT ' ',
	[iva.dev` double 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[tasa` double 				NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[cta.contab` char(15)		 			NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[tasag` double 				NOT NULL 	COMMENT ' ',
	[tasag10` double 				NOT NULL 	COMMENT ' ',
	[tasag20` double 				NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros1` double 				NOT NULL 	COMMENT ' ',
	[otros2` double 				NOT NULL 	COMMENT ' ',
	[otros3` double 				NOT NULL 	COMMENT ' ',
	[serialp` char(30)		 			NOT NULL 	COMMENT ' ',
	[valido` bit 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[ID` int 				NOT NULL 	COMMENT ' ',
	[salestax` char(08) NOT NULL 	COMMENT ' ',
	[origen` char(01) NULL,
	[origen.d` char(20) NULL,
	[sta.prod` char(01) NULL,
	[telefono` varchar(60)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [pedidos.ped.num` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[pistas`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[pistas`(
	[usuario.id` char(06)		 			NOT NULL 	COMMENT ' ',
	[usuario` char(20)		 			NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[empresa` char(15)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[tabla` char(10)		 			NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[codigo` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[tipo.op` char(01)		 			NOT NULL 	COMMENT ' ',
	[maquina` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campos` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[trasnfe` varchar(01)		 			NOT NULL 	COMMENT ' ',
	[AUX01` double 				NOT NULL 	COMMENT ' ',
	[AUX02` varchar(30) NOT NULL
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Index [IX.pistas.1`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
CREATE CLUSTERED INDEX [IX.pistas.1` ON [dbo`.[pistas`
(
	[fecha` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, SORT.IN.TEMPDB = OFF, DROP.EXISTING = OFF, ONLINE = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
GO
/****** Object:  Table [dbo`.[placom`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[placom`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[contrib` bit 				NOT NULL 	COMMENT ' ',
	[nombre` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[rif` char(18)		 			NOT NULL 	COMMENT ' ',
	[nit` char(18)		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[saldo` double 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[fec.venc` datetime		 			NOT NULL 	COMMENT ' ',
	[co.cli` char(10)		 			NOT NULL 	COMMENT ' ',
	[co.ven` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[dir.ent` text NOT NULL 	COMMENT ' ',
	[forma.pag` char(06)		 			NOT NULL 	COMMENT ' ',
	[tot.bruto` double 				NOT NULL 	COMMENT ' ',
	[tot.neto` double 				NOT NULL 	COMMENT ' ',
	[glob.desc` double 				NOT NULL 	COMMENT ' ',
	[tot.reca` double 				NOT NULL 	COMMENT ' ',
	[porc.gdesc` char(15)		 			NOT NULL 	COMMENT ' ',
	[porc.reca` char(15)		 			NOT NULL 	COMMENT ' ',
	[total.uc` double 				NOT NULL 	COMMENT ' ',
	[total.cp` double 				NOT NULL 	COMMENT ' ',
	[tot.flete` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[totklu` double 				NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[impresa` bit 				NOT NULL 	COMMENT ' ',
	[iva` double 				NOT NULL 	COMMENT ' ',
	[iva.dev` double 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[tasa` double 				NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[cta.contab` char(15)		 			NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[tasag` double 				NOT NULL 	COMMENT ' ',
	[tasag10` double 				NOT NULL 	COMMENT ' ',
	[tasag20` double 				NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros1` double 				NOT NULL 	COMMENT ' ',
	[otros2` double 				NOT NULL 	COMMENT ' ',
	[otros3` double 				NOT NULL 	COMMENT ' ',
	[imp.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[salestax` char(08) NOT NULL 	COMMENT ' ',
	[origen` char(01)		 			NOT NULL 	COMMENT ' ',
	[origen.d` char(20)		 			NOT NULL 	COMMENT ' ',
	[sta.prod` char(01) NULL,
	[import` int 				NOT NULL 	COMMENT ' ',
	[telefono` varchar(60)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [placom.plc.num` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[plan.fis`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[plan.fis`(
	[co.plan` char(10) NOT NULL CONSTRAINT [DF.plan.fis.co.plan` 	 DEFAULT (space((1))),
	[nom.plan` char(60) NOT NULL CONSTRAINT [DF.plan.fis.nom.plan` 	 DEFAULT (space((1))),
	[des.plan` char(250) NOT NULL CONSTRAINT [DF.plan.fis.des.plan` 	 DEFAULT (space((1))),
	[xml.plan` text NOT NULL CONSTRAINT [DF.plan.fis.xml.plan` 	 DEFAULT (space((1))),
	[xml.prad` text NOT NULL CONSTRAINT [DF.plan.fis.xml.prad` 	 DEFAULT (space((1))),
	[acc.plan` char(01) NOT NULL CONSTRAINT [DF.plan.fis.acc.plan` 	 DEFAULT (space((1))),
	[campo1` char(60) NOT NULL CONSTRAINT [DF.plan.fis.campo1` 	 DEFAULT (space((1))),
	[campo2` char(60) NOT NULL CONSTRAINT [DF.plan.fis.campo2` 	 DEFAULT (space((1))),
	[campo3` char(60) NOT NULL CONSTRAINT [DF.plan.fis.campo3` 	 DEFAULT (space((1))),
	[campo4` char(60) NOT NULL CONSTRAINT [DF.plan.fis.campo4` 	 DEFAULT (space((1))),
	[co.us.ad` char(06) NOT NULL CONSTRAINT [DF.plan.fis.co.us.ad` 	 DEFAULT (space((1))),
	[fe.us.ad` datetime NOT NULL CONSTRAINT [DF.plan.fis.fe.us.ad` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[co.us.mo` char(06) NOT NULL CONSTRAINT [DF.plan.fis.co.us.mo` 	 DEFAULT (space((1))),
	[fe.us.mo` datetime NOT NULL CONSTRAINT [DF.plan.fis.fe.us.mo` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[co.us.el` char(06) NOT NULL CONSTRAINT [DF.plan.fis.co.us.el` 	 DEFAULT (space((1))),
	[fe.us.el` datetime NOT NULL CONSTRAINT [DF.plan.fis.fe.us.el` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[revisado` char(01) NOT NULL CONSTRAINT [DF.plan.fis.revisado` 	 DEFAULT (space((1))),
	[trasnfe` char(01) NOT NULL CONSTRAINT [DF.plan.fis.trasnfe` 	 DEFAULT (space((1))),
	[co.sucu` char(06) NOT NULL CONSTRAINT [DF.plan.fis.co.sucu` 	 DEFAULT (space((1))),
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL CONSTRAINT [DF.plan.fis.rowguid` 	 (newid()),
 CONSTRAINT [PK.plan.fis` PRIMARY KEY CLUSTERED 
(
	[co.plan` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[plavent`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[plavent`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[contrib` bit 				NOT NULL 	COMMENT ' ',
	[nombre` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[rif` char(18)		 			NOT NULL 	COMMENT ' ',
	[nit` char(18)		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[saldo` double 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[fec.venc` datetime		 			NOT NULL 	COMMENT ' ',
	[co.cli` char(10)		 			NOT NULL 	COMMENT ' ',
	[co.ven` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[dir.ent` text NOT NULL 	COMMENT ' ',
	[forma.pag` char(06)		 			NOT NULL 	COMMENT ' ',
	[tot.bruto` double 				NOT NULL 	COMMENT ' ',
	[tot.neto` double 				NOT NULL 	COMMENT ' ',
	[glob.desc` double 				NOT NULL 	COMMENT ' ',
	[tot.reca` double 				NOT NULL 	COMMENT ' ',
	[porc.gdesc` char(15)		 			NOT NULL 	COMMENT ' ',
	[porc.reca` char(15)		 			NOT NULL 	COMMENT ' ',
	[total.uc` double 				NOT NULL 	COMMENT ' ',
	[total.cp` double 				NOT NULL 	COMMENT ' ',
	[tot.flete` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[totklu` double 				NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[impresa` bit 				NOT NULL 	COMMENT ' ',
	[iva` double 				NOT NULL 	COMMENT ' ',
	[iva.dev` double 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[tasa` double 				NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[cta.contab` char(15)		 			NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[tasag` double 				NOT NULL 	COMMENT ' ',
	[tasag10` double 				NOT NULL 	COMMENT ' ',
	[tasag20` double 				NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(50) NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros1` double 				NOT NULL 	COMMENT ' ',
	[otros2` double 				NOT NULL 	COMMENT ' ',
	[otros3` double 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[salestax` char(08) NOT NULL 	COMMENT ' ',
	[origen` char(01)		 			NOT NULL 	COMMENT ' ',
	[origen.d` char(20)		 			NOT NULL 	COMMENT ' ',
	[sta.prod` char(01) NULL,
	[telefono` varchar(60)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [plavent.plv.num` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[proceden`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[proceden`(
	[cod.proc` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.proc` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [proceden.cod.proc` PRIMARY KEY CLUSTERED 
(
	[cod.proc` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[prov`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[prov`(
	[co.prov` char(10)		 			NOT NULL 	COMMENT ' ',
	[prov.des` varchar(100)		 			NOT NULL 	COMMENT ' ',
	[co.seg` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.zon` char(06)		 			NOT NULL 	COMMENT ' ',
	[inactivo` bit 				NOT NULL 	COMMENT ' ',
	[productos` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[direc1` text NOT NULL 	COMMENT ' ',
	[direc2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[telefonos` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[fax` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[respons` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[fecha.reg` datetime		 			NOT NULL 	COMMENT ' ',
	[tipo` char(06)		 			NOT NULL 	COMMENT ' ',
	[com.ult.co` int 				NOT NULL 	COMMENT ' ',
	[fec.ult.co` datetime		 			NOT NULL 	COMMENT ' ',
	[net.ult.co` double 				NOT NULL 	COMMENT ' ',
	[saldo` double 				NOT NULL 	COMMENT ' ',
	[saldo.ini` double 				NOT NULL 	COMMENT ' ',
	[mont.cre` double 				NOT NULL 	COMMENT ' ',
	[plaz.pag` int 				NOT NULL 	COMMENT ' ',
	[desc.ppago` double 				NOT NULL 	COMMENT ' ',
	[desc.glob` double 				NOT NULL 	COMMENT ' ',
	[tipo.iva` char(01)		 			NOT NULL 	COMMENT ' ',
	[iva` double 				NOT NULL 	COMMENT ' ',
	[rif` char(18)		 			NOT NULL 	COMMENT ' ',
	[nacional` bit 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[nit` char(18)		 			NOT NULL 	COMMENT ' ',
	[email` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.ingr` char(06)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[juridico` bit 				NOT NULL 	COMMENT ' ',
	[tipo.adi` numeric(1,0) NOT NULL 	COMMENT ' ',
	[matriz` char(10)		 			NOT NULL 	COMMENT ' ',
	[co.tab` int 				NOT NULL 	COMMENT ' ',
	[tipo.per` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.pais` varchar(06)		 			NOT NULL 	COMMENT ' ',
	[ciudad` varchar(50) NOT NULL 	COMMENT ' ',
	[zip` varchar(10)		 			NOT NULL 	COMMENT ' ',
	[website` [char`(200) NOT NULL 	COMMENT ' ',
	[formtype` char(30)		 			NOT NULL 	COMMENT ' ',
	[taxid` char(20)		 			NOT NULL 	COMMENT ' ',
	[porc.esp` float NOT NULL 	COMMENT ' ',
	[contribu.e` bit 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [prov.co.prov` PRIMARY KEY CLUSTERED 
(
	[co.prov` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[pventa`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[pventa`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[contrib` bit 				NOT NULL 	COMMENT ' ',
	[nombre` char(30)		 			NOT NULL 	COMMENT ' ',
	[rif` char(18)		 			NOT NULL 	COMMENT ' ',
	[nit` char(18)		 			NOT NULL 	COMMENT ' ',
	[num.contro` int 				NOT NULL 	COMMENT ' ',
	[numcon` char(20)		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[saldo` float NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[fec.venc` datetime		 			NOT NULL 	COMMENT ' ',
	[co.cli` char(10)		 			NOT NULL 	COMMENT ' ',
	[co.ven` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[dir.ent` text NOT NULL 	COMMENT ' ',
	[forma.pag` char(06)		 			NOT NULL 	COMMENT ' ',
	[tot.bruto` float NOT NULL 	COMMENT ' ',
	[tot.neto` float NOT NULL 	COMMENT ' ',
	[glob.desc` float NOT NULL 	COMMENT ' ',
	[tot.reca` float NOT NULL 	COMMENT ' ',
	[porc.gdesc` char(15)		 			NOT NULL 	COMMENT ' ',
	[porc.reca` char(15)		 			NOT NULL 	COMMENT ' ',
	[total.uc` float NOT NULL 	COMMENT ' ',
	[total.cp` float NOT NULL 	COMMENT ' ',
	[tot.flete` float NOT NULL 	COMMENT ' ',
	[monto.dev` float NOT NULL 	COMMENT ' ',
	[totklu` float NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[impresa` bit 				NOT NULL 	COMMENT ' ',
	[iva` float NOT NULL 	COMMENT ' ',
	[iva.dev` float NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[tasa` float NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[vuelto` float NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[tasag` float NOT NULL 	COMMENT ' ',
	[tasag10` float NOT NULL 	COMMENT ' ',
	[tasag20` float NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[mon.ilc` float NOT NULL 	COMMENT ' ',
	[otros1` float NOT NULL 	COMMENT ' ',
	[otros2` float NOT NULL 	COMMENT ' ',
	[otros3` float NOT NULL 	COMMENT ' ',
	[num.turno` int 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[salestax` char(08) NOT NULL 	COMMENT ' ',
	[origen` char(01) NULL,
	[origen.d` char(20) NULL,
	[telefono` varchar(60)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.pventa` PRIMARY KEY NONCLUSTERED 
(
	[fact.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[r.imp.co`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
CREATE TABLE [dbo`.[r.imp.co`(
	[fact.nu1` int 				NOT NULL 	COMMENT ' ',
	[reng.nu1` int 				NOT NULL 	COMMENT ' ',
	[fact.nu2` int 				NOT NULL 	COMMENT ' ',
	[reng.nu2` int 				NOT NULL 	COMMENT ' ',
	[monto` decimal(20,8) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.r.imp.co.1` PRIMARY KEY CLUSTERED 
(
	[fact.nu1` ASC,
	[reng.nu1` ASC,
	[fact.nu2` ASC,
	[reng.nu2` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
/****** Object:  Table [dbo`.[recosteo`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[recosteo`(
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[tipo.doc` nchar(04) NULL,
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[renglon` int 				NOT NULL 	COMMENT ' ',
	[row.id.doc` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[factura` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30) NULL,
	[cost.unit` double NULL,
	[cost.unit.om` double NULL,
	[neto` double NULL,
	[costo.tot` double NULL,
 CONSTRAINT [PK.recosteo.1` PRIMARY KEY CLUSTERED 
(
	[rowguid` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ace`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ace`(
	[co.ced` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[cant` double 				NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[por.cos` double 				NOT NULL 	COMMENT ' ',
	[subced` int 				NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.ace` PRIMARY KEY CLUSTERED 
(
	[co.ced` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.aco`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.aco`(
	[imp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[monto` decimal(20,8) NOT NULL 	COMMENT ' ',
	[monto.ap` decimal(20,8) NOT NULL 	COMMENT ' ',
	[n.costo` char(04)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[tipo.doc` char(04)		 			NOT NULL 	COMMENT ' ',
	[tipo.dis` int 				NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[tasa` double 				NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[fac.gast` int 				NOT NULL 	COMMENT ' ',
	[art.gast` int 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.aco.1` PRIMARY KEY CLUSTERED 
(
	[imp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.aim`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.aim`(
	[imp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[cantidad` double 				NOT NULL 	COMMENT ' ',
	[neto` decimal(20,8) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[costo.d` decimal(20,8) NOT NULL 	COMMENT ' ',
	[nuevo.co` decimal(20,8) NOT NULL 	COMMENT ' ',
	[margen` double 				NOT NULL 	COMMENT ' ',
	[porc.ara` double 				NOT NULL 	COMMENT ' ',
	[pie.cub` double 				NOT NULL 	COMMENT ' ',
	[peso` double 				NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[tasa` double 				NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.aim.1` PRIMARY KEY CLUSTERED 
(
	[imp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`,
 CONSTRAINT [IX.reng.aim` UNIQUE NONCLUSTERED 
(
	[fact.num` ASC,
	[reng.doc` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.aju`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.aju`(
	[ajue.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[uni.compra` char(06)		 			NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[suni.compr` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[cost.unit.om` double 				NOT NULL 	COMMENT ' ',
	[cost.unit` double 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[suni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[mo.cant` double 				NOT NULL 	COMMENT ' ',
	[gf.cant` double 				NOT NULL 	COMMENT ' ',
	[mo.cant.om` double 				NOT NULL 	COMMENT ' ',
	[gf.cant.om` double 				NOT NULL 	COMMENT ' ',
	[produccion` bit 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.aju.reng.aju` PRIMARY KEY CLUSTERED 
(
	[ajue.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ara`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ara`(
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[reng.ara` char(15)		 			NOT NULL 	COMMENT ' ',
	[des.reng` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.conv` char(06)		 			NOT NULL 	COMMENT ' ',
	[porc.ara` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.ara` PRIMARY KEY CLUSTERED 
(
	[co.art` ASC,
	[co.conv` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`,
 CONSTRAINT [IX.reng.ara` UNIQUE NONCLUSTERED 
(
	[co.art` ASC,
	[co.conv` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.art`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.art`(
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[cod.relac` char(30)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.art` PRIMARY KEY CLUSTERED 
(
	[co.art` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.atb`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.atb`(
	[co.atriv` char(10)		 			NOT NULL 	COMMENT ' ',
	[co.tar` char(10)		 			NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[valor` char(30)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.atb` PRIMARY KEY CLUSTERED 
(
	[co.tar` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.atc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.atc`(
	[co.ced` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.atriv` char(10)		 			NOT NULL 	COMMENT ' ',
	[valor` char(30)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.atc` PRIMARY KEY CLUSTERED 
(
	[co.ced` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.cac`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.cac`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.cac.reng.cac` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.cdp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.cdp`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.cdp.reng.cdp` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.cie`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.cie`(
	[ent.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.cie` PRIMARY KEY CLUSTERED 
(
	[ent.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.cob`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.cob`(
	[cob.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tp.doc.cob` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num` int 				NOT NULL 	COMMENT ' ',
	[neto` double 				NOT NULL 	COMMENT ' ',
	[neto.tmp` double 				NOT NULL 	COMMENT ' ',
	[dppago` double 				NOT NULL 	COMMENT ' ',
	[dppago.tmp` int 				NOT NULL 	COMMENT ' ',
	[reng.ncr` int 				NOT NULL 	COMMENT ' ',
	[co.ven` char(04)		 			NOT NULL 	COMMENT ' ',
	[comis1` double 				NOT NULL 	COMMENT ' ',
	[comis2` double 				NOT NULL 	COMMENT ' ',
	[comis3` double 				NOT NULL 	COMMENT ' ',
	[comis4` double 				NOT NULL 	COMMENT ' ',
	[sign.aju.c` char(01)		 			NOT NULL 	COMMENT ' ',
	[porc.aju.c` double 				NOT NULL 	COMMENT ' ',
	[por.cob` double 				NOT NULL 	COMMENT ' ',
	[comi.cob` double 				NOT NULL 	COMMENT ' ',
	[mont.cob` double 				NOT NULL 	COMMENT ' ',
	[sino.pago` bit 				NOT NULL 	COMMENT ' ',
	[sino.reten` bit 				NOT NULL 	COMMENT ' ',
	[monto.dppago` double 				NOT NULL 	COMMENT ' ',
	[monto.reten` double 				NOT NULL 	COMMENT ' ',
	[imp.pago` double 				NOT NULL 	COMMENT ' ',
	[monto.obj` double 				NOT NULL 	COMMENT ' ',
	[isv` double 				NOT NULL 	COMMENT ' ',
	[nro.fact` char(20)		 			NOT NULL 	COMMENT ' ',
	[moneda` char(10)		 			NOT NULL 	COMMENT ' ',
	[tasa` double 				NOT NULL 	COMMENT ' ',
	[numcon` char(20)		 			NOT NULL 	COMMENT ' ',
	[sustraen` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[co.islr` char(06)		 			NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[fec.venc` datetime		 			NOT NULL 	COMMENT ' ',
	[comis5` double 				NOT NULL 	COMMENT ' ',
	[comis6` double 				NOT NULL 	COMMENT ' ',
	[fact.iva` int 				NOT NULL 	COMMENT ' ',
	[ret.iva` double 				NOT NULL 	COMMENT ' ',
	[porc.retn` decimal(18,8) NOT NULL 	COMMENT ' ',
	[porc.desc` decimal(18,8) NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[prov.ter` char(10)		 			NOT NULL 	COMMENT ' ',
	[reng.ter` int 				NOT NULL 	COMMENT ' ',
	[fec.com` datetime NULL,
 CONSTRAINT [reng.cob.reng.cob` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[cob.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.com`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.com`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[peso` double 				NOT NULL 	COMMENT ' ',
	[pie` double 				NOT NULL 	COMMENT ' ',
	[porc.gas` double 				NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.com.reng.com` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.con`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.con`(
	[cod.cta` char(06)		 			NOT NULL 	COMMENT ' ',
	[mes` int 				NOT NULL 	COMMENT ' ',
	[ano` int 				NOT NULL 	COMMENT ' ',
	[Reng.num` int 				NOT NULL 	COMMENT ' ',
	[fec.mov` datetime		 			NOT NULL 	COMMENT ' ',
	[tipo.op` char(15)		 			NOT NULL 	COMMENT ' ',
	[doc.num` char(20)		 			NOT NULL 	COMMENT ' ',
	[descrip` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[monto.d` double 				NOT NULL 	COMMENT ' ',
	[monto.h` double 				NOT NULL 	COMMENT ' ',
	[idb` double 				NOT NULL 	COMMENT ' ',
	[dep.con` int 				NOT NULL 	COMMENT ' ',
	[origen` char(10)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.con` PRIMARY KEY NONCLUSTERED 
(
	[cod.cta` ASC,
	[mes` ASC,
	[ano` ASC,
	[Reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.cos`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.cos`(
	[cost.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[mp.cant` double 				NOT NULL 	COMMENT ' ',
	[mo.cant` double 				NOT NULL 	COMMENT ' ',
	[gf.cant` double 				NOT NULL 	COMMENT ' ',
	[total` double 				NOT NULL 	COMMENT ' ',
	[mp.cant.om` double 				NOT NULL 	COMMENT ' ',
	[mo.cant.om` double 				NOT NULL 	COMMENT ' ',
	[gf.cant.om` double 				NOT NULL 	COMMENT ' ',
	[total.om` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[por.mp` double 				NOT NULL 	COMMENT ' ',
	[por.mo` double 				NOT NULL 	COMMENT ' ',
	[por.gf` double 				NOT NULL 	COMMENT ' ',
	[por.mp.om` double 				NOT NULL 	COMMENT ' ',
	[por.mo.om` double 				NOT NULL 	COMMENT ' ',
	[por.gf.om` double 				NOT NULL 	COMMENT ' ',
	[men.cant` double 				NOT NULL 	COMMENT ' ',
	[mem.cant` double 				NOT NULL 	COMMENT ' ',
	[oi.cant` double 				NOT NULL 	COMMENT ' ',
	[men.cant.om` double 				NOT NULL 	COMMENT ' ',
	[mem.cant.om` double 				NOT NULL 	COMMENT ' ',
	[oi.cant.om` double 				NOT NULL 	COMMENT ' ',
	[por.men` double 				NOT NULL 	COMMENT ' ',
	[por.mem` double 				NOT NULL 	COMMENT ' ',
	[por.oi` double 				NOT NULL 	COMMENT ' ',
	[por.men.om` double 				NOT NULL 	COMMENT ' ',
	[por.mem.om` double 				NOT NULL 	COMMENT ' ',
	[por.oi.om` double 				NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.cos` PRIMARY KEY CLUSTERED 
(
	[cost.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.dcc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.dcc`(
	[tipo.doc` char(04)		 			NOT NULL 	COMMENT ' ',
	[nro.doc` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.dcc` PRIMARY KEY CLUSTERED 
(
	[tipo.doc` ASC,
	[nro.doc` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.dcp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.dcp`(
	[tipo.doc` char(04)		 			NOT NULL 	COMMENT ' ',
	[nro.doc` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.dcp` PRIMARY KEY CLUSTERED 
(
	[tipo.doc` ASC,
	[nro.doc` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.dev`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.dev`(
	[dev.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[cant.ent` double 				NOT NULL 	COMMENT ' ',
	[cant.com` double 				NOT NULL 	COMMENT ' ',
	[cant.xdev` double 				NOT NULL 	COMMENT ' ',
	[cant.dev` double 				NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[suni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[multilote` text NOT NULL 	COMMENT ' ',
	[subced` int 				NOT NULL 	COMMENT ' ',
	[total.art2` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[co.tar` char(10)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.dev` PRIMARY KEY CLUSTERED 
(
	[dev.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.dmc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.dmc`(
	[dmc.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[can.bult` int 				NOT NULL 	COMMENT ' ',
	[cla.bult` char(10)		 			NOT NULL 	COMMENT ' ',
	[art.desc` char(60)		 			NOT NULL 	COMMENT ' ',
	[arancel` char(15)		 			NOT NULL 	COMMENT ' ',
	[unid.tip` char(10)		 			NOT NULL 	COMMENT ' ',
	[unid.ent` int 				NOT NULL 	COMMENT ' ',
	[unid.frc` double 				NOT NULL 	COMMENT ' ',
	[peso` double 				NOT NULL 	COMMENT ' ',
	[valor` double 				NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.dmc` PRIMARY KEY CLUSTERED 
(
	[dmc.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.doc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.doc`(
	[exp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` varchar(254) NOT NULL 	COMMENT ' ',
	[num.doc` char(30)		 			NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[doc.cop` bit 				NOT NULL 	COMMENT ' ',
	[doc.com` varchar(254) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.doc` PRIMARY KEY CLUSTERED 
(
	[exp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.dp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.dp`(
	[dep.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[codigo` char(06)		 			NOT NULL 	COMMENT ' ',
	[mov.afec` int 				NOT NULL 	COMMENT ' ',
	[mov.gene` int 				NOT NULL 	COMMENT ' ',
	[forma.pag` char(02) NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[doc.num` char(20)		 			NOT NULL 	COMMENT ' ',
	[descrip` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[monto` double 				NOT NULL 	COMMENT ' ',
	[origen` char(03) NOT NULL 	COMMENT ' ',
	[cob.pag` int 				NOT NULL 	COMMENT ' ',
	[banc.tarj` char(06)		 			NOT NULL 	COMMENT ' ',
	[comision` double 				NOT NULL 	COMMENT ' ',
	[impuesto` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[tipo.plazo` char(01)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.dp.reng.dp` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[dep.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.dvc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.dvc`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[tipo.prec` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.dvc.reng.dvc` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.dvp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.dvp`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.dvp.reng.dvp` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ece`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ece`(
	[co.ced` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.emp` [char`(17) NOT NULL 	COMMENT ' ',
	[cantidad` int 				NOT NULL 	COMMENT ' ',
	[horas` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.ece` PRIMARY KEY CLUSTERED 
(
	[co.ced` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.emb`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.emb`(
	[exp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.tra` int 				NOT NULL 	COMMENT ' ',
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[num.doc` char(30)		 			NOT NULL 	COMMENT ' ',
	[emp.tra` char(30)		 			NOT NULL 	COMMENT ' ',
	[veh.nom` char(30)		 			NOT NULL 	COMMENT ' ',
	[fec.etd` datetime		 			NOT NULL 	COMMENT ' ',
	[lug.emb` char(60)		 			NOT NULL 	COMMENT ' ',
	[fec.eta` datetime		 			NOT NULL 	COMMENT ' ',
	[cant.con` char(30)		 			NOT NULL 	COMMENT ' ',
	[peso.vo` double 				NOT NULL 	COMMENT ' ',
	[peso.to` double 				NOT NULL 	COMMENT ' ',
	[vol.tot` double 				NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[cant.emp` int 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.emb` PRIMARY KEY CLUSTERED 
(
	[exp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.emp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.emp`(
	[emp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[unid` char(06)		 			NOT NULL 	COMMENT ' ',
	[num.blto` int 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[cant.orgt` double 				NOT NULL 	COMMENT ' ',
	[cant.orgs` double 				NOT NULL 	COMMENT ' ',
	[agrupar` int 				NOT NULL 	COMMENT ' ',
	[unid.r` char(06)		 			NOT NULL 	COMMENT ' ',
	[nro.reng` int 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.emp` PRIMARY KEY CLUSTERED 
(
	[emp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`,
 CONSTRAINT [IX.reng.emp.2` UNIQUE NONCLUSTERED 
(
	[rowguid` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.enc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.enc`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[serial.dev` char(40) NOT NULL 	COMMENT ' ',
	[serial` char(40) NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.reem` char(06)		 			NOT NULL 	COMMENT ' ',
	[treemplazo` char(01)		 			NOT NULL 	COMMENT ' ',
	[nd.num` int 				NOT NULL 	COMMENT ' ',
	[prec.vta` float NOT NULL 	COMMENT ' ',
	[prec.vta2` float NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.art` varchar(120) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.enc.reng.enc` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.enp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.enp`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[serial.dev` char(40) NOT NULL 	COMMENT ' ',
	[serial` char(40) NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.reem` char(06)		 			NOT NULL 	COMMENT ' ',
	[treemplazo` char(01)		 			NOT NULL 	COMMENT ' ',
	[nc.num` int 				NOT NULL 	COMMENT ' ',
	[prec.vta` float NOT NULL 	COMMENT ' ',
	[prec.vta2` float NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.art` varchar(120) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.enp.reng.enp` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ent`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ent`(
	[ent.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.ent` PRIMARY KEY CLUSTERED 
(
	[ent.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.esc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.esc`(
	[esc.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.art2` char(30)		 			NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` float NOT NULL 	COMMENT ' ',
	[cos.calcular` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.esc` PRIMARY KEY CLUSTERED 
(
	[esc.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.exp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.exp`(
	[exp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[suni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.uni` float NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[total.art` float NOT NULL 	COMMENT ' ',
	[stotal.art` float NOT NULL 	COMMENT ' ',
	[cos.pro.un` float NOT NULL 	COMMENT ' ',
	[cos.pro.om` float NOT NULL 	COMMENT ' ',
	[ult.cos.un` float NOT NULL 	COMMENT ' ',
	[ult.cos.om` float NOT NULL 	COMMENT ' ',
	[pendiente2` float NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[cant.sol` int 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[cod.ced` int 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.exp` PRIMARY KEY CLUSTERED 
(
	[exp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.exp2`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.exp2`(
	[exp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.art2` char(30)		 			NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[existencia` float NOT NULL 	COMMENT ' ',
	[total.art` float NOT NULL 	COMMENT ' ',
	[faltante` float NOT NULL 	COMMENT ' ',
	[costo` float NOT NULL 	COMMENT ' ',
	[costo.pro` float NOT NULL 	COMMENT ' ',
	[porllegar` float NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.exp2` PRIMARY KEY CLUSTERED 
(
	[exp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.fac`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.fac`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[isv` double 				NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[tipo.prec` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.fac.reng.fac` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.fai`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.fai`(
	[imp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[tot.neto` float NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.fai` PRIMARY KEY CLUSTERED 
(
	[imp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.fci`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.fci`(
	[imp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[tot.neto` float NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[monto.dis` float NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.fci` PRIMARY KEY CLUSTERED 
(
	[imp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.fis`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.fis`(
	[num.fis` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.lad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[stock.teor` double 				NOT NULL 	COMMENT ' ',
	[stock.real` double 				NOT NULL 	COMMENT ' ',
	[sstock.teo` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[costo.uni` double 				NOT NULL 	COMMENT ' ',
	[aju.num` char(08) NOT NULL 	COMMENT ' ',
	[saju.num` int 				NOT NULL 	COMMENT ' ',
	[cerrado` bit 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[suni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[t.costo` int 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[costo.uni.om` double 				NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.fis.reng.fis` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[num.fis` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.gce`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.gce`(
	[co.ced` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.gas` char(06)		 			NOT NULL 	COMMENT ' ',
	[cantidad` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.gce` PRIMARY KEY CLUSTERED 
(
	[co.ced` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.gen`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.gen`(
	[gene.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[suni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[costo.uni` double 				NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[neto` double 				NOT NULL 	COMMENT ' ',
	[aju.sal` int 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.gen.reng.gen` PRIMARY KEY CLUSTERED 
(
	[gene.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.imp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.imp`(
	[inp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.art2` char(30)		 			NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[existencia` double 				NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.imp` PRIMARY KEY CLUSTERED 
(
	[inp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.isl`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.isl`(
	[tipo.doc` char(03) NOT NULL 	COMMENT ' ',
	[doc.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[co.islr` char(06)		 			NOT NULL 	COMMENT ' ',
	[monto.obj` double 				NOT NULL 	COMMENT ' ',
	[monto.reten` double 				NOT NULL 	COMMENT ' ',
	[sustraen` double 				NOT NULL 	COMMENT ' ',
	[porc.retn` decimal(18,8) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.isl` PRIMARY KEY CLUSTERED 
(
	[tipo.doc` ASC,
	[doc.num` ASC,
	[reng.num` ASC,
	[fact.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.kit`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.kit`(
	[kit.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[des.kit` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.kit.reng.kit` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[kit.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.mce`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.mce`(
	[co.ced` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.tar` char(10)		 			NOT NULL 	COMMENT ' ',
	[cantidad` double 				NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[cant.max` double 				NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.mce` PRIMARY KEY CLUSTERED 
(
	[co.ced` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.men`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.men`(
	[men.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[odp.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[cantidad` double 				NOT NULL 	COMMENT ' ',
	[pendpro` double 				NOT NULL 	COMMENT ' ',
	[stockop` double 				NOT NULL 	COMMENT ' ',
	[stockact` double 				NOT NULL 	COMMENT ' ',
	[diasinv` double 				NOT NULL 	COMMENT ' ',
	[diasprod` int 				NOT NULL 	COMMENT ' ',
	[holgura` int 				NOT NULL 	COMMENT ' ',
	[cantprod` double 				NOT NULL 	COMMENT ' ',
	[periodo` char(20)		 			NOT NULL 	COMMENT ' ',
	[cod.ced` int 				NOT NULL 	COMMENT ' ',
	[mesprox` double 				NOT NULL 	COMMENT ' ',
	[Comprom` double 				NOT NULL 	COMMENT ' ',
	[producir` bit 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.men` PRIMARY KEY CLUSTERED 
(
	[men.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ndd`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ndd`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.ndd.reng.ndd` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.nde`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.nde`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.nde.reng.nde` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ndr`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ndr`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.ndr.reng.ndr` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.odp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.odp`(
	[odp.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[cant.req` double 				NOT NULL 	COMMENT ' ',
	[cant.ent` double 				NOT NULL 	COMMENT ' ',
	[cant.ent2` double 				NOT NULL 	COMMENT ' ',
	[cant.com` double 				NOT NULL 	COMMENT ' ',
	[cant.com2` double 				NOT NULL 	COMMENT ' ',
	[cant.max` double 				NOT NULL 	COMMENT ' ',
	[cant.dev` double 				NOT NULL 	COMMENT ' ',
	[cant.dev2` double 				NOT NULL 	COMMENT ' ',
	[cant.xde` double 				NOT NULL 	COMMENT ' ',
	[cant.xde2` double 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[subced` int 				NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[co.tar` char(10)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.odp` PRIMARY KEY CLUSTERED 
(
	[odp.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.opg`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.opg`(
	[ord.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[cta.egre` char(06)		 			NOT NULL 	COMMENT ' ',
	[descrip` text NOT NULL 	COMMENT ' ',
	[monto.a` double 				NOT NULL 	COMMENT ' ',
	[monto.co` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.opg` PRIMARY KEY CLUSTERED 
(
	[ord.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ord`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ord`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.ord.reng.ord` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.pag`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.pag`(
	[cob.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tp.doc.cob` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num` int 				NOT NULL 	COMMENT ' ',
	[neto` double 				NOT NULL 	COMMENT ' ',
	[neto.tmp` double 				NOT NULL 	COMMENT ' ',
	[dppago` double 				NOT NULL 	COMMENT ' ',
	[dppago.tmp` double 				NOT NULL 	COMMENT ' ',
	[reng.ncr` double 				NOT NULL 	COMMENT ' ',
	[co.ven` char(06)		 			NOT NULL 	COMMENT ' ',
	[comi.porc` double 				NOT NULL 	COMMENT ' ',
	[comi.linea` double 				NOT NULL 	COMMENT ' ',
	[comi.conc` double 				NOT NULL 	COMMENT ' ',
	[comi.art` double 				NOT NULL 	COMMENT ' ',
	[sign.aju.c` char(01)		 			NOT NULL 	COMMENT ' ',
	[porc.aju.c` double 				NOT NULL 	COMMENT ' ',
	[por.cob` double 				NOT NULL 	COMMENT ' ',
	[comi.cob` double 				NOT NULL 	COMMENT ' ',
	[mont.cob` double 				NOT NULL 	COMMENT ' ',
	[sino.pago` bit 				NOT NULL 	COMMENT ' ',
	[sino.reten` bit 				NOT NULL 	COMMENT ' ',
	[monto.reten` double 				NOT NULL 	COMMENT ' ',
	[monto.dppago` double 				NOT NULL 	COMMENT ' ',
	[imp.pago` double 				NOT NULL 	COMMENT ' ',
	[monto.obj` double 				NOT NULL 	COMMENT ' ',
	[isv` double 				NOT NULL 	COMMENT ' ',
	[nro.fact` char(20)		 			NOT NULL 	COMMENT ' ',
	[moneda` char(10)		 			NOT NULL 	COMMENT ' ',
	[tasa` double 				NOT NULL 	COMMENT ' ',
	[sustraen` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[co.islr` char(06)		 			NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[fec.venc` datetime		 			NOT NULL 	COMMENT ' ',
	[ret.iva` double 				NOT NULL 	COMMENT ' ',
	[fact.iva` int 				NOT NULL 	COMMENT ' ',
	[numcon` char(20)		 			NOT NULL 	COMMENT ' ',
	[porc.retn` decimal(18,8) NOT NULL 	COMMENT ' ',
	[porc.desc` decimal(18,8) NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[prov.ter` char(10)		 			NOT NULL 	COMMENT ' ',
	[reng.ter` int 				NOT NULL 	COMMENT ' ',
	[fec.com` datetime NULL,
 CONSTRAINT [reng.pag.reng.pag` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[cob.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.ped`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.ped`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[serialp` char(30)		 			NOT NULL 	COMMENT ' ',
	[valido` bit 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.ped.reng.ped` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.pla`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.pla`(
	[pla.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[xstock` bit 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[m1` double 				NOT NULL 	COMMENT ' ',
	[m2` double 				NOT NULL 	COMMENT ' ',
	[m3` double 				NOT NULL 	COMMENT ' ',
	[m4` double 				NOT NULL 	COMMENT ' ',
	[m5` double 				NOT NULL 	COMMENT ' ',
	[m6` double 				NOT NULL 	COMMENT ' ',
	[m7` double 				NOT NULL 	COMMENT ' ',
	[m8` double 				NOT NULL 	COMMENT ' ',
	[m9` double 				NOT NULL 	COMMENT ' ',
	[m10` double 				NOT NULL 	COMMENT ' ',
	[m11` double 				NOT NULL 	COMMENT ' ',
	[m12` double 				NOT NULL 	COMMENT ' ',
	[d1` double 				NOT NULL 	COMMENT ' ',
	[d2` double 				NOT NULL 	COMMENT ' ',
	[d3` double 				NOT NULL 	COMMENT ' ',
	[d4` double 				NOT NULL 	COMMENT ' ',
	[d5` double 				NOT NULL 	COMMENT ' ',
	[d6` double 				NOT NULL 	COMMENT ' ',
	[d7` double 				NOT NULL 	COMMENT ' ',
	[d8` double 				NOT NULL 	COMMENT ' ',
	[d9` double 				NOT NULL 	COMMENT ' ',
	[d10` double 				NOT NULL 	COMMENT ' ',
	[d11` double 				NOT NULL 	COMMENT ' ',
	[d12` double 				NOT NULL 	COMMENT ' ',
	[enero` int 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.pla` PRIMARY KEY CLUSTERED 
(
	[pla.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.plc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.plc`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.plc.reng.plc` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.plv`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.plv`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[pendiente` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` double 				NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.neto` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[total.dev` double 				NOT NULL 	COMMENT ' ',
	[monto.dev` double 				NOT NULL 	COMMENT ' ',
	[prec.vta2` double 				NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` double 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[mon.ilc` double 				NOT NULL 	COMMENT ' ',
	[otros` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.prod` double 				NOT NULL 	COMMENT ' ',
	[imp.prod` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.plv.reng.plv` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.pve`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.pve`(
	[fact.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc` int 				NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.art` float NOT NULL 	COMMENT ' ',
	[stotal.art` float NOT NULL 	COMMENT ' ',
	[pendiente` float NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[prec.vta` float NOT NULL 	COMMENT ' ',
	[porc.desc` char(15)		 			NOT NULL 	COMMENT ' ',
	[tipo.imp` char(01)		 			NOT NULL 	COMMENT ' ',
	[isv` float NOT NULL 	COMMENT ' ',
	[reng.neto` float NOT NULL 	COMMENT ' ',
	[cos.pro.un` float NOT NULL 	COMMENT ' ',
	[ult.cos.un` float NOT NULL 	COMMENT ' ',
	[ult.cos.om` float NOT NULL 	COMMENT ' ',
	[cos.pro.om` float NOT NULL 	COMMENT ' ',
	[total.dev` float NOT NULL 	COMMENT ' ',
	[monto.dev` float NOT NULL 	COMMENT ' ',
	[prec.vta2` float NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[des.art` text NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[cant.imp` float NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[total.uni` float NOT NULL 	COMMENT ' ',
	[mon.ilc` float NOT NULL 	COMMENT ' ',
	[otros` float NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` float NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[co.alma2` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.pve` PRIMARY KEY CLUSTERED 
(
	[fact.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.req`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.req`(
	[req.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[cant.req` double 				NOT NULL 	COMMENT ' ',
	[cant.com` double 				NOT NULL 	COMMENT ' ',
	[cant.xsol` double 				NOT NULL 	COMMENT ' ',
	[cant.sol` double 				NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[suni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[multilote` text NOT NULL 	COMMENT ' ',
	[subced` int 				NOT NULL 	COMMENT ' ',
	[cant.sol2` double 				NOT NULL 	COMMENT ' ',
	[total.art2` double 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[sustituto` bit 				NOT NULL 	COMMENT ' ',
	[co.tar` char(10)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.req` PRIMARY KEY CLUSTERED 
(
	[req.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.res`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.res`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tipo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` float NOT NULL 	COMMENT ' ',
	[stotal.art` float NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[unidad` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.art` varchar(120) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.res` PRIMARY KEY CLUSTERED 
(
	[rma.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.rmc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.rmc`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[serial` char(40) NOT NULL 	COMMENT ' ',
	[doc.tip.s` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num.s` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[fec.doc.s` datetime		 			NOT NULL 	COMMENT ' ',
	[tiempo.gar` float NOT NULL 	COMMENT ' ',
	[fec.venc` datetime		 			NOT NULL 	COMMENT ' ',
	[co.falla` char(06)		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.prov` char(10)		 			NOT NULL 	COMMENT ' ',
	[fec.entreg` datetime		 			NOT NULL 	COMMENT ' ',
	[rma.num.pr` int 				NOT NULL 	COMMENT ' ',
	[co.revi` char(06)		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.reem` char(06)		 			NOT NULL 	COMMENT ' ',
	[treemplazo` char(01)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[co.tec` char(06)		 			NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.art` varchar(120) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.rmc` PRIMARY KEY CLUSTERED 
(
	[rma.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.rmp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.rmp`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[serial` char(40) NOT NULL 	COMMENT ' ',
	[doc.tip.e` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num.e` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[tipo.doc` char(01)		 			NOT NULL 	COMMENT ' ',
	[num.doc` int 				NOT NULL 	COMMENT ' ',
	[fec.doc.e` datetime		 			NOT NULL 	COMMENT ' ',
	[co.falla` char(06)		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[co.reem` char(06)		 			NOT NULL 	COMMENT ' ',
	[treemplazo` char(01)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[seleccion` bit 				NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.art` varchar(120) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.rmp.reng.rmp` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.tab`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.tab`(
	[co.tab` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.islr` char(06) NOT NULL CONSTRAINT [DF..reng.tab..co.isl..02408760` 	 DEFAULT (space((1))),
	[porc.ret` float NOT NULL CONSTRAINT [DF..reng.tab..porc.r..0334AB99` 	 ((0)),
	[porc.imp` float NOT NULL CONSTRAINT [DF..reng.tab..porc.i..0428CFD2` 	 ((0)),
	[sustraen` float NOT NULL CONSTRAINT [DF..reng.tab..sustra..051CF40B` 	 ((0)),
	[islr.des` varchar(60) NOT NULL CONSTRAINT [DF..reng.tab..islr.d..06111844` 	 DEFAULT (space((1))),
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL CONSTRAINT [DF.reng.tab.rowguid` 	 (newid()),
 CONSTRAINT [PK.reng.tab` PRIMARY KEY CLUSTERED 
(
	[co.tab` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.tar`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.tar`(
	[co.tar` char(10)		 			NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[co.maq` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.reng.tar` PRIMARY KEY CLUSTERED 
(
	[co.tar` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[Reng.tax`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[Reng.tax`(
	[Tax.Num` int 				NOT NULL 	COMMENT ' ',
	[Reng.num` int 				NOT NULL 	COMMENT ' ',
	[Tax.id` char(08) NOT NULL 	COMMENT ' ',
	[Tasa1` double 				NOT NULL 	COMMENT ' ',
	[Tasa2` double 				NOT NULL 	COMMENT ' ',
	[Tasa3` double 				NOT NULL 	COMMENT ' ',
	[Formula` bit 				NOT NULL 	COMMENT ' ',
	[Limite` double 				NOT NULL 	COMMENT ' ',
	[Porc1` double 				NOT NULL 	COMMENT ' ',
	[Porc2` double 				NOT NULL 	COMMENT ' ',
	[Rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.Reng.tax` PRIMARY KEY CLUSTERED 
(
	[Tax.Num` ASC,
	[Reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.tcp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.tcp`(
	[cob.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tip.cob` char(04)		 			NOT NULL 	COMMENT ' ',
	[movi` int 				NOT NULL 	COMMENT ' ',
	[num.doc` char(20)		 			NOT NULL 	COMMENT ' ',
	[devuelto` bit 				NOT NULL 	COMMENT ' ',
	[mont.doc` double 				NOT NULL 	COMMENT ' ',
	[mont.tmp` double 				NOT NULL 	COMMENT ' ',
	[moneda` char(08) NOT NULL 	COMMENT ' ',
	[banco` char(06)		 			NOT NULL 	COMMENT ' ',
	[cod.caja` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.caja` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.cheq` datetime		 			NOT NULL 	COMMENT ' ',
	[nombre.ban` char(60)		 			NOT NULL 	COMMENT ' ',
	[numero` char(20)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.tcp.reng.tcp` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[cob.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.tip`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.tip`(
	[cob.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[tip.cob` char(04)		 			NOT NULL 	COMMENT ' ',
	[movi` int 				NOT NULL 	COMMENT ' ',
	[num.doc` char(20)		 			NOT NULL 	COMMENT ' ',
	[mont.doc` double 				NOT NULL 	COMMENT ' ',
	[mont.tmp` double 				NOT NULL 	COMMENT ' ',
	[moneda` char(08) NOT NULL 	COMMENT ' ',
	[banco` char(06)		 			NOT NULL 	COMMENT ' ',
	[cod.caja` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.caja` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.cheq` datetime		 			NOT NULL 	COMMENT ' ',
	[nombre.ban` char(60)		 			NOT NULL 	COMMENT ' ',
	[numero` char(20)		 			NOT NULL 	COMMENT ' ',
	[devuelto` bit 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[operador` char(04)		 			NOT NULL 	COMMENT ' ',
	[clave` char(06)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.tip.reng.tip` PRIMARY KEY CLUSTERED 
(
	[reng.num` ASC,
	[cob.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reng.tra`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reng.tra`(
	[tras.num` int 				NOT NULL 	COMMENT ' ',
	[reng.num` int 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[total.art` double 				NOT NULL 	COMMENT ' ',
	[descrip` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[stotal.art` double 				NOT NULL 	COMMENT ' ',
	[suni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[fec.lote` datetime		 			NOT NULL 	COMMENT ' ',
	[cos.pro.un` double 				NOT NULL 	COMMENT ' ',
	[cos.pro.om` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.un` double 				NOT NULL 	COMMENT ' ',
	[ult.cos.om` double 				NOT NULL 	COMMENT ' ',
	[pendiente2` double 				NOT NULL 	COMMENT ' ',
	[tipo.doc2` char(01)		 			NOT NULL 	COMMENT ' ',
	[reng.doc2` int 				NOT NULL 	COMMENT ' ',
	[num.doc2` int 				NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[cant.sol` int 				NOT NULL 	COMMENT ' ',
	[produccion` bit 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [reng.tra.reng.tra` PRIMARY KEY CLUSTERED 
(
	[tras.num` ASC,
	[reng.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rentab`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rentab`(
	[co.rent` char(30)		 			NOT NULL 	COMMENT ' ',
	[tipo.ven` char(04)		 			NOT NULL 	COMMENT ' ',
	[tipo.rent` char(01)		 			NOT NULL 	COMMENT ' ',
	[hasta1` double 				NOT NULL 	COMMENT ' ',
	[hasta2` double 				NOT NULL 	COMMENT ' ',
	[hasta3` double 				NOT NULL 	COMMENT ' ',
	[hasta4` double 				NOT NULL 	COMMENT ' ',
	[hasta5` double 				NOT NULL 	COMMENT ' ',
	[porc1` double 				NOT NULL 	COMMENT ' ',
	[porc2` double 				NOT NULL 	COMMENT ' ',
	[porc3` double 				NOT NULL 	COMMENT ' ',
	[porc4` double 				NOT NULL 	COMMENT ' ',
	[porc5` double 				NOT NULL 	COMMENT ' ',
	[porc6` double 				NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [rentab.co.rent` PRIMARY KEY CLUSTERED 
(
	[tipo.rent` ASC,
	[tipo.ven` ASC,
	[co.rent` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[reportes`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[reportes`(
	[campo1` [varchar`(130) NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.amb`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.amb`(
	[amb.usua` char(06)		 			NOT NULL 	COMMENT ' ',
	[amb.rma` char(04)		 			NOT NULL 	COMMENT ' ',
	[rma.num` bit 				NOT NULL 	COMMENT ' ',
	[nro.ent.pr` bit 				NOT NULL 	COMMENT ' ',
	[fec.emis` bit 				NOT NULL 	COMMENT ' ',
	[vco.cli` char(10)		 			NOT NULL 	COMMENT ' ',
	[dco.cli` bit 				NOT NULL 	COMMENT ' ',
	[co.cli` bit 				NOT NULL 	COMMENT ' ',
	[rma.prov` bit 				NOT NULL 	COMMENT ' ',
	[vco.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[dco.tran` bit 				NOT NULL 	COMMENT ' ',
	[co.tran` bit 				NOT NULL 	COMMENT ' ',
	[descrip` bit 				NOT NULL 	COMMENT ' ',
	[vmoneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[dmoneda` bit 				NOT NULL 	COMMENT ' ',
	[moneda` bit 				NOT NULL 	COMMENT ' ',
	[vreng.1` char(06)		 			NOT NULL 	COMMENT ' ',
	[dreng.1` bit 				NOT NULL 	COMMENT ' ',
	[reng.1` bit 				NOT NULL 	COMMENT ' ',
	[vreng.2` char(06)		 			NOT NULL 	COMMENT ' ',
	[dreng.2` bit 				NOT NULL 	COMMENT ' ',
	[reng.2` bit 				NOT NULL 	COMMENT ' ',
	[vreng.3` char(06)		 			NOT NULL 	COMMENT ' ',
	[dreng.3` bit 				NOT NULL 	COMMENT ' ',
	[reng.3` bit 				NOT NULL 	COMMENT ' ',
	[b.art` bit 				NOT NULL 	COMMENT ' ',
	[b.importar` bit 				NOT NULL 	COMMENT ' ',
	[b.seriales` bit 				NOT NULL 	COMMENT ' ',
	[b.anular` bit 				NOT NULL 	COMMENT ' ',
	[b.procesar` bit 				NOT NULL 	COMMENT ' ',
	[b.reversar` bit 				NOT NULL 	COMMENT ' ',
	[b.clien` bit 				NOT NULL 	COMMENT ' ',
	[tamcol01` int 				NOT NULL 	COMMENT ' ',
	[tamcol02` int 				NOT NULL 	COMMENT ' ',
	[tamcol03` int 				NOT NULL 	COMMENT ' ',
	[tamcol04` int 				NOT NULL 	COMMENT ' ',
	[tamcol05` int 				NOT NULL 	COMMENT ' ',
	[tamcol06` int 				NOT NULL 	COMMENT ' ',
	[tamcol07` int 				NOT NULL 	COMMENT ' ',
	[tamcol08` int 				NOT NULL 	COMMENT ' ',
	[tamcol09` int 				NOT NULL 	COMMENT ' ',
	[tamcol10` int 				NOT NULL 	COMMENT ' ',
	[tamcol11` int 				NOT NULL 	COMMENT ' ',
	[tamcol12` int 				NOT NULL 	COMMENT ' ',
	[tamcol13` int 				NOT NULL 	COMMENT ' ',
	[tamcol14` int 				NOT NULL 	COMMENT ' ',
	[tamcol15` int 				NOT NULL 	COMMENT ' ',
	[tamcol16` int 				NOT NULL 	COMMENT ' ',
	[tamcol17` int 				NOT NULL 	COMMENT ' ',
	[tamcol18` int 				NOT NULL 	COMMENT ' ',
	[tamcol19` int 				NOT NULL 	COMMENT ' ',
	[tamcol20` int 				NOT NULL 	COMMENT ' ',
	[tamcol21` int 				NOT NULL 	COMMENT ' ',
	[tamcol22` int 				NOT NULL 	COMMENT ' ',
	[poscol01` int 				NOT NULL 	COMMENT ' ',
	[poscol02` int 				NOT NULL 	COMMENT ' ',
	[poscol03` int 				NOT NULL 	COMMENT ' ',
	[poscol04` int 				NOT NULL 	COMMENT ' ',
	[poscol05` int 				NOT NULL 	COMMENT ' ',
	[poscol06` int 				NOT NULL 	COMMENT ' ',
	[poscol07` int 				NOT NULL 	COMMENT ' ',
	[poscol08` int 				NOT NULL 	COMMENT ' ',
	[poscol09` int 				NOT NULL 	COMMENT ' ',
	[poscol10` int 				NOT NULL 	COMMENT ' ',
	[poscol11` int 				NOT NULL 	COMMENT ' ',
	[poscol12` int 				NOT NULL 	COMMENT ' ',
	[poscol13` int 				NOT NULL 	COMMENT ' ',
	[poscol14` int 				NOT NULL 	COMMENT ' ',
	[poscol15` int 				NOT NULL 	COMMENT ' ',
	[poscol16` int 				NOT NULL 	COMMENT ' ',
	[poscol17` int 				NOT NULL 	COMMENT ' ',
	[poscol18` int 				NOT NULL 	COMMENT ' ',
	[poscol19` int 				NOT NULL 	COMMENT ' ',
	[poscol20` int 				NOT NULL 	COMMENT ' ',
	[poscol21` int 				NOT NULL 	COMMENT ' ',
	[poscol22` int 				NOT NULL 	COMMENT ' ',
	[pseriales` bit 				NOT NULL 	COMMENT ' ',
	[pnvo.prov` bit 				NOT NULL 	COMMENT ' ',
	[camb.doc` bit 				NOT NULL 	COMMENT ' ',
	[sin.docu` bit 				NOT NULL 	COMMENT ' ',
	[gar.venc` bit 				NOT NULL 	COMMENT ' ',
	[ser.nulo` bit 				NOT NULL 	COMMENT ' ',
	[saldo` bit 				NOT NULL 	COMMENT ' ',
	[fvenc` bit 				NOT NULL 	COMMENT ' ',
	[chdev` bit 				NOT NULL 	COMMENT ' ',
	[camb.art` bit 				NOT NULL 	COMMENT ' ',
	[entc.art` bit 				NOT NULL 	COMMENT ' ',
	[listar` int 				NOT NULL 	COMMENT ' ',
	[num.listar` int 				NOT NULL 	COMMENT ' ',
	[numcopia` int 				NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [amb.usua` UNIQUE NONCLUSTERED 
(
	[amb.usua` ASC,
	[amb.rma` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.cli`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.cli`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.cli` char(10)		 			NOT NULL 	COMMENT ' ',
	[nombre` char(60)		 			NOT NULL 	COMMENT ' ',
	[rif` char(18)		 			NOT NULL 	COMMENT ' ',
	[nit` char(18)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[transfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.cli.rma.num` PRIMARY KEY CLUSTERED 
(
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.entc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.entc`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[co.cli` char(10)		 			NOT NULL 	COMMENT ' ',
	[nombre` char(60)		 			NOT NULL 	COMMENT ' ',
	[rif` char(18)		 			NOT NULL 	COMMENT ' ',
	[nit` char(18)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[tasa` float NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[transfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[aju.adm` int 				NOT NULL 	COMMENT ' ',
	[aju.rma` int 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.entc.rma.num` PRIMARY KEY CLUSTERED 
(
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.entp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.entp`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[co.prov` char(10)		 			NOT NULL 	COMMENT ' ',
	[ent.prov` char(15)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[tasa` float NOT NULL 	COMMENT ' ',
	[moneda` char(06)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[transfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.entp.rma.num` PRIMARY KEY CLUSTERED 
(
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.prov`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.prov`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[status` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.prov` char(10)		 			NOT NULL 	COMMENT ' ',
	[rma.prov` char(15)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[descrip` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[transfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.prov.rma.num` PRIMARY KEY CLUSTERED 
(
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.reem`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.reem`(
	[co.reem` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.reem` char(60)		 			NOT NULL 	COMMENT ' ',
	[treemplazo` char(01)		 			NOT NULL 	COMMENT ' ',
	[cant.dias` int 				NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.reem.co.reem` PRIMARY KEY CLUSTERED 
(
	[co.reem` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.reep`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.reep`(
	[co.reem` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.reem` char(60)		 			NOT NULL 	COMMENT ' ',
	[treemplazo` char(01)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.reep.co.reem` PRIMARY KEY CLUSTERED 
(
	[co.reem` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.res`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.res`(
	[rma.num` int 				NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[descrip` [char`(80) NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.res.rma.num` PRIMARY KEY CLUSTERED 
(
	[rma.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[rma.revi`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[rma.revi`(
	[co.revi` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.revi` char(60)		 			NOT NULL 	COMMENT ' ',
	[trevision` char(01)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [rma.revi.co.revi` PRIMARY KEY CLUSTERED 
(
	[co.revi` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[segmento`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[segmento`(
	[co.seg` char(06)		 			NOT NULL 	COMMENT ' ',
	[seg.des` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[c.cuenta` char(20)		 			NOT NULL 	COMMENT ' ',
	[p.cuenta` char(20)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [segmento.co.seg` PRIMARY KEY CLUSTERED 
(
	[co.seg` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[ser.rma`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[ser.rma`(
	[contador` int 				NOT NULL 	COMMENT ' ',
	[num.gara` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[serial` char(40) NOT NULL 	COMMENT ' ',
	[doc.tip.e` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num.e` int 				NOT NULL 	COMMENT ' ',
	[doc.tip.s` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num.s` int 				NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[AUX01` double 				NOT NULL 	COMMENT ' ',
	[AUX02` varchar(30) NOT NULL
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[seriales`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[seriales`(
	[contador` int 				NOT NULL 	COMMENT ' ',
	[num.gara` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[serial` char(40) NOT NULL 	COMMENT ' ',
	[doc.tip.e` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num.e` int 				NOT NULL 	COMMENT ' ',
	[doc.tip.s` char(04)		 			NOT NULL 	COMMENT ' ',
	[doc.num.s` int 				NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[AUX01` double 				NOT NULL 	COMMENT ' ',
	[AUX02` varchar(30) NOT NULL
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spatriv`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spatriv`(
	[co.atriv` char(10)		 			NOT NULL 	COMMENT ' ',
	[atriv.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[tipo` int 				NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spatriv` PRIMARY KEY CLUSTERED 
(
	[co.atriv` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spced`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spced`(
	[co.ced` int 				NOT NULL 	COMMENT ' ',
	[ced.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[cap.max` double 				NOT NULL 	COMMENT ' ',
	[estandar` bit 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[cantidad` double 				NOT NULL 	COMMENT ' ',
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.dep` char(06)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[dias` int 				NOT NULL 	COMMENT ' ',
	[horas` double 				NOT NULL 	COMMENT ' ',
	[por.cos` double 				NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [ico.ced` PRIMARY KEY CLUSTERED 
(
	[co.ced` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spcierre`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spcierre`(
	[ent.num` int 				NOT NULL 	COMMENT ' ',
	[odp.num` int 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[confirma` bit 				NOT NULL 	COMMENT ' ',
	[aju.num` int 				NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[cie.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[co.sub` char(06)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[fec.conf` datetime		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[gasadi` double 				NOT NULL 	COMMENT ' ',
	[moadi` double 				NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spcierre` PRIMARY KEY CLUSTERED 
(
	[ent.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spcostest`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spcostest`(
	[cost.num` int 				NOT NULL 	COMMENT ' ',
	[fec.vig` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[cost.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spcostest` PRIMARY KEY CLUSTERED 
(
	[cost.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spdevalm`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spdevalm`(
	[dev.num` int 				NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[alm.orig` char(06)		 			NOT NULL 	COMMENT ' ',
	[alm.dest` char(06)		 			NOT NULL 	COMMENT ' ',
	[motivo.glo` char(60)		 			NOT NULL 	COMMENT ' ',
	[confirma` bit 				NOT NULL 	COMMENT ' ',
	[fec.conf` datetime		 			NOT NULL 	COMMENT ' ',
	[inactivo` bit 				NOT NULL 	COMMENT ' ',
	[campo1` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[reqnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[odp.num` int 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[tras.num` int 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spdevalm` PRIMARY KEY CLUSTERED 
(
	[dev.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spemple`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spemple`(
	[co.emp` [char`(17) NOT NULL 	COMMENT ' ',
	[Nombres` char(60)		 			NOT NULL 	COMMENT ' ',
	[sueldo.bas` [decimal`(9, 2) NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [spemple.co.emp` PRIMARY KEY CLUSTERED 
(
	[co.emp` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spentre`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spentre`(
	[ent.num` int 				NOT NULL 	COMMENT ' ',
	[odp.num` int 				NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[confirma` bit 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[aju.num` int 				NOT NULL 	COMMENT ' ',
	[ent.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[co.sub` char(06)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[fec.conf` datetime		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spentre` PRIMARY KEY CLUSTERED 
(
	[ent.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spescena`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spescena`(
	[esc.num` int 				NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[motivo.glo` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[art.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[impnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[mprima` double 				NOT NULL 	COMMENT ' ',
	[mobra` double 				NOT NULL 	COMMENT ' ',
	[gfabrica` double 				NOT NULL 	COMMENT ' ',
	[totalpro` double 				NOT NULL 	COMMENT ' ',
	[porgan` double 				NOT NULL 	COMMENT ' ',
	[unidad` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[cod.ced` int 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [UQ.spescen1` UNIQUE NONCLUSTERED 
(
	[esc.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spexplosion`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spexplosion`(
	[exp.num` int 				NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[alm.orig` char(06)		 			NOT NULL 	COMMENT ' ',
	[motivo.glo` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[expnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spexplosion` PRIMARY KEY CLUSTERED 
(
	[exp.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`,
 CONSTRAINT [UQ.spexplosio1` UNIQUE NONCLUSTERED 
(
	[exp.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spfalla`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spfalla`(
	[co.falla` char(06)		 			NOT NULL 	COMMENT ' ',
	[falla.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [spfalla.co.falla` PRIMARY KEY CLUSTERED 
(
	[co.falla` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spgasfab`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spgasfab`(
	[co.gas` char(06)		 			NOT NULL 	COMMENT ' ',
	[gas.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[esdirecto` int 				NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [spgasfab.co.gas` PRIMARY KEY CLUSTERED 
(
	[co.gas` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spimplosion`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spimplosion`(
	[inp.num` int 				NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[alm.orig` char(06)		 			NOT NULL 	COMMENT ' ',
	[motivo.glo` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[art.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[impnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[maxima` double 				NOT NULL 	COMMENT ' ',
	[unidad` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[cod.ced` int 				NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spimplosion` PRIMARY KEY CLUSTERED 
(
	[inp.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`,
 CONSTRAINT [UQ.spimplosio1` UNIQUE NONCLUSTERED 
(
	[inp.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spmaq`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spmaq`(
	[co.maq` char(06)		 			NOT NULL 	COMMENT ' ',
	[maq.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [spmaq.co.maq` PRIMARY KEY CLUSTERED 
(
	[co.maq` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spmenenc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spmenenc`(
	[men.num` int 				NOT NULL 	COMMENT ' ',
	[des.men` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[Comprom` bit 				NOT NULL 	COMMENT ' ',
	[procesado` bit 				NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [men.num` PRIMARY KEY CLUSTERED 
(
	[men.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spmensual`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spmensual`(
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[cantidad` double 				NOT NULL 	COMMENT ' ',
	[diasinv` double 				NOT NULL 	COMMENT ' ',
	[diasprod` int 				NOT NULL 	COMMENT ' ',
	[holgura` int 				NOT NULL 	COMMENT ' ',
	[periodo` char(20)		 			NOT NULL 	COMMENT ' ',
	[cantprod` double 				NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[cod.ced` int 				NOT NULL 	COMMENT ' ',
	[pendpro` double 				NOT NULL 	COMMENT ' ',
	[mesprox` double 				NOT NULL 	COMMENT ' ',
	[stockop` double 				NOT NULL 	COMMENT ' ',
	[stockact` double 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spmensual` PRIMARY KEY CLUSTERED 
(
	[co.art` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spodp`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spodp`(
	[odp.num` int 				NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.ced` int 				NOT NULL 	COMMENT ' ',
	[ca.art` double 				NOT NULL 	COMMENT ' ',
	[fe.inic` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.fad` datetime		 			NOT NULL 	COMMENT ' ',
	[prioridad` int 				NOT NULL 	COMMENT ' ',
	[edo.odp` char(01)		 			NOT NULL 	COMMENT ' ',
	[num.maqblo` int 				NOT NULL 	COMMENT ' ',
	[ct.estim` double 				NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[fe.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[descrip` [char`(80) NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[anulado` bit 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[mp.cant` double 				NOT NULL 	COMMENT ' ',
	[mo.cant` double 				NOT NULL 	COMMENT ' ',
	[gf.cant` double 				NOT NULL 	COMMENT ' ',
	[men.cant` double 				NOT NULL 	COMMENT ' ',
	[mem.cant` double 				NOT NULL 	COMMENT ' ',
	[oi.cant` double 				NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[total.uni` double 				NOT NULL 	COMMENT ' ',
	[uni.venta` char(06)		 			NOT NULL 	COMMENT ' ',
	[codpcom` int 				NOT NULL 	COMMENT ' ',
	[nodpcom` int 				NOT NULL 	COMMENT ' ',
	[doc.ori` int 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spodp` PRIMARY KEY CLUSTERED 
(
	[odp.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spparmaq`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spparmaq`(
	[par.num` int 				NOT NULL 	COMMENT ' ',
	[par.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[fec.inic` datetime		 			NOT NULL 	COMMENT ' ',
	[fec.fad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.maq` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.falla` char(06)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spparmaq` PRIMARY KEY CLUSTERED 
(
	[par.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spplan`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spplan`(
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[m1` double 				NOT NULL 	COMMENT ' ',
	[m2` double 				NOT NULL 	COMMENT ' ',
	[m3` double 				NOT NULL 	COMMENT ' ',
	[m4` double 				NOT NULL 	COMMENT ' ',
	[m5` double 				NOT NULL 	COMMENT ' ',
	[m6` double 				NOT NULL 	COMMENT ' ',
	[m7` double 				NOT NULL 	COMMENT ' ',
	[m8` double 				NOT NULL 	COMMENT ' ',
	[m9` double 				NOT NULL 	COMMENT ' ',
	[m10` double 				NOT NULL 	COMMENT ' ',
	[m11` double 				NOT NULL 	COMMENT ' ',
	[m12` double 				NOT NULL 	COMMENT ' ',
	[d1` double 				NOT NULL 	COMMENT ' ',
	[d2` double 				NOT NULL 	COMMENT ' ',
	[d3` double 				NOT NULL 	COMMENT ' ',
	[d4` double 				NOT NULL 	COMMENT ' ',
	[d5` double 				NOT NULL 	COMMENT ' ',
	[d6` double 				NOT NULL 	COMMENT ' ',
	[d7` double 				NOT NULL 	COMMENT ' ',
	[d8` double 				NOT NULL 	COMMENT ' ',
	[d9` double 				NOT NULL 	COMMENT ' ',
	[d10` double 				NOT NULL 	COMMENT ' ',
	[d11` double 				NOT NULL 	COMMENT ' ',
	[d12` double 				NOT NULL 	COMMENT ' ',
	[enero` int 				NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spplan` PRIMARY KEY CLUSTERED 
(
	[co.art` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spplanenc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spplanenc`(
	[pla.num` int 				NOT NULL 	COMMENT ' ',
	[des.plan` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[fec.emis` datetime		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [pla.num` PRIMARY KEY CLUSTERED 
(
	[pla.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[spreqalm`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[spreqalm`(
	[req.num` int 				NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[alm.orig` char(06)		 			NOT NULL 	COMMENT ' ',
	[alm.dest` char(06)		 			NOT NULL 	COMMENT ' ',
	[motivo.glo` char(60)		 			NOT NULL 	COMMENT ' ',
	[confirma` bit 				NOT NULL 	COMMENT ' ',
	[fec.conf` datetime		 			NOT NULL 	COMMENT ' ',
	[inactivo` bit 				NOT NULL 	COMMENT ' ',
	[campo1` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` char(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[reqnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[odp.num` int 				NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[tras.num` int 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.spreqalm` PRIMARY KEY CLUSTERED 
(
	[req.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[sptar`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[sptar`(
	[co.tar` char(10)		 			NOT NULL 	COMMENT ' ',
	[tar.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[atributo1` bit 				NOT NULL 	COMMENT ' ',
	[vatributo1` char(15)		 			NOT NULL 	COMMENT ' ',
	[atributo2` bit 				NOT NULL 	COMMENT ' ',
	[vatributo2` char(15)		 			NOT NULL 	COMMENT ' ',
	[atributo3` bit 				NOT NULL 	COMMENT ' ',
	[vatributo3` char(15)		 			NOT NULL 	COMMENT ' ',
	[atributo4` bit 				NOT NULL 	COMMENT ' ',
	[vatributo4` char(15)		 			NOT NULL 	COMMENT ' ',
	[atributo5` bit 				NOT NULL 	COMMENT ' ',
	[vatributo5` char(15)		 			NOT NULL 	COMMENT ' ',
	[atributo6` bit 				NOT NULL 	COMMENT ' ',
	[vatributo6` char(15)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[man.mat` bit 				NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [sptar.co.tar` PRIMARY KEY CLUSTERED 
(
	[co.tar` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[st.almac`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[st.almac`(
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[stock.act` double 				NOT NULL 	COMMENT ' ',
	[sstock.act` double 				NOT NULL 	COMMENT ' ',
	[stock.com` double 				NOT NULL 	COMMENT ' ',
	[sstock.com` double 				NOT NULL 	COMMENT ' ',
	[stock.lle` double 				NOT NULL 	COMMENT ' ',
	[sstock.lle` double 				NOT NULL 	COMMENT ' ',
	[stock.des` double 				NOT NULL 	COMMENT ' ',
	[sstock.des` double 				NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [st.almac.co.stock` PRIMARY KEY CLUSTERED 
(
	[co.alma` ASC,
	[co.art` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[st.lote`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[st.lote`(
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[co.art` char(30)		 			NOT NULL 	COMMENT ' ',
	[nro.lote` char(20)		 			NOT NULL 	COMMENT ' ',
	[stock.act` double 				NOT NULL 	COMMENT ' ',
	[sstock.act` double 				NOT NULL 	COMMENT ' ',
	[stock.com` double 				NOT NULL 	COMMENT ' ',
	[sstock.com` double 				NOT NULL 	COMMENT ' ',
	[stock.lle` double 				NOT NULL 	COMMENT ' ',
	[sstock.lle` double 				NOT NULL 	COMMENT ' ',
	[stock.des` double 				NOT NULL 	COMMENT ' ',
	[sstock.des` double 				NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.st.lote` PRIMARY KEY CLUSTERED 
(
	[co.alma` ASC,
	[co.art` ASC,
	[nro.lote` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[sub.alma`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[sub.alma`(
	[co.sub` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.sub` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.alma` char(06)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[noventa` bit 				NOT NULL 	COMMENT ' ',
	[nocompra` bit 				NOT NULL 	COMMENT ' ',
	[materiales` bit 				NOT NULL 	COMMENT ' ',
	[produccion` bit 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [sub.alma.co.sub` PRIMARY KEY CLUSTERED 
(
	[co.sub` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[sub.lad`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[sub.lad`(
	[co.subl` char(06)		 			NOT NULL 	COMMENT ' ',
	[subl.des` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.lad` char(06)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[co.imun` char(15)		 			NOT NULL 	COMMENT ' ',
	[co.reten` char(06)		 			NOT NULL 	COMMENT ' ',
	[i.subl.des` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[movil` bit 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [sub.lin.co.subl` PRIMARY KEY CLUSTERED 
(
	[co.subl` ASC,
	[co.lad` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[Syncro`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
CREATE TABLE [dbo`.[Syncro`(
	[Syncro` bit NOT NULL
) ON [PRIMARY`

GO
/****** Object:  Table [dbo`.[tab.enc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tab.enc`(
	[fecha` datetime NOT NULL CONSTRAINT [DF..tab.enc..fecha..533092BC` 	 (CONVERT(varchar(10),getdatetime(),(104))),
	[tasa` [decimal`(10, 3) NOT NULL CONSTRAINT [DF..tab.enc..tasa..5424B6F5` 	 ((1)),
	[tasag10` [decimal`(10, 3) NOT NULL CONSTRAINT [DF..tab.enc..tasag10..5518DB2E` 	 ((0)),
	[tasag20` [decimal`(10, 3) NOT NULL CONSTRAINT [DF..tab.enc..tasag20..560CFF67` 	 ((0)),
	[tipo.imp` int NOT NULL CONSTRAINT [DF..tab.enc..tipo.im..570123A0` 	 ((0)),
	[co.us.ad` char(06) NOT NULL CONSTRAINT [DF..tab.enc..co.us.i..57F547D9` 	 DEFAULT (space((1))),
	[fe.us.ad` datetime NOT NULL CONSTRAINT [dflt.fe.us.in.tab.enc` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[co.us.mo` char(06) NOT NULL CONSTRAINT [DF..tab.enc..co.us.m..59DD904B` 	 DEFAULT (space((1))),
	[fe.us.mo` datetime NOT NULL CONSTRAINT [dflt.fe.us.mo.tab.enc` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[co.us.el` char(06) NOT NULL CONSTRAINT [DF..tab.enc..co.us.e..5BC5D8BD` 	 DEFAULT (space((1))),
	[fe.us.el` datetime NOT NULL CONSTRAINT [dflt.fe.us.el.tab.enc` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[revisado` char(01) NOT NULL CONSTRAINT [DF..tab.enc..revisad..5DAE212F` 	 DEFAULT (space((1))),
	[trasnfe` char(01) NOT NULL CONSTRAINT [DF..tab.enc..trasnfe..5EA24568` 	 DEFAULT (space((1))),
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL CONSTRAINT [DF..tab.enc..rowguid..2260DC2A` 	 (newid()),
	[tasa3` [decimal`(10, 3) NOT NULL CONSTRAINT [DF.tab.enc.tasa3` 	 ((0)),
	[tasa4` [decimal`(10, 3) NOT NULL CONSTRAINT [DF.tab.enc.tasa4` 	 ((0)),
	[tasa5` [decimal`(10, 3) NOT NULL CONSTRAINT [DF.tab.enc.tasa5` 	 ((0)),
	[compras` bit NOT NULL CONSTRAINT [DF.tab.enc.compras` 	 ((0)),
 CONSTRAINT [tab.enc.fecha` PRIMARY KEY CLUSTERED 
(
	[fecha` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tab.islr`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tab.islr`(
	[co.tab` int 				NOT NULL 	COMMENT ' ',
	[tab.des` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..tab.de..0C3405EE` 	 DEFAULT (space((1))),
	[rango.ha` float NOT NULL CONSTRAINT [DF..tab.islr..rango...0D282A27` 	 ((0)),
	[rango.de` float NOT NULL CONSTRAINT [DF..tab.islr..rango...0E1C4E60` 	 ((0)),
	[campo1` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo1..0F107299` 	 DEFAULT (space((1))),
	[campo2` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo2..100496D2` 	 DEFAULT (space((1))),
	[campo3` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo3..10F8BB0B` 	 DEFAULT (space((1))),
	[campo4` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo4..11ECDF44` 	 DEFAULT (space((1))),
	[campo5` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo5..12E1037D` 	 DEFAULT (space((1))),
	[campo6` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo6..13D527B6` 	 DEFAULT (space((1))),
	[campo7` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo7..14C94BEF` 	 DEFAULT (space((1))),
	[campo8` varchar(60) NOT NULL CONSTRAINT [DF..tab.islr..campo8..15BD7028` 	 DEFAULT (space((1))),
	[co.us.ad` char(06) NOT NULL CONSTRAINT [DF..tab.islr..co.us...16B19461` 	 DEFAULT (space((1))),
	[fe.us.ad` datetime NOT NULL CONSTRAINT [dflt.fe.us.in.tab.islr` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[co.us.mo` char(06) NOT NULL CONSTRAINT [DF..tab.islr..co.us...1899DCD3` 	 DEFAULT (space((1))),
	[fe.us.mo` datetime NOT NULL CONSTRAINT [dflt.fe.us.mo.tab.islr` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[co.us.el` char(06) NOT NULL CONSTRAINT [DF..tab.islr..co.us...1A822545` 	 DEFAULT (space((1))),
	[fe.us.el` datetime NOT NULL CONSTRAINT [dflt.fe.us.el.tab.islr` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[revisado` char(01) NOT NULL CONSTRAINT [DF..tab.islr..revisa..1C6A6DB7` 	 DEFAULT (space((1))),
	[trasnfe` char(01) NOT NULL CONSTRAINT [DF..tab.islr..trasnf..1D5E91F0` 	 DEFAULT (space((1))),
	[co.sucu` char(06) NOT NULL CONSTRAINT [DF..tab.islr..co.suc..1E52B629` 	 DEFAULT (space((1))),
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL CONSTRAINT [DF.tab.islr.rowguid` 	 (newid()),
	[tipo.per` char(01) NOT NULL CONSTRAINT [DF..tab.islr..tipo.p..1F46DA62` 	 DEFAULT (space((1))),
 CONSTRAINT [PK.tab.islr` PRIMARY KEY CLUSTERED 
(
	[co.tab` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tabulado`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tabulado`(
	[tipo` char(01)		 			NOT NULL 	COMMENT ' ',
	[descripcio` varchar(60) NOT NULL CONSTRAINT [DF..tabulado..descri..608A8DDA` 	 DEFAULT (space((1))),
	[porc.vent` [decimal`(10, 3) NOT NULL CONSTRAINT [DF..tabulado..porc.v..617EB213` 	 ((0)),
	[porc.comp` [decimal`(10, 3) NOT NULL CONSTRAINT [DF..tabulado..porc.c..6272D64C` 	 ((0)),
	[porc.cxs` [decimal`(10, 3) NOT NULL CONSTRAINT [DF..tabulado..porc.c..6366FA85` 	 ((0)),
	[porc.otro` [decimal`(10, 3) NOT NULL CONSTRAINT [DF..tabulado..porc.o..645B1EBE` 	 ((0)),
	[revisado` char(01) NOT NULL CONSTRAINT [DF..tabulado..revisa..654F42F7` 	 DEFAULT (space((1))),
	[trasnfe` char(01) NOT NULL CONSTRAINT [DF..tabulado..trasnf..66436730` 	 DEFAULT (space((1))),
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL CONSTRAINT [DF..tabulado..rowgui..2819B580` 	 (newid()),
 CONSTRAINT [tabulado.tipo` PRIMARY KEY CLUSTERED 
(
	[tipo` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tarj.cre`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tarj.cre`(
	[co.tar` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.tar` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[telefono` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[comision` double 				NOT NULL 	COMMENT ' ',
	[impuesto` double 				NOT NULL 	COMMENT ' ',
	[recargo` double 				NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[row.id` timestamp NOT NULL 	COMMENT ' ',
 CONSTRAINT [tarj.cre.co.tar` PRIMARY KEY CLUSTERED 
(
	[co.tar` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tasas`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tasas`(
	[co.mone` char(06)		 			NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[tasa.c` double 				NOT NULL 	COMMENT ' ',
	[tasa.v` double 				NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [tasas.co.tasas` PRIMARY KEY CLUSTERED 
(
	[co.mone` ASC,
	[fecha` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[Tax`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[Tax`(
	[Tax.id` char(08) NOT NULL 	COMMENT ' ',
	[Tax.des` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Entidad` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Tasa1` double 				NOT NULL 	COMMENT ' ',
	[Tasa2` double 				NOT NULL 	COMMENT ' ',
	[Tasa3` double 				NOT NULL 	COMMENT ' ',
	[Formula` bit 				NOT NULL 	COMMENT ' ',
	[Limite` double 				NOT NULL 	COMMENT ' ',
	[Porc1` double 				NOT NULL 	COMMENT ' ',
	[Porc2` double 				NOT NULL 	COMMENT ' ',
	[Dis.cen` text NOT NULL 	COMMENT ' ',
	[CAMPO1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[CAMPO2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[CAMPO3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[CAMPO4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[FE.US.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[Rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
 CONSTRAINT [Tax.Id` PRIMARY KEY CLUSTERED 
(
	[Tax.id` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[Tax.enc`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[Tax.enc`(
	[TaxG.id` char(08) NOT NULL 	COMMENT ' ',
	[Tax.Num` int 				NOT NULL 	COMMENT ' ',
	[TaxG.des` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[formula` bit 				NOT NULL 	COMMENT ' ',
	[T1.Total` double 				NOT NULL 	COMMENT ' ',
	[T2.Total` double 				NOT NULL 	COMMENT ' ',
	[T3.Total` double 				NOT NULL 	COMMENT ' ',
	[Campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[Campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[FE.US.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[Rowguid` [uniqueidentifier` NOT NULL 	COMMENT ' ',
	[Dis.cen` text NOT NULL 	COMMENT ' ',
 CONSTRAINT [Tax.Num` PRIMARY KEY CLUSTERED 
(
	[Tax.Num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tecnico`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tecnico`(
	[co.tec` char(06)		 			NOT NULL 	COMMENT ' ',
	[tec.des` char(60)		 			NOT NULL 	COMMENT ' ',
	[espec.tec` char(50) NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [tecnico.co.tec` PRIMARY KEY CLUSTERED 
(
	[co.tec` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[TEMPORAL`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[TEMPORAL`(
	[CAMPO1` int IDENTITY(1,1) NOT NULL 	COMMENT ' ',
	[CAMPO2` char(01) NULL
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tipo.aju`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tipo.aju`(
	[co.tipo` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.tipo` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[tipo.trans` char(01)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [tipo.aju.co.tipo` PRIMARY KEY CLUSTERED 
(
	[co.tipo` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tipo.cli`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tipo.cli`(
	[tip.cli` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.tipo` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[precio.a` char(20)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[row.id` timestamp NOT NULL 	COMMENT ' ',
 CONSTRAINT [tipo.cli.tip.cli` PRIMARY KEY CLUSTERED 
(
	[tip.cli` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tipo.pro`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tipo.pro`(
	[tip.pro` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.tipo` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [tipo.pro.tip.pro` PRIMARY KEY CLUSTERED 
(
	[tip.pro` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[transpor`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[transpor`(
	[co.tran` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.tran` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[resp.tra` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [transpor.co.tran` PRIMARY KEY CLUSTERED 
(
	[co.tran` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[tras.alm`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[tras.alm`(
	[tras.num` int 				NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[alm.orig` char(06)		 			NOT NULL 	COMMENT ' ',
	[alm.dest` char(06)		 			NOT NULL 	COMMENT ' ',
	[motivo.glo` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[confirma` bit 				NOT NULL 	COMMENT ' ',
	[fec.conf` datetime		 			NOT NULL 	COMMENT ' ',
	[inactivo` bit 				NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[seriales` int 				NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[anulada` bit 				NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[feccom` datetime		 			NOT NULL 	COMMENT ' ',
	[numcom` int 				NOT NULL 	COMMENT ' ',
	[aux01` double 				NOT NULL 	COMMENT ' ',
	[aux02` varchar(30)		 			NOT NULL 	COMMENT ' ',
	[comentario` text NOT NULL 	COMMENT ' ',
	[produccion` bit 				NOT NULL 	COMMENT ' ',
 CONSTRAINT [tras.alm.tras.num` PRIMARY KEY CLUSTERED 
(
	[tras.num` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[turnos`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[turnos`(
	[co.turno` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.turno` char(60)		 			NOT NULL 	COMMENT ' ',
	[hora.ini` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[minu.ini` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[ampm.ini` char(02) NOT NULL 	COMMENT ' ',
	[hora.fad` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[minu.fad` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[ampm.fad` char(02) NOT NULL 	COMMENT ' ',
	[campo1` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo2` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo3` char(30)		 			NOT NULL 	COMMENT ' ',
	[campo4` char(30)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.turnos` PRIMARY KEY CLUSTERED 
(
	[co.turno` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[turnosic`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[turnosic`(
	[co.turno` char(06)		 			NOT NULL 	COMMENT ' ',
	[cod.caja` char(06)		 			NOT NULL 	COMMENT ' ',
	[saldo` float NOT NULL 	COMMENT ' ',
	[num.turno` int 				NOT NULL 	COMMENT ' ',
	[user.caj` char(06)		 			NOT NULL 	COMMENT ' ',
	[user.sup` char(06)		 			NOT NULL 	COMMENT ' ',
	[fecha` datetime		 			NOT NULL 	COMMENT ' ',
	[inicio` datetime		 			NOT NULL 	COMMENT ' ',
	[finaliza` datetime		 			NOT NULL 	COMMENT ' ',
	[status` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[restringe` bit 				NOT NULL 	COMMENT ' ',
	[hora.ini` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[minu.ini` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[ampm.ini` char(02) NOT NULL 	COMMENT ' ',
	[hora.fad` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[minu.fad` [decimal`(10, 0) NOT NULL 	COMMENT ' ',
	[ampm.fad` char(02) NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[PtoVta` bit 				NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [PK.turnosic` PRIMARY KEY CLUSTERED 
(
	[num.turno` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[uni.trib`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[uni.trib`(
	[uni.gact` char(20) NOT NULL CONSTRAINT [DF.uni.trib.uni.gact` 	 DEFAULT (space((1))),
	[uni.fec` datetime NOT NULL CONSTRAINT [DF.uni.trib.uni.fec` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[uni.fecp` datetime NOT NULL CONSTRAINT [DF.uni.trib.uni.fecp` 	 (datetimeadd(millisecond, -datetimepart(millisecond,getdatetime()),getdatetime())),
	[valor` double NOT NULL CONSTRAINT [DF.uni.trib.valor` 	 ((0)),
	[rowguid` [uniqueidentifier` NOT NULL CONSTRAINT [DF.uni.trib.rowguid` 	 (newid()),
 CONSTRAINT [PK.uni.trib.1` PRIMARY KEY CLUSTERED 
(
	[uni.fec` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[unidades`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[unidades`(
	[co.uni` char(06)		 			NOT NULL 	COMMENT ' ',
	[des.uni` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[row.id` timestamp NOT NULL 	COMMENT ' ',
 CONSTRAINT [unidades.co.uni` PRIMARY KEY CLUSTERED 
(
	[co.uni` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[vendedor`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[vendedor`(
	[co.ven` char(06)		 			NOT NULL 	COMMENT ' ',
	[tipo` char(01)		 			NOT NULL 	COMMENT ' ',
	[ven.des` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[cedula` [char`(16) NOT NULL 	COMMENT ' ',
	[direc1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[direc2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[telefonos` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[fecha.reg` datetime		 			NOT NULL 	COMMENT ' ',
	[condic` bit 				NOT NULL 	COMMENT ' ',
	[comision` double 				NOT NULL 	COMMENT ' ',
	[comen` text NOT NULL 	COMMENT ' ',
	[fun.cob` bit 				NOT NULL 	COMMENT ' ',
	[fun.ven` bit 				NOT NULL 	COMMENT ' ',
	[comisionv` double 				NOT NULL 	COMMENT ' ',
	[fac.ult.ve` int 				NOT NULL 	COMMENT ' ',
	[fec.ult.ve` datetime		 			NOT NULL 	COMMENT ' ',
	[net.ult.ve` double 				NOT NULL 	COMMENT ' ',
	[cli.ult.ve` char(06)		 			NOT NULL 	COMMENT ' ',
	[cta.contab` char(20)		 			NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo5` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo6` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo7` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo8` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
	[logad` char(10)		 			NOT NULL 	COMMENT ' ',
	[password` char(50) NOT NULL 	COMMENT ' ',
	[email` char(40) NOT NULL 	COMMENT ' ',
	[PSW.M` char(20)		 			NOT NULL 	COMMENT ' ',
 CONSTRAINT [vendedor.co.ven` PRIMARY KEY CLUSTERED 
(
	[co.ven` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`

GO
SET ANSI.PADDING OFF
GO
/****** Object:  Table [dbo`.[zona`    Script datetime: 30-08-2019 05:40:16 p.m. ******/
SET ANSI.NULLS ON
GO
SET QUOTED.IDENTIFIER ON
GO
SET ANSI.PADDING ON
GO
CREATE TABLE [dbo`.[zona`(
	[co.zon` char(06)		 			NOT NULL 	COMMENT ' ',
	[zon.des` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[dis.cen` text NOT NULL 	COMMENT ' ',
	[campo1` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo2` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo3` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[campo4` varchar(60)		 			NOT NULL 	COMMENT ' ',
	[co.us.ad` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.ad` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.mo` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.mo` datetime		 			NOT NULL 	COMMENT ' ',
	[co.us.el` char(06)		 			NOT NULL 	COMMENT ' ',
	[fe.us.el` datetime		 			NOT NULL 	COMMENT ' ',
	[revisado` char(01)		 			NOT NULL 	COMMENT ' ',
	[trasnfe` char(01)		 			NOT NULL 	COMMENT ' ',
	[co.sucu` char(06)		 			NOT NULL 	COMMENT ' ',
	[rowguid` [uniqueidentifier` ROWGUIDCOL  NOT NULL 	COMMENT ' ',
 CONSTRAINT [zona.co.zon` PRIMARY KEY CLUSTERED 
(
	[co.zon` ASC
)WITH (PAD.INDEX = OFF, STATISTICS.NORECOMPUTE = OFF, IGNORE.DUP.KEY = OFF, ALLOW.ROW.LOCKS = ON, ALLOW.PAGE.LOCKS = ON) ON [PRIMARY`
) ON [PRIMARY` TEXTIMAGE.ON [PRIMARY`
