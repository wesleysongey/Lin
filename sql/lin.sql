/*
Navicat MySQL Data Transfer

Source Server         : Lin
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : lin

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-11-17 17:56:48
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '1', '未分配');
INSERT INTO `dept` VALUES ('2', '2', '总公司');
INSERT INTO `dept` VALUES ('3', '3', '开发部');
INSERT INTO `dept` VALUES ('4', '4', '运营部');
INSERT INTO `dept` VALUES ('5', '5', '人事部');

-- ----------------------------
-- Table structure for leaves
-- ----------------------------
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `isfinish` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaves
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('118', '登陆', '2', '2017-11-14 16:59:16', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('119', '登陆', '2', '2017-11-16 14:19:08', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('120', '登陆', '2', '2017-11-16 16:40:30', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('121', '登陆', '2', '2017-11-16 16:57:57', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('122', '登陆', '2', '2017-11-16 16:59:39', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('123', '登陆', '2', '2017-11-16 17:02:32', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('124', '登陆', '2', '2017-11-16 17:05:12', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('125', '登陆', '2', '2017-11-16 17:08:28', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('126', '登陆', '2', '2017-11-16 17:14:32', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('127', '登陆', '2', '2017-11-16 17:22:04', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('128', '登陆', '2', '2017-11-16 17:23:17', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('129', '登陆', '2', '2017-11-16 17:26:12', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('130', '登陆', '2', '2017-11-16 17:31:23', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('131', '登陆失败', null, '2017-11-16 17:32:46', '成功', '用户名：tttt,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('132', '登陆', '2', '2017-11-16 17:32:52', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('133', '登陆', '2', '2017-11-16 17:43:58', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('134', '登陆', '2', '2017-11-17 10:12:01', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('135', '登陆', '2', '2017-11-17 10:13:06', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('136', '登陆', '2', '2017-11-17 14:52:32', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('137', '登陆', '2', '2017-11-17 15:40:32', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('138', '登陆', '2', '2017-11-17 15:48:33', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('139', '登陆', '2', '2017-11-17 17:21:08', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('140', '登陆', '2', '2017-11-17 17:22:44', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('141', '登陆', '2', '2017-11-17 17:42:09', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('142', '登陆', '2', '2017-11-17 17:43:04', '成功', 'ttt', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for memo
-- ----------------------------
DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of memo
-- ----------------------------
INSERT INTO `memo` VALUES ('15', '明天要做的事', '1.早上骑行\n2.中午需要去公司拿材料', '2017/11/14 下午5:10:25', '2');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `parentid` int(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `levels` int(11) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, null, '用户管理', 'fa-columns', '/userpage', null, '1', null);
INSERT INTO `menu` VALUES ('2', null, null, '部门管理', 'fa-clone', '/deptpage', null, '1', null);
INSERT INTO `menu` VALUES ('3', '', null, '角色管理', 'fa-tags', '/rolepage', null, '1', '');
INSERT INTO `menu` VALUES ('4', '', null, '我的便签', 'fa-sticky-note', '/memopage', null, '1', '');
INSERT INTO `menu` VALUES ('5', null, null, '发送通知', 'fa-share', '/noticepage', null, '1', null);
INSERT INTO `menu` VALUES ('6', null, null, '登陆日志', 'fa-tags', '/loginlogpage', null, '2', null);
INSERT INTO `menu` VALUES ('8', null, null, '操作日志', 'fa-tags', '/operationlogpage', null, '2', null);
INSERT INTO `menu` VALUES ('9', null, null, '请假', 'fa-calendar-plus-o', '/leavepage', null, '1', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('10', null, '欢迎使用Lin！                    (●\'◡\'●) ', null, '2', '系统通知', '2017-09-28 11:52:23', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('256', '业务日志', '添加角色', '2', 'com.du.lin.controller.RoleController', 'addRole', '2017-11-14 17:08:10', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('257', '业务日志', '添加便签', '2', 'com.du.lin.controller.MemoController', 'addMemo', '2017-11-14 17:10:25', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('258', '业务日志', '配置菜单', '2', 'com.du.lin.controller.RoleController', 'addRelation', '2017-11-16 14:19:27', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('259', '业务日志', '配置菜单', '2', 'com.du.lin.controller.RoleController', 'addRelation', '2017-11-16 14:19:41', '成功', 'ttt');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) NOT NULL,
  `tips` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_ADMIN', '超级管理员');
INSERT INTO `role` VALUES ('2', 'ROLE_USER', '用户');
INSERT INTO `role` VALUES ('18', 'ROLE_BUZHANG', '部长');

-- ----------------------------
-- Table structure for role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_menu_relation`;
CREATE TABLE `role_menu_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu_relation
-- ----------------------------
INSERT INTO `role_menu_relation` VALUES ('6', '2', '4');
INSERT INTO `role_menu_relation` VALUES ('41', '1', '1');
INSERT INTO `role_menu_relation` VALUES ('42', '1', '2');
INSERT INTO `role_menu_relation` VALUES ('43', '1', '3');
INSERT INTO `role_menu_relation` VALUES ('44', '1', '4');
INSERT INTO `role_menu_relation` VALUES ('45', '1', '5');
INSERT INTO `role_menu_relation` VALUES ('46', '1', '6');
INSERT INTO `role_menu_relation` VALUES ('47', '1', '8');
INSERT INTO `role_menu_relation` VALUES ('48', '1', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'ttt', '9990775155c3518a0d7917f7780b24aa', '2', '1', '2', '1');
INSERT INTO `user` VALUES ('4', 'admin', '96e79218965eb72c92a549dd5a330112', '4', '0', '1', '2');
INSERT INTO `user` VALUES ('7', 'mmm', '96e79218965eb72c92a549dd5a330112', '102ce', '0', '1', '2');
