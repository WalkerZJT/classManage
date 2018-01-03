-- phpMyAdmin SQL Dump
-- version 3.4.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 03 月 15 日 19:36
-- 服务器版本: 5.5.17
-- PHP 版本: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `classmanage`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_14sc`
--

CREATE TABLE IF NOT EXISTS `tp_14sc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `cname` varchar(10) NOT NULL,
  `grade` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_14sc`
--

INSERT INTO `tp_14sc` (`id`, `name`, `cname`, `grade`) VALUES
(1, '女警', '高等数学上册', 65),
(2, '女警', '大学英语一', 68),
(3, '女警', 'python', 95),
(4, '女警', '电子计算机基础', 67),
(5, '女警', '算法与设计', 78),
(6, '女警', '网络安全', 74),
(7, '戏命师', '高等数学上册', 78),
(8, '戏命师', '大学英语一', 48),
(9, '戏命师', '电子计算机基础', 68),
(10, '戏命师', 'python', 68),
(11, '戏命师', '算法设计', 78),
(14, '戏命师', '网络安全', 78);

-- --------------------------------------------------------

--
-- 表的结构 `tp_15sc`
--

CREATE TABLE IF NOT EXISTS `tp_15sc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `cname` varchar(10) NOT NULL,
  `grade` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `tp_15sc`
--

INSERT INTO `tp_15sc` (`id`, `name`, `cname`, `grade`) VALUES
(1, '女警', '高等数学下册', 78),
(2, '女警', '大学英语二', 80),
(3, '女警', '密码学', 68),
(4, '女警', '线性代数', 78),
(5, '女警', '概率论', 77),
(6, '女警', '马克思主义', 84),
(7, '女警', '三D打印', 68),
(8, '女警', '课程设计', 78),
(9, '女警', '世界历史', 91),
(10, '女警', 'web开发', 67),
(11, '戏命师', '高等数学下册', 63),
(12, '戏命师', '大学英语二', 66),
(13, '戏命师', '密码学', 88),
(14, '戏命师', '线性代数', 68),
(15, '戏命师', '概率论', 78),
(16, '戏命师', '马克思主义', 95),
(17, '戏命师', '三D打印', 66),
(18, '戏命师', '课程设计', 77),
(19, '戏命师', '世界历史', 75),
(20, '戏命师', 'web开发', 68);

-- --------------------------------------------------------

--
-- 表的结构 `tp_16sc`
--

CREATE TABLE IF NOT EXISTS `tp_16sc` (
  `id` bigint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `cname` varchar(10) NOT NULL,
  `grade` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `tp_16sc`
--

INSERT INTO `tp_16sc` (`id`, `name`, `cname`, `grade`) VALUES
(1, '女警', 'one', 65),
(2, '女警', 'two', 66),
(3, '女警', 'three', 65),
(4, '女警', 'four', 86),
(5, '女警', 'five', 78),
(6, '戏命师', 'one', 68),
(7, '戏命师', 'two', 86),
(8, '戏命师', 'three', 67),
(9, '戏命师', 'four', 78),
(10, '戏命师', 'five', 88);

-- --------------------------------------------------------

--
-- 表的结构 `tp_admin`
--

CREATE TABLE IF NOT EXISTS `tp_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(6) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3424 ;

--
-- 转存表中的数据 `tp_admin`
--

INSERT INTO `tp_admin` (`id`, `name`, `password`) VALUES
(3423, 'admin', 'admin'),
(1, 'zjt', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `tp_class`
--

CREATE TABLE IF NOT EXISTS `tp_class` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `time` varchar(4) NOT NULL,
  `class` varchar(5) NOT NULL,
  `cname` varchar(10) NOT NULL,
  `house` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `tp_class`
--

INSERT INTO `tp_class` (`id`, `name`, `time`, `class`, `cname`, `house`) VALUES
(1, '女警', '周二', '1-2', '软件安全', '7-303'),
(2, '女警', '周二', '3-4', '网络管理', '综C607'),
(3, '女警', '周二', '5-6', '算法设计与分析', '3-206'),
(4, '女警', '周二', '7-8', '软件工程（实验）', '9D10'),
(5, '女警', '周三', '9-10', '大学生就业指导', '7-506'),
(6, '女警', '周四', '1-2', '网络管理', '7-303'),
(7, '女警', '周四', '3-4', '算法分析与设计', '7-303'),
(8, '戏命师', '周二', '1-2', '软件安全', '7-303'),
(9, '戏命师', '周二', '3-4', '网络管理', '综C607'),
(10, '戏命师', '周二', '5-6', '算法设计与分析', '3-206'),
(11, '戏命师', '周二', '7-8', '软件工程（实验）', '9D10'),
(12, '戏命师', '周三', '9-10', '大学生就业指导', '7-506');

-- --------------------------------------------------------

--
-- 表的结构 `tp_imfor`
--

CREATE TABLE IF NOT EXISTS `tp_imfor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `password` bigint(15) NOT NULL,
  `class` varchar(20) NOT NULL,
  `sex` varchar(2) DEFAULT '男',
  `phone` bigint(15) DEFAULT NULL,
  `qq` bigint(15) NOT NULL,
  `address` text,
  `age` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201471010237 ;

--
-- 转存表中的数据 `tp_imfor`
--

INSERT INTO `tp_imfor` (`id`, `name`, `password`, `class`, `sex`, `phone`, `qq`, `address`, `age`) VALUES
(201471010202, '女警', 123456, '14网络', '女', 1576939558912, 123456789, '瓦罗兰大陆', 25),
(201471010203, '戏命师', 123456, '14网络', '男', 123456789, 8956784, '爱迪生那非库房', 32),
(201471010204, 'EZ', 123456, '14网络', '男', 165478954632, 879078789, 'a阿斯蒂芬', 36),
(201471010205, '老鼠', 123456, '14网络', '男', 1245142132, 7845860, '下水道的老鼠', 32);

-- --------------------------------------------------------

--
-- 表的结构 `tp_jiangli`
--

CREATE TABLE IF NOT EXISTS `tp_jiangli` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `time` text NOT NULL,
  `things` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_jiangli`
--

INSERT INTO `tp_jiangli` (`id`, `name`, `time`, `things`) VALUES
(1, '女警', '2014年8月15日', '国家二级奖学金'),
(2, '女警', '2016年4月5日', '国家励志奖学金'),
(3, '女警', '2015年6月6日', '中国共产党党员'),
(4, '女警', '2015年10月6日', '校级数学建模一等奖'),
(5, '戏命师', '2016年4月5日', '国家励志奖学金'),
(6, '戏命师', '2015年10月6日', '校级数学建模特等奖');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
