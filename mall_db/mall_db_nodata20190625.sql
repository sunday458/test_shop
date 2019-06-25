/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17-log : Database - mall_db_dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mall_db_dev` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mall_db_dev`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '员工表',
  `dep_id` bigint(16) DEFAULT NULL COMMENT '部门id',
  `position_id` int(11) DEFAULT '0' COMMENT '职位ID',
  `position_name` varchar(64) DEFAULT NULL COMMENT '岗位名称',
  `is_manager` int(1) DEFAULT NULL COMMENT '是否管理者',
  `name` varchar(64) DEFAULT NULL COMMENT '员工姓名',
  `code` varchar(64) DEFAULT NULL COMMENT '员工编号',
  `entry_date` date DEFAULT NULL COMMENT '入职时间',
  `quit_date` date DEFAULT NULL COMMENT '离职时间',
  `education` int(2) DEFAULT NULL COMMENT '学历',
  `specialty` varchar(64) DEFAULT NULL COMMENT '专业',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `id_card` varchar(20) DEFAULT NULL COMMENT '身份证号码',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日日期',
  `sex` int(2) DEFAULT NULL COMMENT '性别',
  `native_place` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `nation` int(2) DEFAULT NULL COMMENT '民族',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `domicile_address` varchar(512) DEFAULT NULL COMMENT '户籍地址',
  `now_living_address` varchar(512) DEFAULT NULL COMMENT '现联系地址',
  `emergency_contact` varchar(64) DEFAULT NULL COMMENT '紧急联系人',
  `emergency_contactphone` varchar(20) DEFAULT NULL COMMENT '紧急联系人电话',
  `introduction` varchar(64) DEFAULT NULL COMMENT '介绍人',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `head` bigint(16) DEFAULT NULL COMMENT '头像',
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '是否离职 0离职/1在职',
  `modifier` bigint(16) DEFAULT NULL,
  `monthly_target` decimal(8,2) DEFAULT NULL COMMENT '销售员工月目标',
  `fan_number` int(16) DEFAULT NULL COMMENT '粉丝数',
  `role_id` varchar(256) DEFAULT ',4,' COMMENT '角色id',
  `yjid` int(11) DEFAULT NULL COMMENT '商城后台ID',
  `login_time` int(11) DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(64) DEFAULT NULL COMMENT '登录IP',
  `company_ownership` int(2) DEFAULT NULL COMMENT '公司归属',
  `contract_ownership` int(2) DEFAULT NULL COMMENT '合同归属',
  `correction_time` date DEFAULT NULL COMMENT '转正时间',
  `quit_type` int(2) DEFAULT NULL COMMENT '离职原因',
  `quit_reason` varchar(255) DEFAULT NULL COMMENT '离职原因',
  `graduate_school` varchar(64) DEFAULT NULL COMMENT '毕业学校',
  `certificate` varchar(255) DEFAULT NULL COMMENT '资格证书',
  `emergency_relationship` varchar(64) DEFAULT NULL COMMENT '与紧急联系人关系',
  `family_phone` varchar(20) DEFAULT NULL COMMENT '家人电话',
  `bank_card_number` varchar(64) DEFAULT NULL COMMENT '银行卡号',
  `bank_card_type` varchar(64) DEFAULT NULL COMMENT '银行卡类型',
  `bank_branch` varchar(64) DEFAULT NULL COMMENT '支行',
  `id_address` varchar(255) DEFAULT NULL COMMENT '身份证地址',
  `fixed_begin_time` int(11) DEFAULT NULL COMMENT '固定限期开始时间',
  `fixed_end_time` int(11) DEFAULT NULL COMMENT '固定限期结束时间',
  `distributor_num` int(10) DEFAULT '0' COMMENT '经销商数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `depID` (`dep_id`),
  KEY `name` (`name`),
  KEY `pname` (`position_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3287 DEFAULT CHARSET=utf8 COMMENT='员工表';

/*Table structure for table `mall_activity_invitation_tbl` */

DROP TABLE IF EXISTS `mall_activity_invitation_tbl`;

CREATE TABLE `mall_activity_invitation_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) NOT NULL COMMENT '活动类型',
  `m_id` int(11) NOT NULL COMMENT '发起人会员ID',
  `c_id` int(11) DEFAULT NULL COMMENT '发起人CRM会员ID',
  `invited_m_id` int(11) NOT NULL COMMENT '被邀请注册新会员ID',
  `url_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动链接ID',
  `title` varchar(120) DEFAULT NULL COMMENT '活动名称',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_activity_tbl` */

DROP TABLE IF EXISTS `mall_activity_tbl`;

