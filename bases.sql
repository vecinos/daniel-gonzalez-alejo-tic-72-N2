/*
SQLyog Ultimate v8.61 
MySQL - 5.1.41 : Database - prueba22
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`prueba22` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `prueba22`;

/*Table structure for table `grupo` */

DROP TABLE IF EXISTS `grupo`;

CREATE TABLE `grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `orden` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `grupo` */

insert  into `grupo`(`id`,`nombre`,`avatar`,`orden`,`status`) values (1,'tic73','jh','jh','1'),(2,'tic72','no','no','1'),(3,'tic71','no','no','1');

/*Table structure for table `grupos` */

DROP TABLE IF EXISTS `grupos`;

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `grupos` */

/*Table structure for table `ma_maasig` */

DROP TABLE IF EXISTS `ma_maasig`;

CREATE TABLE `ma_maasig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ma_maasig` */

insert  into `ma_maasig`(`id`,`idmateria`,`idusuario`) values (1,3,1),(2,3,1);

/*Table structure for table `materia` */

DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `orden` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `materia` */

insert  into `materia`(`id`,`nombre`,`avatar`,`orden`,`status`) values (1,'matematicas','LO','L','1'),(2,'espanol','no','no','1'),(3,'civismo','no','n','1'),(4,'formacion','WQ','Q','Q');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellido_materno` varchar(50) COLLATE utf8_bin NOT NULL,
  `telefono` int(20) NOT NULL,
  `calle` varchar(50) COLLATE utf8_bin NOT NULL,
  `numero_externo` int(11) NOT NULL,
  `numero_interno` int(11) NOT NULL,
  `colonia` varchar(50) COLLATE utf8_bin NOT NULL,
  `municipio` varchar(50) COLLATE utf8_bin NOT NULL,
  `estado` varchar(50) COLLATE utf8_bin NOT NULL,
  `CP` int(5) NOT NULL,
  `correo` varchar(50) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(50) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(50) COLLATE utf8_bin NOT NULL,
  `nivel` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `usuario` */

insert  into `usuario`(`idusuario`,`nombre`,`apellido_paterno`,`apellido_materno`,`telefono`,`calle`,`numero_externo`,`numero_interno`,`colonia`,`municipio`,`estado`,`CP`,`correo`,`usuario`,`contrasena`,`nivel`,`status`) values (3,'juan','lara','garcia',0,'',0,0,'','','',0,'','1','2','3','1'),(4,'pedro','j','j',0,'',0,0,'','','',0,'','3','4','2','1'),(5,'juan','n','n',0,'',0,0,'','','',0,'','','2','3','1'),(6,'daniel','gonzalez','alejo',0,'',0,0,'','','',0,'','','','2','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
