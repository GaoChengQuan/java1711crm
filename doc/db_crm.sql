/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - java11crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`java11crm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `java11crm`;

/*Table structure for table `cus_dev_plan` */

DROP TABLE IF EXISTS `cus_dev_plan`;

CREATE TABLE `cus_dev_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sale_chance_id` int(11) DEFAULT NULL COMMENT '销售机会',
  `plan_item` varchar(100) DEFAULT NULL COMMENT '计划项',
  `plan_date` date DEFAULT NULL COMMENT '计划日期',
  `exe_affect` varchar(100) DEFAULT NULL COMMENT '执行效果',
  PRIMARY KEY (`id`),
  KEY `FK_t_cus_dev_plan` (`sale_chance_id`),
  CONSTRAINT `FK_t_cus_dev_plan` FOREIGN KEY (`sale_chance_id`) REFERENCES `sale_chance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `cus_dev_plan` */

insert  into `cus_dev_plan`(`id`,`sale_chance_id`,`plan_item`,`plan_date`,`exe_affect`) values (6,16,'2121','2015-05-28',''),(7,16,'21121','2015-05-19',''),(8,19,'21','2015-05-28',''),(9,2,'1','2015-05-27','2'),(10,2,'2','2015-05-28',''),(11,21,'好','2015-06-09','额'),(12,22,'联系客户，介绍产品','2015-06-01','有点效果'),(13,22,'请客户吃饭，洽谈','2015-06-07','成功了'),(24,1,'213','2015-07-14','321'),(27,35,'吃了一段饭','2018-03-22','效果比较好'),(28,35,'打了一个电话','2018-03-23','最终决定买'),(29,36,'erer','2018-03-01','ere'),(30,13,'12','2018-03-08','12'),(35,13,'12','2018-03-22','12'),(41,15,'12','2018-03-22','12'),(42,14,'12','2018-03-30','12'),(43,24,'12','2018-03-15','12'),(46,44,'23','2018-03-15','23'),(47,31,'23','2018-03-14','23'),(49,31,'2334','2018-03-07','354'),(50,38,'23','2018-03-14','23');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `num` varchar(20) DEFAULT NULL COMMENT '客户编号',
  `name` varchar(20) DEFAULT NULL COMMENT '客户姓名（公司名称',
  `region` varchar(20) DEFAULT NULL COMMENT '客户地区',
  `manager_name` varchar(20) DEFAULT NULL COMMENT '客户经理姓名',
  `level` varchar(30) DEFAULT NULL COMMENT '客户等级',
  `satisfy` varchar(30) DEFAULT NULL COMMENT '客户满意度',
  `credit` varchar(30) DEFAULT NULL COMMENT '客户信用度',
  `address` varchar(500) DEFAULT NULL COMMENT '客户地址',
  `post_code` varchar(50) DEFAULT NULL COMMENT '邮政编码',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `web_site` varchar(20) DEFAULT NULL COMMENT '网址',
  `licence_no` varchar(50) DEFAULT NULL COMMENT '营业执照注册号',
  `legal_person` varchar(20) DEFAULT NULL COMMENT '法人',
  `bankroll` varchar(20) DEFAULT NULL COMMENT '注册资金(万元)',
  `turnover` varchar(20) DEFAULT NULL COMMENT '年营业额',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '开户银行',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '开户帐号',
  `local_tax_no` varchar(50) DEFAULT NULL COMMENT '地税登记号',
  `national_tax_no` varchar(50) DEFAULT NULL COMMENT '国税登记号',
  `status` int(11) DEFAULT NULL COMMENT '客户状态 0 正常  1 客户流失',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`id`,`num`,`name`,`region`,`manager_name`,`level`,`satisfy`,`credit`,`address`,`post_code`,`phone`,`fax`,`web_site`,`licence_no`,`legal_person`,`bankroll`,`turnover`,`bank_name`,`bank_account`,`local_tax_no`,`national_tax_no`,`status`) values (1,'KH21321321','北京大牛科技','北京','小张','战略合作伙伴','☆☆☆','☆☆☆','北京海淀区双榆树东里15号','100027','010-62263393','010-62263393','www.daniu.com','420103000057404','张三','1000','5000','中国银行','6225231243641','4422214321321','4104322332',1),(16,'KH20150526073022','风驰科技','北京','小红','大客户','☆','☆','321','21','321','321','321','321','321','','21','321','321','321','3213',1),(17,'KH20150526073023','巨人科技',NULL,'小丽','普通客户',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(18,'KH20150526073024','新人科技',NULL,NULL,'重点开发客户',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'KH20150526073025','好人集团',NULL,NULL,'合作伙伴',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'KH20150526073026','新浪',NULL,NULL,'大客户',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'KH20150526073027','百度',NULL,NULL,'大客户',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'KH20150729090910','12','南京','小张','战略合作伙伴','☆☆☆☆☆','☆☆☆☆☆','62','22','32','42','52','112','722','122','82','102','92','132','142',1),(29,'KH20150729090913','测试',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);

/*Table structure for table `customer_contact` */

DROP TABLE IF EXISTS `customer_contact`;

CREATE TABLE `customer_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `customer_id` int(11) DEFAULT NULL COMMENT '所属客户id',
  `time` date DEFAULT NULL COMMENT '交往时间',
  `address` varchar(500) DEFAULT NULL COMMENT '交往地点',
  `overview` varchar(100) DEFAULT NULL COMMENT '概要',
  PRIMARY KEY (`id`),
  KEY `FK_customer_contact` (`customer_id`),
  CONSTRAINT `FK_customer_contact` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `customer_contact` */

insert  into `customer_contact`(`id`,`customer_id`,`time`,`address`,`overview`) values (1,1,'2015-05-14','1','2'),(2,1,'2015-05-06','12','22'),(3,1,'2015-08-22','珠江路2','吃饭2');

/*Table structure for table `customer_linkman` */

DROP TABLE IF EXISTS `customer_linkman`;

CREATE TABLE `customer_linkman` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `customer_id` int(11) DEFAULT NULL COMMENT '所属客户',
  `link_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(20) DEFAULT NULL COMMENT '性别',
  `position` varchar(50) DEFAULT NULL COMMENT '职位',
  `office_phone` varchar(50) DEFAULT NULL COMMENT '办公电话',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  KEY `FK_customer_linkman` (`customer_id`),
  CONSTRAINT `FK_customer_linkman` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `customer_linkman` */

insert  into `customer_linkman`(`id`,`customer_id`,`link_name`,`gender`,`position`,`office_phone`,`phone`) values (1,1,'1','男','321','321','21321'),(2,1,'2','女','21','321','321'),(4,1,'3','女','4','5','6'),(5,1,'33','男','44','55','66'),(6,1,'张三','男','经理','21321','32132121'),(7,1,'是','女','发送','2321','321321'),(10,1,'da','女','s','fd','fda');

/*Table structure for table `customer_loss` */

DROP TABLE IF EXISTS `customer_loss`;

CREATE TABLE `customer_loss` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `customer_no` varchar(40) DEFAULT NULL COMMENT '客户编号',
  `customer_name` varchar(20) DEFAULT NULL COMMENT '客户名称',
  `customer_manager` varchar(20) DEFAULT NULL COMMENT '客户经理',
  `last_order_time` date DEFAULT NULL COMMENT '上次下单日期',
  `confirm_loss_time` date DEFAULT NULL COMMENT '确认流失日期',
  `status` int(11) DEFAULT NULL COMMENT '状态 0 暂缓流失 1 确认流失',
  `loss_reason` varchar(1000) DEFAULT NULL COMMENT '流失原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `customer_loss` */

insert  into `customer_loss`(`id`,`customer_no`,`customer_name`,`customer_manager`,`last_order_time`,`confirm_loss_time`,`status`,`loss_reason`) values (9,'KH20150526073022','风驰科技','小红','2014-03-02','2015-08-21',1,'客户公司倒闭！'),(10,'KH20150526073023','巨人科技','小丽','2014-02-03',NULL,0,NULL),(11,'KH20150729090910','12','小张',NULL,NULL,0,NULL),(12,'KH21321321','北京大牛科技','小张','2015-07-01',NULL,NULL,NULL),(13,'KH20150729090910','12','小张',NULL,NULL,NULL,NULL),(14,'KH20150729090913','测试',NULL,'2016-02-03',NULL,NULL,NULL);

/*Table structure for table `customer_loss_measure` */

DROP TABLE IF EXISTS `customer_loss_measure`;

CREATE TABLE `customer_loss_measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `loss_id` int(11) DEFAULT NULL COMMENT '客户流失表id',
  `measure` varchar(500) DEFAULT NULL COMMENT '暂缓措施',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `customer_loss_measure` */

insert  into `customer_loss_measure`(`id`,`loss_id`,`measure`) values (1,9,'ss2'),(3,10,'111'),(4,9,'打电话咨询客户'),(5,9,'请吃饭'),(6,10,'555555644'),(7,10,'777');

/*Table structure for table `customer_order` */

DROP TABLE IF EXISTS `customer_order`;

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `customer_id` int(11) DEFAULT NULL COMMENT '所属客户id',
  `order_no` varchar(40) DEFAULT NULL COMMENT '订单号',
  `order_date` date DEFAULT NULL COMMENT '订购日期',
  `address` varchar(200) DEFAULT NULL COMMENT '送货地址',
  `status` int(11) DEFAULT NULL COMMENT '状态 0 未回款 1 已回款',
  PRIMARY KEY (`id`),
  KEY `FK_customer_order` (`customer_id`),
  CONSTRAINT `FK_customer_order` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `customer_order` */

insert  into `customer_order`(`id`,`customer_id`,`order_no`,`order_date`,`address`,`status`) values (1,1,'DD11213','2015-07-01','11',0),(2,16,'DD11212','2014-03-02','22',1),(3,16,'DD21321','2014-02-02','22',1),(4,17,'DD2121','2014-02-03','ss',1),(5,29,'2323','2014-02-03','23',0),(6,29,'3434','2016-02-03','23',23);

/*Table structure for table `customer_service` */

DROP TABLE IF EXISTS `customer_service`;

CREATE TABLE `customer_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `service_type` varchar(30) DEFAULT NULL COMMENT '服务类型 1,咨询 2，建议 3，投诉',
  `overview` varchar(500) DEFAULT NULL COMMENT '概要',
  `customer` varchar(30) DEFAULT NULL COMMENT '客户',
  `status` varchar(20) DEFAULT NULL COMMENT '1，新创建 2，已分配 3，已处理 4，已归档',
  `service_request` varchar(500) DEFAULT NULL COMMENT '服务请求',
  `create_people` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `assigner` varchar(100) DEFAULT NULL COMMENT '分配人',
  `assign_time` datetime DEFAULT NULL COMMENT '分配日期',
  `service_deal` varchar(500) DEFAULT NULL COMMENT '服务处理描述',
  `service_deal_people` varchar(20) DEFAULT NULL COMMENT '服务处理人',
  `service_deal_time` datetime DEFAULT NULL COMMENT '编号',
  `service_deal_result` varchar(500) DEFAULT NULL COMMENT '编号',
  `satisfy` varchar(50) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `customer_service` */

insert  into `customer_service`(`id`,`service_type`,`overview`,`customer`,`status`,`service_request`,`create_people`,`create_time`,`assigner`,`assign_time`,`service_deal`,`service_deal_people`,`service_deal_time`,`service_deal_result`,`satisfy`) values (1,'咨询','咨询下Think pad价格','大浪技术',NULL,'。。。测试','Jack','2015-06-02 00:00:00','小明','2018-03-23 00:00:00',NULL,NULL,NULL,NULL,NULL),(2,'咨询','321','1','已归档','321','Jack','2015-06-03 00:00:00',NULL,NULL,'sss','Jack','2015-06-04 00:00:00','OK','☆☆☆'),(3,'咨询','21','21','已归档','1','Jack','2015-06-03 00:00:00','小红','2015-06-03 00:00:00','sds','Jack','2015-06-04 00:00:00','OK','☆☆☆☆'),(6,'咨询','321','21','已归档','321','Jack','2015-06-03 00:00:00','小红','2015-06-04 00:00:00','ds','Jack','2015-06-04 00:00:00','OK','☆☆☆'),(7,'咨询','s','222','已归档','ss','Jack','2015-06-04 00:00:00','小明','2015-06-04 00:00:00','ss','Jack','2015-06-04 00:00:00','OK','☆☆'),(8,'建议','4','3','已处理','5','Jack','2015-06-04 00:00:00','小张','2015-06-04 00:00:00','111','Jack','2015-06-04 00:00:00',NULL,NULL),(9,'投诉','2','1','已归档','3','Jack','2015-06-04 00:00:00','小明','2015-06-04 00:00:00','333','Jack','2015-06-04 00:00:00','OK','☆☆☆☆☆'),(10,'建议','32','32','新创建','32','Jack','2015-06-04 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'建议','21','21','已归档','21','Jack','2015-06-04 00:00:00','小明','2015-06-11 00:00:00','fds','Jack','2015-06-11 00:00:00','d','☆☆☆'),(12,'建议','fda','大牛科技',NULL,'fda','Jack','2015-06-09 00:00:00','小红','2015-06-09 00:00:00','fda','小明',NULL,NULL,NULL),(13,'咨询','咨询下Think pad价格。。','大众科技','已归档','发达龙卷风大。。。。','Jack','2015-06-11 00:00:00','小红','2015-06-11 00:00:00','。。。\r\n1，2\r\n，3。。。','Jack','2015-06-11 00:00:00','OK','☆☆☆☆☆'),(14,'咨询','11','sss','新创建','22','Jack','2015-08-24 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'咨询','问下think pad xx型号 多少钱？','大牛科技',NULL,'xxxx.\r\nxxx.\r\nxxxxx\r\n嗯。','Jack','2015-08-25 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'投诉','垃圾电脑，刚用就坏。','牛逼科技','已归档','嘻嘻嘻\r\n范德萨','Jack','2015-08-25 00:00:00','小明','2015-08-27 00:00:00','进行了....客户交流。。。\r\n','Jack','2015-08-31 00:00:00','OK','☆☆☆☆☆'),(17,'投诉','12','11',NULL,'12','java1234','2018-03-22 00:00:00','小明','2018-03-23 00:00:00',NULL,NULL,NULL,NULL,NULL),(18,'投诉','33','33',NULL,'33','java1234','2018-03-21 00:00:00','小明','2018-03-22 00:00:00','给用户更换设备','小张',NULL,NULL,NULL),(19,'投诉','44','44',NULL,'44','java1234','2018-03-28 00:00:00','小明','2018-03-29 00:00:00',NULL,NULL,NULL,NULL,NULL),(20,'投诉','q','qq',NULL,'q','java1234','2018-03-28 00:00:00','小明','2018-03-29 00:00:00',NULL,NULL,NULL,NULL,NULL),(21,'投诉','55','55',NULL,'55','java1234','2018-03-27 00:00:00','小明','2018-03-29 00:00:00',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `data_dic` */

DROP TABLE IF EXISTS `data_dic`;

CREATE TABLE `data_dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `data_dic_name` varchar(50) DEFAULT NULL COMMENT '数据字典名称',
  `data_dic_value` varchar(50) DEFAULT NULL COMMENT '数据字典值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `data_dic` */

insert  into `data_dic`(`id`,`data_dic_name`,`data_dic_value`) values (1,'客户等级','普通客户'),(2,'客户等级','重点开发客户'),(3,'客户等级','大客户'),(4,'客户等级','合作伙伴'),(5,'客户等级','战略合作伙伴'),(6,'服务类型','咨询'),(7,'服务类型','建议'),(8,'服务类型','投诉'),(11,'服务类型','退款'),(13,'55','6655'),(14,'客户等级','66'),(15,'客户等级','一般客户');

/*Table structure for table `order_item` */

DROP TABLE IF EXISTS `order_item`;

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` int(11) DEFAULT NULL COMMENT '所属订单',
  `product_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `product_num` int(11) DEFAULT NULL COMMENT '商品数量',
  `unit` varchar(20) DEFAULT NULL COMMENT '单位',
  `price` float DEFAULT NULL COMMENT '价格',
  `sum` float DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `order_item` */

insert  into `order_item`(`id`,`order_id`,`product_name`,`product_num`,`unit`,`price`,`sum`) values (1,1,'联想笔记本',2,'台',4900,9800),(2,1,'惠普音响',4,'台',200,800),(3,2,'罗技键盘',10,'个',90,900),(4,3,'艾利鼠标',20,'个',20,400),(5,3,'东芝U盘',5,'个',105,525),(6,4,'充电器',1,'个',30,30);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `resource` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`id`,`name`,`resource`) values (1,'客户管理','khgl'),(2,'客户管理：客户信息管理','khgl/customer/index.action'),(3,'客户管理：客户流失管理','khgl/customerLoss/index.action'),(4,'营销管理','yxgl'),(5,'营销管理:营销机会管理','yxgl/saleChance/index.action'),(6,'营销管理:客户开发计划','yxgl/saleChance/cusDevPlan.action'),(7,'统计报表','tjbb'),(8,'权限管理','qxgl'),(9,'权限管理：员工管理','qxgl/user/index.action'),(10,'权限管理：角色管理','qxgl:role/index.action'),(11,'权限管理：权限管理','qxgl/permission/index.action'),(12,'基础数据管理','jcsjgl');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(300) DEFAULT NULL COMMENT '产品名称',
  `model` varchar(150) DEFAULT NULL COMMENT '型号',
  `unit` varchar(60) DEFAULT NULL COMMENT '单位',
  `price` float DEFAULT NULL COMMENT '价格',
  `stock` double DEFAULT NULL COMMENT '库存',
  `remark` varchar(3000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`model`,`unit`,`price`,`stock`,`remark`) values (1,'联想笔记本','Y450','台',4500,120,'好');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sn` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`sn`) values (1,'系统管理员','admin'),(5,'普通用户','normal'),(9,'经理','jingli'),(10,'后勤','houqin');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  KEY `FK_role_permission_1` (`role_id`),
  KEY `FK_role_permission_2` (`permission_id`),
  CONSTRAINT `FK_role_permission_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_role_permission_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_permission` */

insert  into `role_permission`(`role_id`,`permission_id`) values (10,1),(10,2),(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(9,4),(9,5),(9,6),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6);

/*Table structure for table `sale_chance` */

DROP TABLE IF EXISTS `sale_chance`;

CREATE TABLE `sale_chance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `chance_source` varchar(300) DEFAULT NULL COMMENT '机会来源',
  `customer_name` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `success_rate` int(11) DEFAULT NULL COMMENT '成功几率',
  `overview` varchar(300) DEFAULT NULL COMMENT '概要',
  `link_man` varchar(100) DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `description` varchar(1000) DEFAULT NULL COMMENT '机会描述',
  `create_man` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `assign_man` varchar(100) DEFAULT NULL COMMENT '指派人',
  `assign_time` datetime DEFAULT NULL COMMENT '指派时间',
  `status` int(11) DEFAULT NULL COMMENT '分配状态 0 未分配 1 已分配',
  `dev_result` int(11) DEFAULT NULL COMMENT '客户开发状态 0 未开发 1 开发中 2 开发成功 3 开发失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `sale_chance` */

insert  into `sale_chance`(`id`,`chance_source`,`customer_name`,`success_rate`,`overview`,`link_man`,`link_phone`,`description`,`create_man`,`create_time`,`assign_man`,`assign_time`,`status`,`dev_result`) values (1,'主动来找的','风软科技',100,'采购笔记本意向','张先生','137234576543','。。。','Jack','2014-01-01 00:00:00','3','2015-05-24 16:15:00',1,3),(2,'','1',12,'','','','','12',NULL,'3','2015-05-25 11:21:00',1,3),(8,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(9,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(10,NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(11,'','10',1,'','','','','321',NULL,'',NULL,0,0),(12,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(13,'','21',1,'','','','','21',NULL,'小张','2018-03-24 00:00:00',1,2),(14,'2','1',5,'6','3','4','7','8',NULL,'3',NULL,0,3),(15,'213','112',22,'333','5','5','3','221','2012-12-30 00:00:00','小张','2018-03-22 00:00:00',1,3),(16,'22','11',55,'66','33','44','77','88','2013-01-01 11:20:00','4','2013-01-01 11:20:00',1,3),(17,'321','121',1,'321','321','213','321','321','2015-05-22 11:23:00','3',NULL,0,0),(18,'321','321',11,'321','321','213','321','Jack','2015-05-22 11:43:00','',NULL,0,0),(19,'321','213',21,'21','21','321','321','Jack','2015-05-24 11:33:00','3','2015-05-24 11:34:00',1,3),(20,'321','213',100,'321','321','321','321','Jack','2015-05-24 11:35:00','',NULL,0,0),(21,'行业介绍','大鸟爱科技',80,'阿凡达深刻理解','张先生','0231-321321','发达放大空间发大水发大水了发','Jack','2015-06-10 16:32:00','4','2015-06-10 16:33:00',1,3),(22,'同行介绍','鸟人科技',90,'采购IBM服务器意向','张三','2321321321',',...','Jack','2015-06-11 08:35:00','5','2015-06-11 08:36:00',1,2),(23,NULL,'风软科技',NULL,'采购笔记本意向','张先生','137234576543',NULL,'Jack',NULL,NULL,NULL,1,2),(24,NULL,'1',NULL,'','','',NULL,'12',NULL,NULL,NULL,1,2),(25,NULL,'7',NULL,'','','',NULL,'',NULL,NULL,NULL,0,NULL),(31,NULL,'1qqq',NULL,'6','3','4',NULL,'8',NULL,NULL,NULL,1,2),(32,NULL,'112',NULL,'','','',NULL,'221',NULL,NULL,NULL,1,NULL),(33,NULL,'11',NULL,'66','33','44',NULL,'88',NULL,NULL,NULL,1,NULL),(35,'44','44',44,'44','44','44','买房子意愿比较强','java1234','2018-03-23 00:00:00','小红','2018-03-23 00:00:00',1,2),(36,'66','66',66,'66','66','66','66','java1234','2018-03-22 00:00:00','小张','2018-03-23 00:00:00',1,3),(37,'12','12',12,'12','12','12','12','gao','2018-03-23 00:00:00','小红','2018-03-24 00:00:00',1,NULL),(38,'11','11',1,'1','11','1','1','gao','2018-03-24 00:00:00','小张','2018-03-24 00:00:00',1,NULL),(39,'3','3',3,'3','3','3','33','gao','2018-03-24 00:00:00','',NULL,0,NULL),(40,'5','5',5,'','5','','','gao','2018-03-24 00:00:00','',NULL,0,NULL),(41,'34','34',34,'34','34','34','34','gao','2018-03-24 00:00:00','',NULL,0,NULL),(42,'GG','ggg',12,'12','G','12','12','gao','2018-03-24 00:00:00','',NULL,0,NULL),(43,'a','aa',1,'','1','1','1','gao','2018-03-23 00:00:00','小红','2018-03-24 00:00:00',1,2),(44,'33','33',33,'33','33','33','33','java1234','2018-03-27 00:00:00','小张','2018-03-27 00:00:00',1,2),(45,'44','44',44,'44','44','44','44','java1234','2018-03-27 00:00:00','',NULL,0,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `true_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(30) DEFAULT NULL COMMENT '邮件',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名称 系统管理员 销售主管 客户经理 高管',
  `admin` tinyint(1) DEFAULT '0' COMMENT '1：超级管理员 0：普通',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`true_name`,`email`,`phone`,`role_name`,`admin`) values (68,'12','12','小红','khjl02@qq.com','21321','客户经理',1),(69,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(70,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(71,'2111144','321','321321','321@qq.com','321','系统管理员',0),(72,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(73,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(74,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(75,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(76,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(77,'daqian1','123','曹大千','gaoguan@qq.com','5434232',NULL,0),(78,'2111144','321','321321','321@qq.com','321','系统管理员',0),(79,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(80,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(81,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(82,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(83,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(84,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(85,'2111144','321','321321','321@qq.com','321','系统管理员',0),(86,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(87,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(88,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(89,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(90,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(91,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(92,'2111144','321','321321','321@qq.com','321','系统管理员',0),(93,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(94,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(95,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(96,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(97,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(98,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(99,'2111144','321','321321','321@qq.com','321','系统管理员',0),(100,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(101,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(102,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(103,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(104,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(105,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(106,'2111144','321','321321','321@qq.com','321','系统管理员',0),(107,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(108,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(109,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(110,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(111,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(112,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(113,'2111144','321','321321','321@qq.com','321','系统管理员',0),(114,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(115,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(116,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(117,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(118,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(119,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(120,'2111144','321','321321','321@qq.com','321','系统管理员',0),(128,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(129,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(130,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(131,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(132,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(133,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(134,'2111144','321','321321','321@qq.com','321','系统管理员',0),(135,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(136,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(137,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(138,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(139,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(140,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(141,'2111144','321','321321','321@qq.com','321','系统管理员',0),(142,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(143,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(144,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(145,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(146,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(147,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(148,'2111144','321','321321','321@qq.com','321','系统管理员',0),(149,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(150,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(151,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(152,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(153,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(154,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(155,'2111144','321','321321','321@qq.com','321','系统管理员',0),(156,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(157,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(158,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(159,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(160,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(161,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(162,'2111144','321','321321','321@qq.com','321','系统管理员',0),(163,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(164,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(165,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(166,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(167,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(168,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(169,'2111144','321','321321','321@qq.com','321','系统管理员',0),(170,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(171,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(172,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(173,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(174,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(175,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(176,'2111144','321','321321','321@qq.com','321','系统管理员',0),(177,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(178,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(179,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(180,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(181,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(182,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(183,'2111144','321','321321','321@qq.com','321','系统管理员',0),(184,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(185,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(186,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(187,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(188,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(189,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(190,'2111144','321','321321','321@qq.com','321','系统管理员',0),(191,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(192,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(193,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(194,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(195,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(196,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(197,'2111144','321','321321','321@qq.com','321','系统管理员',0),(198,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(199,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(200,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(201,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(202,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(203,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(204,'2111144','321','321321','321@qq.com','321','系统管理员',0),(205,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(206,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(207,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(208,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(209,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(210,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(211,'2111144','321','321321','321@qq.com','321','系统管理员',0),(212,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(213,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(214,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(215,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(216,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(217,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(218,'2111144','321','321321','321@qq.com','321','系统管理员',0),(219,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(220,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(221,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(222,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(223,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(224,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(225,'2111144','321','321321','321@qq.com','321','系统管理员',0),(226,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(227,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(228,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(229,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(230,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(231,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(232,'2111144','321','321321','321@qq.com','321','系统管理员',0),(233,'java1234','333','Jack','java1234@qq.com','123456789555','系统管理员',0),(234,'json1234','123','Json','json@qq.com','232132121','销售主管',0),(235,'xiaoming','123','小明','khjl01@qq.com','2321321','客户经理',0),(236,'xiaohong','123','小红','khjl02@qq.com','21321','客户经理',0),(237,'xiaozhang','123','小张','khjl03@qq.com','3242323','客户经理',0),(238,'daqian','123','曹大千','gaoguan@qq.com','5434232','高管',0),(239,'2111144','321','321321','321@qq.com','321','系统管理员',0),(255,'5','555','55','5@qw.co','5','系统管理员',0),(256,'6','666','6','6@D.C','66','系统管理员',0),(257,'66555','66','66','6@D.C','66','系统管理员',0),(258,'','','','','','系统管理员',0);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FK_user_role_1` (`user_id`),
  KEY `FK_user_role_2` (`role_id`),
  CONSTRAINT `FK_user_role` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_user_role_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values (77,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
