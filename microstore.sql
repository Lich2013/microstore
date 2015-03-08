/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : microstore

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-03-08 17:32:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'Lich', 'e0f13a9110ec1a3df4f8eda9f78908c2');

-- ----------------------------
-- Table structure for blackstore
-- ----------------------------
DROP TABLE IF EXISTS `blackstore`;
CREATE TABLE `blackstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin_store_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blackstore
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '衣服');
INSERT INTO `goods` VALUES ('2', '裤子');
INSERT INTO `goods` VALUES ('3', '生活用品');

-- ----------------------------
-- Table structure for index
-- ----------------------------
DROP TABLE IF EXISTS `index`;
CREATE TABLE `index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of index
-- ----------------------------

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce` varchar(301) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('12', '重庆工商大学');
INSERT INTO `school` VALUES ('2', '重庆大学');
INSERT INTO `school` VALUES ('11', '重庆交通大学');
INSERT INTO `school` VALUES ('10', '重庆邮电大学');
INSERT INTO `school` VALUES ('6', '西南大学');
INSERT INTO `school` VALUES ('7', '西南政法大学');
INSERT INTO `school` VALUES ('8', '重庆医科大学');
INSERT INTO `school` VALUES ('9', '重庆师范大学');
INSERT INTO `school` VALUES ('13', '重庆理工大学');
INSERT INTO `school` VALUES ('14', '四川外国语大学');
INSERT INTO `school` VALUES ('15', '四川美术学院');
INSERT INTO `school` VALUES ('16', '重庆三峡学院');
INSERT INTO `school` VALUES ('17', '重庆文理学院');
INSERT INTO `school` VALUES ('18', '长江师范学院');
INSERT INTO `school` VALUES ('19', '重庆科技学院');
INSERT INTO `school` VALUES ('20', '重庆第二师范学院');
INSERT INTO `school` VALUES ('21', '重庆警察学院');
INSERT INTO `school` VALUES ('22', '重庆电力高等专');
INSERT INTO `school` VALUES ('23', '重庆医药高等专科学校');
INSERT INTO `school` VALUES ('24', '重庆三峡医药高等专科学校');
INSERT INTO `school` VALUES ('25', '重庆航天职业技术学院');
INSERT INTO `school` VALUES ('26', '重庆电子工程职业学院');
INSERT INTO `school` VALUES ('27', '重庆工业职业技术学院');
INSERT INTO `school` VALUES ('28', '重庆城市管理职业学院');
INSERT INTO `school` VALUES ('29', '重庆工程职业技术学院');
INSERT INTO `school` VALUES ('30', '重庆三峡职业学院');
INSERT INTO `school` VALUES ('31', '重庆工贸职业技术学院');
INSERT INTO `school` VALUES ('32', '重庆机电职业技术学院');
INSERT INTO `school` VALUES ('33', '重庆水利电力职业技术学院');
INSERT INTO `school` VALUES ('34', '重庆城市职业学院');
INSERT INTO `school` VALUES ('35', '重庆工商职业学院');
INSERT INTO `school` VALUES ('36', '重庆青年职业技术学院');
INSERT INTO `school` VALUES ('37', '重庆财经职业学院');
INSERT INTO `school` VALUES ('38', '重庆建筑工程职业学院');
INSERT INTO `school` VALUES ('39', '重庆商务职业学院');
INSERT INTO `school` VALUES ('40', '重庆人文科技学院');
INSERT INTO `school` VALUES ('41', '重庆师范大学涉外商贸学院');
INSERT INTO `school` VALUES ('42', '重庆工商大学融智学院');
INSERT INTO `school` VALUES ('43', '重庆工商大学派斯学院');
INSERT INTO `school` VALUES ('44', '川外南方翻译学院');
INSERT INTO `school` VALUES ('45', '重庆邮电大学移通学院');
INSERT INTO `school` VALUES ('46', '重庆大学城市科技学院');
INSERT INTO `school` VALUES ('47', '重庆工程学院');
INSERT INTO `school` VALUES ('48', '重庆信息技术职业学院');
INSERT INTO `school` VALUES ('49', '重庆海联职业技术学院');
INSERT INTO `school` VALUES ('50', '重庆房地产职业学院');
INSERT INTO `school` VALUES ('51', '重庆应用技术职业学院');
INSERT INTO `school` VALUES ('52', '重庆传媒职业学院');
INSERT INTO `school` VALUES ('53', '重庆科创职业学院');
INSERT INTO `school` VALUES ('54', '重庆能源职业学院');
INSERT INTO `school` VALUES ('55', '重庆交通职业学院');
INSERT INTO `school` VALUES ('56', '重庆化工职业学院');
INSERT INTO `school` VALUES ('57', '重庆电讯职业学院');
INSERT INTO `school` VALUES ('58', '重庆职工会计专科学校');
INSERT INTO `school` VALUES ('59', '重庆电信职业学院');
INSERT INTO `school` VALUES ('60', '重庆经贸职业学院');
INSERT INTO `school` VALUES ('61', '重庆艺术工程职业学院');
INSERT INTO `school` VALUES ('62', '重庆旅游职业学院');
INSERT INTO `school` VALUES ('63', '重庆公共运输职业学院');
INSERT INTO `school` VALUES ('64', '重庆安全技术职业学院');
INSERT INTO `school` VALUES ('65', '重庆轻工职业学院');
INSERT INTO `school` VALUES ('66', '其他');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `show_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `click_num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of store
-- ----------------------------

-- ----------------------------
-- Table structure for store_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_goods`;
CREATE TABLE `store_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for store_tag
-- ----------------------------
DROP TABLE IF EXISTS `store_tag`;
CREATE TABLE `store_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of store_tag
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `click_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of topic
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
