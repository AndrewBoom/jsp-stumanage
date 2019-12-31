/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.87-community-nt : Database - studentall
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentall` /*!40100 DEFAULT CHARACTER SET gb2312 */;

USE `studentall`;

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `sno` char(20) default NULL,
  `cno` char(20) default NULL,
  `cname` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `sc` */

insert  into `sc`(`sno`,`cno`,`cname`) values ('1111','01','IDEA'),('1111','02','CLion');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sname` char(20) default NULL,
  `sno` char(20) NOT NULL,
  `sage` int(3) default NULL,
  `ssex` char(10) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `student` */

insert  into `student`(`sname`,`sno`,`sage`,`ssex`) values ('sam','1111',18,'female'),('andre','201704',22,'male');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
