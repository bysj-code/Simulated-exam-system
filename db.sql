/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7e03l
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7e03l` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7e03l`;

/*Table structure for table `cankaowenxian` */

DROP TABLE IF EXISTS `cankaowenxian`;

CREATE TABLE `cankaowenxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenxianmingcheng` varchar(200) NOT NULL COMMENT '文献名称',
  `wenxianfenlei` varchar(200) NOT NULL COMMENT '文献分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenxianneirong` longtext COMMENT '文献内容',
  `wenxianfujian` varchar(200) DEFAULT NULL COMMENT '文献附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610257727014 DEFAULT CHARSET=utf8 COMMENT='参考文献';

/*Data for the table `cankaowenxian` */

insert  into `cankaowenxian`(`id`,`addtime`,`wenxianmingcheng`,`wenxianfenlei`,`tupian`,`wenxianneirong`,`wenxianfujian`,`faburiqi`) values (31,'2021-01-10 13:25:55','文献名称1','文献分类1','http://localhost:8080/ssm7e03l/upload/cankaowenxian_tupian1.jpg','<p>文献内容1</p>','http://localhost:8080/ssm7e03l/upload/1610256999048.mp4','2021-01-28'),(32,'2021-01-10 13:25:55','文献名称2','文献分类2','http://localhost:8080/ssm7e03l/upload/cankaowenxian_tupian2.jpg','文献内容2','','2021-01-10'),(33,'2021-01-10 13:25:55','文献名称3','文献分类3','http://localhost:8080/ssm7e03l/upload/cankaowenxian_tupian3.jpg','文献内容3','','2021-01-10'),(34,'2021-01-10 13:25:55','文献名称4','文献分类4','http://localhost:8080/ssm7e03l/upload/cankaowenxian_tupian4.jpg','文献内容4','','2021-01-10'),(35,'2021-01-10 13:25:55','文献名称5','文献分类5','http://localhost:8080/ssm7e03l/upload/cankaowenxian_tupian5.jpg','文献内容5','','2021-01-10'),(36,'2021-01-10 13:25:55','文献名称6','文献分类6','http://localhost:8080/ssm7e03l/upload/cankaowenxian_tupian6.jpg','文献内容6','','2021-01-10'),(1610257727013,'2021-01-10 13:48:46','这里可以添加一些文献资料  文献附件那里可以上传文档  ppt  excel等文件','1','','','',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7e03l/upload/1610258580307.png'),(2,'picture2','http://localhost:8080/ssm7e03l/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7e03l/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusscankaowenxian` */

DROP TABLE IF EXISTS `discusscankaowenxian`;

CREATE TABLE `discusscankaowenxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610258099330 DEFAULT CHARSET=utf8 COMMENT='参考文献评论表';

/*Data for the table `discusscankaowenxian` */

insert  into `discusscankaowenxian`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (131,'2021-01-10 13:25:55',1,1,'评论内容1','回复内容1'),(132,'2021-01-10 13:25:55',2,2,'评论内容2','回复内容2'),(133,'2021-01-10 13:25:55',3,3,'评论内容3','回复内容3'),(134,'2021-01-10 13:25:55',4,4,'评论内容4','回复内容4'),(135,'2021-01-10 13:25:55',5,5,'评论内容5','回复内容5'),(136,'2021-01-10 13:25:55',6,6,'评论内容6','回复内容6'),(1610258099329,'2021-01-10 13:54:58',31,1610258015802,'文献这里可以下载文献资料','');

/*Table structure for table `discussfuxiziliao` */

DROP TABLE IF EXISTS `discussfuxiziliao`;

CREATE TABLE `discussfuxiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610258065463 DEFAULT CHARSET=utf8 COMMENT='复习资料评论表';

/*Data for the table `discussfuxiziliao` */

insert  into `discussfuxiziliao`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-01-10 13:25:55',1,1,'评论内容1','回复内容1'),(122,'2021-01-10 13:25:55',2,2,'评论内容2','回复内容2'),(123,'2021-01-10 13:25:55',3,3,'评论内容3','回复内容3'),(124,'2021-01-10 13:25:55',4,4,'评论内容4','回复内容4'),(125,'2021-01-10 13:25:55',5,5,'评论内容5','回复内容5'),(126,'2021-01-10 13:25:55',6,6,'评论内容6','回复内容6'),(1610257642655,'2021-01-10 13:47:21',21,41,'666','用户在前台可以评论  管理员在这里回复评论'),(1610258065462,'2021-01-10 13:54:25',21,1610258015802,'这里可以浏览视频资料来复习  在这里可以评论 管理员会在后台回复','这里查看用户的评论  并回复');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610258500090 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1610257030962,'2021-01-10 13:37:10','XX试卷真题',20,1),(1610257825693,'2021-01-10 13:50:24','这里添加新的试卷',30,1),(1610258500089,'2021-01-10 14:01:39','这里添加新的试卷1',30,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1610258521762 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1610257059546,'2021-01-10 13:37:38',1610257030962,'XX试卷真题','1','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A','1',0,1),(1610257085395,'2021-01-10 13:38:05',1610257030962,'XX试卷真题','2','[{\"text\":\"A.11\",\"code\":\"A\"},{\"text\":\"B.22\",\"code\":\"B\"},{\"text\":\"C.33\",\"code\":\"C\"},{\"text\":\"D.44\",\"code\":\"D\"}]',25,'A,B,C','2',1,2),(1610257098957,'2021-01-10 13:38:18',1610257030962,'XX试卷真题','3','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','3',2,3),(1610257108952,'2021-01-10 13:38:28',1610257030962,'XX试卷真题','4','[]',20,'1212','4',3,4),(1610257120848,'2021-01-10 13:38:40',1610257030962,'XX试卷真题','5','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','5',2,5),(1610257852340,'2021-01-10 13:50:52',1610257030962,'XX试卷真题','试题是在这里添加  有四种题型  可以自由搭配','[]',20,'111','6',3,6),(1610258521761,'2021-01-10 14:02:01',1610257030962,'XX试卷真题','试题是在这里添加 有四种题型 可以自由搭配\n12','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','7',2,7);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1610258205609 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1610257157521,'2021-01-10 13:39:16',41,NULL,1610257030962,'XX试卷真题',1610257059546,'1','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.3\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.4\",\"code\":\"D\",\"checked\":false}]',20,'A','1',20,'A'),(1610257161033,'2021-01-10 13:39:20',41,NULL,1610257030962,'XX试卷真题',1610257085395,'2','[{\"text\":\"A.11\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.22\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.33\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.44\",\"code\":\"D\",\"checked\":false}]',25,'A,B,C','2',25,'A,B,C'),(1610257164334,'2021-01-10 13:39:23',41,NULL,1610257030962,'XX试卷真题',1610257098957,'3','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',20,'A','3',20,'A'),(1610257167514,'2021-01-10 13:39:27',41,NULL,1610257030962,'XX试卷真题',1610257108952,'4','[]',20,'1212','4',20,'1212'),(1610257169319,'2021-01-10 13:39:29',41,NULL,1610257030962,'XX试卷真题',1610257120848,'5','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":true}]',20,'A','5',0,'B'),(1610258180008,'2021-01-10 13:56:19',1610258015802,NULL,1610257030962,'XX试卷真题',1610257059546,'1','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.3\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.4\",\"code\":\"D\",\"checked\":false}]',20,'A','1',20,'A'),(1610258187825,'2021-01-10 13:56:27',1610258015802,NULL,1610257030962,'XX试卷真题',1610257085395,'2','[{\"text\":\"A.11\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.22\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.33\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.44\",\"code\":\"D\",\"checked\":false}]',25,'A,B,C','2',25,'A,B,C'),(1610258192567,'2021-01-10 13:56:31',1610258015802,NULL,1610257030962,'XX试卷真题',1610257098957,'3','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',20,'A','3',20,'A'),(1610258196988,'2021-01-10 13:56:36',1610258015802,NULL,1610257030962,'XX试卷真题',1610257108952,'4','[]',20,'1212','4',20,'1212'),(1610258199845,'2021-01-10 13:56:39',1610258015802,NULL,1610257030962,'XX试卷真题',1610257120848,'5','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":true}]',20,'A','5',0,'B'),(1610258205608,'2021-01-10 13:56:45',1610258015802,NULL,1610257030962,'XX试卷真题',1610257852340,'试题是在这里添加  有四种题型  可以自由搭配','[]',20,'111','6',0,'1');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1610258157142 DEFAULT CHARSET=utf8 COMMENT='论坛表';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1610257190913,'2021-01-10 13:39:50','考试作弊依法严惩 诚信应考捍卫公平','<p>“考试必过”“专业替考”“不过全额退款”……在一些重要考试前夕，一些不法分子利用部分考生急于求过的心理，在社交媒体以及相关网站中推送类似“考试包过”的信息。面对这样的“承诺”，有的考生铤而走险购买了作弊“服务”。除此之外，还有一些考生会利用人情关系找亲友代替自己考试。然而，这样的</p><p><span class=\"ql-size-large\">前台论坛供用户可以相互交流</span></p><p><span class=\"ql-size-large\">管理员在后台可以管理帖子</span></p><p><span class=\"ql-size-large\">针对敏感类话题帖子 可以删除 或者修改</span></p>',0,41,'001','开放'),(1610257205318,'2021-01-10 13:40:05','公务员考试有多难','近些年，公务员考试热度一直不减，逢进必考已成为广泛共识，更多的人想要进入体制，寻求一份安全稳定的保障。2021年国家公务员考试报名总人数高达150多万,录用比约为61:1。报考人数连年创新高，报考比也不断攀升，有的人一次就能成功，有的人在考公路上徘徊多年。公务员考试到底有多难？需',0,41,'001','开放'),(1610257223929,'2021-01-10 13:40:23','2021军校考试内容有变化','　军队招生主管部门近期通过解放军报发布信息：2021年士兵招生文化科目统一考试和军事共同科目考试内容主要有以下变化：根据党、国家和军队建设发展，充实更新了政治科目有关内容；对接国家普通高等教育改革，结合军队院校文理科招生需求配比，将大专毕业生士兵科学知识中的历史、地理与军事知识中',0,41,'001','开放'),(1610258140888,'2021-01-10 13:55:40',NULL,'这里可以回复别人的帖子',1610257223929,1610258015802,'666',NULL),(1610258143661,'2021-01-10 13:55:43',NULL,'11',1610258140888,1610258015802,'666',NULL),(1610258157141,'2021-01-10 13:55:56','也可以在这里自己发帖','发帖',0,1610258015802,'666','开放');

