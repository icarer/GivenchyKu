# Host: localhost  (Version: 5.5.53)
# Date: 2019-01-14 09:35:24
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "customers"
#

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userxingshi` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) NOT NULL DEFAULT '',
  `userpass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`useremail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "customers"
#

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (0,'乾隆','裴','1234567890@qq.com','a999111.'),(0,'丽颖','赵','1234567891@qq.com','a999111.'),(0,'asdgrdhtfj','aesrgdhtfjy','Aszdfxgch,hj','dsdfbgnhm');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

#
# Structure for table "goodsinfo"
#

DROP TABLE IF EXISTS `goodsinfo`;
CREATE TABLE `goodsinfo` (
  `goodsId` varchar(10) NOT NULL,
  `goodsName` varchar(100) DEFAULT NULL,
  `goodsType` varchar(20) DEFAULT NULL,
  `goodsPrice` float DEFAULT NULL,
  `goodsCount` int(11) DEFAULT NULL,
  `goodsDesc` varchar(100) DEFAULT NULL,
  `goodsImg` varchar(100) DEFAULT NULL,
  `beiyong1` varchar(100) DEFAULT NULL,
  `beiyong2` varchar(100) DEFAULT NULL,
  `beiyong3` varchar(100) DEFAULT NULL,
  `beiyong4` varchar(100) DEFAULT NULL,
  `beiyong5` varchar(100) DEFAULT NULL,
  `beiyong6` varchar(100) DEFAULT NULL,
  `beiyong7` varchar(100) DEFAULT NULL,
  `beiyong8` varchar(100) DEFAULT NULL,
  `beiyong9` varchar(100) DEFAULT NULL,
  `beiyong10` varchar(100) DEFAULT NULL,
  `beiyong11` varchar(100) DEFAULT NULL,
  `beiyong12` varchar(100) DEFAULT NULL,
  `beiyong13` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`goodsId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "goodsinfo"
#

/*!40000 ALTER TABLE `goodsinfo` DISABLE KEYS */;
INSERT INTO `goodsinfo` VALUES ('1','真丝褶裥围巾长袖衬衫','',14200,0,'','img/list-img01-1.jpg','img/list-img01-2.jpg','img/shoucang.png','','','','','','','','','','',''),('10','迷你菱形绗缝皮革手提包','',93900,0,'','img/list-img10-1.jpg','img/list-img10-2.jpg','img/shoucang.png','','','','','','','','','','',''),('11','菱形绗缝皮革手提包','',93900,0,'','img/list-img11-1.jpg','img/list-img11-2.jpg','img/shoucang.png','','','','','','','','','','',''),('2','精裁细小格纹烟管裤','',93900,0,'','img/list-img02-1.jpg','img/list-img02-2.jpg','img/shoucang.png','','','','','','','','','','',''),('3','4G棉质针织衫','',93900,0,'','img/list-img03-1.jpg','img/list-img03-2.jpg','img/shoucang.png','','','','','','','','','','',''),('4','双面羊毛双绉长款双排扣大衣','',93900,0,'','img/list-img04-1.jpg','img/list-img04-2.jpg','img/shoucang.png','','','','','','','','','','',''),('5','威尔士亲王羊毛双排扣夹克','',93900,0,'','img/list-img05-1.jpg','img/list-img05-2.jpg','img/shoucang.png','','','','','','','','','','',''),('6','修身羊毛夹克','',93900,0,'','img/list-img06-1.jpg','img/list-img06-2.jpg','img/shoucang.png','','','','','','','','','','',''),('7','针织长裤','',93900,0,'','img/list-img07-1.jpg','img/list-img07-2.jpg','img/shoucang.png','','','','','','','','','','',''),('8',' 人字形褶皱针织中长款连衣裙','',93900,0,'','img/list-img08-1.jpg','img/list-img08-2.jpg','img/shoucang.png','','','','','','','','','','',''),('9','双G皮带','',93900,0,'','img/list-img09-1.jpg','img/list-img09-2.jpg','img/shoucang.png','','','','','','','','','','','');
/*!40000 ALTER TABLE `goodsinfo` ENABLE KEYS */;

#
# Structure for table "shoppingcar"
#

DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `proname` varchar(100) NOT NULL DEFAULT '',
  `price` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `procount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`proname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "shoppingcar"
#

/*!40000 ALTER TABLE `shoppingcar` DISABLE KEYS */;
INSERT INTO `shoppingcar` VALUES ('真丝褶裥围巾长袖衬衫','14200','34','黑色','2');
/*!40000 ALTER TABLE `shoppingcar` ENABLE KEYS */;
