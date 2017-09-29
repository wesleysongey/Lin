/*
Navicat MySQL Data Transfer

Source Server         : Lin
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-09-29 14:21:29
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

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
INSERT INTO `login_log` VALUES ('32', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('33', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('34', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('35', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('36', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('37', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('38', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('39', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('40', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('41', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('42', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('43', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('44', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('45', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('46', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('47', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('48', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('49', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('50', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('51', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('52', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('53', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('54', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('55', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('56', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('57', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('58', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('59', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('60', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('61', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('62', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('63', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('64', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('65', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('66', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('67', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('68', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('69', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('70', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('71', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('72', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('73', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('74', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('75', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('76', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('77', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('78', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('79', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('80', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('81', '退出日志', '2', '2017-09-27 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('82', '登陆日志', '2', '2017-09-27 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('83', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('84', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('85', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('86', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('87', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('88', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('89', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('90', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('91', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('92', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('93', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('94', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('95', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('96', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('97', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('98', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('99', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('100', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('101', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('102', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('103', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('104', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('105', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('106', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('107', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('108', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('109', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('110', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('111', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('112', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('113', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('114', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('115', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('116', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('117', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('118', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('119', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('120', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('121', '登陆失败日志', null, '2017-09-28 00:00:00', '成功', '用户名：ttt,原因：账号与密码不匹配', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('122', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('123', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('124', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('125', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('126', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('127', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('128', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('129', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('130', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('131', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('132', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('133', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('134', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('135', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('136', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('137', '登陆日志', '4', '2017-09-28 00:00:00', '成功', 'admin', '192.168.100.40');
INSERT INTO `login_log` VALUES ('138', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('139', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('140', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('141', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('142', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('143', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('144', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('145', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('146', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('147', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('148', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('149', '退出日志', '2', '2017-09-28 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('150', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('151', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('152', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('153', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('154', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('155', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('156', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('157', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '127.0.0.1');
INSERT INTO `login_log` VALUES ('158', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('159', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('160', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('161', '登陆日志', '2', '2017-09-28 00:00:00', '成功', 'ttt', '127.0.0.1');
INSERT INTO `login_log` VALUES ('162', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('163', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('164', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('165', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('166', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('167', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('168', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('169', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('170', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('171', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('172', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('173', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('174', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('175', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('176', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('177', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '127.0.0.1');
INSERT INTO `login_log` VALUES ('178', '登陆日志', '2', '2017-09-29 00:00:00', '成功', 'ttt', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('179', '退出日志', '2', '2017-09-29 00:00:00', '成功', '用户名：ttt,退出', '0:0:0:0:0:0:0:1');

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
  `body` text NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `senduserid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `recivedeptid` int(11) DEFAULT NULL,
  `reciveuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('10', null, '欢迎使用Lin！                    (●\'◡\'●) ', null, '2', '系统通知', '2017-09-28 11:52:23', null, null);

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