/*Table structure for table `fuxiziliao` */

DROP TABLE IF EXISTS `fuxiziliao`;

CREATE TABLE `fuxiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) NOT NULL COMMENT '资料名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `ziliaoshipin` varchar(200) DEFAULT NULL COMMENT '资料视频',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610257627160 DEFAULT CHARSET=utf8 COMMENT='复习资料';

/*Data for the table `fuxiziliao` */

insert  into `fuxiziliao`(`id`,`addtime`,`ziliaomingcheng`,`kemu`,`tupian`,`ziliaoshipin`,`faburiqi`,`xiangqing`,`clicktime`,`clicknum`) values (21,'2021-01-10 13:25:55','资料名称1','科目1','http://localhost:8080/ssm7e03l/upload/fuxiziliao_tupian1.jpg','http://localhost:8080/ssm7e03l/upload/1610256988070.mp4','2021-01-19','<p>详情1</p>','2021-01-10 13:54:30',9),(22,'2021-01-10 13:25:55','资料名称2','科目2','http://localhost:8080/ssm7e03l/upload/fuxiziliao_tupian2.jpg','','2021-01-10','详情2','2021-01-10 13:25:55',2),(23,'2021-01-10 13:25:55','资料名称3','科目3','http://localhost:8080/ssm7e03l/upload/fuxiziliao_tupian3.jpg','','2021-01-10','详情3','2021-01-10 13:25:55',3),(24,'2021-01-10 13:25:55','资料名称4','科目4','http://localhost:8080/ssm7e03l/upload/fuxiziliao_tupian4.jpg','','2021-01-10','详情4','2021-01-10 13:25:55',4),(25,'2021-01-10 13:25:55','资料名称5','科目5','http://localhost:8080/ssm7e03l/upload/fuxiziliao_tupian5.jpg','','2021-01-10','详情5','2021-01-10 13:25:55',5),(26,'2021-01-10 13:25:55','资料名称6','科目6','http://localhost:8080/ssm7e03l/upload/fuxiziliao_tupian6.jpg','','2021-01-10','详情6','2021-01-10 13:25:55',6),(1610257627159,'2021-01-10 13:47:06','这里可以添加新的复习资料','sql','http://localhost:8080/ssm7e03l/upload/1610257583611.jpg','http://localhost:8080/ssm7e03l/upload/1610257599139.mp4','2021-01-29','<p><img src=\"http://localhost:8080/ssm7e03l/upload/1610257587596.jpg\"></p><p>资料视频这里可以插入mp4文件 方便用户在前端复习</p>','2021-01-10 13:58:41',1);

/*Table structure for table `kemu` */

DROP TABLE IF EXISTS `kemu`;

CREATE TABLE `kemu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kemu` (`kemu`)
) ENGINE=InnoDB AUTO_INCREMENT=1610258305847 DEFAULT CHARSET=utf8 COMMENT='科目';

/*Data for the table `kemu` */

insert  into `kemu`(`id`,`addtime`,`kemu`) values (11,'2021-01-10 13:25:55','sql'),(12,'2021-01-10 13:25:55','软件工程'),(13,'2021-01-10 13:25:55','mysql'),(14,'2021-01-10 13:25:55','大学英语'),(15,'2021-01-10 13:25:55','高数'),(16,'2021-01-10 13:25:55','哲学'),(1610257554287,'2021-01-10 13:45:54','这里添加的科目分类  管理员在做复习资料时候可以选择对应科目'),(1610258305846,'2021-01-10 13:58:25','这里添加的科目分类');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610258249601 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-01-10 13:25:55',1,'用户名1','留言内容1','用户在前台可以发布留言 比如要求上新什么科目的资料之类  管理员则在这里回复'),(112,'2021-01-10 13:25:55',2,'用户名2','留言内容2','回复内容2'),(113,'2021-01-10 13:25:55',3,'用户名3','留言内容3','回复内容3'),(114,'2021-01-10 13:25:55',4,'用户名4','留言内容4','回复内容4'),(115,'2021-01-10 13:25:55',5,'用户名5','留言内容5','回复内容5'),(116,'2021-01-10 13:25:55',6,'用户名6','留言内容6','回复内容6'),(1610258249600,'2021-01-10 13:57:29',1610258015802,'666','这里可以向管理员留言  比如添加XX类复习资料之类  管理员在后台回复','用户在前台可以发布留言 比如要求上新什么科目的资料之类 管理员则在这里回复');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='考试资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (101,'2021-01-10 13:25:55','福建省教育考试院发布重要通知！','http://localhost:8080/ssm7e03l/upload/news_picture1.jpg','<p class=\"ql-align-justify\">了解更多资讯</p><p class=\"ql-align-justify\"><img src=\"http://localhost:8080/ssm7e03l/upload/1610257270824.jpg\"></p><p class=\"ql-align-justify\">昨天</p><p class=\"ql-align-justify\">福建省教育考试院下发</p><p class=\"ql-align-justify\"><strong>《2021年新高考适应性考试考生须知》</strong></p><p class=\"ql-align-justify\">一起来看看↓↓↓</p><p class=\"ql-align-justify\">2021年新高考适应性考试将于1月23日至25日举行。此次考试是在新冠肺炎疫情防控常态化下组织实施的，为确保考试健康平安顺利，现将有关事项告知如下：</p><p class=\"ql-align-justify\">1.考前14天（1月9日，下同）内，建议考生非必要不离开本省，注意个人卫生和防护，乘坐公共交通工具时请佩戴口罩，避免去人群流动性较大的场所聚集，避免与来自高中风险疫情地区或有旅居史、境外返回、有境外人员接触史或有疑似症状等情况的人员接触。考前14天起，考生应认真做好每日体温测量和健康监测，如有发热、咳嗽、乏力等症状，应尽快就医、诊疗，并及时报告学校（非应届毕业班学生应及时报告当地教育招生考试机构）。</p><p class=\"ql-align-justify\">考生应提前通过闽政通APP，申领“八闽</p>'),(102,'2021-01-10 13:25:55','这个考试14号开始报名','http://localhost:8080/ssm7e03l/upload/news_picture2.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">根据《关于2021年中小学教师资格考试考务相关事项的通知》(教试中心函〔2020〕115号)和《辽宁省中小学教师资格考试改革工作实施方案(试行)》(辽教发〔2015〕190号)有关规定，现将我省2021年上半年中小学教师资格考试笔试报名有关事项公告如下：</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">一、考试对象</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">未达到国家法定退休年龄，户籍或居住证在辽宁省内的中国公民，或省内全日制普通院校在读的大学生，国民教育系列的成人高校毕业生、自考毕业生（不含在读生）申请幼儿园、小学、初级中学、高级中学、中等职业学校教师资格和中等职业学校实习指导教师资格可参加中小学教师资格考试。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">根据《教育部关于印发&lt;教育类研究生和公费师范生免试认定中小学教师资格改革实施方案&gt;的通知》文件精神，符合条件的教育类研究生、公费师范生，可参加学校组织的教育教学能力考核，也可自愿参加国家中小学教师资格考试。</span></p>'),(103,'2021-01-10 13:25:55','2021年艺考倒计时！','http://localhost:8080/ssm7e03l/upload/news_picture3.jpg','<p class=\"ql-align-justify\">大众网·海报新闻记者 毕胜 辛振东 济南报道</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">1月9日上午9点，一群报考表演及播音主持专业的2021届艺考生已经来到练功房，开始了一天的训练。距离最近一所学校的考试还剩不到4天的时间，声、台、形、表，考生们正在加紧训练。值得一提的是，2021年仍然沿用去年开始实行的“线上考试”模式，考生们也都进行了针对性训练。</p><p class=\"ql-align-justify\">吕一波是一名报考表演专业的2021届艺考生。谈起学习表演的初衷，他告诉记者，小时候在电视上看到与他年纪相仿的TFBOYS在舞台上尽情表演、展现自己，他就萌生了学习表演专业的想法。</p><p><br></p>'),(104,'2021-01-10 13:25:55','小学生语文考试','http://localhost:8080/ssm7e03l/upload/1610257310422.jpg','<p class=\"ql-align-justify\">一般来说小学语文考试只考80多分，是非常不好的成绩，都会受到家长的批评。不过这次不一样，因为这位同学的作文写得还算可以，连老师都表扬了孩子的立意很好，值得表扬。<strong>家长看到试卷后，虽然对基础知识题扣分较多感到不满，但是看到孩子写的作文，还是感到很欣慰。</strong>下面，我们一起来分析一下这套试卷，看看这位同学为什么基础知识扣分那么多，而作文又受到了老师的表扬和家长的认可。</p><p class=\"ql-align-justify\">试卷的第一页我们看到了学生的自评，他是这样写的：<strong>这次考得不好，下次考90分以上，以后认真听课，思考问题。</strong>虽然这个评语非常简单直接，但是学生还是认可自己这次考得不好，这一点很重要，因为要进步首先要认识自己的错误。第一题，听力题，学生没有出错。</p><p><br></p>'),(105,'2021-01-10 13:25:55','小学生“印刷体”试卷火了','http://localhost:8080/ssm7e03l/upload/news_picture5.jpg','<p class=\"ql-align-justify\">本文由<strong>兜妈爱叨叨</strong>原创，版权所有，侵权必究</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">现在电子产品越来越多，手机也是人手一个，人与人之间的沟通基本上都是靠打字。</p><p class=\"ql-align-justify\">除了签名，似乎很少能用上笔来写字了。</p><p class=\"ql-align-justify\">很多家长也是，在孩子的写字上面也越来越不重视了，认为考试分数高，孩子会识字写字就行，也不管字写的好不好看。</p><p class=\"ql-align-justify\">考个试，或者交个作业，有的学生写的字简直让老师不忍直视，知道的是作业，不知道的还以为是一副充满“诡异”的画呢。</p><p><br></p>'),(106,'2021-01-10 13:25:55','期末考试连续考好还是分开考好','http://localhost:8080/ssm7e03l/upload/news_picture6.jpg','<p class=\"ql-align-justify\"><strong>我相信很多人对于期末考试都有自己的想法，尤其是在大学阶段，这种考试模式总体来说不是特别好受的。</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">前几天，我问我的一个同学——什么时候考完，然后我同学就回答我说，还要下一周，而我当时已经是考完试了，处于放假状态了。前三天，连续考了三门，就这样，我的大学上半学期的课程结束了，而他还要进行复习。<strong>用他的话来说，就是折磨，因为四门课，分两个星期考完，实在是太难受了。他就开始羡慕我的生活。</strong></p><p><br></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610258082252 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1610258044548,'2021-01-10 13:54:03',1610258015802,21,'fuxiziliao','资料名称1','http://localhost:8080/ssm7e03l/upload/fuxiziliao_tupian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vqu1zyqu43niuy5rpx4wpamed6g8xkdn','2021-01-10 13:35:54','2021-01-10 14:58:08'),(2,41,'001','yonghu','用户','6bnodaqprg6jix3uvmgm7bizg7p7rygt','2021-01-10 13:38:55','2021-01-10 14:47:16'),(3,1610258015802,'666','yonghu','用户','2mn96fkryng23ppma2s3ss9ehm4za12p','2021-01-10 13:53:42','2021-01-10 14:53:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-10 13:25:55');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610258015803 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (41,'2021-01-10 13:25:55','001','001','小吴','男','http://localhost:8080/ssm7e03l/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(42,'2021-01-10 13:25:55','用户2','123456','姓名2','男','http://localhost:8080/ssm7e03l/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(43,'2021-01-10 13:25:55','用户3','123456','姓名3','男','http://localhost:8080/ssm7e03l/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(44,'2021-01-10 13:25:55','用户4','123456','姓名4','男','http://localhost:8080/ssm7e03l/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(45,'2021-01-10 13:25:55','用户5','123456','姓名5','男','http://localhost:8080/ssm7e03l/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(46,'2021-01-10 13:25:55','用户6','123456','姓名6','男','http://localhost:8080/ssm7e03l/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1610258015802,'2021-01-10 13:53:35','666','666','小吴','男','http://localhost:8080/ssm7e03l/upload/1610258033863.jpg','16459878981','11@122.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
