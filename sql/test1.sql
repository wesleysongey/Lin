/*
Navicat MySQL Data Transfer

Source Server         : Lin
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-09-15 18:33:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('0', null, '未分配');
INSERT INTO `dept` VALUES ('1', null, '总公司');
INSERT INTO `dept` VALUES ('2', '2', '开发部');
INSERT INTO `dept` VALUES ('3', '3', '运营部');
INSERT INTO `dept` VALUES ('4', '4', '人事部');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) NOT NULL,
  `tips` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_ADMIN', '超级管理员');
INSERT INTO `role` VALUES ('2', 'ROLE_USER', '用户');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `avator` varchar(255) NOT NULL,
  `deptid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'ttt', '9990775155c3518a0d7917f7780b24aa', '2', '', '1', '1');
INSERT INTO `user` VALUES ('3', 'ttt2', '62d6b135e2dfd66c055007591b31d1d5', '3', '', '3', '2');
INSERT INTO `user` VALUES ('4', 'admin', '21232f297a57a5a743894a0e4a801fc3', '4', '', '3', '1');
INSERT INTO `user` VALUES ('15', 'test', '96e79218965eb72c92a549dd5a330112', 'fdc44', '', '4', '2');
INSERT INTO `user` VALUES ('19', 'test1', '698d51a19d8a121ce581499d7b701668', 'f1cfa', '', '0', '2');
