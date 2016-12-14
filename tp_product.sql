-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-12-14 16:51:07
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
-- 表的结构 `tp_product`
--

CREATE TABLE `tp_product` (
  `id` int(11) NOT NULL,
  `short` varchar(10) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_product`
--

INSERT INTO `tp_product` (`id`, `short`, `product`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '惠买车', '惠买车平台', '作废', '腰立辉', '腰立辉', '2016-09-16 14:04:58', '2016-12-05 07:41:48'),
(2, '自动化', '自动化平台', '正常', '腰立辉', '腰立辉', '2016-09-16 14:07:52', '2016-09-16 14:07:52'),
(14, 'PJD', '太平洋加达', '正常', '腰立辉', '腰立辉', '2016-12-05 07:47:20', '2016-12-05 07:47:20'),
(8, '秀丽', '秀丽广告', '正常', '腰立辉', '腰立辉', '2016-12-14 15:13:36', '2016-12-14 15:17:04'),
(5, '安顺', '安顺汽修', '正常', '腰立辉', '腰立辉', '2016-12-14 15:13:59', '2016-12-14 15:16:21'),
(6, '双辉', '麦田双辉', '正常', '腰立辉', '腰立辉', '2016-12-14 15:14:17', '2016-12-14 15:16:40'),
(7, '拓才', '拓才教育', '正常', '腰立辉', '腰立辉', '2016-12-14 15:14:42', '2016-12-14 15:16:52'),
(3, '信达', '智慧信达', '正常', '腰立辉', '腰立辉', '2016-12-14 15:14:59', '2016-12-14 15:17:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_product`
--
ALTER TABLE `tp_product`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tp_product`
--
ALTER TABLE `tp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
