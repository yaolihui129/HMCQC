/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : zentao

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-01-19 18:23:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_action`
-- ----------------------------
DROP TABLE IF EXISTS `zt_action`;
CREATE TABLE `zt_action` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL,
  `project` mediumint(9) NOT NULL,
  `actor` varchar(30) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `comment` text NOT NULL,
  `extra` text NOT NULL,
  `read` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`objectID`,`product`,`project`,`action`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_action
-- ----------------------------
INSERT INTO `zt_action` VALUES ('1', 'user', '1', ',0,', '0', 'admin', 'login', '2016-07-06 23:43:25', '', '', '0');
INSERT INTO `zt_action` VALUES ('2', 'user', '1', ',0,', '0', 'admin', 'login', '2016-07-06 23:53:07', '', '', '0');
INSERT INTO `zt_action` VALUES ('3', 'user', '1', ',0,', '0', 'admin', 'login', '2016-07-16 17:06:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('4', 'user', '1', ',0,', '0', 'admin', 'login', '2017-01-08 21:51:05', '', '', '0');
INSERT INTO `zt_action` VALUES ('5', 'product', '1', ',1,', '0', 'admin', 'opened', '2017-01-08 22:23:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('6', 'product', '2', ',2,', '0', 'admin', 'opened', '2017-01-08 22:24:09', '', '', '0');
INSERT INTO `zt_action` VALUES ('7', 'product', '3', ',3,', '0', 'admin', 'opened', '2017-01-08 22:24:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('8', 'product', '4', ',4,', '0', 'admin', 'opened', '2017-01-08 22:25:23', '', '', '0');
INSERT INTO `zt_action` VALUES ('9', 'user', '1', ',0,', '0', 'admin', 'logout', '2017-01-08 22:28:36', '', '', '0');
INSERT INTO `zt_action` VALUES ('10', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-08 22:29:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('11', 'product', '5', ',5,', '0', 'yaolh', 'opened', '2017-01-08 22:29:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('12', 'user', '2', ',0,', '0', 'yaolh', 'logout', '2017-01-08 22:31:27', '', '', '0');
INSERT INTO `zt_action` VALUES ('13', 'user', '12', ',0,', '0', 'yangyh', 'login', '2017-01-08 22:31:47', '', '', '0');
INSERT INTO `zt_action` VALUES ('14', 'user', '12', ',0,', '0', 'yangyh', 'logout', '2017-01-08 22:33:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('15', 'user', '1', ',0,', '0', 'admin', 'login', '2017-01-08 22:33:16', '', '', '0');
INSERT INTO `zt_action` VALUES ('16', 'project', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:38:07', '', '', '0');
INSERT INTO `zt_action` VALUES ('17', 'story', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:39:56', '', '', '0');
INSERT INTO `zt_action` VALUES ('18', 'build', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:42:14', '', '', '0');
INSERT INTO `zt_action` VALUES ('19', 'bug', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:43:06', '', '', '1');
INSERT INTO `zt_action` VALUES ('20', 'bug', '1', ',5,', '1', 'admin', 'bugconfirmed', '2017-01-08 22:43:27', '', '', '1');
INSERT INTO `zt_action` VALUES ('21', 'bug', '1', ',5,', '1', 'admin', 'assigned', '2017-01-08 22:43:38', '', 'liangxw', '1');
INSERT INTO `zt_action` VALUES ('22', 'bug', '1', ',5,', '1', 'admin', 'resolved', '2017-01-08 22:44:51', '', 'fixed', '1');
INSERT INTO `zt_action` VALUES ('23', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-08 23:50:46', '', '', '0');
INSERT INTO `zt_action` VALUES ('24', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-09 09:19:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('25', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-12 09:22:13', '', '', '0');
INSERT INTO `zt_action` VALUES ('26', 'user', '2', ',0,', '0', 'yaolh', 'logout', '2017-01-12 09:59:35', '', '', '0');
INSERT INTO `zt_action` VALUES ('27', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-12 09:59:39', '', '', '0');
INSERT INTO `zt_action` VALUES ('28', 'user', '2', ',0,', '0', 'yaolh', 'logout', '2017-01-12 10:05:32', '', '', '0');
INSERT INTO `zt_action` VALUES ('29', 'user', '1', ',0,', '0', 'admin', 'login', '2017-01-12 10:06:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('30', 'user', '1', ',0,', '0', 'admin', 'logout', '2017-01-12 11:53:14', '', '', '0');
INSERT INTO `zt_action` VALUES ('31', 'user', '2', ',0,', '0', 'yao', 'login', '2017-01-12 11:53:27', '', '', '0');
INSERT INTO `zt_action` VALUES ('32', 'product', '10', ',10,', '0', 'yao', 'edited', '2017-01-12 12:34:28', '', '', '0');
INSERT INTO `zt_action` VALUES ('33', 'product', '4', ',4,', '0', 'yao', 'edited', '2017-01-12 12:35:05', '', '', '0');
INSERT INTO `zt_action` VALUES ('34', 'product', '3', ',3,', '0', 'yao', 'edited', '2017-01-12 12:35:41', '', '', '0');
INSERT INTO `zt_action` VALUES ('35', 'product', '2', ',2,', '0', 'yao', 'edited', '2017-01-12 12:36:17', '', '', '0');
INSERT INTO `zt_action` VALUES ('36', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-01-12 12:36:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('37', 'product', '5', ',5,', '0', 'yao', 'edited', '2017-01-12 12:41:26', '', '', '0');
INSERT INTO `zt_action` VALUES ('38', 'product', '5', ',5,', '0', 'yao', 'edited', '2017-01-12 12:43:02', '', '', '0');
INSERT INTO `zt_action` VALUES ('39', 'product', '12', ',12,', '0', 'yao', 'opened', '2017-01-12 12:44:28', '', '', '0');
INSERT INTO `zt_action` VALUES ('40', 'product', '12', ',12,', '0', 'yao', 'edited', '2017-01-12 12:46:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('41', 'user', '2', ',0,', '0', 'yao', 'login', '2017-01-12 14:00:56', '', '', '0');

-- ----------------------------
-- Table structure for `zt_block`
-- ----------------------------
DROP TABLE IF EXISTS `zt_block`;
CREATE TABLE `zt_block` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `source` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `params` text NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `accountModuleOrder` (`account`,`module`,`order`),
  KEY `block` (`account`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_block
-- ----------------------------
INSERT INTO `zt_block` VALUES ('1', 'admin', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('2', 'admin', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('3', 'admin', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('4', 'admin', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('5', 'admin', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('6', 'admin', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('7', 'admin', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('8', 'admin', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('9', 'admin', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('10', 'admin', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('11', 'admin', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('12', 'admin', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('13', 'admin', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('14', 'yaolh', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('15', 'yaolh', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('16', 'yaolh', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('17', 'yaolh', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('18', 'yaolh', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('19', 'yaolh', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('20', 'yaolh', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('21', 'yaolh', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('22', 'yaolh', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('23', 'yaolh', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('24', 'yaolh', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('25', 'yaolh', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('26', 'yaolh', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('27', 'yaolh', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('28', 'yaolh', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('29', 'yaolh', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');
INSERT INTO `zt_block` VALUES ('30', 'yangyh', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('31', 'yangyh', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('32', 'yangyh', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('33', 'yangyh', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('34', 'yangyh', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('35', 'yangyh', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('36', 'yangyh', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('37', 'yangyh', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('38', 'yangyh', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('39', 'yangyh', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('40', 'yangyh', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('41', 'yangyh', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('42', 'yangyh', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('43', 'yangyh', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('44', 'yangyh', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('45', 'yangyh', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');
INSERT INTO `zt_block` VALUES ('46', 'admin', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('47', 'admin', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('48', 'admin', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');
INSERT INTO `zt_block` VALUES ('49', 'yao', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('50', 'yao', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('51', 'yao', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('52', 'yao', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('53', 'yao', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('54', 'yao', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('55', 'yao', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('56', 'yao', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('57', 'yao', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('58', 'yao', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('59', 'yao', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');

-- ----------------------------
-- Table structure for `zt_branch`
-- ----------------------------
DROP TABLE IF EXISTS `zt_branch`;
CREATE TABLE `zt_branch` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL COMMENT '所属产品',
  `name` varchar(255) NOT NULL COMMENT '平台',
  `deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '删除标识',
  `sysno` varchar(10) DEFAULT NULL COMMENT '代码',
  `testip` varchar(100) DEFAULT NULL COMMENT '测试环境',
  `sedan` varchar(100) DEFAULT NULL COMMENT '仿真环境',
  PRIMARY KEY (`id`),
  KEY `product` (`product`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_branch
-- ----------------------------
INSERT INTO `zt_branch` VALUES ('1', '10', '权限后台', '0', 'JDQ', '', '');
INSERT INTO `zt_branch` VALUES ('2', '10', '微网站后台', '0', 'wxA', null, null);
INSERT INTO `zt_branch` VALUES ('3', '10', '微信服务号（用户）', '0', 'wxU', null, null);
INSERT INTO `zt_branch` VALUES ('4', '10', '微信服务号（管家）', '0', 'wxG', null, null);
INSERT INTO `zt_branch` VALUES ('7', '1', '秀丽广告(Xiuli)', '0', 'Xiuli', null, null);
INSERT INTO `zt_branch` VALUES ('8', '1', '秀丽广告后台(Admin)', '0', 'Admin', null, null);
INSERT INTO `zt_branch` VALUES ('9', '4', '安顺汽修(Anshun)', '0', 'Anshun', null, null);
INSERT INTO `zt_branch` VALUES ('10', '4', '安顺后台(Admin)', '0', 'Admin', '', '');
INSERT INTO `zt_branch` VALUES ('11', '3', '麦田双辉(Mtsh)', '0', 'Mtsh', null, null);
INSERT INTO `zt_branch` VALUES ('12', '3', '麦田后台(Admin)', '0', 'Admin', '', '');
INSERT INTO `zt_branch` VALUES ('13', '2', '拓才教育(Tuocai)', '0', 'Tuocai', null, null);
INSERT INTO `zt_branch` VALUES ('14', '2', '拓才后台(Admin)', '0', 'Admin', '', '');
INSERT INTO `zt_branch` VALUES ('15', '5', '测试前台(Test)', '0', 'Test', '', '');
INSERT INTO `zt_branch` VALUES ('16', '5', '管理后台(TAdmin)', '0', 'TAdmin', '', '');
INSERT INTO `zt_branch` VALUES ('17', '12', '免费网站（Free）', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('18', '12', '收费模块（Sale）', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('19', '12', '网站后台（Admin）', '0', 'Admin', '', '');
INSERT INTO `zt_branch` VALUES ('20', '12', '微信服务号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('21', '12', '微信订阅号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('22', '12', '微信企业号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('23', '12', '微信小程序', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('24', '12', '钉钉企业管理', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('25', '12', 'QQ电商服务', '0', null, null, null);

-- ----------------------------
-- Table structure for `zt_bug`
-- ----------------------------
DROP TABLE IF EXISTS `zt_bug`;
CREATE TABLE `zt_bug` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toTask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toStory` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `severity` tinyint(4) NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(30) NOT NULL DEFAULT '',
  `hardware` varchar(30) NOT NULL,
  `found` varchar(30) NOT NULL DEFAULT '',
  `steps` text NOT NULL,
  `status` enum('active','resolved','closed') NOT NULL DEFAULT 'active',
  `color` char(7) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `activatedCount` smallint(6) NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `openedBuild` varchar(255) NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `resolvedBy` varchar(30) NOT NULL DEFAULT '',
  `resolution` varchar(30) NOT NULL DEFAULT '',
  `resolvedBuild` varchar(30) NOT NULL DEFAULT '',
  `resolvedDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `duplicateBug` mediumint(8) unsigned NOT NULL,
  `linkBug` varchar(255) NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `caseVersion` smallint(6) NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL,
  `testtask` mediumint(8) unsigned NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bug` (`product`,`module`,`project`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_bug
-- ----------------------------
INSERT INTO `zt_bug` VALUES ('1', '5', '0', '0', '1', '0', '0', '1', '0', '0', '0', 'qweqw', '', '3', '0', 'codeerror', '', '', '', '', '<p>[步骤]</p>\n<p>[结果]</p>\n<p>[期望]</p>', 'resolved', '', '1', '0', '', 'admin', '2017-01-08 22:43:06', '1', 'admin', '2017-01-08 22:44:51', 'admin', 'fixed', 'trunk', '2017-01-08 22:44:51', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', 'admin', '2017-01-08 22:44:51', '0');

-- ----------------------------
-- Table structure for `zt_build`
-- ----------------------------
DROP TABLE IF EXISTS `zt_build`;
CREATE TABLE `zt_build` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(150) NOT NULL,
  `scmPath` char(255) NOT NULL,
  `filePath` char(255) NOT NULL,
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `builder` char(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`product`,`project`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_build
-- ----------------------------
INSERT INTO `zt_build` VALUES ('1', '5', '0', '1', 'IOS20170108', '', '', '2017-01-08', '', '', 'jiaxn', '', '0');

-- ----------------------------
-- Table structure for `zt_burn`
-- ----------------------------
DROP TABLE IF EXISTS `zt_burn`;
CREATE TABLE `zt_burn` (
  `project` mediumint(8) unsigned NOT NULL,
  `date` date NOT NULL,
  `left` float NOT NULL,
  `consumed` float NOT NULL,
  PRIMARY KEY (`project`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_burn
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_case`
-- ----------------------------
DROP TABLE IF EXISTS `zt_case`;
CREATE TABLE `zt_case` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(30) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `precondition` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `type` char(30) NOT NULL DEFAULT '1',
  `stage` varchar(255) NOT NULL,
  `howRun` varchar(30) NOT NULL,
  `scriptedBy` varchar(30) NOT NULL,
  `scriptedDate` date NOT NULL,
  `scriptStatus` varchar(30) NOT NULL,
  `scriptLocation` varchar(255) NOT NULL,
  `status` char(30) NOT NULL DEFAULT '1',
  `color` char(7) NOT NULL,
  `frequency` enum('1','2','3') NOT NULL DEFAULT '1',
  `order` tinyint(30) unsigned NOT NULL DEFAULT '0',
  `openedBy` char(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `lastEditedBy` char(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkCase` varchar(255) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`product`,`module`,`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_case
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_casestep`
-- ----------------------------
DROP TABLE IF EXISTS `zt_casestep`;
CREATE TABLE `zt_casestep` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(3) unsigned NOT NULL DEFAULT '0',
  `desc` text NOT NULL,
  `expect` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`case`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_casestep
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_company`
-- ----------------------------
DROP TABLE IF EXISTS `zt_company`;
CREATE TABLE `zt_company` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(120) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `fax` char(20) DEFAULT NULL,
  `address` char(120) DEFAULT NULL,
  `zipcode` char(10) DEFAULT NULL,
  `website` char(120) DEFAULT NULL,
  `backyard` char(120) DEFAULT NULL,
  `guest` enum('1','0') NOT NULL DEFAULT '0',
  `admins` char(255) DEFAULT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_company
-- ----------------------------
INSERT INTO `zt_company` VALUES ('1', '秀丽广告', '', '', '', '', 'http://www.xiuliguanggao.com', '', '0', ',admin,', '0');

-- ----------------------------
-- Table structure for `zt_config`
-- ----------------------------
DROP TABLE IF EXISTS `zt_config`;
CREATE TABLE `zt_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` char(30) NOT NULL DEFAULT '',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL DEFAULT '',
  `key` char(30) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`owner`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_config
-- ----------------------------
INSERT INTO `zt_config` VALUES ('1', 'system', 'common', 'global', 'version', '8.2.4');
INSERT INTO `zt_config` VALUES ('2', 'system', 'common', 'global', 'flow', 'full');
INSERT INTO `zt_config` VALUES ('3', 'admin', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('7', 'admin', 'common', 'global', 'novice', '');
INSERT INTO `zt_config` VALUES ('8', 'admin', 'project', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('9', 'admin', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('10', 'admin', 'qa', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('11', 'system', 'mail', 'smtp', 'host', 'smtp.sina.com');
INSERT INTO `zt_config` VALUES ('12', 'system', 'mail', 'smtp', 'port', '25');
INSERT INTO `zt_config` VALUES ('13', 'system', 'mail', 'smtp', 'auth', '1');
INSERT INTO `zt_config` VALUES ('14', 'system', 'mail', 'smtp', 'username', 'yaolihui129');
INSERT INTO `zt_config` VALUES ('15', 'system', 'mail', 'smtp', 'password', 'yaolihui0506');
INSERT INTO `zt_config` VALUES ('16', 'system', 'mail', 'smtp', 'secure', '');
INSERT INTO `zt_config` VALUES ('17', 'system', 'mail', 'smtp', 'debug', '1');
INSERT INTO `zt_config` VALUES ('18', 'system', 'mail', 'smtp', 'charset', 'gbk');
INSERT INTO `zt_config` VALUES ('19', 'system', 'mail', '', 'turnon', '1');
INSERT INTO `zt_config` VALUES ('20', 'system', 'mail', '', 'mta', 'smtp');
INSERT INTO `zt_config` VALUES ('21', 'system', 'mail', '', 'async', '');
INSERT INTO `zt_config` VALUES ('22', 'system', 'mail', '', 'fromAddress', 'yaolihui129@sina.com');
INSERT INTO `zt_config` VALUES ('23', 'system', 'mail', '', 'fromName', '禅道');
INSERT INTO `zt_config` VALUES ('24', 'system', 'common', 'global', 'cron', '1');
INSERT INTO `zt_config` VALUES ('25', 'system', 'cron', 'run', 'status', 'running');
INSERT INTO `zt_config` VALUES ('31', 'system', 'custom', '', 'productProject', '0_0');
INSERT INTO `zt_config` VALUES ('27', 'admin', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('28', 'admin', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('32', 'system', 'common', 'global', 'sn', '97c34c68ec3616f3a1370de85ea66b0b');
INSERT INTO `zt_config` VALUES ('36', 'yaolh', 'common', 'global', 'novice', '');
INSERT INTO `zt_config` VALUES ('37', 'yaolh', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('38', 'yaolh', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('39', 'yaolh', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('40', 'yaolh', 'project', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('41', 'yaolh', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('42', 'yaolh', 'qa', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('43', 'yaolh', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('44', 'yangyh', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('45', 'yangyh', 'common', 'global', 'novice', 'false');
INSERT INTO `zt_config` VALUES ('46', 'yangyh', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('47', 'yangyh', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('48', 'yangyh', 'project', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('49', 'yangyh', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('50', 'yangyh', 'qa', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('51', 'yangyh', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('52', 'admin', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('56', 'yao', 'common', 'global', 'novice', '');
INSERT INTO `zt_config` VALUES ('57', 'yao', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('58', 'yao', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('59', 'yao', 'product', 'common', 'blockInited', '1');

-- ----------------------------
-- Table structure for `zt_cron`
-- ----------------------------
DROP TABLE IF EXISTS `zt_cron`;
CREATE TABLE `zt_cron` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(20) NOT NULL,
  `h` varchar(20) NOT NULL,
  `dom` varchar(20) NOT NULL,
  `mon` varchar(20) NOT NULL,
  `dow` varchar(20) NOT NULL,
  `command` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `buildin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL,
  `lastTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastTime` (`lastTime`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_cron
-- ----------------------------
INSERT INTO `zt_cron` VALUES ('1', '*', '*', '*', '*', '*', '', '监控定时任务', 'zentao', '1', 'normal', '2017-01-12 14:26:01');
INSERT INTO `zt_cron` VALUES ('2', '30', '23', '*', '*', '*', 'moduleName=project&methodName=computeburn', '更新燃尽图', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('3', '0', '1', '*', '*', '*', 'moduleName=report&methodName=remind', '每日任务提醒', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('4', '*/5', '*', '*', '*', '*', 'moduleName=svn&methodName=run', '同步SVN', 'zentao', '1', 'normal', '2017-01-12 14:25:01');
INSERT INTO `zt_cron` VALUES ('5', '*/5', '*', '*', '*', '*', 'moduleName=git&methodName=run', '同步GIT', 'zentao', '1', 'stop', '0000-00-00 00:00:00');
INSERT INTO `zt_cron` VALUES ('6', '30', '0', '*', '*', '*', 'moduleName=backup&methodName=backup', '备份数据和附件', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('7', '*/5', '*', '*', '*', '*', 'moduleName=mail&methodName=asyncSend', '异步发信', 'zentao', '1', 'normal', '2017-01-12 14:25:01');

-- ----------------------------
-- Table structure for `zt_dept`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dept`;
CREATE TABLE `zt_dept` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position` char(30) NOT NULL DEFAULT '',
  `function` char(255) NOT NULL DEFAULT '',
  `manager` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dept` (`parent`,`path`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_dept
-- ----------------------------
INSERT INTO `zt_dept` VALUES ('1', '秀丽广告', '0', ',1,', '1', '10', '', '', '');
INSERT INTO `zt_dept` VALUES ('2', '麦田双辉', '0', ',2,', '1', '20', '', '', '');
INSERT INTO `zt_dept` VALUES ('3', '拓才教育', '0', ',3,', '1', '30', '', '', '');
INSERT INTO `zt_dept` VALUES ('4', '智慧信达', '0', ',4,', '1', '40', '', '', '');
INSERT INTO `zt_dept` VALUES ('5', '安顺汽修', '0', ',5,', '1', '50', '', '', '');
INSERT INTO `zt_dept` VALUES ('6', '研发中心', '0', ',6,', '1', '60', '', '', '');
INSERT INTO `zt_dept` VALUES ('7', '太平洋加达', '0', ',7,', '1', '70', '', '', '');

-- ----------------------------
-- Table structure for `zt_dict`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dict`;
CREATE TABLE `zt_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `moder` varchar(10) DEFAULT '腰立辉',
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_dict
-- ----------------------------
INSERT INTO `zt_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('2', '2', '待确认', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('3', '3', '已搁置', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('4', '4', '作废', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('5', '1', '未开始', 'prost', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('6', '2', '进行中', 'prost', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('7', '3', '已完成', 'prost', '正常', '腰立辉', '2016-11-11 16:49:34');
INSERT INTO `zt_dict` VALUES ('8', '8', '仿真验证通过', 'prost', '作废', '腰立辉', '2016-11-11 16:50:28');
INSERT INTO `zt_dict` VALUES ('9', '6', '已取消', 'prost', '正常', '腰立辉', '2016-11-11 16:50:20');
INSERT INTO `zt_dict` VALUES ('43', '1', '无文档', 'document', '正常', '腰立辉', '2016-09-17 16:09:39');
INSERT INTO `zt_dict` VALUES ('44', '2', '测试计划', 'document', '正常', '腰立辉', '2016-09-17 16:08:42');
INSERT INTO `zt_dict` VALUES ('45', '3', '测试用例', 'document', '正常', '腰立辉', '2016-09-17 16:08:55');
INSERT INTO `zt_dict` VALUES ('46', '4', 'BUG分析报告', 'document', '正常', '腰立辉', '2016-09-17 16:09:28');
INSERT INTO `zt_dict` VALUES ('47', '5', '测试综合报告', 'document', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('48', '1', '打开', 'rstate', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('49', '2', '关闭', 'rstate', '正常', '腰立辉', '2016-09-17 16:18:30');
INSERT INTO `zt_dict` VALUES ('50', '1', 'A', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:42');
INSERT INTO `zt_dict` VALUES ('51', '2', 'B', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:21');
INSERT INTO `zt_dict` VALUES ('52', '3', 'C', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:27');
INSERT INTO `zt_dict` VALUES ('53', '4', 'D', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:34');
INSERT INTO `zt_dict` VALUES ('54', '1', 'M', 'sceneType', '正常', '腰立辉', '2016-09-23 21:11:13');
INSERT INTO `zt_dict` VALUES ('55', '2', 'A', 'sceneType', '正常', '腰立辉', '2016-09-23 21:11:19');
INSERT INTO `zt_dict` VALUES ('56', '1', '未测试', 'sceneResul', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('57', '2', '通过', 'sceneResul', '正常', '腰立辉', '2016-10-10 16:22:33');
INSERT INTO `zt_dict` VALUES ('58', '3', '失败', 'sceneResul', '正常', '腰立辉', '2016-10-10 16:22:39');
INSERT INTO `zt_dict` VALUES ('59', '4', '场景错', 'sceneResul', '正常', '腰立辉', '2016-10-10 16:22:45');
INSERT INTO `zt_dict` VALUES ('60', '1', '操作', 'typeset', '正常', '腰立辉', '2016-10-20 15:08:41');
INSERT INTO `zt_dict` VALUES ('61', '2', '检查', 'typeset', '正常', '腰立辉', '2016-10-20 15:08:52');
INSERT INTO `zt_dict` VALUES ('62', '1', '待维护', 'dstate', '正常', '腰立辉', '2016-10-20 16:21:49');
INSERT INTO `zt_dict` VALUES ('63', '2', '已完成', 'dstate', '正常', '腰立辉', '2016-10-20 16:22:03');
INSERT INTO `zt_dict` VALUES ('67', '4', '已上线', 'prost', '正常', '腰立辉', '2016-11-11 16:50:05');
INSERT INTO `zt_dict` VALUES ('69', '3', 'C', 'sceneType', '正常', '腰立辉', '2016-11-16 17:23:14');
INSERT INTO `zt_dict` VALUES ('68', '5', '已搁置', 'prost', '正常', '腰立辉', '2016-11-11 16:50:15');
INSERT INTO `zt_dict` VALUES ('72', '1', 'PJD', 'testgp', '正常', '腰立辉', '2016-12-17 22:37:50');
INSERT INTO `zt_dict` VALUES ('73', '1', '技师', 'tech', '正常', '腰立辉', '2016-12-17 17:06:48');
INSERT INTO `zt_dict` VALUES ('74', '2', '非技师', 'tech', '正常', '腰立辉', '2016-12-17 17:07:02');
INSERT INTO `zt_dict` VALUES ('75', '1', '用车小常识', 'usecar', '正常', '腰立辉', '2016-12-17 17:14:52');
INSERT INTO `zt_dict` VALUES ('76', '2', '流言终结者', 'usecar', '正常', '腰立辉', '2016-12-17 17:15:16');
INSERT INTO `zt_dict` VALUES ('77', '1', '抽奖', 'voucher', '正常', '腰立辉', '2016-12-17 17:16:07');
INSERT INTO `zt_dict` VALUES ('78', '2', '普通', 'voucher', '正常', '腰立辉', '2016-12-17 17:16:20');
INSERT INTO `zt_dict` VALUES ('79', '1', '老师', 'custype', '正常', '腰立辉', '2016-12-17 20:09:14');
INSERT INTO `zt_dict` VALUES ('80', '2', '助教', 'custype', '正常', '腰立辉', '2016-12-17 20:09:26');
INSERT INTO `zt_dict` VALUES ('81', '3', '学生', 'custype', '正常', '腰立辉', '2016-12-17 20:09:33');
INSERT INTO `zt_dict` VALUES ('82', '1', '学前少儿', 'coursetype', '正常', '腰立辉', '2016-12-17 20:10:30');
INSERT INTO `zt_dict` VALUES ('83', '2', '小学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 20:10:47');
INSERT INTO `zt_dict` VALUES ('84', '3', '中学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 20:10:55');
INSERT INTO `zt_dict` VALUES ('85', '4', '作业托管', 'coursetype', '正常', '腰立辉', '2016-12-17 20:11:03');
INSERT INTO `zt_dict` VALUES ('86', '5', '兴趣拓展', 'coursetype', '正常', '腰立辉', '2016-12-17 20:11:22');
INSERT INTO `zt_dict` VALUES ('87', '1', '08:00-10:00', 'sktime', '正常', '腰立辉', '2016-12-17 20:13:21');
INSERT INTO `zt_dict` VALUES ('88', '2', '10:10-12:10', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:22');
INSERT INTO `zt_dict` VALUES ('89', '3', '13:30-15:30', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:29');
INSERT INTO `zt_dict` VALUES ('90', '4', '15:40-17:40', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:37');
INSERT INTO `zt_dict` VALUES ('91', '5', '18:00-20:00', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:45');
INSERT INTO `zt_dict` VALUES ('92', '2', 'Auto', 'testgp', '正常', '腰立辉', '2016-12-17 22:45:19');

-- ----------------------------
-- Table structure for `zt_doc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_doc`;
CREATE TABLE `zt_doc` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL,
  `lib` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `views` smallint(5) unsigned NOT NULL,
  `addedBy` varchar(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `doc` (`product`,`project`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_doc
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_doclib`
-- ----------------------------
DROP TABLE IF EXISTS `zt_doclib`;
CREATE TABLE `zt_doclib` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_doclib
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_effort`
-- ----------------------------
DROP TABLE IF EXISTS `zt_effort`;
CREATE TABLE `zt_effort` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` char(30) NOT NULL DEFAULT '',
  `todo` enum('1','0') NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `begin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('1','2','3') NOT NULL DEFAULT '1',
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_effort
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_extension`
-- ----------------------------
DROP TABLE IF EXISTS `zt_extension`;
CREATE TABLE `zt_extension` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(30) NOT NULL,
  `version` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `license` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'extension',
  `site` varchar(150) NOT NULL,
  `zentaoCompatible` varchar(100) NOT NULL,
  `installedTime` datetime NOT NULL,
  `depends` varchar(100) NOT NULL,
  `dirs` text NOT NULL,
  `files` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `extension` (`name`,`installedTime`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_extension
-- ----------------------------
INSERT INTO `zt_extension` VALUES ('1', '禅道补丁', 'zentaopatch', '8.2.4.1', 'azhi<congzhi@cnezsoft.com>', '禅道8.2.4版本补丁。', 'LGPL', 'patch', 'http://www.zentao.net', '8.2.4', '2016-07-06 23:47:39', '', '[]', '{\"module\\\\dept\\\\view\\/browse.html.php\":\"a6ab93b049a5650700586ffcf7d938cd\"}', 'installed');

-- ----------------------------
-- Table structure for `zt_file`
-- ----------------------------
DROP TABLE IF EXISTS `zt_file`;
CREATE TABLE `zt_file` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `objectType` char(30) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `addedBy` char(30) NOT NULL DEFAULT '',
  `addedDate` datetime NOT NULL,
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `file` (`objectType`,`objectID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_file
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_group`
-- ----------------------------
DROP TABLE IF EXISTS `zt_group`;
CREATE TABLE `zt_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `role` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `acl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_group
-- ----------------------------
INSERT INTO `zt_group` VALUES ('1', '管理员', 'admin', '系统管理员', '');
INSERT INTO `zt_group` VALUES ('2', '研发', 'dev', '研发人员', '');
INSERT INTO `zt_group` VALUES ('3', '测试', 'qa', '测试人员', '');
INSERT INTO `zt_group` VALUES ('4', '项目经理', 'pm', '项目经理', '');
INSERT INTO `zt_group` VALUES ('5', '产品经理', 'po', '产品经理', '');
INSERT INTO `zt_group` VALUES ('6', '研发主管', 'td', '研发主管', '');
INSERT INTO `zt_group` VALUES ('7', '产品主管', 'pd', '产品主管', '');
INSERT INTO `zt_group` VALUES ('8', '测试主管', 'qd', '测试主管', '');
INSERT INTO `zt_group` VALUES ('9', '高层管理', 'top', '高层管理', '');
INSERT INTO `zt_group` VALUES ('10', '其他', '', '其他', '');
INSERT INTO `zt_group` VALUES ('11', 'guest', 'guest', 'For guest', '');

-- ----------------------------
-- Table structure for `zt_grouppriv`
-- ----------------------------
DROP TABLE IF EXISTS `zt_grouppriv`;
CREATE TABLE `zt_grouppriv` (
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` char(30) NOT NULL DEFAULT '',
  `method` char(30) NOT NULL DEFAULT '',
  UNIQUE KEY `group` (`group`,`module`,`method`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_grouppriv
-- ----------------------------
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'checkDB');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'checkWeak');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'safe');
INSERT INTO `zt_grouppriv` VALUES ('1', 'api', 'debug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('1', 'api', 'sql');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'backup');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'change');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'restore');
INSERT INTO `zt_grouppriv` VALUES ('1', 'branch', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'branch', 'manage');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'checkBugFree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'checkConfig');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'checkRedmine');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'convertBugFree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'convertRedmine');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'execute');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'selectSource');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'setBugfree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'setConfig');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'setRedmine');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'toggle');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'turnon');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'flow');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'restore');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'set');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dev', 'api');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dev', 'db');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'extend');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'newPage');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'save');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'deactivate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'erase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'install');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'uninstall');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'upgrade');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'upload');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('1', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('1', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('1', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'copy');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'manageMember');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'managePriv');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'manageView');
INSERT INTO `zt_grouppriv` VALUES ('1', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'batchDelete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'detect');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'reset');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'save');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'test');
INSERT INTO `zt_grouppriv` VALUES ('1', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'order');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'changeStatus');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangeBranch');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangePlan');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangeStage');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchReview');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'change');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('1', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('1', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchDelete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'confirmChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'exportTemplet');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'import');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'linkCases');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'showImport');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'unlinkCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'batchRun');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'linkcase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'runcase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'start');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'unlinkcase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'unlock');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('2', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('2', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('2', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('2', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('2', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('2', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('2', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('3', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('3', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('3', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('3', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('3', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('3', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('3', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'confirmChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'exportTemplet');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'import');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'linkCases');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'showImport');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'unlinkCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'batchRun');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'close');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'linkcase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'runcase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'start');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'unlinkcase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('4', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('4', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('4', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('4', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('4', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('4', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('4', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('5', 'branch', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'branch', 'manage');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('5', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('5', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('5', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('5', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('5', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'order');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'changeStatus');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangeBranch');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangePlan');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangeStage');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchReview');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'change');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('5', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('5', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('6', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('6', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('6', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('6', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('6', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('6', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('6', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('7', 'branch', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'branch', 'manage');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('7', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('7', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('7', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('7', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('7', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'close');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'order');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'changeStatus');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangeBranch');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangePlan');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangeStage');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchReview');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'change');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'close');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('7', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('7', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('8', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('8', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('8', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('8', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('8', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('8', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('8', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchDelete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'confirmChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'exportTemplet');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'import');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'linkCases');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'showImport');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'unlinkCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'batchRun');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'close');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'linkcase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'runcase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'start');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'unlinkcase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('9', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('9', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('9', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('9', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('9', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('9', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('9', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'create');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'unlock');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('10', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('10', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('10', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('10', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('11', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('11', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('11', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('11', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('11', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('11', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('11', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('11', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('11', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('11', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('11', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'view');

-- ----------------------------
-- Table structure for `zt_history`
-- ----------------------------
DROP TABLE IF EXISTS `zt_history`;
CREATE TABLE `zt_history` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field` varchar(30) NOT NULL DEFAULT '',
  `old` text NOT NULL,
  `new` text NOT NULL,
  `diff` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_history
-- ----------------------------
INSERT INTO `zt_history` VALUES ('1', '21', 'assignedTo', 'jiaxn', 'liangxw', '');
INSERT INTO `zt_history` VALUES ('2', '32', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('3', '33', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('4', '34', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('5', '35', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('6', '36', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('7', '37', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('8', '38', 'name', '测试平台', '测试管理', '001- <del>测试平台</del>\n001+ <ins>测试管理</ins>');
INSERT INTO `zt_history` VALUES ('9', '38', 'desc', '', '自主设计的测试管理平台', '001- <del></del>\n001+ <ins>自主设计的测试管理平台</ins>');
INSERT INTO `zt_history` VALUES ('10', '40', 'name', '标准网站(免费版)', '标准网站', '001- <del>标准网站(免费版)</del>\n001+ <ins>标准网站</ins>');
INSERT INTO `zt_history` VALUES ('11', '40', 'code', 'DemoFree', 'Demo', '');

-- ----------------------------
-- Table structure for `zt_lang`
-- ----------------------------
DROP TABLE IF EXISTS `zt_lang`;
CREATE TABLE `zt_lang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL,
  `key` varchar(60) NOT NULL,
  `value` text NOT NULL,
  `system` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`lang`,`module`,`section`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_lang
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_mailqueue`
-- ----------------------------
DROP TABLE IF EXISTS `zt_mailqueue`;
CREATE TABLE `zt_mailqueue` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `toList` varchar(255) NOT NULL,
  `ccList` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `addedBy` char(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `sendTime` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'wait',
  `failReason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sendTime` (`sendTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_mailqueue
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_module`
-- ----------------------------
DROP TABLE IF EXISTS `zt_module`;
CREATE TABLE `zt_module` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) NOT NULL,
  `root` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '平台',
  `name` char(60) NOT NULL DEFAULT '' COMMENT '模块',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父级',
  `path` char(255) NOT NULL DEFAULT '' COMMENT '路径',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `type` char(30) NOT NULL COMMENT '类型',
  `owner` varchar(30) NOT NULL COMMENT '修改',
  `short` varchar(30) NOT NULL COMMENT '简称',
  `state` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`root`,`type`,`path`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_module
-- ----------------------------
INSERT INTO `zt_module` VALUES ('127', '1', '0', '11', ' 11', '0', '', '0', '0', '', '', '', '正常');
INSERT INTO `zt_module` VALUES ('13', '0', '12', '17', '公司ICO', '9', ',9,13,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('12', '0', '12', '17', '关于我们', '0', ',12,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('11', '0', '12', '17', '产品详情', '0', ',11,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('10', '0', '12', '17', '产品分类', '0', ',10,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('9', '0', '12', '17', '首页', '0', ',9,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('15', '0', '12', '17', '宣传广告', '9', ',9,15,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('16', '0', '12', '17', '产品推荐', '9', ',9,16,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('17', '0', '12', '17', 'PC端QQ', '9', ',9,17,', '2', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('18', '0', '12', '17', '移动端拨号（手机或电话）', '9', ',9,18,', '2', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('19', '0', '12', '17', '导航分类', '10', ',10,19,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('20', '0', '12', '17', '页面展示分类', '10', ',10,20,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('21', '0', '12', '19', '登陆模块', '0', ',21,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('22', '0', '12', '19', '服务器信息', '0', ',22,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('23', '0', '12', '19', '后台入口', '0', ',23,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('24', '0', '12', '19', '需求管理入口', '0', ',24,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('25', '0', '12', '19', '网站设置', '0', ',25,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('26', '0', '12', '19', '商品信息管理', '23', ',23,26,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('27', '0', '12', '19', '基本信息设置', '25', ',25,27,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('28', '0', '12', '19', '广告图设置', '25', ',25,28,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('29', '0', '12', '19', '用户管理', '25', ',25,29,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('30', '0', '12', '19', '个人信息管理', '23', ',23,30,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('31', '0', '12', '18', '照片墙（前台）', '0', ',31,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('32', '0', '12', '18', '抽奖', '0', ',32,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('33', '0', '12', '18', '促销活动管理', '0', ',33,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('34', '0', '12', '18', '前台登录', '0', ',34,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('35', '0', '12', '18', '微信号（含扫码）', '34', ',34,35,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('36', '0', '12', '18', 'QQ号（含扫码）', '34', ',34,36,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('37', '0', '12', '18', '微博', '34', ',34,37,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('38', '0', '12', '18', '微信服务号关联', '0', ',38,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('39', '0', '12', '18', '微信订阅号关联', '0', ',39,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('40', '0', '12', '18', '微信企业号关联', '0', ',40,', '1', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('41', '0', '12', '18', '微信小程序关联', '0', ',41,', '1', '80', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('42', '0', '12', '17', '资讯新闻', '9', ',9,42,', '2', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('43', '0', '12', '19', '资讯新闻管理', '23', ',23,43,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('44', '0', '12', '20', '协助申请', '0', ',44,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('45', '0', '12', '20', '运维托管', '0', ',45,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('46', '0', '12', '22', '企业号协助申请', '0', ',46,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('47', '0', '12', '22', '企业号运维托管', '0', ',47,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('48', '0', '12', '24', '阿里钉钉协助申请', '0', ',48,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('49', '0', '12', '24', '阿里钉钉运维托管', '0', ',49,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('50', '0', '12', '25', 'QQ电商协助申请', '0', ',50,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('51', '0', '12', '25', 'QQ电商运维托管', '0', ',51,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('52', '0', '12', '17', '诚聘人才', '0', ',52,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('53', '0', '12', '17', '成功案例', '0', ',53,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('54', '0', '12', '21', '(个人)订阅号协助申请', '0', ',54,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('55', '0', '12', '21', '(企业)订阅号协助申请', '0', ',55,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('56', '0', '12', '21', '订阅号运维托管', '0', ',56,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('57', '0', '2', '13', '首页', '0', ',57,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('58', '0', '2', '13', '前台登录', '0', ',58,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('59', '0', '2', '13', '个人中心', '0', ',59,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('60', '0', '2', '13', '关于我们', '0', ',60,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('61', '0', '2', '13', '诚聘人才', '0', ',61,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('62', '0', '2', '14', '登录模块', '0', ',62,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('63', '0', '2', '14', '服务器信息', '0', ',63,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('64', '0', '2', '14', '需求管理入口', '0', ',64,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('65', '0', '2', '14', '后台入口', '0', ',65,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('66', '0', '2', '14', '网站设置', '0', ',66,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('67', '0', '2', '13', '手机号登录', '58', ',58,67,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('68', '0', '2', '13', '我的课程（老师）', '59', ',59,68,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('69', '0', '2', '13', '我的课程（学生）', '59', ',59,69,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('70', '0', '2', '13', '修改密码', '59', ',59,70,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('71', '0', '2', '13', '退出', '59', ',59,71,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('72', '0', '2', '13', '导航（上方）', '0', ',72,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('73', '0', '2', '13', '首页', '72', ',72,73,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('74', '0', '2', '13', '分类导航', '72', ',72,74,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('75', '0', '2', '13', '形象轮播图', '57', ',57,75,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('76', '0', '2', '13', '微信二维码', '57', ',57,76,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('77', '0', '2', '13', '分类课程', '57', ',57,77,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('78', '0', '2', '13', '教师风采', '57', ',57,78,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('79', '0', '2', '13', '形象图', '60', ',60,79,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('80', '0', '2', '13', '联系方式', '60', ',60,80,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('81', '0', '2', '13', '课程分类列表', '0', ',81,', '1', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('82', '0', '2', '13', '教师分类列表', '0', ',82,', '1', '80', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('87', '0', '2', '13', '老师详情', '82', ',82,87,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('88', '0', '2', '14', '管理员登录', '62', ',62,88,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('85', '0', '2', '14', '用户管理', '0', ',85,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('86', '0', '2', '13', '课程详情', '81', ',81,86,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('89', '0', '2', '14', '员工登录', '62', ',62,89,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('94', '0', '2', '14', '分类管理', '0', ',94,', '1', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('91', '0', '2', '14', '课程管理', '65', ',65,91,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('92', '0', '2', '14', '老师管理', '65', ',65,92,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('93', '0', '2', '14', '排课管理', '65', ',65,93,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('95', '0', '2', '14', '老师课程管理（入口）', '91', ',65,91,95,', '3', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('96', '0', '2', '14', '老师课程', '92', ',65,92,96,', '3', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('97', '0', '2', '14', '课程学生', '96', ',65,92,96,97,', '4', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('98', '0', '2', '14', '基本信息设置', '66', ',66,98,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('99', '0', '2', '14', '轮播图设置', '66', ',66,99,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('100', '0', '4', '9', '首页', '0', ',100,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('101', '0', '4', '9', '导航', '0', ',101,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('102', '0', '4', '9', '关于我们', '0', ',102,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('103', '0', '4', '9', '诚聘人才', '0', ',103,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('104', '1', '4', '10', '登陆模块', '0', '104', '1', '10', 'story', '', '', '正常');
INSERT INTO `zt_module` VALUES ('105', '4', '4', '10', '服务器信息', '0', ',105,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('106', '5', '4', '10', '需求管理入口', '0', ',106,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('107', '6', '4', '10', '用户管理', '0', ',107,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('108', '7', '4', '10', '分类管理', '0', ',108,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('109', '0', '4', '9', '业务分类', '101', ',101,109,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('110', '0', '4', '9', '成功案例', '101', ',101,110,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('111', '0', '4', '9', '地图', '102', ',102,111,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('112', '0', '4', '9', '联系方式', '102', ',102,112,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('113', '0', '4', '9', '招聘列表', '103', ',103,113,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('114', '0', '4', '9', '职位详情', '103', ',103,114,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('115', '0', '4', '9', '首页轮播图', '100', ',100,115,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('116', '0', '4', '9', '企业信息', '100', ',100,116,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('117', '0', '4', '9', '主营业务', '100', ',100,117,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('118', '0', '4', '9', '成功案例', '100', ',100,118,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('119', '8', '4', '10', '后台入口', '0', ',119,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('120', '2', '4', '10', '管理员登录', '104', ',104,120,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('121', '3', '4', '10', '用户登录', '104', ',104,121,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('122', '9', '4', '10', '主营业务管理', '119', ',119,122,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('123', '10', '4', '10', '成功案例管理', '119', ',119,123,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('124', '11', '4', '10', '人才招聘管理', '119', ',119,124,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('125', '0', '4', '9', '用车常识', '101', ',101,125,', '2', '30', 'story', '', '', null);

-- ----------------------------
-- Table structure for `zt_product`
-- ----------------------------
DROP TABLE IF EXISTS `zt_product`;
CREATE TABLE `zt_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL COMMENT '产品名称',
  `code` varchar(45) NOT NULL COMMENT '代码',
  `type` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '类型',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `desc` text NOT NULL COMMENT '描述',
  `PO` varchar(30) NOT NULL COMMENT '产品经理',
  `QD` varchar(30) NOT NULL COMMENT '测试负责人',
  `RD` varchar(30) NOT NULL COMMENT '研发负责人',
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL COMMENT '创建时间',
  `createdVersion` varchar(20) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL COMMENT '顺序',
  `deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '删除标识',
  `short` varchar(10) DEFAULT NULL COMMENT '简称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  `tel` varchar(13) DEFAULT NULL COMMENT '座机',
  `qq` varchar(13) DEFAULT NULL COMMENT 'QQ',
  `qz` varchar(10) DEFAULT NULL,
  `db` varchar(10) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL COMMENT '网站名',
  `keywords` varchar(200) DEFAULT NULL COMMENT '关键字',
  `adress` varchar(300) DEFAULT NULL COMMENT '地址',
  `url` varchar(200) DEFAULT NULL COMMENT '网址',
  `path` varchar(200) DEFAULT NULL COMMENT '图标路径',
  `img` varchar(48) DEFAULT NULL COMMENT '图标',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `record` varchar(15) DEFAULT NULL COMMENT '备案号',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_product
-- ----------------------------
INSERT INTO `zt_product` VALUES ('1', '秀丽广告', 'Xiuli', 'platform', 'normal', '111', 'zhangxl', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:23:39', '8.2.4', '5', '0', '秀丽', '13463925200', '0319-7186126', '2830690782', 'Xiuli', 'xl_', '临城-秀丽广告', null, '临城转盘北200米路西', 'www.xiuliguanggao.com', '/Setting/2017-01-19/', '58805fad14388.JPG', '2017-01-19 14:41:49', '冀ICP备17001594号');
INSERT INTO `zt_product` VALUES ('2', '拓才教育', 'Tuocai', 'platform', 'normal', '', 'liangxw', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:24:09', '8.2.4', '10', '0', '拓才', null, '0311-89849355', '285981407', 'Tuocai', 'tc_', '石家庄-拓才教育', '拓才,拓才教育,一对一,个性化,课外辅导,教育培训，石家庄课外辅导', '石家庄', 'www.tuocaijiaoyu.com', '/Setting/adress/2016-12-13/', '584fb53ddc613.jpg', '2017-01-13 10:20:29', null);
INSERT INTO `zt_product` VALUES ('3', '麦田双辉', 'Mtsh', 'platform', 'normal', '轻武器额', 'yangyh', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:24:52', '8.2.4', '15', '0', '双辉', '18801043607', '18801043607', '83000892', 'Mtsh', 'mt_', '邢台-麦田双辉人力服务中心', null, '临城', 'www.xiuliguanggao.com/index.php/Mtsh', '/Setting/2017-01-19/', '58805b69780c6.png', '2017-01-19 14:26:50', '');
INSERT INTO `zt_product` VALUES ('4', '安顺汽修', 'Anshun', 'platform', 'normal', '', 'wangxl', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:25:22', '8.2.4', '20', '0', '安顺', '13785900902', null, '1058793920', 'Anshun', 'as_', '临城-安顺汽车服务中心', null, '临城县射兽汽修市场', 'www.xiuliguanggao.com/index.php/Anshun', '/Setting2016-12-18/', '585683f4127fd.jpg', '2017-01-13 10:25:47', null);
INSERT INTO `zt_product` VALUES ('5', '测试管理', 'Test', 'platform', 'normal', '自主设计的测试管理平台', 'yao', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:29:58', '8.2.4', '25', '0', '测试', null, null, null, null, 'test_', '测试', null, null, null, null, null, '2017-01-19 12:28:03', null);
INSERT INTO `zt_product` VALUES ('10', '太平洋加达软件产品', 'PJD', 'platform', 'normal', '', 'dengye', 'yao', 'jeff', 'private', '', 'yao', '2016-12-20 10:44:17', '8.2.4', '50', '0', '加达', null, null, null, null, 'jd_', null, null, null, null, null, null, '2017-01-19 12:27:46', null);
INSERT INTO `zt_product` VALUES ('12', '标准网站', 'Demo', 'platform', 'normal', '标准产品', 'yao', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-12 12:44:28', '8.2.4', '60', '0', 'Demo', '18801043607', null, '83000892', 'Demo', 'demo_', '标准', null, null, 'www.xiuliguanggao.com/index.php/Demo', null, null, '2017-01-19 12:27:02', null);
INSERT INTO `zt_product` VALUES ('6', '智慧信达', 'Xinda', 'platform', 'normal', '', 'liuyj', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-19 12:26:42', '8.2.4', '70', '0', '信达', null, null, null, null, 'xd_', null, null, null, null, null, null, '2017-01-19 13:52:28', null);

-- ----------------------------
-- Table structure for `zt_productplan`
-- ----------------------------
DROP TABLE IF EXISTS `zt_productplan`;
CREATE TABLE `zt_productplan` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `title` varchar(90) NOT NULL,
  `desc` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plan` (`product`,`end`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_productplan
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_project`
-- ----------------------------
DROP TABLE IF EXISTS `zt_project`;
CREATE TABLE `zt_project` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `isCat` enum('1','0') NOT NULL DEFAULT '0',
  `catID` mediumint(8) unsigned NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sprint',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(90) NOT NULL COMMENT '项目',
  `code` varchar(45) NOT NULL COMMENT '代码',
  `begin` date NOT NULL COMMENT '开始',
  `end` date NOT NULL COMMENT '结束',
  `days` smallint(5) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `statge` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `pri` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `openedVersion` varchar(20) NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `canceledBy` varchar(30) NOT NULL DEFAULT '',
  `canceledDate` int(10) unsigned NOT NULL DEFAULT '0',
  `PO` varchar(30) NOT NULL DEFAULT '' COMMENT '产品经理',
  `PM` varchar(30) NOT NULL DEFAULT '' COMMENT '项目经理',
  `QD` varchar(30) NOT NULL DEFAULT '' COMMENT '测试',
  `RD` varchar(30) DEFAULT '' COMMENT '研发',
  `team` varchar(30) NOT NULL,
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `testgp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project` (`parent`,`begin`,`end`,`status`,`order`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_project
-- ----------------------------
INSERT INTO `zt_project` VALUES ('2', '0', '0', 'sprint', '0', '测试平台 V1.0.0', 'Auto1701.1', '2017-01-08', '2017-01-15', '5', 'wait', '1', '1', 'qwuyequiwyeiqu', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', 'qwewq', 'private', '', '15', '0', 'Auto');
INSERT INTO `zt_project` VALUES ('8', '0', '0', 'sprint', '0', '公司名片和商务合作(V1.0.0)', 'PJD1612.1', '2016-12-05', '2016-12-21', '13', 'doing', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', 'lily_deng', 'yao', 'benjamin', 'yangyi', '公司名片和商务合作', 'private', '', '40', '0', 'PJD');
INSERT INTO `zt_project` VALUES ('9', '0', '0', 'sprint', '0', '微网站1月份上线(V1.1.0)', 'PJD1612.6', '2016-12-21', '2017-01-10', '15', 'done', '1', '1', '<p>1.微网站登录</p>\n<p>&nbsp;2.移民项目</p>\n<p>&nbsp;3.专享活动</p>\n<p>&nbsp;4.生活体验&nbsp;</p>\n<p>5.移民评估&nbsp;</p>\n<p>6.国家管理</p>\n<p>&nbsp;7.微网站后台修改个人密码</p>\n<p>&nbsp;8.公司名片的项目列表，加载后台项目管理的项目，且添加项目详情的链接 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '', '0', '8.2.4', '', '0', '', '0', 'dengye', 'Wain', 'yao', 'jeff', 'PJD', 'private', '', '45', '0', 'PJD');
INSERT INTO `zt_project` VALUES ('10', '0', '0', 'sprint', '0', '顾问名片优化', '互联网', '2016-12-27', '2017-01-20', '19', 'wait', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', '顾问名片优化', 'private', '', '50', '1', '');
INSERT INTO `zt_project` VALUES ('11', '0', '0', 'sprint', '0', '微网站一期V1.2.0', 'V1.2.0', '2017-01-12', '2017-01-25', '10', 'doing', '1', '1', '基于微信端做的微网站，本期功能主要实现春节版以及移民评估', '', '0', '8.2.4', '', '0', '', '0', 'dengye', 'Wain', 'benjamin', 'jeff', '微网站一期', 'private', '', '55', '0', 'PJD');
INSERT INTO `zt_project` VALUES ('12', '0', '0', 'sprint', '0', '微网站一期V1.3.0', '微站1.3', '2017-02-03', '2017-03-01', '19', 'wait', '1', '1', '<p>上线以下功能：</p>\n<p></p><ul><li>二级渠道管理</li>\n<li>呼叫中心对接</li>\n<li>个人中心（不含CRM相关功能）</li>\n<li>移民管家</li>\n</ul>', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', '微网站一期V1.3.0', 'open', '', '60', '0', 'PJD');
INSERT INTO `zt_project` VALUES ('13', '0', '0', 'sprint', '0', '门户网站V1.0', '门户1.0', '2017-02-03', '2017-03-01', '19', 'wait', '1', '1', '作为太平洋各业务和各功能的跳转入口', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', '门户网站V1.0', 'open', '', '65', '0', 'PJD');

-- ----------------------------
-- Table structure for `zt_projectproduct`
-- ----------------------------
DROP TABLE IF EXISTS `zt_projectproduct`;
CREATE TABLE `zt_projectproduct` (
  `project` mediumint(8) unsigned NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`project`,`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_projectproduct
-- ----------------------------
INSERT INTO `zt_projectproduct` VALUES ('8', '10', '0');
INSERT INTO `zt_projectproduct` VALUES ('9', '10', '0');
INSERT INTO `zt_projectproduct` VALUES ('2', '5', '0');

-- ----------------------------
-- Table structure for `zt_projectstory`
-- ----------------------------
DROP TABLE IF EXISTS `zt_projectstory`;
CREATE TABLE `zt_projectstory` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` mediumint(8) unsigned NOT NULL,
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(6) NOT NULL DEFAULT '1',
  UNIQUE KEY `project` (`project`,`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_projectstory
-- ----------------------------
INSERT INTO `zt_projectstory` VALUES ('1', '5', '1', '1');

-- ----------------------------
-- Table structure for `zt_release`
-- ----------------------------
DROP TABLE IF EXISTS `zt_release`;
CREATE TABLE `zt_release` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` mediumint(8) unsigned NOT NULL,
  `name` char(30) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `leftBugs` text NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_release
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_story`
-- ----------------------------
DROP TABLE IF EXISTS `zt_story`;
CREATE TABLE `zt_story` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` text NOT NULL,
  `source` varchar(20) NOT NULL,
  `sourceNote` varchar(255) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `estimate` float unsigned NOT NULL,
  `status` enum('','changed','active','draft','closed') NOT NULL DEFAULT '',
  `color` char(7) NOT NULL,
  `stage` enum('','wait','planned','projected','developing','developed','testing','tested','verified','released') NOT NULL DEFAULT 'wait',
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `reviewedBy` varchar(255) NOT NULL,
  `reviewedDate` date NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `toBug` mediumint(9) NOT NULL,
  `childStories` varchar(255) NOT NULL,
  `linkStories` varchar(255) NOT NULL,
  `duplicateStory` mediumint(8) unsigned NOT NULL,
  `version` smallint(6) NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `story` (`product`,`module`,`status`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_story
-- ----------------------------
INSERT INTO `zt_story` VALUES ('1', '5', '0', '0', '', '', '', '0', 'asdadsa', '', '', '0', '0', 'active', '', 'wait', '', 'admin', '2017-01-08 22:39:56', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');

-- ----------------------------
-- Table structure for `zt_storyspec`
-- ----------------------------
DROP TABLE IF EXISTS `zt_storyspec`;
CREATE TABLE `zt_storyspec` (
  `story` mediumint(9) NOT NULL,
  `version` smallint(6) NOT NULL,
  `title` varchar(90) NOT NULL,
  `spec` text NOT NULL,
  `verify` text NOT NULL,
  UNIQUE KEY `story` (`story`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_storyspec
-- ----------------------------
INSERT INTO `zt_storyspec` VALUES ('1', '1', 'asdadsa', 'zxcz', '');

-- ----------------------------
-- Table structure for `zt_storystage`
-- ----------------------------
DROP TABLE IF EXISTS `zt_storystage`;
CREATE TABLE `zt_storystage` (
  `story` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `stage` varchar(50) NOT NULL,
  KEY `story` (`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_storystage
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_task`
-- ----------------------------
DROP TABLE IF EXISTS `zt_task`;
CREATE TABLE `zt_task` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `estimate` float unsigned NOT NULL,
  `consumed` float unsigned NOT NULL,
  `left` float unsigned NOT NULL,
  `deadline` date NOT NULL,
  `status` enum('wait','doing','done','pause','cancel','closed') NOT NULL DEFAULT 'wait',
  `color` char(7) NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL,
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL,
  `assignedDate` datetime NOT NULL,
  `estStarted` date NOT NULL,
  `realStarted` date NOT NULL,
  `finishedBy` varchar(30) NOT NULL,
  `finishedDate` datetime NOT NULL,
  `canceledBy` varchar(30) NOT NULL,
  `canceledDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL,
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL,
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task` (`project`,`module`,`story`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_task
-- ----------------------------
INSERT INTO `zt_task` VALUES ('1', '1', '0', '0', '1', '0', '编写测试用例', 'test', '0', '0', '20', '0', '0000-00-00', 'closed', '', '', '', 'admin', '2016-08-04 19:06:37', 'closed', '2016-12-21 09:29:23', '0000-00-00', '0000-00-00', 'benjamin', '2016-12-21 09:29:19', '', '0000-00-00 00:00:00', 'benjamin', '2016-12-21 09:29:23', 'done', 'benjamin', '2016-12-21 09:29:23', '0');
INSERT INTO `zt_task` VALUES ('2', '1', '0', '0', '1', '0', '测试', 'test', '0', '0', '100', '0', '0000-00-00', 'closed', '', '', '', 'admin', '2016-08-04 19:06:48', 'closed', '2016-12-21 09:29:41', '0000-00-00', '2016-08-05', 'benjamin', '2016-12-21 09:29:38', '', '0000-00-00 00:00:00', 'benjamin', '2016-12-21 09:29:41', 'done', 'benjamin', '2016-12-21 09:29:41', '0');
INSERT INTO `zt_task` VALUES ('6', '10', '275', '6', '1', '0', '产品', 'design', '1', '0', '4', '0', '0000-00-00', 'done', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-05 17:02:58', '0000-00-00', '0000-00-00', 'annie', '2016-12-30 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'annie', '2017-01-05 17:02:58', '0');
INSERT INTO `zt_task` VALUES ('7', '10', '275', '6', '1', '0', '前端', 'devel', '3', '0', '0', '0', '0000-00-00', 'cancel', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-17 11:06:33', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 11:06:33', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:06:33', '0');
INSERT INTO `zt_task` VALUES ('8', '10', '275', '6', '1', '0', '开发', 'devel', '3', '0', '0', '0', '0000-00-00', 'cancel', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-17 11:06:33', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 11:06:33', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:06:33', '0');
INSERT INTO `zt_task` VALUES ('9', '10', '275', '6', '1', '0', '测试', 'test', '3', '0', '0', '0', '0000-00-00', 'cancel', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-17 11:06:33', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 11:06:33', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:06:33', '0');
INSERT INTO `zt_task` VALUES ('10', '10', '275', '6', '1', '0', '设计', 'design', '3', '0', '2', '0', '0000-00-00', 'done', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2016-12-27 17:38:04', '0000-00-00', '0000-00-00', 'abby', '2016-12-27 17:38:04', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'abby', '2016-12-27 17:38:04', '0');
INSERT INTO `zt_task` VALUES ('11', '9', '0', '0', '1', '0', '系统测试第一轮', 'test', '0', '16', '16', '0', '2017-01-06', 'closed', '', '', '', 'yao', '2017-01-05 11:28:42', 'closed', '2017-01-11 09:53:41', '2017-01-05', '2017-01-06', 'yao', '2017-01-07 14:14:04', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:41', 'done', 'yao', '2017-01-11 09:53:41', '0');
INSERT INTO `zt_task` VALUES ('12', '9', '0', '0', '1', '0', '系统测试第二轮', 'test', '0', '16', '16', '0', '2017-01-07', 'closed', '', '', '', 'yao', '2017-01-05 11:29:24', 'closed', '2017-01-11 09:53:35', '2017-01-06', '2017-01-07', 'yao', '2017-01-09 16:10:22', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:35', 'done', 'yao', '2017-01-11 09:53:35', '0');
INSERT INTO `zt_task` VALUES ('13', '9', '0', '0', '1', '0', '系统测试第三轮', 'test', '0', '16', '16', '0', '2017-01-09', 'closed', '', '', '', 'yao', '2017-01-05 11:30:24', 'closed', '2017-01-11 09:53:28', '2017-01-07', '2017-01-10', 'yao', '2017-01-10 14:38:38', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:28', 'done', 'yao', '2017-01-11 09:53:28', '0');
INSERT INTO `zt_task` VALUES ('14', '9', '0', '0', '1', '0', '仿真环境验证', 'test', '0', '8', '8', '0', '2017-01-10', 'closed', '', '', '', 'yao', '2017-01-05 11:30:57', 'closed', '2017-01-11 09:53:23', '2017-01-10', '2017-01-10', 'yao', '2017-01-11 09:43:21', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:23', 'done', 'yao', '2017-01-11 09:53:23', '0');
INSERT INTO `zt_task` VALUES ('15', '9', '0', '0', '1', '0', '线上环境验证', 'test', '0', '4', '4', '0', '2017-01-10', 'closed', '', '', '', 'yao', '2017-01-05 11:31:34', 'closed', '2017-01-11 09:53:14', '2017-01-10', '2017-01-11', 'yao', '2017-01-11 09:43:33', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:14', 'done', 'yao', '2017-01-11 09:53:14', '0');
INSERT INTO `zt_task` VALUES ('16', '9', '0', '0', '1', '0', '产品需求整理（1月12日完成）', 'manage', '1', '1', '0', '1', '2017-01-13', 'doing', '', '', '<ol><li>哈卡坚实的</li>\n<li>卡圣诞节啊</li>\n<li>开讲啦收到</li>\n</ol><p><img src=\"data/upload/1/201701/1113255206865l47.jpg\" alt=\"\" /></p>', 'yao', '2017-01-11 13:25:14', 'loki', '2017-01-11 13:58:31', '2017-01-03', '2017-01-11', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 13:58:31', '1');
INSERT INTO `zt_task` VALUES ('17', '9', '0', '0', '1', '0', 'UI设计计划（1月13日完成）', 'manage', '0', '1', '0', '1', '2017-01-11', 'closed', '', '', '<p>asdas</p>\n<p><br /></p>\n<p><br /></p>\n<p>ASA</p>', 'yao', '2017-01-11 13:27:05', 'closed', '2017-01-16 09:39:43', '2017-01-03', '0000-00-00', '', '0000-00-00 00:00:00', 'abby', '2017-01-16 09:39:34', 'abby', '2017-01-16 09:39:43', 'cancel', 'abby', '2017-01-16 09:39:43', '1');
INSERT INTO `zt_task` VALUES ('18', '9', '0', '0', '1', '0', '研发阶段（1月18日完成）', 'manage', '0', '1', '0', '1', '2017-01-13', 'wait', '', '', '', 'yao', '2017-01-11 13:36:04', 'jeff', '2017-01-11 13:36:04', '2017-01-10', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 13:54:32', '1');
INSERT INTO `zt_task` VALUES ('19', '9', '0', '0', '1', '0', '测试验收（1月20日完成）', 'manage', '0', '1', '0', '52', '2017-01-13', 'doing', '', '', '', 'yao', '2017-01-11 13:36:27', 'benjamin', '2017-01-12 09:32:49', '2017-01-12', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'benjamin', '2017-01-12 09:33:22', '1');
INSERT INTO `zt_task` VALUES ('20', '9', '275', '6', '1', '0', '阿萨德撒', 'devel', '0', '12', '1', '11', '2017-01-12', 'cancel', '', '', 'qwe', 'yao', '2017-01-11 13:39:36', 'yao', '2017-01-11 14:02:36', '2017-01-10', '2017-01-11', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 14:02:36', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 14:02:36', '1');
INSERT INTO `zt_task` VALUES ('21', '9', '0', '0', '1', '0', '仿真验收（1月24完成）', 'manage', '0', '1', '0', '1', '0000-00-00', 'wait', '', '', '', 'yao', '2017-01-11 13:56:30', 'dengye', '2017-01-11 13:56:30', '2017-01-24', '2017-01-24', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 13:56:45', '1');
INSERT INTO `zt_task` VALUES ('22', '9', '0', '0', '1', '0', '线上环境验证（1月25日完成）', 'manage', '0', '1', '0', '1', '2017-01-25', 'wait', '', '', '', 'yao', '2017-01-11 13:57:19', 'dengye', '2017-01-11 13:57:19', '2017-01-25', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '1');
INSERT INTO `zt_task` VALUES ('23', '9', '243', '8', '3', '0', '设计他是前台页面', 'devel', '0', '3', '0', '3', '2017-01-13', 'wait', '', '', '萨qweq', 'yao', '2017-01-11 14:03:24', 'flora', '2017-01-11 14:03:24', '2017-01-11', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '1');
INSERT INTO `zt_task` VALUES ('24', '11', '0', '0', '1', '0', '产品设计阶段（2017-1-12完成）', 'manage', '0', '1', '4', '0', '2017-01-12', 'done', '', '', '', 'yao', '2017-01-12 15:11:26', 'yao', '2017-01-12 15:24:42', '2017-01-02', '2017-01-12', 'yao', '2017-01-12 15:24:42', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-12 15:24:42', '1');
INSERT INTO `zt_task` VALUES ('25', '11', '0', '0', '1', '0', 'UI设计计划（1月13日完成）', 'manage', '0', '0', '0', '0', '2017-01-13', 'closed', '', '', '', 'yao', '2017-01-12 15:11:54', 'closed', '2017-01-16 09:40:46', '2017-01-10', '0000-00-00', '', '0000-00-00 00:00:00', 'abby', '2017-01-16 09:40:42', 'abby', '2017-01-16 09:40:46', 'cancel', 'abby', '2017-01-16 09:40:46', '1');
INSERT INTO `zt_task` VALUES ('26', '11', '245', '52', '1', '0', '问卷-新建问卷-开发', 'devel', '0', '4', '1', '4', '2017-01-20', 'doing', '', '', '', 'dengye', '2017-01-16 16:38:12', 'Gorge', '2017-01-16 16:38:12', '2017-01-16', '2017-01-16', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'Gorge', '2017-01-17 15:16:12', '0');
INSERT INTO `zt_task` VALUES ('27', '11', '0', '0', '1', '0', '产品设计阶段', 'manage', '0', '40', '0', '40', '2017-01-10', 'wait', '', '', '', 'yao', '2017-01-17 10:44:27', 'dengye', '2017-01-17 10:44:27', '2016-12-28', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('28', '11', '0', '0', '1', '0', '产品冒烟测试（顾鹏）【1-19完成】', 'manage', '0', '8', '0', '8', '2017-01-19', 'wait', '', '', '', 'yao', '2017-01-17 10:45:44', 'loki', '2017-01-17 10:45:44', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:09:48', '0');
INSERT INTO `zt_task` VALUES ('29', '11', '0', '0', '1', '0', '测试冒烟测试（魏斌）【1-19完成】', 'manage', '0', '8', '0', '8', '2017-01-19', 'doing', '', '', '', 'yao', '2017-01-17 10:49:20', 'benjamin', '2017-01-17 10:49:20', '2017-01-17', '2017-01-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'benjamin', '2017-01-17 13:48:41', '0');
INSERT INTO `zt_task` VALUES ('30', '11', '0', '0', '1', '0', '第一轮测试（魏斌）【1-23完成】', 'test', '0', '16', '0', '16', '2017-01-23', 'wait', '', '', '', 'yao', '2017-01-17 10:52:52', 'benjamin', '2017-01-17 10:52:52', '2017-01-20', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:11:51', '0');
INSERT INTO `zt_task` VALUES ('31', '11', '0', '0', '1', '0', '第一轮测试（yao）【1-23完成】', 'test', '0', '16', '0', '16', '2017-01-23', 'wait', '', '', '', 'yao', '2017-01-17 10:53:25', 'yao', '2017-01-17 10:53:36', '2017-01-20', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:12:00', '0');
INSERT INTO `zt_task` VALUES ('32', '11', '0', '0', '1', '0', '第二轮测试（魏斌）【1-24完成】', 'test', '0', '8', '0', '8', '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:54:43', 'benjamin', '2017-01-17 10:54:43', '2017-01-23', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:13:14', '0');
INSERT INTO `zt_task` VALUES ('33', '11', '0', '0', '1', '0', '第二轮测试（yao）【1-24完成】', 'test', '0', '8', '0', '8', '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:56:03', 'yao', '2017-01-17 10:56:03', '2017-01-23', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:13:47', '0');
INSERT INTO `zt_task` VALUES ('34', '11', '0', '0', '1', '0', '仿真环境验证（腰立辉）【1-24完成】', 'test', '0', '4', '0', '4', '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:56:56', 'yao', '2017-01-17 10:56:56', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:15:31', '0');
INSERT INTO `zt_task` VALUES ('35', '11', '0', '0', '1', '0', '仿真环境验证（魏斌）【1-24完成】', 'test', '0', '4', '0', '4', '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:58:38', 'benjamin', '2017-01-17 10:58:38', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:00', '0');
INSERT INTO `zt_task` VALUES ('36', '11', '0', '0', '1', '0', '仿真环境验证（邓烨）【1-24完成】', 'test', '0', '4', '0', '4', '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:59:25', 'dengye', '2017-01-17 10:59:25', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:11', '0');
INSERT INTO `zt_task` VALUES ('37', '11', '0', '0', '1', '0', '仿真环境验证（顾鹏）【1-24完成】', 'test', '0', '4', '0', '4', '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 11:00:00', 'loki', '2017-01-17 11:00:00', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:23', '0');
INSERT INTO `zt_task` VALUES ('38', '11', '0', '0', '1', '0', '线上环境验证（顾鹏）【1-25完成】', 'test', '0', '2', '0', '2', '2017-01-25', 'wait', '', '', '', 'yao', '2017-01-17 11:01:34', 'loki', '2017-01-17 11:01:34', '2017-01-25', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:43', '0');
INSERT INTO `zt_task` VALUES ('39', '11', '0', '0', '1', '0', '线上环境验证（邓烨）【1-24完成】', 'test', '0', '2', '0', '2', '2017-01-25', 'wait', '', '', '', 'yao', '2017-01-17 11:02:13', 'dengye', '2017-01-17 11:02:13', '2017-01-25', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:17:09', '0');
INSERT INTO `zt_task` VALUES ('40', '11', '0', '0', '1', '0', '产品冒烟测试（邓烨）【1-19完成】', 'test', '0', '8', '0', '8', '2017-01-19', 'wait', '', '', '', 'yao', '2017-01-17 11:03:59', 'dengye', '2017-01-17 11:03:59', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:10:25', '0');
INSERT INTO `zt_task` VALUES ('41', '11', '0', '0', '1', '0', '测试冒烟测试（yao）【1-19完成】', 'test', '0', '8', '8', '4', '2017-01-19', 'doing', '', '', '', 'yao', '2017-01-17 11:04:31', 'yao', '2017-01-17 11:04:31', '2017-01-17', '2017-01-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-18 18:03:05', '0');
INSERT INTO `zt_task` VALUES ('42', '11', '259', '59', '1', '0', '微信服务号-移民评估', 'devel', '0', '8', '0', '8', '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:41:51', 'yangyi', '2017-01-17 14:41:51', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('43', '11', '262', '61', '1', '0', '微信服务号-专享活动', 'devel', '0', '4', '0', '4', '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:42:56', 'loki', '2017-01-17 15:37:25', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:25', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:25', '1');
INSERT INTO `zt_task` VALUES ('44', '11', '266', '62', '1', '0', '微信服务号-移民项目-列表', 'devel', '0', '4', '0', '4', '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:43:44', 'loki', '2017-01-17 15:37:16', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:16', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:16', '1');
INSERT INTO `zt_task` VALUES ('45', '11', '266', '63', '1', '0', '微信服务号-移民项目-详情', 'devel', '0', '4', '0', '4', '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:44:16', 'loki', '2017-01-17 15:37:29', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:29', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:29', '1');
INSERT INTO `zt_task` VALUES ('46', '11', '275', '60', '1', '0', '微信服务号-公司名片', 'devel', '0', '4', '0', '4', '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:44:55', 'yangyi', '2017-01-17 15:41:23', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'loki', '2017-01-17 15:41:23', '0');
INSERT INTO `zt_task` VALUES ('47', '11', '269', '64', '1', '0', '微信服务号-生活体验', 'devel', '0', '4', '0', '4', '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:45:18', 'loki', '2017-01-17 15:37:32', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:32', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:32', '1');
INSERT INTO `zt_task` VALUES ('48', '11', '355', '6', '1', '0', '公司名片新增选定管家功能', 'devel', '0', '4', '0', '4', '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:45:49', 'yangyi', '2017-01-17 14:45:49', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'loki', '2017-01-17 15:42:36', '0');
INSERT INTO `zt_task` VALUES ('49', '11', '355', '7', '1', '0', '名片项目列表增加项目类型标识', 'devel', '0', '4', '0', '4', '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:46:14', 'yangyi', '2017-01-17 14:46:14', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('50', '11', '356', '65', '1', '0', '微信服务号-商务合作', 'devel', '0', '4', '0', '4', '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:46:50', 'loki', '2017-01-17 15:37:36', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:36', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:36', '1');
INSERT INTO `zt_task` VALUES ('51', '11', '356', '66', '1', '0', '微信服务号-商务合作-反馈信息', 'devel', '0', '4', '0', '4', '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:47:16', 'loki', '2017-01-17 15:37:39', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:39', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:39', '1');
INSERT INTO `zt_task` VALUES ('52', '11', '357', '58', '1', '0', '微信服务号-用户登录', 'devel', '0', '4', '0', '4', '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:47:44', 'yangyi', '2017-01-17 14:47:44', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('53', '11', '358', '68', '1', '0', '更新业务统计埋点', 'devel', '0', '4', '0', '4', '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:48:20', 'loki', '2017-01-17 15:37:46', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:46', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:46', '1');

-- ----------------------------
-- Table structure for `zt_taskestimate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_taskestimate`;
CREATE TABLE `zt_taskestimate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `left` float unsigned NOT NULL DEFAULT '0',
  `consumed` float unsigned NOT NULL,
  `account` char(30) NOT NULL DEFAULT '',
  `work` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task` (`task`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_taskestimate
-- ----------------------------
INSERT INTO `zt_taskestimate` VALUES ('34', '41', '2017-01-18', '4', '4', 'yao', '仅验收公司名片春节版的主流程');
INSERT INTO `zt_taskestimate` VALUES ('5', '12', '2017-01-05', '16', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('6', '6', '2017-01-05', '0', '4', 'annie', '');
INSERT INTO `zt_taskestimate` VALUES ('7', '11', '2017-01-06', '16', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('8', '11', '2017-01-06', '4', '12', 'yao', '我和魏斌搭建测试环境并测试');
INSERT INTO `zt_taskestimate` VALUES ('9', '11', '2017-01-07', '0', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('10', '12', '2017-01-07', '16', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('11', '12', '2017-01-07', '8', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('12', '12', '2017-01-09', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('13', '13', '2017-01-10', '0', '16', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('14', '14', '2017-01-10', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('15', '14', '2017-01-10', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('16', '15', '2017-01-11', '0', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('17', '16', '2017-01-11', '0', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('18', '17', '2017-01-11', '0', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('19', '16', '2017-01-11', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('20', '17', '2017-01-11', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('21', '18', '2017-01-11', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('22', '19', '2017-01-11', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('23', '16', '2017-01-11', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('24', '20', '2017-01-11', '11', '1', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('25', '24', '2017-01-12', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('26', '24', '2017-01-12', '1', '1', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('27', '24', '2017-01-13', '0', '3', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('28', '28', '2017-01-17', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('29', '29', '2017-01-17', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('30', '41', '2017-01-17', '8', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('31', '29', '2017-01-17', '8', '0', 'benjamin', '');
INSERT INTO `zt_taskestimate` VALUES ('32', '26', '2017-01-17', '4', '1', 'Gorge', '');
INSERT INTO `zt_taskestimate` VALUES ('33', '48', '2017-01-17', '4', '0', 'loki', '');

-- ----------------------------
-- Table structure for `zt_tc_course`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_course`;
CREATE TABLE `zt_tc_course` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `course` varchar(30) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `desc` text,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_course
-- ----------------------------
INSERT INTO `zt_tc_course` VALUES ('6', '小学英语', '小学课程', '', '/Course/2016-11-13/', '5828142cd61aa.jpg', '发布', '腰立辉', '腰立辉', null, '2016-11-16 23:54:55');
INSERT INTO `zt_tc_course` VALUES ('7', '百家姓', '学前少儿', '12312', '/Course/2016-11-13/', '58280bc662aaa.jpg', '发布', '腰立辉', '腰立辉', '1478422638', '2016-11-16 23:55:10');
INSERT INTO `zt_tc_course` VALUES ('9', '小学数学', '小学课程', 'qweqw11', '/Course/2016-12-18/', '58568cffdeb67.jpg', '发布', '腰立辉', '梁小伟', '1478530883', '2016-12-18 21:19:59');
INSERT INTO `zt_tc_course` VALUES ('20', '围棋', '兴趣拓展', '', '/Course/2016-11-25/', '58380443108c8.jpg', '发布', '梁小伟', '梁小伟', '1480065850', '2016-11-25 17:28:35');
INSERT INTO `zt_tc_course` VALUES ('19', '书法国画', '兴趣拓展', '', '/Course/2016-11-25/', '58380463072e9.jpg', '发布', '梁小伟', '梁小伟', '1480065831', '2016-11-25 17:29:07');
INSERT INTO `zt_tc_course` VALUES ('12', '三字经', '学前少儿', '', '/Course/2016-12-18/', '58568c2105fa3.png', '发布', '腰立辉', '腰立辉', '1479015502', '2016-12-18 21:16:17');
INSERT INTO `zt_tc_course` VALUES ('13', '小学奥数', '小学课程', '', '/Course/2016-11-25/', '5838006e54edb.jpg', '发布', '梁小伟', '梁小伟', '1480065112', '2016-11-25 17:12:14');
INSERT INTO `zt_tc_course` VALUES ('14', '小学语文', '小学课程', '', '/Course/2016-11-25/', '5838016d464bb.jpg', '发布', '梁小伟', '梁小伟', '1480065358', '2016-11-25 17:16:29');
INSERT INTO `zt_tc_course` VALUES ('15', '初中数学', '中学课程', '', '/Course/2016-12-18/', '58568ce43dae9.jpg', '发布', '梁小伟', '梁小伟', '1480065518', '2016-12-18 21:19:32');
INSERT INTO `zt_tc_course` VALUES ('16', '初中物理', '中学课程', '', '/Course/2016-12-18/', '58568cd48d0d8.jpg', '发布', '梁小伟', '梁小伟', '1480065532', '2016-12-18 21:19:16');
INSERT INTO `zt_tc_course` VALUES ('17', '初中英语', '中学课程', '', '/Course/2016-11-25/', '5838072f51308.jpg', '发布', '梁小伟', '梁小伟', '1480065562', '2016-11-25 17:41:03');
INSERT INTO `zt_tc_course` VALUES ('18', '初中化学', '中学课程', '', '/Course/2016-11-25/', '58380716778f3.jpg', '发布', '梁小伟', '梁小伟', '1480065584', '2016-11-25 17:40:38');

-- ----------------------------
-- Table structure for `zt_tc_customer`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_customer`;
CREATE TABLE `zt_tc_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `custype` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `coursetype` varchar(5) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_customer
-- ----------------------------
INSERT INTO `zt_tc_customer` VALUES ('1', '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', '1', '中学课程', '孙云云', '/Customer/2016-12-18/', '585693e5ec634.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '1478415695', '2016-12-18 21:49:25');
INSERT INTO `zt_tc_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '', '', '腰立辉', '腰立辉', '1479042931', '2016-11-13 21:17:14');
INSERT INTO `zt_tc_customer` VALUES ('13', '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '中学课程', '刘一玮（男、44中）', null, null, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '1479302465', '2016-12-13 17:28:34');
INSERT INTO `zt_tc_customer` VALUES ('14', '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '小学课程', '康国胜', '/Customer/2016-12-18/', '58569232eda33.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '1481619189', '2016-12-18 21:42:10');

-- ----------------------------
-- Table structure for `zt_tc_date`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_date`;
CREATE TABLE `zt_tc_date` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `riqi` date DEFAULT NULL,
  `xingqi` varchar(5) DEFAULT NULL,
  `sn` smallint(2) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_date
-- ----------------------------
INSERT INTO `zt_tc_date` VALUES ('8', '2016-11-14', '星期一', '2', '10:00-12:00', '2016-11-14 22:11:56');
INSERT INTO `zt_tc_date` VALUES ('7', '2016-11-14', '星期一', '1', '8:00-10:00', '2016-11-14 22:11:56');
INSERT INTO `zt_tc_date` VALUES ('9', '2016-11-14', '星期一', '3', '13:00-15:00', '2016-11-14 22:11:56');
INSERT INTO `zt_tc_date` VALUES ('10', '2016-11-14', '星期一', '4', '15:00-17:00', '2016-11-14 22:11:56');
INSERT INTO `zt_tc_date` VALUES ('11', '2016-11-15', '星期二', '1', '8:00-10:00', '2016-11-14 22:39:51');
INSERT INTO `zt_tc_date` VALUES ('12', '2016-11-15', '星期二', '2', '10:00-12:00', '2016-11-14 22:39:51');
INSERT INTO `zt_tc_date` VALUES ('13', '2016-11-15', '星期二', '3', '13:00-15:00', '2016-11-14 22:39:51');
INSERT INTO `zt_tc_date` VALUES ('14', '2016-11-15', '星期二', '4', '15:00-17:00', '2016-11-14 22:39:51');
INSERT INTO `zt_tc_date` VALUES ('15', '2016-11-16', '星期三', '1', '8:00-10:00', '2016-11-14 22:40:49');
INSERT INTO `zt_tc_date` VALUES ('16', '2016-11-16', '星期三', '2', '10:00-12:00', '2016-11-14 22:40:49');
INSERT INTO `zt_tc_date` VALUES ('17', '2016-11-16', '星期三', '3', '13:00-15:00', '2016-11-14 22:40:49');
INSERT INTO `zt_tc_date` VALUES ('18', '2016-11-16', '星期三', '4', '15:00-17:00', '2016-11-14 22:40:49');
INSERT INTO `zt_tc_date` VALUES ('19', '2016-11-17', '星期四', '1', '8:00-10:00', '2016-11-14 22:52:08');
INSERT INTO `zt_tc_date` VALUES ('20', '2016-11-17', '星期四', '2', '10:00-12:00', '2016-11-14 22:52:08');
INSERT INTO `zt_tc_date` VALUES ('21', '2016-11-17', '星期四', '3', '13:00-15:00', '2016-11-14 22:52:08');
INSERT INTO `zt_tc_date` VALUES ('22', '2016-11-17', '星期四', '4', '15:00-17:00', '2016-11-14 22:52:08');
INSERT INTO `zt_tc_date` VALUES ('27', '2016-11-07', '星期一', '1', '8:00-10:00', '2016-11-15 21:38:25');
INSERT INTO `zt_tc_date` VALUES ('28', '2016-11-07', '星期一', '2', '10:00-12:00', '2016-11-15 21:38:25');
INSERT INTO `zt_tc_date` VALUES ('29', '2016-11-07', '星期一', '3', '13:00-15:00', '2016-11-15 21:38:25');
INSERT INTO `zt_tc_date` VALUES ('30', '2016-11-07', '星期一', '4', '15:00-17:00', '2016-11-15 21:38:25');
INSERT INTO `zt_tc_date` VALUES ('35', '2016-11-01', '星期二', '1', '8:00-10:00', '2016-11-15 22:20:07');
INSERT INTO `zt_tc_date` VALUES ('36', '2016-11-01', '星期二', '2', '10:00-12:00', '2016-11-15 22:20:07');
INSERT INTO `zt_tc_date` VALUES ('37', '2016-11-01', '星期二', '3', '13:00-15:00', '2016-11-15 22:20:07');
INSERT INTO `zt_tc_date` VALUES ('38', '2016-11-01', '星期二', '4', '15:00-17:00', '2016-11-15 22:20:07');
INSERT INTO `zt_tc_date` VALUES ('43', '2016-11-19', '星期六', '1', '08:00-10:00', '2016-11-19 12:41:04');
INSERT INTO `zt_tc_date` VALUES ('44', '2016-11-19', '星期六', '2', '10:10-12:10', '2016-11-19 12:41:04');
INSERT INTO `zt_tc_date` VALUES ('45', '2016-11-19', '星期六', '3', '13:30-15:30', '2016-11-19 12:41:04');
INSERT INTO `zt_tc_date` VALUES ('46', '2016-11-19', '星期六', '4', '15:40-17:40', '2016-11-19 12:41:04');
INSERT INTO `zt_tc_date` VALUES ('47', '2016-11-19', '星期六', '5', '18:00-20:00', '2016-11-19 12:41:04');
INSERT INTO `zt_tc_date` VALUES ('48', '2016-11-27', '星期日', '1', '08:00-10:00', '2016-11-27 19:00:26');
INSERT INTO `zt_tc_date` VALUES ('49', '2016-11-27', '星期日', '2', '10:10-12:10', '2016-11-27 19:00:26');
INSERT INTO `zt_tc_date` VALUES ('50', '2016-11-27', '星期日', '3', '13:30-15:30', '2016-11-27 19:00:26');
INSERT INTO `zt_tc_date` VALUES ('51', '2016-11-27', '星期日', '4', '15:40-17:40', '2016-11-27 19:00:27');
INSERT INTO `zt_tc_date` VALUES ('52', '2016-11-27', '星期日', '5', '18:00-20:00', '2016-11-27 19:00:27');
INSERT INTO `zt_tc_date` VALUES ('53', '2016-12-02', '星期五', '1', '08:00-10:00', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('54', '2016-12-02', '星期五', '2', '10:10-12:10', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('55', '2016-12-02', '星期五', '3', '13:30-15:30', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('56', '2016-12-02', '星期五', '4', '15:40-17:40', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('57', '2016-12-02', '星期五', '5', '18:00-20:00', '2016-12-02 15:07:17');

-- ----------------------------
-- Table structure for `zt_tc_plan`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_plan`;
CREATE TABLE `zt_tc_plan` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dateid` smallint(6) NOT NULL,
  `skdate` date DEFAULT NULL,
  `skweek` varchar(6) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `techclassid` smallint(6) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_plan
-- ----------------------------
INSERT INTO `zt_tc_plan` VALUES ('5', '11', '2016-11-15', '星期二', '8:00-10:00', '4', '6', 'retert', '待确认', '腰立辉', '腰立辉', '1479214738', '2016-11-15 20:58:58');
INSERT INTO `zt_tc_plan` VALUES ('4', '8', '2016-11-14', '星期一', '10:00-12:00', '4', '6', 'asdasdsa', '待确认', '腰立辉', '腰立辉', '1479138089', '2016-11-14 23:41:29');
INSERT INTO `zt_tc_plan` VALUES ('6', '13', '2016-11-15', '星期二', '13:00-15:00', '4', '6', 'gssgd', '待确认', '腰立辉', '腰立辉', '1479214748', '2016-11-15 20:59:08');
INSERT INTO `zt_tc_plan` VALUES ('7', '21', '2016-11-17', '星期四', '13:00-15:00', '4', '6', 'qqq', '待确认', '腰立辉', '腰立辉', '1479214778', '2016-11-15 20:59:38');
INSERT INTO `zt_tc_plan` VALUES ('8', '15', '2016-11-16', '星期三', '8:00-10:00', '4', '6', 'qw', '待确认', '腰立辉', '腰立辉', '1479304493', '2016-11-16 21:54:53');

-- ----------------------------
-- Table structure for `zt_tc_studentcla`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_studentcla`;
CREATE TABLE `zt_tc_studentcla` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `studentid` smallint(6) DEFAULT NULL,
  `student` varchar(11) DEFAULT NULL,
  `sphone` varchar(11) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `techclassid` smallint(6) DEFAULT NULL,
  `teacher` varchar(10) DEFAULT NULL,
  `tphone` varchar(11) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_studentcla
-- ----------------------------
INSERT INTO `zt_tc_studentcla` VALUES ('4', '5', '王五', '13426179579', '小学课程', '4', '腰立辉', '18801043607', '6', '小学英语', null, '腰立辉', '腰立辉', '1479043222', '2016-11-13 21:20:22');

-- ----------------------------
-- Table structure for `zt_tc_techclass`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_techclass`;
CREATE TABLE `zt_tc_techclass` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `teacherid` smallint(6) DEFAULT NULL,
  `teacher` varchar(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `coursetype` varchar(5) NOT NULL,
  `course` varchar(50) NOT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_techclass
-- ----------------------------
INSERT INTO `zt_tc_techclass` VALUES ('4', '1', '腰立辉', '18801043607', '6', '小学课程', '小学英语', null, '腰立辉', '腰立辉', '1479027130', '2016-11-13 18:39:09');
INSERT INTO `zt_tc_techclass` VALUES ('5', '1', '腰立辉', '18801043607', '6', '小学课程', '小学英语', null, '腰立辉', '腰立辉', '1479031833', '2016-11-13 18:23:41');
INSERT INTO `zt_tc_techclass` VALUES ('6', '4', '李四', '13222222222', '10', '兴趣拓展', '跆拳道', null, '腰立辉', '腰立辉', '1479032021', '2016-11-13 18:23:56');
INSERT INTO `zt_tc_techclass` VALUES ('7', '3', '张三', '13333333333', '11', '中学课程', '九年级物理', null, '腰立辉', '腰立辉', '1479034059', '2016-11-13 18:47:39');
INSERT INTO `zt_tc_techclass` VALUES ('8', '1', '腰立辉', '18801043607', '9', '小学课程', '小学自然', null, '腰立辉', '腰立辉', '1479301282', '2016-11-16 21:01:22');

-- ----------------------------
-- Table structure for `zt_team`
-- ----------------------------
DROP TABLE IF EXISTS `zt_team`;
CREATE TABLE `zt_team` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `role` char(30) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `days` smallint(5) unsigned NOT NULL,
  `hours` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`project`,`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_team
-- ----------------------------
INSERT INTO `zt_team` VALUES ('1', 'yaolh', '研发', '2017-01-08', '5', '7.0');
INSERT INTO `zt_team` VALUES ('1', 'jiaxn', '测试', '2017-01-08', '5', '7.0');
INSERT INTO `zt_team` VALUES ('8', 'yaolh', '研发', '2017-01-12', '13', '7.0');

-- ----------------------------
-- Table structure for `zt_testresult`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testresult`;
CREATE TABLE `zt_testresult` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `run` mediumint(8) unsigned NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `caseResult` char(30) NOT NULL,
  `stepResults` text NOT NULL,
  `lastRunner` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testresult` (`case`,`version`,`run`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_testresult
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_testrun`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testrun`;
CREATE TABLE `zt_testrun` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assignedTo` char(30) NOT NULL DEFAULT '',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  `status` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task` (`task`,`case`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_testrun
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_testtask`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testtask`;
CREATE TABLE `zt_testtask` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(90) NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `report` text NOT NULL,
  `status` enum('blocked','doing','wait','done') NOT NULL DEFAULT 'wait',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_testtask
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_todo`
-- ----------------------------
DROP TABLE IF EXISTS `zt_todo`;
CREATE TABLE `zt_todo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `date` date NOT NULL,
  `begin` smallint(4) unsigned zerofill NOT NULL,
  `end` smallint(4) unsigned zerofill NOT NULL,
  `type` char(10) NOT NULL,
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `name` char(150) NOT NULL,
  `desc` text NOT NULL,
  `status` enum('wait','doing','done') NOT NULL DEFAULT 'wait',
  `private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo` (`account`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_todo
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_tp_ad`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_ad`;
CREATE TABLE `zt_tp_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_ad
-- ----------------------------
INSERT INTO `zt_tp_ad` VALUES ('1', '第2张', '/Ad/2016-12-18/', '58563054eedb5.jpg', '阿斯达', '', '发布', '2', '梁小伟', '2017-01-19 10:06:16');
INSERT INTO `zt_tp_ad` VALUES ('2', '第1张', '/Ad/2016-12-18/', '58563047c0c62.jpg', '水电费', '', '发布', '2', '梁小伟', '2017-01-19 10:06:18');
INSERT INTO `zt_tp_ad` VALUES ('3', '第3张', '/Ad/2016-12-18/', '585630359d9bd.jpg', '', '', '发布', '2', '腰立辉', '2017-01-19 10:06:19');
INSERT INTO `zt_tp_ad` VALUES ('4', '第4张', '/Ad/2016-12-18/', '58562fa71e5fd.jpg', '', '', '发布', '2', '腰立辉', '2017-01-19 10:06:20');
INSERT INTO `zt_tp_ad` VALUES ('5', '第5张', '/Ad/2016-12-18/', '58562e17daa5a.jpg', '', '', '发布', '2', '腰立辉', '2017-01-19 10:06:21');
INSERT INTO `zt_tp_ad` VALUES ('10', '12', '/Ad/2016-12-25/', '585fd561a6f52.png', '', 'qweq', '正常', '1', '张秀丽', '2017-01-19 10:06:58');
INSERT INTO `zt_tp_ad` VALUES ('11', null, '/Ad/2016-12-18/', '58563ae541ed1.JPG', null, null, '发布', '1', '腰立辉', '2017-01-19 10:06:59');
INSERT INTO `zt_tp_ad` VALUES ('12', null, '/Ad/2016-12-18/', '58563af855b95.JPG', null, null, '发布', '1', '腰立辉', '2017-01-19 10:07:00');
INSERT INTO `zt_tp_ad` VALUES ('13', null, '/Ad/2016-12-18/', '58563b0746cbb.JPG', null, null, '发布', '1', '腰立辉', '2017-01-19 10:07:01');
INSERT INTO `zt_tp_ad` VALUES ('14', null, '/Ad/2016-12-25/', '585fd49eddab0.png', null, null, '发布', '1', '腰立辉', '2017-01-19 10:07:02');
INSERT INTO `zt_tp_ad` VALUES ('15', null, '/Ad/2016-12-18/', '58565f960204b.jpg', null, null, '发布', '4', '腰立辉', '2017-01-19 10:07:32');
INSERT INTO `zt_tp_ad` VALUES ('16', null, '/Ad/2016-12-18/', '58565ff1220d8.jpg', null, null, '发布', '4', '腰立辉', '2017-01-19 10:07:33');
INSERT INTO `zt_tp_ad` VALUES ('17', null, null, null, null, null, '发布', '4', '腰立辉', '2017-01-19 10:07:34');
INSERT INTO `zt_tp_ad` VALUES ('18', null, null, null, null, null, '发布', '4', '腰立辉', '2017-01-19 10:07:35');
INSERT INTO `zt_tp_ad` VALUES ('19', null, null, null, null, null, '发布', '4', '腰立辉', '2017-01-19 10:07:36');
INSERT INTO `zt_tp_ad` VALUES ('20', null, '/Ad/2016-12-22/', '585bcd1de3cdc.JPG', null, null, '发布', '3', '腰立辉', '2017-01-19 10:10:23');
INSERT INTO `zt_tp_ad` VALUES ('21', null, '/Ad/2016-12-22/', '585bcd36ae47b.JPG', null, null, '发布', '3', '腰立辉', '2017-01-19 10:10:24');
INSERT INTO `zt_tp_ad` VALUES ('22', null, '/Ad/2016-12-22/', '585bcd12a54c6.JPG', null, null, '发布', '3', '腰立辉', '2017-01-19 10:10:25');
INSERT INTO `zt_tp_ad` VALUES ('23', 'tqyweuy', '/Ad/2016-12-22/', '585bcd02e700a.JPG', '', '', '正常', '3', '腰立辉', '2017-01-19 15:50:03');
INSERT INTO `zt_tp_ad` VALUES ('24', null, '/Ad/2016-12-22/', '585bcceea6df9.JPG', null, null, '发布', '3', '腰立辉', '2017-01-19 10:10:17');
INSERT INTO `zt_tp_ad` VALUES ('25', null, null, null, null, null, '发布', '6', '腰立辉', '2017-01-19 10:10:51');
INSERT INTO `zt_tp_ad` VALUES ('26', null, null, null, null, null, '发布', '6', '腰立辉', '2017-01-19 10:10:52');
INSERT INTO `zt_tp_ad` VALUES ('27', null, null, null, null, null, '发布', '6', '腰立辉', '2017-01-19 10:10:53');
INSERT INTO `zt_tp_ad` VALUES ('28', null, null, null, null, null, '发布', '6', '腰立辉', '2017-01-19 10:10:54');
INSERT INTO `zt_tp_ad` VALUES ('29', null, null, null, null, null, '发布', '6', '腰立辉', '2017-01-19 10:10:56');
INSERT INTO `zt_tp_ad` VALUES ('30', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:07');
INSERT INTO `zt_tp_ad` VALUES ('31', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:09');
INSERT INTO `zt_tp_ad` VALUES ('32', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:11');
INSERT INTO `zt_tp_ad` VALUES ('33', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:13');
INSERT INTO `zt_tp_ad` VALUES ('34', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 11:35:36');

-- ----------------------------
-- Table structure for `zt_tp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_admin`;
CREATE TABLE `zt_tp_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `username` varchar(11) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '在职',
  `prodid` smallint(6) DEFAULT '2',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_admin
-- ----------------------------
INSERT INTO `zt_tp_admin` VALUES ('1', '18801043607', '18801043607', '腰立辉', 'c33367701511b4f6020ec61ded352059', '', '', '在职', '5', '腰立辉', '2017-01-19 16:34:46');
INSERT INTO `zt_tp_admin` VALUES ('2', '13426179579', '13426179579', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '2', '腰立辉', '2017-01-19 16:35:23');
INSERT INTO `zt_tp_admin` VALUES ('3', '15030971266', '15030971266', '贾晓月', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '4', '腰立辉', '2017-01-19 16:35:32');
INSERT INTO `zt_tp_admin` VALUES ('4', '13785900902', '13785900902', '王晓亮', 'e10adc3949ba59abbe56e057f20f883e', '', '', '在职', '4', '腰立辉', '2017-01-19 16:35:33');
INSERT INTO `zt_tp_admin` VALUES ('7', '13463925200', '13463925200', '张秀丽', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '1', '腰立辉', '2017-01-19 16:35:41');
INSERT INTO `zt_tp_admin` VALUES ('8', '18610815780', '18610815780', '刘燕军', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '6', '腰立辉', '2017-01-19 16:36:35');
INSERT INTO `zt_tp_admin` VALUES ('9', '18233098318', '18233098318', '马双峰', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '3', '腰立辉', '2017-01-19 16:35:53');
INSERT INTO `zt_tp_admin` VALUES ('10', null, 'yangyh', '杨艳辉', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '3', '腰立辉', '2017-01-19 16:35:51');
INSERT INTO `zt_tp_admin` VALUES ('11', '13131981120', '13131981120', '腰建强', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '1', '腰立辉', '2017-01-19 16:35:43');

-- ----------------------------
-- Table structure for `zt_tp_article`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_article`;
CREATE TABLE `zt_tp_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `name` varchar(100) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章添加时间',
  `clicknum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章点击数',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类编号',
  PRIMARY KEY (`id`),
  KEY `article_cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_article
-- ----------------------------
INSERT INTO `zt_tp_article` VALUES ('1', '请问请问', '<p>\r\n	去委屈委屈我</p>\r\n', '1471489591', '0', '1');

-- ----------------------------
-- Table structure for `zt_tp_as_customer`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_as_customer`;
CREATE TABLE `zt_tp_as_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `custype` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `coursetype` varchar(5) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_as_customer
-- ----------------------------
INSERT INTO `zt_tp_as_customer` VALUES ('1', '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', '1', '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '2016-12-13 17:21:44');
INSERT INTO `zt_tp_as_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '', '', '腰立辉', '腰立辉', '2016-11-13 21:17:14');
INSERT INTO `zt_tp_as_customer` VALUES ('13', '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '中学课程', '刘一玮（男、44中）', null, null, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '2016-12-13 17:28:34');
INSERT INTO `zt_tp_as_customer` VALUES ('14', '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '2016-12-13 17:37:07');

-- ----------------------------
-- Table structure for `zt_tp_as_usecar`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_as_usecar`;
CREATE TABLE `zt_tp_as_usecar` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `type` smallint(6) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_as_usecar
-- ----------------------------
INSERT INTO `zt_tp_as_usecar` VALUES ('3', '避免预热时间过长', '<p>\r\n	启动车后，大多数人都习惯让发动机怠速运转，等水温达到正常温度后再把车开走，其实这种预热的方法是非常错误的，因为电喷发动机不像化油器发动机，在达到工作温度之前，供油系统不能正常工作。电喷发动机如果采用长时间预热，不仅没有必要而且还是有害的。缩短预热时间可以延长三元催化器的使用寿命，还会节省燃油。动机起动后，只要能维持稳定的转速就可以起步行车，在水温未升高前，适当控制一下车速，等水温正常后就可以正常驾驶了。</p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dd28045c6.jpg', '腰立辉', '2016-10-31 14:01:15');
INSERT INTO `zt_tp_as_usecar` VALUES ('4', '开窗和开空调哪个更省油呢?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">夏天在高速（速度一般都要&ge;80km/h）行驶时，到底是开着窗户省油还是开着空调省油呢？支持前者的人认为：不开空调即压缩机不用工作，也就不会给</span><a class=\"ShuKeyWordLink\" href=\"http://car.autohome.com.cn/shuyu/detail_8_9_555.html\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(59, 89, 152); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">发动机</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">造成额外的负担，因此会更省油。支持后者观点的人则认为：高速时开着车窗会扰乱空气流动，形成更大的风阻，因此产生的阻力会消耗比空调还多的燃油。</span></p>\r\n<p>\r\n	<strong>结果：</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">在开空调的测试中，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的百公里油耗为6.15升，而</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/694/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">锋范</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的则达到了7.3升。这两个数据分别比开车窗行驶时上升了0.87升和0.17升，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">油耗上升的幅度非常明显。而我们最终的定论也可以得出了。在车速为100km/h以下时，开车窗行驶的确比开空调要更加省油，但是其恶劣的驾车感受是必须用足够的忍耐力才能承受的</span></p>\r\n', '7', 'http://www.autohome.com.cn/user/201007/128126.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816db69ef7da.jpg', '腰立辉', '2016-10-31 13:49:29');
INSERT INTO `zt_tp_as_usecar` VALUES ('5', '遭遇鸡蛋袭击不能用雨刮?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">相信不少人曾对网络中的一则流言有所耳闻：某地频繁现劫匪用生鸡蛋袭击挡风玻璃的抢劫伎俩，千万不要开启雨刷喷水。因为鸡蛋遇玻璃水将凝固，阻挡视线达90%，在你被迫停车清理玻璃时，劫匪趁机抢劫......。上网一搜，类似流言高达百万条以上。</span></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验1：普通生鸡蛋</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验2：普通生鸡蛋停留一段时间再清理</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验3：普通鸡蛋夜间效果</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验4：普通生鸡蛋+神秘配方</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">同样以20km/h的速度驾驶车辆，路边砸来的鸡蛋在挡风玻璃上破碎，开启雨刮器后大部分鸡蛋残渣被清除，不过一些神秘的残留物质仍然不能完全清除，尝试数次后效果仍然不明显。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', '7', 'http://www.autohome.com.cn/user/201112/281437.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816cd97d33bb.jpg', '腰立辉', '2016-10-31 13:00:58');
INSERT INTO `zt_tp_as_usecar` VALUES ('8', '开车不喝酒，喝酒不开车', '<p>\r\n	可你喝了酒又需要回家怎么办？</p>\r\n<p>\r\n	1. 自己打车回家，转天再去开回来。</p>\r\n<p>\r\n	2. 请会开车没喝酒的朋友帮忙。</p>\r\n<p>\r\n	3. 请个代驾帮忙把车开回家。</p>\r\n<p>\r\n	<strong>看看后面的规定，你就知道我们的3个办法还是最有效的。</strong></p>\r\n<p>\r\n	中华人民共和国道路交通安全法》规定，饮酒后驾驶机动车的处暂扣1个月以上3个月以下机动车驾驶证，并处200元以上元以下罚款;醉酒后驾驶机动车的，由公安机关交通管理部门约束至酒醒，处15日以下拘留和暂扣3个月以上6个月以下机动车驾驶证，并处00元以上2000元以下罚款。1年内醉酒后驾驶机动车被处罚2次以上的，吊销机动车驾驶证.5年内不得驾驶营运机动车。</p>\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816e1c4c2325.jpg', '腰立辉', '2016-10-31 14:16:36');
INSERT INTO `zt_tp_as_usecar` VALUES ('6', '保护漆面从新车做起', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">新车漆面虽无老化问题，但使用前应该做彻底的保护处理，从出厂到运输至停车场，车表漆就已经接触了空气、酸气、风沙的侵袭。及时正确的养护，能令漆面保持良好外观。如果买的是进口轿车，要首先考虑的是车蜡中含有石蜡、树脂及特氟隆等材料。除蜡时不要用汽油或煤油擦拭，应选用专业的开蜡液，或者到专业的美容养护店，请技师帮助处理。至于国产车，车身大多采用静电喷涂，漆面呈镜面光泽，故无开蜡需要。</span></p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dedc34c66.jpeg', '腰立辉', '2016-10-31 14:04:12');
INSERT INTO `zt_tp_as_usecar` VALUES ('7', '调整后视镜', '调整后视镜左侧后视镜上、下位置是把远处的地平线置于中央，左、右位置则调整至车身占据镜面范围的14。右侧后视镜因为驾驶座位于左侧，因此驾驶人对车耳右侧的掌握不是那么容易，再加上有时路边停车的需要，在调整右侧后视镜上、下位置时地面面积要较大，约占镜面的23。而左、右位置则同样调整到车身占14面积即可。\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816dfa12179c.png', '腰立辉', '2016-10-31 14:07:29');

-- ----------------------------
-- Table structure for `zt_tp_case`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_case`;
CREATE TABLE `zt_tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `level` varchar(1) DEFAULT '2',
  `main` varchar(50) DEFAULT NULL,
  `steps` text,
  `expected` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dstate` varchar(5) DEFAULT '待维护',
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10306 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_case
-- ----------------------------
INSERT INTO `zt_tp_case` VALUES ('10000', '1', '2', '正常登陆', '', '登入系统，并显示用户姓名11', '正常', '107', '10000', '产品库', '', '腰立辉', '腰立辉', '2016-12-08 09:31:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10001', '2', '2', '用户名不存在', '', '报错', '正常', '107', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-12-08 09:31:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10130', '2', '2', ' 活动截止以后', '\r\n', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:50:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10131', '3', '2', ' 活动期间，当天已经投过票的', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10132', '4', '2', ' 活动期间，今天尚未投票', '', ' 可以投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10133', '1', '2', ' 打开页面，播放音乐', '', ' 背景音乐自动播放', '正常', '110', '10449', null, null, '腰立辉', '腰立辉', '2016-12-12 20:52:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10134', '1', '2', ' 点击选手头像，播放选手歌曲', '', ' 可以播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:54:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10135', '2', '2', '再次点击选手头像', '', ' 关闭音乐播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:55:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10136', '3', '2', ' 切换选手列表页面，停止播放', '', ' 停止播放', '待确认', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 21:00:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10129', '1', '2', ' 活动开始之前', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:50:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10104', '1', '2', '按英文名检索', '<p>\r\n	asd12</p>\r\n', '查询到符合条件的员工列表', '正常', '116', '10425', '产品库', null, '腰立辉', '腰立辉', '2016-12-23 17:21:16', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10282', '1', '2', ' 按姓名模糊查询', '', ' 检索到符合条件的员工列表', '正常', '116', '10425', null, null, '腰立辉', '腰立辉', '2016-12-23 17:21:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10109', '1', '2', ' 从公众微信号打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-22 17:25:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10110', '2', '2', ' 从分享链接打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-22 17:25:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10111', '1', '2', ' 正常提交报名', '', ' 提交成功', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:45:54', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10112', '2', '2', ' 空姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10113', '3', '2', ' 空姓名，填手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10114', '4', '2', ' 填姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10115', '5', '2', ' 填姓名，手机号位数不足', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10116', '6', '2', ' 填姓名，手机号位数超过11位', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10117', '7', '2', ' 填姓名，手机号后有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10118', '8', '2', ' 填姓名，手机号前，有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:07', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10119', '9', '2', ' 填姓名，手机号中间有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10120', '10', '2', ' 来回切换页面后，再填写报名信息', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:49:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10121', '1', '2', ' 启用名片的角色，进入公司名片', '', ' 显示自己的名片', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:56:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10122', '2', '2', ' 未启用名片的角色进入公司名片', '', ' 显示所有管家名片，滑动可以浏览', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:57:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10123', '1', '2', ' 分享给微信好友', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10124', '2', '2', ' 分享到微信朋友圈', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10125', '1', '2', '从管家明前提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10126', '2', '2', ' 从公司名片提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10127', '3', '2', ' 转发分享次数', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10128', '4', '2', ' 报名转化率', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10137', '1', '1', '正常修改密码', '', ' 修改成功', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 18:23:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10138', '2', '2', ' 原密码不填', '', ' 报错', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:49:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10139', '3', '2', ' 原密码错误', '', ' 报错', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:55:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10140', '4', '2', ' 原密码正确，新密码两次不一致', '', ' 修改失败', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:55:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10141', '5', '2', ' 原密码正确，新密码不输入', '', ' 修改失败', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:55:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10142', '1', '1', ' 国家名称（全匹配查询）', '', ' 精确查出结果', '正常', '116', '10566', null, null, '腰立辉', '腰立辉', '2016-12-21 18:29:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10143', '1', '2', ' 国家名称没输全（模糊查询）', '', ' 可以查出复核条件的结果', '正常', '116', '10566', null, null, '腰立辉', '腰立辉', '2016-12-21 18:30:33', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10144', '1', '2', '从微信菜单进入“生活体验”', '', ' 成功打开生活体验页面', '正常', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:06:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10145', '3', '2', ' 从微站首页进入生活体验', '', ' 打开生活体验页面', '正常', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:07:15', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10146', '3', '2', ' 后台移民项目没有对应数据时', '', ' 展示默认场景', '待确认', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:08:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10147', '3', '2', ' 左右滑动切换移民国家', '', ' 切换成功，且可以循环切换', '正常', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:09:49', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10148', '3', '2', '当后台项目之一一个国家时，滑动切换国家', '', ' ', '待确认', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:15:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10149', '2', '2', ' 项目只有一个城市', '', ' 直接跳过城市选择', '正常', '116', '10563', null, null, '腰立辉', '腰立辉', '2016-12-22 17:16:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10150', '2', '2', ' 当城市大于1个时，需要选择移民城市', '', ' ', '正常', '116', '10563', null, null, '腰立辉', '腰立辉', '2016-12-22 17:17:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10151', '2', '2', ' 可以上下滑动切换', '', ' 按后台设置的顺序', '正常', '116', '10563', null, null, '腰立辉', '腰立辉', '2016-12-22 17:17:57', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10152', '2', '2', ' 当项目没有体验信息时', '', ' 展示默认页面', '待确认', '116', '10564', null, null, '腰立辉', '腰立辉', '2016-12-22 17:19:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10153', '2', '2', ' 当项目有体验场景', '', ' 显示图片列表，点击可以进入详情', '正常', '116', '10564', null, null, '腰立辉', '腰立辉', '2016-12-22 17:20:10', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10154', '2', '2', ' 点击列表图片', '', ' 展开对应的详情', '正常', '116', '10565', null, null, '腰立辉', '腰立辉', '2016-12-22 17:23:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10155', '2', '2', ' 在详情页面，左右滑动', '', ' 可以按列表顺序，切换详情', '正常', '116', '10565', null, null, '腰立辉', '腰立辉', '2016-12-22 17:23:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10156', '4', '2', '公司简介向上滑动', '', ' 显示项目列表', '正常', '116', '10420', null, null, '腰立辉', '腰立辉', '2016-12-22 17:31:06', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10157', '4', '2', ' 当项目只有一个时，左右滑动', '', ' ', '待确认', '116', '10420', null, null, '腰立辉', '腰立辉', '2016-12-22 17:32:01', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10158', '4', '2', ' 当项目超过3个时，左右滑动', '', ' 可以循环展示', '正常', '116', '10420', null, null, '腰立辉', '腰立辉', '2016-12-22 17:32:38', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10159', '1', '2', ' 点击项目图片', '', ' 打开项目详情页面', '正常', '116', '10590', null, null, '腰立辉', '腰立辉', '2016-12-22 17:33:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10160', '3', '2', ' 显示个人名片的分享后', '', ' 统计或报名都记在个人名片下', '正常', '116', '10422', null, null, '腰立辉', '腰立辉', '2016-12-22 17:34:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10161', '3', '2', ' 显示公司名片时分享', '', ' 打开和报名统计在公司名片下', '正常', '116', '10422', null, null, '腰立辉', '腰立辉', '2016-12-22 17:35:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10162', '1', '2', ' 已个人名片分享的消息，有人报名时间', '', ' 微信公众号会有消息推送给名片所有人', '正常', '116', '10469', null, null, '腰立辉', '腰立辉', '2016-12-22 17:36:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10163', '1', '2', ' 已公司名片分享的消息，有人报名时', '', ' 无消息推送', '正常', '116', '10469', null, null, '腰立辉', '腰立辉', '2016-12-22 17:37:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10164', '1', '2', ' 单选一个国家查询', '', ' 查出对应的结果', '正常', '116', '10482', null, null, '腰立辉', '腰立辉', '2016-12-22 18:23:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10165', '1', '2', ' 选多个国家', '', ' 查出对应的结果', '正常', '116', '10482', null, null, '腰立辉', '腰立辉', '2016-12-22 18:23:59', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10166', '1', '2', ' 选择对应的项目类型', '', ' 查出对应的结果', '正常', '116', '10483', null, null, '腰立辉', '腰立辉', '2016-12-22 18:24:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10167', '1', '2', '单选项目状态', '', ' 查出对应的结果', '正常', '116', '10484', null, null, '腰立辉', '腰立辉', '2016-12-22 18:27:06', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10168', '1', '2', ' 输全项目编号', '', ' 查到对应的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:27:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10169', '1', '2', ' 输全项目名称', '', ' 查出对应的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:28:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10170', '1', '2', ' 输入部分项目编号（模糊查询）', '', ' 查出符合条件的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:28:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10171', '1', '2', '  输入部分项目名称（模糊查询）', '', ' 查出符合条件的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:29:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10172', '1', '2', ' 组合查询', '', ' 查出符合条件的结果', '正常', '116', '10487', null, null, '腰立辉', '腰立辉', '2016-12-22 18:29:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10173', '2', '2', ' 办理流程未填写，发布', '', ' 提示“办理流程未填写”', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10174', '3', '2', '申请条件未填写，发布', '', ' ', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10175', '4', '2', ' 费用详情未填写，发布', '', ' ', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10176', '5', '2', ' 料清单未填写，发布', '', ' ', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:35:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10177', '1', '2', ' 所有信息填写完成，发布', '', ' 发布成功，微网站上可见', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10178', '1', '2', '只输入起始日期查询', '', ' 搜寻到起始日期往后的项目列表', '正常', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:28:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10179', '1', '2', ' 只输入结束日期', '', ' 查询到结束日期往前的项目列表', '正常', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:28:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10180', '1', '2', ' 同时输入结束日期和起始日期，且起始日期小于结束日期', '', ' 查找在这区间的的项目列表', '正常', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:29:49', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10181', '1', '2', ' 同时输入结束日期和起始日期，起始日期等于结束日期', '', ' 查询到当天的项目列表（假定项目时间是一个点）', '待确认', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:31:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10182', '1', '2', ' 同时输入结束日期和起始日期，且起始日期大于结束日期', '', ' 报错', '待确认', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:31:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10183', '1', '2', ' 查看项目列表展现', '', ' 数据和展示字段与需求相符', '正常', '116', '10488', null, null, '腰立辉', '腰立辉', '2016-12-23 09:35:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10184', '1', '2', ' 选中一个项目，推荐', '', ' 推荐成功，该项目的扩展推荐，显示顾问平片，并且在微网站的公司名片的重点项目中看到该项目的信息', '正常', '116', '10490', null, null, '腰立辉', '腰立辉', '2016-12-23 09:43:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10185', '1', '2', ' 选中多个项目，进行扩展推荐', '', ' 选中项目的扩展推荐，这些项目都会出现在公司名片的重点项目中', '正常', '116', '10490', null, null, '腰立辉', '腰立辉', '2016-12-23 09:45:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10186', '4', '2', ' 项目暂停', '', ' 暂停成功，该项目不在网站显示', '正常', '116', '10492', null, null, '腰立辉', '腰立辉', '2016-12-23 10:02:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10187', '4', '2', ' 项目售罄', '', ' 成功，网站依然显示', '正常', '116', '10492', null, null, '腰立辉', '腰立辉', '2016-12-23 10:02:49', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10188', '23', '2', ' 正常新增项目', '', ' 新增成功', '正常', '116', '10489', null, null, '腰立辉', '腰立辉', '2016-12-23 10:03:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10189', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10491', null, null, '腰立辉', '腰立辉', '2016-12-23 10:20:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10190', '1', '2', ' 检查办理流程列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10494', null, null, '腰立辉', '腰立辉', '2016-12-23 10:25:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10191', '2', '2', ' 正常添加办理流程', '', ' 添加成功', '正常', '116', '10495', null, null, '腰立辉', '腰立辉', '2016-12-23 10:25:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10192', '2', '2', ' 排序字段填入字母和符号（非数字）', '', ' 报错，不能添加', '正常', '116', '10495', null, null, '腰立辉', '腰立辉', '2016-12-23 10:27:52', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10193', '2', '2', ' 下载模板', '', ' ', '正常', '116', '10496', null, null, '腰立辉', '腰立辉', '2016-12-23 10:34:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10194', '2', '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', '116', '10496', null, null, '腰立辉', '腰立辉', '2016-12-23 10:35:42', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10195', '2', '2', ' 上传非xls和xlsx的文体', '\r\n', ' 报错', '正常', '116', '10496', null, null, '腰立辉', '腰立辉', '2016-12-23 10:36:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10196', '1', '2', ' 选中一个流程（非顶端），上移', '', ' 上移一个顺序', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:37:19', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10197', '1', '2', '  选中一个流程（顶端），上移', '', ' 不能上移', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:37:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10198', '1', '2', '  选中一个流程（非底端），下移', '', ' 下移成功', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:37:59', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10199', '1', '2', '   选中一个流程（底端），下移', '', ' 不能下移', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:38:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10200', '1', '2', '   选中一个流程（非顶端），置顶', '', ' 置顶成功', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:45:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10201', '1', '2', '选中一个流程（顶端），置顶', '', ' 无需置顶', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:45:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10202', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10498', null, null, '腰立辉', '腰立辉', '2016-12-23 10:46:17', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10203', '1', '2', ' 删除申请流程', '', ' 删除成功', '正常', '116', '10499', null, null, '腰立辉', '腰立辉', '2016-12-23 10:49:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10204', '1', '2', ' 检查材料清单列表', '', ' 数据和展示字段与需求相符', '正常', '116', '10506', null, null, '腰立辉', '腰立辉', '2016-12-23 10:57:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10205', '1', '2', ' 正常新增', '', ' 添加材料成功', '正常', '116', '10507', null, null, '腰立辉', '腰立辉', '2016-12-23 10:58:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10206', '1', '2', ' 点击材料样例', '', ' 弹出新窗口显示样例', '正常', '116', '10510', null, null, '腰立辉', '腰立辉', '2016-12-23 10:59:17', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10207', '2', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10511', null, null, '腰立辉', '腰立辉', '2016-12-23 10:59:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10208', '2', '2', ' 正常删除', '', ' 弹出确认窗口，确认后删除', '正常', '116', '10512', null, null, '腰立辉', '腰立辉', '2016-12-23 11:00:08', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10209', '1', '2', ' 下载模板', '', ' 下载成功', '正常', '116', '10508', null, null, '腰立辉', '腰立辉', '2016-12-23 11:00:37', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10210', '1', '2', ' 正常导入模板', '', ' 导入成功，刷新页面', '正常', '116', '10508', null, null, '腰立辉', '腰立辉', '2016-12-23 11:01:02', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10211', '1', '2', ' 带入非模板的文件', '', ' 导入失败', '正常', '116', '10508', null, null, '腰立辉', '腰立辉', '2016-12-23 11:02:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10212', '1', '2', ' 非顶端，上移', '', ' 上移成功', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:03', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10213', '1', '2', ' 顶端上移，不能上移', '', ' ', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:15', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10214', '1', '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10215', '1', '2', ' 顶端置顶', '', ' 不能置顶', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10216', '1', '2', '非底端，下移 ', '', ' 下移成功', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:04:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10217', '1', '2', ' 底端，下移', '', ' 不能下移', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:04:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10218', '1', '2', ' 检查费用详情列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10500', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10219', '1', '2', ' 正常新增', '\r\n', ' 新增成功', '正常', '116', '10501', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10220', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10504', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10221', '1', '2', ' 正常删除', '', ' 删除成功', '正常', '116', '10505', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10222', '2', '2', ' 下载模板', '', ' 模板下载成功', '正常', '116', '10502', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:30', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10223', '2', '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', '116', '10502', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10224', '2', '2', ' 上传非模板文件', '', ' 报错', '正常', '116', '10502', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:33', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10225', '1', '2', ' 非顶端，上移', '', ' 上移成功', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:35', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10226', '1', '2', ' 顶端，上移', '', ' 顶端上移，不能上移', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10227', '1', '2', ' 非底端，下移', '', ' 下移成功', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:37', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10228', '1', '2', ' 底端，下移', '', ' 不能下移', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10229', '1', '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10230', '1', '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10231', '1', '2', ' 检查图片列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10513', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10232', '2', '2', ' 正常添加图片', '', ' 添加成功', '正常', '116', '10514', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10233', '2', '2', ' 正常添加视频', '', ' 添加成功', '正常', '116', '10514', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:52', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10234', '2', '2', ' 添加视频时，视频地址不填', '', ' 报错，不允许添加', '正常', '116', '10514', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10235', '1', '2', ' 非顶端，上移', '', ' 上移成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10236', '1', '2', ' 顶端，上移', '', ' 不能上移', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10237', '1', '2', ' 非底端，下移', '', ' 下移成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:57', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10238', '1', '2', ' 底端，下移', '', ' 下移成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:59', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10239', '1', '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10240', '1', '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:02', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10241', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10516', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:03', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10242', '1', '2', ' 正常删除', '', ' 删除成功', '正常', '116', '10517', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10243', '1', '2', ' 按栏目全称精确查询', '', ' 查询到结果', '正常', '116', '10536', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10244', '1', '2', ' 按栏目名称模糊查询', '', ' 查询到符合条件的栏目', '正常', '116', '10536', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:07', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10245', '1', '2', ' 检查栏目列表', '', '数据和字段符合需求', '正常', '116', '10537', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:10', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10246', '1', '2', ' 修改顺序后，批量排序', '', '排序成功', '正常', '116', '10538', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10247', '1', '2', ' 不修改排序，点击“批量排序”', '', ' 排序失败', '正常', '116', '10538', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10248', '1', '2', ' 正常新增栏目', '', ' 新增成功', '正常', '116', '10539', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:14', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10249', '1', '2', ' 正常删除栏目', '', ' 删除成功', '正常', '116', '10541', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:16', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10250', '1', '2', ' 正常设置', '', ' 设置成功', '正常', '116', '10540', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:17', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10251', '1', '2', ' 选中左侧的栏目', '', ' 显示该栏目下的所有资讯', '正常', '116', '10542', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10252', '1', '2', ' 按标题精确查询', '', ' 查到对应和资讯', '正常', '116', '10543', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10253', '1', '2', ' 按资讯中的关键字模糊查询', '', ' 查询到符合条件的资讯', '正常', '116', '10543', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10254', '1', '2', ' 选中状态查询', '', ' 查询到符合条件的资讯', '正常', '116', '10544', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10255', '1', '2', ' 输入关键字并选择状态', '', ' 查询出符合条件的资讯', '正常', '116', '10545', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10256', '1', '2', ' 检查资讯列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10546', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:26', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10257', '1', '2', ' 正常新增资讯', '', ' 新增成功', '正常', '116', '10547', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:28', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10258', '1', '2', ' 正常编辑资讯', '', ' 编辑成功', '正常', '116', '10548', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10259', '1', '2', ' 正常删除资讯', '', ' 删除成功', '正常', '116', '10549', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:30', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10260', '1', '2', ' 发布资讯', '', ' 发布成功，微网站上可见', '正常', '116', '10550', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10261', '1', '2', ' 按活动名称精确查询', '', ' 查出对应的结果', '正常', '116', '10524', null, null, '腰立辉', '腰立辉', '2016-12-23 16:38:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10262', '1', '2', ' 按活动关键字模糊查询', '', ' 查出符合条件的结果', '正常', '116', '10524', null, null, '腰立辉', '腰立辉', '2016-12-23 16:38:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10263', '1', '2', '检查活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10525', null, null, '腰立辉', '腰立辉', '2016-12-23 16:55:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10264', '1', '2', ' 检查已发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10526', null, null, '腰立辉', '腰立辉', '2016-12-23 16:58:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10265', '1', '2', ' 检查未发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10527', null, null, '腰立辉', '腰立辉', '2016-12-23 16:58:30', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10266', '1', '2', ' 更改排序后，批量排序', '', ' 排序成功', '正常', '116', '10528', null, null, '腰立辉', '腰立辉', '2016-12-23 17:02:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10267', '1', '2', ' 未更改排序，进行批量排序', '', ' 排序失败', '正常', '116', '10528', null, null, '腰立辉', '腰立辉', '2016-12-23 17:02:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10268', '2', '2', ' 正常添加活动', '', ' 添加成功', '正常', '116', '10529', null, null, '腰立辉', '腰立辉', '2016-12-23 17:02:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10269', '2', '2', ' 添加活动名和以前存在同名的活动', '', ' 添加失败', '正常', '116', '10529', null, null, '腰立辉', '腰立辉', '2016-12-23 17:03:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10270', '2', '2', ' 正常编辑', '', ' 保存成功', '正常', '116', '10530', null, null, '腰立辉', '腰立辉', '2016-12-23 17:04:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10271', '2', '2', ' 编辑时，把活动名称改为和以前的某个活动重名的', '', ' 保存失败', '正常', '116', '10530', null, null, '腰立辉', '腰立辉', '2016-12-23 17:05:10', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10272', '1', '2', ' 未发布的活动，发布', '', ' 发布成功', '正常', '116', '10531', null, null, '腰立辉', '腰立辉', '2016-12-23 17:05:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10273', '1', '2', ' 已发布，为下线的活动，发布', '', '不能再次发布', '正常', '116', '10531', null, null, '腰立辉', '腰立辉', '2016-12-23 17:06:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10274', '1', '2', ' 已发布的活动，下线', '', ' 下线成功', '正常', '116', '10532', null, null, '腰立辉', '腰立辉', '2016-12-23 17:06:21', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10275', '1', '2', ' 未发布或已下线的活动，下线', '', ' 不能下线', '正常', '116', '10532', null, null, '腰立辉', '腰立辉', '2016-12-23 17:07:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10276', '1', '2', '点击活动报名', '', ' 进入活动已报名的名表', '正常', '116', '10533', null, null, '腰立辉', '腰立辉', '2016-12-23 17:07:58', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10277', '1', '2', ' 按姓名精确查询', '', ' 查询符合条件的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:09:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10278', '1', '2', ' 按姓名模糊查询', '', ' 查询符合条件的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:09:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10279', '1', '2', ' 按手机号精确查询', '', ' 查到对对应的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:10:09', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10280', '1', '2', ' 按手机号模糊查询', '', ' 查询符合条件的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:11:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10281', '1', '2', ' 检查报名人员列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10535', null, null, '腰立辉', '腰立辉', '2016-12-23 17:11:52', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10283', '1', '2', ' 按所属部门筛选', '', ' 筛选出该部门级下级部门的所有人员', '正常', '116', '10425', null, null, '腰立辉', '腰立辉', '2016-12-23 17:22:28', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10284', '1', '2', ' 选中某个员工进行“分派管家”', '&lt;p&gt;\r\n	按钮&amp;ldquo;分派管家&amp;rdquo;有歧义需斟酌&lt;/p&gt;\r\n', '把该员工设定为移民管家', '待确认', '116', '10425', null, null, '腰立辉', '腰立辉', '2016-12-23 17:23:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10285', '1', '2', '正常 编辑管家', '', ' 保存成功', '正常', '116', '10426', null, null, '腰立辉', '腰立辉', '2016-12-23 17:25:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10286', '1', '2', ' 点击姓名', '', ' 进入管家详情', '正常', '116', '10429', null, null, '腰立辉', '腰立辉', '2016-12-23 17:26:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10287', '1', '2', ' 点击英文名', '', ' 进入管家详情', '正常', '116', '10429', null, null, '腰立辉', '腰立辉', '2016-12-23 17:27:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10288', '1', '2', ' 点击管家星级', '', ' 进入管家评价', '正常', '116', '10427', null, null, '腰立辉', '腰立辉', '2016-12-23 17:27:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10289', '3', '2', '修改排序数字，重新排序', '', ' 排序成功，且前台展示也按此顺序排序', '正常', '116', '10519', null, null, '腰立辉', '腰立辉', '2016-12-23 17:40:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10290', '3', '2', ' 未修改排序。批量排序', '', ' 重新排序失败', '正常', '116', '10519', null, null, '腰立辉', '腰立辉', '2016-12-23 17:41:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10291', '3', '2', ' 修改权重比例，权重之和等于100%', '', ' 保存权重成功', '正常', '116', '10522', null, null, '腰立辉', '腰立辉', '2016-12-23 17:42:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10292', '3', '2', '  修改权重比例，权重之和不等于100%', '', ' 保存失败', '正常', '116', '10522', null, null, '腰立辉', '腰立辉', '2016-12-23 17:42:33', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10293', '3', '2', ' 权重之和等于100%，发布', '', ' 发布成功', '正常', '116', '10523', null, null, '腰立辉', '腰立辉', '2016-12-23 17:43:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10294', '3', '2', ' 权重之和不等于100%，发布', '', ' 发布失败', '正常', '116', '10523', null, null, '腰立辉', '腰立辉', '2016-12-23 17:43:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10295', '2', '2', '正常删除', '', ' 弹出确认窗口，确认后删除', '正常', '116', '10521', null, null, '腰立辉', '腰立辉', '2016-12-23 17:43:57', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10296', '6', '2', ' 正常添加问题', '', ' 添加成功', '正常', '116', '10518', null, null, '腰立辉', '腰立辉', '2016-12-23 17:45:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10297', '6', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10520', null, null, '腰立辉', '腰立辉', '2016-12-23 17:45:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10298', '10', '2', ' 正确的用户名，正确的密码', '', ' 正常登陆', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:00:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10299', '10', '2', ' 用户被禁用，正确的用户名，正确的密码', '', ' 提示被禁用', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:01:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10300', '10', '2', ' 不存在的用户名', '', '用户名不存在', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:02:03', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10301', '10', '2', ' 错误的密码', '', ' 密码错误', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:02:21', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10302', '10', '2', ' 正确用户名，不输密码', '', ' 请输入密码', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:02:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10303', '10', '2', ' 不输入用户名， 随便数个什么密码', '', '请输入用户名', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:03:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10304', '10', '2', ' 用户名和 密码都不输入，直接点登陆', '', ' 请输入用户名', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:03:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10305', '4', '2', ' 正常退出', '', ' 用户退出登录，跳转到登陆页面', '正常', '116', '10479', null, null, '腰立辉', '腰立辉', '2016-12-23 18:04:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `zt_tp_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_cate`;
CREATE TABLE `zt_tp_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_cate
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_tp_dict`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_dict`;
CREATE TABLE `zt_tp_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `moder` varchar(10) DEFAULT '腰立辉',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_dict
-- ----------------------------
INSERT INTO `zt_tp_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('2', '2', '待确认', 'state', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('3', '3', '已搁置', 'state', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('4', '4', '作废', 'state', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('5', '1', '未开始', 'prost', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('6', '2', '进行中', 'prost', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('7', '3', '已完成', 'prost', '正常', '腰立辉', '2016-11-11 16:49:34');
INSERT INTO `zt_tp_dict` VALUES ('8', '8', '仿真验证通过', 'prost', '作废', '腰立辉', '2016-11-11 16:50:28');
INSERT INTO `zt_tp_dict` VALUES ('9', '6', '已取消', 'prost', '正常', '腰立辉', '2016-11-11 16:50:20');
INSERT INTO `zt_tp_dict` VALUES ('30', '1', '简要', 'ptype', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('31', '2', '常规', 'ptype', '正常', '腰立辉', '2016-09-16 22:23:48');
INSERT INTO `zt_tp_dict` VALUES ('32', '1', '新项目', 'reType', '正常', '腰立辉', '2016-10-24 09:19:51');
INSERT INTO `zt_tp_dict` VALUES ('33', '2', '升级版本', 'reType', '正常', '腰立辉', '2016-10-24 09:20:04');
INSERT INTO `zt_tp_dict` VALUES ('34', '3', '临时修正程序', 'reType', '正常', '腰立辉', '2016-10-24 09:20:19');
INSERT INTO `zt_tp_dict` VALUES ('35', '1', '紧急需求', 'reLevel', '正常', '腰立辉', '2016-09-17 14:28:53');
INSERT INTO `zt_tp_dict` VALUES ('36', '2', '一般需求', 'reLevel', '正常', '腰立辉', '2016-09-17 14:28:44');
INSERT INTO `zt_tp_dict` VALUES ('37', '1', '测试', 'position', '正常', '腰立辉', '2016-12-19 11:29:38');
INSERT INTO `zt_tp_dict` VALUES ('38', '2', '产品经理', 'position', '正常', '腰立辉', '2016-12-19 11:28:27');
INSERT INTO `zt_tp_dict` VALUES ('39', '3', '后台研发', 'position', '正常', '腰立辉', '2016-12-19 11:29:05');
INSERT INTO `zt_tp_dict` VALUES ('40', '4', '前端工程师', 'position', '正常', '腰立辉', '2016-12-19 11:29:19');
INSERT INTO `zt_tp_dict` VALUES ('41', '5', '架构师', 'position', '正常', '腰立辉', '2016-12-19 11:29:31');
INSERT INTO `zt_tp_dict` VALUES ('42', '6', '总经理', 'position', '正常', '腰立辉', '2016-12-19 11:29:50');
INSERT INTO `zt_tp_dict` VALUES ('43', '1', '无文档', 'document', '正常', '腰立辉', '2016-09-17 16:09:39');
INSERT INTO `zt_tp_dict` VALUES ('44', '2', '测试计划', 'document', '正常', '腰立辉', '2016-09-17 16:08:42');
INSERT INTO `zt_tp_dict` VALUES ('45', '3', '测试用例', 'document', '正常', '腰立辉', '2016-09-17 16:08:55');
INSERT INTO `zt_tp_dict` VALUES ('46', '4', 'BUG分析报告', 'document', '正常', '腰立辉', '2016-09-17 16:09:28');
INSERT INTO `zt_tp_dict` VALUES ('47', '5', '测试综合报告', 'document', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_tp_dict` VALUES ('48', '1', '打开', 'rstate', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('49', '2', '关闭', 'rstate', '正常', '腰立辉', '2016-09-17 16:18:30');
INSERT INTO `zt_tp_dict` VALUES ('50', '1', 'A', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:42');
INSERT INTO `zt_tp_dict` VALUES ('51', '2', 'B', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:21');
INSERT INTO `zt_tp_dict` VALUES ('52', '3', 'C', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:27');
INSERT INTO `zt_tp_dict` VALUES ('53', '4', 'D', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:34');
INSERT INTO `zt_tp_dict` VALUES ('54', '1', 'M', 'sceneType', '正常', '腰立辉', '2016-09-23 21:11:13');
INSERT INTO `zt_tp_dict` VALUES ('55', '2', 'A', 'sceneType', '正常', '腰立辉', '2016-09-23 21:11:19');
INSERT INTO `zt_tp_dict` VALUES ('56', '1', '未测试', 'sceneResul', '正常', '腰立辉', null);
INSERT INTO `zt_tp_dict` VALUES ('57', '2', '通过', 'sceneResul', '正常', '腰立辉', '2016-10-10 16:22:33');
INSERT INTO `zt_tp_dict` VALUES ('58', '3', '失败', 'sceneResul', '正常', '腰立辉', '2016-10-10 16:22:39');
INSERT INTO `zt_tp_dict` VALUES ('59', '4', '场景错', 'sceneResul', '正常', '腰立辉', '2016-10-10 16:22:45');
INSERT INTO `zt_tp_dict` VALUES ('60', '1', '操作', 'typeset', '正常', '腰立辉', '2016-10-20 15:08:41');
INSERT INTO `zt_tp_dict` VALUES ('61', '2', '检查', 'typeset', '正常', '腰立辉', '2016-10-20 15:08:52');
INSERT INTO `zt_tp_dict` VALUES ('62', '1', '待维护', 'dstate', '正常', '腰立辉', '2016-10-20 16:21:49');
INSERT INTO `zt_tp_dict` VALUES ('63', '2', '已完成', 'dstate', '正常', '腰立辉', '2016-10-20 16:22:03');
INSERT INTO `zt_tp_dict` VALUES ('64', '4', '功能优化', 'reType', '正常', '腰立辉', '2016-10-24 09:20:29');
INSERT INTO `zt_tp_dict` VALUES ('65', '5', '性能优化', 'reType', '正常', '腰立辉', '2016-10-24 09:20:37');
INSERT INTO `zt_tp_dict` VALUES ('66', '6', '用户体验优化', 'reType', '正常', '腰立辉', '2016-10-24 09:20:47');
INSERT INTO `zt_tp_dict` VALUES ('67', '4', '已上线', 'prost', '正常', '腰立辉', '2016-11-11 16:50:05');
INSERT INTO `zt_tp_dict` VALUES ('69', '3', 'C', 'sceneType', '正常', '腰立辉', '2016-11-16 17:23:14');
INSERT INTO `zt_tp_dict` VALUES ('68', '5', '已搁置', 'prost', '正常', '腰立辉', '2016-11-11 16:50:15');
INSERT INTO `zt_tp_dict` VALUES ('70', '1', '在职', 'adminst', '正常', '腰立辉', '2016-11-17 13:57:24');
INSERT INTO `zt_tp_dict` VALUES ('71', '2', '离职', 'adminst', '正常', '腰立辉', '2016-11-17 13:57:34');
INSERT INTO `zt_tp_dict` VALUES ('72', '1', 'PJD', 'testgp', '正常', '腰立辉', '2016-12-17 22:37:50');
INSERT INTO `zt_tp_dict` VALUES ('73', '1', '技师', 'tech', '正常', '腰立辉', '2016-12-17 17:06:48');
INSERT INTO `zt_tp_dict` VALUES ('74', '2', '非技师', 'tech', '正常', '腰立辉', '2016-12-17 17:07:02');
INSERT INTO `zt_tp_dict` VALUES ('75', '1', '用车小常识', 'usecar', '正常', '腰立辉', '2016-12-17 17:14:52');
INSERT INTO `zt_tp_dict` VALUES ('76', '2', '流言终结者', 'usecar', '正常', '腰立辉', '2016-12-17 17:15:16');
INSERT INTO `zt_tp_dict` VALUES ('77', '1', '抽奖', 'voucher', '正常', '腰立辉', '2016-12-17 17:16:07');
INSERT INTO `zt_tp_dict` VALUES ('78', '2', '普通', 'voucher', '正常', '腰立辉', '2016-12-17 17:16:20');
INSERT INTO `zt_tp_dict` VALUES ('79', '1', '老师', 'custype', '正常', '腰立辉', '2016-12-17 20:09:14');
INSERT INTO `zt_tp_dict` VALUES ('80', '2', '助教', 'custype', '正常', '腰立辉', '2016-12-17 20:09:26');
INSERT INTO `zt_tp_dict` VALUES ('81', '3', '学生', 'custype', '正常', '腰立辉', '2016-12-17 20:09:33');
INSERT INTO `zt_tp_dict` VALUES ('82', '1', '学前少儿', 'coursetype', '正常', '腰立辉', '2016-12-17 20:10:30');
INSERT INTO `zt_tp_dict` VALUES ('83', '2', '小学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 20:10:47');
INSERT INTO `zt_tp_dict` VALUES ('84', '3', '中学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 20:10:55');
INSERT INTO `zt_tp_dict` VALUES ('85', '4', '作业托管', 'coursetype', '正常', '腰立辉', '2016-12-17 20:11:03');
INSERT INTO `zt_tp_dict` VALUES ('86', '5', '兴趣拓展', 'coursetype', '正常', '腰立辉', '2016-12-17 20:11:22');
INSERT INTO `zt_tp_dict` VALUES ('87', '1', '08:00-10:00', 'sktime', '正常', '腰立辉', '2016-12-17 20:13:21');
INSERT INTO `zt_tp_dict` VALUES ('88', '2', '10:10-12:10', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:22');
INSERT INTO `zt_tp_dict` VALUES ('89', '3', '13:30-15:30', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:29');
INSERT INTO `zt_tp_dict` VALUES ('90', '4', '15:40-17:40', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:37');
INSERT INTO `zt_tp_dict` VALUES ('91', '5', '18:00-20:00', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:45');
INSERT INTO `zt_tp_dict` VALUES ('92', '2', 'Auto', 'testgp', '正常', '腰立辉', '2016-12-17 22:45:19');
INSERT INTO `zt_tp_dict` VALUES ('97', '7', 'UI设计师', 'position', '正常', '腰立辉', '2016-12-19 11:30:12');

-- ----------------------------
-- Table structure for `zt_tp_element`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_element`;
CREATE TABLE `zt_tp_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `typeset` varchar(4) DEFAULT NULL,
  `control` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `ios` varchar(50) DEFAULT NULL,
  `android` varchar(50) DEFAULT NULL,
  `bytype` varchar(10) DEFAULT NULL,
  `form` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_element
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_exefunc`;
CREATE TABLE `zt_tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `exesceneid` int(11) DEFAULT NULL,
  `funcid` int(50) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT '未绑定用例',
  `caseexpected` varchar(255) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT 'NoBug',
  `imgpath` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10953 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_exefunc
-- ----------------------------
INSERT INTO `zt_tp_exefunc` VALUES ('10437', '1', '10087', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 10:18:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10438', '2', '10087', '10409', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10439', '3', '10087', '10410', null, '微网站（用户）- 专属管家-列表及介绍', ' 绑定管家', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10440', '4', '10087', '10411', null, '微网站（用户）- 专属管家-列表及介绍', ' 微信关注', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10441', '5', '10087', '10412', null, '微网站（用户）- 专属管家-列表及介绍', ' 电话咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10442', '6', '10087', '10413', null, '微网站（用户）- 专属管家-列表及介绍', ' 在线咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10443', '1', '10088', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10444', '2', '10088', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', null, null, 'yuuiuy', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10445', '3', '10088', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10446', '4', '10088', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10447', '5', '10088', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10448', '6', '10088', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10449', '1', '10090', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '失败', null, null, '第一次加载时，全部显示再显示页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:23:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10450', '2', '10090', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', null, null, '不能循环播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:24:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10451', '3', '10090', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10452', '4', '10090', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '失败', null, null, '分享后，消息不显示图片', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:28:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10453', '5', '10090', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '失败', null, null, '来回波动后，提交“提示用户名不能为空”；安卓手机录入时，二维码会覆盖输入框；可以重复提交', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10454', '6', '10090', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10455', '1', '10091', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `zt_tp_exefunc` VALUES ('10456', '4', '10091', '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `zt_tp_exefunc` VALUES ('10457', '3', '10091', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `zt_tp_exefunc` VALUES ('10458', '1', '10093', '10414', null, '微网站（用户）- 专属管家-我的专属管家', ' 我的管家信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10459', '2', '10093', '10415', null, '微网站（用户）- 专属管家-我的专属管家', '点赞', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10460', '3', '10093', '10416', null, '微网站（用户）- 专属管家-我的专属管家', ' 评价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10461', '4', '10093', '10417', null, '微网站（用户）- 专属管家-我的专属管家', ' 分享管家名片', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10462', '5', '10093', '10418', null, '微网站（用户）- 专属管家-我的专属管家', ' 解除绑定', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10463', '1', '10094', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10464', '4', '10094', '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10465', '3', '10094', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10466', '1', '10095', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 14:59:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10467', '2', '10095', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', null, null, '未收到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:02:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10468', '3', '10095', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:06:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10469', '4', '10095', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', null, null, '城市级联，城市无选项', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:07:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10470', '5', '10095', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10471', '6', '10095', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10472', '3', '10096', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10473', '2', '10096', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10474', '1', '10096', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10475', '4', '10096', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10476', '5', '10096', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10477', '1', '10097', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, '第一次加载时，先显示全部，再进行动画', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10478', '2', '10097', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10479', '3', '10097', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10480', '3', '10098', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10481', '4', '10098', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10482', '5', '10098', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10483', '1', '10098', '10426', null, '微站后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10484', '2', '10098', '10429', null, '微站后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10485', '1', '10099', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10486', '4', '10099', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10487', '3', '10099', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10488', '2', '10099', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10489', '5', '10099', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10490', '6', '10099', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10491', '1', '10100', '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '失败', null, null, '第一次加载时，先加载全部，再显示动画，顺序不对', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:19:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10492', '2', '10100', '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '失败', null, null, '无连接详情', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:20:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10493', '3', '10100', '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '失败', null, null, '三个名片显示同样的内容', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10494', '4', '10100', '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '失败', null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10495', '5', '10100', '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10496', '6', '10100', '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10497', '1', '10101', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10498', '2', '10101', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, '投票报参数错误', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:48', '2016-12-12 20:14:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10499', '1', '10102', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10500', '2', '10102', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10501', '3', '10102', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10502', '4', '10102', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', null, null, '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10503', '5', '10102', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', null, null, '滑动页面 底层跟着移动，详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10504', '6', '10102', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', null, null, '无法播放视频', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10505', '7', '10102', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10506', '1', '10103', '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '通过', null, null, '首页页面错位', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:17:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10507', '2', '10103', '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', null, null, '无背景音乐', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:00:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10508', '3', '10103', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 20:39:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10509', '4', '10103', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:08');
INSERT INTO `zt_tp_exefunc` VALUES ('10510', '5', '10103', '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10511', '1', '10104', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10512', '2', '10104', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10513', '3', '10104', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10514', '4', '10104', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', null, null, '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10515', '5', '10104', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', null, null, '滑动，底层跟着移动详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10516', '6', '10104', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', null, null, '无法播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10517', '7', '10104', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10518', '1', '10105', '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '失败', null, null, '首页动画的加载顺序', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 13:02:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10519', '2', '10105', '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10520', '3', '10105', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10521', '4', '10105', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10522', '5', '10105', '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10523', '1', '10106', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:32:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10524', '2', '10106', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:33:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10525', '3', '10106', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:36:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10526', '4', '10106', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:38:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10527', '5', '10106', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10528', '6', '10106', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', null, null, '点击无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10529', '7', '10106', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10530', '1', '10107', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:48:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10531', '2', '10107', '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:49:14');
INSERT INTO `zt_tp_exefunc` VALUES ('10532', '3', '10107', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', null, null, '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10533', '4', '10107', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '失败', null, null, '没有验证码只能通过0000登录', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10534', '5', '10107', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', null, null, '弹出样式有问题；下来列表内容和样式覆盖', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:52:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10535', '6', '10107', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:53:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10536', '7', '10107', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-15 10:35:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10537', '1', '10108', '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:02:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10538', '2', '10108', '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10539', '3', '10108', '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10540', '4', '10108', '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '失败', null, null, '查询后，条件信息被置空，不支持模糊查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10541', '5', '10108', '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10542', '6', '10108', '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, null, '失败', null, null, '空信息被提交过来后，显示错列', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10543', '7', '10108', '10464', null, '微站CRM后台-商务合作-商务合作管理', ' 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10544', '1', '10109', '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '失败', null, null, '不显示提交人', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-15 10:34:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10545', '2', '10109', '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-15 10:34:14');
INSERT INTO `zt_tp_exefunc` VALUES ('10546', '3', '10109', '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-14 12:17:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10547', '4', '10109', '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-15 09:44:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10548', '1', '10110', '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 15:50:35');
INSERT INTO `zt_tp_exefunc` VALUES ('10549', '2', '10110', '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 15:50:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10550', '3', '10110', '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10551', '4', '10110', '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10552', '5', '10110', '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10553', '6', '10110', '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10554', '7', '10110', '10464', null, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10555', '1', '10111', '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, '', '失败', null, null, '提交者显示空白', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:06:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10556', '2', '10111', '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10557', '3', '10111', '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10558', '4', '10111', '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10559', '1', '10112', '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, '', '失败', null, null, '进入新增页面后，无法退回到刚才的列表页，只能通过导航来完成', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:30:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10560', '2', '10112', '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:27:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10561', '3', '10112', '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, '', '失败', null, null, '没有评价明细，无法操作', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:33:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10562', '4', '10112', '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:35:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10563', '5', '10112', '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:35:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10564', '6', '10112', '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, '', '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 15:24:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10565', '1', '10113', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:54:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10566', '2', '10113', '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:54:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10567', '3', '10113', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, '', '失败', null, null, '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10568', '4', '10113', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:53:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10569', '5', '10113', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, '131', '失败', null, null, '提交成功提示框，很快就消失了', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10570', '6', '10113', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10571', '7', '10113', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10572', '1', '10114', '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:56:52');
INSERT INTO `zt_tp_exefunc` VALUES ('10573', '2', '10114', '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:56:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10574', '3', '10114', '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:57:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10575', '4', '10114', '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:57:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10576', '5', '10114', '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:13:52');
INSERT INTO `zt_tp_exefunc` VALUES ('10577', '6', '10114', '10469', null, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:13:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10578', '7', '10114', '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:18:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10579', '1', '10115', '10470', null, '微站CRM后台-数据中心-获客列表', ' 获客列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:47:55', '2016-12-19 15:48:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10580', '2', '10115', '10471', null, '微站CRM后台-数据中心-获客列表', ' 查询筛选', null, null, null, '', '失败', null, null, '此功能缺失', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:47:55', '2016-12-19 15:49:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10581', '1', '10116', '10472', null, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:06', '2016-12-19 16:16:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10582', '2', '10116', '10473', null, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:06', '2016-12-19 16:16:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10583', '1', '10117', '10474', null, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', null, null, null, '', '失败', null, null, '只有未设置的列表，已设置的或所有的没有地方查', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:18:52');
INSERT INTO `zt_tp_exefunc` VALUES ('10584', '2', '10117', '10475', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:16:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10585', '3', '10117', '10476', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', null, null, null, '', '失败', null, null, '用下拉菜单悬着200个用户，以后还回更多，极容易选错；选错了，没有地方可以查到微信号帮给了谁', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:18:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10586', '4', '10117', '10477', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:18:08');
INSERT INTO `zt_tp_exefunc` VALUES ('10587', '1', '10118', '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:45:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10588', '2', '10118', '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:45:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10589', '3', '10118', '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10590', '4', '10118', '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10591', '5', '10118', '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10592', '6', '10118', '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, '39,40', '失败', null, null, '微信昵称有特殊符号；姓名下有优化线', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10593', '7', '10118', '10464', null, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10594', '1', '10119', '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:50:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10595', '2', '10119', '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:50:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10596', '3', '10119', '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:48:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10597', '4', '10119', '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:50:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10598', '1', '10120', '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, '142', '失败', null, null, '没有返回，只能通过导航跳出本页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 16:55:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10599', '2', '10120', '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 16:56:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10600', '3', '10120', '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, '144', '失败', null, null, '没有评价明细，无法操作', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:04:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10601', '4', '10120', '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 16:57:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10602', '5', '10120', '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:02:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10603', '6', '10120', '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, '143', '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:02:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10604', '1', '10121', '10470', null, '微站CRM后台-数据中心-获客列表', ' 获客列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:53', '2016-12-20 17:04:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10605', '2', '10121', '10471', null, '微站CRM后台-数据中心-获客列表', ' 查询筛选', null, null, null, '125', '失败', null, null, '此功能缺失', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:53', '2016-12-20 17:05:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10606', '1', '10122', '10472', null, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:58', '2016-12-20 17:05:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10607', '2', '10122', '10473', null, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:58', '2016-12-20 17:05:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10608', '1', '10123', '10474', null, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', null, null, null, '', '通过', null, null, '只有未设置的列表，已设置的或所有的没有地方查', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:15:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10609', '2', '10123', '10475', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:07:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10610', '3', '10123', '10476', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', null, null, null, '122', '失败', null, null, ' OpenID绑定时，选择人员用下拉菜单，公司暂时百十号人，根本不易查找，还特别容易出错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:08:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10611', '4', '10123', '10477', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', null, null, null, '', '通过', null, null, '解绑后，显示解绑前的名字', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:08:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10612', '1', '10124', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10613', '2', '10124', '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10614', '3', '10124', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, '', '通过', null, null, '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10615', '4', '10124', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10616', '5', '10124', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, '141', '失败', null, null, '网络慢的情况下，有重复提交的情况', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10617', '6', '10124', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10618', '7', '10124', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10619', '1', '10125', '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, '', '通过', null, null, '第一次加载时，先加载全部，再显示动画，顺序不对', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10620', '2', '10125', '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10621', '3', '10125', '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10622', '4', '10125', '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10623', '5', '10125', '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10624', '6', '10125', '10469', null, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10625', '7', '10125', '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:49');
INSERT INTO `zt_tp_exefunc` VALUES ('10626', '1', '10126', '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:27:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10627', '2', '10126', '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:27:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10628', '3', '10126', '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:28:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10629', '4', '10126', '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:28:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10630', '5', '10126', '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:08');
INSERT INTO `zt_tp_exefunc` VALUES ('10631', '6', '10126', '10463', null, '微站CRM后台-商务合作-商务合作管理', '商务合作列表', null, null, null, '', '失败', null, null, '微信昵称有特殊符号；姓名下有优化线', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10632', '7', '10126', '10464', null, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10633', '1', '10127', '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10634', '2', '10127', '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10635', '3', '10127', '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10636', '4', '10127', '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10637', '1', '10128', '10470', null, '微站CRM后台-数据中心-获客列表', ' 获客列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:25', '2016-12-22 11:42:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10638', '2', '10128', '10471', null, '微站CRM后台-数据中心-获客列表', ' 查询筛选', null, null, null, '', '失败', null, null, '此功能缺失', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:25', '2016-12-22 11:42:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10639', '1', '10129', '10472', null, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:38', '2016-12-22 11:43:35');
INSERT INTO `zt_tp_exefunc` VALUES ('10640', '2', '10129', '10473', null, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:38', '2016-12-22 11:43:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10641', '1', '10130', '10474', null, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', null, null, null, '', '失败', null, null, '只有未设置的列表，已设置的或所有的没有地方查;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:43:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10642', '2', '10130', '10475', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:43:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10643', '3', '10130', '10476', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', null, null, null, '', '失败', null, null, ' OpenID绑定时，选择人员用下拉菜单，公司暂时百十号人，根本不易查找，还特别容易出错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:44:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10644', '4', '10130', '10477', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:44:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10645', '1', '10131', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10646', '2', '10131', '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10647', '3', '10131', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:49');
INSERT INTO `zt_tp_exefunc` VALUES ('10648', '4', '10131', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10649', '5', '10131', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, '', '失败', null, null, '网络慢的情况下，有重复提交的情况', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:45:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10650', '6', '10131', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:45:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10651', '7', '10131', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:45:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10652', '1', '10132', '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:45:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10653', '2', '10132', '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:45:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10654', '3', '10132', '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:45:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10655', '4', '10132', '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10656', '5', '10132', '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10657', '6', '10132', '10469', null, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10658', '7', '10132', '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10659', '1', '10133', '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10660', '2', '10133', '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10661', '3', '10133', '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10662', '4', '10133', '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10663', '5', '10133', '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10664', '6', '10133', '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10665', '1', '10134', '10478', null, '微站CRM后台- 登录', ' 登录', null, null, null, '', '通过', null, null, ' ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-22 17:04:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10666', '2', '10134', '10479', null, '微站CRM后台- 登录', ' 注销', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:19:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10667', '3', '10134', '10480', null, '微站CRM后台- 登录', ' 修改密码', null, null, null, '', '通过', null, null, '用例完成', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:20:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10668', '4', '10134', '10481', null, '微站CRM后台- 登录', ' 切换平台', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:20:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10669', '1', '10135', '10562', null, '微网站（用户）- 项目活动-生活体验', ' 向往国家', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:23:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10670', '2', '10135', '10563', null, '微网站（用户）- 项目活动-生活体验', ' 向往城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:23:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10671', '3', '10135', '10564', null, '微网站（用户）- 项目活动-生活体验', ' 体验分类列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:24:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10672', '4', '10135', '10565', null, '微网站（用户）- 项目活动-生活体验', ' 体验详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:24:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10673', '1', '10136', '10419', null, '微网站（用户）-项目活动-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10674', '2', '10136', '10420', null, '微网站（用户）-项目活动-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10675', '2', '10136', '10590', null, '微网站（用户）-项目活动-公司名片', '项目详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10676', '3', '10136', '10421', null, '微网站（用户）-项目活动-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10677', '4', '10136', '10422', null, '微网站（用户）-项目活动-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10678', '5', '10136', '10423', null, '微网站（用户）-项目活动-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10679', '6', '10136', '10469', null, '微网站（用户）-项目活动-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:38:07');
INSERT INTO `zt_tp_exefunc` VALUES ('10680', '7', '10136', '10424', null, '微网站（用户）-项目活动-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:38:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10681', '1', '10137', '10482', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按国家地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10682', '2', '10137', '10483', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目类型', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:07');
INSERT INTO `zt_tp_exefunc` VALUES ('10683', '3', '10137', '10484', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10684', '4', '10137', '10485', null, '微站CRM后台- 项目资料库-项目管理', ' 快速查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10685', '5', '10137', '10486', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-上线日期范围', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:27:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10686', '6', '10137', '10487', null, '微站CRM后台- 项目资料库-项目管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10687', '7', '10137', '10488', null, '微站CRM后台- 项目资料库-项目管理', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10688', '8', '10137', '10489', null, '微站CRM后台- 项目资料库-项目管理', '项目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-21 17:10:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10689', '9', '10137', '10490', null, '微站CRM后台- 项目资料库-项目管理', ' 扩展推荐', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:45:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10690', '10', '10137', '10491', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-21 17:10:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10691', '11', '10137', '10492', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-暂停', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 10:02:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10692', '12', '10137', '10493', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-发布（在编辑页面里）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:24:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10693', '1', '10138', '10494', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:23');
INSERT INTO `zt_tp_exefunc` VALUES ('10694', '2', '10138', '10495', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10695', '3', '10138', '10496', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-导入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10696', '4', '10138', '10497', null, '微站CRM后台- 项目管理-申请流程', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10697', '5', '10138', '10498', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10698', '6', '10138', '10499', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10699', '1', '10139', '10506', null, '微站CRM后台- 项目管理-材料清单', ' 材料清单列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10700', '2', '10139', '10507', null, '微站CRM后台- 项目管理-材料清单', ' 材料-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10701', '3', '10139', '10508', null, '微站CRM后台- 项目管理-材料清单', ' 材料-导入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10702', '4', '10139', '10509', null, '微站CRM后台- 项目管理-材料清单', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10703', '5', '10139', '10510', null, '微站CRM后台- 项目管理-材料清单', ' 材料-样例', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10704', '6', '10139', '10511', null, '微站CRM后台- 项目管理-材料清单', ' 材料-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10705', '7', '10139', '10512', null, '微站CRM后台- 项目管理-材料清单', ' 材料-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:05:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10706', '1', '10140', '10513', null, '微站CRM后台- 项目-图片', ' 图片-列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10707', '2', '10140', '10514', null, '微站CRM后台- 项目-图片', ' 项目图片-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10708', '3', '10140', '10515', null, '微站CRM后台- 项目-图片', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10709', '4', '10140', '10516', null, '微站CRM后台- 项目-图片', ' 项目图片-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10710', '5', '10140', '10517', null, '微站CRM后台- 项目-图片', ' 项目图片-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:35');
INSERT INTO `zt_tp_exefunc` VALUES ('10711', '1', '10141', '10518', null, '微站CRM后台-项目资料库-移民评估', ' 问题-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10712', '2', '10141', '10519', null, '微站CRM后台-项目资料库-移民评估', ' 问题列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10713', '3', '10141', '10520', null, '微站CRM后台-项目资料库-移民评估', ' 问题编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10714', '4', '10141', '10521', null, '微站CRM后台-项目资料库-移民评估', ' 问题-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10715', '5', '10141', '10522', null, '微站CRM后台-项目资料库-移民评估', ' 权重-保存', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:50:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10716', '6', '10141', '10523', null, '微站CRM后台-项目资料库-移民评估', ' 问卷-发布', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:50:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10717', '1', '10142', '10536', null, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 14:21:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10718', '2', '10142', '10537', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 14:21:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10719', '3', '10142', '10538', null, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:49');
INSERT INTO `zt_tp_exefunc` VALUES ('10720', '4', '10142', '10539', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10721', '5', '10142', '10540', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10722', '6', '10142', '10541', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10723', '1', '10143', '10542', null, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10724', '2', '10143', '10543', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10725', '3', '10143', '10544', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10726', '4', '10143', '10545', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10727', '5', '10143', '10546', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10728', '6', '10143', '10547', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10729', '7', '10143', '10548', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10730', '8', '10143', '10549', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:21:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10731', '9', '10143', '10550', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:21:04');
INSERT INTO `zt_tp_exefunc` VALUES ('10732', '1', '10144', '10524', null, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 16:49:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10733', '2', '10144', '10525', null, '微站CRM后台- 内容发布-活动管理', ' 活动列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 16:54:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10734', '3', '10144', '10526', null, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10735', '4', '10144', '10527', null, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10736', '5', '10144', '10528', null, '微站CRM后台- 内容发布-活动管理', ' 更新排序', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10737', '6', '10144', '10529', null, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10738', '7', '10144', '10530', null, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:23');
INSERT INTO `zt_tp_exefunc` VALUES ('10739', '8', '10144', '10531', null, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10740', '9', '10144', '10532', null, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10741', '10', '10144', '10533', null, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10742', '1', '10145', '10534', null, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:20', '2016-12-23 17:12:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10743', '2', '10145', '10535', null, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:20', '2016-12-23 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10744', '1', '10146', '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:26:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10745', '2', '10146', '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:26:23');
INSERT INTO `zt_tp_exefunc` VALUES ('10746', '3', '10146', '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:28:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10747', '4', '10146', '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-21 17:11:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10748', '5', '10146', '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:27:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10749', '6', '10146', '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:28:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10750', '1', '10147', '10566', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按国家名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10751', '2', '10147', '10567', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按地理分类', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10752', '3', '10147', '10568', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10753', '4', '10147', '10569', null, '微站CRM后台- 项目资料库-国家管理', ' 国家列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10754', '5', '10147', '10570', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10755', '6', '10147', '10571', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10756', '7', '10147', '10572', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10757', '8', '10147', '10573', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10758', '9', '10147', '10574', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10759', '10', '10147', '10575', null, '微站CRM后台- 项目资料库-国家管理', ' 国家详情-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10760', '1', '10148', '10576', null, '微站CRM后台- 国家管理-移民城市', ' 城市-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10761', '2', '10148', '10577', null, '微站CRM后台- 国家管理-移民城市', ' 城市列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10762', '3', '10148', '10578', null, '微站CRM后台- 国家管理-移民城市', ' 城市-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10763', '4', '10148', '10579', null, '微站CRM后台- 国家管理-移民城市', ' 城市-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10764', '5', '10148', '10580', null, '微站CRM后台- 国家管理-移民城市', ' 上传图片', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10765', '1', '10149', '10581', null, '微站CRM后台- 国家管理-移民政策', ' 政策-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10766', '2', '10149', '10582', null, '微站CRM后台- 国家管理-移民政策', ' 政策列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10767', '3', '10149', '10583', null, '微站CRM后台- 国家管理-移民政策', ' 政策-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10768', '4', '10149', '10584', null, '微站CRM后台- 国家管理-移民政策', ' 政策-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10769', '1', '10150', '10560', null, '微网站（用户）-项目活动- 专享活动', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:42', '2016-12-21 17:12:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10770', '2', '10150', '10561', null, '微网站（用户）-项目活动- 专享活动', ' 我要报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:42', '2016-12-21 17:12:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10771', '1', '10151', '10588', null, '微网站（用户）- 登录', ' 获取验证码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:51', '2016-12-21 17:12:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10772', '2', '10151', '10589', null, '微网站（用户）- 登录', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:51', '2016-12-21 17:12:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10773', '1', '10152', '10557', null, '微网站（用户）-首页', ' 移民评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10774', '2', '10152', '10585', null, '微网站（用户）-首页', '专属管家入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10775', '3', '10152', '10586', null, '微网站（用户）-首页', ' 专享活动入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10776', '4', '10152', '10587', null, '微网站（用户）-首页', ' 生活体验入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10777', '1', '10153', '10558', null, '微网站（用户）- 首页-移民评估', ' 填写评估问题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:41', '2016-12-21 17:13:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10778', '2', '10153', '10559', null, '微网站（用户）- 首页-移民评估', ' 展示评估结果', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:41', '2016-12-21 17:13:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10779', '1', '10154', '10560', null, '微网站（用户）-项目活动- 专享活动', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:46', '2016-12-21 17:13:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10780', '2', '10154', '10561', null, '微网站（用户）-项目活动- 专享活动', ' 我要报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:46', '2016-12-21 17:13:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10781', '1', '10155', '10551', null, '微网站（用户）-项目活动- 移民项目', ' 项目简介', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10782', '2', '10155', '10552', null, '微网站（用户）-项目活动- 移民项目', ' 项目优势', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10783', '3', '10155', '10553', null, '微网站（用户）-项目活动- 移民项目', ' 申请条件', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10784', '4', '10155', '10554', null, '微网站（用户）-项目活动- 移民项目', ' 办理流程（周期）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10785', '5', '10155', '10555', null, '微网站（用户）-项目活动- 移民项目', ' 项目预约', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10786', '6', '10155', '10556', null, '微网站（用户）-项目活动- 移民项目', ' 评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10787', '1', '10156', '10588', null, '微网站（用户）- 登录', ' 获取验证码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:04', '2016-12-22 09:35:04');
INSERT INTO `zt_tp_exefunc` VALUES ('10788', '2', '10156', '10589', null, '微网站（用户）- 登录', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:04', '2016-12-22 09:35:04');
INSERT INTO `zt_tp_exefunc` VALUES ('10789', '1', '10157', '10401', null, '微网站（用户）-项目活动-商务合作', ' 简介', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10790', '2', '10157', '10447', null, '微网站（用户）-项目活动-商务合作', ' 拨打400电话', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10791', '3', '10157', '10402', null, '微网站（用户）-项目活动-商务合作', ' 获取验证码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10792', '4', '10157', '10403', null, '微网站（用户）-项目活动-商务合作', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10793', '5', '10157', '10404', null, '微网站（用户）-项目活动-商务合作', ' 提交信息', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10794', '6', '10157', '10405', null, '微网站（用户）-项目活动-商务合作', ' 查询合作状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10795', '7', '10157', '10406', null, '微网站（用户）-项目活动-商务合作', ' 驳回后重提', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10796', '1', '10158', '10566', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按国家名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10797', '2', '10158', '10567', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按地理分类', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10798', '3', '10158', '10568', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10799', '4', '10158', '10569', null, '微站CRM后台- 项目资料库-国家管理', ' 国家列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10800', '5', '10158', '10570', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10801', '6', '10158', '10571', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10802', '7', '10158', '10572', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10803', '8', '10158', '10573', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10804', '9', '10158', '10574', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10805', '10', '10158', '10575', null, '微站CRM后台- 项目资料库-国家管理', ' 国家详情-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10806', '1', '10159', '10576', null, '微站CRM后台- 国家管理-移民城市', ' 城市-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10807', '2', '10159', '10577', null, '微站CRM后台- 国家管理-移民城市', ' 城市列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10808', '3', '10159', '10578', null, '微站CRM后台- 国家管理-移民城市', ' 城市-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10809', '4', '10159', '10579', null, '微站CRM后台- 国家管理-移民城市', ' 城市-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10810', '5', '10159', '10580', null, '微站CRM后台- 国家管理-移民城市', ' 上传图片', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10811', '1', '10160', '10581', null, '微站CRM后台- 国家管理-移民政策', ' 政策-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10812', '2', '10160', '10582', null, '微站CRM后台- 国家管理-移民政策', ' 政策列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10813', '3', '10160', '10583', null, '微站CRM后台- 国家管理-移民政策', ' 政策-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10814', '4', '10160', '10584', null, '微站CRM后台- 国家管理-移民政策', ' 政策-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10815', '1', '10161', '10478', null, '微站CRM后台- 登录', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10816', '2', '10161', '10479', null, '微站CRM后台- 登录', ' 注销', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10817', '3', '10161', '10480', null, '微站CRM后台- 登录', ' 修改密码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10818', '4', '10161', '10481', null, '微站CRM后台- 登录', ' 切换平台', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10819', '1', '10162', '10560', null, '微网站（用户）-项目活动- 专享活动', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:45', '2016-12-22 09:36:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10820', '2', '10162', '10561', null, '微网站（用户）-项目活动- 专享活动', ' 我要报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:45', '2016-12-22 09:36:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10821', '1', '10163', '10536', null, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10822', '2', '10163', '10537', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10823', '3', '10163', '10538', null, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10824', '4', '10163', '10539', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10825', '5', '10163', '10540', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10826', '6', '10163', '10541', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10827', '1', '10164', '10542', null, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10828', '2', '10164', '10543', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10829', '3', '10164', '10544', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10830', '4', '10164', '10545', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10831', '5', '10164', '10546', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10832', '6', '10164', '10547', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10833', '7', '10164', '10548', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10834', '8', '10164', '10549', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10835', '9', '10164', '10550', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10836', '1', '10165', '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10837', '2', '10165', '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10838', '3', '10165', '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10839', '4', '10165', '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10840', '5', '10165', '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10841', '6', '10165', '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10842', '1', '10166', '10524', null, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10843', '2', '10166', '10525', null, '微站CRM后台- 内容发布-活动管理', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10844', '3', '10166', '10526', null, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10845', '4', '10166', '10527', null, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10846', '5', '10166', '10528', null, '微站CRM后台- 内容发布-活动管理', ' 更新排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10847', '6', '10166', '10529', null, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10848', '7', '10166', '10530', null, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10849', '8', '10166', '10531', null, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10850', '9', '10166', '10532', null, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10851', '10', '10166', '10533', null, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10852', '1', '10167', '10534', null, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:24', '2016-12-22 09:38:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10853', '2', '10167', '10535', null, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:24', '2016-12-22 09:38:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10854', '1', '10168', '10562', null, '微网站（用户）- 项目活动-生活体验', ' 向往国家', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10855', '2', '10168', '10563', null, '微网站（用户）- 项目活动-生活体验', ' 向往城市', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10856', '3', '10168', '10564', null, '微网站（用户）- 项目活动-生活体验', ' 体验分类列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10857', '4', '10168', '10565', null, '微网站（用户）- 项目活动-生活体验', ' 体验详情', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10858', '1', '10169', '10536', null, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10859', '2', '10169', '10537', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10860', '3', '10169', '10538', null, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10861', '4', '10169', '10539', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10862', '5', '10169', '10540', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10863', '6', '10169', '10541', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10864', '1', '10170', '10542', null, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10865', '2', '10170', '10543', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10866', '3', '10170', '10544', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10867', '4', '10170', '10545', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10868', '5', '10170', '10546', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10869', '6', '10170', '10547', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10870', '7', '10170', '10548', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10871', '8', '10170', '10549', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10872', '9', '10170', '10550', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10873', '1', '10171', '10524', null, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10874', '2', '10171', '10525', null, '微站CRM后台- 内容发布-活动管理', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10875', '3', '10171', '10526', null, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10876', '4', '10171', '10527', null, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10877', '5', '10171', '10528', null, '微站CRM后台- 内容发布-活动管理', ' 更新排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10878', '6', '10171', '10529', null, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10879', '7', '10171', '10530', null, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10880', '8', '10171', '10531', null, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10881', '9', '10171', '10532', null, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10882', '10', '10171', '10533', null, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10883', '1', '10172', '10534', null, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:19', '2016-12-22 09:40:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10884', '2', '10172', '10535', null, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:19', '2016-12-22 09:40:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10885', '1', '10173', '10551', null, '微网站（用户）-项目活动- 移民项目', ' 项目简介', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10886', '2', '10173', '10552', null, '微网站（用户）-项目活动- 移民项目', ' 项目优势', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10887', '3', '10173', '10553', null, '微网站（用户）-项目活动- 移民项目', ' 申请条件', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10888', '4', '10173', '10554', null, '微网站（用户）-项目活动- 移民项目', ' 办理流程（周期）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10889', '5', '10173', '10555', null, '微网站（用户）-项目活动- 移民项目', ' 项目预约', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10890', '6', '10173', '10556', null, '微网站（用户）-项目活动- 移民项目', ' 评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10891', '1', '10174', '10419', null, '微网站（用户）-项目活动-公司名片', ' 公司介绍', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10892', '2', '10174', '10420', null, '微网站（用户）-项目活动-公司名片', ' 重点项目', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10893', '2', '10174', '10590', null, '微网站（用户）-项目活动-公司名片', '项目详情', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10894', '3', '10174', '10421', null, '微网站（用户）-项目活动-公司名片', ' 名片信息', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10895', '4', '10174', '10422', null, '微网站（用户）-项目活动-公司名片', ' 公司名片分享', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10896', '5', '10174', '10423', null, '微网站（用户）-项目活动-公司名片', ' 报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10897', '6', '10174', '10469', null, '微网站（用户）-项目活动-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10898', '7', '10174', '10424', null, '微网站（用户）-项目活动-公司名片', ' 数据统计', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10899', '1', '10175', '10482', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按国家地区', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10900', '2', '10175', '10483', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目类型', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10901', '3', '10175', '10484', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10902', '4', '10175', '10485', null, '微站CRM后台- 项目资料库-项目管理', ' 快速查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10903', '5', '10175', '10486', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-上线日期范围', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10904', '6', '10175', '10487', null, '微站CRM后台- 项目资料库-项目管理', ' 组合查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10905', '7', '10175', '10488', null, '微站CRM后台- 项目资料库-项目管理', ' 项目列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10906', '8', '10175', '10489', null, '微站CRM后台- 项目资料库-项目管理', '项目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10907', '9', '10175', '10490', null, '微站CRM后台- 项目资料库-项目管理', ' 扩展推荐', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10908', '10', '10175', '10491', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10909', '11', '10175', '10492', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-暂停', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10910', '12', '10175', '10493', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-发布（在编辑页面里）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10911', '1', '10176', '10494', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10912', '2', '10176', '10495', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10913', '3', '10176', '10496', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-导入', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10914', '4', '10176', '10497', null, '微站CRM后台- 项目管理-申请流程', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10915', '5', '10176', '10498', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10916', '6', '10176', '10499', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10917', '1', '10177', '10500', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10918', '2', '10177', '10501', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10919', '3', '10177', '10502', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-导入', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10920', '4', '10177', '10503', null, '微站CRM后台- 项目管理-费用详情', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10921', '5', '10177', '10504', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10922', '6', '10177', '10505', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10923', '1', '10178', '10506', null, '微站CRM后台- 项目管理-材料清单', ' 材料清单列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10924', '2', '10178', '10507', null, '微站CRM后台- 项目管理-材料清单', ' 材料-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10925', '3', '10178', '10508', null, '微站CRM后台- 项目管理-材料清单', ' 材料-导入', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10926', '4', '10178', '10509', null, '微站CRM后台- 项目管理-材料清单', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10927', '5', '10178', '10510', null, '微站CRM后台- 项目管理-材料清单', ' 材料-样例', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10928', '6', '10178', '10511', null, '微站CRM后台- 项目管理-材料清单', ' 材料-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10929', '7', '10178', '10512', null, '微站CRM后台- 项目管理-材料清单', ' 材料-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10930', '1', '10179', '10513', null, '微站CRM后台- 项目-图片', ' 图片-列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10931', '2', '10179', '10514', null, '微站CRM后台- 项目-图片', ' 项目图片-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10932', '3', '10179', '10515', null, '微站CRM后台- 项目-图片', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10933', '4', '10179', '10516', null, '微站CRM后台- 项目-图片', ' 项目图片-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10934', '5', '10179', '10517', null, '微站CRM后台- 项目-图片', ' 项目图片-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10935', '1', '10180', '10518', null, '微站CRM后台-项目资料库-移民评估', ' 问题-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10936', '2', '10180', '10519', null, '微站CRM后台-项目资料库-移民评估', ' 问题列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10937', '3', '10180', '10520', null, '微站CRM后台-项目资料库-移民评估', ' 问题编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10938', '4', '10180', '10521', null, '微站CRM后台-项目资料库-移民评估', ' 问题-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10939', '5', '10180', '10522', null, '微站CRM后台-项目资料库-移民评估', ' 权重-保存', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10940', '6', '10180', '10523', null, '微站CRM后台-项目资料库-移民评估', ' 问卷-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10941', '1', '10181', '10558', null, '微网站（用户）- 首页-移民评估', ' 填写评估问题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:47', '2016-12-22 10:34:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10942', '2', '10181', '10559', null, '微网站（用户）- 首页-移民评估', ' 展示评估结果', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:47', '2016-12-22 10:34:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10943', '1', '10182', '10557', null, '微网站（用户）-首页', ' 移民评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10944', '2', '10182', '10585', null, '微网站（用户）-首页', '专属管家入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10945', '3', '10182', '10586', null, '微网站（用户）-首页', ' 专享活动入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10946', '4', '10182', '10587', null, '微网站（用户）-首页', ' 生活体验入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10947', '1', '10183', '10500', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:14');
INSERT INTO `zt_tp_exefunc` VALUES ('10948', '2', '10183', '10501', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10949', '3', '10183', '10502', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-导入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10950', '4', '10183', '10503', null, '微站CRM后台- 项目管理-费用详情', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10951', '5', '10183', '10504', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10952', '6', '10183', '10505', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:24');

-- ----------------------------
-- Table structure for `zt_tp_exescene`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_exescene`;
CREATE TABLE `zt_tp_exescene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `stagetesterid` int(11) DEFAULT NULL,
  `pathid` int(11) DEFAULT '0',
  `sceneid` int(11) DEFAULT '0',
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `results` varchar(5) DEFAULT '未测试',
  `flow` varchar(300) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `isrunning` int(11) DEFAULT NULL,
  `testtime` timestamp NULL DEFAULT NULL,
  `runningip` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_exescene
-- ----------------------------
INSERT INTO `zt_tp_exescene` VALUES ('10087', '1', 'M', '10045', '10163', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-列表及介绍', '通过', '“微网站（用户）- 专属管家-列表及介绍“下所有功能点', null, null, '2016-12-09 11:15:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:20');
INSERT INTO `zt_tp_exescene` VALUES ('10088', '1', 'M', '10046', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '失败', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, '2016-12-09 11:53:08', '192.168.6.142', '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:53:08');
INSERT INTO `zt_tp_exescene` VALUES ('10089', '2', 'M', '10045', '10164', '0', '2', '【功能】', '默认', '微网站（用户）- 专享活动', '未测试', '“微网站（用户）- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:18', '2016-12-09 11:16:18');
INSERT INTO `zt_tp_exescene` VALUES ('10090', '3', 'M', '10045', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '未测试', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `zt_tp_exescene` VALUES ('10096', '3', 'M', '10048', '0', '10033', '3', '关注用户', '默认', '在公众订阅号，直接打开并提交报名', '通过', '微信号个人中心->公司名片->提交报名', '', null, '2016-12-12 15:24:07', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:24', '2016-12-12 16:23:28');
INSERT INTO `zt_tp_exescene` VALUES ('10097', '4', 'M', '10048', '0', '10034', '2', '专属管家', '未开启个人名片时', '分享公司名片', '通过', '', null, null, '2016-12-12 15:23:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:27', '2016-12-12 16:23:28');
INSERT INTO `zt_tp_exescene` VALUES ('10098', '5', 'M', '10048', '0', '10035', '2', '专属管家', '开启个人名片', '分享公司名片-分享个人名片', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:31', '2016-12-12 16:23:29');
INSERT INTO `zt_tp_exescene` VALUES ('10094', '1', 'M', '10049', '0', '10033', '3', '默认', '默认', 'asd', '未测试', 'asd', '', null, null, null, '魏斌', '魏斌', '2016-12-09 11:51:25', '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exescene` VALUES ('10095', '2', 'M', '10048', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-12 15:16:44', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 16:23:28');
INSERT INTO `zt_tp_exescene` VALUES ('10099', '6', 'M', '10048', '0', '10036', '2', '关注用户', '在管家分享后', '管家名片填写报名信息', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:34', '2016-12-12 16:23:29');
INSERT INTO `zt_tp_exescene` VALUES ('10100', '1', 'M', '10048', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '失败', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-12 17:05:31', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 17:04:40');
INSERT INTO `zt_tp_exescene` VALUES ('10101', '1', 'M', '10051', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 20:15:10', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:19');
INSERT INTO `zt_tp_exescene` VALUES ('10102', '2', 'M', '10051', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:09:22', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 21:08:31');
INSERT INTO `zt_tp_exescene` VALUES ('10103', '1', 'M', '10052', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '失败', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 21:02:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:29');
INSERT INTO `zt_tp_exescene` VALUES ('10104', '2', 'M', '10052', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:07:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:48', '2016-12-12 21:06:23');
INSERT INTO `zt_tp_exescene` VALUES ('10105', '1', 'M', '10053', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-13 13:00:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:59:17');
INSERT INTO `zt_tp_exescene` VALUES ('10106', '2', 'M', '10053', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-13 16:41:11', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:17', '2016-12-13 16:40:21');
INSERT INTO `zt_tp_exescene` VALUES ('10107', '1', 'M', '10054', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-14 12:17:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 12:16:56');
INSERT INTO `zt_tp_exescene` VALUES ('10108', '2', 'M', '10054', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '失败', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-14 12:17:03', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:47:46', '2016-12-14 12:16:18');
INSERT INTO `zt_tp_exescene` VALUES ('10109', '3', 'M', '10054', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '失败', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-15 10:34:52', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-15 10:34:52');
INSERT INTO `zt_tp_exescene` VALUES ('10110', '1', 'M', '10055', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-19 16:05:45', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:45');
INSERT INTO `zt_tp_exescene` VALUES ('10111', '2', 'M', '10055', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-19 16:16:22', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:22');
INSERT INTO `zt_tp_exescene` VALUES ('10112', '3', 'M', '10055', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, '2016-12-19 16:35:26', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:35:26');
INSERT INTO `zt_tp_exescene` VALUES ('10113', '4', 'M', '10055', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-19 15:18:23', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 15:18:23');
INSERT INTO `zt_tp_exescene` VALUES ('10114', '5', 'M', '10055', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '通过', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-19 15:18:14', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:18:14');
INSERT INTO `zt_tp_exescene` VALUES ('10115', '6', 'M', '10055', '10224', '0', '2', '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', null, null, '2016-12-19 15:49:04', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 15:47:55', '2016-12-19 15:49:04');
INSERT INTO `zt_tp_exescene` VALUES ('10116', '7', 'M', '10055', '10225', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '通过', '“微站CRM后台- 数据中心-名片流量“下所有功能点', null, null, '2016-12-19 16:16:44', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 15:48:06', '2016-12-19 16:16:44');
INSERT INTO `zt_tp_exescene` VALUES ('10117', '8', 'M', '10055', '10226', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '失败', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', null, null, '2016-12-19 16:19:02', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:19:02');
INSERT INTO `zt_tp_exescene` VALUES ('10118', '1', 'M', '10056', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-20 16:47:59', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:59');
INSERT INTO `zt_tp_exescene` VALUES ('10119', '2', 'M', '10056', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-20 16:55:17', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:55:17');
INSERT INTO `zt_tp_exescene` VALUES ('10120', '3', 'M', '10056', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, '2016-12-20 17:04:20', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:04:20');
INSERT INTO `zt_tp_exescene` VALUES ('10121', '4', 'M', '10056', '10224', '0', '2', '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', null, null, '2016-12-20 17:05:31', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:53', '2016-12-20 17:05:31');
INSERT INTO `zt_tp_exescene` VALUES ('10122', '5', 'M', '10056', '10225', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '通过', '“微站CRM后台- 数据中心-名片流量“下所有功能点', null, null, '2016-12-20 17:05:48', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:58', '2016-12-20 17:05:48');
INSERT INTO `zt_tp_exescene` VALUES ('10123', '6', 'M', '10056', '10226', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '通过', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', null, null, '2016-12-20 17:09:02', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:09:02');
INSERT INTO `zt_tp_exescene` VALUES ('10124', '7', 'M', '10056', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-20 17:11:55', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:55');
INSERT INTO `zt_tp_exescene` VALUES ('10125', '8', 'M', '10056', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '通过', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-20 17:12:52', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:52');
INSERT INTO `zt_tp_exescene` VALUES ('10126', '1', 'M', '10057', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-22 11:29:39', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:39');
INSERT INTO `zt_tp_exescene` VALUES ('10127', '2', 'M', '10057', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-22 11:30:38', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:38');
INSERT INTO `zt_tp_exescene` VALUES ('10128', '3', 'M', '10057', '10224', '0', '2', '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', null, null, '2016-12-22 11:42:59', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:21:25', '2016-12-22 11:42:59');
INSERT INTO `zt_tp_exescene` VALUES ('10129', '4', 'M', '10057', '10225', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '未测试', '“微站CRM后台- 数据中心-名片流量“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:38', '2016-12-21 09:21:38');
INSERT INTO `zt_tp_exescene` VALUES ('10130', '5', 'M', '10057', '10226', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '未测试', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-21 09:21:42');
INSERT INTO `zt_tp_exescene` VALUES ('10131', '6', 'M', '10057', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '未测试', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-21 09:21:51');
INSERT INTO `zt_tp_exescene` VALUES ('10132', '7', 'M', '10057', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '未测试', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-21 09:21:56');
INSERT INTO `zt_tp_exescene` VALUES ('10133', '8', 'M', '10057', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '未测试', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exescene` VALUES ('10134', '1', 'M', '10058', '10141', '0', '2', '【功能】', '默认', '微站CRM后台- 登录', '通过', '“微站CRM后台- 登录“下所有功能点', null, null, '2016-12-21 18:20:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:20:08');
INSERT INTO `zt_tp_exescene` VALUES ('10135', '2', 'M', '10058', '10171', '0', '2', '【功能】', '默认', '微网站（用户）- 项目活动-生活体验', '通过', '“微网站（用户）- 项目活动-生活体验“下所有功能点', null, null, '2016-12-22 17:24:12', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10136', '3', 'M', '10058', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动-公司名片', '通过', '“微网站（用户）-项目活动-公司名片“下所有功能点', null, null, '2016-12-22 17:38:14', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10137', '4', 'M', '10058', '10176', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-项目管理', '通过', '“微站CRM后台- 项目资料库-项目管理“下所有功能点', null, null, '2016-12-23 11:11:01', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 11:11:01');
INSERT INTO `zt_tp_exescene` VALUES ('10138', '5', 'M', '10058', '10227', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-申请流程', '通过', '“微站CRM后台- 项目管理-申请流程“下所有功能点', null, null, '2016-12-23 10:49:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10139', '6', 'M', '10058', '10229', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-材料清单', '通过', '“微站CRM后台- 项目管理-材料清单“下所有功能点', null, null, '2016-12-23 11:04:39', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10140', '8', 'M', '10058', '10230', '0', '2', '【功能】', '默认', '微站CRM后台- 项目-图片', '通过', '“微站CRM后台- 项目-图片“下所有功能点', null, null, '2016-12-23 14:05:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:30', '2016-12-23 14:05:25');
INSERT INTO `zt_tp_exescene` VALUES ('10141', '9', 'M', '10058', '10177', '0', '2', '【功能】', '默认', '微站CRM后台-项目资料库-移民评估', '通过', '“微站CRM后台-项目资料库-移民评估“下所有功能点', null, null, '2016-12-23 17:49:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:42');
INSERT INTO `zt_tp_exescene` VALUES ('10142', '11', 'M', '10058', '10144', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '通过', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', null, null, '2016-12-23 15:44:45', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:45');
INSERT INTO `zt_tp_exescene` VALUES ('10143', '12', 'M', '10058', '10179', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '通过', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', null, null, '2016-12-23 16:20:38', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:38');
INSERT INTO `zt_tp_exescene` VALUES ('10144', '13', 'M', '10058', '10180', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '通过', '“微站CRM后台- 内容发布-活动管理“下所有功能点', null, null, '2016-12-23 17:08:37', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:37');
INSERT INTO `zt_tp_exescene` VALUES ('10145', '10', 'M', '10058', '10231', '0', '2', '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '通过', '“微站CRM后台- 活动管理-报名人数“下所有功能点', null, null, '2016-12-23 17:11:58', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:20', '2016-12-23 17:11:58');
INSERT INTO `zt_tp_exescene` VALUES ('10146', '14', 'M', '10058', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, '2016-12-23 17:26:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:26:25');
INSERT INTO `zt_tp_exescene` VALUES ('10147', '7', 'M', '10059', '10143', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-国家管理', '未测试', '“微站CRM后台- 项目资料库-国家管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10148', '8', 'M', '10059', '10232', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民城市', '未测试', '“微站CRM后台- 国家管理-移民城市“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10149', '9', 'M', '10059', '10233', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民政策', '未测试', '“微站CRM后台- 国家管理-移民政策“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10150', '6', 'M', '10059', '10164', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:42', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10151', '1', 'M', '10059', '10234', '0', '2', '【功能】', '默认', '微网站（用户）- 登录', '未测试', '“微网站（用户）- 登录“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:51', '2016-12-21 17:12:51');
INSERT INTO `zt_tp_exescene` VALUES ('10152', '2', 'M', '10059', '10161', '0', '2', '【功能】', '默认', '微网站（用户）-首页', '未测试', '“微网站（用户）-首页“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10153', '3', 'M', '10059', '10162', '0', '2', '【功能】', '默认', '微网站（用户）- 首页-移民评估', '未测试', '“微网站（用户）- 首页-移民评估“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:41', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10154', '4', 'M', '10059', '10164', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:46', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10155', '5', 'M', '10059', '10168', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 移民项目', '未测试', '“微网站（用户）-项目活动- 移民项目“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10156', '1', 'M', '10061', '10234', '0', '2', '【功能】', '默认', '微网站（用户）- 登录', '未测试', '“微网站（用户）- 登录“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:04', '2016-12-22 09:35:04');
INSERT INTO `zt_tp_exescene` VALUES ('10157', '2', 'M', '10061', '10173', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动-商务合作', '未测试', '“微网站（用户）-项目活动-商务合作“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exescene` VALUES ('10158', '3', 'M', '10061', '10143', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-国家管理', '未测试', '“微站CRM后台- 项目资料库-国家管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exescene` VALUES ('10159', '4', 'M', '10061', '10232', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民城市', '未测试', '“微站CRM后台- 国家管理-移民城市“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exescene` VALUES ('10160', '5', 'M', '10061', '10233', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民政策', '未测试', '“微站CRM后台- 国家管理-移民政策“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exescene` VALUES ('10161', '6', 'M', '10061', '10141', '0', '2', '【功能】', '默认', '微站CRM后台- 登录', '未测试', '“微站CRM后台- 登录“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exescene` VALUES ('10162', '1', 'M', '10063', '10164', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:45', '2016-12-22 09:36:45');
INSERT INTO `zt_tp_exescene` VALUES ('10163', '2', 'M', '10063', '10144', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '未测试', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exescene` VALUES ('10164', '3', 'M', '10063', '10179', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '未测试', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exescene` VALUES ('10165', '4', 'M', '10063', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '未测试', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exescene` VALUES ('10166', '5', 'M', '10063', '10180', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '未测试', '“微站CRM后台- 内容发布-活动管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exescene` VALUES ('10167', '6', 'M', '10063', '10231', '0', '2', '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '未测试', '“微站CRM后台- 活动管理-报名人数“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:24', '2016-12-22 09:38:24');
INSERT INTO `zt_tp_exescene` VALUES ('10168', '1', 'M', '10062', '10171', '0', '2', '【功能】', '默认', '微网站（用户）- 项目活动-生活体验', '未测试', '“微网站（用户）- 项目活动-生活体验“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exescene` VALUES ('10169', '2', 'M', '10062', '10144', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '未测试', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exescene` VALUES ('10170', '3', 'M', '10062', '10179', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '未测试', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exescene` VALUES ('10171', '4', 'M', '10062', '10180', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '未测试', '“微站CRM后台- 内容发布-活动管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exescene` VALUES ('10172', '5', 'M', '10062', '10231', '0', '2', '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '未测试', '“微站CRM后台- 活动管理-报名人数“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:19', '2016-12-22 09:40:19');
INSERT INTO `zt_tp_exescene` VALUES ('10173', '1', 'M', '10060', '10168', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 移民项目', '未测试', '“微网站（用户）-项目活动- 移民项目“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exescene` VALUES ('10174', '2', 'M', '10060', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动-公司名片', '未测试', '“微网站（用户）-项目活动-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exescene` VALUES ('10175', '3', 'M', '10060', '10176', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-项目管理', '未测试', '“微站CRM后台- 项目资料库-项目管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exescene` VALUES ('10176', '4', 'M', '10060', '10227', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-申请流程', '未测试', '“微站CRM后台- 项目管理-申请流程“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exescene` VALUES ('10177', '5', 'M', '10060', '10228', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-费用详情', '未测试', '“微站CRM后台- 项目管理-费用详情“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exescene` VALUES ('10178', '6', 'M', '10060', '10229', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-材料清单', '未测试', '“微站CRM后台- 项目管理-材料清单“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exescene` VALUES ('10179', '7', 'M', '10060', '10230', '0', '2', '【功能】', '默认', '微站CRM后台- 项目-图片', '未测试', '“微站CRM后台- 项目-图片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exescene` VALUES ('10180', '8', 'M', '10060', '10177', '0', '2', '【功能】', '默认', '微站CRM后台-项目资料库-移民评估', '未测试', '“微站CRM后台-项目资料库-移民评估“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exescene` VALUES ('10181', '9', 'M', '10060', '10162', '0', '2', '【功能】', '默认', '微网站（用户）- 首页-移民评估', '未测试', '“微网站（用户）- 首页-移民评估“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:47', '2016-12-22 10:34:47');
INSERT INTO `zt_tp_exescene` VALUES ('10182', '10', 'M', '10060', '10161', '0', '2', '【功能】', '默认', '微网站（用户）-首页', '未测试', '“微网站（用户）-首页“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exescene` VALUES ('10183', '7', 'M', '10058', '10228', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-费用详情', '通过', '“微站CRM后台- 项目管理-费用详情“下所有功能点', null, null, '2016-12-23 11:43:57', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:43:57');

-- ----------------------------
-- Table structure for `zt_tp_func`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_func`;
CREATE TABLE `zt_tp_func` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `func` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `pathid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `result` varchar(5) DEFAULT '未测试',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10591 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_func
-- ----------------------------
INSERT INTO `zt_tp_func` VALUES ('10413', '6', ' 在线咨询', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:28:03');
INSERT INTO `zt_tp_func` VALUES ('10412', '5', ' 电话咨询', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:46');
INSERT INTO `zt_tp_func` VALUES ('10408', '1', ' 管家列表', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:57');
INSERT INTO `zt_tp_func` VALUES ('10409', '2', ' 管家详情', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:28:13');
INSERT INTO `zt_tp_func` VALUES ('10410', '3', ' 绑定管家', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:51');
INSERT INTO `zt_tp_func` VALUES ('10411', '4', ' 微信关注', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:47');
INSERT INTO `zt_tp_func` VALUES ('10419', '1', ' 公司介绍', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:49');
INSERT INTO `zt_tp_func` VALUES ('10414', '1', ' 我的管家信息', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:20');
INSERT INTO `zt_tp_func` VALUES ('10415', '2', '点赞', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:21');
INSERT INTO `zt_tp_func` VALUES ('10416', '3', ' 评价', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:22');
INSERT INTO `zt_tp_func` VALUES ('10417', '4', ' 分享管家名片', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:23');
INSERT INTO `zt_tp_func` VALUES ('10418', '5', ' 解除绑定', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:24');
INSERT INTO `zt_tp_func` VALUES ('10420', '2', ' 重点项目', '正常', '10175', '9', '未测试', '腰立辉', '2017-01-13 18:25:33');
INSERT INTO `zt_tp_func` VALUES ('10421', '3', ' 名片信息', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:44');
INSERT INTO `zt_tp_func` VALUES ('10422', '4', ' 公司名片分享', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:54');
INSERT INTO `zt_tp_func` VALUES ('10423', '5', ' 报名', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:55');
INSERT INTO `zt_tp_func` VALUES ('10401', '1', ' 简介', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:28:02');
INSERT INTO `zt_tp_func` VALUES ('10402', '3', ' 获取验证码', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:56');
INSERT INTO `zt_tp_func` VALUES ('10403', '4', ' 登录', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:43');
INSERT INTO `zt_tp_func` VALUES ('10404', '5', ' 提交信息', '正常', '10173', '8', '失败', '腰立辉', '2017-01-13 18:27:48');
INSERT INTO `zt_tp_func` VALUES ('10405', '6', ' 查询合作状态', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:53');
INSERT INTO `zt_tp_func` VALUES ('10406', '7', ' 驳回后重提', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:52');
INSERT INTO `zt_tp_func` VALUES ('10424', '7', ' 数据统计', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:28:05');
INSERT INTO `zt_tp_func` VALUES ('10425', '1', ' 管家新增', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:34');
INSERT INTO `zt_tp_func` VALUES ('10426', '2', ' 管家编辑', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:58');
INSERT INTO `zt_tp_func` VALUES ('10427', '3', ' 管家评价', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:38');
INSERT INTO `zt_tp_func` VALUES ('10428', '4', ' 聘用情况', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:37');
INSERT INTO `zt_tp_func` VALUES ('10429', '5', ' 管家详情', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:36');
INSERT INTO `zt_tp_func` VALUES ('10430', '6', ' 服务用户（列表）', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:35');
INSERT INTO `zt_tp_func` VALUES ('10431', '1', ' 登录', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:30:17');
INSERT INTO `zt_tp_func` VALUES ('10432', '2', ' 注销', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:30:26');
INSERT INTO `zt_tp_func` VALUES ('10433', '3', ' 修改密码', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:30:52');
INSERT INTO `zt_tp_func` VALUES ('10434', '4', ' 切换平台', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:31:09');
INSERT INTO `zt_tp_func` VALUES ('10435', '5', ' 菜单的收齐/展开', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:36:30');
INSERT INTO `zt_tp_func` VALUES ('10436', '1', ' New Feedbacks', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:36:57');
INSERT INTO `zt_tp_func` VALUES ('10437', '2', ' 新订单', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:37:21');
INSERT INTO `zt_tp_func` VALUES ('10438', '3', ' Brand Popularity', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:37:57');
INSERT INTO `zt_tp_func` VALUES ('10439', '4', ' 销售额', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:05');
INSERT INTO `zt_tp_func` VALUES ('10440', '5', ' 访问量', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:18');
INSERT INTO `zt_tp_func` VALUES ('10441', '6', ' Actives', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:40');
INSERT INTO `zt_tp_func` VALUES ('10442', '7', ' Server Load', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:57');
INSERT INTO `zt_tp_func` VALUES ('10445', '3', ' 选手列表', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:01:29');
INSERT INTO `zt_tp_func` VALUES ('10446', '4', ' 投票', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:01:52');
INSERT INTO `zt_tp_func` VALUES ('10447', '2', ' 拨打400电话', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:30');
INSERT INTO `zt_tp_func` VALUES ('10448', '1', ' 规则介绍', '正常', '10201', '110', '失败', '腰立辉', '2016-12-13 13:03:38');
INSERT INTO `zt_tp_func` VALUES ('10449', '2', ' 背景音乐', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:01:18');
INSERT INTO `zt_tp_func` VALUES ('10450', '5', ' 播放选手歌曲', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:02:02');
INSERT INTO `zt_tp_func` VALUES ('10451', '1', ' 首页', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:48:07');
INSERT INTO `zt_tp_func` VALUES ('10452', '2', ' 点击（首页）进入', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:48:31');
INSERT INTO `zt_tp_func` VALUES ('10453', '3', ' 项目列表', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:48:56');
INSERT INTO `zt_tp_func` VALUES ('10454', '5', ' 项目详情', '正常', '10202', '110', '未测试', '腰立辉', '2016-12-13 11:55:28');
INSERT INTO `zt_tp_func` VALUES ('10455', '6', ' 详情视频', '正常', '10202', '110', '失败', '腰立辉', '2016-12-13 16:40:42');
INSERT INTO `zt_tp_func` VALUES ('10456', '4', ' 项目投票', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:56:16');
INSERT INTO `zt_tp_func` VALUES ('10457', '7', ' 官网链接', '正常', '10202', '110', '未测试', '腰立辉', '2016-12-13 11:55:51');
INSERT INTO `zt_tp_func` VALUES ('10458', '1', ' 查询-按地区', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:29');
INSERT INTO `zt_tp_func` VALUES ('10459', '2', ' 查询-按合作方式', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:28');
INSERT INTO `zt_tp_func` VALUES ('10460', '3', ' 查询-按状态', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:27');
INSERT INTO `zt_tp_func` VALUES ('10461', '4', ' 查询-按联系方式', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:34');
INSERT INTO `zt_tp_func` VALUES ('10462', '5', ' 组合查询', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:35');
INSERT INTO `zt_tp_func` VALUES ('10463', '6', '商务合作列表', '正常', '10203', '8', '失败', '腰立辉', '2017-01-13 18:27:36');
INSERT INTO `zt_tp_func` VALUES ('10464', '7', '编辑/ 查看进度入口', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:37');
INSERT INTO `zt_tp_func` VALUES ('10465', '1', ' 申请资料信息', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:38');
INSERT INTO `zt_tp_func` VALUES ('10466', '2', ' 洽谈进度维护', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:39');
INSERT INTO `zt_tp_func` VALUES ('10467', '3', ' 洽谈进度历史', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:40');
INSERT INTO `zt_tp_func` VALUES ('10468', '4', ' 处理结果', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:40');
INSERT INTO `zt_tp_func` VALUES ('10469', '6', ' 消息反馈（移动管家名片）', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:42');
INSERT INTO `zt_tp_func` VALUES ('10470', '1', ' 获客列表', '正常', '10224', '8', '通过', '腰立辉', '2017-01-13 18:27:33');
INSERT INTO `zt_tp_func` VALUES ('10471', '2', ' 查询筛选', '正常', '10224', '8', '失败', '腰立辉', '2017-01-13 18:27:32');
INSERT INTO `zt_tp_func` VALUES ('10472', '1', ' 名片流量列表', '正常', '10225', '8', '通过', '腰立辉', '2017-01-13 18:27:50');
INSERT INTO `zt_tp_func` VALUES ('10473', '2', ' 转化率计算', '正常', '10225', '8', '通过', '腰立辉', '2017-01-13 18:27:32');
INSERT INTO `zt_tp_func` VALUES ('10474', '1', '微信号列表（打开过且未设置）', '正常', '10226', '8', '失败', '腰立辉', '2017-01-13 18:27:25');
INSERT INTO `zt_tp_func` VALUES ('10475', '2', ' 设置-入口', '正常', '10226', '8', '通过', '腰立辉', '2017-01-13 18:27:26');
INSERT INTO `zt_tp_func` VALUES ('10476', '3', ' 设置-选择用户', '正常', '10226', '8', '失败', '腰立辉', '2017-01-13 18:27:27');
INSERT INTO `zt_tp_func` VALUES ('10477', '4', ' 设置-绑定', '正常', '10226', '8', '通过', '腰立辉', '2017-01-13 18:27:31');
INSERT INTO `zt_tp_func` VALUES ('10478', '1', ' 登录', '正常', '10141', '108', '失败', '腰立辉', '2016-12-22 17:04:53');
INSERT INTO `zt_tp_func` VALUES ('10479', '2', ' 注销', '正常', '10141', '108', '未测试', '腰立辉', '2016-12-21 15:23:08');
INSERT INTO `zt_tp_func` VALUES ('10480', '3', ' 修改密码', '正常', '10141', '9', '通过', '腰立辉', '2017-01-13 18:25:18');
INSERT INTO `zt_tp_func` VALUES ('10481', '4', ' 切换平台', '正常', '10141', '108', '未测试', '腰立辉', '2016-12-21 15:23:19');
INSERT INTO `zt_tp_func` VALUES ('10482', '1', ' 查询-按国家地区', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:17');
INSERT INTO `zt_tp_func` VALUES ('10483', '2', ' 查询-按项目类型', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:40');
INSERT INTO `zt_tp_func` VALUES ('10484', '3', ' 查询-按项目状态', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:41');
INSERT INTO `zt_tp_func` VALUES ('10485', '4', ' 快速查询', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:57');
INSERT INTO `zt_tp_func` VALUES ('10486', '5', ' 查询-上线日期范围', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:56');
INSERT INTO `zt_tp_func` VALUES ('10487', '6', ' 组合查询', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:56');
INSERT INTO `zt_tp_func` VALUES ('10488', '7', ' 项目列表', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:55');
INSERT INTO `zt_tp_func` VALUES ('10489', '8', '项目-新增', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:53');
INSERT INTO `zt_tp_func` VALUES ('10490', '9', ' 扩展推荐', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:52');
INSERT INTO `zt_tp_func` VALUES ('10491', '10', ' 项目-编辑', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:50');
INSERT INTO `zt_tp_func` VALUES ('10492', '11', ' 项目-暂停', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:49');
INSERT INTO `zt_tp_func` VALUES ('10493', '12', ' 项目-发布（在编辑页面里）', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:48');
INSERT INTO `zt_tp_func` VALUES ('10494', '1', ' 办理流程列表', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:47');
INSERT INTO `zt_tp_func` VALUES ('10495', '2', ' 办理流程-新增', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:46');
INSERT INTO `zt_tp_func` VALUES ('10496', '3', ' 办理流程-导入', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:42');
INSERT INTO `zt_tp_func` VALUES ('10497', '4', ' 上移/下移/置顶', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:41');
INSERT INTO `zt_tp_func` VALUES ('10498', '5', ' 办理流程-编辑', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:16');
INSERT INTO `zt_tp_func` VALUES ('10499', '6', ' 办理流程-删除', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:15');
INSERT INTO `zt_tp_func` VALUES ('10500', '1', ' 费用详情列表', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:25:14');
INSERT INTO `zt_tp_func` VALUES ('10501', '2', ' 费用详情-新增', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:53');
INSERT INTO `zt_tp_func` VALUES ('10502', '3', ' 费用详情-导入', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:52');
INSERT INTO `zt_tp_func` VALUES ('10503', '4', ' 上移/下移/置顶', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:51');
INSERT INTO `zt_tp_func` VALUES ('10504', '5', ' 费用详情-编辑', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:49');
INSERT INTO `zt_tp_func` VALUES ('10505', '6', ' 费用详情-删除', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:43');
INSERT INTO `zt_tp_func` VALUES ('10506', '1', ' 材料清单列表', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:42');
INSERT INTO `zt_tp_func` VALUES ('10507', '2', ' 材料-新增', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:39');
INSERT INTO `zt_tp_func` VALUES ('10508', '3', ' 材料-导入', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:38');
INSERT INTO `zt_tp_func` VALUES ('10509', '4', ' 上移/下移/置顶', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:36');
INSERT INTO `zt_tp_func` VALUES ('10510', '5', ' 材料-样例', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:35');
INSERT INTO `zt_tp_func` VALUES ('10511', '6', ' 材料-编辑', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:34');
INSERT INTO `zt_tp_func` VALUES ('10512', '7', ' 材料-删除', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:32');
INSERT INTO `zt_tp_func` VALUES ('10513', '1', ' 图片-列表', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:24:31');
INSERT INTO `zt_tp_func` VALUES ('10514', '2', ' 项目图片-新增', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:24:55');
INSERT INTO `zt_tp_func` VALUES ('10515', '3', ' 上移/下移/置顶', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:24:56');
INSERT INTO `zt_tp_func` VALUES ('10516', '4', ' 项目图片-编辑', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:25:12');
INSERT INTO `zt_tp_func` VALUES ('10517', '5', ' 项目图片-删除', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:25:12');
INSERT INTO `zt_tp_func` VALUES ('10518', '1', ' 问题-新增', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:10');
INSERT INTO `zt_tp_func` VALUES ('10519', '2', ' 问题列表', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:09');
INSERT INTO `zt_tp_func` VALUES ('10520', '3', ' 问题编辑', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:08');
INSERT INTO `zt_tp_func` VALUES ('10521', '4', ' 问题-删除', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:07');
INSERT INTO `zt_tp_func` VALUES ('10522', '5', ' 权重-保存', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:05');
INSERT INTO `zt_tp_func` VALUES ('10523', '6', ' 问卷-发布', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:03');
INSERT INTO `zt_tp_func` VALUES ('10524', '1', ' 查询-按活动标题', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:25:02');
INSERT INTO `zt_tp_func` VALUES ('10525', '2', ' 活动列表', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:25:01');
INSERT INTO `zt_tp_func` VALUES ('10526', '3', ' 已发布活动列表', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:25:00');
INSERT INTO `zt_tp_func` VALUES ('10527', '4', ' 未发布活动列表', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:24:59');
INSERT INTO `zt_tp_func` VALUES ('10528', '5', ' 更新排序', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:24:57');
INSERT INTO `zt_tp_func` VALUES ('10529', '6', ' 活动-新增', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:24:29');
INSERT INTO `zt_tp_func` VALUES ('10530', '7', ' 活动-编辑', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:34');
INSERT INTO `zt_tp_func` VALUES ('10531', '8', ' 活动-发布', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:51');
INSERT INTO `zt_tp_func` VALUES ('10532', '9', ' 活动-下线', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:50');
INSERT INTO `zt_tp_func` VALUES ('10533', '10', ' 活动报名-入口', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:48');
INSERT INTO `zt_tp_func` VALUES ('10534', '1', ' 查询-按姓名或手机号', '正常', '10231', '9', '未测试', '腰立辉', '2017-01-13 18:26:45');
INSERT INTO `zt_tp_func` VALUES ('10535', '2', ' 报名人员列表', '正常', '10231', '9', '未测试', '腰立辉', '2017-01-13 18:26:43');
INSERT INTO `zt_tp_func` VALUES ('10536', '1', ' 查询-按栏目名称', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:42');
INSERT INTO `zt_tp_func` VALUES ('10537', '2', ' 栏目列表', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:41');
INSERT INTO `zt_tp_func` VALUES ('10538', '3', ' 批量排序', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:40');
INSERT INTO `zt_tp_func` VALUES ('10539', '4', ' 栏目-新增', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:39');
INSERT INTO `zt_tp_func` VALUES ('10540', '5', ' 栏目-设置', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:38');
INSERT INTO `zt_tp_func` VALUES ('10541', '6', ' 栏目-删除', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:37');
INSERT INTO `zt_tp_func` VALUES ('10542', '1', ' 按栏目过滤（左侧）', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:36');
INSERT INTO `zt_tp_func` VALUES ('10543', '2', ' 查询-按标题', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:35');
INSERT INTO `zt_tp_func` VALUES ('10544', '3', ' 查询-按状态', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:52');
INSERT INTO `zt_tp_func` VALUES ('10545', '4', ' 查询-组合查询', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:53');
INSERT INTO `zt_tp_func` VALUES ('10546', '5', ' 资讯列表', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:06');
INSERT INTO `zt_tp_func` VALUES ('10547', '6', ' 资讯-新增', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:05');
INSERT INTO `zt_tp_func` VALUES ('10548', '7', ' 资讯-编辑', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:04');
INSERT INTO `zt_tp_func` VALUES ('10549', '8', ' 资讯-删除', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:03');
INSERT INTO `zt_tp_func` VALUES ('10550', '9', ' 资讯-发布（未发现）', '待确认', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:02');
INSERT INTO `zt_tp_func` VALUES ('10551', '1', ' 项目简介', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:27:01');
INSERT INTO `zt_tp_func` VALUES ('10552', '2', ' 项目优势', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:59');
INSERT INTO `zt_tp_func` VALUES ('10553', '3', ' 申请条件', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:59');
INSERT INTO `zt_tp_func` VALUES ('10554', '4', ' 办理流程（周期）', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:54');
INSERT INTO `zt_tp_func` VALUES ('10555', '5', ' 项目预约', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:27:07');
INSERT INTO `zt_tp_func` VALUES ('10556', '6', ' 评估入口', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:55');
INSERT INTO `zt_tp_func` VALUES ('10557', '1', ' 移民评估入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:56');
INSERT INTO `zt_tp_func` VALUES ('10558', '1', ' 填写评估问题', '正常', '10162', '9', '未测试', '腰立辉', '2017-01-13 18:26:57');
INSERT INTO `zt_tp_func` VALUES ('10559', '2', ' 展示评估结果', '正常', '10162', '9', '未测试', '腰立辉', '2017-01-13 18:26:57');
INSERT INTO `zt_tp_func` VALUES ('10560', '1', ' 活动列表', '正常', '10164', '9', '未测试', '腰立辉', '2017-01-13 18:26:33');
INSERT INTO `zt_tp_func` VALUES ('10561', '2', ' 我要报名', '正常', '10164', '9', '未测试', '腰立辉', '2017-01-13 18:26:32');
INSERT INTO `zt_tp_func` VALUES ('10562', '1', ' 向往国家', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:11');
INSERT INTO `zt_tp_func` VALUES ('10563', '2', ' 向往城市', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:10');
INSERT INTO `zt_tp_func` VALUES ('10564', '3', ' 体验分类列表', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:09');
INSERT INTO `zt_tp_func` VALUES ('10565', '4', ' 体验详情', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:08');
INSERT INTO `zt_tp_func` VALUES ('10566', '1', ' 查询-按国家名', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:08');
INSERT INTO `zt_tp_func` VALUES ('10567', '2', ' 查询-按地理分类', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:07');
INSERT INTO `zt_tp_func` VALUES ('10568', '3', ' 查询-按发布状态', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:05');
INSERT INTO `zt_tp_func` VALUES ('10569', '4', ' 国家列表', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:04');
INSERT INTO `zt_tp_func` VALUES ('10570', '5', ' 国家-新增', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:04');
INSERT INTO `zt_tp_func` VALUES ('10571', '6', ' 国家-编辑', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:03');
INSERT INTO `zt_tp_func` VALUES ('10572', '7', ' 国家-删除', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:02');
INSERT INTO `zt_tp_func` VALUES ('10573', '8', ' 国家-发布', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:01');
INSERT INTO `zt_tp_func` VALUES ('10574', '9', ' 国家-下线', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:00');
INSERT INTO `zt_tp_func` VALUES ('10575', '10', ' 国家详情-入口', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:12');
INSERT INTO `zt_tp_func` VALUES ('10576', '1', ' 城市-新增', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:18');
INSERT INTO `zt_tp_func` VALUES ('10577', '2', ' 城市列表', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:31');
INSERT INTO `zt_tp_func` VALUES ('10578', '3', ' 城市-编辑', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:28');
INSERT INTO `zt_tp_func` VALUES ('10579', '4', ' 城市-删除', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:23');
INSERT INTO `zt_tp_func` VALUES ('10580', '5', ' 上传图片', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:22');
INSERT INTO `zt_tp_func` VALUES ('10581', '1', ' 政策-新增', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:26:21');
INSERT INTO `zt_tp_func` VALUES ('10582', '2', ' 政策列表', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:26:20');
INSERT INTO `zt_tp_func` VALUES ('10583', '3', ' 政策-编辑', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:26:19');
INSERT INTO `zt_tp_func` VALUES ('10584', '4', ' 政策-删除', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:25:59');
INSERT INTO `zt_tp_func` VALUES ('10585', '2', '专属管家入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:23');
INSERT INTO `zt_tp_func` VALUES ('10586', '3', ' 专享活动入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:24');
INSERT INTO `zt_tp_func` VALUES ('10587', '4', ' 生活体验入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:25');
INSERT INTO `zt_tp_func` VALUES ('10588', '1', ' 获取验证码', '正常', '10234', '9', '未测试', '腰立辉', '2017-01-13 18:26:26');
INSERT INTO `zt_tp_func` VALUES ('10589', '2', ' 登录', '正常', '10234', '9', '未测试', '腰立辉', '2017-01-13 18:26:28');
INSERT INTO `zt_tp_func` VALUES ('10590', '2', '项目详情', '正常', '10175', '9', '未测试', '腰立辉', '2017-01-13 18:26:30');

-- ----------------------------
-- Table structure for `zt_tp_hcfunc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_hcfunc`;
CREATE TABLE `zt_tp_hcfunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `funcid` smallint(6) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(255) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_hcfunc
-- ----------------------------
INSERT INTO `zt_tp_hcfunc` VALUES ('103', '1', '10570', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', null, null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌');
INSERT INTO `zt_tp_hcfunc` VALUES ('104', '2', '10568', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', null, null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌');

-- ----------------------------
-- Table structure for `zt_tp_hr`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_hr`;
CREATE TABLE `zt_tp_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT '发布',
  `desc` text,
  `salary` varchar(10) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_hr
-- ----------------------------
INSERT INTO `zt_tp_hr` VALUES ('3', '公司CEO', '发布', '\r\n', '面议', null, '2016-10-03', '安顺汽修', '腰立辉', null, '2016-11-06 10:04:55');
INSERT INTO `zt_tp_hr` VALUES ('4', '首席财务官', '作废', '<p>\r\n	融入融入人</p>\r\n', '面议', null, '2016-10-03', '安顺汽修', '腰立辉', null, '2016-10-29 20:12:52');
INSERT INTO `zt_tp_hr` VALUES ('7', 'ee', '发布', 'we', '面议', '5', '2016-12-18', 'ew', '王晓亮', '2016-12-18 20:44:29', '2016-12-18 20:44:29');
INSERT INTO `zt_tp_hr` VALUES ('8', '1231', '发布', '12312', '面议', '1', '2017-01-19', '1231', '腰立辉', '2017-01-19 18:17:29', '2017-01-19 18:17:29');

-- ----------------------------
-- Table structure for `zt_tp_link`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_link`;
CREATE TABLE `zt_tp_link` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `name` varchar(50) NOT NULL COMMENT '友情链接名称',
  `url` varchar(100) NOT NULL COMMENT '友情链接url',
  `ord` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '友情链接排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_link
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_tp_page`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_page`;
CREATE TABLE `zt_tp_page` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页id',
  `name` varchar(20) NOT NULL COMMENT '单页名称',
  `content` text NOT NULL COMMENT '单页内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_page
-- ----------------------------
INSERT INTO `zt_tp_page` VALUES ('12', '订单查询', '');
INSERT INTO `zt_tp_page` VALUES ('13', '退换货流程', '');
INSERT INTO `zt_tp_page` VALUES ('14', '退换货条款', '');
INSERT INTO `zt_tp_page` VALUES ('15', '用户协议', '');
INSERT INTO `zt_tp_page` VALUES ('16', '公司简介', '');
INSERT INTO `zt_tp_page` VALUES ('17', '联系我们', '<p>\r\n	1</p>\r\n');
INSERT INTO `zt_tp_page` VALUES ('18', '诚聘英才', '');
INSERT INTO `zt_tp_page` VALUES ('8', '支付方式', '');
INSERT INTO `zt_tp_page` VALUES ('9', '常见问题', '');
INSERT INTO `zt_tp_page` VALUES ('10', '配送时间及运费', '');
INSERT INTO `zt_tp_page` VALUES ('11', '验货与签收', '');
INSERT INTO `zt_tp_page` VALUES ('7', '购物指南', '');

-- ----------------------------
-- Table structure for `zt_tp_path`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_path`;
CREATE TABLE `zt_tp_path` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_path
-- ----------------------------
INSERT INTO `zt_tp_path` VALUES ('10174', '11', ' 专属管家-我的专属管家', '正常', '66', '腰立辉', '2016-12-22 14:28:24');
INSERT INTO `zt_tp_path` VALUES ('10175', '6', '项目活动-公司名片', '正常', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10176', '4', '项目管理', '正常', '3', '腰立辉', '2017-01-15 12:55:52');
INSERT INTO `zt_tp_path` VALUES ('10177', '9', '移民评估', '正常', '3', '腰立辉', '2017-01-15 12:55:43');
INSERT INTO `zt_tp_path` VALUES ('10178', '13', '内容发布-专题管理', '正常', '3', '腰立辉', '2017-01-15 12:55:37');
INSERT INTO `zt_tp_path` VALUES ('10179', '14', ' 内容发布-资讯发布', '正常', '3', '腰立辉', '2017-01-15 12:55:28');
INSERT INTO `zt_tp_path` VALUES ('10180', '15', ' 内容发布-活动管理', '正常', '3', '腰立辉', '2017-01-15 12:54:23');
INSERT INTO `zt_tp_path` VALUES ('10181', '16', ' 内容发布-移民管家', '正常', '3', '腰立辉', '2017-01-15 12:56:41');
INSERT INTO `zt_tp_path` VALUES ('10182', '18', ' 营销管理-我的客户', '正常', '3', '腰立辉', '2017-01-15 12:56:47');
INSERT INTO `zt_tp_path` VALUES ('10183', '19', '营销管理-移民方案', '正常', '63', '腰立辉', '2016-12-21 14:21:25');
INSERT INTO `zt_tp_path` VALUES ('10184', '20', ' 营销管理-推荐客户', '正常', '63', '腰立辉', '2016-12-21 14:21:25');
INSERT INTO `zt_tp_path` VALUES ('10233', '3', ' 国家管理-移民政策', '正常', '3', '腰立辉', '2017-01-15 12:56:09');
INSERT INTO `zt_tp_path` VALUES ('10234', '0', ' 登录', '正常', '66', '腰立辉', '2016-12-21 16:21:54');
INSERT INTO `zt_tp_path` VALUES ('10231', '15', ' 活动管理-报名人数', '正常', '63', '腰立辉', '2016-12-21 14:22:14');
INSERT INTO `zt_tp_path` VALUES ('10232', '3', ' 国家管理-移民城市', '正常', '63', '腰立辉', '2016-12-21 15:48:42');
INSERT INTO `zt_tp_path` VALUES ('10191', '2', ' 主页', '正常', '64', '腰立辉', '2016-12-06 10:17:27');
INSERT INTO `zt_tp_path` VALUES ('10141', '1', ' 登录', '正常', '63', '腰立辉', '2016-12-05 16:13:59');
INSERT INTO `zt_tp_path` VALUES ('10142', '2', ' 首页', '正常', '3', '腰立辉', '2017-01-15 12:53:55');
INSERT INTO `zt_tp_path` VALUES ('10143', '3', '国家管理', '正常', '3', '腰立辉', '2017-01-15 12:54:02');
INSERT INTO `zt_tp_path` VALUES ('10144', '12', ' 内容发布-栏目管理', '正常', '3', '腰立辉', '2017-01-15 12:54:10');
INSERT INTO `zt_tp_path` VALUES ('10145', '17', ' 营销管理-意向客户', '正常', '3', '腰立辉', '2017-01-15 12:54:17');
INSERT INTO `zt_tp_path` VALUES ('10148', '2', '客户信息（上）', '正常', '4', '腰立辉', '2017-01-15 12:53:00');
INSERT INTO `zt_tp_path` VALUES ('10149', '3', '客户信息（下）', '正常', '4', '腰立辉', '2017-01-15 12:53:09');
INSERT INTO `zt_tp_path` VALUES ('10150', '4', ' 个人中心', '正常', '4', '腰立辉', '2017-01-15 12:52:46');
INSERT INTO `zt_tp_path` VALUES ('10173', '5', '项目活动-商务合作', '正常', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10152', '1', ' 登录模块', '正常', '64', '腰立辉', '2016-12-05 16:21:42');
INSERT INTO `zt_tp_path` VALUES ('10153', '6', ' 组织机构模块', '正常', '64', '腰立辉', '2016-12-06 10:17:27');
INSERT INTO `zt_tp_path` VALUES ('10154', '7', ' 平台管理', '正常', '64', '腰立辉', '2016-12-06 10:17:27');
INSERT INTO `zt_tp_path` VALUES ('10156', '3', ' 岗位管理', '正常', '64', '腰立辉', '2016-12-06 10:17:27');
INSERT INTO `zt_tp_path` VALUES ('10157', '4', ' 角色管理', '正常', '64', '腰立辉', '2016-12-06 10:17:27');
INSERT INTO `zt_tp_path` VALUES ('10158', '8', ' 字典管理', '正常', '64', '腰立辉', '2016-12-06 10:17:41');
INSERT INTO `zt_tp_path` VALUES ('10159', '5', ' 用户模块', '正常', '64', '腰立辉', '2016-12-06 10:17:27');
INSERT INTO `zt_tp_path` VALUES ('10161', '1', '首页', '正常', '66', '腰立辉', '2016-12-21 14:45:37');
INSERT INTO `zt_tp_path` VALUES ('10162', '2', ' 首页-移民评估', '正常', '66', '腰立辉', '2016-12-21 14:45:45');
INSERT INTO `zt_tp_path` VALUES ('10163', '10', ' 专属管家-列表及介绍', '已搁置', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10164', '3', '项目活动- 专享活动', '正常', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10165', '12', ' 优选国家', '已搁置', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10166', '13', ' 精彩案例', '已搁置', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10167', '14', ' 移民攻略', '已搁置', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10168', '4', '项目活动- 移民项目', '正常', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10171', '7', ' 项目活动-生活体验', '正常', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10172', '1', ' 登录', '正常', '4', '腰立辉', '2017-01-15 12:52:53');
INSERT INTO `zt_tp_path` VALUES ('10201', '8', ' 投票活动-太平洋好声音', '已搁置', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10202', '9', ' 投票活动-四海一家', '已搁置', '66', '腰立辉', '2016-12-21 14:50:56');
INSERT INTO `zt_tp_path` VALUES ('10203', '10', '商务合作-商务合作管理', '正常', '3', '腰立辉', '2017-01-15 12:55:07');
INSERT INTO `zt_tp_path` VALUES ('10204', '11', ' 商务合作-商务合作进度', '正常', '3', '腰立辉', '2017-01-15 12:55:01');
INSERT INTO `zt_tp_path` VALUES ('10224', '21', '数据中心-获客列表', '正常', '3', '腰立辉', '2017-01-15 12:56:34');
INSERT INTO `zt_tp_path` VALUES ('10225', '22', ' 数据中心-名片流量', '正常', '3', '腰立辉', '2017-01-15 12:54:55');
INSERT INTO `zt_tp_path` VALUES ('10226', '23', ' 数据中心-微信号设置', '正常', '3', '腰立辉', '2017-01-15 12:54:29');
INSERT INTO `zt_tp_path` VALUES ('10227', '5', ' 项目管理-申请流程', '正常', '3', '腰立辉', '2017-01-15 12:55:19');
INSERT INTO `zt_tp_path` VALUES ('10228', '6', ' 项目管理-费用详情', '正常', '3', '腰立辉', '2017-01-15 12:56:28');
INSERT INTO `zt_tp_path` VALUES ('10229', '7', ' 项目管理-材料清单', '正常', '3', '腰立辉', '2017-01-15 12:55:59');
INSERT INTO `zt_tp_path` VALUES ('10230', '8', ' 项目-图片', '正常', '3', '腰立辉', '2017-01-15 12:55:13');

-- ----------------------------
-- Table structure for `zt_tp_projectbranch`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_projectbranch`;
CREATE TABLE `zt_tp_projectbranch` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `branchid` smallint(6) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_projectbranch
-- ----------------------------
INSERT INTO `zt_tp_projectbranch` VALUES ('56', '54', '24', '腰立辉', '2016-09-22 10:06:44');
INSERT INTO `zt_tp_projectbranch` VALUES ('67', '4', '45', '腰立辉', '2016-09-25 19:12:47');
INSERT INTO `zt_tp_projectbranch` VALUES ('61', '4', '47', '腰立辉', '2016-09-23 09:46:13');
INSERT INTO `zt_tp_projectbranch` VALUES ('68', '11', '46', '腰立辉', '2016-09-26 11:26:22');
INSERT INTO `zt_tp_projectbranch` VALUES ('62', '56', '48', '腰立辉', '2016-09-24 20:47:58');
INSERT INTO `zt_tp_projectbranch` VALUES ('63', '4', '48', '腰立辉', '2016-09-24 20:48:09');
INSERT INTO `zt_tp_projectbranch` VALUES ('64', '56', '49', '腰立辉', '2016-09-24 21:16:03');
INSERT INTO `zt_tp_projectbranch` VALUES ('65', '4', '49', '腰立辉', '2016-09-24 21:16:05');
INSERT INTO `zt_tp_projectbranch` VALUES ('69', '11', '50', '腰立辉', '2016-10-19 12:50:06');
INSERT INTO `zt_tp_projectbranch` VALUES ('70', '54', '45', '王鑫彤', '2016-10-21 10:27:07');
INSERT INTO `zt_tp_projectbranch` VALUES ('79', '11', '97', '腰立辉', '2016-11-18 09:23:11');
INSERT INTO `zt_tp_projectbranch` VALUES ('74', '11', '51', '腰立辉', '2016-10-25 15:17:08');
INSERT INTO `zt_tp_projectbranch` VALUES ('73', '3', '65', '腰立辉', '2016-10-24 09:21:35');
INSERT INTO `zt_tp_projectbranch` VALUES ('75', '6', '51', '腰立辉', '2016-10-25 17:11:04');
INSERT INTO `zt_tp_projectbranch` VALUES ('76', '11', '80', '腰立辉', '2016-11-18 09:24:01');
INSERT INTO `zt_tp_projectbranch` VALUES ('82', '62', '107', '腰立辉', '2016-12-05 16:06:15');
INSERT INTO `zt_tp_projectbranch` VALUES ('83', '63', '107', '腰立辉', '2016-12-05 16:09:42');
INSERT INTO `zt_tp_projectbranch` VALUES ('89', '64', '109', '腰立辉', '2016-12-06 10:15:42');
INSERT INTO `zt_tp_projectbranch` VALUES ('85', '66', '107', '腰立辉', '2016-12-05 16:30:45');
INSERT INTO `zt_tp_projectbranch` VALUES ('87', '68', '108', '腰立辉', '2016-12-05 17:42:53');
INSERT INTO `zt_tp_projectbranch` VALUES ('88', '4', '108', '腰立辉', '2016-12-05 17:42:56');
INSERT INTO `zt_tp_projectbranch` VALUES ('91', '66', '110', '腰立辉', '2016-12-12 09:44:55');
INSERT INTO `zt_tp_projectbranch` VALUES ('92', '69', '111', '腰立辉', '2016-12-17 22:59:59');
INSERT INTO `zt_tp_projectbranch` VALUES ('93', '70', '111', '腰立辉', '2016-12-17 23:00:02');
INSERT INTO `zt_tp_projectbranch` VALUES ('94', '72', '112', '腰立辉', '2016-12-17 23:05:50');
INSERT INTO `zt_tp_projectbranch` VALUES ('95', '71', '112', '腰立辉', '2016-12-17 23:05:53');
INSERT INTO `zt_tp_projectbranch` VALUES ('96', '73', '113', '腰立辉', '2016-12-17 23:09:33');
INSERT INTO `zt_tp_projectbranch` VALUES ('97', '74', '113', '腰立辉', '2016-12-17 23:09:35');
INSERT INTO `zt_tp_projectbranch` VALUES ('98', '76', '114', '腰立辉', '2016-12-17 23:15:52');
INSERT INTO `zt_tp_projectbranch` VALUES ('99', '75', '114', '腰立辉', '2016-12-17 23:15:54');
INSERT INTO `zt_tp_projectbranch` VALUES ('100', '64', '107', '腰立辉', '2016-12-19 15:41:11');
INSERT INTO `zt_tp_projectbranch` VALUES ('102', '63', '116', '腰立辉', '2016-12-21 13:10:31');
INSERT INTO `zt_tp_projectbranch` VALUES ('103', '66', '116', '腰立辉', '2016-12-21 13:10:33');

-- ----------------------------
-- Table structure for `zt_tp_prosys`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_prosys`;
CREATE TABLE `zt_tp_prosys` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `branch` smallint(6) DEFAULT NULL,
  `project` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_prosys
-- ----------------------------
INSERT INTO `zt_tp_prosys` VALUES ('112', '10', '9', '腰立辉', '2017-01-15 18:22:40');
INSERT INTO `zt_tp_prosys` VALUES ('111', '11', '9', '腰立辉', '2017-01-15 18:19:38');
INSERT INTO `zt_tp_prosys` VALUES ('98', '2', '9', '腰立辉', '2017-01-15 17:16:27');
INSERT INTO `zt_tp_prosys` VALUES ('105', '3', '9', '腰立辉', '2017-01-16 11:08:24');
INSERT INTO `zt_tp_prosys` VALUES ('109', '2', '8', '腰立辉', '2017-01-15 17:28:54');
INSERT INTO `zt_tp_prosys` VALUES ('110', '3', '8', '腰立辉', '2017-01-15 17:29:00');

-- ----------------------------
-- Table structure for `zt_tp_risk`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_risk`;
CREATE TABLE `zt_tp_risk` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `risk` text,
  `level` varchar(2) DEFAULT NULL,
  `amethod` text,
  `proid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `remaks` varchar(200) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_risk
-- ----------------------------
INSERT INTO `zt_tp_risk` VALUES ('1002', '1', '额外企鹅去', 'C', '&lt;p&gt;\r\n	暂无方案&lt;/p&gt;\r\n', '8', '打开', '', '腰立辉', '2017-01-15 15:43:55');

-- ----------------------------
-- Table structure for `zt_tp_rules`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_rules`;
CREATE TABLE `zt_tp_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `rules` varchar(300) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `remark` text,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10234 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_rules
-- ----------------------------
INSERT INTO `zt_tp_rules` VALUES ('10067', '1', ' 点击删除，弹出确认是否删除？是，删除本记录，否，关闭弹窗', '产品原型', '10512', '正常', '9', '', '腰立辉', '2017-01-13 18:12:06');
INSERT INTO `zt_tp_rules` VALUES ('10068', '1', ' 编辑模式下页面需加载当前编辑的原有数据', '需求原型', '10511', '正常', '9', '', '腰立辉', '2017-01-13 18:12:08');
INSERT INTO `zt_tp_rules` VALUES ('10069', '1', '点击发布项目状态置为&quot;上线&quot;，项目信息发布在微网站上  发布项目时需校验项目国家是否为发布状态', '需求原型', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10070', '1', ' 项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10071', '1', '  项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10072', '2', ' 项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', '10491', '待确认', '9', '<p>\r\n	确定要多选吗？</p>\r\n', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10073', '2', '  项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', '10489', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10074', '3', ' 项目编号：系统自动生成，例如“美国投资移民“MGTZYM001', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10075', '4', ' 所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10076', '3', '  所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10077', '4', ' 项目示例：点击查看示例，弹出填写示例', '需求原型', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10078', '5', '  项目示例：点击查看示例，弹出填写示例', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10079', '6', '顾问名片： 若顾问名片模块选中则此项目将在顾问名片处展示', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10080', '3', ' 保存前生成项目编号，并与表单信息一并更新入库', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10081', '1', '排序： 选填项，输入限制：输入项必须是数字；默认值0', '需求原型', '10495', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10082', '1', '视频地址： //当媒体类型为视频时需要填写（必填）', '需求原型', '10514', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10083', '1', ' 保存按钮用于保存排序和匹配权重', '需求原型', '10522', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10084', '2', ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求原型', '10522', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10085', '1', ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求文档 ', '10523', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10086', '1', ' 删除需要弹窗确认', '需求文档 ', '10521', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10087', '1', ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10088', '1', ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10089', '2', '最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10090', '2', ' 最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10091', '3', ' 答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10092', '3', '  答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10093', '4', ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10094', '4', ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10095', '1', ' 活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', '10529', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10096', '1', '  活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', '10530', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10097', '1', ' 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页', '需求原型', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10098', '1', ' 申请条件展示图标、申请项、申请描述  后台设置申请项，最多展示7项，最少2项  申请描述限制15个字', '需求原型', '10553', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10099', '1', ' 确认后回到项目列表', '需求原型', '10555', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10100', '1', ' 首次进入加载2屏活动列表，上滑一次加载一屏', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10101', '2', ' 排序按活动时间倒序排序，同级按创建时间倒序排序', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10102', '3', ' 报名结束的活动 我要报名按钮不可点击', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10103', '4', '活动图片： 70*65  同首页专享活动 ；后台上传图片，如不上传展示默认图片', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10104', '5', ' 活动名称：最多一行（多了怎么办？）', '需求原型', '10560', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10105', '6', ' 活动时间：最多一行', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10106', '7', ' 活动地点：最多展示两行（多了怎么办？）', '需求原型', '10560', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10107', '8', ' 根据活动时间判断，如果活动时间未到，则展示火热报名中，如果活动结束后，变更为报名结束', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10108', '1', ' 【我要报名】点击后跳转到表单页', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10109', '2', ' 校验手机号长度是否正确', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10110', '3', ' 如用户已登录，则自动展示其手机号', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10111', '4', ' 修改备注描述（这句话是什么意思？）', '需求原型', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10112', '5', ' 活动图片：70*65  同首页专享活动', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10113', '6', '活动名称： 最多一行', '需求原型', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10114', '7', '活动描述： 最多展示3行，限制75个汉字（这个限制应该在后台吧）', '需求原型', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10115', '8', ' 活动时间：最多一行，年月日 上午/下午 时分', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10116', '9', ' 活动地点：最多展示两行', '需求原型 ', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10117', '10', '提交成功： 返回到专享活动列表页', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10118', '1', ' 用户填写用户名、密码后点击“登录”按钮可完成登录操作。登录后用户可修改个人资料；修改密码；访问该用户已授权的各功能模块。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10119', '1', ' 用户在登录状态下点击“退出”按钮系统切换至退出状态，并刷新至登录页面。', '需求文档 ', '10479', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10120', '2', ' 验证用户名格式是否正确；（字母、数字、下划线组合）；', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10121', '3', ' 验证密码输入是否正确； 验证用户是否存在；', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10122', '4', ' 验证用户名、密码输入是否匹配； 执行登录操作并刷新当前页面至网站首页。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10123', '5', ' 2a验证手机号码是否正确输入 2a1 若为空，给出不能为空提示。 2a2 若输入不合法，给出输入不合法提示。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10124', '6', ' 3a检查密码输入是否正确 3a1 若为空，给出不能为空提示。 3a2若输入不合法，给出输入不合法提示。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10125', '7', ' 3b验证用户是否存在 3a1若用户不存在提示用户不存在。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10126', '8', ' 4a 验证用户名、密码输入是否匹配 4al输入验证不通过，网页提示“用户名或密码输入有误，登录失败”。 4a2若登录失败，网页给出提示“登录失败”并提示失败原因。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10127', '9', ' 网页用户信息区域显示已登录的用户名（用户手机号）界面，退出登录按钮可见。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10128', '2', ' 1.	用户点击“退出登录”链接按钮	网页提示“确定要退出吗”。', '需求文档 ', '10479', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10129', '3', ' 1.	用户点击“确定”按钮	清除用户登录信息； 刷当前页面至登录页。', '需求文档 ', '10479', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10130', '8', ' 用户可在项目管理模块通过“新增”按钮创建项目，创建项目时需填写项目基本信息；新增时生成项目编号，且不可修改；新增的项目默认为“未上线”状态。 新增后的项目可在项目管理页列表查看。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10131', '5', ' 在项目管理模块通过“编辑”按钮可对项目进行编辑操作。项目编辑时可修改基本信息、申请条件、办理流程、费用详情、材料清单信息。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10132', '1', ' 列表数据原则上显示一行文字即可，超出文字可用……代替', '需求原型', '10569', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10133', '1', ' 点击国家名称进入详情页面', '需求原型', '10575', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10134', '1', ' 已发布的国家，没有删除按钮（自己理解的不知道是否正确）', '需求原型', '10572', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10135', '1', ' 点击发布校验信息填写是否完整，若不完整提示“请填写完整信息后发布”', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10136', '1', ' 点击发布国家状态置为&quot;已发布&quot;，国家信息发布在微网站上', '需求原型', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10137', '2', ' 国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10138', '3', ' 1.英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10139', '4', ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10140', '5', ' 封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10141', '6', '   居住环境、  社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10142', '1', '  国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10143', '2', '英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10144', '3', ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10145', '4', '  封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:20:03');
INSERT INTO `zt_tp_rules` VALUES ('10146', '5', ' 居住环境、 社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:20:04');
INSERT INTO `zt_tp_rules` VALUES ('10147', '1', ' 点击“新增”或“编辑”按钮打开政策新增页（确定点“编辑”也进新增页吗？）', '需求原型', '10581', '待确认', '9', '', '腰立辉', '2017-01-13 18:20:05');
INSERT INTO `zt_tp_rules` VALUES ('10148', '1', ' 点击“删除”按钮可删除移民政策。（不需要确定弹框吗？）', '需求原型', '10584', '待确认', '9', '', '腰立辉', '2017-01-13 18:20:05');
INSERT INTO `zt_tp_rules` VALUES ('10149', '1', ' 列表分页显示，首页默认显示15条', '需求原型 ', '10582', '正常', '9', '', '腰立辉', '2017-01-13 18:20:06');
INSERT INTO `zt_tp_rules` VALUES ('10150', '2', '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10581', '正常', '9', '', '腰立辉', '2017-01-13 18:20:07');
INSERT INTO `zt_tp_rules` VALUES ('10151', '1', '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10583', '正常', '9', '', '腰立辉', '2017-01-13 18:20:08');
INSERT INTO `zt_tp_rules` VALUES ('10152', '3', ' 相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', '10581', '正常', '9', '', '腰立辉', '2017-01-13 18:20:09');
INSERT INTO `zt_tp_rules` VALUES ('10153', '2', '  相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', '10583', '正常', '9', '', '腰立辉', '2017-01-13 18:20:10');
INSERT INTO `zt_tp_rules` VALUES ('10154', '1', ' 当前项目为“上线”状态时通过“暂停”按钮可切换项目状态至暂停或售罄状态，其中暂停项目不在网站显示。', '需求文档 ', '10492', '正常', '9', '', '腰立辉', '2017-01-13 18:20:11');
INSERT INTO `zt_tp_rules` VALUES ('10155', '2', ' 在项目详情页通过“发布”按钮可发布项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验项目信息是否填写完整，包括基本信息、申请条件、办理流程、费用详情、材料清单信息。若存在未填写项需要提示补充项目资料后方可发布。', '需求文档 ', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:20:13');
INSERT INTO `zt_tp_rules` VALUES ('10156', '9', ' 3.	项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:20:13');
INSERT INTO `zt_tp_rules` VALUES ('10157', '10', ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:20:14');
INSERT INTO `zt_tp_rules` VALUES ('10158', '6', ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:20:16');
INSERT INTO `zt_tp_rules` VALUES ('10159', '7', '项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:20:17');
INSERT INTO `zt_tp_rules` VALUES ('10160', '11', ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:20:18');
INSERT INTO `zt_tp_rules` VALUES ('10161', '8', ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10162', '9', ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10163', '12', ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10164', '13', ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10165', '10', ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10166', '11', ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10167', '14', ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10168', '15', ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10169', '12', ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10170', '13', ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10171', '16', ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10172', '17', ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10173', '14', ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10174', '15', ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10175', '18', ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10176', '19', ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10177', '16', ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10178', '17', ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10179', '20', ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10180', '21', ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10181', '18', ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10182', '19', ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10183', '22', ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10184', '1', ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', '10496', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10185', '1', ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', '10502', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10186', '2', ' 下拉框仅可修改状态为：“暂停”、“售罄', '需求文档 ', '10492', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10187', '3', ' 检查保存是否成功 3a1若保存失败，网页给出提示“保存失败”。', '需求文档 ', '10492', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10188', '3', ' 2.	更改项目状态为“上线”状态，同时网站端同步当前项目信息。', '需求文档 ', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10189', '4', ' 坚查项目信息是否完整 2a1若项目基本信息不完整提示“请完善项目信息”后发布。 2a2 若申请条件未填写，提示“请补充项目申请条件”。 2a3 若办理流程未填写，提示“请补充项目办理流程”。 2a4 若费用详情未填写，提示“请补充项目费用详情”。 2a5 若材料清单未填写，提示“请补充材料清单”。 2b 若发布失败，提示失败原因。', '需求文档 ', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10190', '6', ' 用户可在国家管理模块通过“新增”按钮创建国家信息，创建国家时需填写国家基本信息；新增时国家从国家字典中选择，其中英文名、地理位置均为联动信息，不可单独编辑；新增的国家默认为“未发布”状态。 新增后的国家可在国家管理页列表查看。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10191', '7', ' 在国家管理模块通过“编辑”按钮可对国家信息进行编辑操作。国家编辑时可修改基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍等信息。其中生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍均为富文本编辑方式录入。', '需求文档 ', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10192', '2', ' 在国家详情页通过“发布”按钮可国家项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验国家信息是否填写完整，包括基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍信息。若存在未填写项需要提示补充国家资料后方可发布。', '需求文档 ', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10193', '7', ' 1.	国家名：必填属性，加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列； 2.	英文名：此处为选择国家后自动加载。 3.	地理分类：此处为选择国家后自动加载。 4.	移民热点：必填属性，可多选；选项列表由字典管理处维护。 5.	代表icon：代表国家的国旗图片，图片格式：支持jpg,png格式图片，尺寸为待定,大小不超过50kb。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10194', '8', ' 6.	封面图片：用于在网站列表处显示的缩略图；图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb。 7.	国家简介：富文本输入方式，可填写500个汉字，并且支持图文并茂。 8.	发布状态：新增时国家为“未发布”状态，且不可手动更改。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10195', '9', ' 验证各项输入是否合法 3a1 若为空，给出不能为空提示。 3a2 若输入不合法，给出输入不合法提示。 3b 若保存失败，提示失败原因。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10196', '3', ' 1.	检查国家信息是否完整，包括国家基本信息页各项必填项，以及生活环境、社会福利、教育水准、投资置业有没有录入信息。 2.	更改国家状态为“已发布”状态，同时网站端同步当前国家信息。', '需求文档 ', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10197', '4', ' 2a检查国家信息是否完整 2a1若国家基本信息不完整提示“请完善国家基本信息”后发布。 2a2 若生活环境未填写，提示“请填写生活环境”。 2a3 若社会环境未填写，提示“请填写社会环境”。 2a4 若社会福利未填写，提示“请填写社会福利”。 2a5 若教育水准未填写，提示“请填写教育水准”。 2a5 若投资置业未填写，提示“请填写投资置业”。 2b 若发布失败，提示失败原因。', '需求文档 ', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10198', '1', ' 用户可在评估管理处添加、设置评估问卷，设置完成后，网站端可依据此问题列表及相关设置展示评估问题及作答方式；C端用户提交作答评估问卷后依据此处设置的匹配关系及规则加载推荐项目列表。', '需求文档 ', '10519', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10199', '2', ' 修改排序：在问题列表处修改问题排序数字，点击保存按钮可保存排序、保存匹配规则。保存后问卷信息及其设置在网站端生效。', '需求文档 ', '10519', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10200', '5', ' 在评估管理模块点击“新增”按钮进入新增问题页面，新增问题时需填写问题名、问题注解、作答模式、是否必填、答案选项等。其中问题名、问题注解、作答模式、是否必填、最多可选个数均为必填项。新增后的问题可设置起匹配关系，调整排序，修改匹配权重。', '需求文档 ', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10201', '5', ' 问题设置界面可修改评估问题信息，可设置问题对应的项目特性以及问题答案对应的项目属性的各项要求。', '需求文档 ', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10202', '2', ' 用户通过移动端访问微网站，当用户点击“进度查询”菜单时检查是否是会员； 若用户是会员则查询其办理的项目信息列表。 若用户不是会员，跳转至绑定会员页，提示其输入信息绑定会员。 会员用户可查询项目办理进度，签订协议信息；并可通过公众号时时推送办理进度信息。', '需求文档 ', '10523', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10203', '1', ' 验证非空属性； 验证当前密码是否正确； 验证新密码与确认密码是否一致', '需求文档 ', '10480', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10204', '1', ' 	登录：用户填写手机号、短信验证码可完成登录操作。', '需求文档 ', '10589', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10205', '2', ' 	登录入口:首页-专属管家，移民评估-测试问卷提交，个人中心-我的资料、我的评估结果、我的专属管家、我的进度，意见反馈进入后判断是否登录', '需求文档 ', '10589', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10206', '1', ' 	短信验证码：短信验证码由6位数字构成。网络畅通的情况下，用户需要在15分钟内输入正确的6位短信验证码，前台在60s后可重新发送新的验证码，短信验证码输入提交后即失效，发送限制依据短信平台规则(一分钟一条,一小时3条,一天10条)', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10207', '2', ' 显示【用户】手机号输入框（灰色字提示请输入您的手机号）、短信验证码输入框（灰色字提示请输入验证码），获取验证码按钮，登录按钮', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10208', '3', ' 校验手机号码长度，格式是否正确； 	验证手机号是否已输入，若未输入，提示“请输入手机号” 	如长度有误提示：“手机号码长度不是11位，请重新输入” 	如号段格式有误，提示：“手机号格式不正确，请重新输入”', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10209', '4', ' 调用短信接口，发送短信验证码至用户手机号。 验证码发送成功后，按钮“获取验证码”变更为灰色不可点击“重新获取（60）”倒计时，倒计时结束后按钮变更“重新获取”用户可点击发送新的验证码，则原有验证码失效。提示：“该验证码已失效，请重新输入”', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10210', '5', ' 验证验证码是否为正确，如输入错误，提示验证码输入错误，请重试！', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10211', '1', ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10212', '1', '  用户选择国家城市，进入体验入口，进入不同的入口看到不同的场景图片及城市介绍', '需求文档 ', '10587', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10213', '1', ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', '10557', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10214', '1', ' 用户提交移民评估的问卷后可根据答题结果获得项目匹配度最高的3种项目方案', '需求文档 ', '10559', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10215', '2', ' 进入移民评估页面。 1．	未登录或未评估用户展示评估问题及答案 2．	已评估的用户登录后展示之前做过的评估问卷 3．	从生活体验入口进来，自动选中意向国家', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10216', '3', ' 评估问题及答案从后台进行设置，包括单选多选，标签选择还是输入框，题目对应权重及答案跟项目属性的匹配', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10217', '4', ' 1.判断每道题是否已填，如未填则提示用户：您还没有填写此题 2.判断用户是否登录，未登录跳转登录页面', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10218', '5', ' 1.根据用户匹配度结果优先展示匹配度最高的前3个项目 2.排序规则：按匹配度倒序排列，如匹配度相同则展示资产要求最高的几项 3根据用户填写答案，展示对应的8项是否满足', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10219', '9', ' 用户报名参加活动，后台记录该用户的报名信息 活动列表展示活动缩略图、名称、时间、地点、标签、我要报名按钮 活动详情展示活动宣传图、名称、活动描述，时间、地点，报名姓名（必填）、联系方式（必填），参与人数（选填）确认提交', '需求文档 ', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10220', '10', ' 1.当活动结束时，标签展示“报名结束”当活动正在进行未到活动时间点时，标签展示“火热报名中” 2.报名结束的活动不可点击我要报名按钮 3.进入后加载2屏活动列表，上拉加载一屏 4.排序按活动时间倒序排列 5.活动名称、时间最多展示一行，活动地点最多展示两行', '需求文档 ', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10221', '11', ' 1.姓名和联系方式是必填项，如未填写，提交按钮置灰不允许提交，用户已登录，则自动展示其手机号 2.姓名可填英文或中文字符  3. 联系方式填写手机号，如长度有误提示：“手机号码长度不是11位，请重新输入” 4.如号段格式有误，提示：“手机号格式不正确，请重新输入” 5.如填写正确无误，确认按钮恢复为可点击', '需求文档 ', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10222', '12', ' 提示用户 报名成功，3s后返回到活动列表页', '需求文档 ', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10223', '2', ' 筛选条件：按国家地区 或按项目类型筛选', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10224', '3', ' 默认按国家地区分类，右侧拼音为国家首字母，只显示有项目的国家首字母 按国家地区：展示国家首字母、国家名称、项目名称、项目图片、推荐指数、右侧快捷拼音查找 按项目类型筛选：显示所有对外发布的项目分类，排序：投资/购房/护照/技术/留学/其他，如类型下没有项目则不显示该类型，筛选结果展示同上', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10225', '4', ' 排序规则： 按国家的首字母拼音顺序排序，该首字母拼音下无国家，则不展示此字母 如相同首字母的国家，则按项目数多的国家优先展示，项目数相同，按推荐指数平均分最高的优先展示，推荐指数相同按发布时间倒序排列 相同国家下的项目，按推荐指数从高到低排序，相同推荐指数按发布时间倒序排列 项目列表每次加载2屏，超出2屏时，每次手势上滑后加载2屏', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10226', '5', ' 点击某一项目进入项目详情H5页，展示项目名称、图片、项目介绍、项目优势、申请条件、办理流程、预约信息 项目介绍、项目优势、申请条件、办理流程后台进行设置。 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页。', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10227', '1', ' 项目优势、办理流程最多展示10条，申请条件至少展示2条，最多展示7条，其中申请条件描述限制15个字。', '需求文档 ', '10552', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10228', '2', ' 预约信息填写预约人信息及手机号，如用户已登录，则展示用户手机号，可编辑修改，校验姓名手机号是否为空，手机号长度，手机号段格式同4.2.1登录。 点击立即预约，提示用户预约成功，确认后返回到项目列表页面，点击免费评估，进入评估页面，判断是否做过评估信息，如提交则展示上一次提交信息，如未做过评估，则问卷中意向国家选中该项目所在国家', '需求文档 ', '10555', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10229', '1', ' 入口：1微信菜单-生活体验、2、微站用户端首页-生活体验', '需求文档 ', '10562', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10230', '2', ' 生活体验提供用户海外当地的生活场景展示，数据来源移民项目所在国家城市 生活体验包括：国家列表、城市列表、体验入口、场景展示 国家列表： 用户进入生活体验先选择意向国家，国家来源于移民项目所在的国家，可左右滑动展示显示移民国家，循环查看所有意向国家，排序按后台设置的顺序， 手势向左滑动时，展示国家1,国家2,国家3,…', '需求文档 ', '10562', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10231', '1', ' 城市列表： 当该国家只有一个城市时跳过该页面进入体验入口，当该国家下只有2个或3个城市时，均分显示城市，不可上下滑动，当大于3个城市时，每次手动向上滑动一次，则展示下一个城市，排序按后台设置的顺序', '需求文档 ', '10563', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10232', '1', ' 体验入口： 1、城市介绍、房产、学校、购物、街景、医院， 后台上传对应的图片。 2、管家、方案、服务，后续当微站上线后，增加对应的文字+链接，链接到专属管家、定制方案、海外服务等模块。一期上线生活体验时暂不出现文字+链接', '需求文档 ', '10564', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10233', '1', ' 场景介绍： 展示对应的图片及图片描述，或视频及视频描述，可左右滑动循环查看，后台上传对应数据，排序按后台设置的顺序，手势向左滑动时依次展示。', '需求文档 ', '10565', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');

-- ----------------------------
-- Table structure for `zt_tp_sccesscase`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_sccesscase`;
CREATE TABLE `zt_tp_sccesscase` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cat` varchar(10) DEFAULT NULL,
  `car` varchar(200) DEFAULT NULL,
  `bpath` varchar(200) NOT NULL,
  `before` varchar(32) DEFAULT NULL,
  `apath` varchar(200) NOT NULL,
  `after` varchar(32) DEFAULT NULL,
  `desc` text,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_sccesscase
-- ----------------------------
INSERT INTO `zt_tp_sccesscase` VALUES ('1', '钣金喷漆', '雪铁龙C3-XR', '/Case/before/2016-10-29/', '581490001107b.JPG', '/Case/after/2016-10-29/', '581490aa12a9e.jpg', '前翼子板撞花', '腰立辉', '2016-10-29 20:06:02');
INSERT INTO `zt_tp_sccesscase` VALUES ('2', '大保养', '奔驰E300', '/Case/before/2016-10-29/', '58149047d90ea.jpg', '/Case/after/2016-10-29/', '581490b6c991d.jpg', '奔驰豪车30000公里保养，更换机油三滤，刹车片，变速箱油，火花塞……', '腰立辉', '2016-10-29 20:06:14');

-- ----------------------------
-- Table structure for `zt_tp_scene`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_scene`;
CREATE TABLE `zt_tp_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `flow` varchar(300) DEFAULT NULL,
  `sourceid` smallint(6) DEFAULT '0',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10038 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_scene
-- ----------------------------
INSERT INTO `zt_tp_scene` VALUES ('10033', '1', 'M', '3', '关注用户', '默认', '', '在公众订阅号，直接打开并提交报名', '正常', '8', '微信号个人中心->公司名片->提交报名', '0', '腰立辉', '2017-01-13 18:29:19');
INSERT INTO `zt_tp_scene` VALUES ('10034', '2', 'M', '2', '专属管家', '未开启个人名片时', null, '分享公司名片', '正常', '8', '', '0', '腰立辉', '2017-01-13 18:29:20');
INSERT INTO `zt_tp_scene` VALUES ('10035', '3', 'M', '2', '专属管家', '开启个人名片', null, '分享公司名片-分享个人名片', '正常', '8', '', '10034', '腰立辉', '2017-01-13 18:29:21');
INSERT INTO `zt_tp_scene` VALUES ('10036', '4', 'M', '2', '关注用户', '在管家分享后', null, '管家名片填写报名信息', '正常', '8', '', '0', '腰立辉', '2017-01-13 18:29:27');

-- ----------------------------
-- Table structure for `zt_tp_scenefunc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_scenefunc`;
CREATE TABLE `zt_tp_scenefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `sourceid` int(11) DEFAULT '0',
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(3) DEFAULT '未绑定',
  `casemain` varchar(50) DEFAULT NULL,
  `caseexpected` varchar(200) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10252 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_scenefunc
-- ----------------------------
INSERT INTO `zt_tp_scenefunc` VALUES ('10222', '1', '10425', 'wzb', '微站后台- 内容发布-移民管家', ' 管家新增', '0', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-07 18:13:36');
INSERT INTO `zt_tp_scenefunc` VALUES ('10230', '3', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:31');
INSERT INTO `zt_tp_scenefunc` VALUES ('10229', '2', '10420', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:21');
INSERT INTO `zt_tp_scenefunc` VALUES ('10228', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:19');
INSERT INTO `zt_tp_scenefunc` VALUES ('10231', '4', '10423', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 报名', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:36');
INSERT INTO `zt_tp_scenefunc` VALUES ('10232', '5', '10424', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:42');
INSERT INTO `zt_tp_scenefunc` VALUES ('10233', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:27:06');
INSERT INTO `zt_tp_scenefunc` VALUES ('10234', '2', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:27:09');
INSERT INTO `zt_tp_scenefunc` VALUES ('10235', '3', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:27:13');
INSERT INTO `zt_tp_scenefunc` VALUES ('10236', '3', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10237', '4', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10238', '5', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10239', '1', '10426', 'wzb', '微站后台- 内容发布-移民管家', ' 管家编辑', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10240', '2', '10429', 'wzb', '微站后台- 内容发布-移民管家', ' 管家详情', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10241', '1', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:33:27');
INSERT INTO `zt_tp_scenefunc` VALUES ('10242', '4', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10243', '3', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10244', '2', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10245', '5', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10246', '6', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10247', '1', '10570', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', '10037', 'qw', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-22 16:53:43');
INSERT INTO `zt_tp_scenefunc` VALUES ('10248', '2', '10568', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', '10037', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-21 17:07:39');
INSERT INTO `zt_tp_scenefunc` VALUES ('10251', '3', '10480', 'wzb', '微站CRM后台- 登录', ' 修改密码', '10037', null, '0', '10137', '已绑定', '正常修改密码', ' 修改成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-21 18:34:47');

-- ----------------------------
-- Table structure for `zt_tp_stage`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_stage`;
CREATE TABLE `zt_tp_stage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `state` varchar(5) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1069 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_stage
-- ----------------------------
INSERT INTO `zt_tp_stage` VALUES ('1048', '1', '编写测试计划', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-15 14:04:20');
INSERT INTO `zt_tp_stage` VALUES ('1065', '1', '编写测试计划', '9', '2016-12-22', '进行中', '无文档', '腰立辉', '2017-01-13 18:08:23');
INSERT INTO `zt_tp_stage` VALUES ('1050', '2', '功能验证', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:06');
INSERT INTO `zt_tp_stage` VALUES ('1051', '3', '第一轮测试', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:04');
INSERT INTO `zt_tp_stage` VALUES ('1052', '4', '第二轮测试', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:03');
INSERT INTO `zt_tp_stage` VALUES ('1053', '5', '第三轮测试', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:01');
INSERT INTO `zt_tp_stage` VALUES ('1054', '6', '第四轮测试', '8', '2016-12-20', '已完成', '无文档', '腰立辉', '2017-01-13 18:07:58');
INSERT INTO `zt_tp_stage` VALUES ('1055', '7', '线上验证测试', '8', '2016-12-21', '已完成', '无文档', '腰立辉', '2017-01-15 14:03:39');
INSERT INTO `zt_tp_stage` VALUES ('1066', '2', '编写测试用例', '9', '2016-12-26', '进行中', '无文档', '腰立辉', '2017-01-13 18:08:24');
INSERT INTO `zt_tp_stage` VALUES ('1067', '3', '研发冒烟测试', '9', '2016-12-27', '进行中', '无文档', '腰立辉', '2017-01-13 18:09:18');

-- ----------------------------
-- Table structure for `zt_tp_stagetester`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_stagetester`;
CREATE TABLE `zt_tp_stagetester` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'M',
  `stageid` smallint(6) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `end` date DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10066 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_stagetester
-- ----------------------------
INSERT INTO `zt_tp_stagetester` VALUES ('10031', '1', 'C', '1029', '腰立辉', '2016-10-22', '腰立辉', '2016-10-21 11:34:14');
INSERT INTO `zt_tp_stagetester` VALUES ('10032', '1', 'C', '1030', '腰立辉', '2016-10-24', '腰立辉', '2016-10-21 11:34:40');
INSERT INTO `zt_tp_stagetester` VALUES ('10033', '1', 'M', '1031', '腰立辉', '2016-10-24', '腰立辉', '2016-10-21 11:35:02');
INSERT INTO `zt_tp_stagetester` VALUES ('10009', '1', 'M', '1011', '腰立辉', '2016-09-25', '腰立辉', '2016-09-24 20:45:23');
INSERT INTO `zt_tp_stagetester` VALUES ('10010', '1', 'M', '1013', '李小梅', '2016-09-25', '腰立辉', '2016-09-24 20:45:46');
INSERT INTO `zt_tp_stagetester` VALUES ('10011', '2', 'M', '1013', '曹玉芳', '2016-09-25', '腰立辉', '2016-09-24 20:45:49');
INSERT INTO `zt_tp_stagetester` VALUES ('10012', '1', 'M', '1000', '腰立辉', '2016-09-26', '腰立辉', '2016-09-25 13:38:02');
INSERT INTO `zt_tp_stagetester` VALUES ('10030', '1', 'M', '1006', '腰立辉', '2016-10-18', '腰立辉', '2016-10-17 15:59:29');
INSERT INTO `zt_tp_stagetester` VALUES ('10029', '1', 'M', '1004', '腰立辉', '2016-11-08', '腰立辉', '2016-11-04 09:17:51');
INSERT INTO `zt_tp_stagetester` VALUES ('10015', '1', 'M', '1008', '腰立辉', '2016-09-26', '腰立辉', '2016-09-25 13:45:45');
INSERT INTO `zt_tp_stagetester` VALUES ('10016', '1', 'M', '1003', '腰立辉', '2016-10-14', '腰立辉', '2016-10-13 09:53:48');
INSERT INTO `zt_tp_stagetester` VALUES ('10036', '1', 'M', '1034', '腰立辉', '2016-10-27', '腰立辉', '2016-10-21 11:36:00');
INSERT INTO `zt_tp_stagetester` VALUES ('10034', '1', 'M', '1032', '腰立辉', '2016-10-25', '腰立辉', '2016-10-21 11:35:23');
INSERT INTO `zt_tp_stagetester` VALUES ('10035', '1', 'M', '1033', '腰立辉', '2016-10-26', '腰立辉', '2016-10-21 11:35:42');
INSERT INTO `zt_tp_stagetester` VALUES ('10025', '1', 'M', '1015', '曹玉芳', '2016-09-29', '腰立辉', '2016-09-28 15:48:49');
INSERT INTO `zt_tp_stagetester` VALUES ('10026', '1', 'M', '1016', '腰立辉', '2016-10-09', '腰立辉', '2016-09-28 15:49:25');
INSERT INTO `zt_tp_stagetester` VALUES ('10027', '1', 'M', '1017', '曹玉芳', '2016-10-11', '腰立辉', '2016-10-10 13:28:24');
INSERT INTO `zt_tp_stagetester` VALUES ('10028', '2', 'M', '1017', '腰立辉', '2016-10-11', '腰立辉', '2016-10-10 13:28:28');
INSERT INTO `zt_tp_stagetester` VALUES ('10037', '1', 'M', '1035', '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 09:37:52');
INSERT INTO `zt_tp_stagetester` VALUES ('10038', '1', 'M', '1036', '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 09:38:07');
INSERT INTO `zt_tp_stagetester` VALUES ('10039', '1', 'M', '1037', '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 09:53:32');
INSERT INTO `zt_tp_stagetester` VALUES ('10040', '1', 'M', '1038', '田亮', '2016-11-03', '腰立辉', '2016-11-03 16:44:18');
INSERT INTO `zt_tp_stagetester` VALUES ('10041', '2', 'M', '1008', '曹玉芳', '2016-11-11', '腰立辉', '2016-11-10 11:04:46');
INSERT INTO `zt_tp_stagetester` VALUES ('10042', '1', 'M', '1048', '腰立辉', '2016-12-06', '腰立辉', '2016-12-05 17:29:53');
INSERT INTO `zt_tp_stagetester` VALUES ('10043', '1', 'C', '1049', '腰立辉', '2016-12-06', '腰立辉', '2016-12-05 17:31:28');
INSERT INTO `zt_tp_stagetester` VALUES ('10044', '2', 'C', '1049', '魏斌', '2016-12-06', '腰立辉', '2016-12-05 17:31:30');
INSERT INTO `zt_tp_stagetester` VALUES ('10045', '0', 'M', '1050', '腰立辉', '2016-12-06', '腰立辉', '2016-12-08 15:11:57');
INSERT INTO `zt_tp_stagetester` VALUES ('10046', '2', 'M', '1050', '魏斌', '2016-12-06', '腰立辉', '2016-12-05 17:32:11');
INSERT INTO `zt_tp_stagetester` VALUES ('10047', '1', 'M', '1056', '腰立辉', '2016-12-15', '腰立辉', '2016-12-05 17:55:45');
INSERT INTO `zt_tp_stagetester` VALUES ('10048', '1', 'M', '1051', '腰立辉', '2016-12-10', '魏斌', '2016-12-09 11:49:42');
INSERT INTO `zt_tp_stagetester` VALUES ('10049', '2', 'M', '1051', '魏斌', '2016-12-10', '魏斌', '2016-12-09 11:49:51');
INSERT INTO `zt_tp_stagetester` VALUES ('10050', '1', 'M', '1049', '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 17:52:51');
INSERT INTO `zt_tp_stagetester` VALUES ('10051', '1', 'M', '1058', '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 19:18:42');
INSERT INTO `zt_tp_stagetester` VALUES ('10052', '1', 'M', '1059', '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 20:39:32');
INSERT INTO `zt_tp_stagetester` VALUES ('10053', '1', 'M', '1060', '腰立辉', '2016-12-14', '腰立辉', '2016-12-13 11:16:20');
INSERT INTO `zt_tp_stagetester` VALUES ('10054', '1', 'M', '1052', '腰立辉', '2016-12-15', '腰立辉', '2016-12-14 11:35:01');
INSERT INTO `zt_tp_stagetester` VALUES ('10055', '1', 'M', '1053', '腰立辉', '2016-12-20', '腰立辉', '2016-12-19 14:53:05');
INSERT INTO `zt_tp_stagetester` VALUES ('10056', '1', 'M', '1054', '腰立辉', '2016-12-21', '腰立辉', '2016-12-20 09:42:22');
INSERT INTO `zt_tp_stagetester` VALUES ('10057', '1', 'M', '1055', '腰立辉', '2016-12-22', '腰立辉', '2016-12-21 09:20:45');
INSERT INTO `zt_tp_stagetester` VALUES ('10058', '1', 'C', '1066', '腰立辉', '2016-12-22', '腰立辉', '2016-12-21 16:58:53');
INSERT INTO `zt_tp_stagetester` VALUES ('10059', '2', 'C', '1066', '魏斌', '2016-12-22', '腰立辉', '2016-12-21 16:58:56');
INSERT INTO `zt_tp_stagetester` VALUES ('10060', '1', 'M', '1067', '杨学毅', '2016-12-23', '腰立辉', '2016-12-22 09:34:08');
INSERT INTO `zt_tp_stagetester` VALUES ('10061', '2', 'M', '1067', '项斌', '2016-12-23', '腰立辉', '2016-12-22 09:34:16');
INSERT INTO `zt_tp_stagetester` VALUES ('10062', '3', 'M', '1067', '谷一创', '2016-12-23', '腰立辉', '2016-12-22 09:34:18');
INSERT INTO `zt_tp_stagetester` VALUES ('10063', '4', 'M', '1067', '褚秀良', '2016-12-23', '腰立辉', '2016-12-22 09:34:21');
INSERT INTO `zt_tp_stagetester` VALUES ('10064', '1', 'M', '1065', '腰立辉', null, '腰立辉', '2017-01-15 21:18:32');
INSERT INTO `zt_tp_stagetester` VALUES ('10065', '0', 'C', '1065', '腰立辉', null, '腰立辉', '2017-01-15 23:05:26');

-- ----------------------------
-- Table structure for `zt_tp_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_tickets`;
CREATE TABLE `zt_tp_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(5) DEFAULT '新建',
  `result` varchar(10) DEFAULT '谢谢参与',
  `voucherid` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `chouj` smallint(1) DEFAULT '0',
  `owner` varchar(11) DEFAULT NULL,
  `duij` smallint(1) DEFAULT '0',
  `code` int(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_tickets
-- ----------------------------
INSERT INTO `zt_tp_tickets` VALUES ('499', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '110629', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:56');
INSERT INTO `zt_tp_tickets` VALUES ('500', '设奖', '3:三等奖', '19', null, '0', null, '0', '930429', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('501', '设奖', '3:三等奖', '19', null, '0', null, '0', '613253', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('502', '设奖', '1:一等奖', '19', null, '0', null, '0', '410556', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('503', '抽奖', '谢谢参与', '19', '127.0.0.1', '1', null, '0', null, '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:51');
INSERT INTO `zt_tp_tickets` VALUES ('504', '设奖', '4:参与奖', '19', '172.20.100.72', '0', null, '0', '872750', '客户', '2016-11-01 17:11:53', '2016-11-01 18:01:44');
INSERT INTO `zt_tp_tickets` VALUES ('505', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('506', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('507', '设奖', '2:二等奖', '19', null, '0', null, '0', '227468', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('508', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '225216', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:47');
INSERT INTO `zt_tp_tickets` VALUES ('509', '设奖', '4:参与奖', '19', null, '0', null, '0', '316842', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('510', '设奖', '3:三等奖', '19', null, '0', null, '0', '588809', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('511', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('512', '设奖', '3:三等奖', '19', null, '0', null, '0', '887033', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('513', '设奖', '1:一等奖', '19', null, '0', null, '0', '217031', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('514', '设奖', '2:二等奖', '19', null, '0', null, '0', '927133', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('515', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('516', '设奖', '2:二等奖', '19', null, '0', null, '0', '433023', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('517', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '589138', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:59');
INSERT INTO `zt_tp_tickets` VALUES ('518', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('519', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '253176', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:49');
INSERT INTO `zt_tp_tickets` VALUES ('520', '设奖', '4:参与奖', '19', null, '0', null, '0', '122659', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('521', '设奖', '4:参与奖', '19', null, '0', null, '0', '282510', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('522', '设奖', '4:参与奖', '19', null, '0', null, '0', '231314', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('523', '设奖', '4:参与奖', '19', null, '0', null, '0', '297177', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('524', '设奖', '3:三等奖', '19', null, '0', null, '0', '393911', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('525', '设奖', '4:参与奖', '19', null, '0', null, '0', '672689', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('526', '设奖', '4:参与奖', '19', null, '0', null, '0', '326675', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('527', '抽奖', '4:参与奖', '19', '172.20.100.72', '1', null, '0', '310800', '客户', '2016-11-01 17:11:53', '2016-11-01 18:05:25');
INSERT INTO `zt_tp_tickets` VALUES ('528', '设奖', '4:参与奖', '19', null, '0', null, '0', '414016', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('529', '设奖', '4:参与奖', '19', null, '0', null, '0', '457687', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('530', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '778103', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:54');
INSERT INTO `zt_tp_tickets` VALUES ('531', '设奖', '0:特等奖', '19', null, '0', null, '0', '536349', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('532', '设奖', '3:三等奖', '19', null, '0', null, '0', '195443', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('533', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('534', '设奖', '2:二等奖', '19', null, '0', null, '0', '805569', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('535', '设奖', '3:三等奖', '19', null, '0', null, '0', '866983', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('536', '设奖', '2:二等奖', '19', null, '0', null, '0', '775192', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('537', '设奖', '4:参与奖', '19', null, '0', null, '0', '472683', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('538', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '725534', '客户', '2016-11-01 17:11:53', '2016-11-10 21:02:21');

-- ----------------------------
-- Table structure for `zt_tp_userprod`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_userprod`;
CREATE TABLE `zt_tp_userprod` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` smallint(6) NOT NULL,
  `prodid` smallint(6) NOT NULL,
  `moder` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_userprod
-- ----------------------------
INSERT INTO `zt_tp_userprod` VALUES ('3', '2', '1', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('4', '2', '3', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('5', '2', '5', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('6', '2', '2', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('7', '2', '4', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('8', '2', '10', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('17', '2', '12', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('18', '4', '5', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('19', '7', '8', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('20', '11', '8', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('21', '8', '3', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('22', '9', '6', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('23', '10', '6', '腰立辉');

-- ----------------------------
-- Table structure for `zt_tp_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_voucher`;
CREATE TABLE `zt_tp_voucher` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `remark` text,
  `voucher` varchar(5) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `total` int(11) DEFAULT '10000',
  `specia` int(1) DEFAULT '1',
  `first` int(1) DEFAULT '3',
  `second` int(2) DEFAULT '10',
  `third` int(3) DEFAULT '100',
  `canyu` int(3) DEFAULT '500',
  `moder` varchar(10) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_voucher
-- ----------------------------
INSERT INTO `zt_tp_voucher` VALUES ('19', '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', '40', '1', '2', '5', '10', '15', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:18:28');

-- ----------------------------
-- Table structure for `zt_user`
-- ----------------------------
DROP TABLE IF EXISTS `zt_user`;
CREATE TABLE `zt_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `dept` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '部门ID',
  `userno` smallint(6) DEFAULT NULL,
  `account` char(30) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `role` char(10) NOT NULL DEFAULT '',
  `realname` char(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `usergp` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `nickname` char(60) NOT NULL DEFAULT '',
  `commiter` varchar(100) NOT NULL,
  `avatar` char(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '生日',
  `gender` enum('f','m') NOT NULL DEFAULT 'f',
  `email` char(90) NOT NULL DEFAULT '' COMMENT '邮件',
  `skype` char(90) NOT NULL DEFAULT '',
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(90) NOT NULL DEFAULT '',
  `gtalk` char(90) NOT NULL DEFAULT '',
  `wangwang` char(90) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `phone` char(20) NOT NULL DEFAULT '' COMMENT '座机',
  `address` char(120) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00' COMMENT '入职时间',
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '登录IP',
  `last` int(10) unsigned NOT NULL DEFAULT '0',
  `fails` tinyint(5) NOT NULL DEFAULT '0',
  `locked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ranzhi` char(30) NOT NULL DEFAULT '',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  KEY `user` (`dept`,`email`,`commiter`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_user
-- ----------------------------
INSERT INTO `zt_user` VALUES ('1', '0', null, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 'admin', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '6', '119.61.24.226', '1484186765', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('2', '6', '6270', 'yao', 'c33367701511b4f6020ec61ded352059', 'dev', '腰立辉', 'PJD', 'Test/user/2017-01-15/', '587afd40f3c46.jpg', '', '', '', '0000-00-00', 'm', '83000892@qq.com', '', '83000892', '', '', '', '234234', '18801043607', '', '', '2017-01-08', '7', '119.61.24.226', '1484200856', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('3', '6', null, 'jiaxn', 'e10adc3949ba59abbe56e057f20f883e', 'qa', '贾晓宁', 'Mtsh', 'Test/user/2017-01-15/', '587afd560d3cf.jpeg', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('4', '1', null, 'zhangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '张秀丽', 'Xiuli', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('5', '2', null, 'masf', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '马双峰', 'Mtsh', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('12', '3', null, 'liangxw', 'e10adc3949ba59abbe56e057f20f883e', 'po', '梁小伟', 'Tuocai', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('7', '4', null, 'liuyj', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '刘燕军', 'Mtsh', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('8', '5', null, 'wangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '王晓亮', 'Anshun', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('29', '5', null, 'jiaxy', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '贾晓月', 'Anshun', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('10', '1', null, 'yaojq', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '腰建强', 'Xiuli', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('14', '6', null, 'xingl', 'e10adc3949ba59abbe56e057f20f883e', 'dev', '邢丽', 'Mtsh', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('15', '2', null, 'yangyh', 'e10adc3949ba59abbe56e057f20f883e', 'po', '杨艳辉', 'Mtsh', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '1', '127.0.0.1', '1483885906', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('26', '7', null, 'benjamin', '21218cca77804d2ba1922c33e0151105', 'qa', '魏斌', 'PJD', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '177', '192.168.21.199', '1484099350', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('6', '7', null, 'dengye', '21218cca77804d2ba1922c33e0151105', 'po', '邓晔', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '27', '192.168.21.209', '1484013843', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('9', '7', null, 'abby', '21218cca77804d2ba1922c33e0151105', 'others', '王婷婷', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '1', '192.168.6.28', '1482810622', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('11', '7', null, 'annie', '21218cca77804d2ba1922c33e0151105', 'po', '杨雪玲', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '16', '192.168.21.205', '1484099804', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('13', '7', null, 'oliver', '21218cca77804d2ba1922c33e0151105', 'dev', '陈静', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '9', '192.168.21.202', '1483954483', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('18', '7', null, 'yangyi', '21218cca77804d2ba1922c33e0151105', 'dev', '杨学毅', 'PJD', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '29', '192.168.21.198', '1484043521', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('19', '7', null, 'flora', '21218cca77804d2ba1922c33e0151105', 'dev', '刘雨熙', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '8', '192.168.21.200', '1484013857', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('20', '7', null, 'damon', '21218cca77804d2ba1922c33e0151105', 'dev', '项斌', 'PJD', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '24', '192.168.21.195', '1484098281', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('21', '7', null, 'jeff', '21218cca77804d2ba1922c33e0151105', 'dev', '褚秀良', 'PJD', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '13', '192.168.102.167', '1483951221', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('22', '7', null, 'Wain', '21218cca77804d2ba1922c33e0151105', 'top', '佟威', 'PJD', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('23', '7', null, 'Gorge', '21218cca77804d2ba1922c33e0151105', 'dev', '谷一创', 'PJD', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '11', '192.168.21.196', '1483957335', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('30', '0', null, 'loki', '21218cca77804d2ba1922c33e0151105', '', '顾鹏', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');

-- ----------------------------
-- Table structure for `zt_usercontact`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usercontact`;
CREATE TABLE `zt_usercontact` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `listName` varchar(60) NOT NULL,
  `userList` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_usercontact
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usergroup`;
CREATE TABLE `zt_usergroup` (
  `account` char(30) NOT NULL DEFAULT '',
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `account` (`account`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_usergroup
-- ----------------------------
INSERT INTO `zt_usergroup` VALUES ('jiaxn', '3');
INSERT INTO `zt_usergroup` VALUES ('jiaxy', '4');
INSERT INTO `zt_usergroup` VALUES ('liangxw', '5');
INSERT INTO `zt_usergroup` VALUES ('liuyj', '4');
INSERT INTO `zt_usergroup` VALUES ('masf', '4');
INSERT INTO `zt_usergroup` VALUES ('wangxl', '5');
INSERT INTO `zt_usergroup` VALUES ('xingl', '2');
INSERT INTO `zt_usergroup` VALUES ('yangyh', '5');
INSERT INTO `zt_usergroup` VALUES ('yao', '1');
INSERT INTO `zt_usergroup` VALUES ('yao', '2');
INSERT INTO `zt_usergroup` VALUES ('yaojq', '4');
INSERT INTO `zt_usergroup` VALUES ('zhangxl', '5');

-- ----------------------------
-- Table structure for `zt_userquery`
-- ----------------------------
DROP TABLE IF EXISTS `zt_userquery`;
CREATE TABLE `zt_userquery` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(90) NOT NULL,
  `form` text NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `query` (`account`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_userquery
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_usertpl`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usertpl`;
CREATE TABLE `zt_usertpl` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `type` char(30) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `public` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_usertpl
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_xl_customer`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_customer`;
CREATE TABLE `zt_xl_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `custype` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `coursetype` varchar(5) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_customer
-- ----------------------------
INSERT INTO `zt_xl_customer` VALUES ('1', '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', '1', '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '1478415695', '2016-12-13 17:21:44');
INSERT INTO `zt_xl_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '', '', '腰立辉', '腰立辉', '1479042931', '2016-11-13 21:17:14');
INSERT INTO `zt_xl_customer` VALUES ('13', '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '中学课程', '刘一玮（男、44中）', null, null, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '1479302465', '2016-12-13 17:28:34');
INSERT INTO `zt_xl_customer` VALUES ('14', '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '1481619189', '2016-12-13 17:37:07');

-- ----------------------------
-- Table structure for `zt_xl_order`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_order`;
CREATE TABLE `zt_xl_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `productmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品总额',
  `state` smallint(6) NOT NULL DEFAULT '1' COMMENT '订单状态',
  `payway` smallint(6) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `content` varchar(255) NOT NULL COMMENT '订单留言',
  `atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `ptime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '付款时间',
  `stime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `wlname` varchar(20) NOT NULL COMMENT '物流名称',
  `wlid` varchar(20) NOT NULL COMMENT '运单编号',
  `wlmoney` decimal(5,1) NOT NULL COMMENT '物流运费',
  `uid` int(10) unsigned NOT NULL COMMENT '用户编号',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `utname` varchar(10) NOT NULL COMMENT '收货人名',
  `uphone` char(11) NOT NULL COMMENT '收货手机',
  `utel` varchar(20) NOT NULL COMMENT '收货人固定电话',
  `uaddress` varchar(255) NOT NULL COMMENT '用户地址',
  PRIMARY KEY (`id`),
  KEY `order_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1608180002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_order
-- ----------------------------
INSERT INTO `zt_xl_order` VALUES ('1608180001', '5288.0', '5288.0', '4', '3', '尽快发货', '1471488598', '1471488742', '1471488709', '顺丰快递', '1231312314', '0.0', '1', 'admin', '腰立辉', '18801043607', '', '北京市北京市北京市海淀区西外大街168号');

-- ----------------------------
-- Table structure for `zt_xl_service`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_service`;
CREATE TABLE `zt_xl_service` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(2) NOT NULL,
  `cate` smallint(6) NOT NULL,
  `sName` varchar(15) NOT NULL,
  `path` varchar(200) NOT NULL,
  `img` varchar(48) NOT NULL,
  `textdesc` text NOT NULL,
  `state` varchar(5) NOT NULL,
  `moder` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_service
-- ----------------------------
INSERT INTO `zt_xl_service` VALUES ('1', '0', '1', '打字复印', '/Service/2016-12-25/', '585fd1aa977cb.jpg', '1112', '正常', '张秀丽');
INSERT INTO `zt_xl_service` VALUES ('2', '0', '1', '广告材料批发及零售', '/Service/2016-12-25/', '585fd2975a050.jpeg', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('3', '0', '1', '广告设计', '/Service/2016-12-25/', '585fd2a2a30da.jpeg', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('4', '0', '1', '广告制作', '/Service/2016-12-25/', '585fd2af09ee6.jpg', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('5', '0', '2', '基础企业网站建设', '/Service/2016-12-25/', '585fd330ebeb7.png', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('6', '0', '2', '网站定制化', '/Service/2016-12-25/', '585fd344bf3a7.png', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('7', '0', '2', '网站运维', '', '', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('8', '0', '6', '申请微信“服务号”', '/Service/2016-12-25/', '585fd3aedb1a8.png', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('9', '0', '6', '申请微信“订阅号”', '/Service/2016-12-25/', '585fd3bd6cfe6.png', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('10', '0', '6', '申请微信“企业号”', '/Service/2016-12-25/', '585fd3cf34194.png', '', '', '腰立辉');
INSERT INTO `zt_xl_service` VALUES ('11', '0', '6', '微信公众账号运维', '', '', '', '', '腰立辉');

-- ----------------------------
-- Table structure for `zt_xl_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_tickets`;
CREATE TABLE `zt_xl_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(5) DEFAULT '新建',
  `result` varchar(10) DEFAULT '谢谢参与',
  `voucherid` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `chouj` smallint(1) DEFAULT '0',
  `owner` varchar(11) DEFAULT NULL,
  `duij` smallint(1) DEFAULT '0',
  `code` int(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_tickets
-- ----------------------------
INSERT INTO `zt_xl_tickets` VALUES ('499', '设奖', '4:参与奖', '19', null, '0', null, '0', '110629', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('500', '设奖', '3:三等奖', '19', null, '0', null, '0', '930429', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('501', '设奖', '3:三等奖', '19', null, '0', null, '0', '613253', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('502', '设奖', '1:一等奖', '19', null, '0', null, '0', '410556', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('503', '抽奖', '谢谢参与', '19', '127.0.0.1', '1', null, '0', null, '客户', '2016-11-09 23:19:51');
INSERT INTO `zt_xl_tickets` VALUES ('504', '设奖', '4:参与奖', '19', '172.20.100.72', '0', null, '0', '872750', '客户', '2016-11-01 18:01:44');
INSERT INTO `zt_xl_tickets` VALUES ('505', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('506', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('507', '设奖', '2:二等奖', '19', null, '0', null, '0', '227468', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('508', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '225216', '客户', '2016-11-09 23:19:47');
INSERT INTO `zt_xl_tickets` VALUES ('509', '设奖', '4:参与奖', '19', null, '0', null, '0', '316842', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('510', '设奖', '3:三等奖', '19', null, '0', null, '0', '588809', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('511', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('512', '设奖', '3:三等奖', '19', null, '0', null, '0', '887033', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('513', '设奖', '1:一等奖', '19', null, '0', null, '0', '217031', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('514', '设奖', '2:二等奖', '19', null, '0', null, '0', '927133', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('515', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('516', '设奖', '2:二等奖', '19', null, '0', null, '0', '433023', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('517', '设奖', '3:三等奖', '19', null, '0', null, '0', '589138', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('518', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('519', '设奖', '3:三等奖', '19', null, '0', null, '0', '253176', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('520', '设奖', '4:参与奖', '19', null, '0', null, '0', '122659', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('521', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '282510', '客户', '2016-12-25 23:04:20');
INSERT INTO `zt_xl_tickets` VALUES ('522', '设奖', '4:参与奖', '19', null, '0', null, '0', '231314', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('523', '设奖', '4:参与奖', '19', null, '0', null, '0', '297177', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('524', '设奖', '3:三等奖', '19', null, '0', null, '0', '393911', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('525', '设奖', '4:参与奖', '19', null, '0', null, '0', '672689', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('526', '抽奖', '4:参与奖', '19', null, '1', null, '0', '326675', '客户', '2017-01-10 09:45:45');
INSERT INTO `zt_xl_tickets` VALUES ('527', '抽奖', '4:参与奖', '19', '172.20.100.72', '1', null, '0', '310800', '客户', '2016-11-01 18:05:25');
INSERT INTO `zt_xl_tickets` VALUES ('528', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '414016', '客户', '2016-12-25 23:04:27');
INSERT INTO `zt_xl_tickets` VALUES ('529', '设奖', '4:参与奖', '19', null, '0', null, '0', '457687', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('530', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '778103', '客户', '2016-11-09 23:19:54');
INSERT INTO `zt_xl_tickets` VALUES ('531', '设奖', '0:特等奖', '19', null, '0', null, '0', '536349', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('532', '抽奖', '3:三等奖', '19', '119.61.24.226', '1', null, '0', '195443', '客户', '2017-01-10 09:45:29');
INSERT INTO `zt_xl_tickets` VALUES ('533', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('534', '设奖', '2:二等奖', '19', null, '0', null, '0', '805569', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('535', '设奖', '3:三等奖', '19', null, '0', null, '0', '866983', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('536', '设奖', '2:二等奖', '19', null, '0', null, '0', '775192', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('537', '设奖', '4:参与奖', '19', null, '0', null, '0', '472683', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('538', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '725534', '客户', '2016-11-10 21:02:21');

-- ----------------------------
-- Table structure for `zt_xl_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_voucher`;
CREATE TABLE `zt_xl_voucher` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `remark` text,
  `voucher` varchar(5) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `total` int(11) DEFAULT '10000',
  `specia` int(1) DEFAULT '1',
  `first` int(1) DEFAULT '3',
  `second` int(2) DEFAULT '10',
  `third` int(3) DEFAULT '100',
  `canyu` int(3) DEFAULT '500',
  `moder` varchar(10) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_voucher
-- ----------------------------
INSERT INTO `zt_xl_voucher` VALUES ('19', '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', '40', '1', '2', '5', '10', '15', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:18:28');

-- ----------------------------
-- View structure for `finish`
-- ----------------------------
DROP VIEW IF EXISTS `finish`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `finish` AS select `zt_task`.`finishedBy` AS `finishedby`,sum(`zt_task`.`estimate`) AS `estimate`,sum(`zt_task`.`consumed`) AS `consumed`,sum(`zt_task`.`left`) AS `left1` from `zt_task` where ((`zt_task`.`assignedTo` = 'closed') and (`zt_task`.`deleted` = '0')) group by `zt_task`.`finishedBy` ;
