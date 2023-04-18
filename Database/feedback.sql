/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.45-community-nt : Database - efeedback
*********************************************************************
Server version : 5.0.45-community-nt
*/


create database if not exists `efeedback`;

USE `efeedback`;

/*Table structure for table `allfeedback` */

DROP TABLE IF EXISTS `allfeedback`;

CREATE TABLE `allfeedback` (
  `topicname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `allfeedback` */

insert into `allfeedback` values 
('FootBall','Student','lx160cm@gmail.com','This game was so awesome for Playing any Area'),
('FootBall','Student','lx160cm@gmail.com','sdf jfkljd kl.nghdgkj,djk,fdg,kgkfgkfg'),
('BaseBall','sandeep','sandeep@gmail.com','AM great to watch the BaseBall Game on theary'),
('FootBall','sandeep','vccb@gmail.com','vcbcvbvcbcvbvcbvcbvcb'),
('BasketBall','rajesh','vanaparthyrajesh@gmail.com','Dear Coach\r\n\r\n This weekend i wont come to practice because of i have to finish the labs.'),
('College of Education','rajesh','lx160cm@gmail.com','This is a good compus for learning the education.'),
('hictose','nikhil','665nikhil@gmail.com','This faculty was teaching awesome so that i can get knowledge very easy '),
('hictose','rajesh','milavarapurajesh@gmail.com','This is a faculty all the knowldge i was taken in a fassion way');

/*Table structure for table `baseball` */

DROP TABLE IF EXISTS `baseball`;

CREATE TABLE `baseball` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `baseball` */

insert into `baseball` values 
('ft1',9,0),
('ft2',8,0),
('ft3',8,0),
('ft4',9,0),
('ft5',8,0),
('ft6',5,0),
('ft7',5,0),
('ft8',5,0),
('ft9',6,0),
('user',0,2),
('ft10',4,0);

/*Table structure for table `basketball` */

DROP TABLE IF EXISTS `basketball`;

CREATE TABLE `basketball` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `basketball` */

insert into `basketball` values 
('ft1',8,0),
('ft2',6,0),
('ft3',6,0),
('ft4',7,0),
('ft5',7,0),
('ft6',7,0),
('ft7',7,0),
('ft8',7,0),
('ft9',6,0),
('user',0,2),
('ft10',5,0);

/*Table structure for table `batminton` */

DROP TABLE IF EXISTS `batminton`;

CREATE TABLE `batminton` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `batminton` */

insert into `batminton` values 
('ft1',9,0),
('ft2',9,0),
('ft3',9,0),
('ft4',9,0),
('ft5',9,0),
('ft6',9,0),
('ft7',9,0),
('ft8',9,0),
('ft9',9,0),
('user',0,3),
('ft10',6,0);

/*Table structure for table `breakfast` */

DROP TABLE IF EXISTS `breakfast`;

CREATE TABLE `breakfast` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `breakfast` */

insert into `breakfast` values 
('ft1',11,0),
('ft2',10,0),
('ft3',10,0),
('ft4',11,0),
('ft5',9,0),
('ft6',7,0),
('ft7',7,0),
('ft8',7,0),
('ft9',8,0),
('user',0,3),
('ft10',6,0);

/*Table structure for table `collegeofnatural` */

DROP TABLE IF EXISTS `collegeofnatural`;

CREATE TABLE `collegeofnatural` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `collegeofnatural` */

insert into `collegeofnatural` values 
('ft1',0,0),
('ft2',0,0),
('ft3',0,0),
('ft4',0,0),
('ft5',0,0),
('ft6',0,0),
('ft7',0,0),
('ft8',0,0),
('ft9',0,0),
('user',0,0),
('ft10',0,0);

/*Table structure for table `community` */

DROP TABLE IF EXISTS `community`;

CREATE TABLE `community` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `community` */

insert into `community` values 
('ft1',11,0),
('ft2',11,0),
('ft3',11,0),
('ft4',11,0),
('ft5',11,0),
('ft6',11,0),
('ft7',11,0),
('ft8',11,0),
('ft9',11,0),
('ft10',11,0),
('user',0,3);

/*Table structure for table `degreecollege` */

DROP TABLE IF EXISTS `degreecollege`;

CREATE TABLE `degreecollege` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `degreecollege` */

insert into `degreecollege` values 
('ft1',2,0),
('ft2',2,0),
('ft3',2,0),
('ft4',2,0),
('ft5',2,0),
('ft6',2,0),
('ft7',2,0),
('ft8',2,0),
('ft9',2,0),
('user',0,1),
('ft10',2,0);

/*Table structure for table `dinner` */

DROP TABLE IF EXISTS `dinner`;

CREATE TABLE `dinner` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dinner` */

insert into `dinner` values 
('ft1',7,0),
('ft2',7,0),
('ft3',7,0),
('ft4',7,0),
('ft5',7,0),
('ft6',7,0),
('ft7',7,0),
('ft8',7,0),
('ft9',7,0),
('user',0,2),
('ft10',7,0);

/*Table structure for table `faculties1` */

DROP TABLE IF EXISTS `faculties1`;

CREATE TABLE `faculties1` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculties1` */

insert into `faculties1` values 
('ft1',4,0),
('ft2',3,0),
('ft3',3,0),
('ft4',4,0),
('ft5',5,0),
('ft6',4,0),
('ft7',5,0),
('ft8',4,0),
('ft9',5,0),
('ft10',5,0),
('user',0,2);

/*Table structure for table `faculties2` */

DROP TABLE IF EXISTS `faculties2`;

CREATE TABLE `faculties2` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculties2` */

insert into `faculties2` values 
('ft1',11,0),
('ft2',11,0),
('ft3',12,0),
('ft4',11,0),
('ft5',12,0),
('ft6',12,0),
('ft7',11,0),
('ft8',11,0),
('ft9',10,0),
('ft10',10,0),
('user',0,3);

/*Table structure for table `faculties3` */

DROP TABLE IF EXISTS `faculties3`;

CREATE TABLE `faculties3` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculties3` */

insert into `faculties3` values 
('ft1',7,0),
('ft2',7,0),
('ft3',7,0),
('ft4',7,0),
('ft5',7,0),
('ft6',7,0),
('ft7',7,0),
('ft8',7,0),
('ft9',7,0),
('ft10',7,0),
('user',0,2);

/*Table structure for table `faculties4` */

DROP TABLE IF EXISTS `faculties4`;

CREATE TABLE `faculties4` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculties4` */

insert into `faculties4` values 
('ft1',8,0),
('ft2',8,0),
('ft3',8,0),
('ft4',8,0),
('ft5',9,0),
('ft6',9,0),
('ft7',9,0),
('ft8',9,0),
('ft9',9,0),
('ft10',9,0),
('user',0,2);

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `FID` varchar(30) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `SUBJECT` varchar(40) NOT NULL,
  `EXPERIENCE` varchar(40) NOT NULL,
  `DEPARTMENT` varchar(200) NOT NULL,
  PRIMARY KEY  (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculty` */

insert into `faculty` values 
('CSU2060','hictose','polution machines','4 years','College Of engineering'),
('CSU2461','Vinay','thermo polution','7 years','Computer Science');

/*Table structure for table `facultyfeedback` */

DROP TABLE IF EXISTS `facultyfeedback`;

CREATE TABLE `facultyfeedback` (
  `studentname` varchar(50) NOT NULL,
  `fid` varchar(50) NOT NULL,
  `facultyname` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `feedback` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facultyfeedback` */

insert into `facultyfeedback` values 
('rajesh','CSU2060','hictose','polution machines','College Of engineering',39),
('rajesh','CSU2060','hictose','polution machines','College Of engineering',20),
('nikhil','CSU2060','hictose','polution machines','College Of engineering',40),
('nikhil','CSU2461','Vinay','thermo polution','Computer Science',30),
('nikhil','CSU2461','Vinay','thermo polution','Computer Science',20),
('rajesh','CSU2060','hictose','polution machines','College Of engineering',48);

/*Table structure for table `football` */

DROP TABLE IF EXISTS `football`;

CREATE TABLE `football` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `football` */

insert into `football` values 
('ft1',30,0),
('ft2',31,0),
('ft3',30,0),
('ft4',34,0),
('ft5',28,0),
('ft6',29,0),
('ft7',35,0),
('ft8',27,0),
('ft9',29,0),
('user',0,9),
('ft10',13,0);

/*Table structure for table `grill` */

DROP TABLE IF EXISTS `grill`;

CREATE TABLE `grill` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `grill` */

insert into `grill` values 
('ft1',4,0),
('ft2',4,0),
('ft3',4,0),
('ft4',4,0),
('ft5',4,0),
('ft6',4,0),
('ft7',4,0),
('ft8',3,0),
('ft9',3,0),
('user',0,1),
('ft10',3,0);

/*Table structure for table `library1` */

DROP TABLE IF EXISTS `library1`;

CREATE TABLE `library1` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `library1` */

insert into `library1` values 
('ft1',1,0),
('ft2',2,0),
('ft3',2,0),
('ft4',4,0),
('ft5',3,0),
('ft6',5,0),
('ft7',2,0),
('ft8',4,0),
('ft9',2,0),
('ft10',2,0),
('user',0,1);

/*Table structure for table `library2` */

DROP TABLE IF EXISTS `library2`;

CREATE TABLE `library2` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `library2` */

insert into `library2` values 
('ft1',8,0),
('ft2',7,0),
('ft3',7,0),
('ft4',6,0),
('ft5',7,0),
('ft6',6,0),
('ft7',7,0),
('ft8',7,0),
('ft9',6,0),
('ft10',6,0),
('user',0,2);

/*Table structure for table `library3` */

DROP TABLE IF EXISTS `library3`;

CREATE TABLE `library3` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `library3` */

insert into `library3` values 
('ft1',10,0),
('ft2',12,0),
('ft3',12,0),
('ft4',12,0),
('ft5',11,0),
('ft6',12,0),
('ft7',11,0),
('ft8',14,0),
('ft9',13,0),
('ft10',13,0),
('user',0,3);

/*Table structure for table `library4` */

DROP TABLE IF EXISTS `library4`;

CREATE TABLE `library4` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `library4` */

insert into `library4` values 
('ft1',16,0),
('ft2',14,0),
('ft3',16,0),
('ft4',14,0),
('ft5',16,0),
('ft6',14,0),
('ft7',16,0),
('ft8',14,0),
('ft9',16,0),
('ft10',16,0),
('user',0,4);

/*Table structure for table `lunch` */

DROP TABLE IF EXISTS `lunch`;

CREATE TABLE `lunch` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lunch` */

insert into `lunch` values 
('ft1',6,0),
('ft2',6,0),
('ft3',6,0),
('ft4',6,0),
('ft5',7,0),
('ft6',7,0),
('ft7',6,0),
('ft8',7,0),
('ft9',7,0),
('user',0,2),
('ft10',7,0);

/*Table structure for table `mbadepart` */

DROP TABLE IF EXISTS `mbadepart`;

CREATE TABLE `mbadepart` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbadepart` */

insert into `mbadepart` values 
('ft1',6,0),
('ft2',7,0),
('ft3',6,0),
('ft4',6,0),
('ft5',7,0),
('ft6',6,0),
('ft7',6,0),
('ft8',7,0),
('ft9',7,0),
('ft10',7,0),
('user',0,2);

/*Table structure for table `mihaylocollege` */

DROP TABLE IF EXISTS `mihaylocollege`;

CREATE TABLE `mihaylocollege` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mihaylocollege` */

insert into `mihaylocollege` values 
('ft1',0,0),
('ft2',0,0),
('ft3',0,0),
('ft4',0,0),
('ft5',0,0),
('ft6',0,0),
('ft7',0,0),
('ft8',0,0),
('ft9',0,0),
('user',0,0),
('ft10',0,0);

/*Table structure for table `organization` */

DROP TABLE IF EXISTS `organization`;

CREATE TABLE `organization` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `organization` */

insert into `organization` values 
('ft1',7,0),
('ft2',6,0),
('ft3',7,0),
('ft4',7,0),
('ft5',7,0),
('ft6',7,0),
('ft7',6,0),
('ft8',7,0),
('ft9',7,0),
('ft10',7,0),
('user',0,2);

/*Table structure for table `political` */

DROP TABLE IF EXISTS `political`;

CREATE TABLE `political` (
  `qid` varchar(500) NOT NULL,
  `ratingvalue` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `political` */

insert into `political` values 
('ft1',6,0),
('ft2',7,0),
('ft3',7,0),
('ft4',7,0),
('ft5',7,0),
('ft6',6,0),
('ft7',7,0),
('ft8',6,0),
('ft9',7,0),
('ft10',7,0),
('user',0,2);

/*Table structure for table `studentdata` */

DROP TABLE IF EXISTS `studentdata`;

CREATE TABLE `studentdata` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `cwid` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentdata` */

insert into `studentdata` values 
('nikhil','nikhil','1122','1122','665nikhil@gmail.com'),
('rajesh','rajesh','123456','11111','vanaparthyrajesh@gmail.com'),
('sandeep','sandeep','123','112','sandeepsahu@gmail.com'),
('yamuna','yamuna','6587','6587','yamunavani@gmail.com');
