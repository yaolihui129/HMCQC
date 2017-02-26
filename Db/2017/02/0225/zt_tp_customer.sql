/*
Navicat MySQL Data Transfer

Source Server         : mysql:3306
Source Server Version : 50532
Source Host           : localhost:3307
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-02-26 15:36:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tp_customer`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_customer`;
CREATE TABLE `zt_tp_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `openid` char(32) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `pincodes` char(18) DEFAULT NULL COMMENT '身份证号码',
  `password` char(32) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `gender` varchar(2) DEFAULT '保密',
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `year` char(5) DEFAULT NULL,
  `figureurl_qq_1` varchar(200) DEFAULT NULL,
  `figureurl_qq_2` varchar(200) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `qq` varchar(13) DEFAULT NULL,
  `remark` text,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_customer
-- ----------------------------
INSERT INTO `zt_tp_customer` VALUES ('1', 'AE76CDD1C61E6795D562B4517A414BC5', '18801043607', '132223198401040613', 'e10adc3949ba59abbe56e057f20f883e', '腰立辉', '男', '北京', '房山', '1984', 'http://q.qlogo.cn/qqapp/101376709/AE76CDD1C61E6795D562B4517A414BC5/40', 'http://q.qlogo.cn/qqapp/101376709/AE76CDD1C61E6795D562B4517A414BC5/100', null, null, null, 'QQ第三方授权', '1488091510', '2017-02-26 15:25:39');
INSERT INTO `zt_tp_customer` VALUES ('2', '13E54B2A82FCFD2AA78957E24F2AA1D3', null, null, 'e10adc3949ba59abbe56e057f20f883e', '野生部落', '男', '北京', '海淀', '1989', 'http://q.qlogo.cn/qqapp/101376709/13E54B2A82FCFD2AA78957E24F2AA1D3/40', 'http://q.qlogo.cn/qqapp/101376709/13E54B2A82FCFD2AA78957E24F2AA1D3/100', null, null, null, 'QQ第三方授权', '1488091818', '2017-02-26 14:50:18');
