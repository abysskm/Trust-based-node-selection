/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - nw_gadov_social_similarity
*********************************************************************
Server version : 5.0.15-nt
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
  `blocked_path` varchar(150) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blockhole_path` */

insert into `blockhole_path` (`blocked_path`) values ('Yigal Bejerano');

/*Table structure for table `data_packets` */

DROP TABLE IF EXISTS `data_packets`;

CREATE TABLE `data_packets` (
  `pck_id` int(10) NOT NULL auto_increment,
  `pack_hash_code` varchar(500) default NULL,
  PRIMARY KEY  (`pck_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_packets` */

insert into `data_packets` (`pck_id`,`pack_hash_code`) values (1,'af0df2979b1562e604db0e3d5eebb29d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (2,'a898c6172908d9f96bc83c4ebde1e42d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (3,'23bbaf0aa06df1640ec057c703ca13a3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (4,'f4fc8747222e48b0c6b8a0bb99349b31');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (5,'b34e18a1af6b411b5f4d2f700d462c4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (6,'109582066007e0d2890569284caf3abc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (7,'179c5edfcf3c2b3dd3c52af16317b0ad');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (8,'8ab4b11d5da816c0294f542ddffae3d8');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (9,'a0912103935780702a8ce376297d0ea7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (10,'e4e94f3a8fdfe647918546074e452df1');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (11,'78ac9d96fcbd53bf781e101d2e764893');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (12,'8c42f77e6014f7c6b8b8e8e8ee984449');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (13,'aec8045f401546c354e8eeabcd313765');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (14,'7ec0c065f3e6a972a6dcb84195e3be17');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (15,'174f9b739032ddf4f4f1f1344628245e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (16,'48c4faefd4fe3b1da0d40f64a8378cbc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (17,'32fb075c68a94582ea8792a49a45b6f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (18,'dc070e03537929770d06553f68d9cb24');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (19,'f3615180b00c07cd525c2c05803369af');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (20,'f06d5aa8efcf0ed087312ad7c5f4cd3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (21,'91e20fe8aee5a81f5642bb475cb9dd4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (22,'14bfc3741d5269638b5a6a3e3c5c0183');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (23,'b96a1a9765294a8500eeacde245f9591');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (24,'75b59cedf242701ef6537c5c626ab2ba');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (25,'69098eba8074ceea87757e7f6cef4454');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (26,'77922a59e33df0b31f8a136e1958670f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (27,'56cda2bf1ec089da7d0069f38972276e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (28,'55e7fdd4dc5b8b8f2d6924d03e05a23a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (29,'d3f34f125ecc145dd9740be7739124c7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (30,'490c172779b8dcf10cd595c3bb6a7205');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (31,'53648f536a475e87000b8327ce2a1df0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (32,'241c085d4dc9811cc5ff2dfca0884dd0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (33,'e460b2ae4ec7cd1bbe7dc530a707bc28');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (34,'1e2babafd2c29d7a482dd73940637225');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (35,'3cf2f7b1f90a9e786c3ae74cdcae5d3f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (36,'d1d3ddc489131b77e9f19e866dfa1d93');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (37,'6cb33ed0216638d5303c3a7f1a9e1e9a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (38,'830fe28b41bdd39729fd07628ace888b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (39,'b499e93aa186a1a2065b19e683e89f84');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (40,'d351102084cd5d878c4f08feec9dbed5');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (41,'bb02860429223456eb5be9ba5d4c905b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (42,'ff8228925408d6a538d4c804d0ff92bc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (43,'7d91eac3a061dad6c60068045da92ffb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (44,'f385bbdb172b0e93b46f478ce0f51910');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (45,'4a8f2312c92fc4159abdc5364bc7cf8f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (46,'bf28c216b967c2026ce3393b3765c6b4');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (47,'8bb4d1f483c13c1974c61280acccf483');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (48,'5ed2600830f153d7c8ab63f311cb5b25');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (49,'95a9005a2d74627c1e578d543e3b27eb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (50,'29b884344906f078a45e7f70cb88632d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (51,'af0df2979b1562e604db0e3d5eebb29d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (52,'a898c6172908d9f96bc83c4ebde1e42d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (53,'23bbaf0aa06df1640ec057c703ca13a3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (54,'f4fc8747222e48b0c6b8a0bb99349b31');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (55,'b34e18a1af6b411b5f4d2f700d462c4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (56,'109582066007e0d2890569284caf3abc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (57,'179c5edfcf3c2b3dd3c52af16317b0ad');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (58,'8ab4b11d5da816c0294f542ddffae3d8');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (59,'a0912103935780702a8ce376297d0ea7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (60,'e4e94f3a8fdfe647918546074e452df1');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (61,'78ac9d96fcbd53bf781e101d2e764893');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (62,'8c42f77e6014f7c6b8b8e8e8ee984449');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (63,'aec8045f401546c354e8eeabcd313765');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (64,'7ec0c065f3e6a972a6dcb84195e3be17');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (65,'174f9b739032ddf4f4f1f1344628245e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (66,'48c4faefd4fe3b1da0d40f64a8378cbc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (67,'32fb075c68a94582ea8792a49a45b6f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (68,'dc070e03537929770d06553f68d9cb24');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (69,'f3615180b00c07cd525c2c05803369af');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (70,'f06d5aa8efcf0ed087312ad7c5f4cd3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (71,'91e20fe8aee5a81f5642bb475cb9dd4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (72,'14bfc3741d5269638b5a6a3e3c5c0183');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (73,'b96a1a9765294a8500eeacde245f9591');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (74,'75b59cedf242701ef6537c5c626ab2ba');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (75,'69098eba8074ceea87757e7f6cef4454');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (76,'77922a59e33df0b31f8a136e1958670f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (77,'56cda2bf1ec089da7d0069f38972276e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (78,'55e7fdd4dc5b8b8f2d6924d03e05a23a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (79,'d3f34f125ecc145dd9740be7739124c7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (80,'490c172779b8dcf10cd595c3bb6a7205');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (81,'53648f536a475e87000b8327ce2a1df0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (82,'241c085d4dc9811cc5ff2dfca0884dd0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (83,'e460b2ae4ec7cd1bbe7dc530a707bc28');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (84,'1e2babafd2c29d7a482dd73940637225');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (85,'3cf2f7b1f90a9e786c3ae74cdcae5d3f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (86,'d1d3ddc489131b77e9f19e866dfa1d93');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (87,'6cb33ed0216638d5303c3a7f1a9e1e9a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (88,'830fe28b41bdd39729fd07628ace888b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (89,'b499e93aa186a1a2065b19e683e89f84');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (90,'d351102084cd5d878c4f08feec9dbed5');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (91,'bb02860429223456eb5be9ba5d4c905b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (92,'ff8228925408d6a538d4c804d0ff92bc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (93,'7d91eac3a061dad6c60068045da92ffb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (94,'f385bbdb172b0e93b46f478ce0f51910');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (95,'4a8f2312c92fc4159abdc5364bc7cf8f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (96,'bf28c216b967c2026ce3393b3765c6b4');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (97,'8bb4d1f483c13c1974c61280acccf483');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (98,'5ed2600830f153d7c8ab63f311cb5b25');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (99,'95a9005a2d74627c1e578d543e3b27eb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (100,'29b884344906f078a45e7f70cb88632d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (101,'af0df2979b1562e604db0e3d5eebb29d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (102,'a898c6172908d9f96bc83c4ebde1e42d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (103,'23bbaf0aa06df1640ec057c703ca13a3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (104,'f4fc8747222e48b0c6b8a0bb99349b31');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (105,'b34e18a1af6b411b5f4d2f700d462c4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (106,'109582066007e0d2890569284caf3abc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (107,'179c5edfcf3c2b3dd3c52af16317b0ad');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (108,'8ab4b11d5da816c0294f542ddffae3d8');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (109,'a0912103935780702a8ce376297d0ea7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (110,'e4e94f3a8fdfe647918546074e452df1');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (111,'78ac9d96fcbd53bf781e101d2e764893');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (112,'8c42f77e6014f7c6b8b8e8e8ee984449');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (113,'aec8045f401546c354e8eeabcd313765');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (114,'7ec0c065f3e6a972a6dcb84195e3be17');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (115,'174f9b739032ddf4f4f1f1344628245e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (116,'48c4faefd4fe3b1da0d40f64a8378cbc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (117,'32fb075c68a94582ea8792a49a45b6f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (118,'dc070e03537929770d06553f68d9cb24');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (119,'f3615180b00c07cd525c2c05803369af');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (120,'f06d5aa8efcf0ed087312ad7c5f4cd3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (121,'91e20fe8aee5a81f5642bb475cb9dd4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (122,'14bfc3741d5269638b5a6a3e3c5c0183');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (123,'b96a1a9765294a8500eeacde245f9591');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (124,'75b59cedf242701ef6537c5c626ab2ba');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (125,'69098eba8074ceea87757e7f6cef4454');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (126,'77922a59e33df0b31f8a136e1958670f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (127,'56cda2bf1ec089da7d0069f38972276e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (128,'55e7fdd4dc5b8b8f2d6924d03e05a23a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (129,'d3f34f125ecc145dd9740be7739124c7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (130,'490c172779b8dcf10cd595c3bb6a7205');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (131,'53648f536a475e87000b8327ce2a1df0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (132,'241c085d4dc9811cc5ff2dfca0884dd0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (133,'e460b2ae4ec7cd1bbe7dc530a707bc28');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (134,'1e2babafd2c29d7a482dd73940637225');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (135,'3cf2f7b1f90a9e786c3ae74cdcae5d3f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (136,'d1d3ddc489131b77e9f19e866dfa1d93');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (137,'6cb33ed0216638d5303c3a7f1a9e1e9a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (138,'830fe28b41bdd39729fd07628ace888b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (139,'b499e93aa186a1a2065b19e683e89f84');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (140,'d351102084cd5d878c4f08feec9dbed5');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (141,'bb02860429223456eb5be9ba5d4c905b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (142,'ff8228925408d6a538d4c804d0ff92bc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (143,'7d91eac3a061dad6c60068045da92ffb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (144,'f385bbdb172b0e93b46f478ce0f51910');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (145,'4a8f2312c92fc4159abdc5364bc7cf8f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (146,'bf28c216b967c2026ce3393b3765c6b4');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (147,'8bb4d1f483c13c1974c61280acccf483');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (148,'5ed2600830f153d7c8ab63f311cb5b25');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (149,'95a9005a2d74627c1e578d543e3b27eb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (150,'29b884344906f078a45e7f70cb88632d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (151,'af0df2979b1562e604db0e3d5eebb29d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (152,'a898c6172908d9f96bc83c4ebde1e42d');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (153,'23bbaf0aa06df1640ec057c703ca13a3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (154,'f4fc8747222e48b0c6b8a0bb99349b31');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (155,'b34e18a1af6b411b5f4d2f700d462c4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (156,'109582066007e0d2890569284caf3abc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (157,'179c5edfcf3c2b3dd3c52af16317b0ad');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (158,'8ab4b11d5da816c0294f542ddffae3d8');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (159,'a0912103935780702a8ce376297d0ea7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (160,'e4e94f3a8fdfe647918546074e452df1');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (161,'78ac9d96fcbd53bf781e101d2e764893');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (162,'8c42f77e6014f7c6b8b8e8e8ee984449');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (163,'aec8045f401546c354e8eeabcd313765');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (164,'7ec0c065f3e6a972a6dcb84195e3be17');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (165,'174f9b739032ddf4f4f1f1344628245e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (166,'48c4faefd4fe3b1da0d40f64a8378cbc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (167,'32fb075c68a94582ea8792a49a45b6f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (168,'dc070e03537929770d06553f68d9cb24');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (169,'f3615180b00c07cd525c2c05803369af');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (170,'f06d5aa8efcf0ed087312ad7c5f4cd3');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (171,'91e20fe8aee5a81f5642bb475cb9dd4b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (172,'14bfc3741d5269638b5a6a3e3c5c0183');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (173,'b96a1a9765294a8500eeacde245f9591');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (174,'75b59cedf242701ef6537c5c626ab2ba');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (175,'69098eba8074ceea87757e7f6cef4454');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (176,'77922a59e33df0b31f8a136e1958670f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (177,'56cda2bf1ec089da7d0069f38972276e');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (178,'55e7fdd4dc5b8b8f2d6924d03e05a23a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (179,'d3f34f125ecc145dd9740be7739124c7');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (180,'490c172779b8dcf10cd595c3bb6a7205');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (181,'53648f536a475e87000b8327ce2a1df0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (182,'241c085d4dc9811cc5ff2dfca0884dd0');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (183,'e460b2ae4ec7cd1bbe7dc530a707bc28');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (184,'1e2babafd2c29d7a482dd73940637225');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (185,'3cf2f7b1f90a9e786c3ae74cdcae5d3f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (186,'d1d3ddc489131b77e9f19e866dfa1d93');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (187,'6cb33ed0216638d5303c3a7f1a9e1e9a');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (188,'830fe28b41bdd39729fd07628ace888b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (189,'b499e93aa186a1a2065b19e683e89f84');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (190,'d351102084cd5d878c4f08feec9dbed5');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (191,'bb02860429223456eb5be9ba5d4c905b');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (192,'ff8228925408d6a538d4c804d0ff92bc');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (193,'7d91eac3a061dad6c60068045da92ffb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (194,'f385bbdb172b0e93b46f478ce0f51910');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (195,'4a8f2312c92fc4159abdc5364bc7cf8f');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (196,'bf28c216b967c2026ce3393b3765c6b4');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (197,'8bb4d1f483c13c1974c61280acccf483');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (198,'5ed2600830f153d7c8ab63f311cb5b25');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (199,'95a9005a2d74627c1e578d543e3b27eb');
insert into `data_packets` (`pck_id`,`pack_hash_code`) values (200,'29b884344906f078a45e7f70cb88632d');

/*Table structure for table `m_graph` */

DROP TABLE IF EXISTS `m_graph`;

CREATE TABLE `m_graph` (
  `s_n` int(10) NOT NULL auto_increment,
  `no_hubs` int(10) default NULL,
  `withmaltime` varchar(100) default NULL,
  `withoutmaltime` varchar(100) default NULL,
  PRIMARY KEY  (`s_n`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_graph` */

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `s_no` int(10) NOT NULL auto_increment,
  `no_hubs` int(10) default NULL,
  `duration` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (1,6,'-10','without_malicious');
insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (2,5,'-36','withmalicious');
insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (3,5,'-15','withmalicious');
insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (4,6,'-48','withmalicious');
insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (5,6,'-43','without_malicious');
insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (6,5,'-13','withmalicious');
insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (7,6,'-47','withmalicious');
insert into `m_transaction` (`s_no`,`no_hubs`,`duration`,`status`) values (8,5,'54','withmalicious');

/*Table structure for table `neigh_bour` */

DROP TABLE IF EXISTS `neigh_bour`;

CREATE TABLE `neigh_bour` (
  `node_name` varchar(100) default NULL,
  `neighbor_node` varchar(500) default NULL,
  `neihn_node` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neigh_bour` */

insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Christophe Diot','Christos Douligeris~Lusheng Ji','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Christos Douligeris','Christophe Diot~Lusheng Ji~Jeremy Elson~Anthony Ephremides~Do Young Eun','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Lusheng Ji','Christophe Diot~Christos Douligeris~Eylem Ekici~Jeremy Elson~Anthony Ephremides','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Eylem Ekici','Lusheng Ji~Jeremy Elson~Sujata Banerjee~Yigal Bejerano~Ramachandran Ramjee','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Jeremy Elson','Christos Douligeris~Lusheng Ji~Eylem Ekici~Anthony Ephremides~Sung Ju Lee~Ian Leslie~Sujata Banerjee','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Anthony Ephremides','Christos Douligeris~Lusheng Ji~Jeremy Elson~Do Young Eun~Sung Ju Lee~Narasimha Reddy','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Do Young Eun','Christos Douligeris~Anthony Ephremides~Sung Ju Lee~Narasimha Reddy~Peter Reiher','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Sung Ju Lee','Jeremy Elson~Anthony Ephremides~Do Young Eun~Ian Leslie~Narasimha Reddy~Reza Rejaie~Rudolf Riedi','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Ian Leslie','Jeremy Elson~Sung Ju Lee~Sujata Banerjee~Ramesh Rao~Reza Rejaie~Rudolf Riedi~Piet Van Mieghem','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Sujata Banerjee','Eylem Ekici~Jeremy Elson~Ian Leslie~Yigal Bejerano~Ramachandran Ramjee~Ramesh Rao~Rudolf Riedi~Antony Rowstron','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Yigal Bejerano','Eylem Ekici~Sujata Banerjee~Ramachandran Ramjee~Iljitsch van Beijnum','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Ramachandran Ramjee','Eylem Ekici~Sujata Banerjee~Yigal Bejerano~Ramesh Rao~Antony Rowstron~Iljitsch van Beijnum~Rolland Vida','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Ramesh Rao','Ian Leslie~Sujata Banerjee~Ramachandran Ramjee~Rudolf Riedi~Pablo Rodriguez~Antony Rowstron~Piet Van Mieghem~Andras Veres','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Narasimha Reddy','Anthony Ephremides~Do Young Eun~Sung Ju Lee~Peter Reiher~Martin Reisslein~Reza Rejaie','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Peter Reiher','Do Young Eun~Narasimha Reddy~Martin Reisslein','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Martin Reisslein','Narasimha Reddy~Peter Reiher~Reza Rejaie~Luigi Rizzo','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Reza Rejaie','Sung Ju Lee~Ian Leslie~Narasimha Reddy~Martin Reisslein~Rudolf Riedi~Luigi Rizzo','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Rudolf Riedi','Sung Ju Lee~Ian Leslie~Sujata Banerjee~Ramesh Rao~Reza Rejaie~Luigi Rizzo~Pablo Rodriguez~Piet Van Mieghem','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Luigi Rizzo','Martin Reisslein~Reza Rejaie~Rudolf Riedi~Pablo Rodriguez~Marten van Sinderen','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Pablo Rodriguez','Ramesh Rao~Rudolf Riedi~Luigi Rizzo~Piet Van Mieghem~Marten van Sinderen~Enrique Vazquez~Giorgio Ventre','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Antony Rowstron','Sujata Banerjee~Ramachandran Ramjee~Ramesh Rao~Iljitsch van Beijnum~Piet Van Mieghem~Andras Veres~Rolland Vida','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Iljitsch van Beijnum','Yigal Bejerano~Ramachandran Ramjee~Antony Rowstron~Rolland Vida~Milan Vojnovic~Helen Wang','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Piet Van Mieghem','Ian Leslie~Ramesh Rao~Rudolf Riedi~Pablo Rodriguez~Antony Rowstron~Marten van Sinderen~Enrique Vazquez~Giorgio Ventre~Andras Veres','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Marten van Sinderen','Luigi Rizzo~Pablo Rodriguez~Piet Van Mieghem~Enrique Vazquez~Giorgio Ventre','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Enrique Vazquez','Pablo Rodriguez~Piet Van Mieghem~Marten van Sinderen~Juan Velasco~Giorgio Ventre~Andras Veres~Jun Xu','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Juan Velasco','Enrique Vazquez~Giorgio Ventre~Jun Xu~Roy Yates','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Giorgio Ventre','Pablo Rodriguez~Piet Van Mieghem~Marten van Sinderen~Enrique Vazquez~Juan Velasco~Andras Veres~Dapeng Oliver Wu~Jun Xu~Tao Yang','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Andras Veres','Ramesh Rao~Antony Rowstron~Piet Van Mieghem~Enrique Vazquez~Giorgio Ventre~Rolland Vida~Dapeng Oliver Wu','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Rolland Vida','Ramachandran Ramjee~Antony Rowstron~Iljitsch van Beijnum~Andras Veres~Milan Vojnovic~Helen Wang','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Milan Vojnovic','Iljitsch van Beijnum~Rolland Vida~Helen Wang~Jia Wang~Edmund Yeh','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Helen Wang','Iljitsch van Beijnum~Rolland Vida~Milan Vojnovic~Jia Wang','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Jia Wang','Milan Vojnovic~Helen Wang~Dapeng Oliver Wu~Geoffrey Xie~Edmund Yeh~Bulent Yener','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Dapeng Oliver Wu','Giorgio Ventre~Andras Veres~Jia Wang~Geoffrey Xie~Jun Xu~Tao Yang','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Geoffrey Xie','Jia Wang~Dapeng Oliver Wu~Tao Yang~Bulent Yener','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Jun Xu','Enrique Vazquez~Juan Velasco~Giorgio Ventre~Dapeng Oliver Wu~Tao Yang~Roy Yates','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Tao Yang','Giorgio Ventre~Dapeng Oliver Wu~Geoffrey Xie~Jun Xu~Roy Yates~Bulent Yener','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Roy Yates','Juan Velasco~Jun Xu~Tao Yang','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Edmund Yeh','Milan Vojnovic~Jia Wang~Bulent Yener','null');
insert into `neigh_bour` (`node_name`,`neighbor_node`,`neihn_node`) values ('Bulent Yener','Jia Wang~Geoffrey Xie~Tao Yang~Edmund Yeh','null');

/*Table structure for table `node_info` */

DROP TABLE IF EXISTS `node_info`;

CREATE TABLE `node_info` (
  `node_id` int(20) NOT NULL auto_increment,
  `node_name` varchar(100) default NULL,
  `node_x` int(5) default NULL,
  `node_y` int(5) default NULL,
  `node_type` varchar(100) default 'node',
  `country` varchar(100) default NULL,
  `language` varchar(50) default NULL,
  `affiliation` varchar(100) default NULL,
  `position` varchar(100) default NULL,
  `topic_of_intrest` varchar(100) default NULL,
  PRIMARY KEY  (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `n_id` int(10) NOT NULL auto_increment,
  `node_name` varchar(100) default NULL,
  `nighbor_node` varchar(100) default NULL,
  `sim_score` double default NULL,
  PRIMARY KEY  (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `node_similarity` */

insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (1,'Christophe Diot','Christos Douligeris',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (2,'Christophe Diot','Lusheng Ji',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (3,'Christos Douligeris','Christophe Diot',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (4,'Christos Douligeris','Lusheng Ji',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (5,'Christos Douligeris','Jeremy Elson',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (6,'Christos Douligeris','Anthony Ephremides',1);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (7,'Christos Douligeris','Do Young Eun',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (8,'Lusheng Ji','Christophe Diot',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (9,'Lusheng Ji','Christos Douligeris',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (10,'Lusheng Ji','Eylem Ekici',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (11,'Lusheng Ji','Jeremy Elson',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (12,'Lusheng Ji','Anthony Ephremides',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (13,'Eylem Ekici','Lusheng Ji',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (14,'Eylem Ekici','Jeremy Elson',0.25);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (15,'Eylem Ekici','Sujata Banerjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (16,'Eylem Ekici','Yigal Bejerano',0.5);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (17,'Eylem Ekici','Ramachandran Ramjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (18,'Jeremy Elson','Christos Douligeris',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (19,'Jeremy Elson','Lusheng Ji',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (20,'Jeremy Elson','Eylem Ekici',0.25);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (21,'Jeremy Elson','Anthony Ephremides',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (22,'Jeremy Elson','Sung Ju Lee',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (23,'Jeremy Elson','Ian Leslie',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (24,'Jeremy Elson','Sujata Banerjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (25,'Anthony Ephremides','Christos Douligeris',1);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (26,'Anthony Ephremides','Lusheng Ji',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (27,'Anthony Ephremides','Jeremy Elson',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (28,'Anthony Ephremides','Do Young Eun',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (29,'Anthony Ephremides','Sung Ju Lee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (30,'Anthony Ephremides','Narasimha Reddy',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (31,'Do Young Eun','Christos Douligeris',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (32,'Do Young Eun','Anthony Ephremides',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (33,'Do Young Eun','Sung Ju Lee',0.629940788348712);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (34,'Do Young Eun','Narasimha Reddy',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (35,'Do Young Eun','Peter Reiher',0.755928946018454);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (36,'Sung Ju Lee','Jeremy Elson',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (37,'Sung Ju Lee','Anthony Ephremides',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (38,'Sung Ju Lee','Do Young Eun',0.629940788348712);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (39,'Sung Ju Lee','Ian Leslie',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (40,'Sung Ju Lee','Narasimha Reddy',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (41,'Sung Ju Lee','Reza Rejaie',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (42,'Sung Ju Lee','Rudolf Riedi',0.629940788348712);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (43,'Ian Leslie','Jeremy Elson',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (44,'Ian Leslie','Sung Ju Lee',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (45,'Ian Leslie','Sujata Banerjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (46,'Ian Leslie','Ramesh Rao',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (47,'Ian Leslie','Reza Rejaie',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (48,'Ian Leslie','Rudolf Riedi',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (49,'Ian Leslie','Piet Van Mieghem',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (50,'Sujata Banerjee','Eylem Ekici',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (51,'Sujata Banerjee','Jeremy Elson',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (52,'Sujata Banerjee','Ian Leslie',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (53,'Sujata Banerjee','Yigal Bejerano',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (54,'Sujata Banerjee','Ramachandran Ramjee',1);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (55,'Sujata Banerjee','Ramesh Rao',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (56,'Sujata Banerjee','Rudolf Riedi',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (57,'Sujata Banerjee','Antony Rowstron',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (58,'Yigal Bejerano','Eylem Ekici',0.5);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (59,'Yigal Bejerano','Sujata Banerjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (60,'Yigal Bejerano','Ramachandran Ramjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (61,'Yigal Bejerano','Iljitsch van Beijnum',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (62,'Ramachandran Ramjee','Eylem Ekici',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (63,'Ramachandran Ramjee','Sujata Banerjee',1);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (64,'Ramachandran Ramjee','Yigal Bejerano',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (65,'Ramachandran Ramjee','Ramesh Rao',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (66,'Ramachandran Ramjee','Antony Rowstron',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (67,'Ramachandran Ramjee','Iljitsch van Beijnum',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (68,'Ramachandran Ramjee','Rolland Vida',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (69,'Ramesh Rao','Ian Leslie',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (70,'Ramesh Rao','Sujata Banerjee',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (71,'Ramesh Rao','Ramachandran Ramjee',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (72,'Ramesh Rao','Rudolf Riedi',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (73,'Ramesh Rao','Pablo Rodriguez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (74,'Ramesh Rao','Antony Rowstron',0.5);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (75,'Ramesh Rao','Piet Van Mieghem',0.333333333333333);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (76,'Ramesh Rao','Andras Veres',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (77,'Narasimha Reddy','Anthony Ephremides',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (78,'Narasimha Reddy','Do Young Eun',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (79,'Narasimha Reddy','Sung Ju Lee',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (80,'Narasimha Reddy','Peter Reiher',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (81,'Narasimha Reddy','Martin Reisslein',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (82,'Narasimha Reddy','Reza Rejaie',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (83,'Peter Reiher','Do Young Eun',0.755928946018454);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (84,'Peter Reiher','Narasimha Reddy',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (85,'Peter Reiher','Martin Reisslein',0.377964473009227);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (86,'Martin Reisslein','Narasimha Reddy',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (87,'Martin Reisslein','Peter Reiher',0.377964473009227);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (88,'Martin Reisslein','Reza Rejaie',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (89,'Martin Reisslein','Luigi Rizzo',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (90,'Reza Rejaie','Sung Ju Lee',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (91,'Reza Rejaie','Ian Leslie',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (92,'Reza Rejaie','Narasimha Reddy',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (93,'Reza Rejaie','Martin Reisslein',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (94,'Reza Rejaie','Rudolf Riedi',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (95,'Reza Rejaie','Luigi Rizzo',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (96,'Rudolf Riedi','Sung Ju Lee',0.629940788348712);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (97,'Rudolf Riedi','Ian Leslie',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (98,'Rudolf Riedi','Sujata Banerjee',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (99,'Rudolf Riedi','Ramesh Rao',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (100,'Rudolf Riedi','Reza Rejaie',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (101,'Rudolf Riedi','Luigi Rizzo',0.136082763487954);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (102,'Rudolf Riedi','Pablo Rodriguez',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (103,'Rudolf Riedi','Piet Van Mieghem',0.555555555555556);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (104,'Luigi Rizzo','Martin Reisslein',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (105,'Luigi Rizzo','Reza Rejaie',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (106,'Luigi Rizzo','Rudolf Riedi',0.136082763487954);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (107,'Luigi Rizzo','Pablo Rodriguez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (108,'Luigi Rizzo','Marten van Sinderen',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (109,'Pablo Rodriguez','Ramesh Rao',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (110,'Pablo Rodriguez','Rudolf Riedi',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (111,'Pablo Rodriguez','Luigi Rizzo',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (112,'Pablo Rodriguez','Piet Van Mieghem',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (113,'Pablo Rodriguez','Marten van Sinderen',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (114,'Pablo Rodriguez','Enrique Vazquez',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (115,'Pablo Rodriguez','Giorgio Ventre',0.666666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (116,'Antony Rowstron','Sujata Banerjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (117,'Antony Rowstron','Ramachandran Ramjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (118,'Antony Rowstron','Ramesh Rao',0.5);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (119,'Antony Rowstron','Iljitsch van Beijnum',0.377964473009227);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (120,'Antony Rowstron','Piet Van Mieghem',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (121,'Antony Rowstron','Andras Veres',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (122,'Antony Rowstron','Rolland Vida',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (123,'Iljitsch van Beijnum','Yigal Bejerano',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (124,'Iljitsch van Beijnum','Ramachandran Ramjee',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (125,'Iljitsch van Beijnum','Antony Rowstron',0.377964473009227);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (126,'Iljitsch van Beijnum','Rolland Vida',0.629940788348712);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (127,'Iljitsch van Beijnum','Milan Vojnovic',0.377964473009227);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (128,'Iljitsch van Beijnum','Helen Wang',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (129,'Piet Van Mieghem','Ian Leslie',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (130,'Piet Van Mieghem','Ramesh Rao',0.333333333333333);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (131,'Piet Van Mieghem','Rudolf Riedi',0.555555555555556);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (132,'Piet Van Mieghem','Pablo Rodriguez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (133,'Piet Van Mieghem','Antony Rowstron',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (134,'Piet Van Mieghem','Marten van Sinderen',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (135,'Piet Van Mieghem','Enrique Vazquez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (136,'Piet Van Mieghem','Giorgio Ventre',0.136082763487954);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (137,'Piet Van Mieghem','Andras Veres',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (138,'Marten van Sinderen','Luigi Rizzo',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (139,'Marten van Sinderen','Pablo Rodriguez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (140,'Marten van Sinderen','Piet Van Mieghem',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (141,'Marten van Sinderen','Enrique Vazquez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (142,'Marten van Sinderen','Giorgio Ventre',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (143,'Enrique Vazquez','Pablo Rodriguez',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (144,'Enrique Vazquez','Piet Van Mieghem',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (145,'Enrique Vazquez','Marten van Sinderen',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (146,'Enrique Vazquez','Juan Velasco',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (147,'Enrique Vazquez','Giorgio Ventre',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (148,'Enrique Vazquez','Andras Veres',0.5);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (149,'Enrique Vazquez','Jun Xu',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (150,'Juan Velasco','Enrique Vazquez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (151,'Juan Velasco','Giorgio Ventre',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (152,'Juan Velasco','Jun Xu',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (153,'Juan Velasco','Roy Yates',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (154,'Giorgio Ventre','Pablo Rodriguez',0.666666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (155,'Giorgio Ventre','Piet Van Mieghem',0.136082763487954);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (156,'Giorgio Ventre','Marten van Sinderen',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (157,'Giorgio Ventre','Enrique Vazquez',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (158,'Giorgio Ventre','Juan Velasco',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (159,'Giorgio Ventre','Andras Veres',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (160,'Giorgio Ventre','Dapeng Oliver Wu',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (161,'Giorgio Ventre','Jun Xu',0.333333333333333);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (162,'Giorgio Ventre','Tao Yang',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (163,'Andras Veres','Ramesh Rao',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (164,'Andras Veres','Antony Rowstron',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (165,'Andras Veres','Piet Van Mieghem',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (166,'Andras Veres','Enrique Vazquez',0.5);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (167,'Andras Veres','Giorgio Ventre',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (168,'Andras Veres','Rolland Vida',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (169,'Andras Veres','Dapeng Oliver Wu',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (170,'Rolland Vida','Ramachandran Ramjee',0.544331053951817);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (171,'Rolland Vida','Antony Rowstron',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (172,'Rolland Vida','Iljitsch van Beijnum',0.629940788348712);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (173,'Rolland Vida','Andras Veres',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (174,'Rolland Vida','Milan Vojnovic',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (175,'Rolland Vida','Helen Wang',0.136082763487954);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (176,'Milan Vojnovic','Iljitsch van Beijnum',0.377964473009227);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (177,'Milan Vojnovic','Rolland Vida',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (178,'Milan Vojnovic','Helen Wang',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (179,'Milan Vojnovic','Jia Wang',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (180,'Milan Vojnovic','Edmund Yeh',0.75);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (181,'Helen Wang','Iljitsch van Beijnum',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (182,'Helen Wang','Rolland Vida',0.136082763487954);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (183,'Helen Wang','Milan Vojnovic',0.204124145231932);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (184,'Helen Wang','Jia Wang',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (185,'Jia Wang','Milan Vojnovic',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (186,'Jia Wang','Helen Wang',0.166666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (187,'Jia Wang','Dapeng Oliver Wu',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (188,'Jia Wang','Geoffrey Xie',0.612372435695795);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (189,'Jia Wang','Edmund Yeh',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (190,'Jia Wang','Bulent Yener',0.833333333333333);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (191,'Dapeng Oliver Wu','Giorgio Ventre',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (192,'Dapeng Oliver Wu','Andras Veres',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (193,'Dapeng Oliver Wu','Jia Wang',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (194,'Dapeng Oliver Wu','Geoffrey Xie',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (195,'Dapeng Oliver Wu','Jun Xu',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (196,'Dapeng Oliver Wu','Tao Yang',1);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (197,'Geoffrey Xie','Jia Wang',0.612372435695795);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (198,'Geoffrey Xie','Dapeng Oliver Wu',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (199,'Geoffrey Xie','Tao Yang',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (200,'Geoffrey Xie','Bulent Yener',0.408248290463863);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (201,'Jun Xu','Enrique Vazquez',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (202,'Jun Xu','Juan Velasco',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (203,'Jun Xu','Giorgio Ventre',0.333333333333333);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (204,'Jun Xu','Dapeng Oliver Wu',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (205,'Jun Xu','Tao Yang',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (206,'Jun Xu','Roy Yates',0.666666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (207,'Tao Yang','Giorgio Ventre',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (208,'Tao Yang','Dapeng Oliver Wu',1);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (209,'Tao Yang','Geoffrey Xie',0.188982236504614);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (210,'Tao Yang','Jun Xu',0.308606699924184);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (211,'Tao Yang','Roy Yates',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (212,'Tao Yang','Bulent Yener',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (213,'Roy Yates','Juan Velasco',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (214,'Roy Yates','Jun Xu',0.666666666666667);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (215,'Roy Yates','Tao Yang',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (216,'Edmund Yeh','Milan Vojnovic',0.75);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (217,'Edmund Yeh','Jia Wang',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (218,'Edmund Yeh','Bulent Yener',0);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (219,'Bulent Yener','Jia Wang',0.833333333333333);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (220,'Bulent Yener','Geoffrey Xie',0.408248290463863);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (221,'Bulent Yener','Tao Yang',0.154303349962092);
insert into `node_similarity` (`n_id`,`node_name`,`nighbor_node`,`sim_score`) values (222,'Bulent Yener','Edmund Yeh',0);

/*Table structure for table `trust_model` */

DROP TABLE IF EXISTS `trust_model`;

CREATE TABLE `trust_model` (
  `trust_id` int(10) NOT NULL auto_increment,
  `node_name` varchar(100) default NULL,
  `trust_score` double default '5',
  PRIMARY KEY  (`trust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
