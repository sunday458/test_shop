/*
Navicat MySQL Data Transfer

Source Server         : 47.52.100.242@mine
Source Server Version : 50640
Source Host           : 47.52.100.242:3306
Source Database       : prestashop

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-06-25 09:23:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ps_category`
-- ----------------------------
DROP TABLE IF EXISTS `ps_category`;
CREATE TABLE `ps_category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `activenleft` (`active`,`nleft`),
  KEY `activenright` (`active`,`nright`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_category
-- ----------------------------
INSERT INTO `ps_category` VALUES ('1', '0', '1', '0', '1', '18', '1', '2019-01-08 10:01:36', '2019-01-08 10:01:36', '0', '0');
INSERT INTO `ps_category` VALUES ('2', '1', '1', '1', '2', '17', '1', '2019-01-08 10:01:36', '2019-01-08 10:01:36', '0', '1');
INSERT INTO `ps_category` VALUES ('3', '2', '1', '2', '3', '8', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '0');
INSERT INTO `ps_category` VALUES ('4', '3', '1', '3', '4', '5', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '0');
INSERT INTO `ps_category` VALUES ('5', '3', '1', '3', '6', '7', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '0');
INSERT INTO `ps_category` VALUES ('6', '2', '1', '2', '9', '14', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '0');
INSERT INTO `ps_category` VALUES ('7', '6', '1', '3', '10', '11', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '0');
INSERT INTO `ps_category` VALUES ('8', '6', '1', '3', '12', '13', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '0');
INSERT INTO `ps_category` VALUES ('9', '2', '1', '2', '15', '16', '1', '2019-01-08 10:01:40', '2019-01-08 10:01:40', '0', '0');

-- ----------------------------
-- Table structure for `ps_category_group`
-- ----------------------------
DROP TABLE IF EXISTS `ps_category_group`;
CREATE TABLE `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_category_group
-- ----------------------------
INSERT INTO `ps_category_group` VALUES ('2', '0');
INSERT INTO `ps_category_group` VALUES ('2', '1');
INSERT INTO `ps_category_group` VALUES ('2', '2');
INSERT INTO `ps_category_group` VALUES ('2', '3');
INSERT INTO `ps_category_group` VALUES ('3', '1');
INSERT INTO `ps_category_group` VALUES ('3', '2');
INSERT INTO `ps_category_group` VALUES ('3', '3');
INSERT INTO `ps_category_group` VALUES ('4', '1');
INSERT INTO `ps_category_group` VALUES ('4', '2');
INSERT INTO `ps_category_group` VALUES ('4', '3');
INSERT INTO `ps_category_group` VALUES ('5', '1');
INSERT INTO `ps_category_group` VALUES ('5', '2');
INSERT INTO `ps_category_group` VALUES ('5', '3');
INSERT INTO `ps_category_group` VALUES ('6', '1');
INSERT INTO `ps_category_group` VALUES ('6', '2');
INSERT INTO `ps_category_group` VALUES ('6', '3');
INSERT INTO `ps_category_group` VALUES ('7', '1');
INSERT INTO `ps_category_group` VALUES ('7', '2');
INSERT INTO `ps_category_group` VALUES ('7', '3');
INSERT INTO `ps_category_group` VALUES ('8', '1');
INSERT INTO `ps_category_group` VALUES ('8', '2');
INSERT INTO `ps_category_group` VALUES ('8', '3');
INSERT INTO `ps_category_group` VALUES ('9', '1');
INSERT INTO `ps_category_group` VALUES ('9', '2');
INSERT INTO `ps_category_group` VALUES ('9', '3');

-- ----------------------------
-- Table structure for `ps_category_lang`
-- ----------------------------
DROP TABLE IF EXISTS `ps_category_lang`;
CREATE TABLE `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_category_lang
-- ----------------------------
INSERT INTO `ps_category_lang` VALUES ('1', '1', '1', 'Root', '', 'root', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('1', '1', '2', 'Root', '', 'root', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('2', '1', '1', '主页', '', '主页', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('2', '1', '2', 'Home', '', 'home', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('3', '1', '1', 'Clothes', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Discover our favorites fashionable discoveries, a selection of cool items to integrate in your wardrobe. Compose a unique style with personality which matches your own.</span></p>', 'clothes', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('3', '1', '2', 'Clothes', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Discover our favorites fashionable discoveries, a selection of cool items to integrate in your wardrobe. Compose a unique style with personality which matches your own.</span></p>', 'clothes', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('4', '1', '1', 'Men', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">T-shirts, sweaters, hoodies and men\'s accessories. From basics to original creations, for every style. </span></p>', 'men', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('4', '1', '2', 'Men', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">T-shirts, sweaters, hoodies and men\'s accessories. From basics to original creations, for every style. </span></p>', 'men', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('5', '1', '1', 'Women', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">T-shirts, sweaters, hoodies and women\'s accessories. From basics to original creations, for every style. </span></p>', 'women', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('5', '1', '2', 'Women', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">T-shirts, sweaters, hoodies and women\'s accessories. From basics to original creations, for every style. </span></p>', 'women', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('6', '1', '1', '配件', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Items and accessories for your desk, kitchen or living room. Make your house a home with our eye-catching designs. </span></p>', 'accessories', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('6', '1', '2', 'Accessories', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Items and accessories for your desk, kitchen or living room. Make your house a home with our eye-catching designs. </span></p>', 'accessories', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('7', '1', '1', 'Stationery', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Notebooks, agendas, office accessories and more. Everything you need to combine the pleasant and the useful, either at work or at home. </span></p>', 'stationery', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('7', '1', '2', 'Stationery', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Notebooks, agendas, office accessories and more. Everything you need to combine the pleasant and the useful, either at work or at home. </span></p>', 'stationery', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('8', '1', '1', 'Home Accessories', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Details matter! Liven up your interior with our selection of home accessories. </span></p>', 'home-accessories', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('8', '1', '2', 'Home Accessories', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;\">Details matter! Liven up your interior with our selection of home accessories. </span></p>', 'home-accessories', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('9', '1', '1', 'Art', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;color:#000000;\">Framed poster and vector images, all you need to give personality to your walls or bring your creative projects to life.</span></p>', 'art', '', '', '');
INSERT INTO `ps_category_lang` VALUES ('9', '1', '2', 'Art', '<p><span style=\"font-size:10pt;font-family:Arial;font-style:normal;color:#000000;\">Framed poster and vector images, all you need to give personality to your walls or bring your creative projects to life.</span></p>', 'art', '', '', '');

-- ----------------------------
-- Table structure for `ps_category_product`
-- ----------------------------
DROP TABLE IF EXISTS `ps_category_product`;
CREATE TABLE `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`),
  KEY `id_category` (`id_category`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_category_product
-- ----------------------------
INSERT INTO `ps_category_product` VALUES ('2', '1', '1');
INSERT INTO `ps_category_product` VALUES ('2', '2', '2');
INSERT INTO `ps_category_product` VALUES ('2', '3', '3');
INSERT INTO `ps_category_product` VALUES ('2', '4', '4');
INSERT INTO `ps_category_product` VALUES ('2', '5', '5');
INSERT INTO `ps_category_product` VALUES ('2', '6', '6');
INSERT INTO `ps_category_product` VALUES ('2', '7', '7');
INSERT INTO `ps_category_product` VALUES ('2', '8', '8');
INSERT INTO `ps_category_product` VALUES ('2', '9', '9');
INSERT INTO `ps_category_product` VALUES ('2', '10', '10');
INSERT INTO `ps_category_product` VALUES ('2', '11', '11');
INSERT INTO `ps_category_product` VALUES ('2', '12', '12');
INSERT INTO `ps_category_product` VALUES ('2', '13', '13');
INSERT INTO `ps_category_product` VALUES ('2', '14', '14');
INSERT INTO `ps_category_product` VALUES ('2', '15', '15');
INSERT INTO `ps_category_product` VALUES ('2', '16', '16');
INSERT INTO `ps_category_product` VALUES ('2', '17', '17');
INSERT INTO `ps_category_product` VALUES ('2', '18', '18');
INSERT INTO `ps_category_product` VALUES ('2', '19', '19');
INSERT INTO `ps_category_product` VALUES ('3', '1', '1');
INSERT INTO `ps_category_product` VALUES ('3', '2', '2');
INSERT INTO `ps_category_product` VALUES ('4', '1', '1');
INSERT INTO `ps_category_product` VALUES ('5', '2', '1');
INSERT INTO `ps_category_product` VALUES ('6', '7', '1');
INSERT INTO `ps_category_product` VALUES ('6', '6', '2');
INSERT INTO `ps_category_product` VALUES ('6', '8', '3');
INSERT INTO `ps_category_product` VALUES ('6', '10', '4');
INSERT INTO `ps_category_product` VALUES ('6', '9', '5');
INSERT INTO `ps_category_product` VALUES ('6', '11', '6');
INSERT INTO `ps_category_product` VALUES ('6', '15', '7');
INSERT INTO `ps_category_product` VALUES ('6', '16', '8');
INSERT INTO `ps_category_product` VALUES ('6', '17', '9');
INSERT INTO `ps_category_product` VALUES ('6', '18', '10');
INSERT INTO `ps_category_product` VALUES ('6', '19', '11');
INSERT INTO `ps_category_product` VALUES ('7', '16', '1');
INSERT INTO `ps_category_product` VALUES ('7', '17', '2');
INSERT INTO `ps_category_product` VALUES ('7', '18', '3');
INSERT INTO `ps_category_product` VALUES ('8', '6', '1');
INSERT INTO `ps_category_product` VALUES ('8', '7', '2');
INSERT INTO `ps_category_product` VALUES ('8', '8', '3');
INSERT INTO `ps_category_product` VALUES ('8', '9', '4');
INSERT INTO `ps_category_product` VALUES ('8', '10', '5');
INSERT INTO `ps_category_product` VALUES ('8', '11', '6');
INSERT INTO `ps_category_product` VALUES ('8', '15', '7');
INSERT INTO `ps_category_product` VALUES ('8', '19', '8');
INSERT INTO `ps_category_product` VALUES ('9', '3', '1');
INSERT INTO `ps_category_product` VALUES ('9', '4', '2');
INSERT INTO `ps_category_product` VALUES ('9', '5', '3');
INSERT INTO `ps_category_product` VALUES ('9', '12', '4');
INSERT INTO `ps_category_product` VALUES ('9', '13', '5');
INSERT INTO `ps_category_product` VALUES ('9', '14', '6');
INSERT INTO `ps_category_product` VALUES ('9', '15', '7');

-- ----------------------------
-- Table structure for `ps_category_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ps_category_shop`;
CREATE TABLE `ps_category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ps_category_shop
-- ----------------------------
INSERT INTO `ps_category_shop` VALUES ('1', '1', '0');
INSERT INTO `ps_category_shop` VALUES ('2', '1', '0');
INSERT INTO `ps_category_shop` VALUES ('3', '1', '0');
INSERT INTO `ps_category_shop` VALUES ('4', '1', '0');
INSERT INTO `ps_category_shop` VALUES ('5', '1', '1');
INSERT INTO `ps_category_shop` VALUES ('6', '1', '1');
INSERT INTO `ps_category_shop` VALUES ('7', '1', '0');
INSERT INTO `ps_category_shop` VALUES ('8', '1', '1');
INSERT INTO `ps_category_shop` VALUES ('9', '1', '2');
