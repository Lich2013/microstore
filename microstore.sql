/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : microstore

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-02-23 16:00:12
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

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
INSERT INTO `index` VALUES ('1', '/tuan/Public/uploads/2015-02-11/54db0cfea387c.png', '2015-02-11 16:04:14');
INSERT INTO `index` VALUES ('2', '/tuan/Public/uploads/2015-02-11/54db0d3e564bf.png', '2015-02-11 16:05:18');
INSERT INTO `index` VALUES ('3', '/tuan/Public/uploads/2015-02-11/54db0d91f2742.png', '2015-02-11 16:06:42');
INSERT INTO `index` VALUES ('4', '/tuan/Public/uploads/2015-02-14/54df096a710c3.png', '2015-02-14 16:38:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', '214', '1', '234', '一月，十天、一天、一个时辰……\r\n\r\n　　纪宁每次失败都汲取经验，努力完善，纪宁所创的虚空不灭法垩门，也渐渐开始有了些效果，让纪宁的‘意识’力量大大增强。可是要做到‘意识力量强于混沌宇宙本源汲取力量’还有很大的差距。\r\n\r\n　　“北虹。”\r\n\r\n　　纪宁坐在条案旁，给自己倒了杯美酒。\r\n\r\n　　在最后一个时辰他悠闲的品着美酒，放松着漫长岁月那崩的很紧的那一根弦。\r\n', '/tuan/Public/uploads/2015-02-05/54d35d928448d.png', '3');
INSERT INTO `person` VALUES ('2', '87', '1', '78', '758', '/tuan/Public/uploads/2015-02-06/54d4557f75b20.png', '4');
INSERT INTO `person` VALUES ('3', '87', '1', '78', '758', '/tuan/Public/uploads/2015-02-11/54daf2861b9c0.png', '5');
INSERT INTO `person` VALUES ('4', '87', '1', '78', '758', '/tuan/Public/uploads/2015-02-06/54d456d6e4830.png', '6');
INSERT INTO `person` VALUES ('5', '87', '1', '78', '758', '/tuan/Public/uploads/2015-02-06/54d458f826aa7.png', '7');
INSERT INTO `person` VALUES ('6', '1213', '2', '12', '123', '/tuan/Public/uploads/2015-02-07/54d61e397cb69.png', '19');
INSERT INTO `person` VALUES ('7', '324', '1', '234', '4523', '/tuan/Public/uploads/2015-02-08/54d7809e64b5a.png', '20');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '重庆邮电大学');
INSERT INTO `school` VALUES ('2', '重庆大学');
INSERT INTO `school` VALUES ('3', '重庆交通大学');
INSERT INTO `school` VALUES ('4', '重庆工商大学');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('3', '吃吃吃吃吃吃吃吃31', '3', 'http://longzy.sinaapp.com/', '3', '/tuan/Public/uploads/2015-02-05/54d35d9283ab4.png', '73', '1');
INSERT INTO `store` VALUES ('5', '吃货1', '1', 'http://www.taobao.com', '4', '/tuan/Public/uploads/2015-02-11/54daf286147ea.png', '75', '1');
INSERT INTO `store` VALUES ('6', '吃货2', '6', 'http://longzy.sinaapp.com/', '2', '/tuan/Public/uploads/2015-02-06/54d456d6e336b.png', '17', '1');
INSERT INTO `store` VALUES ('18', '235', '3', 'http://www.taobao.com', '3', '/tuan/Public/uploads/2015-02-11/54db047b51efa.png', '75', '1');
INSERT INTO `store` VALUES ('7', '吃货3', '7', 'http://www.taobao.com/', '2', '/tuan/Public/uploads/2015-02-06/54d458f82610d.png', '71', '1');
INSERT INTO `store` VALUES ('19', '吃吃吃吃吃吃吃吃', '8', 'http://longzy.sinaapp.com/', '3', '/tuan/Public/uploads/2015-02-07/54d61e39758ba.png', '77', '1');
INSERT INTO `store` VALUES ('20', '吃吃吃吃吃吃吃吃', '9', 'http://longzy.sinaapp.com/', '3', '/tuan/Public/uploads/2015-02-08/54d7809e63b9e.png', '66', '1');
INSERT INTO `store` VALUES ('1', '吃吃吃吃吃吃吃吃12', '2', 'http://longzy.sinaapp.com/', '3', '/tuan/Public/uploads/2015-02-05/54d35d9283ab4.png', '73', '1');
INSERT INTO `store` VALUES ('8', '吃货0', '4', 'http://www.taobao.com', '1', '/tuan/Public/uploads/2015-02-06/54d4557f6a49f.png', '18', '1');

