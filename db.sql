/*
SQLyog - Free MySQL GUI v5.19
Host - 5.1.54-community : Database - nw_gadov_social_similarity
*********************************************************************
Server version : 5.1.54-community
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `nw_gadov_social_similarity`;

USE `nw_gadov_social_similarity`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `blockhole_path` */

DROP TABLE IF EXISTS `blockhole_path`;

CREATE TABLE `blockhole_path` (
  `blocked_path` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blockhole_path` */

/*Table structure for table `data_packets` */

DROP TABLE IF EXISTS `data_packets`;

CREATE TABLE `data_packets` (
  `pck_id` int(10) NOT NULL AUTO_INCREMENT,
  `pack_hash_code` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pck_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `data_packets` */

insert into `data_packets` (`pck_id`,`pack_hash_code`) values (1,'d55e3e5cc037a1e0940042cb49308baf');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (2,'ed7182b376a00367840f38f6b63260fb');

/*Table structure for table `m_graph` */

DROP TABLE IF EXISTS `m_graph`;

CREATE TABLE `m_graph` (
  `s_n` int(10) NOT NULL AUTO_INCREMENT,
  `no_hubs` int(10) DEFAULT NULL,
  `withmaltime` varchar(100) DEFAULT NULL,
  `withoutmaltime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`s_n`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_graph` */

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `s_no` int(10) NOT NULL AUTO_INCREMENT,
  `no_hubs` int(10) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

/*Table structure for table `neigh_bour` */

DROP TABLE IF EXISTS `neigh_bour`;

CREATE TABLE `neigh_bour` (
  `node_name` varchar(100) DEFAULT NULL,
  `neighbor_node` varchar(500) DEFAULT NULL,
  `neihn_node` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neigh_bour` */

/*Table structure for table `node_info` */

DROP TABLE IF EXISTS `node_info`;

CREATE TABLE `node_info` (
  `node_id` int(20) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(100) DEFAULT NULL,
  `node_x` int(5) DEFAULT NULL,
  `node_y` int(5) DEFAULT NULL,
  `node_type` varchar(100) DEFAULT 'node',
  `country` varchar(100) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `affiliation` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `topic_of_intrest` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `node_info` */

insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (1,'Christophe Diot',42,51,'node','Germany','German','IBM','Researcher','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (2,'Christos Douligeris',45,126,'node','Japan','Japanese','University of Piraeus','Professor','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (3,'Lusheng Ji',114,84,'node','United States of America','English','AT&T Labs','Researcher','Optical networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (4,'Lars Eggert',150,27,'node','Spain',' Spanish','International University in Germany','Researcher','Optical networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (5,'Eylem Ekici',186,88,'node','England','English','Bell Labs Lucent Technologies','Researcher','Network architectures');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (6,'Jeremy Elson',137,153,'node','Germany','German','Microsoft','Researcher','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (7,'Anthony Ephremides',71,189,'node','Japan','Japanese','University of California at Los Angeles','Student','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (8,'Do Young Eun',22,238,'node','United States of America','English','University of Mississippi','Student','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (9,'Sung Ju Lee',119,235,'node','United States of America','English','HP Labs','Researcher','Network architectures');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (10,'Ian Leslie',203,209,'node','Spain','Spanish','Cambridge University','Professor','Network applications & services');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (11,'Sujata Banerjee',223,146,'node','India','Hindi','IBM','Researcher','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (12,'Yigal Bejerano',233,38,'node','Japan','Japanese','Bell Labs Lucent Technologies','Researcher','Network architectures');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (13,'Ramachandran Ramjee',273,99,'node','India','Hindi','IBM','Researcher','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (14,'Ramesh Rao',286,195,'node','India','English','International University in Germany','Student','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (15,'Narasimha Reddy',64,296,'node','India','Hindi','University of California at Los Angeles','Student','Network applications & services');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (16,'Peter Reiher',25,356,'node','United States of America','English','AT&T Labs','Student','Optical networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (17,'Martin Reisslein',136,357,'node','Spain',' Spanish','AT&T Labs','Researcher','Optical networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (18,'Reza Rejaie',154,297,'node','Japan','Japanese','University of California at Los Angeles','Student','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (19,'Rudolf Riedi',222,255,'node','United States of America','English','IBM','Researcher','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (20,'Luigi Rizzo',226,330,'node','England','English','Cambridge University','Professor','Network applications & services');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (21,'Pablo Rodriguez',292,298,'node','China','Chinese','Microsoft','Researcher','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (22,'Antony Rowstron',315,145,'node','Spain','Spanish','Cambridge University','Professor','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (23,'Iljitsch van Beijnum',324,49,'node','United States of America','English','Microsoft','Researcher','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (24,'Piet Van Mieghem',316,245,'node','United States of America','English','Cambridge University','Professor','Network applications & services');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (25,'Marten van Sinderen',331,363,'node','Germany',' German','International University in Germany','Professor','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (26,'Enrique Vazquez',380,316,'node','Japan','Japanese','HP Labs','Researcher','Optical networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (27,'Juan Velasco',453,361,'node','United States of America','English','IBM','Researcher','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (28,'Giorgio Ventre',389,260,'node','England','English','Cambridge University','Student','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (29,'Andras Veres',365,198,'node','Germany','German','University of California at Los Angeles','Student','Optical networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (30,'Rolland Vida',356,97,'node','United States of America','English','AT&T Labs','Researcher','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (31,'Milan Vojnovic',434,48,'node','China',' Chinese','Microsoft','Researcher','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (32,'Helen Wang',403,41,'node','Japan','English','International University in Germany','Professor','Network applications & services');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (33,'Jia Wang',476,101,'node','England','English','Cambridge University','Student','Ad hoc mobile networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (34,'Dapeng Oliver Wu',433,204,'node','United States of America','English','University of California at Los Angeles','Professor','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (35,'Geoffrey Xie',487,163,'node','England','English','AT&T Labs','Researcher','Optical networks');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (36,'Jun Xu',446,292,'node','England','English','HP Labs','Researcher','Network applications & services');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (37,'Tao Yang',499,233,'node','United States of America','English','University of California at Los Angeles','Professor','Network management');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (38,'Roy Yates',516,327,'node','China',' Chinese','Microsoft','Researcher','Network applications & services');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (39,'Edmund Yeh',526,49,'node','China',' Chinese','Bell Labs Lucent Technologies','Researcher','Network architectures');
insert into `node_info` (`node_id`,`node_name`,`node_x`,`node_y`,`node_type`,`country`,`language`,`affiliation`,`position`,`topic_of_intrest`) values (40,'Bulent Yener',544,137,'node','Germany','English','HP Labs','Researcher','Ad hoc mobile networks');

/*Table structure for table `node_similarity` */

DROP TABLE IF EXISTS `node_similarity`;

CREATE TABLE `node_similarity` (
  `n_id` int(10) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(100) DEFAULT NULL,
  `nighbor_node` varchar(100) DEFAULT NULL,
  `sim_score` double DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `node_similarity` */

/*Table structure for table `trust_model` */

DROP TABLE IF EXISTS `trust_model`;

CREATE TABLE `trust_model` (
  `trust_id` int(10) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(100) DEFAULT NULL,
  `trust_score` double DEFAULT '5',
  PRIMARY KEY (`trust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `trust_model` */

insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (1,'Christophe Diot',5.4);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (2,'Christos Douligeris',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (3,'Lusheng Ji',5.4);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (4,'Lars Eggert',4.9);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (5,'Eylem Ekici',5.2);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (6,'Jeremy Elson',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (7,'Anthony Ephremides',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (8,'Do Young Eun',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (9,'Sung Ju Lee',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (10,'Ian Leslie',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (11,'Sujata Banerjee',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (12,'Yigal Bejerano',4.9);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (13,'Ramachandran Ramjee',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (14,'Ramesh Rao',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (15,'Narasimha Reddy',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (16,'Peter Reiher',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (17,'Martin Reisslein',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (18,'Reza Rejaie',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (19,'Rudolf Riedi',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (20,'Luigi Rizzo',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (21,'Pablo Rodriguez',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (22,'Antony Rowstron',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (23,'Iljitsch van Beijnum',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (24,'Piet Van Mieghem',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (25,'Marten van Sinderen',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (26,'Enrique Vazquez',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (27,'Juan Velasco',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (28,'Giorgio Ventre',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (29,'Andras Veres',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (30,'Rolland Vida',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (31,'Milan Vojnovic',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (32,'Helen Wang',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (33,'Jia Wang',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (34,'Dapeng Oliver Wu',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (35,'Geoffrey Xie',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (36,'Jun Xu',5.4);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (37,'Tao Yang',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (38,'Roy Yates',5.4);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (39,'Edmund Yeh',5);
insert into `trust_model` (`trust_id`,`node_name`,`trust_score`) values (40,'Bulent Yener',5);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
