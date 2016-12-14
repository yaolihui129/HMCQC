/*
Navicat MySQL Data Transfer

Source Server         : xiuli
Source Server Version : 50535
Source Host           : 2lbrknae.2248.dnstoo.com:5503
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2016-12-14 15:34:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_as_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_admin`;
CREATE TABLE `tp_as_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `tech` varchar(5) DEFAULT '非技师',
  `title` varchar(10) DEFAULT NULL,
  `desc` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_admin
-- ----------------------------
INSERT INTO `tp_as_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '/Admin/user/image/2016-10-22/', '580b6d8f61b99.png', '', '离职', '非技师', null, null, '腰立辉', '贾晓月', '2016-10-22 21:45:51', '2016-10-03 15:13:30');
INSERT INTO `tp_as_admin` VALUES ('2', 'yaolh', 'c33367701511b4f6020ec61ded352059', '腰立辉', '/Admin/user/image/2016-10-22/', '580b6ed68ee3f.jpg', '', '在职', '非技师', 'yyy', '<p>\r\n	asdhkjsad</p>\r\n', '腰立辉', '腰立辉', '2016-10-24 09:51:44', '2016-10-24 09:51:44');
INSERT INTO `tp_as_admin` VALUES ('3', 'jiaxy', 'e10adc3949ba59abbe56e057f20f883e', '贾晓月', '', '57f250178820d.jpeg', '', '在职', '非技师', null, null, '腰立辉', '腰立辉', '2016-10-03 20:33:27', '2016-10-03 14:59:31');
INSERT INTO `tp_as_admin` VALUES ('4', 'wangxl', 'e10adc3949ba59abbe56e057f20f883e', '王晓亮', '/Admin/user/image/2016-10-29/', '58148ef89cdcf.jpeg', '13785900902', '在职', '技师', '钣金喷漆师', '<ul>\r\n	<li>\r\n		1111</li>\r\n</ul>\r\n', '腰立辉', '腰立辉', '2016-10-22 21:58:39', '2016-10-29 19:58:48');

-- ----------------------------
-- Table structure for `tp_as_case`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_case`;
CREATE TABLE `tp_as_case` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cat` varchar(10) DEFAULT NULL,
  `car` varchar(200) DEFAULT NULL,
  `bpath` varchar(200) NOT NULL,
  `before` varchar(32) DEFAULT NULL,
  `apath` varchar(200) NOT NULL,
  `after` varchar(32) DEFAULT NULL,
  `desc` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_case
-- ----------------------------
INSERT INTO `tp_as_case` VALUES ('1', '钣金喷漆', '雪铁龙C3-XR', '/Case/before/2016-10-29/', '581490001107b.JPG', '/Case/after/2016-10-29/', '581490aa12a9e.jpg', '前翼子板撞花', '腰立辉', '腰立辉', '2016-10-22 22:37:41', '2016-10-29 20:06:02');
INSERT INTO `tp_as_case` VALUES ('2', '大保养', '奔驰E300', '/Case/before/2016-10-29/', '58149047d90ea.jpg', '/Case/after/2016-10-29/', '581490b6c991d.jpg', '奔驰豪车30000公里保养，更换机油三滤，刹车片，变速箱油，火花塞……', '腰立辉', '腰立辉', '2016-10-22 22:37:50', '2016-10-29 20:06:14');

-- ----------------------------
-- Table structure for `tp_as_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_dict`;
CREATE TABLE `tp_as_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_dict
-- ----------------------------
INSERT INTO `tp_as_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', '腰立辉', '2016-10-27 15:54:22', '2016-10-30 17:51:36');
INSERT INTO `tp_as_dict` VALUES ('2', '3', '作废', 'state', '正常', '腰立辉', '腰立辉', '2016-10-27 15:54:17', '2016-10-27 17:16:57');
INSERT INTO `tp_as_dict` VALUES ('3', '1', '技师', 'tech', '正常', '腰立辉', '腰立辉', '2016-10-27 16:13:30', '2016-10-27 16:13:30');
INSERT INTO `tp_as_dict` VALUES ('4', '2', '非技师', 'tech', '正常', '腰立辉', '腰立辉', '2016-10-27 16:13:46', '2016-10-27 16:13:46');
INSERT INTO `tp_as_dict` VALUES ('5', '2', '发布', 'state', '正常', '腰立辉', '腰立辉', '2016-10-27 17:16:20', '2016-10-30 17:51:11');
INSERT INTO `tp_as_dict` VALUES ('6', '1', '用车小常识', 'usecar', '正常', '腰立辉', '腰立辉', '2016-10-30 17:44:10', '2016-10-30 17:44:10');
INSERT INTO `tp_as_dict` VALUES ('7', '2', '流言终结者', 'usecar', '正常', '腰立辉', '腰立辉', '2016-10-30 17:44:27', '2016-10-30 22:46:21');
INSERT INTO `tp_as_dict` VALUES ('10', '1', '抽奖', 'voucher', '正常', '腰立辉', '腰立辉', '2016-10-31 14:47:43', '2016-10-31 14:47:43');
INSERT INTO `tp_as_dict` VALUES ('11', '2', '普通', 'voucher', '正常', '腰立辉', '腰立辉', '2016-10-31 14:48:13', '2016-10-31 16:20:35');
INSERT INTO `tp_as_dict` VALUES ('13', '1', '在职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-12 16:58:06', '2016-11-12 16:58:06');
INSERT INTO `tp_as_dict` VALUES ('14', '2', '离职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-12 16:58:24', '2016-11-12 16:58:24');

-- ----------------------------
-- Table structure for `tp_as_hr`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_hr`;
CREATE TABLE `tp_as_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT '发布',
  `desc` text,
  `salary` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_hr
-- ----------------------------
INSERT INTO `tp_as_hr` VALUES ('2', '勤杂工', '作废', '<p>\r\n	啊实打实大</p>\r\n<p>\r\n	按时到敬爱阿斯达</p>\r\n<p>\r\n	联系电话：13800000000</p>\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', '2016-10-03 20:42:58', '2016-10-27 17:22:46');
INSERT INTO `tp_as_hr` VALUES ('3', '公司CEO', '发布', '<p>\r\n	124ewqe</p>\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-10-03 20:41:33');
INSERT INTO `tp_as_hr` VALUES ('4', '首席财务官', '作废', '<p>\r\n	融入融入人</p>\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-10-29 20:12:52');

-- ----------------------------
-- Table structure for `tp_as_setting`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_setting`;
CREATE TABLE `tp_as_setting` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `qq` varchar(12) DEFAULT NULL,
  `web` varchar(50) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `hpath` varchar(200) NOT NULL,
  `himg` varchar(48) NOT NULL,
  `apath` varchar(200) NOT NULL,
  `aimg` varchar(200) NOT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_setting
-- ----------------------------
INSERT INTO `tp_as_setting` VALUES ('1', '13785900902', '1058793920', '临城-安顺汽车服务中心', '', '临城县射兽汽修市场', 'asqx.hyperphp.com', '/Setting/home/2016-11-10/', '58247b2140317.jpeg', '/Setting/adress/2016-11-10/', '58247b7eda772.png', '腰立辉', '2016-11-10 23:45:15');

-- ----------------------------
-- Table structure for `tp_as_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_tickets`;
CREATE TABLE `tp_as_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(5) DEFAULT '新建',
  `result` varchar(10) DEFAULT '谢谢参与',
  `voucherid` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `chouj` smallint(1) DEFAULT '0',
  `owner` varchar(11) DEFAULT NULL,
  `duij` smallint(1) DEFAULT '0',
  `code` int(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_tickets
-- ----------------------------
INSERT INTO `tp_as_tickets` VALUES ('499', '设奖', '4:参与奖', '19', null, '0', null, '0', '110629', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('500', '设奖', '3:三等奖', '19', null, '0', null, '0', '930429', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('501', '设奖', '3:三等奖', '19', null, '0', null, '0', '613253', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('502', '设奖', '1:一等奖', '19', null, '0', null, '0', '410556', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('503', '抽奖', '谢谢参与', '19', '127.0.0.1', '1', null, '0', null, '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:51');
INSERT INTO `tp_as_tickets` VALUES ('504', '设奖', '4:参与奖', '19', '172.20.100.72', '0', null, '0', '872750', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-01 18:01:44');
INSERT INTO `tp_as_tickets` VALUES ('505', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('506', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('507', '设奖', '2:二等奖', '19', null, '0', null, '0', '227468', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('508', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '225216', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:47');
INSERT INTO `tp_as_tickets` VALUES ('509', '设奖', '4:参与奖', '19', null, '0', null, '0', '316842', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('510', '设奖', '3:三等奖', '19', null, '0', null, '0', '588809', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('511', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('512', '设奖', '3:三等奖', '19', null, '0', null, '0', '887033', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('513', '设奖', '1:一等奖', '19', null, '0', null, '0', '217031', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('514', '设奖', '2:二等奖', '19', null, '0', null, '0', '927133', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('515', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('516', '设奖', '2:二等奖', '19', null, '0', null, '0', '433023', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('517', '设奖', '3:三等奖', '19', null, '0', null, '0', '589138', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('518', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('519', '设奖', '3:三等奖', '19', null, '0', null, '0', '253176', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('520', '设奖', '4:参与奖', '19', null, '0', null, '0', '122659', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('521', '设奖', '4:参与奖', '19', null, '0', null, '0', '282510', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('522', '设奖', '4:参与奖', '19', null, '0', null, '0', '231314', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('523', '设奖', '4:参与奖', '19', null, '0', null, '0', '297177', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('524', '设奖', '3:三等奖', '19', null, '0', null, '0', '393911', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('525', '设奖', '4:参与奖', '19', null, '0', null, '0', '672689', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('526', '设奖', '4:参与奖', '19', null, '0', null, '0', '326675', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('527', '抽奖', '4:参与奖', '19', '172.20.100.72', '1', null, '0', '310800', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-01 18:05:25');
INSERT INTO `tp_as_tickets` VALUES ('528', '设奖', '4:参与奖', '19', null, '0', null, '0', '414016', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('529', '设奖', '4:参与奖', '19', null, '0', null, '0', '457687', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('530', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '778103', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:54');
INSERT INTO `tp_as_tickets` VALUES ('531', '设奖', '0:特等奖', '19', null, '0', null, '0', '536349', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('532', '设奖', '3:三等奖', '19', null, '0', null, '0', '195443', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('533', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('534', '设奖', '2:二等奖', '19', null, '0', null, '0', '805569', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('535', '设奖', '3:三等奖', '19', null, '0', null, '0', '866983', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('536', '设奖', '2:二等奖', '19', null, '0', null, '0', '775192', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('537', '设奖', '4:参与奖', '19', null, '0', null, '0', '472683', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_as_tickets` VALUES ('538', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '725534', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-10 21:02:21');

-- ----------------------------
-- Table structure for `tp_as_usecar`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_usecar`;
CREATE TABLE `tp_as_usecar` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `type` smallint(6) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_usecar
-- ----------------------------
INSERT INTO `tp_as_usecar` VALUES ('3', '避免预热时间过长', '<p>\r\n	启动车后，大多数人都习惯让发动机怠速运转，等水温达到正常温度后再把车开走，其实这种预热的方法是非常错误的，因为电喷发动机不像化油器发动机，在达到工作温度之前，供油系统不能正常工作。电喷发动机如果采用长时间预热，不仅没有必要而且还是有害的。缩短预热时间可以延长三元催化器的使用寿命，还会节省燃油。动机起动后，只要能维持稳定的转速就可以起步行车，在水温未升高前，适当控制一下车速，等水温正常后就可以正常驾驶了。</p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dd28045c6.jpg', '腰立辉', '2016-10-31 14:01:15');
INSERT INTO `tp_as_usecar` VALUES ('4', '开窗和开空调哪个更省油呢?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">夏天在高速（速度一般都要&ge;80km/h）行驶时，到底是开着窗户省油还是开着空调省油呢？支持前者的人认为：不开空调即压缩机不用工作，也就不会给</span><a class=\"ShuKeyWordLink\" href=\"http://car.autohome.com.cn/shuyu/detail_8_9_555.html\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(59, 89, 152); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">发动机</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">造成额外的负担，因此会更省油。支持后者观点的人则认为：高速时开着车窗会扰乱空气流动，形成更大的风阻，因此产生的阻力会消耗比空调还多的燃油。</span></p>\r\n<p>\r\n	<strong>结果：</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">在开空调的测试中，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的百公里油耗为6.15升，而</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/694/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">锋范</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的则达到了7.3升。这两个数据分别比开车窗行驶时上升了0.87升和0.17升，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">油耗上升的幅度非常明显。而我们最终的定论也可以得出了。在车速为100km/h以下时，开车窗行驶的确比开空调要更加省油，但是其恶劣的驾车感受是必须用足够的忍耐力才能承受的</span></p>\r\n', '7', 'http://www.autohome.com.cn/user/201007/128126.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816db69ef7da.jpg', '腰立辉', '2016-10-31 13:49:29');
INSERT INTO `tp_as_usecar` VALUES ('5', '遭遇鸡蛋袭击不能用雨刮?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">相信不少人曾对网络中的一则流言有所耳闻：某地频繁现劫匪用生鸡蛋袭击挡风玻璃的抢劫伎俩，千万不要开启雨刷喷水。因为鸡蛋遇玻璃水将凝固，阻挡视线达90%，在你被迫停车清理玻璃时，劫匪趁机抢劫......。上网一搜，类似流言高达百万条以上。</span></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验1：普通生鸡蛋</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验2：普通生鸡蛋停留一段时间再清理</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验3：普通鸡蛋夜间效果</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验4：普通生鸡蛋+神秘配方</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">同样以20km/h的速度驾驶车辆，路边砸来的鸡蛋在挡风玻璃上破碎，开启雨刮器后大部分鸡蛋残渣被清除，不过一些神秘的残留物质仍然不能完全清除，尝试数次后效果仍然不明显。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', '7', 'http://www.autohome.com.cn/user/201112/281437.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816cd97d33bb.jpg', '腰立辉', '2016-10-31 13:00:58');
INSERT INTO `tp_as_usecar` VALUES ('8', '开车不喝酒，喝酒不开车', '<p>\r\n	可你喝了酒又需要回家怎么办？</p>\r\n<p>\r\n	1. 自己打车回家，转天再去开回来。</p>\r\n<p>\r\n	2. 请会开车没喝酒的朋友帮忙。</p>\r\n<p>\r\n	3. 请个代驾帮忙把车开回家。</p>\r\n<p>\r\n	<strong>看看后面的规定，你就知道我们的3个办法还是最有效的。</strong></p>\r\n<p>\r\n	中华人民共和国道路交通安全法》规定，饮酒后驾驶机动车的处暂扣1个月以上3个月以下机动车驾驶证，并处200元以上元以下罚款;醉酒后驾驶机动车的，由公安机关交通管理部门约束至酒醒，处15日以下拘留和暂扣3个月以上6个月以下机动车驾驶证，并处00元以上2000元以下罚款。1年内醉酒后驾驶机动车被处罚2次以上的，吊销机动车驾驶证.5年内不得驾驶营运机动车。</p>\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816e1c4c2325.jpg', '腰立辉', '2016-10-31 14:16:36');
INSERT INTO `tp_as_usecar` VALUES ('6', '保护漆面从新车做起', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">新车漆面虽无老化问题，但使用前应该做彻底的保护处理，从出厂到运输至停车场，车表漆就已经接触了空气、酸气、风沙的侵袭。及时正确的养护，能令漆面保持良好外观。如果买的是进口轿车，要首先考虑的是车蜡中含有石蜡、树脂及特氟隆等材料。除蜡时不要用汽油或煤油擦拭，应选用专业的开蜡液，或者到专业的美容养护店，请技师帮助处理。至于国产车，车身大多采用静电喷涂，漆面呈镜面光泽，故无开蜡需要。</span></p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dedc34c66.jpeg', '腰立辉', '2016-10-31 14:04:12');
INSERT INTO `tp_as_usecar` VALUES ('7', '调整后视镜', '调整后视镜左侧后视镜上、下位置是把远处的地平线置于中央，左、右位置则调整至车身占据镜面范围的14。右侧后视镜因为驾驶座位于左侧，因此驾驶人对车耳右侧的掌握不是那么容易，再加上有时路边停车的需要，在调整右侧后视镜上、下位置时地面面积要较大，约占镜面的23。而左、右位置则同样调整到车身占14面积即可。\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816dfa12179c.png', '腰立辉', '2016-10-31 14:07:29');

-- ----------------------------
-- Table structure for `tp_as_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_voucher`;
CREATE TABLE `tp_as_voucher` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_voucher
-- ----------------------------
INSERT INTO `tp_as_voucher` VALUES ('19', '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', '40', '1', '2', '5', '10', '15', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:18:28');

-- ----------------------------
-- Table structure for `tp_case`
-- ----------------------------
DROP TABLE IF EXISTS `tp_case`;
CREATE TABLE `tp_case` (
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
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=MyISAM AUTO_INCREMENT=10137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------
INSERT INTO `tp_case` VALUES ('10000', '1', '2', '正常登陆', '', '登入系统，并显示用户姓名11', '正常', '107', '10000', '产品库', '', '腰立辉', '腰立辉', '2016-10-28 15:50:05', '2016-12-08 09:31:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10001', '2', '2', '用户名不存在', '', '报错', '正常', '107', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 14:33:33', '2016-12-08 09:31:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10130', '2', '2', ' 活动截止以后', '\r\n', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:42', '2016-12-12 20:50:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10131', '3', '2', ' 活动期间，当天已经投过票的', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:52:18', '2016-12-12 20:51:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10132', '4', '2', ' 活动期间，今天尚未投票', '', ' 可以投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:52:41', '2016-12-12 20:51:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10133', '1', '2', ' 打开页面，播放音乐', '', ' 背景音乐自动播放', '正常', '110', '10449', null, null, '腰立辉', '腰立辉', '2016-12-12 20:53:37', '2016-12-12 20:52:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10134', '1', '2', ' 点击选手头像，播放选手歌曲', '', ' 可以播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:55:46', '2016-12-12 20:54:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10135', '2', '2', '再次点击选手头像', '', ' 关闭音乐播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:56:30', '2016-12-12 20:55:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10136', '3', '2', ' 切换选手列表页面，停止播放', '', ' 停止播放', '待确认', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 21:01:27', '2016-12-12 21:00:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10129', '1', '2', ' 活动开始之前', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:16', '2016-12-12 20:50:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10104', '1', '2', '添加管家', '<p>\r\n	asd12</p>\r\n', '添加成功', '正常', '107', '10425', '产品库', null, '腰立辉', '腰立辉', '2016-12-06 11:08:10', '2016-12-07 11:53:35', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10105', '2', '2', '添加已存在的管家', '', '添加失败', '正常', '107', '10425', '产品库', null, '腰立辉', '腰立辉', '2016-12-06 11:21:52', '2016-12-07 11:53:08', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10109', '1', '2', ' 从公众微信号打开', '', ' 正常打开', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-09 16:44:54', '2016-12-09 16:44:54', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10110', '2', '2', ' 从分享链接打开', '', ' 正常打开', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-09 16:45:11', '2016-12-09 16:45:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10111', '1', '2', ' 正常提交报名', '', ' 提交成功', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:45:54', '2016-12-09 16:45:54', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10112', '2', '2', ' 空姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:11', '2016-12-09 16:46:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10113', '3', '2', ' 空姓名，填手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:29', '2016-12-09 16:46:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10114', '4', '2', ' 填姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:44', '2016-12-09 16:46:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10115', '5', '2', ' 填姓名，手机号位数不足', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:05', '2016-12-09 16:47:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10116', '6', '2', ' 填姓名，手机号位数超过11位', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:25', '2016-12-09 16:47:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10117', '7', '2', ' 填姓名，手机号后有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:47', '2016-12-09 16:47:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10118', '8', '2', ' 填姓名，手机号前，有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:07', '2016-12-09 16:48:07', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10119', '9', '2', ' 填姓名，手机号中间有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:22', '2016-12-09 16:48:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10120', '10', '2', ' 来回切换页面后，再填写报名信息', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:49:04', '2016-12-09 16:49:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10121', '1', '2', ' 启用名片的角色，进入公司名片', '', ' 显示自己的名片', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:56:20', '2016-12-09 16:56:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10122', '2', '2', ' 未启用名片的角色进入公司名片', '', ' 显示所有管家名片，滑动可以浏览', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:57:39', '2016-12-09 16:57:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10123', '1', '2', ' 分享给微信好友', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:04', '2016-12-09 16:58:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10124', '2', '2', ' 分享到微信朋友圈', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:18', '2016-12-09 16:58:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10125', '1', '2', '从管家明前提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:00', '2016-12-09 16:59:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10126', '2', '2', ' 从公司名片提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:13', '2016-12-09 16:59:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10127', '3', '2', ' 转发分享次数', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:32', '2016-12-09 16:59:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10128', '4', '2', ' 报名转化率', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:48', '2016-12-09 16:59:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tp_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tp_dict`;
CREATE TABLE `tp_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `adder` varchar(10) DEFAULT '腰立辉',
  `moder` varchar(10) DEFAULT '腰立辉',
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dict
-- ----------------------------
INSERT INTO `tp_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:14', null);
INSERT INTO `tp_dict` VALUES ('2', '2', '待确认', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:15', null);
INSERT INTO `tp_dict` VALUES ('3', '3', '已搁置', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:17', null);
INSERT INTO `tp_dict` VALUES ('4', '4', '作废', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:18', null);
INSERT INTO `tp_dict` VALUES ('5', '1', '未开始', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:19', null);
INSERT INTO `tp_dict` VALUES ('6', '2', '进行中', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:20', null);
INSERT INTO `tp_dict` VALUES ('7', '3', '已完成', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:21', '2016-11-11 16:49:34');
INSERT INTO `tp_dict` VALUES ('8', '8', '仿真验证通过', 'prost', '作废', '腰立辉', '腰立辉', '2016-10-27 11:34:05', '2016-11-11 16:50:28');
INSERT INTO `tp_dict` VALUES ('9', '6', '已取消', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 11:34:11', '2016-11-11 16:50:20');
INSERT INTO `tp_dict` VALUES ('30', '1', '简要', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:30', null);
INSERT INTO `tp_dict` VALUES ('31', '2', '常规', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:48', '2016-09-16 22:23:48');
INSERT INTO `tp_dict` VALUES ('32', '1', '新项目', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:19:51', '2016-10-24 09:19:51');
INSERT INTO `tp_dict` VALUES ('33', '2', '升级版本', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:04', '2016-10-24 09:20:04');
INSERT INTO `tp_dict` VALUES ('34', '3', '临时修正程序', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:19', '2016-10-24 09:20:19');
INSERT INTO `tp_dict` VALUES ('35', '1', '紧急需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:53', '2016-09-17 14:28:53');
INSERT INTO `tp_dict` VALUES ('36', '2', '一般需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:44', '2016-09-17 14:28:44');
INSERT INTO `tp_dict` VALUES ('37', '1', '测试工程师', 'position', '正常', '腰立辉', '腰立辉', '2016-09-17 15:31:57', '2016-09-17 15:31:57');
INSERT INTO `tp_dict` VALUES ('38', '2', '初级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:01', '2016-09-17 15:32:01');
INSERT INTO `tp_dict` VALUES ('39', '3', '高级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:04', '2016-09-17 15:32:04');
INSERT INTO `tp_dict` VALUES ('40', '4', '测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:07', '2016-09-17 15:32:07');
INSERT INTO `tp_dict` VALUES ('41', '5', '高级测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:13', '2016-09-17 15:32:13');
INSERT INTO `tp_dict` VALUES ('42', '6', '质量总监', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:17', '2016-09-17 15:32:17');
INSERT INTO `tp_dict` VALUES ('43', '1', '无文档', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:39', '2016-09-17 16:09:39');
INSERT INTO `tp_dict` VALUES ('44', '2', '测试计划', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:42', '2016-09-17 16:08:42');
INSERT INTO `tp_dict` VALUES ('45', '3', '测试用例', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:55', '2016-09-17 16:08:55');
INSERT INTO `tp_dict` VALUES ('46', '4', 'BUG分析报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:28', '2016-09-17 16:09:28');
INSERT INTO `tp_dict` VALUES ('47', '5', '测试综合报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:23', '2016-09-17 16:09:23');
INSERT INTO `tp_dict` VALUES ('48', '1', '打开', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:15', null);
INSERT INTO `tp_dict` VALUES ('49', '2', '关闭', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:30', '2016-09-17 16:18:30');
INSERT INTO `tp_dict` VALUES ('50', '1', 'A', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:42', '2016-09-17 16:19:42');
INSERT INTO `tp_dict` VALUES ('51', '2', 'B', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:21', '2016-09-17 16:19:21');
INSERT INTO `tp_dict` VALUES ('52', '3', 'C', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:27', '2016-09-17 16:19:27');
INSERT INTO `tp_dict` VALUES ('53', '4', 'D', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:34', '2016-09-17 16:19:34');
INSERT INTO `tp_dict` VALUES ('54', '1', 'M', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:13', '2016-09-23 21:11:13');
INSERT INTO `tp_dict` VALUES ('55', '2', 'A', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:19', '2016-09-23 21:11:19');
INSERT INTO `tp_dict` VALUES ('56', '1', '未测试', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:01', null);
INSERT INTO `tp_dict` VALUES ('57', '2', '通过', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:33', '2016-10-10 16:22:33');
INSERT INTO `tp_dict` VALUES ('58', '3', '失败', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:39', '2016-10-10 16:22:39');
INSERT INTO `tp_dict` VALUES ('59', '4', '场景错', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:45', '2016-10-10 16:22:45');
INSERT INTO `tp_dict` VALUES ('60', '1', '操作', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 15:08:41', '2016-10-20 15:08:41');
INSERT INTO `tp_dict` VALUES ('61', '2', '检查', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 15:08:52', '2016-10-20 15:08:52');
INSERT INTO `tp_dict` VALUES ('62', '1', '待维护', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 16:21:49', '2016-10-20 16:21:49');
INSERT INTO `tp_dict` VALUES ('63', '2', '已完成', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 16:22:03', '2016-10-20 16:22:03');
INSERT INTO `tp_dict` VALUES ('64', '4', '功能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:29', '2016-10-24 09:20:29');
INSERT INTO `tp_dict` VALUES ('65', '5', '性能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:37', '2016-10-24 09:20:37');
INSERT INTO `tp_dict` VALUES ('66', '6', '用户体验优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:47', '2016-10-24 09:20:47');
INSERT INTO `tp_dict` VALUES ('67', '4', '已上线', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 11:33:53', '2016-11-11 16:50:05');
INSERT INTO `tp_dict` VALUES ('69', '3', 'C', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-11-16 17:23:14', '2016-11-16 17:23:14');
INSERT INTO `tp_dict` VALUES ('68', '5', '已搁置', 'prost', '正常', '腰立辉', '腰立辉', '2016-11-09 14:21:09', '2016-11-11 16:50:15');
INSERT INTO `tp_dict` VALUES ('70', '1', '在职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-17 13:58:18', '2016-11-17 13:57:24');
INSERT INTO `tp_dict` VALUES ('71', '2', '离职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-17 13:58:28', '2016-11-17 13:57:34');
INSERT INTO `tp_dict` VALUES ('72', '6', 'PJD', 'testgp', '正常', '腰立辉', '腰立辉', '2016-12-05 15:37:48', '2016-12-05 15:43:10');

-- ----------------------------
-- Table structure for `tp_element`
-- ----------------------------
DROP TABLE IF EXISTS `tp_element`;
CREATE TABLE `tp_element` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_element
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exefunc`;
CREATE TABLE `tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `exesceneid` int(11) DEFAULT NULL,
  `funcid` int(50) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT '未测试',
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
) ENGINE=MyISAM AUTO_INCREMENT=10548 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exefunc
-- ----------------------------
INSERT INTO `tp_exefunc` VALUES ('10437', '1', '10087', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 10:18:44');
INSERT INTO `tp_exefunc` VALUES ('10438', '2', '10087', '10409', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:25');
INSERT INTO `tp_exefunc` VALUES ('10439', '3', '10087', '10410', null, '微网站（用户）- 专属管家-列表及介绍', ' 绑定管家', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10440', '4', '10087', '10411', null, '微网站（用户）- 专属管家-列表及介绍', ' 微信关注', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10441', '5', '10087', '10412', null, '微网站（用户）- 专属管家-列表及介绍', ' 电话咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10442', '6', '10087', '10413', null, '微网站（用户）- 专属管家-列表及介绍', ' 在线咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10443', '1', '10088', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:36');
INSERT INTO `tp_exefunc` VALUES ('10444', '2', '10088', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', 'yuuiuy', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:53');
INSERT INTO `tp_exefunc` VALUES ('10445', '3', '10088', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10446', '4', '10088', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10447', '5', '10088', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10448', '6', '10088', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10449', '1', '10090', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '失败', '第一次加载时，全部显示再显示页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:23:58');
INSERT INTO `tp_exefunc` VALUES ('10450', '2', '10090', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', '不能循环播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:24:15');
INSERT INTO `tp_exefunc` VALUES ('10451', '3', '10090', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `tp_exefunc` VALUES ('10452', '4', '10090', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '失败', '分享后，消息不显示图片', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:28:09');
INSERT INTO `tp_exefunc` VALUES ('10453', '5', '10090', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '失败', '来回波动后，提交“提示用户名不能为空”；安卓手机录入时，二维码会覆盖输入框；可以重复提交', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:53');
INSERT INTO `tp_exefunc` VALUES ('10454', '6', '10090', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:37');
INSERT INTO `tp_exefunc` VALUES ('10455', '1', '10091', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `tp_exefunc` VALUES ('10456', '4', '10091', '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `tp_exefunc` VALUES ('10457', '3', '10091', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `tp_exefunc` VALUES ('10458', '1', '10093', '10414', null, '微网站（用户）- 专属管家-我的专属管家', ' 我的管家信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10459', '2', '10093', '10415', null, '微网站（用户）- 专属管家-我的专属管家', '点赞', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10460', '3', '10093', '10416', null, '微网站（用户）- 专属管家-我的专属管家', ' 评价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10461', '4', '10093', '10417', null, '微网站（用户）- 专属管家-我的专属管家', ' 分享管家名片', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10462', '5', '10093', '10418', null, '微网站（用户）- 专属管家-我的专属管家', ' 解除绑定', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10463', '1', '10094', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `tp_exefunc` VALUES ('10464', '4', '10094', '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `tp_exefunc` VALUES ('10465', '3', '10094', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `tp_exefunc` VALUES ('10466', '1', '10095', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 14:59:59');
INSERT INTO `tp_exefunc` VALUES ('10467', '2', '10095', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', '未收到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:02:18');
INSERT INTO `tp_exefunc` VALUES ('10468', '3', '10095', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:06:53');
INSERT INTO `tp_exefunc` VALUES ('10469', '4', '10095', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', '城市级联，城市无选项', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:07:21');
INSERT INTO `tp_exefunc` VALUES ('10470', '5', '10095', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `tp_exefunc` VALUES ('10471', '6', '10095', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `tp_exefunc` VALUES ('10472', '3', '10096', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:06');
INSERT INTO `tp_exefunc` VALUES ('10473', '2', '10096', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:01');
INSERT INTO `tp_exefunc` VALUES ('10474', '1', '10096', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:57');
INSERT INTO `tp_exefunc` VALUES ('10475', '4', '10096', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:09');
INSERT INTO `tp_exefunc` VALUES ('10476', '5', '10096', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:12');
INSERT INTO `tp_exefunc` VALUES ('10477', '1', '10097', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', '第一次加载时，先显示全部，再进行动画', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:36');
INSERT INTO `tp_exefunc` VALUES ('10478', '2', '10097', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:17');
INSERT INTO `tp_exefunc` VALUES ('10479', '3', '10097', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:20');
INSERT INTO `tp_exefunc` VALUES ('10480', '3', '10098', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10481', '4', '10098', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10482', '5', '10098', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10483', '1', '10098', '10426', null, '微站后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10484', '2', '10098', '10429', null, '微站后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10485', '1', '10099', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10486', '4', '10099', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10487', '3', '10099', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10488', '2', '10099', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10489', '5', '10099', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10490', '6', '10099', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10491', '1', '10100', '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '失败', '第一次加载时，先加载全部，再显示动画，顺序不对', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:19:57');
INSERT INTO `tp_exefunc` VALUES ('10492', '2', '10100', '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '失败', '无连接详情', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:20:19');
INSERT INTO `tp_exefunc` VALUES ('10493', '3', '10100', '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '失败', '三个名片显示同样的内容', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:42');
INSERT INTO `tp_exefunc` VALUES ('10494', '4', '10100', '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:32');
INSERT INTO `tp_exefunc` VALUES ('10495', '5', '10100', '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:21');
INSERT INTO `tp_exefunc` VALUES ('10496', '6', '10100', '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:25');
INSERT INTO `tp_exefunc` VALUES ('10497', '1', '10101', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:15');
INSERT INTO `tp_exefunc` VALUES ('10498', '2', '10101', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', '投票报参数错误', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:48', '2016-12-12 20:14:03');
INSERT INTO `tp_exefunc` VALUES ('10499', '1', '10102', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:27');
INSERT INTO `tp_exefunc` VALUES ('10500', '2', '10102', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:33');
INSERT INTO `tp_exefunc` VALUES ('10501', '3', '10102', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:36');
INSERT INTO `tp_exefunc` VALUES ('10502', '4', '10102', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:19');
INSERT INTO `tp_exefunc` VALUES ('10503', '5', '10102', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', '滑动页面 底层跟着移动，详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:06');
INSERT INTO `tp_exefunc` VALUES ('10504', '6', '10102', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', '无法播放视频', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:18');
INSERT INTO `tp_exefunc` VALUES ('10505', '7', '10102', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:26');
INSERT INTO `tp_exefunc` VALUES ('10506', '1', '10103', '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '通过', '首页页面错位', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:17:40');
INSERT INTO `tp_exefunc` VALUES ('10507', '2', '10103', '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', '无背景音乐', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:00:57');
INSERT INTO `tp_exefunc` VALUES ('10508', '3', '10103', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 20:39:51');
INSERT INTO `tp_exefunc` VALUES ('10509', '4', '10103', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:08');
INSERT INTO `tp_exefunc` VALUES ('10510', '5', '10103', '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:15');
INSERT INTO `tp_exefunc` VALUES ('10511', '1', '10104', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:06');
INSERT INTO `tp_exefunc` VALUES ('10512', '2', '10104', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:10');
INSERT INTO `tp_exefunc` VALUES ('10513', '3', '10104', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:16');
INSERT INTO `tp_exefunc` VALUES ('10514', '4', '10104', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:02');
INSERT INTO `tp_exefunc` VALUES ('10515', '5', '10104', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', '滑动，底层跟着移动详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:50');
INSERT INTO `tp_exefunc` VALUES ('10516', '6', '10104', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', '无法播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:02');
INSERT INTO `tp_exefunc` VALUES ('10517', '7', '10104', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:11');
INSERT INTO `tp_exefunc` VALUES ('10518', '1', '10105', '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '失败', '首页动画的加载顺序', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 13:02:47');
INSERT INTO `tp_exefunc` VALUES ('10519', '2', '10105', '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:28');
INSERT INTO `tp_exefunc` VALUES ('10520', '3', '10105', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:54');
INSERT INTO `tp_exefunc` VALUES ('10521', '4', '10105', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:13');
INSERT INTO `tp_exefunc` VALUES ('10522', '5', '10105', '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:34');
INSERT INTO `tp_exefunc` VALUES ('10523', '1', '10106', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:32:41');
INSERT INTO `tp_exefunc` VALUES ('10524', '2', '10106', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:33:25');
INSERT INTO `tp_exefunc` VALUES ('10525', '3', '10106', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:36:02');
INSERT INTO `tp_exefunc` VALUES ('10526', '4', '10106', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:38:42');
INSERT INTO `tp_exefunc` VALUES ('10527', '5', '10106', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:00');
INSERT INTO `tp_exefunc` VALUES ('10528', '6', '10106', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', '点击无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:51');
INSERT INTO `tp_exefunc` VALUES ('10529', '7', '10106', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:40:09');
INSERT INTO `tp_exefunc` VALUES ('10530', '1', '10107', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:48:43');
INSERT INTO `tp_exefunc` VALUES ('10531', '2', '10107', '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:49:14');
INSERT INTO `tp_exefunc` VALUES ('10532', '3', '10107', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:03');
INSERT INTO `tp_exefunc` VALUES ('10533', '4', '10107', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '失败', '没有验证码只能通过0000登录', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:24');
INSERT INTO `tp_exefunc` VALUES ('10534', '5', '10107', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', '弹出样式有问题；下来列表内容和样式覆盖', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:52:58');
INSERT INTO `tp_exefunc` VALUES ('10535', '6', '10107', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:53:03');
INSERT INTO `tp_exefunc` VALUES ('10536', '7', '10107', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:35:41');
INSERT INTO `tp_exefunc` VALUES ('10537', '1', '10108', '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:02:30');
INSERT INTO `tp_exefunc` VALUES ('10538', '2', '10108', '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:05');
INSERT INTO `tp_exefunc` VALUES ('10539', '3', '10108', '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:11');
INSERT INTO `tp_exefunc` VALUES ('10540', '4', '10108', '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '失败', '查询后，条件信息被置空，不支持模糊查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:12');
INSERT INTO `tp_exefunc` VALUES ('10541', '5', '10108', '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:18');
INSERT INTO `tp_exefunc` VALUES ('10542', '6', '10108', '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, null, '失败', '空信息被提交过来后，显示错列', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:05');
INSERT INTO `tp_exefunc` VALUES ('10543', '7', '10108', '10464', null, '微站CRM后台-商务合作-商务合作管理', ' 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:12');
INSERT INTO `tp_exefunc` VALUES ('10544', '1', '10109', '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-14 12:17:28');
INSERT INTO `tp_exefunc` VALUES ('10545', '2', '10109', '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-14 11:47:09');
INSERT INTO `tp_exefunc` VALUES ('10546', '3', '10109', '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-14 12:17:36');
INSERT INTO `tp_exefunc` VALUES ('10547', '4', '10109', '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-14 11:47:09');

-- ----------------------------
-- Table structure for `tp_exescene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exescene`;
CREATE TABLE `tp_exescene` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exescene
-- ----------------------------
INSERT INTO `tp_exescene` VALUES ('10087', '1', 'M', '10045', '10163', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-列表及介绍', '通过', '“微网站（用户）- 专属管家-列表及介绍“下所有功能点', null, null, '2016-12-09 11:15:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:20');
INSERT INTO `tp_exescene` VALUES ('10088', '1', 'M', '10046', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '失败', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, '2016-12-09 11:53:08', '192.168.6.142', '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:53:08');
INSERT INTO `tp_exescene` VALUES ('10089', '2', 'M', '10045', '10164', '0', '2', '【功能】', '默认', '微网站（用户）- 专享活动', '未测试', '“微网站（用户）- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:18', '2016-12-09 11:16:18');
INSERT INTO `tp_exescene` VALUES ('10090', '3', 'M', '10045', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '未测试', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `tp_exescene` VALUES ('10096', '3', 'M', '10048', '0', '10033', '3', '关注用户', '默认', '在公众订阅号，直接打开并提交报名', '通过', '微信号个人中心->公司名片->提交报名', '', null, '2016-12-12 15:24:07', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:24', '2016-12-12 16:23:28');
INSERT INTO `tp_exescene` VALUES ('10097', '4', 'M', '10048', '0', '10034', '2', '专属管家', '未开启个人名片时', '分享公司名片', '通过', '', null, null, '2016-12-12 15:23:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:27', '2016-12-12 16:23:28');
INSERT INTO `tp_exescene` VALUES ('10098', '5', 'M', '10048', '0', '10035', '2', '专属管家', '开启个人名片', '分享公司名片-分享个人名片', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:31', '2016-12-12 16:23:29');
INSERT INTO `tp_exescene` VALUES ('10094', '1', 'M', '10049', '0', '10033', '3', '默认', '默认', 'asd', '未测试', 'asd', '', null, null, null, '魏斌', '魏斌', '2016-12-09 11:51:25', '2016-12-09 11:51:25');
INSERT INTO `tp_exescene` VALUES ('10095', '2', 'M', '10048', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-12 15:16:44', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 16:23:28');
INSERT INTO `tp_exescene` VALUES ('10099', '6', 'M', '10048', '0', '10036', '2', '关注用户', '在管家分享后', '管家名片填写报名信息', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:34', '2016-12-12 16:23:29');
INSERT INTO `tp_exescene` VALUES ('10100', '1', 'M', '10048', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '失败', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-12 17:05:31', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 17:04:40');
INSERT INTO `tp_exescene` VALUES ('10101', '1', 'M', '10051', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 20:15:10', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:19');
INSERT INTO `tp_exescene` VALUES ('10102', '2', 'M', '10051', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:09:22', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 21:08:31');
INSERT INTO `tp_exescene` VALUES ('10103', '1', 'M', '10052', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '失败', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 21:02:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:29');
INSERT INTO `tp_exescene` VALUES ('10104', '2', 'M', '10052', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:07:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:48', '2016-12-12 21:06:23');
INSERT INTO `tp_exescene` VALUES ('10105', '1', 'M', '10053', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-13 13:00:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:59:17');
INSERT INTO `tp_exescene` VALUES ('10106', '2', 'M', '10053', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-13 16:41:11', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:17', '2016-12-13 16:40:21');
INSERT INTO `tp_exescene` VALUES ('10107', '1', 'M', '10054', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-14 12:17:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 12:16:56');
INSERT INTO `tp_exescene` VALUES ('10108', '2', 'M', '10054', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '失败', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-14 12:17:03', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:47:46', '2016-12-14 12:16:18');
INSERT INTO `tp_exescene` VALUES ('10109', '3', 'M', '10054', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '未测试', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-14 11:47:09');

-- ----------------------------
-- Table structure for `tp_func`
-- ----------------------------
DROP TABLE IF EXISTS `tp_func`;
CREATE TABLE `tp_func` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `func` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `pathid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `result` varchar(5) DEFAULT '未测试',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10469 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_func
-- ----------------------------
INSERT INTO `tp_func` VALUES ('10000', '1', '登录', '正常', '10000', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:02', '2016-09-22 10:45:46');
INSERT INTO `tp_func` VALUES ('10001', '2', '注销', '正常', '10000', '49', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:04', '2016-09-24 22:17:12');
INSERT INTO `tp_func` VALUES ('10002', '1', '产品列表', '正常', '10001', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:47:57', '2016-11-07 09:39:29');
INSERT INTO `tp_func` VALUES ('10003', '2', '产品-添加', '正常', '10001', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:05', '2016-11-07 10:30:30');
INSERT INTO `tp_func` VALUES ('10004', '3', '产品-编辑', '正常', '10001', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:06', '2016-11-07 10:30:39');
INSERT INTO `tp_func` VALUES ('10005', '3', '改密', '已搁置', '10000', '24', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:07', '2016-11-07 09:24:51');
INSERT INTO `tp_func` VALUES ('10006', '4', '系统-入口', '正常', '10001', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:08', '2016-11-07 09:45:46');
INSERT INTO `tp_func` VALUES ('10007', '3', '项目-添加', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:07', '2016-11-07 09:48:15');
INSERT INTO `tp_func` VALUES ('10008', '4', '项目-编辑', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:17', '2016-11-07 09:58:13');
INSERT INTO `tp_func` VALUES ('10009', '5', '项目-详情', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:10', '2016-11-07 10:48:12');
INSERT INTO `tp_func` VALUES ('10010', '1', '分组项目列表', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:28', '2016-11-07 09:47:45');
INSERT INTO `tp_func` VALUES ('10011', '2', '切换分组', '正常', '10002', '45', '通过', '腰立辉', '腰立辉', '2016-10-24 15:57:33', '2016-10-24 15:57:33');
INSERT INTO `tp_func` VALUES ('10012', '6', '快速标记状态', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:11', '2016-11-07 10:52:07');
INSERT INTO `tp_func` VALUES ('10013', '7', '项目-里程碑入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:12', '2016-11-07 11:05:24');
INSERT INTO `tp_func` VALUES ('10014', '8', '项目-风险入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:13', '2016-11-07 10:54:47');
INSERT INTO `tp_func` VALUES ('10015', '9', '项目-系统入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:14', '2016-11-07 10:58:17');
INSERT INTO `tp_func` VALUES ('10016', '10', '项目-功能点入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:15', '2016-11-07 10:58:20');
INSERT INTO `tp_func` VALUES ('10017', '11', '项目-范围入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:16', '2016-11-07 10:58:24');
INSERT INTO `tp_func` VALUES ('10018', '12', '项目-场景入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:17', '2016-11-07 10:56:47');
INSERT INTO `tp_func` VALUES ('10019', '13', '项目-控件库入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:19', '2016-11-07 10:57:16');
INSERT INTO `tp_func` VALUES ('10020', '14', '项目-用例库入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:20', '2016-11-07 10:57:20');
INSERT INTO `tp_func` VALUES ('10021', '15', '项目-报告入口', '已搁置', '10002', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:22', '2016-09-22 17:46:11');
INSERT INTO `tp_func` VALUES ('10022', '1', '里程碑列表', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:57', '2016-11-07 10:59:24');
INSERT INTO `tp_func` VALUES ('10023', '2', '切换项目', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 16:03:31', '2016-11-07 11:00:43');
INSERT INTO `tp_func` VALUES ('10024', '3', '里程碑-添加', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:23', '2016-11-07 11:01:24');
INSERT INTO `tp_func` VALUES ('10025', '4', '里程碑-修改', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:24', '2016-11-07 11:09:57');
INSERT INTO `tp_func` VALUES ('10026', '7', 'A人员-入口（自动化）', '正常', '10028', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:26', '2016-09-25 13:36:43');
INSERT INTO `tp_func` VALUES ('10027', '5', '快速标记状态', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:27', '2016-11-07 11:10:26');
INSERT INTO `tp_func` VALUES ('10028', '1', '项目涉及系统列表', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:29', '2016-11-07 11:17:20');
INSERT INTO `tp_func` VALUES ('10029', '2', '待关联系统列表', '正常', '10003', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:30', '2016-11-07 14:33:57');
INSERT INTO `tp_func` VALUES ('10030', '3', '关联系统到本项目', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:32', '2016-11-07 11:14:22');
INSERT INTO `tp_func` VALUES ('10031', '4', '待关联系统-添加', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:33', '2016-11-07 11:17:50');
INSERT INTO `tp_func` VALUES ('10032', '5', '待关联系统-修改', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:34', '2016-11-07 11:18:14');
INSERT INTO `tp_func` VALUES ('10033', '6', '已关联系统-配置环境', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:35', '2016-11-07 11:20:02');
INSERT INTO `tp_func` VALUES ('10034', '7', '已关联系统-路径入口', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:36', '2016-11-07 11:22:28');
INSERT INTO `tp_func` VALUES ('10035', '8', '已关联系统-移除关联', '正常', '10003', '45', '通过', '腰立辉', '腰立辉', '2016-10-24 15:58:27', '2016-10-24 15:58:27');
INSERT INTO `tp_func` VALUES ('10036', '1', '项目风险列表', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:46', '2016-09-22 17:52:20');
INSERT INTO `tp_func` VALUES ('10037', '2', '切换项目', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:47', '2016-09-22 17:52:27');
INSERT INTO `tp_func` VALUES ('10038', '3', '风险-添加', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:48', '2016-09-22 17:52:43');
INSERT INTO `tp_func` VALUES ('10039', '4', '风险-维护', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:49', '2016-09-22 17:52:59');
INSERT INTO `tp_func` VALUES ('10040', '1', '系统路径列表', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:50', '2016-11-07 11:25:25');
INSERT INTO `tp_func` VALUES ('10041', '2', '切换关联系统', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:51', '2016-11-07 11:26:22');
INSERT INTO `tp_func` VALUES ('10042', '3', '路径-添加', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:52', '2016-11-07 11:29:17');
INSERT INTO `tp_func` VALUES ('10043', '4', '路径-修改', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:53', '2016-11-07 11:31:11');
INSERT INTO `tp_func` VALUES ('10044', '5', '路径-功能点入口', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:54', '2016-11-07 11:27:58');
INSERT INTO `tp_func` VALUES ('10045', '1', '路径功能点列表', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:56', '2016-11-07 11:38:10');
INSERT INTO `tp_func` VALUES ('10046', '2', '切换路径', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:57', '2016-11-07 11:40:17');
INSERT INTO `tp_func` VALUES ('10047', '3', '功能点-添加（默认当前项目）', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:58', '2016-11-07 11:39:30');
INSERT INTO `tp_func` VALUES ('10048', '4', '功能点-修改', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:59', '2016-11-07 11:41:23');
INSERT INTO `tp_func` VALUES ('10049', '5', '功能点-用例入口', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:00', '2016-11-07 11:42:29');
INSERT INTO `tp_func` VALUES ('10050', '6', '功能点-规则入口', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:01', '2016-11-07 11:42:23');
INSERT INTO `tp_func` VALUES ('10051', '7', '快速标记当前项目', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:02', '2016-11-07 11:42:16');
INSERT INTO `tp_func` VALUES ('10052', '1', '功能点用例列表', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:03', '2016-09-22 17:58:03');
INSERT INTO `tp_func` VALUES ('10053', '2', '切换功能点', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:05', '2016-09-22 17:58:13');
INSERT INTO `tp_func` VALUES ('10054', '3', '用例-添加', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:06', '2016-09-22 17:58:30');
INSERT INTO `tp_func` VALUES ('10055', '4', '用例-维护', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:07', '2016-09-22 17:58:37');
INSERT INTO `tp_func` VALUES ('10056', '5', '快速标记当前项目', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:08', '2016-09-22 17:59:13');
INSERT INTO `tp_func` VALUES ('10057', '6', '数据模板-编辑', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:09', '2016-09-23 13:40:21');
INSERT INTO `tp_func` VALUES ('10058', '1', '功能点规则列表', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:10', '2016-09-22 17:59:51');
INSERT INTO `tp_func` VALUES ('10059', '2', '切换功能点', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:12', '2016-09-22 18:00:04');
INSERT INTO `tp_func` VALUES ('10060', '3', '规则-添加', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:13', '2016-09-22 18:00:15');
INSERT INTO `tp_func` VALUES ('10061', '4', '规则-修改', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:14', '2016-09-22 18:00:27');
INSERT INTO `tp_func` VALUES ('10062', '5', '来源-维护', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:15', '2016-09-22 18:00:45');
INSERT INTO `tp_func` VALUES ('10063', '6', '快速标记当前项目', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:17', '2016-09-22 18:00:58');
INSERT INTO `tp_func` VALUES ('10064', '1', '项目-功能点列表', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:19', '2016-09-22 18:01:32');
INSERT INTO `tp_func` VALUES ('10065', '2', '切换项目', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:55', '2016-09-22 18:01:41');
INSERT INTO `tp_func` VALUES ('10066', '3', '添加路径', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:55', '2016-09-22 18:02:05');
INSERT INTO `tp_func` VALUES ('10067', '4', '维护路径', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:56', '2016-09-22 18:02:13');
INSERT INTO `tp_func` VALUES ('10068', '5', '添加功能点', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:57', '2016-09-22 18:02:20');
INSERT INTO `tp_func` VALUES ('10069', '6', '维护功能点', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:58', '2016-09-22 18:02:27');
INSERT INTO `tp_func` VALUES ('10070', '7', '快速标记当前项目', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:59', '2016-09-22 18:02:34');
INSERT INTO `tp_func` VALUES ('10071', '8', '功能点-用例入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:00', '2016-09-23 13:32:47');
INSERT INTO `tp_func` VALUES ('10072', '9', '功能点-规则入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:02', '2016-09-22 18:03:07');
INSERT INTO `tp_func` VALUES ('10073', '10', '功能点-模板入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:03', '2016-09-23 13:32:57');
INSERT INTO `tp_func` VALUES ('10074', '1', '（M/A）人员列队场景列表', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:20:00', '2016-11-07 14:27:25');
INSERT INTO `tp_func` VALUES ('10075', '2', '切换阶段人员', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:05', '2016-11-07 14:27:54');
INSERT INTO `tp_func` VALUES ('10076', '3', '场景库-入口', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:05', '2016-11-07 14:30:22');
INSERT INTO `tp_func` VALUES ('10077', '4', '场景功能-入口', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:06', '2016-11-07 14:31:10');
INSERT INTO `tp_func` VALUES ('10078', '5', '列队场景-编辑', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:07', '2016-11-07 14:31:25');
INSERT INTO `tp_func` VALUES ('10079', '6', '列队场景-移除', '正常', '10029', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:11:08', '2016-11-07 14:33:32');
INSERT INTO `tp_func` VALUES ('10080', '1', '已分派场景列表', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:09', '2016-09-24 15:15:08');
INSERT INTO `tp_func` VALUES ('10081', '2', '切换测试人员', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:10', '2016-09-24 15:15:43');
INSERT INTO `tp_func` VALUES ('10082', '3', '待分派场景列表（含次数）', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:11', '2016-09-23 09:57:09');
INSERT INTO `tp_func` VALUES ('10083', '4', '场景分派', '正常', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:13', '2016-09-23 09:56:52');
INSERT INTO `tp_func` VALUES ('10084', '1', '场景功能列表', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:14', '2016-11-07 14:31:53');
INSERT INTO `tp_func` VALUES ('10085', '2', '切换场景', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:15', '2016-11-07 14:31:59');
INSERT INTO `tp_func` VALUES ('10086', '3', '标记场景测试结果', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:16', '2016-11-07 14:32:02');
INSERT INTO `tp_func` VALUES ('10115', '1', '功能点-控件列表', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:17', '2016-09-23 10:56:43');
INSERT INTO `tp_func` VALUES ('10116', '2', '控件-添加', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:18', '2016-09-23 10:54:55');
INSERT INTO `tp_func` VALUES ('10117', '3', '控件-维护', '正常', '10033', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:19', '2016-09-23 10:52:35');
INSERT INTO `tp_func` VALUES ('10118', '4', '功能点-数据模板列表', '正常', '10033', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:20', '2016-09-23 10:52:57');
INSERT INTO `tp_func` VALUES ('10119', '5', '标记-数据状态', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:21', '2016-09-23 11:01:05');
INSERT INTO `tp_func` VALUES ('10120', '6', '模板数据-清除', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:22', '2016-09-23 15:11:00');
INSERT INTO `tp_func` VALUES ('10121', '7', '模板数据-维护（更多）', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:23', '2016-09-23 15:11:07');
INSERT INTO `tp_func` VALUES ('10122', '8', '编写用例入口', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:24', '2016-09-23 11:02:11');
INSERT INTO `tp_func` VALUES ('10123', '1', '项目-场景列表', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:25', '2016-11-07 11:47:26');
INSERT INTO `tp_func` VALUES ('10124', '2', '切换项目', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:26', '2016-11-07 11:44:36');
INSERT INTO `tp_func` VALUES ('10099', '1', '项目-测试范围列表', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:27', '2016-09-23 10:07:01');
INSERT INTO `tp_func` VALUES ('10100', '2', '功能点-编辑', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:28', '2016-09-23 10:07:27');
INSERT INTO `tp_func` VALUES ('10101', '3', '范围-用例入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:29', '2016-09-23 10:08:56');
INSERT INTO `tp_func` VALUES ('10102', '4', '范围-规则入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:30', '2016-09-23 10:09:08');
INSERT INTO `tp_func` VALUES ('10103', '5', '范围-数据模板入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:32', '2016-09-23 10:10:18');
INSERT INTO `tp_func` VALUES ('10104', '1', '执行阶段场景列队', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:37', '2016-09-23 10:12:05');
INSERT INTO `tp_func` VALUES ('10105', '2', '切换阶段', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:39', '2016-09-23 10:12:27');
INSERT INTO `tp_func` VALUES ('10106', '3', '执行测试-入口', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:40', '2016-09-23 10:12:49');
INSERT INTO `tp_func` VALUES ('10107', '1', '执行场景功能点列表', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:41', '2016-09-23 10:18:35');
INSERT INTO `tp_func` VALUES ('10108', '2', '切换执行场景', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:43', '2016-09-23 10:18:44');
INSERT INTO `tp_func` VALUES ('10109', '3', '测试结果-标记通过', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:44', '2016-09-23 10:20:21');
INSERT INTO `tp_func` VALUES ('10110', '4', '测试结果-标记失败（说明）', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:45', '2016-09-23 10:23:12');
INSERT INTO `tp_func` VALUES ('10111', '5', '测试结果-重置', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:46', '2016-09-23 10:21:06');
INSERT INTO `tp_func` VALUES ('10112', '6', '用例库-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:47', '2016-09-23 10:22:30');
INSERT INTO `tp_func` VALUES ('10113', '7', '规则-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:50', '2016-09-23 10:22:42');
INSERT INTO `tp_func` VALUES ('10114', '9', '标记-场景执行结果', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:52', '2016-09-23 14:08:13');
INSERT INTO `tp_func` VALUES ('10125', '3', '场景-添加', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:53', '2016-11-07 11:48:27');
INSERT INTO `tp_func` VALUES ('10126', '4', '场景-编辑', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:54', '2016-11-07 11:48:22');
INSERT INTO `tp_func` VALUES ('10127', '6', '场景功能-入口', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:55', '2016-11-07 11:50:13');
INSERT INTO `tp_func` VALUES ('10128', '5', '场景-复制', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:56', '2016-11-07 11:45:28');
INSERT INTO `tp_func` VALUES ('10129', '1', '场景功能列表', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:57', '2016-09-23 11:13:12');
INSERT INTO `tp_func` VALUES ('10130', '2', '场景功能-编辑', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:58', '2016-09-23 11:14:32');
INSERT INTO `tp_func` VALUES ('10131', '3', '场景功能-移除', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:59', '2016-09-23 11:14:44');
INSERT INTO `tp_func` VALUES ('10132', '4', '功能库-入口', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:00', '2016-09-23 11:14:56');
INSERT INTO `tp_func` VALUES ('10133', '5', '场景数据-入口', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:02', '2016-09-23 11:15:07');
INSERT INTO `tp_func` VALUES ('10134', '6', '功能用例库-入口', '已搁置', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:03', '2016-09-24 15:14:45');
INSERT INTO `tp_func` VALUES ('10135', '1', '功能库-功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:04', '2016-09-23 11:17:04');
INSERT INTO `tp_func` VALUES ('10136', '2', '切换系统路径', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:05', '2016-09-23 11:17:15');
INSERT INTO `tp_func` VALUES ('10137', '3', '功能-加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:11', '2016-09-23 11:17:43');
INSERT INTO `tp_func` VALUES ('10138', '4', '功能-加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:14', '2016-09-23 11:17:56');
INSERT INTO `tp_func` VALUES ('10139', '5', '场景功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:15', '2016-09-23 11:18:14');
INSERT INTO `tp_func` VALUES ('10140', '6', '场景功能-编辑', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:16', '2016-09-23 11:18:31');
INSERT INTO `tp_func` VALUES ('10141', '7', '场景功能-移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:17', '2016-09-23 11:18:48');
INSERT INTO `tp_func` VALUES ('10142', '8', '场景功能-加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:18', '2016-09-23 11:19:01');
INSERT INTO `tp_func` VALUES ('10143', '9', '场景功能-全部加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:19', '2016-09-23 11:19:12');
INSERT INTO `tp_func` VALUES ('10144', '10', '缓存功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:20', '2016-09-23 11:19:26');
INSERT INTO `tp_func` VALUES ('10145', '11', '缓存功能-编辑', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:21', '2016-09-23 11:19:52');
INSERT INTO `tp_func` VALUES ('10146', '12', '缓存功能-移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:34', '2016-09-23 11:20:09');
INSERT INTO `tp_func` VALUES ('10147', '13', '缓存功能-全部移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:35', '2016-09-23 11:20:26');
INSERT INTO `tp_func` VALUES ('10148', '14', '缓存功能-加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:36', '2016-09-23 11:20:42');
INSERT INTO `tp_func` VALUES ('10149', '15', '缓存功能-全部加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:37', '2016-09-23 11:20:59');
INSERT INTO `tp_func` VALUES ('10150', '1', '功能用例列表（库）', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:37', '2016-09-23 11:26:12');
INSERT INTO `tp_func` VALUES ('10151', '2', '绑定用例', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:38', '2016-09-23 11:24:27');
INSERT INTO `tp_func` VALUES ('10152', '3', '用例-添加', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:41', '2016-09-23 11:24:48');
INSERT INTO `tp_func` VALUES ('10153', '4', '用例-编辑', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:42', '2016-09-23 11:24:58');
INSERT INTO `tp_func` VALUES ('10154', '5', '用例-数据', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:43', '2016-09-23 11:25:31');
INSERT INTO `tp_func` VALUES ('10155', '6', '场景用例列表', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:44', '2016-09-23 11:26:28');
INSERT INTO `tp_func` VALUES ('10156', '7', '场景用例-移除', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:44', '2016-09-23 11:27:01');
INSERT INTO `tp_func` VALUES ('10157', '1', '场景模板数据列表', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:45', '2016-09-23 11:29:59');
INSERT INTO `tp_func` VALUES ('10158', '2', '场景模板数据-维护', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:46', '2016-09-23 11:30:15');
INSERT INTO `tp_func` VALUES ('10159', '3', '模板状态快速标记', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:47', '2016-09-23 11:30:56');
INSERT INTO `tp_func` VALUES ('10160', '4', '场景数据-列表', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:48', '2016-09-23 11:32:06');
INSERT INTO `tp_func` VALUES ('10161', '5', '场景数据-锁定', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:50', '2016-09-23 11:32:20');
INSERT INTO `tp_func` VALUES ('10162', '6', '场景数据-模板同步', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:51', '2016-09-23 11:32:41');
INSERT INTO `tp_func` VALUES ('10163', '7', '场景数据-维护', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:53', '2016-09-23 11:32:53');
INSERT INTO `tp_func` VALUES ('10164', '1', '功能控件列表', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:53', '2016-11-07 14:16:59');
INSERT INTO `tp_func` VALUES ('10165', '2', '切换功能', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:54', '2016-11-07 14:17:42');
INSERT INTO `tp_func` VALUES ('10166', '3', '控件-添加', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:56', '2016-11-07 14:19:26');
INSERT INTO `tp_func` VALUES ('10167', '4', '控件-维护', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:57', '2016-11-07 14:20:23');
INSERT INTO `tp_func` VALUES ('10168', '5', '控件状态快速标记', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:58', '2016-09-23 11:37:51');
INSERT INTO `tp_func` VALUES ('10169', '6', '功能控件状态维护', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:01', '2016-09-23 11:38:08');
INSERT INTO `tp_func` VALUES ('10170', '7', '项目控件展开列表', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:09', '2016-11-07 14:22:50');
INSERT INTO `tp_func` VALUES ('10171', '9', '控件展开列表-维护', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:17', '2016-11-07 14:24:07');
INSERT INTO `tp_func` VALUES ('10172', '1', '项目-用例库列表', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:18', '2016-09-23 11:39:51');
INSERT INTO `tp_func` VALUES ('10173', '2', '切换项目', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:19', '2016-09-23 11:40:21');
INSERT INTO `tp_func` VALUES ('10174', '3', '查询-按级别', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:21', '2016-09-23 11:40:35');
INSERT INTO `tp_func` VALUES ('10175', '6', '用例-导出', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:23', '2016-09-23 11:41:23');
INSERT INTO `tp_func` VALUES ('10176', '4', '用例-添加', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:24', '2016-09-23 11:41:29');
INSERT INTO `tp_func` VALUES ('10177', '5', '用例-维护', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:25', '2016-09-23 11:41:35');
INSERT INTO `tp_func` VALUES ('10178', '1', '列队场景列表', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:26', '2016-09-23 12:20:10');
INSERT INTO `tp_func` VALUES ('10179', '2', '导入场景数据', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:27', '2016-09-23 12:20:31');
INSERT INTO `tp_func` VALUES ('10180', '3', '查看场景数据-入口', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:28', '2016-09-23 12:20:57');
INSERT INTO `tp_func` VALUES ('10181', '4', '执行数据-清除', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:29', '2016-09-23 14:09:50');
INSERT INTO `tp_func` VALUES ('10182', '6', '执行测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:30', '2016-09-23 12:24:20');
INSERT INTO `tp_func` VALUES ('10183', '7', '停止测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:40', '2016-09-23 12:24:29');
INSERT INTO `tp_func` VALUES ('10184', '8', '暂停测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:41', '2016-09-23 12:24:35');
INSERT INTO `tp_func` VALUES ('10185', '1', '场景-执行数据列表', '正常', '10027', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:42', '2016-09-23 12:23:15');
INSERT INTO `tp_func` VALUES ('10186', '2', '执行数据维护', '正常', '10027', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:43', '2016-09-23 12:23:27');
INSERT INTO `tp_func` VALUES ('10187', '5', '选择执行场景', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:44', '2016-09-23 12:24:13');
INSERT INTO `tp_func` VALUES ('10188', '1', '阶段执行人员列表', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:44', '2016-09-23 12:25:00');
INSERT INTO `tp_func` VALUES ('10189', '2', '执行人员-从列表选择', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:45', '2016-09-24 15:08:23');
INSERT INTO `tp_func` VALUES ('10190', '3', '执行人员-编辑', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:46', '2016-09-23 13:02:35');
INSERT INTO `tp_func` VALUES ('10191', '4', '人员列队-入口', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:49', '2016-09-23 12:25:56');
INSERT INTO `tp_func` VALUES ('10192', '11', '项目-功能点-导出', '正常', '10008', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:50', '2016-09-23 13:33:12');
INSERT INTO `tp_func` VALUES ('10193', '6', '测试范围-导出', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:51', '2016-09-23 13:34:56');
INSERT INTO `tp_func` VALUES ('10194', '8', '数据模板-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:52', '2016-09-23 14:08:19');
INSERT INTO `tp_func` VALUES ('10195', '8', '切换项目', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:53', '2016-11-07 14:23:06');
INSERT INTO `tp_func` VALUES ('10196', '10', '展开-控件状态快速标记', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:55', '2016-09-23 14:19:54');
INSERT INTO `tp_func` VALUES ('10197', '11', '展开-功能控件状态快速标记', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:56', '2016-11-07 14:24:55');
INSERT INTO `tp_func` VALUES ('10198', '6', 'M人员-入口（手工）', '正常', '10028', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:58', '2016-09-25 13:36:07');
INSERT INTO `tp_func` VALUES ('10199', '5', '测试人员列表', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:01', '2016-09-24 15:08:09');
INSERT INTO `tp_func` VALUES ('10201', '1', '车型报价员配置列表', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:02', '2016-09-26 10:24:45');
INSERT INTO `tp_func` VALUES ('10202', '2', '查询-按城市', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:03', '2016-09-26 10:24:59');
INSERT INTO `tp_func` VALUES ('10203', '3', '查询-按买顾配置状态', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:05', '2016-09-26 10:25:10');
INSERT INTO `tp_func` VALUES ('10204', '4', '查询-按电销配置状态', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:07', '2016-09-26 10:25:22');
INSERT INTO `tp_func` VALUES ('10205', '5', '查询-按品牌车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:08', '2016-09-26 10:25:51');
INSERT INTO `tp_func` VALUES ('10206', '6', '新增车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:09', '2016-09-26 10:26:05');
INSERT INTO `tp_func` VALUES ('10207', '7', '批量配置买顾报价员', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:10', '2016-09-26 10:27:04');
INSERT INTO `tp_func` VALUES ('10208', '8', '批量配置电销报价员', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:11', '2016-09-26 10:27:22');
INSERT INTO `tp_func` VALUES ('10209', '9', '编辑车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:14', '2016-09-26 10:28:45');
INSERT INTO `tp_func` VALUES ('10210', '10', '修改买顾', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:15', '2016-09-26 10:28:53');
INSERT INTO `tp_func` VALUES ('10211', '11', '修改电销', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:16', '2016-09-26 10:29:03');
INSERT INTO `tp_func` VALUES ('10212', '1', '城市买顾价格收集表', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:17', '2016-09-26 10:38:39');
INSERT INTO `tp_func` VALUES ('10213', '2', '查询-按城市', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:18', '2016-09-26 10:38:48');
INSERT INTO `tp_func` VALUES ('10214', '3', '查询-按买顾', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:19', '2016-09-26 10:38:58');
INSERT INTO `tp_func` VALUES ('10215', '4', '明细-买顾入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:43', '2016-09-26 10:39:22');
INSERT INTO `tp_func` VALUES ('10216', '5', '明细-未报价车款入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:41', '2016-09-26 10:39:49');
INSERT INTO `tp_func` VALUES ('10217', '6', '明细-价格过期车款入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:40', '2016-09-26 10:40:03');
INSERT INTO `tp_func` VALUES ('10218', '7', '明细-查询按选择城市', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:39', '2016-09-26 10:40:41');
INSERT INTO `tp_func` VALUES ('10219', '8', '明细-查询按车型车款', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:37', '2016-09-26 10:40:50');
INSERT INTO `tp_func` VALUES ('10220', '9', '明细-查询按价格状态', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:36', '2016-09-26 10:40:59');
INSERT INTO `tp_func` VALUES ('10221', '1', '车型价格列表', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:34', '2016-09-26 10:45:23');
INSERT INTO `tp_func` VALUES ('10222', '2', '查询-按选择城市', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:32', '2016-09-26 10:46:02');
INSERT INTO `tp_func` VALUES ('10223', '3', '查询-按价格状态', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:31', '2016-09-26 10:46:12');
INSERT INTO `tp_func` VALUES ('10224', '4', '查询-按车型车款', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:30', '2016-09-26 11:06:15');
INSERT INTO `tp_func` VALUES ('10225', '5', '添加价格信息', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:28', '2016-09-26 11:06:27');
INSERT INTO `tp_func` VALUES ('10226', '6', '设置显示列', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:27', '2016-09-26 11:06:56');
INSERT INTO `tp_func` VALUES ('10227', '1', '价格即将过期-车款列表', '正常', '10070', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:26', '2016-09-26 13:32:18');
INSERT INTO `tp_func` VALUES ('10228', '2', '提交报价入口', '正常', '10070', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:25', '2016-09-26 13:32:48');
INSERT INTO `tp_func` VALUES ('10229', '1', '价格新增车款-车款列表', '正常', '10072', '46', '未测试', '腰立辉', '腰立辉', '2016-10-28 11:52:34', '2016-09-26 13:33:37');
INSERT INTO `tp_func` VALUES ('10230', '2', '提交报价-入口', '正常', '10072', '46', '未测试', '腰立辉', '腰立辉', '2016-10-28 11:52:34', '2016-09-26 13:33:50');
INSERT INTO `tp_func` VALUES ('10231', '1', '报价列表', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:22', '2016-09-26 13:41:17');
INSERT INTO `tp_func` VALUES ('10232', '2', '查询-按价格状态', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:21', '2016-09-26 13:41:36');
INSERT INTO `tp_func` VALUES ('10233', '3', '查询-按车型车款', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:20', '2016-09-26 13:41:46');
INSERT INTO `tp_func` VALUES ('10234', '4', '添加价格信息', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:19', '2016-09-26 13:42:03');
INSERT INTO `tp_func` VALUES ('10235', '5', '设置显示列', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:18', '2016-09-26 13:42:17');
INSERT INTO `tp_func` VALUES ('10236', '6', '价格修改', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:09', '2016-09-26 13:42:35');
INSERT INTO `tp_func` VALUES ('10237', '1', '待确定价格-车款列表', '正常', '10074', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:08', '2016-09-26 13:50:35');
INSERT INTO `tp_func` VALUES ('10238', '2', '确认价格', '正常', '10074', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:07', '2016-09-26 13:51:00');
INSERT INTO `tp_func` VALUES ('10239', '1', '显示报价城市', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:06', '2016-09-26 13:52:59');
INSERT INTO `tp_func` VALUES ('10240', '2', '选择品牌车型报价（NO车款）', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:05', '2016-09-26 13:56:29');
INSERT INTO `tp_func` VALUES ('10241', '3', '选择车款报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:04', '2016-09-26 13:53:45');
INSERT INTO `tp_func` VALUES ('10242', '4', '选择优惠金额报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:03', '2016-09-26 13:54:27');
INSERT INTO `tp_func` VALUES ('10243', '5', '选择优惠百分比报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:02', '2016-09-26 13:54:42');
INSERT INTO `tp_func` VALUES ('10244', '6', '保存报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:01', '2016-09-26 13:55:52');
INSERT INTO `tp_func` VALUES ('10245', '7', '保存并创建下一条', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:00', '2016-09-26 13:56:13');
INSERT INTO `tp_func` VALUES ('10413', '6', ' 在线咨询', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:01:05', '2016-12-05 18:01:05');
INSERT INTO `tp_func` VALUES ('10412', '5', ' 电话咨询', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:56', '2016-12-05 18:00:56');
INSERT INTO `tp_func` VALUES ('10408', '1', ' 管家列表', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 17:59:46', '2016-12-05 17:59:46');
INSERT INTO `tp_func` VALUES ('10409', '2', ' 管家详情', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:02', '2016-12-05 18:00:02');
INSERT INTO `tp_func` VALUES ('10410', '3', ' 绑定管家', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:28', '2016-12-05 18:00:28');
INSERT INTO `tp_func` VALUES ('10411', '4', ' 微信关注', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:38', '2016-12-05 18:00:38');
INSERT INTO `tp_func` VALUES ('10419', '1', ' 公司介绍', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:04:50', '2016-12-12 15:23:00');
INSERT INTO `tp_func` VALUES ('10414', '1', ' 我的管家信息', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:30', '2016-12-06 10:42:56');
INSERT INTO `tp_func` VALUES ('10415', '2', '点赞', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:40', '2016-12-06 10:42:59');
INSERT INTO `tp_func` VALUES ('10416', '3', ' 评价', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:47', '2016-12-06 10:43:02');
INSERT INTO `tp_func` VALUES ('10417', '4', ' 分享管家名片', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:57', '2016-12-06 10:43:04');
INSERT INTO `tp_func` VALUES ('10418', '5', ' 解除绑定', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:04:12', '2016-12-06 10:43:07');
INSERT INTO `tp_func` VALUES ('10420', '2', ' 重点项目', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:01', '2016-12-12 15:21:09');
INSERT INTO `tp_func` VALUES ('10421', '3', ' 名片信息', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:12', '2016-12-12 15:44:33');
INSERT INTO `tp_func` VALUES ('10422', '4', ' 公司名片分享', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:33', '2016-12-12 15:44:22');
INSERT INTO `tp_func` VALUES ('10423', '5', ' 报名', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:43', '2016-12-09 11:25:53');
INSERT INTO `tp_func` VALUES ('10266', '1', '登录', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:31', '2016-09-27 17:16:17');
INSERT INTO `tp_func` VALUES ('10267', '2', '记住密码', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:30', '2016-09-27 17:16:24');
INSERT INTO `tp_func` VALUES ('10268', '3', '个人信息', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:29', '2016-09-27 17:16:37');
INSERT INTO `tp_func` VALUES ('10269', '4', '修改个人信息', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:28', '2016-09-27 17:16:44');
INSERT INTO `tp_func` VALUES ('10270', '5', '退出', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:26', '2016-09-27 17:16:53');
INSERT INTO `tp_func` VALUES ('10271', '1', '权限管理-入口', '正常', '10107', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:27', '2016-09-27 17:17:36');
INSERT INTO `tp_func` VALUES ('10272', '2', '惠买车电商CRM-入口', '正常', '10107', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:25', '2016-09-27 17:18:05');
INSERT INTO `tp_func` VALUES ('10273', '1', '数量统计', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:12', '2016-10-25 10:31:12');
INSERT INTO `tp_func` VALUES ('10274', '2', '查询-按客户姓名', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:30', '2016-10-25 10:31:30');
INSERT INTO `tp_func` VALUES ('10275', '3', '查询-按客户手机', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:37', '2016-10-25 10:31:37');
INSERT INTO `tp_func` VALUES ('10276', '4', '查询-按待办类型', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:03', '2016-10-25 10:32:03');
INSERT INTO `tp_func` VALUES ('10277', '5', '查询-按待办来源', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:14', '2016-10-25 10:32:14');
INSERT INTO `tp_func` VALUES ('10278', '6', '查询-按客户级别', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:22', '2016-10-25 10:32:22');
INSERT INTO `tp_func` VALUES ('10279', '7', '查询-按跟进阶段', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:41', '2016-10-25 10:32:41');
INSERT INTO `tp_func` VALUES ('10280', '8', '查询-按是否成交', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:50', '2016-10-25 10:32:50');
INSERT INTO `tp_func` VALUES ('10281', '9', '查询-按是否置换', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:33:55', '2016-10-25 10:33:55');
INSERT INTO `tp_func` VALUES ('10282', '10', '查询-按购车城市', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:03', '2016-10-25 10:34:03');
INSERT INTO `tp_func` VALUES ('10283', '11', '查询-按客户来源', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:10', '2016-10-25 10:34:10');
INSERT INTO `tp_func` VALUES ('10284', '12', '上牌城市', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:18', '2016-10-25 10:34:18');
INSERT INTO `tp_func` VALUES ('10285', '13', '按手机归属地', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:34', '2016-10-25 10:34:34');
INSERT INTO `tp_func` VALUES ('10286', '14', '查询-按待办时间', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:45', '2016-10-25 10:34:45');
INSERT INTO `tp_func` VALUES ('10287', '15', '查询-按意向车型', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:55', '2016-10-25 10:34:55');
INSERT INTO `tp_func` VALUES ('10288', '16', '查询-按客户标签', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:35:05', '2016-10-25 10:35:05');
INSERT INTO `tp_func` VALUES ('10289', '17', '今日待办列表', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:35:28', '2016-10-25 10:35:28');
INSERT INTO `tp_func` VALUES ('10290', '18', '添加客户入口', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:34', '2016-10-25 10:36:34');
INSERT INTO `tp_func` VALUES ('10291', '19', '查看外出计划', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:14', '2016-10-25 10:36:14');
INSERT INTO `tp_func` VALUES ('10292', '20', '客户跟进入口', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:49', '2016-10-25 10:36:49');
INSERT INTO `tp_func` VALUES ('10293', '1', '查询', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:38:38', '2016-10-25 10:38:38');
INSERT INTO `tp_func` VALUES ('10294', '2', '添加客户入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:38:46', '2016-10-25 10:38:46');
INSERT INTO `tp_func` VALUES ('10299', '1', '查询', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:34', '2016-10-25 13:39:34');
INSERT INTO `tp_func` VALUES ('10296', '4', '查看外出计划入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:12', '2016-10-25 13:38:12');
INSERT INTO `tp_func` VALUES ('10297', '5', '过期待办列表', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:26', '2016-10-25 13:38:26');
INSERT INTO `tp_func` VALUES ('10298', '6', '跟进入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:39', '2016-10-25 13:38:39');
INSERT INTO `tp_func` VALUES ('10300', '2', '添加客户入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:41', '2016-10-25 13:39:41');
INSERT INTO `tp_func` VALUES ('10301', '3', '查看外出计划入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:55', '2016-10-25 13:39:55');
INSERT INTO `tp_func` VALUES ('10302', '4', '全部待办列表', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:40:13', '2016-10-25 13:40:13');
INSERT INTO `tp_func` VALUES ('10303', '5', '跟进入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:41:24', '2016-10-25 13:41:24');
INSERT INTO `tp_func` VALUES ('10304', '0', '待办数统计', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:42:40', '2016-10-25 13:42:40');
INSERT INTO `tp_func` VALUES ('10305', '0', '待办数统计', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:43:06', '2016-10-25 13:43:06');
INSERT INTO `tp_func` VALUES ('10306', '1', '待办数统计', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:16', '2016-10-25 13:48:16');
INSERT INTO `tp_func` VALUES ('10307', '2', '金融待办列表', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:33', '2016-10-25 13:48:33');
INSERT INTO `tp_func` VALUES ('10308', '3', '跟进入口', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:47', '2016-10-25 13:48:47');
INSERT INTO `tp_func` VALUES ('10309', '1', '客户数统计', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:21', '2016-10-25 13:49:21');
INSERT INTO `tp_func` VALUES ('10310', '2', '常规查询', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:36', '2016-10-25 13:49:36');
INSERT INTO `tp_func` VALUES ('10311', '3', '查询-按订单类型', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:53', '2016-10-25 13:49:53');
INSERT INTO `tp_func` VALUES ('10312', '4', '客户列表', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:00', '2016-10-25 13:50:00');
INSERT INTO `tp_func` VALUES ('10313', '5', '添加客户入口', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:09', '2016-10-25 13:50:09');
INSERT INTO `tp_func` VALUES ('10314', '6', '赠送优惠券', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:28', '2016-10-25 13:50:28');
INSERT INTO `tp_func` VALUES ('10315', '7', '查看全部金融产品', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:43', '2016-10-25 13:50:43');
INSERT INTO `tp_func` VALUES ('10316', '1', '客户统计数', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:51:25', '2016-10-25 13:51:25');
INSERT INTO `tp_func` VALUES ('10317', '2', '常规查询', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:51:37', '2016-10-25 13:51:37');
INSERT INTO `tp_func` VALUES ('10318', '3', '查询-按订单类型', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 14:00:48', '2016-10-25 14:00:48');
INSERT INTO `tp_func` VALUES ('10319', '4', '客户列表', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 14:00:59', '2016-10-25 14:00:59');
INSERT INTO `tp_func` VALUES ('10320', '1', '号码查询', '正常', '10113', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:10:05', '2016-10-25 15:10:05');
INSERT INTO `tp_func` VALUES ('10321', '2', '添加客户', '正常', '10113', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:10:20', '2016-10-25 15:10:20');
INSERT INTO `tp_func` VALUES ('10322', '1', '外出计划', '正常', '10114', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:11:11', '2016-10-25 15:11:11');
INSERT INTO `tp_func` VALUES ('10323', '1', '客户信息', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-28 15:20:10', '2016-10-25 15:12:32');
INSERT INTO `tp_func` VALUES ('10324', '2', '转移', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:39', '2016-10-25 15:12:39');
INSERT INTO `tp_func` VALUES ('10325', '3', '战败', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:45', '2016-10-25 15:12:45');
INSERT INTO `tp_func` VALUES ('10326', '4', '创建待办', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:54', '2016-10-25 15:12:54');
INSERT INTO `tp_func` VALUES ('10327', '5', '免打扰', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:04', '2016-10-25 15:13:04');
INSERT INTO `tp_func` VALUES ('10328', '6', '推送商家入口', '正常', '10115', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:12', '2016-10-25 17:35:12');
INSERT INTO `tp_func` VALUES ('10329', '7', '外出计划入口', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:21', '2016-10-25 15:13:21');
INSERT INTO `tp_func` VALUES ('10330', '8', '订单列表', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:40', '2016-10-25 15:13:40');
INSERT INTO `tp_func` VALUES ('10331', '9', '查看已绑定礼包', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:08', '2016-10-25 15:14:08');
INSERT INTO `tp_func` VALUES ('10332', '10', '查看金融产品', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:21', '2016-10-25 15:14:21');
INSERT INTO `tp_func` VALUES ('10333', '11', '跟进待办', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:36', '2016-10-25 15:14:36');
INSERT INTO `tp_func` VALUES ('10334', '12', '客户基本信息', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:48', '2016-10-25 15:14:48');
INSERT INTO `tp_func` VALUES ('10335', '1', '客户信息', '正常', '10116', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:23', '2016-10-25 17:35:23');
INSERT INTO `tp_func` VALUES ('10336', '2', '客户姓名调整信息页', '正常', '10116', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:27', '2016-10-25 17:35:27');
INSERT INTO `tp_func` VALUES ('10337', '3', '创建买顾订单', '正常', '10116', '80', '通过', '腰立辉', '腰立辉', '2016-10-26 10:04:11', '2016-11-02 10:10:10');
INSERT INTO `tp_func` VALUES ('10338', '1', '查询-按客户姓名', '正常', '10052', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 16:37:30', '2016-11-02 09:42:52');
INSERT INTO `tp_func` VALUES ('10339', '2', '查询-按客户手机', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:37:46', '2016-10-25 16:37:46');
INSERT INTO `tp_func` VALUES ('10340', '3', '查询-按订单编号', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:06', '2016-10-25 16:38:06');
INSERT INTO `tp_func` VALUES ('10341', '4', '查询-按媒体单号', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:24', '2016-10-25 16:38:24');
INSERT INTO `tp_func` VALUES ('10342', '5', '查询-按订单状态', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:40', '2016-10-25 16:38:40');
INSERT INTO `tp_func` VALUES ('10343', '6', '查询-按订单来源', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:51', '2016-10-25 16:38:51');
INSERT INTO `tp_func` VALUES ('10344', '7', '查询-按订单车型', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:39:09', '2016-10-25 16:39:09');
INSERT INTO `tp_func` VALUES ('10345', '8', '查询-按下单时间', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:39:19', '2016-10-25 16:39:19');
INSERT INTO `tp_func` VALUES ('10346', '9', '订单列表', '正常', '10052', '51', '失败', '腰立辉', '腰立辉', '2016-10-25 17:35:41', '2016-11-02 09:43:06');
INSERT INTO `tp_func` VALUES ('10347', '10', '【客户手机号】客户跟进', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:12', '2016-10-25 16:40:12');
INSERT INTO `tp_func` VALUES ('10348', '11', '详情', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:24', '2016-10-25 16:40:24');
INSERT INTO `tp_func` VALUES ('10349', '12', '赠送随手礼', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:38', '2016-10-25 16:40:38');
INSERT INTO `tp_func` VALUES ('10350', '13', '跟进', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:49', '2016-10-25 16:40:49');
INSERT INTO `tp_func` VALUES ('10351', '14', '查看金融产品', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:58', '2016-10-25 16:40:58');
INSERT INTO `tp_func` VALUES ('10352', '1', '查询-按客户姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:10', '2016-10-25 16:45:10');
INSERT INTO `tp_func` VALUES ('10353', '2', '查询-按客户手机号', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:19', '2016-10-25 16:45:19');
INSERT INTO `tp_func` VALUES ('10354', '3', '查询-按车主姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:32', '2016-10-25 16:45:32');
INSERT INTO `tp_func` VALUES ('10355', '4', '查询-按订单编号', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:44', '2016-10-25 16:45:44');
INSERT INTO `tp_func` VALUES ('10356', '5', '查询-按订单来源', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:54', '2016-10-25 16:45:54');
INSERT INTO `tp_func` VALUES ('10357', '6', '查询-按订单品牌', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:05', '2016-10-25 16:46:05');
INSERT INTO `tp_func` VALUES ('10358', '7', '查询-按订单车型', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:16', '2016-10-25 16:46:16');
INSERT INTO `tp_func` VALUES ('10359', '8', '查询-按信息状态', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:24', '2016-10-25 16:46:24');
INSERT INTO `tp_func` VALUES ('10360', '9', '查询-按买顾大区', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:33', '2016-10-25 16:46:33');
INSERT INTO `tp_func` VALUES ('10361', '10', '查询-按买顾城市', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:41', '2016-10-25 16:46:41');
INSERT INTO `tp_func` VALUES ('10362', '11', '查询-按买顾姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:52', '2016-10-25 16:46:52');
INSERT INTO `tp_func` VALUES ('10363', '12', '查询-按成交状态', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:04', '2016-10-25 16:47:04');
INSERT INTO `tp_func` VALUES ('10364', '13', '查询-按成交时间', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:21', '2016-10-25 16:47:21');
INSERT INTO `tp_func` VALUES ('10365', '14', '成交订单列表', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:33', '2016-10-25 16:47:33');
INSERT INTO `tp_func` VALUES ('10366', '15', '【订单ID】订单详情', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:48', '2016-10-25 16:47:48');
INSERT INTO `tp_func` VALUES ('10367', '16', '【客户手机号】跟进', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:11', '2016-10-25 16:48:11');
INSERT INTO `tp_func` VALUES ('10368', '17', '填写成交信息', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:26', '2016-10-25 16:48:26');
INSERT INTO `tp_func` VALUES ('10369', '18', '转顾问', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:32', '2016-10-25 16:48:32');
INSERT INTO `tp_func` VALUES ('10370', '1', '查询-按借贷人姓名', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:55:44', '2016-10-25 16:55:44');
INSERT INTO `tp_func` VALUES ('10371', '2', '查询-按借贷人手机号', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:55:58', '2016-10-25 16:55:58');
INSERT INTO `tp_func` VALUES ('10372', '3', '查询-按融资单ID', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:15', '2016-10-25 16:56:15');
INSERT INTO `tp_func` VALUES ('10373', '4', '查询-按状态', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:24', '2016-10-25 16:56:24');
INSERT INTO `tp_func` VALUES ('10374', '5', '查询-按融资单车型', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:38', '2016-10-25 16:56:38');
INSERT INTO `tp_func` VALUES ('10375', '6', '查询-按下单时间', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:46', '2016-10-25 16:56:46');
INSERT INTO `tp_func` VALUES ('10376', '7', '金融订单列表', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:23', '2016-10-25 16:57:23');
INSERT INTO `tp_func` VALUES ('10377', '8', '【关联订单】', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:37', '2016-10-25 16:57:37');
INSERT INTO `tp_func` VALUES ('10378', '9', '详情', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:46', '2016-10-25 16:57:46');
INSERT INTO `tp_func` VALUES ('10379', '1', '查询-按借贷人姓名', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:17', '2016-10-25 16:58:17');
INSERT INTO `tp_func` VALUES ('10380', '2', '查询-按借贷人手机号', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:30', '2016-10-25 16:58:30');
INSERT INTO `tp_func` VALUES ('10381', '3', '查询-按维保单ID', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:42', '2016-10-25 16:58:42');
INSERT INTO `tp_func` VALUES ('10382', '4', '查询-按维保单状态', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:52', '2016-10-25 16:58:52');
INSERT INTO `tp_func` VALUES ('10383', '5', '查询-按维保单车型', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:18', '2016-10-25 17:00:18');
INSERT INTO `tp_func` VALUES ('10384', '6', '查询-按下单时间', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:26', '2016-10-25 17:00:26');
INSERT INTO `tp_func` VALUES ('10385', '7', '维保订单列表', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:40', '2016-10-25 17:00:40');
INSERT INTO `tp_func` VALUES ('10386', '1', '待确认订单统计', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:04', '2016-10-25 17:18:04');
INSERT INTO `tp_func` VALUES ('10387', '2', '待结算定金汇总', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:24', '2016-10-25 17:18:24');
INSERT INTO `tp_func` VALUES ('10388', '3', '【立即结算】', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:32', '2016-10-25 17:18:32');
INSERT INTO `tp_func` VALUES ('10389', '4', '查询-按客户手机', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:18:49', '2016-11-02 09:42:25');
INSERT INTO `tp_func` VALUES ('10390', '5', '查询-按订单类型', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:07', '2016-10-25 17:19:07');
INSERT INTO `tp_func` VALUES ('10391', '6', '查询-按定金状态', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:17', '2016-10-25 17:19:17');
INSERT INTO `tp_func` VALUES ('10392', '7', '查询-按订单编号', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:29', '2016-10-25 17:19:29');
INSERT INTO `tp_func` VALUES ('10393', '8', '查询-按订单来源', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:37', '2016-10-25 17:19:37');
INSERT INTO `tp_func` VALUES ('10394', '9', '查询-按订单状态', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:05', '2016-10-25 17:20:05');
INSERT INTO `tp_func` VALUES ('10395', '10', '查询-按顾问', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:15', '2016-10-25 17:20:15');
INSERT INTO `tp_func` VALUES ('10396', '11', '订单列表', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:26', '2016-11-02 09:42:49');
INSERT INTO `tp_func` VALUES ('10397', '12', '导出列表', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:32', '2016-10-25 17:20:32');
INSERT INTO `tp_func` VALUES ('10398', '13', '确认成交', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:44', '2016-11-02 09:42:02');
INSERT INTO `tp_func` VALUES ('10399', '14', '取消交易', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:51', '2016-11-02 09:42:47');
INSERT INTO `tp_func` VALUES ('10400', '15', '详情', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:59', '2016-10-25 17:20:59');
INSERT INTO `tp_func` VALUES ('10401', '1', ' 简介', '正常', '10173', '107', '通过', '腰立辉', '腰立辉', '2016-12-05 16:47:48', '2016-12-12 15:09:30');
INSERT INTO `tp_func` VALUES ('10402', '3', ' 获取验证码', '正常', '10173', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 16:48:03', '2016-12-14 11:50:48');
INSERT INTO `tp_func` VALUES ('10403', '4', ' 登录', '正常', '10173', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 16:48:12', '2016-12-14 11:51:09');
INSERT INTO `tp_func` VALUES ('10404', '5', ' 提交信息', '正常', '10173', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 16:48:41', '2016-12-14 11:53:43');
INSERT INTO `tp_func` VALUES ('10405', '6', ' 查询合作状态', '正常', '10173', '107', '通过', '腰立辉', '腰立辉', '2016-12-05 16:49:29', '2016-12-14 12:00:43');
INSERT INTO `tp_func` VALUES ('10406', '7', ' 驳回后重提', '正常', '10173', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 16:49:42', '2016-12-12 15:46:26');
INSERT INTO `tp_func` VALUES ('10424', '6', ' 数据统计', '正常', '10175', '107', '通过', '腰立辉', '腰立辉', '2016-12-05 18:06:02', '2016-12-12 15:36:43');
INSERT INTO `tp_func` VALUES ('10425', '1', ' 管家新增', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:13', '2016-12-05 18:25:13');
INSERT INTO `tp_func` VALUES ('10426', '2', ' 管家编辑', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:23', '2016-12-05 18:25:23');
INSERT INTO `tp_func` VALUES ('10427', '3', ' 管家评价', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:34', '2016-12-05 18:25:34');
INSERT INTO `tp_func` VALUES ('10428', '4', ' 聘用情况', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:42', '2016-12-05 18:25:42');
INSERT INTO `tp_func` VALUES ('10429', '5', ' 管家详情', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:26:15', '2016-12-05 18:26:15');
INSERT INTO `tp_func` VALUES ('10430', '6', ' 服务用户（列表）', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:26:40', '2016-12-05 18:26:40');
INSERT INTO `tp_func` VALUES ('10431', '1', ' 登录', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:30:17', '2016-12-06 10:30:17');
INSERT INTO `tp_func` VALUES ('10432', '2', ' 注销', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:30:26', '2016-12-06 10:30:26');
INSERT INTO `tp_func` VALUES ('10433', '3', ' 修改密码', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:30:52', '2016-12-06 10:30:52');
INSERT INTO `tp_func` VALUES ('10434', '4', ' 切换平台', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:31:09', '2016-12-06 10:31:09');
INSERT INTO `tp_func` VALUES ('10435', '5', ' 菜单的收齐/展开', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:36:30', '2016-12-06 10:36:30');
INSERT INTO `tp_func` VALUES ('10436', '1', ' New Feedbacks', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:36:57', '2016-12-06 10:36:57');
INSERT INTO `tp_func` VALUES ('10437', '2', ' 新订单', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:37:21', '2016-12-06 10:37:21');
INSERT INTO `tp_func` VALUES ('10438', '3', ' Brand Popularity', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:37:57', '2016-12-06 10:37:57');
INSERT INTO `tp_func` VALUES ('10439', '4', ' 销售额', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:05', '2016-12-06 10:38:05');
INSERT INTO `tp_func` VALUES ('10440', '5', ' 访问量', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:18', '2016-12-06 10:38:18');
INSERT INTO `tp_func` VALUES ('10441', '6', ' Actives', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:40', '2016-12-06 10:38:40');
INSERT INTO `tp_func` VALUES ('10442', '7', ' Server Load', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:57', '2016-12-06 10:38:57');
INSERT INTO `tp_func` VALUES ('10443', '1', ' 项目列表', '正常', '10192', null, '未测试', '腰立辉', '腰立辉', '2016-12-06 11:54:39', '2016-12-06 12:00:28');
INSERT INTO `tp_func` VALUES ('10444', '2', ' 展开/收起详情', '正常', '10192', null, '未测试', '腰立辉', '腰立辉', '2016-12-06 11:54:59', '2016-12-06 12:00:30');
INSERT INTO `tp_func` VALUES ('10445', '3', ' 选手列表', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 10:07:43', '2016-12-13 13:01:29');
INSERT INTO `tp_func` VALUES ('10446', '4', ' 投票', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 10:08:00', '2016-12-13 13:01:52');
INSERT INTO `tp_func` VALUES ('10447', '2', ' 拨打400电话', '正常', '10173', '107', '通过', '腰立辉', '腰立辉', '2016-12-12 15:45:39', '2016-12-14 11:54:06');
INSERT INTO `tp_func` VALUES ('10448', '1', ' 规则介绍', '正常', '10201', '110', '失败', '腰立辉', '腰立辉', '2016-12-12 20:31:40', '2016-12-13 13:03:38');
INSERT INTO `tp_func` VALUES ('10449', '2', ' 背景音乐', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:31:57', '2016-12-13 13:01:18');
INSERT INTO `tp_func` VALUES ('10450', '5', ' 播放选手歌曲', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:32:37', '2016-12-13 13:02:02');
INSERT INTO `tp_func` VALUES ('10451', '1', ' 首页', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:34:05', '2016-12-13 16:48:07');
INSERT INTO `tp_func` VALUES ('10452', '2', ' 点击（首页）进入', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:34:22', '2016-12-13 16:48:31');
INSERT INTO `tp_func` VALUES ('10453', '3', ' 项目列表', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:34:36', '2016-12-13 16:48:56');
INSERT INTO `tp_func` VALUES ('10454', '5', ' 项目详情', '正常', '10202', '110', '未测试', '腰立辉', '腰立辉', '2016-12-12 20:35:18', '2016-12-13 11:55:28');
INSERT INTO `tp_func` VALUES ('10455', '6', ' 详情视频', '正常', '10202', '110', '失败', '腰立辉', '腰立辉', '2016-12-12 20:35:32', '2016-12-13 16:40:42');
INSERT INTO `tp_func` VALUES ('10456', '4', ' 项目投票', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:35:46', '2016-12-13 16:56:16');
INSERT INTO `tp_func` VALUES ('10457', '7', ' 官网链接', '正常', '10202', '110', '未测试', '腰立辉', '腰立辉', '2016-12-12 20:36:05', '2016-12-13 11:55:51');
INSERT INTO `tp_func` VALUES ('10458', '1', ' 查询-按地区', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:41:19', '2016-12-14 12:03:15');
INSERT INTO `tp_func` VALUES ('10459', '2', ' 查询-按合作方式', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:41:50', '2016-12-14 12:05:50');
INSERT INTO `tp_func` VALUES ('10460', '3', ' 查询-按状态', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:42:31', '2016-12-14 12:05:56');
INSERT INTO `tp_func` VALUES ('10461', '4', ' 查询-按联系方式', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:42:44', '2016-12-14 12:15:57');
INSERT INTO `tp_func` VALUES ('10462', '5', ' 组合查询', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:42:58', '2016-12-14 12:16:03');
INSERT INTO `tp_func` VALUES ('10463', '6', ' 合作者列表', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:43:11', '2016-12-14 12:16:51');
INSERT INTO `tp_func` VALUES ('10464', '7', '编辑/ 查看进度入口', '正常', '10203', '107', '未测试', '腰立辉', '腰立辉', '2016-12-14 11:43:33', '2016-12-14 12:14:54');
INSERT INTO `tp_func` VALUES ('10465', '1', ' 申请资料信息', '正常', '10204', '107', '通过', '腰立辉', '腰立辉', '2016-12-14 11:46:24', '2016-12-14 15:29:05');
INSERT INTO `tp_func` VALUES ('10466', '2', ' 洽谈进度维护', '正常', '10204', '107', '未测试', '腰立辉', '腰立辉', '2016-12-14 11:46:49', '2016-12-14 11:46:04');
INSERT INTO `tp_func` VALUES ('10467', '3', ' 洽谈进度历史', '正常', '10204', '107', '通过', '腰立辉', '腰立辉', '2016-12-14 11:47:07', '2016-12-14 15:29:21');
INSERT INTO `tp_func` VALUES ('10468', '4', ' 处理结果', '正常', '10204', '107', '未测试', '腰立辉', '腰立辉', '2016-12-14 11:47:19', '2016-12-14 11:46:33');

-- ----------------------------
-- Table structure for `tp_hcfunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_hcfunc`;
CREATE TABLE `tp_hcfunc` (
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
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hcfunc
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_path`
-- ----------------------------
DROP TABLE IF EXISTS `tp_path`;
CREATE TABLE `tp_path` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `pstate` varchar(5) DEFAULT NULL,
  `sysid` int(11) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10205 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_path
-- ----------------------------
INSERT INTO `tp_path` VALUES ('10000', '1', '登陆模块', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:35:12', '2016-09-22 10:35:12');
INSERT INTO `tp_path` VALUES ('10001', '2', '产品库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 14:21:56', '2016-09-23 14:21:56');
INSERT INTO `tp_path` VALUES ('10002', '3', '测试项目', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:40:44', '2016-09-22 10:40:44');
INSERT INTO `tp_path` VALUES ('10003', '10', '项目-系统', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:45', '2016-09-23 12:34:45');
INSERT INTO `tp_path` VALUES ('10004', '11', '项目-系统路径', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:33', '2016-09-23 10:41:33');
INSERT INTO `tp_path` VALUES ('10005', '12', '项目-系统路径-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:27', '2016-09-23 10:41:27');
INSERT INTO `tp_path` VALUES ('10006', '15', '功能点-用例', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:38:09', '2016-09-23 10:38:09');
INSERT INTO `tp_path` VALUES ('10007', '17', '功能点-规则', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:38', '2016-09-23 10:44:38');
INSERT INTO `tp_path` VALUES ('10008', '13', '项目-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:23', '2016-09-22 10:49:52');
INSERT INTO `tp_path` VALUES ('10034', '6', '项目-里程碑-人员', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:19', '2016-09-23 12:34:19');
INSERT INTO `tp_path` VALUES ('10013', '14', '项目-范围', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:37:57', '2016-09-23 10:37:57');
INSERT INTO `tp_path` VALUES ('10033', '16', '功能点-模板', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:31', '2016-09-23 10:44:31');
INSERT INTO `tp_path` VALUES ('10017', '18', '项目-场景', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:23', '2016-09-23 10:45:23');
INSERT INTO `tp_path` VALUES ('10018', '19', '项目-场景-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:30', '2016-09-23 10:45:30');
INSERT INTO `tp_path` VALUES ('10019', '20', '项目-场景-场景功能-功能库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:38', '2016-09-23 10:45:38');
INSERT INTO `tp_path` VALUES ('10020', '21', '项目-场景-场景功能-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:44', '2016-09-23 10:45:44');
INSERT INTO `tp_path` VALUES ('10021', '22', '项目-场景-场景功能-场景数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:51', '2016-09-23 10:45:51');
INSERT INTO `tp_path` VALUES ('10022', '27', '项目-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:07', '2016-09-23 10:47:07');
INSERT INTO `tp_path` VALUES ('10023', '28', '项目-控件库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:15', '2016-09-23 10:47:15');
INSERT INTO `tp_path` VALUES ('10024', '23', '手工测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:42', '2016-09-23 10:46:42');
INSERT INTO `tp_path` VALUES ('10025', '24', '手工测试-执行', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:48', '2016-09-23 10:46:48');
INSERT INTO `tp_path` VALUES ('10026', '25', '自动化测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:53', '2016-09-23 10:46:53');
INSERT INTO `tp_path` VALUES ('10027', '26', '自动化测试-测试数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:59', '2016-09-23 10:46:59');
INSERT INTO `tp_path` VALUES ('10028', '5', '项目-里程碑', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:14', '2016-09-23 12:34:14');
INSERT INTO `tp_path` VALUES ('10029', '7', '项目-里程碑-列队', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:24', '2016-09-23 12:34:24');
INSERT INTO `tp_path` VALUES ('10030', '4', '项目-风险', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:05', '2016-09-23 12:34:05');
INSERT INTO `tp_path` VALUES ('10031', '8', '项目-里程碑-列队-场景库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 13:08:34', '2016-09-23 13:08:34');
INSERT INTO `tp_path` VALUES ('10032', '9', '项目-里程碑-列队-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:38', '2016-09-23 12:34:38');
INSERT INTO `tp_path` VALUES ('10036', '1', '工作台', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 15:19:54', '2016-09-26 10:04:06');
INSERT INTO `tp_path` VALUES ('10037', '2', '客户管理-全部客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:22:35', '2016-09-26 10:04:48');
INSERT INTO `tp_path` VALUES ('10038', '3', '客户管理-公共客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:07', '2016-09-26 10:04:59');
INSERT INTO `tp_path` VALUES ('10039', '4', '客户管理-30天未跟进客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:09', '2016-09-26 10:05:15');
INSERT INTO `tp_path` VALUES ('10040', '5', '业务管理-买车顾问管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:11', '2016-09-26 10:09:21');
INSERT INTO `tp_path` VALUES ('10041', '6', '业务管理-外呼录音', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:12', '2016-09-26 10:09:51');
INSERT INTO `tp_path` VALUES ('10042', '7', '业务管理-签到与倒休', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:14', '2016-09-26 10:10:02');
INSERT INTO `tp_path` VALUES ('10043', '8', '业务管理-免打扰客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:17', '2016-09-26 10:10:25');
INSERT INTO `tp_path` VALUES ('10044', '9', '业务管理-商家位置管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:19', '2016-09-26 10:10:47');
INSERT INTO `tp_path` VALUES ('10045', '11', '统计报表-城市业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:37', '2016-09-26 10:11:28');
INSERT INTO `tp_path` VALUES ('10046', '12', '统计报表-分配与跟进客户统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:39', '2016-09-26 10:11:49');
INSERT INTO `tp_path` VALUES ('10047', '13', '统计报表-买顾业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:41', '2016-09-26 10:12:00');
INSERT INTO `tp_path` VALUES ('10048', '14', '线索管理-全部线索', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:44', '2016-09-26 10:12:36');
INSERT INTO `tp_path` VALUES ('10049', '15', '线索管理-线索来源配置', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:47', '2016-09-26 10:13:00');
INSERT INTO `tp_path` VALUES ('10050', '16', '任务管理-添加客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:50', '2016-09-26 10:14:51');
INSERT INTO `tp_path` VALUES ('10051', '22', '任务管理-任务管理-今日待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:26:25', '2016-10-25 10:26:25');
INSERT INTO `tp_path` VALUES ('10052', '32', '订单管理-全部新车订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:35:44');
INSERT INTO `tp_path` VALUES ('10053', '36', '权限管理-角色类型管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:56:14');
INSERT INTO `tp_path` VALUES ('10054', '37', '权限管理-系统资源管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:56:05');
INSERT INTO `tp_path` VALUES ('10055', '38', '权限管理-角色管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:56');
INSERT INTO `tp_path` VALUES ('10056', '39', '权限管理-用户管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:47');
INSERT INTO `tp_path` VALUES ('10057', '40', '消息中心-待办提醒', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:40');
INSERT INTO `tp_path` VALUES ('10058', '41', '消息中心-订单提醒', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:30');
INSERT INTO `tp_path` VALUES ('10059', '42', '消息中心-评价投诉', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:25');
INSERT INTO `tp_path` VALUES ('10060', '43', '消息中心-系统公告', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:18');
INSERT INTO `tp_path` VALUES ('10061', '44', '公告管理-公告管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:10');
INSERT INTO `tp_path` VALUES ('10062', '45', '公告管理-系统消息管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:03');
INSERT INTO `tp_path` VALUES ('10063', '46', '在线顾问管理-在线顾问', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:54');
INSERT INTO `tp_path` VALUES ('10064', '47', '消息中心-品牌分配', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:45');
INSERT INTO `tp_path` VALUES ('10065', '48', '基盘客户管理-待办任务', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:28');
INSERT INTO `tp_path` VALUES ('10066', '49', '基盘客户管理-短信推送', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:16');
INSERT INTO `tp_path` VALUES ('10067', '50', '价格库存管理-车型及报价配置管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:08');
INSERT INTO `tp_path` VALUES ('10072', '20', '任务管理-报价收集-新增车款', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:14', '2016-10-25 10:25:14');
INSERT INTO `tp_path` VALUES ('10069', '51', '价格库存管理-车型价格库', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:00');
INSERT INTO `tp_path` VALUES ('10070', '19', '任务管理-报价收集-即将过期', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:06', '2016-10-25 10:25:06');
INSERT INTO `tp_path` VALUES ('10071', '10', '业务管理-价格收集管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:35', '2016-09-26 11:10:39');
INSERT INTO `tp_path` VALUES ('10073', '18', '任务管理-报价收集-我的报价', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:24:59', '2016-10-25 10:24:59');
INSERT INTO `tp_path` VALUES ('10074', '17', '任务管理-报价收集-待确定价格', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:24:51', '2016-10-25 10:24:51');
INSERT INTO `tp_path` VALUES ('10075', '21', '任务管理-报价收集-库存价格收集', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:22', '2016-10-25 10:25:22');
INSERT INTO `tp_path` VALUES ('10196', '5', '  测试项目-风险', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:41', '2016-12-06 11:29:41');
INSERT INTO `tp_path` VALUES ('10195', '4', ' 测试项目-里程碑', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:32', '2016-12-06 11:29:32');
INSERT INTO `tp_path` VALUES ('10174', '6', ' 专属管家-我的专属管家', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 18:02:36', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10175', '13', '个人中心-公司名片', '正常', '66', '腰立辉', '腰立辉', '2016-12-05 18:02:53', '2016-12-12 10:06:16');
INSERT INTO `tp_path` VALUES ('10176', '4', ' 项目资料库-项目管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:16:12', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10177', '5', '项目资料库-移民评估', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:16:23', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10178', '7', '内容发布-专题管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:16:34', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10179', '8', ' 内容发布-资讯发布', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:19:30', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10180', '9', ' 内容发布-活动管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:20:01', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10181', '10', ' 内容发布-移民管家', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:20:20', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10182', '12', ' 营销管理-我的客户', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:21:07', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10183', '13', '营销管理-移民方案', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:21:22', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10184', '14', ' 营销管理-推荐客户', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:21:40', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10185', '15', ' 营销管理-加盟管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:22:01', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10186', '17', ' 用户管理-用户管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:23:02', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10187', '18', ' 用户管理-角色管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:23:16', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10188', '20', ' 系统管理-投诉建议', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:24:00', '2016-12-05 18:24:00');
INSERT INTO `tp_path` VALUES ('10189', '21', ' 系统管理-字典设置', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:24:23', '2016-12-05 18:24:23');
INSERT INTO `tp_path` VALUES ('10190', '22', ' 系统管理-个人设置', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:24:40', '2016-12-05 18:24:40');
INSERT INTO `tp_path` VALUES ('10191', '2', ' 主页', '正常', '64', '腰立辉', '腰立辉', '2016-12-06 10:16:18', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10193', '2', ' 首页-轮播图', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:26:58', '2016-12-06 11:28:12');
INSERT INTO `tp_path` VALUES ('10194', '3', ' 测试项目-项目列表', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:11', '2016-12-06 11:29:11');
INSERT INTO `tp_path` VALUES ('10106', '1', '登录模块', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:15:49', '2016-09-27 17:15:49');
INSERT INTO `tp_path` VALUES ('10107', '2', '我的工作台', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:16:06', '2016-09-27 17:16:06');
INSERT INTO `tp_path` VALUES ('10108', '23', '任务管理-任务管理-过期待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:26:48');
INSERT INTO `tp_path` VALUES ('10109', '24', '任务管理-任务管理-全部待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:04');
INSERT INTO `tp_path` VALUES ('10110', '25', '任务管理-任务管理-金融待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:25');
INSERT INTO `tp_path` VALUES ('10111', '26', '任务管理-任务管理-全部客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:42');
INSERT INTO `tp_path` VALUES ('10112', '27', '任务管理-任务管理-投诉客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:28:05');
INSERT INTO `tp_path` VALUES ('10113', '28', '任务管理-任务管理-添加客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:02:43');
INSERT INTO `tp_path` VALUES ('10114', '29', '任务管理-任务管理-查看外出计划', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:03:05');
INSERT INTO `tp_path` VALUES ('10115', '30', '任务管理-任务管理-跟进', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:03:23');
INSERT INTO `tp_path` VALUES ('10116', '31', '任务管理-任务管理-跟进-推送商家', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 15:16:12');
INSERT INTO `tp_path` VALUES ('10117', '33', '订单管理-成交订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:17');
INSERT INTO `tp_path` VALUES ('10118', '34', '订单管理-金融订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:34');
INSERT INTO `tp_path` VALUES ('10119', '35', '订单管理-维保订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:47');
INSERT INTO `tp_path` VALUES ('10120', '1', '登陆模块', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:11:33', '2016-10-25 17:11:33');
INSERT INTO `tp_path` VALUES ('10121', '2', '首页', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:11:58', '2016-10-25 17:11:58');
INSERT INTO `tp_path` VALUES ('10122', '3', '订单管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:22', '2016-10-25 17:12:22');
INSERT INTO `tp_path` VALUES ('10123', '4', '订单管理-竞价订单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:43', '2016-10-25 17:12:43');
INSERT INTO `tp_path` VALUES ('10124', '5', '订单管理-成交确认', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:56', '2016-10-25 17:12:56');
INSERT INTO `tp_path` VALUES ('10125', '6', '交易佣金-本月账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:43', '2016-10-25 17:13:43');
INSERT INTO `tp_path` VALUES ('10126', '7', '交易佣金-历史账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:51', '2016-10-25 17:13:51');
INSERT INTO `tp_path` VALUES ('10127', '8', '交易佣金-交易明细', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:59', '2016-10-25 17:13:59');
INSERT INTO `tp_path` VALUES ('10128', '9', '金牌商家计划-本月账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:14:31', '2016-10-25 17:14:31');
INSERT INTO `tp_path` VALUES ('10129', '10', '金牌商家计划-历史账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:14:47', '2016-10-25 17:14:47');
INSERT INTO `tp_path` VALUES ('10130', '11', '金融服务-金融订单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:08', '2016-10-25 17:15:08');
INSERT INTO `tp_path` VALUES ('10131', '12', '金融服务-订单结算', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:23', '2016-10-25 17:15:23');
INSERT INTO `tp_path` VALUES ('10132', '13', '维修保养', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:54', '2016-10-25 17:15:54');
INSERT INTO `tp_path` VALUES ('10133', '14', '基本设置-人员管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:11', '2016-10-25 17:16:11');
INSERT INTO `tp_path` VALUES ('10134', '15', '基本设置-车型管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:26', '2016-10-25 17:16:26');
INSERT INTO `tp_path` VALUES ('10135', '16', '基本设置-位置管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:34', '2016-10-25 17:16:34');
INSERT INTO `tp_path` VALUES ('10136', '17', '基本设置-结算账户', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:41', '2016-10-25 17:16:41');
INSERT INTO `tp_path` VALUES ('10137', '18', '统计报表', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:49', '2016-10-25 17:16:49');
INSERT INTO `tp_path` VALUES ('10138', '19', '信用评价', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:17:12', '2016-10-25 17:17:12');
INSERT INTO `tp_path` VALUES ('10139', '20', '专题活动', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:17:28', '2016-10-25 17:17:28');
INSERT INTO `tp_path` VALUES ('10141', '1', ' 登录', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:11:31', '2016-12-05 16:13:59');
INSERT INTO `tp_path` VALUES ('10142', '2', ' 首页', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:11:43', '2016-12-05 16:14:02');
INSERT INTO `tp_path` VALUES ('10143', '3', ' 项目资料库-国家管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:03', '2016-12-05 18:19:07');
INSERT INTO `tp_path` VALUES ('10144', '6', ' 内容发布-栏目管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:12', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10145', '11', ' 营销管理-意向客户', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:23', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10146', '16', ' 用户管理-组织机构', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:51', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10147', '19', ' 系统管理-系统日志', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:14:56', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10148', '2', '客户信息（上）', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:18:47', '2016-12-05 16:38:30');
INSERT INTO `tp_path` VALUES ('10149', '3', '客户信息（下）', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:19:12', '2016-12-05 16:38:45');
INSERT INTO `tp_path` VALUES ('10150', '4', ' 个人中心', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:19:21', '2016-12-05 16:37:02');
INSERT INTO `tp_path` VALUES ('10173', '12', ' 个人中心-商务合作', '正常', '66', '腰立辉', '腰立辉', '2016-12-05 16:45:43', '2016-12-12 10:05:48');
INSERT INTO `tp_path` VALUES ('10152', '1', ' 登录模块', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:21:42', '2016-12-05 16:21:42');
INSERT INTO `tp_path` VALUES ('10153', '6', ' 组织机构模块', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:21:52', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10154', '7', ' 平台管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:01', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10192', '1', ' 首页-近期上线项目', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:26:38', '2016-12-06 11:27:40');
INSERT INTO `tp_path` VALUES ('10156', '3', ' 岗位管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:31', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10157', '4', ' 角色管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:42', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10158', '8', ' 字典管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:58', '2016-12-06 10:17:41');
INSERT INTO `tp_path` VALUES ('10159', '5', ' 用户模块', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:23:14', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10161', '1', '移民官网', '正常', '66', '腰立辉', '腰立辉', '2016-12-05 16:31:25', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10162', '2', ' 移民评估', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:31:39', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10163', '5', ' 专属管家-列表及介绍', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:31:55', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10164', '7', ' 专享活动', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:32:19', '2016-12-12 10:04:05');
INSERT INTO `tp_path` VALUES ('10165', '8', ' 优选国家', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:32:33', '2016-12-12 10:04:11');
INSERT INTO `tp_path` VALUES ('10166', '9', ' 精彩案例', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:32:56', '2016-12-12 10:04:22');
INSERT INTO `tp_path` VALUES ('10167', '10', ' 移民攻略', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:33:10', '2016-12-12 10:04:45');
INSERT INTO `tp_path` VALUES ('10168', '11', ' 移民项目', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:34:17', '2016-12-12 10:04:56');
INSERT INTO `tp_path` VALUES ('10170', '14', ' 拨打电话', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:34:40', '2016-12-12 10:06:16');
INSERT INTO `tp_path` VALUES ('10171', '15', ' 生活体验', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:34:49', '2016-12-12 10:06:16');
INSERT INTO `tp_path` VALUES ('10172', '1', ' 登录', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:36:49', '2016-12-05 16:36:49');
INSERT INTO `tp_path` VALUES ('10197', '6', '  测试项目-功能点', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:50', '2016-12-06 11:29:50');
INSERT INTO `tp_path` VALUES ('10198', '7', '  测试项目-范围', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:30:11', '2016-12-06 11:30:11');
INSERT INTO `tp_path` VALUES ('10199', '8', '  测试项目-场景', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:30:21', '2016-12-06 11:30:21');
INSERT INTO `tp_path` VALUES ('10200', '9', '  测试项目-用例库', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:30:33', '2016-12-06 11:30:33');
INSERT INTO `tp_path` VALUES ('10201', '3', ' 投票活动-太平洋好声音', '正常', '66', '腰立辉', '腰立辉', '2016-12-12 09:59:19', '2016-12-12 09:58:28');
INSERT INTO `tp_path` VALUES ('10202', '4', ' 投票活动-四海一家', '正常', '66', '腰立辉', '腰立辉', '2016-12-12 09:59:43', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10203', '5', '商务合作-商务合作管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-14 11:39:36', '2016-12-14 11:39:01');
INSERT INTO `tp_path` VALUES ('10204', '5', ' 商务合作-商务合作进度', '正常', '63', '腰立辉', '腰立辉', '2016-12-14 11:45:04', '2016-12-14 11:44:19');

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(10) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '惠买车', '惠买车平台', '作废', '腰立辉', '腰立辉', '2016-09-16 22:04:58', '2016-12-05 15:41:48');
INSERT INTO `tp_product` VALUES ('2', '自动化', '自动化平台', '正常', '腰立辉', '腰立辉', '2016-09-16 22:07:52', '2016-09-16 22:07:52');
INSERT INTO `tp_product` VALUES ('14', 'PJD', '太平洋加达', '正常', '腰立辉', '腰立辉', '2016-12-05 15:47:20', '2016-12-05 15:47:20');

-- ----------------------------
-- Table structure for `tp_program`
-- ----------------------------
DROP TABLE IF EXISTS `tp_program`;
CREATE TABLE `tp_program` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `prono` varchar(30) DEFAULT '',
  `program` varchar(50) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `prost` varchar(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `manager` varchar(10) DEFAULT NULL,
  `testgp` varchar(50) DEFAULT NULL,
  `ptype` varchar(8) DEFAULT '简要',
  `pm` varchar(10) DEFAULT NULL,
  `develop` varchar(10) DEFAULT NULL,
  `retype` varchar(10) DEFAULT '需求新增',
  `relevel` varchar(5) DEFAULT '一般需求',
  `exponline` date DEFAULT '0000-00-00',
  `profile` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_program
-- ----------------------------
INSERT INTO `tp_program` VALUES ('107', 'PJD1612.1', '微站一期-公司名片，商务合作', '14', '进行中', '2016-12-05', '2016-12-15', '腰立辉', 'PJD', '简要', '邓晔', '', '新项目', '一般需求', '2016-12-15', '																					公司名片，商务合作\r\n																								', '腰立辉', '腰立辉', '2016-12-05 16:05:28', '2016-12-06 11:25:20');
INSERT INTO `tp_program` VALUES ('108', 'Auto1612.1', '测试管理平台搭建', '2', '进行中', '2016-12-05', '2016-12-12', '腰立辉', 'PJD', '简要', '腰立辉', '腰立辉', '新项目', '一般需求', '2017-02-28', '								测试管理平台搭建\r\n												', '腰立辉', '腰立辉', '2016-12-05 17:41:39', '2016-12-07 16:30:50');
INSERT INTO `tp_program` VALUES ('109', 'PJD1612.3', '权限管理后台1612', '14', '进行中', '2016-12-05', '2016-12-15', '魏斌', 'PJD', '简要', '', '', '需求新增', '一般需求', '2016-12-15', '权限后台功能\r\n						', '腰立辉', '腰立辉', '2016-12-06 10:14:39', '2016-12-06 10:14:39');
INSERT INTO `tp_program` VALUES ('110', 'PJD1612.4', '太平洋好声音和四海一家投票', '14', '已上线', '2016-12-12', '2016-12-19', '魏斌', 'PJD', '简要', '', '杨学毅、刘雨熙', '新项目', '一般需求', '2016-12-12', '							1.四海一家投票\r\n2.太平洋好声音投票\r\n																		', '腰立辉', '腰立辉', '2016-12-12 09:45:26', '2016-12-13 17:12:09');

-- ----------------------------
-- Table structure for `tp_prosys`
-- ----------------------------
DROP TABLE IF EXISTS `tp_prosys`;
CREATE TABLE `tp_prosys` (
  `prosysid` smallint(5) NOT NULL AUTO_INCREMENT,
  `sysid` smallint(6) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prosysid`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_prosys
-- ----------------------------
INSERT INTO `tp_prosys` VALUES ('56', '54', '24', '腰立辉', '腰立辉', '2016-09-22 10:06:44', '2016-09-22 10:06:44');
INSERT INTO `tp_prosys` VALUES ('67', '4', '45', '腰立辉', '腰立辉', '2016-09-25 19:12:47', '2016-09-25 19:12:47');
INSERT INTO `tp_prosys` VALUES ('61', '4', '47', '腰立辉', '腰立辉', '2016-09-23 09:46:13', '2016-09-23 09:46:13');
INSERT INTO `tp_prosys` VALUES ('68', '11', '46', '腰立辉', '腰立辉', '2016-09-26 11:26:22', '2016-09-26 11:26:22');
INSERT INTO `tp_prosys` VALUES ('62', '56', '48', '腰立辉', '腰立辉', '2016-09-24 20:47:58', '2016-09-24 20:47:58');
INSERT INTO `tp_prosys` VALUES ('63', '4', '48', '腰立辉', '腰立辉', '2016-09-24 20:48:09', '2016-09-24 20:48:09');
INSERT INTO `tp_prosys` VALUES ('64', '56', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:03', '2016-09-24 21:16:03');
INSERT INTO `tp_prosys` VALUES ('65', '4', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:05', '2016-09-24 21:16:05');
INSERT INTO `tp_prosys` VALUES ('69', '11', '50', '腰立辉', '腰立辉', '2016-10-19 12:50:06', '2016-10-19 12:50:06');
INSERT INTO `tp_prosys` VALUES ('70', '54', '45', '王鑫彤', '王鑫彤', '2016-10-21 10:27:07', '2016-10-21 10:27:07');
INSERT INTO `tp_prosys` VALUES ('79', '11', '97', '腰立辉', '腰立辉', '2016-11-18 09:24:06', '2016-11-18 09:23:11');
INSERT INTO `tp_prosys` VALUES ('74', '11', '51', '腰立辉', '腰立辉', '2016-10-25 15:17:08', '2016-10-25 15:17:08');
INSERT INTO `tp_prosys` VALUES ('73', '3', '65', '腰立辉', '腰立辉', '2016-10-24 09:21:35', '2016-10-24 09:21:35');
INSERT INTO `tp_prosys` VALUES ('75', '6', '51', '腰立辉', '腰立辉', '2016-10-25 17:11:04', '2016-10-25 17:11:04');
INSERT INTO `tp_prosys` VALUES ('76', '11', '80', '腰立辉', '腰立辉', '2016-11-02 09:59:42', '2016-11-18 09:24:01');
INSERT INTO `tp_prosys` VALUES ('82', '62', '107', '腰立辉', '腰立辉', '2016-12-05 16:06:15', '2016-12-05 16:06:15');
INSERT INTO `tp_prosys` VALUES ('83', '63', '107', '腰立辉', '腰立辉', '2016-12-05 16:09:42', '2016-12-05 16:09:42');
INSERT INTO `tp_prosys` VALUES ('89', '64', '109', '腰立辉', '腰立辉', '2016-12-06 10:15:42', '2016-12-06 10:15:42');
INSERT INTO `tp_prosys` VALUES ('85', '66', '107', '腰立辉', '腰立辉', '2016-12-05 16:30:45', '2016-12-05 16:30:45');
INSERT INTO `tp_prosys` VALUES ('87', '68', '108', '腰立辉', '腰立辉', '2016-12-05 17:42:53', '2016-12-05 17:42:53');
INSERT INTO `tp_prosys` VALUES ('88', '4', '108', '腰立辉', '腰立辉', '2016-12-05 17:42:56', '2016-12-05 17:42:56');
INSERT INTO `tp_prosys` VALUES ('91', '66', '110', '腰立辉', '腰立辉', '2016-12-12 09:45:46', '2016-12-12 09:44:55');

-- ----------------------------
-- Table structure for `tp_risk`
-- ----------------------------
DROP TABLE IF EXISTS `tp_risk`;
CREATE TABLE `tp_risk` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `risk` text,
  `level` varchar(2) DEFAULT NULL,
  `amethod` text,
  `proid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `remaks` varchar(200) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_risk
-- ----------------------------
INSERT INTO `tp_risk` VALUES ('1000', '1', '不提交测试，无法完成验收', 'A', '<p>\r\n	暂无方案</p>\r\n', '45', '打开', '', '腰立辉', '腰立辉', '2016-10-28 15:47:24', '2016-11-15 16:52:31');
INSERT INTO `tp_risk` VALUES ('1001', '2', '11', 'C', '<p>\r\n	暂无方案</p>\r\n', '45', '打开', '', '腰立辉', '腰立辉', '2016-11-03 10:44:26', '2016-11-03 11:00:42');

-- ----------------------------
-- Table structure for `tp_rules`
-- ----------------------------
DROP TABLE IF EXISTS `tp_rules`;
CREATE TABLE `tp_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `rules` varchar(300) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10067 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_rules
-- ----------------------------
INSERT INTO `tp_rules` VALUES ('10041', '1', ' 入口：微信菜单-个人中心-公司名片', '需求文档 ', '10419', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-08 17:02:15', '2016-12-08 17:03:06');
INSERT INTO `tp_rules` VALUES ('10066', '2', ' 每位选手宣传内容：中英文名字+照片+音频', '需求文档 ', '10445', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:45:12', '2016-12-12 14:44:21');
INSERT INTO `tp_rules` VALUES ('10065', '1', ' 鲁逸飞Nick，苗天鹤(沈阳）Justin，张泽明Crease，胡旭David，林英英(沈阳）Clinda ，辛会举Arthur，孙东雪Judy，曹朝辉Eric，李小爽Macy，曹东辉Revin，韩琳Elsa，孙印帅Faker。', '需求文档 ', '10445', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:44:57', '2016-12-12 14:54:00');
INSERT INTO `tp_rules` VALUES ('10064', '2', ' 截止时间：12月15日18:00', '需求文档 ', '10446', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:44:42', '2016-12-12 14:43:51');
INSERT INTO `tp_rules` VALUES ('10063', '1', ' 大众以投票形式为前12名晋级选手投票，每人只能投一票，只能为一个人投票，谁的投票量多，谁就是最佳人气奖，只有1个名额，在12位晋级选手中产生。', '需求文档 ', '10446', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:44:19', '2016-12-12 14:43:29');
INSERT INTO `tp_rules` VALUES ('10046', '2', ' 分享链接', '需求文档 ', '10422', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:44:33', '2016-12-09 14:44:33');
INSERT INTO `tp_rules` VALUES ('10047', '1', ' 显示项目图片、项目名称、项目描述，从后台项目管理模块读取含有名片推荐标签的发布项目', '需求文档 ', '10420', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:45:11', '2016-12-09 14:45:11');
INSERT INTO `tp_rules` VALUES ('10044', '2', '公司介绍 – 介绍太平洋出国公司介绍', '需求文档 ', '10419', '正常', '107', '\r\n', '腰立辉', '腰立辉', '2016-12-09 14:43:59', '2016-12-09 14:44:48');
INSERT INTO `tp_rules` VALUES ('10045', '1', ' 我的专属管家-分享名片', '需求文档 ', '10422', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:44:15', '2016-12-09 14:44:15');
INSERT INTO `tp_rules` VALUES ('10048', '2', ' 可左右滑动显示已发布的项目，循环查看所有项目，排序按 手势向左滑动时，展示项目1,项目2,项目3,项目4…', '需求文档 ', '10420', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:45:29', '2016-12-09 14:45:46');
INSERT INTO `tp_rules` VALUES ('10049', '3', ' 每个项目点击后跳转到项目详情的页面（现有m站的项目介绍或专题介绍）', '需求文档 ', '10420', '已搁置', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:46:02', '2016-12-09 14:51:07');
INSERT INTO `tp_rules` VALUES ('10050', '1', ' 当启用名片的角色进入名片时看到的是本人的名片信息，', '需求文档 ', '10421', '正常', '107', '<p>\r\n	当启用名片的角色进入名片时看到的是本人的名片信息，当其他用户进入名片时，可看到公司内所有有名片角色的列表，循环展示所有人，排序按手势向左滑动时，正序展示</p>\r\n', '腰立辉', '腰立辉', '2016-12-09 16:07:38', '2016-12-09 16:09:27');
INSERT INTO `tp_rules` VALUES ('10051', '2', ' 我的专属管家-分享名片 进入名片看到的是该管家的个人名片', '需求文档 ', '10421', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:08:16', '2016-12-09 16:08:16');
INSERT INTO `tp_rules` VALUES ('10052', '3', ' 当个人名片被分享时，其他用户点击分享页看到的是有个人名片的页面；', '需求文档 ', '10421', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:08:37', '2016-12-09 16:08:37');
INSERT INTO `tp_rules` VALUES ('10053', '4', ' 当公司名片被分享时，其他用户点击分享页看到的是公司所有名片的列表页面', '需求文档 ', '10421', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:08:50', '2016-12-09 16:08:50');
INSERT INTO `tp_rules` VALUES ('10054', '1', '客户可在此输入姓名（必填）、手机号（必填）提交报名信息', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:10:02', '2016-12-09 16:10:02');
INSERT INTO `tp_rules` VALUES ('10055', '2', '验证姓名和手机号是否为空，如为空，提示用户：请输入您的姓名,或 提示： 请输入您的手机号。', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:10:26', '2016-12-09 16:10:26');
INSERT INTO `tp_rules` VALUES ('10056', '3', '校验手机号长度，除去空格的11位数字，除去空格后如长度有误，点击提交提示：“手机号码长度不是11位，请重新输入”', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:10:48', '2016-12-09 16:10:48');
INSERT INTO `tp_rules` VALUES ('10057', '4', '如号段格式有误，点击提交提示：“手机号格式不正确，请重新输入”', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:11:15', '2016-12-09 16:11:15');
INSERT INTO `tp_rules` VALUES ('10058', '5', '如校验通过，提交后，弹窗提示提交成功，3s后自动返回原页面', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:12:57', '2016-12-09 16:12:57');
INSERT INTO `tp_rules` VALUES ('10059', '6', '提交成功后台记录提交者信息（重复提交，如何处理）', '需求文档 ', '10423', '待确认', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:13:30', '2016-12-09 16:13:30');
INSERT INTO `tp_rules` VALUES ('10060', '1', ' 后台统计分享后浏览名片的次数及报名成功的人数', '需求文档 ', '10424', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:13:47', '2016-12-09 16:13:47');
INSERT INTO `tp_rules` VALUES ('10061', '2', ' 点击-分享名片【计数】', '需求文档 ', '10424', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:15:31', '2016-12-09 16:15:31');
INSERT INTO `tp_rules` VALUES ('10062', '3', ' 点击-分享名片-报名提交【计数】', '需求文档 ', '10424', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:15:55', '2016-12-09 16:15:55');

-- ----------------------------
-- Table structure for `tp_scene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scene`;
CREATE TABLE `tp_scene` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10037 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------
INSERT INTO `tp_scene` VALUES ('10000', '1', 'A', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '0', '腰立辉', '腰立辉', '2016-10-28 15:52:35', '2016-09-27 16:25:28');
INSERT INTO `tp_scene` VALUES ('10001', '2', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:02', '2016-09-24 00:40:02');
INSERT INTO `tp_scene` VALUES ('10002', '3', 'M', '2', '默认', '无被测系统时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑-建系统-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:09', '2016-09-24 00:40:09');
INSERT INTO `tp_scene` VALUES ('10003', '1', 'M', '2', '默认', '空白数据库', '', '建立测试项目', '正常', '48', '登录-件产品-建项目--详情-里程碑-关联系统-', '0', '腰立辉', '腰立辉', '2016-09-24 21:23:31', '2016-09-24 21:23:31');
INSERT INTO `tp_scene` VALUES ('10004', '1', 'M', '2', '默认', '默认', '', '11', '正常', '24', '', '0', '腰立辉', '腰立辉', '2016-09-25 21:23:05', '2016-09-25 21:23:05');
INSERT INTO `tp_scene` VALUES ('10005', '4', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:39:18', '2016-09-25 21:38:12');
INSERT INTO `tp_scene` VALUES ('10006', '5', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:42:14', '2016-09-25 21:42:14');
INSERT INTO `tp_scene` VALUES ('10007', '6', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '10001', '腰立辉', null, '2016-09-25 21:46:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10008', '1', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '47', '登录-建项目-建里程碑', '10000', '腰立辉', null, '2016-09-25 21:53:23', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10027', '2', 'M', '2', '买顾', '客户已注册', '', '推送商家商家确认', '正常', '51', '', '0', '腰立辉', '腰立辉', '2016-10-25 17:08:33', '2016-10-25 17:08:33');
INSERT INTO `tp_scene` VALUES ('10010', '1', 'M', '2', '管理员', '默认', '', '添加TOP100车款', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:47:46', '2016-09-27 16:47:46');
INSERT INTO `tp_scene` VALUES ('10011', '2', 'M', '2', '管理员', '默认', '', '给TOP100车款批量配置电销和买顾', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:57:28', '2016-09-27 16:57:28');
INSERT INTO `tp_scene` VALUES ('10012', '3', 'M', '2', '默认', '默认', '', '【功能】车型及报价员配置管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:32:31', '2016-10-10 13:32:31');
INSERT INTO `tp_scene` VALUES ('10013', '4', 'M', '2', '默认', '默认', '', '【功能】价格收集管理（业务管理）', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:14', '2016-10-10 13:33:14');
INSERT INTO `tp_scene` VALUES ('10014', '5', 'M', '2', '默认', '默认', '', '【功能】车型价格库', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:49', '2016-10-10 13:33:49');
INSERT INTO `tp_scene` VALUES ('10015', '6', 'M', '2', '默认', '默认', '', '【功能】价格库存管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:32', '2016-10-10 13:34:32');
INSERT INTO `tp_scene` VALUES ('10016', '7', 'M', '2', '默认', '默认', '', '【功能】库存价格收集', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:51', '2016-10-10 13:34:51');
INSERT INTO `tp_scene` VALUES ('10017', '8', 'M', '2', '【功能】', '默认', '', '登陆模块', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:56:38', '2016-10-13 09:56:38');
INSERT INTO `tp_scene` VALUES ('10018', '9', 'M', '2', '【功能】', '默认', '', '产品库-产品管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:06', '2016-10-13 09:57:06');
INSERT INTO `tp_scene` VALUES ('10019', '10', 'M', '2', '【功能】', '默认', '', '项目管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:21', '2016-10-13 09:57:21');
INSERT INTO `tp_scene` VALUES ('10021', '11', 'M', '2', '【功能】', '默认', '', '项目-里程碑', '正常', '45', '里程碑下所有子功能', '0', '腰立辉', '腰立辉', '2016-10-17 09:40:20', '2016-10-17 09:40:20');
INSERT INTO `tp_scene` VALUES ('10026', '1', 'M', '2', '买顾', '客户未注册', '', '推送商家', '正常', '51', '', '0', '腰立辉', '腰立辉', '2016-10-25 17:08:03', '2016-10-25 17:08:03');
INSERT INTO `tp_scene` VALUES ('10028', '3', 'M', '2', '买顾', '客户已注册', '', '推送商家商家取消交易', '正常', '51', '', '10027', '腰立辉', '腰立辉', '2016-10-25 17:24:30', '2016-10-25 17:24:30');
INSERT INTO `tp_scene` VALUES ('10029', '4', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', '51', '', '10027', '腰立辉', '腰立辉', '2016-10-26 10:01:56', '2016-10-26 10:01:56');
INSERT INTO `tp_scene` VALUES ('10030', '5', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', '51', '', '10028', '腰立辉', '腰立辉', '2016-10-26 10:02:20', '2016-10-26 10:02:20');
INSERT INTO `tp_scene` VALUES ('10031', '1', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', '80', '', '10029', '腰立辉', '腰立辉', '2016-11-02 09:38:51', '2016-11-02 09:39:11');
INSERT INTO `tp_scene` VALUES ('10032', '2', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', '80', '', '10030', '腰立辉', '腰立辉', '2016-11-02 09:38:56', '2016-11-02 09:39:16');
INSERT INTO `tp_scene` VALUES ('10033', '1', 'M', '3', '关注用户', '默认', '', '在公众订阅号，直接打开并提交报名', '正常', '107', '微信号个人中心->公司名片->提交报名', '0', '腰立辉', '腰立辉', '2016-12-07 15:10:43', '2016-12-09 14:18:29');
INSERT INTO `tp_scene` VALUES ('10034', '2', 'M', '2', '专属管家', '未开启个人名片时', null, '分享公司名片', '正常', '107', '', '0', '腰立辉', '腰立辉', '2016-12-09 14:26:06', '2016-12-09 14:26:06');
INSERT INTO `tp_scene` VALUES ('10035', '3', 'M', '2', '专属管家', '开启个人名片', null, '分享公司名片-分享个人名片', '正常', '107', '', '10034', '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:29:00');
INSERT INTO `tp_scene` VALUES ('10036', '4', 'M', '2', '关注用户', '在管家分享后', null, '管家名片填写报名信息', '正常', '107', '', '0', '腰立辉', '腰立辉', '2016-12-09 14:32:55', '2016-12-09 14:32:55');

-- ----------------------------
-- Table structure for `tp_scenefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenefunc`;
CREATE TABLE `tp_scenefunc` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenefunc
-- ----------------------------
INSERT INTO `tp_scenefunc` VALUES ('10038', '3', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10039', '4', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10036', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:55:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10033', '3', '10003', 'Auto.Access', '产品库', '产品-添加', '10000', null, '0', '10003', '已绑定', '正常添加测试产品', '添加成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:09', '2016-10-14 17:02:09');
INSERT INTO `tp_scenefunc` VALUES ('10031', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10000', '1231', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-28 16:10:57', '2016-10-28 16:10:57');
INSERT INTO `tp_scenefunc` VALUES ('10032', '4', '10002', 'Auto.Access', '产品库', '产品列表', '10000', '', '0', '10102', '已绑定', '查看产品列表', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:43', '2016-10-14 17:02:43');
INSERT INTO `tp_scenefunc` VALUES ('10037', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:04', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10034', '4', '10001', 'Auto.Access', '登陆模块', '注销', '10000', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:19', '2016-10-14 17:02:19');
INSERT INTO `tp_scenefunc` VALUES ('10040', '5', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:22', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10041', '6', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10042', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10043', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10044', '6', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:02', '2016-09-27 17:03:02');
INSERT INTO `tp_scenefunc` VALUES ('10045', '7', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:08', '2016-09-27 17:03:08');
INSERT INTO `tp_scenefunc` VALUES ('10046', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:44', '2016-09-27 17:02:44');
INSERT INTO `tp_scenefunc` VALUES ('10047', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:50', '2016-09-27 17:02:50');
INSERT INTO `tp_scenefunc` VALUES ('10048', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:54', '2016-09-27 17:02:54');
INSERT INTO `tp_scenefunc` VALUES ('10049', '1', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10050', '2', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:43', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10051', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:45', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10052', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10053', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10054', '6', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:56', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10055', '7', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10056', '8', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10057', '9', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10058', '10', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:11', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10059', '11', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10060', '1', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10061', '2', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10062', '3', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10063', '4', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:40', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10064', '5', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:42', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10065', '6', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10066', '7', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10067', '8', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10068', '9', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10069', '1', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10070', '2', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:20', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10071', '3', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10072', '4', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10073', '5', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:29', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10074', '6', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10075', '1', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10076', '2', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10077', '3', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10078', '4', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10079', '5', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:08', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10080', '6', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:10', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10081', '7', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10082', '8', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10083', '9', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10084', '10', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10085', '11', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:30', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10086', '12', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10087', '1', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10088', '2', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10089', '3', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10090', '4', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10091', '5', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10092', '6', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10093', '7', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:39:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10094', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10017', '123', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:58:31', '2016-10-14 16:58:31');
INSERT INTO `tp_scenefunc` VALUES ('10095', '2', '10001', 'Auto.Access', '登陆模块', '注销', '10017', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:59:00', '2016-10-14 16:59:00');
INSERT INTO `tp_scenefunc` VALUES ('10096', '3', '10005', 'Auto.Access', '登陆模块', '改密', '10017', null, '0', '10101', '已绑定', '正常修改密码', '修改成功1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:00:29', '2016-10-14 17:00:29');
INSERT INTO `tp_scenefunc` VALUES ('10097', '1', '10002', 'Auto.Access', '产品库', '产品列表', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10098', '2', '10003', 'Auto.Access', '产品库', '产品-添加', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:41', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10099', '3', '10004', 'Auto.Access', '产品库', '产品-编辑', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10100', '4', '10006', 'Auto.Access', '产品库', '系统-入口', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10101', '1', '10010', 'Auto.Access', '测试项目', '分组项目列表', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:58', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10102', '2', '10011', 'Auto.Access', '测试项目', '切换分组', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:01', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10103', '3', '10007', 'Auto.Access', '测试项目', '项目-添加', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10104', '4', '10008', 'Auto.Access', '测试项目', '项目-编辑', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:05', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10105', '5', '10009', 'Auto.Access', '测试项目', '项目-详情', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:07', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10106', '6', '10012', 'Auto.Access', '测试项目', '快速标记状态', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10107', '7', '10013', 'Auto.Access', '测试项目', '项目-里程碑入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10108', '8', '10014', 'Auto.Access', '测试项目', '项目-风险入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:17', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10109', '9', '10015', 'Auto.Access', '测试项目', '项目-系统入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:19', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10110', '10', '10016', 'Auto.Access', '测试项目', '项目-功能点入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10111', '11', '10017', 'Auto.Access', '测试项目', '项目-范围入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10112', '12', '10018', 'Auto.Access', '测试项目', '项目-场景入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10113', '13', '10019', 'Auto.Access', '测试项目', '项目-控件库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10114', '14', '10020', 'Auto.Access', '测试项目', '项目-用例库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10116', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10008', null, '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 16:27:08', '2016-10-17 16:27:08');
INSERT INTO `tp_scenefunc` VALUES ('10117', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10006', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-14 14:51:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10118', '1', '10022', 'Auto.Access', '项目-里程碑', '里程碑列表', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10119', '2', '10023', 'Auto.Access', '项目-里程碑', '切换项目', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10120', '3', '10024', 'Auto.Access', '项目-里程碑', '里程碑-添加', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10121', '4', '10025', 'Auto.Access', '项目-里程碑', '里程碑-修改', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:19', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10122', '5', '10027', 'Auto.Access', '项目-里程碑', '快速标记状态', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10123', '6', '10198', 'Auto.Access', '项目-里程碑', 'M人员-入口（手工）', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10124', '7', '10026', 'Auto.Access', '项目-里程碑', 'A人员-入口（自动化）', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10125', '2', '10007', 'Auto.Access', 'Access客户端-测试项目', '项目-添加', '10008', null, '0', '10103', '已绑定', '正常添加项目', '添加成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 16:28:15', '2016-10-17 16:28:15');
INSERT INTO `tp_scenefunc` VALUES ('10147', '2', '10277', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:05', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10146', '1', '10273', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10148', '3', '10289', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10149', '4', '10292', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10150', '5', '10328', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:41', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10151', null, '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10152', null, '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10153', null, '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10154', null, '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10155', null, '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10156', '6', '10335', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10157', '7', '10336', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10158', '8', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:40', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10159', '9', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10160', '10', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:15', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10161', '11', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:25', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10162', '12', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:53', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10163', '13', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10166', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:35', '2016-10-26 10:05:35');
INSERT INTO `tp_scenefunc` VALUES ('10167', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:43', '2016-10-26 10:05:43');
INSERT INTO `tp_scenefunc` VALUES ('10168', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:47', '2016-10-26 10:05:47');
INSERT INTO `tp_scenefunc` VALUES ('10171', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:53', '2016-10-26 10:05:53');
INSERT INTO `tp_scenefunc` VALUES ('10172', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:57', '2016-10-26 10:05:57');
INSERT INTO `tp_scenefunc` VALUES ('10173', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:02', '2016-10-26 10:06:02');
INSERT INTO `tp_scenefunc` VALUES ('10177', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:07', '2016-10-26 10:06:07');
INSERT INTO `tp_scenefunc` VALUES ('10175', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:13', '2016-10-26 10:06:13');
INSERT INTO `tp_scenefunc` VALUES ('10176', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:18', '2016-10-26 10:06:18');
INSERT INTO `tp_scenefunc` VALUES ('10180', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:15', '2016-10-26 10:07:15');
INSERT INTO `tp_scenefunc` VALUES ('10181', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:10', '2016-10-26 10:07:10');
INSERT INTO `tp_scenefunc` VALUES ('10182', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:06', '2016-10-26 10:07:06');
INSERT INTO `tp_scenefunc` VALUES ('10185', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:21', '2016-10-26 10:07:21');
INSERT INTO `tp_scenefunc` VALUES ('10186', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:25', '2016-10-26 10:07:25');
INSERT INTO `tp_scenefunc` VALUES ('10187', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:30', '2016-10-26 10:07:30');
INSERT INTO `tp_scenefunc` VALUES ('10188', '7', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:35', '2016-10-26 10:07:35');
INSERT INTO `tp_scenefunc` VALUES ('10189', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:39', '2016-10-26 10:07:39');
INSERT INTO `tp_scenefunc` VALUES ('10190', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:45', '2016-10-26 10:07:45');
INSERT INTO `tp_scenefunc` VALUES ('10193', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:46', '2016-10-26 10:08:46');
INSERT INTO `tp_scenefunc` VALUES ('10194', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:42', '2016-10-26 10:08:42');
INSERT INTO `tp_scenefunc` VALUES ('10195', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:38', '2016-10-26 10:08:38');
INSERT INTO `tp_scenefunc` VALUES ('10198', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:54', '2016-10-26 10:08:54');
INSERT INTO `tp_scenefunc` VALUES ('10199', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:59', '2016-10-26 10:08:59');
INSERT INTO `tp_scenefunc` VALUES ('10200', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:06', '2016-10-26 10:09:06');
INSERT INTO `tp_scenefunc` VALUES ('10201', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:11', '2016-10-26 10:09:11');
INSERT INTO `tp_scenefunc` VALUES ('10202', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:16', '2016-10-26 10:09:16');
INSERT INTO `tp_scenefunc` VALUES ('10203', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:21', '2016-10-26 10:09:21');
INSERT INTO `tp_scenefunc` VALUES ('10204', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10205', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10206', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10207', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10208', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10209', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10210', '7', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10211', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10212', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10213', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10214', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10215', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10216', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10217', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10218', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10219', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10220', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10221', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10222', '1', '10425', 'wzb', '微站后台- 内容发布-移民管家', ' 管家新增', '0', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-07 18:13:36');
INSERT INTO `tp_scenefunc` VALUES ('10230', '3', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:31');
INSERT INTO `tp_scenefunc` VALUES ('10229', '2', '10420', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:21');
INSERT INTO `tp_scenefunc` VALUES ('10228', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:19');
INSERT INTO `tp_scenefunc` VALUES ('10231', '4', '10423', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 报名', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:36');
INSERT INTO `tp_scenefunc` VALUES ('10232', '5', '10424', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:42');
INSERT INTO `tp_scenefunc` VALUES ('10233', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:27:06');
INSERT INTO `tp_scenefunc` VALUES ('10234', '2', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:27:09');
INSERT INTO `tp_scenefunc` VALUES ('10235', '3', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:27:13');
INSERT INTO `tp_scenefunc` VALUES ('10236', '3', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10237', '4', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10238', '5', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10239', '1', '10426', 'wzb', '微站后台- 内容发布-移民管家', ' 管家编辑', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10240', '2', '10429', 'wzb', '微站后台- 内容发布-移民管家', ' 管家详情', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10241', '1', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:33:27');
INSERT INTO `tp_scenefunc` VALUES ('10242', '4', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10243', '3', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10244', '2', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10245', '5', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10246', '6', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');

-- ----------------------------
-- Table structure for `tp_stage`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stage`;
CREATE TABLE `tp_stage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `state` varchar(5) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1061 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stage
-- ----------------------------
INSERT INTO `tp_stage` VALUES ('1000', '1', '功能验证', '24', '2016-09-26', '2016-09-27', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:00', '2016-11-17 17:01:14');
INSERT INTO `tp_stage` VALUES ('1001', '2', '第一轮测试', '24', '2016-09-27', '2016-09-28', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:15', '2016-09-22 16:45:15');
INSERT INTO `tp_stage` VALUES ('1002', '3', '第二轮测试', '24', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:29', '2016-09-22 16:45:29');
INSERT INTO `tp_stage` VALUES ('1003', '1', '功能验证', '45', '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 15:38:30', '2016-11-14 15:10:37');
INSERT INTO `tp_stage` VALUES ('1004', '2', '第一轮测试', '45', '2016-11-04', '2016-11-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:17:33', '2016-11-14 15:09:30');
INSERT INTO `tp_stage` VALUES ('1005', '3', '第二轮测试', '45', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:49:43', '2016-09-22 16:49:43');
INSERT INTO `tp_stage` VALUES ('1006', '1', '编写测试计划', '47', '2016-09-24', '2016-09-25', '进行中', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:00', '2016-11-04 10:07:48');
INSERT INTO `tp_stage` VALUES ('1007', '2', '编写测试用例', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:05', '2016-09-24 14:50:05');
INSERT INTO `tp_stage` VALUES ('1008', '3', '功能验证', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:08', '2016-09-24 14:50:08');
INSERT INTO `tp_stage` VALUES ('1009', '4', '第一轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:12', '2016-09-24 14:50:12');
INSERT INTO `tp_stage` VALUES ('1010', '5', '第二轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:19', '2016-09-24 14:50:19');
INSERT INTO `tp_stage` VALUES ('1011', '1', '编写测试计划', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:20', '2016-09-24 20:44:20');
INSERT INTO `tp_stage` VALUES ('1012', '2', '编写测试用例', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:27', '2016-09-24 20:44:27');
INSERT INTO `tp_stage` VALUES ('1013', '3', '第一轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:35', '2016-09-24 20:44:35');
INSERT INTO `tp_stage` VALUES ('1014', '4', '第二轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:38', '2016-09-24 20:44:38');
INSERT INTO `tp_stage` VALUES ('1015', '1', '编写测试计划', '46', '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-09-28 15:47:40', '2016-09-28 15:47:40');
INSERT INTO `tp_stage` VALUES ('1016', '2', '编写测试用例', '46', '2016-09-26', '2016-10-09', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-10 13:28:07', '2016-10-10 13:28:07');
INSERT INTO `tp_stage` VALUES ('1017', '3', '功能验证', '46', '2016-10-11', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:18:01', '2016-09-28 15:48:17');
INSERT INTO `tp_stage` VALUES ('1018', '4', '第一轮测试', '46', '2016-10-11', '2016-10-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:18:05', '2016-09-28 15:48:36');
INSERT INTO `tp_stage` VALUES ('1019', '1', '第一轮测试', '54', '2016-09-23', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:13:25', '2016-10-20 10:13:25');
INSERT INTO `tp_stage` VALUES ('1020', '2', '第二轮测试', '54', '2016-10-09', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:12:39', '2016-10-20 10:12:39');
INSERT INTO `tp_stage` VALUES ('1021', '3', '第三轮测试', '54', '2016-10-15', '2016-10-18', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:13:15', '2016-10-20 10:13:15');
INSERT INTO `tp_stage` VALUES ('1022', '1', '第一轮测试', '59', '2016-10-10', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:47:57', '2016-10-20 10:47:52');
INSERT INTO `tp_stage` VALUES ('1023', '1', '编写测试计划', '50', '2016-10-20', '2016-10-21', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:17:03', '2016-10-20 14:59:52');
INSERT INTO `tp_stage` VALUES ('1024', '2', '编写测试用例', '50', '2016-10-20', '2016-11-02', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:07', '2016-10-20 15:00:07');
INSERT INTO `tp_stage` VALUES ('1025', '3', '功能验证', '50', '2016-11-02', '2016-11-03', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:18', '2016-10-20 15:00:18');
INSERT INTO `tp_stage` VALUES ('1026', '4', '第一轮测试', '50', '2016-11-03', '2016-11-04', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:28', '2016-10-20 15:00:28');
INSERT INTO `tp_stage` VALUES ('1027', '5', '第二轮测试', '50', '2016-11-04', '2016-11-05', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:43', '2016-10-20 15:00:43');
INSERT INTO `tp_stage` VALUES ('1028', '6', '线上验证测试', '50', '2016-11-05', '2016-11-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:01:01', '2016-10-20 15:01:01');
INSERT INTO `tp_stage` VALUES ('1029', '1', '编写测试计划', '51', '2016-10-21', '2016-10-22', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-21 11:32:27', '2016-10-21 11:32:27');
INSERT INTO `tp_stage` VALUES ('1030', '2', '编写测试用例', '51', '2016-10-21', '2016-10-25', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-25 17:03:06', '2016-10-21 11:32:46');
INSERT INTO `tp_stage` VALUES ('1031', '3', '功能验证', '51', '2016-10-24', '2016-10-24', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-25 17:26:01', '2016-10-21 11:33:11');
INSERT INTO `tp_stage` VALUES ('1032', '4', '第一轮测试', '51', '2016-10-24', '2016-10-25', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:00', '2016-10-21 11:33:24');
INSERT INTO `tp_stage` VALUES ('1033', '5', '第二轮测试', '51', '2016-10-25', '2016-10-26', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:07', '2016-10-21 11:33:37');
INSERT INTO `tp_stage` VALUES ('1034', '6', '线上验证测试', '51', '2016-10-27', '2016-10-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:10', '2016-10-21 11:33:48');
INSERT INTO `tp_stage` VALUES ('1035', '1', '功能验证', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:37:06', '2016-11-02 09:45:51');
INSERT INTO `tp_stage` VALUES ('1036', '3', '线上验证测试', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:37:19', '2016-11-02 09:55:14');
INSERT INTO `tp_stage` VALUES ('1037', '2', '第一轮测试', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:45:45', '2016-11-04 09:50:09');
INSERT INTO `tp_stage` VALUES ('1038', '1', '第一轮测试', '89', '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-03 16:43:50', '2016-11-03 16:43:50');
INSERT INTO `tp_stage` VALUES ('1039', '1', '第一轮测试', '92', '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:33:29', '2016-11-09 09:33:29');
INSERT INTO `tp_stage` VALUES ('1040', '2', '第二轮测试', '92', '2016-11-04', '2016-11-07', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:33:42', '2016-11-09 09:33:42');
INSERT INTO `tp_stage` VALUES ('1041', '3', '第三轮测试', '92', '2016-11-08', '2016-11-08', '已上线', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:34:01', '2016-11-09 09:34:01');
INSERT INTO `tp_stage` VALUES ('1042', '1', '第一轮测试', '97', '2016-11-07', '2016-11-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 10:42:09', '2016-11-09 10:42:09');
INSERT INTO `tp_stage` VALUES ('1043', '1', '第一轮测试', '83', '2016-10-28', '2016-11-02', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:57:32', '2016-11-10 13:57:32');
INSERT INTO `tp_stage` VALUES ('1044', '2', '第二轮测试', '83', '2016-11-03', '2016-11-04', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:57:53', '2016-11-10 13:57:53');
INSERT INTO `tp_stage` VALUES ('1045', '3', '第三轮测试', '83', '2016-11-07', '2016-11-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:58:11', '2016-11-10 13:58:11');
INSERT INTO `tp_stage` VALUES ('1046', '1', '第一轮测试', '104', '2016-11-08', '2016-11-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-15 09:50:50', '2016-11-15 09:50:50');
INSERT INTO `tp_stage` VALUES ('1047', '1', '第一轮测试', '96', '2016-11-15', '2016-11-16', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-15 16:31:42', '2016-11-15 16:31:42');
INSERT INTO `tp_stage` VALUES ('1048', '1', '编写测试计划', '107', '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:24', '2016-12-07 17:41:54');
INSERT INTO `tp_stage` VALUES ('1049', '2', '编写测试用例', '107', '2016-12-05', '2016-12-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:40', '2016-12-08 14:46:32');
INSERT INTO `tp_stage` VALUES ('1050', '3', '功能验证', '107', '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:50', '2016-12-12 12:03:26');
INSERT INTO `tp_stage` VALUES ('1051', '4', '第一轮测试', '107', '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:57', '2016-12-14 11:34:33');
INSERT INTO `tp_stage` VALUES ('1052', '5', '第二轮测试', '107', '2016-12-05', '2016-12-06', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:04', '2016-12-14 11:34:41');
INSERT INTO `tp_stage` VALUES ('1053', '6', '第三轮测试', '107', '2016-12-05', '2016-12-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:10', '2016-12-05 17:29:10');
INSERT INTO `tp_stage` VALUES ('1054', '7', '第四轮测试', '107', '2016-12-05', '2016-12-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:17', '2016-12-05 17:29:17');
INSERT INTO `tp_stage` VALUES ('1055', '9', '线上验证测试', '107', '2016-12-15', '2016-12-15', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:23', '2016-12-07 17:41:30');
INSERT INTO `tp_stage` VALUES ('1056', '1', '平台搭建，可以初步管理测试项目', '108', '2016-12-05', '2016-12-16', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:43:17', '2016-12-05 17:44:07');
INSERT INTO `tp_stage` VALUES ('1057', '2', '平台优化，按照公司的流程对平台进行调整', '108', '2016-12-12', '2017-01-31', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:43:23', '2016-12-05 17:44:57');
INSERT INTO `tp_stage` VALUES ('1058', '1', '功能验证', '110', null, '2016-12-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-12 19:19:20', '2016-12-13 11:15:53');
INSERT INTO `tp_stage` VALUES ('1059', '2', '线上验证测试', '110', null, '2016-12-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-12 20:40:15', '2016-12-13 11:16:01');
INSERT INTO `tp_stage` VALUES ('1060', '3', '12-13线上验证测试', '110', null, '2016-12-13', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-13 11:16:32', '2016-12-13 11:41:53');

-- ----------------------------
-- Table structure for `tp_stagetester`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stagetester`;
CREATE TABLE `tp_stagetester` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'M',
  `stageid` smallint(6) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `plan` float DEFAULT NULL,
  `actual` float DEFAULT '0',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10055 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stagetester
-- ----------------------------
INSERT INTO `tp_stagetester` VALUES ('10031', '1', 'C', '1029', '腰立辉', '2016-10-21', '2016-10-22', '1', '0', '腰立辉', '腰立辉', '2016-10-21 11:34:14', '2016-10-21 11:34:14');
INSERT INTO `tp_stagetester` VALUES ('10032', '1', 'C', '1030', '腰立辉', '2016-10-21', '2016-10-24', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:34:40', '2016-10-21 11:34:40');
INSERT INTO `tp_stagetester` VALUES ('10033', '1', 'M', '1031', '腰立辉', '2016-10-24', '2016-10-24', '5', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:18', '2016-10-21 11:35:02');
INSERT INTO `tp_stagetester` VALUES ('10009', '1', 'M', '1011', '腰立辉', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:23', '2016-09-24 20:45:23');
INSERT INTO `tp_stagetester` VALUES ('10010', '1', 'M', '1013', '李小梅', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:46', '2016-09-24 20:45:46');
INSERT INTO `tp_stagetester` VALUES ('10011', '2', 'M', '1013', '曹玉芳', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:49', '2016-09-24 20:45:49');
INSERT INTO `tp_stagetester` VALUES ('10012', '1', 'M', '1000', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:38:02', '2016-09-25 13:38:02');
INSERT INTO `tp_stagetester` VALUES ('10030', '1', 'M', '1006', '腰立辉', '2016-10-17', '2016-10-18', '8', '0', '腰立辉', '腰立辉', '2016-10-17 15:59:29', '2016-10-17 15:59:29');
INSERT INTO `tp_stagetester` VALUES ('10029', '1', 'M', '1004', '腰立辉', '2016-11-04', '2016-11-08', '16', '0', '腰立辉', '腰立辉', '2016-10-17 10:24:06', '2016-11-04 09:17:51');
INSERT INTO `tp_stagetester` VALUES ('10015', '1', 'M', '1008', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:45:45', '2016-09-25 13:45:45');
INSERT INTO `tp_stagetester` VALUES ('10016', '1', 'M', '1003', '腰立辉', '2016-10-13', '2016-10-14', '8', '0', '腰立辉', '腰立辉', '2016-10-28 15:38:37', '2016-10-13 09:53:48');
INSERT INTO `tp_stagetester` VALUES ('10036', '1', 'M', '1034', '腰立辉', '2016-10-27', '2016-10-27', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:35', '2016-10-21 11:36:00');
INSERT INTO `tp_stagetester` VALUES ('10034', '1', 'M', '1032', '腰立辉', '2016-10-24', '2016-10-25', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:20', '2016-10-21 11:35:23');
INSERT INTO `tp_stagetester` VALUES ('10035', '1', 'M', '1033', '腰立辉', '2016-10-25', '2016-10-26', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:22', '2016-10-21 11:35:42');
INSERT INTO `tp_stagetester` VALUES ('10025', '1', 'M', '1015', '曹玉芳', '2016-09-28', '2016-09-29', '8', '0', '腰立辉', '腰立辉', '2016-09-28 15:48:49', '2016-09-28 15:48:49');
INSERT INTO `tp_stagetester` VALUES ('10026', '1', 'M', '1016', '腰立辉', '2016-09-26', '2016-10-09', '24', '0', '腰立辉', '腰立辉', '2016-09-28 15:49:25', '2016-09-28 15:49:25');
INSERT INTO `tp_stagetester` VALUES ('10027', '1', 'M', '1017', '曹玉芳', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:24', '2016-10-10 13:28:24');
INSERT INTO `tp_stagetester` VALUES ('10028', '2', 'M', '1017', '腰立辉', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:28', '2016-10-10 13:28:28');
INSERT INTO `tp_stagetester` VALUES ('10037', '1', 'M', '1035', '腰立辉', '2016-11-02', '2016-11-01', '2', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:37:52');
INSERT INTO `tp_stagetester` VALUES ('10038', '1', 'M', '1036', '腰立辉', '2016-11-01', '2016-11-01', '1', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:38:07');
INSERT INTO `tp_stagetester` VALUES ('10039', '1', 'M', '1037', '腰立辉', '2016-11-01', '2016-11-01', '1', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:53:32');
INSERT INTO `tp_stagetester` VALUES ('10040', '1', 'M', '1038', '田亮', '2016-11-02', '2016-11-03', '8', '0', '腰立辉', '腰立辉', null, '2016-11-03 16:44:18');
INSERT INTO `tp_stagetester` VALUES ('10041', '2', 'M', '1008', '曹玉芳', '2016-11-10', '2016-11-11', '8', '0', '腰立辉', '腰立辉', null, '2016-11-10 11:04:46');
INSERT INTO `tp_stagetester` VALUES ('10042', '1', 'M', '1048', '腰立辉', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:29:53');
INSERT INTO `tp_stagetester` VALUES ('10043', '1', 'C', '1049', '腰立辉', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:31:28');
INSERT INTO `tp_stagetester` VALUES ('10044', '2', 'C', '1049', '魏斌', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:31:30');
INSERT INTO `tp_stagetester` VALUES ('10045', '0', 'M', '1050', '腰立辉', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-08 15:11:57');
INSERT INTO `tp_stagetester` VALUES ('10046', '2', 'M', '1050', '魏斌', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:32:11');
INSERT INTO `tp_stagetester` VALUES ('10047', '1', 'M', '1056', '腰立辉', '2016-12-05', '2016-12-15', '40', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:55:45');
INSERT INTO `tp_stagetester` VALUES ('10048', '1', 'M', '1051', '腰立辉', '2016-12-09', '2016-12-10', '8', '0', '魏斌', '魏斌', null, '2016-12-09 11:49:42');
INSERT INTO `tp_stagetester` VALUES ('10049', '2', 'M', '1051', '魏斌', '2016-12-09', '2016-12-10', '8', '0', '魏斌', '魏斌', null, '2016-12-09 11:49:51');
INSERT INTO `tp_stagetester` VALUES ('10050', '1', 'M', '1049', '腰立辉', '2016-12-12', '2016-12-13', '8', '0', '腰立辉', '腰立辉', null, '2016-12-12 17:52:51');
INSERT INTO `tp_stagetester` VALUES ('10051', '1', 'M', '1058', '腰立辉', '2016-12-12', '2016-12-13', '8', '0', '腰立辉', '腰立辉', null, '2016-12-12 19:18:42');
INSERT INTO `tp_stagetester` VALUES ('10052', '1', 'M', '1059', '腰立辉', '2016-12-12', '2016-12-13', '8', '0', '腰立辉', '腰立辉', null, '2016-12-12 20:39:32');
INSERT INTO `tp_stagetester` VALUES ('10053', '1', 'M', '1060', '腰立辉', '2016-12-13', '2016-12-14', '8', '0', '腰立辉', '腰立辉', null, '2016-12-13 11:16:20');
INSERT INTO `tp_stagetester` VALUES ('10054', '1', 'M', '1052', '腰立辉', '2016-12-14', '2016-12-15', '8', '0', '腰立辉', '腰立辉', null, '2016-12-14 11:35:01');

-- ----------------------------
-- Table structure for `tp_system`
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sysno` varchar(30) DEFAULT '',
  `system` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `useversion` varchar(50) DEFAULT NULL,
  `testversion` varchar(50) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `testuser` varchar(50) DEFAULT NULL,
  `testpass` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('3', 'APP.HMC', '惠买车APP', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-21 10:17:05', '2016-09-21 10:17:05');
INSERT INTO `tp_system` VALUES ('4', 'AutoB', '测试管理平台（后台）', '正常', '2', '', 'V1.10', '192.168.43.61：easypass', '121', '123456', '腰立辉', '腰立辉', '2016-10-21 10:29:12', '2016-12-05 17:47:25');
INSERT INTO `tp_system` VALUES ('6', 'dealer.huimaiche.com', '惠买车商家版', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-10-28 11:46:57', '2016-10-28 11:46:57');
INSERT INTO `tp_system` VALUES ('68', 'AutoQ', '测试管理平台（前台）', '正常', '2', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 17:42:48', '2016-12-05 17:47:14');
INSERT INTO `tp_system` VALUES ('60', 'sda', 'asdas', '正常', null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-17 17:27:52', '2016-11-17 17:26:59');
INSERT INTO `tp_system` VALUES ('10', 'OP.Counselor', '买车顾问管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:53', '2016-09-21 10:14:53');
INSERT INTO `tp_system` VALUES ('11', 'OP.HmcDSCRM', '惠买车电商CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-26 11:28:46', '2016-09-26 11:28:46');
INSERT INTO `tp_system` VALUES ('12', 'OP.DealerCRM', '惠买车商家运营系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:15', '2016-09-21 10:15:15');
INSERT INTO `tp_system` VALUES ('13', 'OP.DealerOP', '经销商信息管理', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:26', '2016-09-21 10:15:26');
INSERT INTO `tp_system` VALUES ('14', 'OP.Deposit', '商家订金管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:35', '2016-09-21 10:15:35');
INSERT INTO `tp_system` VALUES ('15', 'OP.Gift', '买车网礼品管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:41', '2016-09-21 10:15:41');
INSERT INTO `tp_system` VALUES ('16', 'OP.Giftop', '惠买车礼品管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:54', '2016-09-21 10:15:54');
INSERT INTO `tp_system` VALUES ('17', 'OP.Groupon', '团购管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:48', '2016-09-21 10:15:48');
INSERT INTO `tp_system` VALUES ('18', 'OP.HMCcrm', '惠买车CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:04', '2016-09-21 10:16:04');
INSERT INTO `tp_system` VALUES ('19', 'OP.HmcCrmOp', '电商CRM后台管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:01', '2016-09-21 10:14:01');
INSERT INTO `tp_system` VALUES ('20', 'OP.Ipayment', '惠买车支付管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:14', '2016-09-21 10:16:14');
INSERT INTO `tp_system` VALUES ('21', 'OP.Security', 'OP权限系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:55', '2016-09-21 10:16:55');
INSERT INTO `tp_system` VALUES ('22', 'OP.User', '惠买车用户管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:22', '2016-09-21 10:16:22');
INSERT INTO `tp_system` VALUES ('23', 'Web.hmc', '惠买车', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-13 13:35:06', '2016-09-13 13:35:06');
INSERT INTO `tp_system` VALUES ('57', 'OP.maiche', '易车运营支持中心', '正常', '1', null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:15:00', '2016-09-27 17:15:00');
INSERT INTO `tp_system` VALUES ('62', 'wzug', '微网站(管家)', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:06:07', '2016-12-05 17:51:33');
INSERT INTO `tp_system` VALUES ('63', 'wzb', '微站CRM后台', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:08:21', '2016-12-14 11:37:33');
INSERT INTO `tp_system` VALUES ('64', 'glb', '权限管理后台', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:08:40', '2016-12-05 17:50:35');
INSERT INTO `tp_system` VALUES ('65', 'crm', 'CRM客户关系后台', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:09:33', '2016-12-05 16:09:33');
INSERT INTO `tp_system` VALUES ('66', 'wzu', '微网站（用户）', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:30:40', '2016-12-05 16:36:00');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(18) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `userno` int(5) DEFAULT NULL,
  `team` varchar(50) DEFAULT NULL,
  `usergp` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('11', 'yaolh', '腰立辉', '/Test/user/2016-12-06/', '58464bf1b7fb5.jpg', 'c33367701511b4f6020ec61ded352059', '在职', '6270', '', 'PJD', '18801043607', '', 'yao@yimin.la', '测试经理', '腰立辉', '腰立辉', '2016-09-22 16:54:21', '2016-12-06 13:26:09');
INSERT INTO `tp_user` VALUES ('31', 'weib', '魏斌', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', '0', '惠买车-产品研发中心-质量管理部', 'PJD', '', null, 'weib@yiche.com', '测试工程师', '腰立辉', '腰立辉', '2016-12-05 17:30:44', '2016-12-05 17:30:44');

-- ----------------------------
-- Table structure for `tp_xl_ad`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_ad`;
CREATE TABLE `tp_xl_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_ad
-- ----------------------------
INSERT INTO `tp_xl_ad` VALUES ('5', '第2张', '/Ad/2016-12-13/', '584fb4689084f.jpg', '阿斯达', '', '正常', '梁小伟', '2016-12-13 16:44:04');
INSERT INTO `tp_xl_ad` VALUES ('6', '第1张', '/Ad/2016-12-13/', '584fb48ec1380.jpg', '水电费', '', '发布', '梁小伟', '2016-12-13 16:43:53');
INSERT INTO `tp_xl_ad` VALUES ('7', '第3张', '/Ad/2016-12-13/', '584fb428f34cc.jpg', '', '', '发布', '腰立辉', '2016-12-13 16:41:13');
INSERT INTO `tp_xl_ad` VALUES ('8', '第4张', '/Ad/2016-11-27/', '583afafcaaa26.jpg', '', '', '发布', '腰立辉', '2016-11-27 23:25:49');
INSERT INTO `tp_xl_ad` VALUES ('9', '第5张', '/Ad/2016-11-27/', '583afb176905b.jpg', '', '', '正常', '腰立辉', '2016-11-27 23:26:15');

-- ----------------------------
-- Table structure for `tp_xl_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_admin`;
CREATE TABLE `tp_xl_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `tech` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_admin
-- ----------------------------
INSERT INTO `tp_xl_admin` VALUES ('1', 'yaolh', '腰立辉', 'c33367701511b4f6020ec61ded352059', '/Admin/user/image/2016-11-05/', '581de638ca86c.jpg', '18801043607', '在职', null, '腰立辉', '腰立辉', null, '2016-11-06 18:01:08');
INSERT INTO `tp_xl_admin` VALUES ('2', 'liangxw', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', null, null, '13426179579', '在职', null, '腰立辉', '腰立辉', '2016', '2016-11-12 16:09:56');

-- ----------------------------
-- Table structure for `tp_xl_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_customer`;
CREATE TABLE `tp_xl_customer` (
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
-- Records of tp_xl_customer
-- ----------------------------
INSERT INTO `tp_xl_customer` VALUES ('1', '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', '1', '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '1478415695', '2016-12-13 17:21:44');
INSERT INTO `tp_xl_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '', '', '腰立辉', '腰立辉', '1479042931', '2016-11-13 21:17:14');
INSERT INTO `tp_xl_customer` VALUES ('13', '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '中学课程', '刘一玮（男、44中）', null, null, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '1479302465', '2016-12-13 17:28:34');
INSERT INTO `tp_xl_customer` VALUES ('14', '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '1481619189', '2016-12-13 17:37:07');

-- ----------------------------
-- Table structure for `tp_xl_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_dict`;
CREATE TABLE `tp_xl_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `state` varchar(5) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_dict
-- ----------------------------
INSERT INTO `tp_xl_dict` VALUES ('1', '1', '正常', 'state', '正常', null, '腰立辉', '腰立辉', '2016-10-27 15:54:22', '2016-10-30 17:51:36');
INSERT INTO `tp_xl_dict` VALUES ('2', '3', '作废', 'state', '正常', null, '腰立辉', '腰立辉', '2016-10-27 15:54:17', '2016-10-27 17:16:57');
INSERT INTO `tp_xl_dict` VALUES ('5', '2', '发布', 'state', '正常', null, '腰立辉', '腰立辉', '2016-10-27 17:16:20', '2016-10-30 17:51:11');
INSERT INTO `tp_xl_dict` VALUES ('16', '4', '设置', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:43:49', '2016-11-06 11:53:27');
INSERT INTO `tp_xl_dict` VALUES ('15', '3', '师资', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:43:40', '2016-11-06 11:53:15');
INSERT INTO `tp_xl_dict` VALUES ('14', '2', '课程', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:43:25', '2016-11-06 11:46:52');
INSERT INTO `tp_xl_dict` VALUES ('13', '1', '首页', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:42:56', '2016-11-06 11:46:25');
INSERT INTO `tp_xl_dict` VALUES ('17', '1', '首页', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:54:40', '2016-11-06 11:54:40');
INSERT INTO `tp_xl_dict` VALUES ('18', '2', '课程导航', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:54:57', '2016-11-06 11:55:18');
INSERT INTO `tp_xl_dict` VALUES ('19', '3', '师资力量', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:55:41', '2016-11-06 11:55:41');
INSERT INTO `tp_xl_dict` VALUES ('20', '4', '关于我们', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:55:53', '2016-11-06 11:55:53');
INSERT INTO `tp_xl_dict` VALUES ('21', '1', '老师', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 13:22:33', '2016-11-06 13:22:33');
INSERT INTO `tp_xl_dict` VALUES ('22', '2', '助教', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 13:22:50', '2016-11-06 13:22:50');
INSERT INTO `tp_xl_dict` VALUES ('23', '3', '学生', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 13:22:58', '2016-11-06 13:22:58');
INSERT INTO `tp_xl_dict` VALUES ('24', '1', '学前少儿', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:20:45', '2016-11-06 16:17:22');
INSERT INTO `tp_xl_dict` VALUES ('25', '2', '小学课程', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:22:34', '2016-11-06 16:17:46');
INSERT INTO `tp_xl_dict` VALUES ('26', '3', '中学课程', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:22:49', '2016-11-06 16:17:57');
INSERT INTO `tp_xl_dict` VALUES ('27', '4', '作业托管', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:23:00', '2016-11-06 16:18:12');
INSERT INTO `tp_xl_dict` VALUES ('28', '5', '兴趣拓展', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:23:09', '2016-11-06 16:18:26');
INSERT INTO `tp_xl_dict` VALUES ('37', '1', '08:00-10:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:30:52', '2016-11-16 23:31:58');
INSERT INTO `tp_xl_dict` VALUES ('38', '2', '10:10-12:10', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:31:16', '2016-11-16 23:30:53');
INSERT INTO `tp_xl_dict` VALUES ('39', '3', '13:30-15:30', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:31:31', '2016-11-16 23:31:09');
INSERT INTO `tp_xl_dict` VALUES ('40', '4', '15:40-17:40', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:32:36', '2016-11-16 23:31:24');
INSERT INTO `tp_xl_dict` VALUES ('41', '1', '在职', 'adminst', '正常', '', '腰立辉', '腰立辉', '2016-11-12 16:03:08', '2016-11-12 16:03:08');
INSERT INTO `tp_xl_dict` VALUES ('42', '2', '离职', 'adminst', '正常', '', '腰立辉', '腰立辉', '2016-11-12 16:03:34', '2016-11-12 16:03:34');
INSERT INTO `tp_xl_dict` VALUES ('43', '5', '18:00-20:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-16 23:31:45', '2016-11-16 23:31:45');

-- ----------------------------
-- Table structure for `tp_xl_hr`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_hr`;
CREATE TABLE `tp_xl_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT '发布',
  `desc` text,
  `salary` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_hr
-- ----------------------------
INSERT INTO `tp_xl_hr` VALUES ('3', '公司CEO', '发布', '\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-11-06 10:04:55');
INSERT INTO `tp_xl_hr` VALUES ('4', '首席财务官', '作废', '<p>\r\n	融入融入人</p>\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-10-29 20:12:52');

-- ----------------------------
-- Table structure for `tp_xl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_menu`;
CREATE TABLE `tp_xl_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `list` varchar(5) DEFAULT NULL,
  `menu` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `namesp` varchar(15) DEFAULT NULL,
  `contr` varchar(50) DEFAULT NULL,
  `fubc` varchar(50) DEFAULT NULL,
  `argum1` varchar(15) DEFAULT NULL,
  `value1` varchar(15) DEFAULT NULL,
  `argum2` varchar(15) DEFAULT NULL,
  `value2` varchar(15) DEFAULT NULL,
  `argum3` varchar(15) DEFAULT NULL,
  `value3` varchar(15) DEFAULT NULL,
  `argum4` varchar(15) DEFAULT NULL,
  `value4` varchar(15) DEFAULT NULL,
  `argum5` varchar(15) DEFAULT NULL,
  `value5` varchar(15) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_xl_setting`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_setting`;
CREATE TABLE `tp_xl_setting` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(13) DEFAULT NULL,
  `qq` varchar(12) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `keywords` varchar(200) NOT NULL,
  `desc` text,
  `adress` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `hpath` varchar(200) DEFAULT NULL,
  `himg` varchar(48) DEFAULT NULL,
  `apath` varchar(200) DEFAULT NULL,
  `aimg` varchar(200) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_setting
-- ----------------------------
INSERT INTO `tp_xl_setting` VALUES ('1', '0311-89849355', '285981407', '石家庄-拓才教育', '拓才,拓才教育,一对一,个性化,课外辅导,教育培训，石家庄课外辅导', '1231231231231', '石家庄1', 'www.tuocaijiaoyu.com', '/Setting/home/2016-11-25/', '58380a991583d.jpg', '/Setting/adress/2016-12-13/', '584fb53ddc613.jpg', '腰立辉', '2016-12-13 16:45:50');
INSERT INTO `tp_xl_setting` VALUES ('2', '0319-7186126', '2830690782', '临城-秀丽广告', '', null, '临城转盘北200米路西', 'www.xiuliguanggao.com', null, null, null, null, '腰立辉', '2016-12-11 21:48:38');
