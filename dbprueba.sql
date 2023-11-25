/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.35 : Database - inventariobd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventariobd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `inventariobd`;

/*Table structure for table `articulos` */

DROP TABLE IF EXISTS `articulos`;

CREATE TABLE `articulos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `serial` varchar(20) DEFAULT NULL,
  `fecha_ingreso` varchar(20) DEFAULT NULL,
  `fecha_garantia` varchar(20) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `oficina_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `articulos` */

insert  into `articulos`(`id`,`serial`,`fecha_ingreso`,`fecha_garantia`,`marca`,`modelo`,`tipo`,`oficina_id`) values (1,'C02GL3F8Q6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',1),(2,'C02GL3F8Q9W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',1),(3,'C02H30QNQ6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',1),(4,'C02H70Y4Q6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',4),(5,'C02H30R7Q6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(6,'C02H30SAQ6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(7,'C02H30REQ6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(8,'C02GK0NAQ6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(9,'C02GK0KRQ6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(10,'C02GL3GMQ6W2','44761','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(11,'C02GL3HQQ6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(12,'C02H70Y8Q6W2','19/07/2022','19/01/2023','APPLE','iMac M1, 2021','COMPUTADOR',NULL),(13,'MJ0HGBCP','2/08/2022','2/09/2027','LENOVO','ThinkCentre M75s','COMPUTADOR',NULL),(14,'MJ0HGB8A','2/08/2022','2/09/2027','LENOVO','ThinkCentre M75s','COMPUTADOR',NULL),(15,'MJ0HGB94','2/08/2022','2/09/2027','LENOVO','ThinkCentre M75s','COMPUTADOR',NULL),(16,'MJ0HGB6D','2/08/2022','2/09/2027','LENOVO','ThinkCentre M75s','COMPUTADOR',NULL),(17,'C02H108TPN5V','2/08/2022','2/09/2027','IMAC','A2115','COMPUTADOR',NULL),(18,'C02H108BPN5V','2/08/2022','2/09/2027','IMAC','A2115','COMPUTADOR',NULL),(19,'PF39RZWW','17/08/2022','17/01/2025','LENOVO','ThinkPad E14','COMPUTADOR PORTÁTIL',2),(20,'PF39S6GB','17/08/2022','17/01/2025','LENOVO','ThinkPad E14','COMPUTADOR PORTÁTIL',NULL),(21,'C6PJRF3','18/08/2022','19/04/2023','DELL','G5 15','COMPUTADOR PORTÁTIL',2),(22,'4PKFRF3','18/08/2022','19/04/2023','DELL','G5 15','COMPUTADOR PORTÁTIL',NULL),(23,'8CC9304JPB','23/08/2022','22/08/2024','HP PRODESK','Prodesk 400 G6','COMPUTADOR',NULL),(24,'8FBKQ22','9/09/2022','22/08/2024','DELL','OPTIPLEX 9020','COMPUTADOR',NULL),(25,'5CD10625DW','13/09/2022','19/05/2026','HP','HP 340S G7','COMPUTADOR PORTÁTIL',NULL),(26,'MJ0HSFTF','1/10/2022','1/10/2027','LENOVO','Thinkcentre','COMPUTADOR',NULL),(27,'MJ0HGBDL','10/10/2022','10/10/2027','LENOVO','Thinkcentre','COMPUTADOR',NULL),(28,'MJ0HG981','10/10/2022','10/10/2027','LENOVO','Thinkcentre','COMPUTADOR',NULL),(29,'MJ0HGBBS','10/10/2022','10/10/2027','LENOVO','Thinkcentre','COMPUTADOR',NULL),(30,'MJ0HGBAZ','10/10/2022','10/10/2027','LENOVO','Thinkcentre','COMPUTADOR',NULL);

/*Table structure for table `bloques` */

DROP TABLE IF EXISTS `bloques`;

CREATE TABLE `bloques` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bloques` */

insert  into `bloques`(`id`,`nombre`) values (1,'Bloque A'),(2,'Bloque B'),(3,'Bloque C'),(4,'Bloque D');

/*Table structure for table `oficinas` */

DROP TABLE IF EXISTS `oficinas`;

CREATE TABLE `oficinas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_oficina` varchar(20) DEFAULT NULL,
  `bloque_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `oficinas` */

insert  into `oficinas`(`id`,`nom_oficina`,`bloque_id`) values (1,'oficina 1',1),(2,'oficina 2',1),(3,'oficina 1',2),(4,'oficina 1',3),(5,'oficina 2',3),(6,'oficina 3',3),(7,'oficina 1',4),(8,'oficina 2',4),(9,'oficina 3',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
