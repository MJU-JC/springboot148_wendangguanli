/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wendangguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wendangguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/wendangguanli/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/wendangguanli/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/wendangguanli/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'wendang_types','资料类型',1,'资料类型1',NULL,NULL,'2022-02-16 21:29:36'),(2,'wendang_types','资料类型',2,'资料类型2',NULL,NULL,'2022-02-16 21:29:36'),(3,'wendang_types','资料类型',3,'资料类型3',NULL,NULL,'2022-02-16 21:29:36'),(4,'wendang_erji_types','二级类型',1,'二级类型1',1,NULL,'2022-02-16 21:29:36'),(5,'wendang_erji_types','二级类型',2,'二级类型2',2,NULL,'2022-02-16 21:29:36'),(6,'wendang_erji_types','二级类型',3,'二级类型3',3,NULL,'2022-02-16 21:29:36'),(7,'wendang_yesno_types','审核结果',1,'未审核',NULL,NULL,'2022-02-16 21:29:36'),(8,'wendang_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-02-16 21:29:36'),(9,'wendang_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-02-16 21:29:36'),(10,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-16 21:29:36'),(11,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-16 21:29:36'),(12,'yonghu_types','专业',1,'专业1',NULL,NULL,'2022-02-16 21:29:36'),(13,'yonghu_types','专业',2,'专业2',NULL,NULL,'2022-02-16 21:29:36'),(14,'yonghu_types','专业',3,'专业3',NULL,NULL,'2022-02-16 21:29:36'),(15,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2022-02-16 21:29:36'),(16,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2022-02-16 21:29:36'),(17,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2022-02-16 21:29:36'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-16 21:29:36'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-16 21:29:36'),(20,'wendang_erji_types','二级类型',4,'二级类型3.1.1',3,'','2022-02-16 21:37:52'),(21,'wendang_erji_types','二级类型',5,'二级类型3.1.2',3,'','2022-02-17 10:35:54');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-02-16 21:30:15','2022-02-16 21:30:15','2022-02-16 21:30:15'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-02-16 21:30:15','2022-02-16 21:30:15','2022-02-16 21:30:15'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-02-16 21:30:15','2022-02-16 21:30:15','2022-02-16 21:30:15'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,'2022-02-16 21:30:15','2022-02-16 21:30:15','2022-02-16 21:30:15'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,1,'2022-02-16 21:30:15','2022-02-16 21:30:15','2022-02-16 21:30:15'),(6,'帖子标题6',2,NULL,'发布内容6',NULL,1,'2022-02-16 21:30:15','2022-02-16 21:30:15','2022-02-16 21:30:15'),(7,NULL,4,NULL,'用户a4评论',6,2,'2022-02-17 10:32:42',NULL,'2022-02-17 10:32:42'),(8,NULL,NULL,1,'管理评论',6,2,'2022-02-17 10:35:17',NULL,'2022-02-17 10:35:17');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',3,'http://localhost:8080/wendangguanli/upload/1645060891123.webp','2022-02-16 21:30:15','<p>公告信息详情1</p>',1,'2022-02-16 21:30:15'),(2,'公告信息标题2',1,'http://localhost:8080/wendangguanli/upload/1645060880619.jpg','2022-02-16 21:30:15','<p>公告信息详情2</p>',1,'2022-02-16 21:30:15'),(3,'公告信息标题3',2,'http://localhost:8080/wendangguanli/upload/1645060871015.jpg','2022-02-16 21:30:15','<p>公告信息详情3</p>',1,'2022-02-16 21:30:15'),(4,'公告信息标题4',3,'http://localhost:8080/wendangguanli/upload/1645060861185.jpg','2022-02-16 21:30:15','<p>公告信息详情4</p>',1,'2022-02-16 21:30:15');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','0byfihfiatpio7twh6nba82j531brsf2','2022-02-16 21:36:34','2022-02-17 11:42:28'),(2,1,'a1','yonghu','用户','imwj6ly1sszpzskqiwtv2k0zo1wi9bre','2022-02-16 21:54:04','2022-02-17 11:45:16'),(3,4,'a4','yonghu','用户','6wgsod9om4yevmofss4bl93xd3pt071t','2022-02-17 10:32:05','2022-02-17 11:34:06');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `wendang` */

