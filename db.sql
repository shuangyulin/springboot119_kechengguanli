/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot5h4b7
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot5h4b7` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot5h4b7`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot5h4b7/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot5h4b7/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot5h4b7/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) NOT NULL COMMENT '教师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshizhanghao` (`jiaoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620869066273 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (31,'2021-05-13 09:23:08','教师1','123456','教师姓名1',1,'专业1','男','13823888881','http://localhost:8080/springboot5h4b7/upload/jiaoshi_zhaopian1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (32,'2021-05-13 09:23:08','教师2','123456','教师姓名2',2,'专业2','男','13823888882','http://localhost:8080/springboot5h4b7/upload/jiaoshi_zhaopian2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (33,'2021-05-13 09:23:08','教师3','123456','教师姓名3',3,'专业3','男','13823888883','http://localhost:8080/springboot5h4b7/upload/jiaoshi_zhaopian3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (34,'2021-05-13 09:23:08','教师4','123456','教师姓名4',4,'专业4','男','13823888884','http://localhost:8080/springboot5h4b7/upload/jiaoshi_zhaopian4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (35,'2021-05-13 09:23:08','教师5','123456','教师姓名5',5,'专业5','男','13823888885','http://localhost:8080/springboot5h4b7/upload/jiaoshi_zhaopian5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (36,'2021-05-13 09:23:08','教师6','123456','教师姓名6',6,'专业6','男','13823888886','http://localhost:8080/springboot5h4b7/upload/jiaoshi_zhaopian6.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (1620869066272,'2021-05-13 09:24:26','22','22','收到',22,'电饭锅','男','11122233333','http://localhost:8080/springboot5h4b7/upload/1620869078422.jpg');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kaikeshijian` datetime DEFAULT NULL COMMENT '开课时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `kechengneirong` longtext COMMENT '课程内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620869196804 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (41,'2021-05-13 09:23:08','课程名称1','课程分类1','2021-05-13 09:23:08','2021-05-13 09:23:08','课程内容1','http://localhost:8080/springboot5h4b7/upload/kechengxinxi_fengmian1.jpg','教师账号1','教师姓名1','2021-05-13 09:23:08',1);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (42,'2021-05-13 09:23:08','课程名称2','课程分类2','2021-05-13 09:23:08','2021-05-13 09:23:08','课程内容2','http://localhost:8080/springboot5h4b7/upload/kechengxinxi_fengmian2.jpg','教师账号2','教师姓名2','2021-05-13 09:23:08',2);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (43,'2021-05-13 09:23:08','课程名称3','课程分类3','2021-05-13 09:23:08','2021-05-13 09:23:08','课程内容3','http://localhost:8080/springboot5h4b7/upload/kechengxinxi_fengmian3.jpg','教师账号3','教师姓名3','2021-05-13 09:23:08',3);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (44,'2021-05-13 09:23:08','课程名称4','课程分类4','2021-05-13 09:23:08','2021-05-13 09:23:08','课程内容4','http://localhost:8080/springboot5h4b7/upload/kechengxinxi_fengmian4.jpg','教师账号4','教师姓名4','2021-05-13 09:23:08',4);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (45,'2021-05-13 09:23:08','课程名称5','课程分类5','2021-05-13 09:23:08','2021-05-13 09:23:08','课程内容5','http://localhost:8080/springboot5h4b7/upload/kechengxinxi_fengmian5.jpg','教师账号5','教师姓名5','2021-05-13 09:23:08',5);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (46,'2021-05-13 09:23:08','课程名称6','课程分类6','2021-05-13 09:23:08','2021-05-13 09:23:08','课程内容6','http://localhost:8080/springboot5h4b7/upload/kechengxinxi_fengmian6.jpg','教师账号6','教师姓名6','2021-05-13 09:23:08',6);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (1620869196803,'2021-05-13 09:26:36','地方收费都是','士大夫士大夫收到','2021-05-13 09:24:12','2021-05-13 12:24:12','<p>电饭锅地方给对方地方各个过过过过过过过过过过过过过过电饭锅地方给对方地方各个过过过过过过过过过过过过过过电饭锅地方给对方地方各个过过过过过过过过过过过过过过电饭锅地方给对方地方各个过过过过过过过过过过过过过过</p><p><img src=\"http://localhost:8080/springboot5h4b7/upload/1620869195515.png\"></p>','http://localhost:8080/springboot5h4b7/upload/1620869173880.jpg','22','收到','2021-05-13 09:27:47',4);

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1620869066272,'22','jiaoshi','教师','h18pn77gox624zm0ecywweguz0kho572','2021-05-13 09:24:29','2021-05-13 10:27:20');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1620869056038,'11','xuesheng','学生','s9rf5dhh2yrdaplukcbn9koim3ycr5q5','2021-05-13 09:24:54','2021-05-13 10:27:39');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'abo','users','管理员','1lom5nu4irrtnq6azs93goqumm1rtazv','2021-05-13 09:25:12','2021-05-13 10:27:57');

