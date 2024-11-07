/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jinxiaocunxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jinxiaocunxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jinxiaocunxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-22 18:48:25'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-22 18:48:25'),(3,'role_types','权限类型名称',1,'商品管理员',NULL,'2021-04-22 18:48:25'),(4,'role_types','权限类型名称',2,'用户',NULL,'2021-04-22 18:48:25'),(5,'gongyingshang_types','供应商类型名称',1,'供应商1',NULL,'2021-04-22 18:48:25'),(6,'gongyingshang_types','供应商类型名称',2,'供应商2',NULL,'2021-04-22 18:48:25'),(7,'gongyingshang_types','供应商类型名称',3,'供应商3',NULL,'2021-04-22 18:48:25'),(8,'gongyingshang_types','供应商类型名称',4,'供应商4',NULL,'2021-04-22 18:48:25'),(9,'goods_types','商品种类名称',1,'五金类',NULL,'2021-04-22 18:48:25'),(10,'goods_types','商品种类名称',2,'化工类',NULL,'2021-04-22 18:48:25'),(11,'goods_types','商品种类名称',3,'食品类',NULL,'2021-04-22 18:48:25'),(12,'goods_types','商品种类名称',4,'水产类',NULL,'2021-04-22 18:48:25'),(13,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-22 18:48:25'),(14,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-22 18:48:25'),(15,'goods_types','商品种类名称',5,'商品种类5',NULL,'2021-04-22 19:50:26');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',2,'2021-04-22 19:40:17','公告1的详情\r\n','2021-04-22 19:40:17'),(4,'公告2',1,'2021-04-22 19:40:38','公告2的详情\r\n','2021-04-22 19:40:38');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名 Search111 ',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '供应商类型 Search111 ',
  `gongyingshang_content` text COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`gongyingshang_name`,`gongyingshang_types`,`gongyingshang_content`,`create_time`) values (1,'供应商1',4,'供应商1的详情\r\n','2021-04-22 19:16:55'),(2,'供应商2',2,'供应商2的详情\r\n\r\n','2021-04-22 19:17:09');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名字 Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '商品种类  Search111 ',
  `goods_number` int(11) DEFAULT NULL COMMENT '商品数量  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '单价 Search111 ',
  `goods_content` text COMMENT '商品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_number`,`goods_photo`,`danwei`,`danjia`,`goods_content`,`create_time`) values (1,'T恤',4,1000,'http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619090252380.webp','件','20.00','T恤的详情\r\n','2021-04-22 19:18:02'),(2,'笔记本散热器',1,1002,'http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619090289588.webp','个','105.00','笔记本散热器的详情\r\n','2021-04-22 19:18:49'),(3,'电脑主机',4,110,'http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619090335310.webp','台','103.00','电脑主机的详情\r\n','2021-04-22 19:19:15'),(4,'鞋子1',2,100,'http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619092047940.webp','双','56.00','鞋子的详情\r\n','2021-04-22 19:47:46');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户手机号 Search111 ',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号 Search111 ',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '客户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '客户性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`sex_types`,`create_time`) values (1,'张1','17703786901','410224199610232001','http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619090161794.jpg',2,'2021-04-22 19:16:03'),(2,'张2','17703786902','410224199610232002','http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619090193139.jpg',1,'2021-04-22 19:16:35'),(3,'张三','17703786903','410224199610232003','http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619092029108.jpg',1,'2021-04-22 19:47:11');

/*Table structure for table `ruku` */

DROP TABLE IF EXISTS `ruku`;

CREATE TABLE `ruku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `ruku_number` int(11) DEFAULT NULL COMMENT '入库数量 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '入库时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='入库订单';

/*Data for the table `ruku` */

insert  into `ruku`(`id`,`goods_id`,`gongyingshang_id`,`ruku_number`,`insert_time`,`create_time`) values (1,3,2,10,'2021-04-22 19:31:51','2021-04-22 19:31:51'),(3,2,2,10,'2021-04-22 19:36:05','2021-04-22 19:36:05'),(4,3,2,5,'2021-04-22 19:36:51','2021-04-22 19:36:51'),(5,3,2,10,'2021-04-22 19:39:09','2021-04-22 19:39:09'),(6,4,2,10,'2021-04-22 19:48:16','2021-04-22 19:48:16'),(7,4,1,10,'2021-04-22 19:48:39','2021-04-22 19:48:39');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','nwb6xqt5e9tuj4qnwttx1gnnlqtnhtrb','2021-04-22 18:53:08','2021-04-22 20:53:09'),(2,1,'a1','yonghu','用户','x52srland1gf51hk2lhk5ac0772uqvg3','2021-04-22 19:42:21','2021-04-22 20:42:21'),(3,2,'a2','yonghu','商品管理员','3wagpwrc42xcqkbp2nk3ofj980al58hl','2021-04-22 19:43:53','2021-04-22 20:43:54'),(4,3,'a3','yonghu','商品管理员','e119jmi32rb1lzgwlkbmwf0erz43nn57','2021-04-22 19:50:39','2021-04-22 20:50:39'),(5,4,'a4','yonghu','用户','eeejjkx15hjlwg8rhnxpa8ofmrru8ld1','2021-04-22 19:52:14','2021-04-22 20:52:18'),(6,4,'a4','yonghu','商品管理员','1xxsjj1rxt53fxjw0n3m34a2tvmhj2sc','2021-04-22 19:53:26','2021-04-22 20:53:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xiaoshou` */

DROP TABLE IF EXISTS `xiaoshou`;

CREATE TABLE `xiaoshou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `xiaoshou_number` int(11) DEFAULT NULL COMMENT '销售数量 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '销售时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='销售订单';

/*Data for the table `xiaoshou` */

insert  into `xiaoshou`(`id`,`goods_id`,`kehu_id`,`xiaoshou_number`,`insert_time`,`create_time`) values (1,3,2,9,'2021-04-22 19:39:48','2021-04-22 19:39:48'),(2,4,3,20,'2021-04-22 19:49:36','2021-04-22 19:49:36');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `role_types` int(11) DEFAULT NULL COMMENT '权限类型 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`role_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619089646031.jpg',2,2,'2021-04-22 19:07:28'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619089667443.jpg',1,1,'2021-04-22 19:07:50'),(3,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619091994772.jpg',1,1,'2021-04-22 19:46:37'),(4,'a4','123456','张四','17703786904','410224199610232004','http://localhost:8080/jinxiaocunxitong/file/download?fileName=1619092319470.jpg',2,1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