DROP TABLE IF EXISTS `wendang`;

CREATE TABLE `wendang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wendang_name` varchar(200) DEFAULT NULL COMMENT '资料标题 Search111 ',
  `wendang_types` int(11) DEFAULT NULL COMMENT '资料类型 Search111',
  `wendang_erji_types` int(11) DEFAULT NULL COMMENT '二级分类',
  `wendang_photo` varchar(200) DEFAULT NULL COMMENT '资料封面',
  `wendang_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wendang_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果',
  `wendang_content` text COMMENT '资料详情',
  `wendang_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='资料信息';

/*Data for the table `wendang` */

insert  into `wendang`(`id`,`wendang_name`,`wendang_types`,`wendang_erji_types`,`wendang_photo`,`wendang_file`,`yonghu_id`,`wendang_yesno_types`,`wendang_content`,`wendang_delete`,`create_time`) values (1,'资料标题1',1,1,'http://localhost:8080/wendangguanli/upload/1645061160421.jpg','http://localhost:8080/wendangguanli/upload/1645061151512.doc',1,1,'<p>资料详情1</p>',1,'2022-02-16 21:30:15'),(2,'资料标题2',3,3,'http://localhost:8080/wendangguanli/upload/1645061129080.jpg','http://localhost:8080/wendangguanli/upload/1645061139385.xls',3,2,'<p>资料详情2</p>',1,'2022-02-16 21:30:15'),(3,'资料标题3',2,2,'http://localhost:8080/wendangguanli/upload/1645061114139.jpg','http://localhost:8080/wendangguanli/upload/1645061091820.rar',2,3,'<p>资料详情3</p>',1,'2022-02-16 21:30:15'),(4,'资料标题4',1,1,'http://localhost:8080/wendangguanli/upload/1645061075477.jpeg','http://localhost:8080/wendangguanli/upload/1645061081233.rar',3,2,'<p>资料详情4</p>',1,'2022-02-16 21:30:15'),(5,'资料标题5',3,4,'http://localhost:8080/wendangguanli/upload/1645061063831.jpg','http://localhost:8080/wendangguanli/upload/1645061049027.xls',2,1,'<p>资料详情5</p>',1,'2022-02-16 21:30:15'),(6,'资料标题6',2,2,'http://localhost:8080/wendangguanli/upload/1645060955156.jpeg','http://localhost:8080/wendangguanli/upload/1645060968767.doc',3,2,'<p>资料详情6</p>',1,'2022-02-16 21:30:15'),(7,'用户a4发布的资料',2,2,'http://localhost:8080/wendangguanli/upload/1645065222348.jpg','http://localhost:8080/wendangguanli/upload/1645065228382.xls',4,2,'<p><span style=\"color: rgb(96, 98, 102);\">资料详情111</span></p>',1,'2022-02-17 10:33:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '专业',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`yonghu_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',1,'410224199610232001','17703786901','http://localhost:8080/wendangguanli/upload/1645019536893.jpg',2,1,'2022-02-16 21:30:15'),(2,'a2','123456','用户姓名2',2,'410224199610232002','17703786902','http://localhost:8080/wendangguanli/upload/1645019529703.jpg',1,1,'2022-02-16 21:30:15'),(3,'a3','123456','用户姓名3',1,'410224199610232003','17703786903','http://localhost:8080/wendangguanli/upload/1645019520257.jpg',3,1,'2022-02-16 21:30:15'),(4,'a4','123456','用户a4',1,'410884198811211111','17744885911','http://localhost:8080/wendangguanli/upload/1645065133706.jpg',3,1,'2022-02-17 10:31:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
