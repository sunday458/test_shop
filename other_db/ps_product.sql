/*
Navicat MySQL Data Transfer

Source Server         : 47.52.100.242@mine
Source Server Version : 50640
Source Host           : 47.52.100.242:3306
Source Database       : prestashop

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-06-25 09:25:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ps_product`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product`;
CREATE TABLE `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(64) DEFAULT NULL,
  `supplier_reference` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `additional_delivery_times` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301-product','302-product','301-category','302-category') NOT NULL DEFAULT '',
  `id_type_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date DEFAULT NULL,
  `show_condition` tinyint(1) NOT NULL DEFAULT '0',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `pack_stock_type` int(11) unsigned NOT NULL DEFAULT '3',
  `state` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`,`id_product`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`),
  KEY `state` (`state`,`date_upd`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product
-- ----------------------------
INSERT INTO `ps_product` VALUES ('1', '0', '1', '4', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '23.900000', '0.000000', '', '0.000000', '0.00', 'demo_1', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('2', '0', '1', '5', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '35.900000', '0.000000', '', '0.000000', '0.00', 'demo_3', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '404', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '9', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('3', '0', '2', '9', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '29.000000', '0.000000', '', '0.000000', '0.00', 'demo_6', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '13', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('4', '0', '2', '9', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '29.000000', '0.000000', '', '0.000000', '0.00', 'demo_5', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '404', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '16', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('5', '0', '2', '9', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '29.000000', '0.000000', '', '0.000000', '0.00', 'demo_7', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '19', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('6', '0', '1', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '11.900000', '0.000000', '', '0.000000', '0.00', 'demo_11', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('7', '0', '1', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '11.900000', '0.000000', '', '0.000000', '0.00', 'demo_12', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('8', '0', '1', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '11.900000', '0.000000', '', '0.000000', '0.00', 'demo_13', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '404', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('9', '0', '1', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '18.900000', '0.000000', '', '0.000000', '0.00', 'demo_15', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '22', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('10', '0', '1', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '18.900000', '0.000000', '', '0.000000', '0.00', 'demo_16', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '24', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('11', '0', '1', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '18.900000', '0.000000', '', '0.000000', '0.00', 'demo_17', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '26', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('12', '0', '2', '9', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '9.000000', '0.000000', '', '0.000000', '0.00', 'demo_18', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '1', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('13', '0', '2', '9', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '9.000000', '0.000000', '', '0.000000', '0.00', 'demo_19', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '1', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('14', '0', '2', '9', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '9.000000', '0.000000', '', '0.000000', '0.00', 'demo_20', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '1', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('15', '0', '0', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '35.000000', '0.000000', '', '0.000000', '0.00', 'demo_21', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '1', '0', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('16', '0', '2', '7', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '12.900000', '0.000000', '', '0.000000', '0.00', 'demo_8', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '28', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('17', '0', '2', '7', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '12.900000', '0.000000', '', '0.000000', '0.00', 'demo_9', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '32', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('18', '0', '2', '7', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '12.900000', '0.000000', '', '0.000000', '0.00', 'demo_10', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '36', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');
INSERT INTO `ps_product` VALUES ('19', '0', '1', '8', '1', '1', '0', '0', '', '', '', '0.000000', '0', '1', null, '0', '13.900000', '0.000000', '', '0.000000', '0.00', 'demo_14', '', '', '0.000000', '0.000000', '0.000000', '0.000000', '2', '1', '0', '1', '0', '1', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '3', '1');

-- ----------------------------
-- Table structure for `ps_product_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_attachment`;
CREATE TABLE `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `ps_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_attribute`;
CREATE TABLE `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(64) DEFAULT NULL,
  `supplier_reference` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) unsigned DEFAULT NULL,
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL,
  PRIMARY KEY (`id_product_attribute`),
  UNIQUE KEY `product_default` (`id_product`,`default_on`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_attribute
-- ----------------------------
INSERT INTO `ps_product_attribute` VALUES ('1', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('2', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('3', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('4', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('5', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('6', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('7', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('8', '1', 'demo_1', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('9', '2', 'demo_3', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('10', '2', 'demo_3', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('11', '2', 'demo_3', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('12', '2', 'demo_3', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('13', '3', 'demo_6', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '0', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('14', '3', 'demo_6', '', '', '', '', '', '0.000000', '20.000000', '0.000000', '0', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('15', '3', 'demo_6', '', '', '', '', '', '0.000000', '50.000000', '0.000000', '0', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('16', '4', 'demo_5', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('17', '4', 'demo_5', '', '', '', '', '', '0.000000', '20.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('18', '4', 'demo_5', '', '', '', '', '', '0.000000', '50.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('19', '5', 'demo_7', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('20', '5', 'demo_7', '', '', '', '', '', '0.000000', '20.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('21', '5', 'demo_7', '', '', '', '', '', '0.000000', '50.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('22', '9', 'demo_15', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '0', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('23', '9', 'demo_15', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '0', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('24', '10', 'demo_16', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('25', '10', 'demo_16', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('26', '11', 'demo_17', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('27', '11', 'demo_17', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('28', '16', 'demo_8', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('29', '16', 'demo_8', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('30', '16', 'demo_8', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('31', '16', 'demo_8', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('32', '17', 'demo_9', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('33', '17', 'demo_9', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('34', '17', 'demo_9', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('35', '17', 'demo_9', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('36', '18', 'demo_10', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('37', '18', 'demo_10', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('38', '18', 'demo_10', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute` VALUES ('39', '18', 'demo_10', '', '', '', '', '', '0.000000', '0.000000', '0.000000', '300', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');

-- ----------------------------
-- Table structure for `ps_product_attribute_combination`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_attribute_combination`;
CREATE TABLE `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_attribute_combination
-- ----------------------------
INSERT INTO `ps_product_attribute_combination` VALUES ('1', '1');
INSERT INTO `ps_product_attribute_combination` VALUES ('8', '1');
INSERT INTO `ps_product_attribute_combination` VALUES ('1', '2');
INSERT INTO `ps_product_attribute_combination` VALUES ('11', '2');
INSERT INTO `ps_product_attribute_combination` VALUES ('2', '3');
INSERT INTO `ps_product_attribute_combination` VALUES ('8', '3');
INSERT INTO `ps_product_attribute_combination` VALUES ('2', '4');
INSERT INTO `ps_product_attribute_combination` VALUES ('11', '4');
INSERT INTO `ps_product_attribute_combination` VALUES ('3', '5');
INSERT INTO `ps_product_attribute_combination` VALUES ('8', '5');
INSERT INTO `ps_product_attribute_combination` VALUES ('3', '6');
INSERT INTO `ps_product_attribute_combination` VALUES ('11', '6');
INSERT INTO `ps_product_attribute_combination` VALUES ('4', '7');
INSERT INTO `ps_product_attribute_combination` VALUES ('8', '7');
INSERT INTO `ps_product_attribute_combination` VALUES ('4', '8');
INSERT INTO `ps_product_attribute_combination` VALUES ('11', '8');
INSERT INTO `ps_product_attribute_combination` VALUES ('1', '9');
INSERT INTO `ps_product_attribute_combination` VALUES ('2', '10');
INSERT INTO `ps_product_attribute_combination` VALUES ('3', '11');
INSERT INTO `ps_product_attribute_combination` VALUES ('4', '12');
INSERT INTO `ps_product_attribute_combination` VALUES ('19', '13');
INSERT INTO `ps_product_attribute_combination` VALUES ('20', '14');
INSERT INTO `ps_product_attribute_combination` VALUES ('21', '15');
INSERT INTO `ps_product_attribute_combination` VALUES ('19', '16');
INSERT INTO `ps_product_attribute_combination` VALUES ('20', '17');
INSERT INTO `ps_product_attribute_combination` VALUES ('21', '18');
INSERT INTO `ps_product_attribute_combination` VALUES ('19', '19');
INSERT INTO `ps_product_attribute_combination` VALUES ('20', '20');
INSERT INTO `ps_product_attribute_combination` VALUES ('21', '21');
INSERT INTO `ps_product_attribute_combination` VALUES ('8', '22');
INSERT INTO `ps_product_attribute_combination` VALUES ('11', '23');
INSERT INTO `ps_product_attribute_combination` VALUES ('8', '24');
INSERT INTO `ps_product_attribute_combination` VALUES ('11', '25');
INSERT INTO `ps_product_attribute_combination` VALUES ('8', '26');
INSERT INTO `ps_product_attribute_combination` VALUES ('11', '27');
INSERT INTO `ps_product_attribute_combination` VALUES ('22', '28');
INSERT INTO `ps_product_attribute_combination` VALUES ('23', '29');
INSERT INTO `ps_product_attribute_combination` VALUES ('24', '30');
INSERT INTO `ps_product_attribute_combination` VALUES ('25', '31');
INSERT INTO `ps_product_attribute_combination` VALUES ('22', '32');
INSERT INTO `ps_product_attribute_combination` VALUES ('23', '33');
INSERT INTO `ps_product_attribute_combination` VALUES ('24', '34');
INSERT INTO `ps_product_attribute_combination` VALUES ('25', '35');
INSERT INTO `ps_product_attribute_combination` VALUES ('22', '36');
INSERT INTO `ps_product_attribute_combination` VALUES ('23', '37');
INSERT INTO `ps_product_attribute_combination` VALUES ('24', '38');
INSERT INTO `ps_product_attribute_combination` VALUES ('25', '39');

-- ----------------------------
-- Table structure for `ps_product_attribute_image`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_attribute_image`;
CREATE TABLE `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_attribute_image
-- ----------------------------
INSERT INTO `ps_product_attribute_image` VALUES ('9', '0');
INSERT INTO `ps_product_attribute_image` VALUES ('10', '0');
INSERT INTO `ps_product_attribute_image` VALUES ('11', '0');
INSERT INTO `ps_product_attribute_image` VALUES ('12', '0');
INSERT INTO `ps_product_attribute_image` VALUES ('2', '1');
INSERT INTO `ps_product_attribute_image` VALUES ('4', '1');
INSERT INTO `ps_product_attribute_image` VALUES ('6', '1');
INSERT INTO `ps_product_attribute_image` VALUES ('8', '1');
INSERT INTO `ps_product_attribute_image` VALUES ('1', '2');
INSERT INTO `ps_product_attribute_image` VALUES ('3', '2');
INSERT INTO `ps_product_attribute_image` VALUES ('5', '2');
INSERT INTO `ps_product_attribute_image` VALUES ('7', '2');
INSERT INTO `ps_product_attribute_image` VALUES ('13', '3');
INSERT INTO `ps_product_attribute_image` VALUES ('14', '3');
INSERT INTO `ps_product_attribute_image` VALUES ('15', '3');
INSERT INTO `ps_product_attribute_image` VALUES ('16', '4');
INSERT INTO `ps_product_attribute_image` VALUES ('17', '4');
INSERT INTO `ps_product_attribute_image` VALUES ('18', '4');
INSERT INTO `ps_product_attribute_image` VALUES ('19', '5');
INSERT INTO `ps_product_attribute_image` VALUES ('20', '5');
INSERT INTO `ps_product_attribute_image` VALUES ('21', '5');
INSERT INTO `ps_product_attribute_image` VALUES ('23', '9');
INSERT INTO `ps_product_attribute_image` VALUES ('22', '10');
INSERT INTO `ps_product_attribute_image` VALUES ('25', '11');
INSERT INTO `ps_product_attribute_image` VALUES ('24', '12');
INSERT INTO `ps_product_attribute_image` VALUES ('27', '13');
INSERT INTO `ps_product_attribute_image` VALUES ('26', '14');
INSERT INTO `ps_product_attribute_image` VALUES ('28', '18');
INSERT INTO `ps_product_attribute_image` VALUES ('29', '18');
INSERT INTO `ps_product_attribute_image` VALUES ('30', '18');
INSERT INTO `ps_product_attribute_image` VALUES ('31', '18');
INSERT INTO `ps_product_attribute_image` VALUES ('32', '19');
INSERT INTO `ps_product_attribute_image` VALUES ('33', '19');
INSERT INTO `ps_product_attribute_image` VALUES ('34', '19');
INSERT INTO `ps_product_attribute_image` VALUES ('35', '19');
INSERT INTO `ps_product_attribute_image` VALUES ('36', '20');
INSERT INTO `ps_product_attribute_image` VALUES ('37', '20');
INSERT INTO `ps_product_attribute_image` VALUES ('38', '20');
INSERT INTO `ps_product_attribute_image` VALUES ('39', '20');

-- ----------------------------
-- Table structure for `ps_product_attribute_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_attribute_shop`;
CREATE TABLE `ps_product_attribute_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) unsigned DEFAULT NULL,
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`default_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_attribute_shop
-- ----------------------------
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '1', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '2', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '3', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '4', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '5', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '6', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '7', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('1', '8', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('2', '9', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('2', '10', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('2', '11', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('2', '12', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('3', '13', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('3', '14', '1', '0.000000', '20.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('3', '15', '1', '0.000000', '50.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('4', '16', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('4', '17', '1', '0.000000', '20.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('4', '18', '1', '0.000000', '50.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('5', '19', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('5', '20', '1', '0.000000', '20.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('5', '21', '1', '0.000000', '50.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('9', '22', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('9', '23', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('10', '24', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('10', '25', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('11', '26', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('11', '27', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('16', '28', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('16', '29', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('16', '30', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('16', '31', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('17', '32', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('17', '33', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('17', '34', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('17', '35', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('18', '36', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '1', '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('18', '37', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('18', '38', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');
INSERT INTO `ps_product_attribute_shop` VALUES ('18', '39', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', null, '1', null, '0', '0000-00-00');

-- ----------------------------
-- Table structure for `ps_product_carrier`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_carrier`;
CREATE TABLE `ps_product_carrier` (
  `id_product` int(10) unsigned NOT NULL,
  `id_carrier_reference` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_carrier
-- ----------------------------

-- ----------------------------
-- Table structure for `ps_product_country_tax`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_country_tax`;
CREATE TABLE `ps_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_country_tax
-- ----------------------------

-- ----------------------------
-- Table structure for `ps_product_download`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_download`;
CREATE TABLE `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`),
  UNIQUE KEY `id_product` (`id_product`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_download
-- ----------------------------

-- ----------------------------
-- Table structure for `ps_product_group_reduction_cache`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_group_reduction_cache`;
CREATE TABLE `ps_product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_group_reduction_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `ps_product_lang`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_lang`;
CREATE TABLE `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  `delivery_in_stock` varchar(255) DEFAULT NULL,
  `delivery_out_stock` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_lang
-- ----------------------------
INSERT INTO `ps_product_lang` VALUES ('1', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"><span style=\"font-size:10pt;font-family:Arial;font-style:normal;color:#efefef;\">Symbol of lightness and delicacy, the hummingbird evokes curiosity and joy.</span><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"> Studio Design\' PolyFaune collection features classic products with colorful patterns, inspired by the traditional japanese origamis. To wear with a chino or jeans. The sublimation textile printing process provides an exceptional color rendering and a color, guaranteed overtime.</span></span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Regular fit, round neckline, short sleeves. Made of extra long staple pima cotton. </span></p>\r\n<p></p>', 'hummingbird-printed-t-shirt', '', '', '', 'Hummingbird printed t-shirt', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('1', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"><span style=\"font-size:10pt;font-family:Arial;font-style:normal;color:#efefef;\">Symbol of lightness and delicacy, the hummingbird evokes curiosity and joy.</span><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"> Studio Design\' PolyFaune collection features classic products with colorful patterns, inspired by the traditional japanese origamis. To wear with a chino or jeans. The sublimation textile printing process provides an exceptional color rendering and a color, guaranteed overtime.</span></span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Regular fit, round neckline, short sleeves. Made of extra long staple pima cotton. </span></p>\r\n<p></p>', 'hummingbird-printed-t-shirt', '', '', '', 'Hummingbird printed t-shirt', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('2', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Studio Design\' PolyFaune collection features classic products with colorful patterns, inspired by the traditional japanese origamis. To wear with a chino or jeans. The sublimation textile printing process provides an exceptional color rendering and a color, guaranteed overtime.</span></span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort. </span></p>', 'brown-bear-printed-sweater', '', '', '', 'Hummingbird printed sweater', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('2', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Studio Design\' PolyFaune collection features classic products with colorful patterns, inspired by the traditional japanese origamis. To wear with a chino or jeans. The sublimation textile printing process provides an exceptional color rendering and a color, guaranteed overtime.</span></span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort. </span></p>', 'brown-bear-printed-sweater', '', '', '', 'Hummingbird printed sweater', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('3', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Give your walls a voice with a framed poster. This aesthethic, optimistic poster will look great in your desk or in an open-space office. Painted wooden frame with passe-partout for more depth.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">Printed on rigid matt paper and smooth surface.</span></p>', 'the-best-is-yet-to-come-framed-poster', '', '', '', 'The best is yet to come\' Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('3', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Give your walls a voice with a framed poster. This aesthethic, optimistic poster will look great in your desk or in an open-space office. Painted wooden frame with passe-partout for more depth.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">Printed on rigid matt paper and smooth surface.</span></p>', 'the-best-is-yet-to-come-framed-poster', '', '', '', 'The best is yet to come\' Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('4', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Give your walls a voice with a framed poster. This aesthethic, optimistic poster will look great in your desk or in an open-space office. Painted wooden frame with passe-partout for more depth.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">Printed on rigid matt finish and smooth surface.</span></p>', 'the-adventure-begins-framed-poster', '', '', '', 'The adventure begins Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('4', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Give your walls a voice with a framed poster. This aesthethic, optimistic poster will look great in your desk or in an open-space office. Painted wooden frame with passe-partout for more depth.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">Printed on rigid matt finish and smooth surface.</span></p>', 'the-adventure-begins-framed-poster', '', '', '', 'The adventure begins Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('5', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Give your walls a voice with a framed poster. This aesthethic, optimistic poster will look great in your desk or in an open-space office. Painted wooden frame with passe-partout for more depth.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">Printed on rigid paper with matt finish and smooth surface.</span></p>', 'today-is-a-good-day-framed-poster', '', '', '', 'Today is a good day Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('5', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Give your walls a voice with a framed poster. This aesthethic, optimistic poster will look great in your desk or in an open-space office. Painted wooden frame with passe-partout for more depth.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">Printed on rigid paper with matt finish and smooth surface.</span></p>', 'today-is-a-good-day-framed-poster', '', '', '', 'Today is a good day Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('6', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Start the day off right with a positive thought. 8,2cm diameter / 9,5cm height / 0.43kg. Dishwasher-proof.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug, 325ml.</span></p>', 'mug-the-best-is-yet-to-come', '', '', '', 'Mug The best is yet to come', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('6', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The best is yet to come! Start the day off right with a positive thought. 8,2cm diameter / 9,5cm height / 0.43kg. Dishwasher-proof.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug, 325ml.</span></p>', 'mug-the-best-is-yet-to-come', '', '', '', 'Mug The best is yet to come', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('7', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The adventure begins with a cup of coffee. Set out to conquer the day! 8,2cm diameter / 9,5cm height / 0.43kg. Dishwasher-proof.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug. 325ml</span></p>', 'mug-the-adventure-begins', '', '', '', 'Mug The adventure begins', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('7', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The adventure begins with a cup of coffee. Set out to conquer the day! 8,2cm diameter / 9,5cm height / 0.43kg. Dishwasher-proof.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug. 325ml</span></p>', 'mug-the-adventure-begins', '', '', '', 'Mug The adventure begins', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('8', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Add an optimistic touch to your morning coffee and start the day in a good mood! 8,2cm diameter / 9,5cm height / 0.43kg. Dishwasher-proof.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug. 325ml</span></p>', 'mug-today-is-a-good-day', '', '', '', 'Mug Today is a good day', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('8', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Add an optimistic touch to your morning coffee and start the day in a good mood! 8,2cm diameter / 9,5cm height / 0.43kg. Dishwasher-proof.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug. 325ml</span></p>', 'mug-today-is-a-good-day', '', '', '', 'Mug Today is a good day', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('9', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">The mountain fox cushion will add a graphic and colorful touch to your sofa, armchair or bed. Create a modern and zen atmosphere that inspires relaxation. Cover 100% cotton, machine washable at 60° / Filling 100% hypoallergenic polyester.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Cushion with removable cover and invisible zip on the back. 32x32cm</span></p>', 'mountain-fox-cushion', '', '', '', 'Mountain fox cushion', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('9', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">The mountain fox cushion will add a graphic and colorful touch to your sofa, armchair or bed. Create a modern and zen atmosphere that inspires relaxation. Cover 100% cotton, machine washable at 60° / Filling 100% hypoallergenic polyester.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Cushion with removable cover and invisible zip on the back. 32x32cm</span></p>', 'mountain-fox-cushion', '', '', '', 'Mountain fox cushion', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('10', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">The brown bear cushion will add a graphic and colorful touch to your sofa, armchair or bed. Create a modern and zen atmosphere that inspires relaxation. Cover 100% cotton, machine washable at 60° / Filling 100% hypoallergenic polyester.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Cushion with removable cover and invisible zip on the back. 32x32cm</span></p>', 'brown-bear-cushion', '', '', '', 'Brown bear cushion', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('10', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">The brown bear cushion will add a graphic and colorful touch to your sofa, armchair or bed. Create a modern and zen atmosphere that inspires relaxation. Cover 100% cotton, machine washable at 60° / Filling 100% hypoallergenic polyester.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Cushion with removable cover and invisible zip on the back. 32x32cm</span></p>', 'brown-bear-cushion', '', '', '', 'Brown bear cushion', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('11', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">The hummingbird cushion will add a graphic and colorful touch to your sofa, armchair or bed. Create a modern and zen atmosphere that inspires relaxation. Cover 100% cotton, machine washable at 60° / Filling 100% hypoallergenic polyester.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Cushion with removable cover and invisible zip on the back. 32x32cm</span></p>', 'hummingbird-cushion', '', '', '', 'Hummingbird cushion', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('11', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-weight:normal;font-style:normal;color:#000000;\">The hummingbird cushion will add a graphic and colorful touch to your sofa, armchair or bed. Create a modern and zen atmosphere that inspires relaxation. Cover 100% cotton, machine washable at 60° / Filling 100% hypoallergenic polyester.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Cushion with removable cover and invisible zip on the back. 32x32cm</span></p>', 'hummingbird-cushion', '', '', '', 'Hummingbird cushion', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('12', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">You have a custom printing creative project? The vector graphic Mountain fox illustration can be used for printing purpose on any support, without size limitation. </span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Vector graphic, format: svg. Download for personal, private and non-commercial use.</span></p>', 'mountain-fox-vector-graphics', '', '', '', 'Mountain fox - Vector graphics', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('12', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">You have a custom printing creative project? The vector graphic Mountain fox illustration can be used for printing purpose on any support, without size limitation. </span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Vector graphic, format: svg. Download for personal, private and non-commercial use.</span></p>', 'mountain-fox-vector-graphics', '', '', '', 'Mountain fox - Vector graphics', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('13', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">You have a custom printing creative project? The vector graphic Mountain fox illustration can be used for printing purpose on any support, without size limitation. </span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Vector graphic, format: svg. Download for personal, private and non-commercial use.</span></p>', 'brown-bear-vector-graphics', '', '', '', 'Brown bear - Vector graphics', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('13', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">You have a custom printing creative project? The vector graphic Mountain fox illustration can be used for printing purpose on any support, without size limitation. </span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Vector graphic, format: svg. Download for personal, private and non-commercial use.</span></p>', 'brown-bear-vector-graphics', '', '', '', 'Brown bear - Vector graphics', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('14', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">You have a custom printing creative project? The vector graphic Mountain fox illustration can be used for printing purpose on any support, without size limitation. </span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Vector graphic, format: svg. Download for personal, private and non-commercial use.</span></p>', 'hummingbird-vector-graphics', '', '', '', 'Hummingbird - Vector graphics', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('14', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">You have a custom printing creative project? The vector graphic Mountain fox illustration can be used for printing purpose on any support, without size limitation. </span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Vector graphic, format: svg. Download for personal, private and non-commercial use.</span></p>', 'hummingbird-vector-graphics', '', '', '', 'Hummingbird - Vector graphics', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('15', '1', '1', '', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Mug The Adventure Begins + Framed poster Today is a good day 40x60cm </span></p>', 'pack-mug-framed-poster', '', '', '', 'Pack Mug + Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('15', '1', '2', '', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Mug The Adventure Begins + Framed poster Today is a good day 40x60cm </span></p>', 'pack-mug-framed-poster', '', '', '', 'Pack Mug + Framed poster', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('16', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The Mountain fox notebook is the best option to write down your most ingenious ideas. At work, at home or when traveling, its endearing design and manufacturing quality will make you feel like writing! 90 gsm paper / double spiral binding.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">120 sheets notebook with hard cover made of recycled cardboard. 16x22cm</span></p>', 'mountain-fox-notebook', '', '', '', 'Mountain fox notebook', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('16', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The Mountain fox notebook is the best option to write down your most ingenious ideas. At work, at home or when traveling, its endearing design and manufacturing quality will make you feel like writing! 90 gsm paper / double spiral binding.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">120 sheets notebook with hard cover made of recycled cardboard. 16x22cm</span></p>', 'mountain-fox-notebook', '', '', '', 'Mountain fox notebook', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('17', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The Mountain fox notebook is the best option to write down your most ingenious ideas. At work, at home or when traveling, its endearing design and manufacturing quality will make you feel like writing! 90 gsm paper / double spiral binding.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">120 sheets notebook with hard cover made of recycled cardboard. 16x22cm</span></p>', 'mountain-fox-notebook', '', '', '', 'Brown bear notebook', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('17', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The Mountain fox notebook is the best option to write down your most ingenious ideas. At work, at home or when traveling, its endearing design and manufacturing quality will make you feel like writing! 90 gsm paper / double spiral binding.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">120 sheets notebook with hard cover made of recycled cardboard. 16x22cm</span></p>', 'mountain-fox-notebook', '', '', '', 'Brown bear notebook', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('18', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The Mountain fox notebook is the best option to write down your most ingenious ideas. At work, at home or when traveling, its endearing design and manufacturing quality will make you feel like writing! 90 gsm paper / double spiral binding.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">120 sheets notebook with hard cover made of recycled cardboard. 16x22cm</span></p>', 'mountain-fox-notebook', '', '', '', 'Hummingbird notebook', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('18', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">The Mountain fox notebook is the best option to write down your most ingenious ideas. At work, at home or when traveling, its endearing design and manufacturing quality will make you feel like writing! 90 gsm paper / double spiral binding.</span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">120 sheets notebook with hard cover made of recycled cardboard. 16x22cm</span></p>', 'mountain-fox-notebook', '', '', '', 'Hummingbird notebook', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('19', '1', '1', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Customize your mug with the text of your choice. A mood, a message, a quote... It\'s up to you! Maximum number of characters:</span><span style=\"font-size:10pt;font-family:Arial;font-style:normal;color:#ff9900;\"> ---</span></span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug. 325ml</span></p>', 'customizable-mug', '', '', '', 'Customizable mug', '', '', '', '');
INSERT INTO `ps_product_lang` VALUES ('19', '1', '2', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\"><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Customize your mug with the text of your choice. A mood, a message, a quote... It\'s up to you! Maximum number of characters:</span><span style=\"font-size:10pt;font-family:Arial;font-style:normal;color:#ff9900;\"> ---</span></span></p>', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">White Ceramic Mug. 325ml</span></p>', 'customizable-mug', '', '', '', 'Customizable mug', '', '', '', '');

-- ----------------------------
-- Table structure for `ps_product_sale`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_sale`;
CREATE TABLE `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `quantity` (`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_sale
-- ----------------------------
INSERT INTO `ps_product_sale` VALUES ('1', '1', '1', '2019-01-08');
INSERT INTO `ps_product_sale` VALUES ('2', '1', '1', '2019-01-08');
INSERT INTO `ps_product_sale` VALUES ('4', '2', '1', '2019-01-08');
INSERT INTO `ps_product_sale` VALUES ('8', '1', '1', '2019-01-08');
INSERT INTO `ps_product_sale` VALUES ('10', '1', '1', '2019-01-08');
INSERT INTO `ps_product_sale` VALUES ('16', '2', '2', '2019-01-08');

-- ----------------------------
-- Table structure for `ps_product_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_shop`;
CREATE TABLE `ps_product_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301-product','302-product','301-category','302-category') NOT NULL DEFAULT '',
  `id_type_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date DEFAULT NULL,
  `show_condition` tinyint(1) NOT NULL DEFAULT '1',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `pack_stock_type` int(11) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`,`active`,`visibility`),
  KEY `indexed` (`indexed`,`active`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_shop
-- ----------------------------
INSERT INTO `ps_product_shop` VALUES ('1', '1', '4', '1', '0', '0', '0.000000', '1', null, '0', '23.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '1', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('2', '1', '5', '1', '0', '0', '0.000000', '1', null, '0', '35.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '404', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '9', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('3', '1', '9', '1', '0', '0', '0.000000', '1', null, '0', '29.000000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '13', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('4', '1', '9', '1', '0', '0', '0.000000', '1', null, '0', '29.000000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '404', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '16', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('5', '1', '9', '1', '0', '0', '0.000000', '1', null, '0', '29.000000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '19', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('6', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '11.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('7', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '11.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('8', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '11.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '404', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('9', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '18.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '22', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('10', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '18.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '24', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('11', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '18.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '26', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('12', '1', '9', '1', '0', '0', '0.000000', '1', null, '0', '9.000000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('13', '1', '9', '1', '0', '0', '0.000000', '1', null, '0', '9.000000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('14', '1', '9', '1', '0', '0', '0.000000', '1', null, '0', '9.000000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('15', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '35.000000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('16', '1', '7', '1', '0', '0', '0.000000', '1', null, '0', '12.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '28', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('17', '1', '7', '1', '0', '0', '0.000000', '1', null, '0', '12.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '32', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('18', '1', '7', '1', '0', '0', '0.000000', '1', null, '0', '12.900000', '0.000000', '', '0.000000', '0.00', '0', '0', '0', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '36', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');
INSERT INTO `ps_product_shop` VALUES ('19', '1', '8', '1', '0', '0', '0.000000', '1', null, '0', '13.900000', '0.000000', '', '0.000000', '0.00', '1', '0', '1', '1', '301-category', '0', '1', '0000-00-00', '0', 'new', '1', '1', 'both', '0', '0', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '3');

-- ----------------------------
-- Table structure for `ps_product_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_supplier`;
CREATE TABLE `ps_product_supplier` (
  `id_product_supplier` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(11) unsigned NOT NULL,
  `product_supplier_reference` varchar(64) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`),
  KEY `id_supplier` (`id_supplier`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for `ps_product_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ps_product_tag`;
CREATE TABLE `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`),
  KEY `id_lang` (`id_lang`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_product_tag
-- ----------------------------
