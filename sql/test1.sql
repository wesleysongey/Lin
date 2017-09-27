/*
Navicat MySQL Data Transfer

Source Server         : Lin
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-09-27 16:49:08
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('0', null, '未分配');
INSERT INTO `dept` VALUES ('1', null, '总公司');
INSERT INTO `dept` VALUES ('2', '2', '开发部');
INSERT INTO `dept` VALUES ('3', '3', '运营部');
INSERT INTO `dept` VALUES ('4', '4', '人事部');

-- ----------------------------
-- Table structure for `login_log`
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `message` text,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('1', '登陆日志', '2', '2017-09-22 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('2', '退出日志', '2', '2017-09-22 00:00:00', '成功', '用户名：ttt退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('3', '登陆日志', '4', '2017-09-22 00:00:00', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('4', '退出日志', '4', '2017-09-22 00:00:00', '成功', '用户名：admin退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('5', '登陆日志', '2', '2017-09-22 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('6', '退出日志', '2', '2017-09-22 00:00:00', '成功', '用户名：ttt退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('7', '登陆日志', '2', '2017-09-22 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('8', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('9', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('10', '退出日志', '2', '2017-09-26 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('11', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('12', '退出日志', '2', '2017-09-26 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('13', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('14', '退出日志', '2', '2017-09-26 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('15', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('16', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('17', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '192.168.100.40');
INSERT INTO `login_log` VALUES ('18', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('19', '退出日志', '2', '2017-09-26 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('20', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('21', '退出日志', '2', '2017-09-26 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('22', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('23', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('24', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('25', '登陆日志', '2', '2017-09-26 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('26', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('27', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('28', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('29', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('30', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('31', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `pcode` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `levels` int(11) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, null, '用户管理', null, '/userpage', null, null, null);
INSERT INTO `menu` VALUES ('2', null, null, '部门管理', null, '/deptpage', null, null, null);

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `senduserid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `recivedeptid` int(11) DEFAULT NULL,
  `reciveuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', null, '测试body', null, '2', '0', '2017-09-26 15:48:03', null, null);
INSERT INTO `notice` VALUES ('2', null, '测试系统消息', null, '2', '系统通知', '2017-09-27 16:25:16', null, null);

-- ----------------------------
-- Table structure for `operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logtype` varchar(255) DEFAULT NULL,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('1', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-09-22 17:55:13', '成功', null);
INSERT INTO `operation_log` VALUES ('2', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-09-22 17:55:35', '成功', null);
INSERT INTO `operation_log` VALUES ('3', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-09-22 17:55:52', '成功', null);
INSERT INTO `operation_log` VALUES ('4', '业务日志', '修改部门信息', '2', 'com.du.lin.controller.DeptController', 'setDept', '2017-09-22 17:56:02', '成功', null);
INSERT INTO `operation_log` VALUES ('5', '业务日志', '用户信息修改', '2', 'com.du.lin.controller.UserController', 'setuser', '2017-09-22 17:56:14', '成功', null);
INSERT INTO `operation_log` VALUES ('6', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-09-22 17:56:24', '成功', null);
INSERT INTO `operation_log` VALUES ('7', '业务日志', '用户信息修改', '2', 'com.du.lin.controller.UserController', 'setuser', '2017-09-27 15:10:10', '成功', null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) NOT NULL,
  `tips` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'ttt', '9990775155c3518a0d7917f7780b24aa', '2', '1', '1', '1');
INSERT INTO `user` VALUES ('3', 'ttt2', '62d6b135e2dfd66c055007591b31d1d5', '3', '1', '3', '2');
INSERT INTO `user` VALUES ('4', 'admin', '21232f297a57a5a743894a0e4a801fc3', '4', '0', '3', '1');
INSERT INTO `user` VALUES ('15', 'test', '96e79218965eb72c92a549dd5a330112', 'fdc44', '0', '4', '2');
INSERT INTO `user` VALUES ('20', 'test1', '96e79218965eb72c92a549dd5a330112', 'd259a', '0', '4', '2');
