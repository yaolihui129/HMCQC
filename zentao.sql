-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-02-05 15:16:28
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zentao`
--

-- --------------------------------------------------------

--
-- 替换视图以便查看 `finish`
--
DROP VIEW IF EXISTS `finish`;
CREATE TABLE `finish` (
`finishedby` varchar(30)
,`estimate` double
,`consumed` double
,`left1` double
);

-- --------------------------------------------------------

--
-- 表的结构 `zt_action`
--

DROP TABLE IF EXISTS `zt_action`;
CREATE TABLE `zt_action` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL,
  `project` mediumint(9) NOT NULL,
  `actor` varchar(30) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `comment` text NOT NULL,
  `extra` text NOT NULL,
  `read` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_action`
--

INSERT INTO `zt_action` (`id`, `objectType`, `objectID`, `product`, `project`, `actor`, `action`, `date`, `comment`, `extra`, `read`) VALUES
(1, 'user', 1, ',0,', 0, 'admin', 'login', '2016-07-06 23:43:25', '', '', '0'),
(2, 'user', 1, ',0,', 0, 'admin', 'login', '2016-07-06 23:53:07', '', '', '0'),
(3, 'user', 1, ',0,', 0, 'admin', 'login', '2016-07-16 17:06:04', '', '', '0'),
(4, 'user', 1, ',0,', 0, 'admin', 'login', '2017-01-08 21:51:05', '', '', '0'),
(5, 'product', 1, ',1,', 0, 'admin', 'opened', '2017-01-08 22:23:40', '', '', '0'),
(6, 'product', 2, ',2,', 0, 'admin', 'opened', '2017-01-08 22:24:09', '', '', '0'),
(7, 'product', 3, ',3,', 0, 'admin', 'opened', '2017-01-08 22:24:52', '', '', '0'),
(8, 'product', 4, ',4,', 0, 'admin', 'opened', '2017-01-08 22:25:23', '', '', '0'),
(9, 'user', 1, ',0,', 0, 'admin', 'logout', '2017-01-08 22:28:36', '', '', '0'),
(10, 'user', 2, ',0,', 0, 'yaolh', 'login', '2017-01-08 22:29:00', '', '', '0'),
(11, 'product', 5, ',5,', 0, 'yaolh', 'opened', '2017-01-08 22:29:58', '', '', '0'),
(12, 'user', 2, ',0,', 0, 'yaolh', 'logout', '2017-01-08 22:31:27', '', '', '0'),
(13, 'user', 12, ',0,', 0, 'yangyh', 'login', '2017-01-08 22:31:47', '', '', '0'),
(14, 'user', 12, ',0,', 0, 'yangyh', 'logout', '2017-01-08 22:33:08', '', '', '0'),
(15, 'user', 1, ',0,', 0, 'admin', 'login', '2017-01-08 22:33:16', '', '', '0'),
(16, 'project', 1, ',5,', 1, 'admin', 'opened', '2017-01-08 22:38:07', '', '', '0'),
(17, 'story', 1, ',5,', 1, 'admin', 'opened', '2017-01-08 22:39:56', '', '', '0'),
(18, 'build', 1, ',5,', 1, 'admin', 'opened', '2017-01-08 22:42:14', '', '', '0'),
(19, 'bug', 1, ',5,', 1, 'admin', 'opened', '2017-01-08 22:43:06', '', '', '1'),
(20, 'bug', 1, ',5,', 1, 'admin', 'bugconfirmed', '2017-01-08 22:43:27', '', '', '1'),
(21, 'bug', 1, ',5,', 1, 'admin', 'assigned', '2017-01-08 22:43:38', '', 'liangxw', '1'),
(22, 'bug', 1, ',5,', 1, 'admin', 'resolved', '2017-01-08 22:44:51', '', 'fixed', '1'),
(23, 'user', 2, ',0,', 0, 'yaolh', 'login', '2017-01-08 23:50:46', '', '', '0'),
(24, 'user', 2, ',0,', 0, 'yaolh', 'login', '2017-01-09 09:19:33', '', '', '0'),
(25, 'user', 2, ',0,', 0, 'yaolh', 'login', '2017-01-12 09:22:13', '', '', '0'),
(26, 'user', 2, ',0,', 0, 'yaolh', 'logout', '2017-01-12 09:59:35', '', '', '0'),
(27, 'user', 2, ',0,', 0, 'yaolh', 'login', '2017-01-12 09:59:39', '', '', '0'),
(28, 'user', 2, ',0,', 0, 'yaolh', 'logout', '2017-01-12 10:05:32', '', '', '0'),
(29, 'user', 1, ',0,', 0, 'admin', 'login', '2017-01-12 10:06:08', '', '', '0'),
(30, 'user', 1, ',0,', 0, 'admin', 'logout', '2017-01-12 11:53:14', '', '', '0'),
(31, 'user', 2, ',0,', 0, 'yao', 'login', '2017-01-12 11:53:27', '', '', '0'),
(32, 'product', 10, ',10,', 0, 'yao', 'edited', '2017-01-12 12:34:28', '', '', '0'),
(33, 'product', 4, ',4,', 0, 'yao', 'edited', '2017-01-12 12:35:05', '', '', '0'),
(34, 'product', 3, ',3,', 0, 'yao', 'edited', '2017-01-12 12:35:41', '', '', '0'),
(35, 'product', 2, ',2,', 0, 'yao', 'edited', '2017-01-12 12:36:17', '', '', '0'),
(36, 'product', 1, ',1,', 0, 'yao', 'edited', '2017-01-12 12:36:30', '', '', '0'),
(37, 'product', 5, ',5,', 0, 'yao', 'edited', '2017-01-12 12:41:26', '', '', '0'),
(38, 'product', 5, ',5,', 0, 'yao', 'edited', '2017-01-12 12:43:02', '', '', '0'),
(39, 'product', 12, ',12,', 0, 'yao', 'opened', '2017-01-12 12:44:28', '', '', '0'),
(40, 'product', 12, ',12,', 0, 'yao', 'edited', '2017-01-12 12:46:11', '', '', '0'),
(41, 'user', 2, ',0,', 0, 'yao', 'login', '2017-01-12 14:00:56', '', '', '0'),
(42, 'user', 2, ',0,', 0, 'yao', 'login', '2017-01-26 08:31:33', '', '', '0'),
(43, 'productplan', 1, ',1,', 0, 'yao', 'opened', '2017-01-26 08:35:23', '', '', '0'),
(44, 'project', 14, ',1,', 14, 'yao', 'opened', '2017-01-26 08:38:30', '', '', '0'),
(45, 'project', 14, ',1,', 14, 'yao', 'edited', '2017-01-26 08:40:14', '', '', '0'),
(46, 'user', 2, ',0,', 0, 'yao', 'login', '2017-01-26 09:51:29', '', '', '0'),
(47, 'user', 2, ',0,', 0, 'yao', 'login', '2017-02-04 09:19:31', '', '', '0'),
(48, 'product', 1, ',1,', 0, 'yao', 'edited', '2017-02-04 09:23:27', '', '', '0'),
(49, 'product', 1, ',1,', 0, 'yao', 'edited', '2017-02-04 09:41:46', '', '', '0'),
(50, 'product', 1, ',1,', 0, 'yao', 'edited', '2017-02-04 09:45:17', '', '', '0'),
(51, 'product', 1, ',1,', 0, 'yao', 'edited', '2017-02-04 09:47:16', '', '', '0'),
(52, 'product', 1, ',1,', 0, 'yao', 'edited', '2017-02-04 09:52:29', '', '', '0'),
(53, 'user', 2, ',0,', 0, 'yao', 'login', '2017-02-04 14:37:00', '', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_as_customer`
--

DROP TABLE IF EXISTS `zt_as_customer`;
CREATE TABLE `zt_as_customer` (
  `wid` smallint(6) NOT NULL COMMENT '主键',
  `tpid` smallint(6) NOT NULL,
  `type` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `coursetype` varchar(5) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_as_prodservice`
--

DROP TABLE IF EXISTS `zt_as_prodservice`;
CREATE TABLE `zt_as_prodservice` (
  `id` smallint(6) NOT NULL COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` decimal(10,0) DEFAULT NULL COMMENT '商品尺寸',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_as_prodservice`
--

INSERT INTO `zt_as_prodservice` (`id`, `mark`, `name`, `content`, `weight`, `state`, `money`, `smoney`, `wlmoney`, `num`, `sellnum`, `istj`, `atime`, `sn`, `cate`, `path`, `img`, `moder`, `utime`) VALUES
(1, '', '大保养', '', '0', '正常', '0', '0', '0', 1, NULL, 0, NULL, 1, 61, NULL, NULL, '腰立辉', '2017-01-24 14:03:55'),
(2, '', '小保养', '', '0', '正常', '0', '0', '0', 1, NULL, 0, NULL, 1, 61, NULL, NULL, '腰立辉', '2017-01-24 14:04:13');

-- --------------------------------------------------------

--
-- 表的结构 `zt_as_usecar`
--

DROP TABLE IF EXISTS `zt_as_usecar`;
CREATE TABLE `zt_as_usecar` (
  `id` smallint(6) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `type` smallint(6) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_as_usecar`
--

INSERT INTO `zt_as_usecar` (`id`, `title`, `content`, `type`, `url`, `state`, `path`, `img`, `moder`, `utime`) VALUES
(3, '避免预热时间过长', '<p>\r\n	启动车后，大多数人都习惯让发动机怠速运转，等水温达到正常温度后再把车开走，其实这种预热的方法是非常错误的，因为电喷发动机不像化油器发动机，在达到工作温度之前，供油系统不能正常工作。电喷发动机如果采用长时间预热，不仅没有必要而且还是有害的。缩短预热时间可以延长三元催化器的使用寿命，还会节省燃油。动机起动后，只要能维持稳定的转速就可以起步行车，在水温未升高前，适当控制一下车速，等水温正常后就可以正常驾驶了。</p>\r\n', 6, '#', '发布', '/Admin/usecar/2016-10-31/', '5816dd28045c6.jpg', '腰立辉', '2016-10-31 06:01:15'),
(4, '开窗和开空调哪个更省油呢?', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">夏天在高速（速度一般都要&ge;80km/h）行驶时，到底是开着窗户省油还是开着空调省油呢？支持前者的人认为：不开空调即压缩机不用工作，也就不会给</span><a class="ShuKeyWordLink" href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(59, 89, 152); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">发动机</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">造成额外的负担，因此会更省油。支持后者观点的人则认为：高速时开着车窗会扰乱空气流动，形成更大的风阻，因此产生的阻力会消耗比空调还多的燃油。</span></p>\r\n<p>\r\n	<strong>结果：</strong></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">在开空调的测试中，</span><a class="blackclink" href="http://www.autohome.com.cn/81/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">飞度</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">的百公里油耗为6.15升，而</span><a class="blackclink" href="http://www.autohome.com.cn/694/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">锋范</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">的则达到了7.3升。这两个数据分别比开车窗行驶时上升了0.87升和0.17升，</span><a class="blackclink" href="http://www.autohome.com.cn/81/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">飞度</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">油耗上升的幅度非常明显。而我们最终的定论也可以得出了。在车速为100km/h以下时，开车窗行驶的确比开空调要更加省油，但是其恶劣的驾车感受是必须用足够的忍耐力才能承受的</span></p>\r\n', 7, 'http://www.autohome.com.cn/user/201007/128126.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816db69ef7da.jpg', '腰立辉', '2016-10-31 05:49:29'),
(5, '遭遇鸡蛋袭击不能用雨刮?', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">相信不少人曾对网络中的一则流言有所耳闻：某地频繁现劫匪用生鸡蛋袭击挡风玻璃的抢劫伎俩，千万不要开启雨刷喷水。因为鸡蛋遇玻璃水将凝固，阻挡视线达90%，在你被迫停车清理玻璃时，劫匪趁机抢劫......。上网一搜，类似流言高达百万条以上。</span></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验1：普通生鸡蛋</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验2：普通生鸡蛋停留一段时间再清理</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验3：普通鸡蛋夜间效果</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验4：普通生鸡蛋+神秘配方</strong></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">同样以20km/h的速度驾驶车辆，路边砸来的鸡蛋在挡风玻璃上破碎，开启雨刮器后大部分鸡蛋残渣被清除，不过一些神秘的残留物质仍然不能完全清除，尝试数次后效果仍然不明显。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', 7, 'http://www.autohome.com.cn/user/201112/281437.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816cd97d33bb.jpg', '腰立辉', '2016-10-31 05:00:58'),
(8, '开车不喝酒，喝酒不开车', '<p>\r\n	可你喝了酒又需要回家怎么办？</p>\r\n<p>\r\n	1. 自己打车回家，转天再去开回来。</p>\r\n<p>\r\n	2. 请会开车没喝酒的朋友帮忙。</p>\r\n<p>\r\n	3. 请个代驾帮忙把车开回家。</p>\r\n<p>\r\n	<strong>看看后面的规定，你就知道我们的3个办法还是最有效的。</strong></p>\r\n<p>\r\n	中华人民共和国道路交通安全法》规定，饮酒后驾驶机动车的处暂扣1个月以上3个月以下机动车驾驶证，并处200元以上元以下罚款;醉酒后驾驶机动车的，由公安机关交通管理部门约束至酒醒，处15日以下拘留和暂扣3个月以上6个月以下机动车驾驶证，并处00元以上2000元以下罚款。1年内醉酒后驾驶机动车被处罚2次以上的，吊销机动车驾驶证.5年内不得驾驶营运机动车。</p>\r\n', 6, '', '发布', '/Admin/usecar/2016-10-31/', '5816e1c4c2325.jpg', '腰立辉', '2016-10-31 06:16:36'),
(6, '保护漆面从新车做起', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">新车漆面虽无老化问题，但使用前应该做彻底的保护处理，从出厂到运输至停车场，车表漆就已经接触了空气、酸气、风沙的侵袭。及时正确的养护，能令漆面保持良好外观。如果买的是进口轿车，要首先考虑的是车蜡中含有石蜡、树脂及特氟隆等材料。除蜡时不要用汽油或煤油擦拭，应选用专业的开蜡液，或者到专业的美容养护店，请技师帮助处理。至于国产车，车身大多采用静电喷涂，漆面呈镜面光泽，故无开蜡需要。</span></p>\r\n', 6, '#', '发布', '/Admin/usecar/2016-10-31/', '5816dedc34c66.jpeg', '腰立辉', '2016-10-31 06:04:12'),
(7, '调整后视镜', '调整后视镜左侧后视镜上、下位置是把远处的地平线置于中央，左、右位置则调整至车身占据镜面范围的14。右侧后视镜因为驾驶座位于左侧，因此驾驶人对车耳右侧的掌握不是那么容易，再加上有时路边停车的需要，在调整右侧后视镜上、下位置时地面面积要较大，约占镜面的23。而左、右位置则同样调整到车身占14面积即可。\r\n', 6, '', '发布', '/Admin/usecar/2016-10-31/', '5816dfa12179c.png', '腰立辉', '2016-10-31 06:07:29');

-- --------------------------------------------------------

--
-- 表的结构 `zt_block`
--

DROP TABLE IF EXISTS `zt_block`;
CREATE TABLE `zt_block` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `account` char(30) NOT NULL,
  `module` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `source` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `params` text NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_block`
--

INSERT INTO `zt_block` (`id`, `account`, `module`, `title`, `source`, `block`, `params`, `order`, `grid`, `hidden`) VALUES
(1, 'admin', 'my', '流程图', '', 'flowchart', '', 1, 8, 0),
(2, 'admin', 'my', '最新动态', '', 'dynamic', '', 2, 4, 0),
(3, 'admin', 'my', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 3, 8, 0),
(4, 'admin', 'my', '我的待办', 'todo', 'list', '{"num":"20"}', 4, 4, 0),
(5, 'admin', 'my', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 5, 8, 0),
(6, 'admin', 'my', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 6, 4, 0),
(7, 'admin', 'my', '指派给我的Bug', 'qa', 'bug', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 7, 4, 0),
(8, 'admin', 'my', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 8, 4, 0),
(9, 'admin', 'my', '指派给我的用例', 'qa', 'case', '{"num":15,"orderBy":"id_desc","type":"assigntome"}', 9, 4, 0),
(10, 'admin', 'project', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 1, 8, 0),
(11, 'admin', 'project', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0),
(12, 'admin', 'product', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 1, 8, 0),
(13, 'admin', 'product', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0),
(14, 'yaolh', 'my', '流程图', '', 'flowchart', '', 1, 8, 0),
(15, 'yaolh', 'my', '最新动态', '', 'dynamic', '', 2, 4, 0),
(16, 'yaolh', 'my', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 3, 8, 0),
(17, 'yaolh', 'my', '我的待办', 'todo', 'list', '{"num":"20"}', 4, 4, 0),
(18, 'yaolh', 'my', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 5, 8, 0),
(19, 'yaolh', 'my', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 6, 4, 0),
(20, 'yaolh', 'my', '指派给我的Bug', 'qa', 'bug', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 7, 4, 0),
(21, 'yaolh', 'my', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 8, 4, 0),
(22, 'yaolh', 'my', '指派给我的用例', 'qa', 'case', '{"num":15,"orderBy":"id_desc","type":"assigntome"}', 9, 4, 0),
(23, 'yaolh', 'product', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 1, 8, 0),
(24, 'yaolh', 'product', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0),
(25, 'yaolh', 'project', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 1, 8, 0),
(26, 'yaolh', 'project', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0),
(27, 'yaolh', 'qa', '指派给我的Bug', 'qa', 'bug', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 1, 4, 0),
(28, 'yaolh', 'qa', '指派给我的用例', 'qa', 'case', '{"num":15,"orderBy":"id_desc","type":"assigntome"}', 2, 4, 0),
(29, 'yaolh', 'qa', '待测版本列表', 'qa', 'testtask', '{"num":15,"orderBy":"id_desc","type":"wait"}', 3, 4, 0),
(30, 'yangyh', 'my', '流程图', '', 'flowchart', '', 1, 8, 0),
(31, 'yangyh', 'my', '最新动态', '', 'dynamic', '', 2, 4, 0),
(32, 'yangyh', 'my', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 3, 8, 0),
(33, 'yangyh', 'my', '我的待办', 'todo', 'list', '{"num":"20"}', 4, 4, 0),
(34, 'yangyh', 'my', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 5, 8, 0),
(35, 'yangyh', 'my', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 6, 4, 0),
(36, 'yangyh', 'my', '指派给我的Bug', 'qa', 'bug', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 7, 4, 0),
(37, 'yangyh', 'my', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 8, 4, 0),
(38, 'yangyh', 'my', '指派给我的用例', 'qa', 'case', '{"num":15,"orderBy":"id_desc","type":"assigntome"}', 9, 4, 0),
(39, 'yangyh', 'product', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 1, 8, 0),
(40, 'yangyh', 'product', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0),
(41, 'yangyh', 'project', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 1, 8, 0),
(42, 'yangyh', 'project', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0),
(43, 'yangyh', 'qa', '指派给我的Bug', 'qa', 'bug', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 1, 4, 0),
(44, 'yangyh', 'qa', '指派给我的用例', 'qa', 'case', '{"num":15,"orderBy":"id_desc","type":"assigntome"}', 2, 4, 0),
(45, 'yangyh', 'qa', '待测版本列表', 'qa', 'testtask', '{"num":15,"orderBy":"id_desc","type":"wait"}', 3, 4, 0),
(46, 'admin', 'qa', '指派给我的Bug', 'qa', 'bug', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 1, 4, 0),
(47, 'admin', 'qa', '指派给我的用例', 'qa', 'case', '{"num":15,"orderBy":"id_desc","type":"assigntome"}', 2, 4, 0),
(48, 'admin', 'qa', '待测版本列表', 'qa', 'testtask', '{"num":15,"orderBy":"id_desc","type":"wait"}', 3, 4, 0),
(49, 'yao', 'my', '流程图', '', 'flowchart', '{}', 1, 6, 0),
(50, 'yao', 'my', '最新动态', '', 'dynamic', '{}', 2, 6, 0),
(51, 'yao', 'my', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 3, 6, 0),
(52, 'yao', 'my', '我的待办', 'todo', 'list', '{"num":"20"}', 4, 6, 0),
(53, 'yao', 'my', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 5, 6, 0),
(54, 'yao', 'my', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 6, 6, 0),
(55, 'yao', 'my', '指派给我的Bug', 'qa', 'bug', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 7, 4, 0),
(56, 'yao', 'my', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 8, 4, 0),
(57, 'yao', 'my', '指派给我的用例', 'qa', 'case', '{"num":15,"orderBy":"id_desc","type":"assigntome"}', 9, 4, 0),
(58, 'yao', 'product', '未关闭的产品', 'product', 'list', '{"num":15,"type":"noclosed"}', 1, 8, 0),
(59, 'yao', 'product', '指派给我的需求', 'product', 'story', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0),
(60, 'yao', 'project', '进行中的项目', 'project', 'list', '{"num":15,"orderBy":"id_desc","type":"undone"}', 1, 8, 0),
(61, 'yao', 'project', '指派给我的任务', 'project', 'task', '{"num":15,"orderBy":"id_desc","type":"assignedTo"}', 2, 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `zt_branch`
--

DROP TABLE IF EXISTS `zt_branch`;
CREATE TABLE `zt_branch` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL COMMENT '所属产品',
  `name` varchar(255) NOT NULL COMMENT '平台',
  `deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '删除标识',
  `sysno` varchar(10) DEFAULT NULL COMMENT '代码',
  `testip` varchar(100) DEFAULT NULL COMMENT '测试环境',
  `sedan` varchar(100) DEFAULT NULL COMMENT '仿真环境'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_branch`
--

INSERT INTO `zt_branch` (`id`, `product`, `name`, `deleted`, `sysno`, `testip`, `sedan`) VALUES
(1, 10, '权限后台', '0', 'JDQ', '', ''),
(2, 10, '微网站后台', '0', 'wxA', NULL, NULL),
(3, 10, '微信服务号（用户）', '0', 'wxU', NULL, NULL),
(4, 10, '微信服务号（管家）', '0', 'wxG', NULL, NULL),
(7, 1, '秀丽广告(Xiuli)', '0', 'Xiuli', NULL, NULL),
(8, 1, '秀丽广告后台(Admin)', '0', 'Admin', NULL, NULL),
(9, 4, '安顺汽修(Anshun)', '0', 'Anshun', NULL, NULL),
(10, 4, '安顺后台(Admin)', '0', 'Admin', '', ''),
(11, 3, '麦田双辉(Mtsh)', '0', 'Mtsh', NULL, NULL),
(12, 3, '麦田后台(Admin)', '0', 'Admin', '', ''),
(13, 2, '拓才教育(Tuocai)', '0', 'Tuocai', NULL, NULL),
(14, 2, '拓才后台(Admin)', '0', 'Admin', '', ''),
(15, 5, '测试前台(Test)', '0', 'Test', '', ''),
(16, 5, '管理后台(TAdmin)', '0', 'TAdmin', '', ''),
(17, 12, '免费网站（Free）', '0', NULL, NULL, NULL),
(18, 12, '收费模块（Sale）', '0', NULL, NULL, NULL),
(19, 12, '网站后台（Admin）', '0', 'Admin', '', ''),
(20, 12, '微信服务号', '0', NULL, NULL, NULL),
(21, 12, '微信订阅号', '0', NULL, NULL, NULL),
(22, 12, '微信企业号', '0', NULL, NULL, NULL),
(23, 12, '微信小程序', '0', NULL, NULL, NULL),
(24, 12, '钉钉企业管理', '0', NULL, NULL, NULL),
(25, 12, 'QQ电商服务', '0', NULL, NULL, NULL),
(26, 1, '微信公众号', '0', NULL, NULL, NULL),
(27, 1, '阿里钉钉', '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zt_bug`
--

DROP TABLE IF EXISTS `zt_bug`;
CREATE TABLE `zt_bug` (
  `id` mediumint(8) NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `branch` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `project` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `plan` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `story` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `task` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `toTask` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `toStory` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `severity` tinyint(4) NOT NULL DEFAULT '0',
  `pri` tinyint(3) UNSIGNED NOT NULL,
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
  `duplicateBug` mediumint(8) UNSIGNED NOT NULL,
  `linkBug` varchar(255) NOT NULL,
  `case` mediumint(8) UNSIGNED NOT NULL,
  `caseVersion` smallint(6) NOT NULL DEFAULT '1',
  `result` mediumint(8) UNSIGNED NOT NULL,
  `testtask` mediumint(8) UNSIGNED NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_bug`
--

INSERT INTO `zt_bug` (`id`, `product`, `branch`, `module`, `project`, `plan`, `story`, `storyVersion`, `task`, `toTask`, `toStory`, `title`, `keywords`, `severity`, `pri`, `type`, `os`, `browser`, `hardware`, `found`, `steps`, `status`, `color`, `confirmed`, `activatedCount`, `mailto`, `openedBy`, `openedDate`, `openedBuild`, `assignedTo`, `assignedDate`, `resolvedBy`, `resolution`, `resolvedBuild`, `resolvedDate`, `closedBy`, `closedDate`, `duplicateBug`, `linkBug`, `case`, `caseVersion`, `result`, `testtask`, `lastEditedBy`, `lastEditedDate`, `deleted`) VALUES
(1, 5, 0, 0, 1, 0, 0, 1, 0, 0, 0, 'qweqw', '', 3, 0, 'codeerror', '', '', '', '', '<p>[步骤]</p>\n<p>[结果]</p>\n<p>[期望]</p>', 'resolved', '', 1, 0, '', 'admin', '2017-01-08 22:43:06', '1', 'admin', '2017-01-08 22:44:51', 'admin', 'fixed', 'trunk', '2017-01-08 22:44:51', '', '0000-00-00 00:00:00', 0, '', 0, 0, 0, 0, 'admin', '2017-01-08 22:44:51', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_build`
--

DROP TABLE IF EXISTS `zt_build`;
CREATE TABLE `zt_build` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `branch` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `project` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(150) NOT NULL,
  `scmPath` char(255) NOT NULL,
  `filePath` char(255) NOT NULL,
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `builder` char(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_build`
--

INSERT INTO `zt_build` (`id`, `product`, `branch`, `project`, `name`, `scmPath`, `filePath`, `date`, `stories`, `bugs`, `builder`, `desc`, `deleted`) VALUES
(1, 5, 0, 1, 'IOS20170108', '', '', '2017-01-08', '', '', 'jiaxn', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_burn`
--

DROP TABLE IF EXISTS `zt_burn`;
CREATE TABLE `zt_burn` (
  `project` mediumint(8) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `left` float NOT NULL,
  `consumed` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_case`
--

DROP TABLE IF EXISTS `zt_case`;
CREATE TABLE `zt_case` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `branch` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `path` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `story` mediumint(30) UNSIGNED NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `precondition` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `pri` tinyint(3) UNSIGNED NOT NULL DEFAULT '3',
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
  `order` tinyint(30) UNSIGNED NOT NULL DEFAULT '0',
  `openedBy` char(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `lastEditedBy` char(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `version` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `linkCase` varchar(255) NOT NULL,
  `fromBug` mediumint(8) UNSIGNED NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_casestep`
--

DROP TABLE IF EXISTS `zt_casestep`;
CREATE TABLE `zt_casestep` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `case` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `version` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `desc` text NOT NULL,
  `expect` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_company`
--

DROP TABLE IF EXISTS `zt_company`;
CREATE TABLE `zt_company` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(120) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `fax` char(20) DEFAULT NULL,
  `address` char(120) DEFAULT NULL,
  `zipcode` char(10) DEFAULT NULL,
  `website` char(120) DEFAULT NULL,
  `backyard` char(120) DEFAULT NULL,
  `guest` enum('1','0') NOT NULL DEFAULT '0',
  `admins` char(255) DEFAULT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_company`
--

INSERT INTO `zt_company` (`id`, `name`, `phone`, `fax`, `address`, `zipcode`, `website`, `backyard`, `guest`, `admins`, `deleted`) VALUES
(1, '秀丽广告', '', '', '', '', 'http://www.xiuliguanggao.com', '', '0', ',admin,', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_config`
--

DROP TABLE IF EXISTS `zt_config`;
CREATE TABLE `zt_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `owner` char(30) NOT NULL DEFAULT '',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL DEFAULT '',
  `key` char(30) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_config`
--

INSERT INTO `zt_config` (`id`, `owner`, `module`, `section`, `key`, `value`) VALUES
(1, 'system', 'common', 'global', 'version', '8.2.4'),
(2, 'system', 'common', 'global', 'flow', 'full'),
(3, 'admin', 'my', 'common', 'blockInited', '1'),
(7, 'admin', 'common', 'global', 'novice', ''),
(8, 'admin', 'project', '', 'homepage', 'index'),
(9, 'admin', 'project', 'common', 'blockInited', '1'),
(10, 'admin', 'qa', '', 'homepage', 'index'),
(11, 'system', 'mail', 'smtp', 'host', 'smtp.sina.com'),
(12, 'system', 'mail', 'smtp', 'port', '25'),
(13, 'system', 'mail', 'smtp', 'auth', '1'),
(14, 'system', 'mail', 'smtp', 'username', 'yaolihui129'),
(15, 'system', 'mail', 'smtp', 'password', 'yaolihui0506'),
(16, 'system', 'mail', 'smtp', 'secure', ''),
(17, 'system', 'mail', 'smtp', 'debug', '1'),
(18, 'system', 'mail', 'smtp', 'charset', 'gbk'),
(19, 'system', 'mail', '', 'turnon', '1'),
(20, 'system', 'mail', '', 'mta', 'smtp'),
(21, 'system', 'mail', '', 'async', ''),
(22, 'system', 'mail', '', 'fromAddress', 'yaolihui129@sina.com'),
(23, 'system', 'mail', '', 'fromName', '禅道'),
(24, 'system', 'common', 'global', 'cron', '1'),
(25, 'system', 'cron', 'run', 'status', 'running'),
(31, 'system', 'custom', '', 'productProject', '0_0'),
(27, 'admin', 'product', '', 'homepage', 'index'),
(28, 'admin', 'product', 'common', 'blockInited', '1'),
(32, 'system', 'common', 'global', 'sn', '97c34c68ec3616f3a1370de85ea66b0b'),
(36, 'yaolh', 'common', 'global', 'novice', ''),
(37, 'yaolh', 'my', 'common', 'blockInited', '1'),
(38, 'yaolh', 'product', '', 'homepage', 'index'),
(39, 'yaolh', 'product', 'common', 'blockInited', '1'),
(40, 'yaolh', 'project', '', 'homepage', 'index'),
(41, 'yaolh', 'project', 'common', 'blockInited', '1'),
(42, 'yaolh', 'qa', '', 'homepage', 'index'),
(43, 'yaolh', 'qa', 'common', 'blockInited', '1'),
(44, 'yangyh', 'my', 'common', 'blockInited', '1'),
(45, 'yangyh', 'common', 'global', 'novice', 'false'),
(46, 'yangyh', 'product', '', 'homepage', 'index'),
(47, 'yangyh', 'product', 'common', 'blockInited', '1'),
(48, 'yangyh', 'project', '', 'homepage', 'index'),
(49, 'yangyh', 'project', 'common', 'blockInited', '1'),
(50, 'yangyh', 'qa', '', 'homepage', 'index'),
(51, 'yangyh', 'qa', 'common', 'blockInited', '1'),
(52, 'admin', 'qa', 'common', 'blockInited', '1'),
(56, 'yao', 'common', 'global', 'novice', ''),
(57, 'yao', 'my', 'common', 'blockInited', '1'),
(58, 'yao', 'product', '', 'homepage', 'index'),
(59, 'yao', 'product', 'common', 'blockInited', '1'),
(60, 'yao', 'project', '', 'homepage', 'index'),
(61, 'yao', 'project', 'common', 'blockInited', '1');

-- --------------------------------------------------------

--
-- 表的结构 `zt_cron`
--

DROP TABLE IF EXISTS `zt_cron`;
CREATE TABLE `zt_cron` (
  `id` mediumint(8) UNSIGNED NOT NULL,
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
  `lastTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_cron`
--

INSERT INTO `zt_cron` (`id`, `m`, `h`, `dom`, `mon`, `dow`, `command`, `remark`, `type`, `buildin`, `status`, `lastTime`) VALUES
(1, '*', '*', '*', '*', '*', '', '监控定时任务', 'zentao', 1, 'normal', '2017-02-04 17:49:01'),
(2, '30', '23', '*', '*', '*', 'moduleName=project&methodName=computeburn', '更新燃尽图', 'zentao', 1, 'normal', '2016-07-16 17:07:33'),
(3, '0', '1', '*', '*', '*', 'moduleName=report&methodName=remind', '每日任务提醒', 'zentao', 1, 'normal', '2016-07-16 17:07:33'),
(4, '*/5', '*', '*', '*', '*', 'moduleName=svn&methodName=run', '同步SVN', 'zentao', 1, 'normal', '2017-02-04 17:10:01'),
(5, '*/5', '*', '*', '*', '*', 'moduleName=git&methodName=run', '同步GIT', 'zentao', 1, 'stop', '0000-00-00 00:00:00'),
(6, '30', '0', '*', '*', '*', 'moduleName=backup&methodName=backup', '备份数据和附件', 'zentao', 1, 'normal', '2016-07-16 17:07:33'),
(7, '*/5', '*', '*', '*', '*', 'moduleName=mail&methodName=asyncSend', '异步发信', 'zentao', 1, 'normal', '2017-02-04 17:10:01');

-- --------------------------------------------------------

--
-- 表的结构 `zt_dept`
--

DROP TABLE IF EXISTS `zt_dept`;
CREATE TABLE `zt_dept` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(60) NOT NULL,
  `parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `position` char(30) NOT NULL DEFAULT '',
  `function` char(255) NOT NULL DEFAULT '',
  `manager` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_dept`
--

INSERT INTO `zt_dept` (`id`, `name`, `parent`, `path`, `grade`, `order`, `position`, `function`, `manager`) VALUES
(1, '秀丽广告', 0, ',1,', 1, 10, '', '', ''),
(2, '麦田双辉', 0, ',2,', 1, 20, '', '', ''),
(3, '拓才教育', 0, ',3,', 1, 30, '', '', ''),
(4, '智慧信达', 0, ',4,', 1, 40, '', '', ''),
(5, '安顺汽修', 0, ',5,', 1, 50, '', '', ''),
(6, '研发中心', 0, ',6,', 1, 60, '', '', ''),
(7, '太平洋加达', 0, ',7,', 1, 70, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `zt_dict`
--

DROP TABLE IF EXISTS `zt_dict`;
CREATE TABLE `zt_dict` (
  `id` smallint(6) NOT NULL,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `moder` varchar(10) DEFAULT '腰立辉',
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_dict`
--

INSERT INTO `zt_dict` (`id`, `k`, `v`, `type`, `state`, `moder`, `updateTime`) VALUES
(1, 1, '正常', 'state', '正常', '腰立辉', '2016-09-17 08:09:23'),
(2, 2, '待确认', 'state', '正常', '腰立辉', '2016-09-17 08:09:23'),
(3, 3, '已搁置', 'state', '正常', '腰立辉', '2016-09-17 08:09:23'),
(4, 4, '作废', 'state', '正常', '腰立辉', '2016-09-17 08:09:23'),
(5, 1, '未开始', 'prost', '正常', '腰立辉', '2016-09-17 08:09:23'),
(6, 2, '进行中', 'prost', '正常', '腰立辉', '2016-09-17 08:09:23'),
(7, 3, '已完成', 'prost', '正常', '腰立辉', '2016-11-11 08:49:34'),
(8, 8, '仿真验证通过', 'prost', '作废', '腰立辉', '2016-11-11 08:50:28'),
(9, 6, '已取消', 'prost', '正常', '腰立辉', '2016-11-11 08:50:20'),
(43, 1, '无文档', 'document', '正常', '腰立辉', '2016-09-17 08:09:39'),
(44, 2, '测试计划', 'document', '正常', '腰立辉', '2016-09-17 08:08:42'),
(45, 3, '测试用例', 'document', '正常', '腰立辉', '2016-09-17 08:08:55'),
(46, 4, 'BUG分析报告', 'document', '正常', '腰立辉', '2016-09-17 08:09:28'),
(47, 5, '测试综合报告', 'document', '正常', '腰立辉', '2016-09-17 08:09:23'),
(48, 1, '打开', 'rstate', '正常', '腰立辉', '2016-09-17 08:09:23'),
(49, 2, '关闭', 'rstate', '正常', '腰立辉', '2016-09-17 08:18:30'),
(50, 1, 'A', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:42'),
(51, 2, 'B', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:21'),
(52, 3, 'C', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:27'),
(53, 4, 'D', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:34'),
(54, 1, 'M', 'sceneType', '正常', '腰立辉', '2016-09-23 13:11:13'),
(55, 2, 'A', 'sceneType', '正常', '腰立辉', '2016-09-23 13:11:19'),
(56, 1, '未测试', 'sceneResul', '正常', '腰立辉', '2016-09-17 08:09:23'),
(57, 2, '通过', 'sceneResul', '正常', '腰立辉', '2016-10-10 08:22:33'),
(58, 3, '失败', 'sceneResul', '正常', '腰立辉', '2016-10-10 08:22:39'),
(59, 4, '场景错', 'sceneResul', '正常', '腰立辉', '2016-10-10 08:22:45'),
(60, 1, '操作', 'typeset', '正常', '腰立辉', '2016-10-20 07:08:41'),
(61, 2, '检查', 'typeset', '正常', '腰立辉', '2016-10-20 07:08:52'),
(62, 1, '待维护', 'dstate', '正常', '腰立辉', '2016-10-20 08:21:49'),
(63, 2, '已完成', 'dstate', '正常', '腰立辉', '2016-10-20 08:22:03'),
(67, 4, '已上线', 'prost', '正常', '腰立辉', '2016-11-11 08:50:05'),
(69, 3, 'C', 'sceneType', '正常', '腰立辉', '2016-11-16 09:23:14'),
(68, 5, '已搁置', 'prost', '正常', '腰立辉', '2016-11-11 08:50:15'),
(72, 1, 'PJD', 'testgp', '正常', '腰立辉', '2016-12-17 14:37:50'),
(73, 1, '技师', 'tech', '正常', '腰立辉', '2016-12-17 09:06:48'),
(74, 2, '非技师', 'tech', '正常', '腰立辉', '2016-12-17 09:07:02'),
(75, 1, '用车小常识', 'usecar', '正常', '腰立辉', '2016-12-17 09:14:52'),
(76, 2, '流言终结者', 'usecar', '正常', '腰立辉', '2016-12-17 09:15:16'),
(77, 1, '抽奖', 'voucher', '正常', '腰立辉', '2016-12-17 09:16:07'),
(78, 2, '普通', 'voucher', '正常', '腰立辉', '2016-12-17 09:16:20'),
(79, 1, '老师', 'custype', '正常', '腰立辉', '2016-12-17 12:09:14'),
(80, 2, '助教', 'custype', '正常', '腰立辉', '2016-12-17 12:09:26'),
(81, 3, '学生', 'custype', '正常', '腰立辉', '2016-12-17 12:09:33'),
(82, 1, '学前少儿', 'coursetype', '正常', '腰立辉', '2016-12-17 12:10:30'),
(83, 2, '小学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 12:10:47'),
(84, 3, '中学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 12:10:55'),
(85, 4, '作业托管', 'coursetype', '正常', '腰立辉', '2016-12-17 12:11:03'),
(86, 5, '兴趣拓展', 'coursetype', '正常', '腰立辉', '2016-12-17 12:11:22'),
(87, 1, '08:00-10:00', 'sktime', '正常', '腰立辉', '2016-12-17 12:13:21'),
(88, 2, '10:10-12:10', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:22'),
(89, 3, '13:30-15:30', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:29'),
(90, 4, '15:40-17:40', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:37'),
(91, 5, '18:00-20:00', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:45'),
(92, 2, 'Auto', 'testgp', '正常', '腰立辉', '2016-12-17 14:45:19');

-- --------------------------------------------------------

--
-- 表的结构 `zt_doc`
--

DROP TABLE IF EXISTS `zt_doc`;
CREATE TABLE `zt_doc` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL,
  `project` mediumint(8) UNSIGNED NOT NULL,
  `lib` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `views` smallint(5) UNSIGNED NOT NULL,
  `addedBy` varchar(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_doclib`
--

DROP TABLE IF EXISTS `zt_doclib`;
CREATE TABLE `zt_doclib` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_effort`
--

DROP TABLE IF EXISTS `zt_effort`;
CREATE TABLE `zt_effort` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `user` char(30) NOT NULL DEFAULT '',
  `todo` enum('1','0') NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `begin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('1','2','3') NOT NULL DEFAULT '1',
  `idvalue` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `status` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_extension`
--

DROP TABLE IF EXISTS `zt_extension`;
CREATE TABLE `zt_extension` (
  `id` mediumint(8) UNSIGNED NOT NULL,
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
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_extension`
--

INSERT INTO `zt_extension` (`id`, `name`, `code`, `version`, `author`, `desc`, `license`, `type`, `site`, `zentaoCompatible`, `installedTime`, `depends`, `dirs`, `files`, `status`) VALUES
(1, '禅道补丁', 'zentaopatch', '8.2.4.1', 'azhi<congzhi@cnezsoft.com>', '禅道8.2.4版本补丁。', 'LGPL', 'patch', 'http://www.zentao.net', '8.2.4', '2016-07-06 23:47:39', '', '[]', '{"module\\\\dept\\\\view\\/browse.html.php":"a6ab93b049a5650700586ffcf7d938cd"}', 'installed');

-- --------------------------------------------------------

--
-- 表的结构 `zt_file`
--

DROP TABLE IF EXISTS `zt_file`;
CREATE TABLE `zt_file` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `objectType` char(30) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `addedBy` char(30) NOT NULL DEFAULT '',
  `addedDate` datetime NOT NULL,
  `downloads` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_group`
--

DROP TABLE IF EXISTS `zt_group`;
CREATE TABLE `zt_group` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(30) NOT NULL,
  `role` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `acl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_group`
--

INSERT INTO `zt_group` (`id`, `name`, `role`, `desc`, `acl`) VALUES
(1, '管理员', 'admin', '系统管理员', ''),
(2, '研发', 'dev', '研发人员', ''),
(3, '测试', 'qa', '测试人员', ''),
(4, '项目经理', 'pm', '项目经理', ''),
(5, '产品经理', 'po', '产品经理', ''),
(6, '研发主管', 'td', '研发主管', ''),
(7, '产品主管', 'pd', '产品主管', ''),
(8, '测试主管', 'qd', '测试主管', ''),
(9, '高层管理', 'top', '高层管理', ''),
(10, '其他', '', '其他', ''),
(11, 'guest', 'guest', 'For guest', '');

-- --------------------------------------------------------

--
-- 表的结构 `zt_grouppriv`
--

DROP TABLE IF EXISTS `zt_grouppriv`;
CREATE TABLE `zt_grouppriv` (
  `group` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module` char(30) NOT NULL DEFAULT '',
  `method` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_grouppriv`
--

INSERT INTO `zt_grouppriv` (`group`, `module`, `method`) VALUES
(1, 'action', 'editComment'),
(1, 'action', 'hideAll'),
(1, 'action', 'hideOne'),
(1, 'action', 'trash'),
(1, 'action', 'undelete'),
(1, 'admin', 'checkDB'),
(1, 'admin', 'checkWeak'),
(1, 'admin', 'index'),
(1, 'admin', 'safe'),
(1, 'api', 'debug'),
(1, 'api', 'getModel'),
(1, 'api', 'sql'),
(1, 'backup', 'backup'),
(1, 'backup', 'change'),
(1, 'backup', 'delete'),
(1, 'backup', 'index'),
(1, 'backup', 'restore'),
(1, 'branch', 'delete'),
(1, 'branch', 'manage'),
(1, 'bug', 'activate'),
(1, 'bug', 'assignTo'),
(1, 'bug', 'batchAssignTo'),
(1, 'bug', 'batchChangeModule'),
(1, 'bug', 'batchClose'),
(1, 'bug', 'batchConfirm'),
(1, 'bug', 'batchCreate'),
(1, 'bug', 'batchEdit'),
(1, 'bug', 'batchResolve'),
(1, 'bug', 'browse'),
(1, 'bug', 'close'),
(1, 'bug', 'confirmBug'),
(1, 'bug', 'confirmStoryChange'),
(1, 'bug', 'create'),
(1, 'bug', 'delete'),
(1, 'bug', 'deleteTemplate'),
(1, 'bug', 'edit'),
(1, 'bug', 'export'),
(1, 'bug', 'index'),
(1, 'bug', 'linkBugs'),
(1, 'bug', 'report'),
(1, 'bug', 'resolve'),
(1, 'bug', 'saveTemplate'),
(1, 'bug', 'unlinkBug'),
(1, 'bug', 'view'),
(1, 'build', 'batchUnlinkBug'),
(1, 'build', 'batchUnlinkStory'),
(1, 'build', 'create'),
(1, 'build', 'delete'),
(1, 'build', 'edit'),
(1, 'build', 'linkBug'),
(1, 'build', 'linkStory'),
(1, 'build', 'unlinkBug'),
(1, 'build', 'unlinkStory'),
(1, 'build', 'view'),
(1, 'company', 'browse'),
(1, 'company', 'dynamic'),
(1, 'company', 'edit'),
(1, 'company', 'index'),
(1, 'company', 'view'),
(1, 'convert', 'checkBugFree'),
(1, 'convert', 'checkConfig'),
(1, 'convert', 'checkRedmine'),
(1, 'convert', 'convertBugFree'),
(1, 'convert', 'convertRedmine'),
(1, 'convert', 'execute'),
(1, 'convert', 'index'),
(1, 'convert', 'selectSource'),
(1, 'convert', 'setBugfree'),
(1, 'convert', 'setConfig'),
(1, 'convert', 'setRedmine'),
(1, 'cron', 'create'),
(1, 'cron', 'delete'),
(1, 'cron', 'edit'),
(1, 'cron', 'index'),
(1, 'cron', 'toggle'),
(1, 'cron', 'turnon'),
(1, 'custom', 'flow'),
(1, 'custom', 'index'),
(1, 'custom', 'restore'),
(1, 'custom', 'set'),
(1, 'dept', 'browse'),
(1, 'dept', 'delete'),
(1, 'dept', 'edit'),
(1, 'dept', 'manageChild'),
(1, 'dept', 'updateOrder'),
(1, 'dev', 'api'),
(1, 'dev', 'db'),
(1, 'doc', 'browse'),
(1, 'doc', 'create'),
(1, 'doc', 'createLib'),
(1, 'doc', 'delete'),
(1, 'doc', 'deleteLib'),
(1, 'doc', 'edit'),
(1, 'doc', 'editLib'),
(1, 'doc', 'index'),
(1, 'doc', 'view'),
(1, 'editor', 'delete'),
(1, 'editor', 'edit'),
(1, 'editor', 'extend'),
(1, 'editor', 'index'),
(1, 'editor', 'newPage'),
(1, 'editor', 'save'),
(1, 'extension', 'activate'),
(1, 'extension', 'browse'),
(1, 'extension', 'deactivate'),
(1, 'extension', 'erase'),
(1, 'extension', 'install'),
(1, 'extension', 'obtain'),
(1, 'extension', 'structure'),
(1, 'extension', 'uninstall'),
(1, 'extension', 'upgrade'),
(1, 'extension', 'upload'),
(1, 'file', 'delete'),
(1, 'file', 'download'),
(1, 'file', 'edit'),
(1, 'file', 'uploadImages'),
(1, 'git', 'apiSync'),
(1, 'git', 'cat'),
(1, 'git', 'diff'),
(1, 'group', 'browse'),
(1, 'group', 'copy'),
(1, 'group', 'create'),
(1, 'group', 'delete'),
(1, 'group', 'edit'),
(1, 'group', 'manageMember'),
(1, 'group', 'managePriv'),
(1, 'group', 'manageView'),
(1, 'index', 'index'),
(1, 'mail', 'batchDelete'),
(1, 'mail', 'browse'),
(1, 'mail', 'delete'),
(1, 'mail', 'detect'),
(1, 'mail', 'edit'),
(1, 'mail', 'index'),
(1, 'mail', 'reset'),
(1, 'mail', 'save'),
(1, 'mail', 'test'),
(1, 'misc', 'ping'),
(1, 'my', 'bug'),
(1, 'my', 'changePassword'),
(1, 'my', 'deleteContacts'),
(1, 'my', 'dynamic'),
(1, 'my', 'editProfile'),
(1, 'my', 'index'),
(1, 'my', 'manageContacts'),
(1, 'my', 'profile'),
(1, 'my', 'project'),
(1, 'my', 'story'),
(1, 'my', 'task'),
(1, 'my', 'testCase'),
(1, 'my', 'testTask'),
(1, 'my', 'todo'),
(1, 'my', 'unbind'),
(1, 'product', 'all'),
(1, 'product', 'batchEdit'),
(1, 'product', 'browse'),
(1, 'product', 'close'),
(1, 'product', 'create'),
(1, 'product', 'delete'),
(1, 'product', 'doc'),
(1, 'product', 'dynamic'),
(1, 'product', 'edit'),
(1, 'product', 'index'),
(1, 'product', 'order'),
(1, 'product', 'project'),
(1, 'product', 'roadmap'),
(1, 'product', 'updateOrder'),
(1, 'product', 'view'),
(1, 'productplan', 'batchUnlinkBug'),
(1, 'productplan', 'batchUnlinkStory'),
(1, 'productplan', 'browse'),
(1, 'productplan', 'create'),
(1, 'productplan', 'delete'),
(1, 'productplan', 'edit'),
(1, 'productplan', 'linkBug'),
(1, 'productplan', 'linkStory'),
(1, 'productplan', 'unlinkBug'),
(1, 'productplan', 'unlinkStory'),
(1, 'productplan', 'view'),
(1, 'project', 'activate'),
(1, 'project', 'all'),
(1, 'project', 'batchedit'),
(1, 'project', 'batchUnlinkStory'),
(1, 'project', 'browse'),
(1, 'project', 'bug'),
(1, 'project', 'build'),
(1, 'project', 'burn'),
(1, 'project', 'burnData'),
(1, 'project', 'close'),
(1, 'project', 'computeBurn'),
(1, 'project', 'create'),
(1, 'project', 'delete'),
(1, 'project', 'doc'),
(1, 'project', 'dynamic'),
(1, 'project', 'edit'),
(1, 'project', 'grouptask'),
(1, 'project', 'importBug'),
(1, 'project', 'importtask'),
(1, 'project', 'index'),
(1, 'project', 'kanban'),
(1, 'project', 'linkStory'),
(1, 'project', 'manageMembers'),
(1, 'project', 'manageProducts'),
(1, 'project', 'order'),
(1, 'project', 'putoff'),
(1, 'project', 'start'),
(1, 'project', 'story'),
(1, 'project', 'suspend'),
(1, 'project', 'task'),
(1, 'project', 'team'),
(1, 'project', 'testtask'),
(1, 'project', 'tree'),
(1, 'project', 'unlinkMember'),
(1, 'project', 'unlinkStory'),
(1, 'project', 'updateOrder'),
(1, 'project', 'view'),
(1, 'qa', 'index'),
(1, 'release', 'batchUnlinkBug'),
(1, 'release', 'batchUnlinkStory'),
(1, 'release', 'browse'),
(1, 'release', 'changeStatus'),
(1, 'release', 'create'),
(1, 'release', 'delete'),
(1, 'release', 'edit'),
(1, 'release', 'export'),
(1, 'release', 'linkBug'),
(1, 'release', 'linkStory'),
(1, 'release', 'unlinkBug'),
(1, 'release', 'unlinkStory'),
(1, 'release', 'view'),
(1, 'report', 'bugAssign'),
(1, 'report', 'bugCreate'),
(1, 'report', 'index'),
(1, 'report', 'productSummary'),
(1, 'report', 'projectDeviation'),
(1, 'report', 'workload'),
(1, 'search', 'buildForm'),
(1, 'search', 'buildQuery'),
(1, 'search', 'deleteQuery'),
(1, 'search', 'saveQuery'),
(1, 'search', 'select'),
(1, 'story', 'activate'),
(1, 'story', 'batchAssignTo'),
(1, 'story', 'batchChangeBranch'),
(1, 'story', 'batchChangeModule'),
(1, 'story', 'batchChangePlan'),
(1, 'story', 'batchChangeStage'),
(1, 'story', 'batchClose'),
(1, 'story', 'batchCreate'),
(1, 'story', 'batchEdit'),
(1, 'story', 'batchReview'),
(1, 'story', 'change'),
(1, 'story', 'close'),
(1, 'story', 'create'),
(1, 'story', 'delete'),
(1, 'story', 'edit'),
(1, 'story', 'export'),
(1, 'story', 'linkStory'),
(1, 'story', 'report'),
(1, 'story', 'review'),
(1, 'story', 'tasks'),
(1, 'story', 'unlinkStory'),
(1, 'story', 'view'),
(1, 'story', 'zeroCase'),
(1, 'svn', 'apiSync'),
(1, 'svn', 'cat'),
(1, 'svn', 'diff'),
(1, 'task', 'activate'),
(1, 'task', 'assignTo'),
(1, 'task', 'batchAssignTo'),
(1, 'task', 'batchChangeModule'),
(1, 'task', 'batchClose'),
(1, 'task', 'batchCreate'),
(1, 'task', 'batchEdit'),
(1, 'task', 'cancel'),
(1, 'task', 'close'),
(1, 'task', 'confirmStoryChange'),
(1, 'task', 'create'),
(1, 'task', 'delete'),
(1, 'task', 'deleteEstimate'),
(1, 'task', 'edit'),
(1, 'task', 'editEstimate'),
(1, 'task', 'export'),
(1, 'task', 'finish'),
(1, 'task', 'pause'),
(1, 'task', 'recordEstimate'),
(1, 'task', 'report'),
(1, 'task', 'restart'),
(1, 'task', 'start'),
(1, 'task', 'view'),
(1, 'testcase', 'batchChangeModule'),
(1, 'testcase', 'batchCreate'),
(1, 'testcase', 'batchDelete'),
(1, 'testcase', 'batchEdit'),
(1, 'testcase', 'browse'),
(1, 'testcase', 'confirmChange'),
(1, 'testcase', 'confirmStoryChange'),
(1, 'testcase', 'create'),
(1, 'testcase', 'createBug'),
(1, 'testcase', 'delete'),
(1, 'testcase', 'edit'),
(1, 'testcase', 'export'),
(1, 'testcase', 'exportTemplet'),
(1, 'testcase', 'groupCase'),
(1, 'testcase', 'import'),
(1, 'testcase', 'index'),
(1, 'testcase', 'linkCases'),
(1, 'testcase', 'showImport'),
(1, 'testcase', 'unlinkCase'),
(1, 'testcase', 'view'),
(1, 'testtask', 'batchAssign'),
(1, 'testtask', 'batchRun'),
(1, 'testtask', 'browse'),
(1, 'testtask', 'cases'),
(1, 'testtask', 'close'),
(1, 'testtask', 'create'),
(1, 'testtask', 'delete'),
(1, 'testtask', 'edit'),
(1, 'testtask', 'groupCase'),
(1, 'testtask', 'index'),
(1, 'testtask', 'linkcase'),
(1, 'testtask', 'results'),
(1, 'testtask', 'runcase'),
(1, 'testtask', 'start'),
(1, 'testtask', 'unlinkcase'),
(1, 'testtask', 'view'),
(1, 'todo', 'batchCreate'),
(1, 'todo', 'batchEdit'),
(1, 'todo', 'batchFinish'),
(1, 'todo', 'create'),
(1, 'todo', 'delete'),
(1, 'todo', 'edit'),
(1, 'todo', 'export'),
(1, 'todo', 'finish'),
(1, 'todo', 'import2Today'),
(1, 'todo', 'view'),
(1, 'tree', 'browse'),
(1, 'tree', 'browseTask'),
(1, 'tree', 'delete'),
(1, 'tree', 'edit'),
(1, 'tree', 'fix'),
(1, 'tree', 'manageChild'),
(1, 'tree', 'updateOrder'),
(1, 'user', 'batchCreate'),
(1, 'user', 'batchEdit'),
(1, 'user', 'bug'),
(1, 'user', 'create'),
(1, 'user', 'delete'),
(1, 'user', 'deleteContacts'),
(1, 'user', 'dynamic'),
(1, 'user', 'edit'),
(1, 'user', 'manageContacts'),
(1, 'user', 'profile'),
(1, 'user', 'project'),
(1, 'user', 'story'),
(1, 'user', 'task'),
(1, 'user', 'testCase'),
(1, 'user', 'testTask'),
(1, 'user', 'todo'),
(1, 'user', 'unbind'),
(1, 'user', 'unlock'),
(1, 'user', 'view'),
(2, 'action', 'editComment'),
(2, 'api', 'getModel'),
(2, 'bug', 'activate'),
(2, 'bug', 'assignTo'),
(2, 'bug', 'batchAssignTo'),
(2, 'bug', 'batchChangeModule'),
(2, 'bug', 'batchClose'),
(2, 'bug', 'batchConfirm'),
(2, 'bug', 'batchCreate'),
(2, 'bug', 'batchEdit'),
(2, 'bug', 'batchResolve'),
(2, 'bug', 'browse'),
(2, 'bug', 'close'),
(2, 'bug', 'confirmBug'),
(2, 'bug', 'confirmStoryChange'),
(2, 'bug', 'create'),
(2, 'bug', 'deleteTemplate'),
(2, 'bug', 'edit'),
(2, 'bug', 'export'),
(2, 'bug', 'index'),
(2, 'bug', 'linkBugs'),
(2, 'bug', 'report'),
(2, 'bug', 'resolve'),
(2, 'bug', 'saveTemplate'),
(2, 'bug', 'unlinkBug'),
(2, 'bug', 'view'),
(2, 'build', 'create'),
(2, 'build', 'delete'),
(2, 'build', 'edit'),
(2, 'build', 'view'),
(2, 'company', 'browse'),
(2, 'company', 'dynamic'),
(2, 'company', 'index'),
(2, 'company', 'view'),
(2, 'doc', 'browse'),
(2, 'doc', 'create'),
(2, 'doc', 'edit'),
(2, 'doc', 'index'),
(2, 'doc', 'view'),
(2, 'file', 'download'),
(2, 'file', 'edit'),
(2, 'git', 'apiSync'),
(2, 'git', 'cat'),
(2, 'git', 'diff'),
(2, 'group', 'browse'),
(2, 'index', 'index'),
(2, 'misc', 'ping'),
(2, 'my', 'bug'),
(2, 'my', 'changePassword'),
(2, 'my', 'deleteContacts'),
(2, 'my', 'dynamic'),
(2, 'my', 'editProfile'),
(2, 'my', 'index'),
(2, 'my', 'manageContacts'),
(2, 'my', 'profile'),
(2, 'my', 'project'),
(2, 'my', 'story'),
(2, 'my', 'task'),
(2, 'my', 'todo'),
(2, 'my', 'unbind'),
(2, 'product', 'all'),
(2, 'product', 'browse'),
(2, 'product', 'doc'),
(2, 'product', 'dynamic'),
(2, 'product', 'index'),
(2, 'product', 'project'),
(2, 'product', 'roadmap'),
(2, 'product', 'view'),
(2, 'productplan', 'browse'),
(2, 'productplan', 'view'),
(2, 'project', 'all'),
(2, 'project', 'browse'),
(2, 'project', 'bug'),
(2, 'project', 'build'),
(2, 'project', 'burn'),
(2, 'project', 'burnData'),
(2, 'project', 'computeBurn'),
(2, 'project', 'doc'),
(2, 'project', 'dynamic'),
(2, 'project', 'grouptask'),
(2, 'project', 'importBug'),
(2, 'project', 'importtask'),
(2, 'project', 'index'),
(2, 'project', 'kanban'),
(2, 'project', 'story'),
(2, 'project', 'task'),
(2, 'project', 'team'),
(2, 'project', 'testtask'),
(2, 'project', 'tree'),
(2, 'project', 'view'),
(2, 'qa', 'index'),
(2, 'release', 'browse'),
(2, 'release', 'export'),
(2, 'release', 'view'),
(2, 'report', 'bugAssign'),
(2, 'report', 'bugCreate'),
(2, 'report', 'index'),
(2, 'report', 'productSummary'),
(2, 'report', 'projectDeviation'),
(2, 'report', 'workload'),
(2, 'search', 'buildForm'),
(2, 'search', 'buildQuery'),
(2, 'search', 'deleteQuery'),
(2, 'search', 'saveQuery'),
(2, 'search', 'select'),
(2, 'story', 'export'),
(2, 'story', 'report'),
(2, 'story', 'tasks'),
(2, 'story', 'view'),
(2, 'svn', 'apiSync'),
(2, 'svn', 'cat'),
(2, 'svn', 'diff'),
(2, 'task', 'activate'),
(2, 'task', 'assignTo'),
(2, 'task', 'batchAssignTo'),
(2, 'task', 'batchChangeModule'),
(2, 'task', 'batchClose'),
(2, 'task', 'batchCreate'),
(2, 'task', 'batchEdit'),
(2, 'task', 'cancel'),
(2, 'task', 'close'),
(2, 'task', 'confirmStoryChange'),
(2, 'task', 'create'),
(2, 'task', 'deleteEstimate'),
(2, 'task', 'edit'),
(2, 'task', 'editEstimate'),
(2, 'task', 'export'),
(2, 'task', 'finish'),
(2, 'task', 'pause'),
(2, 'task', 'recordEstimate'),
(2, 'task', 'report'),
(2, 'task', 'restart'),
(2, 'task', 'start'),
(2, 'task', 'view'),
(2, 'testcase', 'browse'),
(2, 'testcase', 'export'),
(2, 'testcase', 'groupCase'),
(2, 'testcase', 'index'),
(2, 'testcase', 'view'),
(2, 'testtask', 'browse'),
(2, 'testtask', 'cases'),
(2, 'testtask', 'create'),
(2, 'testtask', 'edit'),
(2, 'testtask', 'groupCase'),
(2, 'testtask', 'index'),
(2, 'testtask', 'results'),
(2, 'testtask', 'view'),
(2, 'todo', 'batchCreate'),
(2, 'todo', 'batchEdit'),
(2, 'todo', 'batchFinish'),
(2, 'todo', 'create'),
(2, 'todo', 'delete'),
(2, 'todo', 'edit'),
(2, 'todo', 'export'),
(2, 'todo', 'finish'),
(2, 'todo', 'import2Today'),
(2, 'todo', 'view'),
(2, 'user', 'bug'),
(2, 'user', 'deleteContacts'),
(2, 'user', 'dynamic'),
(2, 'user', 'manageContacts'),
(2, 'user', 'profile'),
(2, 'user', 'project'),
(2, 'user', 'story'),
(2, 'user', 'task'),
(2, 'user', 'testCase'),
(2, 'user', 'testTask'),
(2, 'user', 'todo'),
(2, 'user', 'view'),
(3, 'action', 'editComment'),
(3, 'api', 'getModel'),
(3, 'bug', 'activate'),
(3, 'bug', 'assignTo'),
(3, 'bug', 'batchChangeModule'),
(3, 'bug', 'batchClose'),
(3, 'bug', 'batchConfirm'),
(3, 'bug', 'batchCreate'),
(3, 'bug', 'batchEdit'),
(3, 'bug', 'batchResolve'),
(3, 'bug', 'browse'),
(3, 'bug', 'close'),
(3, 'bug', 'confirmBug'),
(3, 'bug', 'confirmStoryChange'),
(3, 'bug', 'create'),
(3, 'bug', 'deleteTemplate'),
(3, 'bug', 'edit'),
(3, 'bug', 'export'),
(3, 'bug', 'index'),
(3, 'bug', 'linkBugs'),
(3, 'bug', 'report'),
(3, 'bug', 'resolve'),
(3, 'bug', 'saveTemplate'),
(3, 'bug', 'unlinkBug'),
(3, 'bug', 'view'),
(3, 'build', 'create'),
(3, 'build', 'edit'),
(3, 'build', 'view'),
(3, 'company', 'browse'),
(3, 'company', 'dynamic'),
(3, 'company', 'index'),
(3, 'company', 'view'),
(3, 'doc', 'browse'),
(3, 'doc', 'create'),
(3, 'doc', 'edit'),
(3, 'doc', 'index'),
(3, 'doc', 'view'),
(3, 'file', 'download'),
(3, 'file', 'edit'),
(3, 'git', 'apiSync'),
(3, 'git', 'cat'),
(3, 'git', 'diff'),
(3, 'group', 'browse'),
(3, 'index', 'index'),
(3, 'misc', 'ping'),
(3, 'my', 'bug'),
(3, 'my', 'changePassword'),
(3, 'my', 'deleteContacts'),
(3, 'my', 'dynamic'),
(3, 'my', 'editProfile'),
(3, 'my', 'index'),
(3, 'my', 'manageContacts'),
(3, 'my', 'profile'),
(3, 'my', 'project'),
(3, 'my', 'story'),
(3, 'my', 'task'),
(3, 'my', 'testCase'),
(3, 'my', 'testTask'),
(3, 'my', 'todo'),
(3, 'my', 'unbind'),
(3, 'product', 'all'),
(3, 'product', 'browse'),
(3, 'product', 'doc'),
(3, 'product', 'dynamic'),
(3, 'product', 'index'),
(3, 'product', 'project'),
(3, 'product', 'roadmap'),
(3, 'product', 'view'),
(3, 'productplan', 'browse'),
(3, 'productplan', 'view'),
(3, 'project', 'all'),
(3, 'project', 'browse'),
(3, 'project', 'bug'),
(3, 'project', 'build'),
(3, 'project', 'burn'),
(3, 'project', 'burnData'),
(3, 'project', 'computeBurn'),
(3, 'project', 'doc'),
(3, 'project', 'dynamic'),
(3, 'project', 'grouptask'),
(3, 'project', 'importBug'),
(3, 'project', 'importtask'),
(3, 'project', 'index'),
(3, 'project', 'kanban'),
(3, 'project', 'story'),
(3, 'project', 'task'),
(3, 'project', 'team'),
(3, 'project', 'testtask'),
(3, 'project', 'tree'),
(3, 'project', 'view'),
(3, 'qa', 'index'),
(3, 'release', 'browse'),
(3, 'release', 'export'),
(3, 'release', 'view'),
(3, 'report', 'bugAssign'),
(3, 'report', 'bugCreate'),
(3, 'report', 'index'),
(3, 'report', 'productSummary'),
(3, 'report', 'projectDeviation'),
(3, 'report', 'workload'),
(3, 'search', 'buildForm'),
(3, 'search', 'buildQuery'),
(3, 'search', 'deleteQuery'),
(3, 'search', 'saveQuery'),
(3, 'search', 'select'),
(3, 'story', 'export'),
(3, 'story', 'report'),
(3, 'story', 'tasks'),
(3, 'story', 'view'),
(3, 'story', 'zeroCase'),
(3, 'svn', 'apiSync'),
(3, 'svn', 'cat'),
(3, 'svn', 'diff'),
(3, 'task', 'activate'),
(3, 'task', 'assignTo'),
(3, 'task', 'batchAssignTo'),
(3, 'task', 'batchChangeModule'),
(3, 'task', 'batchClose'),
(3, 'task', 'batchCreate'),
(3, 'task', 'batchEdit'),
(3, 'task', 'cancel'),
(3, 'task', 'close'),
(3, 'task', 'confirmStoryChange'),
(3, 'task', 'create'),
(3, 'task', 'deleteEstimate'),
(3, 'task', 'edit'),
(3, 'task', 'editEstimate'),
(3, 'task', 'export'),
(3, 'task', 'finish'),
(3, 'task', 'pause'),
(3, 'task', 'recordEstimate'),
(3, 'task', 'report'),
(3, 'task', 'restart'),
(3, 'task', 'start'),
(3, 'task', 'view'),
(3, 'testcase', 'batchChangeModule'),
(3, 'testcase', 'batchCreate'),
(3, 'testcase', 'batchEdit'),
(3, 'testcase', 'browse'),
(3, 'testcase', 'confirmChange'),
(3, 'testcase', 'confirmStoryChange'),
(3, 'testcase', 'create'),
(3, 'testcase', 'createBug'),
(3, 'testcase', 'edit'),
(3, 'testcase', 'export'),
(3, 'testcase', 'exportTemplet'),
(3, 'testcase', 'groupCase'),
(3, 'testcase', 'import'),
(3, 'testcase', 'index'),
(3, 'testcase', 'linkCases'),
(3, 'testcase', 'showImport'),
(3, 'testcase', 'unlinkCase'),
(3, 'testcase', 'view'),
(3, 'testtask', 'batchAssign'),
(3, 'testtask', 'batchRun'),
(3, 'testtask', 'browse'),
(3, 'testtask', 'cases'),
(3, 'testtask', 'close'),
(3, 'testtask', 'create'),
(3, 'testtask', 'edit'),
(3, 'testtask', 'groupCase'),
(3, 'testtask', 'index'),
(3, 'testtask', 'linkcase'),
(3, 'testtask', 'results'),
(3, 'testtask', 'runcase'),
(3, 'testtask', 'start'),
(3, 'testtask', 'unlinkcase'),
(3, 'testtask', 'view'),
(3, 'todo', 'batchCreate'),
(3, 'todo', 'batchEdit'),
(3, 'todo', 'batchFinish'),
(3, 'todo', 'create'),
(3, 'todo', 'delete'),
(3, 'todo', 'edit'),
(3, 'todo', 'export'),
(3, 'todo', 'finish'),
(3, 'todo', 'import2Today'),
(3, 'todo', 'view'),
(3, 'user', 'bug'),
(3, 'user', 'deleteContacts'),
(3, 'user', 'dynamic'),
(3, 'user', 'manageContacts'),
(3, 'user', 'profile'),
(3, 'user', 'project'),
(3, 'user', 'story'),
(3, 'user', 'task'),
(3, 'user', 'testCase'),
(3, 'user', 'testTask'),
(3, 'user', 'todo'),
(3, 'user', 'view'),
(4, 'action', 'editComment'),
(4, 'action', 'hideAll'),
(4, 'action', 'hideOne'),
(4, 'action', 'trash'),
(4, 'action', 'undelete'),
(4, 'admin', 'index'),
(4, 'api', 'getModel'),
(4, 'bug', 'activate'),
(4, 'bug', 'assignTo'),
(4, 'bug', 'batchAssignTo'),
(4, 'bug', 'batchChangeModule'),
(4, 'bug', 'batchClose'),
(4, 'bug', 'batchConfirm'),
(4, 'bug', 'batchCreate'),
(4, 'bug', 'batchEdit'),
(4, 'bug', 'batchResolve'),
(4, 'bug', 'browse'),
(4, 'bug', 'close'),
(4, 'bug', 'confirmBug'),
(4, 'bug', 'confirmStoryChange'),
(4, 'bug', 'create'),
(4, 'bug', 'delete'),
(4, 'bug', 'deleteTemplate'),
(4, 'bug', 'edit'),
(4, 'bug', 'export'),
(4, 'bug', 'index'),
(4, 'bug', 'linkBugs'),
(4, 'bug', 'report'),
(4, 'bug', 'resolve'),
(4, 'bug', 'saveTemplate'),
(4, 'bug', 'unlinkBug'),
(4, 'bug', 'view'),
(4, 'build', 'batchUnlinkBug'),
(4, 'build', 'batchUnlinkStory'),
(4, 'build', 'create'),
(4, 'build', 'delete'),
(4, 'build', 'edit'),
(4, 'build', 'linkBug'),
(4, 'build', 'linkStory'),
(4, 'build', 'unlinkBug'),
(4, 'build', 'unlinkStory'),
(4, 'build', 'view'),
(4, 'company', 'browse'),
(4, 'company', 'dynamic'),
(4, 'company', 'index'),
(4, 'company', 'view'),
(4, 'doc', 'browse'),
(4, 'doc', 'create'),
(4, 'doc', 'createLib'),
(4, 'doc', 'delete'),
(4, 'doc', 'deleteLib'),
(4, 'doc', 'edit'),
(4, 'doc', 'editLib'),
(4, 'doc', 'index'),
(4, 'doc', 'view'),
(4, 'extension', 'browse'),
(4, 'extension', 'obtain'),
(4, 'extension', 'structure'),
(4, 'file', 'delete'),
(4, 'file', 'download'),
(4, 'file', 'edit'),
(4, 'file', 'uploadImages'),
(4, 'git', 'apiSync'),
(4, 'git', 'cat'),
(4, 'git', 'diff'),
(4, 'group', 'browse'),
(4, 'index', 'index'),
(4, 'misc', 'ping'),
(4, 'my', 'bug'),
(4, 'my', 'changePassword'),
(4, 'my', 'deleteContacts'),
(4, 'my', 'dynamic'),
(4, 'my', 'editProfile'),
(4, 'my', 'index'),
(4, 'my', 'manageContacts'),
(4, 'my', 'profile'),
(4, 'my', 'project'),
(4, 'my', 'story'),
(4, 'my', 'task'),
(4, 'my', 'testCase'),
(4, 'my', 'testTask'),
(4, 'my', 'todo'),
(4, 'my', 'unbind'),
(4, 'product', 'all'),
(4, 'product', 'browse'),
(4, 'product', 'doc'),
(4, 'product', 'dynamic'),
(4, 'product', 'index'),
(4, 'product', 'project'),
(4, 'product', 'roadmap'),
(4, 'product', 'view'),
(4, 'productplan', 'browse'),
(4, 'productplan', 'view'),
(4, 'project', 'activate'),
(4, 'project', 'all'),
(4, 'project', 'batchedit'),
(4, 'project', 'batchUnlinkStory'),
(4, 'project', 'browse'),
(4, 'project', 'bug'),
(4, 'project', 'build'),
(4, 'project', 'burn'),
(4, 'project', 'burnData'),
(4, 'project', 'close'),
(4, 'project', 'computeBurn'),
(4, 'project', 'create'),
(4, 'project', 'delete'),
(4, 'project', 'doc'),
(4, 'project', 'dynamic'),
(4, 'project', 'edit'),
(4, 'project', 'grouptask'),
(4, 'project', 'importBug'),
(4, 'project', 'importtask'),
(4, 'project', 'index'),
(4, 'project', 'kanban'),
(4, 'project', 'linkStory'),
(4, 'project', 'manageMembers'),
(4, 'project', 'manageProducts'),
(4, 'project', 'order'),
(4, 'project', 'putoff'),
(4, 'project', 'start'),
(4, 'project', 'story'),
(4, 'project', 'suspend'),
(4, 'project', 'task'),
(4, 'project', 'team'),
(4, 'project', 'testtask'),
(4, 'project', 'tree'),
(4, 'project', 'unlinkMember'),
(4, 'project', 'unlinkStory'),
(4, 'project', 'updateOrder'),
(4, 'project', 'view'),
(4, 'qa', 'index'),
(4, 'release', 'browse'),
(4, 'release', 'export'),
(4, 'release', 'view'),
(4, 'report', 'bugAssign'),
(4, 'report', 'bugCreate'),
(4, 'report', 'index'),
(4, 'report', 'productSummary'),
(4, 'report', 'projectDeviation'),
(4, 'report', 'workload'),
(4, 'search', 'buildForm'),
(4, 'search', 'buildQuery'),
(4, 'search', 'deleteQuery'),
(4, 'search', 'saveQuery'),
(4, 'search', 'select'),
(4, 'story', 'export'),
(4, 'story', 'report'),
(4, 'story', 'tasks'),
(4, 'story', 'view'),
(4, 'story', 'zeroCase'),
(4, 'svn', 'apiSync'),
(4, 'svn', 'cat'),
(4, 'svn', 'diff'),
(4, 'task', 'activate'),
(4, 'task', 'assignTo'),
(4, 'task', 'batchAssignTo'),
(4, 'task', 'batchChangeModule'),
(4, 'task', 'batchClose'),
(4, 'task', 'batchCreate'),
(4, 'task', 'batchEdit'),
(4, 'task', 'cancel'),
(4, 'task', 'close'),
(4, 'task', 'confirmStoryChange'),
(4, 'task', 'create'),
(4, 'task', 'delete'),
(4, 'task', 'deleteEstimate'),
(4, 'task', 'edit'),
(4, 'task', 'editEstimate'),
(4, 'task', 'export'),
(4, 'task', 'finish'),
(4, 'task', 'pause'),
(4, 'task', 'recordEstimate'),
(4, 'task', 'report'),
(4, 'task', 'restart'),
(4, 'task', 'start'),
(4, 'task', 'view'),
(4, 'testcase', 'browse'),
(4, 'testcase', 'createBug'),
(4, 'testcase', 'export'),
(4, 'testcase', 'groupCase'),
(4, 'testcase', 'index'),
(4, 'testcase', 'view'),
(4, 'testtask', 'batchAssign'),
(4, 'testtask', 'browse'),
(4, 'testtask', 'cases'),
(4, 'testtask', 'create'),
(4, 'testtask', 'edit'),
(4, 'testtask', 'groupCase'),
(4, 'testtask', 'index'),
(4, 'testtask', 'results'),
(4, 'testtask', 'view'),
(4, 'todo', 'batchCreate'),
(4, 'todo', 'batchEdit'),
(4, 'todo', 'batchFinish'),
(4, 'todo', 'create'),
(4, 'todo', 'delete'),
(4, 'todo', 'edit'),
(4, 'todo', 'export'),
(4, 'todo', 'finish'),
(4, 'todo', 'import2Today'),
(4, 'todo', 'view'),
(4, 'tree', 'browse'),
(4, 'tree', 'browseTask'),
(4, 'tree', 'delete'),
(4, 'tree', 'edit'),
(4, 'tree', 'fix'),
(4, 'tree', 'manageChild'),
(4, 'tree', 'updateOrder'),
(4, 'user', 'bug'),
(4, 'user', 'deleteContacts'),
(4, 'user', 'dynamic'),
(4, 'user', 'manageContacts'),
(4, 'user', 'profile'),
(4, 'user', 'project'),
(4, 'user', 'story'),
(4, 'user', 'task'),
(4, 'user', 'testCase'),
(4, 'user', 'testTask'),
(4, 'user', 'todo'),
(4, 'user', 'view'),
(5, 'action', 'editComment'),
(5, 'action', 'hideAll'),
(5, 'action', 'hideOne'),
(5, 'action', 'trash'),
(5, 'action', 'undelete'),
(5, 'admin', 'index'),
(5, 'api', 'getModel'),
(5, 'branch', 'delete'),
(5, 'branch', 'manage'),
(5, 'bug', 'activate'),
(5, 'bug', 'assignTo'),
(5, 'bug', 'batchAssignTo'),
(5, 'bug', 'batchChangeModule'),
(5, 'bug', 'batchClose'),
(5, 'bug', 'batchConfirm'),
(5, 'bug', 'batchCreate'),
(5, 'bug', 'batchEdit'),
(5, 'bug', 'batchResolve'),
(5, 'bug', 'browse'),
(5, 'bug', 'close'),
(5, 'bug', 'confirmBug'),
(5, 'bug', 'confirmStoryChange'),
(5, 'bug', 'create'),
(5, 'bug', 'deleteTemplate'),
(5, 'bug', 'edit'),
(5, 'bug', 'export'),
(5, 'bug', 'index'),
(5, 'bug', 'linkBugs'),
(5, 'bug', 'report'),
(5, 'bug', 'resolve'),
(5, 'bug', 'saveTemplate'),
(5, 'bug', 'unlinkBug'),
(5, 'bug', 'view'),
(5, 'build', 'view'),
(5, 'company', 'browse'),
(5, 'company', 'dynamic'),
(5, 'company', 'index'),
(5, 'company', 'view'),
(5, 'doc', 'browse'),
(5, 'doc', 'create'),
(5, 'doc', 'createLib'),
(5, 'doc', 'delete'),
(5, 'doc', 'deleteLib'),
(5, 'doc', 'edit'),
(5, 'doc', 'editLib'),
(5, 'doc', 'index'),
(5, 'doc', 'view'),
(5, 'extension', 'browse'),
(5, 'extension', 'obtain'),
(5, 'extension', 'structure'),
(5, 'file', 'delete'),
(5, 'file', 'download'),
(5, 'file', 'edit'),
(5, 'file', 'uploadImages'),
(5, 'git', 'apiSync'),
(5, 'git', 'cat'),
(5, 'git', 'diff'),
(5, 'group', 'browse'),
(5, 'index', 'index'),
(5, 'misc', 'ping'),
(5, 'my', 'bug'),
(5, 'my', 'changePassword'),
(5, 'my', 'deleteContacts'),
(5, 'my', 'dynamic'),
(5, 'my', 'editProfile'),
(5, 'my', 'index'),
(5, 'my', 'manageContacts'),
(5, 'my', 'profile'),
(5, 'my', 'project'),
(5, 'my', 'story'),
(5, 'my', 'task'),
(5, 'my', 'testCase'),
(5, 'my', 'testTask'),
(5, 'my', 'todo'),
(5, 'my', 'unbind'),
(5, 'product', 'all'),
(5, 'product', 'batchEdit'),
(5, 'product', 'browse'),
(5, 'product', 'close'),
(5, 'product', 'create'),
(5, 'product', 'delete'),
(5, 'product', 'doc'),
(5, 'product', 'dynamic'),
(5, 'product', 'edit'),
(5, 'product', 'index'),
(5, 'product', 'order'),
(5, 'product', 'project'),
(5, 'product', 'roadmap'),
(5, 'product', 'updateOrder'),
(5, 'product', 'view'),
(5, 'productplan', 'batchUnlinkBug'),
(5, 'productplan', 'batchUnlinkStory'),
(5, 'productplan', 'browse'),
(5, 'productplan', 'create'),
(5, 'productplan', 'delete'),
(5, 'productplan', 'edit'),
(5, 'productplan', 'linkBug'),
(5, 'productplan', 'linkStory'),
(5, 'productplan', 'unlinkBug'),
(5, 'productplan', 'unlinkStory'),
(5, 'productplan', 'view'),
(5, 'project', 'activate'),
(5, 'project', 'all'),
(5, 'project', 'batchedit'),
(5, 'project', 'batchUnlinkStory'),
(5, 'project', 'browse'),
(5, 'project', 'bug'),
(5, 'project', 'build'),
(5, 'project', 'burn'),
(5, 'project', 'burnData'),
(5, 'project', 'close'),
(5, 'project', 'computeBurn'),
(5, 'project', 'create'),
(5, 'project', 'delete'),
(5, 'project', 'doc'),
(5, 'project', 'dynamic'),
(5, 'project', 'edit'),
(5, 'project', 'grouptask'),
(5, 'project', 'importBug'),
(5, 'project', 'importtask'),
(5, 'project', 'index'),
(5, 'project', 'kanban'),
(5, 'project', 'linkStory'),
(5, 'project', 'manageMembers'),
(5, 'project', 'manageProducts'),
(5, 'project', 'order'),
(5, 'project', 'putoff'),
(5, 'project', 'start'),
(5, 'project', 'story'),
(5, 'project', 'suspend'),
(5, 'project', 'task'),
(5, 'project', 'team'),
(5, 'project', 'testtask'),
(5, 'project', 'tree'),
(5, 'project', 'unlinkMember'),
(5, 'project', 'unlinkStory'),
(5, 'project', 'updateOrder'),
(5, 'project', 'view'),
(5, 'qa', 'index'),
(5, 'release', 'batchUnlinkBug'),
(5, 'release', 'batchUnlinkStory'),
(5, 'release', 'browse'),
(5, 'release', 'changeStatus'),
(5, 'release', 'create'),
(5, 'release', 'delete'),
(5, 'release', 'edit'),
(5, 'release', 'export'),
(5, 'release', 'linkBug'),
(5, 'release', 'linkStory'),
(5, 'release', 'unlinkBug'),
(5, 'release', 'unlinkStory'),
(5, 'release', 'view'),
(5, 'report', 'bugAssign'),
(5, 'report', 'bugCreate'),
(5, 'report', 'index'),
(5, 'report', 'productSummary'),
(5, 'report', 'projectDeviation'),
(5, 'report', 'workload'),
(5, 'search', 'buildForm'),
(5, 'search', 'buildQuery'),
(5, 'search', 'deleteQuery'),
(5, 'search', 'saveQuery'),
(5, 'search', 'select'),
(5, 'story', 'activate'),
(5, 'story', 'batchChangeBranch'),
(5, 'story', 'batchChangeModule'),
(5, 'story', 'batchChangePlan'),
(5, 'story', 'batchChangeStage'),
(5, 'story', 'batchClose'),
(5, 'story', 'batchCreate'),
(5, 'story', 'batchEdit'),
(5, 'story', 'batchReview'),
(5, 'story', 'change'),
(5, 'story', 'close'),
(5, 'story', 'create'),
(5, 'story', 'delete'),
(5, 'story', 'edit'),
(5, 'story', 'export'),
(5, 'story', 'linkStory'),
(5, 'story', 'report'),
(5, 'story', 'review'),
(5, 'story', 'tasks'),
(5, 'story', 'unlinkStory'),
(5, 'story', 'view'),
(5, 'story', 'zeroCase'),
(5, 'svn', 'apiSync'),
(5, 'svn', 'cat'),
(5, 'svn', 'diff'),
(5, 'task', 'confirmStoryChange'),
(5, 'task', 'deleteEstimate'),
(5, 'task', 'editEstimate'),
(5, 'task', 'export'),
(5, 'task', 'recordEstimate'),
(5, 'task', 'report'),
(5, 'task', 'view'),
(5, 'testcase', 'browse'),
(5, 'testcase', 'createBug'),
(5, 'testcase', 'export'),
(5, 'testcase', 'groupCase'),
(5, 'testcase', 'index'),
(5, 'testcase', 'view'),
(5, 'testtask', 'browse'),
(5, 'testtask', 'cases'),
(5, 'testtask', 'groupCase'),
(5, 'testtask', 'index'),
(5, 'testtask', 'results'),
(5, 'testtask', 'view'),
(5, 'todo', 'batchCreate'),
(5, 'todo', 'batchEdit'),
(5, 'todo', 'batchFinish'),
(5, 'todo', 'create'),
(5, 'todo', 'delete'),
(5, 'todo', 'edit'),
(5, 'todo', 'export'),
(5, 'todo', 'finish'),
(5, 'todo', 'import2Today'),
(5, 'todo', 'view'),
(5, 'tree', 'browse'),
(5, 'tree', 'browseTask'),
(5, 'tree', 'delete'),
(5, 'tree', 'edit'),
(5, 'tree', 'fix'),
(5, 'tree', 'manageChild'),
(5, 'tree', 'updateOrder'),
(5, 'user', 'bug'),
(5, 'user', 'deleteContacts'),
(5, 'user', 'dynamic'),
(5, 'user', 'manageContacts'),
(5, 'user', 'profile'),
(5, 'user', 'project'),
(5, 'user', 'story'),
(5, 'user', 'task'),
(5, 'user', 'testCase'),
(5, 'user', 'testTask'),
(5, 'user', 'todo'),
(5, 'user', 'view'),
(6, 'action', 'editComment'),
(6, 'action', 'hideAll'),
(6, 'action', 'hideOne'),
(6, 'action', 'trash'),
(6, 'action', 'undelete'),
(6, 'admin', 'index'),
(6, 'api', 'getModel'),
(6, 'bug', 'activate'),
(6, 'bug', 'assignTo'),
(6, 'bug', 'batchAssignTo'),
(6, 'bug', 'batchChangeModule'),
(6, 'bug', 'batchClose'),
(6, 'bug', 'batchConfirm'),
(6, 'bug', 'batchCreate'),
(6, 'bug', 'batchEdit'),
(6, 'bug', 'batchResolve'),
(6, 'bug', 'browse'),
(6, 'bug', 'close'),
(6, 'bug', 'confirmBug'),
(6, 'bug', 'confirmStoryChange'),
(6, 'bug', 'create'),
(6, 'bug', 'delete'),
(6, 'bug', 'deleteTemplate'),
(6, 'bug', 'edit'),
(6, 'bug', 'export'),
(6, 'bug', 'index'),
(6, 'bug', 'linkBugs'),
(6, 'bug', 'report'),
(6, 'bug', 'resolve'),
(6, 'bug', 'saveTemplate'),
(6, 'bug', 'unlinkBug'),
(6, 'bug', 'view'),
(6, 'build', 'batchUnlinkBug'),
(6, 'build', 'batchUnlinkStory'),
(6, 'build', 'create'),
(6, 'build', 'delete'),
(6, 'build', 'edit'),
(6, 'build', 'linkBug'),
(6, 'build', 'linkStory'),
(6, 'build', 'unlinkBug'),
(6, 'build', 'unlinkStory'),
(6, 'build', 'view'),
(6, 'company', 'browse'),
(6, 'company', 'dynamic'),
(6, 'company', 'index'),
(6, 'company', 'view'),
(6, 'doc', 'browse'),
(6, 'doc', 'create'),
(6, 'doc', 'createLib'),
(6, 'doc', 'delete'),
(6, 'doc', 'deleteLib'),
(6, 'doc', 'edit'),
(6, 'doc', 'editLib'),
(6, 'doc', 'index'),
(6, 'doc', 'view'),
(6, 'extension', 'browse'),
(6, 'extension', 'obtain'),
(6, 'extension', 'structure'),
(6, 'file', 'delete'),
(6, 'file', 'download'),
(6, 'file', 'edit'),
(6, 'file', 'uploadImages'),
(6, 'git', 'apiSync'),
(6, 'git', 'cat'),
(6, 'git', 'diff'),
(6, 'group', 'browse'),
(6, 'index', 'index'),
(6, 'misc', 'ping'),
(6, 'my', 'bug'),
(6, 'my', 'changePassword'),
(6, 'my', 'deleteContacts'),
(6, 'my', 'dynamic'),
(6, 'my', 'editProfile'),
(6, 'my', 'index'),
(6, 'my', 'manageContacts'),
(6, 'my', 'profile'),
(6, 'my', 'project'),
(6, 'my', 'story'),
(6, 'my', 'task'),
(6, 'my', 'testCase'),
(6, 'my', 'testTask'),
(6, 'my', 'todo'),
(6, 'my', 'unbind'),
(6, 'product', 'all'),
(6, 'product', 'browse'),
(6, 'product', 'doc'),
(6, 'product', 'dynamic'),
(6, 'product', 'index'),
(6, 'product', 'project'),
(6, 'product', 'roadmap'),
(6, 'product', 'view'),
(6, 'productplan', 'browse'),
(6, 'productplan', 'view'),
(6, 'project', 'activate'),
(6, 'project', 'all'),
(6, 'project', 'batchedit'),
(6, 'project', 'batchUnlinkStory'),
(6, 'project', 'browse'),
(6, 'project', 'bug'),
(6, 'project', 'build'),
(6, 'project', 'burn'),
(6, 'project', 'burnData'),
(6, 'project', 'close'),
(6, 'project', 'computeBurn'),
(6, 'project', 'create'),
(6, 'project', 'delete'),
(6, 'project', 'doc'),
(6, 'project', 'dynamic'),
(6, 'project', 'edit'),
(6, 'project', 'grouptask'),
(6, 'project', 'importBug'),
(6, 'project', 'importtask'),
(6, 'project', 'index'),
(6, 'project', 'kanban'),
(6, 'project', 'linkStory'),
(6, 'project', 'manageMembers'),
(6, 'project', 'manageProducts'),
(6, 'project', 'order'),
(6, 'project', 'putoff'),
(6, 'project', 'start'),
(6, 'project', 'story'),
(6, 'project', 'suspend'),
(6, 'project', 'task'),
(6, 'project', 'team'),
(6, 'project', 'testtask'),
(6, 'project', 'tree'),
(6, 'project', 'unlinkMember'),
(6, 'project', 'unlinkStory'),
(6, 'project', 'updateOrder'),
(6, 'project', 'view'),
(6, 'qa', 'index'),
(6, 'release', 'browse'),
(6, 'release', 'export'),
(6, 'release', 'view'),
(6, 'report', 'bugAssign'),
(6, 'report', 'bugCreate'),
(6, 'report', 'index'),
(6, 'report', 'productSummary'),
(6, 'report', 'projectDeviation'),
(6, 'report', 'workload'),
(6, 'search', 'buildForm'),
(6, 'search', 'buildQuery'),
(6, 'search', 'deleteQuery'),
(6, 'search', 'saveQuery'),
(6, 'search', 'select'),
(6, 'story', 'export'),
(6, 'story', 'report'),
(6, 'story', 'tasks'),
(6, 'story', 'view'),
(6, 'story', 'zeroCase'),
(6, 'svn', 'apiSync'),
(6, 'svn', 'cat'),
(6, 'svn', 'diff'),
(6, 'task', 'activate'),
(6, 'task', 'assignTo'),
(6, 'task', 'batchAssignTo'),
(6, 'task', 'batchChangeModule'),
(6, 'task', 'batchClose'),
(6, 'task', 'batchCreate'),
(6, 'task', 'batchEdit'),
(6, 'task', 'cancel'),
(6, 'task', 'close'),
(6, 'task', 'confirmStoryChange'),
(6, 'task', 'create'),
(6, 'task', 'delete'),
(6, 'task', 'deleteEstimate'),
(6, 'task', 'edit'),
(6, 'task', 'editEstimate'),
(6, 'task', 'export'),
(6, 'task', 'finish'),
(6, 'task', 'pause'),
(6, 'task', 'recordEstimate'),
(6, 'task', 'report'),
(6, 'task', 'restart'),
(6, 'task', 'start'),
(6, 'task', 'view'),
(6, 'testcase', 'browse'),
(6, 'testcase', 'export'),
(6, 'testcase', 'groupCase'),
(6, 'testcase', 'index'),
(6, 'testcase', 'view'),
(6, 'testtask', 'browse'),
(6, 'testtask', 'cases'),
(6, 'testtask', 'create'),
(6, 'testtask', 'edit'),
(6, 'testtask', 'groupCase'),
(6, 'testtask', 'index'),
(6, 'testtask', 'results'),
(6, 'testtask', 'view'),
(6, 'todo', 'batchCreate'),
(6, 'todo', 'batchEdit'),
(6, 'todo', 'batchFinish'),
(6, 'todo', 'create'),
(6, 'todo', 'delete'),
(6, 'todo', 'edit'),
(6, 'todo', 'export'),
(6, 'todo', 'finish'),
(6, 'todo', 'import2Today'),
(6, 'todo', 'view'),
(6, 'tree', 'browse'),
(6, 'tree', 'browseTask'),
(6, 'tree', 'delete'),
(6, 'tree', 'edit'),
(6, 'tree', 'fix'),
(6, 'tree', 'manageChild'),
(6, 'tree', 'updateOrder'),
(6, 'user', 'bug'),
(6, 'user', 'deleteContacts'),
(6, 'user', 'dynamic'),
(6, 'user', 'manageContacts'),
(6, 'user', 'profile'),
(6, 'user', 'project'),
(6, 'user', 'story'),
(6, 'user', 'task'),
(6, 'user', 'testCase'),
(6, 'user', 'testTask'),
(6, 'user', 'todo'),
(6, 'user', 'view'),
(7, 'action', 'editComment'),
(7, 'action', 'hideAll'),
(7, 'action', 'hideOne'),
(7, 'action', 'trash'),
(7, 'action', 'undelete'),
(7, 'admin', 'index'),
(7, 'api', 'getModel'),
(7, 'branch', 'delete'),
(7, 'branch', 'manage'),
(7, 'bug', 'activate'),
(7, 'bug', 'assignTo'),
(7, 'bug', 'batchChangeModule'),
(7, 'bug', 'batchClose'),
(7, 'bug', 'batchConfirm'),
(7, 'bug', 'batchCreate'),
(7, 'bug', 'batchEdit'),
(7, 'bug', 'batchResolve'),
(7, 'bug', 'browse'),
(7, 'bug', 'close'),
(7, 'bug', 'confirmBug'),
(7, 'bug', 'confirmStoryChange'),
(7, 'bug', 'create'),
(7, 'bug', 'delete'),
(7, 'bug', 'deleteTemplate'),
(7, 'bug', 'edit'),
(7, 'bug', 'export'),
(7, 'bug', 'index'),
(7, 'bug', 'linkBugs'),
(7, 'bug', 'report'),
(7, 'bug', 'resolve'),
(7, 'bug', 'saveTemplate'),
(7, 'bug', 'unlinkBug'),
(7, 'bug', 'view'),
(7, 'build', 'view'),
(7, 'company', 'browse'),
(7, 'company', 'dynamic'),
(7, 'company', 'index'),
(7, 'company', 'view'),
(7, 'doc', 'browse'),
(7, 'doc', 'create'),
(7, 'doc', 'createLib'),
(7, 'doc', 'delete'),
(7, 'doc', 'deleteLib'),
(7, 'doc', 'edit'),
(7, 'doc', 'editLib'),
(7, 'doc', 'index'),
(7, 'doc', 'view'),
(7, 'extension', 'browse'),
(7, 'extension', 'obtain'),
(7, 'extension', 'structure'),
(7, 'file', 'delete'),
(7, 'file', 'download'),
(7, 'file', 'edit'),
(7, 'file', 'uploadImages'),
(7, 'git', 'apiSync'),
(7, 'git', 'cat'),
(7, 'git', 'diff'),
(7, 'group', 'browse'),
(7, 'index', 'index'),
(7, 'misc', 'ping'),
(7, 'my', 'bug'),
(7, 'my', 'changePassword'),
(7, 'my', 'deleteContacts'),
(7, 'my', 'dynamic'),
(7, 'my', 'editProfile'),
(7, 'my', 'index'),
(7, 'my', 'manageContacts'),
(7, 'my', 'profile'),
(7, 'my', 'project'),
(7, 'my', 'story'),
(7, 'my', 'task'),
(7, 'my', 'testCase'),
(7, 'my', 'testTask'),
(7, 'my', 'todo'),
(7, 'my', 'unbind'),
(7, 'product', 'all'),
(7, 'product', 'batchEdit'),
(7, 'product', 'browse'),
(7, 'product', 'close'),
(7, 'product', 'create'),
(7, 'product', 'delete'),
(7, 'product', 'doc'),
(7, 'product', 'dynamic'),
(7, 'product', 'edit'),
(7, 'product', 'index'),
(7, 'product', 'order'),
(7, 'product', 'project'),
(7, 'product', 'roadmap'),
(7, 'product', 'updateOrder'),
(7, 'product', 'view'),
(7, 'productplan', 'batchUnlinkBug'),
(7, 'productplan', 'batchUnlinkStory'),
(7, 'productplan', 'browse'),
(7, 'productplan', 'create'),
(7, 'productplan', 'delete'),
(7, 'productplan', 'edit'),
(7, 'productplan', 'linkBug'),
(7, 'productplan', 'linkStory'),
(7, 'productplan', 'unlinkBug'),
(7, 'productplan', 'unlinkStory'),
(7, 'productplan', 'view'),
(7, 'project', 'all'),
(7, 'project', 'browse'),
(7, 'project', 'bug'),
(7, 'project', 'build'),
(7, 'project', 'burn'),
(7, 'project', 'burnData'),
(7, 'project', 'doc'),
(7, 'project', 'dynamic'),
(7, 'project', 'grouptask'),
(7, 'project', 'index'),
(7, 'project', 'kanban'),
(7, 'project', 'linkStory'),
(7, 'project', 'manageProducts'),
(7, 'project', 'story'),
(7, 'project', 'task'),
(7, 'project', 'team'),
(7, 'project', 'testtask'),
(7, 'project', 'tree'),
(7, 'project', 'unlinkStory'),
(7, 'project', 'view'),
(7, 'qa', 'index'),
(7, 'release', 'batchUnlinkBug'),
(7, 'release', 'batchUnlinkStory'),
(7, 'release', 'browse'),
(7, 'release', 'changeStatus'),
(7, 'release', 'create'),
(7, 'release', 'delete'),
(7, 'release', 'edit'),
(7, 'release', 'export'),
(7, 'release', 'linkBug'),
(7, 'release', 'linkStory'),
(7, 'release', 'unlinkBug'),
(7, 'release', 'unlinkStory'),
(7, 'release', 'view'),
(7, 'report', 'bugAssign'),
(7, 'report', 'bugCreate'),
(7, 'report', 'index'),
(7, 'report', 'productSummary'),
(7, 'report', 'projectDeviation'),
(7, 'report', 'workload'),
(7, 'search', 'buildForm'),
(7, 'search', 'buildQuery'),
(7, 'search', 'deleteQuery'),
(7, 'search', 'saveQuery'),
(7, 'search', 'select'),
(7, 'story', 'activate'),
(7, 'story', 'batchAssignTo'),
(7, 'story', 'batchChangeBranch'),
(7, 'story', 'batchChangeModule'),
(7, 'story', 'batchChangePlan'),
(7, 'story', 'batchChangeStage'),
(7, 'story', 'batchClose'),
(7, 'story', 'batchCreate'),
(7, 'story', 'batchEdit'),
(7, 'story', 'batchReview'),
(7, 'story', 'change'),
(7, 'story', 'close'),
(7, 'story', 'create'),
(7, 'story', 'delete'),
(7, 'story', 'edit'),
(7, 'story', 'export'),
(7, 'story', 'linkStory'),
(7, 'story', 'report'),
(7, 'story', 'review'),
(7, 'story', 'tasks'),
(7, 'story', 'unlinkStory'),
(7, 'story', 'view'),
(7, 'story', 'zeroCase'),
(7, 'svn', 'apiSync'),
(7, 'svn', 'cat'),
(7, 'svn', 'diff'),
(7, 'task', 'confirmStoryChange'),
(7, 'task', 'deleteEstimate'),
(7, 'task', 'editEstimate'),
(7, 'task', 'export'),
(7, 'task', 'recordEstimate'),
(7, 'task', 'report'),
(7, 'task', 'view'),
(7, 'testcase', 'browse'),
(7, 'testcase', 'createBug'),
(7, 'testcase', 'export'),
(7, 'testcase', 'groupCase'),
(7, 'testcase', 'index'),
(7, 'testcase', 'view'),
(7, 'testtask', 'browse'),
(7, 'testtask', 'cases'),
(7, 'testtask', 'groupCase'),
(7, 'testtask', 'index'),
(7, 'testtask', 'results'),
(7, 'testtask', 'view'),
(7, 'todo', 'batchCreate'),
(7, 'todo', 'batchEdit'),
(7, 'todo', 'batchFinish'),
(7, 'todo', 'create'),
(7, 'todo', 'delete'),
(7, 'todo', 'edit'),
(7, 'todo', 'export'),
(7, 'todo', 'finish'),
(7, 'todo', 'import2Today'),
(7, 'todo', 'view'),
(7, 'tree', 'browse'),
(7, 'tree', 'browseTask'),
(7, 'tree', 'delete'),
(7, 'tree', 'edit'),
(7, 'tree', 'fix'),
(7, 'tree', 'manageChild'),
(7, 'tree', 'updateOrder'),
(7, 'user', 'bug'),
(7, 'user', 'deleteContacts'),
(7, 'user', 'dynamic'),
(7, 'user', 'manageContacts'),
(7, 'user', 'profile'),
(7, 'user', 'project'),
(7, 'user', 'story'),
(7, 'user', 'task'),
(7, 'user', 'testCase'),
(7, 'user', 'testTask'),
(7, 'user', 'todo'),
(7, 'user', 'view'),
(8, 'action', 'editComment'),
(8, 'action', 'hideAll'),
(8, 'action', 'hideOne'),
(8, 'action', 'trash'),
(8, 'action', 'undelete'),
(8, 'admin', 'index'),
(8, 'api', 'getModel'),
(8, 'bug', 'activate'),
(8, 'bug', 'assignTo'),
(8, 'bug', 'batchAssignTo'),
(8, 'bug', 'batchChangeModule'),
(8, 'bug', 'batchClose'),
(8, 'bug', 'batchConfirm'),
(8, 'bug', 'batchCreate'),
(8, 'bug', 'batchEdit'),
(8, 'bug', 'batchResolve'),
(8, 'bug', 'browse'),
(8, 'bug', 'close'),
(8, 'bug', 'confirmBug'),
(8, 'bug', 'confirmStoryChange'),
(8, 'bug', 'create'),
(8, 'bug', 'delete'),
(8, 'bug', 'deleteTemplate'),
(8, 'bug', 'edit'),
(8, 'bug', 'export'),
(8, 'bug', 'index'),
(8, 'bug', 'linkBugs'),
(8, 'bug', 'report'),
(8, 'bug', 'resolve'),
(8, 'bug', 'saveTemplate'),
(8, 'bug', 'unlinkBug'),
(8, 'bug', 'view'),
(8, 'build', 'create'),
(8, 'build', 'delete'),
(8, 'build', 'edit'),
(8, 'build', 'view'),
(8, 'company', 'browse'),
(8, 'company', 'dynamic'),
(8, 'company', 'index'),
(8, 'company', 'view'),
(8, 'doc', 'browse'),
(8, 'doc', 'create'),
(8, 'doc', 'createLib'),
(8, 'doc', 'delete'),
(8, 'doc', 'deleteLib'),
(8, 'doc', 'edit'),
(8, 'doc', 'editLib'),
(8, 'doc', 'index'),
(8, 'doc', 'view'),
(8, 'extension', 'browse'),
(8, 'extension', 'obtain'),
(8, 'extension', 'structure'),
(8, 'file', 'delete'),
(8, 'file', 'download'),
(8, 'file', 'edit'),
(8, 'file', 'uploadImages'),
(8, 'git', 'apiSync'),
(8, 'git', 'cat'),
(8, 'git', 'diff'),
(8, 'group', 'browse'),
(8, 'index', 'index'),
(8, 'misc', 'ping'),
(8, 'my', 'bug'),
(8, 'my', 'changePassword'),
(8, 'my', 'deleteContacts'),
(8, 'my', 'dynamic'),
(8, 'my', 'editProfile'),
(8, 'my', 'index'),
(8, 'my', 'manageContacts'),
(8, 'my', 'profile'),
(8, 'my', 'project'),
(8, 'my', 'story'),
(8, 'my', 'task'),
(8, 'my', 'testCase'),
(8, 'my', 'testTask'),
(8, 'my', 'todo'),
(8, 'my', 'unbind'),
(8, 'product', 'all'),
(8, 'product', 'browse'),
(8, 'product', 'doc'),
(8, 'product', 'dynamic'),
(8, 'product', 'index'),
(8, 'product', 'project'),
(8, 'product', 'roadmap'),
(8, 'product', 'view'),
(8, 'productplan', 'browse'),
(8, 'productplan', 'view'),
(8, 'project', 'all'),
(8, 'project', 'bug'),
(8, 'project', 'build'),
(8, 'project', 'burn'),
(8, 'project', 'burnData'),
(8, 'project', 'doc'),
(8, 'project', 'dynamic'),
(8, 'project', 'grouptask'),
(8, 'project', 'importBug'),
(8, 'project', 'importtask'),
(8, 'project', 'index'),
(8, 'project', 'kanban'),
(8, 'project', 'story'),
(8, 'project', 'task'),
(8, 'project', 'team'),
(8, 'project', 'testtask'),
(8, 'project', 'tree'),
(8, 'project', 'view'),
(8, 'qa', 'index'),
(8, 'release', 'browse'),
(8, 'release', 'export'),
(8, 'release', 'view'),
(8, 'report', 'bugAssign'),
(8, 'report', 'bugCreate'),
(8, 'report', 'index'),
(8, 'report', 'productSummary'),
(8, 'report', 'projectDeviation'),
(8, 'report', 'workload'),
(8, 'search', 'buildForm'),
(8, 'search', 'buildQuery'),
(8, 'search', 'deleteQuery'),
(8, 'search', 'saveQuery'),
(8, 'search', 'select'),
(8, 'story', 'export'),
(8, 'story', 'report'),
(8, 'story', 'tasks'),
(8, 'story', 'view'),
(8, 'story', 'zeroCase'),
(8, 'svn', 'apiSync'),
(8, 'svn', 'cat'),
(8, 'svn', 'diff'),
(8, 'task', 'activate'),
(8, 'task', 'assignTo'),
(8, 'task', 'batchAssignTo'),
(8, 'task', 'batchChangeModule'),
(8, 'task', 'batchClose'),
(8, 'task', 'batchCreate'),
(8, 'task', 'batchEdit'),
(8, 'task', 'cancel'),
(8, 'task', 'close'),
(8, 'task', 'confirmStoryChange'),
(8, 'task', 'create'),
(8, 'task', 'delete'),
(8, 'task', 'deleteEstimate'),
(8, 'task', 'edit'),
(8, 'task', 'editEstimate'),
(8, 'task', 'export'),
(8, 'task', 'finish'),
(8, 'task', 'pause'),
(8, 'task', 'recordEstimate'),
(8, 'task', 'report'),
(8, 'task', 'restart'),
(8, 'task', 'start'),
(8, 'task', 'view'),
(8, 'testcase', 'batchChangeModule'),
(8, 'testcase', 'batchCreate'),
(8, 'testcase', 'batchDelete'),
(8, 'testcase', 'batchEdit'),
(8, 'testcase', 'browse'),
(8, 'testcase', 'confirmChange'),
(8, 'testcase', 'confirmStoryChange'),
(8, 'testcase', 'create'),
(8, 'testcase', 'createBug'),
(8, 'testcase', 'delete'),
(8, 'testcase', 'edit'),
(8, 'testcase', 'export'),
(8, 'testcase', 'exportTemplet'),
(8, 'testcase', 'groupCase'),
(8, 'testcase', 'import'),
(8, 'testcase', 'index'),
(8, 'testcase', 'linkCases'),
(8, 'testcase', 'showImport'),
(8, 'testcase', 'unlinkCase'),
(8, 'testcase', 'view'),
(8, 'testtask', 'batchAssign'),
(8, 'testtask', 'batchRun'),
(8, 'testtask', 'browse'),
(8, 'testtask', 'cases'),
(8, 'testtask', 'close'),
(8, 'testtask', 'create'),
(8, 'testtask', 'delete'),
(8, 'testtask', 'edit'),
(8, 'testtask', 'groupCase'),
(8, 'testtask', 'index'),
(8, 'testtask', 'linkcase'),
(8, 'testtask', 'results'),
(8, 'testtask', 'runcase'),
(8, 'testtask', 'start'),
(8, 'testtask', 'unlinkcase'),
(8, 'testtask', 'view'),
(8, 'todo', 'batchCreate'),
(8, 'todo', 'batchEdit'),
(8, 'todo', 'batchFinish'),
(8, 'todo', 'create'),
(8, 'todo', 'delete'),
(8, 'todo', 'edit'),
(8, 'todo', 'export'),
(8, 'todo', 'finish'),
(8, 'todo', 'import2Today'),
(8, 'todo', 'view'),
(8, 'tree', 'browse'),
(8, 'tree', 'browseTask'),
(8, 'tree', 'delete'),
(8, 'tree', 'edit'),
(8, 'tree', 'fix'),
(8, 'tree', 'manageChild'),
(8, 'tree', 'updateOrder'),
(8, 'user', 'bug'),
(8, 'user', 'deleteContacts'),
(8, 'user', 'dynamic'),
(8, 'user', 'manageContacts'),
(8, 'user', 'profile'),
(8, 'user', 'project'),
(8, 'user', 'story'),
(8, 'user', 'task'),
(8, 'user', 'testCase'),
(8, 'user', 'testTask'),
(8, 'user', 'todo'),
(8, 'user', 'view'),
(9, 'action', 'editComment'),
(9, 'action', 'hideAll'),
(9, 'action', 'hideOne'),
(9, 'action', 'trash'),
(9, 'action', 'undelete'),
(9, 'admin', 'index'),
(9, 'api', 'getModel'),
(9, 'bug', 'browse'),
(9, 'bug', 'export'),
(9, 'bug', 'index'),
(9, 'bug', 'report'),
(9, 'bug', 'view'),
(9, 'build', 'view'),
(9, 'company', 'browse'),
(9, 'company', 'dynamic'),
(9, 'company', 'edit'),
(9, 'company', 'index'),
(9, 'company', 'view'),
(9, 'dept', 'browse'),
(9, 'dept', 'delete'),
(9, 'dept', 'manageChild'),
(9, 'dept', 'updateOrder'),
(9, 'doc', 'browse'),
(9, 'doc', 'create'),
(9, 'doc', 'createLib'),
(9, 'doc', 'delete'),
(9, 'doc', 'deleteLib'),
(9, 'doc', 'edit'),
(9, 'doc', 'editLib'),
(9, 'doc', 'index'),
(9, 'doc', 'view'),
(9, 'extension', 'browse'),
(9, 'extension', 'obtain'),
(9, 'extension', 'structure'),
(9, 'file', 'delete'),
(9, 'file', 'download'),
(9, 'file', 'edit'),
(9, 'file', 'uploadImages'),
(9, 'git', 'apiSync'),
(9, 'git', 'cat'),
(9, 'git', 'diff'),
(9, 'group', 'browse'),
(9, 'index', 'index'),
(9, 'misc', 'ping'),
(9, 'my', 'bug'),
(9, 'my', 'changePassword'),
(9, 'my', 'deleteContacts'),
(9, 'my', 'dynamic'),
(9, 'my', 'editProfile'),
(9, 'my', 'index'),
(9, 'my', 'manageContacts'),
(9, 'my', 'profile'),
(9, 'my', 'project'),
(9, 'my', 'story'),
(9, 'my', 'task'),
(9, 'my', 'testCase'),
(9, 'my', 'testTask'),
(9, 'my', 'todo'),
(9, 'my', 'unbind'),
(9, 'product', 'all'),
(9, 'product', 'browse'),
(9, 'product', 'doc'),
(9, 'product', 'dynamic'),
(9, 'product', 'index'),
(9, 'product', 'project'),
(9, 'product', 'roadmap'),
(9, 'product', 'view'),
(9, 'productplan', 'browse'),
(9, 'productplan', 'view'),
(9, 'project', 'all'),
(9, 'project', 'browse'),
(9, 'project', 'bug'),
(9, 'project', 'build'),
(9, 'project', 'burn'),
(9, 'project', 'burnData'),
(9, 'project', 'computeBurn'),
(9, 'project', 'doc'),
(9, 'project', 'dynamic'),
(9, 'project', 'grouptask'),
(9, 'project', 'index'),
(9, 'project', 'kanban'),
(9, 'project', 'story'),
(9, 'project', 'task'),
(9, 'project', 'team'),
(9, 'project', 'tree'),
(9, 'project', 'view'),
(9, 'qa', 'index'),
(9, 'release', 'browse'),
(9, 'release', 'export'),
(9, 'release', 'view'),
(9, 'report', 'bugAssign'),
(9, 'report', 'bugCreate'),
(9, 'report', 'index'),
(9, 'report', 'productSummary'),
(9, 'report', 'projectDeviation'),
(9, 'report', 'workload'),
(9, 'search', 'buildForm'),
(9, 'search', 'buildQuery'),
(9, 'search', 'deleteQuery'),
(9, 'search', 'saveQuery'),
(9, 'search', 'select'),
(9, 'story', 'export'),
(9, 'story', 'report'),
(9, 'story', 'review'),
(9, 'story', 'tasks'),
(9, 'story', 'view'),
(9, 'story', 'zeroCase'),
(9, 'svn', 'apiSync'),
(9, 'svn', 'cat'),
(9, 'svn', 'diff'),
(9, 'task', 'deleteEstimate'),
(9, 'task', 'editEstimate'),
(9, 'task', 'export'),
(9, 'task', 'recordEstimate'),
(9, 'task', 'report'),
(9, 'task', 'view'),
(9, 'testcase', 'browse'),
(9, 'testcase', 'export'),
(9, 'testcase', 'groupCase'),
(9, 'testcase', 'index'),
(9, 'testcase', 'view'),
(9, 'testtask', 'browse'),
(9, 'testtask', 'cases'),
(9, 'testtask', 'groupCase'),
(9, 'testtask', 'index'),
(9, 'testtask', 'results'),
(9, 'testtask', 'view'),
(9, 'todo', 'batchCreate'),
(9, 'todo', 'batchEdit'),
(9, 'todo', 'batchFinish'),
(9, 'todo', 'create'),
(9, 'todo', 'delete'),
(9, 'todo', 'edit'),
(9, 'todo', 'export'),
(9, 'todo', 'finish'),
(9, 'todo', 'import2Today'),
(9, 'todo', 'view'),
(9, 'user', 'batchCreate'),
(9, 'user', 'batchEdit'),
(9, 'user', 'bug'),
(9, 'user', 'create'),
(9, 'user', 'delete'),
(9, 'user', 'deleteContacts'),
(9, 'user', 'dynamic'),
(9, 'user', 'edit'),
(9, 'user', 'manageContacts'),
(9, 'user', 'profile'),
(9, 'user', 'project'),
(9, 'user', 'story'),
(9, 'user', 'task'),
(9, 'user', 'testCase'),
(9, 'user', 'testTask'),
(9, 'user', 'todo'),
(9, 'user', 'unbind'),
(9, 'user', 'unlock'),
(9, 'user', 'view'),
(10, 'action', 'editComment'),
(10, 'api', 'getModel'),
(10, 'bug', 'activate'),
(10, 'bug', 'batchChangeModule'),
(10, 'bug', 'browse'),
(10, 'bug', 'close'),
(10, 'bug', 'create'),
(10, 'bug', 'edit'),
(10, 'bug', 'index'),
(10, 'bug', 'linkBugs'),
(10, 'bug', 'report'),
(10, 'bug', 'unlinkBug'),
(10, 'bug', 'view'),
(10, 'build', 'view'),
(10, 'company', 'browse'),
(10, 'company', 'dynamic'),
(10, 'company', 'index'),
(10, 'company', 'view'),
(10, 'doc', 'browse'),
(10, 'doc', 'index'),
(10, 'doc', 'view'),
(10, 'file', 'download'),
(10, 'index', 'index'),
(10, 'misc', 'ping'),
(10, 'my', 'changePassword'),
(10, 'my', 'dynamic'),
(10, 'my', 'editProfile'),
(10, 'my', 'index'),
(10, 'my', 'profile'),
(10, 'my', 'task'),
(10, 'my', 'todo'),
(10, 'my', 'unbind'),
(10, 'product', 'all'),
(10, 'product', 'browse'),
(10, 'product', 'doc'),
(10, 'product', 'dynamic'),
(10, 'product', 'index'),
(10, 'product', 'roadmap'),
(10, 'product', 'view'),
(10, 'productplan', 'browse'),
(10, 'productplan', 'view'),
(10, 'project', 'all'),
(10, 'project', 'browse'),
(10, 'project', 'bug'),
(10, 'project', 'build'),
(10, 'project', 'burn'),
(10, 'project', 'doc'),
(10, 'project', 'dynamic'),
(10, 'project', 'grouptask'),
(10, 'project', 'index'),
(10, 'project', 'kanban'),
(10, 'project', 'story'),
(10, 'project', 'task'),
(10, 'project', 'team'),
(10, 'project', 'testtask'),
(10, 'project', 'tree'),
(10, 'project', 'view'),
(10, 'qa', 'index'),
(10, 'release', 'browse'),
(10, 'release', 'view'),
(10, 'report', 'bugAssign'),
(10, 'report', 'bugCreate'),
(10, 'report', 'index'),
(10, 'report', 'productSummary'),
(10, 'report', 'projectDeviation'),
(10, 'report', 'workload'),
(10, 'search', 'buildForm'),
(10, 'search', 'buildQuery'),
(10, 'search', 'deleteQuery'),
(10, 'search', 'saveQuery'),
(10, 'story', 'tasks'),
(10, 'story', 'view'),
(10, 'task', 'deleteEstimate'),
(10, 'task', 'editEstimate'),
(10, 'task', 'recordEstimate'),
(10, 'task', 'view'),
(10, 'todo', 'batchCreate'),
(10, 'todo', 'batchEdit'),
(10, 'todo', 'batchFinish'),
(10, 'todo', 'create'),
(10, 'todo', 'delete'),
(10, 'todo', 'edit'),
(10, 'todo', 'export'),
(10, 'todo', 'finish'),
(10, 'todo', 'import2Today'),
(10, 'todo', 'view'),
(10, 'user', 'bug'),
(10, 'user', 'dynamic'),
(10, 'user', 'profile'),
(10, 'user', 'project'),
(10, 'user', 'story'),
(10, 'user', 'task'),
(10, 'user', 'testCase'),
(10, 'user', 'testTask'),
(10, 'user', 'todo'),
(10, 'user', 'view'),
(11, 'bug', 'browse'),
(11, 'bug', 'index'),
(11, 'bug', 'report'),
(11, 'bug', 'view'),
(11, 'build', 'view'),
(11, 'company', 'browse'),
(11, 'company', 'dynamic'),
(11, 'company', 'index'),
(11, 'company', 'view'),
(11, 'doc', 'browse'),
(11, 'doc', 'index'),
(11, 'doc', 'view'),
(11, 'file', 'download'),
(11, 'git', 'cat'),
(11, 'git', 'diff'),
(11, 'group', 'browse'),
(11, 'index', 'index'),
(11, 'misc', 'ping'),
(11, 'my', 'index'),
(11, 'product', 'all'),
(11, 'product', 'browse'),
(11, 'product', 'doc'),
(11, 'product', 'dynamic'),
(11, 'product', 'index'),
(11, 'product', 'roadmap'),
(11, 'product', 'view'),
(11, 'productplan', 'browse'),
(11, 'productplan', 'view'),
(11, 'project', 'all'),
(11, 'project', 'browse'),
(11, 'project', 'bug'),
(11, 'project', 'build'),
(11, 'project', 'burn'),
(11, 'project', 'doc');
INSERT INTO `zt_grouppriv` (`group`, `module`, `method`) VALUES
(11, 'project', 'dynamic'),
(11, 'project', 'grouptask'),
(11, 'project', 'index'),
(11, 'project', 'kanban'),
(11, 'project', 'story'),
(11, 'project', 'task'),
(11, 'project', 'team'),
(11, 'project', 'testtask'),
(11, 'project', 'tree'),
(11, 'project', 'view'),
(11, 'qa', 'index'),
(11, 'release', 'browse'),
(11, 'release', 'view'),
(11, 'report', 'bugAssign'),
(11, 'report', 'bugCreate'),
(11, 'report', 'index'),
(11, 'report', 'productSummary'),
(11, 'report', 'projectDeviation'),
(11, 'report', 'workload'),
(11, 'search', 'buildForm'),
(11, 'search', 'buildQuery'),
(11, 'story', 'tasks'),
(11, 'story', 'view'),
(11, 'svn', 'cat'),
(11, 'svn', 'diff'),
(11, 'task', 'recordEstimate'),
(11, 'task', 'view'),
(11, 'testcase', 'browse'),
(11, 'testcase', 'groupCase'),
(11, 'testcase', 'index'),
(11, 'testcase', 'view'),
(11, 'testtask', 'browse'),
(11, 'testtask', 'cases'),
(11, 'testtask', 'groupCase'),
(11, 'testtask', 'index'),
(11, 'testtask', 'results'),
(11, 'testtask', 'view'),
(11, 'user', 'bug'),
(11, 'user', 'dynamic'),
(11, 'user', 'profile'),
(11, 'user', 'project'),
(11, 'user', 'story'),
(11, 'user', 'task'),
(11, 'user', 'testCase'),
(11, 'user', 'testTask'),
(11, 'user', 'todo'),
(11, 'user', 'view');

-- --------------------------------------------------------

--
-- 表的结构 `zt_history`
--

DROP TABLE IF EXISTS `zt_history`;
CREATE TABLE `zt_history` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `action` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field` varchar(30) NOT NULL DEFAULT '',
  `old` text NOT NULL,
  `new` text NOT NULL,
  `diff` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_history`
--

INSERT INTO `zt_history` (`id`, `action`, `field`, `old`, `new`, `diff`) VALUES
(1, 21, 'assignedTo', 'jiaxn', 'liangxw', ''),
(2, 32, 'type', 'normal', 'platform', ''),
(3, 33, 'type', 'normal', 'platform', ''),
(4, 34, 'type', 'normal', 'platform', ''),
(5, 35, 'type', 'normal', 'platform', ''),
(6, 36, 'type', 'normal', 'platform', ''),
(7, 37, 'type', 'normal', 'platform', ''),
(8, 38, 'name', '测试平台', '测试管理', '001- <del>测试平台</del>\n001+ <ins>测试管理</ins>'),
(9, 38, 'desc', '', '自主设计的测试管理平台', '001- <del></del>\n001+ <ins>自主设计的测试管理平台</ins>'),
(10, 40, 'name', '标准网站(免费版)', '标准网站', '001- <del>标准网站(免费版)</del>\n001+ <ins>标准网站</ins>'),
(11, 40, 'code', 'DemoFree', 'Demo', ''),
(12, 45, 'PO', '', 'zhangxl', '001- <del></del>\n001+ <ins>zhangxl</ins>'),
(13, 45, 'QD', '', 'jiaxn', ''),
(14, 45, 'PM', '', 'yao', ''),
(15, 45, 'RD', '', 'yao', ''),
(16, 48, 'desc', '111', '<p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p>\n<p>&nbsp; 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p>', '001- <del>111</del>\n001+ <ins><p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p></ins>\n002+ <ins><p> 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p></ins>'),
(17, 49, 'desc', '<p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p>\n<p>&nbsp; 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p>', '<h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2>', '001- <del><p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p></del>\n001+ <ins><h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2></ins>\n002- <del><p> 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p></del>'),
(18, 50, 'desc', '<h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2>', '<p><br /></p>\n<ol><li><span style="font-size:24px;">大型户外广告牌</span></li>\n<li><span style="font-size:24px;">写真喷绘</span></li>\n<li><span style="font-size:24px;">展板条幅</span></li>\n<li><span style="font-size:24px;">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li>\n</ol><p><br /></p>', '001- <del><h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2></del>\n001+ <ins><p><br /></p></ins>\n002+ <ins><ol><li><span style="font-size:24px;">大型户外广告牌</span></li></ins>\n003+ <ins><li><span style="font-size:24px;">写真喷绘</span></li></ins>\n004+ <ins><li><span style="font-size:24px;">展板条幅</span></li></ins>\n005+ <ins><li><span style="font-size:24px;">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li></ins>\n006+ <ins></ol><p><br /></p></ins>'),
(19, 51, 'desc', '<p><br /></p>\n<ol><li><span style="font-size:24px;">大型户外广告牌</span></li>\n<li><span style="font-size:24px;">写真喷绘</span></li>\n<li><span style="font-size:24px;">展板条幅</span></li>\n<li><span style="font-size:24px;">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li>\n</ol><p><br /></p>', '<ul><li><span style="font-size:18px;"><strong>大型户外广告牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>写真喷绘</strong></span></li>\n<li><span style="font-size:18px;"><strong>展板条幅</strong></span></li>\n<li><span style="font-size:18px;"><strong>铜牌铜字</strong></span></li>\n<li><span style="font-size:18px;"><strong>LED显示屏</strong></span></li>\n<li><span style="font-size:18px;"><strong>发光字</strong></span></li>\n<li><span style="font-size:18px;"><strong>楼体亮化</strong></span></li>\n<li><span style="font-size:18px;"><strong>&nbsp;打字复印、</strong></span><span style="font-size:18px;"><strong>彩印、快照证卡</strong></span></li>\n<li><span style="font-size:18px;"><strong>菜单、桌牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>PVC卡、书本装订</strong></span></li>\n</ul><p><br /></p>', '001- <del><p><br /></p></del>\n001+ <ins><ul><li><span style="font-size:18px;"><strong>大型户外广告牌</strong></span></li></ins>\n002- <del><ol><li><span style="font-size:24px;">大型户外广告牌</span></li></del>\n002+ <ins><li><span style="font-size:18px;"><strong>写真喷绘</strong></span></li></ins>\n003- <del><li><span style="font-size:24px;">写真喷绘</span></li></del>\n003+ <ins><li><span style="font-size:18px;"><strong>展板条幅</strong></span></li></ins>\n004- <del><li><span style="font-size:24px;">展板条幅</span></li></del>\n004+ <ins><li><span style="font-size:18px;"><strong>铜牌铜字</strong></span></li></ins>\n005- <del><li><span style="font-size:24px;">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li></del>\n005+ <ins><li><span style="font-size:18px;"><strong>LED显示屏</strong></span></li></ins>\n006- <del></ol><p><br /></p></del>\n006+ <ins><li><span style="font-size:18px;"><strong>发光字</strong></span></li></ins>\n007+ <ins><li><span style="font-size:18px;"><strong>楼体亮化</strong></span></li></ins>\n008+ <ins><li><span style="font-size:18px;"><strong>打字复印、</strong></span><span style="font-size:18px;"><strong>彩印、快照证卡</strong></span></li></ins>\n009+ <ins><li><span style="font-size:18px;"><strong>菜单、桌牌</strong></span></li></ins>\n010+ <ins><li><span style="font-size:18px;"><strong>PVC卡、书本装订</strong></span></li></ins>\n011+ <ins></ul><p><br /></p></ins>'),
(20, 52, 'desc', '<ul><li><span style="font-size:18px;"><strong>大型户外广告牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>写真喷绘</strong></span></li>\n<li><span style="font-size:18px;"><strong>展板条幅</strong></span></li>\n<li><span style="font-size:18px;"><strong>铜牌铜字</strong></span></li>\n<li><span style="font-size:18px;"><strong>LED显示屏</strong></span></li>\n<li><span style="font-size:18px;"><strong>发光字</strong></span></li>\n<li><span style="font-size:18px;"><strong>楼体亮化</strong></span></li>\n<li><span style="font-size:18px;"><strong>&nbsp;打字复印、</strong></span><span style="font-size:18px;"><strong>彩印、快照证卡</strong></span></li>\n<li><span style="font-size:18px;"><strong>菜单、桌牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>PVC卡、书本装订</strong></span></li>\n</ul><p><br /></p>', '<ul><li><span style="font-size:18px;"><strong>大型户外广告牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>写真喷绘</strong></span></li>\n<li><span style="font-size:18px;"><strong>展板条幅</strong></span></li>\n<li><span style="font-size:18px;"><strong>铜牌铜字</strong></span></li>\n<li><span style="font-size:18px;"><strong>LED显示屏</strong></span></li>\n<li><span style="font-size:18px;"><strong>发光字</strong></span></li>\n<li><span style="font-size:18px;"><strong>楼体亮化</strong></span></li>\n<li><span style="font-size:18px;"><strong>&nbsp;打字复印、</strong></span><span style="font-size:18px;"><strong>彩印、快照证卡</strong></span></li>\n<li><span style="font-size:18px;"><strong>菜单、桌牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>PVC卡、书本装订</strong></span></li>\n</ul>', '011- <del></ul><p><br /></p></del>\n011+ <ins></ul></ins>');

-- --------------------------------------------------------

--
-- 表的结构 `zt_lang`
--

DROP TABLE IF EXISTS `zt_lang`;
CREATE TABLE `zt_lang` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `lang` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL,
  `key` varchar(60) NOT NULL,
  `value` text NOT NULL,
  `system` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_mailqueue`
--

DROP TABLE IF EXISTS `zt_mailqueue`;
CREATE TABLE `zt_mailqueue` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `toList` varchar(255) NOT NULL,
  `ccList` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `addedBy` char(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `sendTime` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'wait',
  `failReason` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_module`
--

DROP TABLE IF EXISTS `zt_module`;
CREATE TABLE `zt_module` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sn` smallint(2) NOT NULL,
  `root` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `branch` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '平台',
  `name` char(60) NOT NULL DEFAULT '' COMMENT '模块',
  `parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级',
  `path` char(255) NOT NULL DEFAULT '' COMMENT '路径',
  `grade` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '顺序',
  `type` char(30) NOT NULL COMMENT '类型',
  `owner` varchar(30) NOT NULL COMMENT '修改',
  `short` varchar(30) NOT NULL COMMENT '简称',
  `state` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_module`
--

INSERT INTO `zt_module` (`id`, `sn`, `root`, `branch`, `name`, `parent`, `path`, `grade`, `order`, `type`, `owner`, `short`, `state`) VALUES
(13, 0, 12, 17, '公司ICO', 9, ',9,13,', 2, 10, 'story', '', '', NULL),
(12, 0, 12, 17, '关于我们', 0, ',12,', 1, 40, 'story', '', '', NULL),
(11, 0, 12, 17, '产品详情', 0, ',11,', 1, 30, 'story', '', '', NULL),
(10, 0, 12, 17, '产品分类', 0, ',10,', 1, 20, 'story', '', '', NULL),
(9, 0, 12, 17, '首页', 0, ',9,', 1, 10, 'story', '', '', NULL),
(15, 0, 12, 17, '宣传广告', 9, ',9,15,', 2, 30, 'story', '', '', NULL),
(16, 0, 12, 17, '产品推荐', 9, ',9,16,', 2, 40, 'story', '', '', NULL),
(17, 0, 12, 17, 'PC端QQ', 9, ',9,17,', 2, 50, 'story', '', '', NULL),
(18, 0, 12, 17, '移动端拨号（手机或电话）', 9, ',9,18,', 2, 60, 'story', '', '', NULL),
(19, 0, 12, 17, '导航分类', 10, ',10,19,', 2, 10, 'story', '', '', NULL),
(20, 0, 12, 17, '页面展示分类', 10, ',10,20,', 2, 20, 'story', '', '', NULL),
(21, 0, 12, 19, '登陆模块', 0, ',21,', 1, 10, 'story', '', '', NULL),
(22, 0, 12, 19, '服务器信息', 0, ',22,', 1, 20, 'story', '', '', NULL),
(23, 0, 12, 19, '后台入口', 0, ',23,', 1, 30, 'story', '', '', NULL),
(24, 0, 12, 19, '需求管理入口', 0, ',24,', 1, 40, 'story', '', '', NULL),
(25, 0, 12, 19, '网站设置', 0, ',25,', 1, 50, 'story', '', '', NULL),
(26, 0, 12, 19, '商品信息管理', 23, ',23,26,', 2, 10, 'story', '', '', NULL),
(27, 0, 12, 19, '基本信息设置', 25, ',25,27,', 2, 10, 'story', '', '', NULL),
(28, 0, 12, 19, '广告图设置', 25, ',25,28,', 2, 20, 'story', '', '', NULL),
(29, 0, 12, 19, '用户管理', 25, ',25,29,', 2, 30, 'story', '', '', NULL),
(30, 0, 12, 19, '个人信息管理', 23, ',23,30,', 2, 20, 'story', '', '', NULL),
(31, 0, 12, 18, '照片墙（前台）', 0, ',31,', 1, 10, 'story', '', '', NULL),
(32, 0, 12, 18, '抽奖', 0, ',32,', 1, 20, 'story', '', '', NULL),
(33, 0, 12, 18, '促销活动管理', 0, ',33,', 1, 30, 'story', '', '', NULL),
(34, 0, 12, 18, '前台登录', 0, ',34,', 1, 40, 'story', '', '', NULL),
(35, 0, 12, 18, '微信号（含扫码）', 34, ',34,35,', 2, 10, 'story', '', '', NULL),
(36, 0, 12, 18, 'QQ号（含扫码）', 34, ',34,36,', 2, 20, 'story', '', '', NULL),
(37, 0, 12, 18, '微博', 34, ',34,37,', 2, 30, 'story', '', '', NULL),
(38, 0, 12, 18, '微信服务号关联', 0, ',38,', 1, 50, 'story', '', '', NULL),
(39, 0, 12, 18, '微信订阅号关联', 0, ',39,', 1, 60, 'story', '', '', NULL),
(40, 0, 12, 18, '微信企业号关联', 0, ',40,', 1, 70, 'story', '', '', NULL),
(41, 0, 12, 18, '微信小程序关联', 0, ',41,', 1, 80, 'story', '', '', NULL),
(42, 0, 12, 17, '资讯新闻', 9, ',9,42,', 2, 70, 'story', '', '', NULL),
(43, 0, 12, 19, '资讯新闻管理', 23, ',23,43,', 2, 30, 'story', '', '', NULL),
(44, 0, 12, 20, '协助申请', 0, ',44,', 1, 10, 'story', '', '', NULL),
(45, 0, 12, 20, '运维托管', 0, ',45,', 1, 20, 'story', '', '', NULL),
(46, 0, 12, 22, '企业号协助申请', 0, ',46,', 1, 10, 'story', '', '', NULL),
(47, 0, 12, 22, '企业号运维托管', 0, ',47,', 1, 20, 'story', '', '', NULL),
(48, 0, 12, 24, '阿里钉钉协助申请', 0, ',48,', 1, 10, 'story', '', '', NULL),
(49, 0, 12, 24, '阿里钉钉运维托管', 0, ',49,', 1, 20, 'story', '', '', NULL),
(50, 0, 12, 25, 'QQ电商协助申请', 0, ',50,', 1, 10, 'story', '', '', NULL),
(51, 0, 12, 25, 'QQ电商运维托管', 0, ',51,', 1, 20, 'story', '', '', NULL),
(52, 0, 12, 17, '诚聘人才', 0, ',52,', 1, 50, 'story', '', '', NULL),
(53, 0, 12, 17, '成功案例', 0, ',53,', 1, 60, 'story', '', '', NULL),
(54, 0, 12, 21, '(个人)订阅号协助申请', 0, ',54,', 1, 10, 'story', '', '', NULL),
(55, 0, 12, 21, '(企业)订阅号协助申请', 0, ',55,', 1, 20, 'story', '', '', NULL),
(56, 0, 12, 21, '订阅号运维托管', 0, ',56,', 1, 30, 'story', '', '', NULL),
(57, 0, 2, 13, '首页', 0, ',57,', 1, 10, 'story', '', '', NULL),
(58, 0, 2, 13, '前台登录', 0, ',58,', 1, 20, 'story', '', '', NULL),
(59, 0, 2, 13, '个人中心', 0, ',59,', 1, 30, 'story', '', '', NULL),
(60, 0, 2, 13, '关于我们', 0, ',60,', 1, 40, 'story', '', '', NULL),
(61, 0, 2, 13, '诚聘人才', 0, ',61,', 1, 50, 'story', '', '', NULL),
(62, 0, 2, 14, '登录模块', 0, ',62,', 1, 10, 'story', '', '', NULL),
(63, 0, 2, 14, '服务器信息', 0, ',63,', 1, 20, 'story', '', '', NULL),
(64, 0, 2, 14, '需求管理入口', 0, ',64,', 1, 30, 'story', '', '', NULL),
(65, 0, 2, 14, '后台入口', 0, ',65,', 1, 40, 'story', '', '', NULL),
(66, 0, 2, 14, '网站设置', 0, ',66,', 1, 50, 'story', '', '', NULL),
(67, 0, 2, 13, '手机号登录', 58, ',58,67,', 2, 10, 'story', '', '', NULL),
(68, 0, 2, 13, '我的课程（老师）', 59, ',59,68,', 2, 10, 'story', '', '', NULL),
(69, 0, 2, 13, '我的课程（学生）', 59, ',59,69,', 2, 20, 'story', '', '', NULL),
(70, 0, 2, 13, '修改密码', 59, ',59,70,', 2, 30, 'story', '', '', NULL),
(71, 0, 2, 13, '退出', 59, ',59,71,', 2, 40, 'story', '', '', NULL),
(72, 0, 2, 13, '导航（上方）', 0, ',72,', 1, 60, 'story', '', '', NULL),
(73, 0, 2, 13, '首页', 72, ',72,73,', 2, 10, 'story', '', '', NULL),
(74, 0, 2, 13, '分类导航', 72, ',72,74,', 2, 20, 'story', '', '', NULL),
(75, 0, 2, 13, '形象轮播图', 57, ',57,75,', 2, 10, 'story', '', '', NULL),
(76, 0, 2, 13, '微信二维码', 57, ',57,76,', 2, 20, 'story', '', '', NULL),
(77, 0, 2, 13, '分类课程', 57, ',57,77,', 2, 30, 'story', '', '', NULL),
(78, 0, 2, 13, '教师风采', 57, ',57,78,', 2, 40, 'story', '', '', NULL),
(79, 0, 2, 13, '形象图', 60, ',60,79,', 2, 10, 'story', '', '', NULL),
(80, 0, 2, 13, '联系方式', 60, ',60,80,', 2, 20, 'story', '', '', NULL),
(81, 0, 2, 13, '课程分类列表', 0, ',81,', 1, 70, 'story', '', '', NULL),
(82, 0, 2, 13, '教师分类列表', 0, ',82,', 1, 80, 'story', '', '', NULL),
(87, 0, 2, 13, '老师详情', 82, ',82,87,', 2, 10, 'story', '', '', NULL),
(88, 0, 2, 14, '管理员登录', 62, ',62,88,', 2, 10, 'story', '', '', NULL),
(85, 0, 2, 14, '用户管理', 0, ',85,', 1, 60, 'story', '', '', NULL),
(86, 0, 2, 13, '课程详情', 81, ',81,86,', 2, 10, 'story', '', '', NULL),
(89, 0, 2, 14, '员工登录', 62, ',62,89,', 2, 20, 'story', '', '', NULL),
(94, 0, 2, 14, '分类管理', 0, ',94,', 1, 70, 'story', '', '', NULL),
(91, 0, 2, 14, '课程管理', 65, ',65,91,', 2, 20, 'story', '', '', NULL),
(92, 0, 2, 14, '老师管理', 65, ',65,92,', 2, 30, 'story', '', '', NULL),
(93, 0, 2, 14, '排课管理', 65, ',65,93,', 2, 40, 'story', '', '', NULL),
(95, 0, 2, 14, '老师课程管理（入口）', 91, ',65,91,95,', 3, 10, 'story', '', '', NULL),
(96, 0, 2, 14, '老师课程', 92, ',65,92,96,', 3, 10, 'story', '', '', NULL),
(97, 0, 2, 14, '课程学生', 96, ',65,92,96,97,', 4, 10, 'story', '', '', NULL),
(98, 0, 2, 14, '基本信息设置', 66, ',66,98,', 2, 10, 'story', '', '', NULL),
(99, 0, 2, 14, '轮播图设置', 66, ',66,99,', 2, 20, 'story', '', '', NULL),
(100, 0, 4, 9, '首页', 0, ',100,', 1, 10, 'story', '', '', NULL),
(101, 0, 4, 9, '导航', 0, ',101,', 1, 20, 'story', '', '', NULL),
(102, 0, 4, 9, '关于我们', 0, ',102,', 1, 30, 'story', '', '', NULL),
(103, 0, 4, 9, '诚聘人才', 0, ',103,', 1, 40, 'story', '', '', NULL),
(104, 1, 4, 10, '登陆模块', 0, '104', 1, 10, 'story', '', '', '正常'),
(105, 4, 4, 10, '服务器信息', 0, ',105,', 1, 20, 'story', '', '', NULL),
(106, 5, 4, 10, '需求管理入口', 0, ',106,', 1, 40, 'story', '', '', NULL),
(107, 6, 4, 10, '用户管理', 0, ',107,', 1, 50, 'story', '', '', NULL),
(108, 7, 4, 10, '分类管理', 0, ',108,', 1, 60, 'story', '', '', NULL),
(109, 0, 4, 9, '业务分类', 101, ',101,109,', 2, 10, 'story', '', '', NULL),
(110, 0, 4, 9, '成功案例', 101, ',101,110,', 2, 20, 'story', '', '', NULL),
(111, 0, 4, 9, '地图', 102, ',102,111,', 2, 10, 'story', '', '', NULL),
(112, 0, 4, 9, '联系方式', 102, ',102,112,', 2, 20, 'story', '', '', NULL),
(113, 0, 4, 9, '招聘列表', 103, ',103,113,', 2, 10, 'story', '', '', NULL),
(114, 0, 4, 9, '职位详情', 103, ',103,114,', 2, 20, 'story', '', '', NULL),
(115, 0, 4, 9, '首页轮播图', 100, ',100,115,', 2, 10, 'story', '', '', NULL),
(116, 0, 4, 9, '企业信息', 100, ',100,116,', 2, 20, 'story', '', '', NULL),
(117, 0, 4, 9, '主营业务', 100, ',100,117,', 2, 30, 'story', '', '', NULL),
(118, 0, 4, 9, '成功案例', 100, ',100,118,', 2, 40, 'story', '', '', NULL),
(119, 8, 4, 10, '后台入口', 0, ',119,', 1, 30, 'story', '', '', NULL),
(120, 2, 4, 10, '管理员登录', 104, ',104,120,', 2, 10, 'story', '', '', NULL),
(121, 3, 4, 10, '用户登录', 104, ',104,121,', 2, 20, 'story', '', '', NULL),
(122, 9, 4, 10, '主营业务管理', 119, ',119,122,', 2, 10, 'story', '', '', NULL),
(123, 10, 4, 10, '成功案例管理', 119, ',119,123,', 2, 20, 'story', '', '', NULL),
(124, 11, 4, 10, '人才招聘管理', 119, ',119,124,', 2, 30, 'story', '', '', NULL),
(125, 0, 4, 9, '用车常识', 101, ',101,125,', 2, 30, 'story', '', '', NULL),
(128, 0, 1, 7, '首页', 0, ',128,', 1, 10, 'story', '', '', NULL),
(129, 0, 1, 7, '关于我们', 0, ',129,', 1, 20, 'story', '', '', NULL),
(130, 0, 1, 7, '产品分类列表', 0, ',130,', 1, 30, 'story', '', '', NULL),
(131, 0, 1, 7, '产品详情', 0, ',131,', 1, 40, 'story', '', '', NULL),
(132, 0, 1, 8, '登录模块', 0, ',132,', 1, 10, 'story', '', '', NULL),
(133, 0, 1, 8, '配置信息（管理员）', 0, ',133,', 1, 20, 'story', '', '', NULL),
(134, 0, 1, 8, '需求管理（管理员）', 0, ',134,', 1, 30, 'story', '', '', NULL),
(135, 0, 1, 8, '分类管理（管理员）', 0, ',135,', 1, 40, 'story', '', '', NULL),
(136, 0, 1, 8, '业务后台', 0, ',136,', 1, 50, 'story', '', '', NULL),
(137, 0, 1, 8, '产品管理', 136, ',136,137,', 2, 10, 'story', '', '', NULL),
(138, 0, 1, 8, '客户管理', 136, ',136,138,', 2, 20, 'story', '', '', NULL),
(139, 0, 1, 8, '轮播广告', 136, ',136,139,', 2, 30, 'story', '', '', NULL),
(140, 0, 1, 26, '订阅号', 0, ',140,', 1, 10, 'story', '', '', NULL),
(141, 0, 1, 26, '服务号', 0, ',141,', 1, 20, 'story', '', '', NULL),
(142, 0, 1, 26, '企业号', 0, ',142,', 1, 30, 'story', '', '', NULL),
(143, 0, 1, 8, '形象图替换', 133, ',133,143,', 2, 10, 'story', '', '', NULL),
(144, 0, 1, 8, '热线维护', 133, ',133,144,', 2, 20, 'story', '', '', NULL),
(145, 0, 1, 8, 'QQ 维护', 133, ',133,145,', 2, 30, 'story', '', '', NULL),
(146, 0, 1, 8, '禅道管理系统入口', 134, ',134,146,', 2, 10, 'story', '', '', NULL),
(147, 0, 1, 8, '分类列表', 135, ',135,147,', 2, 10, 'story', '', '', NULL),
(148, 0, 1, 8, '分类-新增', 135, ',135,148,', 2, 20, 'story', '', '', NULL),
(149, 0, 1, 8, '分类-编辑', 135, ',135,149,', 2, 30, 'story', '', '', NULL),
(150, 0, 1, 8, '分类-删除', 135, ',135,150,', 2, 40, 'story', '', '', NULL),
(151, 0, 1, 8, '批量排序', 135, ',135,151,', 2, 50, 'story', '', '', NULL),
(152, 0, 1, 8, '分类产品列表', 137, ',136,137,152,', 3, 10, 'story', '', '', NULL),
(153, 0, 1, 8, '产品-新增', 137, ',136,137,153,', 3, 20, 'story', '', '', NULL),
(154, 0, 1, 8, '产品-编辑', 137, ',136,137,154,', 3, 30, 'story', '', '', NULL),
(155, 0, 1, 8, '上传/替换图片', 137, ',136,137,155,', 3, 40, 'story', '', '', NULL),
(156, 0, 1, 8, '发布/下线', 137, ',136,137,156,', 3, 50, 'story', '', '', NULL),
(157, 0, 1, 8, '轮播图列表', 139, ',136,139,157,', 3, 10, 'story', '', '', NULL),
(158, 0, 1, 8, '广告信息编辑', 139, ',136,139,158,', 3, 20, 'story', '', '', NULL),
(159, 0, 1, 8, '替换广告图', 139, ',136,139,159,', 3, 30, 'story', '', '', NULL),
(160, 0, 1, 8, '客户列表', 138, ',136,138,160,', 3, 10, 'story', '', '', NULL),
(161, 0, 1, 8, '客户详情', 138, ',136,138,161,', 3, 20, 'story', '', '', NULL),
(162, 0, 1, 8, '客户查询', 138, ',136,138,162,', 3, 30, 'story', '', '', NULL),
(163, 0, 1, 8, '客户添加', 138, ',136,138,163,', 3, 40, 'story', '', '', NULL),
(164, 0, 1, 8, '客户编辑', 138, ',136,138,164,', 3, 50, 'story', '', '', NULL),
(165, 0, 1, 8, '客户删除', 138, ',136,138,165,', 3, 60, 'story', '', '', NULL),
(166, 0, 1, 7, '二维码', 128, ',128,166,', 2, 20, 'story', '', '', NULL),
(167, 0, 1, 7, '手机端拨电话', 128, ',128,167,', 2, 30, 'story', '', '', NULL),
(168, 0, 1, 7, 'PC端QQ聊', 128, ',128,168,', 2, 40, 'story', '', '', NULL),
(169, 0, 1, 7, '广告轮播', 128, ',128,169,', 2, 50, 'story', '', '', NULL),
(170, 0, 1, 7, '推荐产品&服务', 128, ',128,170,', 2, 60, 'story', '', '', NULL),
(171, 0, 1, 7, '网站名（首页链接）', 128, ',128,171,', 2, 10, 'story', '', '', NULL),
(172, 0, 1, 7, '主营业务入口', 128, ',128,172,', 2, 70, 'story', '', '', NULL),
(173, 0, 1, 7, '关于我们入口', 128, ',128,173,', 2, 80, 'story', '', '', NULL),
(174, 0, 1, 7, '更多（主营业务入口）', 170, ',128,170,174,', 3, 10, 'story', '', '', NULL),
(175, 0, 1, 7, '推荐产品列表', 170, ',128,170,175,', 3, 20, 'story', '', '', NULL),
(176, 0, 1, 7, '推荐产品详情（入口）', 170, ',128,170,176,', 3, 30, 'story', '', '', NULL),
(177, 0, 1, 7, '广告详情（入口）', 169, ',128,169,177,', 3, 10, 'story', '', '', NULL),
(178, 0, 1, 7, '企业形象照片', 129, ',129,178,', 2, 10, 'story', '', '', NULL),
(179, 0, 1, 7, '主营业务介绍', 129, ',129,179,', 2, 20, 'story', '', '', NULL),
(180, 0, 1, 7, '联系方式', 129, ',129,180,', 2, 30, 'story', '', '', NULL),
(181, 0, 1, 7, '付款二维码', 129, ',129,181,', 2, 40, 'story', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zt_mt_prodservice`
--

DROP TABLE IF EXISTS `zt_mt_prodservice`;
CREATE TABLE `zt_mt_prodservice` (
  `id` smallint(6) NOT NULL COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` decimal(10,0) DEFAULT NULL COMMENT '商品尺寸',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_mt_prodservice`
--

INSERT INTO `zt_mt_prodservice` (`id`, `mark`, `name`, `content`, `weight`, `state`, `money`, `smoney`, `wlmoney`, `num`, `sellnum`, `istj`, `atime`, `sn`, `cate`, `path`, `img`, `moder`, `utime`) VALUES
(50, '', '找保姆', '', '0', NULL, '0', '0', '0', 1, NULL, 1, NULL, 1, 62, '/Product/2017-01-24/', '588727aae0a5d.png', '腰立辉', '2017-01-24 10:08:42'),
(51, '', '聘月嫂', '', '0', NULL, '0', '0', '0', 1, NULL, 1, NULL, 1, 62, '/Product/2017-01-24/', '5887249e7ed61.png', '腰立辉', '2017-01-24 09:55:42'),
(52, '', '钟点工', '', '0', NULL, '0', '0', '0', 1, NULL, 1, NULL, 1, 62, '/Product/2017-01-24/', '5887250ec196f.png', '腰立辉', '2017-01-24 09:57:34'),
(53, '', '拼家政', '', '0', NULL, '0', '0', '0', 1, NULL, 1, NULL, 1, 62, '/Product/2017-01-24/', '588724199cb81.png', '腰立辉', '2017-01-24 09:53:29'),
(54, '', '人身意外险', '', '0', NULL, '0', '0', '0', 1, NULL, 0, NULL, 1, 3, NULL, NULL, '腰立辉', '2017-01-24 09:07:16'),
(55, '', '职工社保(三险)', '', '0', NULL, '0', '0', '0', 1, NULL, 1, NULL, 1, 3, NULL, NULL, '腰立辉', '2017-01-24 09:48:07'),
(57, '', '健康体检(基本)', '', '0', NULL, '0', '0', '0', 1, NULL, 1, NULL, 1, 63, NULL, NULL, '腰立辉', '2017-01-24 09:47:56'),
(58, '', '岗前培训', '', '0', NULL, '0', '0', '0', 1, NULL, 1, NULL, 1, 64, NULL, NULL, '腰立辉', '2017-01-24 09:28:12'),
(59, '', '技能培训(月嫂)', '', '0', NULL, '0', '0', '0', 1, NULL, 0, NULL, 1, 64, NULL, NULL, '腰立辉', '2017-01-24 09:48:28');

-- --------------------------------------------------------

--
-- 表的结构 `zt_product`
--

DROP TABLE IF EXISTS `zt_product`;
CREATE TABLE `zt_product` (
  `id` mediumint(8) UNSIGNED NOT NULL,
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
  `order` mediumint(8) UNSIGNED NOT NULL COMMENT '顺序',
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
  `version` varchar(15) DEFAULT 'V1.0.0' COMMENT '版本号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_product`
--

INSERT INTO `zt_product` (`id`, `name`, `code`, `type`, `status`, `desc`, `PO`, `QD`, `RD`, `acl`, `whitelist`, `createdBy`, `createdDate`, `createdVersion`, `order`, `deleted`, `short`, `phone`, `tel`, `qq`, `qz`, `db`, `web`, `keywords`, `adress`, `url`, `path`, `img`, `utime`, `record`, `version`) VALUES
(1, '秀丽广告', 'Xiuli', 'platform', 'normal', '<ul><li><span style="font-size:18px;"><strong>大型户外广告牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>写真喷绘</strong></span></li>\n<li><span style="font-size:18px;"><strong>展板条幅</strong></span></li>\n<li><span style="font-size:18px;"><strong>铜牌铜字</strong></span></li>\n<li><span style="font-size:18px;"><strong>LED显示屏</strong></span></li>\n<li><span style="font-size:18px;"><strong>发光字</strong></span></li>\n<li><span style="font-size:18px;"><strong>楼体亮化</strong></span></li>\n<li><span style="font-size:18px;"><strong>&nbsp;打字复印、</strong></span><span style="font-size:18px;"><strong>彩印、快照证卡</strong></span></li>\n<li><span style="font-size:18px;"><strong>菜单、桌牌</strong></span></li>\n<li><span style="font-size:18px;"><strong>PVC卡、书本装订</strong></span></li>\n</ul>', 'zhangxl', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:23:39', '8.2.4', 5, '0', '秀丽', '13463925200', '0319-7186126', '2830690782', 'Xiuli', 'xl_', '临城-秀丽广告', '', '临城兴临街转盘北200米路西', 'www.xiuliguanggao.com', '/Setting/2017-01-24/', '588706de454f9.png', '2017-02-04 01:52:29', '冀ICP备17001594号', 'V1.0.0'),
(2, '拓才教育', 'Tuocai', 'platform', 'normal', '', 'liangxw', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:24:09', '8.2.4', 10, '0', '拓才', NULL, '0311-89849355', '285981407', 'Tuocai', 'tc_', '石家庄-拓才教育', '拓才,拓才教育,一对一,个性化,课外辅导,教育培训，石家庄课外辅导', '石家庄', 'www.tuocaijiaoyu.com', '/Setting/adress/2016-12-13/', '584fb53ddc613.jpg', '2017-01-13 02:20:29', NULL, 'V1.0.0'),
(3, '麦田双辉', 'Mtsh', 'platform', 'normal', '轻武器额', 'yangyh', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:24:52', '8.2.4', 15, '0', '双辉', '18801043607', '0319-7167618', '83000892', 'Mtsh', 'mt_', '麦田双辉-服务中心', NULL, '临城', 'www.xiuliguanggao.com/index.php/Mtsh', '/Setting/2017-01-19/', '58805b69780c6.png', '2017-01-24 09:20:05', '', 'V1.0.0'),
(4, '安顺汽修', 'Anshun', 'platform', 'normal', '', 'wangxl', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:25:22', '8.2.4', 20, '0', '安顺', '13785900902', NULL, '1058793920', 'Anshun', 'as_', '临城-安顺汽车服务中心', NULL, '临城县射兽汽修市场', 'www.xiuliguanggao.com/index.php/Anshun', '/Setting2016-12-18/', '585683f4127fd.jpg', '2017-01-13 02:25:47', NULL, 'V1.0.0'),
(5, '测试管理', 'Test', 'platform', 'normal', '自主设计的测试管理平台', 'yao', 'jiaxn', 'yao', 'private', '', 'jeff', '2017-01-08 22:29:58', '8.2.4', 25, '0', '测试', NULL, NULL, NULL, NULL, 'test_', '测试', NULL, NULL, NULL, NULL, NULL, '2017-01-24 08:11:31', NULL, 'V1.0.0'),
(10, '太平洋加达软件产品', 'PJD', 'platform', 'normal', '', 'dengye', 'yao', 'jeff', 'private', '', 'jeff', '2016-12-20 10:44:17', '8.2.4', 50, '0', '加达', NULL, NULL, NULL, NULL, 'jd_', NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-24 08:10:41', NULL, 'V1.0.0'),
(12, '标准网站', 'Demo', 'platform', 'normal', '标准产品', 'yao', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-12 12:44:28', '8.2.4', 60, '0', 'Demo', '18801043607', NULL, '83000892', 'Demo', 'demo_', '标准', NULL, NULL, 'www.xiuliguanggao.com/index.php/Demo', NULL, NULL, '2017-01-19 04:27:02', NULL, 'V1.0.0'),
(6, '智慧信达', 'Xinda', 'platform', 'normal', '', 'liuyj', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-19 12:26:42', '8.2.4', 70, '0', '信达', NULL, NULL, NULL, NULL, 'xd_', NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-19 05:52:28', NULL, 'V1.0.0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_productplan`
--

DROP TABLE IF EXISTS `zt_productplan`;
CREATE TABLE `zt_productplan` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL,
  `branch` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(90) NOT NULL,
  `desc` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_productplan`
--

INSERT INTO `zt_productplan` (`id`, `product`, `branch`, `title`, `desc`, `begin`, `end`, `deleted`) VALUES
(1, 1, 7, '秀丽广告 V1.0.0', '网站平台的搭建', '2017-01-18', '2017-02-05', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_project`
--

DROP TABLE IF EXISTS `zt_project`;
CREATE TABLE `zt_project` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `isCat` enum('1','0') NOT NULL DEFAULT '0',
  `catID` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sprint',
  `parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(90) NOT NULL COMMENT '项目',
  `code` varchar(45) NOT NULL COMMENT '代码',
  `begin` date NOT NULL COMMENT '开始',
  `end` date NOT NULL COMMENT '结束',
  `days` smallint(5) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `statge` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `pri` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `openedVersion` varchar(20) NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `canceledBy` varchar(30) NOT NULL DEFAULT '',
  `canceledDate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `PO` varchar(30) NOT NULL DEFAULT '' COMMENT '产品经理',
  `PM` varchar(30) NOT NULL DEFAULT '' COMMENT '项目经理',
  `QD` varchar(30) NOT NULL DEFAULT '' COMMENT '测试',
  `RD` varchar(30) DEFAULT '' COMMENT '研发',
  `team` varchar(30) NOT NULL,
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `order` mediumint(8) UNSIGNED NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `testgp` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_project`
--

INSERT INTO `zt_project` (`id`, `isCat`, `catID`, `type`, `parent`, `name`, `code`, `begin`, `end`, `days`, `status`, `statge`, `pri`, `desc`, `openedBy`, `openedDate`, `openedVersion`, `closedBy`, `closedDate`, `canceledBy`, `canceledDate`, `PO`, `PM`, `QD`, `RD`, `team`, `acl`, `whitelist`, `order`, `deleted`, `testgp`) VALUES
(2, '0', 0, 'sprint', 0, '测试平台 V1.0.0', 'Auto1701.1', '2017-01-08', '2017-01-15', 5, 'wait', '1', '1', 'qwuyequiwyeiqu', '', 0, '8.2.4', '', 0, '', 0, '', '', '', '', 'qwewq', 'private', '', 15, '0', 'Auto'),
(8, '0', 0, 'sprint', 0, '公司名片和商务合作(V1.0.0)', 'PJD1612.1', '2016-12-05', '2016-12-21', 13, 'doing', '1', '1', '', '', 0, '8.2.4', '', 0, '', 0, 'lily_deng', 'yao', 'benjamin', 'yangyi', '公司名片和商务合作', 'private', '', 40, '0', 'PJD'),
(9, '0', 0, 'sprint', 0, '微网站1月份上线(V1.1.0)', 'PJD1612.6', '2016-12-21', '2017-01-10', 15, 'done', '1', '1', '<p>1.微网站登录</p>\n<p>&nbsp;2.移民项目</p>\n<p>&nbsp;3.专享活动</p>\n<p>&nbsp;4.生活体验&nbsp;</p>\n<p>5.移民评估&nbsp;</p>\n<p>6.国家管理</p>\n<p>&nbsp;7.微网站后台修改个人密码</p>\n<p>&nbsp;8.公司名片的项目列表，加载后台项目管理的项目，且添加项目详情的链接 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '', 0, '8.2.4', '', 0, '', 0, 'dengye', 'Wain', 'yao', 'jeff', 'PJD', 'private', '', 45, '0', 'PJD'),
(10, '0', 0, 'sprint', 0, '顾问名片优化', '互联网', '2016-12-27', '2017-01-20', 19, 'wait', '1', '1', '', '', 0, '8.2.4', '', 0, '', 0, '', '', '', '', '顾问名片优化', 'private', '', 50, '1', ''),
(11, '0', 0, 'sprint', 0, '微网站一期V1.2.0', 'V1.2.0', '2017-01-12', '2017-01-25', 10, 'doing', '1', '1', '基于微信端做的微网站，本期功能主要实现春节版以及移民评估', '', 0, '8.2.4', '', 0, '', 0, 'dengye', 'Wain', 'benjamin', 'jeff', '微网站一期', 'private', '', 55, '0', 'PJD'),
(12, '0', 0, 'sprint', 0, '微网站一期V1.3.0', '微站1.3', '2017-02-03', '2017-03-01', 19, 'wait', '1', '1', '<p>上线以下功能：</p>\n<p></p><ul><li>二级渠道管理</li>\n<li>呼叫中心对接</li>\n<li>个人中心（不含CRM相关功能）</li>\n<li>移民管家</li>\n</ul>', '', 0, '8.2.4', '', 0, '', 0, '', '', '', '', '微网站一期V1.3.0', 'open', '', 60, '0', 'PJD'),
(13, '0', 0, 'sprint', 0, '门户网站V1.0', '门户1.0', '2017-02-03', '2017-03-01', 19, 'wait', '1', '1', '作为太平洋各业务和各功能的跳转入口', '', 0, '8.2.4', '', 0, '', 0, '', '', '', '', '门户网站V1.0', 'open', '', 65, '0', 'PJD'),
(14, '0', 0, 'sprint', 0, '秀丽广告网站 V1.0.0', 'Xiuli1701.1', '2017-01-17', '2017-02-05', 14, 'wait', '1', '1', '搭建出网站平台', '', 0, '8.2.4', '', 0, '', 0, 'zhangxl', 'yao', 'jiaxn', 'yao', 'yaolh', 'private', '', 70, '0', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zt_projectproduct`
--

DROP TABLE IF EXISTS `zt_projectproduct`;
CREATE TABLE `zt_projectproduct` (
  `project` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL,
  `branch` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_projectproduct`
--

INSERT INTO `zt_projectproduct` (`project`, `product`, `branch`) VALUES
(8, 10, 0),
(9, 10, 0),
(2, 5, 0),
(14, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `zt_projectstory`
--

DROP TABLE IF EXISTS `zt_projectstory`;
CREATE TABLE `zt_projectstory` (
  `project` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `product` mediumint(8) UNSIGNED NOT NULL,
  `story` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `version` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_projectstory`
--

INSERT INTO `zt_projectstory` (`project`, `product`, `story`, `version`) VALUES
(1, 5, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `zt_release`
--

DROP TABLE IF EXISTS `zt_release`;
CREATE TABLE `zt_release` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `branch` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `build` mediumint(8) UNSIGNED NOT NULL,
  `name` char(30) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `leftBugs` text NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_story`
--

DROP TABLE IF EXISTS `zt_story`;
CREATE TABLE `zt_story` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `branch` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `plan` text NOT NULL,
  `source` varchar(20) NOT NULL,
  `sourceNote` varchar(255) NOT NULL,
  `fromBug` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `pri` tinyint(3) UNSIGNED NOT NULL DEFAULT '3',
  `estimate` float UNSIGNED NOT NULL,
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
  `duplicateStory` mediumint(8) UNSIGNED NOT NULL,
  `version` smallint(6) NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_story`
--

INSERT INTO `zt_story` (`id`, `product`, `branch`, `module`, `plan`, `source`, `sourceNote`, `fromBug`, `title`, `keywords`, `type`, `pri`, `estimate`, `status`, `color`, `stage`, `mailto`, `openedBy`, `openedDate`, `assignedTo`, `assignedDate`, `lastEditedBy`, `lastEditedDate`, `reviewedBy`, `reviewedDate`, `closedBy`, `closedDate`, `closedReason`, `toBug`, `childStories`, `linkStories`, `duplicateStory`, `version`, `deleted`) VALUES
(1, 5, 0, 0, '', '', '', 0, 'asdadsa', '', '', 0, 0, 'active', '', 'wait', '', 'admin', '2017-01-08 22:39:56', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', '', 0, '', '', 0, 1, '0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_storyspec`
--

DROP TABLE IF EXISTS `zt_storyspec`;
CREATE TABLE `zt_storyspec` (
  `story` mediumint(9) NOT NULL,
  `version` smallint(6) NOT NULL,
  `title` varchar(90) NOT NULL,
  `spec` text NOT NULL,
  `verify` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_storyspec`
--

INSERT INTO `zt_storyspec` (`story`, `version`, `title`, `spec`, `verify`) VALUES
(1, 1, 'asdadsa', 'zxcz', '');

-- --------------------------------------------------------

--
-- 表的结构 `zt_storystage`
--

DROP TABLE IF EXISTS `zt_storystage`;
CREATE TABLE `zt_storystage` (
  `story` mediumint(8) UNSIGNED NOT NULL,
  `branch` mediumint(8) UNSIGNED NOT NULL,
  `stage` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_task`
--

DROP TABLE IF EXISTS `zt_task`;
CREATE TABLE `zt_task` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `project` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `story` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `fromBug` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pri` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `estimate` float UNSIGNED NOT NULL,
  `consumed` float UNSIGNED NOT NULL,
  `left` float UNSIGNED NOT NULL,
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
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_task`
--

INSERT INTO `zt_task` (`id`, `project`, `module`, `story`, `storyVersion`, `fromBug`, `name`, `type`, `pri`, `estimate`, `consumed`, `left`, `deadline`, `status`, `color`, `mailto`, `desc`, `openedBy`, `openedDate`, `assignedTo`, `assignedDate`, `estStarted`, `realStarted`, `finishedBy`, `finishedDate`, `canceledBy`, `canceledDate`, `closedBy`, `closedDate`, `closedReason`, `lastEditedBy`, `lastEditedDate`, `deleted`) VALUES
(1, 1, 0, 0, 1, 0, '编写测试用例', 'test', 0, 0, 20, 0, '0000-00-00', 'closed', '', '', '', 'admin', '2016-08-04 19:06:37', 'closed', '2016-12-21 09:29:23', '0000-00-00', '0000-00-00', 'benjamin', '2016-12-21 09:29:19', '', '0000-00-00 00:00:00', 'benjamin', '2016-12-21 09:29:23', 'done', 'benjamin', '2016-12-21 09:29:23', '0'),
(2, 1, 0, 0, 1, 0, '测试', 'test', 0, 0, 100, 0, '0000-00-00', 'closed', '', '', '', 'admin', '2016-08-04 19:06:48', 'closed', '2016-12-21 09:29:41', '0000-00-00', '2016-08-05', 'benjamin', '2016-12-21 09:29:38', '', '0000-00-00 00:00:00', 'benjamin', '2016-12-21 09:29:41', 'done', 'benjamin', '2016-12-21 09:29:41', '0'),
(6, 10, 275, 6, 1, 0, '产品', 'design', 1, 0, 4, 0, '0000-00-00', 'done', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-05 17:02:58', '0000-00-00', '0000-00-00', 'annie', '2016-12-30 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'annie', '2017-01-05 17:02:58', '0'),
(7, 10, 275, 6, 1, 0, '前端', 'devel', 3, 0, 0, 0, '0000-00-00', 'cancel', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-17 11:06:33', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 11:06:33', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:06:33', '0'),
(8, 10, 275, 6, 1, 0, '开发', 'devel', 3, 0, 0, 0, '0000-00-00', 'cancel', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-17 11:06:33', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 11:06:33', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:06:33', '0'),
(9, 10, 275, 6, 1, 0, '测试', 'test', 3, 0, 0, 0, '0000-00-00', 'cancel', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2017-01-17 11:06:33', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 11:06:33', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:06:33', '0'),
(10, 10, 275, 6, 1, 0, '设计', 'design', 3, 0, 2, 0, '0000-00-00', 'done', '', '', '', 'lily_deng', '2016-12-27 11:57:29', 'lily_deng', '2016-12-27 17:38:04', '0000-00-00', '0000-00-00', 'abby', '2016-12-27 17:38:04', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'abby', '2016-12-27 17:38:04', '0'),
(11, 9, 0, 0, 1, 0, '系统测试第一轮', 'test', 0, 16, 16, 0, '2017-01-06', 'closed', '', '', '', 'yao', '2017-01-05 11:28:42', 'closed', '2017-01-11 09:53:41', '2017-01-05', '2017-01-06', 'yao', '2017-01-07 14:14:04', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:41', 'done', 'yao', '2017-01-11 09:53:41', '0'),
(12, 9, 0, 0, 1, 0, '系统测试第二轮', 'test', 0, 16, 16, 0, '2017-01-07', 'closed', '', '', '', 'yao', '2017-01-05 11:29:24', 'closed', '2017-01-11 09:53:35', '2017-01-06', '2017-01-07', 'yao', '2017-01-09 16:10:22', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:35', 'done', 'yao', '2017-01-11 09:53:35', '0'),
(13, 9, 0, 0, 1, 0, '系统测试第三轮', 'test', 0, 16, 16, 0, '2017-01-09', 'closed', '', '', '', 'yao', '2017-01-05 11:30:24', 'closed', '2017-01-11 09:53:28', '2017-01-07', '2017-01-10', 'yao', '2017-01-10 14:38:38', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:28', 'done', 'yao', '2017-01-11 09:53:28', '0'),
(14, 9, 0, 0, 1, 0, '仿真环境验证', 'test', 0, 8, 8, 0, '2017-01-10', 'closed', '', '', '', 'yao', '2017-01-05 11:30:57', 'closed', '2017-01-11 09:53:23', '2017-01-10', '2017-01-10', 'yao', '2017-01-11 09:43:21', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:23', 'done', 'yao', '2017-01-11 09:53:23', '0'),
(15, 9, 0, 0, 1, 0, '线上环境验证', 'test', 0, 4, 4, 0, '2017-01-10', 'closed', '', '', '', 'yao', '2017-01-05 11:31:34', 'closed', '2017-01-11 09:53:14', '2017-01-10', '2017-01-11', 'yao', '2017-01-11 09:43:33', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 09:53:14', 'done', 'yao', '2017-01-11 09:53:14', '0'),
(16, 9, 0, 0, 1, 0, '产品需求整理（1月12日完成）', 'manage', 1, 1, 0, 1, '2017-01-13', 'doing', '', '', '<ol><li>哈卡坚实的</li>\n<li>卡圣诞节啊</li>\n<li>开讲啦收到</li>\n</ol><p><img src="data/upload/1/201701/1113255206865l47.jpg" alt="" /></p>', 'yao', '2017-01-11 13:25:14', 'loki', '2017-01-11 13:58:31', '2017-01-03', '2017-01-11', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 13:58:31', '1'),
(17, 9, 0, 0, 1, 0, 'UI设计计划（1月13日完成）', 'manage', 0, 1, 0, 1, '2017-01-11', 'closed', '', '', '<p>asdas</p>\n<p><br /></p>\n<p><br /></p>\n<p>ASA</p>', 'yao', '2017-01-11 13:27:05', 'closed', '2017-01-16 09:39:43', '2017-01-03', '0000-00-00', '', '0000-00-00 00:00:00', 'abby', '2017-01-16 09:39:34', 'abby', '2017-01-16 09:39:43', 'cancel', 'abby', '2017-01-16 09:39:43', '1'),
(18, 9, 0, 0, 1, 0, '研发阶段（1月18日完成）', 'manage', 0, 1, 0, 1, '2017-01-13', 'wait', '', '', '', 'yao', '2017-01-11 13:36:04', 'jeff', '2017-01-11 13:36:04', '2017-01-10', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 13:54:32', '1'),
(19, 9, 0, 0, 1, 0, '测试验收（1月20日完成）', 'manage', 0, 1, 0, 52, '2017-01-13', 'doing', '', '', '', 'yao', '2017-01-11 13:36:27', 'benjamin', '2017-01-12 09:32:49', '2017-01-12', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'benjamin', '2017-01-12 09:33:22', '1'),
(20, 9, 275, 6, 1, 0, '阿萨德撒', 'devel', 0, 12, 1, 11, '2017-01-12', 'cancel', '', '', 'qwe', 'yao', '2017-01-11 13:39:36', 'yao', '2017-01-11 14:02:36', '2017-01-10', '2017-01-11', '', '0000-00-00 00:00:00', 'yao', '2017-01-11 14:02:36', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 14:02:36', '1'),
(21, 9, 0, 0, 1, 0, '仿真验收（1月24完成）', 'manage', 0, 1, 0, 1, '0000-00-00', 'wait', '', '', '', 'yao', '2017-01-11 13:56:30', 'dengye', '2017-01-11 13:56:30', '2017-01-24', '2017-01-24', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-11 13:56:45', '1'),
(22, 9, 0, 0, 1, 0, '线上环境验证（1月25日完成）', 'manage', 0, 1, 0, 1, '2017-01-25', 'wait', '', '', '', 'yao', '2017-01-11 13:57:19', 'dengye', '2017-01-11 13:57:19', '2017-01-25', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '1'),
(23, 9, 243, 8, 3, 0, '设计他是前台页面', 'devel', 0, 3, 0, 3, '2017-01-13', 'wait', '', '', '萨qweq', 'yao', '2017-01-11 14:03:24', 'flora', '2017-01-11 14:03:24', '2017-01-11', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '1'),
(24, 11, 0, 0, 1, 0, '产品设计阶段（2017-1-12完成）', 'manage', 0, 1, 4, 0, '2017-01-12', 'done', '', '', '', 'yao', '2017-01-12 15:11:26', 'yao', '2017-01-12 15:24:42', '2017-01-02', '2017-01-12', 'yao', '2017-01-12 15:24:42', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-12 15:24:42', '1'),
(25, 11, 0, 0, 1, 0, 'UI设计计划（1月13日完成）', 'manage', 0, 0, 0, 0, '2017-01-13', 'closed', '', '', '', 'yao', '2017-01-12 15:11:54', 'closed', '2017-01-16 09:40:46', '2017-01-10', '0000-00-00', '', '0000-00-00 00:00:00', 'abby', '2017-01-16 09:40:42', 'abby', '2017-01-16 09:40:46', 'cancel', 'abby', '2017-01-16 09:40:46', '1'),
(26, 11, 245, 52, 1, 0, '问卷-新建问卷-开发', 'devel', 0, 4, 1, 4, '2017-01-20', 'doing', '', '', '', 'dengye', '2017-01-16 16:38:12', 'Gorge', '2017-01-16 16:38:12', '2017-01-16', '2017-01-16', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'Gorge', '2017-01-17 15:16:12', '0'),
(27, 11, 0, 0, 1, 0, '产品设计阶段', 'manage', 0, 40, 0, 40, '2017-01-10', 'wait', '', '', '', 'yao', '2017-01-17 10:44:27', 'dengye', '2017-01-17 10:44:27', '2016-12-28', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0'),
(28, 11, 0, 0, 1, 0, '产品冒烟测试（顾鹏）【1-19完成】', 'manage', 0, 8, 0, 8, '2017-01-19', 'wait', '', '', '', 'yao', '2017-01-17 10:45:44', 'loki', '2017-01-17 10:45:44', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:09:48', '0'),
(29, 11, 0, 0, 1, 0, '测试冒烟测试（魏斌）【1-19完成】', 'manage', 0, 8, 0, 8, '2017-01-19', 'doing', '', '', '', 'yao', '2017-01-17 10:49:20', 'benjamin', '2017-01-17 10:49:20', '2017-01-17', '2017-01-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'benjamin', '2017-01-17 13:48:41', '0'),
(30, 11, 0, 0, 1, 0, '第一轮测试（魏斌）【1-23完成】', 'test', 0, 16, 0, 16, '2017-01-23', 'wait', '', '', '', 'yao', '2017-01-17 10:52:52', 'benjamin', '2017-01-17 10:52:52', '2017-01-20', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:11:51', '0'),
(31, 11, 0, 0, 1, 0, '第一轮测试（yao）【1-23完成】', 'test', 0, 16, 0, 16, '2017-01-23', 'wait', '', '', '', 'yao', '2017-01-17 10:53:25', 'yao', '2017-01-17 10:53:36', '2017-01-20', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:12:00', '0'),
(32, 11, 0, 0, 1, 0, '第二轮测试（魏斌）【1-24完成】', 'test', 0, 8, 0, 8, '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:54:43', 'benjamin', '2017-01-17 10:54:43', '2017-01-23', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:13:14', '0'),
(33, 11, 0, 0, 1, 0, '第二轮测试（yao）【1-24完成】', 'test', 0, 8, 0, 8, '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:56:03', 'yao', '2017-01-17 10:56:03', '2017-01-23', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:13:47', '0'),
(34, 11, 0, 0, 1, 0, '仿真环境验证（腰立辉）【1-24完成】', 'test', 0, 4, 0, 4, '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:56:56', 'yao', '2017-01-17 10:56:56', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:15:31', '0'),
(35, 11, 0, 0, 1, 0, '仿真环境验证（魏斌）【1-24完成】', 'test', 0, 4, 0, 4, '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:58:38', 'benjamin', '2017-01-17 10:58:38', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:00', '0'),
(36, 11, 0, 0, 1, 0, '仿真环境验证（邓烨）【1-24完成】', 'test', 0, 4, 0, 4, '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 10:59:25', 'dengye', '2017-01-17 10:59:25', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:11', '0'),
(37, 11, 0, 0, 1, 0, '仿真环境验证（顾鹏）【1-24完成】', 'test', 0, 4, 0, 4, '2017-01-24', 'wait', '', '', '', 'yao', '2017-01-17 11:00:00', 'loki', '2017-01-17 11:00:00', '2017-01-24', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:23', '0'),
(38, 11, 0, 0, 1, 0, '线上环境验证（顾鹏）【1-25完成】', 'test', 0, 2, 0, 2, '2017-01-25', 'wait', '', '', '', 'yao', '2017-01-17 11:01:34', 'loki', '2017-01-17 11:01:34', '2017-01-25', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:16:43', '0'),
(39, 11, 0, 0, 1, 0, '线上环境验证（邓烨）【1-24完成】', 'test', 0, 2, 0, 2, '2017-01-25', 'wait', '', '', '', 'yao', '2017-01-17 11:02:13', 'dengye', '2017-01-17 11:02:13', '2017-01-25', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:17:09', '0'),
(40, 11, 0, 0, 1, 0, '产品冒烟测试（邓烨）【1-19完成】', 'test', 0, 8, 0, 8, '2017-01-19', 'wait', '', '', '', 'yao', '2017-01-17 11:03:59', 'dengye', '2017-01-17 11:03:59', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 11:10:25', '0'),
(41, 11, 0, 0, 1, 0, '测试冒烟测试（yao）【1-19完成】', 'test', 0, 8, 8, 4, '2017-01-19', 'doing', '', '', '', 'yao', '2017-01-17 11:04:31', 'yao', '2017-01-17 11:04:31', '2017-01-17', '2017-01-17', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-18 18:03:05', '0'),
(42, 11, 259, 59, 1, 0, '微信服务号-移民评估', 'devel', 0, 8, 0, 8, '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:41:51', 'yangyi', '2017-01-17 14:41:51', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0'),
(43, 11, 262, 61, 1, 0, '微信服务号-专享活动', 'devel', 0, 4, 0, 4, '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:42:56', 'loki', '2017-01-17 15:37:25', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:25', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:25', '1'),
(44, 11, 266, 62, 1, 0, '微信服务号-移民项目-列表', 'devel', 0, 4, 0, 4, '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:43:44', 'loki', '2017-01-17 15:37:16', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:16', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:16', '1'),
(45, 11, 266, 63, 1, 0, '微信服务号-移民项目-详情', 'devel', 0, 4, 0, 4, '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:44:16', 'loki', '2017-01-17 15:37:29', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:29', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:29', '1'),
(46, 11, 275, 60, 1, 0, '微信服务号-公司名片', 'devel', 0, 4, 0, 4, '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:44:55', 'yangyi', '2017-01-17 15:41:23', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'loki', '2017-01-17 15:41:23', '0'),
(47, 11, 269, 64, 1, 0, '微信服务号-生活体验', 'devel', 0, 4, 0, 4, '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:45:18', 'loki', '2017-01-17 15:37:32', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:32', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:32', '1'),
(48, 11, 355, 6, 1, 0, '公司名片新增选定管家功能', 'devel', 0, 4, 0, 4, '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:45:49', 'yangyi', '2017-01-17 14:45:49', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'loki', '2017-01-17 15:42:36', '0'),
(49, 11, 355, 7, 1, 0, '名片项目列表增加项目类型标识', 'devel', 0, 4, 0, 4, '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:46:14', 'yangyi', '2017-01-17 14:46:14', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0'),
(50, 11, 356, 65, 1, 0, '微信服务号-商务合作', 'devel', 0, 4, 0, 4, '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:46:50', 'loki', '2017-01-17 15:37:36', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:36', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:36', '1'),
(51, 11, 356, 66, 1, 0, '微信服务号-商务合作-反馈信息', 'devel', 0, 4, 0, 4, '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:47:16', 'loki', '2017-01-17 15:37:39', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:39', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:39', '1'),
(52, 11, 357, 58, 1, 0, '微信服务号-用户登录', 'devel', 0, 4, 0, 4, '2017-01-19', 'wait', '', '', '', 'loki', '2017-01-17 14:47:44', 'yangyi', '2017-01-17 14:47:44', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0'),
(53, 11, 358, 68, 1, 0, '更新业务统计埋点', 'devel', 0, 4, 0, 4, '2017-01-19', 'cancel', '', '', '', 'loki', '2017-01-17 14:48:20', 'loki', '2017-01-17 15:37:46', '2017-01-17', '0000-00-00', '', '0000-00-00 00:00:00', 'yao', '2017-01-17 15:37:46', '', '0000-00-00 00:00:00', '', 'yao', '2017-01-17 15:37:46', '1');

-- --------------------------------------------------------

--
-- 表的结构 `zt_taskestimate`
--

DROP TABLE IF EXISTS `zt_taskestimate`;
CREATE TABLE `zt_taskestimate` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `task` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `left` float UNSIGNED NOT NULL DEFAULT '0',
  `consumed` float UNSIGNED NOT NULL,
  `account` char(30) NOT NULL DEFAULT '',
  `work` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_taskestimate`
--

INSERT INTO `zt_taskestimate` (`id`, `task`, `date`, `left`, `consumed`, `account`, `work`) VALUES
(34, 41, '2017-01-18', 4, 4, 'yao', '仅验收公司名片春节版的主流程'),
(5, 12, '2017-01-05', 16, 0, 'yao', ''),
(6, 6, '2017-01-05', 0, 4, 'annie', ''),
(7, 11, '2017-01-06', 16, 0, 'yao', ''),
(8, 11, '2017-01-06', 4, 12, 'yao', '我和魏斌搭建测试环境并测试'),
(9, 11, '2017-01-07', 0, 4, 'yao', ''),
(10, 12, '2017-01-07', 16, 0, 'yao', ''),
(11, 12, '2017-01-07', 8, 8, 'yao', ''),
(12, 12, '2017-01-09', 0, 8, 'yao', ''),
(13, 13, '2017-01-10', 0, 16, 'yao', ''),
(14, 14, '2017-01-10', 8, 0, 'yao', ''),
(15, 14, '2017-01-10', 0, 8, 'yao', ''),
(16, 15, '2017-01-11', 0, 4, 'yao', ''),
(17, 16, '2017-01-11', 0, 0, 'yao', ''),
(18, 17, '2017-01-11', 0, 0, 'yao', ''),
(19, 16, '2017-01-11', 1, 0, 'yao', ''),
(20, 17, '2017-01-11', 1, 0, 'yao', ''),
(21, 18, '2017-01-11', 1, 0, 'yao', ''),
(22, 19, '2017-01-11', 1, 0, 'yao', ''),
(23, 16, '2017-01-11', 1, 0, 'yao', ''),
(24, 20, '2017-01-11', 11, 1, 'yao', ''),
(25, 24, '2017-01-12', 1, 0, 'yao', ''),
(26, 24, '2017-01-12', 1, 1, 'yao', ''),
(27, 24, '2017-01-13', 0, 3, 'yao', ''),
(28, 28, '2017-01-17', 8, 0, 'yao', ''),
(29, 29, '2017-01-17', 8, 0, 'yao', ''),
(30, 41, '2017-01-17', 8, 4, 'yao', ''),
(31, 29, '2017-01-17', 8, 0, 'benjamin', ''),
(32, 26, '2017-01-17', 4, 1, 'Gorge', ''),
(33, 48, '2017-01-17', 4, 0, 'loki', '');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tc_course`
--

DROP TABLE IF EXISTS `zt_tc_course`;
CREATE TABLE `zt_tc_course` (
  `id` smallint(6) NOT NULL,
  `course` varchar(30) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `desc` text,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tc_course`
--

INSERT INTO `zt_tc_course` (`id`, `course`, `coursetype`, `desc`, `path`, `img`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(6, '小学英语', '小学课程', '', '/Course/2016-11-13/', '5828142cd61aa.jpg', '发布', '腰立辉', '腰立辉', NULL, '2016-11-16 15:54:55'),
(7, '百家姓', '学前少儿', '12312', '/Course/2016-11-13/', '58280bc662aaa.jpg', '发布', '腰立辉', '腰立辉', 1478422638, '2016-11-16 15:55:10'),
(9, '小学数学', '小学课程', 'qweqw11', '/Course/2016-12-18/', '58568cffdeb67.jpg', '发布', '腰立辉', '梁小伟', 1478530883, '2016-12-18 13:19:59'),
(20, '围棋', '兴趣拓展', '', '/Course/2016-11-25/', '58380443108c8.jpg', '发布', '梁小伟', '梁小伟', 1480065850, '2016-11-25 09:28:35'),
(19, '书法国画', '兴趣拓展', '', '/Course/2016-11-25/', '58380463072e9.jpg', '发布', '梁小伟', '梁小伟', 1480065831, '2016-11-25 09:29:07'),
(12, '三字经', '学前少儿', '', '/Course/2016-12-18/', '58568c2105fa3.png', '发布', '腰立辉', '腰立辉', 1479015502, '2016-12-18 13:16:17'),
(13, '小学奥数', '小学课程', '', '/Course/2016-11-25/', '5838006e54edb.jpg', '发布', '梁小伟', '梁小伟', 1480065112, '2016-11-25 09:12:14'),
(14, '小学语文', '小学课程', '', '/Course/2016-11-25/', '5838016d464bb.jpg', '发布', '梁小伟', '梁小伟', 1480065358, '2016-11-25 09:16:29'),
(15, '初中数学', '中学课程', '', '/Course/2016-12-18/', '58568ce43dae9.jpg', '发布', '梁小伟', '梁小伟', 1480065518, '2016-12-18 13:19:32'),
(16, '初中物理', '中学课程', '', '/Course/2016-12-18/', '58568cd48d0d8.jpg', '发布', '梁小伟', '梁小伟', 1480065532, '2016-12-18 13:19:16'),
(17, '初中英语', '中学课程', '', '/Course/2016-11-25/', '5838072f51308.jpg', '发布', '梁小伟', '梁小伟', 1480065562, '2016-11-25 09:41:03'),
(18, '初中化学', '中学课程', '', '/Course/2016-11-25/', '58380716778f3.jpg', '发布', '梁小伟', '梁小伟', 1480065584, '2016-11-25 09:40:38');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tc_customer`
--

DROP TABLE IF EXISTS `zt_tc_customer`;
CREATE TABLE `zt_tc_customer` (
  `wid` smallint(6) NOT NULL COMMENT '主键',
  `tpid` smallint(6) NOT NULL,
  `type` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `coursetype` varchar(5) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tc_customer`
--

INSERT INTO `zt_tc_customer` (`wid`, `tpid`, `type`, `isteacher`, `state`, `coursetype`, `path`, `img`, `course`, `remark`, `adder`, `moder`, `ctime`, `utime`) VALUES
(15, 1, '老师', 1, '发布', '中学课程', '/Customer/2016-12-18/', '585693e5ec634.png', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', 1478415695, '2017-01-25 07:33:07'),
(17, 13, '学生', 0, '正常', '中学课程', NULL, NULL, '初一数学', '一对二', '梁小伟', '腰立辉', 1479302465, '2017-01-25 08:47:18'),
(18, 14, '老师', 1, '发布', '小学课程', '/Customer/2016-12-18/', '58569232eda33.jpg', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', 1481619189, '2017-01-25 07:33:11');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tc_date`
--

DROP TABLE IF EXISTS `zt_tc_date`;
CREATE TABLE `zt_tc_date` (
  `id` smallint(6) NOT NULL,
  `riqi` date DEFAULT NULL,
  `xingqi` varchar(5) DEFAULT NULL,
  `sn` smallint(2) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tc_date`
--

INSERT INTO `zt_tc_date` (`id`, `riqi`, `xingqi`, `sn`, `sktime`, `updateTime`) VALUES
(8, '2016-11-14', '星期一', 2, '10:00-12:00', '2016-11-14 14:11:56'),
(7, '2016-11-14', '星期一', 1, '8:00-10:00', '2016-11-14 14:11:56'),
(9, '2016-11-14', '星期一', 3, '13:00-15:00', '2016-11-14 14:11:56'),
(10, '2016-11-14', '星期一', 4, '15:00-17:00', '2016-11-14 14:11:56'),
(11, '2016-11-15', '星期二', 1, '8:00-10:00', '2016-11-14 14:39:51'),
(12, '2016-11-15', '星期二', 2, '10:00-12:00', '2016-11-14 14:39:51'),
(13, '2016-11-15', '星期二', 3, '13:00-15:00', '2016-11-14 14:39:51'),
(14, '2016-11-15', '星期二', 4, '15:00-17:00', '2016-11-14 14:39:51'),
(15, '2016-11-16', '星期三', 1, '8:00-10:00', '2016-11-14 14:40:49'),
(16, '2016-11-16', '星期三', 2, '10:00-12:00', '2016-11-14 14:40:49'),
(17, '2016-11-16', '星期三', 3, '13:00-15:00', '2016-11-14 14:40:49'),
(18, '2016-11-16', '星期三', 4, '15:00-17:00', '2016-11-14 14:40:49'),
(19, '2016-11-17', '星期四', 1, '8:00-10:00', '2016-11-14 14:52:08'),
(20, '2016-11-17', '星期四', 2, '10:00-12:00', '2016-11-14 14:52:08'),
(21, '2016-11-17', '星期四', 3, '13:00-15:00', '2016-11-14 14:52:08'),
(22, '2016-11-17', '星期四', 4, '15:00-17:00', '2016-11-14 14:52:08'),
(27, '2016-11-07', '星期一', 1, '8:00-10:00', '2016-11-15 13:38:25'),
(28, '2016-11-07', '星期一', 2, '10:00-12:00', '2016-11-15 13:38:25'),
(29, '2016-11-07', '星期一', 3, '13:00-15:00', '2016-11-15 13:38:25'),
(30, '2016-11-07', '星期一', 4, '15:00-17:00', '2016-11-15 13:38:25'),
(35, '2016-11-01', '星期二', 1, '8:00-10:00', '2016-11-15 14:20:07'),
(36, '2016-11-01', '星期二', 2, '10:00-12:00', '2016-11-15 14:20:07'),
(37, '2016-11-01', '星期二', 3, '13:00-15:00', '2016-11-15 14:20:07'),
(38, '2016-11-01', '星期二', 4, '15:00-17:00', '2016-11-15 14:20:07'),
(43, '2016-11-19', '星期六', 1, '08:00-10:00', '2016-11-19 04:41:04'),
(44, '2016-11-19', '星期六', 2, '10:10-12:10', '2016-11-19 04:41:04'),
(45, '2016-11-19', '星期六', 3, '13:30-15:30', '2016-11-19 04:41:04'),
(46, '2016-11-19', '星期六', 4, '15:40-17:40', '2016-11-19 04:41:04'),
(47, '2016-11-19', '星期六', 5, '18:00-20:00', '2016-11-19 04:41:04'),
(48, '2016-11-27', '星期日', 1, '08:00-10:00', '2016-11-27 11:00:26'),
(49, '2016-11-27', '星期日', 2, '10:10-12:10', '2016-11-27 11:00:26'),
(50, '2016-11-27', '星期日', 3, '13:30-15:30', '2016-11-27 11:00:26'),
(51, '2016-11-27', '星期日', 4, '15:40-17:40', '2016-11-27 11:00:27'),
(52, '2016-11-27', '星期日', 5, '18:00-20:00', '2016-11-27 11:00:27'),
(53, '2016-12-02', '星期五', 1, '08:00-10:00', '2016-12-02 07:07:17'),
(54, '2016-12-02', '星期五', 2, '10:10-12:10', '2016-12-02 07:07:17'),
(55, '2016-12-02', '星期五', 3, '13:30-15:30', '2016-12-02 07:07:17'),
(56, '2016-12-02', '星期五', 4, '15:40-17:40', '2016-12-02 07:07:17'),
(57, '2016-12-02', '星期五', 5, '18:00-20:00', '2016-12-02 07:07:17');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tc_plan`
--

DROP TABLE IF EXISTS `zt_tc_plan`;
CREATE TABLE `zt_tc_plan` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tc_plan`
--

INSERT INTO `zt_tc_plan` (`id`, `dateid`, `skdate`, `skweek`, `sktime`, `techclassid`, `courseid`, `adress`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(5, 11, '2016-11-15', '星期二', '8:00-10:00', 4, 6, 'retert', '待确认', '腰立辉', '腰立辉', 1479214738, '2016-11-15 12:58:58'),
(4, 8, '2016-11-14', '星期一', '10:00-12:00', 4, 6, 'asdasdsa', '待确认', '腰立辉', '腰立辉', 1479138089, '2016-11-14 15:41:29'),
(6, 13, '2016-11-15', '星期二', '13:00-15:00', 4, 6, 'gssgd', '待确认', '腰立辉', '腰立辉', 1479214748, '2016-11-15 12:59:08'),
(7, 21, '2016-11-17', '星期四', '13:00-15:00', 4, 6, 'qqq', '待确认', '腰立辉', '腰立辉', 1479214778, '2016-11-15 12:59:38'),
(8, 15, '2016-11-16', '星期三', '8:00-10:00', 4, 6, 'qw', '待确认', '腰立辉', '腰立辉', 1479304493, '2016-11-16 13:54:53');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tc_prodservice`
--

DROP TABLE IF EXISTS `zt_tc_prodservice`;
CREATE TABLE `zt_tc_prodservice` (
  `id` smallint(6) NOT NULL COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` decimal(10,0) DEFAULT NULL COMMENT '商品尺寸',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tc_prodservice`
--

INSERT INTO `zt_tc_prodservice` (`id`, `mark`, `name`, `content`, `weight`, `state`, `money`, `smoney`, `wlmoney`, `num`, `sellnum`, `istj`, `atime`, `sn`, `cate`, `path`, `img`, `moder`, `utime`) VALUES
(1, '', '三字经', '', '0', '发布', '0', '0', '0', 1, NULL, 1, NULL, 1, 10, '/Product/2017-02-04/', '58959089be6d8.png', '腰立辉', '2017-02-04 15:43:06'),
(2, '', '百家姓', '', '0', '正常', '0', '0', '0', 1, NULL, 1, NULL, 2, 10, '/Product/2017-02-04/', '589590afe4ca8.png', '腰立辉', '2017-02-04 09:36:39'),
(3, '', '唐诗三百首', '', '0', '正常', '0', '0', '0', 1, NULL, 1, NULL, 3, 10, '/Product/2017-02-04/', '589593d9817f8.png', '腰立辉', '2017-02-04 09:36:40'),
(4, '', '一年级语文', '', '0', '发布', '0', '0', '0', 1, NULL, 1, NULL, 1, 11, '/Product/2017-02-04/', '58959d0805bb4.png', '腰立辉', '2017-02-04 15:48:23'),
(5, '', '一年级数学', '', '0', '正常', '0', '0', '0', 1, NULL, 1, NULL, 2, 11, '/Product/2017-02-04/', '58959e34c91bb.png', '腰立辉', '2017-02-04 09:36:42'),
(6, '', '围棋', '', '0', '正常', '0', '0', '0', 1, NULL, 1, NULL, 1, 14, '/Product/2017-02-04/', '5895974a8561e.png', '腰立辉', '2017-02-04 09:36:43'),
(7, '', '跆拳道', '', '0', '正常', '0', '0', '0', 1, NULL, 1, NULL, 1, 14, '/Product/2017-02-04/', '589597574125f.png', '腰立辉', '2017-02-04 09:36:45'),
(8, '', '书法国画', '', '0', '正常', '0', '0', '0', 1, NULL, 1, NULL, 1, 14, '/Product/2017-02-04/', '589597642648d.png', '腰立辉', '2017-02-04 09:36:46'),
(9, '', '九年级物理', '', '0', '正常', '0', '0', '0', 999, NULL, 1, NULL, 1, 12, '/Product/2017-02-04/', '5895a0e5c901d.png', '腰立辉', '2017-02-04 09:38:11'),
(10, '', '九年级化学', '', '0', '正常', '0', '0', '0', 999, NULL, 1, NULL, 2, 12, '/Product/2017-02-04/', '5895a0f74c3f3.png', '腰立辉', '2017-02-04 09:37:59'),
(11, '', '二年级语文', '', '0', '正常', '0', '0', '0', 999, NULL, 1, NULL, 3, 11, '/Product/2017-02-04/', '58959f3f5aeb9.png', '腰立辉', '2017-02-04 09:36:49'),
(12, '', '二年级数学', '', '0', '正常', '0', '0', '0', 999, NULL, 1, NULL, 4, 11, '/Product/2017-02-04/', '58959f489fa38.png', '腰立辉', '2017-02-04 09:36:50'),
(13, '', '三年级语文', '', '0', '正常', '0', '0', '0', 999, NULL, 1, NULL, 5, 11, '/Product/2017-02-04/', '58959f5ccdb2f.png', '腰立辉', '2017-02-04 09:36:51'),
(14, '', '三年级数学', '', '0', '正常', '0', '0', '0', 999, NULL, 1, NULL, 6, 11, '/Product/2017-02-04/', '58959f6712fd5.png', '腰立辉', '2017-02-04 09:36:53'),
(15, '', '三年级英语', '', '0', '正常', '0', '0', '0', 999, NULL, 1, NULL, 7, 11, '/Product/2017-02-04/', '58959f71368d1.png', '腰立辉', '2017-02-04 09:40:02');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tc_studentcla`
--

DROP TABLE IF EXISTS `zt_tc_studentcla`;
CREATE TABLE `zt_tc_studentcla` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tc_studentcla`
--

INSERT INTO `zt_tc_studentcla` (`id`, `studentid`, `student`, `sphone`, `coursetype`, `techclassid`, `teacher`, `tphone`, `courseid`, `course`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(4, 5, '王五', '13426179579', '小学课程', 4, '腰立辉', '18801043607', 6, '小学英语', NULL, '腰立辉', '腰立辉', 1479043222, '2016-11-13 13:20:22');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tc_techclass`
--

DROP TABLE IF EXISTS `zt_tc_techclass`;
CREATE TABLE `zt_tc_techclass` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tc_techclass`
--

INSERT INTO `zt_tc_techclass` (`id`, `teacherid`, `teacher`, `phone`, `courseid`, `coursetype`, `course`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(4, 1, '腰立辉', '18801043607', 6, '小学课程', '小学英语', NULL, '腰立辉', '腰立辉', 1479027130, '2016-11-13 10:39:09'),
(5, 1, '腰立辉', '18801043607', 6, '小学课程', '小学英语', NULL, '腰立辉', '腰立辉', 1479031833, '2016-11-13 10:23:41'),
(6, 4, '李四', '13222222222', 10, '兴趣拓展', '跆拳道', NULL, '腰立辉', '腰立辉', 1479032021, '2016-11-13 10:23:56'),
(7, 3, '张三', '13333333333', 11, '中学课程', '九年级物理', NULL, '腰立辉', '腰立辉', 1479034059, '2016-11-13 10:47:39'),
(8, 1, '腰立辉', '18801043607', 9, '小学课程', '小学自然', NULL, '腰立辉', '腰立辉', 1479301282, '2016-11-16 13:01:22');

-- --------------------------------------------------------

--
-- 表的结构 `zt_team`
--

DROP TABLE IF EXISTS `zt_team`;
CREATE TABLE `zt_team` (
  `project` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `role` char(30) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `days` smallint(5) UNSIGNED NOT NULL,
  `hours` float(2,1) UNSIGNED NOT NULL DEFAULT '0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_team`
--

INSERT INTO `zt_team` (`project`, `account`, `role`, `join`, `days`, `hours`) VALUES
(1, 'yaolh', '研发', '2017-01-08', 5, 7.0),
(1, 'jiaxn', '测试', '2017-01-08', 5, 7.0),
(8, 'yaolh', '研发', '2017-01-12', 13, 7.0),
(14, 'yao', '研发', '2017-01-26', 14, 7.0),
(14, 'zhangxl', '产品经理', '2017-01-26', 14, 7.0),
(14, 'yaojq', '项目经理', '2017-01-26', 14, 7.0),
(14, 'jiaxn', '测试', '2017-01-26', 14, 7.0),
(14, 'xingl', '研发', '2017-01-26', 14, 7.0),
(14, 'yaomf', '产品主管', '2017-01-26', 14, 7.0);

-- --------------------------------------------------------

--
-- 表的结构 `zt_testresult`
--

DROP TABLE IF EXISTS `zt_testresult`;
CREATE TABLE `zt_testresult` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `run` mediumint(8) UNSIGNED NOT NULL,
  `case` mediumint(8) UNSIGNED NOT NULL,
  `version` smallint(5) UNSIGNED NOT NULL,
  `caseResult` char(30) NOT NULL,
  `stepResults` text NOT NULL,
  `lastRunner` varchar(30) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_testrun`
--

DROP TABLE IF EXISTS `zt_testrun`;
CREATE TABLE `zt_testrun` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `task` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `case` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `version` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `assignedTo` char(30) NOT NULL DEFAULT '',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  `status` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_testtask`
--

DROP TABLE IF EXISTS `zt_testtask`;
CREATE TABLE `zt_testtask` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(90) NOT NULL,
  `product` mediumint(8) UNSIGNED NOT NULL,
  `project` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `build` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `pri` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `report` text NOT NULL,
  `status` enum('blocked','doing','wait','done') NOT NULL DEFAULT 'wait',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_todo`
--

DROP TABLE IF EXISTS `zt_todo`;
CREATE TABLE `zt_todo` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `account` char(30) NOT NULL,
  `date` date NOT NULL,
  `begin` smallint(4) UNSIGNED ZEROFILL NOT NULL,
  `end` smallint(4) UNSIGNED ZEROFILL NOT NULL,
  `type` char(10) NOT NULL,
  `idvalue` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pri` tinyint(3) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL,
  `desc` text NOT NULL,
  `status` enum('wait','doing','done') NOT NULL DEFAULT 'wait',
  `private` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_ad`
--

DROP TABLE IF EXISTS `zt_tp_ad`;
CREATE TABLE `zt_tp_ad` (
  `id` smallint(6) NOT NULL,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT '#',
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_ad`
--

INSERT INTO `zt_tp_ad` (`id`, `title`, `path`, `img`, `url`, `remark`, `state`, `prodid`, `moder`, `utime`) VALUES
(1, '第2张', '/Ad/2017-02-04/', '58958571c4c01.png', '#', '', '发布', 2, '梁小伟', '2017-02-04 07:40:36'),
(2, '第1张', '/Ad/2017-02-04/', '5895856327614.png', '#', '', '发布', 2, '梁小伟', '2017-02-04 07:40:19'),
(3, '第3张', '/Ad/2017-02-04/', '589584447ae4c.png', '#', '', '发布', 2, '腰立辉', '2017-02-04 07:35:32'),
(4, '第4张', '/Ad/2017-02-04/', '5895819138465.png', '#', '', '发布', 2, '腰立辉', '2017-02-04 07:24:01'),
(5, '第5张', '/Ad/2017-02-04/', '589581aa9bd89.png', '#', '', '发布', 2, '腰立辉', '2017-02-04 07:24:27'),
(10, '第五张', '/Ad/2017-01-21/', '5883583fadbf8.jpg', '#', 'qweq', '正常', 1, '腰立辉', '2017-02-04 06:19:20'),
(11, '第四张', '/Ad/2017-01-21/', '5883587d465c2.jpg', '#', '', '正常', 1, '腰立辉', '2017-02-04 06:19:21'),
(12, '第三张', '/Ad/2017-01-21/', '5883584c58f6b.jpg', '#', '', '正常', 1, '腰立辉', '2017-02-04 06:19:22'),
(13, '第二张', '/Ad/2017-01-21/', '588358580bbbf.jpg', '#', '', '正常', 1, '腰立辉', '2017-02-04 06:19:25'),
(14, '第一张', '/Ad/2017-01-21/', '58835865696d5.jpg', '#', '', '正常', 1, '腰立辉', '2017-02-04 06:19:31'),
(15, NULL, '/Ad/2016-12-18/', '58565f960204b.jpg', '#', NULL, '发布', 4, '腰立辉', '2017-02-04 06:19:31'),
(16, NULL, '/Ad/2016-12-18/', '58565ff1220d8.jpg', '#', NULL, '发布', 4, '腰立辉', '2017-02-04 06:19:32'),
(17, NULL, NULL, NULL, '#', NULL, '发布', 4, '腰立辉', '2017-02-04 06:19:33'),
(18, NULL, NULL, NULL, '#', NULL, '发布', 4, '腰立辉', '2017-02-04 06:19:33'),
(19, NULL, NULL, NULL, '#', NULL, '发布', 4, '腰立辉', '2017-02-04 06:19:35'),
(20, NULL, '/Ad/2017-01-24/', '5887207ead5f4.png', '#', NULL, '发布', 3, '腰立辉', '2017-02-04 06:19:37'),
(21, NULL, '/Ad/2017-01-24/', '5887227b67d0d.png', '#', NULL, '发布', 3, '腰立辉', '2017-02-04 06:19:38'),
(22, NULL, '/Ad/2017-01-24/', '5887227287aca.png', '#', NULL, '发布', 3, '腰立辉', '2017-02-04 06:19:38'),
(23, 'tqyweuy', '/Ad/2017-01-24/', '58872284375ac.png', '#', '', '发布', 3, '腰立辉', '2017-02-04 06:19:45'),
(24, NULL, '/Ad/2017-01-24/', '5887228c7b95e.png', '#', NULL, '发布', 3, '腰立辉', '2017-02-04 06:19:48'),
(25, NULL, NULL, NULL, '#', NULL, '发布', 6, '腰立辉', '2017-02-04 06:19:53'),
(26, NULL, NULL, NULL, '#', NULL, '发布', 6, '腰立辉', '2017-02-04 06:20:05'),
(27, NULL, NULL, NULL, '#', NULL, '发布', 6, '腰立辉', '2017-02-04 06:20:07'),
(28, NULL, NULL, NULL, '#', NULL, '发布', 6, '腰立辉', '2017-02-04 06:20:41'),
(29, NULL, NULL, NULL, NULL, NULL, '发布', 6, '腰立辉', '2017-01-19 02:10:56'),
(30, NULL, NULL, NULL, NULL, NULL, '发布', 10, '腰立辉', '2017-01-19 02:11:07'),
(31, NULL, NULL, NULL, NULL, NULL, '发布', 10, '腰立辉', '2017-01-19 02:11:09'),
(32, NULL, NULL, NULL, NULL, NULL, '发布', 10, '腰立辉', '2017-01-19 02:11:11'),
(33, NULL, NULL, NULL, NULL, NULL, '发布', 10, '腰立辉', '2017-01-19 02:11:13'),
(34, NULL, NULL, NULL, NULL, NULL, '发布', 10, '腰立辉', '2017-01-19 03:35:36');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_admin`
--

DROP TABLE IF EXISTS `zt_tp_admin`;
CREATE TABLE `zt_tp_admin` (
  `id` smallint(6) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `username` varchar(11) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT '2',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_admin`
--

INSERT INTO `zt_tp_admin` (`id`, `phone`, `username`, `realname`, `password`, `path`, `photo`, `prodid`, `moder`, `utime`) VALUES
(1, '18801043607', '18801043607', '腰立辉', 'c33367701511b4f6020ec61ded352059', '', '', 5, '腰立辉', '2017-01-19 08:34:46'),
(2, '13426179579', '13426179579', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 2, '腰立辉', '2017-01-19 08:35:23'),
(3, '15030971266', '15030971266', '贾晓月', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 4, '腰立辉', '2017-01-19 08:35:32'),
(4, '13785900902', '13785900902', '王晓亮', 'e10adc3949ba59abbe56e057f20f883e', '', '', 4, '腰立辉', '2017-01-19 08:35:33'),
(7, '13463925200', '13463925200', '张秀丽', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 1, '腰立辉', '2017-01-22 15:13:16'),
(8, '18610815780', '18610815780', '刘燕军', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 6, '腰立辉', '2017-01-19 08:36:35'),
(9, '18233098318', '18233098318', '马双峰', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 3, '腰立辉', '2017-01-19 08:35:53'),
(10, NULL, 'yangyh', '杨艳辉', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 3, '腰立辉', '2017-01-19 08:35:51'),
(11, '13131981120', '13131981120', '腰建强', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 1, '腰立辉', '2017-02-04 07:08:21');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_article`
--

DROP TABLE IF EXISTS `zt_tp_article`;
CREATE TABLE `zt_tp_article` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '文章编号',
  `name` varchar(100) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章添加时间',
  `clicknum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章点击数',
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章分类编号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_article`
--

INSERT INTO `zt_tp_article` (`id`, `name`, `content`, `atime`, `clicknum`, `cid`) VALUES
(1, '请问请问', '<p>\r\n	去委屈委屈我</p>\r\n', 1471489591, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_as_customer`
--

DROP TABLE IF EXISTS `zt_tp_as_customer`;
CREATE TABLE `zt_tp_as_customer` (
  `id` smallint(6) NOT NULL,
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
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_as_customer`
--

INSERT INTO `zt_tp_as_customer` (`id`, `phone`, `password`, `custype`, `isteacher`, `coursetype`, `realname`, `path`, `img`, `state`, `course`, `remark`, `adder`, `moder`, `utime`) VALUES
(1, '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', 1, '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '2016-12-13 09:21:44'),
(12, '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '小学课程', 'werer', NULL, NULL, '正常', '', '', '腰立辉', '腰立辉', '2016-11-13 13:17:14'),
(13, '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '中学课程', '刘一玮（男、44中）', NULL, NULL, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '2016-12-13 09:28:34'),
(14, '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', 1, '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '2016-12-13 09:37:07');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_as_usecar`
--

DROP TABLE IF EXISTS `zt_tp_as_usecar`;
CREATE TABLE `zt_tp_as_usecar` (
  `id` smallint(6) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `type` smallint(6) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_as_usecar`
--

INSERT INTO `zt_tp_as_usecar` (`id`, `title`, `content`, `type`, `url`, `state`, `path`, `img`, `moder`, `utime`) VALUES
(3, '避免预热时间过长', '<p>\r\n	启动车后，大多数人都习惯让发动机怠速运转，等水温达到正常温度后再把车开走，其实这种预热的方法是非常错误的，因为电喷发动机不像化油器发动机，在达到工作温度之前，供油系统不能正常工作。电喷发动机如果采用长时间预热，不仅没有必要而且还是有害的。缩短预热时间可以延长三元催化器的使用寿命，还会节省燃油。动机起动后，只要能维持稳定的转速就可以起步行车，在水温未升高前，适当控制一下车速，等水温正常后就可以正常驾驶了。</p>\r\n', 6, '#', '发布', '/Admin/usecar/2016-10-31/', '5816dd28045c6.jpg', '腰立辉', '2016-10-31 06:01:15'),
(4, '开窗和开空调哪个更省油呢?', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">夏天在高速（速度一般都要&ge;80km/h）行驶时，到底是开着窗户省油还是开着空调省油呢？支持前者的人认为：不开空调即压缩机不用工作，也就不会给</span><a class="ShuKeyWordLink" href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(59, 89, 152); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">发动机</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">造成额外的负担，因此会更省油。支持后者观点的人则认为：高速时开着车窗会扰乱空气流动，形成更大的风阻，因此产生的阻力会消耗比空调还多的燃油。</span></p>\r\n<p>\r\n	<strong>结果：</strong></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">在开空调的测试中，</span><a class="blackclink" href="http://www.autohome.com.cn/81/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">飞度</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">的百公里油耗为6.15升，而</span><a class="blackclink" href="http://www.autohome.com.cn/694/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">锋范</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">的则达到了7.3升。这两个数据分别比开车窗行驶时上升了0.87升和0.17升，</span><a class="blackclink" href="http://www.autohome.com.cn/81/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">飞度</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">油耗上升的幅度非常明显。而我们最终的定论也可以得出了。在车速为100km/h以下时，开车窗行驶的确比开空调要更加省油，但是其恶劣的驾车感受是必须用足够的忍耐力才能承受的</span></p>\r\n', 7, 'http://www.autohome.com.cn/user/201007/128126.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816db69ef7da.jpg', '腰立辉', '2016-10-31 05:49:29'),
(5, '遭遇鸡蛋袭击不能用雨刮?', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">相信不少人曾对网络中的一则流言有所耳闻：某地频繁现劫匪用生鸡蛋袭击挡风玻璃的抢劫伎俩，千万不要开启雨刷喷水。因为鸡蛋遇玻璃水将凝固，阻挡视线达90%，在你被迫停车清理玻璃时，劫匪趁机抢劫......。上网一搜，类似流言高达百万条以上。</span></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验1：普通生鸡蛋</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验2：普通生鸡蛋停留一段时间再清理</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验3：普通鸡蛋夜间效果</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验4：普通生鸡蛋+神秘配方</strong></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">同样以20km/h的速度驾驶车辆，路边砸来的鸡蛋在挡风玻璃上破碎，开启雨刮器后大部分鸡蛋残渣被清除，不过一些神秘的残留物质仍然不能完全清除，尝试数次后效果仍然不明显。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', 7, 'http://www.autohome.com.cn/user/201112/281437.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816cd97d33bb.jpg', '腰立辉', '2016-10-31 05:00:58'),
(8, '开车不喝酒，喝酒不开车', '<p>\r\n	可你喝了酒又需要回家怎么办？</p>\r\n<p>\r\n	1. 自己打车回家，转天再去开回来。</p>\r\n<p>\r\n	2. 请会开车没喝酒的朋友帮忙。</p>\r\n<p>\r\n	3. 请个代驾帮忙把车开回家。</p>\r\n<p>\r\n	<strong>看看后面的规定，你就知道我们的3个办法还是最有效的。</strong></p>\r\n<p>\r\n	中华人民共和国道路交通安全法》规定，饮酒后驾驶机动车的处暂扣1个月以上3个月以下机动车驾驶证，并处200元以上元以下罚款;醉酒后驾驶机动车的，由公安机关交通管理部门约束至酒醒，处15日以下拘留和暂扣3个月以上6个月以下机动车驾驶证，并处00元以上2000元以下罚款。1年内醉酒后驾驶机动车被处罚2次以上的，吊销机动车驾驶证.5年内不得驾驶营运机动车。</p>\r\n', 6, '', '发布', '/Admin/usecar/2016-10-31/', '5816e1c4c2325.jpg', '腰立辉', '2016-10-31 06:16:36'),
(6, '保护漆面从新车做起', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">新车漆面虽无老化问题，但使用前应该做彻底的保护处理，从出厂到运输至停车场，车表漆就已经接触了空气、酸气、风沙的侵袭。及时正确的养护，能令漆面保持良好外观。如果买的是进口轿车，要首先考虑的是车蜡中含有石蜡、树脂及特氟隆等材料。除蜡时不要用汽油或煤油擦拭，应选用专业的开蜡液，或者到专业的美容养护店，请技师帮助处理。至于国产车，车身大多采用静电喷涂，漆面呈镜面光泽，故无开蜡需要。</span></p>\r\n', 6, '#', '发布', '/Admin/usecar/2016-10-31/', '5816dedc34c66.jpeg', '腰立辉', '2016-10-31 06:04:12'),
(7, '调整后视镜', '调整后视镜左侧后视镜上、下位置是把远处的地平线置于中央，左、右位置则调整至车身占据镜面范围的14。右侧后视镜因为驾驶座位于左侧，因此驾驶人对车耳右侧的掌握不是那么容易，再加上有时路边停车的需要，在调整右侧后视镜上、下位置时地面面积要较大，约占镜面的23。而左、右位置则同样调整到车身占14面积即可。\r\n', 6, '', '发布', '/Admin/usecar/2016-10-31/', '5816dfa12179c.png', '腰立辉', '2016-10-31 06:07:29');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_case`
--

DROP TABLE IF EXISTS `zt_tp_case`;
CREATE TABLE `zt_tp_case` (
  `id` int(11) NOT NULL,
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
  `num20` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_case`
--

INSERT INTO `zt_tp_case` (`id`, `sn`, `level`, `main`, `steps`, `expected`, `state`, `fproid`, `funcid`, `source`, `remarks`, `adder`, `moder`, `utime`, `dstate`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num16`, `num17`, `num18`, `num19`, `num20`) VALUES
(10000, 1, '2', '正常登陆', '', '登入系统，并显示用户姓名11', '正常', 107, 10000, '产品库', '', '腰立辉', '腰立辉', '2016-12-08 01:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001, 2, '2', '用户名不存在', '', '报错', '正常', 107, 10000, '产品库', NULL, '腰立辉', '腰立辉', '2016-12-08 01:31:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10130, 2, '2', ' 活动截止以后', '\r\n', ' 不能投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:50:51', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10131, 3, '2', ' 活动期间，当天已经投过票的', '', ' 不能投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:51:27', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10132, 4, '2', ' 活动期间，今天尚未投票', '', ' 可以投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:51:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10133, 1, '2', ' 打开页面，播放音乐', '', ' 背景音乐自动播放', '正常', 110, 10449, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:52:46', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10134, 1, '2', ' 点击选手头像，播放选手歌曲', '', ' 可以播放', '正常', 110, 10450, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:54:55', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10135, 2, '2', '再次点击选手头像', '', ' 关闭音乐播放', '正常', 110, 10450, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:55:39', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10136, 3, '2', ' 切换选手列表页面，停止播放', '', ' 停止播放', '待确认', 110, 10450, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 13:00:36', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10129, 1, '2', ' 活动开始之前', '', ' 不能投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:50:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10104, 1, '2', '按英文名检索', '<p>\r\n	asd12</p>\r\n', '查询到符合条件的员工列表', '正常', 116, 10425, '产品库', NULL, '腰立辉', '腰立辉', '2016-12-23 09:21:16', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10282, 1, '2', ' 按姓名模糊查询', '', ' 检索到符合条件的员工列表', '正常', 116, 10425, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:21:39', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10109, 1, '2', ' 从公众微信号打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', 107, 10419, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:25:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10110, 2, '2', ' 从分享链接打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', 107, 10419, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:25:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10111, 1, '2', ' 正常提交报名', '', ' 提交成功', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:45:54', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10112, 2, '2', ' 空姓名，空手机号', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:46:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10113, 3, '2', ' 空姓名，填手机号', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:46:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10114, 4, '2', ' 填姓名，空手机号', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:46:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10115, 5, '2', ' 填姓名，手机号位数不足', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:47:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10116, 6, '2', ' 填姓名，手机号位数超过11位', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:47:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10117, 7, '2', ' 填姓名，手机号后有空格', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:47:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10118, 8, '2', ' 填姓名，手机号前，有空格', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:48:07', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10119, 9, '2', ' 填姓名，手机号中间有空格', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:48:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10120, 10, '2', ' 来回切换页面后，再填写报名信息', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:49:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10121, 1, '2', ' 启用名片的角色，进入公司名片', '', ' 显示自己的名片', '正常', 107, 10421, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:56:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10122, 2, '2', ' 未启用名片的角色进入公司名片', '', ' 显示所有管家名片，滑动可以浏览', '正常', 107, 10421, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:57:39', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10123, 1, '2', ' 分享给微信好友', '', ' ', '正常', 107, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:58:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10124, 2, '2', ' 分享到微信朋友圈', '', ' ', '正常', 107, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:58:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10125, 1, '2', '从管家明前提交的', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10126, 2, '2', ' 从公司名片提交的', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10127, 3, '2', ' 转发分享次数', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10128, 4, '2', ' 报名转化率', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:48', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10137, 1, '1', '正常修改密码', '', ' 修改成功', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 10:23:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10138, 2, '2', ' 原密码不填', '', ' 报错', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:49:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10139, 3, '2', ' 原密码错误', '', ' 报错', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:55:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10140, 4, '2', ' 原密码正确，新密码两次不一致', '', ' 修改失败', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:55:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10141, 5, '2', ' 原密码正确，新密码不输入', '', ' 修改失败', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:55:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10142, 1, '1', ' 国家名称（全匹配查询）', '', ' 精确查出结果', '正常', 116, 10566, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 10:29:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10143, 1, '2', ' 国家名称没输全（模糊查询）', '', ' 可以查出复核条件的结果', '正常', 116, 10566, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 10:30:33', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10144, 1, '2', '从微信菜单进入“生活体验”', '', ' 成功打开生活体验页面', '正常', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:06:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10145, 3, '2', ' 从微站首页进入生活体验', '', ' 打开生活体验页面', '正常', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:07:15', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10146, 3, '2', ' 后台移民项目没有对应数据时', '', ' 展示默认场景', '待确认', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:08:51', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10147, 3, '2', ' 左右滑动切换移民国家', '', ' 切换成功，且可以循环切换', '正常', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:09:49', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10148, 3, '2', '当后台项目之一一个国家时，滑动切换国家', '', ' ', '待确认', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:15:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10149, 2, '2', ' 项目只有一个城市', '', ' 直接跳过城市选择', '正常', 116, 10563, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:16:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10150, 2, '2', ' 当城市大于1个时，需要选择移民城市', '', ' ', '正常', 116, 10563, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:17:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10151, 2, '2', ' 可以上下滑动切换', '', ' 按后台设置的顺序', '正常', 116, 10563, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:17:57', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10152, 2, '2', ' 当项目没有体验信息时', '', ' 展示默认页面', '待确认', 116, 10564, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:19:27', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10153, 2, '2', ' 当项目有体验场景', '', ' 显示图片列表，点击可以进入详情', '正常', 116, 10564, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:20:10', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10154, 2, '2', ' 点击列表图片', '', ' 展开对应的详情', '正常', 116, 10565, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:23:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10155, 2, '2', ' 在详情页面，左右滑动', '', ' 可以按列表顺序，切换详情', '正常', 116, 10565, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:23:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10156, 4, '2', '公司简介向上滑动', '', ' 显示项目列表', '正常', 116, 10420, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:31:06', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10157, 4, '2', ' 当项目只有一个时，左右滑动', '', ' ', '待确认', 116, 10420, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:32:01', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10158, 4, '2', ' 当项目超过3个时，左右滑动', '', ' 可以循环展示', '正常', 116, 10420, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:32:38', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10159, 1, '2', ' 点击项目图片', '', ' 打开项目详情页面', '正常', 116, 10590, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:33:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10160, 3, '2', ' 显示个人名片的分享后', '', ' 统计或报名都记在个人名片下', '正常', 116, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:34:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10161, 3, '2', ' 显示公司名片时分享', '', ' 打开和报名统计在公司名片下', '正常', 116, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:35:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10162, 1, '2', ' 已个人名片分享的消息，有人报名时间', '', ' 微信公众号会有消息推送给名片所有人', '正常', 116, 10469, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:36:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10163, 1, '2', ' 已公司名片分享的消息，有人报名时', '', ' 无消息推送', '正常', 116, 10469, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:37:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10164, 1, '2', ' 单选一个国家查询', '', ' 查出对应的结果', '正常', 116, 10482, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:23:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10165, 1, '2', ' 选多个国家', '', ' 查出对应的结果', '正常', 116, 10482, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:23:59', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10166, 1, '2', ' 选择对应的项目类型', '', ' 查出对应的结果', '正常', 116, 10483, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:24:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10167, 1, '2', '单选项目状态', '', ' 查出对应的结果', '正常', 116, 10484, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:27:06', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10168, 1, '2', ' 输全项目编号', '', ' 查到对应的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:27:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10169, 1, '2', ' 输全项目名称', '', ' 查出对应的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:28:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10170, 1, '2', ' 输入部分项目编号（模糊查询）', '', ' 查出符合条件的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:28:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10171, 1, '2', '  输入部分项目名称（模糊查询）', '', ' 查出符合条件的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:29:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10172, 1, '2', ' 组合查询', '', ' 查出符合条件的结果', '正常', 116, 10487, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:29:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10173, 2, '2', ' 办理流程未填写，发布', '', ' 提示“办理流程未填写”', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10174, 3, '2', '申请条件未填写，发布', '', ' ', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10175, 4, '2', ' 费用详情未填写，发布', '', ' ', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10176, 5, '2', ' 料清单未填写，发布', '', ' ', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:35:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10177, 1, '2', ' 所有信息填写完成，发布', '', ' 发布成功，微网站上可见', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10178, 1, '2', '只输入起始日期查询', '', ' 搜寻到起始日期往后的项目列表', '正常', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:28:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10179, 1, '2', ' 只输入结束日期', '', ' 查询到结束日期往前的项目列表', '正常', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:28:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10180, 1, '2', ' 同时输入结束日期和起始日期，且起始日期小于结束日期', '', ' 查找在这区间的的项目列表', '正常', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:29:49', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10181, 1, '2', ' 同时输入结束日期和起始日期，起始日期等于结束日期', '', ' 查询到当天的项目列表（假定项目时间是一个点）', '待确认', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:31:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10182, 1, '2', ' 同时输入结束日期和起始日期，且起始日期大于结束日期', '', ' 报错', '待确认', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:31:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10183, 1, '2', ' 查看项目列表展现', '', ' 数据和展示字段与需求相符', '正常', 116, 10488, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:35:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10184, 1, '2', ' 选中一个项目，推荐', '', ' 推荐成功，该项目的扩展推荐，显示顾问平片，并且在微网站的公司名片的重点项目中看到该项目的信息', '正常', 116, 10490, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:43:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10185, 1, '2', ' 选中多个项目，进行扩展推荐', '', ' 选中项目的扩展推荐，这些项目都会出现在公司名片的重点项目中', '正常', 116, 10490, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:45:48', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10186, 4, '2', ' 项目暂停', '', ' 暂停成功，该项目不在网站显示', '正常', 116, 10492, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:02:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10187, 4, '2', ' 项目售罄', '', ' 成功，网站依然显示', '正常', 116, 10492, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:02:49', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10188, 23, '2', ' 正常新增项目', '', ' 新增成功', '正常', 116, 10489, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:03:46', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10189, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10491, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:20:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10190, 1, '2', ' 检查办理流程列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10494, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:25:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10191, 2, '2', ' 正常添加办理流程', '', ' 添加成功', '正常', 116, 10495, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:25:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10192, 2, '2', ' 排序字段填入字母和符号（非数字）', '', ' 报错，不能添加', '正常', 116, 10495, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:27:52', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10193, 2, '2', ' 下载模板', '', ' ', '正常', 116, 10496, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:34:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10194, 2, '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', 116, 10496, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:35:42', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10195, 2, '2', ' 上传非xls和xlsx的文体', '\r\n', ' 报错', '正常', 116, 10496, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:36:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10196, 1, '2', ' 选中一个流程（非顶端），上移', '', ' 上移一个顺序', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:37:19', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10197, 1, '2', '  选中一个流程（顶端），上移', '', ' 不能上移', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:37:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10198, 1, '2', '  选中一个流程（非底端），下移', '', ' 下移成功', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:37:59', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10199, 1, '2', '   选中一个流程（底端），下移', '', ' 不能下移', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:38:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10200, 1, '2', '   选中一个流程（非顶端），置顶', '', ' 置顶成功', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:45:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10201, 1, '2', '选中一个流程（顶端），置顶', '', ' 无需置顶', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:45:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10202, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10498, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:46:17', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10203, 1, '2', ' 删除申请流程', '', ' 删除成功', '正常', 116, 10499, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:49:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10204, 1, '2', ' 检查材料清单列表', '', ' 数据和展示字段与需求相符', '正常', 116, 10506, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:57:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10205, 1, '2', ' 正常新增', '', ' 添加材料成功', '正常', 116, 10507, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:58:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10206, 1, '2', ' 点击材料样例', '', ' 弹出新窗口显示样例', '正常', 116, 10510, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:59:17', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10207, 2, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10511, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:59:36', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10208, 2, '2', ' 正常删除', '', ' 弹出确认窗口，确认后删除', '正常', 116, 10512, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:00:08', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10209, 1, '2', ' 下载模板', '', ' 下载成功', '正常', 116, 10508, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:00:37', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10210, 1, '2', ' 正常导入模板', '', ' 导入成功，刷新页面', '正常', 116, 10508, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:01:02', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10211, 1, '2', ' 带入非模板的文件', '', ' 导入失败', '正常', 116, 10508, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:02:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10212, 1, '2', ' 非顶端，上移', '', ' 上移成功', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:03', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10213, 1, '2', ' 顶端上移，不能上移', '', ' ', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:15', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10214, 1, '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10215, 1, '2', ' 顶端置顶', '', ' 不能置顶', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10216, 1, '2', '非底端，下移 ', '', ' 下移成功', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:04:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10217, 1, '2', ' 底端，下移', '', ' 不能下移', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:04:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10218, 1, '2', ' 检查费用详情列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10500, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10219, 1, '2', ' 正常新增', '\r\n', ' 新增成功', '正常', 116, 10501, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10220, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10504, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:27', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10221, 1, '2', ' 正常删除', '', ' 删除成功', '正常', 116, 10505, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10222, 2, '2', ' 下载模板', '', ' 模板下载成功', '正常', 116, 10502, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:30', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10223, 2, '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', 116, 10502, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10224, 2, '2', ' 上传非模板文件', '', ' 报错', '正常', 116, 10502, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:33', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10225, 1, '2', ' 非顶端，上移', '', ' 上移成功', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:35', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10226, 1, '2', ' 顶端，上移', '', ' 顶端上移，不能上移', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:36', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10227, 1, '2', ' 非底端，下移', '', ' 下移成功', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:37', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10228, 1, '2', ' 底端，下移', '', ' 不能下移', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:46', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10229, 1, '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10230, 1, '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:48', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10231, 1, '2', ' 检查图片列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10513, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10232, 2, '2', ' 正常添加图片', '', ' 添加成功', '正常', 116, 10514, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:51', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10233, 2, '2', ' 正常添加视频', '', ' 添加成功', '正常', 116, 10514, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:52', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10234, 2, '2', ' 添加视频时，视频地址不填', '', ' 报错，不允许添加', '正常', 116, 10514, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10235, 1, '2', ' 非顶端，上移', '', ' 上移成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:55', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10236, 1, '2', ' 顶端，上移', '', ' 不能上移', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10237, 1, '2', ' 非底端，下移', '', ' 下移成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:57', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10238, 1, '2', ' 底端，下移', '', ' 下移成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:23:59', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10239, 1, '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10240, 1, '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:02', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10241, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10516, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:03', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10242, 1, '2', ' 正常删除', '', ' 删除成功', '正常', 116, 10517, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10243, 1, '2', ' 按栏目全称精确查询', '', ' 查询到结果', '正常', 116, 10536, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10244, 1, '2', ' 按栏目名称模糊查询', '', ' 查询到符合条件的栏目', '正常', 116, 10536, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:07', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10245, 1, '2', ' 检查栏目列表', '', '数据和字段符合需求', '正常', 116, 10537, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:10', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10246, 1, '2', ' 修改顺序后，批量排序', '', '排序成功', '正常', 116, 10538, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10247, 1, '2', ' 不修改排序，点击“批量排序”', '', ' 排序失败', '正常', 116, 10538, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10248, 1, '2', ' 正常新增栏目', '', ' 新增成功', '正常', 116, 10539, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:14', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10249, 1, '2', ' 正常删除栏目', '', ' 删除成功', '正常', 116, 10541, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:16', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10250, 1, '2', ' 正常设置', '', ' 设置成功', '正常', 116, 10540, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:17', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10251, 1, '2', ' 选中左侧的栏目', '', ' 显示该栏目下的所有资讯', '正常', 116, 10542, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10252, 1, '2', ' 按标题精确查询', '', ' 查到对应和资讯', '正常', 116, 10543, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10253, 1, '2', ' 按资讯中的关键字模糊查询', '', ' 查询到符合条件的资讯', '正常', 116, 10543, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10254, 1, '2', ' 选中状态查询', '', ' 查询到符合条件的资讯', '正常', 116, 10544, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10255, 1, '2', ' 输入关键字并选择状态', '', ' 查询出符合条件的资讯', '正常', 116, 10545, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10256, 1, '2', ' 检查资讯列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10546, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:26', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10257, 1, '2', ' 正常新增资讯', '', ' 新增成功', '正常', 116, 10547, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:28', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10258, 1, '2', ' 正常编辑资讯', '', ' 编辑成功', '正常', 116, 10548, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10259, 1, '2', ' 正常删除资讯', '', ' 删除成功', '正常', 116, 10549, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:30', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10260, 1, '2', ' 发布资讯', '', ' 发布成功，微网站上可见', '正常', 116, 10550, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:24:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10261, 1, '2', ' 按活动名称精确查询', '', ' 查出对应的结果', '正常', 116, 10524, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:38:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10262, 1, '2', ' 按活动关键字模糊查询', '', ' 查出符合条件的结果', '正常', 116, 10524, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:38:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10263, 1, '2', '检查活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10525, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:55:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10264, 1, '2', ' 检查已发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10526, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:58:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10265, 1, '2', ' 检查未发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10527, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:58:30', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10266, 1, '2', ' 更改排序后，批量排序', '', ' 排序成功', '正常', 116, 10528, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:02:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10267, 1, '2', ' 未更改排序，进行批量排序', '', ' 排序失败', '正常', 116, 10528, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:02:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10268, 2, '2', ' 正常添加活动', '', ' 添加成功', '正常', 116, 10529, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:02:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10269, 2, '2', ' 添加活动名和以前存在同名的活动', '', ' 添加失败', '正常', 116, 10529, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:03:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10270, 2, '2', ' 正常编辑', '', ' 保存成功', '正常', 116, 10530, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:04:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10271, 2, '2', ' 编辑时，把活动名称改为和以前的某个活动重名的', '', ' 保存失败', '正常', 116, 10530, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:05:10', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10272, 1, '2', ' 未发布的活动，发布', '', ' 发布成功', '正常', 116, 10531, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:05:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10273, 1, '2', ' 已发布，为下线的活动，发布', '', '不能再次发布', '正常', 116, 10531, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:06:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10274, 1, '2', ' 已发布的活动，下线', '', ' 下线成功', '正常', 116, 10532, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:06:21', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10275, 1, '2', ' 未发布或已下线的活动，下线', '', ' 不能下线', '正常', 116, 10532, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:07:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10276, 1, '2', '点击活动报名', '', ' 进入活动已报名的名表', '正常', 116, 10533, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:07:58', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10277, 1, '2', ' 按姓名精确查询', '', ' 查询符合条件的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:09:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10278, 1, '2', ' 按姓名模糊查询', '', ' 查询符合条件的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:09:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10279, 1, '2', ' 按手机号精确查询', '', ' 查到对对应的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:10:09', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10280, 1, '2', ' 按手机号模糊查询', '', ' 查询符合条件的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:11:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10281, 1, '2', ' 检查报名人员列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10535, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:11:52', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10283, 1, '2', ' 按所属部门筛选', '', ' 筛选出该部门级下级部门的所有人员', '正常', 116, 10425, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:22:28', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10284, 1, '2', ' 选中某个员工进行“分派管家”', '&lt;p&gt;\r\n	按钮&amp;ldquo;分派管家&amp;rdquo;有歧义需斟酌&lt;/p&gt;\r\n', '把该员工设定为移民管家', '待确认', 116, 10425, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:23:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10285, 1, '2', '正常 编辑管家', '', ' 保存成功', '正常', 116, 10426, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:25:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10286, 1, '2', ' 点击姓名', '', ' 进入管家详情', '正常', 116, 10429, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:26:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10287, 1, '2', ' 点击英文名', '', ' 进入管家详情', '正常', 116, 10429, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:27:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10288, 1, '2', ' 点击管家星级', '', ' 进入管家评价', '正常', 116, 10427, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:27:55', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10289, 3, '2', '修改排序数字，重新排序', '', ' 排序成功，且前台展示也按此顺序排序', '正常', 116, 10519, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:40:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10290, 3, '2', ' 未修改排序。批量排序', '', ' 重新排序失败', '正常', 116, 10519, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:41:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10291, 3, '2', ' 修改权重比例，权重之和等于100%', '', ' 保存权重成功', '正常', 116, 10522, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:42:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10292, 3, '2', '  修改权重比例，权重之和不等于100%', '', ' 保存失败', '正常', 116, 10522, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:42:33', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10293, 3, '2', ' 权重之和等于100%，发布', '', ' 发布成功', '正常', 116, 10523, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:43:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10294, 3, '2', ' 权重之和不等于100%，发布', '', ' 发布失败', '正常', 116, 10523, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:43:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10295, 2, '2', '正常删除', '', ' 弹出确认窗口，确认后删除', '正常', 116, 10521, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:43:57', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10296, 6, '2', ' 正常添加问题', '', ' 添加成功', '正常', 116, 10518, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:45:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10297, 6, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10520, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:45:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10298, 10, '2', ' 正确的用户名，正确的密码', '', ' 正常登陆', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:00:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10299, 10, '2', ' 用户被禁用，正确的用户名，正确的密码', '', ' 提示被禁用', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:01:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10300, 10, '2', ' 不存在的用户名', '', '用户名不存在', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:02:03', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10301, 10, '2', ' 错误的密码', '', ' 密码错误', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:02:21', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10302, 10, '2', ' 正确用户名，不输密码', '', ' 请输入密码', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:02:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10303, 10, '2', ' 不输入用户名， 随便数个什么密码', '', '请输入用户名', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:03:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10304, 10, '2', ' 用户名和 密码都不输入，直接点登陆', '', ' 请输入用户名', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:03:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10305, 4, '2', ' 正常退出', '', ' 用户退出登录，跳转到登陆页面', '正常', 116, 10479, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:04:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_cate`
--

DROP TABLE IF EXISTS `zt_tp_cate`;
CREATE TABLE `zt_tp_cate` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_cate`
--

INSERT INTO `zt_tp_cate` (`id`, `sn`, `pid`, `catname`, `state`, `prodid`, `moder`, `utime`) VALUES
(3, 100, 0, '社保福利', '正常', 3, '腰立辉', '2017-02-04 15:13:05'),
(4, 1, 0, '传统业务', '已搁置', 1, '腰立辉', '2017-02-05 10:30:02'),
(5, 40, 0, '微网站', '已搁置', 1, '腰立辉', '2017-02-05 10:30:09'),
(6, 50, 0, '公众号', '已搁置', 1, '腰立辉', '2017-02-05 10:30:14'),
(10, 1, 0, '学前少儿', '正常', 2, '腰立辉', '2017-02-04 15:13:57'),
(11, 2, 0, '小学课程', '正常', 2, '腰立辉', '2017-02-04 15:14:04'),
(12, 3, 0, '中学课程', '正常', 2, '腰立辉', '2017-02-04 15:14:15'),
(13, 4, 0, '作业托管', '正常', 2, '腰立辉', '2017-02-04 15:14:26'),
(14, 5, 0, '兴趣拓展', '正常', 2, '腰立辉', '2017-02-04 15:15:33'),
(18, 10, 4, '文印', '正常', 1, '腰立辉', '2017-02-04 15:30:48'),
(19, 20, 4, '广告牌', '正常', 1, '腰立辉', '2017-02-04 15:30:56'),
(20, 60, 6, '微信公众号', '正常', 1, '腰立辉', '2017-02-04 15:31:05'),
(21, 70, 6, '支付宝', '正常', 1, '腰立辉', '2017-02-04 15:31:57'),
(29, 41, 5, '整站', '正常', 1, '腰立辉', '2017-02-04 15:32:04'),
(30, 42, 5, '宣传页', '正常', 1, '腰立辉', '2017-02-04 15:32:11'),
(31, 43, 5, '服务器', '正常', 1, '腰立辉', '2017-02-04 15:32:18'),
(32, 44, 5, '域名', '正常', 1, '腰立辉', '2017-02-04 15:32:25'),
(33, 45, 5, '第三方授权', '已搁置', 1, '腰立辉', '2017-02-05 10:30:28'),
(58, 4, 0, '汽车用品', '正常', 4, '腰立辉', '2017-02-04 15:32:40'),
(59, 1, 0, '钣金喷漆', '正常', 4, '腰立辉', '2017-02-04 15:32:47'),
(60, 3, 0, '汽车维修', '正常', 4, '腰立辉', '2017-02-04 15:31:31'),
(61, 2, 0, '汽车保养', '正常', 4, '腰立辉', '2017-02-04 15:31:50'),
(62, 1, 0, '人力中介', '正常', 3, '腰立辉', '2017-02-04 15:32:54'),
(63, 200, 0, '健康体检', '正常', 3, '腰立辉', '2017-02-04 15:33:00'),
(64, 300, 0, '职业培训', '正常', 3, '腰立辉', '2017-02-04 15:33:07'),
(68, 4, 0, '房产中介', '正常', 3, '腰立辉', '2017-02-04 15:33:36'),
(69, 1, 11, '一年级', '正常', 2, '腰立辉', '2017-02-04 15:30:32'),
(70, 2, 11, '二年级', '正常', 2, '腰立辉', '2017-02-04 15:30:19'),
(71, 3, 11, '三年级', '正常', 2, '腰立辉', '2017-02-04 15:30:12'),
(72, 4, 11, '四年级', '正常', 2, '腰立辉', '2017-02-04 15:30:05'),
(73, 5, 11, '五年级', '正常', 2, '腰立辉', '2017-02-04 15:29:59'),
(74, 6, 11, '六年级', '正常', 2, '腰立辉', '2017-02-04 15:29:50'),
(75, 1, 12, '七年级(初中)', '正常', 2, '腰立辉', '2017-02-04 15:29:34'),
(76, 2, 12, '八年级(初中)', '正常', 2, '腰立辉', '2017-02-04 15:29:43'),
(77, 3, 12, '九年级(初中)', '正常', 2, '腰立辉', '2017-02-04 15:21:19'),
(78, 4, 12, '高一', '正常', 2, '腰立辉', '2017-02-04 15:21:33'),
(79, 5, 12, '高二', '正常', 2, '腰立辉', '2017-02-04 15:21:39'),
(80, 6, 12, '高三', '正常', 2, '腰立辉', '2017-02-04 15:21:45');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_customer`
--

DROP TABLE IF EXISTS `zt_tp_customer`;
CREATE TABLE `zt_tp_customer` (
  `id` smallint(6) NOT NULL COMMENT 'ID',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `pincodes` char(18) DEFAULT NULL COMMENT '身份证号码',
  `password` char(32) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `qq` varchar(13) DEFAULT NULL,
  `remark` text,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_customer`
--

INSERT INTO `zt_tp_customer` (`id`, `phone`, `pincodes`, `password`, `realname`, `weixin`, `qq`, `remark`, `moder`, `ctime`, `utime`) VALUES
(1, '15803114069', NULL, 'c33367701511b4f6020ec61ded352059', '孙云云', NULL, NULL, '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '梁小伟', 1478415695, '2016-12-18 13:49:25'),
(13, '13931162537', NULL, 'f379eaf3c831b04de153469d1bec345e', '刘一玮', NULL, NULL, '一对二', '梁小伟', 1479302465, '2017-01-25 08:47:52'),
(14, '15803114068', NULL, 'f379eaf3c831b04de153469d1bec345e', '康国胜', NULL, NULL, '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', 1481619189, '2016-12-18 13:42:10'),
(15, '18801043607', '132223198401040613', '18801043607', '腰立辉', 'yaolihui129', '83000892', NULL, '腰立辉', 1485337267, '2017-01-25 09:41:07');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_dict`
--

DROP TABLE IF EXISTS `zt_tp_dict`;
CREATE TABLE `zt_tp_dict` (
  `id` smallint(6) NOT NULL,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `moder` varchar(10) DEFAULT '腰立辉',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_dict`
--

INSERT INTO `zt_tp_dict` (`id`, `k`, `v`, `type`, `state`, `moder`, `utime`) VALUES
(1, 1, '正常', 'state', '正常', '腰立辉', NULL),
(2, 2, '待确认', 'state', '正常', '腰立辉', NULL),
(3, 3, '已搁置', 'state', '正常', '腰立辉', NULL),
(4, 4, '作废', 'state', '正常', '腰立辉', NULL),
(5, 1, '未开始', 'prost', '正常', '腰立辉', NULL),
(6, 2, '进行中', 'prost', '正常', '腰立辉', NULL),
(7, 3, '已完成', 'prost', '正常', '腰立辉', '2016-11-11 08:49:34'),
(8, 8, '仿真验证通过', 'prost', '作废', '腰立辉', '2016-11-11 08:50:28'),
(9, 6, '已取消', 'prost', '正常', '腰立辉', '2016-11-11 08:50:20'),
(30, 1, '简要', 'ptype', '正常', '腰立辉', NULL),
(31, 2, '常规', 'ptype', '正常', '腰立辉', '2016-09-16 14:23:48'),
(32, 1, '新项目', 'reType', '正常', '腰立辉', '2016-10-24 01:19:51'),
(33, 2, '升级版本', 'reType', '正常', '腰立辉', '2016-10-24 01:20:04'),
(34, 3, '临时修正程序', 'reType', '正常', '腰立辉', '2016-10-24 01:20:19'),
(35, 1, '紧急需求', 'reLevel', '正常', '腰立辉', '2016-09-17 06:28:53'),
(36, 2, '一般需求', 'reLevel', '正常', '腰立辉', '2016-09-17 06:28:44'),
(37, 1, '测试', 'position', '正常', '腰立辉', '2016-12-19 03:29:38'),
(38, 2, '产品经理', 'position', '正常', '腰立辉', '2016-12-19 03:28:27'),
(39, 3, '后台研发', 'position', '正常', '腰立辉', '2016-12-19 03:29:05'),
(40, 4, '前端工程师', 'position', '正常', '腰立辉', '2016-12-19 03:29:19'),
(41, 5, '架构师', 'position', '正常', '腰立辉', '2016-12-19 03:29:31'),
(42, 6, '总经理', 'position', '正常', '腰立辉', '2016-12-19 03:29:50'),
(43, 1, '无文档', 'document', '正常', '腰立辉', '2016-09-17 08:09:39'),
(44, 2, '测试计划', 'document', '正常', '腰立辉', '2016-09-17 08:08:42'),
(45, 3, '测试用例', 'document', '正常', '腰立辉', '2016-09-17 08:08:55'),
(46, 4, 'BUG分析报告', 'document', '正常', '腰立辉', '2016-09-17 08:09:28'),
(47, 5, '测试综合报告', 'document', '正常', '腰立辉', '2016-09-17 08:09:23'),
(48, 1, '打开', 'rstate', '正常', '腰立辉', NULL),
(49, 2, '关闭', 'rstate', '正常', '腰立辉', '2016-09-17 08:18:30'),
(50, 1, 'A', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:42'),
(51, 2, 'B', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:21'),
(52, 3, 'C', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:27'),
(53, 4, 'D', 'risklevel', '正常', '腰立辉', '2016-09-17 08:19:34'),
(54, 1, 'M', 'sceneType', '正常', '腰立辉', '2016-09-23 13:11:13'),
(55, 2, 'A', 'sceneType', '正常', '腰立辉', '2016-09-23 13:11:19'),
(56, 1, '未测试', 'sceneResul', '正常', '腰立辉', NULL),
(57, 2, '通过', 'sceneResul', '正常', '腰立辉', '2016-10-10 08:22:33'),
(58, 3, '失败', 'sceneResul', '正常', '腰立辉', '2016-10-10 08:22:39'),
(59, 4, '场景错', 'sceneResul', '正常', '腰立辉', '2016-10-10 08:22:45'),
(60, 1, '操作', 'typeset', '正常', '腰立辉', '2016-10-20 07:08:41'),
(61, 2, '检查', 'typeset', '正常', '腰立辉', '2016-10-20 07:08:52'),
(62, 1, '待维护', 'dstate', '正常', '腰立辉', '2016-10-20 08:21:49'),
(63, 2, '已完成', 'dstate', '正常', '腰立辉', '2016-10-20 08:22:03'),
(64, 4, '功能优化', 'reType', '正常', '腰立辉', '2016-10-24 01:20:29'),
(65, 5, '性能优化', 'reType', '正常', '腰立辉', '2016-10-24 01:20:37'),
(66, 6, '用户体验优化', 'reType', '正常', '腰立辉', '2016-10-24 01:20:47'),
(67, 4, '已上线', 'prost', '正常', '腰立辉', '2016-11-11 08:50:05'),
(69, 3, 'C', 'sceneType', '正常', '腰立辉', '2016-11-16 09:23:14'),
(68, 5, '已搁置', 'prost', '正常', '腰立辉', '2016-11-11 08:50:15'),
(70, 1, '在职', 'adminst', '正常', '腰立辉', '2016-11-17 05:57:24'),
(71, 2, '离职', 'adminst', '正常', '腰立辉', '2016-11-17 05:57:34'),
(72, 1, 'PJD', 'testgp', '正常', '腰立辉', '2016-12-17 14:37:50'),
(73, 1, '技师', 'tech', '正常', '腰立辉', '2016-12-17 09:06:48'),
(74, 2, '非技师', 'tech', '正常', '腰立辉', '2016-12-17 09:07:02'),
(75, 1, '用车小常识', 'usecar', '正常', '腰立辉', '2016-12-17 09:14:52'),
(76, 2, '流言终结者', 'usecar', '正常', '腰立辉', '2016-12-17 09:15:16'),
(77, 1, '抽奖', 'voucher', '正常', '腰立辉', '2016-12-17 09:16:07'),
(78, 2, '普通', 'voucher', '正常', '腰立辉', '2016-12-17 09:16:20'),
(79, 1, '老师', 'custype', '正常', '腰立辉', '2016-12-17 12:09:14'),
(80, 2, '助教', 'custype', '正常', '腰立辉', '2016-12-17 12:09:26'),
(81, 3, '学生', 'custype', '正常', '腰立辉', '2016-12-17 12:09:33'),
(82, 1, '学前少儿', 'coursetype', '正常', '腰立辉', '2016-12-17 12:10:30'),
(83, 2, '小学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 12:10:47'),
(84, 3, '中学课程', 'coursetype', '正常', '腰立辉', '2016-12-17 12:10:55'),
(85, 4, '作业托管', 'coursetype', '正常', '腰立辉', '2016-12-17 12:11:03'),
(86, 5, '兴趣拓展', 'coursetype', '正常', '腰立辉', '2016-12-17 12:11:22'),
(87, 1, '08:00-10:00', 'sktime', '正常', '腰立辉', '2016-12-17 12:13:21'),
(88, 2, '10:10-12:10', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:22'),
(89, 3, '13:30-15:30', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:29'),
(90, 4, '15:40-17:40', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:37'),
(91, 5, '18:00-20:00', 'sktime', '正常', '腰立辉', '2016-12-17 12:12:45'),
(92, 2, 'Auto', 'testgp', '正常', '腰立辉', '2016-12-17 14:45:19'),
(97, 7, 'UI设计师', 'position', '正常', '腰立辉', '2016-12-19 03:30:12');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_element`
--

DROP TABLE IF EXISTS `zt_tp_element`;
CREATE TABLE `zt_tp_element` (
  `id` int(11) NOT NULL,
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
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_exefunc`
--

DROP TABLE IF EXISTS `zt_tp_exefunc`;
CREATE TABLE `zt_tp_exefunc` (
  `id` int(11) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_exefunc`
--

INSERT INTO `zt_tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10437, 1, 10087, 10408, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-08 06:52:09', '2016-12-09 02:18:44'),
(10438, 2, 10087, 10409, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 管家详情', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-08 06:52:09', '2016-12-09 03:15:25'),
(10439, 3, 10087, 10410, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 绑定管家', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-08 06:52:09', '2016-12-08 06:52:09'),
(10440, 4, 10087, 10411, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 微信关注', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-08 06:52:09', '2016-12-08 06:52:09'),
(10441, 5, 10087, 10412, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 电话咨询', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-08 06:52:09', '2016-12-08 06:52:09'),
(10442, 6, 10087, 10413, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 在线咨询', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-08 06:52:09', '2016-12-08 06:52:09'),
(10443, 1, 10088, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '魏斌', '2016-12-09 03:16:06', '2016-12-09 03:52:36'),
(10444, 2, 10088, 10420, NULL, '微网站（用户）- 专属管家-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '失败', NULL, NULL, 'yuuiuy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '魏斌', '2016-12-09 03:16:06', '2016-12-09 03:52:53'),
(10445, 3, 10088, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:06', '2016-12-09 03:16:06'),
(10446, 4, 10088, 10422, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:06', '2016-12-09 03:16:06'),
(10447, 5, 10088, 10423, NULL, '微网站（用户）- 专属管家-公司名片', ' 报名', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:06', '2016-12-09 03:16:06'),
(10448, 6, 10088, 10424, NULL, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:06', '2016-12-09 03:16:06'),
(10449, 1, 10090, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '第一次加载时，全部显示再显示页面', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:26', '2016-12-09 03:23:58'),
(10450, 2, 10090, 10420, NULL, '微网站（用户）- 专属管家-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '不能循环播放', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:26', '2016-12-09 03:24:15'),
(10451, 3, 10090, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:26', '2016-12-09 03:16:26'),
(10452, 4, 10090, 10422, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '分享后，消息不显示图片', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:26', '2016-12-09 03:28:09'),
(10453, 5, 10090, 10423, NULL, '微网站（用户）- 专属管家-公司名片', ' 报名', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '来回波动后，提交“提示用户名不能为空”；安卓手机录入时，二维码会覆盖输入框；可以重复提交', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:26', '2016-12-09 03:25:53'),
(10454, 6, 10090, 10424, NULL, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:26', '2016-12-09 03:25:37'),
(10455, 1, 10091, 10408, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', NULL, '2016-12-09 03:50:22'),
(10456, 4, 10091, 10425, NULL, '微站后台- 内容发布-移民管家', ' 管家新增', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', NULL, '2016-12-09 03:50:22'),
(10457, 3, 10091, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', NULL, '2016-12-09 03:50:22'),
(10458, 1, 10093, 10414, NULL, '微网站（用户）- 专属管家-我的专属管家', ' 我的管家信息', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', '2016-12-09 03:50:43', '2016-12-09 03:50:43'),
(10459, 2, 10093, 10415, NULL, '微网站（用户）- 专属管家-我的专属管家', '点赞', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', '2016-12-09 03:50:43', '2016-12-09 03:50:43'),
(10460, 3, 10093, 10416, NULL, '微网站（用户）- 专属管家-我的专属管家', ' 评价', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', '2016-12-09 03:50:43', '2016-12-09 03:50:43'),
(10461, 4, 10093, 10417, NULL, '微网站（用户）- 专属管家-我的专属管家', ' 分享管家名片', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', '2016-12-09 03:50:43', '2016-12-09 03:50:43'),
(10462, 5, 10093, 10418, NULL, '微网站（用户）- 专属管家-我的专属管家', ' 解除绑定', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', '2016-12-09 03:50:43', '2016-12-09 03:50:43'),
(10463, 1, 10094, 10408, NULL, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', NULL, '2016-12-09 03:51:25'),
(10464, 4, 10094, 10425, NULL, '微站后台- 内容发布-移民管家', ' 管家新增', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', NULL, '2016-12-09 03:51:25'),
(10465, 3, 10094, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '魏斌', NULL, '2016-12-09 03:51:25'),
(10466, 1, 10095, 10401, NULL, '微网站（用户）- 个人中心-商务合作', ' 简介', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 04:05:27', '2016-12-12 06:59:59'),
(10467, 2, 10095, 10402, NULL, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '未收到验证码', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 04:05:27', '2016-12-12 07:02:18'),
(10468, 3, 10095, 10403, NULL, '微网站（用户）- 个人中心-商务合作', ' 登录', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 04:05:27', '2016-12-12 07:06:53'),
(10469, 4, 10095, 10404, NULL, '微网站（用户）- 个人中心-商务合作', ' 提交信息', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '城市级联，城市无选项', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 04:05:27', '2016-12-12 07:07:21'),
(10470, 5, 10095, 10405, NULL, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 04:05:27', '2016-12-12 04:04:36'),
(10471, 6, 10095, 10406, NULL, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 04:05:27', '2016-12-12 04:04:36'),
(10472, 3, 10096, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:23:06'),
(10473, 2, 10096, 10420, NULL, '微网站（用户）- 专属管家-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:23:01'),
(10474, 1, 10096, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:22:57'),
(10475, 4, 10096, 10423, NULL, '微网站（用户）- 专属管家-公司名片', ' 报名', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:23:09'),
(10476, 5, 10096, 10424, NULL, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:23:12'),
(10477, 1, 10097, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '通过', NULL, NULL, '第一次加载时，先显示全部，再进行动画', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:22:36'),
(10478, 2, 10097, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:22:17'),
(10479, 3, 10097, 10422, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:22:20'),
(10480, 3, 10098, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:31'),
(10481, 4, 10098, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:31'),
(10482, 5, 10098, 10422, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:31'),
(10483, 1, 10098, 10426, NULL, '微站后台- 内容发布-移民管家', ' 管家编辑', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:31'),
(10484, 2, 10098, 10429, NULL, '微站后台- 内容发布-移民管家', ' 管家详情', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:31'),
(10485, 1, 10099, 10422, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:34'),
(10486, 4, 10099, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:34'),
(10487, 3, 10099, 10420, NULL, '微网站（用户）- 专属管家-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:34'),
(10488, 2, 10099, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:34'),
(10489, 5, 10099, 10423, NULL, '微网站（用户）- 专属管家-公司名片', ' 报名', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:34'),
(10490, 6, 10099, 10424, NULL, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-12 07:15:34'),
(10491, 1, 10100, 10419, NULL, '微网站（用户）-个人中心-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '第一次加载时，先加载全部，再显示动画，顺序不对', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:48', '2016-12-12 07:19:57'),
(10492, 2, 10100, 10420, NULL, '微网站（用户）-个人中心-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '无连接详情', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:48', '2016-12-12 07:20:19'),
(10493, 3, 10100, 10421, NULL, '微网站（用户）-个人中心-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '三个名片显示同样的内容', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:48', '2016-12-12 07:43:42'),
(10494, 4, 10100, 10422, NULL, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:48', '2016-12-12 07:43:32'),
(10495, 5, 10100, 10423, NULL, '微网站（用户）-个人中心-公司名片', ' 报名', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:48', '2016-12-12 07:21:21'),
(10496, 6, 10100, 10424, NULL, '微网站（用户）-个人中心-公司名片', ' 数据统计', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:48', '2016-12-12 07:21:25'),
(10497, 1, 10101, 10445, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 11:19:47', '2016-12-12 12:14:15'),
(10498, 2, 10101, 10446, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', NULL, NULL, NULL, NULL, '通过', NULL, NULL, '投票报参数错误', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 11:19:48', '2016-12-12 12:14:03'),
(10499, 1, 10102, 10451, NULL, '微网站（用户）- 投票活动-四海一家', ' 首页', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:39:36', '2016-12-12 12:45:27'),
(10500, 2, 10102, 10452, NULL, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:39:36', '2016-12-12 12:45:33'),
(10501, 3, 10102, 10453, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:39:37', '2016-12-12 13:07:36'),
(10502, 4, 10102, 10456, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目投票', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '跳转到开始页', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:39:37', '2016-12-12 13:07:19'),
(10503, 5, 10102, 10454, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目详情', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '滑动页面 底层跟着移动，详情不懂', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:39:37', '2016-12-12 13:08:06'),
(10504, 6, 10102, 10455, NULL, '微网站（用户）- 投票活动-四海一家', ' 详情视频', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '无法播放视频', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:39:37', '2016-12-12 13:08:18'),
(10505, 7, 10102, 10457, NULL, '微网站（用户）- 投票活动-四海一家', ' 官网链接', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:39:37', '2016-12-12 13:08:26'),
(10506, 1, 10103, 10448, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', NULL, NULL, NULL, NULL, '通过', NULL, NULL, '首页页面错位', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:41', '2016-12-12 13:17:40'),
(10507, 2, 10103, 10449, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', NULL, NULL, NULL, NULL, '通过', NULL, NULL, '无背景音乐', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:41', '2016-12-12 13:00:57'),
(10508, 3, 10103, 10445, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:41', '2016-12-12 12:39:51'),
(10509, 4, 10103, 10446, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:41', '2016-12-12 13:01:08'),
(10510, 5, 10103, 10450, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:41', '2016-12-12 13:01:15'),
(10511, 1, 10104, 10451, NULL, '微网站（用户）- 投票活动-四海一家', ' 首页', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:49', '2016-12-12 13:04:06'),
(10512, 2, 10104, 10452, NULL, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:49', '2016-12-12 13:04:10'),
(10513, 3, 10104, 10453, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:49', '2016-12-12 13:04:16'),
(10514, 4, 10104, 10456, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目投票', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '跳转到开始页', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:49', '2016-12-12 13:05:02'),
(10515, 5, 10104, 10454, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目详情', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '滑动，底层跟着移动详情不懂', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:49', '2016-12-12 13:05:50'),
(10516, 6, 10104, 10455, NULL, '微网站（用户）- 投票活动-四海一家', ' 详情视频', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '无法播放', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:49', '2016-12-12 13:06:02'),
(10517, 7, 10104, 10457, NULL, '微网站（用户）- 投票活动-四海一家', ' 官网链接', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:40:49', '2016-12-12 13:06:11'),
(10518, 1, 10105, 10448, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '首页动画的加载顺序', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:09', '2016-12-13 05:02:47'),
(10519, 2, 10105, 10449, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:09', '2016-12-13 04:55:28'),
(10520, 3, 10105, 10445, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:09', '2016-12-13 04:55:54'),
(10521, 4, 10105, 10446, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:09', '2016-12-13 04:57:13'),
(10522, 5, 10105, 10450, NULL, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:09', '2016-12-13 04:57:34'),
(10523, 1, 10106, 10451, NULL, '微网站（用户）- 投票活动-四海一家', ' 首页', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:18', '2016-12-13 08:32:41'),
(10524, 2, 10106, 10452, NULL, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:18', '2016-12-13 08:33:25'),
(10525, 3, 10106, 10453, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:18', '2016-12-13 08:36:02'),
(10526, 4, 10106, 10456, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目投票', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:18', '2016-12-13 08:38:42'),
(10527, 5, 10106, 10454, NULL, '微网站（用户）- 投票活动-四海一家', ' 项目详情', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:18', '2016-12-13 08:39:00'),
(10528, 6, 10106, 10455, NULL, '微网站（用户）- 投票活动-四海一家', ' 详情视频', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '点击无反应', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:18', '2016-12-13 08:39:51'),
(10529, 7, 10106, 10457, NULL, '微网站（用户）- 投票活动-四海一家', ' 官网链接', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-13 03:41:18', '2016-12-13 08:40:09'),
(10530, 1, 10107, 10401, NULL, '微网站（用户）- 个人中心-商务合作', ' 简介', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-14 03:48:43'),
(10531, 2, 10107, 10447, NULL, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-14 03:49:14'),
(10532, 3, 10107, 10402, NULL, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '测试环境获取不到验证码', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-14 03:50:03'),
(10533, 4, 10107, 10403, NULL, '微网站（用户）- 个人中心-商务合作', ' 登录', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '没有验证码只能通过0000登录', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-14 03:50:24'),
(10534, 5, 10107, 10404, NULL, '微网站（用户）- 个人中心-商务合作', ' 提交信息', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '弹出样式有问题；下来列表内容和样式覆盖', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-14 03:52:58'),
(10535, 6, 10107, 10405, NULL, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-14 03:53:03'),
(10536, 7, 10107, 10406, NULL, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-15 02:35:15'),
(10537, 1, 10108, 10458, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '查询后，条件信息被置空', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:47', '2016-12-14 04:02:30'),
(10538, 2, 10108, 10459, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '查询后，条件信息被置空', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:47', '2016-12-14 04:05:05'),
(10539, 3, 10108, 10460, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '查询后，条件信息被置空', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:47', '2016-12-14 04:05:11'),
(10540, 4, 10108, 10461, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '查询后，条件信息被置空，不支持模糊查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:47', '2016-12-14 04:15:12'),
(10541, 5, 10108, 10462, NULL, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '查询后，条件信息被置空', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:47', '2016-12-14 04:15:18'),
(10542, 6, 10108, 10463, NULL, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '空信息被提交过来后，显示错列', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:47', '2016-12-14 04:16:05'),
(10543, 7, 10108, 10464, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查看进度入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:47', '2016-12-14 04:16:12'),
(10544, 1, 10109, 10465, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', NULL, NULL, NULL, NULL, '失败', NULL, NULL, '不显示提交人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:54', '2016-12-15 02:34:37'),
(10545, 2, 10109, 10466, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:55', '2016-12-15 02:34:14'),
(10546, 3, 10109, 10467, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:55', '2016-12-14 04:17:36'),
(10547, 4, 10109, 10468, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 03:47:55', '2016-12-15 01:44:50'),
(10548, 1, 10110, 10458, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 07:50:35'),
(10549, 2, 10110, 10459, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 07:50:59'),
(10550, 3, 10110, 10460, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 08:05:27'),
(10551, 4, 10110, 10461, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 08:05:29'),
(10552, 5, 10110, 10462, NULL, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 08:05:32'),
(10553, 6, 10110, 10463, NULL, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 08:05:43'),
(10554, 7, 10110, 10464, NULL, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 08:05:40'),
(10555, 1, 10111, 10465, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', NULL, NULL, NULL, '', '失败', NULL, NULL, '提交者显示空白', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:47', '2016-12-19 08:06:10'),
(10556, 2, 10111, 10466, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:47', '2016-12-19 08:16:20'),
(10557, 3, 10111, 10467, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:47', '2016-12-19 08:16:09'),
(10558, 4, 10111, 10468, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:47', '2016-12-19 08:16:17'),
(10559, 1, 10112, 10425, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家新增', NULL, NULL, NULL, '', '失败', NULL, NULL, '进入新增页面后，无法退回到刚才的列表页，只能通过导航来完成', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:50', '2016-12-19 08:30:48'),
(10560, 2, 10112, 10426, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:50', '2016-12-19 08:27:27'),
(10561, 3, 10112, 10427, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家评价', NULL, NULL, NULL, '', '失败', NULL, NULL, '没有评价明细，无法操作', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:50', '2016-12-19 08:33:00'),
(10562, 4, 10112, 10428, NULL, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', NULL, NULL, NULL, '', '失败', NULL, NULL, '未发现该功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:50', '2016-12-19 08:35:17'),
(10563, 5, 10112, 10429, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家详情', NULL, NULL, NULL, '', '失败', NULL, NULL, '未发现该功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:50', '2016-12-19 08:35:24'),
(10564, 6, 10112, 10430, NULL, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', NULL, NULL, NULL, '', '失败', NULL, NULL, '查询后，条件信息被置空', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:50', '2016-12-19 07:24:02'),
(10565, 1, 10113, 10401, NULL, '微网站（用户）- 个人中心-商务合作', ' 简介', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 06:54:45'),
(10566, 2, 10113, 10447, NULL, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 06:54:50'),
(10567, 3, 10113, 10402, NULL, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', NULL, NULL, NULL, '', '失败', NULL, NULL, '测试环境获取不到验证码', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 06:56:43'),
(10568, 4, 10113, 10403, NULL, '微网站（用户）- 个人中心-商务合作', ' 登录', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 06:53:57'),
(10569, 5, 10113, 10404, NULL, '微网站（用户）- 个人中心-商务合作', ' 提交信息', NULL, NULL, NULL, '131', '失败', NULL, NULL, '提交成功提示框，很快就消失了', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 06:56:06'),
(10570, 6, 10113, 10405, NULL, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 06:56:21'),
(10571, 7, 10113, 10406, NULL, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 06:56:30'),
(10572, 1, 10114, 10419, NULL, '微网站（用户）-个人中心-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 06:56:52'),
(10573, 2, 10114, 10420, NULL, '微网站（用户）-个人中心-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 06:56:55'),
(10574, 3, 10114, 10421, NULL, '微网站（用户）-个人中心-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 06:57:02'),
(10575, 4, 10114, 10422, NULL, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 06:57:06'),
(10576, 5, 10114, 10423, NULL, '微网站（用户）-个人中心-公司名片', ' 报名', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 07:13:52'),
(10577, 6, 10114, 10469, NULL, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 07:13:46'),
(10578, 7, 10114, 10424, NULL, '微网站（用户）-个人中心-公司名片', ' 数据统计', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 07:18:09'),
(10579, 1, 10115, 10470, NULL, '微站CRM后台-数据中心-获客列表', ' 获客列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:47:55', '2016-12-19 07:48:50'),
(10580, 2, 10115, 10471, NULL, '微站CRM后台-数据中心-获客列表', ' 查询筛选', NULL, NULL, NULL, '', '失败', NULL, NULL, '此功能缺失', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:47:55', '2016-12-19 07:49:02'),
(10581, 1, 10116, 10472, NULL, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:48:06', '2016-12-19 08:16:40'),
(10582, 2, 10116, 10473, NULL, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:48:06', '2016-12-19 08:16:42'),
(10583, 1, 10117, 10474, NULL, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', NULL, NULL, NULL, '', '失败', NULL, NULL, '只有未设置的列表，已设置的或所有的没有地方查', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:48:10', '2016-12-19 08:18:52'),
(10584, 2, 10117, 10475, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:48:10', '2016-12-19 08:16:54'),
(10585, 3, 10117, 10476, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', NULL, NULL, NULL, '', '失败', NULL, NULL, '用下拉菜单悬着200个用户，以后还回更多，极容易选错；选错了，没有地方可以查到微信号帮给了谁', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:48:10', '2016-12-19 08:18:05'),
(10586, 4, 10117, 10477, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-19 07:48:10', '2016-12-19 08:18:08'),
(10587, 1, 10118, 10458, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:45:02'),
(10588, 2, 10118, 10459, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:45:10'),
(10589, 3, 10118, 10460, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:47:46'),
(10590, 4, 10118, 10461, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:47:48'),
(10591, 5, 10118, 10462, NULL, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:47:51'),
(10592, 6, 10118, 10463, NULL, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', NULL, NULL, NULL, '39,40', '失败', NULL, NULL, '微信昵称有特殊符号；姓名下有优化线', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:47:43'),
(10593, 7, 10118, 10464, NULL, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:47:57'),
(10594, 1, 10119, 10465, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:39', '2016-12-20 08:50:06'),
(10595, 2, 10119, 10466, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:39', '2016-12-20 08:50:09'),
(10596, 3, 10119, 10467, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:39', '2016-12-20 08:48:53'),
(10597, 4, 10119, 10468, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:39', '2016-12-20 08:50:13'),
(10598, 1, 10120, 10425, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家新增', NULL, NULL, NULL, '142', '失败', NULL, NULL, '没有返回，只能通过导航跳出本页面', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:44', '2016-12-20 08:55:59'),
(10599, 2, 10120, 10426, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:44', '2016-12-20 08:56:03'),
(10600, 3, 10120, 10427, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家评价', NULL, NULL, NULL, '144', '失败', NULL, NULL, '没有评价明细，无法操作', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:44', '2016-12-20 09:04:03'),
(10601, 4, 10120, 10428, NULL, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', NULL, NULL, NULL, '', '失败', NULL, NULL, '未发现该功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:44', '2016-12-20 08:57:00'),
(10602, 5, 10120, 10429, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家详情', NULL, NULL, NULL, '', '失败', NULL, NULL, '未发现该功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:44', '2016-12-20 09:02:10'),
(10603, 6, 10120, 10430, NULL, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', NULL, NULL, NULL, '143', '失败', NULL, NULL, '查询后，条件信息被置空', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:44', '2016-12-20 09:02:01'),
(10604, 1, 10121, 10470, NULL, '微站CRM后台-数据中心-获客列表', ' 获客列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:53', '2016-12-20 09:04:54'),
(10605, 2, 10121, 10471, NULL, '微站CRM后台-数据中心-获客列表', ' 查询筛选', NULL, NULL, NULL, '125', '失败', NULL, NULL, '此功能缺失', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:53', '2016-12-20 09:05:26'),
(10606, 1, 10122, 10472, NULL, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:58', '2016-12-20 09:05:43');
INSERT INTO `zt_tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10607, 2, 10122, 10473, NULL, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:42:58', '2016-12-20 09:05:45'),
(10608, 1, 10123, 10474, NULL, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', NULL, NULL, NULL, '', '通过', NULL, NULL, '只有未设置的列表，已设置的或所有的没有地方查', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:02', '2016-12-20 09:15:59'),
(10609, 2, 10123, 10475, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:02', '2016-12-20 09:07:34'),
(10610, 3, 10123, 10476, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', NULL, NULL, NULL, '122', '失败', NULL, NULL, ' OpenID绑定时，选择人员用下拉菜单，公司暂时百十号人，根本不易查找，还特别容易出错', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:02', '2016-12-20 09:08:32'),
(10611, 4, 10123, 10477, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', NULL, NULL, NULL, '', '通过', NULL, NULL, '解绑后，显示解绑前的名字', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:02', '2016-12-20 09:08:53'),
(10612, 1, 10124, 10401, NULL, '微网站（用户）- 个人中心-商务合作', ' 简介', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:24'),
(10613, 2, 10124, 10447, NULL, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:26'),
(10614, 3, 10124, 10402, NULL, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', NULL, NULL, NULL, '', '通过', NULL, NULL, '测试环境获取不到验证码', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:39'),
(10615, 4, 10124, 10403, NULL, '微网站（用户）- 个人中心-商务合作', ' 登录', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:45'),
(10616, 5, 10124, 10404, NULL, '微网站（用户）- 个人中心-商务合作', ' 提交信息', NULL, NULL, NULL, '141', '失败', NULL, NULL, '网络慢的情况下，有重复提交的情况', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:21'),
(10617, 6, 10124, 10405, NULL, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:50'),
(10618, 7, 10124, 10406, NULL, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:51'),
(10619, 1, 10125, 10419, NULL, '微网站（用户）-个人中心-公司名片', ' 公司介绍', NULL, NULL, NULL, '', '通过', NULL, NULL, '第一次加载时，先加载全部，再显示动画，顺序不对', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:26'),
(10620, 2, 10125, 10420, NULL, '微网站（用户）-个人中心-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:29'),
(10621, 3, 10125, 10421, NULL, '微网站（用户）-个人中心-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:32'),
(10622, 4, 10125, 10422, NULL, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:34'),
(10623, 5, 10125, 10423, NULL, '微网站（用户）-个人中心-公司名片', ' 报名', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:39'),
(10624, 6, 10125, 10469, NULL, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:47'),
(10625, 7, 10125, 10424, NULL, '微网站（用户）-个人中心-公司名片', ' 数据统计', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:49'),
(10626, 1, 10126, 10458, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:27:33'),
(10627, 2, 10126, 10459, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:27:57'),
(10628, 3, 10126, 10460, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:28:06'),
(10629, 4, 10126, 10461, NULL, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:28:30'),
(10630, 5, 10126, 10462, NULL, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:29:08'),
(10631, 6, 10126, 10463, NULL, '微站CRM后台-商务合作-商务合作管理', '商务合作列表', NULL, NULL, NULL, '', '失败', NULL, NULL, '微信昵称有特殊符号；姓名下有优化线', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:29:30'),
(10632, 7, 10126, 10464, NULL, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:29:12'),
(10633, 1, 10127, 10465, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:16', '2016-12-22 03:30:11'),
(10634, 2, 10127, 10466, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:16', '2016-12-22 03:30:32'),
(10635, 3, 10127, 10467, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:16', '2016-12-22 03:30:34'),
(10636, 4, 10127, 10468, NULL, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:16', '2016-12-22 03:30:36'),
(10637, 1, 10128, 10470, NULL, '微站CRM后台-数据中心-获客列表', ' 获客列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:25', '2016-12-22 03:42:40'),
(10638, 2, 10128, 10471, NULL, '微站CRM后台-数据中心-获客列表', ' 查询筛选', NULL, NULL, NULL, '', '失败', NULL, NULL, '此功能缺失', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:25', '2016-12-22 03:42:55'),
(10639, 1, 10129, 10472, NULL, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:38', '2016-12-22 03:43:35'),
(10640, 2, 10129, 10473, NULL, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:38', '2016-12-22 03:43:37'),
(10641, 1, 10130, 10474, NULL, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', NULL, NULL, NULL, '', '失败', NULL, NULL, '只有未设置的列表，已设置的或所有的没有地方查;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:42', '2016-12-22 03:43:47'),
(10642, 2, 10130, 10475, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:42', '2016-12-22 03:43:58'),
(10643, 3, 10130, 10476, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', NULL, NULL, NULL, '', '失败', NULL, NULL, ' OpenID绑定时，选择人员用下拉菜单，公司暂时百十号人，根本不易查找，还特别容易出错', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:42', '2016-12-22 03:44:18'),
(10644, 4, 10130, 10477, NULL, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:42', '2016-12-22 03:44:28'),
(10645, 1, 10131, 10401, NULL, '微网站（用户）- 个人中心-商务合作', ' 简介', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-22 03:44:37'),
(10646, 2, 10131, 10447, NULL, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-22 03:44:39'),
(10647, 3, 10131, 10402, NULL, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-22 03:44:49'),
(10648, 4, 10131, 10403, NULL, '微网站（用户）- 个人中心-商务合作', ' 登录', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-22 03:44:51'),
(10649, 5, 10131, 10404, NULL, '微网站（用户）- 个人中心-商务合作', ' 提交信息', NULL, NULL, NULL, '', '失败', NULL, NULL, '网络慢的情况下，有重复提交的情况', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-22 03:45:09'),
(10650, 6, 10131, 10405, NULL, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-22 03:45:24'),
(10651, 7, 10131, 10406, NULL, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-22 03:45:27'),
(10652, 1, 10132, 10419, NULL, '微网站（用户）-个人中心-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-22 03:45:50'),
(10653, 2, 10132, 10420, NULL, '微网站（用户）-个人中心-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-22 03:45:51'),
(10654, 3, 10132, 10421, NULL, '微网站（用户）-个人中心-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-22 03:45:53'),
(10655, 4, 10132, 10422, NULL, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-22 03:46:18'),
(10656, 5, 10132, 10423, NULL, '微网站（用户）-个人中心-公司名片', ' 报名', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-22 03:46:21'),
(10657, 6, 10132, 10469, NULL, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-22 03:46:25'),
(10658, 7, 10132, 10424, NULL, '微网站（用户）-个人中心-公司名片', ' 数据统计', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-22 03:46:28'),
(10659, 1, 10133, 10425, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家新增', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:24:10', '2016-12-21 01:24:10'),
(10660, 2, 10133, 10426, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:24:10', '2016-12-21 01:24:10'),
(10661, 3, 10133, 10427, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家评价', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:24:10', '2016-12-21 01:24:10'),
(10662, 4, 10133, 10428, NULL, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:24:10', '2016-12-21 01:24:10'),
(10663, 5, 10133, 10429, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家详情', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:24:10', '2016-12-21 01:24:10'),
(10664, 6, 10133, 10430, NULL, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', NULL, NULL, NULL, NULL, '未测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:24:10', '2016-12-21 01:24:10'),
(10665, 1, 10134, 10478, NULL, '微站CRM后台- 登录', ' 登录', NULL, NULL, NULL, '', '通过', NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:00:06', '2016-12-22 09:04:56'),
(10666, 2, 10134, 10479, NULL, '微站CRM后台- 登录', ' 注销', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:00:06', '2016-12-21 10:19:50'),
(10667, 3, 10134, 10480, NULL, '微站CRM后台- 登录', ' 修改密码', NULL, NULL, NULL, '', '通过', NULL, NULL, '用例完成', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:00:06', '2016-12-21 10:20:03'),
(10668, 4, 10134, 10481, NULL, '微站CRM后台- 登录', ' 切换平台', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:00:06', '2016-12-21 10:20:06'),
(10669, 1, 10135, 10562, NULL, '微网站（用户）- 项目活动-生活体验', ' 向往国家', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:37', '2016-12-22 09:23:56'),
(10670, 2, 10135, 10563, NULL, '微网站（用户）- 项目活动-生活体验', ' 向往城市', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:37', '2016-12-22 09:23:54'),
(10671, 3, 10135, 10564, NULL, '微网站（用户）- 项目活动-生活体验', ' 体验分类列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:37', '2016-12-22 09:24:02'),
(10672, 4, 10135, 10565, NULL, '微网站（用户）- 项目活动-生活体验', ' 体验详情', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:37', '2016-12-22 09:24:09'),
(10673, 1, 10136, 10419, NULL, '微网站（用户）-项目活动-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:37:44'),
(10674, 2, 10136, 10420, NULL, '微网站（用户）-项目活动-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:37:46'),
(10675, 2, 10136, 10590, NULL, '微网站（用户）-项目活动-公司名片', '项目详情', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:37:48'),
(10676, 3, 10136, 10421, NULL, '微网站（用户）-项目活动-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:37:50'),
(10677, 4, 10136, 10422, NULL, '微网站（用户）-项目活动-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:37:53'),
(10678, 5, 10136, 10423, NULL, '微网站（用户）-项目活动-公司名片', ' 报名', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:37:58'),
(10679, 6, 10136, 10469, NULL, '微网站（用户）-项目活动-公司名片', ' 消息反馈（移动管家名片）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:38:07'),
(10680, 7, 10136, 10424, NULL, '微网站（用户）-项目活动-公司名片', ' 数据统计', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-22 09:38:11'),
(10681, 1, 10137, 10482, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-按国家地区', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:22:05'),
(10682, 2, 10137, 10483, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目类型', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:22:07'),
(10683, 3, 10137, 10484, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:22:02'),
(10684, 4, 10137, 10485, NULL, '微站CRM后台- 项目资料库-项目管理', ' 快速查询', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:22:13'),
(10685, 5, 10137, 10486, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-上线日期范围', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:27:12'),
(10686, 6, 10137, 10487, NULL, '微站CRM后台- 项目资料库-项目管理', ' 组合查询', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:22:19'),
(10687, 7, 10137, 10488, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:36:13'),
(10688, 8, 10137, 10489, NULL, '微站CRM后台- 项目资料库-项目管理', '项目-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-21 09:10:16'),
(10689, 9, 10137, 10490, NULL, '微站CRM后台- 项目资料库-项目管理', ' 扩展推荐', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:45:57'),
(10690, 10, 10137, 10491, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-21 09:10:16'),
(10691, 11, 10137, 10492, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目-暂停', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 02:02:56'),
(10692, 12, 10137, 10493, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目-发布（在编辑页面里）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 01:24:39'),
(10693, 1, 10138, 10494, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:19', '2016-12-23 02:49:23'),
(10694, 2, 10138, 10495, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:19', '2016-12-23 02:49:26'),
(10695, 3, 10138, 10496, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-导入', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:19', '2016-12-23 02:49:28'),
(10696, 4, 10138, 10497, NULL, '微站CRM后台- 项目管理-申请流程', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:19', '2016-12-23 02:49:32'),
(10697, 5, 10138, 10498, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:19', '2016-12-23 02:49:34'),
(10698, 6, 10138, 10499, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-删除', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:19', '2016-12-23 02:49:37'),
(10699, 1, 10139, 10506, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料清单列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:04:42'),
(10700, 2, 10139, 10507, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:04:44'),
(10701, 3, 10139, 10508, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-导入', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:04:50'),
(10702, 4, 10139, 10509, NULL, '微站CRM后台- 项目管理-材料清单', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:04:46'),
(10703, 5, 10139, 10510, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-样例', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:04:54'),
(10704, 6, 10139, 10511, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:04:57'),
(10705, 7, 10139, 10512, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-删除', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:05:01'),
(10706, 1, 10140, 10513, NULL, '微站CRM后台- 项目-图片', ' 图片-列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:31', '2016-12-23 06:05:27'),
(10707, 2, 10140, 10514, NULL, '微站CRM后台- 项目-图片', ' 项目图片-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:31', '2016-12-23 06:05:29'),
(10708, 3, 10140, 10515, NULL, '微站CRM后台- 项目-图片', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:31', '2016-12-23 06:05:31'),
(10709, 4, 10140, 10516, NULL, '微站CRM后台- 项目-图片', ' 项目图片-编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:31', '2016-12-23 06:05:33'),
(10710, 5, 10140, 10517, NULL, '微站CRM后台- 项目-图片', ' 项目图片-删除', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:31', '2016-12-23 06:05:35'),
(10711, 1, 10141, 10518, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:52', '2016-12-23 09:49:44'),
(10712, 2, 10141, 10519, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:52', '2016-12-23 09:49:45'),
(10713, 3, 10141, 10520, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:52', '2016-12-23 09:49:48'),
(10714, 4, 10141, 10521, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题-删除', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:52', '2016-12-23 09:49:51'),
(10715, 5, 10141, 10522, NULL, '微站CRM后台-项目资料库-移民评估', ' 权重-保存', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:52', '2016-12-23 09:50:00'),
(10716, 6, 10141, 10523, NULL, '微站CRM后台-项目资料库-移民评估', ' 问卷-发布', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:52', '2016-12-23 09:50:03'),
(10717, 1, 10142, 10536, NULL, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:56', '2016-12-23 06:21:37'),
(10718, 2, 10142, 10537, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:56', '2016-12-23 06:21:41'),
(10719, 3, 10142, 10538, NULL, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:56', '2016-12-23 07:44:49'),
(10720, 4, 10142, 10539, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:56', '2016-12-23 07:44:51'),
(10721, 5, 10142, 10540, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:56', '2016-12-23 07:44:54'),
(10722, 6, 10142, 10541, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:10:56', '2016-12-23 07:44:56'),
(10723, 1, 10143, 10542, NULL, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:42'),
(10724, 2, 10143, 10543, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:44'),
(10725, 3, 10143, 10544, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:46'),
(10726, 4, 10143, 10545, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:48'),
(10727, 5, 10143, 10546, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:51'),
(10728, 6, 10143, 10547, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:55'),
(10729, 7, 10143, 10548, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:58'),
(10730, 8, 10143, 10549, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:21:01'),
(10731, 9, 10143, 10550, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:21:04'),
(10732, 1, 10144, 10524, NULL, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 08:49:09'),
(10733, 2, 10144, 10525, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 08:54:54'),
(10734, 3, 10144, 10526, NULL, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:13'),
(10735, 4, 10144, 10527, NULL, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:15'),
(10736, 5, 10144, 10528, NULL, '微站CRM后台- 内容发布-活动管理', ' 更新排序', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:17'),
(10737, 6, 10144, 10529, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:20'),
(10738, 7, 10144, 10530, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:23'),
(10739, 8, 10144, 10531, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:26'),
(10740, 9, 10144, 10532, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:29'),
(10741, 10, 10144, 10533, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:32'),
(10742, 1, 10145, 10534, NULL, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:20', '2016-12-23 09:12:00'),
(10743, 2, 10145, 10535, NULL, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:20', '2016-12-23 09:12:02'),
(10744, 1, 10146, 10425, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:27', '2016-12-23 09:26:21'),
(10745, 2, 10146, 10426, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:27', '2016-12-23 09:26:23'),
(10746, 3, 10146, 10427, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家评价', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:27', '2016-12-23 09:28:12'),
(10747, 4, 10146, 10428, NULL, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:27', '2016-12-21 09:11:27'),
(10748, 5, 10146, 10429, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家详情', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:27', '2016-12-23 09:27:20'),
(10749, 6, 10146, 10430, NULL, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:27', '2016-12-23 09:28:21'),
(10750, 1, 10147, 10566, NULL, '微站CRM后台- 项目资料库-国家管理', ' 查询-按国家名', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10751, 2, 10147, 10567, NULL, '微站CRM后台- 项目资料库-国家管理', ' 查询-按地理分类', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10752, 3, 10147, 10568, NULL, '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10753, 4, 10147, 10569, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10754, 5, 10147, 10570, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10755, 6, 10147, 10571, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10756, 7, 10147, 10572, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10757, 8, 10147, 10573, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-发布', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10758, 9, 10147, 10574, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-下线', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10759, 10, 10147, 10575, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家详情-入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-21 09:11:57'),
(10760, 1, 10148, 10576, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:59', '2016-12-21 09:11:59'),
(10761, 2, 10148, 10577, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:59', '2016-12-21 09:11:59'),
(10762, 3, 10148, 10578, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:59', '2016-12-21 09:11:59'),
(10763, 4, 10148, 10579, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:59', '2016-12-21 09:11:59'),
(10764, 5, 10148, 10580, NULL, '微站CRM后台- 国家管理-移民城市', ' 上传图片', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:59', '2016-12-21 09:11:59'),
(10765, 1, 10149, 10581, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:02', '2016-12-21 09:12:02'),
(10766, 2, 10149, 10582, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:02', '2016-12-21 09:12:02'),
(10767, 3, 10149, 10583, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:02', '2016-12-21 09:12:02'),
(10768, 4, 10149, 10584, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:02', '2016-12-21 09:12:02'),
(10769, 1, 10150, 10560, NULL, '微网站（用户）-项目活动- 专享活动', ' 活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:42', '2016-12-21 09:12:42'),
(10770, 2, 10150, 10561, NULL, '微网站（用户）-项目活动- 专享活动', ' 我要报名', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:42', '2016-12-21 09:12:42'),
(10771, 1, 10151, 10588, NULL, '微网站（用户）- 登录', ' 获取验证码', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:51', '2016-12-21 09:12:51'),
(10772, 2, 10151, 10589, NULL, '微网站（用户）- 登录', ' 登录', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:51', '2016-12-21 09:12:51'),
(10773, 1, 10152, 10557, NULL, '微网站（用户）-首页', ' 移民评估入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:57', '2016-12-21 09:12:57'),
(10774, 2, 10152, 10585, NULL, '微网站（用户）-首页', '专属管家入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:57', '2016-12-21 09:12:57'),
(10775, 3, 10152, 10586, NULL, '微网站（用户）-首页', ' 专享活动入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:57', '2016-12-21 09:12:57');
INSERT INTO `zt_tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10776, 4, 10152, 10587, NULL, '微网站（用户）-首页', ' 生活体验入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:57', '2016-12-21 09:12:57'),
(10777, 1, 10153, 10558, NULL, '微网站（用户）- 首页-移民评估', ' 填写评估问题', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:41', '2016-12-21 09:13:41'),
(10778, 2, 10153, 10559, NULL, '微网站（用户）- 首页-移民评估', ' 展示评估结果', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:41', '2016-12-21 09:13:41'),
(10779, 1, 10154, 10560, NULL, '微网站（用户）-项目活动- 专享活动', ' 活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:46', '2016-12-21 09:13:46'),
(10780, 2, 10154, 10561, NULL, '微网站（用户）-项目活动- 专享活动', ' 我要报名', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:46', '2016-12-21 09:13:46'),
(10781, 1, 10155, 10551, NULL, '微网站（用户）-项目活动- 移民项目', ' 项目简介', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:51', '2016-12-21 09:13:51'),
(10782, 2, 10155, 10552, NULL, '微网站（用户）-项目活动- 移民项目', ' 项目优势', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:51', '2016-12-21 09:13:51'),
(10783, 3, 10155, 10553, NULL, '微网站（用户）-项目活动- 移民项目', ' 申请条件', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:51', '2016-12-21 09:13:51'),
(10784, 4, 10155, 10554, NULL, '微网站（用户）-项目活动- 移民项目', ' 办理流程（周期）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:51', '2016-12-21 09:13:51'),
(10785, 5, 10155, 10555, NULL, '微网站（用户）-项目活动- 移民项目', ' 项目预约', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:51', '2016-12-21 09:13:51'),
(10786, 6, 10155, 10556, NULL, '微网站（用户）-项目活动- 移民项目', ' 评估入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:51', '2016-12-21 09:13:51'),
(10787, 1, 10156, 10588, NULL, '微网站（用户）- 登录', ' 获取验证码', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:04', '2016-12-22 01:35:04'),
(10788, 2, 10156, 10589, NULL, '微网站（用户）- 登录', ' 登录', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:04', '2016-12-22 01:35:04'),
(10789, 1, 10157, 10401, NULL, '微网站（用户）-项目活动-商务合作', ' 简介', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10790, 2, 10157, 10447, NULL, '微网站（用户）-项目活动-商务合作', ' 拨打400电话', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10791, 3, 10157, 10402, NULL, '微网站（用户）-项目活动-商务合作', ' 获取验证码', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10792, 4, 10157, 10403, NULL, '微网站（用户）-项目活动-商务合作', ' 登录', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10793, 5, 10157, 10404, NULL, '微网站（用户）-项目活动-商务合作', ' 提交信息', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10794, 6, 10157, 10405, NULL, '微网站（用户）-项目活动-商务合作', ' 查询合作状态', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10795, 7, 10157, 10406, NULL, '微网站（用户）-项目活动-商务合作', ' 驳回后重提', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10796, 1, 10158, 10566, NULL, '微站CRM后台- 项目资料库-国家管理', ' 查询-按国家名', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10797, 2, 10158, 10567, NULL, '微站CRM后台- 项目资料库-国家管理', ' 查询-按地理分类', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10798, 3, 10158, 10568, NULL, '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10799, 4, 10158, 10569, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10800, 5, 10158, 10570, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10801, 6, 10158, 10571, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10802, 7, 10158, 10572, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10803, 8, 10158, 10573, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-发布', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10804, 9, 10158, 10574, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家-下线', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10805, 10, 10158, 10575, NULL, '微站CRM后台- 项目资料库-国家管理', ' 国家详情-入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10806, 1, 10159, 10576, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:09', '2016-12-22 01:36:09'),
(10807, 2, 10159, 10577, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:09', '2016-12-22 01:36:09'),
(10808, 3, 10159, 10578, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:09', '2016-12-22 01:36:09'),
(10809, 4, 10159, 10579, NULL, '微站CRM后台- 国家管理-移民城市', ' 城市-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:09', '2016-12-22 01:36:09'),
(10810, 5, 10159, 10580, NULL, '微站CRM后台- 国家管理-移民城市', ' 上传图片', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:09', '2016-12-22 01:36:09'),
(10811, 1, 10160, 10581, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:11', '2016-12-22 01:36:11'),
(10812, 2, 10160, 10582, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:11', '2016-12-22 01:36:11'),
(10813, 3, 10160, 10583, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:11', '2016-12-22 01:36:11'),
(10814, 4, 10160, 10584, NULL, '微站CRM后台- 国家管理-移民政策', ' 政策-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:11', '2016-12-22 01:36:11'),
(10815, 1, 10161, 10478, NULL, '微站CRM后台- 登录', ' 登录', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:13', '2016-12-22 01:36:13'),
(10816, 2, 10161, 10479, NULL, '微站CRM后台- 登录', ' 注销', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:13', '2016-12-22 01:36:13'),
(10817, 3, 10161, 10480, NULL, '微站CRM后台- 登录', ' 修改密码', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:13', '2016-12-22 01:36:13'),
(10818, 4, 10161, 10481, NULL, '微站CRM后台- 登录', ' 切换平台', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:13', '2016-12-22 01:36:13'),
(10819, 1, 10162, 10560, NULL, '微网站（用户）-项目活动- 专享活动', ' 活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:45', '2016-12-22 01:36:45'),
(10820, 2, 10162, 10561, NULL, '微网站（用户）-项目活动- 专享活动', ' 我要报名', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:45', '2016-12-22 01:36:45'),
(10821, 1, 10163, 10536, NULL, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:20', '2016-12-22 01:37:20'),
(10822, 2, 10163, 10537, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:20', '2016-12-22 01:37:20'),
(10823, 3, 10163, 10538, NULL, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:20', '2016-12-22 01:37:20'),
(10824, 4, 10163, 10539, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:20', '2016-12-22 01:37:20'),
(10825, 5, 10163, 10540, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:20', '2016-12-22 01:37:20'),
(10826, 6, 10163, 10541, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:20', '2016-12-22 01:37:20'),
(10827, 1, 10164, 10542, NULL, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10828, 2, 10164, 10543, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10829, 3, 10164, 10544, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10830, 4, 10164, 10545, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10831, 5, 10164, 10546, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10832, 6, 10164, 10547, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10833, 7, 10164, 10548, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10834, 8, 10164, 10549, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10835, 9, 10164, 10550, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10836, 1, 10165, 10425, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:55', '2016-12-22 01:37:55'),
(10837, 2, 10165, 10426, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:55', '2016-12-22 01:37:55'),
(10838, 3, 10165, 10427, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家评价', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:55', '2016-12-22 01:37:55'),
(10839, 4, 10165, 10428, NULL, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:55', '2016-12-22 01:37:55'),
(10840, 5, 10165, 10429, NULL, '微站CRM后台- 内容发布-移民管家', ' 管家详情', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:55', '2016-12-22 01:37:55'),
(10841, 6, 10165, 10430, NULL, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:55', '2016-12-22 01:37:55'),
(10842, 1, 10166, 10524, NULL, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10843, 2, 10166, 10525, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10844, 3, 10166, 10526, NULL, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10845, 4, 10166, 10527, NULL, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10846, 5, 10166, 10528, NULL, '微站CRM后台- 内容发布-活动管理', ' 更新排序', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10847, 6, 10166, 10529, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10848, 7, 10166, 10530, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10849, 8, 10166, 10531, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10850, 9, 10166, 10532, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10851, 10, 10166, 10533, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10852, 1, 10167, 10534, NULL, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:24', '2016-12-22 01:38:24'),
(10853, 2, 10167, 10535, NULL, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:24', '2016-12-22 01:38:24'),
(10854, 1, 10168, 10562, NULL, '微网站（用户）- 项目活动-生活体验', ' 向往国家', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:58', '2016-12-22 01:38:58'),
(10855, 2, 10168, 10563, NULL, '微网站（用户）- 项目活动-生活体验', ' 向往城市', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:58', '2016-12-22 01:38:58'),
(10856, 3, 10168, 10564, NULL, '微网站（用户）- 项目活动-生活体验', ' 体验分类列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:58', '2016-12-22 01:38:58'),
(10857, 4, 10168, 10565, NULL, '微网站（用户）- 项目活动-生活体验', ' 体验详情', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:58', '2016-12-22 01:38:58'),
(10858, 1, 10169, 10536, NULL, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:36', '2016-12-22 01:39:36'),
(10859, 2, 10169, 10537, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:36', '2016-12-22 01:39:36'),
(10860, 3, 10169, 10538, NULL, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:36', '2016-12-22 01:39:36'),
(10861, 4, 10169, 10539, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:36', '2016-12-22 01:39:36'),
(10862, 5, 10169, 10540, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:36', '2016-12-22 01:39:36'),
(10863, 6, 10169, 10541, NULL, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:36', '2016-12-22 01:39:36'),
(10864, 1, 10170, 10542, NULL, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10865, 2, 10170, 10543, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10866, 3, 10170, 10544, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10867, 4, 10170, 10545, NULL, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10868, 5, 10170, 10546, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10869, 6, 10170, 10547, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10870, 7, 10170, 10548, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10871, 8, 10170, 10549, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10872, 9, 10170, 10550, NULL, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10873, 1, 10171, 10524, NULL, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10874, 2, 10171, 10525, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10875, 3, 10171, 10526, NULL, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10876, 4, 10171, 10527, NULL, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10877, 5, 10171, 10528, NULL, '微站CRM后台- 内容发布-活动管理', ' 更新排序', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10878, 6, 10171, 10529, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10879, 7, 10171, 10530, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10880, 8, 10171, 10531, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10881, 9, 10171, 10532, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10882, 10, 10171, 10533, NULL, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10883, 1, 10172, 10534, NULL, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:19', '2016-12-22 01:40:19'),
(10884, 2, 10172, 10535, NULL, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:19', '2016-12-22 01:40:19'),
(10885, 1, 10173, 10551, NULL, '微网站（用户）-项目活动- 移民项目', ' 项目简介', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:50', '2016-12-22 01:40:50'),
(10886, 2, 10173, 10552, NULL, '微网站（用户）-项目活动- 移民项目', ' 项目优势', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:50', '2016-12-22 01:40:50'),
(10887, 3, 10173, 10553, NULL, '微网站（用户）-项目活动- 移民项目', ' 申请条件', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:50', '2016-12-22 01:40:50'),
(10888, 4, 10173, 10554, NULL, '微网站（用户）-项目活动- 移民项目', ' 办理流程（周期）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:50', '2016-12-22 01:40:50'),
(10889, 5, 10173, 10555, NULL, '微网站（用户）-项目活动- 移民项目', ' 项目预约', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:50', '2016-12-22 01:40:50'),
(10890, 6, 10173, 10556, NULL, '微网站（用户）-项目活动- 移民项目', ' 评估入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:50', '2016-12-22 01:40:50'),
(10891, 1, 10174, 10419, NULL, '微网站（用户）-项目活动-公司名片', ' 公司介绍', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10892, 2, 10174, 10420, NULL, '微网站（用户）-项目活动-公司名片', ' 重点项目', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10893, 2, 10174, 10590, NULL, '微网站（用户）-项目活动-公司名片', '项目详情', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10894, 3, 10174, 10421, NULL, '微网站（用户）-项目活动-公司名片', ' 名片信息', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10895, 4, 10174, 10422, NULL, '微网站（用户）-项目活动-公司名片', ' 公司名片分享', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10896, 5, 10174, 10423, NULL, '微网站（用户）-项目活动-公司名片', ' 报名', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10897, 6, 10174, 10469, NULL, '微网站（用户）-项目活动-公司名片', ' 消息反馈（移动管家名片）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10898, 7, 10174, 10424, NULL, '微网站（用户）-项目活动-公司名片', ' 数据统计', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10899, 1, 10175, 10482, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-按国家地区', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10900, 2, 10175, 10483, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目类型', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10901, 3, 10175, 10484, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目状态', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10902, 4, 10175, 10485, NULL, '微站CRM后台- 项目资料库-项目管理', ' 快速查询', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10903, 5, 10175, 10486, NULL, '微站CRM后台- 项目资料库-项目管理', ' 查询-上线日期范围', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10904, 6, 10175, 10487, NULL, '微站CRM后台- 项目资料库-项目管理', ' 组合查询', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10905, 7, 10175, 10488, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10906, 8, 10175, 10489, NULL, '微站CRM后台- 项目资料库-项目管理', '项目-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10907, 9, 10175, 10490, NULL, '微站CRM后台- 项目资料库-项目管理', ' 扩展推荐', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10908, 10, 10175, 10491, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10909, 11, 10175, 10492, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目-暂停', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10910, 12, 10175, 10493, NULL, '微站CRM后台- 项目资料库-项目管理', ' 项目-发布（在编辑页面里）', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10911, 1, 10176, 10494, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:21', '2016-12-22 01:41:21'),
(10912, 2, 10176, 10495, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:21', '2016-12-22 01:41:21'),
(10913, 3, 10176, 10496, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-导入', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:21', '2016-12-22 01:41:21'),
(10914, 4, 10176, 10497, NULL, '微站CRM后台- 项目管理-申请流程', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:21', '2016-12-22 01:41:21'),
(10915, 5, 10176, 10498, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:21', '2016-12-22 01:41:21'),
(10916, 6, 10176, 10499, NULL, '微站CRM后台- 项目管理-申请流程', ' 办理流程-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:21', '2016-12-22 01:41:21'),
(10917, 1, 10177, 10500, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:25', '2016-12-22 01:41:25'),
(10918, 2, 10177, 10501, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:25', '2016-12-22 01:41:25'),
(10919, 3, 10177, 10502, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-导入', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:25', '2016-12-22 01:41:25'),
(10920, 4, 10177, 10503, NULL, '微站CRM后台- 项目管理-费用详情', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:25', '2016-12-22 01:41:25'),
(10921, 5, 10177, 10504, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:25', '2016-12-22 01:41:25'),
(10922, 6, 10177, 10505, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:25', '2016-12-22 01:41:25'),
(10923, 1, 10178, 10506, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料清单列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10924, 2, 10178, 10507, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10925, 3, 10178, 10508, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-导入', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10926, 4, 10178, 10509, NULL, '微站CRM后台- 项目管理-材料清单', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10927, 5, 10178, 10510, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-样例', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10928, 6, 10178, 10511, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10929, 7, 10178, 10512, NULL, '微站CRM后台- 项目管理-材料清单', ' 材料-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10930, 1, 10179, 10513, NULL, '微站CRM后台- 项目-图片', ' 图片-列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:33', '2016-12-22 01:41:33'),
(10931, 2, 10179, 10514, NULL, '微站CRM后台- 项目-图片', ' 项目图片-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:33', '2016-12-22 01:41:33'),
(10932, 3, 10179, 10515, NULL, '微站CRM后台- 项目-图片', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:33', '2016-12-22 01:41:33'),
(10933, 4, 10179, 10516, NULL, '微站CRM后台- 项目-图片', ' 项目图片-编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:33', '2016-12-22 01:41:33'),
(10934, 5, 10179, 10517, NULL, '微站CRM后台- 项目-图片', ' 项目图片-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:33', '2016-12-22 01:41:33'),
(10935, 1, 10180, 10518, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题-新增', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:39', '2016-12-22 02:34:39'),
(10936, 2, 10180, 10519, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题列表', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:39', '2016-12-22 02:34:39'),
(10937, 3, 10180, 10520, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题编辑', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:39', '2016-12-22 02:34:39'),
(10938, 4, 10180, 10521, NULL, '微站CRM后台-项目资料库-移民评估', ' 问题-删除', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:39', '2016-12-22 02:34:39'),
(10939, 5, 10180, 10522, NULL, '微站CRM后台-项目资料库-移民评估', ' 权重-保存', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:39', '2016-12-22 02:34:39'),
(10940, 6, 10180, 10523, NULL, '微站CRM后台-项目资料库-移民评估', ' 问卷-发布', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:39', '2016-12-22 02:34:39'),
(10941, 1, 10181, 10558, NULL, '微网站（用户）- 首页-移民评估', ' 填写评估问题', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:47', '2016-12-22 02:34:47'),
(10942, 2, 10181, 10559, NULL, '微网站（用户）- 首页-移民评估', ' 展示评估结果', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:47', '2016-12-22 02:34:47'),
(10943, 1, 10182, 10557, NULL, '微网站（用户）-首页', ' 移民评估入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:13', '2016-12-22 02:36:13'),
(10944, 2, 10182, 10585, NULL, '微网站（用户）-首页', '专属管家入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:13', '2016-12-22 02:36:13');
INSERT INTO `zt_tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10945, 3, 10182, 10586, NULL, '微网站（用户）-首页', ' 专享活动入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:13', '2016-12-22 02:36:13'),
(10946, 4, 10182, 10587, NULL, '微网站（用户）-首页', ' 生活体验入口', NULL, NULL, NULL, NULL, 'NoBug', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:13', '2016-12-22 02:36:13'),
(10947, 1, 10183, 10500, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情列表', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:55', '2016-12-23 03:44:14'),
(10948, 2, 10183, 10501, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-新增', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:55', '2016-12-23 03:44:16'),
(10949, 3, 10183, 10502, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-导入', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:55', '2016-12-23 03:44:18'),
(10950, 4, 10183, 10503, NULL, '微站CRM后台- 项目管理-费用详情', ' 上移/下移/置顶', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:55', '2016-12-23 03:44:21'),
(10951, 5, 10183, 10504, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-编辑', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:55', '2016-12-23 03:44:27'),
(10952, 6, 10183, 10505, NULL, '微站CRM后台- 项目管理-费用详情', ' 费用详情-删除', NULL, NULL, NULL, NULL, '通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:55', '2016-12-23 03:44:24');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_exescene`
--

DROP TABLE IF EXISTS `zt_tp_exescene`;
CREATE TABLE `zt_tp_exescene` (
  `id` int(11) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_exescene`
--

INSERT INTO `zt_tp_exescene` (`id`, `sn`, `type`, `stagetesterid`, `pathid`, `sceneid`, `level`, `swho`, `swhen`, `scene`, `results`, `flow`, `testip`, `isrunning`, `testtime`, `runningip`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10087, 1, 'M', 10045, 10163, 0, 2, '【功能】', '默认', '微网站（用户）- 专属管家-列表及介绍', '通过', '“微网站（用户）- 专属管家-列表及介绍“下所有功能点', NULL, NULL, '2016-12-09 03:15:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-08 06:52:09', '2016-12-09 03:15:20'),
(10088, 1, 'M', 10046, 10175, 0, 2, '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '失败', '“微网站（用户）- 专属管家-公司名片“下所有功能点', NULL, NULL, '2016-12-09 03:53:08', '192.168.6.142', '腰立辉', '腰立辉', '2016-12-09 03:16:06', '2016-12-09 03:53:08'),
(10089, 2, 'M', 10045, 10164, 0, 2, '【功能】', '默认', '微网站（用户）- 专享活动', '未测试', '“微网站（用户）- 专享活动“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:18', '2016-12-09 03:16:18'),
(10090, 3, 'M', 10045, 10175, 0, 2, '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '未测试', '“微网站（用户）- 专属管家-公司名片“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 03:16:26', '2016-12-09 03:16:26'),
(10096, 3, 'M', 10048, 0, 10033, 3, '关注用户', '默认', '在公众订阅号，直接打开并提交报名', '通过', '微信号个人中心->公司名片->提交报名', '', NULL, '2016-12-12 07:24:07', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 07:15:24', '2016-12-12 08:23:28'),
(10097, 4, 'M', 10048, 0, 10034, 2, '专属管家', '未开启个人名片时', '分享公司名片', '通过', '', NULL, NULL, '2016-12-12 07:23:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 07:15:27', '2016-12-12 08:23:28'),
(10098, 5, 'M', 10048, 0, 10035, 2, '专属管家', '开启个人名片', '分享公司名片-分享个人名片', '未测试', '', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:31', '2016-12-12 08:23:29'),
(10094, 1, 'M', 10049, 0, 10033, 3, '默认', '默认', 'asd', '未测试', 'asd', '', NULL, NULL, NULL, '魏斌', '魏斌', '2016-12-09 03:51:25', '2016-12-09 03:51:25'),
(10095, 2, 'M', 10048, 10173, 0, 2, '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', NULL, NULL, '2016-12-12 07:16:44', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 04:05:27', '2016-12-12 08:23:28'),
(10099, 6, 'M', 10048, 0, 10036, 2, '关注用户', '在管家分享后', '管家名片填写报名信息', '未测试', '', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 07:15:34', '2016-12-12 08:23:29'),
(10100, 1, 'M', 10048, 10175, 0, 2, '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '失败', '“微网站（用户）-个人中心-公司名片“下所有功能点', NULL, NULL, '2016-12-12 09:05:31', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 07:15:48', '2016-12-12 09:04:40'),
(10101, 1, 'M', 10051, 10201, 0, 2, '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', NULL, NULL, '2016-12-12 12:15:10', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 11:19:47', '2016-12-12 12:14:19'),
(10102, 2, 'M', 10051, 10202, 0, 2, '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', NULL, NULL, '2016-12-12 13:09:22', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 12:39:36', '2016-12-12 13:08:31'),
(10103, 1, 'M', 10052, 10201, 0, 2, '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '失败', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', NULL, NULL, '2016-12-12 13:02:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 12:40:41', '2016-12-12 13:01:29'),
(10104, 2, 'M', 10052, 10202, 0, 2, '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', NULL, NULL, '2016-12-12 13:07:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 12:40:48', '2016-12-12 13:06:23'),
(10105, 1, 'M', 10053, 10201, 0, 2, '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', NULL, NULL, '2016-12-13 05:00:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 03:41:09', '2016-12-13 04:59:17'),
(10106, 2, 'M', 10053, 10202, 0, 2, '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', NULL, NULL, '2016-12-13 08:41:11', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 03:41:17', '2016-12-13 08:40:21'),
(10107, 1, 'M', 10054, 10173, 0, 2, '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', NULL, NULL, '2016-12-14 04:17:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 03:36:26', '2016-12-14 04:16:56'),
(10108, 2, 'M', 10054, 10203, 0, 2, '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '失败', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', NULL, NULL, '2016-12-14 04:17:03', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 03:47:46', '2016-12-14 04:16:18'),
(10109, 3, 'M', 10054, 10204, 0, 2, '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '失败', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', NULL, NULL, '2016-12-15 02:34:52', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 03:47:54', '2016-12-15 02:34:52'),
(10110, 1, 'M', 10055, 10203, 0, 2, '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', NULL, NULL, '2016-12-19 08:05:45', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 06:53:45', '2016-12-19 08:05:45'),
(10111, 2, 'M', 10055, 10204, 0, 2, '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', NULL, NULL, '2016-12-19 08:16:22', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 06:53:47', '2016-12-19 08:16:22'),
(10112, 3, 'M', 10055, 10181, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', NULL, NULL, '2016-12-19 08:35:26', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 06:53:50', '2016-12-19 08:35:26'),
(10113, 4, 'M', 10055, 10173, 0, 2, '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', NULL, NULL, '2016-12-19 07:18:23', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 06:53:57', '2016-12-19 07:18:23'),
(10114, 5, 'M', 10055, 10175, 0, 2, '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '通过', '“微网站（用户）-个人中心-公司名片“下所有功能点', NULL, NULL, '2016-12-19 07:18:14', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 06:54:01', '2016-12-19 07:18:14'),
(10115, 6, 'M', 10055, 10224, 0, 2, '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', NULL, NULL, '2016-12-19 07:49:04', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 07:47:55', '2016-12-19 07:49:04'),
(10116, 7, 'M', 10055, 10225, 0, 2, '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '通过', '“微站CRM后台- 数据中心-名片流量“下所有功能点', NULL, NULL, '2016-12-19 08:16:44', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 07:48:06', '2016-12-19 08:16:44'),
(10117, 8, 'M', 10055, 10226, 0, 2, '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '失败', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', NULL, NULL, '2016-12-19 08:19:02', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 07:48:10', '2016-12-19 08:19:02'),
(10118, 1, 'M', 10056, 10203, 0, 2, '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', NULL, NULL, '2016-12-20 08:47:59', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:42:36', '2016-12-20 08:47:59'),
(10119, 2, 'M', 10056, 10204, 0, 2, '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', NULL, NULL, '2016-12-20 08:55:17', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:42:39', '2016-12-20 08:55:17'),
(10120, 3, 'M', 10056, 10181, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', NULL, NULL, '2016-12-20 09:04:20', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:42:44', '2016-12-20 09:04:20'),
(10121, 4, 'M', 10056, 10224, 0, 2, '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', NULL, NULL, '2016-12-20 09:05:31', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:42:53', '2016-12-20 09:05:31'),
(10122, 5, 'M', 10056, 10225, 0, 2, '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '通过', '“微站CRM后台- 数据中心-名片流量“下所有功能点', NULL, NULL, '2016-12-20 09:05:48', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:42:58', '2016-12-20 09:05:48'),
(10123, 6, 'M', 10056, 10226, 0, 2, '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '通过', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', NULL, NULL, '2016-12-20 09:09:02', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:43:02', '2016-12-20 09:09:02'),
(10124, 7, 'M', 10056, 10173, 0, 2, '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', NULL, NULL, '2016-12-20 09:11:55', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:43:09', '2016-12-20 09:11:55'),
(10125, 8, 'M', 10056, 10175, 0, 2, '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '通过', '“微网站（用户）-个人中心-公司名片“下所有功能点', NULL, NULL, '2016-12-20 09:12:52', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 01:43:15', '2016-12-20 09:12:52'),
(10126, 1, 'M', 10057, 10203, 0, 2, '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', NULL, NULL, '2016-12-22 03:29:39', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 01:21:13', '2016-12-22 03:29:39'),
(10127, 2, 'M', 10057, 10204, 0, 2, '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', NULL, NULL, '2016-12-22 03:30:38', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 01:21:16', '2016-12-22 03:30:38'),
(10128, 3, 'M', 10057, 10224, 0, 2, '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', NULL, NULL, '2016-12-22 03:42:59', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 01:21:25', '2016-12-22 03:42:59'),
(10129, 4, 'M', 10057, 10225, 0, 2, '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '未测试', '“微站CRM后台- 数据中心-名片流量“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:38', '2016-12-21 01:21:38'),
(10130, 5, 'M', 10057, 10226, 0, 2, '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '未测试', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:42', '2016-12-21 01:21:42'),
(10131, 6, 'M', 10057, 10173, 0, 2, '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '未测试', '“微网站（用户）- 个人中心-商务合作“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:51', '2016-12-21 01:21:51'),
(10132, 7, 'M', 10057, 10175, 0, 2, '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '未测试', '“微网站（用户）-个人中心-公司名片“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:21:56', '2016-12-21 01:21:56'),
(10133, 8, 'M', 10057, 10181, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '未测试', '“微站CRM后台- 内容发布-移民管家“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 01:24:10', '2016-12-21 01:24:10'),
(10134, 1, 'M', 10058, 10141, 0, 2, '【功能】', '默认', '微站CRM后台- 登录', '通过', '“微站CRM后台- 登录“下所有功能点', NULL, NULL, '2016-12-21 10:20:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:00:06', '2016-12-21 10:20:08'),
(10135, 2, 'M', 10058, 10171, 0, 2, '【功能】', '默认', '微网站（用户）- 项目活动-生活体验', '通过', '“微网站（用户）- 项目活动-生活体验“下所有功能点', NULL, NULL, '2016-12-22 09:24:12', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:09:37', '2016-12-23 03:09:08'),
(10136, 3, 'M', 10058, 10175, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动-公司名片', '通过', '“微网站（用户）-项目活动-公司名片“下所有功能点', NULL, NULL, '2016-12-22 09:38:14', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:09:46', '2016-12-23 03:09:08'),
(10137, 4, 'M', 10058, 10176, 0, 2, '【功能】', '默认', '微站CRM后台- 项目资料库-项目管理', '通过', '“微站CRM后台- 项目资料库-项目管理“下所有功能点', NULL, NULL, '2016-12-23 03:11:01', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:10:16', '2016-12-23 03:11:01'),
(10138, 5, 'M', 10058, 10227, 0, 2, '【功能】', '默认', '微站CRM后台- 项目管理-申请流程', '通过', '“微站CRM后台- 项目管理-申请流程“下所有功能点', NULL, NULL, '2016-12-23 02:49:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:10:19', '2016-12-23 03:09:08'),
(10139, 6, 'M', 10058, 10229, 0, 2, '【功能】', '默认', '微站CRM后台- 项目管理-材料清单', '通过', '“微站CRM后台- 项目管理-材料清单“下所有功能点', NULL, NULL, '2016-12-23 03:04:39', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:10:27', '2016-12-23 03:09:08'),
(10140, 8, 'M', 10058, 10230, 0, 2, '【功能】', '默认', '微站CRM后台- 项目-图片', '通过', '“微站CRM后台- 项目-图片“下所有功能点', NULL, NULL, '2016-12-23 06:05:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:10:30', '2016-12-23 06:05:25'),
(10141, 9, 'M', 10058, 10177, 0, 2, '【功能】', '默认', '微站CRM后台-项目资料库-移民评估', '通过', '“微站CRM后台-项目资料库-移民评估“下所有功能点', NULL, NULL, '2016-12-23 09:49:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:10:52', '2016-12-23 09:49:42'),
(10142, 11, 'M', 10058, 10144, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '通过', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', NULL, NULL, '2016-12-23 07:44:45', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:10:56', '2016-12-23 07:44:45'),
(10143, 12, 'M', 10058, 10179, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '通过', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', NULL, NULL, '2016-12-23 08:20:38', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:11:04', '2016-12-23 08:20:38'),
(10144, 13, 'M', 10058, 10180, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '通过', '“微站CRM后台- 内容发布-活动管理“下所有功能点', NULL, NULL, '2016-12-23 09:08:37', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:11:16', '2016-12-23 09:08:37'),
(10145, 10, 'M', 10058, 10231, 0, 2, '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '通过', '“微站CRM后台- 活动管理-报名人数“下所有功能点', NULL, NULL, '2016-12-23 09:11:58', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:11:20', '2016-12-23 09:11:58'),
(10146, 14, 'M', 10058, 10181, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', NULL, NULL, '2016-12-23 09:26:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:11:27', '2016-12-23 09:26:25'),
(10147, 7, 'M', 10059, 10143, 0, 2, '【功能】', '默认', '微站CRM后台- 项目资料库-国家管理', '未测试', '“微站CRM后台- 项目资料库-国家管理“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:57', '2016-12-23 03:10:23'),
(10148, 8, 'M', 10059, 10232, 0, 2, '【功能】', '默认', '微站CRM后台- 国家管理-移民城市', '未测试', '“微站CRM后台- 国家管理-移民城市“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:11:59', '2016-12-23 03:10:23'),
(10149, 9, 'M', 10059, 10233, 0, 2, '【功能】', '默认', '微站CRM后台- 国家管理-移民政策', '未测试', '“微站CRM后台- 国家管理-移民政策“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:02', '2016-12-23 03:10:23'),
(10150, 6, 'M', 10059, 10164, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:42', '2016-12-23 03:10:23'),
(10151, 1, 'M', 10059, 10234, 0, 2, '【功能】', '默认', '微网站（用户）- 登录', '未测试', '“微网站（用户）- 登录“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:51', '2016-12-21 09:12:51'),
(10152, 2, 'M', 10059, 10161, 0, 2, '【功能】', '默认', '微网站（用户）-首页', '未测试', '“微网站（用户）-首页“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:12:57', '2016-12-23 03:10:23'),
(10153, 3, 'M', 10059, 10162, 0, 2, '【功能】', '默认', '微网站（用户）- 首页-移民评估', '未测试', '“微网站（用户）- 首页-移民评估“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:41', '2016-12-23 03:10:23'),
(10154, 4, 'M', 10059, 10164, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:46', '2016-12-23 03:10:23'),
(10155, 5, 'M', 10059, 10168, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动- 移民项目', '未测试', '“微网站（用户）-项目活动- 移民项目“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:13:51', '2016-12-23 03:10:23'),
(10156, 1, 'M', 10061, 10234, 0, 2, '【功能】', '默认', '微网站（用户）- 登录', '未测试', '“微网站（用户）- 登录“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:04', '2016-12-22 01:35:04'),
(10157, 2, 'M', 10061, 10173, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动-商务合作', '未测试', '“微网站（用户）-项目活动-商务合作“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:35:45', '2016-12-22 01:35:45'),
(10158, 3, 'M', 10061, 10143, 0, 2, '【功能】', '默认', '微站CRM后台- 项目资料库-国家管理', '未测试', '“微站CRM后台- 项目资料库-国家管理“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:06', '2016-12-22 01:36:06'),
(10159, 4, 'M', 10061, 10232, 0, 2, '【功能】', '默认', '微站CRM后台- 国家管理-移民城市', '未测试', '“微站CRM后台- 国家管理-移民城市“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:09', '2016-12-22 01:36:09'),
(10160, 5, 'M', 10061, 10233, 0, 2, '【功能】', '默认', '微站CRM后台- 国家管理-移民政策', '未测试', '“微站CRM后台- 国家管理-移民政策“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:11', '2016-12-22 01:36:11'),
(10161, 6, 'M', 10061, 10141, 0, 2, '【功能】', '默认', '微站CRM后台- 登录', '未测试', '“微站CRM后台- 登录“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:13', '2016-12-22 01:36:13'),
(10162, 1, 'M', 10063, 10164, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:36:45', '2016-12-22 01:36:45'),
(10163, 2, 'M', 10063, 10144, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '未测试', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:20', '2016-12-22 01:37:20'),
(10164, 3, 'M', 10063, 10179, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '未测试', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:32', '2016-12-22 01:37:32'),
(10165, 4, 'M', 10063, 10181, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '未测试', '“微站CRM后台- 内容发布-移民管家“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:37:55', '2016-12-22 01:37:55'),
(10166, 5, 'M', 10063, 10180, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '未测试', '“微站CRM后台- 内容发布-活动管理“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:20', '2016-12-22 01:38:20'),
(10167, 6, 'M', 10063, 10231, 0, 2, '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '未测试', '“微站CRM后台- 活动管理-报名人数“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:24', '2016-12-22 01:38:24'),
(10168, 1, 'M', 10062, 10171, 0, 2, '【功能】', '默认', '微网站（用户）- 项目活动-生活体验', '未测试', '“微网站（用户）- 项目活动-生活体验“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:38:58', '2016-12-22 01:38:58'),
(10169, 2, 'M', 10062, 10144, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '未测试', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:36', '2016-12-22 01:39:36'),
(10170, 3, 'M', 10062, 10179, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '未测试', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:39:47', '2016-12-22 01:39:47'),
(10171, 4, 'M', 10062, 10180, 0, 2, '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '未测试', '“微站CRM后台- 内容发布-活动管理“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:09', '2016-12-22 01:40:09'),
(10172, 5, 'M', 10062, 10231, 0, 2, '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '未测试', '“微站CRM后台- 活动管理-报名人数“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:19', '2016-12-22 01:40:19'),
(10173, 1, 'M', 10060, 10168, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动- 移民项目', '未测试', '“微网站（用户）-项目活动- 移民项目“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:50', '2016-12-22 01:40:50'),
(10174, 2, 'M', 10060, 10175, 0, 2, '【功能】', '默认', '微网站（用户）-项目活动-公司名片', '未测试', '“微网站（用户）-项目活动-公司名片“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:40:54', '2016-12-22 01:40:54'),
(10175, 3, 'M', 10060, 10176, 0, 2, '【功能】', '默认', '微站CRM后台- 项目资料库-项目管理', '未测试', '“微站CRM后台- 项目资料库-项目管理“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:16', '2016-12-22 01:41:16'),
(10176, 4, 'M', 10060, 10227, 0, 2, '【功能】', '默认', '微站CRM后台- 项目管理-申请流程', '未测试', '“微站CRM后台- 项目管理-申请流程“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:21', '2016-12-22 01:41:21'),
(10177, 5, 'M', 10060, 10228, 0, 2, '【功能】', '默认', '微站CRM后台- 项目管理-费用详情', '未测试', '“微站CRM后台- 项目管理-费用详情“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:25', '2016-12-22 01:41:25'),
(10178, 6, 'M', 10060, 10229, 0, 2, '【功能】', '默认', '微站CRM后台- 项目管理-材料清单', '未测试', '“微站CRM后台- 项目管理-材料清单“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:30', '2016-12-22 01:41:30'),
(10179, 7, 'M', 10060, 10230, 0, 2, '【功能】', '默认', '微站CRM后台- 项目-图片', '未测试', '“微站CRM后台- 项目-图片“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 01:41:33', '2016-12-22 01:41:33'),
(10180, 8, 'M', 10060, 10177, 0, 2, '【功能】', '默认', '微站CRM后台-项目资料库-移民评估', '未测试', '“微站CRM后台-项目资料库-移民评估“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:39', '2016-12-22 02:34:39'),
(10181, 9, 'M', 10060, 10162, 0, 2, '【功能】', '默认', '微网站（用户）- 首页-移民评估', '未测试', '“微网站（用户）- 首页-移民评估“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:34:47', '2016-12-22 02:34:47'),
(10182, 10, 'M', 10060, 10161, 0, 2, '【功能】', '默认', '微网站（用户）-首页', '未测试', '“微网站（用户）-首页“下所有功能点', NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 02:36:13', '2016-12-22 02:36:13'),
(10183, 7, 'M', 10058, 10228, 0, 2, '【功能】', '默认', '微站CRM后台- 项目管理-费用详情', '通过', '“微站CRM后台- 项目管理-费用详情“下所有功能点', NULL, NULL, '2016-12-23 03:43:57', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-22 02:36:55', '2016-12-23 03:43:57');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_func`
--

DROP TABLE IF EXISTS `zt_tp_func`;
CREATE TABLE `zt_tp_func` (
  `id` smallint(6) NOT NULL,
  `sn` int(11) DEFAULT NULL,
  `func` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `pathid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `result` varchar(5) DEFAULT '未测试',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_func`
--

INSERT INTO `zt_tp_func` (`id`, `sn`, `func`, `state`, `pathid`, `fproid`, `result`, `moder`, `utime`) VALUES
(10413, 6, ' 在线咨询', '正常', 10163, 8, '未测试', '腰立辉', '2017-01-13 10:28:03'),
(10412, 5, ' 电话咨询', '正常', 10163, 8, '未测试', '腰立辉', '2017-01-13 10:27:46'),
(10408, 1, ' 管家列表', '正常', 10163, 8, '未测试', '腰立辉', '2017-01-13 10:27:57'),
(10409, 2, ' 管家详情', '正常', 10163, 8, '未测试', '腰立辉', '2017-01-13 10:28:13'),
(10410, 3, ' 绑定管家', '正常', 10163, 8, '未测试', '腰立辉', '2017-01-13 10:27:51'),
(10411, 4, ' 微信关注', '正常', 10163, 8, '未测试', '腰立辉', '2017-01-13 10:27:47'),
(10419, 1, ' 公司介绍', '正常', 10175, 8, '通过', '腰立辉', '2017-01-13 10:27:49'),
(10414, 1, ' 我的管家信息', '正常', 10174, 9, '未测试', '腰立辉', '2017-01-13 10:25:20'),
(10415, 2, '点赞', '正常', 10174, 9, '未测试', '腰立辉', '2017-01-13 10:25:21'),
(10416, 3, ' 评价', '正常', 10174, 9, '未测试', '腰立辉', '2017-01-13 10:25:22'),
(10417, 4, ' 分享管家名片', '正常', 10174, 9, '未测试', '腰立辉', '2017-01-13 10:25:23'),
(10418, 5, ' 解除绑定', '正常', 10174, 9, '未测试', '腰立辉', '2017-01-13 10:25:24'),
(10420, 2, ' 重点项目', '正常', 10175, 9, '未测试', '腰立辉', '2017-01-13 10:25:33'),
(10421, 3, ' 名片信息', '正常', 10175, 8, '通过', '腰立辉', '2017-01-13 10:27:44'),
(10422, 4, ' 公司名片分享', '正常', 10175, 8, '通过', '腰立辉', '2017-01-13 10:27:54'),
(10423, 5, ' 报名', '正常', 10175, 8, '通过', '腰立辉', '2017-01-13 10:27:55'),
(10401, 1, ' 简介', '正常', 10173, 8, '通过', '腰立辉', '2017-01-13 10:28:02'),
(10402, 3, ' 获取验证码', '正常', 10173, 8, '通过', '腰立辉', '2017-01-13 10:27:56'),
(10403, 4, ' 登录', '正常', 10173, 8, '通过', '腰立辉', '2017-01-13 10:27:43'),
(10404, 5, ' 提交信息', '正常', 10173, 8, '失败', '腰立辉', '2017-01-13 10:27:48'),
(10405, 6, ' 查询合作状态', '正常', 10173, 8, '通过', '腰立辉', '2017-01-13 10:27:53'),
(10406, 7, ' 驳回后重提', '正常', 10173, 8, '通过', '腰立辉', '2017-01-13 10:27:52'),
(10424, 7, ' 数据统计', '正常', 10175, 8, '通过', '腰立辉', '2017-01-13 10:28:05'),
(10425, 1, ' 管家新增', '正常', 10181, 9, '未测试', '腰立辉', '2017-01-13 10:25:34'),
(10426, 2, ' 管家编辑', '正常', 10181, 9, '未测试', '腰立辉', '2017-01-13 10:25:58'),
(10427, 3, ' 管家评价', '正常', 10181, 9, '未测试', '腰立辉', '2017-01-13 10:25:38'),
(10428, 4, ' 聘用情况', '正常', 10181, 9, '未测试', '腰立辉', '2017-01-13 10:25:37'),
(10429, 5, ' 管家详情', '正常', 10181, 9, '未测试', '腰立辉', '2017-01-13 10:25:36'),
(10430, 6, ' 服务用户（列表）', '正常', 10181, 9, '未测试', '腰立辉', '2017-01-13 10:25:35'),
(10431, 1, ' 登录', '正常', 10152, 109, '未测试', '腰立辉', '2016-12-06 02:30:17'),
(10432, 2, ' 注销', '正常', 10152, 109, '未测试', '腰立辉', '2016-12-06 02:30:26'),
(10433, 3, ' 修改密码', '正常', 10152, 109, '未测试', '腰立辉', '2016-12-06 02:30:52'),
(10434, 4, ' 切换平台', '正常', 10152, 109, '未测试', '腰立辉', '2016-12-06 02:31:09'),
(10435, 5, ' 菜单的收齐/展开', '正常', 10152, 109, '未测试', '腰立辉', '2016-12-06 02:36:30'),
(10436, 1, ' New Feedbacks', '正常', 10191, 109, '未测试', '腰立辉', '2016-12-06 02:36:57'),
(10437, 2, ' 新订单', '正常', 10191, 109, '未测试', '腰立辉', '2016-12-06 02:37:21'),
(10438, 3, ' Brand Popularity', '正常', 10191, 109, '未测试', '腰立辉', '2016-12-06 02:37:57'),
(10439, 4, ' 销售额', '正常', 10191, 109, '未测试', '腰立辉', '2016-12-06 02:38:05'),
(10440, 5, ' 访问量', '正常', 10191, 109, '未测试', '腰立辉', '2016-12-06 02:38:18'),
(10441, 6, ' Actives', '正常', 10191, 109, '未测试', '腰立辉', '2016-12-06 02:38:40'),
(10442, 7, ' Server Load', '正常', 10191, 109, '未测试', '腰立辉', '2016-12-06 02:38:57'),
(10445, 3, ' 选手列表', '正常', 10201, 110, '通过', '腰立辉', '2016-12-13 05:01:29'),
(10446, 4, ' 投票', '正常', 10201, 110, '通过', '腰立辉', '2016-12-13 05:01:52'),
(10447, 2, ' 拨打400电话', '正常', 10173, 8, '通过', '腰立辉', '2017-01-13 10:27:30'),
(10448, 1, ' 规则介绍', '正常', 10201, 110, '失败', '腰立辉', '2016-12-13 05:03:38'),
(10449, 2, ' 背景音乐', '正常', 10201, 110, '通过', '腰立辉', '2016-12-13 05:01:18'),
(10450, 5, ' 播放选手歌曲', '正常', 10201, 110, '通过', '腰立辉', '2016-12-13 05:02:02'),
(10451, 1, ' 首页', '正常', 10202, 110, '通过', '腰立辉', '2016-12-13 08:48:07'),
(10452, 2, ' 点击（首页）进入', '正常', 10202, 110, '通过', '腰立辉', '2016-12-13 08:48:31'),
(10453, 3, ' 项目列表', '正常', 10202, 110, '通过', '腰立辉', '2016-12-13 08:48:56'),
(10454, 5, ' 项目详情', '正常', 10202, 110, '未测试', '腰立辉', '2016-12-13 03:55:28'),
(10455, 6, ' 详情视频', '正常', 10202, 110, '失败', '腰立辉', '2016-12-13 08:40:42'),
(10456, 4, ' 项目投票', '正常', 10202, 110, '通过', '腰立辉', '2016-12-13 08:56:16'),
(10457, 7, ' 官网链接', '正常', 10202, 110, '未测试', '腰立辉', '2016-12-13 03:55:51'),
(10458, 1, ' 查询-按地区', '正常', 10203, 8, '通过', '腰立辉', '2017-01-13 10:27:29'),
(10459, 2, ' 查询-按合作方式', '正常', 10203, 8, '通过', '腰立辉', '2017-01-13 10:27:28'),
(10460, 3, ' 查询-按状态', '正常', 10203, 8, '通过', '腰立辉', '2017-01-13 10:27:27'),
(10461, 4, ' 查询-按联系方式', '正常', 10203, 8, '通过', '腰立辉', '2017-01-13 10:27:34'),
(10462, 5, ' 组合查询', '正常', 10203, 8, '通过', '腰立辉', '2017-01-13 10:27:35'),
(10463, 6, '商务合作列表', '正常', 10203, 8, '失败', '腰立辉', '2017-01-13 10:27:36'),
(10464, 7, '编辑/ 查看进度入口', '正常', 10203, 8, '通过', '腰立辉', '2017-01-13 10:27:37'),
(10465, 1, ' 申请资料信息', '正常', 10204, 8, '通过', '腰立辉', '2017-01-13 10:27:38'),
(10466, 2, ' 洽谈进度维护', '正常', 10204, 8, '通过', '腰立辉', '2017-01-13 10:27:39'),
(10467, 3, ' 洽谈进度历史', '正常', 10204, 8, '通过', '腰立辉', '2017-01-13 10:27:40'),
(10468, 4, ' 处理结果', '正常', 10204, 8, '通过', '腰立辉', '2017-01-13 10:27:40'),
(10469, 6, ' 消息反馈（移动管家名片）', '正常', 10175, 8, '通过', '腰立辉', '2017-01-13 10:27:42'),
(10470, 1, ' 获客列表', '正常', 10224, 8, '通过', '腰立辉', '2017-01-13 10:27:33'),
(10471, 2, ' 查询筛选', '正常', 10224, 8, '失败', '腰立辉', '2017-01-13 10:27:32'),
(10472, 1, ' 名片流量列表', '正常', 10225, 8, '通过', '腰立辉', '2017-01-13 10:27:50'),
(10473, 2, ' 转化率计算', '正常', 10225, 8, '通过', '腰立辉', '2017-01-13 10:27:32'),
(10474, 1, '微信号列表（打开过且未设置）', '正常', 10226, 8, '失败', '腰立辉', '2017-01-13 10:27:25'),
(10475, 2, ' 设置-入口', '正常', 10226, 8, '通过', '腰立辉', '2017-01-13 10:27:26'),
(10476, 3, ' 设置-选择用户', '正常', 10226, 8, '失败', '腰立辉', '2017-01-13 10:27:27'),
(10477, 4, ' 设置-绑定', '正常', 10226, 8, '通过', '腰立辉', '2017-01-13 10:27:31'),
(10478, 1, ' 登录', '正常', 10141, 108, '失败', '腰立辉', '2016-12-22 09:04:53'),
(10479, 2, ' 注销', '正常', 10141, 108, '未测试', '腰立辉', '2016-12-21 07:23:08'),
(10480, 3, ' 修改密码', '正常', 10141, 9, '通过', '腰立辉', '2017-01-13 10:25:18'),
(10481, 4, ' 切换平台', '正常', 10141, 108, '未测试', '腰立辉', '2016-12-21 07:23:19'),
(10482, 1, ' 查询-按国家地区', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:17'),
(10483, 2, ' 查询-按项目类型', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:40'),
(10484, 3, ' 查询-按项目状态', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:41'),
(10485, 4, ' 快速查询', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:57'),
(10486, 5, ' 查询-上线日期范围', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:56'),
(10487, 6, ' 组合查询', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:56'),
(10488, 7, ' 项目列表', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:55'),
(10489, 8, '项目-新增', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:53'),
(10490, 9, ' 扩展推荐', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:52'),
(10491, 10, ' 项目-编辑', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:50'),
(10492, 11, ' 项目-暂停', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:49'),
(10493, 12, ' 项目-发布（在编辑页面里）', '正常', 10176, 9, '未测试', '腰立辉', '2017-01-13 10:25:48'),
(10494, 1, ' 办理流程列表', '正常', 10227, 9, '未测试', '腰立辉', '2017-01-13 10:25:47'),
(10495, 2, ' 办理流程-新增', '正常', 10227, 9, '未测试', '腰立辉', '2017-01-13 10:25:46'),
(10496, 3, ' 办理流程-导入', '正常', 10227, 9, '未测试', '腰立辉', '2017-01-13 10:25:42'),
(10497, 4, ' 上移/下移/置顶', '正常', 10227, 9, '未测试', '腰立辉', '2017-01-13 10:25:41'),
(10498, 5, ' 办理流程-编辑', '正常', 10227, 9, '未测试', '腰立辉', '2017-01-13 10:25:16'),
(10499, 6, ' 办理流程-删除', '正常', 10227, 9, '未测试', '腰立辉', '2017-01-13 10:25:15'),
(10500, 1, ' 费用详情列表', '正常', 10228, 9, '未测试', '腰立辉', '2017-01-13 10:25:14'),
(10501, 2, ' 费用详情-新增', '正常', 10228, 9, '未测试', '腰立辉', '2017-01-13 10:24:53'),
(10502, 3, ' 费用详情-导入', '正常', 10228, 9, '未测试', '腰立辉', '2017-01-13 10:24:52'),
(10503, 4, ' 上移/下移/置顶', '正常', 10228, 9, '未测试', '腰立辉', '2017-01-13 10:24:51'),
(10504, 5, ' 费用详情-编辑', '正常', 10228, 9, '未测试', '腰立辉', '2017-01-13 10:24:49'),
(10505, 6, ' 费用详情-删除', '正常', 10228, 9, '未测试', '腰立辉', '2017-01-13 10:24:43'),
(10506, 1, ' 材料清单列表', '正常', 10229, 9, '未测试', '腰立辉', '2017-01-13 10:24:42'),
(10507, 2, ' 材料-新增', '正常', 10229, 9, '未测试', '腰立辉', '2017-01-13 10:24:39'),
(10508, 3, ' 材料-导入', '正常', 10229, 9, '未测试', '腰立辉', '2017-01-13 10:24:38'),
(10509, 4, ' 上移/下移/置顶', '正常', 10229, 9, '未测试', '腰立辉', '2017-01-13 10:24:36'),
(10510, 5, ' 材料-样例', '正常', 10229, 9, '未测试', '腰立辉', '2017-01-13 10:24:35'),
(10511, 6, ' 材料-编辑', '正常', 10229, 9, '未测试', '腰立辉', '2017-01-13 10:24:34'),
(10512, 7, ' 材料-删除', '正常', 10229, 9, '未测试', '腰立辉', '2017-01-13 10:24:32'),
(10513, 1, ' 图片-列表', '正常', 10230, 9, '未测试', '腰立辉', '2017-01-13 10:24:31'),
(10514, 2, ' 项目图片-新增', '正常', 10230, 9, '未测试', '腰立辉', '2017-01-13 10:24:55'),
(10515, 3, ' 上移/下移/置顶', '正常', 10230, 9, '未测试', '腰立辉', '2017-01-13 10:24:56'),
(10516, 4, ' 项目图片-编辑', '正常', 10230, 9, '未测试', '腰立辉', '2017-01-13 10:25:12'),
(10517, 5, ' 项目图片-删除', '正常', 10230, 9, '未测试', '腰立辉', '2017-01-13 10:25:12'),
(10518, 1, ' 问题-新增', '正常', 10177, 9, '未测试', '腰立辉', '2017-01-13 10:25:10'),
(10519, 2, ' 问题列表', '正常', 10177, 9, '未测试', '腰立辉', '2017-01-13 10:25:09'),
(10520, 3, ' 问题编辑', '正常', 10177, 9, '未测试', '腰立辉', '2017-01-13 10:25:08'),
(10521, 4, ' 问题-删除', '正常', 10177, 9, '未测试', '腰立辉', '2017-01-13 10:25:07'),
(10522, 5, ' 权重-保存', '正常', 10177, 9, '未测试', '腰立辉', '2017-01-13 10:25:05'),
(10523, 6, ' 问卷-发布', '正常', 10177, 9, '未测试', '腰立辉', '2017-01-13 10:25:03'),
(10524, 1, ' 查询-按活动标题', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:25:02'),
(10525, 2, ' 活动列表', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:25:01'),
(10526, 3, ' 已发布活动列表', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:25:00'),
(10527, 4, ' 未发布活动列表', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:24:59'),
(10528, 5, ' 更新排序', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:24:57'),
(10529, 6, ' 活动-新增', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:24:29'),
(10530, 7, ' 活动-编辑', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:26:34'),
(10531, 8, ' 活动-发布', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:26:51'),
(10532, 9, ' 活动-下线', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:26:50'),
(10533, 10, ' 活动报名-入口', '正常', 10180, 9, '未测试', '腰立辉', '2017-01-13 10:26:48'),
(10534, 1, ' 查询-按姓名或手机号', '正常', 10231, 9, '未测试', '腰立辉', '2017-01-13 10:26:45'),
(10535, 2, ' 报名人员列表', '正常', 10231, 9, '未测试', '腰立辉', '2017-01-13 10:26:43'),
(10536, 1, ' 查询-按栏目名称', '正常', 10144, 9, '未测试', '腰立辉', '2017-01-13 10:26:42'),
(10537, 2, ' 栏目列表', '正常', 10144, 9, '未测试', '腰立辉', '2017-01-13 10:26:41'),
(10538, 3, ' 批量排序', '正常', 10144, 9, '未测试', '腰立辉', '2017-01-13 10:26:40'),
(10539, 4, ' 栏目-新增', '正常', 10144, 9, '未测试', '腰立辉', '2017-01-13 10:26:39'),
(10540, 5, ' 栏目-设置', '正常', 10144, 9, '未测试', '腰立辉', '2017-01-13 10:26:38'),
(10541, 6, ' 栏目-删除', '正常', 10144, 9, '未测试', '腰立辉', '2017-01-13 10:26:37'),
(10542, 1, ' 按栏目过滤（左侧）', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:26:36'),
(10543, 2, ' 查询-按标题', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:26:35'),
(10544, 3, ' 查询-按状态', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:26:52'),
(10545, 4, ' 查询-组合查询', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:26:53'),
(10546, 5, ' 资讯列表', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:27:06'),
(10547, 6, ' 资讯-新增', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:27:05'),
(10548, 7, ' 资讯-编辑', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:27:04'),
(10549, 8, ' 资讯-删除', '正常', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:27:03'),
(10550, 9, ' 资讯-发布（未发现）', '待确认', 10179, 9, '未测试', '腰立辉', '2017-01-13 10:27:02'),
(10551, 1, ' 项目简介', '正常', 10168, 9, '未测试', '腰立辉', '2017-01-13 10:27:01'),
(10552, 2, ' 项目优势', '正常', 10168, 9, '未测试', '腰立辉', '2017-01-13 10:26:59'),
(10553, 3, ' 申请条件', '正常', 10168, 9, '未测试', '腰立辉', '2017-01-13 10:26:59'),
(10554, 4, ' 办理流程（周期）', '正常', 10168, 9, '未测试', '腰立辉', '2017-01-13 10:26:54'),
(10555, 5, ' 项目预约', '正常', 10168, 9, '未测试', '腰立辉', '2017-01-13 10:27:07'),
(10556, 6, ' 评估入口', '正常', 10168, 9, '未测试', '腰立辉', '2017-01-13 10:26:55'),
(10557, 1, ' 移民评估入口', '正常', 10161, 9, '未测试', '腰立辉', '2017-01-13 10:26:56'),
(10558, 1, ' 填写评估问题', '正常', 10162, 9, '未测试', '腰立辉', '2017-01-13 10:26:57'),
(10559, 2, ' 展示评估结果', '正常', 10162, 9, '未测试', '腰立辉', '2017-01-13 10:26:57'),
(10560, 1, ' 活动列表', '正常', 10164, 9, '未测试', '腰立辉', '2017-01-13 10:26:33'),
(10561, 2, ' 我要报名', '正常', 10164, 9, '未测试', '腰立辉', '2017-01-13 10:26:32'),
(10562, 1, ' 向往国家', '正常', 10171, 9, '未测试', '腰立辉', '2017-01-13 10:26:11'),
(10563, 2, ' 向往城市', '正常', 10171, 9, '未测试', '腰立辉', '2017-01-13 10:26:10'),
(10564, 3, ' 体验分类列表', '正常', 10171, 9, '未测试', '腰立辉', '2017-01-13 10:26:09'),
(10565, 4, ' 体验详情', '正常', 10171, 9, '未测试', '腰立辉', '2017-01-13 10:26:08'),
(10566, 1, ' 查询-按国家名', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:08'),
(10567, 2, ' 查询-按地理分类', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:07'),
(10568, 3, ' 查询-按发布状态', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:05'),
(10569, 4, ' 国家列表', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:04'),
(10570, 5, ' 国家-新增', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:04'),
(10571, 6, ' 国家-编辑', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:03'),
(10572, 7, ' 国家-删除', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:02'),
(10573, 8, ' 国家-发布', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:01'),
(10574, 9, ' 国家-下线', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:00'),
(10575, 10, ' 国家详情-入口', '正常', 10143, 9, '未测试', '腰立辉', '2017-01-13 10:26:12'),
(10576, 1, ' 城市-新增', '正常', 10232, 9, '未测试', '腰立辉', '2017-01-13 10:26:18'),
(10577, 2, ' 城市列表', '正常', 10232, 9, '未测试', '腰立辉', '2017-01-13 10:26:31'),
(10578, 3, ' 城市-编辑', '正常', 10232, 9, '未测试', '腰立辉', '2017-01-13 10:26:28'),
(10579, 4, ' 城市-删除', '正常', 10232, 9, '未测试', '腰立辉', '2017-01-13 10:26:23'),
(10580, 5, ' 上传图片', '正常', 10232, 9, '未测试', '腰立辉', '2017-01-13 10:26:22'),
(10581, 1, ' 政策-新增', '正常', 10233, 9, '未测试', '腰立辉', '2017-01-13 10:26:21'),
(10582, 2, ' 政策列表', '正常', 10233, 9, '未测试', '腰立辉', '2017-01-13 10:26:20'),
(10583, 3, ' 政策-编辑', '正常', 10233, 9, '未测试', '腰立辉', '2017-01-13 10:26:19'),
(10584, 4, ' 政策-删除', '正常', 10233, 9, '未测试', '腰立辉', '2017-01-13 10:25:59'),
(10585, 2, '专属管家入口', '正常', 10161, 9, '未测试', '腰立辉', '2017-01-13 10:26:23'),
(10586, 3, ' 专享活动入口', '正常', 10161, 9, '未测试', '腰立辉', '2017-01-13 10:26:24'),
(10587, 4, ' 生活体验入口', '正常', 10161, 9, '未测试', '腰立辉', '2017-01-13 10:26:25'),
(10588, 1, ' 获取验证码', '正常', 10234, 9, '未测试', '腰立辉', '2017-01-13 10:26:26'),
(10589, 2, ' 登录', '正常', 10234, 9, '未测试', '腰立辉', '2017-01-13 10:26:28'),
(10590, 2, '项目详情', '正常', 10175, 9, '未测试', '腰立辉', '2017-01-13 10:26:30');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_hcfunc`
--

DROP TABLE IF EXISTS `zt_tp_hcfunc`;
CREATE TABLE `zt_tp_hcfunc` (
  `id` int(11) NOT NULL,
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
  `adder` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_hcfunc`
--

INSERT INTO `zt_tp_hcfunc` (`id`, `sn`, `funcid`, `sysno`, `path`, `func`, `remarks`, `caseid`, `casestate`, `casemain`, `caseexpected`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`) VALUES
(103, 1, 10570, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', NULL, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌'),
(104, 2, 10568, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', NULL, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_hr`
--

DROP TABLE IF EXISTS `zt_tp_hr`;
CREATE TABLE `zt_tp_hr` (
  `id` smallint(6) NOT NULL,
  `title` varchar(20) DEFAULT NULL COMMENT '职位',
  `num` smallint(3) DEFAULT '1' COMMENT '人数',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `desc` text COMMENT '描述',
  `salary` varchar(10) DEFAULT NULL COMMENT '薪酬',
  `prodid` smallint(6) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `rtime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_hr`
--

INSERT INTO `zt_tp_hr` (`id`, `title`, `num`, `state`, `desc`, `salary`, `prodid`, `place`, `moder`, `rtime`, `utime`) VALUES
(3, '公司CEO', 1, '发布', '121', '面议', 1, '安顺汽修', '腰立辉', NULL, '2017-01-21 13:07:47'),
(10, 'ajsdja', 1, '正常', 'asdas', '面议', 0, '河北-临城', '', NULL, '2017-01-25 15:54:08'),
(11, 'werwe', 1, '正常', 'asda', '面议', 0, '河北-临城', '', NULL, '2017-01-25 15:56:30');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_link`
--

DROP TABLE IF EXISTS `zt_tp_link`;
CREATE TABLE `zt_tp_link` (
  `id` smallint(10) UNSIGNED NOT NULL COMMENT '友情链接id',
  `name` varchar(50) NOT NULL COMMENT '友情链接名称',
  `url` varchar(100) NOT NULL COMMENT '友情链接url',
  `ord` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '友情链接排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_page`
--

DROP TABLE IF EXISTS `zt_tp_page`;
CREATE TABLE `zt_tp_page` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '单页id',
  `name` varchar(20) NOT NULL COMMENT '单页名称',
  `content` text NOT NULL COMMENT '单页内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_page`
--

INSERT INTO `zt_tp_page` (`id`, `name`, `content`) VALUES
(12, '订单查询', ''),
(13, '退换货流程', ''),
(14, '退换货条款', ''),
(15, '用户协议', ''),
(16, '公司简介', ''),
(17, '联系我们', '<p>\r\n	1</p>\r\n'),
(18, '诚聘英才', ''),
(8, '支付方式', ''),
(9, '常见问题', ''),
(10, '配送时间及运费', ''),
(11, '验货与签收', ''),
(7, '购物指南', '');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_path`
--

DROP TABLE IF EXISTS `zt_tp_path`;
CREATE TABLE `zt_tp_path` (
  `id` smallint(6) NOT NULL,
  `sn` int(11) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_path`
--

INSERT INTO `zt_tp_path` (`id`, `sn`, `path`, `state`, `branchid`, `moder`, `utime`) VALUES
(10174, 11, ' 专属管家-我的专属管家', '正常', 66, '腰立辉', '2016-12-22 06:28:24'),
(10175, 6, '项目活动-公司名片', '正常', 66, '腰立辉', '2016-12-21 06:50:56'),
(10176, 4, '项目管理', '正常', 3, '腰立辉', '2017-01-15 04:55:52'),
(10177, 9, '移民评估', '正常', 3, '腰立辉', '2017-01-15 04:55:43'),
(10178, 13, '内容发布-专题管理', '正常', 3, '腰立辉', '2017-01-15 04:55:37'),
(10179, 14, ' 内容发布-资讯发布', '正常', 3, '腰立辉', '2017-01-15 04:55:28'),
(10180, 15, ' 内容发布-活动管理', '正常', 3, '腰立辉', '2017-01-15 04:54:23'),
(10181, 16, ' 内容发布-移民管家', '正常', 3, '腰立辉', '2017-01-15 04:56:41'),
(10182, 18, ' 营销管理-我的客户', '正常', 3, '腰立辉', '2017-01-15 04:56:47'),
(10183, 19, '营销管理-移民方案', '正常', 63, '腰立辉', '2016-12-21 06:21:25'),
(10184, 20, ' 营销管理-推荐客户', '正常', 63, '腰立辉', '2016-12-21 06:21:25'),
(10233, 3, ' 国家管理-移民政策', '正常', 3, '腰立辉', '2017-01-15 04:56:09'),
(10234, 0, ' 登录', '正常', 66, '腰立辉', '2016-12-21 08:21:54'),
(10231, 15, ' 活动管理-报名人数', '正常', 63, '腰立辉', '2016-12-21 06:22:14'),
(10232, 3, ' 国家管理-移民城市', '正常', 63, '腰立辉', '2016-12-21 07:48:42'),
(10191, 2, ' 主页', '正常', 64, '腰立辉', '2016-12-06 02:17:27'),
(10141, 1, ' 登录', '正常', 63, '腰立辉', '2016-12-05 08:13:59'),
(10142, 2, ' 首页', '正常', 3, '腰立辉', '2017-01-15 04:53:55'),
(10143, 3, '国家管理', '正常', 3, '腰立辉', '2017-01-15 04:54:02'),
(10144, 12, ' 内容发布-栏目管理', '正常', 3, '腰立辉', '2017-01-15 04:54:10'),
(10145, 17, ' 营销管理-意向客户', '正常', 3, '腰立辉', '2017-01-15 04:54:17'),
(10148, 2, '客户信息（上）', '正常', 4, '腰立辉', '2017-01-15 04:53:00'),
(10149, 3, '客户信息（下）', '正常', 4, '腰立辉', '2017-01-15 04:53:09'),
(10150, 4, ' 个人中心', '正常', 4, '腰立辉', '2017-01-15 04:52:46'),
(10173, 5, '项目活动-商务合作', '正常', 66, '腰立辉', '2016-12-21 06:50:56'),
(10152, 1, ' 登录模块', '正常', 64, '腰立辉', '2016-12-05 08:21:42'),
(10153, 6, ' 组织机构模块', '正常', 64, '腰立辉', '2016-12-06 02:17:27'),
(10154, 7, ' 平台管理', '正常', 64, '腰立辉', '2016-12-06 02:17:27'),
(10156, 3, ' 岗位管理', '正常', 64, '腰立辉', '2016-12-06 02:17:27'),
(10157, 4, ' 角色管理', '正常', 64, '腰立辉', '2016-12-06 02:17:27'),
(10158, 8, ' 字典管理', '正常', 64, '腰立辉', '2016-12-06 02:17:41'),
(10159, 5, ' 用户模块', '正常', 64, '腰立辉', '2016-12-06 02:17:27'),
(10161, 1, '首页', '正常', 66, '腰立辉', '2016-12-21 06:45:37'),
(10162, 2, ' 首页-移民评估', '正常', 66, '腰立辉', '2016-12-21 06:45:45'),
(10163, 10, ' 专属管家-列表及介绍', '已搁置', 66, '腰立辉', '2016-12-21 06:50:56'),
(10164, 3, '项目活动- 专享活动', '正常', 66, '腰立辉', '2016-12-21 06:50:56'),
(10165, 12, ' 优选国家', '已搁置', 66, '腰立辉', '2016-12-21 06:50:56'),
(10166, 13, ' 精彩案例', '已搁置', 66, '腰立辉', '2016-12-21 06:50:56'),
(10167, 14, ' 移民攻略', '已搁置', 66, '腰立辉', '2016-12-21 06:50:56'),
(10168, 4, '项目活动- 移民项目', '正常', 66, '腰立辉', '2016-12-21 06:50:56'),
(10171, 7, ' 项目活动-生活体验', '正常', 66, '腰立辉', '2016-12-21 06:50:56'),
(10172, 1, ' 登录', '正常', 4, '腰立辉', '2017-01-15 04:52:53'),
(10201, 8, ' 投票活动-太平洋好声音', '已搁置', 66, '腰立辉', '2016-12-21 06:50:56'),
(10202, 9, ' 投票活动-四海一家', '已搁置', 66, '腰立辉', '2016-12-21 06:50:56'),
(10203, 10, '商务合作-商务合作管理', '正常', 3, '腰立辉', '2017-01-15 04:55:07'),
(10204, 11, ' 商务合作-商务合作进度', '正常', 3, '腰立辉', '2017-01-15 04:55:01'),
(10224, 21, '数据中心-获客列表', '正常', 3, '腰立辉', '2017-01-15 04:56:34'),
(10225, 22, ' 数据中心-名片流量', '正常', 3, '腰立辉', '2017-01-15 04:54:55'),
(10226, 23, ' 数据中心-微信号设置', '正常', 3, '腰立辉', '2017-01-15 04:54:29'),
(10227, 5, ' 项目管理-申请流程', '正常', 3, '腰立辉', '2017-01-15 04:55:19'),
(10228, 6, ' 项目管理-费用详情', '正常', 3, '腰立辉', '2017-01-15 04:56:28'),
(10229, 7, ' 项目管理-材料清单', '正常', 3, '腰立辉', '2017-01-15 04:55:59'),
(10230, 8, ' 项目-图片', '正常', 3, '腰立辉', '2017-01-15 04:55:13');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_projectbranch`
--

DROP TABLE IF EXISTS `zt_tp_projectbranch`;
CREATE TABLE `zt_tp_projectbranch` (
  `id` smallint(5) NOT NULL,
  `branchid` smallint(6) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_projectbranch`
--

INSERT INTO `zt_tp_projectbranch` (`id`, `branchid`, `proid`, `moder`, `utime`) VALUES
(56, 54, 24, '腰立辉', '2016-09-22 02:06:44'),
(67, 4, 45, '腰立辉', '2016-09-25 11:12:47'),
(61, 4, 47, '腰立辉', '2016-09-23 01:46:13'),
(68, 11, 46, '腰立辉', '2016-09-26 03:26:22'),
(62, 56, 48, '腰立辉', '2016-09-24 12:47:58'),
(63, 4, 48, '腰立辉', '2016-09-24 12:48:09'),
(64, 56, 49, '腰立辉', '2016-09-24 13:16:03'),
(65, 4, 49, '腰立辉', '2016-09-24 13:16:05'),
(69, 11, 50, '腰立辉', '2016-10-19 04:50:06'),
(70, 54, 45, '王鑫彤', '2016-10-21 02:27:07'),
(79, 11, 97, '腰立辉', '2016-11-18 01:23:11'),
(74, 11, 51, '腰立辉', '2016-10-25 07:17:08'),
(73, 3, 65, '腰立辉', '2016-10-24 01:21:35'),
(75, 6, 51, '腰立辉', '2016-10-25 09:11:04'),
(76, 11, 80, '腰立辉', '2016-11-18 01:24:01'),
(82, 62, 107, '腰立辉', '2016-12-05 08:06:15'),
(83, 63, 107, '腰立辉', '2016-12-05 08:09:42'),
(89, 64, 109, '腰立辉', '2016-12-06 02:15:42'),
(85, 66, 107, '腰立辉', '2016-12-05 08:30:45'),
(87, 68, 108, '腰立辉', '2016-12-05 09:42:53'),
(88, 4, 108, '腰立辉', '2016-12-05 09:42:56'),
(91, 66, 110, '腰立辉', '2016-12-12 01:44:55'),
(92, 69, 111, '腰立辉', '2016-12-17 14:59:59'),
(93, 70, 111, '腰立辉', '2016-12-17 15:00:02'),
(94, 72, 112, '腰立辉', '2016-12-17 15:05:50'),
(95, 71, 112, '腰立辉', '2016-12-17 15:05:53'),
(96, 73, 113, '腰立辉', '2016-12-17 15:09:33'),
(97, 74, 113, '腰立辉', '2016-12-17 15:09:35'),
(98, 76, 114, '腰立辉', '2016-12-17 15:15:52'),
(99, 75, 114, '腰立辉', '2016-12-17 15:15:54'),
(100, 64, 107, '腰立辉', '2016-12-19 07:41:11'),
(102, 63, 116, '腰立辉', '2016-12-21 05:10:31'),
(103, 66, 116, '腰立辉', '2016-12-21 05:10:33');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_prosys`
--

DROP TABLE IF EXISTS `zt_tp_prosys`;
CREATE TABLE `zt_tp_prosys` (
  `id` smallint(5) NOT NULL,
  `branch` smallint(6) DEFAULT NULL,
  `project` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_prosys`
--

INSERT INTO `zt_tp_prosys` (`id`, `branch`, `project`, `moder`, `utime`) VALUES
(98, 2, 9, '腰立辉', '2017-01-15 09:16:27'),
(105, 3, 9, '腰立辉', '2017-01-16 03:08:24'),
(109, 2, 8, '腰立辉', '2017-01-15 09:28:54'),
(110, 3, 8, '腰立辉', '2017-01-15 09:29:00');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_risk`
--

DROP TABLE IF EXISTS `zt_tp_risk`;
CREATE TABLE `zt_tp_risk` (
  `id` smallint(11) NOT NULL,
  `sn` int(11) DEFAULT NULL,
  `risk` text,
  `level` varchar(2) DEFAULT NULL,
  `amethod` text,
  `proid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `remaks` varchar(200) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_risk`
--

INSERT INTO `zt_tp_risk` (`id`, `sn`, `risk`, `level`, `amethod`, `proid`, `state`, `remaks`, `moder`, `utime`) VALUES
(1002, 1, '额外企鹅去', 'C', '&lt;p&gt;\r\n	暂无方案&lt;/p&gt;\r\n', 8, '打开', '', '腰立辉', '2017-01-15 07:43:55');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_rules`
--

DROP TABLE IF EXISTS `zt_tp_rules`;
CREATE TABLE `zt_tp_rules` (
  `id` int(11) NOT NULL,
  `sn` int(11) DEFAULT NULL,
  `rules` varchar(300) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `remark` text,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_rules`
--

INSERT INTO `zt_tp_rules` (`id`, `sn`, `rules`, `source`, `funcid`, `state`, `fproid`, `remark`, `moder`, `utime`) VALUES
(10067, 1, ' 点击删除，弹出确认是否删除？是，删除本记录，否，关闭弹窗', '产品原型', 10512, '正常', 9, '', '腰立辉', '2017-01-13 10:12:06'),
(10068, 1, ' 编辑模式下页面需加载当前编辑的原有数据', '需求原型', 10511, '正常', 9, '', '腰立辉', '2017-01-13 10:12:08'),
(10069, 1, '点击发布项目状态置为&quot;上线&quot;，项目信息发布在微网站上  发布项目时需校验项目国家是否为发布状态', '需求原型', 10493, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10070, 1, ' 项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10071, 1, '  项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10072, 2, ' 项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', 10491, '待确认', 9, '<p>\r\n	确定要多选吗？</p>\r\n', '腰立辉', '2017-01-13 10:16:03'),
(10073, 2, '  项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', 10489, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10074, 3, ' 项目编号：系统自动生成，例如“美国投资移民“MGTZYM001', '需求原型', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10075, 4, ' 所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10076, 3, '  所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10077, 4, ' 项目示例：点击查看示例，弹出填写示例', '需求原型', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10078, 5, '  项目示例：点击查看示例，弹出填写示例', '需求原型', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10079, 6, '顾问名片： 若顾问名片模块选中则此项目将在顾问名片处展示', '需求原型', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10080, 3, ' 保存前生成项目编号，并与表单信息一并更新入库', '需求原型', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10081, 1, '排序： 选填项，输入限制：输入项必须是数字；默认值0', '需求原型', 10495, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10082, 1, '视频地址： //当媒体类型为视频时需要填写（必填）', '需求原型', 10514, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10083, 1, ' 保存按钮用于保存排序和匹配权重', '需求原型', 10522, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10084, 2, ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求原型', 10522, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10085, 1, ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求文档 ', 10523, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10086, 1, ' 删除需要弹窗确认', '需求文档 ', 10521, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10087, 1, ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', 10518, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10088, 1, ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', 10520, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10089, 2, '最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', 10518, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10090, 2, ' 最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', 10520, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10091, 3, ' 答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', 10520, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10092, 3, '  答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', 10518, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10093, 4, ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', 10518, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10094, 4, ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', 10520, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10095, 1, ' 活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', 10529, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10096, 1, '  活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', 10530, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10097, 1, ' 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页', '需求原型', 10551, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10098, 1, ' 申请条件展示图标、申请项、申请描述  后台设置申请项，最多展示7项，最少2项  申请描述限制15个字', '需求原型', 10553, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10099, 1, ' 确认后回到项目列表', '需求原型', 10555, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10100, 1, ' 首次进入加载2屏活动列表，上滑一次加载一屏', '需求原型', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10101, 2, ' 排序按活动时间倒序排序，同级按创建时间倒序排序', '需求原型', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10102, 3, ' 报名结束的活动 我要报名按钮不可点击', '需求原型', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10103, 4, '活动图片： 70*65  同首页专享活动 ；后台上传图片，如不上传展示默认图片', '需求原型', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10104, 5, ' 活动名称：最多一行（多了怎么办？）', '需求原型', 10560, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10105, 6, ' 活动时间：最多一行', '需求原型', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10106, 7, ' 活动地点：最多展示两行（多了怎么办？）', '需求原型', 10560, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10107, 8, ' 根据活动时间判断，如果活动时间未到，则展示火热报名中，如果活动结束后，变更为报名结束', '需求原型', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10108, 1, ' 【我要报名】点击后跳转到表单页', '需求原型', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10109, 2, ' 校验手机号长度是否正确', '需求原型', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10110, 3, ' 如用户已登录，则自动展示其手机号', '需求原型', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10111, 4, ' 修改备注描述（这句话是什么意思？）', '需求原型', 10561, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10112, 5, ' 活动图片：70*65  同首页专享活动', '需求原型', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10113, 6, '活动名称： 最多一行', '需求原型', 10561, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10114, 7, '活动描述： 最多展示3行，限制75个汉字（这个限制应该在后台吧）', '需求原型', 10561, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10115, 8, ' 活动时间：最多一行，年月日 上午/下午 时分', '需求原型', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10116, 9, ' 活动地点：最多展示两行', '需求原型 ', 10561, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10117, 10, '提交成功： 返回到专享活动列表页', '需求原型', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10118, 1, ' 用户填写用户名、密码后点击“登录”按钮可完成登录操作。登录后用户可修改个人资料；修改密码；访问该用户已授权的各功能模块。', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10119, 1, ' 用户在登录状态下点击“退出”按钮系统切换至退出状态，并刷新至登录页面。', '需求文档 ', 10479, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10120, 2, ' 验证用户名格式是否正确；（字母、数字、下划线组合）；', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10121, 3, ' 验证密码输入是否正确； 验证用户是否存在；', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10122, 4, ' 验证用户名、密码输入是否匹配； 执行登录操作并刷新当前页面至网站首页。', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10123, 5, ' 2a验证手机号码是否正确输入 2a1 若为空，给出不能为空提示。 2a2 若输入不合法，给出输入不合法提示。', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10124, 6, ' 3a检查密码输入是否正确 3a1 若为空，给出不能为空提示。 3a2若输入不合法，给出输入不合法提示。', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10125, 7, ' 3b验证用户是否存在 3a1若用户不存在提示用户不存在。', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10126, 8, ' 4a 验证用户名、密码输入是否匹配 4al输入验证不通过，网页提示“用户名或密码输入有误，登录失败”。 4a2若登录失败，网页给出提示“登录失败”并提示失败原因。', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10127, 9, ' 网页用户信息区域显示已登录的用户名（用户手机号）界面，退出登录按钮可见。', '需求文档 ', 10478, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10128, 2, ' 1.	用户点击“退出登录”链接按钮	网页提示“确定要退出吗”。', '需求文档 ', 10479, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10129, 3, ' 1.	用户点击“确定”按钮	清除用户登录信息； 刷当前页面至登录页。', '需求文档 ', 10479, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10130, 8, ' 用户可在项目管理模块通过“新增”按钮创建项目，创建项目时需填写项目基本信息；新增时生成项目编号，且不可修改；新增的项目默认为“未上线”状态。 新增后的项目可在项目管理页列表查看。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10131, 5, ' 在项目管理模块通过“编辑”按钮可对项目进行编辑操作。项目编辑时可修改基本信息、申请条件、办理流程、费用详情、材料清单信息。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10132, 1, ' 列表数据原则上显示一行文字即可，超出文字可用……代替', '需求原型', 10569, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10133, 1, ' 点击国家名称进入详情页面', '需求原型', 10575, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10134, 1, ' 已发布的国家，没有删除按钮（自己理解的不知道是否正确）', '需求原型', 10572, '待确认', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10135, 1, ' 点击发布校验信息填写是否完整，若不完整提示“请填写完整信息后发布”', '需求原型', 10571, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10136, 1, ' 点击发布国家状态置为&quot;已发布&quot;，国家信息发布在微网站上', '需求原型', 10573, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10137, 2, ' 国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型', 10571, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10138, 3, ' 1.英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', 10571, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10139, 4, ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', 10571, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10140, 5, ' 封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', 10571, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10141, 6, '   居住环境、  社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型', 10571, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10142, 1, '  国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型 ', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10143, 2, '英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10144, 3, ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10145, 4, '  封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:20:03'),
(10146, 5, ' 居住环境、 社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型 ', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:20:04'),
(10147, 1, ' 点击“新增”或“编辑”按钮打开政策新增页（确定点“编辑”也进新增页吗？）', '需求原型', 10581, '待确认', 9, '', '腰立辉', '2017-01-13 10:20:05'),
(10148, 1, ' 点击“删除”按钮可删除移民政策。（不需要确定弹框吗？）', '需求原型', 10584, '待确认', 9, '', '腰立辉', '2017-01-13 10:20:05'),
(10149, 1, ' 列表分页显示，首页默认显示15条', '需求原型 ', 10582, '正常', 9, '', '腰立辉', '2017-01-13 10:20:06'),
(10150, 2, '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10581, '正常', 9, '', '腰立辉', '2017-01-13 10:20:07'),
(10151, 1, '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10583, '正常', 9, '', '腰立辉', '2017-01-13 10:20:08'),
(10152, 3, ' 相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', 10581, '正常', 9, '', '腰立辉', '2017-01-13 10:20:09'),
(10153, 2, '  相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', 10583, '正常', 9, '', '腰立辉', '2017-01-13 10:20:10'),
(10154, 1, ' 当前项目为“上线”状态时通过“暂停”按钮可切换项目状态至暂停或售罄状态，其中暂停项目不在网站显示。', '需求文档 ', 10492, '正常', 9, '', '腰立辉', '2017-01-13 10:20:11'),
(10155, 2, ' 在项目详情页通过“发布”按钮可发布项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验项目信息是否填写完整，包括基本信息、申请条件、办理流程、费用详情、材料清单信息。若存在未填写项需要提示补充项目资料后方可发布。', '需求文档 ', 10493, '正常', 9, '', '腰立辉', '2017-01-13 10:20:13'),
(10156, 9, ' 3.	项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:20:13'),
(10157, 10, ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:20:14'),
(10158, 6, ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:20:16'),
(10159, 7, '项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:20:17'),
(10160, 11, ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:20:18'),
(10161, 8, ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10162, 9, ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10163, 12, ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10164, 13, ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10165, 10, ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10166, 11, ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10167, 14, ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10168, 15, ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10169, 12, ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10170, 13, ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10171, 16, ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10172, 17, ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10173, 14, ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10174, 15, ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10175, 18, ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10176, 19, ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10177, 16, ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10178, 17, ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10179, 20, ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10180, 21, ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10181, 18, ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10182, 19, ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', 10491, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10183, 22, ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', 10489, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10184, 1, ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', 10496, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10185, 1, ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', 10502, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10186, 2, ' 下拉框仅可修改状态为：“暂停”、“售罄', '需求文档 ', 10492, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10187, 3, ' 检查保存是否成功 3a1若保存失败，网页给出提示“保存失败”。', '需求文档 ', 10492, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10188, 3, ' 2.	更改项目状态为“上线”状态，同时网站端同步当前项目信息。', '需求文档 ', 10493, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10189, 4, ' 坚查项目信息是否完整 2a1若项目基本信息不完整提示“请完善项目信息”后发布。 2a2 若申请条件未填写，提示“请补充项目申请条件”。 2a3 若办理流程未填写，提示“请补充项目办理流程”。 2a4 若费用详情未填写，提示“请补充项目费用详情”。 2a5 若材料清单未填写，提示“请补充材料清单”。 2b 若发布失败，提示失败原因。', '需求文档 ', 10493, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10190, 6, ' 用户可在国家管理模块通过“新增”按钮创建国家信息，创建国家时需填写国家基本信息；新增时国家从国家字典中选择，其中英文名、地理位置均为联动信息，不可单独编辑；新增的国家默认为“未发布”状态。 新增后的国家可在国家管理页列表查看。', '需求文档 ', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10191, 7, ' 在国家管理模块通过“编辑”按钮可对国家信息进行编辑操作。国家编辑时可修改基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍等信息。其中生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍均为富文本编辑方式录入。', '需求文档 ', 10571, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10192, 2, ' 在国家详情页通过“发布”按钮可国家项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验国家信息是否填写完整，包括基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍信息。若存在未填写项需要提示补充国家资料后方可发布。', '需求文档 ', 10573, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10193, 7, ' 1.	国家名：必填属性，加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列； 2.	英文名：此处为选择国家后自动加载。 3.	地理分类：此处为选择国家后自动加载。 4.	移民热点：必填属性，可多选；选项列表由字典管理处维护。 5.	代表icon：代表国家的国旗图片，图片格式：支持jpg,png格式图片，尺寸为待定,大小不超过50kb。', '需求文档 ', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10194, 8, ' 6.	封面图片：用于在网站列表处显示的缩略图；图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb。 7.	国家简介：富文本输入方式，可填写500个汉字，并且支持图文并茂。 8.	发布状态：新增时国家为“未发布”状态，且不可手动更改。', '需求文档 ', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10195, 9, ' 验证各项输入是否合法 3a1 若为空，给出不能为空提示。 3a2 若输入不合法，给出输入不合法提示。 3b 若保存失败，提示失败原因。', '需求文档 ', 10570, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10196, 3, ' 1.	检查国家信息是否完整，包括国家基本信息页各项必填项，以及生活环境、社会福利、教育水准、投资置业有没有录入信息。 2.	更改国家状态为“已发布”状态，同时网站端同步当前国家信息。', '需求文档 ', 10573, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10197, 4, ' 2a检查国家信息是否完整 2a1若国家基本信息不完整提示“请完善国家基本信息”后发布。 2a2 若生活环境未填写，提示“请填写生活环境”。 2a3 若社会环境未填写，提示“请填写社会环境”。 2a4 若社会福利未填写，提示“请填写社会福利”。 2a5 若教育水准未填写，提示“请填写教育水准”。 2a5 若投资置业未填写，提示“请填写投资置业”。 2b 若发布失败，提示失败原因。', '需求文档 ', 10573, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10198, 1, ' 用户可在评估管理处添加、设置评估问卷，设置完成后，网站端可依据此问题列表及相关设置展示评估问题及作答方式；C端用户提交作答评估问卷后依据此处设置的匹配关系及规则加载推荐项目列表。', '需求文档 ', 10519, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10199, 2, ' 修改排序：在问题列表处修改问题排序数字，点击保存按钮可保存排序、保存匹配规则。保存后问卷信息及其设置在网站端生效。', '需求文档 ', 10519, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10200, 5, ' 在评估管理模块点击“新增”按钮进入新增问题页面，新增问题时需填写问题名、问题注解、作答模式、是否必填、答案选项等。其中问题名、问题注解、作答模式、是否必填、最多可选个数均为必填项。新增后的问题可设置起匹配关系，调整排序，修改匹配权重。', '需求文档 ', 10518, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10201, 5, ' 问题设置界面可修改评估问题信息，可设置问题对应的项目特性以及问题答案对应的项目属性的各项要求。', '需求文档 ', 10520, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10202, 2, ' 用户通过移动端访问微网站，当用户点击“进度查询”菜单时检查是否是会员； 若用户是会员则查询其办理的项目信息列表。 若用户不是会员，跳转至绑定会员页，提示其输入信息绑定会员。 会员用户可查询项目办理进度，签订协议信息；并可通过公众号时时推送办理进度信息。', '需求文档 ', 10523, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10203, 1, ' 验证非空属性； 验证当前密码是否正确； 验证新密码与确认密码是否一致', '需求文档 ', 10480, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10204, 1, ' 	登录：用户填写手机号、短信验证码可完成登录操作。', '需求文档 ', 10589, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10205, 2, ' 	登录入口:首页-专属管家，移民评估-测试问卷提交，个人中心-我的资料、我的评估结果、我的专属管家、我的进度，意见反馈进入后判断是否登录', '需求文档 ', 10589, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10206, 1, ' 	短信验证码：短信验证码由6位数字构成。网络畅通的情况下，用户需要在15分钟内输入正确的6位短信验证码，前台在60s后可重新发送新的验证码，短信验证码输入提交后即失效，发送限制依据短信平台规则(一分钟一条,一小时3条,一天10条)', '需求文档 ', 10588, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10207, 2, ' 显示【用户】手机号输入框（灰色字提示请输入您的手机号）、短信验证码输入框（灰色字提示请输入验证码），获取验证码按钮，登录按钮', '需求文档 ', 10588, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10208, 3, ' 校验手机号码长度，格式是否正确； 	验证手机号是否已输入，若未输入，提示“请输入手机号” 	如长度有误提示：“手机号码长度不是11位，请重新输入” 	如号段格式有误，提示：“手机号格式不正确，请重新输入”', '需求文档 ', 10588, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10209, 4, ' 调用短信接口，发送短信验证码至用户手机号。 验证码发送成功后，按钮“获取验证码”变更为灰色不可点击“重新获取（60）”倒计时，倒计时结束后按钮变更“重新获取”用户可点击发送新的验证码，则原有验证码失效。提示：“该验证码已失效，请重新输入”', '需求文档 ', 10588, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10210, 5, ' 验证验证码是否为正确，如输入错误，提示验证码输入错误，请重试！', '需求文档 ', 10588, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10211, 1, ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', 10558, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10212, 1, '  用户选择国家城市，进入体验入口，进入不同的入口看到不同的场景图片及城市介绍', '需求文档 ', 10587, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10213, 1, ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', 10557, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10214, 1, ' 用户提交移民评估的问卷后可根据答题结果获得项目匹配度最高的3种项目方案', '需求文档 ', 10559, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10215, 2, ' 进入移民评估页面。 1．	未登录或未评估用户展示评估问题及答案 2．	已评估的用户登录后展示之前做过的评估问卷 3．	从生活体验入口进来，自动选中意向国家', '需求文档 ', 10558, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10216, 3, ' 评估问题及答案从后台进行设置，包括单选多选，标签选择还是输入框，题目对应权重及答案跟项目属性的匹配', '需求文档 ', 10558, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10217, 4, ' 1.判断每道题是否已填，如未填则提示用户：您还没有填写此题 2.判断用户是否登录，未登录跳转登录页面', '需求文档 ', 10558, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10218, 5, ' 1.根据用户匹配度结果优先展示匹配度最高的前3个项目 2.排序规则：按匹配度倒序排列，如匹配度相同则展示资产要求最高的几项 3根据用户填写答案，展示对应的8项是否满足', '需求文档 ', 10558, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10219, 9, ' 用户报名参加活动，后台记录该用户的报名信息 活动列表展示活动缩略图、名称、时间、地点、标签、我要报名按钮 活动详情展示活动宣传图、名称、活动描述，时间、地点，报名姓名（必填）、联系方式（必填），参与人数（选填）确认提交', '需求文档 ', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10220, 10, ' 1.当活动结束时，标签展示“报名结束”当活动正在进行未到活动时间点时，标签展示“火热报名中” 2.报名结束的活动不可点击我要报名按钮 3.进入后加载2屏活动列表，上拉加载一屏 4.排序按活动时间倒序排列 5.活动名称、时间最多展示一行，活动地点最多展示两行', '需求文档 ', 10560, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10221, 11, ' 1.姓名和联系方式是必填项，如未填写，提交按钮置灰不允许提交，用户已登录，则自动展示其手机号 2.姓名可填英文或中文字符  3. 联系方式填写手机号，如长度有误提示：“手机号码长度不是11位，请重新输入” 4.如号段格式有误，提示：“手机号格式不正确，请重新输入” 5.如填写正确无误，确认按钮恢复为可点击', '需求文档 ', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10222, 12, ' 提示用户 报名成功，3s后返回到活动列表页', '需求文档 ', 10561, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10223, 2, ' 筛选条件：按国家地区 或按项目类型筛选', '需求文档 ', 10551, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10224, 3, ' 默认按国家地区分类，右侧拼音为国家首字母，只显示有项目的国家首字母 按国家地区：展示国家首字母、国家名称、项目名称、项目图片、推荐指数、右侧快捷拼音查找 按项目类型筛选：显示所有对外发布的项目分类，排序：投资/购房/护照/技术/留学/其他，如类型下没有项目则不显示该类型，筛选结果展示同上', '需求文档 ', 10551, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10225, 4, ' 排序规则： 按国家的首字母拼音顺序排序，该首字母拼音下无国家，则不展示此字母 如相同首字母的国家，则按项目数多的国家优先展示，项目数相同，按推荐指数平均分最高的优先展示，推荐指数相同按发布时间倒序排列 相同国家下的项目，按推荐指数从高到低排序，相同推荐指数按发布时间倒序排列 项目列表每次加载2屏，超出2屏时，每次手势上滑后加载2屏', '需求文档 ', 10551, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10226, 5, ' 点击某一项目进入项目详情H5页，展示项目名称、图片、项目介绍、项目优势、申请条件、办理流程、预约信息 项目介绍、项目优势、申请条件、办理流程后台进行设置。 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页。', '需求文档 ', 10551, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10227, 1, ' 项目优势、办理流程最多展示10条，申请条件至少展示2条，最多展示7条，其中申请条件描述限制15个字。', '需求文档 ', 10552, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10228, 2, ' 预约信息填写预约人信息及手机号，如用户已登录，则展示用户手机号，可编辑修改，校验姓名手机号是否为空，手机号长度，手机号段格式同4.2.1登录。 点击立即预约，提示用户预约成功，确认后返回到项目列表页面，点击免费评估，进入评估页面，判断是否做过评估信息，如提交则展示上一次提交信息，如未做过评估，则问卷中意向国家选中该项目所在国家', '需求文档 ', 10555, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10229, 1, ' 入口：1微信菜单-生活体验、2、微站用户端首页-生活体验', '需求文档 ', 10562, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10230, 2, ' 生活体验提供用户海外当地的生活场景展示，数据来源移民项目所在国家城市 生活体验包括：国家列表、城市列表、体验入口、场景展示 国家列表： 用户进入生活体验先选择意向国家，国家来源于移民项目所在的国家，可左右滑动展示显示移民国家，循环查看所有意向国家，排序按后台设置的顺序， 手势向左滑动时，展示国家1,国家2,国家3,…', '需求文档 ', 10562, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10231, 1, ' 城市列表： 当该国家只有一个城市时跳过该页面进入体验入口，当该国家下只有2个或3个城市时，均分显示城市，不可上下滑动，当大于3个城市时，每次手动向上滑动一次，则展示下一个城市，排序按后台设置的顺序', '需求文档 ', 10563, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10232, 1, ' 体验入口： 1、城市介绍、房产、学校、购物、街景、医院， 后台上传对应的图片。 2、管家、方案、服务，后续当微站上线后，增加对应的文字+链接，链接到专属管家、定制方案、海外服务等模块。一期上线生活体验时暂不出现文字+链接', '需求文档 ', 10564, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03'),
(10233, 1, ' 场景介绍： 展示对应的图片及图片描述，或视频及视频描述，可左右滑动循环查看，后台上传对应数据，排序按后台设置的顺序，手势向左滑动时依次展示。', '需求文档 ', 10565, '正常', 9, '', '腰立辉', '2017-01-13 10:16:03');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_sccesscase`
--

DROP TABLE IF EXISTS `zt_tp_sccesscase`;
CREATE TABLE `zt_tp_sccesscase` (
  `id` smallint(6) NOT NULL,
  `cat` varchar(10) DEFAULT NULL,
  `car` varchar(200) DEFAULT NULL,
  `bpath` varchar(200) NOT NULL,
  `before` varchar(32) DEFAULT NULL,
  `apath` varchar(200) NOT NULL,
  `after` varchar(32) DEFAULT NULL,
  `desc` text,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_sccesscase`
--

INSERT INTO `zt_tp_sccesscase` (`id`, `cat`, `car`, `bpath`, `before`, `apath`, `after`, `desc`, `moder`, `utime`) VALUES
(1, '钣金喷漆', '雪铁龙C3-XR', '/Case/before/2016-10-29/', '581490001107b.JPG', '/Case/after/2016-10-29/', '581490aa12a9e.jpg', '前翼子板撞花', '腰立辉', '2016-10-29 12:06:02'),
(2, '大保养', '奔驰E300', '/Case/before/2016-10-29/', '58149047d90ea.jpg', '/Case/after/2016-10-29/', '581490b6c991d.jpg', '奔驰豪车30000公里保养，更换机油三滤，刹车片，变速箱油，火花塞……', '腰立辉', '2016-10-29 12:06:14');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_scene`
--

DROP TABLE IF EXISTS `zt_tp_scene`;
CREATE TABLE `zt_tp_scene` (
  `id` int(11) NOT NULL,
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
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_scene`
--

INSERT INTO `zt_tp_scene` (`id`, `sn`, `type`, `level`, `swho`, `swhen`, `testip`, `scene`, `state`, `proid`, `flow`, `sourceid`, `moder`, `utime`) VALUES
(10033, 1, 'M', 3, '关注用户', '默认', '', '在公众订阅号，直接打开并提交报名', '正常', 8, '微信号个人中心->公司名片->提交报名', 0, '腰立辉', '2017-01-13 10:29:19'),
(10034, 2, 'M', 2, '专属管家', '未开启个人名片时', NULL, '分享公司名片', '正常', 8, '', 0, '腰立辉', '2017-01-13 10:29:20'),
(10035, 3, 'M', 2, '专属管家', '开启个人名片', NULL, '分享公司名片-分享个人名片', '正常', 8, '', 10034, '腰立辉', '2017-01-13 10:29:21'),
(10036, 4, 'M', 2, '关注用户', '在管家分享后', NULL, '管家名片填写报名信息', '正常', 8, '', 0, '腰立辉', '2017-01-13 10:29:27');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_scenefunc`
--

DROP TABLE IF EXISTS `zt_tp_scenefunc`;
CREATE TABLE `zt_tp_scenefunc` (
  `id` int(11) NOT NULL,
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
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_scenefunc`
--

INSERT INTO `zt_tp_scenefunc` (`id`, `sn`, `funcid`, `sysno`, `path`, `func`, `sceneid`, `remarks`, `sourceid`, `caseid`, `casestate`, `casemain`, `caseexpected`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `moder`, `utime`) VALUES
(10222, 1, 10425, 'wzb', '微站后台- 内容发布-移民管家', ' 管家新增', 0, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-07 10:13:36'),
(10230, 3, 10421, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:19:31'),
(10229, 2, 10420, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 重点项目', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:19:21'),
(10228, 1, 10419, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:19:19'),
(10231, 4, 10423, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 报名', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:19:36'),
(10232, 5, 10424, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:19:42'),
(10233, 1, 10419, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10034, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:27:06'),
(10234, 2, 10421, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10034, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:27:09'),
(10235, 3, 10422, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', 10034, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:27:13'),
(10236, 3, 10419, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:28:22'),
(10237, 4, 10421, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:28:22'),
(10238, 5, 10422, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:28:22'),
(10239, 1, 10426, 'wzb', '微站后台- 内容发布-移民管家', ' 管家编辑', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:28:22'),
(10240, 2, 10429, 'wzb', '微站后台- 内容发布-移民管家', ' 管家详情', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:28:22'),
(10241, 1, 10422, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 06:33:27'),
(10242, 4, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:33:45'),
(10243, 3, 10420, NULL, '微网站（用户）- 专属管家-公司名片', ' 重点项目', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:33:45'),
(10244, 2, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:33:45'),
(10245, 5, 10423, NULL, '微网站（用户）- 专属管家-公司名片', ' 报名', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:33:45'),
(10246, 6, 10424, NULL, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-09 06:33:45'),
(10247, 1, 10570, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', 10037, 'qw', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-22 08:53:43'),
(10248, 2, 10568, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', 10037, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-21 09:07:39'),
(10251, 3, 10480, 'wzb', '微站CRM后台- 登录', ' 修改密码', 10037, NULL, 0, 10137, '已绑定', '正常修改密码', ' 修改成功', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-12-21 10:34:47');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_stage`
--

DROP TABLE IF EXISTS `zt_tp_stage`;
CREATE TABLE `zt_tp_stage` (
  `id` smallint(6) NOT NULL,
  `sn` smallint(3) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `state` varchar(5) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_stage`
--

INSERT INTO `zt_tp_stage` (`id`, `sn`, `stage`, `proid`, `end`, `state`, `document`, `moder`, `utime`) VALUES
(1048, 1, '编写测试计划', 8, '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-15 06:04:20'),
(1065, 1, '编写测试计划', 9, '2016-12-22', '进行中', '无文档', '腰立辉', '2017-01-13 10:08:23'),
(1050, 2, '功能验证', 8, '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 10:08:06'),
(1051, 3, '第一轮测试', 8, '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 10:08:04'),
(1052, 4, '第二轮测试', 8, '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 10:08:03'),
(1053, 5, '第三轮测试', 8, '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 10:08:01'),
(1054, 6, '第四轮测试', 8, '2016-12-20', '已完成', '无文档', '腰立辉', '2017-01-13 10:07:58'),
(1055, 7, '线上验证测试', 8, '2016-12-21', '已完成', '无文档', '腰立辉', '2017-01-15 06:03:39'),
(1066, 2, '编写测试用例', 9, '2016-12-26', '进行中', '无文档', '腰立辉', '2017-01-13 10:08:24'),
(1067, 3, '研发冒烟测试', 9, '2016-12-27', '进行中', '无文档', '腰立辉', '2017-01-13 10:09:18');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_stagetester`
--

DROP TABLE IF EXISTS `zt_tp_stagetester`;
CREATE TABLE `zt_tp_stagetester` (
  `id` smallint(6) NOT NULL,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'M',
  `stageid` smallint(6) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `end` date DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_stagetester`
--

INSERT INTO `zt_tp_stagetester` (`id`, `sn`, `type`, `stageid`, `tester`, `end`, `moder`, `utime`) VALUES
(10031, 1, 'C', 1029, '腰立辉', '2016-10-22', '腰立辉', '2016-10-21 03:34:14'),
(10032, 1, 'C', 1030, '腰立辉', '2016-10-24', '腰立辉', '2016-10-21 03:34:40'),
(10033, 1, 'M', 1031, '腰立辉', '2016-10-24', '腰立辉', '2016-10-21 03:35:02'),
(10009, 1, 'M', 1011, '腰立辉', '2016-09-25', '腰立辉', '2016-09-24 12:45:23'),
(10010, 1, 'M', 1013, '李小梅', '2016-09-25', '腰立辉', '2016-09-24 12:45:46'),
(10011, 2, 'M', 1013, '曹玉芳', '2016-09-25', '腰立辉', '2016-09-24 12:45:49'),
(10012, 1, 'M', 1000, '腰立辉', '2016-09-26', '腰立辉', '2016-09-25 05:38:02'),
(10030, 1, 'M', 1006, '腰立辉', '2016-10-18', '腰立辉', '2016-10-17 07:59:29'),
(10029, 1, 'M', 1004, '腰立辉', '2016-11-08', '腰立辉', '2016-11-04 01:17:51'),
(10015, 1, 'M', 1008, '腰立辉', '2016-09-26', '腰立辉', '2016-09-25 05:45:45'),
(10016, 1, 'M', 1003, '腰立辉', '2016-10-14', '腰立辉', '2016-10-13 01:53:48'),
(10036, 1, 'M', 1034, '腰立辉', '2016-10-27', '腰立辉', '2016-10-21 03:36:00'),
(10034, 1, 'M', 1032, '腰立辉', '2016-10-25', '腰立辉', '2016-10-21 03:35:23'),
(10035, 1, 'M', 1033, '腰立辉', '2016-10-26', '腰立辉', '2016-10-21 03:35:42'),
(10025, 1, 'M', 1015, '曹玉芳', '2016-09-29', '腰立辉', '2016-09-28 07:48:49'),
(10026, 1, 'M', 1016, '腰立辉', '2016-10-09', '腰立辉', '2016-09-28 07:49:25'),
(10027, 1, 'M', 1017, '曹玉芳', '2016-10-11', '腰立辉', '2016-10-10 05:28:24'),
(10028, 2, 'M', 1017, '腰立辉', '2016-10-11', '腰立辉', '2016-10-10 05:28:28'),
(10037, 1, 'M', 1035, '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 01:37:52'),
(10038, 1, 'M', 1036, '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 01:38:07'),
(10039, 1, 'M', 1037, '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 01:53:32'),
(10040, 1, 'M', 1038, '田亮', '2016-11-03', '腰立辉', '2016-11-03 08:44:18'),
(10041, 2, 'M', 1008, '曹玉芳', '2016-11-11', '腰立辉', '2016-11-10 03:04:46'),
(10042, 1, 'M', 1048, '腰立辉', '2016-12-06', '腰立辉', '2016-12-05 09:29:53'),
(10043, 1, 'C', 1049, '腰立辉', '2016-12-06', '腰立辉', '2016-12-05 09:31:28'),
(10044, 2, 'C', 1049, '魏斌', '2016-12-06', '腰立辉', '2016-12-05 09:31:30'),
(10045, 0, 'M', 1050, '腰立辉', '2016-12-06', '腰立辉', '2016-12-08 07:11:57'),
(10046, 2, 'M', 1050, '魏斌', '2016-12-06', '腰立辉', '2016-12-05 09:32:11'),
(10047, 1, 'M', 1056, '腰立辉', '2016-12-15', '腰立辉', '2016-12-05 09:55:45'),
(10048, 1, 'M', 1051, '腰立辉', '2016-12-10', '魏斌', '2016-12-09 03:49:42'),
(10049, 2, 'M', 1051, '魏斌', '2016-12-10', '魏斌', '2016-12-09 03:49:51'),
(10050, 1, 'M', 1049, '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 09:52:51'),
(10051, 1, 'M', 1058, '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 11:18:42'),
(10052, 1, 'M', 1059, '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 12:39:32'),
(10053, 1, 'M', 1060, '腰立辉', '2016-12-14', '腰立辉', '2016-12-13 03:16:20'),
(10054, 1, 'M', 1052, '腰立辉', '2016-12-15', '腰立辉', '2016-12-14 03:35:01'),
(10055, 1, 'M', 1053, '腰立辉', '2016-12-20', '腰立辉', '2016-12-19 06:53:05'),
(10056, 1, 'M', 1054, '腰立辉', '2016-12-21', '腰立辉', '2016-12-20 01:42:22'),
(10057, 1, 'M', 1055, '腰立辉', '2016-12-22', '腰立辉', '2016-12-21 01:20:45'),
(10058, 1, 'C', 1066, '腰立辉', '2016-12-22', '腰立辉', '2016-12-21 08:58:53'),
(10059, 2, 'C', 1066, '魏斌', '2016-12-22', '腰立辉', '2016-12-21 08:58:56'),
(10060, 1, 'M', 1067, '杨学毅', '2016-12-23', '腰立辉', '2016-12-22 01:34:08'),
(10061, 2, 'M', 1067, '项斌', '2016-12-23', '腰立辉', '2016-12-22 01:34:16'),
(10062, 3, 'M', 1067, '谷一创', '2016-12-23', '腰立辉', '2016-12-22 01:34:18'),
(10063, 4, 'M', 1067, '褚秀良', '2016-12-23', '腰立辉', '2016-12-22 01:34:21'),
(10064, 1, 'M', 1065, '腰立辉', NULL, '腰立辉', '2017-01-15 13:18:32'),
(10065, 0, 'C', 1065, '腰立辉', NULL, '腰立辉', '2017-01-15 15:05:26');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_tickets`
--

DROP TABLE IF EXISTS `zt_tp_tickets`;
CREATE TABLE `zt_tp_tickets` (
  `id` int(11) NOT NULL,
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
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_tickets`
--

INSERT INTO `zt_tp_tickets` (`id`, `state`, `result`, `voucherid`, `ip`, `chouj`, `owner`, `duij`, `code`, `moder`, `ctime`, `utime`) VALUES
(499, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 110629, '客户', '2016-11-01 09:11:53', '2016-12-17 08:53:56'),
(500, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 930429, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(501, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 613253, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(502, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 410556, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(503, '抽奖', '谢谢参与', 19, '127.0.0.1', 1, NULL, 0, NULL, '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:51'),
(504, '设奖', '4:参与奖', 19, '172.20.100.72', 0, NULL, 0, 872750, '客户', '2016-11-01 09:11:53', '2016-11-01 10:01:44'),
(505, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(506, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(507, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 227468, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(508, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 225216, '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:47'),
(509, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 316842, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(510, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 588809, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(511, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(512, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 887033, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(513, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 217031, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(514, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 927133, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(515, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(516, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 433023, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(517, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 589138, '客户', '2016-11-01 09:11:53', '2016-12-17 08:53:59'),
(518, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(519, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 253176, '客户', '2016-11-01 09:11:53', '2016-12-17 08:53:49'),
(520, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 122659, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(521, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 282510, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(522, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 231314, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(523, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 297177, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(524, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 393911, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(525, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 672689, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(526, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 326675, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(527, '抽奖', '4:参与奖', 19, '172.20.100.72', 1, NULL, 0, 310800, '客户', '2016-11-01 09:11:53', '2016-11-01 10:05:25'),
(528, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 414016, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(529, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 457687, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(530, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 778103, '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:54'),
(531, '设奖', '0:特等奖', 19, NULL, 0, NULL, 0, 536349, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(532, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 195443, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(533, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(534, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 805569, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(535, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 866983, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(536, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 775192, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(537, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 472683, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(538, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 725534, '客户', '2016-11-01 09:11:53', '2016-11-10 13:02:21');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_userprod`
--

DROP TABLE IF EXISTS `zt_tp_userprod`;
CREATE TABLE `zt_tp_userprod` (
  `id` int(6) NOT NULL,
  `userid` smallint(6) NOT NULL,
  `prodid` smallint(6) NOT NULL,
  `moder` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_userprod`
--

INSERT INTO `zt_tp_userprod` (`id`, `userid`, `prodid`, `moder`) VALUES
(3, 2, 1, '腰立辉'),
(4, 2, 3, '腰立辉'),
(6, 2, 2, '腰立辉'),
(7, 2, 4, '腰立辉'),
(17, 2, 12, '腰立辉'),
(18, 4, 5, '腰立辉'),
(19, 7, 8, '腰立辉'),
(20, 11, 8, '腰立辉'),
(21, 8, 3, '腰立辉'),
(22, 9, 6, '腰立辉'),
(23, 10, 6, '腰立辉');

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_voucher`
--

DROP TABLE IF EXISTS `zt_tp_voucher`;
CREATE TABLE `zt_tp_voucher` (
  `id` smallint(6) NOT NULL,
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
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_voucher`
--

INSERT INTO `zt_tp_voucher` (`id`, `title`, `remark`, `voucher`, `start`, `end`, `state`, `total`, `specia`, `first`, `second`, `third`, `canyu`, `moder`, `ctime`, `utime`) VALUES
(19, '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', 40, 1, 2, 5, 10, 15, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:18:28');

-- --------------------------------------------------------

--
-- 表的结构 `zt_user`
--

DROP TABLE IF EXISTS `zt_user`;
CREATE TABLE `zt_user` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `dept` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '部门ID',
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
  `visits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '登录IP',
  `last` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fails` tinyint(5) NOT NULL DEFAULT '0',
  `locked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ranzhi` char(30) NOT NULL DEFAULT '',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_user`
--

INSERT INTO `zt_user` (`id`, `dept`, `userno`, `account`, `password`, `role`, `realname`, `usergp`, `path`, `img`, `nickname`, `commiter`, `avatar`, `birthday`, `gender`, `email`, `skype`, `qq`, `yahoo`, `gtalk`, `wangwang`, `mobile`, `phone`, `address`, `zipcode`, `join`, `visits`, `ip`, `last`, `fails`, `locked`, `ranzhi`, `deleted`) VALUES
(1, 0, NULL, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 'admin', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 6, '119.61.24.226', 1484186765, 0, '0000-00-00 00:00:00', '', '0'),
(2, 6, 6270, 'yao', 'c33367701511b4f6020ec61ded352059', 'dev', '腰立辉', 'PJD', 'Test/user/2017-01-15/', '587afd40f3c46.jpg', '', '', '', '0000-00-00', 'm', '83000892@qq.com', '', '83000892', '', '', '', '234234', '18801043607', '', '', '2017-01-08', 11, '119.61.24.226', 1486190219, 0, '0000-00-00 00:00:00', '', '0'),
(3, 6, NULL, 'jiaxn', 'e10adc3949ba59abbe56e057f20f883e', 'qa', '贾晓宁', 'Mtsh', 'Test/user/2017-01-15/', '587afd560d3cf.jpeg', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(4, 1, NULL, 'zhangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '张秀丽', 'Xiuli', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(5, 2, NULL, 'masf', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '马双峰', 'Mtsh', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(12, 3, NULL, 'liangxw', 'e10adc3949ba59abbe56e057f20f883e', 'po', '梁小伟', 'Tuocai', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(7, 4, NULL, 'liuyj', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '刘燕军', 'Mtsh', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(8, 5, NULL, 'wangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '王晓亮', 'Anshun', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(29, 5, NULL, 'jiaxy', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '贾晓月', 'Anshun', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(10, 1, NULL, 'yaojq', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '腰建强', 'Xiuli', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(14, 6, NULL, 'xingl', 'e10adc3949ba59abbe56e057f20f883e', 'dev', '邢丽', 'Mtsh', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(15, 2, NULL, 'yangyh', 'e10adc3949ba59abbe56e057f20f883e', 'po', '杨艳辉', 'Mtsh', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', 1, '127.0.0.1', 1483885906, 0, '0000-00-00 00:00:00', '', '0'),
(26, 7, NULL, 'benjamin', '21218cca77804d2ba1922c33e0151105', 'qa', '魏斌', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 177, '192.168.21.199', 1484099350, 0, '0000-00-00 00:00:00', '', '0'),
(6, 7, NULL, 'dengye', '21218cca77804d2ba1922c33e0151105', 'po', '邓晔', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 27, '192.168.21.209', 1484013843, 0, '0000-00-00 00:00:00', '', '0'),
(9, 7, NULL, 'abby', '21218cca77804d2ba1922c33e0151105', 'others', '王婷婷', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 1, '192.168.6.28', 1482810622, 0, '0000-00-00 00:00:00', '', '0'),
(11, 7, NULL, 'annie', '21218cca77804d2ba1922c33e0151105', 'po', '杨雪玲', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 16, '192.168.21.205', 1484099804, 0, '0000-00-00 00:00:00', '', '0'),
(13, 7, NULL, 'oliver', '21218cca77804d2ba1922c33e0151105', 'dev', '陈静', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 9, '192.168.21.202', 1483954483, 0, '0000-00-00 00:00:00', '', '0'),
(18, 7, NULL, 'yangyi', '21218cca77804d2ba1922c33e0151105', 'dev', '杨学毅', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 29, '192.168.21.198', 1484043521, 0, '0000-00-00 00:00:00', '', '0'),
(19, 7, NULL, 'flora', '21218cca77804d2ba1922c33e0151105', 'dev', '刘雨熙', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 8, '192.168.21.200', 1484013857, 0, '0000-00-00 00:00:00', '', '0'),
(20, 7, NULL, 'damon', '21218cca77804d2ba1922c33e0151105', 'dev', '项斌', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 24, '192.168.21.195', 1484098281, 0, '0000-00-00 00:00:00', '', '0'),
(21, 7, NULL, 'jeff', '21218cca77804d2ba1922c33e0151105', 'dev', '褚秀良', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 13, '192.168.102.167', 1483951221, 0, '0000-00-00 00:00:00', '', '0'),
(22, 7, NULL, 'Wain', '21218cca77804d2ba1922c33e0151105', 'top', '佟威', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(23, 7, NULL, 'Gorge', '21218cca77804d2ba1922c33e0151105', 'dev', '谷一创', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 11, '192.168.21.196', 1483957335, 0, '0000-00-00 00:00:00', '', '0'),
(30, 0, NULL, 'loki', '21218cca77804d2ba1922c33e0151105', '', '顾鹏', 'PJD', NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(31, 6, NULL, 'yaomf', 'e10adc3949ba59abbe56e057f20f883e', 'pd', '腰梅芳', NULL, NULL, NULL, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-26', 0, '', 0, 0, '0000-00-00 00:00:00', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zt_usercontact`
--

DROP TABLE IF EXISTS `zt_usercontact`;
CREATE TABLE `zt_usercontact` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `account` char(30) NOT NULL,
  `listName` varchar(60) NOT NULL,
  `userList` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_usergroup`
--

DROP TABLE IF EXISTS `zt_usergroup`;
CREATE TABLE `zt_usergroup` (
  `account` char(30) NOT NULL DEFAULT '',
  `group` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_usergroup`
--

INSERT INTO `zt_usergroup` (`account`, `group`) VALUES
('jiaxn', 3),
('jiaxy', 4),
('liangxw', 5),
('liuyj', 4),
('masf', 4),
('wangxl', 5),
('xingl', 2),
('yangyh', 5),
('yao', 1),
('yao', 2),
('yaojq', 4),
('yaomf', 7),
('zhangxl', 5);

-- --------------------------------------------------------

--
-- 表的结构 `zt_userquery`
--

DROP TABLE IF EXISTS `zt_userquery`;
CREATE TABLE `zt_userquery` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `account` char(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(90) NOT NULL,
  `form` text NOT NULL,
  `sql` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_usertpl`
--

DROP TABLE IF EXISTS `zt_usertpl`;
CREATE TABLE `zt_usertpl` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `account` char(30) NOT NULL,
  `type` char(30) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `public` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zt_xl_customer`
--

DROP TABLE IF EXISTS `zt_xl_customer`;
CREATE TABLE `zt_xl_customer` (
  `wid` smallint(6) NOT NULL COMMENT '主键',
  `tpid` smallint(6) NOT NULL,
  `type` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `coursetype` varchar(5) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_xl_customer`
--

INSERT INTO `zt_xl_customer` (`wid`, `tpid`, `type`, `isteacher`, `state`, `coursetype`, `path`, `img`, `course`, `remark`, `adder`, `moder`, `ctime`, `utime`) VALUES
(15, 1, '老师', 1, '发布', '中学课程', '/Customer/2016-12-18/', '585693e5ec634.png', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', 1478415695, '2017-01-25 07:33:07');

-- --------------------------------------------------------

--
-- 表的结构 `zt_xl_order`
--

DROP TABLE IF EXISTS `zt_xl_order`;
CREATE TABLE `zt_xl_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '订单id',
  `money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `productmoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商品总额',
  `state` smallint(6) NOT NULL DEFAULT '1' COMMENT '订单状态',
  `payway` smallint(6) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `content` varchar(255) NOT NULL COMMENT '订单留言',
  `atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '下单时间',
  `ptime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '付款时间',
  `stime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发货时间',
  `wlname` varchar(20) NOT NULL COMMENT '物流名称',
  `wlid` varchar(20) NOT NULL COMMENT '运单编号',
  `wlmoney` decimal(5,1) NOT NULL COMMENT '物流运费',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `utname` varchar(10) NOT NULL COMMENT '收货人名',
  `uphone` char(11) NOT NULL COMMENT '收货手机',
  `utel` varchar(20) NOT NULL COMMENT '收货人固定电话',
  `uaddress` varchar(255) NOT NULL COMMENT '用户地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_xl_order`
--

INSERT INTO `zt_xl_order` (`id`, `money`, `productmoney`, `state`, `payway`, `content`, `atime`, `ptime`, `stime`, `wlname`, `wlid`, `wlmoney`, `uid`, `uname`, `utname`, `uphone`, `utel`, `uaddress`) VALUES
(1608180001, '5288.0', '5288.0', 4, 3, '尽快发货', 1471488598, 1471488742, 1471488709, '顺丰快递', '1231312314', '0.0', 1, 'admin', '腰立辉', '18801043607', '', '北京市北京市北京市海淀区西外大街168号');

-- --------------------------------------------------------

--
-- 表的结构 `zt_xl_prodservice`
--

DROP TABLE IF EXISTS `zt_xl_prodservice`;
CREATE TABLE `zt_xl_prodservice` (
  `id` smallint(6) NOT NULL COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` decimal(10,0) DEFAULT NULL COMMENT '商品尺寸',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` float(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` float(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` float(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '推荐首页',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_xl_prodservice`
--

INSERT INTO `zt_xl_prodservice` (`id`, `mark`, `name`, `content`, `weight`, `state`, `money`, `smoney`, `wlmoney`, `num`, `sellnum`, `istj`, `atime`, `sn`, `cate`, `path`, `img`, `moder`, `utime`) VALUES
(12, '', '名片制作', '12312', '0', '发布', 50, 70, 0, 0, NULL, 1, NULL, 5, 18, '/Product/2017-02-04/', '589552cc95b58.png', '腰立辉', '2017-02-05 10:26:21'),
(14, '', '微信订阅号（个人）', '', '0', '发布', 300, 300, 0, 1, NULL, 0, NULL, 1, 20, '/Product/2017-01-24/', '5886f28168eab.png', '腰立辉', '2017-02-05 10:46:42'),
(15, '', '微信订阅号（企业）', '', '0', '发布', 300, 500, 0, 1, NULL, 0, NULL, 2, 20, '/Product/2017-01-24/', '5886f28973c57.png', '腰立辉', '2017-02-05 10:46:55'),
(16, '', '微信公众号运维', '200/月', '0', '发布', 200, 200, 0, 1, NULL, 0, NULL, 7, 20, NULL, NULL, '腰立辉', '2017-02-05 10:28:57'),
(17, '', '阿里钉钉（申请）', '', '0', '发布', 500, 500, 0, 1, NULL, 1, NULL, 1, 21, '/Product/2017-01-24/', '5886f2d4491d7.png', '腰立辉', '2017-02-05 10:29:05'),
(18, '', '支付宝生活号', '', '0', '正常', 0, 300, 0, 1, NULL, 0, NULL, 2, 21, NULL, NULL, '腰立辉', '2017-02-05 10:47:56'),
(19, '', '支付宝运维', '200/月', '0', '正常', 200, 200, 0, 1, NULL, 0, NULL, 3, 21, NULL, NULL, '腰立辉', '2017-02-04 04:49:11'),
(20, '', '标准企业站', '为秀丽广告网站下的子网站，无需域名和服务器，也无需备案；数据寄存在秀丽广告网站的官方数据库，没有自主的发布权限（以防发布违规内容，网站被屏蔽），', '0', '发布', 1666, 1888, 0, 1, NULL, 1, NULL, 1, 29, '/Product/2017-01-24/', '5886f207cad40.png', '腰立辉', '2017-02-05 10:27:45'),
(21, '', '服务器租赁（国内）', '网络宅基地，它的配置直接影响网站的性能，域名必须备案，才可以使用，以后可以增值与QQ，微信，支付宝做深度的页面及数据连接', '0', '发布', 799, 799, 0, 1, NULL, 1, NULL, 1, 31, '/Product/2017-01-24/', '5886f2573414c.png', '腰立辉', '2017-02-05 10:27:57'),
(22, '', '服务器租赁（香港）', '无需备案，付费及开通，但是不可以做增值营销服务', '0', '发布', 1200, 1200, 0, 1, NULL, 0, NULL, 1, 31, '/Product/2017-02-04/', '58955b2d65127.png', '腰立辉', '2017-02-05 10:27:59'),
(23, '', '服务器租赁（国外）', '无需备案，付费及开通，但是不可以做增值营销服务', '0', '正常', 1200, 1200, 0, 1, NULL, 0, NULL, 1, 31, '/Product/2017-02-04/', '58955b4c24faf.png', '腰立辉', '2017-02-04 04:40:46'),
(24, '', '.com域名', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', '发布', 100, 120, 0, 1, NULL, 1, NULL, 1, 32, '/Product/2017-01-24/', '5886f1e05de10.png', '腰立辉', '2017-02-05 10:28:22'),
(25, '', '.net域名', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', '发布', 100, 120, 0, 1, NULL, 0, NULL, 1, 32, '/Product/2017-01-24/', '5886f1e96f186.png', '腰立辉', '2017-02-05 10:28:26'),
(26, '', '.中国（域名）', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', '正常', 100, 360, 0, 1, NULL, 0, NULL, 1, 32, '/Product/2017-01-24/', '5886f1f1dae11.png', '腰立辉', '2017-01-25 05:43:26'),
(27, '', '.top域名', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', '发布', 100, 100, 0, 1, NULL, 0, NULL, 1, 32, '/Product/2017-01-24/', '5886f1f8e72f5.png', '腰立辉', '2017-02-05 10:28:29'),
(28, '', 'QQ用户登录', '', '0', '正常', 0, 500, 0, 1, NULL, 0, NULL, 2, 33, NULL, NULL, '腰立辉', '2017-02-04 04:48:53'),
(29, '', '微信用户登录', '1.网站必须备案\r\n2.微信号必须为企业注册且通过实名认证', '0', '正常', 0, 500, 0, 1, NULL, 0, NULL, 1, 33, NULL, NULL, '腰立辉', '2017-01-25 05:38:55'),
(30, '', '微博账号登录', '', '0', '正常', 0, 700, 0, 1, NULL, 0, NULL, 3, 33, NULL, NULL, '腰立辉', '2017-02-04 04:48:53'),
(31, '', '纯文字网页（单页）', '', '0', '正常', 0, 70, 0, 1, NULL, 0, NULL, 1, 30, NULL, NULL, '腰立辉', '2017-01-25 05:38:58'),
(32, '', '单图文网页（单页）', '', '0', '发布', 0, 100, 0, 1, NULL, 1, NULL, 1, 30, '/Product/2017-01-24/', '5886f4d18a937.png', '腰立辉', '2017-02-05 10:49:57'),
(33, '', '寻人启事', '交100押金，下线后退还', '0', '正常', 0, 0, 0, 1, NULL, 0, NULL, 1, 30, NULL, NULL, '腰立辉', '2017-01-25 05:39:00'),
(34, '', '多图文定制网页', '300起', '0', '发布', 0, 300, 0, 1, NULL, 0, NULL, 1, 30, '/Product/2017-01-24/', '5886f21a71fa2.png', '腰立辉', '2017-02-05 10:50:00'),
(35, '', '抽奖活动', '', '0', '正常', 0, 888, 0, 1, NULL, 0, NULL, 1, 30, NULL, NULL, '腰立辉', '2017-01-25 05:39:01'),
(36, '', '微信服务号', '', '0', '发布', 500, 500, 0, 1, NULL, 1, NULL, 3, 20, '/Product/2017-01-24/', '5886f2938444f.png', '腰立辉', '2017-02-05 10:47:05'),
(37, '', '微信企业号', '', '0', '发布', 500, 500, 0, 1, NULL, 0, NULL, 4, 20, '/Product/2017-01-24/', '5886f2a7199be.png', '腰立辉', '2017-02-05 10:47:16'),
(38, '', '微信小程序（查询类）', '', '0', '正常', 0, 500, 0, 1, NULL, 0, NULL, 5, 20, NULL, NULL, '腰立辉', '2017-02-04 04:48:06'),
(39, '', 'QQ电商平台（申请）', '', '0', '正常', 500, 500, 0, 1, NULL, 0, NULL, 6, 20, NULL, NULL, '腰立辉', '2017-02-04 04:48:06'),
(45, '', '服务器运维(1年)', '', '0', '发布', 600, 600, 0, 1, NULL, 0, NULL, 1, 31, '/Product/2017-02-04/', '58955b77ef6dc.png', '腰立辉', '2017-02-05 10:28:07'),
(46, '', '数据库备份(1次)', '', '0', '正常', 50, 50, 0, 1, NULL, 0, NULL, 1, 31, '/Product/2017-02-04/', '58955ba203bec.png', '腰立辉', '2017-02-04 04:42:10'),
(47, '', '数据库备份(每月)', '', '0', '正常', 100, 120, 0, 1, NULL, 0, NULL, 1, 31, '/Product/2017-02-04/', '58955bcb26d82.png', '腰立辉', '2017-02-04 04:42:51'),
(48, '', '数据库备份(每年)', '', '0', '正常', 500, 600, 0, 1, NULL, 0, NULL, 1, 31, '/Product/2017-02-04/', '58955be1b099a.png', '腰立辉', '2017-02-04 04:43:16'),
(49, '', '大型户外广告牌', '企业LED户外广告灯箱、高速路上的路边广告牌.霓虹灯广告牌、LED看板及安装在窗户上的多功能画蓬等', '0', '发布', 0, 0, 0, 1, NULL, 1, NULL, 1, 19, '/Product/2017-01-24/', '5886f672d0db3.png', '腰立辉', '2017-02-05 10:26:58'),
(50, '', '喷绘', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 2, 19, '/Product/2017-02-04/', '58953e6f07478.png', '腰立辉', '2017-02-05 10:27:01'),
(52, '', '条幅', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 5, 19, '/Product/2017-02-04/', '58953fecbdc18.png', '腰立辉', '2017-02-05 10:27:08'),
(53, '', '铜牌', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 6, 19, '/Product/2017-02-04/', '5895432118256.png', '腰立辉', '2017-02-05 10:27:13'),
(54, '', 'LED显示屏', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 8, 19, '/Product/2017-02-04/', '58954486bc30e.png', '腰立辉', '2017-02-05 10:27:22'),
(55, '', '发光字', '', '0', '发布', 0, 0, 0, 1, NULL, 0, NULL, 9, 19, '/Product/2017-02-04/', '5895449c1a8fc.png', '腰立辉', '2017-02-05 10:27:32'),
(56, '', '楼体亮化', '', '0', '发布', 0, 0, 0, 1, NULL, 0, NULL, 10, 19, '/Product/2017-02-04/', '589544aa4c48c.png', '腰立辉', '2017-02-05 10:27:35'),
(60, '', '打印', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 1, 18, '/Product/2017-02-04/', '58954be569ec5.png', '腰立辉', '2017-02-05 10:25:45'),
(59, '', '铜字', '', '0', '发布', 0, 0, 0, 1, NULL, 0, NULL, 7, 19, '/Product/2017-02-04/', '5895432d19e3c.png', '腰立辉', '2017-02-05 10:27:17'),
(61, '', '复印', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 2, 18, '/Product/2017-02-04/', '58954bf69b009.png', '腰立辉', '2017-02-05 10:26:08'),
(62, '', '彩印', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 3, 18, '/Product/2017-02-04/', '58954c0711d4a.png', '腰立辉', '2017-02-05 10:26:13'),
(57, '', '展板写真', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 3, 19, '/Product/2017-02-04/', '589545e20eef3.png', '腰立辉', '2017-02-05 10:27:04'),
(63, '', '卡证制作', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 6, 18, '/Product/2017-02-04/', '58955196865b7.png', '腰立辉', '2017-02-05 10:26:25'),
(64, NULL, NULL, NULL, NULL, '正常', 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2017-02-04 03:21:39'),
(65, NULL, NULL, NULL, NULL, '正常', 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2017-02-04 03:21:40'),
(66, NULL, NULL, NULL, NULL, '正常', 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2017-02-04 03:21:41'),
(67, NULL, NULL, NULL, NULL, '正常', 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2017-02-04 03:21:48'),
(68, '', '菜单', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 7, 18, '/Product/2017-02-04/', '589551a907f33.png', '腰立辉', '2017-02-05 10:26:31'),
(69, '', '桌牌', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 8, 18, '/Product/2017-02-04/', '589551c2b4808.png', '腰立辉', '2017-02-05 10:26:35'),
(70, '', 'PVC卡', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 9, 18, '/Product/2017-02-04/', '589551d126349.png', '腰立辉', '2017-02-05 10:26:41'),
(71, '', '书本装订', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 10, 18, '/Product/2017-02-04/', '589551ea225ad.png', '腰立辉', '2017-02-05 10:26:45'),
(72, '', '快照', '', '0', '发布', 0, 0, 0, 999, NULL, 0, NULL, 4, 18, '/Product/2017-02-04/', '58954c14e53be.png', '腰立辉', '2017-02-05 10:26:15'),
(73, '', '微网站', '', '0', '正常', 0, 0, 0, 999, NULL, 0, NULL, 2, 29, NULL, NULL, '腰立辉', '2017-02-04 04:45:08'),
(74, '', '网站业务后台维护', '', '0', '正常', 0, 0, 0, 999, NULL, 0, NULL, 3, 29, NULL, NULL, '腰立辉', '2017-02-04 04:45:32');

-- --------------------------------------------------------

--
-- 表的结构 `zt_xl_tickets`
--

DROP TABLE IF EXISTS `zt_xl_tickets`;
CREATE TABLE `zt_xl_tickets` (
  `id` int(11) NOT NULL,
  `state` varchar(5) DEFAULT '新建',
  `result` varchar(10) DEFAULT '谢谢参与',
  `voucherid` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `chouj` smallint(1) DEFAULT '0',
  `owner` varchar(11) DEFAULT NULL,
  `duij` smallint(1) DEFAULT '0',
  `code` int(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_xl_tickets`
--

INSERT INTO `zt_xl_tickets` (`id`, `state`, `result`, `voucherid`, `ip`, `chouj`, `owner`, `duij`, `code`, `moder`, `utime`) VALUES
(499, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 110629, '腰立辉', '2016-11-01 09:11:53'),
(500, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 930429, '腰立辉', '2016-11-01 09:11:53'),
(501, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 613253, '腰立辉', '2016-11-01 09:11:53'),
(502, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 410556, '腰立辉', '2016-11-01 09:11:53'),
(503, '抽奖', '谢谢参与', 19, '127.0.0.1', 1, NULL, 0, NULL, '客户', '2016-11-09 15:19:51'),
(504, '设奖', '4:参与奖', 19, '172.20.100.72', 0, NULL, 0, 872750, '客户', '2016-11-01 10:01:44'),
(505, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53'),
(506, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53'),
(507, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 227468, '腰立辉', '2016-11-01 09:11:53'),
(508, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 225216, '客户', '2016-11-09 15:19:47'),
(509, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 316842, '腰立辉', '2016-11-01 09:11:53'),
(510, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 588809, '腰立辉', '2016-11-01 09:11:53'),
(511, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53'),
(512, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 887033, '腰立辉', '2016-11-01 09:11:53'),
(513, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 217031, '腰立辉', '2016-11-01 09:11:53'),
(514, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 927133, '腰立辉', '2016-11-01 09:11:53'),
(515, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53'),
(516, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 433023, '腰立辉', '2016-11-01 09:11:53'),
(517, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 589138, '腰立辉', '2016-11-01 09:11:53'),
(518, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53'),
(519, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 253176, '腰立辉', '2016-11-01 09:11:53'),
(520, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 122659, '腰立辉', '2016-11-01 09:11:53'),
(521, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 282510, '客户', '2016-12-25 15:04:20'),
(522, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 231314, '腰立辉', '2016-11-01 09:11:53'),
(523, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 297177, '腰立辉', '2016-11-01 09:11:53'),
(524, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 393911, '腰立辉', '2016-11-01 09:11:53'),
(525, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 672689, '腰立辉', '2016-11-01 09:11:53'),
(526, '抽奖', '4:参与奖', 19, NULL, 1, NULL, 0, 326675, '客户', '2017-01-10 01:45:45'),
(527, '抽奖', '4:参与奖', 19, '172.20.100.72', 1, NULL, 0, 310800, '客户', '2016-11-01 10:05:25'),
(528, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 414016, '客户', '2016-12-25 15:04:27'),
(529, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 457687, '腰立辉', '2016-11-01 09:11:53'),
(530, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 778103, '客户', '2016-11-09 15:19:54'),
(531, '设奖', '0:特等奖', 19, NULL, 0, NULL, 0, 536349, '腰立辉', '2016-11-01 09:11:53'),
(532, '抽奖', '3:三等奖', 19, '119.61.24.226', 1, NULL, 0, 195443, '客户', '2017-01-10 01:45:29'),
(533, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '2016-11-01 09:11:53'),
(534, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 805569, '腰立辉', '2016-11-01 09:11:53'),
(535, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 866983, '腰立辉', '2016-11-01 09:11:53'),
(536, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 775192, '腰立辉', '2016-11-01 09:11:53'),
(537, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 472683, '腰立辉', '2016-11-01 09:11:53'),
(538, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 725534, '客户', '2016-11-10 13:02:21');

-- --------------------------------------------------------

--
-- 表的结构 `zt_xl_voucher`
--

DROP TABLE IF EXISTS `zt_xl_voucher`;
CREATE TABLE `zt_xl_voucher` (
  `id` smallint(6) NOT NULL,
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
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_xl_voucher`
--

INSERT INTO `zt_xl_voucher` (`id`, `title`, `remark`, `voucher`, `start`, `end`, `state`, `total`, `specia`, `first`, `second`, `third`, `canyu`, `moder`, `ctime`, `utime`) VALUES
(19, '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', 40, 1, 2, 5, 10, 15, '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:18:28');

-- --------------------------------------------------------

--
-- 视图结构 `finish`
--
DROP TABLE IF EXISTS `finish`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `finish`  AS  select `zt_task`.`finishedBy` AS `finishedby`,sum(`zt_task`.`estimate`) AS `estimate`,sum(`zt_task`.`consumed`) AS `consumed`,sum(`zt_task`.`left`) AS `left1` from `zt_task` where ((`zt_task`.`assignedTo` = 'closed') and (`zt_task`.`deleted` = '0')) group by `zt_task`.`finishedBy` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zt_action`
--
ALTER TABLE `zt_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`objectID`,`product`,`project`,`action`,`date`);

--
-- Indexes for table `zt_as_customer`
--
ALTER TABLE `zt_as_customer`
  ADD PRIMARY KEY (`wid`),
  ADD UNIQUE KEY `customerid` (`tpid`) USING HASH;

--
-- Indexes for table `zt_as_prodservice`
--
ALTER TABLE `zt_as_prodservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_as_usecar`
--
ALTER TABLE `zt_as_usecar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `zt_block`
--
ALTER TABLE `zt_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accountModuleOrder` (`account`,`module`,`order`),
  ADD KEY `block` (`account`,`module`);

--
-- Indexes for table `zt_branch`
--
ALTER TABLE `zt_branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `zt_bug`
--
ALTER TABLE `zt_bug`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bug` (`product`,`module`,`project`,`assignedTo`);

--
-- Indexes for table `zt_build`
--
ALTER TABLE `zt_build`
  ADD PRIMARY KEY (`id`),
  ADD KEY `build` (`product`,`project`);

--
-- Indexes for table `zt_burn`
--
ALTER TABLE `zt_burn`
  ADD PRIMARY KEY (`project`,`date`);

--
-- Indexes for table `zt_case`
--
ALTER TABLE `zt_case`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case` (`product`,`module`,`story`);

--
-- Indexes for table `zt_casestep`
--
ALTER TABLE `zt_casestep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case` (`case`,`version`);

--
-- Indexes for table `zt_company`
--
ALTER TABLE `zt_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_config`
--
ALTER TABLE `zt_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`owner`,`module`,`section`,`key`);

--
-- Indexes for table `zt_cron`
--
ALTER TABLE `zt_cron`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastTime` (`lastTime`);

--
-- Indexes for table `zt_dept`
--
ALTER TABLE `zt_dept`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept` (`parent`,`path`);

--
-- Indexes for table `zt_dict`
--
ALTER TABLE `zt_dict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_doc`
--
ALTER TABLE `zt_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doc` (`product`,`project`);

--
-- Indexes for table `zt_doclib`
--
ALTER TABLE `zt_doclib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_effort`
--
ALTER TABLE `zt_effort`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `zt_extension`
--
ALTER TABLE `zt_extension`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `extension` (`name`,`installedTime`);

--
-- Indexes for table `zt_file`
--
ALTER TABLE `zt_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file` (`objectType`,`objectID`);

--
-- Indexes for table `zt_group`
--
ALTER TABLE `zt_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_grouppriv`
--
ALTER TABLE `zt_grouppriv`
  ADD UNIQUE KEY `group` (`group`,`module`,`method`);

--
-- Indexes for table `zt_history`
--
ALTER TABLE `zt_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`);

--
-- Indexes for table `zt_lang`
--
ALTER TABLE `zt_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lang` (`lang`,`module`,`section`,`key`);

--
-- Indexes for table `zt_mailqueue`
--
ALTER TABLE `zt_mailqueue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendTime` (`sendTime`);

--
-- Indexes for table `zt_module`
--
ALTER TABLE `zt_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`root`,`type`,`path`);

--
-- Indexes for table `zt_mt_prodservice`
--
ALTER TABLE `zt_mt_prodservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_product`
--
ALTER TABLE `zt_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order` (`order`);

--
-- Indexes for table `zt_productplan`
--
ALTER TABLE `zt_productplan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan` (`product`,`end`);

--
-- Indexes for table `zt_project`
--
ALTER TABLE `zt_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project` (`parent`,`begin`,`end`,`status`,`order`);

--
-- Indexes for table `zt_projectproduct`
--
ALTER TABLE `zt_projectproduct`
  ADD PRIMARY KEY (`project`,`product`);

--
-- Indexes for table `zt_projectstory`
--
ALTER TABLE `zt_projectstory`
  ADD UNIQUE KEY `project` (`project`,`story`);

--
-- Indexes for table `zt_release`
--
ALTER TABLE `zt_release`
  ADD PRIMARY KEY (`id`),
  ADD KEY `build` (`build`);

--
-- Indexes for table `zt_story`
--
ALTER TABLE `zt_story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story` (`product`,`module`,`status`,`assignedTo`);

--
-- Indexes for table `zt_storyspec`
--
ALTER TABLE `zt_storyspec`
  ADD UNIQUE KEY `story` (`story`,`version`);

--
-- Indexes for table `zt_storystage`
--
ALTER TABLE `zt_storystage`
  ADD KEY `story` (`story`);

--
-- Indexes for table `zt_task`
--
ALTER TABLE `zt_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task` (`project`,`module`,`story`,`assignedTo`);

--
-- Indexes for table `zt_taskestimate`
--
ALTER TABLE `zt_taskestimate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task` (`task`);

--
-- Indexes for table `zt_tc_course`
--
ALTER TABLE `zt_tc_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tc_customer`
--
ALTER TABLE `zt_tc_customer`
  ADD PRIMARY KEY (`wid`),
  ADD UNIQUE KEY `customerid` (`tpid`) USING HASH;

--
-- Indexes for table `zt_tc_date`
--
ALTER TABLE `zt_tc_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tc_plan`
--
ALTER TABLE `zt_tc_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tc_prodservice`
--
ALTER TABLE `zt_tc_prodservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tc_studentcla`
--
ALTER TABLE `zt_tc_studentcla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tc_techclass`
--
ALTER TABLE `zt_tc_techclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_team`
--
ALTER TABLE `zt_team`
  ADD PRIMARY KEY (`project`,`account`);

--
-- Indexes for table `zt_testresult`
--
ALTER TABLE `zt_testresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testresult` (`case`,`version`,`run`);

--
-- Indexes for table `zt_testrun`
--
ALTER TABLE `zt_testrun`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task` (`task`,`case`);

--
-- Indexes for table `zt_testtask`
--
ALTER TABLE `zt_testtask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `build` (`build`);

--
-- Indexes for table `zt_todo`
--
ALTER TABLE `zt_todo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todo` (`account`,`date`);

--
-- Indexes for table `zt_tp_ad`
--
ALTER TABLE `zt_tp_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_admin`
--
ALTER TABLE `zt_tp_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_article`
--
ALTER TABLE `zt_tp_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_cid` (`cid`);

--
-- Indexes for table `zt_tp_as_customer`
--
ALTER TABLE `zt_tp_as_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`) USING HASH;

--
-- Indexes for table `zt_tp_as_usecar`
--
ALTER TABLE `zt_tp_as_usecar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `zt_tp_case`
--
ALTER TABLE `zt_tp_case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_cate`
--
ALTER TABLE `zt_tp_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_customer`
--
ALTER TABLE `zt_tp_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`) USING HASH;

--
-- Indexes for table `zt_tp_dict`
--
ALTER TABLE `zt_tp_dict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_element`
--
ALTER TABLE `zt_tp_element`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_exefunc`
--
ALTER TABLE `zt_tp_exefunc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_exescene`
--
ALTER TABLE `zt_tp_exescene`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_func`
--
ALTER TABLE `zt_tp_func`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_hcfunc`
--
ALTER TABLE `zt_tp_hcfunc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_hr`
--
ALTER TABLE `zt_tp_hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_link`
--
ALTER TABLE `zt_tp_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_page`
--
ALTER TABLE `zt_tp_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_path`
--
ALTER TABLE `zt_tp_path`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_projectbranch`
--
ALTER TABLE `zt_tp_projectbranch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_prosys`
--
ALTER TABLE `zt_tp_prosys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_risk`
--
ALTER TABLE `zt_tp_risk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_rules`
--
ALTER TABLE `zt_tp_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_sccesscase`
--
ALTER TABLE `zt_tp_sccesscase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_scene`
--
ALTER TABLE `zt_tp_scene`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_scenefunc`
--
ALTER TABLE `zt_tp_scenefunc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_stage`
--
ALTER TABLE `zt_tp_stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_stagetester`
--
ALTER TABLE `zt_tp_stagetester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_tickets`
--
ALTER TABLE `zt_tp_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_userprod`
--
ALTER TABLE `zt_tp_userprod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_tp_voucher`
--
ALTER TABLE `zt_tp_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_user`
--
ALTER TABLE `zt_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`),
  ADD KEY `user` (`dept`,`email`,`commiter`);

--
-- Indexes for table `zt_usercontact`
--
ALTER TABLE `zt_usercontact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `zt_usergroup`
--
ALTER TABLE `zt_usergroup`
  ADD UNIQUE KEY `account` (`account`,`group`);

--
-- Indexes for table `zt_userquery`
--
ALTER TABLE `zt_userquery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `query` (`account`,`module`);

--
-- Indexes for table `zt_usertpl`
--
ALTER TABLE `zt_usertpl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `zt_xl_customer`
--
ALTER TABLE `zt_xl_customer`
  ADD PRIMARY KEY (`wid`),
  ADD UNIQUE KEY `customerid` (`tpid`) USING HASH;

--
-- Indexes for table `zt_xl_order`
--
ALTER TABLE `zt_xl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_uid` (`uid`);

--
-- Indexes for table `zt_xl_prodservice`
--
ALTER TABLE `zt_xl_prodservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_xl_tickets`
--
ALTER TABLE `zt_xl_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zt_xl_voucher`
--
ALTER TABLE `zt_xl_voucher`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `zt_action`
--
ALTER TABLE `zt_action`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- 使用表AUTO_INCREMENT `zt_as_customer`
--
ALTER TABLE `zt_as_customer`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `zt_as_prodservice`
--
ALTER TABLE `zt_as_prodservice`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `zt_as_usecar`
--
ALTER TABLE `zt_as_usecar`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `zt_block`
--
ALTER TABLE `zt_block`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- 使用表AUTO_INCREMENT `zt_branch`
--
ALTER TABLE `zt_branch`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `zt_bug`
--
ALTER TABLE `zt_bug`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `zt_build`
--
ALTER TABLE `zt_build`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `zt_case`
--
ALTER TABLE `zt_case`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_casestep`
--
ALTER TABLE `zt_casestep`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_company`
--
ALTER TABLE `zt_company`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `zt_config`
--
ALTER TABLE `zt_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- 使用表AUTO_INCREMENT `zt_cron`
--
ALTER TABLE `zt_cron`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `zt_dept`
--
ALTER TABLE `zt_dept`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `zt_dict`
--
ALTER TABLE `zt_dict`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- 使用表AUTO_INCREMENT `zt_doc`
--
ALTER TABLE `zt_doc`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_doclib`
--
ALTER TABLE `zt_doclib`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_effort`
--
ALTER TABLE `zt_effort`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_extension`
--
ALTER TABLE `zt_extension`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `zt_file`
--
ALTER TABLE `zt_file`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_group`
--
ALTER TABLE `zt_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `zt_history`
--
ALTER TABLE `zt_history`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `zt_lang`
--
ALTER TABLE `zt_lang`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_mailqueue`
--
ALTER TABLE `zt_mailqueue`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_module`
--
ALTER TABLE `zt_module`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- 使用表AUTO_INCREMENT `zt_mt_prodservice`
--
ALTER TABLE `zt_mt_prodservice`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID', AUTO_INCREMENT=60;
--
-- 使用表AUTO_INCREMENT `zt_product`
--
ALTER TABLE `zt_product`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `zt_productplan`
--
ALTER TABLE `zt_productplan`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `zt_project`
--
ALTER TABLE `zt_project`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `zt_release`
--
ALTER TABLE `zt_release`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_story`
--
ALTER TABLE `zt_story`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `zt_task`
--
ALTER TABLE `zt_task`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- 使用表AUTO_INCREMENT `zt_taskestimate`
--
ALTER TABLE `zt_taskestimate`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- 使用表AUTO_INCREMENT `zt_tc_course`
--
ALTER TABLE `zt_tc_course`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `zt_tc_customer`
--
ALTER TABLE `zt_tc_customer`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `zt_tc_date`
--
ALTER TABLE `zt_tc_date`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- 使用表AUTO_INCREMENT `zt_tc_plan`
--
ALTER TABLE `zt_tc_plan`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `zt_tc_prodservice`
--
ALTER TABLE `zt_tc_prodservice`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID', AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `zt_tc_studentcla`
--
ALTER TABLE `zt_tc_studentcla`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `zt_tc_techclass`
--
ALTER TABLE `zt_tc_techclass`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `zt_testresult`
--
ALTER TABLE `zt_testresult`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_testrun`
--
ALTER TABLE `zt_testrun`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_testtask`
--
ALTER TABLE `zt_testtask`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_todo`
--
ALTER TABLE `zt_todo`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_tp_ad`
--
ALTER TABLE `zt_tp_ad`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- 使用表AUTO_INCREMENT `zt_tp_admin`
--
ALTER TABLE `zt_tp_admin`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `zt_tp_article`
--
ALTER TABLE `zt_tp_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `zt_tp_as_customer`
--
ALTER TABLE `zt_tp_as_customer`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `zt_tp_as_usecar`
--
ALTER TABLE `zt_tp_as_usecar`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `zt_tp_case`
--
ALTER TABLE `zt_tp_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10306;
--
-- 使用表AUTO_INCREMENT `zt_tp_cate`
--
ALTER TABLE `zt_tp_cate`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类编号', AUTO_INCREMENT=81;
--
-- 使用表AUTO_INCREMENT `zt_tp_customer`
--
ALTER TABLE `zt_tp_customer`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `zt_tp_dict`
--
ALTER TABLE `zt_tp_dict`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- 使用表AUTO_INCREMENT `zt_tp_element`
--
ALTER TABLE `zt_tp_element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;
--
-- 使用表AUTO_INCREMENT `zt_tp_exefunc`
--
ALTER TABLE `zt_tp_exefunc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10953;
--
-- 使用表AUTO_INCREMENT `zt_tp_exescene`
--
ALTER TABLE `zt_tp_exescene`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10184;
--
-- 使用表AUTO_INCREMENT `zt_tp_func`
--
ALTER TABLE `zt_tp_func`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10591;
--
-- 使用表AUTO_INCREMENT `zt_tp_hcfunc`
--
ALTER TABLE `zt_tp_hcfunc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- 使用表AUTO_INCREMENT `zt_tp_hr`
--
ALTER TABLE `zt_tp_hr`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `zt_tp_link`
--
ALTER TABLE `zt_tp_link`
  MODIFY `id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '友情链接id';
--
-- 使用表AUTO_INCREMENT `zt_tp_page`
--
ALTER TABLE `zt_tp_page`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '单页id', AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `zt_tp_path`
--
ALTER TABLE `zt_tp_path`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10235;
--
-- 使用表AUTO_INCREMENT `zt_tp_projectbranch`
--
ALTER TABLE `zt_tp_projectbranch`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- 使用表AUTO_INCREMENT `zt_tp_prosys`
--
ALTER TABLE `zt_tp_prosys`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- 使用表AUTO_INCREMENT `zt_tp_risk`
--
ALTER TABLE `zt_tp_risk`
  MODIFY `id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
--
-- 使用表AUTO_INCREMENT `zt_tp_rules`
--
ALTER TABLE `zt_tp_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10234;
--
-- 使用表AUTO_INCREMENT `zt_tp_sccesscase`
--
ALTER TABLE `zt_tp_sccesscase`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `zt_tp_scene`
--
ALTER TABLE `zt_tp_scene`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10038;
--
-- 使用表AUTO_INCREMENT `zt_tp_scenefunc`
--
ALTER TABLE `zt_tp_scenefunc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10252;
--
-- 使用表AUTO_INCREMENT `zt_tp_stage`
--
ALTER TABLE `zt_tp_stage`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1069;
--
-- 使用表AUTO_INCREMENT `zt_tp_stagetester`
--
ALTER TABLE `zt_tp_stagetester`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10066;
--
-- 使用表AUTO_INCREMENT `zt_tp_tickets`
--
ALTER TABLE `zt_tp_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;
--
-- 使用表AUTO_INCREMENT `zt_tp_userprod`
--
ALTER TABLE `zt_tp_userprod`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `zt_tp_voucher`
--
ALTER TABLE `zt_tp_voucher`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `zt_user`
--
ALTER TABLE `zt_user`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- 使用表AUTO_INCREMENT `zt_usercontact`
--
ALTER TABLE `zt_usercontact`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_userquery`
--
ALTER TABLE `zt_userquery`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_usertpl`
--
ALTER TABLE `zt_usertpl`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zt_xl_customer`
--
ALTER TABLE `zt_xl_customer`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `zt_xl_order`
--
ALTER TABLE `zt_xl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单id', AUTO_INCREMENT=1608180002;
--
-- 使用表AUTO_INCREMENT `zt_xl_prodservice`
--
ALTER TABLE `zt_xl_prodservice`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID', AUTO_INCREMENT=75;
--
-- 使用表AUTO_INCREMENT `zt_xl_tickets`
--
ALTER TABLE `zt_xl_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;
--
-- 使用表AUTO_INCREMENT `zt_xl_voucher`
--
ALTER TABLE `zt_xl_voucher`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
