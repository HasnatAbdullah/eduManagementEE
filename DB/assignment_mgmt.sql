CREATE DATABASE /*!32312 IF NOT EXISTS*/`assignment_mgmt` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `assignment_mgmt`;

/*Table structure for table `assignments` */

DROP TABLE IF EXISTS `assignments`;

CREATE TABLE `assignments` (
  `asId` int(11) NOT NULL AUTO_INCREMENT,
  `asName` varchar(300) NOT NULL,
  `asDetails` varchar(1000) NOT NULL,
  `asSubject` varchar(100) NOT NULL,
  `asFilePath` varchar(500) NOT NULL,
  `pubDate` date NOT NULL,
  `subDate` date NOT NULL,
  PRIMARY KEY (`asId`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `assignments` */

/*Table structure for table `marks` */

DROP TABLE IF EXISTS `marks`;

CREATE TABLE `marks` (
  `markId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `asId` int(11) NOT NULL,
  `asName` varchar(300) NOT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`markId`),
  KEY `userId` (`userId`),
  KEY `asId` (`asId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `marks` */

/*Table structure for table `submited_assignments` */

DROP TABLE IF EXISTS `submited_assignments`;

CREATE TABLE `submited_assignments` (
  `subAsId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `asId` int(11) NOT NULL,
  `asName` varchar(300) NOT NULL,
  `asDetails` varchar(1000) NOT NULL,
  `pubDate` date DEFAULT NULL,
  `subDate` date DEFAULT NULL,
  `asFilePath` varchar(500) NOT NULL,
  PRIMARY KEY (`subAsId`),
  KEY `asId` (`asId`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `submited_assignments` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL,
  `depertment` varchar(200) NOT NULL,
  `details` varchar(500) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `userType` int(11) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`userId`,`fullName`,`gender`,`address`,`depertment`,`details`,`userName`,`pass`,`userType`) values 
(1,'Abdullah Al Shafayet Bhuyan','MALE','Dhaka','CSE','Average student','shafayet','123',1);
insert  into `users`(`userId`,`fullName`,`gender`,`address`,`depertment`,`details`,`userName`,`pass`,`userType`) values 
(2,'Hasnat Abdullah','MALE','Dhaka','CSE','Average student','noyeem','123',1);
insert  into `users`(`userId`,`fullName`,`gender`,`address`,`depertment`,`details`,`userName`,`pass`,`userType`) values 
(3,'Nawsheen Ahmed Chowdhury','FEMALE','Dhaka','CSE','Average student','nawsheen','123',0);
insert  into `users`(`userId`,`fullName`,`gender`,`address`,`depertment`,`details`,`userName`,`pass`,`userType`) values 
(4,'Sharmin Akter','FEMALE','Dhaka','CSE','Average student','sharmin','123',0);

