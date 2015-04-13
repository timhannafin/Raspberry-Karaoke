-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 13, 2015 at 02:21 AM
-- Server version: 5.5.41
-- PHP Version: 5.4.36-0+deb7u3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `karaokedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `karaoke_library`
--

CREATE TABLE IF NOT EXISTS `karaoke_library` (
  `library_id` int(10) NOT NULL AUTO_INCREMENT,
  `album` varchar(512) NOT NULL,
  `track` varchar(3) NOT NULL,
  `title` varchar(512) NOT NULL,
  `artist` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `playtime` varchar(6) NOT NULL,
  `filename` varchar(1024) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hidden` int(1) NOT NULL DEFAULT '0',
  `note` varchar(500) NOT NULL,
  `corrected_artist` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corrected_title` varchar(500) NOT NULL,
  `checked` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`library_id`),
  UNIQUE KEY `album` (`album`,`track`),
  UNIQUE KEY `album_2` (`album`,`track`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9996 ;

-- --------------------------------------------------------

--
-- Table structure for table `karaoke_queue`
--

CREATE TABLE IF NOT EXISTS `karaoke_queue` (
  `queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `library_id` int(11) NOT NULL,
  `singer_name` varchar(300) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `queue_order` int(11) NOT NULL,
  `play_status` enum('UNPLAYED','PLAYED','CURRENT') NOT NULL DEFAULT 'UNPLAYED',
  `undeletable` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`queue_id`),
  KEY `queue_order` (`queue_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
