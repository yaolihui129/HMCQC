/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-02-21 13:48:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_wx_wechat`
-- ----------------------------
DROP TABLE IF EXISTS `zt_wx_wechat`;
CREATE TABLE `zt_wx_wechat` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `wechat` varchar(30) NOT NULL COMMENT '分类名称',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `grant_type` varchar(255) DEFAULT 'client_credential',
  `appid` char(18) DEFAULT NULL,
  `appsecret` char(32) DEFAULT NULL,
  `access_token` char(138) DEFAULT NULL,
  `expires_in` int(11) DEFAULT NULL,
  `otime` int(11) DEFAULT NULL,
  `errcode` int(11) DEFAULT NULL,
  `errmsg` varchar(255) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_wx_wechat
-- ----------------------------
INSERT INTO `zt_wx_wechat` VALUES ('1', 'yaolh测试接口号', '1', 'client_credential', 'wx3452e8086f5fefab', 'df38233db1ca1150fa34d42dabf8f5cc', null, null, null, null, null, '2017-02-21 13:42:33');
INSERT INTO `zt_wx_wechat` VALUES ('2', '安顺订阅号', '3', 'client_credential', null, null, null, null, null, null, null, '2017-02-21 13:42:13');
INSERT INTO `zt_wx_wechat` VALUES ('3', '麦田订阅号', '3', 'client_credential', null, null, null, null, null, null, null, '2017-02-21 13:42:14');