/*Table structure for table `tongzhigonggao` */

DROP TABLE IF EXISTS `tongzhigonggao`;

CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620869138369 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `tongzhigonggao` */

insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (11,'2021-05-13 09:23:07','标题1','简介1','内容1','2021-05-13','http://localhost:8080/springboot5h4b7/upload/tongzhigonggao_fengmian1.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (12,'2021-05-13 09:23:07','标题2','简介2','内容2','2021-05-13','http://localhost:8080/springboot5h4b7/upload/tongzhigonggao_fengmian2.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (13,'2021-05-13 09:23:07','标题3','简介3','内容3','2021-05-13','http://localhost:8080/springboot5h4b7/upload/tongzhigonggao_fengmian3.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (14,'2021-05-13 09:23:07','标题4','简介4','内容4','2021-05-13','http://localhost:8080/springboot5h4b7/upload/tongzhigonggao_fengmian4.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (15,'2021-05-13 09:23:07','标题5','简介5','内容5','2021-05-13','http://localhost:8080/springboot5h4b7/upload/tongzhigonggao_fengmian5.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (16,'2021-05-13 09:23:07','标题6','简介6','内容6','2021-05-13','http://localhost:8080/springboot5h4b7/upload/tongzhigonggao_fengmian6.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (1620869138368,'2021-05-13 09:25:38','电饭锅电饭锅地方','发给电工点更改过过过过过过过过过过过过过过过过过过过过过过过过','<p>发给电工点更改过过过过过过过过过过过过过过过过过过过过过过过过发给电工点更改过过过过过过过过过过过过过过过过过过过过过过过过发给电工点更改过过过过过过过过过过过过过过过过过过过过过过过过</p><p><img src=\"http://localhost:8080/springboot5h4b7/upload/1620869130086.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/springboot5h4b7/upload/1620869137491.jpg\"></p>','2021-05-07','http://localhost:8080/springboot5h4b7/upload/1620869123597.jpg');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-13 09:23:08');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620869056039 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (22,'2021-05-13 09:23:08','学生2','123456','姓名2',2,'男','13823888882','http://localhost:8080/springboot5h4b7/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (23,'2021-05-13 09:23:08','学生3','123456','姓名3',3,'男','13823888883','http://localhost:8080/springboot5h4b7/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (24,'2021-05-13 09:23:08','学生4','123456','姓名4',4,'男','13823888884','http://localhost:8080/springboot5h4b7/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (25,'2021-05-13 09:23:08','学生5','123456','姓名5',5,'男','13823888885','http://localhost:8080/springboot5h4b7/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (26,'2021-05-13 09:23:08','学生6','123456','姓名6',6,'男','13823888886','http://localhost:8080/springboot5h4b7/upload/xuesheng_zhaopian6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (1620869056038,'2021-05-13 09:24:16','11','11','撒旦法',11,'男','11122211111','http://localhost:8080/springboot5h4b7/upload/1620869099731.jpg');

/*Table structure for table `xueshengkecheng` */

DROP TABLE IF EXISTS `xueshengkecheng`;

CREATE TABLE `xueshengkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `shifouxuanze` varchar(200) DEFAULT NULL COMMENT '是否选择',
  `xuanzeshijian` datetime DEFAULT NULL COMMENT '选择时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620869229780 DEFAULT CHARSET=utf8 COMMENT='学生课程';

/*Data for the table `xueshengkecheng` */

insert  into `xueshengkecheng`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (51,'2021-05-13 09:23:08','课程名称1','是','2021-05-13 09:23:08','教师账号1','教师姓名1','学号1','姓名1','是','');
insert  into `xueshengkecheng`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (52,'2021-05-13 09:23:08','课程名称2','是','2021-05-13 09:23:08','教师账号2','教师姓名2','学号2','姓名2','是','');
insert  into `xueshengkecheng`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (53,'2021-05-13 09:23:08','课程名称3','是','2021-05-13 09:23:08','教师账号3','教师姓名3','学号3','姓名3','是','');
insert  into `xueshengkecheng`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (54,'2021-05-13 09:23:08','课程名称4','是','2021-05-13 09:23:08','教师账号4','教师姓名4','学号4','姓名4','是','');
insert  into `xueshengkecheng`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (55,'2021-05-13 09:23:08','课程名称5','是','2021-05-13 09:23:08','教师账号5','教师姓名5','学号5','姓名5','是','');
insert  into `xueshengkecheng`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (56,'2021-05-13 09:23:08','课程名称6','是','2021-05-13 09:23:08','教师账号6','教师姓名6','学号6','姓名6','是','');
insert  into `xueshengkecheng`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (1620869229779,'2021-05-13 09:27:09','地方收费都是','是','2021-05-13 09:25:12','22','收到','11','撒旦法','是','士大夫收到士大夫');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
