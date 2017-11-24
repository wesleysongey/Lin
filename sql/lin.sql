/*
Navicat MySQL Data Transfer

Source Server         : Lin
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : lin

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-11-24 18:47:52
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaves
-- ----------------------------
INSERT INTO `leaves` VALUES ('1', '事假', '2017-11-28 00:00:00', '2017-11-30 00:00:00', 'aaaa', '2', 'ttt', '3', '2017-11-23 17:55:43');
INSERT INTO `leaves` VALUES ('2', '病假', '2017-11-25 00:00:00', '2017-11-28 00:00:00', 'fffff', '2', 'ttt', '1', '2017-11-23 17:56:02');
INSERT INTO `leaves` VALUES ('3', 'nnn', '2017-11-25 00:00:00', '2017-11-27 00:00:00', 'ff3213', '2', 'ttt', '0', '2017-11-23 17:56:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('31', '退出', '2', '2017-11-23 17:56:58', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('32', '登陆', '2', '2017-11-23 17:57:01', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('33', '登陆', '2', '2017-11-23 17:59:02', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('34', '退出', '2', '2017-11-23 18:02:42', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('35', '登陆', '4', '2017-11-23 18:02:45', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('36', '退出', '4', '2017-11-23 18:02:51', '成功', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('37', '登陆失败', null, '2017-11-23 18:05:15', '成功', '用户名：ttt,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('38', '登陆', '2', '2017-11-23 18:05:19', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('39', '登陆', '2', '2017-11-24 10:04:29', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('40', '登陆', '2', '2017-11-24 15:21:17', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('41', '登陆', '2', '2017-11-24 15:40:58', '成功', 'ttt', '0:0:0:0:0:0:0:1');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
INSERT INTO `menu` VALUES ('10', null, null, '请假审核', 'fa-calendar-building-o', '/operationleavepage', null, '1', null);

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
INSERT INTO `notice` VALUES ('11', null, 'hi', null, '2', '系统通知', '2017-11-23 17:55:16', null, null);

-- ----------------------------
-- Table structure for operation_leave_user
-- ----------------------------
DROP TABLE IF EXISTS `operation_leave_user`;
CREATE TABLE `operation_leave_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaveid` int(255) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_leave_user
-- ----------------------------
INSERT INTO `operation_leave_user` VALUES ('1', '2', '2', 'ttt');
INSERT INTO `operation_leave_user` VALUES ('2', '3', '2', 'ttt');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('1', '业务日志', '用户密码重置', '2', 'com.du.lin.controller.UserController', 'resetPassword', '2017-11-23 16:44:47', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('2', '业务日志', '用户信息修改', '2', 'com.du.lin.controller.UserController', 'setuser', '2017-11-23 16:44:55', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('3', '业务日志', '添加部门', '2', 'com.du.lin.controller.DeptController', 'addDept', '2017-11-23 16:57:48', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('4', '业务日志', '修改部门信息', '2', 'com.du.lin.controller.DeptController', 'setDept', '2017-11-23 16:58:50', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('5', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-11-23 16:58:53', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('6', '业务日志', '添加用户', '2', 'com.du.lin.controller.UserController', 'addUser', '2017-11-23 17:16:12', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('7', '业务日志', '添加角色', '2', 'com.du.lin.controller.RoleController', 'addRole', '2017-11-23 17:54:41', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('8', '业务日志', '删除角色', '2', 'com.du.lin.controller.RoleController', 'deleteRole', '2017-11-23 17:54:46', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('9', '业务日志', '删除角色', '2', 'com.du.lin.controller.RoleController', 'deleteRole', '2017-11-23 17:54:48', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('10', '业务日志', '添加便签', '2', 'com.du.lin.controller.MemoController', 'addMemo', '2017-11-23 17:55:05', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('11', '业务日志', '删除便签', '2', 'com.du.lin.controller.MemoController', 'deleteMemo', '2017-11-23 17:55:09', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('12', '业务日志', '添加通知', '2', 'com.du.lin.controller.NoticeController', 'addNotice', '2017-11-23 17:55:16', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('13', '业务日志', '清除日志', '2', 'com.du.lin.controller.LogController', 'clearLoginLog', '2017-11-23 17:55:28', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('14', '业务日志', '请假', '2', 'com.du.lin.controller.LeaveController', 'addLeave', '2017-11-23 17:55:43', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('15', '业务日志', '撤回请假', '2', 'com.du.lin.controller.LeaveController', 'withdrawLeave', '2017-11-23 17:55:48', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('16', '业务日志', '请假', '2', 'com.du.lin.controller.LeaveController', 'addLeave', '2017-11-23 17:56:02', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('17', '业务日志', '请假', '2', 'com.du.lin.controller.LeaveController', 'addLeave', '2017-11-23 17:56:15', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('18', '业务日志', '审核请假', '2', 'com.du.lin.controller.LeaveController', 'operationLeave', '2017-11-23 17:56:39', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('19', '业务日志', '审核请假', '2', 'com.du.lin.controller.LeaveController', 'operationLeave', '2017-11-23 17:56:42', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('20', '业务日志', '添加角色', '2', 'com.du.lin.controller.RoleController', 'addRole', '2017-11-23 17:59:10', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('21', '业务日志', '删除部门', '2', 'com.du.lin.controller.DeptController', 'deleteDept', '2017-11-23 17:59:35', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('22', '业务日志', '添加角色', '2', 'com.du.lin.controller.RoleController', 'addRole', '2017-11-23 18:00:03', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('23', '业务日志', '修改角色信息', '2', 'com.du.lin.controller.RoleController', 'setRole', '2017-11-23 18:00:15', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('24', '业务日志', '修改角色信息', '2', 'com.du.lin.controller.RoleController', 'setRole', '2017-11-23 18:00:21', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('25', '业务日志', '删除角色', '2', 'com.du.lin.controller.RoleController', 'deleteRole', '2017-11-23 18:00:28', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('26', '业务日志', '删除角色', '2', 'com.du.lin.controller.RoleController', 'deleteRole', '2017-11-23 18:00:30', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('27', '业务日志', '配置菜单', '2', 'com.du.lin.controller.RoleController', 'addRelation', '2017-11-23 18:02:15', '成功', 'ttt');
INSERT INTO `operation_log` VALUES ('28', '业务日志', '用户信息修改', '2', 'com.du.lin.controller.UserController', 'setuser', '2017-11-23 18:02:33', '成功', 'ttt');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) NOT NULL,
  `tips` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu_relation
-- ----------------------------
INSERT INTO `role_menu_relation` VALUES ('76', '1', '1');
INSERT INTO `role_menu_relation` VALUES ('77', '1', '2');
INSERT INTO `role_menu_relation` VALUES ('78', '1', '3');
INSERT INTO `role_menu_relation` VALUES ('79', '1', '4');
INSERT INTO `role_menu_relation` VALUES ('80', '1', '5');
INSERT INTO `role_menu_relation` VALUES ('81', '1', '6');
INSERT INTO `role_menu_relation` VALUES ('82', '1', '8');
INSERT INTO `role_menu_relation` VALUES ('83', '1', '9');
INSERT INTO `role_menu_relation` VALUES ('84', '1', '10');
INSERT INTO `role_menu_relation` VALUES ('85', '2', '4');
INSERT INTO `role_menu_relation` VALUES ('86', '2', '9');
INSERT INTO `role_menu_relation` VALUES ('87', '18', '1');
INSERT INTO `role_menu_relation` VALUES ('88', '18', '2');
INSERT INTO `role_menu_relation` VALUES ('89', '18', '3');

-- ----------------------------
-- Table structure for thing
-- ----------------------------
DROP TABLE IF EXISTS `thing`;
CREATE TABLE `thing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thing
-- ----------------------------
INSERT INTO `thing` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `thing` VALUES ('2', '2', '2', '2', '2', '2', '2');
INSERT INTO `thing` VALUES ('3', '4', '3', '3', '3', '3', '3');
INSERT INTO `thing` VALUES ('4', '4', '4', '4', '4', '4', '4');
INSERT INTO `thing` VALUES ('5', '5', '5', '5', '5', '5', '5');
INSERT INTO `thing` VALUES ('6', '6', '6', '6', '6', '6', '6');
INSERT INTO `thing` VALUES ('7', '7', '7', '7', '7', '7', '7');
INSERT INTO `thing` VALUES ('8', '8', '8', '8', '8', '8', '8');
INSERT INTO `thing` VALUES ('9', '9', '9', '9', '9', '9', '9');
INSERT INTO `thing` VALUES ('10', '10', '10', '10', '10', '10', '10');
INSERT INTO `thing` VALUES ('11', 'aaa', 'fds', 'fds', 'fd', 'fds', 'fdas');

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
INSERT INTO `user` VALUES ('4', 'admin', '96e79218965eb72c92a549dd5a330112', '4', '0', '1', '18');
