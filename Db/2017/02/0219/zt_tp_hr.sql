-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-02-19 16:00:23
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xiuli`
--

-- --------------------------------------------------------

--
-- 表的结构 `zt_tp_hr`
--

DROP TABLE IF EXISTS `zt_tp_hr`;
CREATE TABLE IF NOT EXISTS `zt_tp_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL COMMENT '职位',
  `istuij` smallint(1) NOT NULL DEFAULT '0',
  `sn` smallint(6) DEFAULT NULL,
  `num` smallint(3) DEFAULT '1' COMMENT '人数',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `desc` text COMMENT '描述',
  `salary` varchar(10) DEFAULT NULL COMMENT '薪酬',
  `prodid` smallint(6) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `rtime` date DEFAULT NULL COMMENT '发布时间',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_hr`
--

INSERT INTO `zt_tp_hr` (`id`, `title`, `istuij`, `sn`, `num`, `state`, `desc`, `salary`, `prodid`, `place`, `moder`, `rtime`, `utime`) VALUES
(13, '学徒工', 0, 2, 1, '招聘中', '吃苦耐劳', '面议', 1, '临城县兴临街转盘北100米路西；', '腰立辉', '2017-02-08', '2017-02-08 05:13:22'),
(12, '设计人员', 1, 1, 2, '招聘中', '有电脑基础', '面议', 1, '临城县兴临街转盘北100米路西；', '腰立辉', '2017-02-08', '2017-02-19 11:03:54'),
(15, '12312', 0, NULL, 1, '正常', '12312', '面议', 1, '', '腰立辉', NULL, '2017-02-19 11:28:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
