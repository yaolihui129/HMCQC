-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-12-25 16:07:05
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpTest`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_ad`
--

DROP TABLE IF EXISTS `tp_ad`;
CREATE TABLE IF NOT EXISTS `tp_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_ad`
--

INSERT INTO `tp_ad` (`id`, `title`, `path`, `img`, `url`, `remark`, `state`, `prodid`, `moder`, `updateTime`) VALUES
(1, '第2张', '/Ad/2016-12-18/', '58563054eedb5.jpg', '阿斯达', '', '发布', 7, '梁小伟', '2016-12-18 06:57:12'),
(2, '第1张', '/Ad/2016-12-18/', '58563047c0c62.jpg', '水电费', '', '发布', 7, '梁小伟', '2016-12-18 06:55:09'),
(3, '第3张', '/Ad/2016-12-18/', '585630359d9bd.jpg', '', '', '发布', 7, '腰立辉', '2016-12-18 06:55:10'),
(4, '第4张', '/Ad/2016-12-18/', '58562fa71e5fd.jpg', '', '', '发布', 7, '腰立辉', '2016-12-18 06:55:10'),
(5, '第5张', '/Ad/2016-12-18/', '58562e17daa5a.jpg', '', '', '发布', 7, '腰立辉', '2016-12-18 06:57:56'),
(10, '12', '/Ad/2016-12-25/', '585fd561a6f52.png', '', 'qweq', '正常', 8, '张秀丽', '2016-12-25 14:29:50'),
(11, NULL, '/Ad/2016-12-18/', '58563ae541ed1.JPG', NULL, NULL, '发布', 8, '腰立辉', '2016-12-18 07:29:41'),
(12, NULL, '/Ad/2016-12-18/', '58563af855b95.JPG', NULL, NULL, '发布', 8, '腰立辉', '2016-12-18 07:30:00'),
(13, NULL, '/Ad/2016-12-18/', '58563b0746cbb.JPG', NULL, NULL, '发布', 8, '腰立辉', '2016-12-18 07:30:15'),
(14, NULL, '/Ad/2016-12-25/', '585fd49eddab0.png', NULL, NULL, '发布', 8, '腰立辉', '2016-12-25 14:15:58'),
(15, NULL, '/Ad/2016-12-18/', '58565f960204b.jpg', NULL, NULL, '发布', 5, '腰立辉', '2016-12-18 10:06:14'),
(16, NULL, '/Ad/2016-12-18/', '58565ff1220d8.jpg', NULL, NULL, '发布', 5, '腰立辉', '2016-12-18 10:07:45'),
(17, NULL, NULL, NULL, NULL, NULL, '发布', 5, '腰立辉', '2016-12-18 07:05:09'),
(18, NULL, NULL, NULL, NULL, NULL, '发布', 5, '腰立辉', '2016-12-18 07:05:08'),
(19, NULL, NULL, NULL, NULL, NULL, '发布', 5, '腰立辉', '2016-12-18 07:05:08'),
(20, NULL, '/Ad/2016-12-22/', '585bcd1de3cdc.JPG', NULL, NULL, '发布', 6, '腰立辉', '2016-12-22 12:54:53'),
(21, NULL, '/Ad/2016-12-22/', '585bcd36ae47b.JPG', NULL, NULL, '发布', 6, '腰立辉', '2016-12-22 12:55:18'),
(22, NULL, '/Ad/2016-12-22/', '585bcd12a54c6.JPG', NULL, NULL, '发布', 6, '腰立辉', '2016-12-22 12:54:42'),
(23, NULL, '/Ad/2016-12-22/', '585bcd02e700a.JPG', NULL, NULL, '发布', 6, '腰立辉', '2016-12-22 12:54:26'),
(24, NULL, '/Ad/2016-12-22/', '585bcceea6df9.JPG', NULL, NULL, '发布', 6, '腰立辉', '2016-12-22 12:54:06'),
(25, NULL, NULL, NULL, NULL, NULL, '发布', 3, '腰立辉', '2016-12-18 07:06:57'),
(26, NULL, NULL, NULL, NULL, NULL, '发布', 3, '腰立辉', '2016-12-18 07:06:55'),
(27, NULL, NULL, NULL, NULL, NULL, '发布', 3, '腰立辉', '2016-12-18 07:06:54'),
(28, NULL, NULL, NULL, NULL, NULL, '发布', 3, '腰立辉', '2016-12-18 07:06:54'),
(29, NULL, NULL, NULL, NULL, NULL, '发布', 3, '腰立辉', '2016-12-18 07:06:53'),
(30, NULL, NULL, NULL, NULL, NULL, '发布', 4, '腰立辉', '2016-12-18 07:07:34'),
(31, NULL, NULL, NULL, NULL, NULL, '发布', 4, '腰立辉', '2016-12-18 07:07:33'),
(32, NULL, NULL, NULL, NULL, NULL, '发布', 4, '腰立辉', '2016-12-18 07:07:31'),
(33, NULL, NULL, NULL, NULL, NULL, '发布', 4, '腰立辉', '2016-12-18 07:07:31'),
(34, NULL, NULL, NULL, NULL, NULL, '发布', 4, '腰立辉', '2016-12-18 07:07:30');

-- --------------------------------------------------------

--
-- 表的结构 `tp_admin`
--

DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE IF NOT EXISTS `tp_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `username` varchar(11) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '在职',
  `prodid` smallint(6) DEFAULT '2',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_admin`
--

INSERT INTO `tp_admin` (`id`, `phone`, `username`, `realname`, `password`, `path`, `photo`, `state`, `prodid`, `adder`, `moder`, `updateTime`) VALUES
(1, '18801043607', '18801043607', '腰立辉', 'c33367701511b4f6020ec61ded352059', '', '', '在职', 2, '腰立辉', '腰立辉', '2016-12-17 13:47:31'),
(2, '13426179579', 'liangxw', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '在职', 7, '腰立辉', '腰立辉', '2016-12-17 13:40:37'),
(3, '15030971266', '15030971266', '贾晓月', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '在职', 5, '腰立辉', '腰立辉', '2016-12-17 13:46:03'),
(4, '13785900902', '13785900902', '王晓亮', 'e10adc3949ba59abbe56e057f20f883e', '', '', '在职', 5, '腰立辉', '腰立辉', '2016-12-17 13:47:33'),
(7, '13463925200', '13463925200', '张秀丽', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '在职', 8, '腰立辉', '腰立辉', '2016-12-17 13:47:06'),
(8, '18610815780', '18610815780', '刘燕军', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '在职', 3, '腰立辉', '腰立辉', '2016-12-17 13:58:00'),
(9, '18233098318', '18233098318', '马双峰', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '在职', 6, '腰立辉', '腰立辉', '2016-12-17 13:57:59'),
(10, NULL, 'yangyh', '杨艳辉', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '在职', 6, '腰立辉', '腰立辉', '2016-12-17 13:57:58'),
(11, '13131981120', '13131981120', '腰建强', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '在职', 8, '腰立辉', '腰立辉', '2016-12-17 13:57:57');

-- --------------------------------------------------------

--
-- 表的结构 `tp_as_customer`
--

