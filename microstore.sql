/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : microstore

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-04-14 01:41:09
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blackstore
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('44', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:14', '142');
INSERT INTO `comment` VALUES ('45', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:14', '142');
INSERT INTO `comment` VALUES ('46', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:14', '142');
INSERT INTO `comment` VALUES ('47', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:14', '142');
INSERT INTO `comment` VALUES ('48', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:14', '142');
INSERT INTO `comment` VALUES ('49', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:16', '142');
INSERT INTO `comment` VALUES ('50', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:16', '142');
INSERT INTO `comment` VALUES ('51', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:16', '142');
INSERT INTO `comment` VALUES ('52', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:16', '142');
INSERT INTO `comment` VALUES ('53', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:20', '142');
INSERT INTO `comment` VALUES ('54', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:20', '142');
INSERT INTO `comment` VALUES ('55', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:20', '142');
INSERT INTO `comment` VALUES ('56', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:20', '142');
INSERT INTO `comment` VALUES ('57', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:20', '142');
INSERT INTO `comment` VALUES ('58', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:21', '142');
INSERT INTO `comment` VALUES ('59', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:21', '142');
INSERT INTO `comment` VALUES ('60', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:21', '142');
INSERT INTO `comment` VALUES ('61', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:21', '142');
INSERT INTO `comment` VALUES ('62', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:21', '142');
INSERT INTO `comment` VALUES ('63', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:22', '142');
INSERT INTO `comment` VALUES ('64', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:22', '142');
INSERT INTO `comment` VALUES ('65', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:22', '142');
INSERT INTO `comment` VALUES ('66', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:22', '142');
INSERT INTO `comment` VALUES ('67', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:22', '142');
INSERT INTO `comment` VALUES ('68', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:22', '142');
INSERT INTO `comment` VALUES ('69', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:22', '142');
INSERT INTO `comment` VALUES ('70', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:23', '142');
INSERT INTO `comment` VALUES ('71', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:23', '142');
INSERT INTO `comment` VALUES ('72', '3681', '风雅颂', 'jhjhghjf', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:23', '142');
INSERT INTO `comment` VALUES ('73', '3681', '风雅颂', 'jhjhghjffghfghfd', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:04:24', '142');
INSERT INTO `comment` VALUES ('74', '3681', '风雅颂', 'jhjhghjffghfghfdfdgh234234234', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:05:35', '142');
INSERT INTO `comment` VALUES ('75', '3681', '风雅颂', 'jhjhghjffghfghfdfdgh234234234', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:06:05', '142');
INSERT INTO `comment` VALUES ('76', '3681', '风雅颂', 'jhjhghjffghfghfdfdgh234234234', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:06:05', '142');
INSERT INTO `comment` VALUES ('77', '3681', '风雅颂', 'jhjhghjffghfghfdfdgh234234234', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:06:05', '142');
INSERT INTO `comment` VALUES ('78', '3681', '风雅颂', 'jhjhghjffghfghfdfdgh234234234', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:06:06', '142');
INSERT INTO `comment` VALUES ('79', '3681', '风雅颂', 'jhjhghjffghfghfdfdgh234234234', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:06:06', '142');
INSERT INTO `comment` VALUES ('80', '3681', '风雅颂', '23r2323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:28', '142');
INSERT INTO `comment` VALUES ('81', '3681', '风雅颂', '23r2323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:30', '142');
INSERT INTO `comment` VALUES ('82', '3681', '风雅颂', '23r2323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:30', '142');
INSERT INTO `comment` VALUES ('83', '3681', '风雅颂', '23r2323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:31', '142');
INSERT INTO `comment` VALUES ('84', '3681', '风雅颂', '23r2323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:34', '142');
INSERT INTO `comment` VALUES ('85', '3681', '风雅颂', '23r2323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:35', '142');
INSERT INTO `comment` VALUES ('86', '3681', '风雅颂', '23r2323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:37', '142');
INSERT INTO `comment` VALUES ('87', '3681', '风雅颂', '23r23232112', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:07:55', '142');
INSERT INTO `comment` VALUES ('88', '3681', '风雅颂', '323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:10:44', '142');
INSERT INTO `comment` VALUES ('89', '3681', '风雅颂', '323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:13:02', '142');
INSERT INTO `comment` VALUES ('90', '3681', '风雅颂', '323', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:14:59', '142');
INSERT INTO `comment` VALUES ('91', '3681', '风雅颂', 'uiyuiyi', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:15:24', '142');
INSERT INTO `comment` VALUES ('92', '3681', '风雅颂', 'kl.kl.', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:16:36', '142');
INSERT INTO `comment` VALUES ('93', '3681', '风雅颂', 'jumumu', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:18:45', '142');
INSERT INTO `comment` VALUES ('94', '3681', '风雅颂', 'jumumubvbnnb', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:18:50', '142');
INSERT INTO `comment` VALUES ('95', '3681', '风雅颂', 'mhjmgjm', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:23:41', '142');
INSERT INTO `comment` VALUES ('96', '3681', '风雅颂', 'asdas', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:26:23', '142');
INSERT INTO `comment` VALUES ('97', '3681', '风雅颂', 'sdds', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:27:15', '142');
INSERT INTO `comment` VALUES ('98', '3681', '风雅颂', 'sb', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:32:56', '142');
INSERT INTO `comment` VALUES ('99', '3681', '风雅颂', '213213', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-09 21:35:08', '142');
INSERT INTO `comment` VALUES ('100', '3681', '风雅颂', 'adsfsdfas', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-10 17:42:25', '97');
INSERT INTO `comment` VALUES ('101', '3681', '风雅颂', 'qwe', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-10 20:07:22', '142');
INSERT INTO `comment` VALUES ('102', '3681', '风雅颂', '324234', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-10 20:39:05', '97');
INSERT INTO `comment` VALUES ('103', '3681', '风雅颂', 'qwe', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-10 20:40:15', '97');
INSERT INTO `comment` VALUES ('104', '3681', '风雅颂', '乔沃维奇', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-14 00:31:23', '164');
INSERT INTO `comment` VALUES ('105', '3681', '风雅颂', 'dwe', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6augsGBCceNlu9F0PjVOB3psTcNITwyf1Gl21oSiak7zaznTD8sx3vzARsMqsbPGEBBWjNy3GlOUw/0', '2015-04-14 01:39:25', '167');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '服装鞋包');
INSERT INTO `goods` VALUES ('2', '手机数码');
INSERT INTO `goods` VALUES ('3', '护肤彩妆');
INSERT INTO `goods` VALUES ('4', '技术外包');
INSERT INTO `goods` VALUES ('5', '生鲜美食');
INSERT INTO `goods` VALUES ('6', '日用百货');
INSERT INTO `goods` VALUES ('7', '工艺配饰');
INSERT INTO `goods` VALUES ('8', '学习办公');
INSERT INTO `goods` VALUES ('9', '其他');

-- ----------------------------
-- Table structure for index
-- ----------------------------
DROP TABLE IF EXISTS `index`;
CREATE TABLE `index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of index
-- ----------------------------
INSERT INTO `index` VALUES ('5', 'test', '2015-04-07 14:07:31');

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
  `academy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('27', '李雅琼', '2', '播音主持', '我热爱阳光、积极的生活，享受与人分享、为人真诚的乐趣。四年大学生涯使我积累了充分的文化知识，社会实践能力有了提高，<br/>也让我在心理上有了质的飞跃. 在校期间，我遵守校纪校规，尊敬师长，团结同学，态度端正，钻研专业知识。学习勤奋刻苦，成<br/>绩优秀;关心同学，热爱集体。有奉献精神， 诚实守信，热心待人，勇于挑战自我。', 'http://ttmicrostore.qiniudn.com/2015-03-17_5507efa2ef72c.jpg?imageView2/2/w/363/h/363', '81', null);
INSERT INTO `person` VALUES ('28', '梁润溪', '5', '法学', '寒暑假经常参加社会实践，销售、服务等行业均有涉猎。高中时和朋友摆过衣服小摊，在学校里买过二手物品；大学弄过代购，帮忙朋友经营网店，有一定的工作能力。 个人评价 本人活泼开朗，喜欢交朋友，兴趣广泛，有一定的组织能力，意志坚强，能吃苦耐劳，热爱创新，敢于接受新事物，勇于接受挑战。 当今社会竞争激烈，就业压力大，创业不失为一种渠道。 创业宣言：展青春风采，创青春事业', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f1ce6691e.jpg?imageView2/2/w/363/h/363', '82', null);
INSERT INTO `person` VALUES ('29', '罗文望', '3', '工商管理', '创业宣言：博学笃行，以法会友。打造西南政法大学自主文化品牌。店铺介绍：西政文化印象馆是西南政法大学唯一许可经营西政官方文化产品微店。个人简介：罗文望，男，19岁。西南政法大学工商管理专业学生，从事西南政法大学文化产品宣传与经营工作。本人热心、善良、自信、自律、上进心强，有较强的组织、管理能力。工作认真负责，勇于承担任务与责任，能够快速接受新知识和快速适应新环境，具有良好的团队合作精神以较好的个人亲和力。良好的综合素质，具备复合型人才的条件。', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f38b4fdb9.jpg?imageView2/2/w/363/h/363', '83', null);
INSERT INTO `person` VALUES ('30', '向丹', '2', '数学与应用数学', '店铺介绍：丹丹的小店铺主打韩塑美面膜，这是一款保湿消痘功能很好的面膜。本小店小本生意，不议价，保证质量。个人介绍：我是丹丹的小店铺的店主，我是一个活泼开朗，爱交朋友的人90后，典型的重庆妹子。我是一个性格稳重，心理素质较好的人。做事踏实认真，热情主动，吃苦耐劳，并且敢于承担责任。平时喜欢和他人沟通，善于与人相处，具有良好的团结合作精神。大学期间，我一直怀着对本专业的热爱，认真学习专业知识，我自信能凭自己的能力和学识在微店创业中取得成功。创业宣言：分享快乐，共享美丽', 'http://ttmicrostore.qiniudn.com/2015-03-13_5503078c6a831.jpg?imageView2/2/w/363/h/363', '84', null);
INSERT INTO `person` VALUES ('31', '闪雅洁', '4', '服装设计与工程', '创业宣言：青春不止步，创业在路上店铺介绍：“优衣家”微店经营项目有女性服装、包包鞋子；男性服装、包包鞋子。衣服质量保证，受到了顾客的一致好评！个人介绍： 学习上，该生成绩良好，并通过大学英语三级和计算机一级考试。2012年智育成绩第一，荣获“一等奖学金”、“单项奖学金”以及“优秀学生”；2012年下学期综合成绩排名第二，荣获“二等奖学金”、“优秀学生”，也获得2013年国家奖学金，2014年校长荣誉奖学金。', 'http://ttmicrostore.qiniudn.com/2015-03-13_550308305fd1d.jpg?imageView2/2/w/363/h/363', '85', null);
INSERT INTO `person` VALUES ('32', '李春丽', '3', '审计', '1.微店简介:我来自云南大理鹤庆，鹤庆有个新华村，那是银都之乡，适合广大人群，生日礼物，结婚礼物都是不错的选择。家乡的千足银货真价实，物美价廉。 我店里的银器不仅价格比市面上的都要低，而且质量也有保证，创业到现在，得到越来越多人的肯定，我期待更多人的加入2.个人简介:我是西政管理学院大三的学生，大一去咖啡店做过兼职，同时又在 图书馆勤工助学，还做过博文代理，但是这些都是替别人打工，没有我期待的自由，后来，想到自己家乡的银器是个不错的市场，送女 朋友送妈妈送奶奶都是不错的选择，而且价格便宜，适合学生，我就尝试了一下，不料一开始生意就出奇的好，半年了，生意一直没有间断，我希望我的小店生意越来越好', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f64651025.jpg?imageView2/2/w/363/h/363', '86', null);
INSERT INTO `person` VALUES ('33', '王仕瑶', '3', '工商管理', '创业宣言：生活不会给你甜，而你要找路子给自己糖.店铺介绍：帕芮特品牌系列护肤品，包括TRASING倾辛纯天然植物手工精油皂，帕芮特水解胶原美肌修复和海洋活能补水蚕丝面膜，帕芮特水娃娃系列精粹润颜爽肤水，精粹水嫩靓颜面霜，精粹紧致明眸眼霜，精粹肌底液等护肤品.个人介绍：我是一名来自西南政法大学2014级本科生，本人是一枚文艺范青年，热爱生活，羡慕那些到处旅游的人，所以我的愿望是大学四年要用自己赚到的钱和自己心爱的人去喜欢的地方旅游。欢迎咨询！干巴得，骚年！！', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f5a14cba1.jpg?imageView2/2/w/363/h/363', '87', null);
INSERT INTO `person` VALUES ('34', '敖思华', '2', '计算机科学与技术', '创业宣言：21世纪是创业的时代，是网络的时代，而作为当今时代大学生的我们拥有创造力和年轻。店铺简介：本微店名“小敖美凝美肌”，微信号“小敖美凝美肌（xiaoxiaoao91）”，本店主要代购韩国时尚化妆品牌3CONCEPT EYES（Stylenanda 3ce）各种彩妆用品，并零售批发广州歌琳公司的护肤品（主推海洋之水）和广州市普兰氏信息科技有限公司的面膜（主推“Pulamsi普兰氏修护面膜”）。', 'http://ttmicrostore.qiniudn.com/2015-03-13_550308b8688a7.jpg?imageView2/2/w/363/h/363', '88', null);
INSERT INTO `person` VALUES ('35', '张云娜', '2', '思想政治教育', '个人简历：我叫张云娜,来自重庆三峡学院，思想政治教育专业。面对未来的工作我希望由自己亲手打造。我相信只要通过自己的努力，我一定会成为一名合格的教师。人之一生像负重远行，不可急于求成，不把情感装入理智的盒子，以变应变，对自己的工作安心，专心。创业宣言：成功之花始于奋斗汗水的浇灌，前途灿烂，铿锵而行，终会成功。', 'http://ttmicrostore.qiniudn.com/2015-03-13_5503095a00d46.jpg?imageView2/2/w/363/h/363', '89', null);
INSERT INTO `person` VALUES ('36', '徐梦静', '4', '涉外经贸', '创业宣言：己所不欲勿施于人.店铺介绍：本店大学同学毕业后一起创业的一家微店，本店产品都是大学一批同学   校友亲自去“韩泰国”洽谈引进的关于美妆的一系列产品和国内热销产品，同为学生的我们所销售的产品，价格自然是“学生价+高质量”。本店所有产品全部在本科大学四川省南充市“西华师范大学”世纪天骄储存，统一由四川南充发货，有专业的包装团队和快递公司每天下去四点准时发货；有迹可循，有条有理。个人介绍：本人姓名徐梦静，本科就读于西华师范大学大学，现攻读重庆西南政法硕士，专业为国际法学院涉外经贸。有朋自远方来，不亦乐乎！', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f78e13509.jpg?imageView2/2/w/363/h/363', '90', null);
INSERT INTO `person` VALUES ('37', '周莉', '3', '思想政治教育', '自我简介：在大学期间，我自己认真学习专业技能，所以我掌握了较强的专业知识，并把理论知识运用到实践中去，期末总评成绩名列年级前茅，获得优秀学生奖学金二等、三等各两次,荣获校级三好学生称号。创业宣言：每个人都会有不同的选择，人生就好比就是一场摆渡，前面的道路或平坦，或汹涌，全凭自己来掌握。时光是淡漠的，它不会多情地将人照料，它的漠然自然不会让它为谁而停留伫足。让人念想的青春也更是匆匆。所以我们需要做的，就是把握现在，让自己的青春即使到老来回忆时也不必悔不当初，让自己的青春展现着灼目的光环，活得有声有色！', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030a2107a68.jpg?imageView2/2/w/363/h/363', '91', null);
INSERT INTO `person` VALUES ('38', '冯雪', '1', '法学', '创业宣言：你的美丽，我的期待.店铺介绍：暖心小屋是一家闺蜜店。店主的闺蜜在韩国留学，提供货源，店主在国内经营。远隔千<br/>里的两人，联系本来较少，但因为这家微店，二人的联系越发紧密，也更有默契，微店“暖心小屋”由此得名，意在纪念店主与闺<br/>蜜之间暖心的友情。个人介绍：和昨天的自己相比，永远更喜欢今天的自己，因为今天的自己更接近自己想要成为的样子。热爱生<br/>活，永远走在追求梦想的路上，我是追梦人冯雪。', 'http://ttmicrostore.qiniudn.com/2015-03-17_5507f5c60c636.jpg?imageView2/2/w/363/h/363', '92', null);
INSERT INTO `person` VALUES ('39', '姚子萱', '3', '广告学', '创业宣言：I can live independently!店铺介绍：我是会魔法的小仙女但也不能给你变出柚子╭(╯^╰)╮ 但可以变出男装女装情侣装=w=女鞋女包都可以变哟~ 欢迎调戏 么么哒٩(๑`^´๑)۶个人介绍：双子神经系96女, 在学习上我勤奋严谨，在掌握了本专业知识的基础上，不忘拓展自己的知识面，对课外知识也有比较广泛的涉猎。我还很重视英语的学习，不断努力扩大词汇量，英语交际能力也有了长足的进步。同时，为了全面提升个人素质，我积极参加各种活动，这些经历使我认识到团结合作的重要性，也学到了很多社交方面的知识，增加了阅历，相信这能对我的微店创业起到重要作用。', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030b44c8c03.jpg?imageView2/2/w/363/h/363', '93', null);
INSERT INTO `person` VALUES ('40', '林立', '5', '法学', '创业宣言：三分天注定，七分靠打拼，爱拼才会赢！店铺简介：小熊的银饰屋是一家主营各类珠宝的微店，其中包含有银饰，玉器和各种珠宝。本店的货物全部由家里的实体店提供，家里在山西运城开的天艺金店，绝对是实体店的质量，而且价格就是十分公道合理。而且店主也是一名大学生与消费群体相吻合，对于市场做了一定的调查了解，店铺内的饰品更多是面向大学生群体，满足大学生群体的需求。个人简介：本人名叫林立，福建福州人，是西政一名大三的学生.希望通过微店让首饰走入更多平凡百姓家，而不是成为一种奢侈品。也希望通过自己的努力改变自己的人生，不想走父母安排好的人生道路，想做自己真正感兴趣的事情即经商。', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fad53dcb0.JPG?imageView2/2/w/363/h/363', '94', null);
INSERT INTO `person` VALUES ('41', '舒炜惟', '4', '法学', '创业宣言：开始了，就不要停下。店铺介绍：本店提供进口面膜和玻尿酸等美肤用品。面膜由医莱美思（美国妊娠产品知名品牌）研发，取名“膜龄”，由中国深圳维恩杰科技有限公司享有代理权，在 深圳有专柜，正在面向全国销售，“膜龄”的亮点为安全无激素，极薄极补水，敏感肌肤均可使用。玻尿酸为深圳维恩杰科技有限公司自主研发，取名“透明质酸萃 取液”，补水锁水，嫩肤效果极佳。个人介绍：舒炜惟，女，西南政法大学本科在读。与深圳维恩杰科技有限公司的关系：是股东的妹妹，享有其公司产品的特级代理权.', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fb5ba4092.jpeg?imageView2/2/w/363/h/363', '95', null);
INSERT INTO `person` VALUES ('42', '胡诗雨', '1', '商务英语', '当初一纸志愿单把我带到这个陌生的城市，给了我重新开始的机会。性格并不算外向的我却向往着充满挑战的生活。因此在大学至今的时间里并不安分的四处活跃着，并于2014年年底创立了属于我们的新媒体工作室。年轻的岁月里不多去做一些梦，就只能等到年老了后悔了。创业宣言：不忘初心，方得始终。', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030e31f09e7.jpg?imageView2/2/w/363/h/363', '96', null);
INSERT INTO `person` VALUES ('43', '陈鱼河', '4', '社会学', '店铺介绍：本店名叫“佰里挑一时装店”，主要以女装为卖点。店面装修精致，点击进去服装丰富多样，目前包括时尚卫衣、打底<br/>衫、针织衫、潮流毛衣等。店主会根据时节的变化不断更新服装，保证每一次点击都会有不一样的收获。面对千千万万家淘宝店铺<br/>的竞争压力，本店只是想安安静静的做一个“店中的美女子”，给广大爱淘、爱美的女性朋友们送一份安静的美。之所以叫做“佰<br/>里挑一时装店”，是因为我希望我的小店是最独特的，希望我的服装也是顾客朋友们最独特的选择，就像玫瑰庄园里最美的一朵玫<br/>瑰，百里挑一的一朵玫瑰。', 'http://ttmicrostore.qiniudn.com/2015-03-17_5507eef608aaa.jpg?imageView2/2/w/363/h/363', '97', null);
INSERT INTO `person` VALUES ('44', '曾姝妤', '1', '国际法', '创业宣言：没有尝试便没有认知！店铺介绍：fancyplot家以服装为主打，不定期更新，同时有鞋及配饰个人介绍：曾姝妤，来自西南政法大学。我在大学期间掌握了专业知识，培养了自己各方面的能力，这些对今后的工作都将产生重要的帮助。对各种衣物单品有很大兴趣，利用业余时间打理小店。喜爱各类衣物，日韩style欧美风都爱尝试，小店也主要推荐好看质量好价格又合理的衣物。', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fbf1a0715.JPG?imageView2/2/w/363/h/363', '98', null);
INSERT INTO `person` VALUES ('45', '傅楚楚', '3', '民商法', '店铺介绍：我的微店名称是冠群芳倪兰蔷店，是一家类似于加盟性质的店，隶属于冠群芳店，每一名加盟者都可以在上面卖东西也可以帮助他人卖东西，因此我的微店里为位数重大的卖家，也有数量众多的商品，如鲜花，婚纱，项链，茶叶等等等等。总之，只要你点击进入我的微店，一定有你想要的！个人介绍：大家好！我叫傅楚楚，现在就读于西南政法大学民商法学院，目前是法学专业本科二年级的学生，我的家在浙江金华，一次偶然的机会在微信上成立了属于我的一家微店，希望大家能够多多支持我的小店！', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fca317e41.jpg?imageView2/2/w/363/h/363', '99', null);
INSERT INTO `person` VALUES ('46', '侯淑华', '4', '汉语言文学', '创业宣言：开店于我，是将兴趣转化为动力的方式，是把喜欢的事物与大家分享的途径而已。店铺介绍：当我做手工的时候，很多人问我，卖吗当时我只能说，抱歉现在，如果有人再次问我，那我就大方地把链接甩给他，说，欢迎光临~我的小店为了拥有同样爱好或欣赏手工的人而开产品主要是纯手工原创设计周边，材质以不织布与超轻粘土为主接受原创订制 如果您有更好的想法想让我帮您实现 我将随时等待您的请求~', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030fa5762e7.jpg?imageView2/2/w/363/h/363', '100', null);
INSERT INTO `person` VALUES ('47', '刘家鑫', '4', '法学', '在校学习成绩优异，智育成绩和综合测评始终位于专业前茅。热爱传媒行业，任求实通讯社新闻部主任、新闻中心记者站记者。获2014年一等奖学金、国家励志奖学金、自立自强先进个人、优秀团员等。在大一获优秀实习记者称号。负责全校的新闻编发工作，已发表百余编稿件，多篇稿件被各大网站转载、重庆市团市委录用。积极参加各类活动，在重庆市“中华魂”征文演讲比赛荣获一等奖。个人宣言：成功只会眷顾有准备的人，创业之梦，我用青春去拼搏！', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fd3ca9d47.jpg?imageView2/2/w/363/h/363', '101', null);
INSERT INTO `person` VALUES ('48', '谭钥予', '4', '英语', '性格开朗，热情积极，爱好读书写作看动画片。喜欢思考，钟情于各种美食，留恋祖国的大好河山。勇于冒险，喜欢挑战，乐于尝试未知的事情。高中担任学生会秘书长，文章曾发表于报刊杂志。大学热衷于学生工作，担任过学校大型活动主持人，是重庆市学联-学载青春梦的签约作者，喜欢写小说和散文。创业宣言是：过去已过去，未来还未来，把握现在！', 'http://ttmicrostore.qiniudn.com/2015-03-14_5503103bb6dc0.jpg?imageView2/2/w/363/h/363', '102', null);
INSERT INTO `person` VALUES ('49', '李欣宜', '3', '广播电视学', '典型的双子座，典型的双重性格。她可以在人群中大声放歌，也可以在角落里静静写诗。她爱阅读，爱音乐，爱旅行，爱生活。文字跟音乐，是她最青睐的情感宣泄口。甚至都不用解释，它们就能让志趣相投的人自然而然地产生共鸣，而旅行，则是另外一种适合自我沉淀的一种方式。行走在不同的城市，体验不同的人生，然后想想下一站的路要怎么走，明晰了未来，就会觉得很幸福。在她的世界里，生活和梦想一点不冲突，她喜欢参加学校的各式各样的活动，也热衷于各种公益，她一直觉得自己生活得很充实，因为她一直信奉着，生活因不盲目的忙碌而更加精彩。阳光是最好的安慰剂，她爱每一个清晨的每一丝光亮。', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fdc2a3356.jpg?imageView2/2/w/363/h/363', '103', null);
INSERT INTO `person` VALUES ('50', '孟涛', '3', '新闻', '创业宣言：你永远不知道明天的自己有多可怕。\r\n    店铺介绍：我的小微店主要经营一些创意礼品、寝室摆件装饰、饰品腕表、潮流鞋服、日常用品。总之全部都是大学生生活中必\r\n需的一些商品。新开的微店也没有什么经验，希望大家能够多多照顾，我们都是大学生，所以相信我，我知道你需要什么！\r\n    个人介绍：我叫孟涛，今年20岁，就读于西南政法大学全球新闻与传播学院新闻系，平时喜欢听听音乐唱唱k。我觉得年轻人就\r\n是应该多些想法多些尝试，所以我很想看着自己的微店一步步成长起来。希望大家多多支持。', 'http://ttmicrostore.qiniudn.com/2015-03-15_5505a84b944f7.jpg?imageView2/2/w/363/h/363', '104', null);
INSERT INTO `person` VALUES ('51', '阳佳芮', '2', '外国语言学', '创业宣言：人生的意义在于不断奋斗！\r\n       店铺介绍：一点来网络超市微店是针对大学生服务一站式购物的微店，主要经营：日常百货，寝室用具，配饰包包，电子产\r\n品，文具用品。\r\n       个人介绍：我是西南政法大学2014级外语学院研究生阳佳芮，很理解在学校购物的不便，平时同学们都喜欢去校外大超市和\r\n宜家购物，因为那里的产品比较便宜种类又齐全，所以想到开办一个大学生一站式购物的微店，我经营的商品物美价廉，经济实\r\n惠，为大学生购物提供实惠与方便。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506733969622.jpg?imageView2/2/w/363/h/363', '105', null);
INSERT INTO `person` VALUES ('52', '谷兆阳', '5', '侦查学', '我爱写作摄影留岁月光影，爱诗词歌赋聊表诗情，爱烹调泡茶以慰寸心。一直在减肥路上喘粗气，一直在奋斗途中看风景。忙\r\n里偷闲是一种人生态度，阴晴圆缺是一种人生追求。作为一个喜欢打盹的狮子座，常常是为了暖别人而把自己变成一只大花猫。有\r\n侍弄花草的闲情与温厚，也有敢于雄辩的肆意与放达。曾与朋友一起创办“大学生家教家园”家教平台，并为团队的目标不停的努\r\n力奋斗着。\r\n       我的创业宣言是：“男儿何不带吴钩，收取关山十五周。”', 'http://ttmicrostore.qiniudn.com/2015-03-16_550678dabdc41.jpg?imageView2/2/w/363/h/363', '106', null);
INSERT INTO `person` VALUES ('53', '杨雨玮', '4', '英语笔译', '创业宣言：新世纪、新独立\r\n店铺 Black•杂货铺。 \r\n卖各类水晶、护肤品。\r\n我叫杨雨玮,来自西南政法大学，现在研一，我一直追求着自己的成就。我在校担任学生干部期间获得校级优秀学生干部的称号，有\r\n比较好的组织协调能力，在暑假期间多次勤工俭学，可以吃苦耐劳，有很强的动手能力和学习能力，我可以能够在不同文化和工作\r\n人员的背景下出色地工作。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55067e6f50877.jpg?imageView2/2/w/363/h/363', '107', null);
INSERT INTO `person` VALUES ('54', '张彦', '5', '法律硕士', '个人介绍：\r\n从小我就是一个性格开朗，喜欢结交朋友的女孩子，平时闲暇时我喜欢听音乐，种点花花草草。还记得那是在我高中的时候，一次\r\n很偶然的机会，我接触到了一个化妆品品牌，拿到了直销资格，于是就在同学之间小范围的为大家提供护肤品销售，当时乐在其\r\n中，后由于高中课业繁重，于是也就完结了自己的护肤品销售。\r\n读研后，韩国护肤品得到越来越多的人喜爱，很多知道我闺蜜定居韩国的朋友经常要求我帮忙代购韩国护肤品，也因此而再次走上\r\n了我的化妆品销售之路。因为耐心服务，得到了很多朋友的认可，也因此与很多素未谋面的小伙伴成为了朋友！', 'http://ttmicrostore.qiniudn.com/2015-03-16_550680cd69278.JPG?imageView2/2/w/363/h/363', '108', null);
INSERT INTO `person` VALUES ('55', '石路', '3', '装饰与艺术设计', '我叫石路，19岁，来自重庆工程职业技术学院，我性格比较开朗随和，乐于与人沟通，做事也很踏实认真。我在学校的社团联合会\r\n待过一年，大二暑假参加学院组织的暑期三下乡活动，担任义教老师，这次经历让我印象深刻。当时我们由一名老师带领，组成33\r\n个人的团队，一起讨论备课和课后总结，组织学生做游戏，一起做饭和生活等等，是特别团结和互相帮助的一个团队，三下乡也取\r\n得了特别好的效果，跟那些孩子相处很好，结下了很深的情谊。而且我很乐于为别人服务，做过广交会志愿者，而且担任班级素拓\r\n委期间，不厌其烦地通知和统计同学参加的活动情况，几乎没出过错，大家对我的评价是很细心很负责。', 'http://ttmicrostore.qiniudn.com/2015-03-16_550681fbe95e8.JPG?imageView2/2/w/363/h/363', '109', null);
INSERT INTO `person` VALUES ('56', '曾春燕', '5', '装饰与艺术设计', '我叫曾春燕，21岁，来自重庆市工程职业技术学院，在大学期间，我始终以提高自身的综合素质为目标，以自我的全面发展为努力\r\n方向，树立正确的人生观、价值观和世界观。为适应社会发展的需求，我认真学习各种专业知识，发挥自己的特长;挖掘自身的潜\r\n力，结合每年的暑期社会实践机会，从而逐步提高了自己的学习能力和分析处理问题的能力以及一定的协调组织和管理能力。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506830df1217.jpg?imageView2/2/w/363/h/363', '110', null);
INSERT INTO `person` VALUES ('57', '刘小青', '4', '物流管理', '宣言：将来的你一定感谢现在奋斗的自己。\r\n店铺介绍：主要经营思埠旗下的产品，大多数为女性用品，化妆，护肤以及日用，经过慢慢发展会有更多新品。\r\n个人介绍：现在大一，从高中毕业开始接触微商，到目前为止有自己独立的经济，活泼，外向，有热情，爱交朋友，微商带给我的\r\n不仅仅是利益，更多的是收获和不同的人学习。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506845a5a7b2.jpg?imageView2/2/w/363/h/363', '111', null);
INSERT INTO `person` VALUES ('58', '刘洪男', '2', '机械设计与制造', '宣言：将来的你一定感谢现在奋斗的自己。\r\n店铺介绍：主要经营思埠旗下的产品，大多数为女性用品，化妆，护肤以及日用，经过慢慢发展会有更多新品。\r\n个人介绍：现在大一，从高中毕业开始接触微商，到目前为止有自己独立的经济，活泼，外向，有热情，爱交朋友，微商带给我的不仅仅是\r\n利益，更多的是收获和不同的人学习。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506869bc82d8.jpg?imageView2/2/w/363/h/363', '112', null);
INSERT INTO `person` VALUES ('59', '谢娇', '3', '运营管理', '创业宣言：在微商盛行的时代，诚信与品质成了顾客选择的第一标准，我们只做搬运工，从韩国专柜代购，专柜产品什么样到顾客手里就是\r\n什么样，我们会给您最好的服务。\r\n店铺介绍：小丸子韩国代购化妆品，每月不定期从韩国采购，支持验货.\r\n个人介绍：大学生妹纸一枚，爱音乐爱逛街爱交友，关于臭美的东西大家互相交流啦. 年轻也许意味着欠缺经验，但是年轻也意味着热情和活\r\n力，我自信能凭自己的能力和学识在创业中取得成功，不断实现自我的人生价值和追求的目标。', 'http://ttmicrostore.qiniudn.com/2015-03-16_550687d3d433b.jpg?imageView2/2/w/363/h/363', '113', null);
INSERT INTO `person` VALUES ('60', '王婧怡', '4', '交通运营管理', '创业宣言：观之思之行之，心有多大，舞台就有多大。JUST DO IT!\r\n热爱投身商业，前往公司参观、毕业暑假打工和当导购的经历让我更向往于开辟属于自己的事业，并努力实践--曾在情人节卖鲜花，圣诞节\r\n卖苹果，并从中体验到了创业的艰辛和美妙；热爱文字创作，在各征文比赛均获佳绩，多篇文章在校刊校报，杂志，微信发表；热爱工作，\r\n曾连任班长并被评为“市优秀学生干部”等，现担任学校学院的学生会、义协及党服干事、市学联“学载青春梦”微信平台签约作者。', 'http://ttmicrostore.qiniudn.com/2015-03-16_550688f03bd3b.jpg?imageView2/2/w/363/h/363', '114', null);
INSERT INTO `person` VALUES ('61', '罗梦嫄', '4', '戏剧影视文学', '个人简介：作为一颗埋在土底下的种子，努力冲破底壳，只为看见阳光并在阳光下绽放。我是很普通的一名女大学生，和很多同学一样，大\r\n一在学生会当干事，大二当了部长，曾经也迷惘过，将来要做些什么。到了大三与一些正在创业的朋友有几次深谈，深感年轻就是机会，为\r\n什么不闯一闯，为什么过早的要选择安定的生活。团团微店的建立第一次听到只觉得很有意思，对于有意思的东西为什么要说“no”呢？也\r\n许一次“yes”带来的将会是毕生的改变。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068a13ccf1b.jpg?imageView2/2/w/363/h/363', '115', null);
INSERT INTO `person` VALUES ('62', '张振', '3', '蚕学', '店铺名：π创意\r\n经营特色创意物品，包括创意礼物，创意挂件，各类策划，创意u盘等电子产品。\r\n我们的店铺背后是一个热情洋溢的团队，我们将用秉承着“顾客就是上帝”的原则，努力满足每一个客户的需求。\r\n爱拼搏，爱创业，更爱创造可能，永远坚信不断的努力才能实现不断的成功，更相信自己天马行空想法可以创造无限价值，希望通过自己的\r\n双手创造属于自己的未来。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068b745999a.jpg?imageView2/2/w/363/h/363', '116', null);
INSERT INTO `person` VALUES ('63', '黄昌', '3', '汉语言文学', '本人黄昌，现读于西南大学文学院2012级汉语言文学师范4班，有较强的组织管理能力，大学期间做过许多学生工作，曾经是西南大学学生\r\n社团联合会新闻中心主任，西南大学足球协会会长。有较多的工作经验，曾自己办过辅导班，在多个公司做过实习,对于创业有足够的热诚和\r\n信心。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068c302e5c1.jpg?imageView2/2/w/363/h/363', '117', null);
INSERT INTO `person` VALUES ('64', '荆佳伊', '1', '食品科学', '自我介绍：活泼，开朗，大方。学习：成绩名列前茅，多次获得奖学金；生活：乐于助人，与同学老师相处融洽；工作：任职学校\r\n校团委杂志社副社长，踏实勤奋；思想：积极主动学习先进思想，努力加强自身修养\r\n创业宣言：机会不是别人给的，而是自己创造的，前方你看到的是希望那便是希望，去做吧！', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068e8eb7727.jpg?imageView2/2/w/363/h/363', '118', null);
INSERT INTO `person` VALUES ('65', '李亮亮', '1', '社会工作', '个人简历：本人工作踏实细致，具有较好的文字组织能力，有一定的英语听说读写能力，能都熟练操作windows平台上的个类应用\r\n软件(如photoshop、word、excel)，动手能力较强。\r\n本人具有较强的责任心和工作主动性，较好的组织协调能力和应变能力，可以和不同的人相处融洽，配合顺利地完成工作任务。本\r\n人性格开朗，善于沟通，谦虚，自信。虽然微店的运作与以往的工作有所不同，但我相信通过自己的努力和已有的工作基础可以取\r\n得成功，对此我很有信心!', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068feb80c0c.jpg?imageView2/2/w/363/h/363', '119', null);
INSERT INTO `person` VALUES ('66', '靳佳颖', '3', '经济类', '个人介绍：我是西南大学经济管理学院学生靳佳颖，大学里，丰富多彩的社会生活和井然有序而又紧张的学习气氛，使我得到多方\r\n面不同程度的锻炼和考验；正直和努力是我做人的原则；沉着和冷静是我遇事的态度；爱好广泛使我非常充实；众多的朋友使我倍\r\n感富有！我很强的事业心和责任感使我能够面对任何困难和挑战。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506913d02be7.jpg?imageView2/2/w/363/h/363', '120', null);
INSERT INTO `person` VALUES ('67', '罗巍', '3', '社会工作', '大学以来，我坚持“开创人生，虚怀若愚”的信念，不断开拓，取得一定的实践成绩，在创建自己的事业道路上坚定不移走下去。\r\n在工作方面，任学院年级总班长，利用这个机会，在年级举办各种培训论坛，策划各类创新活动，鼓励同学们感想敢做，积极为自\r\n己未来创业做准备。综合发展方面，在学院辩论队担任队员，在学院组织部担任干事，并且合理安排时间积极参与重庆市学联签约\r\n作者工作，将各类工作看作是创业的最佳实践和经验积累机会。', 'http://ttmicrostore.qiniudn.com/2015-03-16_550692ade8146.jpg?imageView2/2/w/363/h/363', '121', null);
INSERT INTO `person` VALUES ('68', '魏珂', '3', '物流管理', '个人介绍：在大学期间，我始终以提高自身的综合素质为目标，以自我的全面发展为努力方向，树立正确的人生观、价值观和世界\r\n观。为适应社会发展的需求，我认真学习各种专业知识，发挥自己的特长;挖掘自身的潜力，结合每年的暑期社会实践机会，从而逐\r\n步提高了自己的学习能力和分析处理问题的能力以及一定的协调组织和管理能力。我相信只要付出努力一定能取得成功。', 'http://ttmicrostore.qiniudn.com/2015-03-16_550693c291c9d.JPG?imageView2/2/w/363/h/363', '122', null);
INSERT INTO `person` VALUES ('69', '叶磊', '1', '轮机工程', '个人介绍：我叫叶磊，男，汉族，23岁，来自重庆奉节。重庆交通大学2011级航海学院轮机工程（船舶动力装置设计与制造）专\r\n业学生。是一个乐观向上的大男孩，平时喜欢爬山、跑步，并且做志愿者活动，热爱家乡，喜欢家乡的山山水水，想让更多的朋友\r\n去了解去感受我的家乡美丽。', 'http://ttmicrostore.qiniudn.com/2015-03-16_550695004359f.jpg?imageView2/2/w/363/h/363', '123', null);
INSERT INTO `person` VALUES ('70', '黄希光', '1', '机电与汽车工程', '店主介绍：黄希光，重庆交通大学机电与汽车工程学院，研究生二年级。在当今这个快速发展的信息时代，我们只有不断汲取新知\r\n识，才不会落伍。工作上，在大学期间我还担任过团支书，具有很强的组织和协调能力。能在较短时间内适应高压力的工作。强烈\r\n的事业心和责任感使我能够面队任何困难和挑战。乐观向上，拥有较强的创业热情，现拥有在运行公司一家，在运营微店两家，希\r\n望通过平台，获得较好的推广！', 'http://ttmicrostore.qiniudn.com/2015-03-16_550696191e894.jpg?imageView2/2/w/363/h/363', '124', null);
INSERT INTO `person` VALUES ('71', '何倩', '3', '交通规划与管理', '创业宣言：创业艰难，不可奢华；努力不懈，不可安逸;天然翡翠，值得拥有。\r\n店铺介绍：本店经营各种天然彩宝玉石和茶叶，源自云南，货真价实。翡翠和茶叶都有养颜美容，延年益寿的功效，戴好玉，品好\r\n茶，逐渐成为人们当代有产阶层地位的象征和时尚的体现。\r\n个人介绍：本人是重庆交通大学的一名硕士研究生,现在读交通规划与管理专业,家住云南省红河州石屏县。我期望能在广阔的天地\r\n里展现自己的才能，希望能借助这个机会，找一个能展现自己实力的舞台。我自信能凭自己的能力和学识在微店创业中克服各种困\r\n难，不断实现自我的人生价值和追求的目标。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069726752b2.jpg?imageView2/2/w/363/h/363', '125', null);
INSERT INTO `person` VALUES ('72', '池卓航', '5', '建筑与土木工程', '个人简介：\r\n我在校期间担任了院学生会主席和辅导员助理，积累了较为丰富的工作经验和良好的处理协调能力。热衷于学生工作的同时，学习\r\n成绩也一直名列前茅，顺利通过了CET4和CCT1，考取了国家网球职业初级资格证和国家游泳一级裁判员。此外，在大学期间，曾\r\n积极参加了公益服务类创业大赛，具有一定的创业经验。\r\n我的创业宣言是：商机无处不在，但它总是垂青于有准备的人。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506981c20ff9.jpg?imageView2/2/w/363/h/363', '126', null);
INSERT INTO `person` VALUES ('73', '刘颖', '2', '管理科学与工程', '可能有细心的买家会注意到我的店铺名称——来自滩洋之乡。其实我是个地地道道的来自滩羊之乡的店主。肯定有很多人对“滩羊\r\n之乡”不了解，盐池位于美丽的宁夏境内，2005年盐池县在国家工商总局商标局成功注册了“盐池滩羊”证明商标，被命名\r\n为“中国滩羊之乡”。这里有蓝天白云，民风淳朴，盐池县得天独厚的自然地理环境，造就了滩羊独特的品质，经权威部门检测，\r\n盐池滩羊肉无膻味，且胆固醇含量在所有羊肉中最低，具有提气补虚、生血益肾的功效。\r\n我平时的爱好有：阅读，旅游，羽毛球还有就是逛淘宝了，2013年初我在淘宝上开了一家网店，我希望买家能够在我的店铺里遇\r\n到自己喜欢的物品', 'http://ttmicrostore.qiniudn.com/2015-03-16_550698f72e5b6.jpg?imageView2/2/w/363/h/363', '127', null);
INSERT INTO `person` VALUES ('74', '宋状状', '3', '桥梁与隧道工程', '创业宣言：开微店，做小生意，慢慢积累，总有一天会做大做强!店铺介绍：格调潮品街~为自己代言。本店主营阿迪耐克等运动休\r\n闲运动服装鞋子，及斯伯丁篮球等运动装备，所有款式都是店主精心挑选，只为突出“格调潮品”！个人介绍：我是重庆交通大学\r\n研究生一年级的一名学生，平时喜欢运动，对运动装备也有一定要求和了解。我对商业也比较感兴趣，喜欢做点小生意。我坚信移\r\n动端购物必将有很好的发展前景，微店适合像我这样没有资本，又想创业的人开，所以选择开微店，慢慢积累客源，终将有所收\r\n获！', 'http://ttmicrostore.qiniudn.com/2015-03-16_550699e5b66de.jpg?imageView2/2/w/363/h/363', '128', null);
INSERT INTO `person` VALUES ('75', '孔凡霞', '4', '马克思主义理论', '我学习刻苦认真，除了学习之余，还有一颗热情的创业心。进入大学第一学期，奔着兴趣和自我锻炼，我加入了学校的杂志社。通\r\n过一学期的参与，当每期杂志拿到手，总觉得那也是创业第一步的成果，收获了很多创业的基本素质：参与意识、团结意识、为人\r\n之道、、、、这些都会是我以后创业的垫脚石。现在，我也是市学联共青团“学载青春梦”的签约作者，创业之路正在慢慢铺开。\r\n作为一名朝气蓬勃的大学生，我想，就应该拼在今天，嬴在明天。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069aa58f518.jpg?imageView2/2/w/363/h/363', '129', null);
INSERT INTO `person` VALUES ('76', '李艳红', '5', '桥梁与隧道', '我自小比较爱闹腾，爱四处走走逛逛。高三毕业那一年，在夜市上摆摊，卖些小东西和二手书，小赚了一笔，然后一趟外出游玩就\r\n花的一个子不剩~内心也住着一个小小文艺少女，时不时跑出来感慨一下人生啊，抒发一下情怀啊，以此来表现一下自己的深沉。\r\n虽然很多时候很幼稚的说。。。爱生活，爱旅行，爱文字，这就是我，虽然没什么特长，但总有一份热情在。\r\n宣言:我有一份热情，那让我无所畏惧。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069b79b77d9.jpg?imageView2/2/w/363/h/363', '130', null);
INSERT INTO `person` VALUES ('77', '曾丽敏', '5', '金融与证券', '一缕月光，在静静深夜，辗转着我的思绪；一粒尘埃，在岁月深处，涌动诸多情愫，吟唱这几多诗篇……贪恋这一姿态，执一笔禅\r\n意的墨花，看山是山，听水为水，轻描淡写间道尽世间繁华。人生路上,鞋磨破了可以换,但脚下的路还需自己走。茫茫求学路，望\r\n一眼往事秋水，千万相思散落在风中，任我一笑,浪迹飘零，步步从容……我是曾丽敏，简单纯粹，温润流年，自在如心。\r\n创业宣言:路途再远,远不过燃烧的梦;背负昨日之荣光,追赶明日之朝阳,在路上!', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069cab878f9.jpg?imageView2/2/w/363/h/363', '131', null);
INSERT INTO `person` VALUES ('78', '朱红凯', '3', '室内设计', '创业宣言：只要找准方向，站在风口的猪也能飞。\r\n店铺介绍：做一个自己用后有效果的产品, 我家全走正品，微店上主走护肤品，服装类更多详情请询QQ309675296招代理哦\r\n个人介绍：一个性格不冷不热的、想通过互联网挖掘自己潜力的资深宅男。“学而知不足”是我大学期间学习和工作的动力，除了\r\n必修课之外，我还坚持自学了Office、Flash、FrontPage、Photoshop等多种专业软件。学习之余，我还不忘坚持参加各种体育\r\n活动与社交活动。在思想行为方面，我作风优良、待人诚恳，能较好处理人际关际，处事冷静稳健，能合理地统筹安排生活中的事\r\n务。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069dab6ea24.jpg?imageView2/2/w/363/h/363', '132', null);
INSERT INTO `person` VALUES ('79', '程霞', '1', '英语教育', '个人简历\r\n大家好，我是地地道道的四川人，但我不爱吃辣椒；我热衷于巧克力，但我并不瘦。我喜欢文字，用笔尖写下对生活的思考让我感\r\n到自在；我喜欢音乐，演奏提琴让我感到充实；我更喜欢各种新的尝试，接受不同的挑战，在迷茫中找寻自己的方向。\r\n创业宣言：一朵花现时的美丽源自于当初它那浸透奋斗的泪水与牺牲的细雨的芽。', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069ec58416f.jpg?imageView2/2/w/363/h/363', '133', null);
INSERT INTO `person` VALUES ('80', '夏清清', '2', '英语教育', '我现任系学生会办公室副主任，也是入党积极分子。在学习中，我成绩优异，曾获两次二等综合奖学金，一次一等综合奖学金，一\r\n次国家励志奖学金等。在工作上，我尽职尽责，做好本分，组织负责系内主办的各项活动，获得老师，同事的一致好评。在文体方\r\n面，我积极参加校内组织的各项活动，表现优异，并获得认定证书。我相信，未来虽遥远的没有形状，但我会尽一切努力勾勒出我\r\n的梦想。\r\n创业宣言：去做想做的事吧，趁阳光正好，趁微风不燥。趁你还年轻，趁他还未老。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a04ce0179.jpg?imageView2/2/w/363/h/363', '134', null);
INSERT INTO `person` VALUES ('81', '徐福川', '1', '英语教育', '自信开朗，踏实执着，积极向上。热爱自然科学，更热爱自然给予生活的无限感动。我很享受独处时的安静，也喜爱尘世的繁华与\r\n喧嚣。悲观之人遇事皆为红灯，乐观之人遇事皆为绿灯，而真正的智者，却是色盲。我愿做一名智者，把大千世界的纷纷扰扰、悲\r\n欢离合，都深深地镌刻进记忆里，作为我宝贵的人生财富。我相信，拥有技能，我们可以在人生的路上走得更远；坚持兴趣，即便\r\n前路漫漫也不会孤单。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a3108109f.jpg?imageView2/2/w/363/h/363', '135', null);
INSERT INTO `person` VALUES ('82', '邓阳春', '2', '语文教育', '呆傻呆傻的处女座汉子，超级无敌纠结狂。喜欢文字和音乐，喜欢宅在家里当公主。方向感极弱，严重路痴，渴望有人陪伴不会迷\r\n失在人海的旅行。\r\n创业宣言：我怎会甘于庸碌,打破常规的束缚是我神圣的权利,只要我能做到,赐予我机会和挑战吧,安稳与舒适并不使我心驰神往,不愿\r\n做个循规蹈矩的人,不愿唯唯诺诺麻木不仁,我渴望遭遇惊涛骇浪,去实现我的梦想,历经千难万险，哪怕折戟沉沙,也要为争取成功的欢\r\n乐而冲浪.', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a41399e92.jpg?imageView2/2/w/363/h/363', '136', null);
INSERT INTO `person` VALUES ('83', '杨谨瑶', '5', '学前教育', '个人简历:杨谨瑶，今年二十岁，在重庆幼儿师范就读,我热爱学习，曾多次获得奖学金，除了学习之外，我还积极参加各种社会实\r\n践活动。我曾担任班级的宣传委员，组织了几次班级和学院的公益活动：如青年志愿者助残活动，向孤儿院儿童献爱心活动等。组\r\n织这些活动以及和活动中和成员的相处让我学到了很多东西，对培养自己的能力和人际关系的处理有很大的好处，为我更快的走向\r\n社会提供了良好的平台。\r\n创业宣言:一切只为发家致富\r\n店铺介绍:主打原单潮鞋，质量优先，好评优先', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a4dcad12e.jpg?imageView2/2/w/363/h/363', '137', null);
INSERT INTO `person` VALUES ('84', '陈双婷', '4', '学前教育', '个人简历：擅长朗诵，辩论，演讲，写作，曾获全国中小学生作文大奖赛三等奖，学院普通话大赛二等奖，朗诵二等奖，毛笔字大\r\n赛二等奖，征文大赛一等奖，多次在学校校报发表文章，参与校报编辑工作，准备大三自己排版写做一本书。\r\n创业宣言：我只做自己爱好并真心的事，为了喜好可以热情付出，我享受自己每一次成长和飞跃，山高水远，地远天高，世事不\r\n难，吾辈何用。十八岁的年龄刚刚好，去奉献，奋斗，热血，激情，做那梦想的雄鹰，搏击最高远的天空，飞跃最宽阔的大海。只\r\n要去做。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a5d1db8a3.jpg?imageView2/2/w/363/h/363', '138', null);
INSERT INTO `person` VALUES ('85', '刘慧婷', '4', '学前教育', '个人介绍：我是个爱美的女孩，我喜欢创业，对生活充满热情！\r\n店铺介绍:本店主要代购韩国护肤品。有爱丽小屋，悦诗风吟，菲诗小铺，九朵云，兰芝等一系列产品。商品众多，热诚欢迎各位选\r\n购，我们的承诺是：货真价实.\r\n　　一、坚持走薄利多销路线，以顾客第一为宗旨，每样商品都是低价销售。\r\n　　二、以信誉第一为宗旨，始终保证商品的质量。\r\n　　三、我店承诺给予最大的优惠， 让您买得开心，用得放心。\r\n　　四、热情回复每位顾客提出的各种问题。\r\n创业宣言:赚钱之道很多，但是找不到赚钱的种子，便成不了事业家。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a6a383c6d.jpg?imageView2/2/w/363/h/363', '139', null);
INSERT INTO `person` VALUES ('86', '黄梦姚', '3', '学前教育', '个人简历：\r\n我是一枚来自安静村的姑娘，\r\n喜欢音乐、旅行，用笔描写关于语言的故事。\r\n因不善言辞，时常在网络里需找实践。\r\n常有网编、摄影，用来一个人笨拙的生活着。\r\n　　　——我相信天道酬勤，成就来自于坚持。\r\n\r\n创业宣言： 业精于勤，荒于嬉；行成于思，毁于随。　', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a7aac7a66.jpg?imageView2/2/w/363/h/363', '140', null);
INSERT INTO `person` VALUES ('87', '张家蒸', '2', '学前教育', '店铺介绍：本店专营纯手工花和开克安全书包。手工花可以代您表达对朋友的友谊之情，对恋人的深深爱意。开克安全书包兼有书\r\n包和GPS定位功能，既方便亲人朋友的联系，也更加关心青少年儿童的安全成长。\r\n店主介绍：本店主是一个乐观向上，认真积极，富有责任心和爱心的女孩，也喜欢广交朋友，同时在此欢迎广大群众朋友与本店联\r\n系。\r\n创业宣言：我和你的明天一起成长，不为很好，只为更好。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a89fd4da2.jpg?imageView2/2/w/363/h/363', '141', null);
INSERT INTO `person` VALUES ('88', '谭海燕', '5', '国际经济与贸易', '创业简历：我的家庭条件并不富裕。为了减少家庭的经济负担，我参与过各种各样的兼职，比如酒店服务员、发单员、促销员等\r\n等。我并不喜欢这些兼职的工作，没有自主性，并不自由。因此，我开始尝试自己创业。在情人节购进鲜花沿街叫卖是我创业的起\r\n点，尽管辛苦，但颇有乐趣，收入也比兼职时要多。之后，经由同学介绍，我开始了微商之路。虽然坎坷，却也乐在其中。\r\n创业宣言：努力去做只能及格，用心去做才能优秀。相信自己，把不可能变为可能。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a9d814b67.jpg?imageView2/2/w/363/h/363', '142', null);
INSERT INTO `person` VALUES ('89', '董一菲', '3', '教育学', '店铺介绍：Fairywn店铺主要经营妃莉娅品牌的护肤品和减肥产品。妃莉娅作为最新美容美体品牌将瘦身与健康完美结合，产品适\r\n宜三高心脏病患者服用；妃莉娅品牌还录制CCTV《影响力对话》栏目并正式与CCTV称为合作伙伴。本店铺同时还分销各种精美小\r\n饰品和时尚男女服饰和其他女士护肤品，种类多样。适合各类人群进行选购', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506ab3dc4332.jpg?imageView2/2/w/363/h/363', '143', null);
INSERT INTO `person` VALUES ('90', '任然', '2', '朝鲜语', '创业宣言 : 有朋友在国外留学，所以想着做国外代购，不买国外的化妆品不知道，国内的护肤品化妆品价格有多坑，有时也可以做\r\n免税店代购，价格更加便宜，为国内爱美的朋友们提供一个更加便宜稳当的渠道。相信我的就来吧！\r\n店铺介绍 : 韩国和澳大利亚的化妆护肤品代购，法国的部分化妆护肤品代购。\r\n个人介绍 : 喜欢研究护肤品化妆品，在这个代购盛行的时代，我也想着做一个小店店，和国外的同学卖我们自己研究过用过的东\r\n西，并且我自己2015-8月将去韩国读书，到时候大部分东西均可人肉寄回国，请关注。', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506abfe89b2c.jpg?imageView2/2/w/363/h/363', '144', null);
INSERT INTO `person` VALUES ('91', '陈晓雯', '1', '朝鲜语', '个人介绍：个人可宅可嗨可疯可安静型。四川外国语大学韩国语专业学生一枚。做人诚信，做事认真。是个值得交的朋友。\r\n店铺介绍：小店主打韩国化妆品，护肤品。因为另一个店主在韩国，自己也要在这学期完了去韩国，全保证货真价实的。后期也会\r\n陆陆续续上新一些服装配饰等，喜欢韩国护肤化妆品和服饰的朋友不要错过。\r\n创业宣言：女子当自强', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506acc845ac4.jpg?imageView2/2/w/363/h/363', '145', null);
INSERT INTO `person` VALUES ('92', '王艳萍', '4', '市场营销', '大学不仅仅是学术的象牙\r\n塔、我眼中的大学充满不一\r\n样的色彩、人生嘛、就要敢\r\n于尝试、没有尝试、就没有\r\n发言权、明天会发生什么、\r\n谁知道呢\r\n平时在生活中、我喜欢音乐 \r\n虽然并没有什么艺术细胞、\r\n我喜欢写小文章、虽然一般\r\n般、但是这些都没关系、生\r\n活嘛、开心就好啦\r\n欢迎大家光临、本店女装漂\r\n亮时尚、总有一款适合你！', 'http://ttmicrostore.qiniudn.com/2015-03-20_550c3b6f49abb.jpg?imageView2/2/w/363/h/363', '146', null);
INSERT INTO `person` VALUES ('93', '陈以毕', '2', '动画', '据点   以据点的方式给你新的诱\r\n惑，用据点来做为你们美丽诱惑\r\n的落脚点吧。', 'http://ttmicrostore.qiniudn.com/2015-03-20_550c2dbb4555a.jpg?imageView2/2/w/363/h/363', '147', null);
INSERT INTO `person` VALUES ('94', '张鹏', '4', '经济学', '个人简历：\r\n我是一枚来自安静村的姑娘，\r\n喜欢音乐、旅行，用笔描写关于语言的故事。\r\n因不善言辞，时常在网络里需找实践。\r\n常有网编、摄影，用来一个人笨拙的生活着。\r\n　　　——我相信天道酬勤，成就来自于坚持。\r\n创业宣言： 业精于勤，荒于嬉；行成于思，毁于随。　', 'http://ttmicrostore.qiniudn.com/2015-03-20_550bf6ba621de.jpg?imageView2/2/w/363/h/363', '148', null);
INSERT INTO `person` VALUES ('95', '夏文嘉', '4', '生物技术', '20岁，真的是一个很尴尬的年\r\n龄。一方面，你想脱离父母证\r\n明自己已经长大成人，另一方\r\n面，你却羽翼未丰，无法单枪\r\n匹马地闯出一片天地。所以，\r\n现在的我只能从最基础的事情\r\n开始摸索，学会经营、学会管\r\n理、学会推销……明天的路将\r\n通向何方，我们谁也不知道。\r\n但是至少在今天、在此时此\r\n刻，我知道我脚下的路，知道\r\n我前进的方向。虽然我没有好\r\n的口才，也没有丰富的经验，\r\n但是我有诚挚的心，诚信经营\r\n是我的原则。希望在挑战自我\r\n的同时，我能收获好的口才、\r\n丰富的经验，以及用一颗诚挚\r\n的心换来的朋友。', 'http://ttmicrostore.qiniudn.com/2015-03-21_550ce7180af83.jpg?imageView2/2/w/363/h/363', '149', null);
INSERT INTO `person` VALUES ('96', '123', '5', '123', '13', 'http://ttmicrostore.qiniudn.com/2015-03-21_550cfe1e49a76.jpg?imageView2/2/w/363/h/363', '150', null);
INSERT INTO `person` VALUES ('97', '123', '2', '31', '321', 'http://ttmicrostore.qiniudn.com/2015-03-21_550d00fb7e9ce.jpg?imageView2/2/w/363/h/363', '151', null);
INSERT INTO `person` VALUES ('98', '李堃', '2', '市场营销', '大四的老腊肉，只想安安\r\n静静地让黔江特产住进你\r\n的胃，当然。我们的服务\r\n态度与质量需要你体验了\r\n再予以充分肯定。', 'http://ttmicrostore.qiniudn.com/2015-03-22_550ea2e1a070e.jpg?imageView2/2/w/363/h/363', '152', null);
INSERT INTO `person` VALUES ('99', '朱小梅', '5', '市场营销', '你可以不聪明但是不能不努力，\r\n或许你孤独，但是奋斗路上的我\r\n们不孤单，我们正年轻，敢做敢\r\n说就是我们的代名词。A S主打\r\n天然护肤，让你做最活力最青春\r\n的自己，你就是自己的王。', 'http://ttmicrostore.qiniudn.com/2015-03-22_550e31bf22463.jpeg?imageView2/2/w/363/h/363', '153', null);
INSERT INTO `person` VALUES ('100', '何源', '5', '报关与国际货运', '本人性格沉稳，做事积极主动，\r\n从小就怀揣着创业的梦想，平时\r\n也会花时间了解创业，相信自己\r\n一定会在创业的路上干出一番事\r\n业，一路追逐直到成功。', 'http://ttmicrostore.qiniudn.com/2015-03-22_550ec3c269441.jpg?imageView2/2/w/363/h/363', '154', null);
INSERT INTO `person` VALUES ('101', '郭丽君', '4', '财务管理（金融投资）', '海阔凭鱼跃，天高任鸟飞。', 'http://ttmicrostore.qiniudn.com/2015-03-23_550fe214c68ee.jpg?imageView2/2/w/363/h/363', '155', null);
INSERT INTO `person` VALUES ('102', '覃岭', '2', '继电保护与自动化', '通过开微店学习，增加社会经\r\n历。通过自己的努力，证明自\r\n己。', 'http://ttmicrostore.qiniudn.com/2015-03-24_5510b03c003d2.jpg?imageView2/2/w/363/h/363', '156', null);
INSERT INTO `person` VALUES ('103', '张庆林', '5', '会计电算化', '人生乐观、待人友善、行动力\r\n强、对人生充满理想。典型的\r\n射手座，活泼，坦率！作为新\r\n时代的青少年，可以挖掘到市\r\n场的潜力在何处，积极投入到\r\n创业中来是一个很好的提升自\r\n己的机会，那怕跌倒，就在那\r\n爬起来！生活总是充满阳光！', 'http://ttmicrostore.qiniudn.com/2015-03-24_5510dbbadea08.jpg?imageView2/2/w/363/h/363', '157', null);
INSERT INTO `person` VALUES ('104', '覃岭', '5', '继电保护', '开微店增加社会经历，努力证明\r\n自己。', 'http://ttmicrostore.qiniudn.com/2015-03-24_551123612105c.jpg?imageView2/2/w/363/h/363', '158', null);
INSERT INTO `person` VALUES ('105', '陈晶晶', '4', '人力资源管理', '现在的人们都会因为身材\r\n过胖，皮肤暗黄等问题感\r\n到困扰，我的产品可以解\r\n决问题。', 'http://ttmicrostore.qiniudn.com/2015-03-25_55125ce48b5b4.jpg?imageView2/2/w/363/h/363', '159', null);
INSERT INTO `person` VALUES ('106', '胡培雅', '4', '会计学', '业余爱好', 'http://ttmicrostore.qiniudn.com/2015-03-25_55128dd1dec47.jpg?imageView2/2/w/363/h/363', '160', null);
INSERT INTO `person` VALUES ('107', '小健健', '1', '法学', '多做一些有意义的事', 'http://ttmicrostore.qiniudn.com/2015-03-27_55142f167b806.jpg?imageView2/2/w/363/h/363', '161', null);
INSERT INTO `person` VALUES ('108', '郭小娟', '1', '国际商务', '利用社交媒体的便利性，开设自\r\n己的微店，赚取人生的第一桶\r\n金，为自己以后的学习生活工作\r\n积累点滴经验，为家庭减轻负\r\n担。', 'http://ttmicrostore.qiniudn.com/2015-03-27_5515352d0e847.jpg?imageView2/2/w/363/h/363', '162', null);
INSERT INTO `person` VALUES ('109', '何青妍', '4', '会计与统计核算', '自己为自己打工', 'http://ttmicrostore.qiniudn.com/2015-03-28_5515a415f1653.jpg?imageView2/2/w/363/h/363', '163', null);
INSERT INTO `person` VALUES ('110', 'r32', '4', 'fe3', 'adf\r\nsdfas\r\neee\r\nsdddddddddddddddddddd\r\nddddddddddddddddddddd\r\nddddddddd\r\nadsfasdfasdf\r\nsdafsadf', '/tuan2/Public/uploads/2015-04-10/5527d1c64020a.jpg', '164', '喏wfw');
INSERT INTO `person` VALUES ('111', '123', '3', '213', 'e21', '/tuan2/Public/uploads/2015-04-10/5527d4373a549.jpg', '165', 'eeee');
INSERT INTO `person` VALUES ('112', 'dw', '0', 'wq', 'qds\r\nqwd', '/tuan2/Public/uploads/2015-04-14/552bfbd72dba4.jpg', '166', 'w');
INSERT INTO `person` VALUES ('113', 'dew', '3', 'few', 'ewf\r\nwefwe\r\nfw', '/tuan2/Public/uploads/2015-04-14/552bff303390d.jpg', '167', 'weew');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('4', '83');
INSERT INTO `recommend` VALUES ('5', '85');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '电商卖家');
INSERT INTO `school` VALUES ('2', '微店商家');
INSERT INTO `school` VALUES ('3', 'APP平台');
INSERT INTO `school` VALUES ('4', '实体门店');
INSERT INTO `school` VALUES ('5', '其他类别');

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
  `comment_num` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('82', '文以载道', '71', 'http://wd.koudai.com/s/283200229', '5', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f1cd08120.jpg?imageView2/5/w/121/h/121', '1685', '1', '15823886750', '0');
INSERT INTO `store` VALUES ('81', '隔壁大老李的折扣店', '70', 'http://wd.koudai.com/s/206256410?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-17_5507efa09da7d.jpg?imageView2/5/w/121/h/121', '1660', '1', '13896527950', '0');
INSERT INTO `store` VALUES ('83', '西政文传印象馆', '72', 'http://wd.koudai.com/?userid=257484152&amp;wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f388594f6.jpg?imageView2/5/w/121/h/121', '1797', '1', '18716860520', '0');
INSERT INTO `store` VALUES ('84', '丹丹的小店铺', '73', 'http://wd.koudai.com/s/256909514?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-13_5503078b1c4b4.jpg?imageView2/5/w/121/h/121', '1688', '1', '13996570273', '0');
INSERT INTO `store` VALUES ('85', '优衣家', '74', 'http://wd.koudai.com/s/257703953?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-13_5503082e8bb17.jpg?imageView2/5/w/121/h/121', '1781', '1', '13527393029', '0');
INSERT INTO `store` VALUES ('86', '芴砼之薏', '75', 'http://wd.koudai.com/?userid=207882604', '3', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f62a49d3e.jpg?imageView2/5/w/121/h/121', '1630', '1', '15213385184', '0');
INSERT INTO `store` VALUES ('87', 'Subway.', '76', 'http://wd.koudai.com/s/258738394', '3', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f59ea0011.jpg?imageView2/5/w/121/h/121', '1645', '1', '18375828432', '0');
INSERT INTO `store` VALUES ('88', '小敖美凝美肌', '77', 'http://wd.koudai.com/s/206256410?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-13_550308b81d462.jpg?imageView2/5/w/121/h/121', '1630', '1', '18883287197', '0');
INSERT INTO `store` VALUES ('89', '黛莱美面膜专卖店', '78', 'http://wd.koudai.com/s/209499510?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-13_55030957f3488.jpg?imageView2/5/w/121/h/121', '1590', '1', '13028322986', '0');
INSERT INTO `store` VALUES ('90', '转角&amp;遇见', '79', 'http://wd.koudai.com/s/252217618?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502f78c2a9c0.jpg?imageView2/5/w/121/h/121', '1642', '1', '13370758062', '0');
INSERT INTO `store` VALUES ('91', 'VC美美妆', '80', 'http://wd.koudai.com/s/213567664?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030a20715dc.jpg?imageView2/5/w/121/h/121', '1692', '1', '18883503277', '0');
INSERT INTO `store` VALUES ('92', '暖心小屋', '81', 'http://wd.koudai.com/s/253069256?wfr=c', '1', 'http://ttmicrostore.qiniudn.com/2015-03-17_5507f5c45250f.jpg?imageView2/5/w/121/h/121', '1697', '1', '18883812349', '0');
INSERT INTO `store` VALUES ('93', '吃个柚子才不卖', '82', 'http://wd.koudai.com/s/258610580?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030b44086c7.jpg?imageView2/5/w/121/h/121', '1815', '1', '13290046990', '0');
INSERT INTO `store` VALUES ('94', '小熊的银饰屋', '83', 'http://wd.koudai.com/s/163937344?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fad4817dc.jpeg?imageView2/5/w/121/h/121', '1606', '1', '15736231495', '0');
INSERT INTO `store` VALUES ('95', '膜龄面膜之家', '84', 'http://wd.koudai.com/s/210334162?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fb5974c74.jpg?imageView2/5/w/121/h/121', '1700', '1', '18680716408', '0');
INSERT INTO `store` VALUES ('96', 'BEPR', '85', 'http://wd.koudai.com/s/258767964', '1', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030e31becf3.jpg?imageView2/5/w/121/h/121', '1817', '1', '15683426770', '0');
INSERT INTO `store` VALUES ('97', '佰里挑衣时装店', '86', 'http://wd.koudai.com/?userid=254737696', '4', 'http://ttmicrostore.qiniudn.com/2015-03-17_5507eef2cac09.jpg?imageView2/5/w/121/h/121', '1861', '1', '13996659204', '3');
INSERT INTO `store` VALUES ('98', 'fancyplot', '87', 'http://wd.koudai.com/s/292824?wfr=c', '1', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fbc3d11cd.jpeg?imageView2/5/w/121/h/121', '1691', '1', '15923528237', '0');
INSERT INTO `store` VALUES ('99', '冠群芳倪兰蔷店', '88', 'http://v.shgqf.com/web/myshops/?userid=151519154&amp;tmb=18883159644&amp;from=timeline&amp;isappinstalled=0', '3', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fca1ddcec.jpg?imageView2/5/w/121/h/121', '1671', '1', '18883159644', '0');
INSERT INTO `store` VALUES ('100', 'Echo Echo', '89', 'http://wd.koudai.com/s/258610580?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-14_55030fa48df98.jpg?imageView2/5/w/121/h/121', '1752', '1', '15923039613', '0');
INSERT INTO `store` VALUES ('101', '梦欣尔家居服', '90', 'http://wd.koudai.com/s/258957416?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fd3c1399b.jpg?imageView2/5/w/121/h/121', '1733', '1', '18883101456', '0');
INSERT INTO `store` VALUES ('102', 'LUSSI', '91', 'http://wd.koudai.com/s/258741062?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-14_5503103aac492.jpg?imageView2/5/w/121/h/121', '1858', '1', '13678485227', '0');
INSERT INTO `store` VALUES ('103', '欣子家小店', '92', 'http://wd.koudai.com/s/206379928', '3', 'http://ttmicrostore.qiniudn.com/2015-03-13_5502fdc182852.jpeg?imageView2/5/w/121/h/121', '1678', '1', '13763077011', '0');
INSERT INTO `store` VALUES ('104', '雷雷雷大学生之家', '93', 'http://wd.koudai.com/?userid=206379928', '3', 'http://ttmicrostore.qiniudn.com/2015-03-15_5505a84a13275.jpeg?imageView2/5/w/121/h/121', '1234', '1', '13527406602', '0');
INSERT INTO `store` VALUES ('105', '一点来网络超市', '94', 'http://wd.koudai.com/?userid=258010144&amp;wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-16_55067338dcabb.jpg?imageView2/5/w/121/h/121', '1190', '1', '18883111727', '0');
INSERT INTO `store` VALUES ('106', '阳仔小铺', '95', 'http://wd.koudai.com/?userid=163372744&amp;wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_550678d99103c.jpg?imageView2/5/w/121/h/121', '1149', '1', '15922769523', '0');
INSERT INTO `store` VALUES ('107', '小黑杂货铺', '96', 'http://wd.koudai.com/s/253345438', '4', 'http://ttmicrostore.qiniudn.com/2015-03-16_55067e6bd90b2.jpg?imageView2/5/w/121/h/121', '1214', '1', '13628480890', '0');
INSERT INTO `store` VALUES ('108', 'Rainbow', '97', 'http://wd.koudai.com/?userid=161039263', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_550680ca4c550.jpg?imageView2/5/w/121/h/121', '1208', '1', '18608539395', '0');
INSERT INTO `store` VALUES ('109', '用吃丰富你的小嘴吧', '98', 'http://wd.koudai.com/s/257477326?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_550681fb74a9f.jpg?imageView2/5/w/121/h/121', '1159', '1', '13038329132', '0');
INSERT INTO `store` VALUES ('110', '唯爱美', '99', 'http://wd.koudai.com/s/165625116?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068302950e5.jpg?imageView2/5/w/121/h/121', '1171', '1', '18166577892', '0');
INSERT INTO `store` VALUES ('111', '天使之魅戴莱美', '100', 'http://wd.koudai.com/s/251795436?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068459ebf4d.jpg?imageView2/5/w/121/h/121', '1186', '1', '18102394610', '0');
INSERT INTO `store` VALUES ('112', '就在这里买', '101', 'http://wd.koudai.com/s/206612730?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506869b29319.jpg?imageView2/5/w/121/h/121', '1169', '1', '13108910670', '0');
INSERT INTO `store` VALUES ('113', 'THE QUEEN', '102', 'http://wd.koudai.com/s/258956186?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_550687d2dca2b.jpg?imageView2/5/w/121/h/121', '1175', '1', '15223538176', '0');
INSERT INTO `store` VALUES ('114', '小姨妈的店', '103', 'http://wd.koudai.com/?userid=239091127&amp;wfr=qzone', '4', 'http://ttmicrostore.qiniudn.com/2015-03-16_550688ed9e108.jpg?imageView2/5/w/121/h/121', '1184', '1', '18523804895', '0');
INSERT INTO `store` VALUES ('115', '我的小铺', '104', 'http://v.vdian.com/vshop/1/CPC/item.php', '4', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068a118d9bd.jpg?imageView2/5/w/121/h/121', '1184', '1', '18883372257', '0');
INSERT INTO `store` VALUES ('116', 'Π创意', '105', 'http://wd.koudai.com/s/259006106', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068b73db2ef.jpg?imageView2/5/w/121/h/121', '1163', '1', '18883306468', '0');
INSERT INTO `store` VALUES ('117', '西大五剑客文化产品', '106', 'http://wd.koudai.com/s/256906858?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068c2f7bc3d.jpg?imageView2/5/w/121/h/121', '1278', '1', '18580066065', '0');
INSERT INTO `store` VALUES ('118', '源小伊的收藏~', '107', 'http://wd.koudai.com/s/214877066?wfr=c', '1', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068e8c42a85.jpg?imageView2/5/w/121/h/121', '1243', '1', '18375630277', '0');
INSERT INTO `store` VALUES ('119', '小松卖女装', '108', 'http://wd.koudai.com/s/208770986?wfr=c', '1', 'http://ttmicrostore.qiniudn.com/2015-03-16_55068fb30679c.jpg?imageView2/5/w/121/h/121', '1267', '1', '18883317551', '0');
INSERT INTO `store` VALUES ('120', '哆啦A梦的口袋', '109', 'http://wd.koudai.com/s/258350152?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506911be4856.jpg?imageView2/5/w/121/h/121', '1188', '1', '18635220102', '0');
INSERT INTO `store` VALUES ('121', '味客', '110', 'http://http//wd.koudai.com/s/259052374?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_550692ad6a2ae.jpg?imageView2/5/w/121/h/121', '1156', '1', '18883246937', '0');
INSERT INTO `store` VALUES ('122', '豆腐美人', '111', 'http://wd.koudai.com/s/259077676?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506939a55865.jpg?imageView2/5/w/121/h/121', '1179', '1', '18883303301', '0');
INSERT INTO `store` VALUES ('123', '奉节记忆橙', '112', 'http://wd.koudai.com/s/270918789?wfr=qfriend', '1', 'http://ttmicrostore.qiniudn.com/2015-03-16_550694f18d900.jpg?imageView2/5/w/121/h/121', '1170', '1', '15123177305', '0');
INSERT INTO `store` VALUES ('124', '七朵色彩', '113', 'http://wd.koudai.com/?userid=254737696', '1', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069616bb2b1.jpg?imageView2/5/w/121/h/121', '1258', '1', '15086641951', '0');
INSERT INTO `store` VALUES ('125', '滇缅翡翠', '114', 'http://wd.koudai.com/s/256725690?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_550697232d9a9.jpg?imageView2/5/w/121/h/121', '1234', '1', '13618376165', '0');
INSERT INTO `store` VALUES ('126', '塑叶开明', '115', 'http://wd.koudai.com/s/2930273?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506981bb8ab5.jpg?imageView2/5/w/121/h/121', '1176', '1', '13340331012', '0');
INSERT INTO `store` VALUES ('127', '来自滩羊之乡', '116', 'http://wd.koudai.com/?userid=160284630&amp;wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-16_550698f6e7b36.jpg?imageView2/5/w/121/h/121', '1137', '1', '15215035100', '0');
INSERT INTO `store` VALUES ('128', '格调潮品街', '117', 'http://wd.koudai.com/s/251018166?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_550699e559474.jpg?imageView2/5/w/121/h/121', '1117', '1', '13896139243', '0');
INSERT INTO `store` VALUES ('129', '小仙家韩国代购美妆', '118', 'http://wd.koudai.com/s/211606258?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069aa516f71.jpeg?imageView2/5/w/121/h/121', '1193', '1', '13032349989', '0');
INSERT INTO `store` VALUES ('130', 'EH鞋库', '119', 'http://wd.koudai.com/s/258055230', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069b74ddc77.jpg?imageView2/5/w/121/h/121', '1211', '1', '18723130910', '0');
INSERT INTO `store` VALUES ('131', '立即美', '120', 'http://wd.koudai.com/s/257936348', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069c8c9dd0c.jpg?imageView2/5/w/121/h/121', '1179', '1', '18375744285', '0');
INSERT INTO `store` VALUES ('132', 'QR七染护肤馆', '121', 'http://wd.koudai.com/s/177900571', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069dab03d50.jpg?imageView2/5/w/121/h/121', '1207', '1', '13368277326', '0');
INSERT INTO `store` VALUES ('133', '美肤达人就是黛莱美', '122', 'http://Wd.koudai.com/s/258723762', '1', 'http://ttmicrostore.qiniudn.com/2015-03-16_55069ec50c511.jpg?imageView2/5/w/121/h/121', '1176', '1', '15803641804', '0');
INSERT INTO `store` VALUES ('134', '足夏小铺', '123', 'http://wd.koudai.com/?userid=258723762', '2', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a04c8337c.jpg?imageView2/5/w/121/h/121', '1181', '1', '15523738034', '0');
INSERT INTO `store` VALUES ('135', '晴川支微微粉尚', '124', 'http://wd.koudai.com/?userid=258723762', '1', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a30f47b66.jpg?imageView2/5/w/121/h/121', '1197', '1', '15023560100', '0');
INSERT INTO `store` VALUES ('136', '尚品自渡', '125', 'http://wd.koudai.com/?userid=258547162&amp;wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a41163733.jpg?imageView2/5/w/121/h/121', '1196', '1', '13272544840', '0');
INSERT INTO `store` VALUES ('137', 'YW—Dec', '126', 'http://wd.koudai.com/s/212445551', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a4db940c1.jpg?imageView2/5/w/121/h/121', '1104', '1', '18323586044', '0');
INSERT INTO `store` VALUES ('138', 'CHENKE潮品', '127', 'http://wd.koudai.com/s/254113498', '4', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a5d113226.jpg?imageView2/5/w/121/h/121', '1187', '1', '18723764532', '0');
INSERT INTO `store` VALUES ('139', '美丽驿站', '128', 'http://wd.koudai.com/s/253992948', '4', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a6a222a66.jpg?imageView2/5/w/121/h/121', '1176', '1', '15123838070', '0');
INSERT INTO `store` VALUES ('140', '啵啵悦诗正品代购', '129', 'http://wd.koudai.com/s/189485155?wfr=c', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a7a9bb5a2.jpg?imageView2/5/w/121/h/121', '1161', '1', '18723529557', '0');
INSERT INTO `store` VALUES ('141', '闺闺蜜蜜', '130', 'http://wd.koudai.com/s/211963899', '2', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a89e68f0d.jpg?imageView2/5/w/121/h/121', '1160', '1', '15223439184', '0');
INSERT INTO `store` VALUES ('142', 'Easydo', '131', 'http://wd.koudai.com/s/258796560?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506a9d7aaa0c.jpg?imageView2/5/w/121/h/121', '1349', '1', '13060223730', '1');
INSERT INTO `store` VALUES ('143', 'Fairywn', '132', 'http://wd.koudai.com/s/164881600', '3', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506ab3c81777.jpg?imageView2/5/w/121/h/121', '1325', '1', '15802391223', '0');
INSERT INTO `store` VALUES ('144', '郁金香购物之家', '133', 'http://wd.koudai.com/?userid=258581506&amp;wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506abfe07d2d.jpg?imageView2/5/w/121/h/121', '1273', '1', '18996917899', '0');
INSERT INTO `store` VALUES ('145', '大弦锡锡', '134', 'http://wd.koudai.com/s/258727750?wfr=c', '1', 'http://ttmicrostore.qiniudn.com/2015-03-16_5506acc7447c0.jpg?imageView2/5/w/121/h/121', '1289', '1', '15683427990', '0');
INSERT INTO `store` VALUES ('146', '萍萍之爱潮品铺', '135', 'http://weidian.com/s/321275938?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-20_550c3b6e82365.jpg?imageView2/5/w/121/h/121', '899', '1', '15310262401', '0');
INSERT INTO `store` VALUES ('147', '据点', '136', 'http://weidian.com/s/321295524?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-20_550c2dba81cb8.jpg?imageView2/5/w/121/h/121', '859', '1', '18788015205', '0');
INSERT INTO `store` VALUES ('149', '大洋彼岸的风情', '138', 'http://weidian.com/s/321038520?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-21_550ce70d1c91c.jpg?imageView2/5/w/121/h/121', '864', '1', '18883324296', '0');
INSERT INTO `store` VALUES ('153', '小时候的我不长这样', '142', '小时候的我不长这样  http://weidian.com/s/321631556?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-22_550e31bd33d0e.jpg?imageView2/5/w/121/h/121', '874', '1', '13658268391', '0');
INSERT INTO `store` VALUES ('152', '方方土的零食铺', '141', 'http://weidian.com/s/370514673?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-22_550ea2e00bacc.jpg?imageView2/5/w/121/h/121', '824', '1', '18581221937', '0');
INSERT INTO `store` VALUES ('156', '枫晨小榭', '145', 'http://weidian.com/s/321948416?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-24_5510b03b388f8.jpg?imageView2/5/w/121/h/121', '295', '1', '13452655711', '0');
INSERT INTO `store` VALUES ('154', '青春sprit', '143', 'http://weidian.com/s/321392490?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-22_550ec3c090a97.jpg?imageView2/5/w/121/h/121', '802', '1', '18883199591', '0');
INSERT INTO `store` VALUES ('155', '果果君', '144', 'http://weidian.com/s/321804914?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-23_550fe20cc3f6c.jpg?imageView2/5/w/121/h/121', '805', '1', '13896579596', '0');
INSERT INTO `store` VALUES ('157', 'J–Live', '146', '原装进口  http://weidian.com/s/321986920?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-24_5510dbb9b2c03.jpg?imageView2/5/w/121/h/121', '284', '1', '18290404927', '0');
INSERT INTO `store` VALUES ('158', '枫晨小榭', '147', 'http://weidian.com/s/321948416?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-24_55112360524b0.jpg?imageView2/5/w/121/h/121', '283', '1', '13452655711', '0');
INSERT INTO `store` VALUES ('159', 'Crystal的美妆', '148', 'Crystal的六个太阳 http://weidian.com/s/253895051?wfr=c', '2', 'http://ttmicrostore.qiniudn.com/2015-03-25_55125ce3afe5c.jpg?imageView2/5/w/121/h/121', '292', '1', '18580009598', '0');
INSERT INTO `store` VALUES ('160', '艾洛芙', '149', 'http://1848498676@.com', '5', 'http://ttmicrostore.qiniudn.com/2015-03-25_55128dd173def.jpg?imageView2/5/w/121/h/121', '263', '1', '18306072443', '0');
INSERT INTO `store` VALUES ('161', '小四店铺', '150', 'http://weidian.com/s/320637320?wfr=c', '5', 'http://ttmicrostore.qiniudn.com/2015-03-27_55142f158a05f.jpg?imageView2/5/w/121/h/121', '39', '1', '15178712844', '0');
INSERT INTO `store` VALUES ('162', '令君香', '151', '令君香  http://weidian.com/s/322819184?wfr=c', '4', 'http://ttmicrostore.qiniudn.com/2015-03-27_5515352b64c93.jpg?imageView2/5/w/121/h/121', '12', '1', '15025403346', '0');
INSERT INTO `store` VALUES ('163', '小妍子百货店', '152', 'http://shop116905531.taobao.com/index.htm', '4', 'http://ttmicrostore.qiniudn.com/2015-03-28_5515a41452d87.jpg?imageView2/5/w/121/h/121', '10015', '1', '15856077212', '0');
INSERT INTO `store` VALUES ('164', 'test', '153', 'http://33233', '1', '/tuan2/Public/uploads/2015-04-11/5529345dd7cc5.jpg', '1000014', '1', '12345678900', '1');
INSERT INTO `store` VALUES ('165', '123213', '154', 'http://213', '1', '/tuan2/Public/uploads/2015-04-10/5527d43739832.jpg', '1781', '1', '12345678900', '0');
INSERT INTO `store` VALUES ('166', '32', '155', 'http://日3', '1', '/tuan2/Public/uploads/2015-04-14/552bfbd725a82.jpg', '0', '1', '12345678900', '0');
INSERT INTO `store` VALUES ('167', 'ko', '156', 'http://ko', '3', '/tuan2/Public/uploads/2015-04-14/552bff3032e64.jpg', '4', '1', '12345678900', '1');

-- ----------------------------
-- Table structure for store_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_goods`;
CREATE TABLE `store_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of store_goods
-- ----------------------------
INSERT INTO `store_goods` VALUES ('31', '81', '7');
INSERT INTO `store_goods` VALUES ('32', '82', '5');
INSERT INTO `store_goods` VALUES ('33', '83', '5');
INSERT INTO `store_goods` VALUES ('34', '84', '6');
INSERT INTO `store_goods` VALUES ('35', '85', '8');
INSERT INTO `store_goods` VALUES ('36', '86', '6');
INSERT INTO `store_goods` VALUES ('37', '87', '4');
INSERT INTO `store_goods` VALUES ('38', '88', '8');
INSERT INTO `store_goods` VALUES ('39', '89', '6');
INSERT INTO `store_goods` VALUES ('40', '90', '3');
INSERT INTO `store_goods` VALUES ('41', '91', '1');
INSERT INTO `store_goods` VALUES ('42', '92', '5');
INSERT INTO `store_goods` VALUES ('43', '93', '6');
INSERT INTO `store_goods` VALUES ('44', '94', '2');
INSERT INTO `store_goods` VALUES ('45', '95', '9');
INSERT INTO `store_goods` VALUES ('46', '96', '2');
INSERT INTO `store_goods` VALUES ('47', '97', '1');
INSERT INTO `store_goods` VALUES ('48', '98', '6');
INSERT INTO `store_goods` VALUES ('49', '99', '7');
INSERT INTO `store_goods` VALUES ('50', '100', '7');
INSERT INTO `store_goods` VALUES ('51', '101', '5');
INSERT INTO `store_goods` VALUES ('52', '102', '4');
INSERT INTO `store_goods` VALUES ('53', '103', '9');
INSERT INTO `store_goods` VALUES ('54', '104', '7');
INSERT INTO `store_goods` VALUES ('55', '105', '1');
INSERT INTO `store_goods` VALUES ('56', '106', '5');
INSERT INTO `store_goods` VALUES ('57', '107', '3');
INSERT INTO `store_goods` VALUES ('58', '108', '1');
INSERT INTO `store_goods` VALUES ('59', '109', '2');
INSERT INTO `store_goods` VALUES ('60', '110', '8');
INSERT INTO `store_goods` VALUES ('61', '111', '1');
INSERT INTO `store_goods` VALUES ('62', '112', '3');
INSERT INTO `store_goods` VALUES ('63', '113', '1');
INSERT INTO `store_goods` VALUES ('64', '114', '5');
INSERT INTO `store_goods` VALUES ('65', '115', '3');
INSERT INTO `store_goods` VALUES ('66', '116', '3');
INSERT INTO `store_goods` VALUES ('67', '117', '3');
INSERT INTO `store_goods` VALUES ('68', '118', '4');
INSERT INTO `store_goods` VALUES ('69', '119', '3');
INSERT INTO `store_goods` VALUES ('70', '120', '6');
INSERT INTO `store_goods` VALUES ('71', '121', '9');
INSERT INTO `store_goods` VALUES ('72', '122', '5');
INSERT INTO `store_goods` VALUES ('73', '123', '7');
INSERT INTO `store_goods` VALUES ('74', '124', '2');
INSERT INTO `store_goods` VALUES ('75', '125', '7');
INSERT INTO `store_goods` VALUES ('76', '126', '7');
INSERT INTO `store_goods` VALUES ('77', '127', '2');
INSERT INTO `store_goods` VALUES ('78', '128', '4');
INSERT INTO `store_goods` VALUES ('79', '129', '6');
INSERT INTO `store_goods` VALUES ('80', '130', '2');
INSERT INTO `store_goods` VALUES ('81', '131', '3');
INSERT INTO `store_goods` VALUES ('82', '132', '3');
INSERT INTO `store_goods` VALUES ('83', '133', '2');
INSERT INTO `store_goods` VALUES ('84', '134', '6');
INSERT INTO `store_goods` VALUES ('85', '135', '4');
INSERT INTO `store_goods` VALUES ('86', '136', '4');
INSERT INTO `store_goods` VALUES ('87', '137', '6');
INSERT INTO `store_goods` VALUES ('88', '138', '2');
INSERT INTO `store_goods` VALUES ('89', '139', '6');
INSERT INTO `store_goods` VALUES ('90', '140', '6');
INSERT INTO `store_goods` VALUES ('91', '141', '4');
INSERT INTO `store_goods` VALUES ('92', '142', '7');
INSERT INTO `store_goods` VALUES ('93', '143', '9');
INSERT INTO `store_goods` VALUES ('94', '144', '5');
INSERT INTO `store_goods` VALUES ('95', '145', '7');
INSERT INTO `store_goods` VALUES ('96', '146', '4');
INSERT INTO `store_goods` VALUES ('97', '147', '5');
INSERT INTO `store_goods` VALUES ('98', '148', '8');
INSERT INTO `store_goods` VALUES ('99', '149', '2');
INSERT INTO `store_goods` VALUES ('100', '150', '9');
INSERT INTO `store_goods` VALUES ('101', '151', '5');
INSERT INTO `store_goods` VALUES ('102', '152', '3');
INSERT INTO `store_goods` VALUES ('103', '153', '7');
INSERT INTO `store_goods` VALUES ('104', '154', '6');
INSERT INTO `store_goods` VALUES ('105', '155', '7');
INSERT INTO `store_goods` VALUES ('106', '156', '6');
INSERT INTO `store_goods` VALUES ('107', '157', '2');
INSERT INTO `store_goods` VALUES ('108', '158', '1');
INSERT INTO `store_goods` VALUES ('109', '159', '7');
INSERT INTO `store_goods` VALUES ('110', '160', '5');
INSERT INTO `store_goods` VALUES ('111', '161', '5');
INSERT INTO `store_goods` VALUES ('112', '162', '5');
INSERT INTO `store_goods` VALUES ('113', '163', '1');
INSERT INTO `store_goods` VALUES ('114', '164', '8');
INSERT INTO `store_goods` VALUES ('115', '165', '3');
INSERT INTO `store_goods` VALUES ('116', '166', '1');
INSERT INTO `store_goods` VALUES ('117', '167', '4');

-- ----------------------------
-- Table structure for store_tag
-- ----------------------------
DROP TABLE IF EXISTS `store_tag`;
CREATE TABLE `store_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of store_tag
-- ----------------------------
INSERT INTO `store_tag` VALUES ('121', '81', '125');
INSERT INTO `store_tag` VALUES ('122', '81', '126');
INSERT INTO `store_tag` VALUES ('123', '81', '127');
INSERT INTO `store_tag` VALUES ('124', '81', '128');
INSERT INTO `store_tag` VALUES ('125', '81', '129');
INSERT INTO `store_tag` VALUES ('126', '82', '130');
INSERT INTO `store_tag` VALUES ('127', '82', '131');
INSERT INTO `store_tag` VALUES ('128', '82', '132');
INSERT INTO `store_tag` VALUES ('129', '82', '133');
INSERT INTO `store_tag` VALUES ('130', '82', '134');
INSERT INTO `store_tag` VALUES ('131', '83', '135');
INSERT INTO `store_tag` VALUES ('132', '83', '136');
INSERT INTO `store_tag` VALUES ('133', '83', '137');
INSERT INTO `store_tag` VALUES ('134', '83', '138');
INSERT INTO `store_tag` VALUES ('135', '83', '139');
INSERT INTO `store_tag` VALUES ('136', '84', '140');
INSERT INTO `store_tag` VALUES ('137', '84', '141');
INSERT INTO `store_tag` VALUES ('138', '84', '142');
INSERT INTO `store_tag` VALUES ('139', '84', '143');
INSERT INTO `store_tag` VALUES ('140', '84', '144');
INSERT INTO `store_tag` VALUES ('141', '85', '145');
INSERT INTO `store_tag` VALUES ('142', '85', '146');
INSERT INTO `store_tag` VALUES ('143', '85', '147');
INSERT INTO `store_tag` VALUES ('144', '85', '148');
INSERT INTO `store_tag` VALUES ('145', '85', '149');
INSERT INTO `store_tag` VALUES ('146', '86', '150');
INSERT INTO `store_tag` VALUES ('147', '86', '151');
INSERT INTO `store_tag` VALUES ('148', '86', '152');
INSERT INTO `store_tag` VALUES ('149', '86', '153');
INSERT INTO `store_tag` VALUES ('150', '86', '154');
INSERT INTO `store_tag` VALUES ('151', '87', '155');
INSERT INTO `store_tag` VALUES ('152', '87', '156');
INSERT INTO `store_tag` VALUES ('153', '87', '157');
INSERT INTO `store_tag` VALUES ('154', '87', '158');
INSERT INTO `store_tag` VALUES ('155', '87', '159');
INSERT INTO `store_tag` VALUES ('156', '88', '160');
INSERT INTO `store_tag` VALUES ('157', '88', '161');
INSERT INTO `store_tag` VALUES ('158', '88', '162');
INSERT INTO `store_tag` VALUES ('159', '88', '163');
INSERT INTO `store_tag` VALUES ('160', '88', '164');
INSERT INTO `store_tag` VALUES ('161', '89', '165');
INSERT INTO `store_tag` VALUES ('162', '89', '166');
INSERT INTO `store_tag` VALUES ('163', '89', '167');
INSERT INTO `store_tag` VALUES ('164', '89', '168');
INSERT INTO `store_tag` VALUES ('165', '89', '169');
INSERT INTO `store_tag` VALUES ('166', '90', '170');
INSERT INTO `store_tag` VALUES ('167', '90', '171');
INSERT INTO `store_tag` VALUES ('168', '90', '172');
INSERT INTO `store_tag` VALUES ('169', '90', '173');
INSERT INTO `store_tag` VALUES ('170', '90', '174');
INSERT INTO `store_tag` VALUES ('171', '91', '175');
INSERT INTO `store_tag` VALUES ('172', '91', '176');
INSERT INTO `store_tag` VALUES ('173', '91', '177');
INSERT INTO `store_tag` VALUES ('174', '91', '178');
INSERT INTO `store_tag` VALUES ('175', '91', '179');
INSERT INTO `store_tag` VALUES ('176', '92', '180');
INSERT INTO `store_tag` VALUES ('177', '92', '181');
INSERT INTO `store_tag` VALUES ('178', '92', '182');
INSERT INTO `store_tag` VALUES ('179', '92', '183');
INSERT INTO `store_tag` VALUES ('180', '92', '184');
INSERT INTO `store_tag` VALUES ('181', '93', '185');
INSERT INTO `store_tag` VALUES ('182', '93', '186');
INSERT INTO `store_tag` VALUES ('183', '93', '187');
INSERT INTO `store_tag` VALUES ('184', '93', '188');
INSERT INTO `store_tag` VALUES ('185', '93', '189');
INSERT INTO `store_tag` VALUES ('186', '94', '190');
INSERT INTO `store_tag` VALUES ('187', '94', '191');
INSERT INTO `store_tag` VALUES ('188', '94', '192');
INSERT INTO `store_tag` VALUES ('189', '94', '193');
INSERT INTO `store_tag` VALUES ('190', '94', '194');
INSERT INTO `store_tag` VALUES ('191', '95', '195');
INSERT INTO `store_tag` VALUES ('192', '95', '196');
INSERT INTO `store_tag` VALUES ('193', '95', '197');
INSERT INTO `store_tag` VALUES ('194', '95', '198');
INSERT INTO `store_tag` VALUES ('195', '95', '199');
INSERT INTO `store_tag` VALUES ('196', '96', '200');
INSERT INTO `store_tag` VALUES ('197', '96', '201');
INSERT INTO `store_tag` VALUES ('198', '96', '202');
INSERT INTO `store_tag` VALUES ('199', '96', '203');
INSERT INTO `store_tag` VALUES ('200', '96', '204');
INSERT INTO `store_tag` VALUES ('201', '97', '205');
INSERT INTO `store_tag` VALUES ('202', '97', '206');
INSERT INTO `store_tag` VALUES ('203', '97', '207');
INSERT INTO `store_tag` VALUES ('204', '97', '208');
INSERT INTO `store_tag` VALUES ('205', '97', '209');
INSERT INTO `store_tag` VALUES ('206', '98', '210');
INSERT INTO `store_tag` VALUES ('207', '98', '211');
INSERT INTO `store_tag` VALUES ('208', '98', '212');
INSERT INTO `store_tag` VALUES ('209', '98', '213');
INSERT INTO `store_tag` VALUES ('210', '98', '214');
INSERT INTO `store_tag` VALUES ('211', '99', '215');
INSERT INTO `store_tag` VALUES ('212', '99', '216');
INSERT INTO `store_tag` VALUES ('213', '99', '217');
INSERT INTO `store_tag` VALUES ('214', '99', '218');
INSERT INTO `store_tag` VALUES ('215', '99', '219');
INSERT INTO `store_tag` VALUES ('216', '100', '220');
INSERT INTO `store_tag` VALUES ('217', '100', '221');
INSERT INTO `store_tag` VALUES ('218', '100', '222');
INSERT INTO `store_tag` VALUES ('219', '100', '223');
INSERT INTO `store_tag` VALUES ('220', '100', '224');
INSERT INTO `store_tag` VALUES ('221', '101', '225');
INSERT INTO `store_tag` VALUES ('222', '101', '226');
INSERT INTO `store_tag` VALUES ('223', '101', '227');
INSERT INTO `store_tag` VALUES ('224', '101', '228');
INSERT INTO `store_tag` VALUES ('225', '101', '229');
INSERT INTO `store_tag` VALUES ('226', '102', '230');
INSERT INTO `store_tag` VALUES ('227', '102', '231');
INSERT INTO `store_tag` VALUES ('228', '102', '232');
INSERT INTO `store_tag` VALUES ('229', '102', '233');
INSERT INTO `store_tag` VALUES ('230', '102', '234');
INSERT INTO `store_tag` VALUES ('231', '103', '235');
INSERT INTO `store_tag` VALUES ('232', '103', '236');
INSERT INTO `store_tag` VALUES ('233', '103', '237');
INSERT INTO `store_tag` VALUES ('234', '103', '238');
INSERT INTO `store_tag` VALUES ('235', '103', '239');
INSERT INTO `store_tag` VALUES ('236', '104', '240');
INSERT INTO `store_tag` VALUES ('237', '104', '241');
INSERT INTO `store_tag` VALUES ('238', '104', '242');
INSERT INTO `store_tag` VALUES ('239', '104', '243');
INSERT INTO `store_tag` VALUES ('240', '104', '244');
INSERT INTO `store_tag` VALUES ('241', '105', '245');
INSERT INTO `store_tag` VALUES ('242', '105', '246');
INSERT INTO `store_tag` VALUES ('243', '105', '247');
INSERT INTO `store_tag` VALUES ('244', '105', '248');
INSERT INTO `store_tag` VALUES ('245', '105', '249');
INSERT INTO `store_tag` VALUES ('246', '106', '250');
INSERT INTO `store_tag` VALUES ('247', '106', '251');
INSERT INTO `store_tag` VALUES ('248', '106', '252');
INSERT INTO `store_tag` VALUES ('249', '106', '253');
INSERT INTO `store_tag` VALUES ('250', '106', '254');
INSERT INTO `store_tag` VALUES ('251', '107', '255');
INSERT INTO `store_tag` VALUES ('252', '107', '256');
INSERT INTO `store_tag` VALUES ('253', '107', '257');
INSERT INTO `store_tag` VALUES ('254', '107', '258');
INSERT INTO `store_tag` VALUES ('255', '107', '259');
INSERT INTO `store_tag` VALUES ('256', '108', '260');
INSERT INTO `store_tag` VALUES ('257', '108', '261');
INSERT INTO `store_tag` VALUES ('258', '108', '262');
INSERT INTO `store_tag` VALUES ('259', '108', '263');
INSERT INTO `store_tag` VALUES ('260', '108', '264');
INSERT INTO `store_tag` VALUES ('261', '109', '265');
INSERT INTO `store_tag` VALUES ('262', '109', '266');
INSERT INTO `store_tag` VALUES ('263', '109', '267');
INSERT INTO `store_tag` VALUES ('264', '109', '268');
INSERT INTO `store_tag` VALUES ('265', '109', '269');
INSERT INTO `store_tag` VALUES ('266', '110', '270');
INSERT INTO `store_tag` VALUES ('267', '110', '271');
INSERT INTO `store_tag` VALUES ('268', '110', '272');
INSERT INTO `store_tag` VALUES ('269', '110', '273');
INSERT INTO `store_tag` VALUES ('270', '110', '274');
INSERT INTO `store_tag` VALUES ('271', '111', '275');
INSERT INTO `store_tag` VALUES ('272', '111', '276');
INSERT INTO `store_tag` VALUES ('273', '111', '277');
INSERT INTO `store_tag` VALUES ('274', '111', '278');
INSERT INTO `store_tag` VALUES ('275', '111', '279');
INSERT INTO `store_tag` VALUES ('276', '112', '280');
INSERT INTO `store_tag` VALUES ('277', '112', '281');
INSERT INTO `store_tag` VALUES ('278', '112', '282');
INSERT INTO `store_tag` VALUES ('279', '112', '283');
INSERT INTO `store_tag` VALUES ('280', '112', '284');
INSERT INTO `store_tag` VALUES ('281', '113', '285');
INSERT INTO `store_tag` VALUES ('282', '113', '286');
INSERT INTO `store_tag` VALUES ('283', '113', '287');
INSERT INTO `store_tag` VALUES ('284', '113', '288');
INSERT INTO `store_tag` VALUES ('285', '113', '289');
INSERT INTO `store_tag` VALUES ('286', '114', '290');
INSERT INTO `store_tag` VALUES ('287', '114', '291');
INSERT INTO `store_tag` VALUES ('288', '114', '292');
INSERT INTO `store_tag` VALUES ('289', '114', '293');
INSERT INTO `store_tag` VALUES ('290', '114', '294');
INSERT INTO `store_tag` VALUES ('291', '115', '295');
INSERT INTO `store_tag` VALUES ('292', '115', '296');
INSERT INTO `store_tag` VALUES ('293', '115', '297');
INSERT INTO `store_tag` VALUES ('294', '115', '298');
INSERT INTO `store_tag` VALUES ('295', '115', '299');
INSERT INTO `store_tag` VALUES ('296', '116', '300');
INSERT INTO `store_tag` VALUES ('297', '116', '301');
INSERT INTO `store_tag` VALUES ('298', '116', '302');
INSERT INTO `store_tag` VALUES ('299', '116', '303');
INSERT INTO `store_tag` VALUES ('300', '116', '304');
INSERT INTO `store_tag` VALUES ('301', '117', '305');
INSERT INTO `store_tag` VALUES ('302', '117', '306');
INSERT INTO `store_tag` VALUES ('303', '117', '307');
INSERT INTO `store_tag` VALUES ('304', '117', '308');
INSERT INTO `store_tag` VALUES ('305', '117', '309');
INSERT INTO `store_tag` VALUES ('306', '118', '310');
INSERT INTO `store_tag` VALUES ('307', '118', '311');
INSERT INTO `store_tag` VALUES ('308', '118', '312');
INSERT INTO `store_tag` VALUES ('309', '118', '313');
INSERT INTO `store_tag` VALUES ('310', '118', '314');
INSERT INTO `store_tag` VALUES ('311', '119', '315');
INSERT INTO `store_tag` VALUES ('312', '119', '316');
INSERT INTO `store_tag` VALUES ('313', '119', '317');
INSERT INTO `store_tag` VALUES ('314', '119', '318');
INSERT INTO `store_tag` VALUES ('315', '119', '319');
INSERT INTO `store_tag` VALUES ('316', '120', '320');
INSERT INTO `store_tag` VALUES ('317', '120', '321');
INSERT INTO `store_tag` VALUES ('318', '120', '322');
INSERT INTO `store_tag` VALUES ('319', '120', '323');
INSERT INTO `store_tag` VALUES ('320', '120', '324');
INSERT INTO `store_tag` VALUES ('321', '121', '325');
INSERT INTO `store_tag` VALUES ('322', '121', '326');
INSERT INTO `store_tag` VALUES ('323', '121', '327');
INSERT INTO `store_tag` VALUES ('324', '121', '328');
INSERT INTO `store_tag` VALUES ('325', '121', '329');
INSERT INTO `store_tag` VALUES ('326', '122', '330');
INSERT INTO `store_tag` VALUES ('327', '122', '331');
INSERT INTO `store_tag` VALUES ('328', '122', '332');
INSERT INTO `store_tag` VALUES ('329', '122', '333');
INSERT INTO `store_tag` VALUES ('330', '122', '334');
INSERT INTO `store_tag` VALUES ('331', '123', '335');
INSERT INTO `store_tag` VALUES ('332', '123', '336');
INSERT INTO `store_tag` VALUES ('333', '123', '337');
INSERT INTO `store_tag` VALUES ('334', '123', '338');
INSERT INTO `store_tag` VALUES ('335', '123', '339');
INSERT INTO `store_tag` VALUES ('336', '124', '340');
INSERT INTO `store_tag` VALUES ('337', '124', '341');
INSERT INTO `store_tag` VALUES ('338', '124', '342');
INSERT INTO `store_tag` VALUES ('339', '124', '343');
INSERT INTO `store_tag` VALUES ('340', '124', '344');
INSERT INTO `store_tag` VALUES ('341', '125', '345');
INSERT INTO `store_tag` VALUES ('342', '125', '346');
INSERT INTO `store_tag` VALUES ('343', '125', '347');
INSERT INTO `store_tag` VALUES ('344', '125', '348');
INSERT INTO `store_tag` VALUES ('345', '125', '349');
INSERT INTO `store_tag` VALUES ('346', '126', '350');
INSERT INTO `store_tag` VALUES ('347', '126', '351');
INSERT INTO `store_tag` VALUES ('348', '126', '352');
INSERT INTO `store_tag` VALUES ('349', '126', '353');
INSERT INTO `store_tag` VALUES ('350', '126', '354');
INSERT INTO `store_tag` VALUES ('351', '127', '355');
INSERT INTO `store_tag` VALUES ('352', '127', '356');
INSERT INTO `store_tag` VALUES ('353', '127', '357');
INSERT INTO `store_tag` VALUES ('354', '127', '358');
INSERT INTO `store_tag` VALUES ('355', '127', '359');
INSERT INTO `store_tag` VALUES ('356', '128', '360');
INSERT INTO `store_tag` VALUES ('357', '128', '361');
INSERT INTO `store_tag` VALUES ('358', '128', '362');
INSERT INTO `store_tag` VALUES ('359', '128', '363');
INSERT INTO `store_tag` VALUES ('360', '128', '364');
INSERT INTO `store_tag` VALUES ('361', '129', '365');
INSERT INTO `store_tag` VALUES ('362', '129', '366');
INSERT INTO `store_tag` VALUES ('363', '129', '367');
INSERT INTO `store_tag` VALUES ('364', '129', '368');
INSERT INTO `store_tag` VALUES ('365', '129', '369');
INSERT INTO `store_tag` VALUES ('366', '130', '370');
INSERT INTO `store_tag` VALUES ('367', '130', '371');
INSERT INTO `store_tag` VALUES ('368', '130', '372');
INSERT INTO `store_tag` VALUES ('369', '130', '373');
INSERT INTO `store_tag` VALUES ('370', '130', '374');
INSERT INTO `store_tag` VALUES ('371', '131', '375');
INSERT INTO `store_tag` VALUES ('372', '131', '376');
INSERT INTO `store_tag` VALUES ('373', '131', '377');
INSERT INTO `store_tag` VALUES ('374', '131', '378');
INSERT INTO `store_tag` VALUES ('375', '131', '379');
INSERT INTO `store_tag` VALUES ('376', '132', '380');
INSERT INTO `store_tag` VALUES ('377', '132', '381');
INSERT INTO `store_tag` VALUES ('378', '132', '382');
INSERT INTO `store_tag` VALUES ('379', '132', '383');
INSERT INTO `store_tag` VALUES ('380', '132', '384');
INSERT INTO `store_tag` VALUES ('381', '133', '385');
INSERT INTO `store_tag` VALUES ('382', '133', '386');
INSERT INTO `store_tag` VALUES ('383', '133', '387');
INSERT INTO `store_tag` VALUES ('384', '133', '388');
INSERT INTO `store_tag` VALUES ('385', '133', '389');
INSERT INTO `store_tag` VALUES ('386', '134', '390');
INSERT INTO `store_tag` VALUES ('387', '134', '391');
INSERT INTO `store_tag` VALUES ('388', '134', '392');
INSERT INTO `store_tag` VALUES ('389', '134', '393');
INSERT INTO `store_tag` VALUES ('390', '134', '394');
INSERT INTO `store_tag` VALUES ('391', '135', '395');
INSERT INTO `store_tag` VALUES ('392', '135', '396');
INSERT INTO `store_tag` VALUES ('393', '135', '397');
INSERT INTO `store_tag` VALUES ('394', '135', '398');
INSERT INTO `store_tag` VALUES ('395', '135', '399');
INSERT INTO `store_tag` VALUES ('396', '136', '400');
INSERT INTO `store_tag` VALUES ('397', '136', '401');
INSERT INTO `store_tag` VALUES ('398', '136', '402');
INSERT INTO `store_tag` VALUES ('399', '136', '403');
INSERT INTO `store_tag` VALUES ('400', '136', '404');
INSERT INTO `store_tag` VALUES ('401', '137', '405');
INSERT INTO `store_tag` VALUES ('402', '137', '406');
INSERT INTO `store_tag` VALUES ('403', '137', '407');
INSERT INTO `store_tag` VALUES ('404', '137', '408');
INSERT INTO `store_tag` VALUES ('405', '137', '409');
INSERT INTO `store_tag` VALUES ('406', '138', '410');
INSERT INTO `store_tag` VALUES ('407', '138', '411');
INSERT INTO `store_tag` VALUES ('408', '138', '412');
INSERT INTO `store_tag` VALUES ('409', '138', '413');
INSERT INTO `store_tag` VALUES ('410', '138', '414');
INSERT INTO `store_tag` VALUES ('411', '139', '415');
INSERT INTO `store_tag` VALUES ('412', '139', '416');
INSERT INTO `store_tag` VALUES ('413', '139', '417');
INSERT INTO `store_tag` VALUES ('414', '139', '418');
INSERT INTO `store_tag` VALUES ('415', '139', '419');
INSERT INTO `store_tag` VALUES ('416', '140', '420');
INSERT INTO `store_tag` VALUES ('417', '140', '421');
INSERT INTO `store_tag` VALUES ('418', '140', '422');
INSERT INTO `store_tag` VALUES ('419', '140', '423');
INSERT INTO `store_tag` VALUES ('420', '140', '424');
INSERT INTO `store_tag` VALUES ('421', '141', '425');
INSERT INTO `store_tag` VALUES ('422', '141', '426');
INSERT INTO `store_tag` VALUES ('423', '141', '427');
INSERT INTO `store_tag` VALUES ('424', '141', '428');
INSERT INTO `store_tag` VALUES ('425', '141', '429');
INSERT INTO `store_tag` VALUES ('426', '142', '430');
INSERT INTO `store_tag` VALUES ('427', '142', '431');
INSERT INTO `store_tag` VALUES ('428', '142', '432');
INSERT INTO `store_tag` VALUES ('429', '142', '433');
INSERT INTO `store_tag` VALUES ('430', '142', '434');
INSERT INTO `store_tag` VALUES ('431', '143', '435');
INSERT INTO `store_tag` VALUES ('432', '143', '436');
INSERT INTO `store_tag` VALUES ('433', '143', '437');
INSERT INTO `store_tag` VALUES ('434', '143', '438');
INSERT INTO `store_tag` VALUES ('435', '143', '439');
INSERT INTO `store_tag` VALUES ('436', '144', '440');
INSERT INTO `store_tag` VALUES ('437', '144', '441');
INSERT INTO `store_tag` VALUES ('438', '144', '442');
INSERT INTO `store_tag` VALUES ('439', '144', '443');
INSERT INTO `store_tag` VALUES ('440', '144', '444');
INSERT INTO `store_tag` VALUES ('441', '145', '445');
INSERT INTO `store_tag` VALUES ('442', '145', '446');
INSERT INTO `store_tag` VALUES ('443', '145', '447');
INSERT INTO `store_tag` VALUES ('444', '145', '448');
INSERT INTO `store_tag` VALUES ('445', '145', '449');
INSERT INTO `store_tag` VALUES ('446', '146', '450');
INSERT INTO `store_tag` VALUES ('447', '146', '451');
INSERT INTO `store_tag` VALUES ('448', '146', '452');
INSERT INTO `store_tag` VALUES ('449', '146', '453');
INSERT INTO `store_tag` VALUES ('450', '146', '454');
INSERT INTO `store_tag` VALUES ('451', '147', '455');
INSERT INTO `store_tag` VALUES ('452', '147', '456');
INSERT INTO `store_tag` VALUES ('453', '147', '457');
INSERT INTO `store_tag` VALUES ('454', '147', '458');
INSERT INTO `store_tag` VALUES ('455', '147', '459');
INSERT INTO `store_tag` VALUES ('456', '148', '460');
INSERT INTO `store_tag` VALUES ('457', '148', '461');
INSERT INTO `store_tag` VALUES ('458', '148', '462');
INSERT INTO `store_tag` VALUES ('459', '148', '463');
INSERT INTO `store_tag` VALUES ('460', '148', '464');
INSERT INTO `store_tag` VALUES ('461', '149', '465');
INSERT INTO `store_tag` VALUES ('462', '149', '466');
INSERT INTO `store_tag` VALUES ('463', '149', '467');
INSERT INTO `store_tag` VALUES ('464', '149', '468');
INSERT INTO `store_tag` VALUES ('465', '149', '469');
INSERT INTO `store_tag` VALUES ('466', '150', '470');
INSERT INTO `store_tag` VALUES ('467', '150', '471');
INSERT INTO `store_tag` VALUES ('468', '150', '472');
INSERT INTO `store_tag` VALUES ('469', '150', '473');
INSERT INTO `store_tag` VALUES ('470', '150', '474');
INSERT INTO `store_tag` VALUES ('471', '151', '475');
INSERT INTO `store_tag` VALUES ('472', '151', '476');
INSERT INTO `store_tag` VALUES ('473', '151', '477');
INSERT INTO `store_tag` VALUES ('474', '151', '478');
INSERT INTO `store_tag` VALUES ('475', '151', '479');
INSERT INTO `store_tag` VALUES ('476', '152', '480');
INSERT INTO `store_tag` VALUES ('477', '152', '481');
INSERT INTO `store_tag` VALUES ('478', '152', '482');
INSERT INTO `store_tag` VALUES ('479', '152', '483');
INSERT INTO `store_tag` VALUES ('480', '152', '484');
INSERT INTO `store_tag` VALUES ('481', '153', '485');
INSERT INTO `store_tag` VALUES ('482', '153', '486');
INSERT INTO `store_tag` VALUES ('483', '153', '487');
INSERT INTO `store_tag` VALUES ('484', '153', '488');
INSERT INTO `store_tag` VALUES ('485', '153', '489');
INSERT INTO `store_tag` VALUES ('486', '154', '490');
INSERT INTO `store_tag` VALUES ('487', '154', '491');
INSERT INTO `store_tag` VALUES ('488', '154', '492');
INSERT INTO `store_tag` VALUES ('489', '154', '493');
INSERT INTO `store_tag` VALUES ('490', '154', '494');
INSERT INTO `store_tag` VALUES ('491', '155', '495');
INSERT INTO `store_tag` VALUES ('492', '155', '496');
INSERT INTO `store_tag` VALUES ('493', '155', '497');
INSERT INTO `store_tag` VALUES ('494', '155', '498');
INSERT INTO `store_tag` VALUES ('495', '155', '499');
INSERT INTO `store_tag` VALUES ('496', '156', '500');
INSERT INTO `store_tag` VALUES ('497', '156', '501');
INSERT INTO `store_tag` VALUES ('498', '156', '502');
INSERT INTO `store_tag` VALUES ('499', '156', '503');
INSERT INTO `store_tag` VALUES ('500', '156', '504');
INSERT INTO `store_tag` VALUES ('501', '157', '505');
INSERT INTO `store_tag` VALUES ('502', '157', '506');
INSERT INTO `store_tag` VALUES ('503', '157', '507');
INSERT INTO `store_tag` VALUES ('504', '157', '508');
INSERT INTO `store_tag` VALUES ('505', '157', '509');
INSERT INTO `store_tag` VALUES ('506', '158', '510');
INSERT INTO `store_tag` VALUES ('507', '158', '511');
INSERT INTO `store_tag` VALUES ('508', '158', '512');
INSERT INTO `store_tag` VALUES ('509', '158', '513');
INSERT INTO `store_tag` VALUES ('510', '158', '514');
INSERT INTO `store_tag` VALUES ('511', '159', '515');
INSERT INTO `store_tag` VALUES ('512', '159', '516');
INSERT INTO `store_tag` VALUES ('513', '159', '517');
INSERT INTO `store_tag` VALUES ('514', '159', '518');
INSERT INTO `store_tag` VALUES ('515', '159', '519');
INSERT INTO `store_tag` VALUES ('516', '160', '520');
INSERT INTO `store_tag` VALUES ('517', '160', '521');
INSERT INTO `store_tag` VALUES ('518', '160', '522');
INSERT INTO `store_tag` VALUES ('519', '160', '523');
INSERT INTO `store_tag` VALUES ('520', '160', '524');
INSERT INTO `store_tag` VALUES ('521', '161', '525');
INSERT INTO `store_tag` VALUES ('522', '161', '526');
INSERT INTO `store_tag` VALUES ('523', '161', '527');
INSERT INTO `store_tag` VALUES ('524', '161', '528');
INSERT INTO `store_tag` VALUES ('525', '161', '529');
INSERT INTO `store_tag` VALUES ('526', '162', '530');
INSERT INTO `store_tag` VALUES ('527', '162', '531');
INSERT INTO `store_tag` VALUES ('528', '162', '532');
INSERT INTO `store_tag` VALUES ('529', '162', '533');
INSERT INTO `store_tag` VALUES ('530', '162', '534');
INSERT INTO `store_tag` VALUES ('531', '163', '535');
INSERT INTO `store_tag` VALUES ('532', '163', '536');
INSERT INTO `store_tag` VALUES ('533', '163', '537');
INSERT INTO `store_tag` VALUES ('534', '163', '538');
INSERT INTO `store_tag` VALUES ('535', '163', '539');
INSERT INTO `store_tag` VALUES ('536', '164', '540');
INSERT INTO `store_tag` VALUES ('537', '164', '541');
INSERT INTO `store_tag` VALUES ('538', '164', '542');
INSERT INTO `store_tag` VALUES ('539', '165', '543');
INSERT INTO `store_tag` VALUES ('540', '165', '544');
INSERT INTO `store_tag` VALUES ('541', '165', '545');
INSERT INTO `store_tag` VALUES ('542', '166', '546');
INSERT INTO `store_tag` VALUES ('543', '166', '547');
INSERT INTO `store_tag` VALUES ('544', '166', '548');
INSERT INTO `store_tag` VALUES ('545', '167', '549');
INSERT INTO `store_tag` VALUES ('546', '167', '550');
INSERT INTO `store_tag` VALUES ('547', '167', '551');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `click_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('125', '迪奥', '243');
INSERT INTO `tags` VALUES ('126', '百雀羚', '269');
INSERT INTO `tags` VALUES ('127', '卡姿兰', '87');
INSERT INTO `tags` VALUES ('128', '', '168');
INSERT INTO `tags` VALUES ('129', '', '231');
INSERT INTO `tags` VALUES ('130', '古文', '124');
INSERT INTO `tags` VALUES ('131', '辞赋', '179');
INSERT INTO `tags` VALUES ('132', '撰写', '131');
INSERT INTO `tags` VALUES ('133', '', '264');
INSERT INTO `tags` VALUES ('134', '', '128');
INSERT INTO `tags` VALUES ('135', '马克杯', '142');
INSERT INTO `tags` VALUES ('136', '帽子', '214');
INSERT INTO `tags` VALUES ('137', '衣服', '180');
INSERT INTO `tags` VALUES ('138', '', '297');
INSERT INTO `tags` VALUES ('139', '', '330');
INSERT INTO `tags` VALUES ('140', '面膜', '147');
INSERT INTO `tags` VALUES ('141', '韩束', '299');
INSERT INTO `tags` VALUES ('142', 'LH', '175');
INSERT INTO `tags` VALUES ('143', '', '221');
INSERT INTO `tags` VALUES ('144', '', '182');
INSERT INTO `tags` VALUES ('145', '女鞋', '109');
INSERT INTO `tags` VALUES ('146', '包包', '286');
INSERT INTO `tags` VALUES ('147', '衣服', '180');
INSERT INTO `tags` VALUES ('148', '', '233');
INSERT INTO `tags` VALUES ('149', '', '164');
INSERT INTO `tags` VALUES ('150', '银饰', '72');
INSERT INTO `tags` VALUES ('151', '耳环', '234');
INSERT INTO `tags` VALUES ('152', '戒指', '229');
INSERT INTO `tags` VALUES ('153', '', '129');
INSERT INTO `tags` VALUES ('154', '', '237');
INSERT INTO `tags` VALUES ('155', '面膜', '226');
INSERT INTO `tags` VALUES ('156', '肌底液', '250');
INSERT INTO `tags` VALUES ('157', '爽肤水', '270');
INSERT INTO `tags` VALUES ('158', '', '133');
INSERT INTO `tags` VALUES ('159', '', '195');
INSERT INTO `tags` VALUES ('160', '彩妆', '122');
INSERT INTO `tags` VALUES ('161', '洗面奶', '303');
INSERT INTO `tags` VALUES ('162', '补水', '113');
INSERT INTO `tags` VALUES ('163', '', '183');
INSERT INTO `tags` VALUES ('164', '', '174');
INSERT INTO `tags` VALUES ('165', '蓝莓', '293');
INSERT INTO `tags` VALUES ('166', '黛莱美', '182');
INSERT INTO `tags` VALUES ('167', '', '230');
INSERT INTO `tags` VALUES ('168', '', '285');
INSERT INTO `tags` VALUES ('169', '', '156');
INSERT INTO `tags` VALUES ('170', '精油', '141');
INSERT INTO `tags` VALUES ('171', '祛斑霜', '174');
INSERT INTO `tags` VALUES ('172', '芦荟胶', '232');
INSERT INTO `tags` VALUES ('173', '', '157');
INSERT INTO `tags` VALUES ('174', '', '195');
INSERT INTO `tags` VALUES ('175', '面膜', '311');
INSERT INTO `tags` VALUES ('176', '好面膜', '142');
INSERT INTO `tags` VALUES ('177', '叼面膜', '312');
INSERT INTO `tags` VALUES ('178', '', '195');
INSERT INTO `tags` VALUES ('179', '', '177');
INSERT INTO `tags` VALUES ('180', '洗面奶', '95');
INSERT INTO `tags` VALUES ('181', '粉底霜', '87');
INSERT INTO `tags` VALUES ('182', '面膜', '345');
INSERT INTO `tags` VALUES ('183', '', '314');
INSERT INTO `tags` VALUES ('184', '', '169');
INSERT INTO `tags` VALUES ('185', '男装', '197');
INSERT INTO `tags` VALUES ('186', '衣服', '198');
INSERT INTO `tags` VALUES ('187', '裤子', '114');
INSERT INTO `tags` VALUES ('188', '', '141');
INSERT INTO `tags` VALUES ('189', '', '259');
INSERT INTO `tags` VALUES ('190', '银饰', '309');
INSERT INTO `tags` VALUES ('191', '戒指', '266');
INSERT INTO `tags` VALUES ('192', '项链', '190');
INSERT INTO `tags` VALUES ('193', '', '87');
INSERT INTO `tags` VALUES ('194', '', '178');
INSERT INTO `tags` VALUES ('195', '面膜', '161');
INSERT INTO `tags` VALUES ('196', '护肤', '93');
INSERT INTO `tags` VALUES ('197', '化妆品', '297');
INSERT INTO `tags` VALUES ('198', '', '311');
INSERT INTO `tags` VALUES ('199', '', '291');
INSERT INTO `tags` VALUES ('200', '杂货', '230');
INSERT INTO `tags` VALUES ('201', '杯子', '105');
INSERT INTO `tags` VALUES ('202', '牙刷', '259');
INSERT INTO `tags` VALUES ('203', '', '244');
INSERT INTO `tags` VALUES ('204', '', '179');
INSERT INTO `tags` VALUES ('205', '女鞋', '229');
INSERT INTO `tags` VALUES ('206', '上衣', '278');
INSERT INTO `tags` VALUES ('207', '裤裙', '115');
INSERT INTO `tags` VALUES ('208', '', '268');
INSERT INTO `tags` VALUES ('209', '', '179');
INSERT INTO `tags` VALUES ('210', '毛衣', '166');
INSERT INTO `tags` VALUES ('211', '裤子', '137');
INSERT INTO `tags` VALUES ('212', '衬衣', '270');
INSERT INTO `tags` VALUES ('213', '', '223');
INSERT INTO `tags` VALUES ('214', '', '129');
INSERT INTO `tags` VALUES ('215', '礼品', '107');
INSERT INTO `tags` VALUES ('216', '鲜花', '120');
INSERT INTO `tags` VALUES ('217', '百货', '278');
INSERT INTO `tags` VALUES ('218', '', '323');
INSERT INTO `tags` VALUES ('219', '', '164');
INSERT INTO `tags` VALUES ('220', '上衣', '94');
INSERT INTO `tags` VALUES ('221', '裙子', '160');
INSERT INTO `tags` VALUES ('222', '袜子', '97');
INSERT INTO `tags` VALUES ('223', '', '300');
INSERT INTO `tags` VALUES ('224', '', '69');
INSERT INTO `tags` VALUES ('225', '家居服', '83');
INSERT INTO `tags` VALUES ('226', '女装', '105');
INSERT INTO `tags` VALUES ('227', '衬衣', '102');
INSERT INTO `tags` VALUES ('228', '', '126');
INSERT INTO `tags` VALUES ('229', '', '314');
INSERT INTO `tags` VALUES ('230', '面膜', '301');
INSERT INTO `tags` VALUES ('231', '护肤', '314');
INSERT INTO `tags` VALUES ('232', '女裙', '289');
INSERT INTO `tags` VALUES ('233', '', '267');
INSERT INTO `tags` VALUES ('234', '', '289');
INSERT INTO `tags` VALUES ('235', '手工皂', '327');
INSERT INTO `tags` VALUES ('236', '化妆品', '189');
INSERT INTO `tags` VALUES ('237', '零食', '310');
INSERT INTO `tags` VALUES ('238', '', '221');
INSERT INTO `tags` VALUES ('239', '', '128');
INSERT INTO `tags` VALUES ('240', '手工皂', '203');
INSERT INTO `tags` VALUES ('241', '护肤', '307');
INSERT INTO `tags` VALUES ('242', '祛痘', '250');
INSERT INTO `tags` VALUES ('243', '', '310');
INSERT INTO `tags` VALUES ('244', '', '309');
INSERT INTO `tags` VALUES ('245', '饰品', '323');
INSERT INTO `tags` VALUES ('246', '女包', '331');
INSERT INTO `tags` VALUES ('247', '公仔', '115');
INSERT INTO `tags` VALUES ('248', '', '238');
INSERT INTO `tags` VALUES ('249', '', '325');
INSERT INTO `tags` VALUES ('250', '纽百伦', '260');
INSERT INTO `tags` VALUES ('251', '男鞋', '228');
INSERT INTO `tags` VALUES ('252', '彪马', '159');
INSERT INTO `tags` VALUES ('253', '', '74');
INSERT INTO `tags` VALUES ('254', '', '248');
INSERT INTO `tags` VALUES ('255', '护肤品', '299');
INSERT INTO `tags` VALUES ('256', '面膜', '65');
INSERT INTO `tags` VALUES ('257', '饰品', '296');
INSERT INTO `tags` VALUES ('258', '', '149');
INSERT INTO `tags` VALUES ('259', '', '259');
INSERT INTO `tags` VALUES ('260', '护肤', '220');
INSERT INTO `tags` VALUES ('261', '代购', '243');
INSERT INTO `tags` VALUES ('262', '蜗牛水', '156');
INSERT INTO `tags` VALUES ('263', '', '301');
INSERT INTO `tags` VALUES ('264', '', '158');
INSERT INTO `tags` VALUES ('265', '零食', '142');
INSERT INTO `tags` VALUES ('266', '牛肉条', '133');
INSERT INTO `tags` VALUES ('267', '山楂球', '120');
INSERT INTO `tags` VALUES ('268', '', '310');
INSERT INTO `tags` VALUES ('269', '', '305');
INSERT INTO `tags` VALUES ('270', '面膜', '281');
INSERT INTO `tags` VALUES ('271', '香水', '107');
INSERT INTO `tags` VALUES ('272', '护肤品', '254');
INSERT INTO `tags` VALUES ('273', '', '98');
INSERT INTO `tags` VALUES ('274', '', '198');
INSERT INTO `tags` VALUES ('275', '护肤品', '194');
INSERT INTO `tags` VALUES ('276', '芦荟胶', '208');
INSERT INTO `tags` VALUES ('277', '面膜', '131');
INSERT INTO `tags` VALUES ('278', '', '88');
INSERT INTO `tags` VALUES ('279', '', '131');
INSERT INTO `tags` VALUES ('280', '护肤品', '162');
INSERT INTO `tags` VALUES ('281', '手工品', '329');
INSERT INTO `tags` VALUES ('282', '百货', '260');
INSERT INTO `tags` VALUES ('283', '', '203');
INSERT INTO `tags` VALUES ('284', '', '89');
INSERT INTO `tags` VALUES ('285', '护肤', '200');
INSERT INTO `tags` VALUES ('286', '美容仪', '212');
INSERT INTO `tags` VALUES ('287', '面膜', '253');
INSERT INTO `tags` VALUES ('288', '', '167');
INSERT INTO `tags` VALUES ('289', '', '214');
INSERT INTO `tags` VALUES ('290', '面膜', '248');
INSERT INTO `tags` VALUES ('291', '护肤品', '122');
INSERT INTO `tags` VALUES ('292', '洗面奶', '126');
INSERT INTO `tags` VALUES ('293', '', '185');
INSERT INTO `tags` VALUES ('294', '', '72');
INSERT INTO `tags` VALUES ('295', '面膜', '300');
INSERT INTO `tags` VALUES ('296', '洗面奶', '142');
INSERT INTO `tags` VALUES ('297', '护肤品', '280');
INSERT INTO `tags` VALUES ('298', '', '88');
INSERT INTO `tags` VALUES ('299', '', '76');
INSERT INTO `tags` VALUES ('300', '充电宝', '295');
INSERT INTO `tags` VALUES ('301', 'u盘', '312');
INSERT INTO `tags` VALUES ('302', '数码', '198');
INSERT INTO `tags` VALUES ('303', '', '293');
INSERT INTO `tags` VALUES ('304', '', '112');
INSERT INTO `tags` VALUES ('305', '特产', '161');
INSERT INTO `tags` VALUES ('306', '西大', '266');
INSERT INTO `tags` VALUES ('307', '纪念品', '303');
INSERT INTO `tags` VALUES ('308', '', '234');
INSERT INTO `tags` VALUES ('309', '', '166');
INSERT INTO `tags` VALUES ('310', '手工艺', '211');
INSERT INTO `tags` VALUES ('311', '盆栽', '310');
INSERT INTO `tags` VALUES ('312', '百货', '200');
INSERT INTO `tags` VALUES ('313', '', '296');
INSERT INTO `tags` VALUES ('314', '', '120');
INSERT INTO `tags` VALUES ('315', '羽绒服', '191');
INSERT INTO `tags` VALUES ('316', '女装', '79');
INSERT INTO `tags` VALUES ('317', '毛衣', '288');
INSERT INTO `tags` VALUES ('318', '', '288');
INSERT INTO `tags` VALUES ('319', '', '224');
INSERT INTO `tags` VALUES ('320', '女包', '85');
INSERT INTO `tags` VALUES ('321', '零食', '148');
INSERT INTO `tags` VALUES ('322', '百货', '214');
INSERT INTO `tags` VALUES ('323', '', '201');
INSERT INTO `tags` VALUES ('324', '', '144');
INSERT INTO `tags` VALUES ('325', '百货', '89');
INSERT INTO `tags` VALUES ('326', '零食', '101');
INSERT INTO `tags` VALUES ('327', '衣服', '211');
INSERT INTO `tags` VALUES ('328', '', '238');
INSERT INTO `tags` VALUES ('329', '', '129');
INSERT INTO `tags` VALUES ('330', '日用品', '106');
INSERT INTO `tags` VALUES ('331', '百货', '296');
INSERT INTO `tags` VALUES ('332', '女装', '342');
INSERT INTO `tags` VALUES ('333', '', '232');
INSERT INTO `tags` VALUES ('334', '', '180');
INSERT INTO `tags` VALUES ('335', '奉节', '246');
INSERT INTO `tags` VALUES ('336', '脐橙', '85');
INSERT INTO `tags` VALUES ('337', '纽荷尔', '163');
INSERT INTO `tags` VALUES ('338', '', '125');
INSERT INTO `tags` VALUES ('339', '', '152');
INSERT INTO `tags` VALUES ('340', '女装', '297');
INSERT INTO `tags` VALUES ('341', '裙子', '190');
INSERT INTO `tags` VALUES ('342', '短裤', '146');
INSERT INTO `tags` VALUES ('343', '', '253');
INSERT INTO `tags` VALUES ('344', '', '302');
INSERT INTO `tags` VALUES ('345', '翡翠', '227');
INSERT INTO `tags` VALUES ('346', '缅甸', '95');
INSERT INTO `tags` VALUES ('347', '手链', '142');
INSERT INTO `tags` VALUES ('348', '', '182');
INSERT INTO `tags` VALUES ('349', '', '90');
INSERT INTO `tags` VALUES ('350', '零食', '176');
INSERT INTO `tags` VALUES ('351', '巧克力', '107');
INSERT INTO `tags` VALUES ('352', '通心粉', '114');
INSERT INTO `tags` VALUES ('353', '', '245');
INSERT INTO `tags` VALUES ('354', '', '240');
INSERT INTO `tags` VALUES ('355', '女鞋', '292');
INSERT INTO `tags` VALUES ('356', '女装', '276');
INSERT INTO `tags` VALUES ('357', '女靴', '206');
INSERT INTO `tags` VALUES ('358', '', '243');
INSERT INTO `tags` VALUES ('359', '', '136');
INSERT INTO `tags` VALUES ('360', '运动', '145');
INSERT INTO `tags` VALUES ('361', '休闲', '141');
INSERT INTO `tags` VALUES ('362', '鞋服', '287');
INSERT INTO `tags` VALUES ('363', '', '227');
INSERT INTO `tags` VALUES ('364', '', '201');
INSERT INTO `tags` VALUES ('365', '化妆品', '164');
INSERT INTO `tags` VALUES ('366', '面膜', '275');
INSERT INTO `tags` VALUES ('367', '洗面奶', '110');
INSERT INTO `tags` VALUES ('368', '', '120');
INSERT INTO `tags` VALUES ('369', '', '141');
INSERT INTO `tags` VALUES ('370', '耐克', '59');
INSERT INTO `tags` VALUES ('371', '阿迪', '173');
INSERT INTO `tags` VALUES ('372', '运动鞋', '183');
INSERT INTO `tags` VALUES ('373', '', '138');
INSERT INTO `tags` VALUES ('374', '', '194');
INSERT INTO `tags` VALUES ('375', '化妆品', '108');
INSERT INTO `tags` VALUES ('376', '女包', '266');
INSERT INTO `tags` VALUES ('377', '童鞋', '120');
INSERT INTO `tags` VALUES ('378', '', '131');
INSERT INTO `tags` VALUES ('379', '', '304');
INSERT INTO `tags` VALUES ('380', '面膜', '148');
INSERT INTO `tags` VALUES ('381', '护肤', '155');
INSERT INTO `tags` VALUES ('382', '洗面奶', '176');
INSERT INTO `tags` VALUES ('383', '', '254');
INSERT INTO `tags` VALUES ('384', '', '206');
INSERT INTO `tags` VALUES ('385', '面膜', '104');
INSERT INTO `tags` VALUES ('386', '洗面奶', '131');
INSERT INTO `tags` VALUES ('387', '护肤品', '295');
INSERT INTO `tags` VALUES ('388', '', '270');
INSERT INTO `tags` VALUES ('389', '', '286');
INSERT INTO `tags` VALUES ('390', '洗面奶', '197');
INSERT INTO `tags` VALUES ('391', '面膜', '222');
INSERT INTO `tags` VALUES ('392', '护肤品', '166');
INSERT INTO `tags` VALUES ('393', '', '165');
INSERT INTO `tags` VALUES ('394', '', '229');
INSERT INTO `tags` VALUES ('395', '洗面奶', '122');
INSERT INTO `tags` VALUES ('396', '面膜', '223');
INSERT INTO `tags` VALUES ('397', '爽肤水', '310');
INSERT INTO `tags` VALUES ('398', '', '181');
INSERT INTO `tags` VALUES ('399', '', '237');
INSERT INTO `tags` VALUES ('400', '女装', '320');
INSERT INTO `tags` VALUES ('401', '围巾', '81');
INSERT INTO `tags` VALUES ('402', '好女装', '155');
INSERT INTO `tags` VALUES ('403', '', '208');
INSERT INTO `tags` VALUES ('404', '', '235');
INSERT INTO `tags` VALUES ('405', '面膜', '99');
INSERT INTO `tags` VALUES ('406', '洗面奶', '304');
INSERT INTO `tags` VALUES ('407', '身体乳', '226');
INSERT INTO `tags` VALUES ('408', '', '93');
INSERT INTO `tags` VALUES ('409', '', '277');
INSERT INTO `tags` VALUES ('410', '女装', '282');
INSERT INTO `tags` VALUES ('411', '女包', '182');
INSERT INTO `tags` VALUES ('412', '帽子', '178');
INSERT INTO `tags` VALUES ('413', '', '132');
INSERT INTO `tags` VALUES ('414', '', '292');
INSERT INTO `tags` VALUES ('415', '洗面奶', '112');
INSERT INTO `tags` VALUES ('416', '面膜', '161');
INSERT INTO `tags` VALUES ('417', '护肤品', '125');
INSERT INTO `tags` VALUES ('418', '', '133');
INSERT INTO `tags` VALUES ('419', '', '311');
INSERT INTO `tags` VALUES ('420', '护肤品', '326');
INSERT INTO `tags` VALUES ('421', '面膜', '77');
INSERT INTO `tags` VALUES ('422', '爽肤水', '264');
INSERT INTO `tags` VALUES ('423', '', '70');
INSERT INTO `tags` VALUES ('424', '', '248');
INSERT INTO `tags` VALUES ('425', '开克', '154');
INSERT INTO `tags` VALUES ('426', '书包', '337');
INSERT INTO `tags` VALUES ('427', '玫瑰', '230');
INSERT INTO `tags` VALUES ('428', '', '310');
INSERT INTO `tags` VALUES ('429', '', '169');
INSERT INTO `tags` VALUES ('430', '百货', '201');
INSERT INTO `tags` VALUES ('431', '花盆', '77');
INSERT INTO `tags` VALUES ('432', '口罩', '331');
INSERT INTO `tags` VALUES ('433', '', '285');
INSERT INTO `tags` VALUES ('434', '', '314');
INSERT INTO `tags` VALUES ('435', '饰品', '210');
INSERT INTO `tags` VALUES ('436', '男装', '299');
INSERT INTO `tags` VALUES ('437', '零食', '275');
INSERT INTO `tags` VALUES ('438', '', '279');
INSERT INTO `tags` VALUES ('439', '', '309');
INSERT INTO `tags` VALUES ('440', '代购', '232');
INSERT INTO `tags` VALUES ('441', '正品', '94');
INSERT INTO `tags` VALUES ('442', '化妆品', '293');
INSERT INTO `tags` VALUES ('443', '', '318');
INSERT INTO `tags` VALUES ('444', '', '317');
INSERT INTO `tags` VALUES ('445', '代购', '121');
INSERT INTO `tags` VALUES ('446', '正品', '218');
INSERT INTO `tags` VALUES ('447', '化妆品', '185');
INSERT INTO `tags` VALUES ('448', '', '230');
INSERT INTO `tags` VALUES ('449', '', '161');
INSERT INTO `tags` VALUES ('450', '时尚', '198');
INSERT INTO `tags` VALUES ('451', '大码', '291');
INSERT INTO `tags` VALUES ('452', '连衣裙', '194');
INSERT INTO `tags` VALUES ('453', '牛仔裤', '132');
INSERT INTO `tags` VALUES ('454', 't恤', '193');
INSERT INTO `tags` VALUES ('455', '缅甸', '131');
INSERT INTO `tags` VALUES ('456', '正品', '193');
INSERT INTO `tags` VALUES ('457', '翡翠', '102');
INSERT INTO `tags` VALUES ('458', '琥珀', '203');
INSERT INTO `tags` VALUES ('459', '香木', '98');
INSERT INTO `tags` VALUES ('460', '女装', '203');
INSERT INTO `tags` VALUES ('461', '短裤', '236');
INSERT INTO `tags` VALUES ('462', '衬衣', '333');
INSERT INTO `tags` VALUES ('463', '', '128');
INSERT INTO `tags` VALUES ('464', '', '153');
INSERT INTO `tags` VALUES ('465', '代购', '149');
INSERT INTO `tags` VALUES ('466', '直邮', '285');
INSERT INTO `tags` VALUES ('467', '正品', '115');
INSERT INTO `tags` VALUES ('468', '保健品', '272');
INSERT INTO `tags` VALUES ('469', '护肤品', '158');
INSERT INTO `tags` VALUES ('470', '213', '111');
INSERT INTO `tags` VALUES ('471', '21', '97');
INSERT INTO `tags` VALUES ('472', '12', '233');
INSERT INTO `tags` VALUES ('473', '', '175');
INSERT INTO `tags` VALUES ('474', '', '116');
INSERT INTO `tags` VALUES ('475', '12', '117');
INSERT INTO `tags` VALUES ('476', '123', '269');
INSERT INTO `tags` VALUES ('477', '3', '320');
INSERT INTO `tags` VALUES ('478', '123', '253');
INSERT INTO `tags` VALUES ('479', '12', '215');
INSERT INTO `tags` VALUES ('480', '黔江', '108');
INSERT INTO `tags` VALUES ('481', '特色', '156');
INSERT INTO `tags` VALUES ('482', '美食', '125');
INSERT INTO `tags` VALUES ('483', '实惠', '231');
INSERT INTO `tags` VALUES ('484', '吃货', '226');
INSERT INTO `tags` VALUES ('485', '护肤品', '98');
INSERT INTO `tags` VALUES ('486', '祛痘膏', '185');
INSERT INTO `tags` VALUES ('487', '瘦身霜', '155');
INSERT INTO `tags` VALUES ('488', '去黑头', '252');
INSERT INTO `tags` VALUES ('489', '美白', '316');
INSERT INTO `tags` VALUES ('490', '女装', '234');
INSERT INTO `tags` VALUES ('491', '鞋', '129');
INSERT INTO `tags` VALUES ('492', '创意品', '264');
INSERT INTO `tags` VALUES ('493', '名表', '269');
INSERT INTO `tags` VALUES ('494', '', '277');
INSERT INTO `tags` VALUES ('495', '暖宫', '143');
INSERT INTO `tags` VALUES ('496', '调经', '91');
INSERT INTO `tags` VALUES ('497', '补血', '227');
INSERT INTO `tags` VALUES ('498', '排毒', '169');
INSERT INTO `tags` VALUES ('499', '减肥', '288');
INSERT INTO `tags` VALUES ('500', '运动鞋', '308');
INSERT INTO `tags` VALUES ('501', '', '256');
INSERT INTO `tags` VALUES ('502', '', '310');
INSERT INTO `tags` VALUES ('503', '', '104');
INSERT INTO `tags` VALUES ('504', '', '298');
INSERT INTO `tags` VALUES ('505', '护肤品', '219');
INSERT INTO `tags` VALUES ('506', '洗面奶', '304');
INSERT INTO `tags` VALUES ('507', '洗发水', '182');
INSERT INTO `tags` VALUES ('508', '沐浴露', '85');
INSERT INTO `tags` VALUES ('509', '彩妆', '184');
INSERT INTO `tags` VALUES ('510', '运动鞋', '155');
INSERT INTO `tags` VALUES ('511', '', '212');
INSERT INTO `tags` VALUES ('512', '', '101');
INSERT INTO `tags` VALUES ('513', '', '114');
INSERT INTO `tags` VALUES ('514', '', '115');
INSERT INTO `tags` VALUES ('515', '美体', '135');
INSERT INTO `tags` VALUES ('516', '减肥', '320');
INSERT INTO `tags` VALUES ('517', '丰胸', '328');
INSERT INTO `tags` VALUES ('518', '美白', '238');
INSERT INTO `tags` VALUES ('519', '增高', '141');
INSERT INTO `tags` VALUES ('520', '洗发露', '122');
INSERT INTO `tags` VALUES ('521', '爱洛芙', '190');
INSERT INTO `tags` VALUES ('522', '', '77');
INSERT INTO `tags` VALUES ('523', '', '174');
INSERT INTO `tags` VALUES ('524', '', '136');
INSERT INTO `tags` VALUES ('525', '可爱的', '315');
INSERT INTO `tags` VALUES ('526', '时尚的', '85');
INSERT INTO `tags` VALUES ('527', '美丽的', '120');
INSERT INTO `tags` VALUES ('528', '', '139');
INSERT INTO `tags` VALUES ('529', '', '318');
INSERT INTO `tags` VALUES ('530', '男装', '67');
INSERT INTO `tags` VALUES ('531', '代购', '226');
INSERT INTO `tags` VALUES ('532', '男装', '212');
INSERT INTO `tags` VALUES ('533', '爱美', '319');
INSERT INTO `tags` VALUES ('534', '', '323');
INSERT INTO `tags` VALUES ('535', '护肤品', '71');
INSERT INTO `tags` VALUES ('536', '洗护品', '224');
INSERT INTO `tags` VALUES ('537', '日用品', '225');
INSERT INTO `tags` VALUES ('538', '小吃', '104');
INSERT INTO `tags` VALUES ('539', '佐料', '86');
INSERT INTO `tags` VALUES ('540', 'faw', '1');
INSERT INTO `tags` VALUES ('541', '32', '1');
INSERT INTO `tags` VALUES ('542', 'r23', '1');
INSERT INTO `tags` VALUES ('543', '123', '1');
INSERT INTO `tags` VALUES ('544', '123', '1');
INSERT INTO `tags` VALUES ('545', '123', '1');
INSERT INTO `tags` VALUES ('546', '人为', '0');
INSERT INTO `tags` VALUES ('547', 'wer', '0');
INSERT INTO `tags` VALUES ('548', '32', '0');
INSERT INTO `tags` VALUES ('549', '12', '0');
INSERT INTO `tags` VALUES ('550', '123', '0');
INSERT INTO `tags` VALUES ('551', '21', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('16', '微店、团团微店介绍', '\r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        <div style=\"text-align: center;\"><fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.5em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: start; border-color: currentcolor; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; border-color: rgb(249, 110, 87); text-align: center; color: rgb(255, 255, 255); font-family: inherit; font-size: 1.2em; font-weight: inherit; text-decoration: inherit; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0.5em; max-width: 100%; box-sizing: border-box; line-height: 1.5em; word-wrap: break-word !important; background: rgb(249, 110, 87);\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">问题一 　什么是微店？</section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: auto; padding: 0px; max-width: 100%; box-sizing: border-box; width: 0px; border-top-color: rgb(249, 110, 87); border-bottom-color: rgb(249, 110, 87); border-top-width: 0.6em; border-top-style: solid; word-wrap: break-word !important; border-right-color: transparent !important; border-left-color: transparent !important; border-right-width: 0.5em !important; border-left-width: 0.5em !important; border-right-style: solid !important; border-left-style: solid !important;\"></section></section></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.8em; margin-bottom: 0.8em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 1em; text-align: start; border-color: currentcolor; line-height: 1.4; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 10px; max-width: 100%; box-sizing: border-box; border: 1px solid rgb(160, 160, 160); text-align: inherit; color: rgb(51, 51, 51); font-family: inherit; font-size: 1em; font-weight: inherit; text-decoration: inherit; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">　　“微店”是面向网络小卖家推出的手机开店软件，用“微店”开办网店门槛很低，你需要的只是一部智能手机就够了。“团团微店”主要支持入驻的微店种类是“口袋购物微店”，该种微店由北京口袋时尚科技有限公司开发，推出时间最长，用户基数最大，且开店零成本，操作方便。商户可利用该软件自助添加商品、修改价格、进行促销活动等，也可以将原有的淘宝店铺“一键搬家”。</section></section></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: inherit; font-size: 1em; line-height: 24px; border-color: currentcolor; text-align: justify; clear: both; text-decoration: inherit; word-wrap: break-word !important;\"><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(127, 127, 127); box-sizing: border-box !important; word-wrap: break-word !important;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(127, 127, 127); box-sizing: border-box !important; word-wrap: break-word !important;\">口袋购物微店下载地址</span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(127, 127, 127); box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/Public/uploads/topic/dc5f3848bb1b406731388c5d103f65ce.jpg\"><img src=\"/Public/uploads/topic/957e20b7f152603f6450e62e6097ca80.jpg\" style=\"color: inherit; font-size: 1em; font-style: normal; line-height: 24px; text-align: justify; text-decoration: inherit;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(127, 127, 127); box-sizing: border-box !important; word-wrap: break-word !important;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></p></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.5em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: start; border-color: currentcolor; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; border-color: rgb(142, 201, 101); text-align: center; color: rgb(255, 255, 255); font-family: inherit; font-size: 1.2em; font-weight: inherit; text-decoration: inherit; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0.5em; max-width: 100%; box-sizing: border-box; line-height: 1.5em; word-wrap: break-word !important; background: rgb(142, 201, 101);\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">问题二 什么是团团微店？</section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: auto; padding: 0px; max-width: 100%; box-sizing: border-box; width: 0px; border-top-color: rgb(142, 201, 101); border-bottom-color: rgb(142, 201, 101); border-top-width: 0.6em; border-top-style: solid; word-wrap: break-word !important; border-right-color: transparent !important; border-left-color: transparent !important; border-right-width: 0.5em !important; border-left-width: 0.5em !important; border-right-style: solid !important; border-left-style: solid !important;\"></section></section></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.8em; margin-bottom: 0.8em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 1em; text-align: start; border-color: currentcolor; line-height: 1.4; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 10px; max-width: 100%; box-sizing: border-box; border: 1px solid rgb(160, 160, 160); text-align: inherit; color: rgb(51, 51, 51); font-family: inherit; font-size: 1em; font-weight: inherit; text-decoration: inherit; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">　　“团团微店”是搭建在“重庆共青团-学载青春梦”微信公众平台上的大学生创业集群平台。旨在集合重庆大学生开办的“微店”，并利用微信公众平台的影响力免费为创业学子提供店铺宣传、产品推介、客户引导等综合性服务。</section></section></fieldset></div><div><p class=\"MsoNormal\" style=\"text-align: center;\"><font color=\"#ffffff\"><span style=\"font-size: 14px; line-height: 20px; background-color: rgb(250, 167, 50);\"><a href=\"http://microstore.lcl.deadsoul.net/index.php/home/topic/index.html?topic_id=18\"><button class=\"btn btn-warning\">如何增加微店营业额 </button></a></span></font><font face=\"方正仿宋_GBK\"><span style=\"font-size: 21px; line-height: 34.1333351135254px;\">    </span></font><span style=\"font-size: 21px; line-height: 34.1333351135254px;\"><a href=\"http://microstore.lcl.deadsoul.net/index.php/home/topic/index.html?topic_id=17\"><button class=\"btn btn-warning\">入驻流程</button></a></span><br></p><div style=\"text-align: center;\"><span style=\"font-size:10.5pt;mso-bidi-font-size:10.0pt;\r\nfont-family:宋体;mso-ascii-font-family:\" times=\"\" new=\"\" roman\";mso-hansi-font-family:=\"\" \"times=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";mso-font-kerning:1.0pt;=\"\" mso-ansi-language:en-us;mso-fareast-language:zh-cn;mso-bidi-language:ar-sa\"=\"\"><br></span></div>                    </div>                                                                                                                                                                                                                                                                                                                                ', 'http://ttmicrostore.qiniudn.com/2015-03-12_5501ae1c4bcb7.jpg?imageView2/2/h/360/w/932', '2015-03-12 23:17:51');
INSERT INTO `topic` VALUES ('17', '“团团微店”入驻手册', '\r\n                        \r\n                        \r\n                        <p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">1.</span></strong><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">下载微店</span></strong><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">APP</span></strong></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(127, 127, 127); font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\">口袋购物微店下载地址</span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(127, 127, 127); font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/Public/uploads/topic/7ebb4bf771cdae18e7e2fee05ec9bb9b.jpg\"><img src=\"/Public/uploads/topic/d95c580b22608807caf37a336363286a.jpg\" style=\"font-size: 18px; color: inherit; line-height: 30px;\"><br></span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: red; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">2.</span></strong><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: red; font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">进入</span></strong><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: red; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">app</span></strong><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: red; font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">申请注册一个微店</span></strong></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(127, 127, 127); font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\">注册成功后登录我的微店，点击“复制链接”按钮，对自己微店链接进行复制。</span></p><p style=\"text-align: center; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/Public/uploads/topic/e57ce8ba454ddc1c87a59e142c1af8e9.jpg\"><br></span></p><p style=\"text-align: left; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">3.</span></strong><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">关注“重庆共青团</span></strong><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">-</span></strong><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">学载青春梦”（微信号：</span></strong><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">cqxxbweixin</span></strong><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">），点击主页下方方块“团团微店”进入，点击右上角“申请入驻”。</span></strong><br></span></p><p style=\"text-align: center; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/Public/uploads/topic/fbdb79f58e9f7e376e13dc7528524687.jpg\"><br></span></strong></span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\">“重庆共青团</span>-<span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\">学载青春梦”微信公众平台</span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; font-family: 宋体; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"font-style: normal; max-width: 100%; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: rgb(0, 112, 192); font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></strong></span></p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: justify; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: red; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">4.</span></strong><strong style=\"font-style: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"font-style: normal; max-width: 100%; color: red; font-family: 宋体; font-size: 16px; box-sizing: border-box !important; word-wrap: break-word !important;\">按照页面要求，填写包涵“微店链接”等重要入驻信息。</span></strong></p><p style=\"text-align: center; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><font color=\"#ff0000\" face=\"宋体\" size=\"3\"><span style=\"line-height: 24px; white-space: pre-wrap;\"><a href=\"http://microstore.lcl.deadsoul.net/index.php/home/topic/index.html?topic_id=16\"><button class=\"btn btn-warning\">团团微店介绍</button></a>     </span></font></span></strong><font color=\"#ff0000\"><span style=\"line-height: 24px; white-space: pre-wrap;\"><b><a href=\"http://microstore.lcl.deadsoul.net/index.php/home/topic/index.html?topic_id=18\"><button class=\"btn btn-warning\">如何增加微店营业额 </button></a></b></span></font></p><p style=\"text-align: center; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;\"><font color=\"#ff0000\"><span style=\"line-height: 24px; white-space: pre-wrap;\"><b></b></span></font></p>\r\n                                                                                                        ', 'http://ttmicrostore.qiniudn.com/2015-03-12_5501b2feb2a9f.jpg?imageView2/2/h/360/w/932', '2015-03-12 23:38:40');
INSERT INTO `topic` VALUES ('18', '“团团微店”如何帮助你的“微店”增加营业额？', '<fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.5em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; line-height: 24px; text-align: justify; border-style: none; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; font-size: 1.6em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(255, 255, 255); border-color: rgb(142, 201, 101); word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 1.4em; height: 1.26em; border-bottom-left-radius: 0.4em; border-top-left-radius: 0.4em; word-wrap: break-word !important; background-color: rgb(142, 201, 101);\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px 0px 0px 0.2em; max-width: 100%; box-sizing: border-box; line-height: 1.4em; width: 2em; height: 1em; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">一</section></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.4em; border-left-style: solid; border-right-color: rgb(142, 201, 101); border-left-color: rgb(142, 201, 101); word-wrap: break-word !important; border-top-width: 0.63em !important; border-top-style: solid !important; border-top-color: transparent !important; border-bottom-width: 0.63em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;\"></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: -2.12em 0px 0.1em 1em; padding: 0px; max-width: 100%; box-sizing: border-box; float: left; border: 1px solid rgb(142, 201, 101); border-top-left-radius: 0.4em; border-top-right-radius: 0.4em; border-bottom-right-radius: 0.4em; border-bottom-left-radius: 0.4em; font-size: 1.2em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(142, 201, 101); word-wrap: break-word !important;\"><span class=\"tn-Powered-by-XIUMI\" style=\"margin-left: 2px; padding-right: 5px; padding-left: 1.5em; font-style: normal; max-width: 100%; box-sizing: border-box; float: left; display: inline-block; vertical-align: top; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">依托平台</section></span></section></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: inherit; font-size: 1em; line-height: 24px; text-align: justify; clear: both; text-decoration: inherit; word-wrap: break-word !important;\"><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;\">　　“重庆共青团-学载青春梦”微信公众平台目前拥有近十万的粉丝体量，且90%都是重庆在校大学生。栏目最高单篇阅读量15万余次，日均阅读量8000余次，推出各类线上应用、游戏累计使用突破百万次。“团团微店”将与“学载青春梦”进行绑定运作。</p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;\"><br></p><fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.5em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; border-style: none; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; font-size: 1.6em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(255, 255, 255); border-color: rgb(95, 156, 239); word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 1.4em; height: 1.26em; border-bottom-left-radius: 0.4em; border-top-left-radius: 0.4em; word-wrap: break-word !important; background-color: rgb(95, 156, 239);\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px 0px 0px 0.2em; max-width: 100%; box-sizing: border-box; line-height: 1.4em; width: 2em; height: 1em; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">二</section></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.4em; border-left-style: solid; border-right-color: rgb(95, 156, 239); border-left-color: rgb(95, 156, 239); word-wrap: break-word !important; border-top-width: 0.63em !important; border-top-style: solid !important; border-top-color: transparent !important; border-bottom-width: 0.63em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;\"></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: -2.12em 0px 0.1em 1em; padding: 0px; max-width: 100%; box-sizing: border-box; float: left; border: 1px solid rgb(95, 156, 239); border-top-left-radius: 0.4em; border-top-right-radius: 0.4em; border-bottom-right-radius: 0.4em; border-bottom-left-radius: 0.4em; font-size: 1.2em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(95, 156, 239); word-wrap: break-word !important;\"><span class=\"tn-Powered-by-XIUMI\" style=\"margin-left: 2px; padding-right: 5px; padding-left: 1.5em; font-style: normal; max-width: 100%; box-sizing: border-box; float: left; display: inline-block; vertical-align: top; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">提升客流</section></span></section></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: inherit; font-size: 1em; clear: both; text-decoration: inherit; word-wrap: break-word !important;\"><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;\">　　“重庆共青团-学载青春梦”每日向粉丝推送优秀店铺及其经营的特色产品，同时通过关键词回复，设置独立菜单，在微信栏目中插入微店链接等方式提升微店的点击量，进而提升客流量与营业额。</p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;\"><br></p><fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.5em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; border-style: none; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; font-size: 1.6em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(255, 255, 255); border-color: rgb(249, 110, 87); word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 1.4em; height: 1.26em; border-bottom-left-radius: 0.4em; border-top-left-radius: 0.4em; word-wrap: break-word !important; background-color: rgb(249, 110, 87);\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px 0px 0px 0.2em; max-width: 100%; box-sizing: border-box; line-height: 1.4em; width: 2em; height: 1em; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">三</section></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.4em; border-left-style: solid; border-left-color: rgb(249, 110, 87); border-right-color: rgb(249, 110, 87); word-wrap: break-word !important; border-top-width: 0.63em !important; border-top-style: solid !important; border-top-color: transparent !important; border-bottom-width: 0.63em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;\"></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: -2.12em 0px 0.1em 1em; padding: 0px; max-width: 100%; box-sizing: border-box; float: left; border: 1px solid rgb(249, 110, 87); border-top-left-radius: 0.4em; border-top-right-radius: 0.4em; border-bottom-right-radius: 0.4em; border-bottom-left-radius: 0.4em; font-size: 1.2em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(249, 110, 87); word-wrap: break-word !important;\"><span class=\"tn-Powered-by-XIUMI\" style=\"margin-left: 2px; padding-right: 5px; padding-left: 1.5em; font-style: normal; max-width: 100%; box-sizing: border-box; float: left; display: inline-block; vertical-align: top; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">形象宣传</section></span></section></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: inherit; font-size: 1em; clear: both; text-decoration: inherit; word-wrap: break-word !important;\"><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;\">　　依托微信制作团队，为创业大学生打造一系列公关宣传产品。如“店主创业故事”、“店主照片集”、“微店产品介绍”、“店主个人简介”等，提升微店、店主及其经营产品的知名度，发挥口碑效应。</p><p style=\"margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-style: normal; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;\"><br></p><fieldset class=\"tn-Powered-by-XIUMI\" style=\"margin-top: 0.5em; font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: rgb(62, 62, 62); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif; font-size: 15px; border-style: none; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; font-size: 24px; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(255, 255, 255); border-color: rgb(71, 193, 168); word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 1.4em; height: 1.26em; border-bottom-left-radius: 0.4em; border-top-left-radius: 0.4em; word-wrap: break-word !important; background-color: rgb(71, 193, 168);\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px 0px 0px 0.2em; max-width: 100%; box-sizing: border-box; line-height: 1.4em; width: 2em; height: 1em; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">四</section></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.4em; border-left-style: solid; border-right-color: rgb(71, 193, 168); border-left-color: rgb(71, 193, 168); word-wrap: break-word !important; border-top-width: 0.63em !important; border-top-style: solid !important; border-top-color: transparent !important; border-bottom-width: 0.63em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;\"></section></section><section class=\"tn-Powered-by-XIUMI\" style=\"margin: -2.12em 0px 0.1em 1em; padding: 0px; max-width: 100%; box-sizing: border-box; float: left; border: 1px solid rgb(71, 193, 168); border-top-left-radius: 0.4em; border-top-right-radius: 0.4em; border-bottom-right-radius: 0.4em; border-bottom-left-radius: 0.4em; font-size: 1.2em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(71, 193, 168); word-wrap: break-word !important;\"><span class=\"tn-Powered-by-XIUMI\" style=\"margin-left: 2px; padding-right: 5px; padding-left: 1.5em; font-style: normal; max-width: 100%; box-sizing: border-box; float: left; display: inline-block; vertical-align: top; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">线下结合</section></span></section></fieldset><fieldset class=\"tn-Powered-by-XIUMI\" style=\"font-style: normal; max-width: 100%; box-sizing: border-box; min-width: 0px; color: inherit; font-size: 1em; clear: both; text-decoration: inherit; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">　　重庆共青团学校部、市学联将为优秀的微店联系投资公司，在校园活动中为其进行免费宣传，实现产品经营线上线下相结合，帮助微店多方面发展。</section></fieldset></fieldset></fieldset></fieldset><div><fieldset class=\"tn-Powered-by-XIUMI\" style=\"max-width: 100%; box-sizing: border-box; min-width: 0px; border-color: currentcolor; text-align: justify; clear: both; word-wrap: break-word !important;\"><section class=\"tn-Powered-by-XIUMI\" style=\"text-align: center; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"><span style=\"line-height: 24px;\"><a href=\"http://microstore.lcl.deadsoul.net/index.php/home/topic/index.html?topic_id=16\"><button class=\"btn btn-warning\">团团微店介绍</button></a>     </span><span style=\"text-align: justify; line-height: 24px;\"><a href=\"http://microstore.lcl.deadsoul.net/index.php/home/topic/index.html?topic_id=17\"><button class=\"btn btn-warning\">入驻流程</button></a></span><br></section></fieldset></div>                    ', 'http://ttmicrostore.qiniudn.com/2015-03-12_550161ef8b794.jpg?imageView2/2/h/240/w/621', '2015-03-12 17:52:53');

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
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('70', '李雅琼', '李雅琼', '620105199412290045', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '播音主持');
INSERT INTO `users` VALUES ('71', '梁润溪', '梁润溪', '130133198811210692', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '法学');
INSERT INTO `users` VALUES ('72', '罗文望', '罗文望', '500239199503244097', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '工商管理');
INSERT INTO `users` VALUES ('73', '向丹', '向丹', '500236199210060789', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '数学与应用数学');
INSERT INTO `users` VALUES ('74', '闪雅洁', '闪雅洁', '142622199404160081', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '服装设计与工程');
INSERT INTO `users` VALUES ('75', '李春丽', '李春丽', '532932199310050529', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '审计');
INSERT INTO `users` VALUES ('76', '王仕瑶', '王仕瑶', '532122199606190321', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '工商管理');
INSERT INTO `users` VALUES ('77', '敖思华', '敖思华', '50024119930901592X', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '计算机科学与技术');
INSERT INTO `users` VALUES ('78', '张云娜', '张云娜', '500382199301046660', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '思想政治教育');
INSERT INTO `users` VALUES ('79', '徐梦静', '徐梦静', '513822199105062482', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '涉外经贸');
INSERT INTO `users` VALUES ('80', '周莉', '周莉', '500101199305051820', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '思想政治教育');
INSERT INTO `users` VALUES ('81', '冯雪', '冯雪', '460004199401202626', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '法学');
INSERT INTO `users` VALUES ('82', '姚子萱', '姚子萱', '321201199606170228', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '广告学');
INSERT INTO `users` VALUES ('83', '林立', '林立', '350122199409110817', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '法学');
INSERT INTO `users` VALUES ('84', '舒炜惟', '舒炜惟', '500221199401092420', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '法学');
INSERT INTO `users` VALUES ('85', '胡诗雨', '胡诗雨', '45030219941109152X', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '商务英语');
INSERT INTO `users` VALUES ('86', '陈鱼河', '陈鱼河', '500236199401012181', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '社会学');
INSERT INTO `users` VALUES ('87', '曾姝妤', '曾姝妤', '360124199511120346', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '国际法');
INSERT INTO `users` VALUES ('88', '傅楚楚', '傅楚楚', '130133199601151240', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '民商法');
INSERT INTO `users` VALUES ('89', '侯淑华', '侯淑华', '350600199504292021', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '汉语言文学');
INSERT INTO `users` VALUES ('90', '刘家鑫', '刘家鑫', '460006199407180432', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '法学');
INSERT INTO `users` VALUES ('91', '谭钥予', '谭钥予', '500382199502273624', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '英语');
INSERT INTO `users` VALUES ('92', '李欣宜', '李欣宜', '440802199503040426', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '广播电视学');
INSERT INTO `users` VALUES ('93', '孟涛', '孟涛', '131102199603220416', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '新闻');
INSERT INTO `users` VALUES ('94', '阳佳芮', '阳佳芮', '500221199208077640', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '外国语言学');
INSERT INTO `users` VALUES ('95', '谷兆阳', '谷兆阳', '410105199410030013', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '侦查学');
INSERT INTO `users` VALUES ('96', '杨雨玮', '杨雨玮', '500106199209263825', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '英语笔译');
INSERT INTO `users` VALUES ('97', '张彦', '张彦', '522526198808300040', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '法律硕士');
INSERT INTO `users` VALUES ('98', '石路', '石路', '500222199602082225', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '装饰与艺术设计');
INSERT INTO `users` VALUES ('99', '曾春燕', '曾春燕', '500235199402235487', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '装饰与艺术设计');
INSERT INTO `users` VALUES ('100', '刘小青', '刘小青', '500234199411257905', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '物流管理');
INSERT INTO `users` VALUES ('101', '刘洪男', '刘洪男', '51168119940124005X', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '机械设计与制造');
INSERT INTO `users` VALUES ('102', '谢娇', '谢娇', '500235199609100045', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '运营管理');
INSERT INTO `users` VALUES ('103', '王婧怡', '王婧怡', '500222199504040320', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '交通运营管理');
INSERT INTO `users` VALUES ('104', '罗梦嫄', '罗梦嫄', '522701199505274445', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '戏剧影视文学');
INSERT INTO `users` VALUES ('105', '张振', '张振', '341602199703101015', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '蚕学');
INSERT INTO `users` VALUES ('106', '黄昌', '黄昌', '520181199208162655', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '汉语言文学');
INSERT INTO `users` VALUES ('107', '荆佳伊', '荆佳伊', '411282199601010049', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '食品科学');
INSERT INTO `users` VALUES ('108', '李亮亮', '李亮亮', '130426199207011934', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '社会工作');
INSERT INTO `users` VALUES ('109', '靳佳颖', '靳佳颖', '140226199806087026', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '经济类');
INSERT INTO `users` VALUES ('110', '罗巍', '罗巍', '612326199210024411', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '社会工作');
INSERT INTO `users` VALUES ('111', '魏珂', '魏珂', '410523199410104048', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '物流管理');
INSERT INTO `users` VALUES ('112', '叶磊', '叶磊', '500236199109185798', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '轮机工程');
INSERT INTO `users` VALUES ('113', '黄希光', '黄希光', '429004198908108133', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '机电与汽车工程');
INSERT INTO `users` VALUES ('114', '何倩', '何倩', '532525199012040343', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '交通规划与管理');
INSERT INTO `users` VALUES ('115', '池卓航', '池卓航', '350424199104030014', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '建筑与土木工程');
INSERT INTO `users` VALUES ('116', '刘颖', '刘颖', '640323198912280000', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '管理科学与工程');
INSERT INTO `users` VALUES ('117', '宋状状', '宋状状', '321302198908160858', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '桥梁与隧道工程');
INSERT INTO `users` VALUES ('118', '孔凡霞', '孔凡霞', '371323199009164324', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '马克思主义理论');
INSERT INTO `users` VALUES ('119', '李艳红', '李艳红', '15040419910901714X', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '桥梁与隧道');
INSERT INTO `users` VALUES ('120', '曾丽敏', '曾丽敏', '460003199404067224', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '金融与证券');
INSERT INTO `users` VALUES ('121', '朱红凯', '朱红凯', '500234199601270959', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '室内设计');
INSERT INTO `users` VALUES ('122', '程霞', '程霞', '500384199412201128', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '英语教育');
INSERT INTO `users` VALUES ('123', '夏清清', '夏清清', '500382199706074125', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '英语教育');
INSERT INTO `users` VALUES ('124', '徐福川', '徐福川', '350583199504203768', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '英语教育');
INSERT INTO `users` VALUES ('125', '邓阳春', '邓阳春', '500238199402134407', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '语文教育');
INSERT INTO `users` VALUES ('126', '杨谨瑶', '杨谨瑶', '530322199512260826', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '学前教育');
INSERT INTO `users` VALUES ('127', '陈双婷', '陈双婷', '520201199509064868', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '学前教育');
INSERT INTO `users` VALUES ('128', '刘慧婷', '刘慧婷', '500381199401220228', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '学前教育');
INSERT INTO `users` VALUES ('129', '黄梦姚', '黄梦姚', '430621199702181826', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '学前教育');
INSERT INTO `users` VALUES ('130', '张家蒸', '张家蒸', '500381199308262407', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '学前教育');
INSERT INTO `users` VALUES ('131', '谭海燕', '谭海燕', '500228199311087841', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '国际经济与贸易');
INSERT INTO `users` VALUES ('132', '董一菲', '董一菲', '500221199410194322', '9d03f1e988a5e93a8e766c2c47e48df2', '3', '教育学');
INSERT INTO `users` VALUES ('133', '任然', '任然', '500243199508050229', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '朝鲜语');
INSERT INTO `users` VALUES ('134', '陈晓雯', '陈晓雯', '500102199412169206', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '朝鲜语');
INSERT INTO `users` VALUES ('135', '艾鑫', '王艳萍', '652922199507122607', '152c5cbc3188733d500a76fbcb492450', '4', '市场营销');
INSERT INTO `users` VALUES ('136', '戏子', '陈以毕', '533023199509123911', '35b3f6d83dd2bd8c42689e3b49e11dac', '2', '动画');
INSERT INTO `users` VALUES ('137', '张鹏', '张鹏', '500241199008161229', '9d03f1e988a5e93a8e766c2c47e48df2', '4', '经济学');
INSERT INTO `users` VALUES ('138', '嘉菲猫', '夏文嘉', '43072119950326160X', '3b41d9e495fb90819c30b6bb5c19d2ca', '4', '生物技术');
INSERT INTO `users` VALUES ('139', 'wq', 'ew', '123456789012345689', '9d03f1e988a5e93a8e766c2c47e48df2', '5', '123');
INSERT INTO `users` VALUES ('140', '额1', '饿1', '123456789012345636', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '31');
INSERT INTO `users` VALUES ('141', '白马王爷', '李堃', '500239199206123192', '4221c08468010e4f2a7176f7144752fe', '2', '市场营销');
INSERT INTO `users` VALUES ('142', '阡陌', '朱小梅', '500231199502266082', 'fce44dc4fd77895ade58e019dfad713a', '5', '市场营销');
INSERT INTO `users` VALUES ('143', '一路追逐', '何源', '500243199402214459', '5fdd9541767c33f558f30dc0c247af35', '5', '报关与国际货运');
INSERT INTO `users` VALUES ('144', '君君', '郭丽君', '500101199111094005', '2d7599f4faf0a2463cbc5f9c649fb7f2', '4', '财务管理（金融投资）');
INSERT INTO `users` VALUES ('145', '碎星的光', '覃岭', '50010119940827241X', 'ba6862f23c4680bd1ae391e1379643c7', '2', '继电保护与自动化');
INSERT INTO `users` VALUES ('146', '日白小女人', '张庆林', '51162119931028208X', '74b39a1c3b23fe939aeba360f1e5e8e9', '5', '会计电算化');
INSERT INTO `users` VALUES ('147', '碎星的光', '覃岭', '50010119940527241X', '2283f8ada2d2b8e739f6b36877bdc9c7', '5', '继电保护');
INSERT INTO `users` VALUES ('148', 'Crystal', '陈晶晶', '460004199601145822', '2be38599221695992b24bd8e046b8cbe', '4', '人力资源管理');
INSERT INTO `users` VALUES ('149', '爱芙洛', '胡培雅', '140729199202120100', 'b65293570fcaa466fbd05fbc8009faad', '4', '会计学');
INSERT INTO `users` VALUES ('150', '小四店铺', '邓联健', '52020319931109081x', '81cb1e1056f867518a8a3c4f63aff1d1', '1', '法学');
INSERT INTO `users` VALUES ('151', 'i尚女王', '郭小娟', '642221199211151066', 'b8f9d17a76312bdd38b3160407ce13fd', '1', '国际商务');
INSERT INTO `users` VALUES ('152', '小妍子', '何青妍', '500238199409121027', '8d0a7857e115616c2c46cd6cadc65600', '36', '会计与统计核算');
INSERT INTO `users` VALUES ('153', 'fewwe', 'Lich', '123456789012345678', '9d03f1e988a5e93a8e766c2c47e48df2', '2', 'fe3');
INSERT INTO `users` VALUES ('154', '12312', '321321', '123456789012345679', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '213');
INSERT INTO `users` VALUES ('155', 'sd', 'sd', '123456789012345699', '9d03f1e988a5e93a8e766c2c47e48df2', '0', 'wq');
INSERT INTO `users` VALUES ('156', '21', '2e1', '123456789012345677', '9d03f1e988a5e93a8e766c2c47e48df2', '3', 'few');
