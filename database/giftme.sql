-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: giftme
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy` (
  `travel_id` int(11) NOT NULL,
  `member_id` char(13) NOT NULL,
  `buy_name` varchar(200) NOT NULL,
  `buy_picture` varchar(255) DEFAULT NULL,
  `buy_price` double DEFAULT NULL,
  `buy_amount` int(11) DEFAULT NULL,
  `buy_date` timestamp(6) NULL DEFAULT NULL,
  `buy_currency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`travel_id`,`buy_name`,`member_id`),
  KEY `fk_buy_member` (`member_id`),
  CONSTRAINT `fk_buy_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_buy_travel_id` FOREIGN KEY (`travel_id`) REFERENCES `travel` (`travel_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
INSERT INTO `buy` VALUES (1,'1100702123649','โตเกียวไส้หวาน 50 อัน','2016_07_21_10_40_37_IMG337.png',400,50,'2016-07-21 03:40:37.000000',NULL),(2,'1729900305193','ตุ๊กตา baekku','2016_07_21_13_17_11_CJc-C8ZUMAAAoD8.jpg',1500,2,'2016-07-21 06:17:11.000000','Thailand Baht  THB'),(7,'1100702123649','ขอปิกาจูตัวนึ่งครับ','2016_07_21_12_56_57_tVHNSsvW.jpeg',500,1,'2016-07-21 05:56:57.000000','Thailand Baht  THB'),(12,'1301500045611','เครื่องสำอางค์','2016_07_21_12_49_15_SK150ml.jpg',20000,5,'2016-07-21 05:49:15.000000','Korea (South) Won  KRW'),(16,'1100702123649','ฝากซื้อน้ำหอม1ขวดครับ','2016_07_29_09_02_22_spd_20130705144709_b.jpg',500,1,'2016-07-29 02:02:22.000000','United States Dollars  USD'),(18,'1529900620686','nike air max','',100,2,'2016-07-22 08:38:10.000000','America (United States) Dollars  USD'),(20,'1301500045611','ชุดว่ายน้ำ','',2000,1,'2016-07-22 08:43:40.000000','Brazil Reais  BRL'),(20,'1529900620686','ชุดว่ายน้ำ','',2000,1,'2016-07-22 08:43:06.000000','Brazil Reais  BRL'),(20,'1709900956101','ชุดว่ายน้ำ','2016_07_26_15_58_59_SK150ml.jpg',1999,1,'2016-07-26 08:58:59.000000','Thailand Baht  THB'),(20,'1301500045611','น้องลิง','2016_07_27_11_44_07_4k-image-tiger-jumping.jpg',1150,1,'2016-07-27 04:44:07.000000','Chile Pesos  CLP'),(20,'1301500045611','น้องหมา','2016_07_27_11_38_14_SK150ml.jpg',2000,1,'2016-07-27 04:38:14.000000','Thailand Baht  THB'),(20,'1209700567563','แมว','2016_07_22_15_43_53_3a._Kira_Yamato.jpg',1000,1,'2016-07-22 08:43:53.000000','America (United States) Dollars  USD'),(20,'1301500045611','แมว','2016_07_27_11_37_44_Untitled-1.png',2000,1,'2016-07-27 04:37:44.000000','Thailand Baht  THB'),(21,'1301500045620','เครื่องสำอางค์','2016_07_26_15_40_19_SK150ml.jpg',1500,5,'2016-07-26 08:40:19.000000','Thailand Baht  THB'),(22,'1729900305193','ตุ๊กตา baekku','2016_07_28_17_21_01_CnpcPmeUEAULEFJ.jpg',700,1,'2016-07-28 10:21:01.000000','Thailand Baht  THB'),(22,'1100702123649','ฝากซื้อหุ้นgoogleสัก 50% ครับ','2016_07_28_14_46_53_statGoogleShare.png',50000,50,'2016-07-28 07:46:53.000000','United States Dollars  USD'),(22,'1301500045620','เสือ','2016_07_26_15_46_56_4k-image-tiger-jumping.jpg',10000,1,'2016-07-26 08:46:56.000000','Korea (South) Won  KRW'),(28,'1729900305193','เสื้อรักบี้ของ EXO เบอร์ 61 Chanyeol ','2016_07_29_09_50_32_sOGzHdO.jpg',38000,1,'2016-07-29 02:50:32.000000','Korea (South) Won  KRW');
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtag`
--

DROP TABLE IF EXISTS `hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashtag` (
  `travel_id` int(11) NOT NULL,
  `hashtag_tag` varchar(45) NOT NULL,
  PRIMARY KEY (`travel_id`,`hashtag_tag`),
  CONSTRAINT `fk_hashtag` FOREIGN KEY (`travel_id`) REFERENCES `travel` (`travel_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag`
--

LOCK TABLES `hashtag` WRITE;
/*!40000 ALTER TABLE `hashtag` DISABLE KEYS */;
INSERT INTO `hashtag` VALUES (2,'goKorea'),(2,'irene'),(2,'red velvet'),(7,'ice'),(8,'adidas nmd'),(8,'adidas nmd in usa'),(8,'adidas yeezy '),(8,'adidas yeezy in usa'),(11,'cat'),(11,'dog'),(15,'beijing'),(15,'china'),(15,'ปักกิ่ง'),(16,'exo'),(16,'EXOrDIUMinSeoul'),(16,'korea'),(17,'เพนกวิน  '),(18,'google'),(18,'nexus'),(18,'nike'),(19,'ก๊วยเตี๊ยว'),(20,'boomboom'),(20,'dance'),(20,'sexy'),(20,'travel'),(21,'น้ำใส'),(21,'ไหลเย็น'),(22,'korea'),(23,'google'),(23,'nike'),(24,'education'),(24,'trip'),(25,'asd'),(25,'google'),(25,'nike'),(26,'ski'),(27,'barbar'),(28,'coex'),(28,'korea'),(28,'smtown');
/*!40000 ALTER TABLE `hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` char(13) NOT NULL,
  `member_firstname` varchar(45) DEFAULT NULL,
  `member_lastname` varchar(45) DEFAULT NULL,
  `member_gender` char(1) DEFAULT NULL,
  `member_address` text,
  `member_mobile` varchar(45) DEFAULT NULL,
  `member_email` varchar(45) DEFAULT NULL,
  `member_picture` varchar(200) DEFAULT NULL,
  `member_idLine` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `fk_member` (`user_id`),
  CONSTRAINT `fk_member` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('1100702123649','พุทธพร','รุ่งแสงวีรพันธ์','m','88/11-12 หมู่ 2 ซอยบางเฆมขาว ถ.สุขุมวิท ต.ท้ายบ้าน อ.เมืองสมุทรปราการ จ.สมุทรปราการ','0845433307','puttapron07@gmail.com','2016_07_28_13_15_40_119202552.jpg','put_put_put',3),('1209700567563','นาย จตุรงค์','หลายประสิทธิ์','m','139/3/4 หมู่5 ต.แปลงยาว อ.แปลงยาว จ.ฉะเชิงเทรา 24190','0805687080','mosmimosmi@hotmail.com','2016_07_26_11_20_34_3_small.png','TellLove',1),('1301500045611','กฤษฎา','นภาพร','m','187/7 ม.15 ต.ในเมือง อ.พิมาย จ.นครราชสีมา 30110','0943010921','kitsadanapaporn@gmail.com','2016_07_21_12_21_29_boy-7.png','abacuz',4),('1301500045620','Kitsada','Napaporn','m','187/7 m.15 t.naimueng a.phimai nakhonratchasima 30110','0943910921','kitsadanapaporn@gmail.com','2016_07_26_15_27_24_boy.png','abacuz',8),('1529900620686','nuttida','wongsomsak','f','197 soi.17 m.17 bohaew meung lampang 52100','0834775419','w.nutthida@gmail.com','2016_07_22_15_35_56_pic.jpg','alohasojeang',6),('1709900956101','manita','tohjareon','f','71/135 ม.3 ต.ห้วยจรเข้ อ.เมือง จ.นครปฐม 73000','0922532271','meaw_clik@hotmail.com','2016_07_22_11_50_40_2eb3044a-2afc-5f58-e7f8-571347284c7a.jpg','moomeen',5),('1729900305193','Nongnapa','Jamamporn','f','235/11 ถ.ขุนช้าง ต.ท่าพี่เลี้ยง อ.เมือง จ.สุพรรณบุรี 72000','0984855832','njk_new@hotmail.com','2016_07_28_17_18_45_CLu2UNLUkAAQ1-w.jpg','taenew.cb',2);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel` (
  `travel_id` int(11) NOT NULL AUTO_INCREMENT,
  `travel_country` varchar(45) DEFAULT NULL,
  `travel_detail` text,
  `travel_dateStart` date DEFAULT NULL,
  `travel_dateEnd` date DEFAULT NULL,
  `member_id` char(13) DEFAULT NULL,
  `travel_status` char(1) DEFAULT NULL,
  `travel_dateAnnounce` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`travel_id`),
  KEY `fk_member_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES (1,'Japan','ไปซื้อโตเกียว','2016-07-22','2016-07-25','1209700567563','1','2016-07-21 03:12:18.464000'),(2,'South Korea','ไปเกาหลีครับ ไปหา irene วง red velvet ว่าจะไปขอถ่ายรูปด้วย และ ขอลายเซ็นด้วย อยากได้อะไรฝากได้นะ ครับ ','2016-07-25','2016-08-06','1100702123649','1','2016-07-21 03:30:58.205000'),(3,'United States of America','ไปเที่ยวค่ะ เอาเงินมาไม่มากเท่าไร แต่ก็ฝากได้นะคะ ','2016-07-22','2016-07-25','1729900305193','0','2016-07-21 03:31:39.209000'),(7,'Australia','ไปกินน้ำแข็งใส','2016-07-22','2016-07-30','1209700567563','1','2016-07-21 03:52:48.256000'),(8,'United States of America','ไปซื้อลองเท้า adidas nmd และ adidas yeezy  ที่ usa รับฝากหิ้วกลับไทยครับ เงินมาของไป ถ้าหิ้วกลับมาไม่ได้ยินดีคืนเงิน ครับ','2016-08-21','2016-09-10','1100702123649','1','2016-07-21 03:51:01.992000'),(9,'United States of America','ไปเที่ยวนิวยอร์กค่ะ พอจะมีกำลังรับฝาก ทักมาคุยกันได้นะคะ','2016-07-22','2016-07-25','1729900305193','0','2016-07-21 03:51:04.036000'),(11,'Papua New Guinea','แมว','2016-07-26','2016-07-29','1209700567563','1','2016-07-21 03:55:22.187000'),(12,'South Korea','ไปตามรอยกัปตันยูค่ะ ฝากซื้อของที่เกี่ยวกับ descendants of the sun ได้นะคะ ','2016-07-23','2016-07-30','1709900956101','0','2016-07-21 04:55:01.284000'),(14,'Australia','sydney','2016-07-22','2016-07-25','1301500045611','1','2016-07-21 05:21:46.623000'),(15,'China','ฝากซื้อได้ค่ะ ','2016-07-24','2016-07-30','1729900305193','0','2016-07-21 06:05:20.118000'),(16,'South Korea','ไปคอนเสิร์ต EXO PLANET #3 - THE EXOr\'DIUM in Seoul ค่ะ ฝากซื้อของหน้างานได้นะคะ','2016-07-23','2016-07-25','1729900305193','1','2016-07-22 04:55:15.907000'),(17,'Iceland','ไปดูเพนกวิน ฝากซื้ออะไรไหม','2016-07-23','2016-07-28','1209700567563','1','2016-07-22 05:18:51.695000'),(18,'Australia','ซิดนีย์','2016-07-23','2016-07-26','1301500045611','1','2016-07-22 07:04:48.314000'),(19,'Japan','ไปกินก๊วยเตี๊ยวเรือ','2016-07-23','2016-07-27','1529900620686','1','2016-07-22 08:37:08.131000'),(20,'Brazil','ไปโอลิมปิก','2016-08-12','2016-08-31','1529900620686','1','2016-07-22 08:38:18.336000'),(21,'Laos','วังเวียง','2016-07-27','2016-07-29','1301500045611','1','2016-07-26 06:55:20.681000'),(22,'South Korea','ไปตามรอยกัปตันยูค่ะ ฝากซื้อของที่เกี่ยวกับ descendants of the sun ได้นะคะ','2016-07-30','2016-08-06','1709900956101','0','2016-07-26 07:09:22.682000'),(23,'Australia','ซิดนีย์','2016-07-28','2016-07-29','1301500045611','1','2016-07-27 04:28:01.650000'),(24,'United States of America','Ohio','2016-07-28','2016-07-29','1301500045611','1','2016-07-27 04:29:00.636000'),(25,'Australia','จิงโจ้','2016-07-29','2016-07-30','1301500045620','1','2016-07-28 09:16:56.111000'),(26,'Australia','จิงโจ้ เล่นสกี','2016-07-29','2016-07-30','1301500045611','1','2016-07-28 09:32:54.095000'),(27,'Barbados','barbar','2016-07-29','2016-07-30','1301500045611','1','2016-07-28 09:46:57.253000'),(28,'South Korea','ไปเที่ยวเกาหลีค่ะ ทริปติ่ง จะแวะไปห้าง coex ร้านของ smtown ฝากซื้อของได้นะคะ','2016-08-01','2016-08-06','1709900956101','1','2016-07-29 01:55:37.635000');
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `user_activate` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mos','2ca588b801efdb58a47c9ff7221c88a8','1'),(2,'taenew','31368cb092d919fecd01c8c21235db14','1'),(3,'putmiputmi','e10adc3949ba59abbe56e057f20f883e','1'),(4,'abacuz','858acd4fa2d84e6912863236a350fa3c','1'),(5,'meening_manita','827ccb0eea8a706c4c34a16891f84e7b','1'),(6,'nuttidaw','a477846e717d06aef1a3ba2467ceedce','1'),(7,'Kitsada','e10adc3949ba59abbe56e057f20f883e','0'),(8,'Kitsada','e10adc3949ba59abbe56e057f20f883e','1'),(9,'','d41d8cd98f00b204e9800998ecf8427e','0'),(10,'','d41d8cd98f00b204e9800998ecf8427e','0'),(11,'','d41d8cd98f00b204e9800998ecf8427e','0'),(12,'','d41d8cd98f00b204e9800998ecf8427e','0'),(13,'','d41d8cd98f00b204e9800998ecf8427e','0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `want_buy`
--

DROP TABLE IF EXISTS `want_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `want_buy` (
  `member_id` char(13) NOT NULL,
  `want_buy_country` varchar(45) NOT NULL,
  PRIMARY KEY (`member_id`,`want_buy_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `want_buy`
--

LOCK TABLES `want_buy` WRITE;
/*!40000 ALTER TABLE `want_buy` DISABLE KEYS */;
INSERT INTO `want_buy` VALUES ('1209700567563','Barbados'),('1301500045611','Australia'),('1301500045620','Australia'),('1729900305193','Korea Sout');
/*!40000 ALTER TABLE `want_buy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-29 14:38:58