DROP TABLE IF EXISTS `tp_as_customer`;
CREATE TABLE IF NOT EXISTS `tp_as_customer` (
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

--
-- 转存表中的数据 `tp_as_customer`
--

INSERT INTO `tp_as_customer` (`id`, `phone`, `password`, `custype`, `isteacher`, `coursetype`, `realname`, `path`, `img`, `state`, `course`, `remark`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', 1, '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', 1478415695, '2016-12-13 09:21:44'),
(12, '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '小学课程', 'werer', NULL, NULL, '正常', '', '', '腰立辉', '腰立辉', 1479042931, '2016-11-13 13:17:14'),
(13, '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '中学课程', '刘一玮（男、44中）', NULL, NULL, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', 1479302465, '2016-12-13 09:28:34'),
(14, '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', 1, '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', 1481619189, '2016-12-13 09:37:07');

-- --------------------------------------------------------

--
-- 表的结构 `tp_as_usecar`
--

DROP TABLE IF EXISTS `tp_as_usecar`;
CREATE TABLE IF NOT EXISTS `tp_as_usecar` (
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

--
-- 转存表中的数据 `tp_as_usecar`
--

INSERT INTO `tp_as_usecar` (`id`, `title`, `content`, `type`, `url`, `state`, `path`, `img`, `moder`, `updateTime`) VALUES
(3, '避免预热时间过长', '<p>\r\n	启动车后，大多数人都习惯让发动机怠速运转，等水温达到正常温度后再把车开走，其实这种预热的方法是非常错误的，因为电喷发动机不像化油器发动机，在达到工作温度之前，供油系统不能正常工作。电喷发动机如果采用长时间预热，不仅没有必要而且还是有害的。缩短预热时间可以延长三元催化器的使用寿命，还会节省燃油。动机起动后，只要能维持稳定的转速就可以起步行车，在水温未升高前，适当控制一下车速，等水温正常后就可以正常驾驶了。</p>\r\n', 6, '#', '发布', '/Admin/usecar/2016-10-31/', '5816dd28045c6.jpg', '腰立辉', '2016-10-31 06:01:15'),
(4, '开窗和开空调哪个更省油呢?', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">夏天在高速（速度一般都要&ge;80km/h）行驶时，到底是开着窗户省油还是开着空调省油呢？支持前者的人认为：不开空调即压缩机不用工作，也就不会给</span><a class="ShuKeyWordLink" href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(59, 89, 152); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">发动机</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">造成额外的负担，因此会更省油。支持后者观点的人则认为：高速时开着车窗会扰乱空气流动，形成更大的风阻，因此产生的阻力会消耗比空调还多的燃油。</span></p>\r\n<p>\r\n	<strong>结果：</strong></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">在开空调的测试中，</span><a class="blackclink" href="http://www.autohome.com.cn/81/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">飞度</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">的百公里油耗为6.15升，而</span><a class="blackclink" href="http://www.autohome.com.cn/694/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">锋范</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">的则达到了7.3升。这两个数据分别比开车窗行驶时上升了0.87升和0.17升，</span><a class="blackclink" href="http://www.autohome.com.cn/81/" style="color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);" target="_blank">飞度</a><span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">油耗上升的幅度非常明显。而我们最终的定论也可以得出了。在车速为100km/h以下时，开车窗行驶的确比开空调要更加省油，但是其恶劣的驾车感受是必须用足够的忍耐力才能承受的</span></p>\r\n', 7, 'http://www.autohome.com.cn/user/201007/128126.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816db69ef7da.jpg', '腰立辉', '2016-10-31 05:49:29'),
(5, '遭遇鸡蛋袭击不能用雨刮?', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">相信不少人曾对网络中的一则流言有所耳闻：某地频繁现劫匪用生鸡蛋袭击挡风玻璃的抢劫伎俩，千万不要开启雨刷喷水。因为鸡蛋遇玻璃水将凝固，阻挡视线达90%，在你被迫停车清理玻璃时，劫匪趁机抢劫......。上网一搜，类似流言高达百万条以上。</span></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验1：普通生鸡蛋</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验2：普通生鸡蛋停留一段时间再清理</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验3：普通鸡蛋夜间效果</strong></p>\r\n<p>\r\n	<strong style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">实验4：普通生鸡蛋+神秘配方</strong></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);">同样以20km/h的速度驾驶车辆，路边砸来的鸡蛋在挡风玻璃上破碎，开启雨刮器后大部分鸡蛋残渣被清除，不过一些神秘的残留物质仍然不能完全清除，尝试数次后效果仍然不明显。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', 7, 'http://www.autohome.com.cn/user/201112/281437.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816cd97d33bb.jpg', '腰立辉', '2016-10-31 05:00:58'),
(8, '开车不喝酒，喝酒不开车', '<p>\r\n	可你喝了酒又需要回家怎么办？</p>\r\n<p>\r\n	1. 自己打车回家，转天再去开回来。</p>\r\n<p>\r\n	2. 请会开车没喝酒的朋友帮忙。</p>\r\n<p>\r\n	3. 请个代驾帮忙把车开回家。</p>\r\n<p>\r\n	<strong>看看后面的规定，你就知道我们的3个办法还是最有效的。</strong></p>\r\n<p>\r\n	中华人民共和国道路交通安全法》规定，饮酒后驾驶机动车的处暂扣1个月以上3个月以下机动车驾驶证，并处200元以上元以下罚款;醉酒后驾驶机动车的，由公安机关交通管理部门约束至酒醒，处15日以下拘留和暂扣3个月以上6个月以下机动车驾驶证，并处00元以上2000元以下罚款。1年内醉酒后驾驶机动车被处罚2次以上的，吊销机动车驾驶证.5年内不得驾驶营运机动车。</p>\r\n', 6, '', '发布', '/Admin/usecar/2016-10-31/', '5816e1c4c2325.jpg', '腰立辉', '2016-10-31 06:16:36'),
(6, '保护漆面从新车做起', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">新车漆面虽无老化问题，但使用前应该做彻底的保护处理，从出厂到运输至停车场，车表漆就已经接触了空气、酸气、风沙的侵袭。及时正确的养护，能令漆面保持良好外观。如果买的是进口轿车，要首先考虑的是车蜡中含有石蜡、树脂及特氟隆等材料。除蜡时不要用汽油或煤油擦拭，应选用专业的开蜡液，或者到专业的美容养护店，请技师帮助处理。至于国产车，车身大多采用静电喷涂，漆面呈镜面光泽，故无开蜡需要。</span></p>\r\n', 6, '#', '发布', '/Admin/usecar/2016-10-31/', '5816dedc34c66.jpeg', '腰立辉', '2016-10-31 06:04:12'),
(7, '调整后视镜', '调整后视镜左侧后视镜上、下位置是把远处的地平线置于中央，左、右位置则调整至车身占据镜面范围的14。右侧后视镜因为驾驶座位于左侧，因此驾驶人对车耳右侧的掌握不是那么容易，再加上有时路边停车的需要，在调整右侧后视镜上、下位置时地面面积要较大，约占镜面的23。而左、右位置则同样调整到车身占14面积即可。\r\n', 6, '', '发布', '/Admin/usecar/2016-10-31/', '5816dfa12179c.png', '腰立辉', '2016-10-31 06:07:29');

-- --------------------------------------------------------

--
-- 表的结构 `tp_case`
--

DROP TABLE IF EXISTS `tp_case`;
CREATE TABLE IF NOT EXISTS `tp_case` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10306 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_case`
--

INSERT INTO `tp_case` (`id`, `sn`, `level`, `main`, `steps`, `expected`, `state`, `fproid`, `funcid`, `source`, `remarks`, `adder`, `moder`, `createTime`, `updateTime`, `dstate`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num16`, `num17`, `num18`, `num19`, `num20`) VALUES
(10000, 1, '2', '正常登陆', '', '登入系统，并显示用户姓名11', '正常', 107, 10000, '产品库', '', '腰立辉', '腰立辉', '2016-10-28 07:50:05', '2016-12-08 01:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001, 2, '2', '用户名不存在', '', '报错', '正常', 107, 10000, '产品库', NULL, '腰立辉', '腰立辉', '2016-09-22 06:33:33', '2016-12-08 01:31:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10130, 2, '2', ' 活动截止以后', '\r\n', ' 不能投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:51:42', '2016-12-12 12:50:51', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10131, 3, '2', ' 活动期间，当天已经投过票的', '', ' 不能投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:52:18', '2016-12-12 12:51:27', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10132, 4, '2', ' 活动期间，今天尚未投票', '', ' 可以投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:52:41', '2016-12-12 12:51:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10133, 1, '2', ' 打开页面，播放音乐', '', ' 背景音乐自动播放', '正常', 110, 10449, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:53:37', '2016-12-12 12:52:46', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10134, 1, '2', ' 点击选手头像，播放选手歌曲', '', ' 可以播放', '正常', 110, 10450, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:55:46', '2016-12-12 12:54:55', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10135, 2, '2', '再次点击选手头像', '', ' 关闭音乐播放', '正常', 110, 10450, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:56:30', '2016-12-12 12:55:39', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10136, 3, '2', ' 切换选手列表页面，停止播放', '', ' 停止播放', '待确认', 110, 10450, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 13:01:27', '2016-12-12 13:00:36', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10129, 1, '2', ' 活动开始之前', '', ' 不能投票', '正常', 110, 10446, NULL, NULL, '腰立辉', '腰立辉', '2016-12-12 12:51:16', '2016-12-12 12:50:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10104, 1, '2', '按英文名检索', '<p>\r\n	asd12</p>\r\n', '查询到符合条件的员工列表', '正常', 116, 10425, '产品库', NULL, '腰立辉', '腰立辉', '2016-12-06 03:08:10', '2016-12-23 09:21:16', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10282, 1, '2', ' 按姓名模糊查询', '', ' 检索到符合条件的员工列表', '正常', 116, 10425, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:21:39', '2016-12-23 09:21:39', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10109, 1, '2', ' 从公众微信号打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', 107, 10419, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:44:54', '2016-12-22 09:25:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10110, 2, '2', ' 从分享链接打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', 107, 10419, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:45:11', '2016-12-22 09:25:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10111, 1, '2', ' 正常提交报名', '', ' 提交成功', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:45:54', '2016-12-09 08:45:54', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10112, 2, '2', ' 空姓名，空手机号', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:46:11', '2016-12-09 08:46:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10113, 3, '2', ' 空姓名，填手机号', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:46:29', '2016-12-09 08:46:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10114, 4, '2', ' 填姓名，空手机号', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:46:44', '2016-12-09 08:46:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10115, 5, '2', ' 填姓名，手机号位数不足', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:47:05', '2016-12-09 08:47:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10116, 6, '2', ' 填姓名，手机号位数超过11位', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:47:25', '2016-12-09 08:47:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10117, 7, '2', ' 填姓名，手机号后有空格', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:47:47', '2016-12-09 08:47:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10118, 8, '2', ' 填姓名，手机号前，有空格', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:48:07', '2016-12-09 08:48:07', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10119, 9, '2', ' 填姓名，手机号中间有空格', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:48:22', '2016-12-09 08:48:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10120, 10, '2', ' 来回切换页面后，再填写报名信息', '', ' ', '正常', 107, 10423, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:49:04', '2016-12-09 08:49:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10121, 1, '2', ' 启用名片的角色，进入公司名片', '', ' 显示自己的名片', '正常', 107, 10421, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:56:20', '2016-12-09 08:56:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10122, 2, '2', ' 未启用名片的角色进入公司名片', '', ' 显示所有管家名片，滑动可以浏览', '正常', 107, 10421, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:57:39', '2016-12-09 08:57:39', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10123, 1, '2', ' 分享给微信好友', '', ' ', '正常', 107, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:58:04', '2016-12-09 08:58:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10124, 2, '2', ' 分享到微信朋友圈', '', ' ', '正常', 107, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:58:18', '2016-12-09 08:58:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10125, 1, '2', '从管家明前提交的', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:00', '2016-12-09 08:59:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10126, 2, '2', ' 从公司名片提交的', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:13', '2016-12-09 08:59:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10127, 3, '2', ' 转发分享次数', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:32', '2016-12-09 08:59:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10128, 4, '2', ' 报名转化率', '', ' ', '正常', 107, 10424, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 08:59:48', '2016-12-09 08:59:48', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10137, 1, '1', '正常修改密码', '', ' 修改成功', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:33:01', '2016-12-21 10:23:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10138, 2, '2', ' 原密码不填', '', ' 报错', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:49:40', '2016-12-21 09:49:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10139, 3, '2', ' 原密码错误', '', ' 报错', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:49:58', '2016-12-21 09:55:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10140, 4, '2', ' 原密码正确，新密码两次不一致', '', ' 修改失败', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:50:29', '2016-12-21 09:55:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10141, 5, '2', ' 原密码正确，新密码不输入', '', ' 修改失败', '正常', 116, 10480, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 09:50:56', '2016-12-21 09:55:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10142, 1, '1', ' 国家名称（全匹配查询）', '', ' 精确查出结果', '正常', 116, 10566, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 10:28:15', '2016-12-21 10:29:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10143, 1, '2', ' 国家名称没输全（模糊查询）', '', ' 可以查出复核条件的结果', '正常', 116, 10566, NULL, NULL, '腰立辉', '腰立辉', '2016-12-21 10:30:33', '2016-12-21 10:30:33', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10144, 1, '2', '从微信菜单进入“生活体验”', '', ' 成功打开生活体验页面', '正常', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:06:21', '2016-12-22 09:06:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10145, 3, '2', ' 从微站首页进入生活体验', '', ' 打开生活体验页面', '正常', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:07:15', '2016-12-22 09:07:15', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10146, 3, '2', ' 后台移民项目没有对应数据时', '', ' 展示默认场景', '待确认', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:08:33', '2016-12-22 09:08:51', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10147, 3, '2', ' 左右滑动切换移民国家', '', ' 切换成功，且可以循环切换', '正常', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:09:24', '2016-12-22 09:09:49', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10148, 3, '2', '当后台项目之一一个国家时，滑动切换国家', '', ' ', '待确认', 116, 10562, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:15:43', '2016-12-22 09:15:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10149, 2, '2', ' 项目只有一个城市', '', ' 直接跳过城市选择', '正常', 116, 10563, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:16:44', '2016-12-22 09:16:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10150, 2, '2', ' 当城市大于1个时，需要选择移民城市', '', ' ', '正常', 116, 10563, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:17:23', '2016-12-22 09:17:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10151, 2, '2', ' 可以上下滑动切换', '', ' 按后台设置的顺序', '正常', 116, 10563, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:17:39', '2016-12-22 09:17:57', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10152, 2, '2', ' 当项目没有体验信息时', '', ' 展示默认页面', '待确认', 116, 10564, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:19:27', '2016-12-22 09:19:27', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10153, 2, '2', ' 当项目有体验场景', '', ' 显示图片列表，点击可以进入详情', '正常', 116, 10564, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:19:54', '2016-12-22 09:20:10', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10154, 2, '2', ' 点击列表图片', '', ' 展开对应的详情', '正常', 116, 10565, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:23:00', '2016-12-22 09:23:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10155, 2, '2', ' 在详情页面，左右滑动', '', ' 可以按列表顺序，切换详情', '正常', 116, 10565, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:23:40', '2016-12-22 09:23:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10156, 4, '2', '公司简介向上滑动', '', ' 显示项目列表', '正常', 116, 10420, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:31:06', '2016-12-22 09:31:06', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10157, 4, '2', ' 当项目只有一个时，左右滑动', '', ' ', '待确认', 116, 10420, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:32:01', '2016-12-22 09:32:01', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10158, 4, '2', ' 当项目超过3个时，左右滑动', '', ' 可以循环展示', '正常', 116, 10420, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:32:38', '2016-12-22 09:32:38', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10159, 1, '2', ' 点击项目图片', '', ' 打开项目详情页面', '正常', 116, 10590, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:33:13', '2016-12-22 09:33:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10160, 3, '2', ' 显示个人名片的分享后', '', ' 统计或报名都记在个人名片下', '正常', 116, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:34:43', '2016-12-22 09:34:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10161, 3, '2', ' 显示公司名片时分享', '', ' 打开和报名统计在公司名片下', '正常', 116, 10422, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:35:31', '2016-12-22 09:35:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10162, 1, '2', ' 已个人名片分享的消息，有人报名时间', '', ' 微信公众号会有消息推送给名片所有人', '正常', 116, 10469, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:36:53', '2016-12-22 09:36:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10163, 1, '2', ' 已公司名片分享的消息，有人报名时', '', ' 无消息推送', '正常', 116, 10469, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 09:37:22', '2016-12-22 09:37:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10164, 1, '2', ' 单选一个国家查询', '', ' 查出对应的结果', '正常', 116, 10482, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:23:32', '2016-12-22 10:23:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10165, 1, '2', ' 选多个国家', '', ' 查出对应的结果', '正常', 116, 10482, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:23:59', '2016-12-22 10:23:59', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10166, 1, '2', ' 选择对应的项目类型', '', ' 查出对应的结果', '正常', 116, 10483, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:24:29', '2016-12-22 10:24:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10167, 1, '2', '单选项目状态', '', ' 查出对应的结果', '正常', 116, 10484, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:27:06', '2016-12-22 10:27:06', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10168, 1, '2', ' 输全项目编号', '', ' 查到对应的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:27:50', '2016-12-22 10:27:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10169, 1, '2', ' 输全项目名称', '', ' 查出对应的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:28:05', '2016-12-22 10:28:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10170, 1, '2', ' 输入部分项目编号（模糊查询）', '', ' 查出符合条件的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:28:47', '2016-12-22 10:28:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10171, 1, '2', '  输入部分项目名称（模糊查询）', '', ' 查出符合条件的结果', '正常', 116, 10485, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:29:05', '2016-12-22 10:29:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10172, 1, '2', ' 组合查询', '', ' 查出符合条件的结果', '正常', 116, 10487, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:29:34', '2016-12-22 10:29:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10173, 2, '2', ' 办理流程未填写，发布', '', ' 提示“办理流程未填写”', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:34:26', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10174, 3, '2', '申请条件未填写，发布', '', ' ', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:34:56', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10175, 4, '2', ' 费用详情未填写，发布', '', ' ', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:35:17', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10176, 5, '2', ' 料清单未填写，发布', '', ' ', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:35:32', '2016-12-22 10:35:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10177, 1, '2', ' 所有信息填写完成，发布', '', ' 发布成功，微网站上可见', '正常', 116, 10493, NULL, NULL, '腰立辉', '腰立辉', '2016-12-22 10:36:05', '2016-12-22 10:36:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10178, 1, '2', '只输入起始日期查询', '', ' 搜寻到起始日期往后的项目列表', '正常', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:28:18', '2016-12-23 01:28:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10179, 1, '2', ' 只输入结束日期', '', ' 查询到结束日期往前的项目列表', '正常', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:28:45', '2016-12-23 01:28:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10180, 1, '2', ' 同时输入结束日期和起始日期，且起始日期小于结束日期', '', ' 查找在这区间的的项目列表', '正常', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:29:49', '2016-12-23 01:29:49', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10181, 1, '2', ' 同时输入结束日期和起始日期，起始日期等于结束日期', '', ' 查询到当天的项目列表（假定项目时间是一个点）', '待确认', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:31:24', '2016-12-23 01:31:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10182, 1, '2', ' 同时输入结束日期和起始日期，且起始日期大于结束日期', '', ' 报错', '待确认', 116, 10486, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:31:50', '2016-12-23 01:31:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10183, 1, '2', ' 查看项目列表展现', '', ' 数据和展示字段与需求相符', '正常', 116, 10488, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:35:50', '2016-12-23 01:35:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10184, 1, '2', ' 选中一个项目，推荐', '', ' 推荐成功，该项目的扩展推荐，显示顾问平片，并且在微网站的公司名片的重点项目中看到该项目的信息', '正常', 116, 10490, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:43:47', '2016-12-23 01:43:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10185, 1, '2', ' 选中多个项目，进行扩展推荐', '', ' 选中项目的扩展推荐，这些项目都会出现在公司名片的重点项目中', '正常', 116, 10490, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 01:45:48', '2016-12-23 01:45:48', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10186, 4, '2', ' 项目暂停', '', ' 暂停成功，该项目不在网站显示', '正常', 116, 10492, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:02:05', '2016-12-23 02:02:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10187, 4, '2', ' 项目售罄', '', ' 成功，网站依然显示', '正常', 116, 10492, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:02:49', '2016-12-23 02:02:49', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10188, 23, '2', ' 正常新增项目', '', ' 新增成功', '正常', 116, 10489, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:03:46', '2016-12-23 02:03:46', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10189, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10491, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:20:04', '2016-12-23 02:20:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10190, 1, '2', ' 检查办理流程列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10494, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:25:24', '2016-12-23 02:25:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10191, 2, '2', ' 正常添加办理流程', '', ' 添加成功', '正常', 116, 10495, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:25:56', '2016-12-23 02:25:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10192, 2, '2', ' 排序字段填入字母和符号（非数字）', '', ' 报错，不能添加', '正常', 116, 10495, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:27:52', '2016-12-23 02:27:52', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10193, 2, '2', ' 下载模板', '', ' ', '正常', 116, 10496, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:34:29', '2016-12-23 02:34:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10194, 2, '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', 116, 10496, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:35:21', '2016-12-23 02:35:42', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10195, 2, '2', ' 上传非xls和xlsx的文体', '\r\n', ' 报错', '正常', 116, 10496, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:36:29', '2016-12-23 02:36:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10196, 1, '2', ' 选中一个流程（非顶端），上移', '', ' 上移一个顺序', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:37:19', '2016-12-23 02:37:19', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10197, 1, '2', '  选中一个流程（顶端），上移', '', ' 不能上移', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:37:31', '2016-12-23 02:37:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10198, 1, '2', '  选中一个流程（非底端），下移', '', ' 下移成功', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:37:59', '2016-12-23 02:37:59', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10199, 1, '2', '   选中一个流程（底端），下移', '', ' 不能下移', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:38:11', '2016-12-23 02:38:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10200, 1, '2', '   选中一个流程（非顶端），置顶', '', ' 置顶成功', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:44:50', '2016-12-23 02:45:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10201, 1, '2', '选中一个流程（顶端），置顶', '', ' 无需置顶', '正常', 116, 10497, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:45:34', '2016-12-23 02:45:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10202, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10498, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:46:17', '2016-12-23 02:46:17', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10203, 1, '2', ' 删除申请流程', '', ' 删除成功', '正常', 116, 10499, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:49:13', '2016-12-23 02:49:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10204, 1, '2', ' 检查材料清单列表', '', ' 数据和展示字段与需求相符', '正常', 116, 10506, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:57:40', '2016-12-23 02:57:40', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10205, 1, '2', ' 正常新增', '', ' 添加材料成功', '正常', 116, 10507, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:58:00', '2016-12-23 02:58:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10206, 1, '2', ' 点击材料样例', '', ' 弹出新窗口显示样例', '正常', 116, 10510, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:59:17', '2016-12-23 02:59:17', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10207, 2, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10511, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 02:59:36', '2016-12-23 02:59:36', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10208, 2, '2', ' 正常删除', '', ' 弹出确认窗口，确认后删除', '正常', 116, 10512, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:00:08', '2016-12-23 03:00:08', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10209, 1, '2', ' 下载模板', '', ' 下载成功', '正常', 116, 10508, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:00:37', '2016-12-23 03:00:37', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10210, 1, '2', ' 正常导入模板', '', ' 导入成功，刷新页面', '正常', 116, 10508, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:01:02', '2016-12-23 03:01:02', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10211, 1, '2', ' 带入非模板的文件', '', ' 导入失败', '正常', 116, 10508, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:02:43', '2016-12-23 03:02:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10212, 1, '2', ' 非顶端，上移', '', ' 上移成功', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:03', '2016-12-23 03:03:03', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10213, 1, '2', ' 顶端上移，不能上移', '', ' ', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:15', '2016-12-23 03:03:15', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10214, 1, '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:32', '2016-12-23 03:03:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10215, 1, '2', ' 顶端置顶', '', ' 不能置顶', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:03:50', '2016-12-23 03:03:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10216, 1, '2', '非底端，下移 ', '', ' 下移成功', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:04:11', '2016-12-23 03:04:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10217, 1, '2', ' 底端，下移', '', ' 不能下移', '正常', 116, 10509, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:04:31', '2016-12-23 03:04:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10218, 1, '2', ' 检查费用详情列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10500, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:26:03', '2016-12-23 08:23:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10219, 1, '2', ' 正常新增', '\r\n', ' 新增成功', '正常', 116, 10501, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:26:29', '2016-12-23 08:23:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10220, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10504, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:26:50', '2016-12-23 08:23:27', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10221, 1, '2', ' 正常删除', '', ' 删除成功', '正常', 116, 10505, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:27:07', '2016-12-23 08:23:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10222, 2, '2', ' 下载模板', '', ' 模板下载成功', '正常', 116, 10502, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:30:43', '2016-12-23 08:23:30', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10223, 2, '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', 116, 10502, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:34:37', '2016-12-23 08:23:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10224, 2, '2', ' 上传非模板文件', '', ' 报错', '正常', 116, 10502, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:36:54', '2016-12-23 08:23:33', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10225, 1, '2', ' 非顶端，上移', '', ' 上移成功', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:37:16', '2016-12-23 08:23:35', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10226, 1, '2', ' 顶端，上移', '', ' 顶端上移，不能上移', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:37:43', '2016-12-23 08:23:36', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10227, 1, '2', ' 非底端，下移', '', ' 下移成功', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:38:48', '2016-12-23 08:23:37', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10228, 1, '2', ' 底端，下移', '', ' 不能下移', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:42:54', '2016-12-23 08:23:46', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10229, 1, '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:43:09', '2016-12-23 08:23:47', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10230, 1, '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', 116, 10503, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 03:43:50', '2016-12-23 08:23:48', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10231, 1, '2', ' 检查图片列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10513, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 05:59:16', '2016-12-23 08:23:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10232, 2, '2', ' 正常添加图片', '', ' 添加成功', '正常', 116, 10514, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 05:59:41', '2016-12-23 08:23:51', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10233, 2, '2', ' 正常添加视频', '', ' 添加成功', '正常', 116, 10514, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 05:59:55', '2016-12-23 08:23:52', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10234, 2, '2', ' 添加视频时，视频地址不填', '', ' 报错，不允许添加', '正常', 116, 10514, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:00:31', '2016-12-23 08:23:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10235, 1, '2', ' 非顶端，上移', '', ' 上移成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:02:24', '2016-12-23 08:23:55', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10236, 1, '2', ' 顶端，上移', '', ' 不能上移', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:02:41', '2016-12-23 08:23:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10237, 1, '2', ' 非底端，下移', '', ' 下移成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:02:57', '2016-12-23 08:23:57', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10238, 1, '2', ' 底端，下移', '', ' 下移成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:03:10', '2016-12-23 08:23:59', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10239, 1, '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:04:23', '2016-12-23 08:24:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10240, 1, '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', 116, 10515, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:04:40', '2016-12-23 08:24:02', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10241, 1, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10516, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:04:58', '2016-12-23 08:24:03', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10242, 1, '2', ' 正常删除', '', ' 删除成功', '正常', 116, 10517, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:05:14', '2016-12-23 08:24:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10243, 1, '2', ' 按栏目全称精确查询', '', ' 查询到结果', '正常', 116, 10536, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:16:19', '2016-12-23 08:24:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10244, 1, '2', ' 按栏目名称模糊查询', '', ' 查询到符合条件的栏目', '正常', 116, 10536, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:17:11', '2016-12-23 08:24:07', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10245, 1, '2', ' 检查栏目列表', '', '数据和字段符合需求', '正常', 116, 10537, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:17:39', '2016-12-23 08:24:10', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10246, 1, '2', ' 修改顺序后，批量排序', '', '排序成功', '正常', 116, 10538, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:18:04', '2016-12-23 08:24:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10247, 1, '2', ' 不修改排序，点击“批量排序”', '', ' 排序失败', '正常', 116, 10538, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:19:36', '2016-12-23 08:24:13', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10248, 1, '2', ' 正常新增栏目', '', ' 新增成功', '正常', 116, 10539, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:20:10', '2016-12-23 08:24:14', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10249, 1, '2', ' 正常删除栏目', '', ' 删除成功', '正常', 116, 10541, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:20:51', '2016-12-23 08:24:16', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10250, 1, '2', ' 正常设置', '', ' 设置成功', '正常', 116, 10540, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 06:21:28', '2016-12-23 08:24:17', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10251, 1, '2', ' 选中左侧的栏目', '', ' 显示该栏目下的所有资讯', '正常', 116, 10542, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:13:12', '2016-12-23 08:24:18', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10252, 1, '2', ' 按标题精确查询', '', ' 查到对应和资讯', '正常', 116, 10543, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:13:52', '2016-12-23 08:24:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10253, 1, '2', ' 按资讯中的关键字模糊查询', '', ' 查询到符合条件的资讯', '正常', 116, 10543, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:14:25', '2016-12-23 08:24:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10254, 1, '2', ' 选中状态查询', '', ' 查询到符合条件的资讯', '正常', 116, 10544, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:14:54', '2016-12-23 08:24:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10255, 1, '2', ' 输入关键字并选择状态', '', ' 查询出符合条件的资讯', '正常', 116, 10545, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:15:28', '2016-12-23 08:24:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10256, 1, '2', ' 检查资讯列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10546, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:15:49', '2016-12-23 08:24:26', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10257, 1, '2', ' 正常新增资讯', '', ' 新增成功', '正常', 116, 10547, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:17:33', '2016-12-23 08:24:28', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10258, 1, '2', ' 正常编辑资讯', '', ' 编辑成功', '正常', 116, 10548, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:17:53', '2016-12-23 08:24:29', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10259, 1, '2', ' 正常删除资讯', '', ' 删除成功', '正常', 116, 10549, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:20:10', '2016-12-23 08:24:30', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10260, 1, '2', ' 发布资讯', '', ' 发布成功，微网站上可见', '正常', 116, 10550, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:20:31', '2016-12-23 08:24:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10261, 1, '2', ' 按活动名称精确查询', '', ' 查出对应的结果', '正常', 116, 10524, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:37:17', '2016-12-23 08:38:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10262, 1, '2', ' 按活动关键字模糊查询', '', ' 查出符合条件的结果', '正常', 116, 10524, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:38:07', '2016-12-23 08:38:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10263, 1, '2', '检查活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10525, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:55:34', '2016-12-23 08:55:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10264, 1, '2', ' 检查已发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10526, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:58:11', '2016-12-23 08:58:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10265, 1, '2', ' 检查未发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10527, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 08:58:30', '2016-12-23 08:58:30', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10266, 1, '2', ' 更改排序后，批量排序', '', ' 排序成功', '正常', 116, 10528, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:02:04', '2016-12-23 09:02:04', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10267, 1, '2', ' 未更改排序，进行批量排序', '', ' 排序失败', '正常', 116, 10528, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:02:32', '2016-12-23 09:02:32', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10268, 2, '2', ' 正常添加活动', '', ' 添加成功', '正常', 116, 10529, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:02:56', '2016-12-23 09:02:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10269, 2, '2', ' 添加活动名和以前存在同名的活动', '', ' 添加失败', '正常', 116, 10529, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:03:50', '2016-12-23 09:03:50', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10270, 2, '2', ' 正常编辑', '', ' 保存成功', '正常', 116, 10530, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:04:34', '2016-12-23 09:04:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10271, 2, '2', ' 编辑时，把活动名称改为和以前的某个活动重名的', '', ' 保存失败', '正常', 116, 10530, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:05:10', '2016-12-23 09:05:10', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10272, 1, '2', ' 未发布的活动，发布', '', ' 发布成功', '正常', 116, 10531, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:05:31', '2016-12-23 09:05:31', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10273, 1, '2', ' 已发布，为下线的活动，发布', '', '不能再次发布', '正常', 116, 10531, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:06:00', '2016-12-23 09:06:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10274, 1, '2', ' 已发布的活动，下线', '', ' 下线成功', '正常', 116, 10532, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:06:21', '2016-12-23 09:06:21', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10275, 1, '2', ' 未发布或已下线的活动，下线', '', ' 不能下线', '正常', 116, 10532, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:07:00', '2016-12-23 09:07:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10276, 1, '2', '点击活动报名', '', ' 进入活动已报名的名表', '正常', 116, 10533, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:07:58', '2016-12-23 09:07:58', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10277, 1, '2', ' 按姓名精确查询', '', ' 查询符合条件的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:09:24', '2016-12-23 09:09:24', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10278, 1, '2', ' 按姓名模糊查询', '', ' 查询符合条件的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:09:43', '2016-12-23 09:09:43', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10279, 1, '2', ' 按手机号精确查询', '', ' 查到对对应的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:10:09', '2016-12-23 09:10:09', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10280, 1, '2', ' 按手机号模糊查询', '', ' 查询符合条件的报名人员', '正常', 116, 10534, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:11:25', '2016-12-23 09:11:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10281, 1, '2', ' 检查报名人员列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', 116, 10535, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:11:52', '2016-12-23 09:11:52', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10283, 1, '2', ' 按所属部门筛选', '', ' 筛选出该部门级下级部门的所有人员', '正常', 116, 10425, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:22:28', '2016-12-23 09:22:28', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10284, 1, '2', ' 选中某个员工进行“分派管家”', '&lt;p&gt;\r\n	按钮&amp;ldquo;分派管家&amp;rdquo;有歧义需斟酌&lt;/p&gt;\r\n', '把该员工设定为移民管家', '待确认', 116, 10425, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:23:45', '2016-12-23 09:23:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10285, 1, '2', '正常 编辑管家', '', ' 保存成功', '正常', 116, 10426, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:25:53', '2016-12-23 09:25:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10286, 1, '2', ' 点击姓名', '', ' 进入管家详情', '正常', 116, 10429, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:26:56', '2016-12-23 09:26:56', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10287, 1, '2', ' 点击英文名', '', ' 进入管家详情', '正常', 116, 10429, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:27:11', '2016-12-23 09:27:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10288, 1, '2', ' 点击管家星级', '', ' 进入管家评价', '正常', 116, 10427, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:27:55', '2016-12-23 09:27:55', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10289, 3, '2', '修改排序数字，重新排序', '', ' 排序成功，且前台展示也按此顺序排序', '正常', 116, 10519, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:40:23', '2016-12-23 09:40:23', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10290, 3, '2', ' 未修改排序。批量排序', '', ' 重新排序失败', '正常', 116, 10519, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:41:34', '2016-12-23 09:41:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10291, 3, '2', ' 修改权重比例，权重之和等于100%', '', ' 保存权重成功', '正常', 116, 10522, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:42:20', '2016-12-23 09:42:20', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10292, 3, '2', '  修改权重比例，权重之和不等于100%', '', ' 保存失败', '正常', 116, 10522, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:42:33', '2016-12-23 09:42:33', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10293, 3, '2', ' 权重之和等于100%，发布', '', ' 发布成功', '正常', 116, 10523, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:43:05', '2016-12-23 09:43:05', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10294, 3, '2', ' 权重之和不等于100%，发布', '', ' 发布失败', '正常', 116, 10523, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:43:22', '2016-12-23 09:43:22', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10295, 2, '2', '正常删除', '', ' 弹出确认窗口，确认后删除', '正常', 116, 10521, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:43:57', '2016-12-23 09:43:57', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10296, 6, '2', ' 正常添加问题', '', ' 添加成功', '正常', 116, 10518, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:45:00', '2016-12-23 09:45:00', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10297, 6, '2', ' 正常编辑', '', ' 编辑成功', '正常', 116, 10520, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 09:45:44', '2016-12-23 09:45:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10298, 10, '2', ' 正确的用户名，正确的密码', '', ' 正常登陆', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:00:53', '2016-12-23 10:00:53', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tp_case` (`id`, `sn`, `level`, `main`, `steps`, `expected`, `state`, `fproid`, `funcid`, `source`, `remarks`, `adder`, `moder`, `createTime`, `updateTime`, `dstate`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num16`, `num17`, `num18`, `num19`, `num20`) VALUES
(10299, 10, '2', ' 用户被禁用，正确的用户名，正确的密码', '', ' 提示被禁用', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:01:25', '2016-12-23 10:01:25', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10300, 10, '2', ' 不存在的用户名', '', '用户名不存在', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:01:49', '2016-12-23 10:02:03', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10301, 10, '2', ' 错误的密码', '', ' 密码错误', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:02:21', '2016-12-23 10:02:21', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10302, 10, '2', ' 正确用户名，不输密码', '', ' 请输入密码', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:02:44', '2016-12-23 10:02:44', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10303, 10, '2', ' 不输入用户名， 随便数个什么密码', '', '请输入用户名', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:03:11', '2016-12-23 10:03:11', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10304, 10, '2', ' 用户名和 密码都不输入，直接点登陆', '', ' 请输入用户名', '正常', 116, 10478, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:03:45', '2016-12-23 10:03:45', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10305, 4, '2', ' 正常退出', '', ' 用户退出登录，跳转到登陆页面', '正常', 116, 10479, NULL, NULL, '腰立辉', '腰立辉', '2016-12-23 10:04:34', '2016-12-23 10:04:34', '待维护', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dict`
--

DROP TABLE IF EXISTS `tp_dict`;
CREATE TABLE IF NOT EXISTS `tp_dict` (
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
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_dict`
--

INSERT INTO `tp_dict` (`id`, `k`, `v`, `type`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, 1, '正常', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 06:05:14', NULL),
(2, 2, '待确认', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 06:05:15', NULL),
(3, 3, '已搁置', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 06:05:17', NULL),
(4, 4, '作废', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 06:05:18', NULL),
(5, 1, '未开始', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 06:05:19', NULL),
(6, 2, '进行中', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 06:05:20', NULL),
(7, 3, '已完成', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 06:05:21', '2016-11-11 08:49:34'),
(8, 8, '仿真验证通过', 'prost', '作废', '腰立辉', '腰立辉', '2016-10-27 03:34:05', '2016-11-11 08:50:28'),
(9, 6, '已取消', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 03:34:11', '2016-11-11 08:50:20'),
(30, 1, '简要', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 14:23:30', NULL),
(31, 2, '常规', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 14:23:48', '2016-09-16 14:23:48'),
(32, 1, '新项目', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 01:19:51', '2016-10-24 01:19:51'),
(33, 2, '升级版本', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 01:20:04', '2016-10-24 01:20:04'),
(34, 3, '临时修正程序', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 01:20:19', '2016-10-24 01:20:19'),
(35, 1, '紧急需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 06:28:53', '2016-09-17 06:28:53'),
(36, 2, '一般需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 06:28:44', '2016-09-17 06:28:44'),
(37, 1, '测试', 'position', '正常', '腰立辉', '腰立辉', '2016-09-17 07:31:57', '2016-12-19 03:29:38'),
(38, 2, '产品经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 07:32:01', '2016-12-19 03:28:27'),
(39, 3, '后台研发', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 07:32:04', '2016-12-19 03:29:05'),
(40, 4, '前端工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 07:32:07', '2016-12-19 03:29:19'),
(41, 5, '架构师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 07:32:13', '2016-12-19 03:29:31'),
(42, 6, '总经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 07:32:17', '2016-12-19 03:29:50'),
(43, 1, '无文档', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 08:09:39', '2016-09-17 08:09:39'),
(44, 2, '测试计划', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 08:08:42', '2016-09-17 08:08:42'),
(45, 3, '测试用例', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 08:08:55', '2016-09-17 08:08:55'),
(46, 4, 'BUG分析报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 08:09:28', '2016-09-17 08:09:28'),
(47, 5, '测试综合报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 08:09:23', '2016-09-17 08:09:23'),
(48, 1, '打开', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 08:18:15', NULL),
(49, 2, '关闭', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 08:18:30', '2016-09-17 08:18:30'),
(50, 1, 'A', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 08:19:42', '2016-09-17 08:19:42'),
(51, 2, 'B', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 08:19:21', '2016-09-17 08:19:21'),
(52, 3, 'C', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 08:19:27', '2016-09-17 08:19:27'),
(53, 4, 'D', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 08:19:34', '2016-09-17 08:19:34'),
(54, 1, 'M', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 13:11:13', '2016-09-23 13:11:13'),
(55, 2, 'A', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 13:11:19', '2016-09-23 13:11:19'),
(56, 1, '未测试', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 08:22:01', NULL),
(57, 2, '通过', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 08:22:33', '2016-10-10 08:22:33'),
(58, 3, '失败', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 08:22:39', '2016-10-10 08:22:39'),
(59, 4, '场景错', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 08:22:45', '2016-10-10 08:22:45'),
(60, 1, '操作', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 07:08:41', '2016-10-20 07:08:41'),
(61, 2, '检查', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 07:08:52', '2016-10-20 07:08:52'),
(62, 1, '待维护', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 08:21:49', '2016-10-20 08:21:49'),
(63, 2, '已完成', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 08:22:03', '2016-10-20 08:22:03'),
(64, 4, '功能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 01:20:29', '2016-10-24 01:20:29'),
(65, 5, '性能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 01:20:37', '2016-10-24 01:20:37'),
(66, 6, '用户体验优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 01:20:47', '2016-10-24 01:20:47'),
(67, 4, '已上线', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 03:33:53', '2016-11-11 08:50:05'),
(69, 3, 'C', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-11-16 09:23:14', '2016-11-16 09:23:14'),
(68, 5, '已搁置', 'prost', '正常', '腰立辉', '腰立辉', '2016-11-09 06:21:09', '2016-11-11 08:50:15'),
(70, 1, '在职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-17 05:58:18', '2016-11-17 05:57:24'),
(71, 2, '离职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-17 05:58:28', '2016-11-17 05:57:34'),
(72, 1, 'PJD', 'testgp', '正常', '腰立辉', '腰立辉', '2016-12-05 07:37:48', '2016-12-17 14:37:50'),
(73, 1, '技师', 'tech', '正常', '腰立辉', '腰立辉', '2016-12-17 09:06:48', '2016-12-17 09:06:48'),
(74, 2, '非技师', 'tech', '正常', '腰立辉', '腰立辉', '2016-12-17 09:07:02', '2016-12-17 09:07:02'),
(75, 1, '用车小常识', 'usecar', '正常', '腰立辉', '腰立辉', '2016-12-17 09:14:52', '2016-12-17 09:14:52'),
(76, 2, '流言终结者', 'usecar', '正常', '腰立辉', '腰立辉', '2016-12-17 09:15:16', '2016-12-17 09:15:16'),
(77, 1, '抽奖', 'voucher', '正常', '腰立辉', '腰立辉', '2016-12-17 09:15:47', '2016-12-17 09:16:07'),
(78, 2, '普通', 'voucher', '正常', '腰立辉', '腰立辉', '2016-12-17 09:16:20', '2016-12-17 09:16:20'),
(79, 1, '老师', 'custype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:09:14', '2016-12-17 12:09:14'),
(80, 2, '助教', 'custype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:09:26', '2016-12-17 12:09:26'),
(81, 3, '学生', 'custype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:09:33', '2016-12-17 12:09:33'),
(82, 1, '学前少儿', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:10:30', '2016-12-17 12:10:30'),
(83, 2, '小学课程', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:10:47', '2016-12-17 12:10:47'),
(84, 3, '中学课程', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:10:55', '2016-12-17 12:10:55'),
(85, 4, '作业托管', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:11:03', '2016-12-17 12:11:03'),
(86, 5, '兴趣拓展', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 12:11:22', '2016-12-17 12:11:22'),
(87, 1, '08:00-10:00', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 12:11:53', '2016-12-17 12:13:21'),
(88, 2, '10:10-12:10', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 12:12:22', '2016-12-17 12:12:22'),
(89, 3, '13:30-15:30', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 12:12:29', '2016-12-17 12:12:29'),
(90, 4, '15:40-17:40', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 12:12:37', '2016-12-17 12:12:37'),
(91, 5, '18:00-20:00', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 12:12:45', '2016-12-17 12:12:45'),
(92, 2, 'Auto', 'testgp', '正常', '腰立辉', '腰立辉', '2016-12-17 14:37:07', '2016-12-17 14:45:19'),
(97, 7, 'UI设计师', 'position', '正常', '腰立辉', '腰立辉', '2016-12-19 03:30:12', '2016-12-19 03:30:12');

-- --------------------------------------------------------

--
-- 表的结构 `tp_element`
--

DROP TABLE IF EXISTS `tp_element`;
CREATE TABLE IF NOT EXISTS `tp_element` (
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

-- --------------------------------------------------------

--
-- 表的结构 `tp_exefunc`
--

DROP TABLE IF EXISTS `tp_exefunc`;
CREATE TABLE IF NOT EXISTS `tp_exefunc` (
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

--
-- 转存表中的数据 `tp_exefunc`
--

INSERT INTO `tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
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
INSERT INTO `tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
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
INSERT INTO `tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
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
INSERT INTO `tp_exefunc` (`id`, `sn`, `exesceneid`, `funcid`, `sysno`, `path`, `func`, `funcremarks`, `casemain`, `caseexpected`, `bugid`, `result`, `imgpath`, `img`, `remark`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
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
-- 表的结构 `tp_exescene`
--

DROP TABLE IF EXISTS `tp_exescene`;
CREATE TABLE IF NOT EXISTS `tp_exescene` (
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

--
-- 转存表中的数据 `tp_exescene`
--

INSERT INTO `tp_exescene` (`id`, `sn`, `type`, `stagetesterid`, `pathid`, `sceneid`, `level`, `swho`, `swhen`, `scene`, `results`, `flow`, `testip`, `isrunning`, `testtime`, `runningip`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
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
-- 表的结构 `tp_func`
--

DROP TABLE IF EXISTS `tp_func`;
CREATE TABLE IF NOT EXISTS `tp_func` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10591 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_func`
--

INSERT INTO `tp_func` (`id`, `sn`, `func`, `state`, `pathid`, `fproid`, `result`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10000, 1, '登录', '正常', 10000, 24, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:02', '2016-09-22 02:45:46'),
(10001, 2, '注销', '正常', 10000, 49, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:04', '2016-09-24 14:17:12'),
(10002, 1, '产品列表', '正常', 10001, 45, '失败', '腰立辉', '腰立辉', '2016-10-24 07:47:57', '2016-11-07 01:39:29'),
(10003, 2, '产品-添加', '正常', 10001, 45, '通过', '腰立辉', '腰立辉', '2016-10-25 01:08:05', '2016-11-07 02:30:30'),
(10004, 3, '产品-编辑', '正常', 10001, 45, '通过', '腰立辉', '腰立辉', '2016-10-25 01:08:06', '2016-11-07 02:30:39'),
(10005, 3, '改密', '已搁置', 10000, 24, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:07', '2016-11-07 01:24:51'),
(10006, 4, '系统-入口', '正常', 10001, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:08', '2016-11-07 01:45:46'),
(10007, 3, '项目-添加', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-24 07:57:07', '2016-11-07 01:48:15'),
(10008, 4, '项目-编辑', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-24 07:57:17', '2016-11-07 01:58:13'),
(10009, 5, '项目-详情', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:10', '2016-11-07 02:48:12'),
(10010, 1, '分组项目列表', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-24 07:57:28', '2016-11-07 01:47:45'),
(10011, 2, '切换分组', '正常', 10002, 45, '通过', '腰立辉', '腰立辉', '2016-10-24 07:57:33', '2016-10-24 07:57:33'),
(10012, 6, '快速标记状态', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:11', '2016-11-07 02:52:07'),
(10013, 7, '项目-里程碑入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:12', '2016-11-07 03:05:24'),
(10014, 8, '项目-风险入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:13', '2016-11-07 02:54:47'),
(10015, 9, '项目-系统入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:14', '2016-11-07 02:58:17'),
(10016, 10, '项目-功能点入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:15', '2016-11-07 02:58:20'),
(10017, 11, '项目-范围入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:16', '2016-11-07 02:58:24'),
(10018, 12, '项目-场景入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:17', '2016-11-07 02:56:47'),
(10019, 13, '项目-控件库入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:19', '2016-11-07 02:57:16'),
(10020, 14, '项目-用例库入口', '正常', 10002, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:20', '2016-11-07 02:57:20'),
(10021, 15, '项目-报告入口', '已搁置', 10002, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:22', '2016-09-22 09:46:11'),
(10022, 1, '里程碑列表', '正常', 10028, 45, '失败', '腰立辉', '腰立辉', '2016-10-24 07:57:57', '2016-11-07 02:59:24'),
(10023, 2, '切换项目', '正常', 10028, 45, '失败', '腰立辉', '腰立辉', '2016-10-24 08:03:31', '2016-11-07 03:00:43'),
(10024, 3, '里程碑-添加', '正常', 10028, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:23', '2016-11-07 03:01:24'),
(10025, 4, '里程碑-修改', '正常', 10028, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:24', '2016-11-07 03:09:57'),
(10026, 7, 'A人员-入口（自动化）', '正常', 10028, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:26', '2016-09-25 05:36:43'),
(10027, 5, '快速标记状态', '正常', 10028, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:27', '2016-11-07 03:10:26'),
(10028, 1, '项目涉及系统列表', '正常', 10003, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:29', '2016-11-07 03:17:20'),
(10029, 2, '待关联系统列表', '正常', 10003, 45, '通过', '腰立辉', '腰立辉', '2016-10-25 01:08:30', '2016-11-07 06:33:57'),
(10030, 3, '关联系统到本项目', '正常', 10003, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:32', '2016-11-07 03:14:22'),
(10031, 4, '待关联系统-添加', '正常', 10003, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:33', '2016-11-07 03:17:50'),
(10032, 5, '待关联系统-修改', '正常', 10003, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:34', '2016-11-07 03:18:14'),
(10033, 6, '已关联系统-配置环境', '正常', 10003, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:35', '2016-11-07 03:20:02'),
(10034, 7, '已关联系统-路径入口', '正常', 10003, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:36', '2016-11-07 03:22:28'),
(10035, 8, '已关联系统-移除关联', '正常', 10003, 45, '通过', '腰立辉', '腰立辉', '2016-10-24 07:58:27', '2016-10-24 07:58:27'),
(10036, 1, '项目风险列表', '正常', 10030, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:46', '2016-09-22 09:52:20'),
(10037, 2, '切换项目', '正常', 10030, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:47', '2016-09-22 09:52:27'),
(10038, 3, '风险-添加', '正常', 10030, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:48', '2016-09-22 09:52:43'),
(10039, 4, '风险-维护', '正常', 10030, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:08:49', '2016-09-22 09:52:59'),
(10040, 1, '系统路径列表', '正常', 10004, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:50', '2016-11-07 03:25:25'),
(10041, 2, '切换关联系统', '正常', 10004, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:51', '2016-11-07 03:26:22'),
(10042, 3, '路径-添加', '正常', 10004, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:52', '2016-11-07 03:29:17'),
(10043, 4, '路径-修改', '正常', 10004, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:53', '2016-11-07 03:31:11'),
(10044, 5, '路径-功能点入口', '正常', 10004, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:54', '2016-11-07 03:27:58'),
(10045, 1, '路径功能点列表', '正常', 10005, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:56', '2016-11-07 03:38:10'),
(10046, 2, '切换路径', '正常', 10005, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:57', '2016-11-07 03:40:17'),
(10047, 3, '功能点-添加（默认当前项目）', '正常', 10005, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:58', '2016-11-07 03:39:30'),
(10048, 4, '功能点-修改', '正常', 10005, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:08:59', '2016-11-07 03:41:23'),
(10049, 5, '功能点-用例入口', '正常', 10005, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:09:00', '2016-11-07 03:42:29'),
(10050, 6, '功能点-规则入口', '正常', 10005, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:09:01', '2016-11-07 03:42:23'),
(10051, 7, '快速标记当前项目', '正常', 10005, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:09:02', '2016-11-07 03:42:16'),
(10052, 1, '功能点用例列表', '正常', 10006, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:03', '2016-09-22 09:58:03'),
(10053, 2, '切换功能点', '正常', 10006, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:05', '2016-09-22 09:58:13'),
(10054, 3, '用例-添加', '正常', 10006, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:06', '2016-09-22 09:58:30'),
(10055, 4, '用例-维护', '正常', 10006, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:07', '2016-09-22 09:58:37'),
(10056, 5, '快速标记当前项目', '正常', 10006, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:08', '2016-09-22 09:59:13'),
(10057, 6, '数据模板-编辑', '正常', 10006, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:09', '2016-09-23 05:40:21'),
(10058, 1, '功能点规则列表', '正常', 10007, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:10', '2016-09-22 09:59:51'),
(10059, 2, '切换功能点', '正常', 10007, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:12', '2016-09-22 10:00:04'),
(10060, 3, '规则-添加', '正常', 10007, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:13', '2016-09-22 10:00:15'),
(10061, 4, '规则-修改', '正常', 10007, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:14', '2016-09-22 10:00:27'),
(10062, 5, '来源-维护', '正常', 10007, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:15', '2016-09-22 10:00:45'),
(10063, 6, '快速标记当前项目', '正常', 10007, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:17', '2016-09-22 10:00:58'),
(10064, 1, '项目-功能点列表', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:19', '2016-09-22 10:01:32'),
(10065, 2, '切换项目', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:55', '2016-09-22 10:01:41'),
(10066, 3, '添加路径', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:55', '2016-09-22 10:02:05'),
(10067, 4, '维护路径', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:56', '2016-09-22 10:02:13'),
(10068, 5, '添加功能点', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:57', '2016-09-22 10:02:20'),
(10069, 6, '维护功能点', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:58', '2016-09-22 10:02:27'),
(10070, 7, '快速标记当前项目', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:59', '2016-09-22 10:02:34'),
(10071, 8, '功能点-用例入口', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:00', '2016-09-23 05:32:47'),
(10072, 9, '功能点-规则入口', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:02', '2016-09-22 10:03:07'),
(10073, 10, '功能点-模板入口', '正常', 10008, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:03', '2016-09-23 05:32:57'),
(10074, 1, '（M/A）人员列队场景列表', '正常', 10029, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:20:00', '2016-11-07 06:27:25'),
(10075, 2, '切换阶段人员', '正常', 10029, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:05', '2016-11-07 06:27:54'),
(10076, 3, '场景库-入口', '正常', 10029, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:05', '2016-11-07 06:30:22'),
(10077, 4, '场景功能-入口', '正常', 10029, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:06', '2016-11-07 06:31:10'),
(10078, 5, '列队场景-编辑', '正常', 10029, 45, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:07', '2016-11-07 06:31:25'),
(10079, 6, '列队场景-移除', '正常', 10029, 45, '通过', '腰立辉', '腰立辉', '2016-10-25 01:11:08', '2016-11-07 06:33:32'),
(10080, 1, '已分派场景列表', '已搁置', 10031, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:09', '2016-09-24 07:15:08'),
(10081, 2, '切换测试人员', '已搁置', 10031, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:10', '2016-09-24 07:15:43'),
(10082, 3, '待分派场景列表（含次数）', '已搁置', 10031, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:11', '2016-09-23 01:57:09'),
(10083, 4, '场景分派', '正常', 10031, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:13', '2016-09-23 01:56:52'),
(10084, 1, '场景功能列表', '正常', 10032, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:14', '2016-11-07 06:31:53'),
(10085, 2, '切换场景', '正常', 10032, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:15', '2016-11-07 06:31:59'),
(10086, 3, '标记场景测试结果', '正常', 10032, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:16', '2016-11-07 06:32:02'),
(10115, 1, '功能点-控件列表', '正常', 10033, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:17', '2016-09-23 02:56:43'),
(10116, 2, '控件-添加', '正常', 10033, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:18', '2016-09-23 02:54:55'),
(10117, 3, '控件-维护', '正常', 10033, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:19', '2016-09-23 02:52:35'),
(10118, 4, '功能点-数据模板列表', '正常', 10033, 45, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:20', '2016-09-23 02:52:57'),
(10119, 5, '标记-数据状态', '正常', 10033, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:21', '2016-09-23 03:01:05'),
(10120, 6, '模板数据-清除', '正常', 10033, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:22', '2016-09-23 07:11:00'),
(10121, 7, '模板数据-维护（更多）', '正常', 10033, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:23', '2016-09-23 07:11:07'),
(10122, 8, '编写用例入口', '正常', 10033, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:24', '2016-09-23 03:02:11'),
(10123, 1, '项目-场景列表', '正常', 10017, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:25', '2016-11-07 03:47:26'),
(10124, 2, '切换项目', '正常', 10017, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:26', '2016-11-07 03:44:36'),
(10099, 1, '项目-测试范围列表', '正常', 10013, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:27', '2016-09-23 02:07:01'),
(10100, 2, '功能点-编辑', '正常', 10013, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:28', '2016-09-23 02:07:27'),
(10101, 3, '范围-用例入口', '正常', 10013, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:29', '2016-09-23 02:08:56'),
(10102, 4, '范围-规则入口', '正常', 10013, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:30', '2016-09-23 02:09:08'),
(10103, 5, '范围-数据模板入口', '正常', 10013, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:32', '2016-09-23 02:10:18'),
(10104, 1, '执行阶段场景列队', '正常', 10024, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:37', '2016-09-23 02:12:05'),
(10105, 2, '切换阶段', '正常', 10024, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:39', '2016-09-23 02:12:27'),
(10106, 3, '执行测试-入口', '正常', 10024, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:40', '2016-09-23 02:12:49'),
(10107, 1, '执行场景功能点列表', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:41', '2016-09-23 02:18:35'),
(10108, 2, '切换执行场景', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:43', '2016-09-23 02:18:44'),
(10109, 3, '测试结果-标记通过', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:44', '2016-09-23 02:20:21'),
(10110, 4, '测试结果-标记失败（说明）', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:45', '2016-09-23 02:23:12'),
(10111, 5, '测试结果-重置', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:46', '2016-09-23 02:21:06'),
(10112, 6, '用例库-入口', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:47', '2016-09-23 02:22:30'),
(10113, 7, '规则-入口', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:50', '2016-09-23 02:22:42'),
(10114, 9, '标记-场景执行结果', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:52', '2016-09-23 06:08:13'),
(10125, 3, '场景-添加', '正常', 10017, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:53', '2016-11-07 03:48:27'),
(10126, 4, '场景-编辑', '正常', 10017, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:54', '2016-11-07 03:48:22'),
(10127, 6, '场景功能-入口', '正常', 10017, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:55', '2016-11-07 03:50:13'),
(10128, 5, '场景-复制', '正常', 10017, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:11:56', '2016-11-07 03:45:28'),
(10129, 1, '场景功能列表', '正常', 10018, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:57', '2016-09-23 03:13:12'),
(10130, 2, '场景功能-编辑', '正常', 10018, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:58', '2016-09-23 03:14:32'),
(10131, 3, '场景功能-移除', '正常', 10018, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:11:59', '2016-09-23 03:14:44'),
(10132, 4, '功能库-入口', '正常', 10018, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:00', '2016-09-23 03:14:56'),
(10133, 5, '场景数据-入口', '正常', 10018, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:02', '2016-09-23 03:15:07'),
(10134, 6, '功能用例库-入口', '已搁置', 10018, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:03', '2016-09-24 07:14:45'),
(10135, 1, '功能库-功能列表', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:04', '2016-09-23 03:17:04'),
(10136, 2, '切换系统路径', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:05', '2016-09-23 03:17:15'),
(10137, 3, '功能-加入场景', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:11', '2016-09-23 03:17:43'),
(10138, 4, '功能-加入缓存', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:14', '2016-09-23 03:17:56'),
(10139, 5, '场景功能列表', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:15', '2016-09-23 03:18:14'),
(10140, 6, '场景功能-编辑', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:16', '2016-09-23 03:18:31'),
(10141, 7, '场景功能-移除', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:17', '2016-09-23 03:18:48'),
(10142, 8, '场景功能-加入缓存', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:18', '2016-09-23 03:19:01'),
(10143, 9, '场景功能-全部加入缓存', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:19', '2016-09-23 03:19:12'),
(10144, 10, '缓存功能列表', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:20', '2016-09-23 03:19:26'),
(10145, 11, '缓存功能-编辑', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:21', '2016-09-23 03:19:52'),
(10146, 12, '缓存功能-移除', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:34', '2016-09-23 03:20:09'),
(10147, 13, '缓存功能-全部移除', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:35', '2016-09-23 03:20:26'),
(10148, 14, '缓存功能-加入场景', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:36', '2016-09-23 03:20:42'),
(10149, 15, '缓存功能-全部加入场景', '正常', 10019, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:37', '2016-09-23 03:20:59'),
(10150, 1, '功能用例列表（库）', '正常', 10020, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:37', '2016-09-23 03:26:12'),
(10151, 2, '绑定用例', '正常', 10020, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:38', '2016-09-23 03:24:27'),
(10152, 3, '用例-添加', '正常', 10020, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:41', '2016-09-23 03:24:48'),
(10153, 4, '用例-编辑', '正常', 10020, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:42', '2016-09-23 03:24:58'),
(10154, 5, '用例-数据', '正常', 10020, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:43', '2016-09-23 03:25:31'),
(10155, 6, '场景用例列表', '正常', 10020, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:44', '2016-09-23 03:26:28'),
(10156, 7, '场景用例-移除', '正常', 10020, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:44', '2016-09-23 03:27:01'),
(10157, 1, '场景模板数据列表', '正常', 10021, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:45', '2016-09-23 03:29:59'),
(10158, 2, '场景模板数据-维护', '正常', 10021, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:46', '2016-09-23 03:30:15'),
(10159, 3, '模板状态快速标记', '正常', 10021, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:47', '2016-09-23 03:30:56'),
(10160, 4, '场景数据-列表', '正常', 10021, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:48', '2016-09-23 03:32:06'),
(10161, 5, '场景数据-锁定', '正常', 10021, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:50', '2016-09-23 03:32:20'),
(10162, 6, '场景数据-模板同步', '正常', 10021, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:51', '2016-09-23 03:32:41'),
(10163, 7, '场景数据-维护', '正常', 10021, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:53', '2016-09-23 03:32:53'),
(10164, 1, '功能控件列表', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:12:53', '2016-11-07 06:16:59'),
(10165, 2, '切换功能', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:12:54', '2016-11-07 06:17:42'),
(10166, 3, '控件-添加', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:12:56', '2016-11-07 06:19:26'),
(10167, 4, '控件-维护', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:12:57', '2016-11-07 06:20:23'),
(10168, 5, '控件状态快速标记', '正常', 10023, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:12:58', '2016-09-23 03:37:51'),
(10169, 6, '功能控件状态维护', '正常', 10023, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:01', '2016-09-23 03:38:08'),
(10170, 7, '项目控件展开列表', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:13:09', '2016-11-07 06:22:50'),
(10171, 9, '控件展开列表-维护', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:13:17', '2016-11-07 06:24:07'),
(10172, 1, '项目-用例库列表', '正常', 10022, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:18', '2016-09-23 03:39:51'),
(10173, 2, '切换项目', '正常', 10022, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:19', '2016-09-23 03:40:21'),
(10174, 3, '查询-按级别', '正常', 10022, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:21', '2016-09-23 03:40:35'),
(10175, 6, '用例-导出', '正常', 10022, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:23', '2016-09-23 03:41:23'),
(10176, 4, '用例-添加', '正常', 10022, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:24', '2016-09-23 03:41:29'),
(10177, 5, '用例-维护', '正常', 10022, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:25', '2016-09-23 03:41:35'),
(10178, 1, '列队场景列表', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:26', '2016-09-23 04:20:10'),
(10179, 2, '导入场景数据', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:27', '2016-09-23 04:20:31'),
(10180, 3, '查看场景数据-入口', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:28', '2016-09-23 04:20:57'),
(10181, 4, '执行数据-清除', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:29', '2016-09-23 06:09:50'),
(10182, 6, '执行测试', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:30', '2016-09-23 04:24:20'),
(10183, 7, '停止测试', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:40', '2016-09-23 04:24:29'),
(10184, 8, '暂停测试', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:41', '2016-09-23 04:24:35'),
(10185, 1, '场景-执行数据列表', '正常', 10027, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:42', '2016-09-23 04:23:15'),
(10186, 2, '执行数据维护', '正常', 10027, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:43', '2016-09-23 04:23:27'),
(10187, 5, '选择执行场景', '正常', 10026, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:44', '2016-09-23 04:24:13'),
(10188, 1, '阶段执行人员列表', '正常', 10034, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:44', '2016-09-23 04:25:00'),
(10189, 2, '执行人员-从列表选择', '正常', 10034, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:45', '2016-09-24 07:08:23'),
(10190, 3, '执行人员-编辑', '正常', 10034, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:46', '2016-09-23 05:02:35'),
(10191, 4, '人员列队-入口', '正常', 10034, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:49', '2016-09-23 04:25:56'),
(10192, 11, '项目-功能点-导出', '正常', 10008, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:50', '2016-09-23 05:33:12'),
(10193, 6, '测试范围-导出', '正常', 10013, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:51', '2016-09-23 05:34:56'),
(10194, 8, '数据模板-入口', '正常', 10025, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:52', '2016-09-23 06:08:19'),
(10195, 8, '切换项目', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:13:53', '2016-11-07 06:23:06'),
(10196, 10, '展开-控件状态快速标记', '正常', 10023, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:55', '2016-09-23 06:19:54'),
(10197, 11, '展开-功能控件状态快速标记', '正常', 10023, 47, '失败', '腰立辉', '腰立辉', '2016-10-25 01:13:56', '2016-11-07 06:24:55'),
(10198, 6, 'M人员-入口（手工）', '正常', 10028, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:13:58', '2016-09-25 05:36:07'),
(10199, 5, '测试人员列表', '正常', 10034, 47, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:01', '2016-09-24 07:08:09'),
(10201, 1, '车型报价员配置列表', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:02', '2016-09-26 02:24:45'),
(10202, 2, '查询-按城市', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:03', '2016-09-26 02:24:59'),
(10203, 3, '查询-按买顾配置状态', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:05', '2016-09-26 02:25:10'),
(10204, 4, '查询-按电销配置状态', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:07', '2016-09-26 02:25:22'),
(10205, 5, '查询-按品牌车型', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:08', '2016-09-26 02:25:51'),
(10206, 6, '新增车型', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:09', '2016-09-26 02:26:05'),
(10207, 7, '批量配置买顾报价员', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:10', '2016-09-26 02:27:04'),
(10208, 8, '批量配置电销报价员', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:11', '2016-09-26 02:27:22'),
(10209, 9, '编辑车型', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:14', '2016-09-26 02:28:45'),
(10210, 10, '修改买顾', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:15', '2016-09-26 02:28:53'),
(10211, 11, '修改电销', '正常', 10067, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:16', '2016-09-26 02:29:03'),
(10212, 1, '城市买顾价格收集表', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:17', '2016-09-26 02:38:39'),
(10213, 2, '查询-按城市', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:18', '2016-09-26 02:38:48'),
(10214, 3, '查询-按买顾', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:14:19', '2016-09-26 02:38:58'),
(10215, 4, '明细-买顾入口', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:43', '2016-09-26 02:39:22'),
(10216, 5, '明细-未报价车款入口', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:41', '2016-09-26 02:39:49'),
(10217, 6, '明细-价格过期车款入口', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:40', '2016-09-26 02:40:03'),
(10218, 7, '明细-查询按选择城市', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:39', '2016-09-26 02:40:41'),
(10219, 8, '明细-查询按车型车款', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:37', '2016-09-26 02:40:50'),
(10220, 9, '明细-查询按价格状态', '正常', 10071, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:36', '2016-09-26 02:40:59'),
(10221, 1, '车型价格列表', '正常', 10069, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:34', '2016-09-26 02:45:23'),
(10222, 2, '查询-按选择城市', '正常', 10069, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:32', '2016-09-26 02:46:02'),
(10223, 3, '查询-按价格状态', '正常', 10069, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:31', '2016-09-26 02:46:12'),
(10224, 4, '查询-按车型车款', '正常', 10069, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:30', '2016-09-26 03:06:15'),
(10225, 5, '添加价格信息', '正常', 10069, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:28', '2016-09-26 03:06:27'),
(10226, 6, '设置显示列', '正常', 10069, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:27', '2016-09-26 03:06:56'),
(10227, 1, '价格即将过期-车款列表', '正常', 10070, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:26', '2016-09-26 05:32:18'),
(10228, 2, '提交报价入口', '正常', 10070, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:25', '2016-09-26 05:32:48'),
(10229, 1, '价格新增车款-车款列表', '正常', 10072, 46, '未测试', '腰立辉', '腰立辉', '2016-10-28 03:52:34', '2016-09-26 05:33:37'),
(10230, 2, '提交报价-入口', '正常', 10072, 46, '未测试', '腰立辉', '腰立辉', '2016-10-28 03:52:34', '2016-09-26 05:33:50'),
(10231, 1, '报价列表', '正常', 10073, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:22', '2016-09-26 05:41:17'),
(10232, 2, '查询-按价格状态', '正常', 10073, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:21', '2016-09-26 05:41:36'),
(10233, 3, '查询-按车型车款', '正常', 10073, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:20', '2016-09-26 05:41:46'),
(10234, 4, '添加价格信息', '正常', 10073, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:19', '2016-09-26 05:42:03'),
(10235, 5, '设置显示列', '正常', 10073, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:18', '2016-09-26 05:42:17'),
(10236, 6, '价格修改', '正常', 10073, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:09', '2016-09-26 05:42:35'),
(10237, 1, '待确定价格-车款列表', '正常', 10074, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:08', '2016-09-26 05:50:35'),
(10238, 2, '确认价格', '正常', 10074, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:07', '2016-09-26 05:51:00'),
(10239, 1, '显示报价城市', '正常', 10075, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:06', '2016-09-26 05:52:59'),
(10240, 2, '选择品牌车型报价（NO车款）', '正常', 10075, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:05', '2016-09-26 05:56:29'),
(10241, 3, '选择车款报价', '正常', 10075, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:04', '2016-09-26 05:53:45'),
(10242, 4, '选择优惠金额报价', '正常', 10075, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:03', '2016-09-26 05:54:27'),
(10243, 5, '选择优惠百分比报价', '正常', 10075, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:02', '2016-09-26 05:54:42'),
(10244, 6, '保存报价', '正常', 10075, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:01', '2016-09-26 05:55:52'),
(10245, 7, '保存并创建下一条', '正常', 10075, 46, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:10:00', '2016-09-26 05:56:13'),
(10413, 6, ' 在线咨询', '正常', 10163, 107, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:01:05', '2016-12-05 10:01:05'),
(10412, 5, ' 电话咨询', '正常', 10163, 107, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:00:56', '2016-12-05 10:00:56'),
(10408, 1, ' 管家列表', '正常', 10163, 107, '未测试', '腰立辉', '腰立辉', '2016-12-05 09:59:46', '2016-12-05 09:59:46'),
(10409, 2, ' 管家详情', '正常', 10163, 107, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:00:02', '2016-12-05 10:00:02'),
(10410, 3, ' 绑定管家', '正常', 10163, 107, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:00:28', '2016-12-05 10:00:28'),
(10411, 4, ' 微信关注', '正常', 10163, 107, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:00:38', '2016-12-05 10:00:38'),
(10419, 1, ' 公司介绍', '正常', 10175, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 10:04:50', '2016-12-22 03:48:00'),
(10414, 1, ' 我的管家信息', '正常', 10174, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:03:30', '2016-12-22 06:26:48'),
(10415, 2, '点赞', '正常', 10174, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:03:40', '2016-12-22 06:26:58'),
(10416, 3, ' 评价', '正常', 10174, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:03:47', '2016-12-22 06:27:07'),
(10417, 4, ' 分享管家名片', '正常', 10174, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:03:57', '2016-12-22 06:27:14'),
(10418, 5, ' 解除绑定', '正常', 10174, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:04:12', '2016-12-22 06:27:21'),
(10420, 2, ' 重点项目', '正常', 10175, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:05:01', '2016-12-21 08:37:41'),
(10421, 3, ' 名片信息', '正常', 10175, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 10:05:12', '2016-12-22 03:48:06'),
(10422, 4, ' 公司名片分享', '正常', 10175, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 10:05:33', '2016-12-22 03:48:13'),
(10423, 5, ' 报名', '正常', 10175, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 10:05:43', '2016-12-22 03:48:18'),
(10266, 1, '登录', '正常', 10106, 0, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:31', '2016-09-27 09:16:17'),
(10267, 2, '记住密码', '正常', 10106, 0, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:30', '2016-09-27 09:16:24'),
(10268, 3, '个人信息', '正常', 10106, 0, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:29', '2016-09-27 09:16:37'),
(10269, 4, '修改个人信息', '正常', 10106, 0, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:28', '2016-09-27 09:16:44'),
(10270, 5, '退出', '正常', 10106, 0, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:26', '2016-09-27 09:16:53'),
(10271, 1, '权限管理-入口', '正常', 10107, 0, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:27', '2016-09-27 09:17:36'),
(10272, 2, '惠买车电商CRM-入口', '正常', 10107, 0, '未测试', '腰立辉', '腰立辉', '2016-10-25 01:09:25', '2016-09-27 09:18:05'),
(10273, 1, '数量统计', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:31:12', '2016-10-25 02:31:12'),
(10274, 2, '查询-按客户姓名', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:31:30', '2016-10-25 02:31:30'),
(10275, 3, '查询-按客户手机', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:31:37', '2016-10-25 02:31:37'),
(10276, 4, '查询-按待办类型', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:32:03', '2016-10-25 02:32:03'),
(10277, 5, '查询-按待办来源', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:32:14', '2016-10-25 02:32:14'),
(10278, 6, '查询-按客户级别', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:32:22', '2016-10-25 02:32:22'),
(10279, 7, '查询-按跟进阶段', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:32:41', '2016-10-25 02:32:41'),
(10280, 8, '查询-按是否成交', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:32:50', '2016-10-25 02:32:50'),
(10281, 9, '查询-按是否置换', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:33:55', '2016-10-25 02:33:55'),
(10282, 10, '查询-按购车城市', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:34:03', '2016-10-25 02:34:03'),
(10283, 11, '查询-按客户来源', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:34:10', '2016-10-25 02:34:10'),
(10284, 12, '上牌城市', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:34:18', '2016-10-25 02:34:18'),
(10285, 13, '按手机归属地', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:34:34', '2016-10-25 02:34:34'),
(10286, 14, '查询-按待办时间', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:34:45', '2016-10-25 02:34:45'),
(10287, 15, '查询-按意向车型', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:34:55', '2016-10-25 02:34:55'),
(10288, 16, '查询-按客户标签', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:35:05', '2016-10-25 02:35:05'),
(10289, 17, '今日待办列表', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:35:28', '2016-10-25 02:35:28'),
(10290, 18, '添加客户入口', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:36:34', '2016-10-25 02:36:34'),
(10291, 19, '查看外出计划', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:36:14', '2016-10-25 02:36:14'),
(10292, 20, '客户跟进入口', '正常', 10051, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:36:49', '2016-10-25 02:36:49'),
(10293, 1, '查询', '正常', 10108, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:38:38', '2016-10-25 02:38:38'),
(10294, 2, '添加客户入口', '正常', 10108, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 02:38:46', '2016-10-25 02:38:46'),
(10299, 1, '查询', '正常', 10109, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:39:34', '2016-10-25 05:39:34'),
(10296, 4, '查看外出计划入口', '正常', 10108, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:38:12', '2016-10-25 05:38:12'),
(10297, 5, '过期待办列表', '正常', 10108, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:38:26', '2016-10-25 05:38:26'),
(10298, 6, '跟进入口', '正常', 10108, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:38:39', '2016-10-25 05:38:39'),
(10300, 2, '添加客户入口', '正常', 10109, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:39:41', '2016-10-25 05:39:41'),
(10301, 3, '查看外出计划入口', '正常', 10109, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:39:55', '2016-10-25 05:39:55'),
(10302, 4, '全部待办列表', '正常', 10109, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:40:13', '2016-10-25 05:40:13'),
(10303, 5, '跟进入口', '正常', 10109, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:41:24', '2016-10-25 05:41:24'),
(10304, 0, '待办数统计', '正常', 10109, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:42:40', '2016-10-25 05:42:40'),
(10305, 0, '待办数统计', '正常', 10108, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:43:06', '2016-10-25 05:43:06'),
(10306, 1, '待办数统计', '正常', 10110, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:48:16', '2016-10-25 05:48:16'),
(10307, 2, '金融待办列表', '正常', 10110, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:48:33', '2016-10-25 05:48:33'),
(10308, 3, '跟进入口', '正常', 10110, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:48:47', '2016-10-25 05:48:47'),
(10309, 1, '客户数统计', '正常', 10111, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:49:21', '2016-10-25 05:49:21'),
(10310, 2, '常规查询', '正常', 10111, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:49:36', '2016-10-25 05:49:36'),
(10311, 3, '查询-按订单类型', '正常', 10111, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:49:53', '2016-10-25 05:49:53'),
(10312, 4, '客户列表', '正常', 10111, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:50:00', '2016-10-25 05:50:00'),
(10313, 5, '添加客户入口', '正常', 10111, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:50:09', '2016-10-25 05:50:09'),
(10314, 6, '赠送优惠券', '正常', 10111, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:50:28', '2016-10-25 05:50:28'),
(10315, 7, '查看全部金融产品', '正常', 10111, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:50:43', '2016-10-25 05:50:43'),
(10316, 1, '客户统计数', '正常', 10112, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:51:25', '2016-10-25 05:51:25'),
(10317, 2, '常规查询', '正常', 10112, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 05:51:37', '2016-10-25 05:51:37'),
(10318, 3, '查询-按订单类型', '正常', 10112, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 06:00:48', '2016-10-25 06:00:48'),
(10319, 4, '客户列表', '正常', 10112, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 06:00:59', '2016-10-25 06:00:59'),
(10320, 1, '号码查询', '正常', 10113, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:10:05', '2016-10-25 07:10:05'),
(10321, 2, '添加客户', '正常', 10113, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:10:20', '2016-10-25 07:10:20'),
(10322, 1, '外出计划', '正常', 10114, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:11:11', '2016-10-25 07:11:11'),
(10323, 1, '客户信息', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-28 07:20:10', '2016-10-25 07:12:32'),
(10324, 2, '转移', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:12:39', '2016-10-25 07:12:39'),
(10325, 3, '战败', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:12:45', '2016-10-25 07:12:45'),
(10326, 4, '创建待办', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:12:54', '2016-10-25 07:12:54'),
(10327, 5, '免打扰', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:13:04', '2016-10-25 07:13:04'),
(10328, 6, '推送商家入口', '正常', 10115, 51, '通过', '腰立辉', '腰立辉', '2016-10-25 09:35:12', '2016-10-25 09:35:12'),
(10329, 7, '外出计划入口', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:13:21', '2016-10-25 07:13:21'),
(10330, 8, '订单列表', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:13:40', '2016-10-25 07:13:40'),
(10331, 9, '查看已绑定礼包', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:14:08', '2016-10-25 07:14:08'),
(10332, 10, '查看金融产品', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:14:21', '2016-10-25 07:14:21'),
(10333, 11, '跟进待办', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:14:36', '2016-10-25 07:14:36'),
(10334, 12, '客户基本信息', '正常', 10115, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 07:14:48', '2016-10-25 07:14:48'),
(10335, 1, '客户信息', '正常', 10116, 51, '通过', '腰立辉', '腰立辉', '2016-10-25 09:35:23', '2016-10-25 09:35:23'),
(10336, 2, '客户姓名调整信息页', '正常', 10116, 51, '通过', '腰立辉', '腰立辉', '2016-10-25 09:35:27', '2016-10-25 09:35:27'),
(10337, 3, '创建买顾订单', '正常', 10116, 80, '通过', '腰立辉', '腰立辉', '2016-10-26 02:04:11', '2016-11-02 02:10:10'),
(10338, 1, '查询-按客户姓名', '正常', 10052, 50, '失败', '腰立辉', '腰立辉', '2016-10-25 08:37:30', '2016-11-02 01:42:52'),
(10339, 2, '查询-按客户手机', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:37:46', '2016-10-25 08:37:46'),
(10340, 3, '查询-按订单编号', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:38:06', '2016-10-25 08:38:06'),
(10341, 4, '查询-按媒体单号', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:38:24', '2016-10-25 08:38:24'),
(10342, 5, '查询-按订单状态', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:38:40', '2016-10-25 08:38:40'),
(10343, 6, '查询-按订单来源', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:38:51', '2016-10-25 08:38:51'),
(10344, 7, '查询-按订单车型', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:39:09', '2016-10-25 08:39:09'),
(10345, 8, '查询-按下单时间', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:39:19', '2016-10-25 08:39:19'),
(10346, 9, '订单列表', '正常', 10052, 51, '失败', '腰立辉', '腰立辉', '2016-10-25 09:35:41', '2016-11-02 01:43:06'),
(10347, 10, '【客户手机号】客户跟进', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:40:12', '2016-10-25 08:40:12'),
(10348, 11, '详情', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:40:24', '2016-10-25 08:40:24'),
(10349, 12, '赠送随手礼', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:40:38', '2016-10-25 08:40:38'),
(10350, 13, '跟进', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:40:49', '2016-10-25 08:40:49'),
(10351, 14, '查看金融产品', '正常', 10052, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:40:58', '2016-10-25 08:40:58'),
(10352, 1, '查询-按客户姓名', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:45:10', '2016-10-25 08:45:10'),
(10353, 2, '查询-按客户手机号', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:45:19', '2016-10-25 08:45:19'),
(10354, 3, '查询-按车主姓名', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:45:32', '2016-10-25 08:45:32'),
(10355, 4, '查询-按订单编号', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:45:44', '2016-10-25 08:45:44'),
(10356, 5, '查询-按订单来源', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:45:54', '2016-10-25 08:45:54'),
(10357, 6, '查询-按订单品牌', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:46:05', '2016-10-25 08:46:05'),
(10358, 7, '查询-按订单车型', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:46:16', '2016-10-25 08:46:16'),
(10359, 8, '查询-按信息状态', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:46:24', '2016-10-25 08:46:24'),
(10360, 9, '查询-按买顾大区', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:46:33', '2016-10-25 08:46:33'),
(10361, 10, '查询-按买顾城市', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:46:41', '2016-10-25 08:46:41'),
(10362, 11, '查询-按买顾姓名', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:46:52', '2016-10-25 08:46:52'),
(10363, 12, '查询-按成交状态', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:47:04', '2016-10-25 08:47:04'),
(10364, 13, '查询-按成交时间', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:47:21', '2016-10-25 08:47:21'),
(10365, 14, '成交订单列表', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:47:33', '2016-10-25 08:47:33'),
(10366, 15, '【订单ID】订单详情', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:47:48', '2016-10-25 08:47:48'),
(10367, 16, '【客户手机号】跟进', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:48:11', '2016-10-25 08:48:11'),
(10368, 17, '填写成交信息', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:48:26', '2016-10-25 08:48:26'),
(10369, 18, '转顾问', '正常', 10117, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:48:32', '2016-10-25 08:48:32'),
(10370, 1, '查询-按借贷人姓名', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:55:44', '2016-10-25 08:55:44'),
(10371, 2, '查询-按借贷人手机号', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:55:58', '2016-10-25 08:55:58'),
(10372, 3, '查询-按融资单ID', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:56:15', '2016-10-25 08:56:15'),
(10373, 4, '查询-按状态', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:56:24', '2016-10-25 08:56:24'),
(10374, 5, '查询-按融资单车型', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:56:38', '2016-10-25 08:56:38'),
(10375, 6, '查询-按下单时间', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:56:46', '2016-10-25 08:56:46'),
(10376, 7, '金融订单列表', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:57:23', '2016-10-25 08:57:23'),
(10377, 8, '【关联订单】', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:57:37', '2016-10-25 08:57:37'),
(10378, 9, '详情', '正常', 10118, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:57:46', '2016-10-25 08:57:46'),
(10379, 1, '查询-按借贷人姓名', '正常', 10119, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:58:17', '2016-10-25 08:58:17'),
(10380, 2, '查询-按借贷人手机号', '正常', 10119, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:58:30', '2016-10-25 08:58:30'),
(10381, 3, '查询-按维保单ID', '正常', 10119, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:58:42', '2016-10-25 08:58:42'),
(10382, 4, '查询-按维保单状态', '正常', 10119, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 08:58:52', '2016-10-25 08:58:52'),
(10383, 5, '查询-按维保单车型', '正常', 10119, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:00:18', '2016-10-25 09:00:18'),
(10384, 6, '查询-按下单时间', '正常', 10119, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:00:26', '2016-10-25 09:00:26'),
(10385, 7, '维保订单列表', '正常', 10119, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:00:40', '2016-10-25 09:00:40'),
(10386, 1, '待确认订单统计', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:18:04', '2016-10-25 09:18:04'),
(10387, 2, '待结算定金汇总', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:18:24', '2016-10-25 09:18:24'),
(10388, 3, '【立即结算】', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:18:32', '2016-10-25 09:18:32'),
(10389, 4, '查询-按客户手机', '正常', 10124, 50, '失败', '腰立辉', '腰立辉', '2016-10-25 09:18:49', '2016-11-02 01:42:25'),
(10390, 5, '查询-按订单类型', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:19:07', '2016-10-25 09:19:07'),
(10391, 6, '查询-按定金状态', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:19:17', '2016-10-25 09:19:17'),
(10392, 7, '查询-按订单编号', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:19:29', '2016-10-25 09:19:29'),
(10393, 8, '查询-按订单来源', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:19:37', '2016-10-25 09:19:37'),
(10394, 9, '查询-按订单状态', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:20:05', '2016-10-25 09:20:05'),
(10395, 10, '查询-按顾问', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:20:15', '2016-10-25 09:20:15'),
(10396, 11, '订单列表', '正常', 10124, 50, '失败', '腰立辉', '腰立辉', '2016-10-25 09:20:26', '2016-11-02 01:42:49'),
(10397, 12, '导出列表', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:20:32', '2016-10-25 09:20:32'),
(10398, 13, '确认成交', '正常', 10124, 50, '失败', '腰立辉', '腰立辉', '2016-10-25 09:20:44', '2016-11-02 01:42:02'),
(10399, 14, '取消交易', '正常', 10124, 50, '失败', '腰立辉', '腰立辉', '2016-10-25 09:20:51', '2016-11-02 01:42:47'),
(10400, 15, '详情', '正常', 10124, 50, '未测试', '腰立辉', '腰立辉', '2016-10-25 09:20:59', '2016-10-25 09:20:59'),
(10401, 1, ' 简介', '正常', 10173, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 08:47:48', '2016-12-22 03:47:25'),
(10402, 3, ' 获取验证码', '正常', 10173, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 08:48:03', '2016-12-22 03:47:38'),
(10403, 4, ' 登录', '正常', 10173, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 08:48:12', '2016-12-22 03:47:43'),
(10404, 5, ' 提交信息', '正常', 10173, 107, '失败', '腰立辉', '腰立辉', '2016-12-05 08:48:41', '2016-12-22 03:45:09'),
(10405, 6, ' 查询合作状态', '正常', 10173, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 08:49:29', '2016-12-22 03:47:49'),
(10406, 7, ' 驳回后重提', '正常', 10173, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 08:49:42', '2016-12-22 03:47:54'),
(10424, 7, ' 数据统计', '正常', 10175, 107, '通过', '腰立辉', '腰立辉', '2016-12-05 10:06:02', '2016-12-22 03:48:30'),
(10425, 1, ' 管家新增', '正常', 10181, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:25:13', '2016-12-22 03:31:17'),
(10426, 2, ' 管家编辑', '正常', 10181, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:25:23', '2016-12-22 03:32:14'),
(10427, 3, ' 管家评价', '正常', 10181, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:25:34', '2016-12-22 03:32:22'),
(10428, 4, ' 聘用情况', '正常', 10181, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:25:42', '2016-12-22 03:32:27'),
(10429, 5, ' 管家详情', '正常', 10181, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:26:15', '2016-12-22 03:32:31'),
(10430, 6, ' 服务用户（列表）', '正常', 10181, 116, '未测试', '腰立辉', '腰立辉', '2016-12-05 10:26:40', '2016-12-22 03:32:38'),
(10431, 1, ' 登录', '正常', 10152, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:30:17', '2016-12-06 02:30:17'),
(10432, 2, ' 注销', '正常', 10152, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:30:26', '2016-12-06 02:30:26'),
(10433, 3, ' 修改密码', '正常', 10152, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:30:52', '2016-12-06 02:30:52'),
(10434, 4, ' 切换平台', '正常', 10152, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:31:09', '2016-12-06 02:31:09'),
(10435, 5, ' 菜单的收齐/展开', '正常', 10152, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:36:30', '2016-12-06 02:36:30'),
(10436, 1, ' New Feedbacks', '正常', 10191, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:36:57', '2016-12-06 02:36:57'),
(10437, 2, ' 新订单', '正常', 10191, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:37:21', '2016-12-06 02:37:21'),
(10438, 3, ' Brand Popularity', '正常', 10191, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:37:57', '2016-12-06 02:37:57'),
(10439, 4, ' 销售额', '正常', 10191, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:38:05', '2016-12-06 02:38:05'),
(10440, 5, ' 访问量', '正常', 10191, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:38:18', '2016-12-06 02:38:18'),
(10441, 6, ' Actives', '正常', 10191, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:38:40', '2016-12-06 02:38:40'),
(10442, 7, ' Server Load', '正常', 10191, 109, '未测试', '腰立辉', '腰立辉', '2016-12-06 02:38:57', '2016-12-06 02:38:57'),
(10443, 1, ' 项目列表', '正常', 10192, NULL, '未测试', '腰立辉', '腰立辉', '2016-12-06 03:54:39', '2016-12-06 04:00:28'),
(10444, 2, ' 展开/收起详情', '正常', 10192, NULL, '未测试', '腰立辉', '腰立辉', '2016-12-06 03:54:59', '2016-12-06 04:00:30'),
(10445, 3, ' 选手列表', '正常', 10201, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 02:07:43', '2016-12-13 05:01:29'),
(10446, 4, ' 投票', '正常', 10201, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 02:08:00', '2016-12-13 05:01:52'),
(10447, 2, ' 拨打400电话', '正常', 10173, 107, '通过', '腰立辉', '腰立辉', '2016-12-12 07:45:39', '2016-12-22 03:47:33'),
(10448, 1, ' 规则介绍', '正常', 10201, 110, '失败', '腰立辉', '腰立辉', '2016-12-12 12:31:40', '2016-12-13 05:03:38'),
(10449, 2, ' 背景音乐', '正常', 10201, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 12:31:57', '2016-12-13 05:01:18'),
(10450, 5, ' 播放选手歌曲', '正常', 10201, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 12:32:37', '2016-12-13 05:02:02'),
(10451, 1, ' 首页', '正常', 10202, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 12:34:05', '2016-12-13 08:48:07'),
(10452, 2, ' 点击（首页）进入', '正常', 10202, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 12:34:22', '2016-12-13 08:48:31'),
(10453, 3, ' 项目列表', '正常', 10202, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 12:34:36', '2016-12-13 08:48:56'),
(10454, 5, ' 项目详情', '正常', 10202, 110, '未测试', '腰立辉', '腰立辉', '2016-12-12 12:35:18', '2016-12-13 03:55:28'),
(10455, 6, ' 详情视频', '正常', 10202, 110, '失败', '腰立辉', '腰立辉', '2016-12-12 12:35:32', '2016-12-13 08:40:42'),
(10456, 4, ' 项目投票', '正常', 10202, 110, '通过', '腰立辉', '腰立辉', '2016-12-12 12:35:46', '2016-12-13 08:56:16'),
(10457, 7, ' 官网链接', '正常', 10202, 110, '未测试', '腰立辉', '腰立辉', '2016-12-12 12:36:05', '2016-12-13 03:55:51'),
(10458, 1, ' 查询-按地区', '正常', 10203, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:41:19', '2016-12-22 03:37:35'),
(10459, 2, ' 查询-按合作方式', '正常', 10203, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:41:50', '2016-12-22 03:37:39'),
(10460, 3, ' 查询-按状态', '正常', 10203, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:42:31', '2016-12-22 03:37:42'),
(10461, 4, ' 查询-按联系方式', '正常', 10203, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:42:44', '2016-12-22 03:37:53'),
(10462, 5, ' 组合查询', '正常', 10203, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:42:58', '2016-12-22 03:37:57'),
(10463, 6, '商务合作列表', '正常', 10203, 107, '失败', '腰立辉', '腰立辉', '2016-12-14 03:43:11', '2016-12-22 03:29:30'),
(10464, 7, '编辑/ 查看进度入口', '正常', 10203, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:43:33', '2016-12-22 03:38:02'),
(10465, 1, ' 申请资料信息', '正常', 10204, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:46:24', '2016-12-22 03:38:08'),
(10466, 2, ' 洽谈进度维护', '正常', 10204, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:46:49', '2016-12-22 03:38:18'),
(10467, 3, ' 洽谈进度历史', '正常', 10204, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:47:07', '2016-12-22 03:38:24'),
(10468, 4, ' 处理结果', '正常', 10204, 107, '通过', '腰立辉', '腰立辉', '2016-12-14 03:47:19', '2016-12-22 03:38:28'),
(10469, 6, ' 消息反馈（移动管家名片）', '正常', 10175, 107, '通过', '腰立辉', '腰立辉', '2016-12-15 05:56:25', '2016-12-22 03:48:25'),
(10470, 1, ' 获客列表', '正常', 10224, 107, '通过', '腰立辉', '腰立辉', '2016-12-19 07:44:24', '2016-12-22 03:46:53'),
(10471, 2, ' 查询筛选', '正常', 10224, 107, '失败', '腰立辉', '腰立辉', '2016-12-19 07:44:35', '2016-12-22 03:42:55'),
(10472, 1, ' 名片流量列表', '正常', 10225, 107, '通过', '腰立辉', '腰立辉', '2016-12-19 07:45:02', '2016-12-22 03:46:58'),
(10473, 2, ' 转化率计算', '正常', 10225, 107, '通过', '腰立辉', '腰立辉', '2016-12-19 07:45:11', '2016-12-22 03:47:03'),
(10474, 1, '微信号列表（打开过且未设置）', '正常', 10226, 107, '失败', '腰立辉', '腰立辉', '2016-12-19 07:45:59', '2016-12-22 03:43:47'),
(10475, 2, ' 设置-入口', '正常', 10226, 107, '通过', '腰立辉', '腰立辉', '2016-12-19 07:46:10', '2016-12-22 03:47:08'),
(10476, 3, ' 设置-选择用户', '正常', 10226, 107, '失败', '腰立辉', '腰立辉', '2016-12-19 07:47:00', '2016-12-22 03:44:18'),
(10477, 4, ' 设置-绑定', '正常', 10226, 107, '通过', '腰立辉', '腰立辉', '2016-12-19 07:47:11', '2016-12-22 03:47:12'),
(10478, 1, ' 登录', '正常', 10141, 108, '失败', '腰立辉', '腰立辉', '2016-12-21 05:11:58', '2016-12-22 09:04:53'),
(10479, 2, ' 注销', '正常', 10141, 108, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:12:06', '2016-12-21 07:23:08'),
(10480, 3, ' 修改密码', '正常', 10141, 116, '通过', '腰立辉', '腰立辉', '2016-12-21 05:12:14', '2016-12-21 10:20:33'),
(10481, 4, ' 切换平台', '正常', 10141, 108, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:12:28', '2016-12-21 07:23:19'),
(10482, 1, ' 查询-按国家地区', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:22:49', '2016-12-21 05:22:49'),
(10483, 2, ' 查询-按项目类型', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:23:05', '2016-12-21 05:23:05'),
(10484, 3, ' 查询-按项目状态', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:23:36', '2016-12-21 05:23:36'),
(10485, 4, ' 快速查询', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:24:32', '2016-12-21 05:24:32'),
(10486, 5, ' 查询-上线日期范围', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:24:49', '2016-12-21 05:24:49'),
(10487, 6, ' 组合查询', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:25:03', '2016-12-21 05:25:03'),
(10488, 7, ' 项目列表', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:25:19', '2016-12-21 05:25:19'),
(10489, 8, '项目-新增', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:25:32', '2016-12-21 05:25:32'),
(10490, 9, ' 扩展推荐', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:25:47', '2016-12-21 05:25:47'),
(10491, 10, ' 项目-编辑', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:26:05', '2016-12-21 05:26:05'),
(10492, 11, ' 项目-暂停', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:26:13', '2016-12-21 05:26:13'),
(10493, 12, ' 项目-发布（在编辑页面里）', '正常', 10176, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:27:13', '2016-12-21 05:27:13'),
(10494, 1, ' 办理流程列表', '正常', 10227, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:30:31', '2016-12-21 05:30:31'),
(10495, 2, ' 办理流程-新增', '正常', 10227, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:30:54', '2016-12-21 05:30:54'),
(10496, 3, ' 办理流程-导入', '正常', 10227, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:31:06', '2016-12-21 05:31:06'),
(10497, 4, ' 上移/下移/置顶', '正常', 10227, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:32:42', '2016-12-21 05:32:42'),
(10498, 5, ' 办理流程-编辑', '正常', 10227, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:33:00', '2016-12-21 05:33:00'),
(10499, 6, ' 办理流程-删除', '正常', 10227, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:33:13', '2016-12-21 05:33:13'),
(10500, 1, ' 费用详情列表', '正常', 10228, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:34:01', '2016-12-21 05:34:01'),
(10501, 2, ' 费用详情-新增', '正常', 10228, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:34:14', '2016-12-21 05:34:14'),
(10502, 3, ' 费用详情-导入', '正常', 10228, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:34:27', '2016-12-21 05:34:27'),
(10503, 4, ' 上移/下移/置顶', '正常', 10228, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:34:46', '2016-12-21 05:34:46'),
(10504, 5, ' 费用详情-编辑', '正常', 10228, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:34:58', '2016-12-21 05:34:58'),
(10505, 6, ' 费用详情-删除', '正常', 10228, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:35:08', '2016-12-21 05:35:08'),
(10506, 1, ' 材料清单列表', '正常', 10229, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:37:05', '2016-12-21 05:37:05'),
(10507, 2, ' 材料-新增', '正常', 10229, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:37:20', '2016-12-21 05:37:20'),
(10508, 3, ' 材料-导入', '正常', 10229, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:37:28', '2016-12-21 05:37:28'),
(10509, 4, ' 上移/下移/置顶', '正常', 10229, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:37:38', '2016-12-21 05:37:38'),
(10510, 5, ' 材料-样例', '正常', 10229, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:37:58', '2016-12-21 05:37:58');
INSERT INTO `tp_func` (`id`, `sn`, `func`, `state`, `pathid`, `fproid`, `result`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10511, 6, ' 材料-编辑', '正常', 10229, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:38:08', '2016-12-21 05:38:08'),
(10512, 7, ' 材料-删除', '正常', 10229, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:38:16', '2016-12-21 05:38:16'),
(10513, 1, ' 图片-列表', '正常', 10230, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:40:56', '2016-12-21 05:40:56'),
(10514, 2, ' 项目图片-新增', '正常', 10230, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:41:45', '2016-12-21 06:00:17'),
(10515, 3, ' 上移/下移/置顶', '正常', 10230, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:41:54', '2016-12-21 05:41:54'),
(10516, 4, ' 项目图片-编辑', '正常', 10230, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:42:08', '2016-12-21 05:42:08'),
(10517, 5, ' 项目图片-删除', '正常', 10230, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 05:42:24', '2016-12-21 05:42:24'),
(10518, 1, ' 问题-新增', '正常', 10177, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:03:22', '2016-12-21 06:03:22'),
(10519, 2, ' 问题列表', '正常', 10177, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:03:29', '2016-12-21 06:03:29'),
(10520, 3, ' 问题编辑', '正常', 10177, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:03:36', '2016-12-21 06:03:36'),
(10521, 4, ' 问题-删除', '正常', 10177, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:03:52', '2016-12-21 06:03:52'),
(10522, 5, ' 权重-保存', '正常', 10177, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:04:06', '2016-12-21 06:04:06'),
(10523, 6, ' 问卷-发布', '正常', 10177, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:04:17', '2016-12-21 06:04:17'),
(10524, 1, ' 查询-按活动标题', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:17:24', '2016-12-21 06:17:24'),
(10525, 2, ' 活动列表', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:17:37', '2016-12-21 06:17:37'),
(10526, 3, ' 已发布活动列表', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:17:49', '2016-12-21 06:17:49'),
(10527, 4, ' 未发布活动列表', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:17:59', '2016-12-21 06:17:59'),
(10528, 5, ' 更新排序', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:18:23', '2016-12-21 06:18:23'),
(10529, 6, ' 活动-新增', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:18:32', '2016-12-21 06:18:32'),
(10530, 7, ' 活动-编辑', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:18:56', '2016-12-21 06:18:56'),
(10531, 8, ' 活动-发布', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:19:04', '2016-12-21 06:19:04'),
(10532, 9, ' 活动-下线', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:19:18', '2016-12-21 06:19:18'),
(10533, 10, ' 活动报名-入口', '正常', 10180, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:19:59', '2016-12-21 06:19:59'),
(10534, 1, ' 查询-按姓名或手机号', '正常', 10231, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:22:42', '2016-12-21 06:22:42'),
(10535, 2, ' 报名人员列表', '正常', 10231, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:22:53', '2016-12-21 06:22:53'),
(10536, 1, ' 查询-按栏目名称', '正常', 10144, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:25:11', '2016-12-21 06:25:11'),
(10537, 2, ' 栏目列表', '正常', 10144, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:25:19', '2016-12-21 06:25:19'),
(10538, 3, ' 批量排序', '正常', 10144, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:25:38', '2016-12-21 06:25:38'),
(10539, 4, ' 栏目-新增', '正常', 10144, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:25:49', '2016-12-21 06:25:49'),
(10540, 5, ' 栏目-设置', '正常', 10144, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:25:58', '2016-12-21 06:25:58'),
(10541, 6, ' 栏目-删除', '正常', 10144, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:26:10', '2016-12-21 06:26:10'),
(10542, 1, ' 按栏目过滤（左侧）', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:27:21', '2016-12-21 06:27:21'),
(10543, 2, ' 查询-按标题', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:27:48', '2016-12-21 06:27:48'),
(10544, 3, ' 查询-按状态', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:27:58', '2016-12-21 06:27:58'),
(10545, 4, ' 查询-组合查询', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:28:06', '2016-12-21 06:28:06'),
(10546, 5, ' 资讯列表', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:28:17', '2016-12-21 06:28:17'),
(10547, 6, ' 资讯-新增', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:28:47', '2016-12-21 06:28:47'),
(10548, 7, ' 资讯-编辑', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:28:56', '2016-12-21 06:28:56'),
(10549, 8, ' 资讯-删除', '正常', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:29:09', '2016-12-21 06:29:09'),
(10550, 9, ' 资讯-发布（未发现）', '待确认', 10179, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:29:36', '2016-12-21 06:29:36'),
(10551, 1, ' 项目简介', '正常', 10168, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:41:15', '2016-12-21 06:41:15'),
(10552, 2, ' 项目优势', '正常', 10168, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:41:39', '2016-12-21 06:41:39'),
(10553, 3, ' 申请条件', '正常', 10168, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:41:47', '2016-12-21 06:41:47'),
(10554, 4, ' 办理流程（周期）', '正常', 10168, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:42:01', '2016-12-21 06:42:01'),
(10555, 5, ' 项目预约', '正常', 10168, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:42:28', '2016-12-21 06:42:28'),
(10556, 6, ' 评估入口', '正常', 10168, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:42:40', '2016-12-21 06:42:40'),
(10557, 1, ' 移民评估入口', '正常', 10161, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:46:57', '2016-12-21 06:46:57'),
(10558, 1, ' 填写评估问题', '正常', 10162, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:47:08', '2016-12-21 06:47:08'),
(10559, 2, ' 展示评估结果', '正常', 10162, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:47:22', '2016-12-21 06:47:22'),
(10560, 1, ' 活动列表', '正常', 10164, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:51:49', '2016-12-21 06:51:49'),
(10561, 2, ' 我要报名', '正常', 10164, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 06:51:56', '2016-12-21 06:51:56'),
(10562, 1, ' 向往国家', '正常', 10171, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:04:30', '2016-12-21 07:04:30'),
(10563, 2, ' 向往城市', '正常', 10171, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:04:39', '2016-12-21 07:04:39'),
(10564, 3, ' 体验分类列表', '正常', 10171, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:05:14', '2016-12-21 07:05:14'),
(10565, 4, ' 体验详情', '正常', 10171, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:05:23', '2016-12-21 07:05:23'),
(10566, 1, ' 查询-按国家名', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:30:46', '2016-12-21 07:30:46'),
(10567, 2, ' 查询-按地理分类', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:31:02', '2016-12-21 07:31:02'),
(10568, 3, ' 查询-按发布状态', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:31:18', '2016-12-21 07:31:18'),
(10569, 4, ' 国家列表', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:31:38', '2016-12-21 07:31:38'),
(10570, 5, ' 国家-新增', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:33:24', '2016-12-21 07:33:24'),
(10571, 6, ' 国家-编辑', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:33:56', '2016-12-21 07:33:56'),
(10572, 7, ' 国家-删除', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:34:04', '2016-12-21 07:34:04'),
(10573, 8, ' 国家-发布', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:34:13', '2016-12-21 07:34:13'),
(10574, 9, ' 国家-下线', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:34:24', '2016-12-21 07:34:24'),
(10575, 10, ' 国家详情-入口', '正常', 10143, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:34:54', '2016-12-21 07:34:54'),
(10576, 1, ' 城市-新增', '正常', 10232, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:50:00', '2016-12-21 07:50:00'),
(10577, 2, ' 城市列表', '正常', 10232, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:50:12', '2016-12-21 07:50:12'),
(10578, 3, ' 城市-编辑', '正常', 10232, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:50:20', '2016-12-21 07:50:20'),
(10579, 4, ' 城市-删除', '正常', 10232, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:50:34', '2016-12-21 07:50:34'),
(10580, 5, ' 上传图片', '正常', 10232, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:50:45', '2016-12-21 07:50:45'),
(10581, 1, ' 政策-新增', '正常', 10233, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:51:40', '2016-12-21 07:51:40'),
(10582, 2, ' 政策列表', '正常', 10233, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:51:49', '2016-12-21 07:51:49'),
(10583, 3, ' 政策-编辑', '正常', 10233, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:52:24', '2016-12-21 07:52:24'),
(10584, 4, ' 政策-删除', '正常', 10233, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:52:32', '2016-12-21 07:52:32'),
(10585, 2, '专属管家入口', '正常', 10161, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:56:54', '2016-12-21 07:57:09'),
(10586, 3, ' 专享活动入口', '正常', 10161, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:57:29', '2016-12-21 07:57:29'),
(10587, 4, ' 生活体验入口', '正常', 10161, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 07:57:47', '2016-12-21 07:57:47'),
(10588, 1, ' 获取验证码', '正常', 10234, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 08:22:28', '2016-12-21 08:22:28'),
(10589, 2, ' 登录', '正常', 10234, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 08:22:35', '2016-12-21 08:22:35'),
(10590, 2, '项目详情', '正常', 10175, 116, '未测试', '腰立辉', '腰立辉', '2016-12-21 08:38:08', '2016-12-21 08:38:08');

-- --------------------------------------------------------

--
-- 表的结构 `tp_hcfunc`
--

DROP TABLE IF EXISTS `tp_hcfunc`;
CREATE TABLE IF NOT EXISTS `tp_hcfunc` (
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

--
-- 转存表中的数据 `tp_hcfunc`
--

INSERT INTO `tp_hcfunc` (`id`, `sn`, `funcid`, `sysno`, `path`, `func`, `remarks`, `caseid`, `casestate`, `casemain`, `caseexpected`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`) VALUES
(103, 1, 10570, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', NULL, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌'),
(104, 2, 10568, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', NULL, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌');

-- --------------------------------------------------------

--
-- 表的结构 `tp_hr`
--

DROP TABLE IF EXISTS `tp_hr`;
CREATE TABLE IF NOT EXISTS `tp_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT '发布',
  `desc` text,
  `salary` varchar(10) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_hr`
--

INSERT INTO `tp_hr` (`id`, `title`, `state`, `desc`, `salary`, `prodid`, `date`, `place`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(3, '公司CEO', '发布', '\r\n', '面议', NULL, '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', NULL, '2016-11-06 02:04:55'),
(4, '首席财务官', '作废', '<p>\r\n	融入融入人</p>\r\n', '面议', NULL, '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', NULL, '2016-10-29 12:12:52'),
(7, 'ee', '发布', 'we', '面议', 5, '2016-12-18', 'ew', '王晓亮', '王晓亮', '2016-12-18 12:44:29', '2016-12-18 12:44:29');

-- --------------------------------------------------------

--
-- 表的结构 `tp_path`
--

DROP TABLE IF EXISTS `tp_path`;
CREATE TABLE IF NOT EXISTS `tp_path` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10235 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_path`
--

INSERT INTO `tp_path` (`id`, `sn`, `path`, `pstate`, `sysid`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10000, 1, '登陆模块', '正常', 4, '腰立辉', '腰立辉', '2016-09-22 02:35:12', '2016-09-22 02:35:12'),
(10001, 2, '产品库', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 06:21:56', '2016-09-23 06:21:56'),
(10002, 3, '测试项目', '正常', 4, '腰立辉', '腰立辉', '2016-09-22 02:40:44', '2016-09-22 02:40:44'),
(10003, 10, '项目-系统', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 04:34:45', '2016-09-23 04:34:45'),
(10004, 11, '项目-系统路径', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:41:33', '2016-09-23 02:41:33'),
(10005, 12, '项目-系统路径-功能点', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:41:27', '2016-09-23 02:41:27'),
(10006, 15, '功能点-用例', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:38:09', '2016-09-23 02:38:09'),
(10007, 17, '功能点-规则', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:44:38', '2016-09-23 02:44:38'),
(10008, 13, '项目-功能点', '正常', 4, '腰立辉', '腰立辉', '2016-09-22 03:22:23', '2016-09-22 02:49:52'),
(10034, 6, '项目-里程碑-人员', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 04:34:19', '2016-09-23 04:34:19'),
(10013, 14, '项目-范围', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:37:57', '2016-09-23 02:37:57'),
(10033, 16, '功能点-模板', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:44:31', '2016-09-23 02:44:31'),
(10017, 18, '项目-场景', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:45:23', '2016-09-23 02:45:23'),
(10018, 19, '项目-场景-场景功能', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:45:30', '2016-09-23 02:45:30'),
(10019, 20, '项目-场景-场景功能-功能库', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:45:38', '2016-09-23 02:45:38'),
(10020, 21, '项目-场景-场景功能-用例库', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:45:44', '2016-09-23 02:45:44'),
(10021, 22, '项目-场景-场景功能-场景数据', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:45:51', '2016-09-23 02:45:51'),
(10022, 27, '项目-用例库', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:47:07', '2016-09-23 02:47:07'),
(10023, 28, '项目-控件库', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:47:15', '2016-09-23 02:47:15'),
(10024, 23, '手工测试', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:46:42', '2016-09-23 02:46:42'),
(10025, 24, '手工测试-执行', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:46:48', '2016-09-23 02:46:48'),
(10026, 25, '自动化测试', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:46:53', '2016-09-23 02:46:53'),
(10027, 26, '自动化测试-测试数据', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 02:46:59', '2016-09-23 02:46:59'),
(10028, 5, '项目-里程碑', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 04:34:14', '2016-09-23 04:34:14'),
(10029, 7, '项目-里程碑-列队', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 04:34:24', '2016-09-23 04:34:24'),
(10030, 4, '项目-风险', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 04:34:05', '2016-09-23 04:34:05'),
(10031, 8, '项目-里程碑-列队-场景库', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 05:08:34', '2016-09-23 05:08:34'),
(10032, 9, '项目-里程碑-列队-场景功能', '正常', 4, '腰立辉', '腰立辉', '2016-09-23 04:34:38', '2016-09-23 04:34:38'),
(10036, 1, '工作台', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 07:19:54', '2016-09-26 02:04:06'),
(10037, 2, '客户管理-全部客户', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:22:35', '2016-09-26 02:04:48'),
(10038, 3, '客户管理-公共客户', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:23:07', '2016-09-26 02:04:59'),
(10039, 4, '客户管理-30天未跟进客户', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:23:09', '2016-09-26 02:05:15'),
(10040, 5, '业务管理-买车顾问管理', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:23:11', '2016-09-26 02:09:21'),
(10041, 6, '业务管理-外呼录音', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:23:12', '2016-09-26 02:09:51'),
(10042, 7, '业务管理-签到与倒休', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:23:14', '2016-09-26 02:10:02'),
(10043, 8, '业务管理-免打扰客户', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:23:17', '2016-09-26 02:10:25'),
(10044, 9, '业务管理-商家位置管理', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:23:19', '2016-09-26 02:10:47'),
(10045, 11, '统计报表-城市业绩统计', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:24:37', '2016-09-26 02:11:28'),
(10046, 12, '统计报表-分配与跟进客户统计', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:24:39', '2016-09-26 02:11:49'),
(10047, 13, '统计报表-买顾业绩统计', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:24:41', '2016-09-26 02:12:00'),
(10048, 14, '线索管理-全部线索', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:24:44', '2016-09-26 02:12:36'),
(10049, 15, '线索管理-线索来源配置', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:24:47', '2016-09-26 02:13:00'),
(10050, 16, '任务管理-添加客户', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:24:50', '2016-09-26 02:14:51'),
(10051, 22, '任务管理-任务管理-今日待办', '正常', 11, '腰立辉', '腰立辉', '2016-10-25 02:26:25', '2016-10-25 02:26:25'),
(10052, 32, '订单管理-全部新车订单', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 08:35:44'),
(10053, 36, '权限管理-角色类型管理', '已搁置', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:56:14'),
(10054, 37, '权限管理-系统资源管理', '已搁置', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:56:05'),
(10055, 38, '权限管理-角色管理', '已搁置', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:55:56'),
(10056, 39, '权限管理-用户管理', '已搁置', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:55:47'),
(10057, 40, '消息中心-待办提醒', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:55:40'),
(10058, 41, '消息中心-订单提醒', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:55:30'),
(10059, 42, '消息中心-评价投诉', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:41:25'),
(10060, 43, '消息中心-系统公告', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:41:18'),
(10061, 44, '公告管理-公告管理', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:41:10'),
(10062, 45, '公告管理-系统消息管理', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:41:03'),
(10063, 46, '在线顾问管理-在线顾问', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:40:54'),
(10064, 47, '消息中心-品牌分配', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:40:45'),
(10065, 48, '基盘客户管理-待办任务', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:40:28'),
(10066, 49, '基盘客户管理-短信推送', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:40:16'),
(10067, 50, '价格库存管理-车型及报价配置管理', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:40:08'),
(10072, 20, '任务管理-报价收集-新增车款', '正常', 11, '腰立辉', '腰立辉', '2016-10-25 02:25:14', '2016-10-25 02:25:14'),
(10069, 51, '价格库存管理-车型价格库', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-21 03:40:00'),
(10070, 19, '任务管理-报价收集-即将过期', '正常', 11, '腰立辉', '腰立辉', '2016-10-25 02:25:06', '2016-10-25 02:25:06'),
(10071, 10, '业务管理-价格收集管理', '正常', 11, '腰立辉', '腰立辉', '2016-09-26 03:24:35', '2016-09-26 03:10:39'),
(10073, 18, '任务管理-报价收集-我的报价', '正常', 11, '腰立辉', '腰立辉', '2016-10-25 02:24:59', '2016-10-25 02:24:59'),
(10074, 17, '任务管理-报价收集-待确定价格', '正常', 11, '腰立辉', '腰立辉', '2016-10-25 02:24:51', '2016-10-25 02:24:51'),
(10075, 21, '任务管理-报价收集-库存价格收集', '正常', 11, '腰立辉', '腰立辉', '2016-10-25 02:25:22', '2016-10-25 02:25:22'),
(10196, 5, '  测试项目-风险', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:29:41', '2016-12-06 03:29:41'),
(10195, 4, ' 测试项目-里程碑', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:29:32', '2016-12-06 03:29:32'),
(10174, 11, ' 专属管家-我的专属管家', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 10:02:36', '2016-12-22 06:28:24'),
(10175, 6, '项目活动-公司名片', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 10:02:53', '2016-12-21 06:50:56'),
(10176, 4, '项目管理', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:16:12', '2016-12-22 03:06:34'),
(10177, 9, '移民评估', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:16:23', '2016-12-22 03:06:56'),
(10178, 13, '内容发布-专题管理', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:16:34', '2016-12-21 06:21:25'),
(10179, 14, ' 内容发布-资讯发布', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:19:30', '2016-12-21 06:21:25'),
(10180, 15, ' 内容发布-活动管理', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:20:01', '2016-12-21 06:21:25'),
(10181, 16, ' 内容发布-移民管家', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:20:20', '2016-12-21 06:21:25'),
(10182, 18, ' 营销管理-我的客户', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:21:07', '2016-12-21 06:21:25'),
(10183, 19, '营销管理-移民方案', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:21:22', '2016-12-21 06:21:25'),
(10184, 20, ' 营销管理-推荐客户', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 10:21:40', '2016-12-21 06:21:25'),
(10233, 3, ' 国家管理-移民政策', '正常', 63, '腰立辉', '腰立辉', '2016-12-21 07:49:01', '2016-12-21 07:49:01'),
(10234, 0, ' 登录', '正常', 66, '腰立辉', '腰立辉', '2016-12-21 08:21:48', '2016-12-21 08:21:54'),
(10231, 15, ' 活动管理-报名人数', '正常', 63, '腰立辉', '腰立辉', '2016-12-21 06:22:14', '2016-12-21 06:22:14'),
(10232, 3, ' 国家管理-移民城市', '正常', 63, '腰立辉', '腰立辉', '2016-12-21 07:48:42', '2016-12-21 07:48:42'),
(10191, 2, ' 主页', '正常', 64, '腰立辉', '腰立辉', '2016-12-06 02:16:18', '2016-12-06 02:17:27'),
(10193, 2, ' 首页-轮播图', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:26:58', '2016-12-06 03:28:12'),
(10194, 3, ' 测试项目-项目列表', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:29:11', '2016-12-06 03:29:11'),
(10106, 1, '登录模块', '正常', 57, '腰立辉', '腰立辉', '2016-09-27 09:15:49', '2016-09-27 09:15:49'),
(10107, 2, '我的工作台', '正常', 57, '腰立辉', '腰立辉', '2016-09-27 09:16:06', '2016-09-27 09:16:06'),
(10108, 23, '任务管理-任务管理-过期待办', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 02:26:48'),
(10109, 24, '任务管理-任务管理-全部待办', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 02:27:04'),
(10110, 25, '任务管理-任务管理-金融待办', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 02:27:25'),
(10111, 26, '任务管理-任务管理-全部客户', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 02:27:42'),
(10112, 27, '任务管理-任务管理-投诉客户', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 02:28:05'),
(10113, 28, '任务管理-任务管理-添加客户', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 06:02:43'),
(10114, 29, '任务管理-任务管理-查看外出计划', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 06:03:05'),
(10115, 30, '任务管理-任务管理-跟进', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 06:03:23'),
(10116, 31, '任务管理-任务管理-跟进-推送商家', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 07:16:12'),
(10117, 33, '订单管理-成交订单', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 08:36:17'),
(10118, 34, '订单管理-金融订单', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 08:36:34'),
(10119, 35, '订单管理-维保订单', '正常', 11, '腰立辉', '腰立辉', '2016-10-28 03:43:57', '2016-10-25 08:36:47'),
(10120, 1, '登陆模块', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:11:33', '2016-10-25 09:11:33'),
(10121, 2, '首页', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:11:58', '2016-10-25 09:11:58'),
(10122, 3, '订单管理', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:12:22', '2016-10-25 09:12:22'),
(10123, 4, '订单管理-竞价订单', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:12:43', '2016-10-25 09:12:43'),
(10124, 5, '订单管理-成交确认', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:12:56', '2016-10-25 09:12:56'),
(10125, 6, '交易佣金-本月账单', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:13:43', '2016-10-25 09:13:43'),
(10126, 7, '交易佣金-历史账单', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:13:51', '2016-10-25 09:13:51'),
(10127, 8, '交易佣金-交易明细', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:13:59', '2016-10-25 09:13:59'),
(10128, 9, '金牌商家计划-本月账单', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:14:31', '2016-10-25 09:14:31'),
(10129, 10, '金牌商家计划-历史账单', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:14:47', '2016-10-25 09:14:47'),
(10130, 11, '金融服务-金融订单', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:15:08', '2016-10-25 09:15:08'),
(10131, 12, '金融服务-订单结算', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:15:23', '2016-10-25 09:15:23'),
(10132, 13, '维修保养', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:15:54', '2016-10-25 09:15:54'),
(10133, 14, '基本设置-人员管理', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:16:11', '2016-10-25 09:16:11'),
(10134, 15, '基本设置-车型管理', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:16:26', '2016-10-25 09:16:26'),
(10135, 16, '基本设置-位置管理', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:16:34', '2016-10-25 09:16:34'),
(10136, 17, '基本设置-结算账户', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:16:41', '2016-10-25 09:16:41'),
(10137, 18, '统计报表', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:16:49', '2016-10-25 09:16:49'),
(10138, 19, '信用评价', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:17:12', '2016-10-25 09:17:12'),
(10139, 20, '专题活动', '正常', 6, '腰立辉', '腰立辉', '2016-10-25 09:17:28', '2016-10-25 09:17:28'),
(10141, 1, ' 登录', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 08:11:31', '2016-12-05 08:13:59'),
(10142, 2, ' 首页', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 08:11:43', '2016-12-05 08:14:02'),
(10143, 3, '国家管理', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 08:12:03', '2016-12-22 03:06:16'),
(10144, 12, ' 内容发布-栏目管理', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 08:12:12', '2016-12-21 06:21:25'),
(10145, 17, ' 营销管理-意向客户', '正常', 63, '腰立辉', '腰立辉', '2016-12-05 08:12:23', '2016-12-21 06:21:25'),
(10148, 2, '客户信息（上）', '正常', 62, '腰立辉', '腰立辉', '2016-12-05 08:18:47', '2016-12-05 08:38:30'),
(10149, 3, '客户信息（下）', '正常', 62, '腰立辉', '腰立辉', '2016-12-05 08:19:12', '2016-12-05 08:38:45'),
(10150, 4, ' 个人中心', '正常', 62, '腰立辉', '腰立辉', '2016-12-05 08:19:21', '2016-12-05 08:37:02'),
(10173, 5, '项目活动-商务合作', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 08:45:43', '2016-12-21 06:50:56'),
(10152, 1, ' 登录模块', '正常', 64, '腰立辉', '腰立辉', '2016-12-05 08:21:42', '2016-12-05 08:21:42'),
(10153, 6, ' 组织机构模块', '正常', 64, '腰立辉', '腰立辉', '2016-12-05 08:21:52', '2016-12-06 02:17:27'),
(10154, 7, ' 平台管理', '正常', 64, '腰立辉', '腰立辉', '2016-12-05 08:22:01', '2016-12-06 02:17:27'),
(10192, 1, ' 首页-近期上线项目', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:26:38', '2016-12-06 03:27:40'),
(10156, 3, ' 岗位管理', '正常', 64, '腰立辉', '腰立辉', '2016-12-05 08:22:31', '2016-12-06 02:17:27'),
(10157, 4, ' 角色管理', '正常', 64, '腰立辉', '腰立辉', '2016-12-05 08:22:42', '2016-12-06 02:17:27'),
(10158, 8, ' 字典管理', '正常', 64, '腰立辉', '腰立辉', '2016-12-05 08:22:58', '2016-12-06 02:17:41'),
(10159, 5, ' 用户模块', '正常', 64, '腰立辉', '腰立辉', '2016-12-05 08:23:14', '2016-12-06 02:17:27'),
(10161, 1, '首页', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 08:31:25', '2016-12-21 06:45:37'),
(10162, 2, ' 首页-移民评估', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 08:31:39', '2016-12-21 06:45:45'),
(10163, 10, ' 专属管家-列表及介绍', '已搁置', 66, '腰立辉', '腰立辉', '2016-12-05 08:31:55', '2016-12-21 06:50:56'),
(10164, 3, '项目活动- 专享活动', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 08:32:19', '2016-12-21 06:50:56'),
(10165, 12, ' 优选国家', '已搁置', 66, '腰立辉', '腰立辉', '2016-12-05 08:32:33', '2016-12-21 06:50:56'),
(10166, 13, ' 精彩案例', '已搁置', 66, '腰立辉', '腰立辉', '2016-12-05 08:32:56', '2016-12-21 06:50:56'),
(10167, 14, ' 移民攻略', '已搁置', 66, '腰立辉', '腰立辉', '2016-12-05 08:33:10', '2016-12-21 06:50:56'),
(10168, 4, '项目活动- 移民项目', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 08:34:17', '2016-12-21 06:50:56'),
(10171, 7, ' 项目活动-生活体验', '正常', 66, '腰立辉', '腰立辉', '2016-12-05 08:34:49', '2016-12-21 06:50:56'),
(10172, 1, ' 登录', '正常', 62, '腰立辉', '腰立辉', '2016-12-05 08:36:49', '2016-12-05 08:36:49'),
(10197, 6, '  测试项目-功能点', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:29:50', '2016-12-06 03:29:50'),
(10198, 7, '  测试项目-范围', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:30:11', '2016-12-06 03:30:11'),
(10199, 8, '  测试项目-场景', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:30:21', '2016-12-06 03:30:21'),
(10200, 9, '  测试项目-用例库', '正常', 68, '腰立辉', '腰立辉', '2016-12-06 03:30:33', '2016-12-06 03:30:33'),
(10201, 8, ' 投票活动-太平洋好声音', '已搁置', 66, '腰立辉', '腰立辉', '2016-12-12 01:59:19', '2016-12-21 06:50:56'),
(10202, 9, ' 投票活动-四海一家', '已搁置', 66, '腰立辉', '腰立辉', '2016-12-12 01:59:43', '2016-12-21 06:50:56'),
(10203, 10, '商务合作-商务合作管理', '正常', 63, '腰立辉', '腰立辉', '2016-12-14 03:39:36', '2016-12-21 06:21:25'),
(10204, 11, ' 商务合作-商务合作进度', '正常', 63, '腰立辉', '腰立辉', '2016-12-14 03:45:04', '2016-12-21 06:21:25'),
(10205, 1, ' 登陆模块', '正常', 70, '腰立辉', '腰立辉', '2016-12-17 15:01:28', '2016-12-17 15:01:28'),
(10206, 2, '（首页）系统信息', '正常', 70, '腰立辉', '腰立辉', '2016-12-17 15:01:52', '2016-12-17 15:01:52'),
(10207, 1, ' 首页', '正常', 69, '腰立辉', '腰立辉', '2016-12-17 15:03:35', '2016-12-17 15:03:35'),
(10208, 2, ' 产品展示', '正常', 69, '腰立辉', '腰立辉', '2016-12-17 15:03:43', '2016-12-17 15:03:43'),
(10209, 3, ' 关于我们', '正常', 69, '腰立辉', '腰立辉', '2016-12-17 15:03:57', '2016-12-17 15:03:57'),
(10210, 1, ' 登录模块', '正常', 72, '腰立辉', '腰立辉', '2016-12-17 15:07:30', '2016-12-17 15:07:30'),
(10211, 2, '（首页）系统信息', '正常', 72, '腰立辉', '腰立辉', '2016-12-17 15:07:49', '2016-12-17 15:07:49'),
(10212, 1, ' 首页', '正常', 71, '腰立辉', '腰立辉', '2016-12-17 15:08:22', '2016-12-17 15:08:22'),
(10213, 2, ' 服务展示', '正常', 71, '腰立辉', '腰立辉', '2016-12-17 15:08:33', '2016-12-17 15:08:33'),
(10214, 3, ' 关于我们', '正常', 71, '腰立辉', '腰立辉', '2016-12-17 15:08:42', '2016-12-17 15:08:42'),
(10215, 1, '首页', '正常', 73, '腰立辉', '腰立辉', '2016-12-17 15:10:49', '2016-12-17 15:10:49'),
(10216, 2, ' 主营业务', '正常', 73, '腰立辉', '腰立辉', '2016-12-17 15:10:59', '2016-12-17 15:10:59'),
(10217, 3, ' 用车常识', '正常', 73, '腰立辉', '腰立辉', '2016-12-17 15:11:11', '2016-12-17 15:11:11'),
(10218, 4, '关于我们', '正常', 73, '腰立辉', '腰立辉', '2016-12-17 15:11:20', '2016-12-17 15:11:20'),
(10219, 5, ' 诚聘人才', '正常', 73, '腰立辉', '腰立辉', '2016-12-17 15:11:31', '2016-12-17 15:11:31'),
(10220, 6, ' 技师风采', '正常', 73, '腰立辉', '腰立辉', '2016-12-17 15:11:41', '2016-12-17 15:11:41'),
(10221, 7, ' 汽车用品商城', '正常', 73, '腰立辉', '腰立辉', '2016-12-17 15:11:54', '2016-12-17 15:11:54'),
(10222, 1, '登录模块', '正常', 74, '腰立辉', '腰立辉', '2016-12-17 15:12:09', '2016-12-17 15:12:09'),
(10223, 2, '（首页）系统信息', '正常', 74, '腰立辉', '腰立辉', '2016-12-17 15:12:19', '2016-12-17 15:12:19'),
(10224, 21, '数据中心-获客列表', '正常', 63, '腰立辉', '腰立辉', '2016-12-19 07:42:56', '2016-12-21 06:21:25'),
(10225, 22, ' 数据中心-名片流量', '正常', 63, '腰立辉', '腰立辉', '2016-12-19 07:43:19', '2016-12-21 06:21:25'),
(10226, 23, ' 数据中心-微信号设置', '正常', 63, '腰立辉', '腰立辉', '2016-12-19 07:43:37', '2016-12-21 06:21:25'),
(10227, 5, ' 项目管理-申请流程', '正常', 63, '腰立辉', '腰立辉', '2016-12-21 05:29:07', '2016-12-21 06:21:25'),
(10228, 6, ' 项目管理-费用详情', '正常', 63, '腰立辉', '腰立辉', '2016-12-21 05:29:34', '2016-12-21 06:21:25'),
(10229, 7, ' 项目管理-材料清单', '正常', 63, '腰立辉', '腰立辉', '2016-12-21 05:29:52', '2016-12-21 06:21:25'),
(10230, 8, ' 项目-图片', '正常', 63, '腰立辉', '腰立辉', '2016-12-21 05:40:41', '2016-12-21 06:21:25');

-- --------------------------------------------------------

--
-- 表的结构 `tp_product`
--

DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE IF NOT EXISTS `tp_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(10) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telphone` varchar(13) DEFAULT NULL,
  `qq` varchar(13) DEFAULT NULL,
  `qz` varchar(10) DEFAULT NULL,
  `db` varchar(10) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `desc` text,
  `adress` varchar(300) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_product`
--

INSERT INTO `tp_product` (`id`, `short`, `product`, `state`, `phone`, `telphone`, `qq`, `qz`, `db`, `web`, `keywords`, `desc`, `adress`, `url`, `path`, `img`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '惠买车', '惠买车平台', '作废', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-16 14:04:58', '2016-12-05 07:41:48'),
(2, '自动化', '自动化平台', '正常', '18801043607', NULL, '83000892', NULL, NULL, '自动化测试', NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-16 14:07:52', '2016-12-17 13:53:51'),
(4, 'PJD', '太平洋加达', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-05 07:47:20', '2016-12-17 10:24:30'),
(8, '秀丽', '秀丽广告', '正常', '13463925200', '0319-7186126', '2830690782', 'Xiuli', 'xl_', '临城-秀丽广告', NULL, NULL, '临城转盘北200米路西', 'www.xiuliguanggao.com', '/Setting2016-12-25/', '585fd83c6ac4c.jpg', '腰立辉', '腰立辉', '2016-12-14 15:13:36', '2016-12-25 14:31:24'),
(5, '安顺', '安顺汽修', '正常', '13785900902', NULL, '1058793920', 'Anshun', 'as_', '临城-安顺汽车服务中心', NULL, NULL, '临城县射兽汽修市场', 'www.anshunqixiu.top', '/Setting2016-12-18/', '585683f4127fd.jpg', '腰立辉', '王晓亮', '2016-12-14 15:13:59', '2016-12-18 12:41:24'),
(6, '双辉', '麦田双辉', '正常', '18801043607', NULL, '83000892', 'Mtsh', 'mt_', '临城-麦田双辉', NULL, NULL, '临城', 'www.maitianshuanghui.com', '/Setting2016-12-22/', '585bcddb121d7.JPG', '腰立辉', '腰立辉', '2016-12-14 15:14:17', '2016-12-22 12:58:03'),
(7, '拓才', '拓才教育', '正常', NULL, '0311-89849355', '285981407', 'Tuocai', 'tc_', '石家庄-拓才教育', '拓才,拓才教育,一对一,个性化,课外辅导,教育培训，石家庄课外辅导', NULL, '石家庄1', 'www.tuocaijiaoyu.com', '/Setting/adress/2016-12-13/', '584fb53ddc613.jpg', '腰立辉', '腰立辉', '2016-12-14 15:14:42', '2016-12-18 05:32:03'),
(3, '信达', '智慧信达', '正常', NULL, NULL, NULL, 'Xinda', 'xd_', NULL, NULL, NULL, '北京', 'www.zhihuixinda.com', NULL, NULL, '腰立辉', '腰立辉', '2016-12-14 15:14:59', '2016-12-18 05:32:15');

-- --------------------------------------------------------

--
-- 表的结构 `tp_program`
--

DROP TABLE IF EXISTS `tp_program`;
CREATE TABLE IF NOT EXISTS `tp_program` (
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
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_program`
--

INSERT INTO `tp_program` (`id`, `prono`, `program`, `prodid`, `prost`, `start`, `end`, `manager`, `testgp`, `ptype`, `pm`, `develop`, `retype`, `relevel`, `exponline`, `profile`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(107, 'PJD1612.1', '公司名片，商务合作', 4, '已上线', '2016-12-05', '2016-12-15', '腰立辉', 'PJD', '简要', '邓晔', '', '新项目', '一般需求', '2016-12-15', '																																			公司名片，商务合作\r\n																																				', '腰立辉', '腰立辉', '2016-12-05 08:05:28', '2016-12-22 06:39:38'),
(108, 'Auto1612.1', '测试管理平台搭建', 2, '进行中', '2016-12-05', '2016-12-12', '腰立辉', 'PJD', '简要', '腰立辉', '腰立辉', '新项目', '一般需求', '2017-02-28', '								测试管理平台搭建\r\n												', '腰立辉', '腰立辉', '2016-12-05 09:41:39', '2016-12-07 08:30:50'),
(109, 'PJD1612.3', '权限管理后台1612', 4, '已搁置', '2016-12-05', '2017-03-09', '魏斌', 'PJD', '简要', '', '褚秀良', '新项目', '一般需求', '2017-03-09', '							权限后台功能\r\n												', '腰立辉', '腰立辉', '2016-12-06 02:14:39', '2016-12-21 08:39:42'),
(110, 'PJD1612.4', '太平洋好声音和四海一家投票', 4, '已上线', '2016-12-12', '2016-12-12', '魏斌', 'PJD', '简要', '', '杨学毅、刘雨熙', '新项目', '一般需求', '2016-12-12', '														1.四海一家投票\r\n2.太平洋好声音投票\r\n																								', '腰立辉', '腰立辉', '2016-12-12 01:45:26', '2016-12-21 04:55:52'),
(111, 'Auto1612.1', '秀丽广告网站初建', 8, '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '新项目', '一般需求', '0000-00-00', '														暂无简介\r\n												', '腰立辉', '腰立辉', '2016-12-17 14:36:46', '2016-12-17 14:44:32'),
(112, 'Auto1612.2', '麦田双辉网站初建', 6, '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '需求新增', '一般需求', '2017-01-24', '							暂无简介\r\n						', '腰立辉', '腰立辉', '2016-12-17 14:40:37', '2016-12-17 14:44:46'),
(113, 'Auto1612.3', '安顺汽修网站初建', 5, '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '需求新增', '一般需求', '2017-01-24', '							暂无简介\r\n						', '腰立辉', '腰立辉', '2016-12-17 14:41:52', '2016-12-17 14:44:48'),
(114, 'Auto1612.4', '拓才教育网站初建', 7, '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '需求新增', '一般需求', '2017-01-24', '							暂无简介\r\n						', '腰立辉', '腰立辉', '2016-12-17 14:43:15', '2016-12-17 14:44:53'),
(116, 'PJD1612.6', '1月份上线项目', 4, '进行中', '2016-12-19', '2017-01-04', '腰立辉', 'PJD', '简要', '邓烨、杨雪玲', '杨学毅、谷一创', '新项目', '一般需求', '2017-01-04', '							1.微网站登录\r\n2.移民项目\r\n3.专享活动\r\n4.生活体验\r\n5.移民评估\r\n6.国家管理\r\n7.微网站后台修改个人密码\r\n8.公司名片的项目列表，加载后台项目管理的项目，且添加项目详情的链接\r\n																														', '腰立辉', '腰立辉', '2016-12-19 05:55:56', '2016-12-21 08:36:50');

-- --------------------------------------------------------

--
-- 表的结构 `tp_prosys`
--

DROP TABLE IF EXISTS `tp_prosys`;
CREATE TABLE IF NOT EXISTS `tp_prosys` (
  `prosysid` smallint(5) NOT NULL AUTO_INCREMENT,
  `sysid` smallint(6) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prosysid`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_prosys`
--

INSERT INTO `tp_prosys` (`prosysid`, `sysid`, `proid`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(56, 54, 24, '腰立辉', '腰立辉', '2016-09-22 02:06:44', '2016-09-22 02:06:44'),
(67, 4, 45, '腰立辉', '腰立辉', '2016-09-25 11:12:47', '2016-09-25 11:12:47'),
(61, 4, 47, '腰立辉', '腰立辉', '2016-09-23 01:46:13', '2016-09-23 01:46:13'),
(68, 11, 46, '腰立辉', '腰立辉', '2016-09-26 03:26:22', '2016-09-26 03:26:22'),
(62, 56, 48, '腰立辉', '腰立辉', '2016-09-24 12:47:58', '2016-09-24 12:47:58'),
(63, 4, 48, '腰立辉', '腰立辉', '2016-09-24 12:48:09', '2016-09-24 12:48:09'),
(64, 56, 49, '腰立辉', '腰立辉', '2016-09-24 13:16:03', '2016-09-24 13:16:03'),
(65, 4, 49, '腰立辉', '腰立辉', '2016-09-24 13:16:05', '2016-09-24 13:16:05'),
(69, 11, 50, '腰立辉', '腰立辉', '2016-10-19 04:50:06', '2016-10-19 04:50:06'),
(70, 54, 45, '王鑫彤', '王鑫彤', '2016-10-21 02:27:07', '2016-10-21 02:27:07'),
(79, 11, 97, '腰立辉', '腰立辉', '2016-11-18 01:24:06', '2016-11-18 01:23:11'),
(74, 11, 51, '腰立辉', '腰立辉', '2016-10-25 07:17:08', '2016-10-25 07:17:08'),
(73, 3, 65, '腰立辉', '腰立辉', '2016-10-24 01:21:35', '2016-10-24 01:21:35'),
(75, 6, 51, '腰立辉', '腰立辉', '2016-10-25 09:11:04', '2016-10-25 09:11:04'),
(76, 11, 80, '腰立辉', '腰立辉', '2016-11-02 01:59:42', '2016-11-18 01:24:01'),
(82, 62, 107, '腰立辉', '腰立辉', '2016-12-05 08:06:15', '2016-12-05 08:06:15'),
(83, 63, 107, '腰立辉', '腰立辉', '2016-12-05 08:09:42', '2016-12-05 08:09:42'),
(89, 64, 109, '腰立辉', '腰立辉', '2016-12-06 02:15:42', '2016-12-06 02:15:42'),
(85, 66, 107, '腰立辉', '腰立辉', '2016-12-05 08:30:45', '2016-12-05 08:30:45'),
(87, 68, 108, '腰立辉', '腰立辉', '2016-12-05 09:42:53', '2016-12-05 09:42:53'),
(88, 4, 108, '腰立辉', '腰立辉', '2016-12-05 09:42:56', '2016-12-05 09:42:56'),
(91, 66, 110, '腰立辉', '腰立辉', '2016-12-12 01:45:46', '2016-12-12 01:44:55'),
(92, 69, 111, '腰立辉', '腰立辉', '2016-12-17 14:59:59', '2016-12-17 14:59:59'),
(93, 70, 111, '腰立辉', '腰立辉', '2016-12-17 15:00:02', '2016-12-17 15:00:02'),
(94, 72, 112, '腰立辉', '腰立辉', '2016-12-17 15:05:50', '2016-12-17 15:05:50'),
(95, 71, 112, '腰立辉', '腰立辉', '2016-12-17 15:05:53', '2016-12-17 15:05:53'),
(96, 73, 113, '腰立辉', '腰立辉', '2016-12-17 15:09:33', '2016-12-17 15:09:33'),
(97, 74, 113, '腰立辉', '腰立辉', '2016-12-17 15:09:35', '2016-12-17 15:09:35'),
(98, 76, 114, '腰立辉', '腰立辉', '2016-12-17 15:15:52', '2016-12-17 15:15:52'),
(99, 75, 114, '腰立辉', '腰立辉', '2016-12-17 15:15:54', '2016-12-17 15:15:54'),
(100, 64, 107, '腰立辉', '腰立辉', '2016-12-19 07:41:11', '2016-12-19 07:41:11'),
(102, 63, 116, '腰立辉', '腰立辉', '2016-12-21 05:10:31', '2016-12-21 05:10:31'),
(103, 66, 116, '腰立辉', '腰立辉', '2016-12-21 05:10:33', '2016-12-21 05:10:33');

-- --------------------------------------------------------

--
-- 表的结构 `tp_risk`
--

DROP TABLE IF EXISTS `tp_risk`;
CREATE TABLE IF NOT EXISTS `tp_risk` (
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

--
-- 转存表中的数据 `tp_risk`
--

INSERT INTO `tp_risk` (`id`, `sn`, `risk`, `level`, `amethod`, `proid`, `state`, `remaks`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1000, 1, '不提交测试，无法完成验收', 'A', '<p>\r\n	暂无方案</p>\r\n', 45, '打开', '', '腰立辉', '腰立辉', '2016-10-28 07:47:24', '2016-11-15 08:52:31'),
(1001, 2, '11', 'C', '<p>\r\n	暂无方案</p>\r\n', 45, '打开', '', '腰立辉', '腰立辉', '2016-11-03 02:44:26', '2016-11-03 03:00:42');

-- --------------------------------------------------------

--
-- 表的结构 `tp_rules`
--

DROP TABLE IF EXISTS `tp_rules`;
CREATE TABLE IF NOT EXISTS `tp_rules` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10234 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_rules`
--

INSERT INTO `tp_rules` (`id`, `sn`, `rules`, `source`, `funcid`, `state`, `fproid`, `remark`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10041, 1, ' 入口：微信菜单-个人中心-公司名片', '需求文档 ', 10419, '作废', 107, '', '腰立辉', '腰立辉', '2016-12-08 09:02:15', '2016-12-21 07:28:08'),
(10066, 2, ' 每位选手宣传内容：中英文名字+照片+音频', '需求文档 ', 10445, '正常', 110, '', '腰立辉', '腰立辉', '2016-12-12 06:45:12', '2016-12-19 01:43:08'),
(10065, 1, ' 鲁逸飞Nick，苗天鹤(沈阳）Justin，张泽明Crease，胡旭David，林英英(沈阳）Clinda ，辛会举Arthur，孙东雪Judy，曹朝辉Eric，李小爽Macy，曹东辉Revin，韩琳Elsa，孙印帅Faker。', '需求文档 ', 10445, '正常', 110, '', '腰立辉', '腰立辉', '2016-12-12 06:44:57', '2016-12-12 06:54:00'),
(10064, 2, ' 截止时间：12月15日18:00', '需求文档 ', 10446, '正常', 110, '', '腰立辉', '腰立辉', '2016-12-12 06:44:42', '2016-12-12 06:43:51'),
(10063, 1, ' 大众以投票形式为前12名晋级选手投票，每人只能投一票，只能为一个人投票，谁的投票量多，谁就是最佳人气奖，只有1个名额，在12位晋级选手中产生。', '需求文档 ', 10446, '正常', 110, '', '腰立辉', '腰立辉', '2016-12-12 06:44:19', '2016-12-12 06:43:29'),
(10046, 2, ' 分享链接', '需求文档 ', 10422, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 06:44:33', '2016-12-09 06:44:33'),
(10047, 1, ' 显示项目图片、项目名称、项目描述，从后台项目管理模块读取含有名片推荐标签的发布项目', '需求文档 ', 10420, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 06:45:11', '2016-12-21 02:58:32'),
(10044, 2, '公司介绍 – 介绍太平洋出国公司介绍', '需求文档 ', 10419, '正常', 107, '\r\n', '腰立辉', '腰立辉', '2016-12-09 06:43:59', '2016-12-09 06:44:48'),
(10045, 1, ' 我的专属管家-分享名片', '需求文档 ', 10422, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 06:44:15', '2016-12-09 06:44:15'),
(10048, 2, ' 可左右滑动显示已发布的项目，循环查看所有项目，排序按 手势向左滑动时，展示项目1,项目2,项目3,项目4…', '需求文档 ', 10420, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 06:45:29', '2016-12-09 06:45:46'),
(10049, 3, ' 每个项目点击后跳转到项目详情的页面（现有m站的项目介绍或专题介绍）', '需求文档 ', 10420, '已搁置', 107, '', '腰立辉', '腰立辉', '2016-12-09 06:46:02', '2016-12-09 06:51:07'),
(10050, 1, ' 当启用名片的角色进入名片时看到的是本人的名片信息，', '需求文档 ', 10421, '正常', 107, '<p>\r\n	当启用名片的角色进入名片时看到的是本人的名片信息，当其他用户进入名片时，可看到公司内所有有名片角色的列表，循环展示所有人，排序按手势向左滑动时，正序展示</p>\r\n', '腰立辉', '腰立辉', '2016-12-09 08:07:38', '2016-12-09 08:09:27'),
(10051, 2, ' 我的专属管家-分享名片 进入名片看到的是该管家的个人名片', '需求文档 ', 10421, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:08:16', '2016-12-09 08:08:16'),
(10052, 3, ' 当个人名片被分享时，其他用户点击分享页看到的是有个人名片的页面；', '需求文档 ', 10421, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:08:37', '2016-12-09 08:08:37'),
(10053, 4, ' 当公司名片被分享时，其他用户点击分享页看到的是公司所有名片的列表页面', '需求文档 ', 10421, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:08:50', '2016-12-09 08:08:50'),
(10054, 1, '客户可在此输入姓名（必填）、手机号（必填）提交报名信息', '需求文档 ', 10423, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:10:02', '2016-12-09 08:10:02'),
(10055, 2, '验证姓名和手机号是否为空，如为空，提示用户：请输入您的姓名,或 提示： 请输入您的手机号。', '需求文档 ', 10423, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:10:26', '2016-12-09 08:10:26'),
(10056, 3, '校验手机号长度，除去空格的11位数字，除去空格后如长度有误，点击提交提示：“手机号码长度不是11位，请重新输入”', '需求文档 ', 10423, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:10:48', '2016-12-09 08:10:48'),
(10057, 4, '如号段格式有误，点击提交提示：“手机号格式不正确，请重新输入”', '需求文档 ', 10423, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:11:15', '2016-12-09 08:11:15'),
(10058, 5, '如校验通过，提交后，弹窗提示提交成功，3s后自动返回原页面', '需求文档 ', 10423, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:12:57', '2016-12-09 08:12:57'),
(10059, 6, '提交成功后台记录提交者信息（重复提交，如何处理）', '需求文档 ', 10423, '待确认', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:13:30', '2016-12-09 08:13:30'),
(10060, 1, ' 后台统计分享后浏览名片的次数及报名成功的人数', '需求文档 ', 10424, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:13:47', '2016-12-09 08:13:47'),
(10061, 2, ' 点击-分享名片【计数】', '需求文档 ', 10424, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:15:31', '2016-12-09 08:15:31'),
(10062, 3, ' 点击-分享名片-报名提交【计数】', '需求文档 ', 10424, '正常', 107, '', '腰立辉', '腰立辉', '2016-12-09 08:15:55', '2016-12-09 08:15:55'),
(10067, 1, ' 点击删除，弹出确认是否删除？是，删除本记录，否，关闭弹窗', '产品原型', 10512, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:39:12', '2016-12-21 05:39:12'),
(10068, 1, ' 编辑模式下页面需加载当前编辑的原有数据', '需求原型', 10511, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:39:47', '2016-12-21 05:39:47'),
(10069, 1, '点击发布项目状态置为&quot;上线&quot;，项目信息发布在微网站上  发布项目时需校验项目国家是否为发布状态', '需求原型', 10493, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:50:20', '2016-12-21 05:50:20'),
(10070, 1, ' 项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:51:30', '2016-12-21 05:51:30'),
(10071, 1, '  项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:51:42', '2016-12-21 05:51:42'),
(10072, 2, ' 项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', 10491, '待确认', 116, '<p>\r\n	确定要多选吗？</p>\r\n', '腰立辉', '腰立辉', '2016-12-21 05:52:39', '2016-12-21 05:52:54'),
(10073, 2, '  项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', 10489, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:53:10', '2016-12-21 05:53:10'),
(10074, 3, ' 项目编号：系统自动生成，例如“美国投资移民“MGTZYM001', '需求原型', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:53:52', '2016-12-21 05:53:52'),
(10075, 4, ' 所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:54:49', '2016-12-21 05:54:49'),
(10076, 3, '  所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:54:59', '2016-12-21 05:54:59'),
(10077, 4, ' 项目示例：点击查看示例，弹出填写示例', '需求原型', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:55:49', '2016-12-21 05:55:49'),
(10078, 5, '  项目示例：点击查看示例，弹出填写示例', '需求原型', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:56:00', '2016-12-21 05:56:00'),
(10079, 6, '顾问名片： 若顾问名片模块选中则此项目将在顾问名片处展示', '需求原型', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:57:06', '2016-12-21 05:57:06'),
(10080, 3, ' 保存前生成项目编号，并与表单信息一并更新入库', '需求原型', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:57:31', '2016-12-21 05:57:31'),
(10081, 1, '排序： 选填项，输入限制：输入项必须是数字；默认值0', '需求原型', 10495, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 05:59:13', '2016-12-21 05:59:13'),
(10082, 1, '视频地址： //当媒体类型为视频时需要填写（必填）', '需求原型', 10514, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:00:48', '2016-12-21 06:00:48'),
(10083, 1, ' 保存按钮用于保存排序和匹配权重', '需求原型', 10522, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:07:09', '2016-12-21 06:07:09'),
(10084, 2, ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求原型', 10522, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:07:41', '2016-12-21 06:07:41'),
(10085, 1, ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求文档 ', 10523, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:07:48', '2016-12-21 06:07:48'),
(10086, 1, ' 删除需要弹窗确认', '需求文档 ', 10521, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:08:08', '2016-12-21 06:08:08'),
(10087, 1, ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', 10518, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:09:49', '2016-12-21 06:10:13'),
(10088, 1, ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', 10520, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:10:00', '2016-12-21 06:10:00'),
(10089, 2, '最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', 10518, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:10:56', '2016-12-21 06:10:56'),
(10090, 2, ' 最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', 10520, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:11:04', '2016-12-21 06:11:04'),
(10091, 3, ' 答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', 10520, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:11:45', '2016-12-21 06:11:45'),
(10092, 3, '  答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', 10518, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:11:56', '2016-12-21 06:11:56'),
(10093, 4, ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', 10518, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:12:29', '2016-12-21 06:12:29'),
(10094, 4, ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', 10520, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:12:41', '2016-12-21 06:12:41'),
(10095, 1, ' 活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', 10529, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:23:49', '2016-12-21 06:23:49'),
(10096, 1, '  活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', 10530, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:23:59', '2016-12-21 06:23:59'),
(10097, 1, ' 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页', '需求原型', 10551, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:43:32', '2016-12-21 06:43:32'),
(10098, 1, ' 申请条件展示图标、申请项、申请描述  后台设置申请项，最多展示7项，最少2项  申请描述限制15个字', '需求原型', 10553, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:44:11', '2016-12-21 06:44:11'),
(10099, 1, ' 确认后回到项目列表', '需求原型', 10555, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:44:34', '2016-12-21 06:44:44'),
(10100, 1, ' 首次进入加载2屏活动列表，上滑一次加载一屏', '需求原型', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:52:30', '2016-12-21 06:52:30'),
(10101, 2, ' 排序按活动时间倒序排序，同级按创建时间倒序排序', '需求原型', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:52:48', '2016-12-21 06:52:48'),
(10102, 3, ' 报名结束的活动 我要报名按钮不可点击', '需求原型', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:53:08', '2016-12-21 06:53:08'),
(10103, 4, '活动图片： 70*65  同首页专享活动 ；后台上传图片，如不上传展示默认图片', '需求原型', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:53:58', '2016-12-21 06:53:58'),
(10104, 5, ' 活动名称：最多一行（多了怎么办？）', '需求原型', 10560, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:54:36', '2016-12-21 06:54:36'),
(10105, 6, ' 活动时间：最多一行', '需求原型', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:55:11', '2016-12-21 06:55:11'),
(10106, 7, ' 活动地点：最多展示两行（多了怎么办？）', '需求原型', 10560, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:56:00', '2016-12-21 06:56:00'),
(10107, 8, ' 根据活动时间判断，如果活动时间未到，则展示火热报名中，如果活动结束后，变更为报名结束', '需求原型', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:56:27', '2016-12-21 06:56:27'),
(10108, 1, ' 【我要报名】点击后跳转到表单页', '需求原型', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:56:55', '2016-12-21 06:56:55'),
(10109, 2, ' 校验手机号长度是否正确', '需求原型', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:57:55', '2016-12-21 06:57:55'),
(10110, 3, ' 如用户已登录，则自动展示其手机号', '需求原型', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:58:21', '2016-12-21 06:58:21'),
(10111, 4, ' 修改备注描述（这句话是什么意思？）', '需求原型', 10561, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:58:58', '2016-12-21 06:58:58'),
(10112, 5, ' 活动图片：70*65  同首页专享活动', '需求原型', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 06:59:22', '2016-12-21 06:59:22'),
(10113, 6, '活动名称： 最多一行', '需求原型', 10561, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:00:18', '2016-12-21 07:00:18'),
(10114, 7, '活动描述： 最多展示3行，限制75个汉字（这个限制应该在后台吧）', '需求原型', 10561, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:01:08', '2016-12-21 07:01:08'),
(10115, 8, ' 活动时间：最多一行，年月日 上午/下午 时分', '需求原型', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:01:30', '2016-12-21 07:01:30'),
(10116, 9, ' 活动地点：最多展示两行', '需求原型 ', 10561, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:01:57', '2016-12-21 07:01:57'),
(10117, 10, '提交成功： 返回到专享活动列表页', '需求原型', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:02:38', '2016-12-21 07:02:38'),
(10118, 1, ' 用户填写用户名、密码后点击“登录”按钮可完成登录操作。登录后用户可修改个人资料；修改密码；访问该用户已授权的各功能模块。', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:07:48', '2016-12-21 07:07:48'),
(10119, 1, ' 用户在登录状态下点击“退出”按钮系统切换至退出状态，并刷新至登录页面。', '需求文档 ', 10479, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:08:15', '2016-12-21 07:08:15'),
(10120, 2, ' 验证用户名格式是否正确；（字母、数字、下划线组合）；', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:09:08', '2016-12-21 07:09:08'),
(10121, 3, ' 验证密码输入是否正确； 验证用户是否存在；', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:09:27', '2016-12-21 07:09:27'),
(10122, 4, ' 验证用户名、密码输入是否匹配； 执行登录操作并刷新当前页面至网站首页。', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:09:47', '2016-12-21 07:09:47'),
(10123, 5, ' 2a验证手机号码是否正确输入 2a1 若为空，给出不能为空提示。 2a2 若输入不合法，给出输入不合法提示。', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:10:10', '2016-12-21 07:10:10'),
(10124, 6, ' 3a检查密码输入是否正确 3a1 若为空，给出不能为空提示。 3a2若输入不合法，给出输入不合法提示。', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:10:26', '2016-12-21 07:10:26'),
(10125, 7, ' 3b验证用户是否存在 3a1若用户不存在提示用户不存在。', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:10:37', '2016-12-21 07:10:37'),
(10126, 8, ' 4a 验证用户名、密码输入是否匹配 4al输入验证不通过，网页提示“用户名或密码输入有误，登录失败”。 4a2若登录失败，网页给出提示“登录失败”并提示失败原因。', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:10:49', '2016-12-21 07:10:49'),
(10127, 9, ' 网页用户信息区域显示已登录的用户名（用户手机号）界面，退出登录按钮可见。', '需求文档 ', 10478, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:11:06', '2016-12-21 07:11:06'),
(10128, 2, ' 1.	用户点击“退出登录”链接按钮	网页提示“确定要退出吗”。', '需求文档 ', 10479, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:11:33', '2016-12-21 07:11:33'),
(10129, 3, ' 1.	用户点击“确定”按钮	清除用户登录信息； 刷当前页面至登录页。', '需求文档 ', 10479, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:11:48', '2016-12-21 07:11:48'),
(10130, 8, ' 用户可在项目管理模块通过“新增”按钮创建项目，创建项目时需填写项目基本信息；新增时生成项目编号，且不可修改；新增的项目默认为“未上线”状态。 新增后的项目可在项目管理页列表查看。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:12:30', '2016-12-21 07:12:30'),
(10131, 5, ' 在项目管理模块通过“编辑”按钮可对项目进行编辑操作。项目编辑时可修改基本信息、申请条件、办理流程、费用详情、材料清单信息。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:12:53', '2016-12-21 07:12:53'),
(10132, 1, ' 列表数据原则上显示一行文字即可，超出文字可用……代替', '需求原型', 10569, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:35:10', '2016-12-21 07:35:10'),
(10133, 1, ' 点击国家名称进入详情页面', '需求原型', 10575, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:35:37', '2016-12-21 07:35:37'),
(10134, 1, ' 已发布的国家，没有删除按钮（自己理解的不知道是否正确）', '需求原型', 10572, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:36:29', '2016-12-21 07:36:29'),
(10135, 1, ' 点击发布校验信息填写是否完整，若不完整提示“请填写完整信息后发布”', '需求原型', 10571, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:39:15', '2016-12-21 07:39:15'),
(10136, 1, ' 点击发布国家状态置为&quot;已发布&quot;，国家信息发布在微网站上', '需求原型', 10573, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:39:37', '2016-12-21 07:39:37'),
(10137, 2, ' 国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型', 10571, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:40:11', '2016-12-21 07:40:11'),
(10138, 3, ' 1.英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', 10571, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:40:39', '2016-12-21 07:40:39'),
(10139, 4, ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', 10571, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:40:59', '2016-12-21 07:40:59'),
(10140, 5, ' 封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', 10571, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:41:46', '2016-12-21 07:41:46'),
(10141, 6, '   居住环境、  社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型', 10571, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:43:47', '2016-12-21 07:43:47'),
(10142, 1, '  国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型 ', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:44:13', '2016-12-21 07:44:13'),
(10143, 2, '英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:45:14', '2016-12-21 07:45:14'),
(10144, 3, ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:46:00', '2016-12-21 07:46:00'),
(10145, 4, '  封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:46:37', '2016-12-21 07:46:37'),
(10146, 5, ' 居住环境、 社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型 ', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:47:45', '2016-12-21 07:47:45'),
(10147, 1, ' 点击“新增”或“编辑”按钮打开政策新增页（确定点“编辑”也进新增页吗？）', '需求原型', 10581, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:53:33', '2016-12-21 07:53:33'),
(10148, 1, ' 点击“删除”按钮可删除移民政策。（不需要确定弹框吗？）', '需求原型', 10584, '待确认', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:54:11', '2016-12-21 07:54:11'),
(10149, 1, ' 列表分页显示，首页默认显示15条', '需求原型 ', 10582, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:54:28', '2016-12-21 07:54:28'),
(10150, 2, '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10581, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:54:52', '2016-12-21 07:54:52'),
(10151, 1, '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', 10583, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:55:01', '2016-12-21 07:55:01'),
(10152, 3, ' 相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', 10581, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:55:36', '2016-12-21 07:55:36'),
(10153, 2, '  相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', 10583, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 07:55:45', '2016-12-21 07:55:45'),
(10154, 1, ' 当前项目为“上线”状态时通过“暂停”按钮可切换项目状态至暂停或售罄状态，其中暂停项目不在网站显示。', '需求文档 ', 10492, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:00:08', '2016-12-21 08:00:08'),
(10155, 2, ' 在项目详情页通过“发布”按钮可发布项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验项目信息是否填写完整，包括基本信息、申请条件、办理流程、费用详情、材料清单信息。若存在未填写项需要提示补充项目资料后方可发布。', '需求文档 ', 10493, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:00:24', '2016-12-21 08:00:24'),
(10156, 9, ' 3.	项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:01:47', '2016-12-21 08:01:47'),
(10157, 10, ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:02:12', '2016-12-21 08:02:12'),
(10158, 6, ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:02:19', '2016-12-21 08:02:19'),
(10159, 7, '项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:02:38', '2016-12-21 08:02:38'),
(10160, 11, ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:02:57', '2016-12-21 08:02:57'),
(10161, 8, ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:03:02', '2016-12-21 08:03:02'),
(10162, 9, ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:03:14', '2016-12-21 08:03:14'),
(10163, 12, ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:03:20', '2016-12-21 08:03:20'),
(10164, 13, ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:03:46', '2016-12-21 08:03:46'),
(10165, 10, ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:03:51', '2016-12-21 08:03:51'),
(10166, 11, ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:04:02', '2016-12-21 08:04:02'),
(10167, 14, ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:04:08', '2016-12-21 08:04:08'),
(10168, 15, ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:04:30', '2016-12-21 08:04:30'),
(10169, 12, ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:04:35', '2016-12-21 08:04:35'),
(10170, 13, ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:04:53', '2016-12-21 08:04:53'),
(10171, 16, ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:04:58', '2016-12-21 08:04:58'),
(10172, 17, ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:05:08', '2016-12-21 08:05:08'),
(10173, 14, ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:05:14', '2016-12-21 08:05:14'),
(10174, 15, ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:05:39', '2016-12-21 08:05:39'),
(10175, 18, ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:05:46', '2016-12-21 08:05:46'),
(10176, 19, ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:05:56', '2016-12-21 08:05:56'),
(10177, 16, ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:06:04', '2016-12-21 08:06:04'),
(10178, 17, ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:06:14', '2016-12-21 08:06:14'),
(10179, 20, ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:06:19', '2016-12-21 08:06:19'),
(10180, 21, ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:06:38', '2016-12-21 08:06:38'),
(10181, 18, ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:06:45', '2016-12-21 08:06:45'),
(10182, 19, ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', 10491, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:07:01', '2016-12-21 08:07:01'),
(10183, 22, ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', 10489, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:07:09', '2016-12-21 08:07:09'),
(10184, 1, ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', 10496, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:09:13', '2016-12-21 08:09:13'),
(10185, 1, ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', 10502, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:09:23', '2016-12-21 08:09:23'),
(10186, 2, ' 下拉框仅可修改状态为：“暂停”、“售罄', '需求文档 ', 10492, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:10:12', '2016-12-21 08:10:12'),
(10187, 3, ' 检查保存是否成功 3a1若保存失败，网页给出提示“保存失败”。', '需求文档 ', 10492, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:10:35', '2016-12-21 08:10:35'),
(10188, 3, ' 2.	更改项目状态为“上线”状态，同时网站端同步当前项目信息。', '需求文档 ', 10493, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:11:16', '2016-12-21 08:11:16'),
(10189, 4, ' 坚查项目信息是否完整 2a1若项目基本信息不完整提示“请完善项目信息”后发布。 2a2 若申请条件未填写，提示“请补充项目申请条件”。 2a3 若办理流程未填写，提示“请补充项目办理流程”。 2a4 若费用详情未填写，提示“请补充项目费用详情”。 2a5 若材料清单未填写，提示“请补充材料清单”。 2b 若发布失败，提示失败原因。', '需求文档 ', 10493, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:11:28', '2016-12-21 08:11:28'),
(10190, 6, ' 用户可在国家管理模块通过“新增”按钮创建国家信息，创建国家时需填写国家基本信息；新增时国家从国家字典中选择，其中英文名、地理位置均为联动信息，不可单独编辑；新增的国家默认为“未发布”状态。 新增后的国家可在国家管理页列表查看。', '需求文档 ', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:12:00', '2016-12-21 08:12:00'),
(10191, 7, ' 在国家管理模块通过“编辑”按钮可对国家信息进行编辑操作。国家编辑时可修改基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍等信息。其中生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍均为富文本编辑方式录入。', '需求文档 ', 10571, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:12:19', '2016-12-21 08:12:19'),
(10192, 2, ' 在国家详情页通过“发布”按钮可国家项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验国家信息是否填写完整，包括基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍信息。若存在未填写项需要提示补充国家资料后方可发布。', '需求文档 ', 10573, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:12:33', '2016-12-21 08:12:33'),
(10193, 7, ' 1.	国家名：必填属性，加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列； 2.	英文名：此处为选择国家后自动加载。 3.	地理分类：此处为选择国家后自动加载。 4.	移民热点：必填属性，可多选；选项列表由字典管理处维护。 5.	代表icon：代表国家的国旗图片，图片格式：支持jpg,png格式图片，尺寸为待定,大小不超过50kb。', '需求文档 ', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:13:02', '2016-12-21 08:13:02'),
(10194, 8, ' 6.	封面图片：用于在网站列表处显示的缩略图；图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb。 7.	国家简介：富文本输入方式，可填写500个汉字，并且支持图文并茂。 8.	发布状态：新增时国家为“未发布”状态，且不可手动更改。', '需求文档 ', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:13:18', '2016-12-21 08:13:18'),
(10195, 9, ' 验证各项输入是否合法 3a1 若为空，给出不能为空提示。 3a2 若输入不合法，给出输入不合法提示。 3b 若保存失败，提示失败原因。', '需求文档 ', 10570, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:13:34', '2016-12-21 08:13:34'),
(10196, 3, ' 1.	检查国家信息是否完整，包括国家基本信息页各项必填项，以及生活环境、社会福利、教育水准、投资置业有没有录入信息。 2.	更改国家状态为“已发布”状态，同时网站端同步当前国家信息。', '需求文档 ', 10573, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:14:13', '2016-12-21 08:14:13'),
(10197, 4, ' 2a检查国家信息是否完整 2a1若国家基本信息不完整提示“请完善国家基本信息”后发布。 2a2 若生活环境未填写，提示“请填写生活环境”。 2a3 若社会环境未填写，提示“请填写社会环境”。 2a4 若社会福利未填写，提示“请填写社会福利”。 2a5 若教育水准未填写，提示“请填写教育水准”。 2a5 若投资置业未填写，提示“请填写投资置业”。 2b 若发布失败，提示失败原因。', '需求文档 ', 10573, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:14:34', '2016-12-21 08:14:34'),
(10198, 1, ' 用户可在评估管理处添加、设置评估问卷，设置完成后，网站端可依据此问题列表及相关设置展示评估问题及作答方式；C端用户提交作答评估问卷后依据此处设置的匹配关系及规则加载推荐项目列表。', '需求文档 ', 10519, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:17:32', '2016-12-21 08:17:32'),
(10199, 2, ' 修改排序：在问题列表处修改问题排序数字，点击保存按钮可保存排序、保存匹配规则。保存后问卷信息及其设置在网站端生效。', '需求文档 ', 10519, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:17:40', '2016-12-21 08:17:40'),
(10200, 5, ' 在评估管理模块点击“新增”按钮进入新增问题页面，新增问题时需填写问题名、问题注解、作答模式、是否必填、答案选项等。其中问题名、问题注解、作答模式、是否必填、最多可选个数均为必填项。新增后的问题可设置起匹配关系，调整排序，修改匹配权重。', '需求文档 ', 10518, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:18:17', '2016-12-21 08:18:17'),
(10201, 5, ' 问题设置界面可修改评估问题信息，可设置问题对应的项目特性以及问题答案对应的项目属性的各项要求。', '需求文档 ', 10520, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:18:29', '2016-12-21 08:18:29'),
(10202, 2, ' 用户通过移动端访问微网站，当用户点击“进度查询”菜单时检查是否是会员； 若用户是会员则查询其办理的项目信息列表。 若用户不是会员，跳转至绑定会员页，提示其输入信息绑定会员。 会员用户可查询项目办理进度，签订协议信息；并可通过公众号时时推送办理进度信息。', '需求文档 ', 10523, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:18:48', '2016-12-21 08:18:48'),
(10203, 1, ' 验证非空属性； 验证当前密码是否正确； 验证新密码与确认密码是否一致', '需求文档 ', 10480, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:19:32', '2016-12-21 08:19:32'),
(10204, 1, ' 	登录：用户填写手机号、短信验证码可完成登录操作。', '需求文档 ', 10589, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:23:15', '2016-12-21 08:23:15'),
(10205, 2, ' 	登录入口:首页-专属管家，移民评估-测试问卷提交，个人中心-我的资料、我的评估结果、我的专属管家、我的进度，意见反馈进入后判断是否登录', '需求文档 ', 10589, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:23:28', '2016-12-21 08:23:28'),
(10206, 1, ' 	短信验证码：短信验证码由6位数字构成。网络畅通的情况下，用户需要在15分钟内输入正确的6位短信验证码，前台在60s后可重新发送新的验证码，短信验证码输入提交后即失效，发送限制依据短信平台规则(一分钟一条,一小时3条,一天10条)', '需求文档 ', 10588, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:23:38', '2016-12-21 08:23:38'),
(10207, 2, ' 显示【用户】手机号输入框（灰色字提示请输入您的手机号）、短信验证码输入框（灰色字提示请输入验证码），获取验证码按钮，登录按钮', '需求文档 ', 10588, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:24:04', '2016-12-21 08:24:04'),
(10208, 3, ' 校验手机号码长度，格式是否正确； 	验证手机号是否已输入，若未输入，提示“请输入手机号” 	如长度有误提示：“手机号码长度不是11位，请重新输入” 	如号段格式有误，提示：“手机号格式不正确，请重新输入”', '需求文档 ', 10588, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:24:15', '2016-12-21 08:24:15'),
(10209, 4, ' 调用短信接口，发送短信验证码至用户手机号。 验证码发送成功后，按钮“获取验证码”变更为灰色不可点击“重新获取（60）”倒计时，倒计时结束后按钮变更“重新获取”用户可点击发送新的验证码，则原有验证码失效。提示：“该验证码已失效，请重新输入”', '需求文档 ', 10588, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:24:28', '2016-12-21 08:24:28'),
(10210, 5, ' 验证验证码是否为正确，如输入错误，提示验证码输入错误，请重试！', '需求文档 ', 10588, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:24:57', '2016-12-21 08:24:57'),
(10211, 1, ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', 10558, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:25:53', '2016-12-21 08:25:53'),
(10212, 1, '  用户选择国家城市，进入体验入口，进入不同的入口看到不同的场景图片及城市介绍', '需求文档 ', 10587, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:26:44', '2016-12-21 08:26:44'),
(10213, 1, ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', 10557, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:27:00', '2016-12-21 08:27:00'),
(10214, 1, ' 用户提交移民评估的问卷后可根据答题结果获得项目匹配度最高的3种项目方案', '需求文档 ', 10559, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:27:25', '2016-12-21 08:27:25'),
(10215, 2, ' 进入移民评估页面。 1．	未登录或未评估用户展示评估问题及答案 2．	已评估的用户登录后展示之前做过的评估问卷 3．	从生活体验入口进来，自动选中意向国家', '需求文档 ', 10558, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:27:47', '2016-12-21 08:27:47'),
(10216, 3, ' 评估问题及答案从后台进行设置，包括单选多选，标签选择还是输入框，题目对应权重及答案跟项目属性的匹配', '需求文档 ', 10558, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:28:04', '2016-12-21 08:28:04'),
(10217, 4, ' 1.判断每道题是否已填，如未填则提示用户：您还没有填写此题 2.判断用户是否登录，未登录跳转登录页面', '需求文档 ', 10558, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:28:20', '2016-12-21 08:28:20'),
(10218, 5, ' 1.根据用户匹配度结果优先展示匹配度最高的前3个项目 2.排序规则：按匹配度倒序排列，如匹配度相同则展示资产要求最高的几项 3根据用户填写答案，展示对应的8项是否满足', '需求文档 ', 10558, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:28:32', '2016-12-21 08:28:32'),
(10219, 9, ' 用户报名参加活动，后台记录该用户的报名信息 活动列表展示活动缩略图、名称、时间、地点、标签、我要报名按钮 活动详情展示活动宣传图、名称、活动描述，时间、地点，报名姓名（必填）、联系方式（必填），参与人数（选填）确认提交', '需求文档 ', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:29:06', '2016-12-21 08:29:06'),
(10220, 10, ' 1.当活动结束时，标签展示“报名结束”当活动正在进行未到活动时间点时，标签展示“火热报名中” 2.报名结束的活动不可点击我要报名按钮 3.进入后加载2屏活动列表，上拉加载一屏 4.排序按活动时间倒序排列 5.活动名称、时间最多展示一行，活动地点最多展示两行', '需求文档 ', 10560, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:29:23', '2016-12-21 08:29:23'),
(10221, 11, ' 1.姓名和联系方式是必填项，如未填写，提交按钮置灰不允许提交，用户已登录，则自动展示其手机号 2.姓名可填英文或中文字符  3. 联系方式填写手机号，如长度有误提示：“手机号码长度不是11位，请重新输入” 4.如号段格式有误，提示：“手机号格式不正确，请重新输入” 5.如填写正确无误，确认按钮恢复为可点击', '需求文档 ', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:29:48', '2016-12-21 08:29:48'),
(10222, 12, ' 提示用户 报名成功，3s后返回到活动列表页', '需求文档 ', 10561, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:29:58', '2016-12-21 08:29:58'),
(10223, 2, ' 筛选条件：按国家地区 或按项目类型筛选', '需求文档 ', 10551, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:30:50', '2016-12-21 08:30:50'),
(10224, 3, ' 默认按国家地区分类，右侧拼音为国家首字母，只显示有项目的国家首字母 按国家地区：展示国家首字母、国家名称、项目名称、项目图片、推荐指数、右侧快捷拼音查找 按项目类型筛选：显示所有对外发布的项目分类，排序：投资/购房/护照/技术/留学/其他，如类型下没有项目则不显示该类型，筛选结果展示同上', '需求文档 ', 10551, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:31:11', '2016-12-21 08:31:11'),
(10225, 4, ' 排序规则： 按国家的首字母拼音顺序排序，该首字母拼音下无国家，则不展示此字母 如相同首字母的国家，则按项目数多的国家优先展示，项目数相同，按推荐指数平均分最高的优先展示，推荐指数相同按发布时间倒序排列 相同国家下的项目，按推荐指数从高到低排序，相同推荐指数按发布时间倒序排列 项目列表每次加载2屏，超出2屏时，每次手势上滑后加载2屏', '需求文档 ', 10551, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:31:29', '2016-12-21 08:31:29'),
(10226, 5, ' 点击某一项目进入项目详情H5页，展示项目名称、图片、项目介绍、项目优势、申请条件、办理流程、预约信息 项目介绍、项目优势、申请条件、办理流程后台进行设置。 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页。', '需求文档 ', 10551, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:31:55', '2016-12-21 08:31:55'),
(10227, 1, ' 项目优势、办理流程最多展示10条，申请条件至少展示2条，最多展示7条，其中申请条件描述限制15个字。', '需求文档 ', 10552, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:32:06', '2016-12-21 08:32:06'),
(10228, 2, ' 预约信息填写预约人信息及手机号，如用户已登录，则展示用户手机号，可编辑修改，校验姓名手机号是否为空，手机号长度，手机号段格式同4.2.1登录。 点击立即预约，提示用户预约成功，确认后返回到项目列表页面，点击免费评估，进入评估页面，判断是否做过评估信息，如提交则展示上一次提交信息，如未做过评估，则问卷中意向国家选中该项目所在国家', '需求文档 ', 10555, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:32:19', '2016-12-21 08:32:19'),
(10229, 1, ' 入口：1微信菜单-生活体验、2、微站用户端首页-生活体验', '需求文档 ', 10562, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:32:52', '2016-12-21 08:32:52'),
(10230, 2, ' 生活体验提供用户海外当地的生活场景展示，数据来源移民项目所在国家城市 生活体验包括：国家列表、城市列表、体验入口、场景展示 国家列表： 用户进入生活体验先选择意向国家，国家来源于移民项目所在的国家，可左右滑动展示显示移民国家，循环查看所有意向国家，排序按后台设置的顺序， 手势向左滑动时，展示国家1,国家2,国家3,…', '需求文档 ', 10562, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:33:05', '2016-12-21 08:33:05'),
(10231, 1, ' 城市列表： 当该国家只有一个城市时跳过该页面进入体验入口，当该国家下只有2个或3个城市时，均分显示城市，不可上下滑动，当大于3个城市时，每次手动向上滑动一次，则展示下一个城市，排序按后台设置的顺序', '需求文档 ', 10563, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:33:17', '2016-12-21 08:33:17'),
(10232, 1, ' 体验入口： 1、城市介绍、房产、学校、购物、街景、医院， 后台上传对应的图片。 2、管家、方案、服务，后续当微站上线后，增加对应的文字+链接，链接到专属管家、定制方案、海外服务等模块。一期上线生活体验时暂不出现文字+链接', '需求文档 ', 10564, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:33:33', '2016-12-21 08:33:33'),
(10233, 1, ' 场景介绍： 展示对应的图片及图片描述，或视频及视频描述，可左右滑动循环查看，后台上传对应数据，排序按后台设置的顺序，手势向左滑动时依次展示。', '需求文档 ', 10565, '正常', 116, '', '腰立辉', '腰立辉', '2016-12-21 08:33:47', '2016-12-21 08:33:47');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sccesscase`
--

DROP TABLE IF EXISTS `tp_sccesscase`;
CREATE TABLE IF NOT EXISTS `tp_sccesscase` (
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

--
-- 转存表中的数据 `tp_sccesscase`
--

INSERT INTO `tp_sccesscase` (`id`, `cat`, `car`, `bpath`, `before`, `apath`, `after`, `desc`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '钣金喷漆', '雪铁龙C3-XR', '/Case/before/2016-10-29/', '581490001107b.JPG', '/Case/after/2016-10-29/', '581490aa12a9e.jpg', '前翼子板撞花', '腰立辉', '腰立辉', '2016-10-22 14:37:41', '2016-10-29 12:06:02'),
(2, '大保养', '奔驰E300', '/Case/before/2016-10-29/', '58149047d90ea.jpg', '/Case/after/2016-10-29/', '581490b6c991d.jpg', '奔驰豪车30000公里保养，更换机油三滤，刹车片，变速箱油，火花塞……', '腰立辉', '腰立辉', '2016-10-22 14:37:50', '2016-10-29 12:06:14');

-- --------------------------------------------------------

--
-- 表的结构 `tp_scene`
--

DROP TABLE IF EXISTS `tp_scene`;
CREATE TABLE IF NOT EXISTS `tp_scene` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10038 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_scene`
--

INSERT INTO `tp_scene` (`id`, `sn`, `type`, `level`, `swho`, `swhen`, `testip`, `scene`, `state`, `proid`, `flow`, `sourceid`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10000, 1, 'A', 2, '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', 45, '登录-建项目-建里程碑', 0, '腰立辉', '腰立辉', '2016-10-28 07:52:35', '2016-09-27 08:25:28'),
(10001, 2, 'M', 2, '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', 45, '登录-建产品-建项目-建里程碑-选系统', 0, '腰立辉', '腰立辉', '2016-09-23 16:40:02', '2016-09-23 16:40:02'),
(10002, 3, 'M', 2, '默认', '无被测系统时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', 45, '登录-建项目-建里程碑-建系统-选系统', 0, '腰立辉', '腰立辉', '2016-09-23 16:40:09', '2016-09-23 16:40:09'),
(10003, 1, 'M', 2, '默认', '空白数据库', '', '建立测试项目', '正常', 48, '登录-件产品-建项目--详情-里程碑-关联系统-', 0, '腰立辉', '腰立辉', '2016-09-24 13:23:31', '2016-09-24 13:23:31'),
(10004, 1, 'M', 2, '默认', '默认', '', '11', '正常', 24, '', 0, '腰立辉', '腰立辉', '2016-09-25 13:23:05', '2016-09-25 13:23:05'),
(10005, 4, 'M', 2, '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', 45, '登录-建项目-建里程碑', 10000, '腰立辉', '腰立辉', '2016-09-25 13:39:18', '2016-09-25 13:38:12'),
(10006, 5, 'M', 2, '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目', '正常', 45, '登录-建项目-建里程碑', 10000, '腰立辉', '腰立辉', '2016-09-25 13:42:14', '2016-09-25 13:42:14'),
(10007, 6, 'M', 2, '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', 45, '登录-建产品-建项目-建里程碑-选系统', 10001, '腰立辉', NULL, '2016-09-25 13:46:13', '0000-00-00 00:00:00'),
(10008, 1, 'M', 2, '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', 47, '登录-建项目-建里程碑', 10000, '腰立辉', NULL, '2016-09-25 13:53:23', '0000-00-00 00:00:00'),
(10027, 2, 'M', 2, '买顾', '客户已注册', '', '推送商家商家确认', '正常', 51, '', 0, '腰立辉', '腰立辉', '2016-10-25 09:08:33', '2016-10-25 09:08:33'),
(10010, 1, 'M', 2, '管理员', '默认', '', '添加TOP100车款', '正常', 46, '', 0, '腰立辉', '腰立辉', '2016-09-27 08:47:46', '2016-09-27 08:47:46'),
(10011, 2, 'M', 2, '管理员', '默认', '', '给TOP100车款批量配置电销和买顾', '正常', 46, '', 0, '腰立辉', '腰立辉', '2016-09-27 08:57:28', '2016-09-27 08:57:28'),
(10012, 3, 'M', 2, '默认', '默认', '', '【功能】车型及报价员配置管理', '正常', 46, '', 0, '腰立辉', '腰立辉', '2016-10-10 05:32:31', '2016-10-10 05:32:31'),
(10013, 4, 'M', 2, '默认', '默认', '', '【功能】价格收集管理（业务管理）', '正常', 46, '', 0, '腰立辉', '腰立辉', '2016-10-10 05:33:14', '2016-10-10 05:33:14'),
(10014, 5, 'M', 2, '默认', '默认', '', '【功能】车型价格库', '正常', 46, '', 0, '腰立辉', '腰立辉', '2016-10-10 05:33:49', '2016-10-10 05:33:49'),
(10015, 6, 'M', 2, '默认', '默认', '', '【功能】价格库存管理', '正常', 46, '', 0, '腰立辉', '腰立辉', '2016-10-10 05:34:32', '2016-10-10 05:34:32'),
(10016, 7, 'M', 2, '默认', '默认', '', '【功能】库存价格收集', '正常', 46, '', 0, '腰立辉', '腰立辉', '2016-10-10 05:34:51', '2016-10-10 05:34:51'),
(10017, 8, 'M', 2, '【功能】', '默认', '', '登陆模块', '正常', 45, '', 0, '腰立辉', '腰立辉', '2016-10-13 01:56:38', '2016-10-13 01:56:38'),
(10018, 9, 'M', 2, '【功能】', '默认', '', '产品库-产品管理', '正常', 45, '', 0, '腰立辉', '腰立辉', '2016-10-13 01:57:06', '2016-10-13 01:57:06'),
(10019, 10, 'M', 2, '【功能】', '默认', '', '项目管理', '正常', 45, '', 0, '腰立辉', '腰立辉', '2016-10-13 01:57:21', '2016-10-13 01:57:21'),
(10021, 11, 'M', 2, '【功能】', '默认', '', '项目-里程碑', '正常', 45, '里程碑下所有子功能', 0, '腰立辉', '腰立辉', '2016-10-17 01:40:20', '2016-10-17 01:40:20'),
(10026, 1, 'M', 2, '买顾', '客户未注册', '', '推送商家', '正常', 51, '', 0, '腰立辉', '腰立辉', '2016-10-25 09:08:03', '2016-10-25 09:08:03'),
(10028, 3, 'M', 2, '买顾', '客户已注册', '', '推送商家商家取消交易', '正常', 51, '', 10027, '腰立辉', '腰立辉', '2016-10-25 09:24:30', '2016-10-25 09:24:30'),
(10029, 4, 'M', 2, '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', 51, '', 10027, '腰立辉', '腰立辉', '2016-10-26 02:01:56', '2016-10-26 02:01:56'),
(10030, 5, 'M', 2, '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', 51, '', 10028, '腰立辉', '腰立辉', '2016-10-26 02:02:20', '2016-10-26 02:02:20'),
(10031, 1, 'M', 2, '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', 80, '', 10029, '腰立辉', '腰立辉', '2016-11-02 01:38:51', '2016-11-02 01:39:11'),
(10032, 2, 'M', 2, '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', 80, '', 10030, '腰立辉', '腰立辉', '2016-11-02 01:38:56', '2016-11-02 01:39:16'),
(10033, 1, 'M', 3, '关注用户', '默认', '', '在公众订阅号，直接打开并提交报名', '正常', 107, '微信号个人中心->公司名片->提交报名', 0, '腰立辉', '腰立辉', '2016-12-07 07:10:43', '2016-12-09 06:18:29'),
(10034, 2, 'M', 2, '专属管家', '未开启个人名片时', NULL, '分享公司名片', '正常', 107, '', 0, '腰立辉', '腰立辉', '2016-12-09 06:26:06', '2016-12-09 06:26:06'),
(10035, 3, 'M', 2, '专属管家', '开启个人名片', NULL, '分享公司名片-分享个人名片', '正常', 107, '', 10034, '腰立辉', '腰立辉', '2016-12-09 06:27:31', '2016-12-09 06:29:00'),
(10036, 4, 'M', 2, '关注用户', '在管家分享后', NULL, '管家名片填写报名信息', '正常', 107, '', 0, '腰立辉', '腰立辉', '2016-12-09 06:32:55', '2016-12-09 06:32:55'),
(10037, 1, 'M', 2, '默认', 'guibucun', NULL, '12244', '正常', 116, 'jiaguo-xiangmu-w-fa-qiantai =bao', 0, '魏斌', '魏斌', '2016-12-21 09:06:45', '2016-12-21 09:06:45');

-- --------------------------------------------------------

--
-- 表的结构 `tp_scenefunc`
--

DROP TABLE IF EXISTS `tp_scenefunc`;
CREATE TABLE IF NOT EXISTS `tp_scenefunc` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10252 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_scenefunc`
--

INSERT INTO `tp_scenefunc` (`id`, `sn`, `funcid`, `sysno`, `path`, `func`, `sceneid`, `remarks`, `sourceid`, `caseid`, `casestate`, `casemain`, `caseexpected`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10038, 3, 10206, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', 10010, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:56:09', '0000-00-00 00:00:00'),
(10039, 4, 10209, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', 10010, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:56:13', '0000-00-00 00:00:00'),
(10036, 1, 10202, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', 10010, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:55:50', '0000-00-00 00:00:00'),
(10033, 3, 10003, 'Auto.Access', '产品库', '产品-添加', 10000, NULL, 0, 10003, '已绑定', '正常添加测试产品', '添加成功', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-14 09:02:09', '2016-10-14 09:02:09'),
(10031, 1, 10000, 'Auto.Access', '登陆模块', '登录', 10000, '1231', 0, 10000, '已绑定', '正常登陆', '登入系统，并显示用户姓名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-28 08:10:57', '2016-10-28 08:10:57'),
(10032, 4, 10002, 'Auto.Access', '产品库', '产品列表', 10000, '', 0, 10102, '已绑定', '查看产品列表', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-14 09:02:43', '2016-10-14 09:02:43'),
(10037, 2, 10201, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', 10010, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:56:04', '0000-00-00 00:00:00'),
(10034, 4, 10001, 'Auto.Access', '登陆模块', '注销', 10000, NULL, 0, 10002, '已绑定', '正常注销', '登出系统', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-14 09:02:19', '2016-10-14 09:02:19'),
(10040, 5, 10210, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', 10010, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:56:22', '0000-00-00 00:00:00'),
(10041, 6, 10211, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', 10010, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:56:24', '0000-00-00 00:00:00'),
(10042, 1, 10202, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', 10011, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:57:55', '0000-00-00 00:00:00'),
(10043, 2, 10201, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', 10011, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-09-27 08:57:57', '0000-00-00 00:00:00'),
(10044, 6, 10207, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', 10011, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-27 09:03:02', '2016-09-27 09:03:02'),
(10045, 7, 10208, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', 10011, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-27 09:03:08', '2016-09-27 09:03:08'),
(10046, 3, 10203, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', 10011, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-27 09:02:44', '2016-09-27 09:02:44'),
(10047, 4, 10204, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', 10011, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-27 09:02:50', '2016-09-27 09:02:50'),
(10048, 5, 10205, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', 10011, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-27 09:02:54', '2016-09-27 09:02:54'),
(10049, 1, 10201, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:35:39', '0000-00-00 00:00:00'),
(10050, 2, 10202, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:35:43', '0000-00-00 00:00:00'),
(10051, 3, 10203, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:35:45', '0000-00-00 00:00:00'),
(10052, 4, 10204, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:35:48', '0000-00-00 00:00:00'),
(10053, 5, 10205, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:35:54', '0000-00-00 00:00:00'),
(10054, 6, 10206, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:35:56', '0000-00-00 00:00:00'),
(10055, 7, 10207, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:00', '0000-00-00 00:00:00'),
(10056, 8, 10208, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:06', '0000-00-00 00:00:00'),
(10057, 9, 10209, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:09', '0000-00-00 00:00:00'),
(10058, 10, 10210, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:11', '0000-00-00 00:00:00'),
(10059, 11, 10211, 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', 10012, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:13', '0000-00-00 00:00:00'),
(10060, 1, 10212, 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:33', '0000-00-00 00:00:00'),
(10061, 2, 10213, 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:35', '0000-00-00 00:00:00'),
(10062, 3, 10214, 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:37', '0000-00-00 00:00:00'),
(10063, 4, 10215, 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:40', '0000-00-00 00:00:00'),
(10064, 5, 10216, 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:42', '0000-00-00 00:00:00'),
(10065, 6, 10217, 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:44', '0000-00-00 00:00:00'),
(10066, 7, 10218, 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:46', '0000-00-00 00:00:00'),
(10067, 8, 10219, 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:50', '0000-00-00 00:00:00'),
(10068, 9, 10220, 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', 10013, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:36:52', '0000-00-00 00:00:00'),
(10069, 1, 10221, 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', 10014, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:18', '0000-00-00 00:00:00'),
(10070, 2, 10222, 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', 10014, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:20', '0000-00-00 00:00:00'),
(10071, 3, 10223, 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', 10014, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:24', '0000-00-00 00:00:00'),
(10072, 4, 10224, 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', 10014, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:27', '0000-00-00 00:00:00'),
(10073, 5, 10225, 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', 10014, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:29', '0000-00-00 00:00:00'),
(10074, 6, 10226, 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', 10014, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:31', '0000-00-00 00:00:00'),
(10075, 1, 10227, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:52', '0000-00-00 00:00:00'),
(10076, 2, 10228, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:37:54', '0000-00-00 00:00:00'),
(10077, 3, 10229, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:00', '0000-00-00 00:00:00'),
(10078, 4, 10230, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:03', '0000-00-00 00:00:00'),
(10079, 5, 10231, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:08', '0000-00-00 00:00:00'),
(10080, 6, 10232, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:10', '0000-00-00 00:00:00'),
(10081, 7, 10233, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:12', '0000-00-00 00:00:00'),
(10082, 8, 10234, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:14', '0000-00-00 00:00:00'),
(10083, 9, 10235, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:16', '0000-00-00 00:00:00'),
(10084, 10, 10236, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:18', '0000-00-00 00:00:00'),
(10085, 11, 10237, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:30', '0000-00-00 00:00:00'),
(10086, 12, 10238, 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', 10015, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:33', '0000-00-00 00:00:00'),
(10087, 1, 10239, 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', 10016, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:46', '0000-00-00 00:00:00'),
(10088, 2, 10240, 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', 10016, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:48', '0000-00-00 00:00:00'),
(10089, 3, 10241, 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', 10016, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:50', '0000-00-00 00:00:00'),
(10090, 4, 10242, 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', 10016, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:52', '0000-00-00 00:00:00'),
(10091, 5, 10243, 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', 10016, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:55', '0000-00-00 00:00:00'),
(10092, 6, 10244, 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', 10016, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:38:57', '0000-00-00 00:00:00'),
(10093, 7, 10245, 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', 10016, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-10 05:39:00', '0000-00-00 00:00:00'),
(10094, 1, 10000, 'Auto.Access', '登陆模块', '登录', 10017, '123', 0, 10000, '已绑定', '正常登陆', '登入系统，并显示用户姓名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-14 08:58:31', '2016-10-14 08:58:31'),
(10095, 2, 10001, 'Auto.Access', '登陆模块', '注销', 10017, NULL, 0, 10002, '已绑定', '正常注销', '登出系统', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-14 08:59:00', '2016-10-14 08:59:00'),
(10096, 3, 10005, 'Auto.Access', '登陆模块', '改密', 10017, NULL, 0, 10101, '已绑定', '正常修改密码', '修改成功1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-14 09:00:29', '2016-10-14 09:00:29'),
(10097, 1, 10002, 'Auto.Access', '产品库', '产品列表', 10018, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:02:39', '0000-00-00 00:00:00'),
(10098, 2, 10003, 'Auto.Access', '产品库', '产品-添加', 10018, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:02:41', '0000-00-00 00:00:00'),
(10099, 3, 10004, 'Auto.Access', '产品库', '产品-编辑', 10018, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:02:44', '0000-00-00 00:00:00'),
(10100, 4, 10006, 'Auto.Access', '产品库', '系统-入口', 10018, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:02:46', '0000-00-00 00:00:00'),
(10101, 1, 10010, 'Auto.Access', '测试项目', '分组项目列表', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:02:58', '0000-00-00 00:00:00'),
(10102, 2, 10011, 'Auto.Access', '测试项目', '切换分组', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:01', '0000-00-00 00:00:00'),
(10103, 3, 10007, 'Auto.Access', '测试项目', '项目-添加', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:03', '0000-00-00 00:00:00'),
(10104, 4, 10008, 'Auto.Access', '测试项目', '项目-编辑', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:05', '0000-00-00 00:00:00'),
(10105, 5, 10009, 'Auto.Access', '测试项目', '项目-详情', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:07', '0000-00-00 00:00:00'),
(10106, 6, 10012, 'Auto.Access', '测试项目', '快速标记状态', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:12', '0000-00-00 00:00:00'),
(10107, 7, 10013, 'Auto.Access', '测试项目', '项目-里程碑入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:14', '0000-00-00 00:00:00'),
(10108, 8, 10014, 'Auto.Access', '测试项目', '项目-风险入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:17', '0000-00-00 00:00:00'),
(10109, 9, 10015, 'Auto.Access', '测试项目', '项目-系统入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:19', '0000-00-00 00:00:00'),
(10110, 10, 10016, 'Auto.Access', '测试项目', '项目-功能点入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:21', '0000-00-00 00:00:00'),
(10111, 11, 10017, 'Auto.Access', '测试项目', '项目-范围入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:24', '0000-00-00 00:00:00'),
(10112, 12, 10018, 'Auto.Access', '测试项目', '项目-场景入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:31', '0000-00-00 00:00:00'),
(10113, 13, 10019, 'Auto.Access', '测试项目', '项目-控件库入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:35', '0000-00-00 00:00:00'),
(10114, 14, 10020, 'Auto.Access', '测试项目', '项目-用例库入口', 10019, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-13 02:03:37', '0000-00-00 00:00:00'),
(10116, 1, 10000, 'Auto.Access', '登陆模块', '登录', 10008, NULL, 0, 10000, '已绑定', '正常登陆', '登入系统，并显示用户姓名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-17 08:27:08', '2016-10-17 08:27:08'),
(10117, 1, 10000, 'Auto.Access', '登陆模块', '登录', 10006, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-14 06:51:03', '0000-00-00 00:00:00'),
(10118, 1, 10022, 'Auto.Access', '项目-里程碑', '里程碑列表', 10021, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-17 01:52:12', '0000-00-00 00:00:00'),
(10119, 2, 10023, 'Auto.Access', '项目-里程碑', '切换项目', 10021, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-17 01:52:14', '0000-00-00 00:00:00'),
(10120, 3, 10024, 'Auto.Access', '项目-里程碑', '里程碑-添加', 10021, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-17 01:52:16', '0000-00-00 00:00:00'),
(10121, 4, 10025, 'Auto.Access', '项目-里程碑', '里程碑-修改', 10021, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-17 01:52:19', '0000-00-00 00:00:00'),
(10122, 5, 10027, 'Auto.Access', '项目-里程碑', '快速标记状态', 10021, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-17 01:52:21', '0000-00-00 00:00:00'),
(10123, 6, 10198, 'Auto.Access', '项目-里程碑', 'M人员-入口（手工）', 10021, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-17 01:52:24', '0000-00-00 00:00:00'),
(10124, 7, 10026, 'Auto.Access', '项目-里程碑', 'A人员-入口（自动化）', 10021, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-17 01:52:27', '0000-00-00 00:00:00'),
(10125, 2, 10007, 'Auto.Access', 'Access客户端-测试项目', '项目-添加', 10008, NULL, 0, 10103, '已绑定', '正常添加项目', '添加成功', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-17 08:28:15', '2016-10-17 08:28:15'),
(10147, 2, 10277, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', 10026, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:09:05', '0000-00-00 00:00:00'),
(10146, 1, 10273, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', 10026, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:09:00', '0000-00-00 00:00:00'),
(10148, 3, 10289, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', 10026, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:09:16', '0000-00-00 00:00:00'),
(10149, 4, 10292, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', 10026, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:09:21', '0000-00-00 00:00:00'),
(10150, 5, 10328, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', 10026, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:09:41', '0000-00-00 00:00:00'),
(10151, NULL, 10277, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-25 09:10:14', '2016-10-25 09:10:14'),
(10152, NULL, 10273, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-25 09:10:14', '2016-10-25 09:10:14'),
(10153, NULL, 10289, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-25 09:10:14', '2016-10-25 09:10:14'),
(10154, NULL, 10292, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-25 09:10:14', '2016-10-25 09:10:14'),
(10155, NULL, 10328, NULL, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-25 09:10:14', '2016-10-25 09:10:14'),
(10156, 6, 10335, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:10:35', '0000-00-00 00:00:00'),
(10157, 7, 10336, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:10:37', '0000-00-00 00:00:00'),
(10158, 8, 10337, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:10:40', '0000-00-00 00:00:00'),
(10159, 9, 10389, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:23:06', '0000-00-00 00:00:00'),
(10160, 10, 10396, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:23:15', '0000-00-00 00:00:00'),
(10161, 11, 10398, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:23:25', '0000-00-00 00:00:00'),
(10162, 12, 10338, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:23:53', '0000-00-00 00:00:00'),
(10163, 13, 10346, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', 10027, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, '2016-10-25 09:23:57', '0000-00-00 00:00:00'),
(10166, 1, 10289, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:05:35', '2016-10-26 02:05:35'),
(10167, 2, 10292, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:05:43', '2016-10-26 02:05:43'),
(10168, 3, 10328, NULL, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:05:47', '2016-10-26 02:05:47'),
(10171, 4, 10337, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:05:53', '2016-10-26 02:05:53'),
(10172, 5, 10389, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:05:57', '2016-10-26 02:05:57'),
(10173, 6, 10396, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:06:02', '2016-10-26 02:06:02'),
(10177, 7, 10399, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:06:07', '2016-10-26 02:06:07'),
(10175, 8, 10338, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:06:13', '2016-10-26 02:06:13'),
(10176, 9, 10346, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', 10028, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:06:18', '2016-10-26 02:06:18'),
(10180, 1, 10289, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:15', '2016-10-26 02:07:15'),
(10181, 2, 10292, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:10', '2016-10-26 02:07:10'),
(10182, 3, 10328, NULL, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:06', '2016-10-26 02:07:06'),
(10185, 4, 10337, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:21', '2016-10-26 02:07:21'),
(10186, 5, 10389, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:25', '2016-10-26 02:07:25'),
(10187, 6, 10396, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:30', '2016-10-26 02:07:30'),
(10188, 7, 10398, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:35', '2016-10-26 02:07:35'),
(10189, 8, 10338, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:39', '2016-10-26 02:07:39'),
(10190, 9, 10346, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', 10029, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:07:45', '2016-10-26 02:07:45'),
(10193, 1, 10289, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:08:46', '2016-10-26 02:08:46'),
(10194, 2, 10292, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:08:42', '2016-10-26 02:08:42'),
(10195, 3, 10328, NULL, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:08:38', '2016-10-26 02:08:38'),
(10198, 4, 10337, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:08:54', '2016-10-26 02:08:54'),
(10199, 5, 10389, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:08:59', '2016-10-26 02:08:59'),
(10200, 6, 10396, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:09:06', '2016-10-26 02:09:06'),
(10201, 7, 10399, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:09:11', '2016-10-26 02:09:11'),
(10202, 8, 10338, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:09:16', '2016-10-26 02:09:16'),
(10203, 9, 10346, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', 10030, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-10-26 02:09:21', '2016-10-26 02:09:21'),
(10204, 1, 10289, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10205, 2, 10292, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10206, 3, 10328, NULL, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10207, 4, 10337, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10208, 5, 10389, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10209, 6, 10396, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10210, 7, 10398, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10211, 8, 10338, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10212, 9, 10346, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', 10031, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:51'),
(10213, 1, 10289, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10214, 2, 10292, NULL, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10215, 3, 10328, NULL, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10216, 4, 10337, 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10217, 5, 10389, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10218, 6, 10396, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10219, 7, 10399, 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10220, 8, 10338, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10221, 9, 10346, 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', 10032, '', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:56'),
(10222, 1, 10425, 'wzb', '微站后台- 内容发布-移民管家', ' 管家新增', 0, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-07 10:13:36'),
(10230, 3, 10421, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:19:31'),
(10229, 2, 10420, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 重点项目', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:19:21'),
(10228, 1, 10419, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:19:19'),
(10231, 4, 10423, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 报名', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:19:36'),
(10232, 5, 10424, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', 10033, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:19:42'),
(10233, 1, 10419, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10034, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:27:06'),
(10234, 2, 10421, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10034, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:27:09'),
(10235, 3, 10422, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', 10034, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:27:13'),
(10236, 3, 10419, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:27:31', '2016-12-09 06:28:22'),
(10237, 4, 10421, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:27:31', '2016-12-09 06:28:22'),
(10238, 5, 10422, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:27:31', '2016-12-09 06:28:22'),
(10239, 1, 10426, 'wzb', '微站后台- 内容发布-移民管家', ' 管家编辑', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:28:22'),
(10240, 2, 10429, 'wzb', '微站后台- 内容发布-移民管家', ' 管家详情', 10035, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:28:22'),
(10241, 1, 10422, 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', NULL, NULL, '2016-12-09 06:33:27'),
(10242, 4, 10421, NULL, '微网站（用户）- 专属管家-公司名片', ' 名片信息', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:33:35', '2016-12-09 06:33:45'),
(10243, 3, 10420, NULL, '微网站（用户）- 专属管家-公司名片', ' 重点项目', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:33:35', '2016-12-09 06:33:45'),
(10244, 2, 10419, NULL, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:33:35', '2016-12-09 06:33:45'),
(10245, 5, 10423, NULL, '微网站（用户）- 专属管家-公司名片', ' 报名', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:33:35', '2016-12-09 06:33:45'),
(10246, 6, 10424, NULL, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', 10036, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-09 06:33:35', '2016-12-09 06:33:45'),
(10247, 1, 10570, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', 10037, 'qw', 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', '腰立辉', NULL, '2016-12-22 08:53:43'),
(10248, 2, 10568, 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', 10037, NULL, 0, NULL, '未绑定', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '魏斌', NULL, NULL, '2016-12-21 09:07:39'),
(10251, 3, 10480, 'wzb', '微站CRM后台- 登录', ' 修改密码', 10037, NULL, 0, 10137, '已绑定', '正常修改密码', ' 修改成功', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', NULL, '2016-12-21 10:34:47');

-- --------------------------------------------------------

--
-- 表的结构 `tp_stage`
--

DROP TABLE IF EXISTS `tp_stage`;
CREATE TABLE IF NOT EXISTS `tp_stage` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1068 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_stage`
--

INSERT INTO `tp_stage` (`id`, `sn`, `stage`, `proid`, `start`, `end`, `state`, `document`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1000, 1, '功能验证', 24, '2016-09-26', '2016-09-27', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 08:45:00', '2016-11-17 09:01:14'),
(1001, 2, '第一轮测试', 24, '2016-09-27', '2016-09-28', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 08:45:15', '2016-09-22 08:45:15'),
(1002, 3, '第二轮测试', 24, '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 08:45:29', '2016-09-22 08:45:29'),
(1003, 1, '功能验证', 45, '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 07:38:30', '2016-11-14 07:10:37'),
(1004, 2, '第一轮测试', 45, '2016-11-04', '2016-11-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 02:17:33', '2016-11-14 07:09:30'),
(1005, 3, '第二轮测试', 45, '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 08:49:43', '2016-09-22 08:49:43'),
(1006, 1, '编写测试计划', 47, '2016-09-24', '2016-09-25', '进行中', '无文档', '腰立辉', '腰立辉', '2016-09-24 06:50:00', '2016-11-04 02:07:48'),
(1007, 2, '编写测试用例', 47, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 06:50:05', '2016-09-24 06:50:05'),
(1008, 3, '功能验证', 47, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 06:50:08', '2016-09-24 06:50:08'),
(1009, 4, '第一轮测试', 47, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 06:50:12', '2016-09-24 06:50:12'),
(1010, 5, '第二轮测试', 47, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 06:50:19', '2016-09-24 06:50:19'),
(1011, 1, '编写测试计划', 48, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 12:44:20', '2016-09-24 12:44:20'),
(1012, 2, '编写测试用例', 48, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 12:44:27', '2016-09-24 12:44:27'),
(1013, 3, '第一轮测试', 48, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 12:44:35', '2016-09-24 12:44:35'),
(1014, 4, '第二轮测试', 48, '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 12:44:38', '2016-09-24 12:44:38'),
(1015, 1, '编写测试计划', 46, '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-09-28 07:47:40', '2016-09-28 07:47:40'),
(1016, 2, '编写测试用例', 46, '2016-09-26', '2016-10-09', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-10 05:28:07', '2016-10-10 05:28:07'),
(1017, 3, '功能验证', 46, '2016-10-11', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 02:18:01', '2016-09-28 07:48:17'),
(1018, 4, '第一轮测试', 46, '2016-10-11', '2016-10-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 02:18:05', '2016-09-28 07:48:36'),
(1019, 1, '第一轮测试', 54, '2016-09-23', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 02:13:25', '2016-10-20 02:13:25'),
(1020, 2, '第二轮测试', 54, '2016-10-09', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 02:12:39', '2016-10-20 02:12:39'),
(1021, 3, '第三轮测试', 54, '2016-10-15', '2016-10-18', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 02:13:15', '2016-10-20 02:13:15'),
(1022, 1, '第一轮测试', 59, '2016-10-10', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 02:47:57', '2016-10-20 02:47:52'),
(1023, 1, '编写测试计划', 50, '2016-10-20', '2016-10-21', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 02:17:03', '2016-10-20 06:59:52'),
(1024, 2, '编写测试用例', 50, '2016-10-20', '2016-11-02', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 07:00:07', '2016-10-20 07:00:07'),
(1025, 3, '功能验证', 50, '2016-11-02', '2016-11-03', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 07:00:18', '2016-10-20 07:00:18'),
(1026, 4, '第一轮测试', 50, '2016-11-03', '2016-11-04', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 07:00:28', '2016-10-20 07:00:28'),
(1027, 5, '第二轮测试', 50, '2016-11-04', '2016-11-05', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 07:00:43', '2016-10-20 07:00:43'),
(1028, 6, '线上验证测试', 50, '2016-11-05', '2016-11-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 07:01:01', '2016-10-20 07:01:01'),
(1029, 1, '编写测试计划', 51, '2016-10-21', '2016-10-22', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-21 03:32:27', '2016-10-21 03:32:27'),
(1030, 2, '编写测试用例', 51, '2016-10-21', '2016-10-25', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-25 09:03:06', '2016-10-21 03:32:46'),
(1031, 3, '功能验证', 51, '2016-10-24', '2016-10-24', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-25 09:26:01', '2016-10-21 03:33:11'),
(1032, 4, '第一轮测试', 51, '2016-10-24', '2016-10-25', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 08:15:00', '2016-10-21 03:33:24'),
(1033, 5, '第二轮测试', 51, '2016-10-25', '2016-10-26', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 08:15:07', '2016-10-21 03:33:37'),
(1034, 6, '线上验证测试', 51, '2016-10-27', '2016-10-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 08:15:10', '2016-10-21 03:33:48'),
(1035, 1, '功能验证', 80, '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 01:37:06', '2016-11-02 01:45:51'),
(1036, 3, '线上验证测试', 80, '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 01:37:19', '2016-11-02 01:55:14'),
(1037, 2, '第一轮测试', 80, '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 01:45:45', '2016-11-04 01:50:09'),
(1038, 1, '第一轮测试', 89, '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-03 08:43:50', '2016-11-03 08:43:50'),
(1039, 1, '第一轮测试', 92, '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 01:33:29', '2016-11-09 01:33:29'),
(1040, 2, '第二轮测试', 92, '2016-11-04', '2016-11-07', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 01:33:42', '2016-11-09 01:33:42'),
(1041, 3, '第三轮测试', 92, '2016-11-08', '2016-11-08', '已上线', '无文档', '腰立辉', '腰立辉', '2016-11-09 01:34:01', '2016-11-09 01:34:01'),
(1042, 1, '第一轮测试', 97, '2016-11-07', '2016-11-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 02:42:09', '2016-11-09 02:42:09'),
(1043, 1, '第一轮测试', 83, '2016-10-28', '2016-11-02', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 05:57:32', '2016-11-10 05:57:32'),
(1044, 2, '第二轮测试', 83, '2016-11-03', '2016-11-04', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 05:57:53', '2016-11-10 05:57:53'),
(1045, 3, '第三轮测试', 83, '2016-11-07', '2016-11-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 05:58:11', '2016-11-10 05:58:11'),
(1046, 1, '第一轮测试', 104, '2016-11-08', '2016-11-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-15 01:50:50', '2016-11-15 01:50:50'),
(1047, 1, '第一轮测试', 96, '2016-11-15', '2016-11-16', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-15 08:31:42', '2016-11-15 08:31:42'),
(1048, 1, '编写测试计划', 107, '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:28:24', '2016-12-07 09:41:54'),
(1065, 1, '编写测试计划', 116, NULL, '2016-12-22', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-21 05:45:40', '2016-12-21 05:45:40'),
(1050, 2, '功能验证', 107, '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:28:50', '2016-12-21 03:33:43'),
(1051, 3, '第一轮测试', 107, '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:28:57', '2016-12-21 03:33:43'),
(1052, 4, '第二轮测试', 107, '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:29:04', '2016-12-21 03:33:43'),
(1053, 5, '第三轮测试', 107, '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:29:10', '2016-12-21 03:33:43'),
(1054, 6, '第四轮测试', 107, '2016-12-05', '2016-12-20', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:29:17', '2016-12-21 03:33:43'),
(1055, 7, '线上验证测试', 107, '2016-12-15', '2016-12-21', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:29:23', '2016-12-21 03:33:43'),
(1056, 1, '平台搭建，可以初步管理测试项目', 108, '2016-12-05', '2016-12-16', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:43:17', '2016-12-05 09:44:07'),
(1057, 2, '平台优化，按照公司的流程对平台进行调整', 108, '2016-12-12', '2017-01-31', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 09:43:23', '2016-12-05 09:44:57'),
(1058, 1, '功能验证', 110, NULL, '2016-12-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-12 11:19:20', '2016-12-13 03:15:53'),
(1059, 2, '线上验证测试', 110, NULL, '2016-12-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-12 12:40:15', '2016-12-13 03:16:01'),
(1060, 3, '12-13线上验证测试', 110, NULL, '2016-12-13', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-13 03:16:32', '2016-12-15 01:44:07'),
(1061, 1, '编写测试计划', 114, NULL, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 15:17:32', '2016-12-17 15:17:32'),
(1062, 1, '编写测试计划', 113, NULL, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 15:17:40', '2016-12-17 15:17:40'),
(1063, 1, '编写测试计划', 112, NULL, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 15:17:48', '2016-12-17 15:17:48'),
(1064, 1, '编写测试计划', 111, NULL, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 15:17:57', '2016-12-17 15:17:57'),
(1066, 2, '编写测试用例', 116, NULL, '2016-12-26', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-21 05:46:02', '2016-12-21 09:04:44'),
(1067, 3, '研发冒烟测试', 116, NULL, '2016-12-27', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-21 05:46:16', '2016-12-22 01:41:54');

-- --------------------------------------------------------

--
-- 表的结构 `tp_stagetester`
--

DROP TABLE IF EXISTS `tp_stagetester`;
CREATE TABLE IF NOT EXISTS `tp_stagetester` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10064 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_stagetester`
--

INSERT INTO `tp_stagetester` (`id`, `sn`, `type`, `stageid`, `tester`, `start`, `end`, `plan`, `actual`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(10031, 1, 'C', 1029, '腰立辉', '2016-10-21', '2016-10-22', 1, 0, '腰立辉', '腰立辉', '2016-10-21 03:34:14', '2016-10-21 03:34:14'),
(10032, 1, 'C', 1030, '腰立辉', '2016-10-21', '2016-10-24', 8, 0, '腰立辉', '腰立辉', '2016-10-21 03:34:40', '2016-10-21 03:34:40'),
(10033, 1, 'M', 1031, '腰立辉', '2016-10-24', '2016-10-24', 5, 0, '腰立辉', '腰立辉', '2016-10-21 03:37:18', '2016-10-21 03:35:02'),
(10009, 1, 'M', 1011, '腰立辉', '2016-09-24', '2016-09-25', 8, 0, '腰立辉', '腰立辉', '2016-09-24 12:45:23', '2016-09-24 12:45:23'),
(10010, 1, 'M', 1013, '李小梅', '2016-09-24', '2016-09-25', 8, 0, '腰立辉', '腰立辉', '2016-09-24 12:45:46', '2016-09-24 12:45:46'),
(10011, 2, 'M', 1013, '曹玉芳', '2016-09-24', '2016-09-25', 8, 0, '腰立辉', '腰立辉', '2016-09-24 12:45:49', '2016-09-24 12:45:49'),
(10012, 1, 'M', 1000, '腰立辉', '2016-09-25', '2016-09-26', 8, 0, '腰立辉', '腰立辉', '2016-09-25 05:38:02', '2016-09-25 05:38:02'),
(10030, 1, 'M', 1006, '腰立辉', '2016-10-17', '2016-10-18', 8, 0, '腰立辉', '腰立辉', '2016-10-17 07:59:29', '2016-10-17 07:59:29'),
(10029, 1, 'M', 1004, '腰立辉', '2016-11-04', '2016-11-08', 16, 0, '腰立辉', '腰立辉', '2016-10-17 02:24:06', '2016-11-04 01:17:51'),
(10015, 1, 'M', 1008, '腰立辉', '2016-09-25', '2016-09-26', 8, 0, '腰立辉', '腰立辉', '2016-09-25 05:45:45', '2016-09-25 05:45:45'),
(10016, 1, 'M', 1003, '腰立辉', '2016-10-13', '2016-10-14', 8, 0, '腰立辉', '腰立辉', '2016-10-28 07:38:37', '2016-10-13 01:53:48'),
(10036, 1, 'M', 1034, '腰立辉', '2016-10-27', '2016-10-27', 8, 0, '腰立辉', '腰立辉', '2016-10-21 03:37:35', '2016-10-21 03:36:00'),
(10034, 1, 'M', 1032, '腰立辉', '2016-10-24', '2016-10-25', 8, 0, '腰立辉', '腰立辉', '2016-10-21 03:37:20', '2016-10-21 03:35:23'),
(10035, 1, 'M', 1033, '腰立辉', '2016-10-25', '2016-10-26', 8, 0, '腰立辉', '腰立辉', '2016-10-21 03:37:22', '2016-10-21 03:35:42'),
(10025, 1, 'M', 1015, '曹玉芳', '2016-09-28', '2016-09-29', 8, 0, '腰立辉', '腰立辉', '2016-09-28 07:48:49', '2016-09-28 07:48:49'),
(10026, 1, 'M', 1016, '腰立辉', '2016-09-26', '2016-10-09', 24, 0, '腰立辉', '腰立辉', '2016-09-28 07:49:25', '2016-09-28 07:49:25'),
(10027, 1, 'M', 1017, '曹玉芳', '2016-10-10', '2016-10-11', 8, 0, '腰立辉', '腰立辉', '2016-10-10 05:28:24', '2016-10-10 05:28:24'),
(10028, 2, 'M', 1017, '腰立辉', '2016-10-10', '2016-10-11', 8, 0, '腰立辉', '腰立辉', '2016-10-10 05:28:28', '2016-10-10 05:28:28'),
(10037, 1, 'M', 1035, '腰立辉', '2016-11-02', '2016-11-01', 2, 0, '腰立辉', '腰立辉', NULL, '2016-11-02 01:37:52'),
(10038, 1, 'M', 1036, '腰立辉', '2016-11-01', '2016-11-01', 1, 0, '腰立辉', '腰立辉', NULL, '2016-11-02 01:38:07'),
(10039, 1, 'M', 1037, '腰立辉', '2016-11-01', '2016-11-01', 1, 0, '腰立辉', '腰立辉', NULL, '2016-11-02 01:53:32'),
(10040, 1, 'M', 1038, '田亮', '2016-11-02', '2016-11-03', 8, 0, '腰立辉', '腰立辉', NULL, '2016-11-03 08:44:18'),
(10041, 2, 'M', 1008, '曹玉芳', '2016-11-10', '2016-11-11', 8, 0, '腰立辉', '腰立辉', NULL, '2016-11-10 03:04:46'),
(10042, 1, 'M', 1048, '腰立辉', '2016-12-05', '2016-12-06', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-05 09:29:53'),
(10043, 1, 'C', 1049, '腰立辉', '2016-12-05', '2016-12-06', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-05 09:31:28'),
(10044, 2, 'C', 1049, '魏斌', '2016-12-05', '2016-12-06', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-05 09:31:30'),
(10045, 0, 'M', 1050, '腰立辉', '2016-12-05', '2016-12-06', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-08 07:11:57'),
(10046, 2, 'M', 1050, '魏斌', '2016-12-05', '2016-12-06', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-05 09:32:11'),
(10047, 1, 'M', 1056, '腰立辉', '2016-12-05', '2016-12-15', 40, 0, '腰立辉', '腰立辉', NULL, '2016-12-05 09:55:45'),
(10048, 1, 'M', 1051, '腰立辉', '2016-12-09', '2016-12-10', 8, 0, '魏斌', '魏斌', NULL, '2016-12-09 03:49:42'),
(10049, 2, 'M', 1051, '魏斌', '2016-12-09', '2016-12-10', 8, 0, '魏斌', '魏斌', NULL, '2016-12-09 03:49:51'),
(10050, 1, 'M', 1049, '腰立辉', '2016-12-12', '2016-12-13', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-12 09:52:51'),
(10051, 1, 'M', 1058, '腰立辉', '2016-12-12', '2016-12-13', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-12 11:18:42'),
(10052, 1, 'M', 1059, '腰立辉', '2016-12-12', '2016-12-13', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-12 12:39:32'),
(10053, 1, 'M', 1060, '腰立辉', '2016-12-13', '2016-12-14', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-13 03:16:20'),
(10054, 1, 'M', 1052, '腰立辉', '2016-12-14', '2016-12-15', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-14 03:35:01'),
(10055, 1, 'M', 1053, '腰立辉', '2016-12-19', '2016-12-20', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-19 06:53:05'),
(10056, 1, 'M', 1054, '腰立辉', '2016-12-20', '2016-12-21', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-20 01:42:22'),
(10057, 1, 'M', 1055, '腰立辉', '2016-12-21', '2016-12-22', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-21 01:20:45'),
(10058, 1, 'C', 1066, '腰立辉', '2016-12-21', '2016-12-22', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-21 08:58:53'),
(10059, 2, 'C', 1066, '魏斌', '2016-12-21', '2016-12-22', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-21 08:58:56'),
(10060, 1, 'M', 1067, '杨学毅', '2016-12-22', '2016-12-23', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-22 01:34:08'),
(10061, 2, 'M', 1067, '项斌', '2016-12-22', '2016-12-23', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-22 01:34:16'),
(10062, 3, 'M', 1067, '谷一创', '2016-12-22', '2016-12-23', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-22 01:34:18'),
(10063, 4, 'M', 1067, '褚秀良', '2016-12-22', '2016-12-23', 8, 0, '腰立辉', '腰立辉', NULL, '2016-12-22 01:34:21');

-- --------------------------------------------------------

--
-- 表的结构 `tp_system`
--

DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE IF NOT EXISTS `tp_system` (
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
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_system`
--

INSERT INTO `tp_system` (`id`, `sysno`, `system`, `state`, `prodid`, `useversion`, `testversion`, `testip`, `testuser`, `testpass`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(3, 'APP.HMC', '惠买车APP', '正常', 1, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-09-21 02:17:05', '2016-09-21 02:17:05'),
(4, 'AutoB', '测试管理平台（后台）', '正常', 2, '', 'V1.10', '192.168.43.61：easypass', '121', '123456', '腰立辉', '腰立辉', '2016-10-21 02:29:12', '2016-12-05 09:47:25'),
(6, 'dealer.huimaiche.com', '惠买车商家版', '正常', 1, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-10-28 03:46:57', '2016-10-28 03:46:57'),
(68, 'AutoQ', '测试管理平台（前台）', '正常', 2, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-12-05 09:42:48', '2016-12-05 09:47:14'),
(10, 'OP.Counselor', '买车顾问管理后台', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:14:53', '2016-09-21 02:14:53'),
(11, 'OP.HmcDSCRM', '惠买车电商CRM', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-26 03:28:46', '2016-09-26 03:28:46'),
(12, 'OP.DealerCRM', '惠买车商家运营系统', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:15:15', '2016-09-21 02:15:15'),
(13, 'OP.DealerOP', '经销商信息管理', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:15:26', '2016-09-21 02:15:26'),
(14, 'OP.Deposit', '商家订金管理系统', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:15:35', '2016-09-21 02:15:35'),
(15, 'OP.Gift', '买车网礼品管理后台', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:15:41', '2016-09-21 02:15:41'),
(16, 'OP.Giftop', '惠买车礼品管理系统', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:15:54', '2016-09-21 02:15:54'),
(17, 'OP.Groupon', '团购管理后台', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:15:48', '2016-09-21 02:15:48'),
(18, 'OP.HMCcrm', '惠买车CRM', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:16:04', '2016-09-21 02:16:04'),
(19, 'OP.HmcCrmOp', '电商CRM后台管理系统', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:14:01', '2016-09-21 02:14:01'),
(20, 'OP.Ipayment', '惠买车支付管理系统', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:16:14', '2016-09-21 02:16:14'),
(21, 'OP.Security', 'OP权限系统', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:16:55', '2016-09-21 02:16:55'),
(22, 'OP.User', '惠买车用户管理系统', '正常', 1, NULL, NULL, NULL, '域账号', NULL, NULL, '腰立辉', '2016-09-21 02:16:22', '2016-09-21 02:16:22'),
(23, 'Web.hmc', '惠买车', '正常', 1, NULL, NULL, NULL, NULL, NULL, NULL, '腰立辉', '2016-09-13 05:35:06', '2016-09-13 05:35:06'),
(57, 'OP.maiche', '易车运营支持中心', '正常', 1, NULL, NULL, NULL, NULL, NULL, '腰立辉', '腰立辉', '2016-09-27 09:15:00', '2016-09-27 09:15:00'),
(62, 'wzug', '微网站(管家)', '正常', 4, '', '', 'wx.pacificimmi.com', '', '', '腰立辉', '腰立辉', '2016-12-05 08:06:07', '2016-12-21 05:09:03'),
(63, 'wzb', '微站CRM后台', '正常', 4, '', '', 'wxht.pacificimmi.com', '', '', '腰立辉', '腰立辉', '2016-12-05 08:08:21', '2016-12-21 05:09:05'),
(64, 'glb', '权限管理后台', '正常', 4, '', '', 'qx.pacificimmi.com', '', '', '腰立辉', '腰立辉', '2016-12-05 08:08:40', '2016-12-21 05:09:06'),
(66, 'wzu', '微网站（用户）', '正常', 4, '', '', 'wx.pacificimmi.com', '', '', '腰立辉', '腰立辉', '2016-12-05 08:30:40', '2016-12-21 05:09:56'),
(69, 'Xiuli', '秀丽广告', '正常', 8, '', '', 'www.xiuliguanggao.com', '', '', '腰立辉', '腰立辉', '2016-12-17 14:59:02', '2016-12-17 15:00:22'),
(70, 'XLAdmin', '秀丽广告后台', '正常', 8, '', '', 'www.xiuliguanggao.com/index.php/Admin', '13463925200', '123456', '腰立辉', '腰立辉', '2016-12-17 14:59:39', '2016-12-17 15:01:05'),
(71, 'Mtsh', '麦田双辉', '正常', 6, '', '', 'www.maitianshuanghui.com', '', '', '腰立辉', '腰立辉', '2016-12-17 15:05:06', '2016-12-17 15:06:41'),
(72, 'MTAdmin', '麦田双辉后台', '正常', 6, '', '', 'www.maitianshuanghui.com/index.php/Admin', '18233098318', '123456', '腰立辉', '腰立辉', '2016-12-17 15:05:43', '2016-12-17 15:07:09'),
(73, 'Anshun', '安顺汽车服务中心', '正常', 5, '', '', 'www.anshunqixiu.top', '', '', '腰立辉', '腰立辉', '2016-12-17 15:09:12', '2016-12-17 15:09:57'),
(74, 'ASAdmin', '安顺汽修后台', '正常', 5, '', '', 'www.anshunqixiu.top/index.php/Admin', '13785900902', '123456', '腰立辉', '腰立辉', '2016-12-17 15:09:28', '2016-12-17 15:10:33'),
(75, 'Tuocai', '拓才教育', '正常', 7, '', '', 'www.tuocaijiaoyu.com', '', '', '腰立辉', '腰立辉', '2016-12-17 15:15:16', '2016-12-17 15:16:59'),
(76, 'TCAdmin', '拓才教育后台', '正常', 7, '', '', 'www.tuocaijiaoyu.com/index.php/Admin', '13426179579', '123456', '腰立辉', '腰立辉', '2016-12-17 15:15:43', '2016-12-17 15:16:42');

-- --------------------------------------------------------

--
-- 表的结构 `tp_tc_ad`
--

DROP TABLE IF EXISTS `tp_tc_ad`;
CREATE TABLE IF NOT EXISTS `tp_tc_ad` (
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

--
-- 转存表中的数据 `tp_tc_ad`
--

INSERT INTO `tp_tc_ad` (`id`, `title`, `path`, `img`, `url`, `remark`, `state`, `moder`, `updateTime`) VALUES
(5, '第2张', '/Ad/2016-12-13/', '584fb4689084f.jpg', '阿斯达', '', '正常', '梁小伟', '2016-12-13 08:44:04'),
(6, '第1张', '/Ad/2016-12-13/', '584fb48ec1380.jpg', '水电费', '', '发布', '梁小伟', '2016-12-13 08:43:53'),
(7, '第3张', '/Ad/2016-12-13/', '584fb428f34cc.jpg', '', '', '发布', '腰立辉', '2016-12-13 08:41:13'),
(8, '第4张', '/Ad/2016-11-27/', '583afafcaaa26.jpg', '', '', '发布', '腰立辉', '2016-11-27 15:25:49'),
(9, '第5张', '/Ad/2016-11-27/', '583afb176905b.jpg', '', '', '正常', '腰立辉', '2016-11-27 15:26:15');

-- --------------------------------------------------------

--
-- 表的结构 `tp_tc_cate`
--

DROP TABLE IF EXISTS `tp_tc_cate`;
CREATE TABLE IF NOT EXISTS `tp_tc_cate` (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `pid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cName` (`cName`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_tc_cate`
--

INSERT INTO `tp_tc_cate` (`id`, `sn`, `cName`, `pid`) VALUES
(2, 2, '小学课程', 0),
(1, 1, '学前少儿', 0),
(3, 3, '中学课程', 0),
(4, 4, '兴趣拓展', 0),
(5, 5, '作业托管', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_tc_course`
--

DROP TABLE IF EXISTS `tp_tc_course`;
CREATE TABLE IF NOT EXISTS `tp_tc_course` (
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

--
-- 转存表中的数据 `tp_tc_course`
--

INSERT INTO `tp_tc_course` (`id`, `course`, `coursetype`, `desc`, `path`, `img`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
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
-- 表的结构 `tp_tc_customer`
--

DROP TABLE IF EXISTS `tp_tc_customer`;
CREATE TABLE IF NOT EXISTS `tp_tc_customer` (
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

--
-- 转存表中的数据 `tp_tc_customer`
--

INSERT INTO `tp_tc_customer` (`id`, `phone`, `password`, `custype`, `isteacher`, `coursetype`, `realname`, `path`, `img`, `state`, `course`, `remark`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', 1, '中学课程', '孙云云', '/Customer/2016-12-18/', '585693e5ec634.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', 1478415695, '2016-12-18 13:49:25'),
(12, '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '小学课程', 'werer', NULL, NULL, '正常', '', '', '腰立辉', '腰立辉', 1479042931, '2016-11-13 13:17:14'),
(13, '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '中学课程', '刘一玮（男、44中）', NULL, NULL, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', 1479302465, '2016-12-13 09:28:34'),
(14, '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', 1, '小学课程', '康国胜', '/Customer/2016-12-18/', '58569232eda33.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', 1481619189, '2016-12-18 13:42:10');

-- --------------------------------------------------------

--
-- 表的结构 `tp_tc_date`
--

DROP TABLE IF EXISTS `tp_tc_date`;
CREATE TABLE IF NOT EXISTS `tp_tc_date` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `riqi` date DEFAULT NULL,
  `xingqi` varchar(5) DEFAULT NULL,
  `sn` smallint(2) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_tc_date`
--

INSERT INTO `tp_tc_date` (`id`, `riqi`, `xingqi`, `sn`, `sktime`, `updateTime`) VALUES
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
-- 表的结构 `tp_tc_plan`
--

DROP TABLE IF EXISTS `tp_tc_plan`;
CREATE TABLE IF NOT EXISTS `tp_tc_plan` (
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

--
-- 转存表中的数据 `tp_tc_plan`
--

INSERT INTO `tp_tc_plan` (`id`, `dateid`, `skdate`, `skweek`, `sktime`, `techclassid`, `courseid`, `adress`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(5, 11, '2016-11-15', '星期二', '8:00-10:00', 4, 6, 'retert', '待确认', '腰立辉', '腰立辉', 1479214738, '2016-11-15 12:58:58'),
(4, 8, '2016-11-14', '星期一', '10:00-12:00', 4, 6, 'asdasdsa', '待确认', '腰立辉', '腰立辉', 1479138089, '2016-11-14 15:41:29'),
(6, 13, '2016-11-15', '星期二', '13:00-15:00', 4, 6, 'gssgd', '待确认', '腰立辉', '腰立辉', 1479214748, '2016-11-15 12:59:08'),
(7, 21, '2016-11-17', '星期四', '13:00-15:00', 4, 6, 'qqq', '待确认', '腰立辉', '腰立辉', 1479214778, '2016-11-15 12:59:38'),
(8, 15, '2016-11-16', '星期三', '8:00-10:00', 4, 6, 'qw', '待确认', '腰立辉', '腰立辉', 1479304493, '2016-11-16 13:54:53');

-- --------------------------------------------------------

--
-- 表的结构 `tp_tc_studentcla`
--

DROP TABLE IF EXISTS `tp_tc_studentcla`;
CREATE TABLE IF NOT EXISTS `tp_tc_studentcla` (
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

--
-- 转存表中的数据 `tp_tc_studentcla`
--

INSERT INTO `tp_tc_studentcla` (`id`, `studentid`, `student`, `sphone`, `coursetype`, `techclassid`, `teacher`, `tphone`, `courseid`, `course`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(4, 5, '王五', '13426179579', '小学课程', 4, '腰立辉', '18801043607', 6, '小学英语', NULL, '腰立辉', '腰立辉', 1479043222, '2016-11-13 13:20:22');

-- --------------------------------------------------------

--
-- 表的结构 `tp_tc_techclass`
--

DROP TABLE IF EXISTS `tp_tc_techclass`;
CREATE TABLE IF NOT EXISTS `tp_tc_techclass` (
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

--
-- 转存表中的数据 `tp_tc_techclass`
--

INSERT INTO `tp_tc_techclass` (`id`, `teacherid`, `teacher`, `phone`, `courseid`, `coursetype`, `course`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(4, 1, '腰立辉', '18801043607', 6, '小学课程', '小学英语', NULL, '腰立辉', '腰立辉', 1479027130, '2016-11-13 10:39:09'),
(5, 1, '腰立辉', '18801043607', 6, '小学课程', '小学英语', NULL, '腰立辉', '腰立辉', 1479031833, '2016-11-13 10:23:41'),
(6, 4, '李四', '13222222222', 10, '兴趣拓展', '跆拳道', NULL, '腰立辉', '腰立辉', 1479032021, '2016-11-13 10:23:56'),
(7, 3, '张三', '13333333333', 11, '中学课程', '九年级物理', NULL, '腰立辉', '腰立辉', 1479034059, '2016-11-13 10:47:39'),
(8, 1, '腰立辉', '18801043607', 9, '小学课程', '小学自然', NULL, '腰立辉', '腰立辉', 1479301282, '2016-11-16 13:01:22');

-- --------------------------------------------------------

--
-- 表的结构 `tp_tickets`
--

DROP TABLE IF EXISTS `tp_tickets`;
CREATE TABLE IF NOT EXISTS `tp_tickets` (
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

--
-- 转存表中的数据 `tp_tickets`
--

INSERT INTO `tp_tickets` (`id`, `state`, `result`, `voucherid`, `ip`, `chouj`, `owner`, `duij`, `code`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(499, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 110629, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-12-17 08:53:56'),
(500, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 930429, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(501, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 613253, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(502, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 410556, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(503, '抽奖', '谢谢参与', 19, '127.0.0.1', 1, NULL, 0, NULL, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:51'),
(504, '设奖', '4:参与奖', 19, '172.20.100.72', 0, NULL, 0, 872750, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-01 10:01:44'),
(505, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(506, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(507, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 227468, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(508, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 225216, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:47'),
(509, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 316842, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(510, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 588809, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(511, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(512, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 887033, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(513, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 217031, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(514, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 927133, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(515, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(516, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 433023, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(517, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 589138, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-12-17 08:53:59'),
(518, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(519, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 253176, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-12-17 08:53:49'),
(520, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 122659, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(521, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 282510, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(522, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 231314, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(523, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 297177, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(524, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 393911, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(525, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 672689, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(526, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 326675, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(527, '抽奖', '4:参与奖', 19, '172.20.100.72', 1, NULL, 0, 310800, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-01 10:05:25'),
(528, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 414016, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(529, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 457687, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(530, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 778103, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:54'),
(531, '设奖', '0:特等奖', 19, NULL, 0, NULL, 0, 536349, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(532, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 195443, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(533, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(534, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 805569, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(535, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 866983, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(536, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 775192, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(537, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 472683, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(538, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 725534, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-10 13:02:21');

-- --------------------------------------------------------

--
-- 表的结构 `tp_user`
--

DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE IF NOT EXISTS `tp_user` (
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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `realname`, `path`, `img`, `password`, `state`, `userno`, `team`, `usergp`, `phone`, `tel`, `email`, `position`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(11, 'yaolh', '腰立辉', '/Test/user/2016-12-06/', '58464bf1b7fb5.jpg', 'c33367701511b4f6020ec61ded352059', '在职', 0, '', 'PJD', '', '', 'yao@yimin.la', '测试', '腰立辉', '腰立辉', '2016-09-22 08:54:21', '2016-12-19 05:37:11'),
(31, 'weib', '魏斌', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'weib@yimin.la', '测试', '腰立辉', '腰立辉', '2016-12-05 09:30:44', '2016-12-19 05:48:29'),
(32, 'jiaxn', '贾晓宁', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 12, '惠买车-产品研发中心-质量管理部', 'Auto', '', NULL, 'jiaxn@yimin.la', '测试', '腰立辉', '腰立辉', '2016-12-17 14:46:12', '2016-12-19 05:48:31'),
(33, 'yangxy', '杨学毅', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'yangxy@yimin.la', '后台研发', '腰立辉', '腰立辉', '2016-12-19 03:27:19', '2016-12-19 05:48:33'),
(34, 'dengy', '邓烨', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'dengy@yimin.la', '产品经理', '腰立辉', '腰立辉', '2016-12-19 03:27:41', '2016-12-19 05:48:35'),
(35, 'yangxl', '杨雪玲', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'yangxl@yimin.la', '产品经理', '腰立辉', '腰立辉', '2016-12-19 03:32:04', '2016-12-19 05:48:39'),
(36, 'wangtt', '王婷婷', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'wangtt@yimin.la', 'UI设计师', '腰立辉', '腰立辉', '2016-12-19 03:32:44', '2016-12-19 05:48:42'),
(37, 'chenj', '陈静', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'chenj@yimin.la', '前端工程师', '腰立辉', '腰立辉', '2016-12-19 03:33:05', '2016-12-19 05:48:44'),
(38, 'liuyx', '刘雨熙', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'liuyx@yimin.la', '前端工程师', '腰立辉', '腰立辉', '2016-12-19 03:33:28', '2016-12-19 05:48:46'),
(39, 'xiangb', '项斌', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'xiangb@yimin.la', '后台研发', '腰立辉', '腰立辉', '2016-12-19 03:34:00', '2016-12-19 05:48:48'),
(40, 'guyc', '谷一创', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'guyc@yimin.la', '后台研发', '腰立辉', '腰立辉', '2016-12-19 03:34:34', '2016-12-19 05:48:51'),
(41, 'chuxl', '褚秀良', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', 0, '惠买车-产品研发中心-质量管理部', 'PJD', '', NULL, 'chuxl@yimin.la', '架构师', '腰立辉', '腰立辉', '2016-12-19 03:35:31', '2016-12-19 10:47:43');

-- --------------------------------------------------------

--
-- 表的结构 `tp_userprod`
--

DROP TABLE IF EXISTS `tp_userprod`;
CREATE TABLE IF NOT EXISTS `tp_userprod` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` smallint(6) NOT NULL,
  `prodid` smallint(6) NOT NULL,
  `moder` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_userprod`
--

INSERT INTO `tp_userprod` (`id`, `userid`, `prodid`, `moder`) VALUES
(3, 2, 7, '腰立辉'),
(4, 1, 3, '腰立辉'),
(5, 1, 5, '腰立辉'),
(6, 1, 6, '腰立辉'),
(7, 1, 7, '腰立辉'),
(8, 1, 8, '腰立辉'),
(17, 3, 5, '腰立辉'),
(18, 4, 5, '腰立辉'),
(19, 7, 8, '腰立辉'),
(20, 11, 8, '腰立辉'),
(21, 8, 3, '腰立辉'),
(22, 9, 6, '腰立辉'),
(23, 10, 6, '腰立辉');

-- --------------------------------------------------------

--
-- 表的结构 `tp_voucher`
--

DROP TABLE IF EXISTS `tp_voucher`;
CREATE TABLE IF NOT EXISTS `tp_voucher` (
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

--
-- 转存表中的数据 `tp_voucher`
--

INSERT INTO `tp_voucher` (`id`, `title`, `remark`, `voucher`, `start`, `end`, `state`, `total`, `specia`, `first`, `second`, `third`, `canyu`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(19, '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', 40, 1, 2, 5, 10, 15, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:18:28');

-- --------------------------------------------------------

--
-- 表的结构 `tp_xl_ad`
--

DROP TABLE IF EXISTS `tp_xl_ad`;
CREATE TABLE IF NOT EXISTS `tp_xl_ad` (
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

--
-- 转存表中的数据 `tp_xl_ad`
--

INSERT INTO `tp_xl_ad` (`id`, `title`, `path`, `img`, `url`, `remark`, `state`, `moder`, `updateTime`) VALUES
(5, '第2张', '/Ad/2016-12-13/', '584fb4689084f.jpg', '阿斯达', '', '正常', '梁小伟', '2016-12-13 08:44:04'),
(6, '第1张', '/Ad/2016-12-13/', '584fb48ec1380.jpg', '水电费', '', '发布', '梁小伟', '2016-12-13 08:43:53'),
(7, '第3张', '/Ad/2016-12-13/', '584fb428f34cc.jpg', '', '', '发布', '腰立辉', '2016-12-13 08:41:13'),
(8, '第4张', '/Ad/2016-11-27/', '583afafcaaa26.jpg', '', '', '发布', '腰立辉', '2016-11-27 15:25:49'),
(9, '第5张', '/Ad/2016-11-27/', '583afb176905b.jpg', '', '', '正常', '腰立辉', '2016-11-27 15:26:15');

-- --------------------------------------------------------

--
-- 表的结构 `tp_xl_cate`
--

DROP TABLE IF EXISTS `tp_xl_cate`;
CREATE TABLE IF NOT EXISTS `tp_xl_cate` (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `cate` varchar(10) NOT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `pid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cName` (`cName`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_xl_cate`
--

INSERT INTO `tp_xl_cate` (`id`, `sn`, `cate`, `cName`, `pid`) VALUES
(2, 2, 'cate2', '企业网站建设', 0),
(1, 1, 'cate1', '传统业务', 0),
(5, 3, 'cate3', '电子广告制作', 0),
(6, 4, 'cate4', '微信公众号', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_xl_customer`
--

DROP TABLE IF EXISTS `tp_xl_customer`;
CREATE TABLE IF NOT EXISTS `tp_xl_customer` (
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

--
-- 转存表中的数据 `tp_xl_customer`
--

INSERT INTO `tp_xl_customer` (`id`, `phone`, `password`, `custype`, `isteacher`, `coursetype`, `realname`, `path`, `img`, `state`, `course`, `remark`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', 1, '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', 1478415695, '2016-12-13 09:21:44'),
(12, '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '小学课程', 'werer', NULL, NULL, '正常', '', '', '腰立辉', '腰立辉', 1479042931, '2016-11-13 13:17:14'),
(13, '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '中学课程', '刘一玮（男、44中）', NULL, NULL, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', 1479302465, '2016-12-13 09:28:34'),
(14, '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', 1, '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', 1481619189, '2016-12-13 09:37:07');

-- --------------------------------------------------------

--
-- 表的结构 `tp_xl_service`
--

DROP TABLE IF EXISTS `tp_xl_service`;
CREATE TABLE IF NOT EXISTS `tp_xl_service` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_xl_service`
--

INSERT INTO `tp_xl_service` (`id`, `sn`, `cate`, `sName`, `path`, `img`, `textdesc`, `state`, `moder`) VALUES
(1, 0, 1, '打字复印', '/Service/2016-12-25/', '585fd1aa977cb.jpg', '1112', '正常', '张秀丽'),
(2, 0, 1, '广告材料批发及零售', '/Service/2016-12-25/', '585fd2975a050.jpeg', '', '', '腰立辉'),
(3, 0, 1, '广告设计', '/Service/2016-12-25/', '585fd2a2a30da.jpeg', '', '', '腰立辉'),
(4, 0, 1, '广告制作', '/Service/2016-12-25/', '585fd2af09ee6.jpg', '', '', '腰立辉'),
(5, 0, 2, '基础企业网站建设', '/Service/2016-12-25/', '585fd330ebeb7.png', '', '', '腰立辉'),
(6, 0, 2, '网站定制化', '/Service/2016-12-25/', '585fd344bf3a7.png', '', '', '腰立辉'),
(7, 0, 2, '网站运维', '', '', '', '', '腰立辉'),
(8, 0, 6, '申请微信“服务号”', '/Service/2016-12-25/', '585fd3aedb1a8.png', '', '', '腰立辉'),
(9, 0, 6, '申请微信“订阅号”', '/Service/2016-12-25/', '585fd3bd6cfe6.png', '', '', '腰立辉'),
(10, 0, 6, '申请微信“企业号”', '/Service/2016-12-25/', '585fd3cf34194.png', '', '', '腰立辉'),
(11, 0, 6, '微信公众账号运维', '', '', '', '', '腰立辉');

-- --------------------------------------------------------

--
-- 表的结构 `tp_xl_tickets`
--

DROP TABLE IF EXISTS `tp_xl_tickets`;
CREATE TABLE IF NOT EXISTS `tp_xl_tickets` (
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

--
-- 转存表中的数据 `tp_xl_tickets`
--

INSERT INTO `tp_xl_tickets` (`id`, `state`, `result`, `voucherid`, `ip`, `chouj`, `owner`, `duij`, `code`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(499, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 110629, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(500, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 930429, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(501, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 613253, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(502, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 410556, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(503, '抽奖', '谢谢参与', 19, '127.0.0.1', 1, NULL, 0, NULL, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:51'),
(504, '设奖', '4:参与奖', 19, '172.20.100.72', 0, NULL, 0, 872750, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-01 10:01:44'),
(505, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(506, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(507, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 227468, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(508, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 225216, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:47'),
(509, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 316842, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(510, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 588809, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(511, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(512, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 887033, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(513, '设奖', '1:一等奖', 19, NULL, 0, NULL, 0, 217031, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(514, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 927133, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(515, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(516, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 433023, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(517, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 589138, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(518, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(519, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 253176, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(520, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 122659, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(521, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 282510, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-12-25 15:04:20'),
(522, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 231314, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(523, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 297177, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(524, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 393911, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(525, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 672689, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(526, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 326675, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(527, '抽奖', '4:参与奖', 19, '172.20.100.72', 1, NULL, 0, 310800, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-01 10:05:25'),
(528, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 414016, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-12-25 15:04:27'),
(529, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 457687, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(530, '抽奖', '4:参与奖', 19, '127.0.0.1', 1, NULL, 0, 778103, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-09 15:19:54'),
(531, '设奖', '0:特等奖', 19, NULL, 0, NULL, 0, 536349, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(532, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 195443, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(533, '新建', '谢谢参与', 19, NULL, 0, NULL, 0, NULL, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(534, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 805569, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(535, '设奖', '3:三等奖', 19, NULL, 0, NULL, 0, 866983, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(536, '设奖', '2:二等奖', 19, NULL, 0, NULL, 0, 775192, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(537, '设奖', '4:参与奖', 19, NULL, 0, NULL, 0, 472683, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:11:53'),
(538, '抽奖', '3:三等奖', 19, '127.0.0.1', 1, NULL, 0, 725534, '腰立辉', '客户', '2016-11-01 09:11:53', '2016-11-10 13:02:21');

-- --------------------------------------------------------

--
-- 表的结构 `tp_xl_voucher`
--

DROP TABLE IF EXISTS `tp_xl_voucher`;
CREATE TABLE IF NOT EXISTS `tp_xl_voucher` (
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

--
-- 转存表中的数据 `tp_xl_voucher`
--

INSERT INTO `tp_xl_voucher` (`id`, `title`, `remark`, `voucher`, `start`, `end`, `state`, `total`, `specia`, `first`, `second`, `third`, `canyu`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(19, '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', 40, 1, 2, 5, 10, 15, '腰立辉', '腰立辉', '2016-11-01 09:11:53', '2016-11-01 09:18:28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
