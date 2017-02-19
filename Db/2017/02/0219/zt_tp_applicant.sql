-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-02-19 15:59:58
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
-- 表的结构 `zt_tp_applicant`
--

DROP TABLE IF EXISTS `zt_tp_applicant`;
CREATE TABLE IF NOT EXISTS `zt_tp_applicant` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `hrid` smallint(6) NOT NULL,
  `tuij` varchar(11) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zt_tp_applicant`
--

INSERT INTO `zt_tp_applicant` (`id`, `phone`, `name`, `hrid`, `tuij`, `state`) VALUES
(14, '18801043607', '秀丽广告', 13, '', ''),
(15, '13333333333', 'yyyy', 13, '18801043607', '报名'),
(16, '18801043607', '腰立辉', 13, '18801043607', '报名'),
(17, '18801043607', '111', 12, '', '报名'),
(18, '18801043606', '秀丽广告', 12, '18801043607', '报名'),
(19, '18801043605', '腰立辉', 12, '', '报名'),
(20, '12323212343', '拓才教育', 13, '', '报名'),
(21, '123123', 'qweqw', 13, 'asdas', '报名'),
(22, '13222222222', '拓才教育', 13, '18801043607', '报名');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
