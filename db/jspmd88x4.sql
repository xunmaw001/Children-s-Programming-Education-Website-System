-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmd88x4
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `baomingxinxi`
--

DROP TABLE IF EXISTS `baomingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `xuefei` varchar(200) DEFAULT NULL COMMENT '学费',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610070123712 DEFAULT CHARSET=utf8 COMMENT='报名信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingxinxi`
--

LOCK TABLES `baomingxinxi` WRITE;
/*!40000 ALTER TABLE `baomingxinxi` DISABLE KEYS */;
INSERT INTO `baomingxinxi` VALUES (51,'2021-01-08 01:36:56','课程编号1','课程名称1','课程类型1','课时1','上课地点1','学费1','用户账号1','用户姓名1','2021-01-08','未支付'),(52,'2021-01-08 01:36:56','课程编号2','课程名称2','课程类型2','课时2','上课地点2','学费2','用户账号2','用户姓名2','2021-01-08','未支付'),(53,'2021-01-08 01:36:56','课程编号3','课程名称3','课程类型3','课时3','上课地点3','学费3','用户账号3','用户姓名3','2021-01-08','未支付'),(54,'2021-01-08 01:36:56','课程编号4','课程名称4','课程类型4','课时4','上课地点4','学费4','用户账号4','用户姓名4','2021-01-08','未支付'),(55,'2021-01-08 01:36:56','课程编号5','课程名称5','课程类型5','课时5','上课地点5','学费5','用户账号5','用户姓名5','2021-01-08','未支付'),(56,'2021-01-08 01:36:56','课程编号6','课程名称6','课程类型6','课时6','上课地点6','学费6','用户账号6','用户姓名6','2021-01-08','未支付'),(1610070005526,'2021-01-08 01:40:05','课程编号5','课程名称5','课程类型5','课时5','上课地点5','学费5','123','胡月','2021-01-08','未支付'),(1610070123711,'2021-01-08 01:42:02','课程编号6','课程名称6','课程类型6','课时6','上课地点6','学费6','123','胡月','2021-01-08','未支付');
/*!40000 ALTER TABLE `baomingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-08 01:36:56',1,1,'提问1','回复1',1),(82,'2021-01-08 01:36:56',2,2,'提问2','回复2',2),(83,'2021-01-08 01:36:56',3,3,'提问3','回复3',3),(84,'2021-01-08 01:36:56',4,4,'提问4','回复4',4),(85,'2021-01-08 01:36:56',5,5,'提问5','回复5',5),(86,'2021-01-08 01:36:56',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengguozhanshi`
--

DROP TABLE IF EXISTS `chengguozhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengguozhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinbianhao` varchar(200) DEFAULT NULL COMMENT '作品编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `zuopinjianjie` longtext COMMENT '作品简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuopinbianhao` (`zuopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='成果展示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengguozhanshi`
--

LOCK TABLES `chengguozhanshi` WRITE;
/*!40000 ALTER TABLE `chengguozhanshi` DISABLE KEYS */;
INSERT INTO `chengguozhanshi` VALUES (61,'2021-01-08 01:36:56','作品编号1','课程名称1','http://localhost:8080/jspmd88x4/upload/chengguozhanshi_fengmian1.jpg','','','作品简介1','2021-01-08'),(62,'2021-01-08 01:36:56','作品编号2','课程名称2','http://localhost:8080/jspmd88x4/upload/chengguozhanshi_fengmian2.jpg','','','作品简介2','2021-01-08'),(63,'2021-01-08 01:36:56','作品编号3','课程名称3','http://localhost:8080/jspmd88x4/upload/chengguozhanshi_fengmian3.jpg','','','作品简介3','2021-01-08'),(64,'2021-01-08 01:36:56','作品编号4','课程名称4','http://localhost:8080/jspmd88x4/upload/chengguozhanshi_fengmian4.jpg','','','作品简介4','2021-01-08'),(65,'2021-01-08 01:36:56','作品编号5','课程名称5','http://localhost:8080/jspmd88x4/upload/chengguozhanshi_fengmian5.jpg','','','作品简介5','2021-01-08'),(66,'2021-01-08 01:36:56','作品编号6','课程名称6','http://localhost:8080/jspmd88x4/upload/chengguozhanshi_fengmian6.jpg','','','作品简介6','2021-01-08');
/*!40000 ALTER TABLE `chengguozhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmd88x4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmd88x4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmd88x4/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-01-08 01:36:56','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-01-08 01:36:56','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-01-08 01:36:56','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-01-08 01:36:56','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-01-08 01:36:57','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-01-08 01:36:57','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengleixing`
--

DROP TABLE IF EXISTS `kechengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengleixing` (`kechengleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengleixing`
--

LOCK TABLES `kechengleixing` WRITE;
/*!40000 ALTER TABLE `kechengleixing` DISABLE KEYS */;
INSERT INTO `kechengleixing` VALUES (11,'2021-01-08 01:36:56','课程类型1'),(12,'2021-01-08 01:36:56','课程类型2'),(13,'2021-01-08 01:36:56','课程类型3'),(14,'2021-01-08 01:36:56','课程类型4'),(15,'2021-01-08 01:36:56','课程类型5'),(16,'2021-01-08 01:36:56','课程类型6');
/*!40000 ALTER TABLE `kechengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefei` varchar(200) DEFAULT NULL COMMENT '学费',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengbiao` longtext COMMENT '课程表',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (41,'2021-01-08 01:36:56','课程编号1','课程名称1','课程类型1','课时1','学费1','上课地点1','课程表1','课程详情1','http://localhost:8080/jspmd88x4/upload/kechengxinxi_tupian1.jpg'),(42,'2021-01-08 01:36:56','课程编号2','课程名称2','课程类型2','课时2','学费2','上课地点2','课程表2','课程详情2','http://localhost:8080/jspmd88x4/upload/kechengxinxi_tupian2.jpg'),(43,'2021-01-08 01:36:56','课程编号3','课程名称3','课程类型3','课时3','学费3','上课地点3','课程表3','课程详情3','http://localhost:8080/jspmd88x4/upload/kechengxinxi_tupian3.jpg'),(44,'2021-01-08 01:36:56','课程编号4','课程名称4','课程类型4','课时4','学费4','上课地点4','课程表4','课程详情4','http://localhost:8080/jspmd88x4/upload/kechengxinxi_tupian4.jpg'),(45,'2021-01-08 01:36:56','课程编号5','课程名称5','课程类型5','课时5','学费5','上课地点5','课程表5','课程详情5','http://localhost:8080/jspmd88x4/upload/kechengxinxi_tupian5.jpg'),(46,'2021-01-08 01:36:56','课程编号6','课程名称6','课程类型6','课时6','学费6','上课地点6','课程表6','课程详情6','http://localhost:8080/jspmd88x4/upload/kechengxinxi_tupian6.jpg');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remenzixun`
--

DROP TABLE IF EXISTS `remenzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remenzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='热门资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remenzixun`
--

LOCK TABLES `remenzixun` WRITE;
/*!40000 ALTER TABLE `remenzixun` DISABLE KEYS */;
INSERT INTO `remenzixun` VALUES (31,'2021-01-08 01:36:56','标题1','http://localhost:8080/jspmd88x4/upload/remenzixun_fengmian1.jpg','内容1','2021-01-08','2021-01-08 09:36:56',1),(32,'2021-01-08 01:36:56','标题2','http://localhost:8080/jspmd88x4/upload/remenzixun_fengmian2.jpg','内容2','2021-01-08','2021-01-08 09:36:56',2),(33,'2021-01-08 01:36:56','标题3','http://localhost:8080/jspmd88x4/upload/remenzixun_fengmian3.jpg','内容3','2021-01-08','2021-01-08 09:36:56',3),(34,'2021-01-08 01:36:56','标题4','http://localhost:8080/jspmd88x4/upload/remenzixun_fengmian4.jpg','内容4','2021-01-08','2021-01-08 09:36:56',4),(35,'2021-01-08 01:36:56','标题5','http://localhost:8080/jspmd88x4/upload/remenzixun_fengmian5.jpg','内容5','2021-01-08','2021-01-08 09:36:56',5),(36,'2021-01-08 01:36:56','标题6','http://localhost:8080/jspmd88x4/upload/remenzixun_fengmian6.jpg','内容6','2021-01-08','2021-01-08 09:41:52',8);
/*!40000 ALTER TABLE `remenzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610070055774 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610070055773,'2021-01-08 01:40:55',1610069977038,72,'xuexiziliao','课程名称2','http://localhost:8080/jspmd88x4/upload/xuexiziliao_fengmian2.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1610069977038,'123','yonghu','用户','gufu11y4nzs6eowi19aca9frcehtr8pe','2021-01-08 01:39:44','2021-01-08 02:39:44');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-08 01:36:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziliao`
--

DROP TABLE IF EXISTS `xuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xuexiziliao` varchar(200) DEFAULT NULL COMMENT '学习资料',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学习资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziliao`
--

LOCK TABLES `xuexiziliao` WRITE;
/*!40000 ALTER TABLE `xuexiziliao` DISABLE KEYS */;
INSERT INTO `xuexiziliao` VALUES (71,'2021-01-08 01:36:56','标题1','课程名称1','http://localhost:8080/jspmd88x4/upload/xuexiziliao_fengmian1.jpg','','简介1','2021-01-08'),(72,'2021-01-08 01:36:56','标题2','课程名称2','http://localhost:8080/jspmd88x4/upload/xuexiziliao_fengmian2.jpg','','简介2','2021-01-08'),(73,'2021-01-08 01:36:56','标题3','课程名称3','http://localhost:8080/jspmd88x4/upload/xuexiziliao_fengmian3.jpg','','简介3','2021-01-08'),(74,'2021-01-08 01:36:56','标题4','课程名称4','http://localhost:8080/jspmd88x4/upload/xuexiziliao_fengmian4.jpg','','简介4','2021-01-08'),(75,'2021-01-08 01:36:56','标题5','课程名称5','http://localhost:8080/jspmd88x4/upload/xuexiziliao_fengmian5.jpg','','简介5','2021-01-08'),(76,'2021-01-08 01:36:56','标题6','课程名称6','http://localhost:8080/jspmd88x4/upload/xuexiziliao_fengmian6.jpg','','简介6','2021-01-08');
/*!40000 ALTER TABLE `xuexiziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610069977039 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2021-01-08 01:36:56','用户1','用户姓名1','123456','男',1,'13823888881','773890001@qq.com'),(22,'2021-01-08 01:36:56','用户2','用户姓名2','123456','男',2,'13823888882','773890002@qq.com'),(23,'2021-01-08 01:36:56','用户3','用户姓名3','123456','男',3,'13823888883','773890003@qq.com'),(24,'2021-01-08 01:36:56','用户4','用户姓名4','123456','男',4,'13823888884','773890004@qq.com'),(25,'2021-01-08 01:36:56','用户5','用户姓名5','123456','男',5,'13823888885','773890005@qq.com'),(26,'2021-01-08 01:36:56','用户6','用户姓名6','123456','男',6,'13823888886','773890006@qq.com'),(1610069977038,'2021-01-08 01:39:37','123','胡月','123','男',36,'12311312312','45654656@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-08 11:09:36