CREATE TABLE `mall_activity_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `c_id` int(11) NOT NULL DEFAULT '0' COMMENT 'CRM客户ID',
  `c_code` varchar(64) DEFAULT '' COMMENT 'CRM客户code',
  `e_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'CRM销售ID',
  `wechat_id` int(11) NOT NULL COMMENT '客服微信ID(监控系统)',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '活动链接',
  `act_url` varchar(255) NOT NULL DEFAULT '' COMMENT '邀请链接',
  `type` int(10) NOT NULL COMMENT '活动类型',
  `url_key` char(20) NOT NULL COMMENT '加密KEY',
  `title` varchar(120) DEFAULT NULL COMMENT '活动名称',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `url_key` (`url_key`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_activity_visit_log_tbl` */

DROP TABLE IF EXISTS `mall_activity_visit_log_tbl`;

CREATE TABLE `mall_activity_visit_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_id` int(10) NOT NULL COMMENT '活动类型',
  `ip` varchar(20) NOT NULL,
  `session_id` varchar(120) NOT NULL,
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `url_id` (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_advert_channel_tbl` */

DROP TABLE IF EXISTS `mall_advert_channel_tbl`;

CREATE TABLE `mall_advert_channel_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '渠道名',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1显示 2不显示',
  `op_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='投放渠道表';

/*Table structure for table `mall_advert_feedback_log_tbl` */

DROP TABLE IF EXISTS `mall_advert_feedback_log_tbl`;

CREATE TABLE `mall_advert_feedback_log_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '客户手机号',
  `client_name` varchar(100) NOT NULL DEFAULT '' COMMENT '客户名称',
  `channel_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投放渠道ID',
  `mobile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投放手机id',
  `employee_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '分配的销售人员手机',
  `employee_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售人员ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发送状态，--0 未知 --1 发送短信 --2 已存在该客户号码记录，不发送短信 --3 达到销售每天推送消息记录8条，不发送短信',
  `handle_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '处理状态，--0 未处理 --1 已处理',
  `handle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '处理时间',
  `operator_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '处理人ID',
  `object_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '所属项目id',
  `weixin` varchar(255) NOT NULL DEFAULT '' COMMENT '客户微信',
  `qq` varchar(255) NOT NULL DEFAULT '' COMMENT '客户qq',
  `address` text COMMENT '地址',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `is_bill` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否订单',
  `detail` text COMMENT '其他',
  `create_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12785 DEFAULT CHARSET=utf8 COMMENT='广告投放反馈记录表';

/*Table structure for table `mall_advert_mobile_tbl` */

DROP TABLE IF EXISTS `mall_advert_mobile_tbl`;

CREATE TABLE `mall_advert_mobile_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL COMMENT '员工ID',
  `mobile` char(20) NOT NULL COMMENT '手机号',
  `object_id` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '所属项目id',
  `send_num` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '发送次数',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1有效2无效',
  `op_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  KEY `emp_id` (`emp_id`),
  KEY `status` (`status`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=803 DEFAULT CHARSET=utf8 COMMENT='销售电话表';

/*Table structure for table `mall_api_error_tbl` */

DROP TABLE IF EXISTS `mall_api_error_tbl`;

CREATE TABLE `mall_api_error_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL DEFAULT '' COMMENT '请求接口地址',
  `type_id` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '错误类型，--0 未知 --1 接口签名错误 --2 redis消息入队失败 --3 redis消费消息出错',
  `param` text COMMENT '请求参数',
  `result` varchar(500) NOT NULL DEFAULT '' COMMENT '返回结果',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '错误说明',
  `create_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2536 DEFAULT CHARSET=utf8 COMMENT='接口错误表';

/*Table structure for table `mall_carousel_map_tbl` */

DROP TABLE IF EXISTS `mall_carousel_map_tbl`;

CREATE TABLE `mall_carousel_map_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '海报轮播图',
  `img_url` varchar(255) NOT NULL COMMENT '图片地址',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_user` smallint(6) NOT NULL COMMENT '添加人',
  `sort` smallint(6) NOT NULL DEFAULT '100' COMMENT '排序，大到小',
  `is_show` tinyint(1) NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `carousel_region` varchar(20) NOT NULL DEFAULT '0' COMMENT '轮播区域id',
  `link_address` varchar(255) DEFAULT NULL COMMENT '跳转链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_cms_tbl` */

DROP TABLE IF EXISTS `mall_cms_tbl`;

CREATE TABLE `mall_cms_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类别id',
  `url_detail` text COMMENT '跳转url地址',
  `images` text COMMENT '封面图',
  `small_titles` varchar(50) NOT NULL,
  `titles` varchar(250) NOT NULL COMMENT '标题',
  `content_abstract` text COMMENT '内容简介',
  `content` text COMMENT '内容',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0 删除 1有效',
  `tags` varchar(250) DEFAULT NULL COMMENT '标签',
  `from_url` text NOT NULL COMMENT '来源url',
  `source` varchar(50) DEFAULT NULL COMMENT '来源',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `editor` varchar(50) DEFAULT NULL COMMENT '编辑人员',
  `article_time` varchar(20) NOT NULL COMMENT '文章时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `add_user` int(10) unsigned NOT NULL COMMENT '添加人',
  `praise_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞总数',
  `update_time` int(10) DEFAULT NULL COMMENT '编辑时间',
  `other_detail` text COMMENT '其他属性',
  `read_num` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推送 1：是 0： 否',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

/*Table structure for table `mall_cms_type_tbl` */

DROP TABLE IF EXISTS `mall_cms_type_tbl`;

CREATE TABLE `mall_cms_type_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `is_show` tinyint(4) DEFAULT '1' COMMENT '前台是否显示 1显示，2不显示',
  `parents_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `flag` tinyint(4) unsigned DEFAULT '1' COMMENT '状态 1正常 2删除 3隐藏',
  `step` int(4) unsigned NOT NULL DEFAULT '999' COMMENT '排序',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '操作人',
  PRIMARY KEY (`id`),
  KEY `parents_id` (`parents_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk COMMENT='商品类型';

/*Table structure for table `mall_com_user_agent` */

DROP TABLE IF EXISTS `mall_com_user_agent`;

CREATE TABLE `mall_com_user_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) NOT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `visit_url` varchar(255) NOT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `user_agent` varchar(255) NOT NULL COMMENT 'user_agent',
  `request` blob NOT NULL COMMENT '页面传参',
  `brower` char(20) NOT NULL COMMENT '浏览器',
  `brower_type` tinyint(4) NOT NULL COMMENT '浏览器类型',
  `system` char(20) NOT NULL COMMENT '操作系统',
  `system_type` tinyint(4) NOT NULL COMMENT '操作系统类型',
  `country` varchar(20) NOT NULL COMMENT '国家',
  `area` varchar(120) NOT NULL DEFAULT '',
  `region` varchar(120) NOT NULL COMMENT '省',
  `city` varchar(120) NOT NULL COMMENT '市',
  `county` varchar(120) NOT NULL COMMENT '区',
  `isp` varchar(20) NOT NULL COMMENT '网络代理商',
  `country_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL DEFAULT '0',
  `region_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `county_id` int(11) NOT NULL,
  `isp_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL DEFAULT '',
  `detail` text,
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=12688 DEFAULT CHARSET=utf8 COMMENT='用户UA信息表';

/*Table structure for table `mall_com_user_agent_1904_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1904_tbl`;

CREATE TABLE `mall_com_user_agent_1904_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1905_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1905_tbl`;

CREATE TABLE `mall_com_user_agent_1905_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1906_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1906_tbl`;

CREATE TABLE `mall_com_user_agent_1906_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1907_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1907_tbl`;

CREATE TABLE `mall_com_user_agent_1907_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1908_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1908_tbl`;

CREATE TABLE `mall_com_user_agent_1908_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1909_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1909_tbl`;

CREATE TABLE `mall_com_user_agent_1909_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1910_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1910_tbl`;

CREATE TABLE `mall_com_user_agent_1910_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1911_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1911_tbl`;

CREATE TABLE `mall_com_user_agent_1911_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_1912_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_1912_tbl`;

CREATE TABLE `mall_com_user_agent_1912_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_keyword_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_keyword_tbl`;

CREATE TABLE `mall_com_user_agent_keyword_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(250) DEFAULT NULL,
  `keyword_md5` varchar(64) DEFAULT NULL,
  `url_id` int(10) DEFAULT '0',
  `num` int(10) DEFAULT '1' COMMENT '次数',
  `cp` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_md5` (`keyword_md5`,`url_id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_tbl`;

CREATE TABLE `mall_com_user_agent_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(2) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(255) DEFAULT '',
  `detail` text,
  `user_id` int(10) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`),
  KEY `keywords_id` (`keywords_id`),
  KEY `wx_name_id` (`wx_name_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=365754 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_tbl_copy` */

DROP TABLE IF EXISTS `mall_com_user_agent_tbl_copy`;

CREATE TABLE `mall_com_user_agent_tbl_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `referer_url` text COMMENT '来源页',
  `ac_type` tinyint(4) DEFAULT '1',
  `url_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问页面id',
  `visit_url` varchar(255) DEFAULT NULL COMMENT '访问页面',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `keywords_id` int(10) DEFAULT '0' COMMENT '关键字id',
  `wx_name` varchar(50) DEFAULT NULL,
  `wx_name_id` int(10) DEFAULT '0',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'user_agent',
  `request` blob COMMENT '页面传参',
  `session_id` varchar(50) DEFAULT '',
  `user_id` int(10) DEFAULT '0',
  `detail` text,
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `url_id` (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1786 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_url_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_url_tbl`;

CREATE TABLE `mall_com_user_agent_url_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text COMMENT 'url地址',
  `url_md5` varchar(64) DEFAULT NULL COMMENT 'urlmd5',
  `host` varchar(255) NOT NULL DEFAULT '' COMMENT '域名',
  `host_md5` varchar(64) DEFAULT '' COMMENT '域名md5',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `pv` int(10) unsigned NOT NULL DEFAULT '0',
  `uv` int(10) unsigned NOT NULL DEFAULT '0',
  `cp` int(10) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_md5` (`url_md5`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=606 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_url_tbl_20160614` */

DROP TABLE IF EXISTS `mall_com_user_agent_url_tbl_20160614`;

CREATE TABLE `mall_com_user_agent_url_tbl_20160614` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text COMMENT 'url地址',
  `url_md5` varchar(64) DEFAULT NULL COMMENT 'urlmd5',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `pv` int(10) unsigned NOT NULL DEFAULT '0',
  `uv` int(10) unsigned NOT NULL DEFAULT '0',
  `cp` int(10) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_md5` (`url_md5`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=605 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_user_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_user_tbl`;

CREATE TABLE `mall_com_user_agent_user_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(250) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `url_id` int(10) DEFAULT '0',
  `visit_url` text,
  `referer_url` text,
  `ip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `isp` varchar(50) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `brower` varchar(50) DEFAULT NULL,
  `brower_type` tinyint(2) DEFAULT '1',
  `system` varchar(50) DEFAULT NULL,
  `system_type` tinyint(2) DEFAULT '1',
  `num` int(10) DEFAULT '1' COMMENT '次数',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_md5` (`session`,`url_id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_com_user_agent_wxname_tbl` */

DROP TABLE IF EXISTS `mall_com_user_agent_wxname_tbl`;

CREATE TABLE `mall_com_user_agent_wxname_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `name_md5` varchar(64) DEFAULT NULL,
  `url_id` int(10) DEFAULT '0',
  `num_send` int(10) DEFAULT '1',
  `num` int(10) DEFAULT '1' COMMENT '次数',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_md5` (`name_md5`,`url_id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_coupon_card_examine_tbl` */

DROP TABLE IF EXISTS `mall_coupon_card_examine_tbl`;

CREATE TABLE `mall_coupon_card_examine_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL COMMENT '客户CRMid',
  `card_id` int(11) NOT NULL COMMENT '优惠券ID',
  `card_status` tinyint(4) NOT NULL COMMENT '状态 1通过 2审核 3退回',
  `code_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'code码id',
  `e_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '申请人id',
  `remark` varchar(255) DEFAULT NULL COMMENT '申请人备注',
  `op_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `op_remark` varchar(255) DEFAULT NULL COMMENT '操作人备注',
  `op_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '审核时间',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `c_id` (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='会员充值记录表';

/*Table structure for table `mall_coupon_card_tbl` */

DROP TABLE IF EXISTS `mall_coupon_card_tbl`;

CREATE TABLE `mall_coupon_card_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titles` varchar(50) NOT NULL COMMENT '优惠券名称',
  `price` decimal(12,2) NOT NULL COMMENT '优惠金额',
  `time_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '时间类型 1有效期 2固定使用时间',
  `type_id` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '类型 1商城,2crm',
  `use_num` int(11) NOT NULL DEFAULT '1' COMMENT '使用次数',
  `code_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '派送次数',
  `img_url` varchar(255) NOT NULL COMMENT '展示图',
  `start_time` int(11) NOT NULL COMMENT '使用开始时间',
  `end_time` int(11) NOT NULL COMMENT '使用结束时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1有效|上架 2无效|下架',
  `op_id` int(11) NOT NULL COMMENT '添加人',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000001 DEFAULT CHARSET=utf8 COMMENT='优惠券主表';

/*Table structure for table `mall_courier_bill_log` */

DROP TABLE IF EXISTS `mall_courier_bill_log`;

CREATE TABLE `mall_courier_bill_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bill_id` bigint(20) unsigned NOT NULL COMMENT '订单ID',
  `company_code` varchar(100) NOT NULL DEFAULT '' COMMENT '快递公司编码',
  `courier_no` varchar(100) NOT NULL DEFAULT '' COMMENT '快递单号',
  `waybill_process` text NOT NULL COMMENT '快递进度',
  `waybill_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '快递状态，0在途中、1已揽收、2疑难、3已签收、4退签、5同城派送中、6退回、7转单',
  `sign_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签收时间',
  `log` tinytext COMMENT '最后一次详情记录',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '信息更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_crm_goods_category_tbl` */

DROP TABLE IF EXISTS `mall_crm_goods_category_tbl`;

CREATE TABLE `mall_crm_goods_category_tbl` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品类别表',
  `name` varchar(90) DEFAULT NULL COMMENT '类别名称',
  `parent_id` smallint(5) unsigned DEFAULT '0' COMMENT '上级类别',
  `parent_id_path` varchar(128) DEFAULT '' COMMENT '族谱',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `sort_order` tinyint(4) unsigned DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门分类',
  `is_show` int(5) DEFAULT '1' COMMENT '排序',
  `flag` int(1) unsigned DEFAULT '1' COMMENT '是否删除',
  `detail` longtext COMMENT '类型属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品分类表';

/*Table structure for table `mall_crm_goods_tbl` */

DROP TABLE IF EXISTS `mall_crm_goods_tbl`;

CREATE TABLE `mall_crm_goods_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `crm_goods_id` int(10) unsigned NOT NULL COMMENT 'crm商品id',
  `crm_goods_code` varchar(50) DEFAULT NULL COMMENT 'crm商品编码',
  `titles` varchar(250) NOT NULL COMMENT '产品名称',
  `keyword` varchar(250) DEFAULT NULL COMMENT '关键字',
  `tags` varchar(250) NOT NULL COMMENT '后台标签,逗号分开',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型ID',
  `prices` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '官网价格',
  `sale_prices` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '销售价格',
  `unit` varchar(20) NOT NULL COMMENT '单位',
  `detail_list` varchar(255) DEFAULT NULL COMMENT '商品属性id列表',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0删除 1有效',
  `is_show` tinyint(4) unsigned NOT NULL DEFAULT '2' COMMENT '1上架,2下架',
  `images` varchar(250) NOT NULL COMMENT '商品展示图片',
  `introduction` longtext NOT NULL COMMENT '简介',
  `content` longtext NOT NULL COMMENT '图文介绍',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_user` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加人',
  `is_recom` tinyint(1) NOT NULL DEFAULT '2' COMMENT '是否推荐 2：不推荐 1：推荐',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `real_stock` int(11) NOT NULL DEFAULT '0' COMMENT '剩余库存',
  `detail` longtext COMMENT '其他属性序列化',
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_goods_id` (`crm_goods_id`),
  KEY `type_id` (`cat_id`),
  KEY `is_show` (`is_show`),
  KEY `status` (`status`),
  KEY `add_time` (`add_time`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `mall_crm_order_tbl` */

DROP TABLE IF EXISTS `mall_crm_order_tbl`;

CREATE TABLE `mall_crm_order_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL COMMENT 'crm订单id',
  `order_code` varchar(100) NOT NULL DEFAULT '' COMMENT 'crm订单code',
  `c_id` int(10) unsigned NOT NULL COMMENT 'crm客户id',
  `re_c_id` int(10) unsigned NOT NULL COMMENT '经销商id',
  `c_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'crm客户名称',
  `status` tinyint(4) NOT NULL COMMENT '订单状态',
  `total` decimal(10,2) NOT NULL COMMENT '总金额',
  `prices` decimal(10,2) unsigned NOT NULL COMMENT '订单金额',
  `discount` decimal(10,0) NOT NULL COMMENT '减免金额',
  `is_commission` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否提成,1已提成,0未提成',
  `is_after` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否产生售后单',
  `after_prices` decimal(10,2) NOT NULL DEFAULT '-1.00' COMMENT '是售后单的话提成的金额',
  `add_time` int(10) unsigned NOT NULL COMMENT '订单添加时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '订单更新时间',
  PRIMARY KEY (`id`,`order_id`),
  KEY `is_after` (`is_after`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_customer_recharge_bat_tbl` */

DROP TABLE IF EXISTS `mall_customer_recharge_bat_tbl`;

CREATE TABLE `mall_customer_recharge_bat_tbl` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL COMMENT '客户编号',
  `c_code` varchar(120) NOT NULL,
  `c_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `c_given_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `c_n_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '非业绩金额',
  `c_using_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '使用金额',
  `order_id` int(11) DEFAULT '0' COMMENT '订单ID',
  `pay_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1充值2订单消费3退回4退回返值101充值通过102充值退回',
  `type_id` tinyint(4) NOT NULL COMMENT '支付方式',
  `grade_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '充值档次',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `flow_number` varchar(120) DEFAULT NULL COMMENT '流水号',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `action_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `dep_id` int(11) DEFAULT '0' COMMENT '部门ID',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `del_op_id` int(11) NOT NULL DEFAULT '0' COMMENT '删除人ID',
  `del_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员充值记录表';

/*Table structure for table `mall_customer_recharge_examine_tbl` */

DROP TABLE IF EXISTS `mall_customer_recharge_examine_tbl`;

CREATE TABLE `mall_customer_recharge_examine_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `re_id` int(11) NOT NULL COMMENT '充值记录ID',
  `pay_status` tinyint(4) NOT NULL COMMENT '状态',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `add_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `c_id` (`re_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8 COMMENT='会员充值记录表';

/*Table structure for table `mall_customer_recharge_grade_tbl` */

DROP TABLE IF EXISTS `mall_customer_recharge_grade_tbl`;

CREATE TABLE `mall_customer_recharge_grade_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL COMMENT '活动名称',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `min_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '本金',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1有效 0无效',
  `sort` tinyint(4) NOT NULL DEFAULT '1' COMMENT '排序 从小到大',
  `discount` float NOT NULL DEFAULT '1' COMMENT '折扣',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `c_id` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员充值记录表';

/*Table structure for table `mall_customer_recharge_tbl` */

DROP TABLE IF EXISTS `mall_customer_recharge_tbl`;

CREATE TABLE `mall_customer_recharge_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL COMMENT '客户编号',
  `c_code` varchar(120) NOT NULL,
  `c_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `c_n_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '非业绩余额',
  `c_given_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `c_using_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '使用金额',
  `order_id` int(11) DEFAULT '0' COMMENT '订单ID',
  `pay_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1充值2订单消费3退回4退回返值101充值通过102充值退回',
  `type_id` tinyint(4) NOT NULL COMMENT '支付方式',
  `grade_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '充值档次',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `flow_number` varchar(120) DEFAULT NULL COMMENT '流水号',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `action_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `dep_id` int(11) NOT NULL DEFAULT '0' COMMENT '销售部门ID',
  `wx_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '销售微信id',
  `orders_pay_id` int(11) DEFAULT '0' COMMENT 'CRM支付表ID',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8130 DEFAULT CHARSET=utf8 COMMENT='会员充值记录表';

/*Table structure for table `mall_customer_tbl` */

DROP TABLE IF EXISTS `mall_customer_tbl`;

CREATE TABLE `mall_customer_tbl` (
  `id` bigint(16) NOT NULL COMMENT '客户表',
  `name` varchar(64) DEFAULT NULL COMMENT '客户姓名',
  `code` varchar(64) DEFAULT NULL COMMENT '客户编号',
  `province` varchar(16) DEFAULT NULL COMMENT '省',
  `city` varchar(16) DEFAULT NULL COMMENT '市',
  `county` varchar(16) DEFAULT NULL COMMENT '区',
  `street` varchar(200) DEFAULT NULL COMMENT '街道',
  `phone_first` varchar(20) DEFAULT NULL COMMENT '联系电话1',
  `phone_second` varchar(20) DEFAULT NULL COMMENT '联系电话2',
  `phone_third` varchar(20) DEFAULT NULL COMMENT '联系电话3',
  `source` int(2) DEFAULT NULL COMMENT '客户来源',
  `udate` datetime DEFAULT NULL,
  `is_associated` tinyint(2) DEFAULT '0' COMMENT '是否关联到user表,0没有,1有',
  `is_dealers` tinyint(2) DEFAULT '0' COMMENT '是否经销商 0否 1是',
  `re_c_id` int(10) DEFAULT '0' COMMENT '经销商id',
  `bill_finish_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已完成的订单数',
  `bill_prices` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总金额',
  `m_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `m_n_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '业绩不折扣金额',
  `m_n_all_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '业绩不折扣总充值业绩',
  `m_given_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `m_using_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '已使用金额',
  `discount` decimal(12,2) NOT NULL DEFAULT '1.00' COMMENT '折扣',
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `phone_first` (`phone_first`),
  KEY `phone_second` (`phone_second`),
  KEY `phone_third` (`phone_third`),
  KEY `province` (`province`,`city`,`county`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户表';

/*Table structure for table `mall_distributor_assignment_tbl` */

DROP TABLE IF EXISTS `mall_distributor_assignment_tbl`;

CREATE TABLE `mall_distributor_assignment_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_id` int(11) NOT NULL COMMENT '经销商ID = 客户ID',
  `e_id` int(11) NOT NULL COMMENT '原本所属员工ID',
  `dep_id` int(11) NOT NULL COMMENT '原本所属员工部门ID',
  `new_e_id` int(11) NOT NULL COMMENT '新所属员工ID',
  `new_dep_id` int(11) NOT NULL COMMENT '新所属员工部门ID',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '转让类型1转资料 2转资料和业绩',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `params` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='经销商转让记录表';

/*Table structure for table `mall_distributor_edit_log_tbl` */

DROP TABLE IF EXISTS `mall_distributor_edit_log_tbl`;

CREATE TABLE `mall_distributor_edit_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_id` int(11) NOT NULL COMMENT '经销商ID = 客户ID',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1新增 2编辑 3重新提交 0异常',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `dep_id` int(11) NOT NULL COMMENT '操作人部门ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_examine_edit_log_tbl` */

DROP TABLE IF EXISTS `mall_distributor_examine_edit_log_tbl`;

CREATE TABLE `mall_distributor_examine_edit_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ex_id` int(11) NOT NULL COMMENT '审核表主键ID',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1新增 2编辑  0异常',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `dep_id` int(11) NOT NULL COMMENT '操作人部门ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `c_id` (`ex_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_examine_log_tbl` */

DROP TABLE IF EXISTS `mall_distributor_examine_log_tbl`;

CREATE TABLE `mall_distributor_examine_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ex_id` int(11) NOT NULL COMMENT '审核表ID',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1通过 2一级审核 3二级审核',
  `examine_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0无操作 1正常 2一审不过 3 二审不过',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_examine_tbl` */

DROP TABLE IF EXISTS `mall_distributor_examine_tbl`;

CREATE TABLE `mall_distributor_examine_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_id` int(11) NOT NULL COMMENT '经销商ID',
  `binding_c_id` int(11) NOT NULL COMMENT '绑定客户ID',
  `img_url` blob NOT NULL COMMENT '上传图片路径',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1通过 2一级审核 3二级审核',
  `examine_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0无操作 1正常 2一审不过 3 二审不过',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='经销商审核记录表';

/*Table structure for table `mall_distributor_info_log_tbl` */

DROP TABLE IF EXISTS `mall_distributor_info_log_tbl`;

CREATE TABLE `mall_distributor_info_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_id` int(11) NOT NULL COMMENT '经销商ID = 客户ID',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态  1审核中 2通过 3不通过',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `dep_id` int(11) NOT NULL COMMENT '部门id',
  `remark` varchar(250) DEFAULT NULL COMMENT '备注',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `param` blob,
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_info_regist_tbl` */

DROP TABLE IF EXISTS `mall_distributor_info_regist_tbl`;

CREATE TABLE `mall_distributor_info_regist_tbl` (
  `c_id` int(10) unsigned NOT NULL COMMENT '经销商id',
  `base_info` text COMMENT '基本信息',
  `skin_diagnose` text COMMENT '皮肤诊断',
  `life_record` text COMMENT '生活记录',
  `product_usage` text COMMENT '产品使用情况',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_info_tbl` */

DROP TABLE IF EXISTS `mall_distributor_info_tbl`;

CREATE TABLE `mall_distributor_info_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_id` int(11) NOT NULL COMMENT '经销商ID = 客户ID',
  `m_id` int(11) NOT NULL COMMENT '会员ID',
  `user_info` blob NOT NULL COMMENT '用户资料-序列化',
  `bank_name` varchar(200) NOT NULL COMMENT '银行名称',
  `bank_add` varchar(200) NOT NULL COMMENT '开户行',
  `bank_id` varchar(50) NOT NULL COMMENT '卡号',
  `bank_username` varchar(50) NOT NULL COMMENT '户名',
  `alipay_number` varchar(120) NOT NULL COMMENT '支付宝账号',
  `id_number` varchar(20) NOT NULL COMMENT '身份证号',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1审核中 2通过 3不通过',
  `is_agree` tinyint(2) NOT NULL DEFAULT '1' COMMENT '是否同意条款 1是 0否',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `pass_time` int(11) DEFAULT NULL COMMENT '通过时间',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_log_tbl` */

DROP TABLE IF EXISTS `mall_distributor_log_tbl`;

CREATE TABLE `mall_distributor_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_id` int(11) NOT NULL COMMENT '经销商ID = 客户ID',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态  1审核中 2通过 3不通过 4取消',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `dep_id` int(11) NOT NULL COMMENT '操作人部门ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_product_use_skin_effect_interflow_tbl` */

DROP TABLE IF EXISTS `mall_distributor_product_use_skin_effect_interflow_tbl`;

CREATE TABLE `mall_distributor_product_use_skin_effect_interflow_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL DEFAULT '0' COMMENT '经销商ID',
  `interflow_info` text NOT NULL COMMENT '沟通记录',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_user` int(11) NOT NULL DEFAULT '0' COMMENT '添加人(员工表)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_distributor_tbl` */

DROP TABLE IF EXISTS `mall_distributor_tbl`;

CREATE TABLE `mall_distributor_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_id` int(11) NOT NULL COMMENT '经销商ID = 客户ID',
  `alipay_number` varchar(120) NOT NULL COMMENT '支付宝账号',
  `wechat_number` varchar(120) NOT NULL COMMENT '微信账号',
  `bank_name` varchar(200) DEFAULT NULL COMMENT '银行名称',
  `bank_add` varchar(200) DEFAULT NULL COMMENT '开户行',
  `bank_id` varchar(50) DEFAULT NULL COMMENT '卡号',
  `bank_username` varchar(50) DEFAULT NULL COMMENT '户名',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态  1审核中 2通过 3不通过 4取消',
  `e_id` int(11) NOT NULL COMMENT '员工ID',
  `o_e_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '旧员工id',
  `dep_id` int(11) NOT NULL COMMENT '部门ID',
  `o_dep_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '旧部门id',
  `op_id` int(11) NOT NULL COMMENT '操作人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `pass_time` int(11) DEFAULT NULL COMMENT '审批通过时间',
  `cus_num` int(10) unsigned DEFAULT '0' COMMENT '绑定客户数量',
  `change_emp_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '改变销售时间',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_exchange_code_tbl` */

DROP TABLE IF EXISTS `mall_exchange_code_tbl`;

CREATE TABLE `mall_exchange_code_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL COMMENT '兑换码',
  `type_id` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '兑换码类型 1.积分兑换 2.签到兑换 3.生日兑换 100.优惠卷',
  `exchange_opp_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑换机会id',
  `goods_id` int(10) unsigned DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '兑换码状态 1 未使用 2 已使用 3 已过期',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `order_phone` varchar(20) NOT NULL DEFAULT '0' COMMENT '下单用户号码',
  `use_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `order_sn` varchar(30) NOT NULL DEFAULT '0' COMMENT '订单号',
  `note` text COMMENT '备注',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `op_id` int(10) DEFAULT '0' COMMENT '管理员id',
  PRIMARY KEY (`id`),
  KEY `order_sn` (`order_sn`),
  KEY `code` (`code`),
  KEY `user_id` (`user_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2523 DEFAULT CHARSET=utf8 COMMENT='兑换表';

/*Table structure for table `mall_exchange_opp_tbl` */

DROP TABLE IF EXISTS `mall_exchange_opp_tbl`;

CREATE TABLE `mall_exchange_opp_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `type_id` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '兑换机会类型 1.签到 2生日',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态,1没兑换 2已经兑换 3失败',
  `validity_time` int(10) unsigned NOT NULL COMMENT '有效期',
  `ex_time` int(10) unsigned DEFAULT NULL COMMENT '兑换时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '获取机会时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`type_id`,`status`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='兑换机会表';

/*Table structure for table `mall_goods_stock_log_tbl` */

DROP TABLE IF EXISTS `mall_goods_stock_log_tbl`;

CREATE TABLE `mall_goods_stock_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `stock_num` int(11) NOT NULL DEFAULT '0' COMMENT '实际库存',
  `remark` varchar(100) DEFAULT NULL,
  `op_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人',
  `add_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:新增，2：兑换，3：使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_goods_tbl` */

DROP TABLE IF EXISTS `mall_goods_tbl`;

CREATE TABLE `mall_goods_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titles` varchar(250) NOT NULL COMMENT '产品名称',
  `keyword` varchar(250) DEFAULT NULL COMMENT '关键字',
  `tags` varchar(250) NOT NULL COMMENT '后台标签,逗号分开',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型ID',
  `prices` decimal(12,2) DEFAULT '0.00' COMMENT '价格',
  `get_type` varchar(20) DEFAULT NULL COMMENT '商品获取方式 1.积分兑换 2.签到兑换 3.生日兑换 允许多种方式 用,号分割',
  `integral` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分兑换数',
  `unit` varchar(20) NOT NULL COMMENT '单位',
  `detail_list` varchar(255) DEFAULT NULL COMMENT '商品属性id列表',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0删除 1有效',
  `is_show` tinyint(4) unsigned NOT NULL DEFAULT '2' COMMENT '1上架,2下架',
  `images` varchar(250) NOT NULL COMMENT '商品展示图片',
  `introduction` longtext NOT NULL COMMENT '简介',
  `content` longtext NOT NULL COMMENT '图文介绍',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_user` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加人',
  `is_recom` tinyint(1) NOT NULL DEFAULT '2' COMMENT '是否推荐 2：不推荐 1：推荐',
  `goods_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：实物商品，2：优惠券',
  `recom_index` tinyint(2) NOT NULL DEFAULT '10',
  `use_person` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `real_stock` int(11) NOT NULL DEFAULT '0' COMMENT '剩余库存',
  `exchange_num` int(11) NOT NULL DEFAULT '0' COMMENT '兑换数',
  `use_num` int(11) NOT NULL DEFAULT '0' COMMENT '使用数',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `is_show` (`is_show`),
  KEY `status` (`status`),
  KEY `add_time` (`add_time`),
  KEY `get_type` (`get_type`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;

/*Table structure for table `mall_goods_type_tbl` */

DROP TABLE IF EXISTS `mall_goods_type_tbl`;

CREATE TABLE `mall_goods_type_tbl` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '产品类别表',
  `name` varchar(20) DEFAULT NULL COMMENT '类别名称',
  `parent` bigint(16) DEFAULT NULL COMMENT '上级类别',
  `show_index` int(5) DEFAULT NULL COMMENT '排序',
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `modifier` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='产品分类表';

/*Table structure for table `mall_h5_answer_detail2_tbl` */

DROP TABLE IF EXISTS `mall_h5_answer_detail2_tbl`;

CREATE TABLE `mall_h5_answer_detail2_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '答题者ID',
  `p_user_id` int(11) DEFAULT '0' COMMENT '分享者ID',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '答题时间',
  `meditation` int(11) DEFAULT '0' COMMENT '默契度',
  `answer_detail` text NOT NULL COMMENT '答题详情',
  `match_res` tinyint(4) DEFAULT '0' COMMENT '匹配结果',
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_h5_answer_detail_tbl` */

DROP TABLE IF EXISTS `mall_h5_answer_detail_tbl`;

CREATE TABLE `mall_h5_answer_detail_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '答题者ID',
  `p_user_id` int(11) DEFAULT '0' COMMENT '分享者ID',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '答题时间',
  `meditation` int(11) DEFAULT '0' COMMENT '默契度',
  `answer_detail` text NOT NULL COMMENT '答题详情',
  `match_res` tinyint(4) DEFAULT '0' COMMENT '匹配结果',
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_h5_weixin_user2_tbl` */

DROP TABLE IF EXISTS `mall_h5_weixin_user2_tbl`;

CREATE TABLE `mall_h5_weixin_user2_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL DEFAULT '' COMMENT '用户的唯一标识',
  `nickname` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户昵称',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `language` varchar(200) NOT NULL DEFAULT '' COMMENT '语言',
  `province` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户个人资料填写的省份',
  `city` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '普通用户个人资料填写的城市',
  `country` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '国家',
  `headimgurl` text COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空',
  `unionid` varchar(200) DEFAULT '' COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。',
  `lately_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近更新',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `gift_type` tinyint(1) DEFAULT '2' COMMENT '邀请礼物',
  PRIMARY KEY (`id`,`openid`),
  KEY `unionid` (`unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='微信，用户';

/*Table structure for table `mall_h5_weixin_user_tbl` */

DROP TABLE IF EXISTS `mall_h5_weixin_user_tbl`;

CREATE TABLE `mall_h5_weixin_user_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL DEFAULT '' COMMENT '用户的唯一标识',
  `nickname` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户昵称',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `language` varchar(200) NOT NULL DEFAULT '' COMMENT '语言',
  `province` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户个人资料填写的省份',
  `city` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '普通用户个人资料填写的城市',
  `country` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '国家',
  `headimgurl` text COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空',
  `unionid` varchar(200) DEFAULT '' COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。',
  `lately_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近更新',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `gift_type` tinyint(1) DEFAULT '2' COMMENT '邀请礼物',
  PRIMARY KEY (`id`,`openid`),
  KEY `unionid` (`unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='微信，用户';

/*Table structure for table `mall_log_tbl` */

DROP TABLE IF EXISTS `mall_log_tbl`;

CREATE TABLE `mall_log_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `add_time` int(10) DEFAULT NULL,
  `con` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_luck_code_tbl` */

DROP TABLE IF EXISTS `mall_luck_code_tbl`;

CREATE TABLE `mall_luck_code_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(20) DEFAULT NULL COMMENT '抽奖兑换码',
  `c_id` int(11) DEFAULT NULL COMMENT '客户ID',
  `draw_id` int(10) DEFAULT NULL COMMENT '活动ID',
  `code_qrcode` varchar(120) DEFAULT NULL COMMENT '抽奖链接二维码',
  `emp_id` int(11) DEFAULT NULL COMMENT '添加人ID',
  `add_time` int(10) DEFAULT NULL COMMENT '生成时间',
  `use_time` int(10) DEFAULT '0' COMMENT '使用时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `u_id` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=727 DEFAULT CHARSET=utf8 COMMENT='抽奖兑换码表';

/*Table structure for table `mall_luck_draw_tbl` */

DROP TABLE IF EXISTS `mall_luck_draw_tbl`;

CREATE TABLE `mall_luck_draw_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '活动名称',
  `status` tinyint(2) DEFAULT '1' COMMENT '是否有效',
  `team_id` varchar(255) DEFAULT NULL,
  `description` text COMMENT '活动描述',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `use_start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖品兑换开始时间',
  `use_end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖品兑换结束时间',
  `max_code_num` tinyint(4) DEFAULT '1' COMMENT '默认最大抽奖次数 0无限制',
  `add_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `template_type` tinyint(4) DEFAULT '0' COMMENT '模板类型',
  `op_id` int(11) DEFAULT NULL COMMENT '创建人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9008 DEFAULT CHARSET=utf8 COMMENT='抽奖活动表';

/*Table structure for table `mall_luck_prize_tbl` */

DROP TABLE IF EXISTS `mall_luck_prize_tbl`;

CREATE TABLE `mall_luck_prize_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `prize` varchar(50) DEFAULT NULL COMMENT '奖品名',
  `title` varchar(50) DEFAULT '' COMMENT '奖品标题(例如二等奖)',
  `odds` decimal(4,2) DEFAULT NULL COMMENT '中奖几率，为整数',
  `number` int(4) DEFAULT NULL COMMENT '奖品数量',
  `remain_num` int(4) unsigned NOT NULL COMMENT '剩余奖品数量',
  `draw_id` int(4) DEFAULT NULL COMMENT '抽奖活动的ID',
  `img_url` varchar(120) DEFAULT NULL COMMENT '转盘奖品图',
  `prize_img_url` varchar(120) DEFAULT NULL COMMENT '奖品图',
  `width` int(11) DEFAULT '0' COMMENT '奖品图宽',
  `height` int(11) DEFAULT '0' COMMENT '奖品图高',
  `p_width` int(10) DEFAULT '0' COMMENT '中奖图宽',
  `p_height` int(10) DEFAULT '0' COMMENT '中奖图高',
  `is_prize_synchronous` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '是否奖品同步',
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `draw_id` (`draw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=374551 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_luck_results_tbl` */

DROP TABLE IF EXISTS `mall_luck_results_tbl`;

CREATE TABLE `mall_luck_results_tbl` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT '0' COMMENT '会员ID',
  `c_id` int(11) DEFAULT '0' COMMENT '客户ID',
  `code` char(20) NOT NULL COMMENT '客户code',
  `draw_id` int(4) NOT NULL COMMENT '活动ID',
  `result_described` varchar(60) DEFAULT NULL COMMENT '描述记录',
  `is_win` int(4) DEFAULT '0' COMMENT '是否中奖,奖品ID，未中为0',
  `is_sure` tinyint(1) DEFAULT '0' COMMENT '是否已发奖',
  `add_time` int(10) DEFAULT NULL COMMENT '抽奖时间',
  `use_time` int(10) DEFAULT '0' COMMENT '发奖时间',
  PRIMARY KEY (`id`),
  KEY `u_id` (`u_id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8075 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_meet_participants_tbl` */

DROP TABLE IF EXISTS `mall_meet_participants_tbl`;

CREATE TABLE `mall_meet_participants_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weixin_id` int(10) unsigned NOT NULL COMMENT '用户微信记录ID',
  `round_id` int(10) unsigned NOT NULL COMMENT '抽奖轮次ID',
  `points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '该轮次得分',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8 COMMENT='年会抽奖参与表';

/*Table structure for table `mall_meet_prize_tbl` */

DROP TABLE IF EXISTS `mall_meet_prize_tbl`;

CREATE TABLE `mall_meet_prize_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `round_id` int(10) unsigned NOT NULL COMMENT '抽奖轮次ID',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '奖项名称',
  `prize_name` varchar(100) NOT NULL DEFAULT '' COMMENT '奖品名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '奖品图片',
  `total_amount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖品总数量',
  `remain_amount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '剩余数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序，值越大越优先分配',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='年会奖品表';

/*Table structure for table `mall_meet_round_tbl` */

DROP TABLE IF EXISTS `mall_meet_round_tbl`;

CREATE TABLE `mall_meet_round_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '轮次标题',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '描述',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='年会抽奖轮次表';

/*Table structure for table `mall_meet_show_tbl` */

DROP TABLE IF EXISTS `mall_meet_show_tbl`;

CREATE TABLE `mall_meet_show_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '得分',
  `department` varchar(100) NOT NULL DEFAULT '' COMMENT '部门',
  `actor` varchar(255) NOT NULL DEFAULT '' COMMENT '多个以英文逗号分隔',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票截止时间',
  `round_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '投票轮次',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序，越大越靠前',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='年会节目调查表';

/*Table structure for table `mall_meet_vote_log_tbl` */

DROP TABLE IF EXISTS `mall_meet_vote_log_tbl`;

CREATE TABLE `mall_meet_vote_log_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weixin_id` int(10) unsigned NOT NULL COMMENT '用户微信ID',
  `show_id` int(10) unsigned NOT NULL COMMENT '节目iD',
  `points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票分数',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8 COMMENT='年会节目投票记录表';

/*Table structure for table `mall_meet_winner_tbl` */

DROP TABLE IF EXISTS `mall_meet_winner_tbl`;

CREATE TABLE `mall_meet_winner_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weixin_id` int(10) unsigned NOT NULL COMMENT '用户微信记录ID',
  `prize_id` int(10) unsigned NOT NULL COMMENT '奖品ID',
  `round_id` int(10) unsigned NOT NULL COMMENT '抽奖场次ID',
  `points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '得分',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COMMENT='年会中奖记录表';

/*Table structure for table `mall_member_apply_withdraw_tbl` */

DROP TABLE IF EXISTS `mall_member_apply_withdraw_tbl`;

CREATE TABLE `mall_member_apply_withdraw_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '申请人ID，即客户ID',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '提现金额',
  `wechat_account` varchar(60) DEFAULT NULL COMMENT '用户微信账号',
  `alipay_account` varchar(60) DEFAULT NULL COMMENT '用户支付宝账号',
  `bank_name` varchar(200) DEFAULT NULL COMMENT '银行名称',
  `bank_add` varchar(200) DEFAULT NULL COMMENT '开户行',
  `bank_id` varchar(50) DEFAULT NULL COMMENT '卡号',
  `bank_username` varchar(50) DEFAULT NULL COMMENT '户名',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1 待审核，2 审核通过，3 审核不通过',
  `serial_number` varchar(32) DEFAULT NULL COMMENT '交易流水号',
  `pay_time` int(10) unsigned DEFAULT NULL COMMENT '汇款时间',
  `pay_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式，0 未支付，1 支付宝，2 微信 3.银行',
  `op_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '打款操作人ID',
  `remark` varchar(300) DEFAULT NULL COMMENT '备注',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `audit_status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '申请审核 1未审核 2审核通过 3不通过',
  `audit_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '审核人id',
  `audit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '审核时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='用户申请提现记录表';

/*Table structure for table `mall_member_balance_tbl` */

DROP TABLE IF EXISTS `mall_member_balance_tbl`;

CREATE TABLE `mall_member_balance_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL COMMENT '客户ID',
  `m_using_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '使用金额',
  `object_id` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1商城,2.crm',
  `type_id` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '类型 1充值,2订单消费',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '事件id',
  `op_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `m_id` (`customer_id`),
  KEY `add_time` (`add_time`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8 COMMENT='会员余额记录表';

/*Table structure for table `mall_member_commission_log_0_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_0_tbl`;

CREATE TABLE `mall_member_commission_log_0_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '操作对象ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_1_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_1_tbl`;

CREATE TABLE `mall_member_commission_log_1_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '动作ID，比如提现事件ID等',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_2_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_2_tbl`;

CREATE TABLE `mall_member_commission_log_2_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_3_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_3_tbl`;

CREATE TABLE `mall_member_commission_log_3_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_4_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_4_tbl`;

CREATE TABLE `mall_member_commission_log_4_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_5_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_5_tbl`;

CREATE TABLE `mall_member_commission_log_5_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_6_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_6_tbl`;

CREATE TABLE `mall_member_commission_log_6_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_7_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_7_tbl`;

CREATE TABLE `mall_member_commission_log_7_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_8_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_8_tbl`;

CREATE TABLE `mall_member_commission_log_8_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_log_9_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_log_9_tbl`;

CREATE TABLE `mall_member_commission_log_9_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `type_id` tinyint(1) unsigned NOT NULL COMMENT '类型，1 订单增加提成，2 提现减少提成，3 首单增加提成，4 售后单提成',
  `amount` decimal(10,2) unsigned NOT NULL COMMENT '变动金额',
  `action_id` varchar(60) NOT NULL COMMENT '触发该操作的对象ID，比如用户提现则是用户ID',
  `order_price` decimal(10,2) unsigned DEFAULT NULL COMMENT '订单实付金额',
  `detail` varchar(1000) DEFAULT NULL COMMENT '详细信息，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

/*Table structure for table `mall_member_commission_tbl` */

DROP TABLE IF EXISTS `mall_member_commission_tbl`;

CREATE TABLE `mall_member_commission_tbl` (
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `total_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `total_withdraw_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '提现总金额',
  `total_lock_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '锁定总金额',
  `bill_finish_num` int(10) NOT NULL DEFAULT '0' COMMENT '成功完成订单的次数',
  `bill_pay_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '消费总金额',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提成表';

/*Table structure for table `mall_member_level_and_point_limit_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_limit_tbl`;

CREATE TABLE `mall_member_level_and_point_limit_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL COMMENT '积分类型(注册，受邀注册等）',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `continues` tinyint(3) unsigned NOT NULL COMMENT '连续次数',
  `total_point` int(10) unsigned NOT NULL COMMENT '最大总分',
  `init_add_time` int(10) unsigned NOT NULL COMMENT '初始化添加时间',
  `init_total_point` int(10) unsigned NOT NULL COMMENT '初始化最大积分',
  `init_continues` tinyint(3) unsigned NOT NULL COMMENT '初始化连续次数',
  `object_id` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT '0' COMMENT '对象ID(例如订单ID之类的)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_type_id` (`user_id`,`type_id`,`object_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=971 DEFAULT CHARSET=utf8 COMMENT='会员积分记录表';

/*Table structure for table `mall_member_level_and_point_log_0_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_0_tbl`;

CREATE TABLE `mall_member_level_and_point_log_0_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0' COMMENT '业务id',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6131 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_1_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_1_tbl`;

CREATE TABLE `mall_member_level_and_point_log_1_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6688 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_2_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_2_tbl`;

CREATE TABLE `mall_member_level_and_point_log_2_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6186 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_3_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_3_tbl`;

CREATE TABLE `mall_member_level_and_point_log_3_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5991 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_4_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_4_tbl`;

CREATE TABLE `mall_member_level_and_point_log_4_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6169 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_5_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_5_tbl`;

CREATE TABLE `mall_member_level_and_point_log_5_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26676 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_6_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_6_tbl`;

CREATE TABLE `mall_member_level_and_point_log_6_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6228 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_7_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_7_tbl`;

CREATE TABLE `mall_member_level_and_point_log_7_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5985 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_8_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_8_tbl`;

CREATE TABLE `mall_member_level_and_point_log_8_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6213 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_log_9_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_log_9_tbl`;

CREATE TABLE `mall_member_level_and_point_log_9_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id(注册，受邀注册等)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `action_id` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0' COMMENT '积分',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `remark` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '备注',
  `params` text CHARACTER SET gbk COMMENT '加减积分的一些参数(如goods_id等)',
  PRIMARY KEY (`id`),
  KEY `user_id_type_id` (`user_id`,`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6508 DEFAULT CHARSET=utf8 COMMENT='会员操作记录表';

/*Table structure for table `mall_member_level_and_point_tbl` */

DROP TABLE IF EXISTS `mall_member_level_and_point_tbl`;

CREATE TABLE `mall_member_level_and_point_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `plus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加积分的总',
  `minus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '减积分的总',
  `bill_finish_num` int(10) DEFAULT '0' COMMENT '成功完成订单的次数',
  `bill_pay_price` decimal(10,2) DEFAULT '0.00' COMMENT '消费总金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12877 DEFAULT CHARSET=utf8 COMMENT='会员积分总表';

/*Table structure for table `mall_member_level_and_point_tbl_1231` */

DROP TABLE IF EXISTS `mall_member_level_and_point_tbl_1231`;

CREATE TABLE `mall_member_level_and_point_tbl_1231` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `plus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加积分的总',
  `minus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '减积分的总',
  `bill_finish_num` int(10) DEFAULT '0' COMMENT '成功完成订单的次数',
  `bill_pay_price` decimal(10,2) DEFAULT '0.00' COMMENT '消费总金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12855 DEFAULT CHARSET=utf8 COMMENT='会员积分总表';

/*Table structure for table `mall_member_level_and_point_tbl_copy` */

DROP TABLE IF EXISTS `mall_member_level_and_point_tbl_copy`;

CREATE TABLE `mall_member_level_and_point_tbl_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `plus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加积分的总',
  `minus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '减积分的总',
  `bill_finish_num` int(10) DEFAULT '0' COMMENT '成功完成订单的次数',
  `bill_pay_price` decimal(10,2) DEFAULT '0.00' COMMENT '消费总金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5803 DEFAULT CHARSET=utf8 COMMENT='会员积分总表';

/*Table structure for table `mall_member_level_and_point_tbl_online` */

DROP TABLE IF EXISTS `mall_member_level_and_point_tbl_online`;

CREATE TABLE `mall_member_level_and_point_tbl_online` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `plus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加积分的总',
  `minus_point_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '减积分的总',
  `bill_finish_num` int(10) DEFAULT '0' COMMENT '成功完成订单的次数',
  `bill_pay_price` decimal(10,2) DEFAULT '0.00' COMMENT '消费总金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12854 DEFAULT CHARSET=utf8 COMMENT='会员积分总表';

/*Table structure for table `mall_online_goods_attr_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_attr_tbl`;

CREATE TABLE `mall_online_goods_attr_tbl` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '商品id',
  `attr_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '属性id',
  `attr_value` text NOT NULL COMMENT '属性值',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `attr_id` (`attr_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='商品属性对应表';

/*Table structure for table `mall_online_goods_attribute_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_attribute_tbl`;

CREATE TABLE `mall_online_goods_attribute_tbl` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attr_name` varchar(60) NOT NULL COMMENT '属性名',
  `goods_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品模型id',
  `attr_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0:唯一属性、1:单选属性、2:复选属性',
  `attr_input_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0:手工录入、1:从列表中选择、2:多行文本框',
  `attr_values` text COMMENT '可选值列表',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50' COMMENT '属性值排序',
  `input_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '当属性录入方式为列表选择的字段判断是否单选（0）多选（1）',
  PRIMARY KEY (`attr_id`),
  KEY `goods_type_id` (`goods_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='商品属性表';

/*Table structure for table `mall_online_goods_category_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_category_tbl`;

CREATE TABLE `mall_online_goods_category_tbl` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品类别表',
  `name` varchar(90) DEFAULT NULL COMMENT '类别名称',
  `parent_id` smallint(5) unsigned DEFAULT '0' COMMENT '上级类别',
  `parent_id_path` varchar(128) DEFAULT '' COMMENT '族谱',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `sort_order` tinyint(4) unsigned DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门分类',
  `is_show` int(5) DEFAULT '1' COMMENT '排序',
  `flag` int(1) unsigned DEFAULT '1' COMMENT '是否删除',
  `detail` longtext COMMENT '类型属性',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='产品分类表';

/*Table structure for table `mall_online_goods_collect_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_collect_tbl`;

CREATE TABLE `mall_online_goods_collect_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '商品id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:收藏 2：取消收藏',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_online_goods_comment_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_comment_tbl`;

CREATE TABLE `mall_online_goods_comment_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '评论用户id',
  `content` text NOT NULL COMMENT '评论内容',
  `img` text COMMENT '晒单图片',
  `goods_rank` tinyint(1) NOT NULL DEFAULT '5' COMMENT '商品评价等级',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `is_show` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否显示 0：否 1：是',
  `is_review` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否审核 0：否 1：是',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '评论时间',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_online_goods_images_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_images_tbl`;

CREATE TABLE `mall_online_goods_images_tbl` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `image_url` varchar(255) NOT NULL COMMENT '商品图片路径',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_online_goods_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_tbl`;

CREATE TABLE `mall_online_goods_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `crm_goods_id` int(10) unsigned NOT NULL COMMENT 'crm商品id',
  `crm_goods_code` varchar(50) DEFAULT NULL COMMENT 'crm商品编码',
  `goods_name` varchar(250) NOT NULL COMMENT '产品名称',
  `goods_sn` varchar(100) NOT NULL COMMENT '商品编号',
  `keyword` varchar(250) DEFAULT NULL COMMENT '关键字',
  `tags` varchar(250) NOT NULL COMMENT '后台标签,逗号分开',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID  取值mall_crm_goods_category_tbl',
  `goods_type_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '商品模型id,取值mall_online_goods_type_tbl',
  `prices` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '官网价格',
  `sale_prices` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '销售价格',
  `unit` varchar(20) NOT NULL COMMENT '单位',
  `detail_list` varchar(255) DEFAULT NULL COMMENT '商品属性id列表',
  `flag` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0删除 1有效',
  `is_on_sale` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '上下架 0:下架 1上架',
  `images` varchar(250) NOT NULL COMMENT '商品展示图片',
  `remark` varchar(255) NOT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '图文介绍',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_user` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加人',
  `is_recom` tinyint(1) NOT NULL DEFAULT '2' COMMENT '是否推荐 2：不推荐 1：推荐',
  `is_new` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否新品',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热卖',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `assign_stock` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单占用库存数量',
  `real_stock` int(11) NOT NULL DEFAULT '0' COMMENT '剩余库存',
  `sort_order` smallint(6) NOT NULL DEFAULT '100' COMMENT '排序',
  `detail` longtext COMMENT '其他属性序列化',
  `click_count` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `comment_count` int(11) NOT NULL DEFAULT '0' COMMENT '商品评论数',
  `sale_count` int(11) NOT NULL DEFAULT '0' COMMENT '商品销量',
  `is_sub` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_goods_id` (`crm_goods_id`),
  KEY `add_time` (`add_time`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `is_on_sale` (`is_on_sale`) USING BTREE,
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=gbk;

/*Table structure for table `mall_online_goods_topics_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_topics_tbl`;

CREATE TABLE `mall_online_goods_topics_tbl` (
  `id` mediumint(3) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联商品id',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `poster` varchar(255) NOT NULL DEFAULT '' COMMENT '海报图',
  `content_abstract` text COMMENT '简介',
  `content` text COMMENT '详细描述，内容简介',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `topics_region` varchar(20) NOT NULL DEFAULT '' COMMENT '显示区域',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `sort_order` int(11) DEFAULT '50' COMMENT '排序',
  `click_count` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推送 1：是 0： 否',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_online_goods_type_tbl` */

DROP TABLE IF EXISTS `mall_online_goods_type_tbl`;

CREATE TABLE `mall_online_goods_type_tbl` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品类型表';

/*Table structure for table `mall_online_order_detail_tbl` */

DROP TABLE IF EXISTS `mall_online_order_detail_tbl`;

CREATE TABLE `mall_online_order_detail_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL COMMENT '订单ID',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `crm_goods_id` int(10) unsigned NOT NULL COMMENT 'crm商品ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '商品价格',
  `quantity` int(10) unsigned NOT NULL COMMENT '商品数量',
  `detail` text COMMENT '订单附加信息，序列化存储',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_order_id_goods_id` (`order_id`,`goods_id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='订单详情表';

/*Table structure for table `mall_online_order_operate_log_tbl` */

DROP TABLE IF EXISTS `mall_online_order_operate_log_tbl`;

CREATE TABLE `mall_online_order_operate_log_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(10) unsigned NOT NULL DEFAULT '200' COMMENT '日志等级，200 提示信息，5000 系统错误',
  `action_type` tinyint(1) unsigned NOT NULL COMMENT '订单操作类型',
  `action_id` int(10) unsigned NOT NULL COMMENT '订单ID',
  `detail` text COMMENT '日志详情，序列化存储',
  `create_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `idx_action_id` (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=249423 DEFAULT CHARSET=utf8 COMMENT='订单操作日志';

/*Table structure for table `mall_online_order_tbl` */

DROP TABLE IF EXISTS `mall_online_order_tbl`;

CREATE TABLE `mall_online_order_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(32) NOT NULL COMMENT '订单号',
  `buyer_user_id` int(10) unsigned NOT NULL COMMENT '下单的用户ID',
  `consignee` varchar(64) NOT NULL COMMENT '收件人名称',
  `phone` varchar(20) NOT NULL COMMENT '联系电话',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '订单状态，1.待付款 20.配货中 21.缺货 22.已发货  80.已签收 90.已评价 100.已完成 101.取消订单',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态，0 未支付，1 已支付',
  `refund_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '退款状态，0 没退款，1 申请退款，2 同意退款，3 拒绝退款',
  `original_amount` decimal(10,2) unsigned NOT NULL COMMENT '订单原始金额（折扣/优惠前的金额）',
  `discount_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `actual_amount` decimal(10,2) unsigned NOT NULL COMMENT '实付金额',
  `express_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '寄送邮费',
  `pay_type` tinyint(1) unsigned DEFAULT NULL COMMENT '支付方式，101:微信公众号 102：微信H5 4:支付宝',
  `other_paid` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否代付',
  `other_paid_qcimg` varchar(255) DEFAULT NULL COMMENT '代付二维码地址',
  `other_paid_wx_id` int(10) DEFAULT '0' COMMENT '代付人微信id',
  `referer` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单来源，1 线上商城',
  `crm_order_status` tinyint(3) unsigned DEFAULT NULL COMMENT 'crm订单状态',
  `sync_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '同步状态，0 未同步，1 已同步',
  `remind_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提醒总次数',
  `remind_time` int(11) unsigned DEFAULT NULL COMMENT '最近一次提醒时间',
  `region_id` varchar(20) DEFAULT NULL COMMENT '收货地址ID',
  `street` varchar(300) DEFAULT NULL COMMENT '收货地址街道信息',
  `remark` varchar(300) DEFAULT NULL COMMENT '订单备注',
  `express_type` tinyint(1) unsigned DEFAULT NULL COMMENT '物流类型',
  `express_sn` varchar(30) DEFAULT NULL COMMENT '物流单号',
  `create_time` int(10) unsigned NOT NULL COMMENT '订单创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `pay_account` varchar(64) DEFAULT NULL COMMENT '账号',
  `pay_nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '支付人昵称',
  `transaction_id` varchar(40) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`),
  KEY `idx_order_sn` (`order_sn`),
  KEY `idx_buyer_user_id` (`buyer_user_id`),
  KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3817 DEFAULT CHARSET=utf8 COMMENT='订单表';

/*Table structure for table `mall_online_pay_log_tbl` */

DROP TABLE IF EXISTS `mall_online_pay_log_tbl`;

CREATE TABLE `mall_online_pay_log_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付日志',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1、支付申请 2、支付成功、3、支付失败   4:同步通知已更改，异步通知，5：异步通知已更改，同步返回',
  `order_id` int(11) DEFAULT '0' COMMENT '订单id',
  `total_fee` decimal(10,2) DEFAULT '0.00' COMMENT '订单金额',
  `pay_type` mediumint(4) NOT NULL DEFAULT '1' COMMENT '101:微信公众号 102：微信H5 4:支付宝',
  `transaction_id` varchar(64) DEFAULT NULL COMMENT '支付订单ID',
  `sys_order_sn` varchar(32) DEFAULT NULL COMMENT '系统支付订单ID',
  `pay_account` varchar(64) DEFAULT NULL COMMENT '账号',
  `is_async` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:都不是  1:同步  2：异步',
  `params` text COMMENT '明细参数序列化',
  `is_sub` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 本人支付 1 代付',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_order_pay_tbl` */

DROP TABLE IF EXISTS `mall_order_pay_tbl`;

CREATE TABLE `mall_order_pay_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `customer_code` varchar(64) NOT NULL COMMENT '客户编号',
  `customer_name` varchar(64) DEFAULT NULL COMMENT '客户姓名',
  `pay_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `u_id` int(11) DEFAULT NULL COMMENT '添加人',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未支付，1：已支付，2：支付中',
  `order_code` varchar(64) NOT NULL DEFAULT '0' COMMENT '订单号',
  `pay_type` tinyint(4) NOT NULL COMMENT '支付方式',
  `pay_name` varchar(100) DEFAULT NULL COMMENT '支付姓名',
  `onlinecode` varchar(100) DEFAULT NULL COMMENT '流水号',
  `is_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已使用 1.使用，0：未使用',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '生成时间',
  `pay_url` varchar(255) DEFAULT NULL COMMENT '支付链接',
  `pay_qrcode` varchar(255) DEFAULT NULL COMMENT '支付链接二维码',
  `pay_time` int(11) DEFAULT '0' COMMENT '支付时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_code` (`order_code`) USING BTREE,
  KEY `customer_code` (`customer_code`),
  KEY `customer_name` (`customer_name`),
  KEY `onlinecode` (`onlinecode`),
  KEY `is_pay` (`is_pay`),
  KEY `is_use` (`is_use`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_order_sync_log_tbl` */

DROP TABLE IF EXISTS `mall_order_sync_log_tbl`;

CREATE TABLE `mall_order_sync_log_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL COMMENT '订单id',
  `sync_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '同步说明',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态标志',
  `add_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_order_tbl` */

DROP TABLE IF EXISTS `mall_order_tbl`;

CREATE TABLE `mall_order_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL COMMENT '订单id',
  `order_code` varchar(64) NOT NULL COMMENT 'crm订单号',
  `curstomer_name` varchar(60) NOT NULL COMMENT '客户名称',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '下单日期',
  `total_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额',
  `pay_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '应支付价格',
  `consignee_name` varchar(60) NOT NULL COMMENT '收货人姓名',
  `product_json` text NOT NULL COMMENT '产品信息，json字符串',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未支付，1:支付成功，2：支付失败',
  `new_order_code` varchar(64) DEFAULT NULL COMMENT '支付失败生成新的订单号',
  `pay_time` int(11) DEFAULT '0' COMMENT '支付时间',
  `pay_type` tinyint(1) DEFAULT '0' COMMENT '1：微信支付，2：支付宝支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  UNIQUE KEY `new_order_code` (`new_order_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_questionnaire_chapter_tbl` */

DROP TABLE IF EXISTS `mall_questionnaire_chapter_tbl`;

CREATE TABLE `mall_questionnaire_chapter_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '套题名称',
  `category` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型，1 连续型，2 跳跃型',
  `op_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='问掉调查-套题信息表';

/*Table structure for table `mall_questionnaire_question_tbl` */

DROP TABLE IF EXISTS `mall_questionnaire_question_tbl`;

CREATE TABLE `mall_questionnaire_question_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套题ID',
  `title` varchar(300) NOT NULL DEFAULT '' COMMENT '题目内容',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型，1 单选，2 多选',
  `options` varchar(1000) NOT NULL DEFAULT '' COMMENT '选项，序列化存储',
  `answer` varchar(30) NOT NULL DEFAULT '' COMMENT '答案，多个答案以英文","分割',
  `score` varchar(200) NOT NULL DEFAULT '' COMMENT '得分，序列化存储（考虑到多选题有多种得分方式）',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序，值越大越靠前',
  `op_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='问卷调查-题目表';

/*Table structure for table `mall_questionnaire_result_tbl` */

DROP TABLE IF EXISTS `mall_questionnaire_result_tbl`;

CREATE TABLE `mall_questionnaire_result_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '套题ID',
  `min_score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最低分',
  `max_score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最高分',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `next_chapter_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下一套题ID，用于切换下一套题作答',
  `op_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='问卷调查-结果表';

/*Table structure for table `mall_region_tbl` */

DROP TABLE IF EXISTS `mall_region_tbl`;

CREATE TABLE `mall_region_tbl` (
  `id` bigint(19) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '86' COMMENT '父级区号',
  `step` int(3) DEFAULT '10000' COMMENT '排序,大的在后',
  `is_min` tinyint(3) DEFAULT '0' COMMENT '是否还有下级1:有0:没有',
  `status` tinyint(3) DEFAULT '1' COMMENT '状态1正常2删除',
  `is_hot` tinyint(1) NOT NULL DEFAULT '2' COMMENT '热门城市 1:是，2：不是',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mall_shipping_address_tbl` */

DROP TABLE IF EXISTS `mall_shipping_address_tbl`;

CREATE TABLE `mall_shipping_address_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `consignee` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `mobile_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '手机类型，0 其他，1 大陆手机',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人电话',
  `province` varchar(20) DEFAULT '' COMMENT '省份',
  `city` varchar(20) DEFAULT '' COMMENT '城市',
  `county` varchar(20) DEFAULT '' COMMENT '行政区',
  `region_id` bigint(15) NOT NULL DEFAULT '0' COMMENT '地址ID',
  `street` varchar(300) NOT NULL DEFAULT '' COMMENT '收货详细地址',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认地址， 0 是， 1 否',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '标识删除',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32905 DEFAULT CHARSET=utf8 COMMENT='用户收货地址';

/*Table structure for table `mall_shopping_cart_tbl` */

DROP TABLE IF EXISTS `mall_shopping_cart_tbl`;

CREATE TABLE `mall_shopping_cart_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `create_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='会员购物车表';

/*Table structure for table `mall_sms_send_log_tbl` */

DROP TABLE IF EXISTS `mall_sms_send_log_tbl`;

CREATE TABLE `mall_sms_send_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cellphone` varchar(20) NOT NULL COMMENT '手机号码',
  `scene_val` varchar(30) NOT NULL COMMENT '发送场景',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '验证码生成时间',
  `validate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否验证，默认是没有验证',
  `sms_id` int(11) NOT NULL DEFAULT '0' COMMENT '短信批号',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '是否重新发送',
  `code_num` varchar(6) NOT NULL DEFAULT '0' COMMENT '验证码',
  `sign_name` varchar(20) NOT NULL COMMENT '短信签名',
  `template` varchar(100) NOT NULL COMMENT '发送的短信模板',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2834 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_substitute_message_tbl` */

DROP TABLE IF EXISTS `mall_substitute_message_tbl`;

CREATE TABLE `mall_substitute_message_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单号',
  `c_id` int(11) NOT NULL COMMENT '客户id',
  `nickname` varchar(120) NOT NULL COMMENT '客户微信昵称',
  `content` text NOT NULL COMMENT '内容',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='代付订单分享秘密留言表';

/*Table structure for table `mall_substitute_tbl` */

DROP TABLE IF EXISTS `mall_substitute_tbl`;

CREATE TABLE `mall_substitute_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL COMMENT '会员ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `wx_u_id` int(11) NOT NULL COMMENT '支付人微信用户ID',
  `openid` varchar(200) NOT NULL COMMENT '支付人微信openid',
  `nickname` varchar(200) NOT NULL COMMENT '支付人微信昵称',
  `sub_status` tinyint(4) NOT NULL COMMENT '状态 1参与 2支付',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `pay_time` int(11) DEFAULT '0' COMMENT '支付时间',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`),
  KEY `order_id` (`order_id`),
  KEY `sub_status` (`sub_status`),
  KEY `wx_u_id` (`wx_u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COMMENT='商品|订单代付表';

/*Table structure for table `mall_system_log_tbl` */

DROP TABLE IF EXISTS `mall_system_log_tbl`;

CREATE TABLE `mall_system_log_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` char(50) NOT NULL COMMENT '模块',
  `controller` char(50) NOT NULL COMMENT '控制器',
  `action` char(50) NOT NULL COMMENT '方法',
  `params` blob NOT NULL COMMENT '序列化参数',
  `remark` text NOT NULL COMMENT '备注',
  `result` varchar(120) NOT NULL COMMENT '执行结果',
  `error` blob COMMENT '错误信息',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `year` int(10) NOT NULL DEFAULT '0' COMMENT '年',
  `month` tinyint(4) NOT NULL DEFAULT '0' COMMENT '月',
  `day` tinyint(4) NOT NULL DEFAULT '0' COMMENT '日',
  `hour` tinyint(4) NOT NULL DEFAULT '0' COMMENT '时',
  `min` int(11) NOT NULL DEFAULT '0' COMMENT '分',
  `second` int(11) NOT NULL DEFAULT '0' COMMENT '秒',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1845 DEFAULT CHARSET=utf8 COMMENT='系统执行记录表';

/*Table structure for table `mall_test_log_tbl` */

DROP TABLE IF EXISTS `mall_test_log_tbl`;

CREATE TABLE `mall_test_log_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(60) DEFAULT NULL COMMENT '模块',
  `controller` varchar(60) DEFAULT NULL COMMENT '控制器',
  `action` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '方法名',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型，后续使用',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态，后续使用',
  `content` text CHARACTER SET utf8 COMMENT '内容',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8mb4 COMMENT='测试数据表(用于排查和记录数据)';

/*Table structure for table `mall_user_edit_phone_log` */

DROP TABLE IF EXISTS `mall_user_edit_phone_log`;

CREATE TABLE `mall_user_edit_phone_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `old_phone` varchar(20) NOT NULL,
  `new_phone` varchar(20) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_user_praise_tbl` */

DROP TABLE IF EXISTS `mall_user_praise_tbl`;

CREATE TABLE `mall_user_praise_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：已点，2：取消点赞',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_user_tbl` */

DROP TABLE IF EXISTS `mall_user_tbl`;

CREATE TABLE `mall_user_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `pw` varchar(50) DEFAULT NULL COMMENT '密码',
  `cellphone` varchar(20) NOT NULL COMMENT '电话号码',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '客户资料id',
  `wx_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '微信id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '激活状态，1：激活，0：未激活',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` varchar(20) NOT NULL DEFAULT '' COMMENT '生日',
  `invitation` int(11) DEFAULT NULL COMMENT '邀请人',
  `head_img` varchar(255) DEFAULT '/static/wxmem/images/home/avatar.png',
  `invitation_qrcode` varchar(255) DEFAULT NULL,
  `birthday_present` tinyint(4) unsigned DEFAULT '0' COMMENT '是否发送了生日礼物',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `is_update_birthday` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未修改 1：已修改',
  `update_birthday_time` int(11) DEFAULT '0' COMMENT '修改生日时间',
  `emp_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '员工客服推荐id',
  `invitation_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '普通用户邀请者id',
  `dealers_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '经销商邀请id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cellphone` (`cellphone`),
  KEY `customer_id` (`customer_id`),
  KEY `wx_id` (`wx_id`),
  KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=12927 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_user_tbl_copy` */

DROP TABLE IF EXISTS `mall_user_tbl_copy`;

CREATE TABLE `mall_user_tbl_copy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `pw` varchar(50) DEFAULT NULL COMMENT '密码',
  `cellphone` varchar(20) NOT NULL COMMENT '电话号码',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '客户资料id',
  `wx_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '微信id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '激活状态，1：激活，0：未激活',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` varchar(20) NOT NULL DEFAULT '' COMMENT '生日',
  `invitation` int(11) DEFAULT NULL COMMENT '邀请人',
  `head_img` varchar(255) DEFAULT '/static/wxmem/images/home/avatar.png',
  `invitation_qrcode` varchar(255) DEFAULT NULL,
  `birthday_present` tinyint(4) unsigned DEFAULT '0' COMMENT '是否发送了生日礼物',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `is_update_birthday` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未修改 1：已修改',
  `update_birthday_time` int(11) DEFAULT '0' COMMENT '修改生日时间',
  `emp_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '员工客服推荐id',
  `invitation_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '普通用户邀请者id',
  `dealers_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '经销商邀请id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cellphone` (`cellphone`),
  KEY `customer_id` (`customer_id`),
  KEY `wx_id` (`wx_id`),
  KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=183762 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_user_tbl_online` */

DROP TABLE IF EXISTS `mall_user_tbl_online`;

CREATE TABLE `mall_user_tbl_online` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `pw` varchar(50) DEFAULT NULL COMMENT '密码',
  `cellphone` varchar(20) NOT NULL COMMENT '电话号码',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '客户资料id',
  `wx_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '微信id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '激活状态，1：激活，0：未激活',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` varchar(20) NOT NULL DEFAULT '' COMMENT '生日',
  `invitation` int(11) DEFAULT NULL COMMENT '邀请人',
  `head_img` varchar(255) DEFAULT '/static/wxmem/images/home/avatar.png',
  `invitation_qrcode` varchar(255) DEFAULT NULL,
  `birthday_present` tinyint(4) unsigned DEFAULT '0' COMMENT '是否发送了生日礼物',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `is_update_birthday` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未修改 1：已修改',
  `update_birthday_time` int(11) DEFAULT '0' COMMENT '修改生日时间',
  `emp_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '员工客服推荐id',
  `invitation_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '普通用户邀请者id',
  `dealers_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '经销商邀请id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cellphone` (`cellphone`),
  KEY `customer_id` (`customer_id`),
  KEY `wx_id` (`wx_id`),
  KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=12904 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_vote_log_tbl` */

DROP TABLE IF EXISTS `mall_vote_log_tbl`;

CREATE TABLE `mall_vote_log_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票专题id',
  `participator_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '选手的id',
  `wx_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票者微信id',
  `nickname` varchar(60) NOT NULL DEFAULT '' COMMENT '名称',
  `headimgurl` varchar(250) NOT NULL DEFAULT '' COMMENT '微信头像',
  `detail` text COMMENT '其他',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票时间',
  PRIMARY KEY (`id`),
  KEY `idx_vote_id` (`vote_id`,`participator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='投票记录表';

/*Table structure for table `mall_vote_participator_tbl` */

DROP TABLE IF EXISTS `mall_vote_participator_tbl`;

CREATE TABLE `mall_vote_participator_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票专题id',
  `user_type` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '投票用户类型 1会员 2微信 3qq 4微博',
  `user_id` int(11) NOT NULL COMMENT '用户唯一id',
  `code` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '选手编号',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '选手手机号',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `votes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '获得票数',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许投票0没审核 1通过 2不通过',
  `detail` text COMMENT '其他明细系列化保存',
  `add_votes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '系统加票数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请投票资格时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_vote_id` (`vote_id`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='投票选手表';

/*Table structure for table `mall_vote_tbl` */

DROP TABLE IF EXISTS `mall_vote_tbl`;

CREATE TABLE `mall_vote_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '投票专题名称',
  `cover` varchar(255) NOT NULL DEFAULT '' COMMENT '封面图',
  `jump_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效 0无效 1有效 2已经结束',
  `user_rules` text COMMENT '参赛者规则，参赛填写表单的格式规则',
  `rules` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '规则',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票开始时间 0代表无限制',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票结束时间 0代表无限制',
  `valid_time` int(10) unsigned DEFAULT '0' COMMENT '选手参加投票后开始算的有效时间,按秒算,0代表无限',
  `total_participator` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投票参赛者总人数，participator表对应的人数',
  `total_votes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总投票数',
  `total_pv` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '页面浏览总数',
  `detail` text COMMENT '其他明细',
  `operator` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加人',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_start_time` (`start_time`,`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='投票活动表';

/*Table structure for table `mall_wechat_tbl` */

DROP TABLE IF EXISTS `mall_wechat_tbl`;

CREATE TABLE `mall_wechat_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wechat_num` varchar(40) NOT NULL COMMENT '微信号',
  `wechat_qrcode` varchar(255) NOT NULL COMMENT '微信二维码图片',
  `add_user` smallint(6) NOT NULL COMMENT '添加人',
  `wechat_nickname` varchar(60) NOT NULL COMMENT '微信昵称',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mall_weixin_user_tbl` */

DROP TABLE IF EXISTS `mall_weixin_user_tbl`;

CREATE TABLE `mall_weixin_user_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL DEFAULT '' COMMENT '用户的唯一标识',
  `nickname` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户昵称',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `language` varchar(200) NOT NULL DEFAULT '' COMMENT '语言',
  `province` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户个人资料填写的省份',
  `city` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '普通用户个人资料填写的城市',
  `country` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '国家',
  `headimgurl` text COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空',
  `unionid` varchar(200) NOT NULL DEFAULT '' COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。',
  `is_subscribe` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否关注',
  `subscribe_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注时间',
  `lately_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近更新',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `errcode` int(10) DEFAULT NULL,
  `errmsg` text,
  PRIMARY KEY (`id`,`openid`),
  KEY `unionid` (`unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=4018 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='微信，用户';

/*Table structure for table `mall_weixin_user_tbl_0125` */

DROP TABLE IF EXISTS `mall_weixin_user_tbl_0125`;

CREATE TABLE `mall_weixin_user_tbl_0125` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL DEFAULT '' COMMENT '用户的唯一标识',
  `nickname` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户昵称',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `language` varchar(200) NOT NULL DEFAULT '' COMMENT '语言',
  `province` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '用户个人资料填写的省份',
  `city` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '普通用户个人资料填写的城市',
  `country` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '国家',
  `headimgurl` text COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空',
  `unionid` varchar(200) NOT NULL DEFAULT '' COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。',
  `is_subscribe` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否关注',
  `subscribe_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注时间',
  `lately_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近更新',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `errcode` int(10) DEFAULT NULL,
  `errmsg` text,
  PRIMARY KEY (`id`,`openid`),
  KEY `unionid` (`unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=3518 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='微信，用户';

/*Table structure for table `mall_you_zan_deliver_company_tbl` */

DROP TABLE IF EXISTS `mall_you_zan_deliver_company_tbl`;

CREATE TABLE `mall_you_zan_deliver_company_tbl` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '物流公司',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `youzan_id` int(10) DEFAULT '0' COMMENT '有赞id',
  `code` varchar(64) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='物流公司';

/*Table structure for table `mall_you_zan_orders_tbl` */

DROP TABLE IF EXISTS `mall_you_zan_orders_tbl`;

CREATE TABLE `mall_you_zan_orders_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(64) NOT NULL COMMENT '订单Tid,可查询详情',
  `order_info` blob NOT NULL COMMENT '订单明细详情信息',
  `orders` blob NOT NULL COMMENT '订单明细结构信息',
  `pay_info` blob NOT NULL COMMENT '支付信息',
  `address_info` blob NOT NULL COMMENT '收货信息',
  `buyer_info` blob NOT NULL COMMENT '买家明细结构',
  `source_info` blob NOT NULL COMMENT '订单来源信息',
  `remark_info` blob NOT NULL COMMENT '备注信息',
  `child_info` blob NOT NULL COMMENT '子订单信息',
  `detail` blob COMMENT '所有数据',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '分配员工ID',
  `crm_order_id` int(11) NOT NULL DEFAULT '0' COMMENT 'crm订单ID',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1未分配 2分配',
  `order_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '下单状态 1未下单 2已下单',
  `add_time` int(11) NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`,`order_status`)
) ENGINE=MyISAM AUTO_INCREMENT=593 DEFAULT CHARSET=utf8;

/*Table structure for table `mall_you_zan_sync_order_tbl` */

DROP TABLE IF EXISTS `mall_you_zan_sync_order_tbl`;

CREATE TABLE `mall_you_zan_sync_order_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `crm_order_id` int(10) DEFAULT NULL COMMENT 'crm订单id',
  `status` int(10) DEFAULT NULL COMMENT '发货状态 0未发货 1成功 2失败',
  `deliver_id` int(11) NOT NULL COMMENT 'CRM物流公司ID',
  `deliver_code` varchar(50) NOT NULL COMMENT 'CRM物流公司编码',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `order_id` (`crm_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='有赞订单同步表';

/*Table structure for table `yj_region_tbl` */

DROP TABLE IF EXISTS `yj_region_tbl`;

CREATE TABLE `yj_region_tbl` (
  `id` bigint(19) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '86' COMMENT '父级区号',
  `step` int(3) DEFAULT '10000' COMMENT '排序,大的在后',
  `is_min` tinyint(3) DEFAULT '0' COMMENT '是否还有下级1:有0:没有',
  `status` tinyint(3) DEFAULT '1' COMMENT '状态1正常2删除',
  `is_hot` tinyint(1) NOT NULL DEFAULT '2' COMMENT '热门城市 1:是，2：不是',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
