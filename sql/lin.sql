/*
Navicat MySQL Data Transfer

Source Server         : Lin
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : lin

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-10-25 18:10:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '1', '未分配');
INSERT INTO `dept` VALUES ('2', '2', '总公司');
INSERT INTO `dept` VALUES ('3', '3', '开发部');
INSERT INTO `dept` VALUES ('4', '4', '运营部');
INSERT INTO `dept` VALUES ('5', '5', '人事部');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('1', '登陆', '2', '2017-10-25 16:20:19', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('2', '登陆', '2', '2017-10-25 17:37:18', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('3', '登陆', '2', '2017-10-25 18:01:41', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('4', '登陆', '2', '2017-10-25 18:07:14', '成功', 'ttt', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for menu
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, null, '用户管理', null, '/userpage', null, null, null);
INSERT INTO `menu` VALUES ('2', null, null, '部门管理', null, '/deptpage', null, null, null);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `senduserid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `recivedeptid` int(11) DEFAULT NULL,
  `reciveuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('10', null, '欢迎使用Lin！                    (●\'◡\'●) ', null, '2', '系统通知', '2017-09-28 11:52:23', null, null);
INSERT INTO `notice` VALUES ('24', null, 'hello new one!', null, '2', '系统通知', '2017-10-24 11:31:47', null, null);

-- ----------------------------
-- Table structure for operation_log
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('1', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-10-25 17:37:42', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('2', '业务日志', '修改部门信息', '2', 'com.du.lin.controller.DeptController', 'setDept', '2017-10-25 17:48:55', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('3', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 17:49:17', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('4', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-10-25 17:49:22', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('5', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 17:49:28', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('6', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:01:56', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('7', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:01:59', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('8', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:02:00', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('9', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:02:00', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('10', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:02:01', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('11', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:02:02', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('12', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:02:03', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('13', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:02:04', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('14', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-10-25 18:02:06', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('15', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:16', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('16', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:20', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('17', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:20', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('18', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:22', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('19', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:22', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('20', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:23', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('21', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:24', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('22', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:24', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('23', '业务日志', '删除用户', '2', 'com.du.lin.controller.UserController', 'deleteUser', '2017-10-25 18:02:25', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('24', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-10-25 18:07:28', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('25', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-10-25 18:07:29', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('26', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-10-25 18:07:30', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('27', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-10-25 18:07:31', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('28', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-10-25 18:07:32', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('29', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-10-25 18:07:44', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('30', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-10-25 18:07:45', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('31', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-10-25 18:07:47', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('32', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-10-25 18:07:48', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('33', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-10-25 18:07:48', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('34', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-10-25 18:07:49', '成功', 'ttt');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) NOT NULL,
  `tips` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_ADMIN', '超级管理员');
INSERT INTO `role` VALUES ('2', 'ROLE_USER', '用户');

-- ----------------------------
-- Table structure for user
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'ttt', '9990775155c3518a0d7917f7780b24aa', '2', '1', '2', '1');
INSERT INTO `user` VALUES ('4', 'admin', '21232f297a57a5a743894a0e4a801fc3', '4', '0', '3', '1');
