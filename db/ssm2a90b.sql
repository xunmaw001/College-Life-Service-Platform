-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm2a90b
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='在线沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-01-25 09:38:27',1,1,'提问1','回复1',1),(92,'2021-01-25 09:38:27',2,2,'提问2','回复2',2),(93,'2021-01-25 09:38:27',3,3,'提问3','回复3',3),(94,'2021-01-25 09:38:27',4,4,'提问4','回复4',4),(95,'2021-01-25 09:38:27',5,5,'提问5','回复5',5),(96,'2021-01-25 09:38:27',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm2a90b/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2a90b/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2a90b/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2021-01-25 09:38:27','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(102,'2021-01-25 09:38:27','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-01-25 09:38:27','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-01-25 09:38:27','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-01-25 09:38:27','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(106,'2021-01-25 09:38:27','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='校园公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2021-01-25 09:38:27','标题1','简介1','http://localhost:8080/ssm2a90b/upload/news_picture1.jpg','内容1'),(142,'2021-01-25 09:38:27','标题2','简介2','http://localhost:8080/ssm2a90b/upload/news_picture2.jpg','内容2'),(143,'2021-01-25 09:38:27','标题3','简介3','http://localhost:8080/ssm2a90b/upload/news_picture3.jpg','内容3'),(144,'2021-01-25 09:38:27','标题4','简介4','http://localhost:8080/ssm2a90b/upload/news_picture4.jpg','内容4'),(145,'2021-01-25 09:38:27','标题5','简介5','http://localhost:8080/ssm2a90b/upload/news_picture5.jpg','内容5'),(146,'2021-01-25 09:38:27','标题6','简介6','http://localhost:8080/ssm2a90b/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeibaoxiu`
--

DROP TABLE IF EXISTS `shebeibaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeibaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `shifuxingming` varchar(200) DEFAULT NULL COMMENT '师傅姓名',
  `baoxiuneirong` longtext COMMENT '保修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '保修日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushe` varchar(200) NOT NULL COMMENT '宿舍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='设备报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeibaoxiu`
--

LOCK TABLES `shebeibaoxiu` WRITE;
/*!40000 ALTER TABLE `shebeibaoxiu` DISABLE KEYS */;
INSERT INTO `shebeibaoxiu` VALUES (61,'2021-01-25 09:38:27','名称1','工号1','师傅姓名1','保修内容1','2021-01-25','学号1','学生姓名1','宿舍1'),(62,'2021-01-25 09:38:27','名称2','工号2','师傅姓名2','保修内容2','2021-01-25','学号2','学生姓名2','宿舍2'),(63,'2021-01-25 09:38:27','名称3','工号3','师傅姓名3','保修内容3','2021-01-25','学号3','学生姓名3','宿舍3'),(64,'2021-01-25 09:38:27','名称4','工号4','师傅姓名4','保修内容4','2021-01-25','学号4','学生姓名4','宿舍4'),(65,'2021-01-25 09:38:27','名称5','工号5','师傅姓名5','保修内容5','2021-01-25','学号5','学生姓名5','宿舍5'),(66,'2021-01-25 09:38:27','名称6','工号6','师傅姓名6','保修内容6','2021-01-25','学号6','学生姓名6','宿舍6');
/*!40000 ALTER TABLE `shebeibaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushegonggao`
--

DROP TABLE IF EXISTS `sushegonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushegonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='宿舍公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushegonggao`
--

LOCK TABLES `sushegonggao` WRITE;
/*!40000 ALTER TABLE `sushegonggao` DISABLE KEYS */;
INSERT INTO `sushegonggao` VALUES (31,'2021-01-25 09:38:27','标题1','http://localhost:8080/ssm2a90b/upload/sushegonggao_tupian1.jpg','公告内容1','2021-01-25 17:38:27'),(32,'2021-01-25 09:38:27','标题2','http://localhost:8080/ssm2a90b/upload/sushegonggao_tupian2.jpg','公告内容2','2021-01-25 17:38:27'),(33,'2021-01-25 09:38:27','标题3','http://localhost:8080/ssm2a90b/upload/sushegonggao_tupian3.jpg','公告内容3','2021-01-25 17:38:27'),(34,'2021-01-25 09:38:27','标题4','http://localhost:8080/ssm2a90b/upload/sushegonggao_tupian4.jpg','公告内容4','2021-01-25 17:38:27'),(35,'2021-01-25 09:38:27','标题5','http://localhost:8080/ssm2a90b/upload/sushegonggao_tupian5.jpg','公告内容5','2021-01-25 17:38:27'),(36,'2021-01-25 09:38:27','标题6','http://localhost:8080/ssm2a90b/upload/sushegonggao_tupian6.jpg','公告内容6','2021-01-25 17:38:27');
/*!40000 ALTER TABLE `sushegonggao` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-25 09:38:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiupingjia`
--

DROP TABLE IF EXISTS `weixiupingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `shifuxingming` varchar(200) DEFAULT NULL COMMENT '师傅姓名',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='维修评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiupingjia`
--

LOCK TABLES `weixiupingjia` WRITE;
/*!40000 ALTER TABLE `weixiupingjia` DISABLE KEYS */;
INSERT INTO `weixiupingjia` VALUES (81,'2021-01-25 09:38:27','名称1','工号1','师傅姓名1','1星','评价内容1','2021-01-25','学号1'),(82,'2021-01-25 09:38:27','名称2','工号2','师傅姓名2','1星','评价内容2','2021-01-25','学号2'),(83,'2021-01-25 09:38:27','名称3','工号3','师傅姓名3','1星','评价内容3','2021-01-25','学号3'),(84,'2021-01-25 09:38:27','名称4','工号4','师傅姓名4','1星','评价内容4','2021-01-25','学号4'),(85,'2021-01-25 09:38:27','名称5','工号5','师傅姓名5','1星','评价内容5','2021-01-25','学号5'),(86,'2021-01-25 09:38:27','名称6','工号6','师傅姓名6','1星','评价内容6','2021-01-25','学号6');
/*!40000 ALTER TABLE `weixiupingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiushifu`
--

DROP TABLE IF EXISTS `weixiushifu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiushifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shifuxingming` varchar(200) DEFAULT NULL COMMENT '师傅姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='维修师傅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiushifu`
--

LOCK TABLES `weixiushifu` WRITE;
/*!40000 ALTER TABLE `weixiushifu` DISABLE KEYS */;
INSERT INTO `weixiushifu` VALUES (21,'2021-01-25 09:38:27','维修师傅1','123456','师傅姓名1','男','http://localhost:8080/ssm2a90b/upload/weixiushifu_touxiang1.jpg','13823888881'),(22,'2021-01-25 09:38:27','维修师傅2','123456','师傅姓名2','男','http://localhost:8080/ssm2a90b/upload/weixiushifu_touxiang2.jpg','13823888882'),(23,'2021-01-25 09:38:27','维修师傅3','123456','师傅姓名3','男','http://localhost:8080/ssm2a90b/upload/weixiushifu_touxiang3.jpg','13823888883'),(24,'2021-01-25 09:38:27','维修师傅4','123456','师傅姓名4','男','http://localhost:8080/ssm2a90b/upload/weixiushifu_touxiang4.jpg','13823888884'),(25,'2021-01-25 09:38:27','维修师傅5','123456','师傅姓名5','男','http://localhost:8080/ssm2a90b/upload/weixiushifu_touxiang5.jpg','13823888885'),(26,'2021-01-25 09:38:27','维修师傅6','123456','师傅姓名6','男','http://localhost:8080/ssm2a90b/upload/weixiushifu_touxiang6.jpg','13823888886');
/*!40000 ALTER TABLE `weixiushifu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiuxinxi`
--

DROP TABLE IF EXISTS `weixiuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `weixiuqingkuang` varchar(200) DEFAULT NULL COMMENT '维修情况',
  `weixiuneirong` longtext COMMENT '维修内容',
  `feiyong` int(11) NOT NULL COMMENT '费用',
  `weixiuriqi` date DEFAULT NULL COMMENT '维修日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `shifuxingming` varchar(200) DEFAULT NULL COMMENT '师傅姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='维修信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiuxinxi`
--

LOCK TABLES `weixiuxinxi` WRITE;
/*!40000 ALTER TABLE `weixiuxinxi` DISABLE KEYS */;
INSERT INTO `weixiuxinxi` VALUES (71,'2021-01-25 09:38:27','名称1','学号1','学生姓名1','已修好','维修内容1',1,'2021-01-25','工号1','师傅姓名1','未支付'),(72,'2021-01-25 09:38:27','名称2','学号2','学生姓名2','已修好','维修内容2',2,'2021-01-25','工号2','师傅姓名2','未支付'),(73,'2021-01-25 09:38:27','名称3','学号3','学生姓名3','已修好','维修内容3',3,'2021-01-25','工号3','师傅姓名3','未支付'),(74,'2021-01-25 09:38:27','名称4','学号4','学生姓名4','已修好','维修内容4',4,'2021-01-25','工号4','师傅姓名4','未支付'),(75,'2021-01-25 09:38:27','名称5','学号5','学生姓名5','已修好','维修内容5',5,'2021-01-25','工号5','师傅姓名5','未支付'),(76,'2021-01-25 09:38:27','名称6','学号6','学生姓名6','已修好','维修内容6',6,'2021-01-25','工号6','师傅姓名6','未支付');
/*!40000 ALTER TABLE `weixiuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-01-25 09:38:27','学生1','123456','学生姓名1','男','http://localhost:8080/ssm2a90b/upload/xuesheng_touxiang1.jpg','13823888881'),(12,'2021-01-25 09:38:27','学生2','123456','学生姓名2','男','http://localhost:8080/ssm2a90b/upload/xuesheng_touxiang2.jpg','13823888882'),(13,'2021-01-25 09:38:27','学生3','123456','学生姓名3','男','http://localhost:8080/ssm2a90b/upload/xuesheng_touxiang3.jpg','13823888883'),(14,'2021-01-25 09:38:27','学生4','123456','学生姓名4','男','http://localhost:8080/ssm2a90b/upload/xuesheng_touxiang4.jpg','13823888884'),(15,'2021-01-25 09:38:27','学生5','123456','学生姓名5','男','http://localhost:8080/ssm2a90b/upload/xuesheng_touxiang5.jpg','13823888885'),(16,'2021-01-25 09:38:27','学生6','123456','学生姓名6','男','http://localhost:8080/ssm2a90b/upload/xuesheng_touxiang6.jpg','13823888886');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuexinxi`
--

DROP TABLE IF EXISTS `yuyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `zixishihao` varchar(200) DEFAULT NULL COMMENT '自习室号',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yuyueshijian` varchar(200) NOT NULL COMMENT '预约时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='预约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuexinxi`
--

LOCK TABLES `yuyuexinxi` WRITE;
/*!40000 ALTER TABLE `yuyuexinxi` DISABLE KEYS */;
INSERT INTO `yuyuexinxi` VALUES (51,'2021-01-25 09:38:27','图书馆名称1','自习室号1',1,'2021-01-25','预约时间1','学号1','学生姓名1'),(52,'2021-01-25 09:38:27','图书馆名称2','自习室号2',2,'2021-01-25','预约时间2','学号2','学生姓名2'),(53,'2021-01-25 09:38:27','图书馆名称3','自习室号3',3,'2021-01-25','预约时间3','学号3','学生姓名3'),(54,'2021-01-25 09:38:27','图书馆名称4','自习室号4',4,'2021-01-25','预约时间4','学号4','学生姓名4'),(55,'2021-01-25 09:38:27','图书馆名称5','自习室号5',5,'2021-01-25','预约时间5','学号5','学生姓名5'),(56,'2021-01-25 09:38:27','图书馆名称6','自习室号6',6,'2021-01-25','预约时间6','学号6','学生姓名6');
/*!40000 ALTER TABLE `yuyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixishi`
--

DROP TABLE IF EXISTS `zixishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuguanmingcheng` varchar(200) NOT NULL COMMENT '图书馆名称',
  `zixishihao` varchar(200) DEFAULT NULL COMMENT '自习室号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `rongnarenshu` int(11) DEFAULT NULL COMMENT '容纳人数',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='自习室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixishi`
--

LOCK TABLES `zixishi` WRITE;
/*!40000 ALTER TABLE `zixishi` DISABLE KEYS */;
INSERT INTO `zixishi` VALUES (41,'2021-01-25 09:38:27','图书馆名称1','自习室号1','http://localhost:8080/ssm2a90b/upload/zixishi_tupian1.jpg','时间段1',1,'详情1'),(42,'2021-01-25 09:38:27','图书馆名称2','自习室号2','http://localhost:8080/ssm2a90b/upload/zixishi_tupian2.jpg','时间段2',2,'详情2'),(43,'2021-01-25 09:38:27','图书馆名称3','自习室号3','http://localhost:8080/ssm2a90b/upload/zixishi_tupian3.jpg','时间段3',3,'详情3'),(44,'2021-01-25 09:38:27','图书馆名称4','自习室号4','http://localhost:8080/ssm2a90b/upload/zixishi_tupian4.jpg','时间段4',4,'详情4'),(45,'2021-01-25 09:38:27','图书馆名称5','自习室号5','http://localhost:8080/ssm2a90b/upload/zixishi_tupian5.jpg','时间段5',5,'详情5'),(46,'2021-01-25 09:38:27','图书馆名称6','自习室号6','http://localhost:8080/ssm2a90b/upload/zixishi_tupian6.jpg','时间段6',6,'详情6');
/*!40000 ALTER TABLE `zixishi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 10:15:20
