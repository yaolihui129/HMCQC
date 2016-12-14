-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-12-14 16:50:51
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
-- 表的结构 `tp_userprod`
--

CREATE TABLE `tp_userprod` (
  `id` int(6) NOT NULL,
  `userid` smallint(6) NOT NULL,
  `prodid` smallint(6) NOT NULL,
  `moder` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_userprod`
--

INSERT INTO `tp_userprod` (`id`, `userid`, `prodid`, `moder`) VALUES
(1, 11, 2, ''),
(2, 11, 14, ''),
(3, 31, 14, ''),
(4, 11, 3, ''),
(5, 11, 5, ''),
(6, 11, 6, ''),
(7, 11, 7, ''),
(8, 11, 8, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_userprod`
--
ALTER TABLE `tp_userprod`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tp_userprod`
--
ALTER TABLE `tp_userprod`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