-- ----------------------------
-- Table structure for store_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_goods`;
CREATE TABLE `store_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of store_goods
-- ----------------------------
INSERT INTO `store_goods` VALUES ('2', '1', '1');
INSERT INTO `store_goods` VALUES ('3', '2', '3');
INSERT INTO `store_goods` VALUES ('5', '3', '3');
INSERT INTO `store_goods` VALUES ('6', '4', '2');
INSERT INTO `store_goods` VALUES ('7', '5', '3');
INSERT INTO `store_goods` VALUES ('8', '6', '2');
INSERT INTO `store_goods` VALUES ('9', '7', '2');
INSERT INTO `store_goods` VALUES ('10', '19', '1');
INSERT INTO `store_goods` VALUES ('11', '20', '1');

-- ----------------------------
-- Table structure for store_tag
-- ----------------------------
DROP TABLE IF EXISTS `store_tag`;
CREATE TABLE `store_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of store_tag
-- ----------------------------
INSERT INTO `store_tag` VALUES ('1', '1', '1');
INSERT INTO `store_tag` VALUES ('3', '2', '2');
INSERT INTO `store_tag` VALUES ('5', '3', '4');
INSERT INTO `store_tag` VALUES ('6', '7', '5');
INSERT INTO `store_tag` VALUES ('7', '7', '6');
INSERT INTO `store_tag` VALUES ('8', '7', '7');
INSERT INTO `store_tag` VALUES ('9', '7', '8');
INSERT INTO `store_tag` VALUES ('10', '7', '9');
INSERT INTO `store_tag` VALUES ('11', '19', '10');
INSERT INTO `store_tag` VALUES ('12', '19', '3');
INSERT INTO `store_tag` VALUES ('13', '19', '12');
INSERT INTO `store_tag` VALUES ('14', '19', '13');
INSERT INTO `store_tag` VALUES ('15', '19', '14');
INSERT INTO `store_tag` VALUES ('16', '20', '15');
INSERT INTO `store_tag` VALUES ('17', '20', '16');
INSERT INTO `store_tag` VALUES ('18', '20', '17');
INSERT INTO `store_tag` VALUES ('19', '20', '18');
INSERT INTO `store_tag` VALUES ('20', '20', '19');
INSERT INTO `store_tag` VALUES ('21', '5', '20');
INSERT INTO `store_tag` VALUES ('22', '5', '21');
INSERT INTO `store_tag` VALUES ('23', '5', '22');
INSERT INTO `store_tag` VALUES ('24', '5', '3');
INSERT INTO `store_tag` VALUES ('25', '5', '29');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `click_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', '好吃', '123');
INSERT INTO `tags` VALUES ('2', '好玩', '332');
INSERT INTO `tags` VALUES ('3', '舒服', '456');
INSERT INTO `tags` VALUES ('4', '提供方', '0');
INSERT INTO `tags` VALUES ('5', '123', '0');
INSERT INTO `tags` VALUES ('6', '12人', '0');
INSERT INTO `tags` VALUES ('7', 'wq', '0');
INSERT INTO `tags` VALUES ('8', 'qwe', '0');
INSERT INTO `tags` VALUES ('9', 'qwe', '0');
INSERT INTO `tags` VALUES ('10', '111', '0');
INSERT INTO `tags` VALUES ('11', '111', '0');
INSERT INTO `tags` VALUES ('12', '11', '0');
INSERT INTO `tags` VALUES ('13', '233', '0');
INSERT INTO `tags` VALUES ('14', '444', '0');
INSERT INTO `tags` VALUES ('15', 'www', '0');
INSERT INTO `tags` VALUES ('16', 'e', '0');
INSERT INTO `tags` VALUES ('17', 'we', '0');
INSERT INTO `tags` VALUES ('18', 'few', '0');
INSERT INTO `tags` VALUES ('19', 'ds', '0');
INSERT INTO `tags` VALUES ('20', '999', '0');
INSERT INTO `tags` VALUES ('21', '333', '0');
INSERT INTO `tags` VALUES ('22', '222', '0');
INSERT INTO `tags` VALUES ('28', '66666', '0');
INSERT INTO `tags` VALUES ('29', '777', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('7', '2332人', '\r\n                        \r\n                        <blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\">\r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        内容爱的傻瓜</blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><img src=\"/tuan/Public/uploads/topic/517de9ba065b71abf89752771c8fc3a0.png\"></div></blockquote></div></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div>是打发斯蒂芬的的</div></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><img src=\"/tuan/Public/uploads/topic/dc1b762b83754ce80163873df6c95d0b.png\"></div></blockquote></div></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div>舒服撒地方rehwerherwaehgerhdsh</div></blockquote></blockquote><div><img src=\"/tuan/Public/uploads/topic/16bc466ed8ceb0ae6bfeb8b648d6b4e3.png\"><img src=\"/tuan/Public/uploads/topic/51e8d3b723f583ea3d474ecbbac18a4d.png\"><img src=\"/tuan/Public/uploads/topic/68c45b4276fdfe77a63393e9aa13e173.png\">                                                                                </div>                                                            ', '/tuan/Public/uploads/2015-02-11/54db04b99b582.png', '2015-02-11 15:28:57');
INSERT INTO `topic` VALUES ('8', '2332人', '\r\n                        \r\n                        \r\n                        \r\n                        \r\n                        内容爱的傻瓜<img src=\"/tuan/Public/uploads/topic/517de9ba065b71abf89752771c8fc3a0.png\">是打发斯蒂芬的的<img src=\"/tuan/Public/uploads/topic/dc1b762b83754ce80163873df6c95d0b.png\">舒服撒地方rehwerherwaehgerhdsh<img src=\"/tuan/Public/uploads/topic/16bc466ed8ceb0ae6bfeb8b648d6b4e3.png\"><img src=\"/tuan/Public/uploads/topic/51e8d3b723f583ea3d474ecbbac18a4d.png\">                                                                                ', '/tuan/Public/uploads/2015-02-11/54db04aee1294.png', '2015-02-11 15:28:47');
INSERT INTO `topic` VALUES ('9', 'test', '\r\n                        <a href=\"http://www.taobao.com\">test</a><div>dd</div>                    ', '/tuan/Public/uploads/2015-02-11/54db110437860.png', '2015-02-11 16:21:24');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Lich', 'admin', '1234567890002', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '852852');
INSERT INTO `users` VALUES ('2', 'sb', 'eeee', '852qqqq', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '56');
INSERT INTO `users` VALUES ('3', '324', '2她2', '3265416', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '8888');
INSERT INTO `users` VALUES ('4', '852', '785', '1234567890000', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '998');
INSERT INTO `users` VALUES ('5', '852', '785', '1234567890000', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '998');
INSERT INTO `users` VALUES ('6', '852', '785', '1234567890000', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '998');
INSERT INTO `users` VALUES ('7', '852', '785', '1234567890000', '9d03f1e988a5e93a8e766c2c47e48df2', '1', '998');
INSERT INTO `users` VALUES ('8', '111', '123', '1234567890000', '9d03f1e988a5e93a8e766c2c47e48df2', '2', '11');
INSERT INTO `users` VALUES ('9', '888', '7887', '1234567890001', '9d03f1e988a5e93a8e766c2c47e48df2', '1', 'ddd');
