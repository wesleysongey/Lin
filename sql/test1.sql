/*
Navicat MySQL Data Transfer

Source Server         : Lin
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-09-08 17:31:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('11', '1', '总公司');
INSERT INTO `dept` VALUES ('12', '2', '开发部');
INSERT INTO `dept` VALUES ('13', '3', '运营部');
INSERT INTO `dept` VALUES ('14', '4', '人事部');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) NOT NULL,
  `tips` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_USER', '用户');
INSERT INTO `role` VALUES ('2', 'ROLE_ADMIN', '超级管理员');
INSERT INTO `role` VALUES ('3', 'ROLE_ADMIN', '超级管理员');
INSERT INTO `role` VALUES ('4', 'ROLE_USER', '用户');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '111111', '111', '1', '', '11', '1');
INSERT INTO `user` VALUES ('2', 'ttt', 'ttt', '2', '', '11', '2');
INSERT INTO `user` VALUES ('3', 'ttt2', 'ttt2', '3', '', '12', '4');
INSERT INTO `user` VALUES ('4', 'admin', 'admin', '4', '', '13', '3');
