-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 07:40 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(4) NOT NULL,
  `category_id` int(4) NOT NULL,
  `blog_title` text CHARACTER SET latin1 NOT NULL,
  `short_description` text CHARACTER SET latin1 NOT NULL,
  `long_description` text CHARACTER SET latin1 NOT NULL,
  `blog_image` text CHARACTER SET latin1 NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `blog_title`, `short_description`, `long_description`, `blog_image`, `status`) VALUES
(1, 1, ' à¦¦à¦² à¦«à¦¾à¦‡à¦¨à¦¾à¦²à§‡ à¦“à¦ à¦¾à§Ÿ à¦•à¦ªà¦¾à¦² à¦šà¦¾à¦ªà§œà¦¾à¦šà§à¦›à§‡à¦¨ à¦¯à§‡ à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¦¨!', 'à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ªà§‡à¦° à¦ªà§à¦°à¦¥à¦® à¦®à§à¦¯à¦¾à¦šà§‡à¦“ à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾ à¦¦à¦²à§‡à¦° à¦¸à¦¦à¦¸à§à¦¯ à¦›à¦¿à¦²à§‡à¦¨ à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦šà¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦…à¦–à§‡à¦²à§‹à§Ÿà¦¾à§œà¦¸à§à¦²à¦­ à¦†à¦šà¦°à¦£à§‡à¦° à¦œà¦¨à§à¦¯ à¦¤à¦¾à¦à¦•à§‡ à¦šà§‹à¦Ÿà¦—à§à¦°à¦¸à§à¦¤ à¦¦à§‡à¦–à¦¿à§Ÿà§‡ à¦¦à§‡à¦¶à§‡ à¦ªà¦¾à¦ à¦¿à§Ÿà§‡ à¦¦à¦¿à§Ÿà§‡à¦›à§‡à¦¨ à¦•à§‹à¦š à¦¦à¦¾à¦²à¦¿à¦š                                                                                                                                                                                                             ', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">à¦•à§‡à¦¨ à¦¯à§‡ à¦…à¦®à¦¨ à¦•à¦¾à¦œà¦Ÿà¦¾ à¦•à¦°à¦¤à§‡ à¦—à§‡à¦²à¦¾à¦®! à¦à¦–à¦¨ à¦¹à§Ÿà¦¤à§‹ à¦à¦®à¦¨ à¦à¦•à¦Ÿà¦¿ à¦­à¦¾à¦¬à¦¨à¦¾ à¦•à§à¦°à§‡ à¦•à§à¦°à§‡ à¦–à¦¾à¦šà§à¦›à§‡ à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¦¨ à¦¸à§à¦Ÿà§à¦°à¦¾à¦‡à¦•à¦¾à¦° à¦¨à¦¿à¦•à§‹à¦²à¦¾ à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦šà¦•à§‡à¥¤ à¦ªà§à¦°à¦¥à¦®à¦¬à¦¾à¦°à§‡à¦° à¦®à¦¤à§‹ à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ªà§‡à¦° à¦«à¦¾à¦‡à¦¨à¦¾à¦²à§‡ à¦‰à¦ à§‡à¦›à§‡ à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¥¤ à¦¶à¦¿à¦°à§‹à¦ªà¦¾à¦° à¦²à§œà¦¾à¦‡à§Ÿà§‡ à¦¦à¦²à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦®à¦¾à¦ à§‡ à¦¥à§‡à¦•à§‡ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à¦¤à§‡à¦¨ à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦šà¦“à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¤à§‹ à¦¦à§‚à¦°à§‡à¦° à¦•à¦¥à¦¾, à¦¨à¦¿à¦œà§‡à¦° à¦•à§ƒà¦¤à¦•à¦°à§à¦®à§‡à¦° à¦œà¦¨à§à¦¯ à¦à¦–à¦¨ à¦¤à¦¿à¦¨à¦¿ à¦°à¦¾à¦¶à¦¿à§Ÿà¦¾à¦¤à§‡à¦‡ à¦¨à§‡à¦‡à¥¤</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">&nbsp;</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">Pran upà¦¨à¦¾à¦‡à¦œà§‡à¦°à¦¿à§Ÿà¦¾à¦° à¦¬à¦¿à¦ªà¦•à§à¦·à§‡ à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ªà§‡ à¦¨à¦¿à¦œà§‡à¦¦à§‡à¦° à¦ªà§à¦°à¦¥à¦® à¦®à§à¦¯à¦¾à¦šà§‡ à¦®à¦¾à¦ à§‡ à¦¨à§‡à¦®à§‡à¦›à¦¿à¦² à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¥¤ à§¨-à§¦ à¦—à§‹à¦²à§‡à¦° à¦œà§Ÿ à¦¨à¦¿à§Ÿà§‡ à¦®à§à¦¯à¦¾à¦šà§‡à¦° à¦¶à§‡à¦·à§‡à¦° à¦¦à¦¿à¦•à§‡ à¦à¦—à¦¿à§Ÿà§‡ à¦¯à¦¾à¦šà§à¦›à¦¿à¦² à¦¤à¦¾à¦°à¦¾à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¶à§‡à¦· à¦¦à¦¿à¦•à§‡ à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦šà¦•à§‡ à¦¬à¦¦à¦²à¦¿ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦®à¦¾à¦ à§‡ à¦¨à¦¾à¦®à¦¾à¦¤à§‡ à¦šà§‡à§Ÿà§‡à¦›à¦¿à¦²à§‡à¦¨ à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¦¨ à¦•à§‹à¦š à¦¦à¦¾à¦²à¦¿à¦šà¥¤ à¦à¦–à¦¾à¦¨à§‡à¦‡ à¦¬à¦¾à¦§à§‡ à¦¬à¦¿à¦ªà¦¤à§à¦¤à¦¿à¥¤</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">&nbsp;</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦š à¦à¦•à¦¾à¦¦à¦¶à§‡ à¦–à§‡à¦²à¦¤à§‡ à¦¨à¦¾ à¦ªà§‡à¦°à§‡ à¦¬à§‡à¦žà§à¦šà§‡ à¦¬à¦¸à§‡ à¦°à§€à¦¤à¦¿à¦®à¦¤à§‹ à¦«à§à¦à¦¸à¦›à¦¿à¦²à§‡à¦¨à¥¤ à¦•à§‹à¦š à¦¬à¦¦à¦²à¦¿ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦®à¦¾à¦ à§‡ à¦ªà¦¾à¦ à¦¾à¦¤à§‡ à¦šà¦¾à¦‡à¦²à§‡ à¦ªà¦¿à¦ à§‡à¦° à¦šà§‹à¦Ÿà§‡à¦° à¦…à¦œà§à¦¹à¦¾à¦¤à§‡ à¦®à¦¾à¦ à§‡ à¦¨à¦¾à¦®à¦¤à§‡ à¦…à¦¸à§à¦¬à§€à¦•à§ƒà¦¤à¦¿ à¦œà¦¾à¦¨à¦¾à¦¨à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦ªà¦°à¦¬à¦°à§à¦¤à§€à¦•à¦¾à¦²à§‡ à¦¦à¦²à§‡à¦° à¦®à§‡à¦¡à¦¿à¦•à§‡à¦² à¦¸à§à¦Ÿà¦¾à¦«à¦°à¦¾ à¦¤à¦¾à¦à¦° à¦•à§‹à¦¨à§‹ à¦šà§‹à¦Ÿ à¦–à§à¦à¦œà§‡ à¦ªà¦¾à¦¨à¦¨à¦¿à¥¤ à¦¤à¦¾à¦‡ à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦šà§‡à¦° à¦à¦®à¦¨ à¦…à¦–à§‡à¦²à§‹à§Ÿà¦¾à§œà¦¸à§à¦²à¦­ à¦†à¦šà¦°à¦£ à¦“ à¦¸à§à¦ªà¦°à§à¦§à¦¾à¦•à§‡ à¦ªà§à¦°à¦¶à§à¦°à§Ÿ à¦¨à¦¾ à¦¦à¦¿à§Ÿà§‡ à¦¦à§‡à¦¶à§‡ à¦ªà¦¾à¦ à¦¿à§Ÿà§‡ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¹à§Ÿà¥¤</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">&nbsp;</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">à¦¶à§à¦§à§ à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ªà§‡ à¦¨à§Ÿ, à¦ à¦°à¦•à¦® à¦•à¦¾à¦œ à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦š à¦†à¦—à§‡à¦“ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¬à¦²à§‡ à¦œà¦¾à¦¨à¦¾à¦¨ à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¦¨ à¦•à§‹à¦š à¦¦à¦¾à¦²à¦¿à¦š, &lsquo;à¦à¦•à¦‡ à¦˜à¦Ÿà¦¨à¦¾ à¦¸à§‡ à¦‡à¦‚à¦²à§à¦¯à¦¾à¦¨à§à¦¡à§‡ à¦¬à§à¦°à¦¾à¦œà¦¿à¦²à§‡à¦° à¦¬à¦¿à¦ªà¦•à§à¦·à§‡ à¦ªà§à¦°à§€à¦¤à¦¿ à¦®à§à¦¯à¦¾à¦šà§‡à¦° à¦¸à¦®à§Ÿà¦“ à¦˜à¦Ÿà¦¿à§Ÿà§‡à¦›à¦¿à¦²à¥¤ à¦à¦°à¦ªà¦° à¦…à¦¨à§à¦¶à§€à¦²à¦¨à§‡à¦“ à¦…à¦‚à¦¶ à¦¨à§‡à§Ÿà¦¨à¦¿à¥¤ à¦†à¦®à¦¿ à¦à¦—à§à¦²à§‹ à¦¶à¦¾à¦¨à§à¦¤à¦­à¦¾à¦¬à§‡ à¦®à§‡à¦¨à§‡ à¦¨à¦¿à§Ÿà§‡à¦›à¦¿à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¯à§‡à¦¹à§‡à¦¤à§ à¦†à¦®à¦¿ à¦†à¦®à¦¾à¦° à¦¦à¦²à§‡ à¦¸à¦¬ à¦–à§‡à¦²à§‹à§Ÿà¦¾à§œà¦•à§‡ à¦¸à§à¦¸à§à¦¥ à¦…à¦¬à¦¸à§à¦¥à¦¾à§Ÿ à¦šà¦¾à¦‡ à¦à¦¬à¦‚ à¦¸à§‡ à¦¤à¦¾ à¦¨à§Ÿ (à¦¤à¦¾à¦° à¦¦à¦¾à¦¬à¦¿ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€)à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦¿ à¦•à¦¾à¦²à¦¿à¦¨à¦¿à¦šà¦•à§‡ à¦¦à§‡à¦¶à§‡ à¦«à§‡à¦°à¦¤ à¦ªà¦¾à¦ à¦¾à¦¤à§‡ à¦¬à¦¾à¦§à§à¦¯ à¦¹à§Ÿà§‡à¦›à¦¿à¦²à¦¾à¦®à¥¤&rsquo;</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">&nbsp;</span></span></p>\r\n<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"font-size: 18px;\">prothom aloà¦¦à¦² à¦¥à§‡à¦•à§‡ à¦¬à¦¾à¦¦ à¦ªà§œà§‡ à¦¸à§à¦¬à¦¾à¦­à¦¾à¦¬à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦à¦° à¦ªà¦° à¦¥à§‡à¦•à§‡à¦‡ à¦•à§à¦·à§‹à¦­à§‡ à¦ªà§à§œà¦›à¦¿à¦²à§‡à¦¨ à¦à¦¸à¦¿ à¦®à¦¿à¦²à¦¾à¦¨à§‡à¦° à¦à¦‡ à¦¸à§à¦Ÿà§à¦°à¦¾à¦‡à¦•à¦¾à¦°à¥¤ à¦—à¦¤à¦•à¦¾à¦² à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾ à¦«à¦¾à¦‡à¦¨à¦¾à¦²à§‡ à¦“à¦ à¦¾à¦° à¦ªà¦° à¦¸à§‡ à¦œà§à¦¬à¦¾à¦²à¦¾à¦Ÿà¦¾ à¦†à¦°à¦“ à¦¬à§‡à§œà§‡à¦›à§‡ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤! à¦…à¦®à¦¨ à¦•à¦¾à¦œ à¦¨à¦¾ à¦•à¦°à¦²à§‡ à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ªà§‡à¦° à¦«à¦¾à¦‡à¦¨à¦¾à¦²à§‡ à¦¥à¦¾à¦•à¦¤à§‡ à¦ªà¦¾à¦°à¦¤à§‡à¦¨à¥¤ à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à¦¤à§‡à¦¨ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸à§‡à¦° à¦…à¦‚à¦¶à¥¤</span></span></p>', '../assets/images/worldcup.jpg', 1),
(2, 2, ' à¦œà¦¾à¦ªà¦¾à¦¨à§‡ à¦¬à¦¨à§à¦¯à¦¾à§Ÿ à¦®à§ƒà¦¤à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦¬à¦¾à§œà¦›à§‡, à¦†à¦°à¦“ à¦¸à¦¤à¦°à§à¦•à¦¤à¦¾', 'à¦¬à¦¿à¦§à§à¦¬à¦¸à§à¦¤ à¦¬à¦¾à§œà¦¿à¦˜à¦°à§‡ à¦•à§‡à¦‰ à¦¬à§‡à¦à¦šà§‡ à¦†à¦›à§‡ à¦•à¦¿ à¦¨à¦¾, à¦¦à§‡à¦–à¦›à§‡ à¦ªà§à¦²à¦¿à¦¶à¥¤ à¦®à¦¾à¦¬à¦¿, à¦•à§à¦°à¦¾à¦¸à¦¿à¦•à¦¿, à¦“à¦•à¦¾à§Ÿà¦¾à¦®à¦¾, à¦œà¦¾à¦ªà¦¾à¦¨, à§§à§¦ à¦œà§à¦²à¦¾à¦‡à¥¤ à¦›à¦¬à¦¿: à¦°à§Ÿà¦Ÿà¦¾à¦°à§à¦¸                                ', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦œà¦¾à¦ªà¦¾à¦¨à§‡ à¦°à§‡à¦•à¦°à§à¦¡ à¦ªà¦°à¦¿à¦®à¦¾à¦£ à¦¬à§ƒà¦·à§à¦Ÿà¦¿à¦ªà¦¾à¦¤à§‡ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦œà¦¾à§Ÿà¦—à¦¾à§Ÿ à¦¬à¦¨à§à¦¯à¦¾à§Ÿ à¦®à§ƒà¦¤ à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦¬à§‡à§œà§‡ à§§à§¯à§¯-à¦¤à§‡ à¦ªà§Œà¦à¦›à§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦¨à¦¿à¦–à§‹à¦à¦œà¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦¬à§ƒà¦·à§à¦Ÿà¦¿ à¦•à¦®à§‡ à¦à¦²à§‡à¦“ à¦¬à¦¨à§à¦¯à¦¾à¦° à¦¬à¦¿à¦·à§Ÿà§‡ à¦¨à¦¤à§à¦¨ à¦¸à¦¤à¦°à§à¦•à¦¤à¦¾ à¦œà¦¾à¦°à¦¿ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦•à¦‡ à¦¸à¦™à§à¦—à§‡ à¦¤à¦¾à¦ªà¦®à¦¾à¦¤à§à¦°à¦¾ à¦ªà§à¦°à¦šà¦£à§à¦¡ à¦¬à§‡à§œà§‡ à¦¯à¦¾à¦“à§Ÿà¦¾à§Ÿ à¦—à¦°à¦®à¦œà¦¨à¦¿à¦¤ à¦…à¦¸à§à¦¸à§à¦¥à¦¤à¦¾ (à¦¹à¦¿à¦Ÿà¦¸à§à¦Ÿà§à¦°à§‹à¦•)à¦à§œà¦¾à¦¤à§‡à¦“ à¦¸à¦¤à¦°à§à¦•à¦¤à¦¾ à¦œà¦¾à¦°à¦¿ à¦¹à§Ÿà§‡à¦›à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¸à¦°à¦•à¦¾à¦°à§‡à¦° à¦à¦• à¦®à§à¦–à¦ªà¦¾à¦¤à§à¦° à¦‡à¦‰à¦¸à¦¿à¦—à¦¿à¦¦à§‡ à¦¸à§à¦—à¦¾ à¦ à¦¤à¦¥à§à¦¯ à¦œà¦¾à¦¨à¦¾à¦¨ à¦¬à¦²à§‡ à¦à¦à¦«à¦ªà¦¿à¦° à¦–à¦¬à¦°à§‡ à¦œà¦¾à¦¨à¦¾à¦¨à§‹ à¦¹à§Ÿà¥¤</p>', '../assets/images/international.jpg', 1),
(3, 3, ' à¦–à¦¾à¦²à§‡à¦¦à¦¾à¦° à¦†à¦ªà¦¿à¦² à¦¶à§à¦¨à¦¾à¦¨à¦¿ à¦¶à§‡à¦· à¦¨à¦¾ à¦¹à¦²à§‡ à¦¸à¦®à§Ÿà§‡à¦° à¦ªà§à¦°à¦¾à¦°à§à¦¥à¦¨à¦¾ à¦¬à¦¿à¦¬à§‡à¦šà¦¨à¦¾', 'à¦–à¦¾à¦²à§‡à¦¦à¦¾ à¦œà¦¿à§Ÿà¦¾à¥¤ à¦«à¦¾à¦‡à¦² à¦›à¦¬à¦¿                                                                                                                                ', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦œà¦¿à§Ÿà¦¾ à¦…à¦°à¦«à¦¾à¦¨à§‡à¦œ à¦Ÿà§à¦°à¦¾à¦¸à§à¦Ÿ à¦¦à§à¦°à§à¦¨à§€à¦¤à¦¿à¦° à¦®à¦¾à¦®à¦²à¦¾à§Ÿ à¦¸à¦¾à¦œà¦¾à¦° à¦°à¦¾à§Ÿà§‡à¦° à¦¬à¦¿à¦°à§à¦¦à§à¦§à§‡ à¦¬à¦¿à¦à¦¨à¦ªà¦¿à¦° à¦šà§‡à§Ÿà¦¾à¦°à¦ªà¦¾à¦°à¦¸à¦¨ à¦–à¦¾à¦²à§‡à¦¦à¦¾ à¦œà¦¿à§Ÿà¦¾à¦° à¦•à¦°à¦¾ à¦†à¦ªà¦¿à¦² à¦¶à§à¦¨à¦¾à¦¨à¦¿ à§©à§§ à¦œà§à¦²à¦¾à¦‡à§Ÿà§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¶à§‡à¦· à¦¨à¦¾ à¦¹à¦²à§‡ à¦¸à¦®à§Ÿà§‡à¦° à¦ªà§à¦°à¦¾à¦°à§à¦¥à¦¨à¦¾ à¦¬à¦¿à¦¬à§‡à¦šà¦¨à¦¾ à¦•à¦°à¦¾ à¦¹à¦¬à§‡ à¦¬à¦²à§‡ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡à¦›à§‡à¦¨ à¦¦à§‡à¦¶à§‡à¦° à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦†à¦¦à¦¾à¦²à¦¤à¥¤ à¦¸à§‡ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦†à¦¬à§‡à¦¦à¦¨à¦Ÿà¦¿ à¦¸à§à¦Ÿà§à¦¯à¦¾à¦¨à§à¦¡ à¦“à¦­à¦¾à¦° (à¦®à§à¦²à¦¤à¦¬à¦¿) à¦°à¦¾à¦–à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦ªà¦¾à¦à¦š à¦¬à¦›à¦°à§‡à¦° à¦¸à¦¾à¦œà¦¾à¦° à¦°à¦¾à§Ÿà§‡à¦° à¦¬à¦¿à¦°à§à¦¦à§à¦§à§‡ à¦–à¦¾à¦²à§‡à¦¦à¦¾ à¦œà¦¿à§Ÿà¦¾à¦° à¦•à¦°à¦¾ à¦†à¦ªà¦¿à¦² à§©à§§ à¦œà§à¦²à¦¾à¦‡à§Ÿà§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¨à¦¿à¦·à§à¦ªà¦¤à§à¦¤à¦¿ à¦•à¦°à¦¤à§‡ à¦¹à¦¾à¦‡à¦•à§‹à¦°à§à¦Ÿà¦•à§‡ à¦¨à¦¿à¦°à§à¦¦à§‡à¦¶ à¦¦à¦¿à§Ÿà§‡à¦›à¦¿à¦²à§‡à¦¨ à¦†à¦ªà¦¿à¦² à¦¬à¦¿à¦­à¦¾à¦—à¥¤ à¦—à¦¤ à§§à§¬ à¦®à§‡ à¦†à¦ªà¦¿à¦² à¦¬à¦¿à¦­à¦¾à¦—à§‡à¦° à¦¦à§‡à¦“à§Ÿà¦¾ à¦¸à§‡à¦‡ à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦ªà§à¦¨à¦°à§à¦¬à¦¿à¦¬à§‡à¦šà¦¨à¦¾ à¦šà§‡à§Ÿà§‡ à¦–à¦¾à¦²à§‡à¦¦à¦¾ à¦œà¦¿à§Ÿà¦¾ à¦†à¦¬à§‡à¦¦à¦¨ à¦•à¦°à§‡à¦¨à¥¤ à¦à¦° à¦“à¦ªà¦° à§¯ à¦œà§à¦²à¦¾à¦‡ à¦¶à§à¦¨à¦¾à¦¨à¦¿ à¦¶à§‡à¦·à§‡ à¦†à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¨à§à¦¯ à¦†à¦œà¦•à§‡à¦° à¦¦à¦¿à¦¨ à¦§à¦¾à¦°à§à¦¯ à¦•à¦°à§‡à¦›à¦¿à¦²à§‡à¦¨ à¦†à¦ªà¦¿à¦² à¦¬à¦¿à¦­à¦¾à¦—à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¬à¦¿à¦šà¦¾à¦°à¦ªà¦¤à¦¿ à¦¸à§ˆà§Ÿà¦¦ à¦®à¦¾à¦¹à¦®à§à¦¦ à¦¹à§‹à¦¸à§‡à¦¨à§‡à¦° à¦¨à§‡à¦¤à§ƒà¦¤à§à¦¬à¦¾à¦§à§€à¦¨ à¦šà¦¾à¦° à¦¸à¦¦à¦¸à§à¦¯à¦° à¦†à¦ªà¦¿à¦² à¦¬à¦¿à¦­à¦¾à¦— à¦†à¦œ à¦¬à§ƒà¦¹à¦¸à§à¦ªà¦¤à¦¿à¦¬à¦¾à¦° à¦ à¦†à¦¦à§‡à¦¶ à¦¦à§‡à¦¨à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦œà¦¿à§Ÿà¦¾ à¦…à¦°à¦«à¦¾à¦¨à§‡à¦œ à¦Ÿà§à¦°à¦¾à¦¸à§à¦Ÿ à¦¦à§à¦°à§à¦¨à§€à¦¤à¦¿ à¦®à¦¾à¦®à¦²à¦¾à§Ÿ à¦—à¦¤ à§® à¦«à§‡à¦¬à§à¦°à§à§Ÿà¦¾à¦°à¦¿ à¦–à¦¾à¦²à§‡à¦¦à¦¾ à¦œà¦¿à§Ÿà¦¾à¦•à§‡ à¦ªà¦¾à¦à¦š à¦¬à¦›à¦°à§‡à¦° à¦¸à¦¶à§à¦°à¦® à¦•à¦¾à¦°à¦¾à¦¦à¦£à§à¦¡ à¦“ à¦…à¦°à§à¦¥à¦¦à¦£à§à¦¡à¦¾à¦¦à§‡à¦¶ à¦¦à¦¿à§Ÿà§‡ à¦°à¦¾à§Ÿ à¦¦à§‡à¦¨ à¦¬à¦¿à¦šà¦¾à¦°à¦¿à¦• à¦†à¦¦à¦¾à¦²à¦¤à¥¤ à¦à¦°à¦ªà¦° à¦¥à§‡à¦•à§‡ à¦¨à¦¾à¦œà¦¿à¦®à§à¦¦à§à¦¦à¦¿à¦¨ à¦°à§‹à¦¡à§‡à¦° à¦ªà§à¦°à§‹à¦¨à§‹ à¦•à§‡à¦¨à§à¦¦à§à¦°à§€à§Ÿ à¦•à¦¾à¦°à¦¾à¦—à¦¾à¦°à§‡ à¦†à¦›à§‡à¦¨ à¦¤à¦¿à¦¨à¦¿à¥¤ à¦à¦‡ à¦¸à¦¾à¦œà¦¾à¦° à¦°à¦¾à§Ÿà§‡à¦° à¦¬à¦¿à¦°à§à¦¦à§à¦§à§‡ à¦†à¦ªà¦¿à¦² à¦•à¦°à§‡ à¦¹à¦¾à¦‡à¦•à§‹à¦°à§à¦Ÿ à¦¥à§‡à¦•à§‡ à¦œà¦¾à¦®à¦¿à¦¨ à¦ªà¦¾à¦¨ à¦¤à¦¿à¦¨à¦¿à¥¤ à¦¹à¦¾à¦‡à¦•à§‹à¦°à§à¦Ÿà§‡à¦° à¦œà¦¾à¦®à¦¿à¦¨ à¦¬à¦¹à¦¾à¦² à¦°à§‡à¦–à§‡ à§§à§¬ à¦®à§‡ à¦°à¦¾à§Ÿ à¦¦à§‡à¦¨ à¦†à¦ªà¦¿à¦² à¦¬à¦¿à¦­à¦¾à¦—à¥¤ à¦à¦•à¦‡ à¦¸à¦™à§à¦—à§‡ à¦–à¦¾à¦²à§‡à¦¦à¦¾à¦° à¦•à¦°à¦¾ à¦†à¦ªà¦¿à¦² à¦¹à¦¾à¦‡à¦•à§‹à¦°à§à¦Ÿà§‡ à§©à§§ à¦œà§à¦²à¦¾à¦‡à§Ÿà§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¨à¦¿à¦·à§à¦ªà¦¤à§à¦¤à¦¿ à¦•à¦°à¦¤à§‡ à¦¨à¦¿à¦°à§à¦¦à§‡à¦¶ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¹à§Ÿà¥¤ à¦à¦° à¦†à¦—à§‡ à¦¦à§à¦°à§à¦¨à§€à¦¤à¦¿ à¦¦à¦®à¦¨ à¦•à¦®à¦¿à¦¶à¦¨à§‡à¦° à¦à¦• à¦†à¦¬à§‡à¦¦à¦¨à§‡à¦° à¦¶à§à¦¨à¦¾à¦¨à¦¿ à¦¨à¦¿à§Ÿà§‡ à§¨à§® à¦®à¦¾à¦°à§à¦š à¦¹à¦¾à¦‡à¦•à§‹à¦°à§à¦Ÿ à¦–à¦¾à¦²à§‡à¦¦à¦¾ à¦œà¦¿à§Ÿà¦¾à¦° à¦¸à¦¾à¦œà¦¾ à¦¬à§ƒà¦¦à§à¦§à¦¿ à¦ªà§à¦°à¦¶à§à¦¨à§‡ à¦°à§à¦² à¦¦à§‡à¦¨à¥¤</p>', '../assets/images/politics.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'à¦–à§‡à¦²à¦¾', 'à¦–à§‡à¦²à¦¾ à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦¬à¦¿à¦¨à§‹à¦¦à¦¨à§‡à¦° à¦¸à¦¬à¦šà§‡à¦¯à¦¼à§‡ à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦†à¦­à¦‚ à¦œà¦¨à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦®à¦¾à¦§à§à¦¯à¦®à¥¤ à¦à¦• à¦à¦• à¦¦à§‡à¦¶à§‡ à¦à¦• à¦à¦• à¦§à¦°à¦¨à§‡à¦° à¦–à§‡à¦²à¦¾ à¦®à¦¾à¦¨à§à¦· à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¥¤ à¦ªà§ƒà¦¥à¦¿à¦¬à§€à¦° à¦­à¦¿à¦¨à§à¦¨ à¦­à¦¿à¦¨à§à¦¨ à¦¦à§‡à¦¶à§‡ à¦­à¦¿à¦¨à§à¦¨ à¦­à¦¿à¦¨à§à¦¨ à¦–à§‡à¦²à§‡ à¦¬à§‡à¦¶à¦¿ à¦ªà§à¦°à¦¿à¦¯à¦¼à¥¤                                                                                               ', 1),
(2, 'à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦•', 'à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦• à¦¬à¦²à¦¤à§‡ à¦…à¦§à¦¿à¦•à¦¾à¦‚à¦¶ à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ (à¦à¦•à¦Ÿà¦¿ à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à¦¿, à¦­à¦¾à¦·à¦¾, à¦…à¦¥à¦¬à¦¾ à¦¸à¦‚à¦—à¦ à¦¨) à¦¬à§‹à¦¯à¦¼à¦¾à¦¯à¦¼ à¦¯à¦¾ à¦à¦•à§‡à¦° à¦…à¦§à¦¿à¦• à¦¦à§‡à¦¶à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¸à¦‚à¦¯à§à¦•à§à¦¤ à¦…à¦¥à¦¬à¦¾ à¦à¦° à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦® à¦à¦•à§‡à¦° à¦…à¦§à¦¿à¦• à¦¦à§‡à¦¶à§‡ à¦¬à¦¿à¦¸à§à¦¤à§ƒà¦¤à¥¤ à¦¯à§‡à¦®à¦¨, à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦• à¦†à¦‡à¦¨ à¦¯à¦¾ à¦ªà§à¦°à¦¯à¦¼à§‹à¦— à¦•à¦°à¦¾ à¦¹à¦¯à¦¼ à¦à¦•à§‡à¦° à¦…à¦§à¦¿à¦• à¦¦à§‡à¦¶ à¦¬à¦¾ à¦œà¦¾à¦¤à¦¿à¦° à¦œà¦¨à§à¦¯, à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦• à¦­à¦¾à¦·à¦¾ à¦¯à¦¾ à¦¬à§à¦¯à¦¬à¦¹à§ƒà¦¤ à¦¹à¦¯à¦¼ à¦ªà§ƒà¦¥à¦¿à¦¬à§€à¦° à¦¸à¦•à¦²à¦¦à§‡à¦¶à§‡                                                                                       ', 1),
(3, 'à¦°à¦¾à¦œà¦¨à§€à¦¤à¦¿', 'à¦°à¦¾à¦œà¦¨à§€à¦¤à¦¿ (à¦‡à¦‚à¦°à§‡à¦œà¦¿: Politics) à¦¹à¦²à§‹ à¦à¦®à¦¨ à¦à¦•à¦Ÿà¦¿ à¦ªà§à¦°à¦•à§à¦°à¦¿à¦¯à¦¼à¦¾ à¦¯à¦¾à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦•à¦¿à¦›à§ à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦° à¦¸à¦®à¦¨à§à¦¬à¦¯à¦¼à§‡ à¦—à¦ à¦¿à¦¤ à¦•à§‹à¦¨ à¦—à§‹à¦·à§à¦ à§€ à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à§‡à¥¤ à¦¯à¦¾à¦¦à§à¦¬à¦°à¦¾ à¦¨à¦¾à¦—à¦°à¦¿à¦• à¦¸à¦°à¦•à¦¾à¦°à§‡à¦° à¦°à¦¾à¦œà¦¨à§€à¦¤à¦¿à¦•à§‡à¦‡ à¦¬à§‹à¦à¦¾à¦¨à§‹ à¦¹à¦¯à¦¼, à¦¤à¦¬à§‡ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦…à¦¨à§‡à¦• à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨, à¦¯à§‡à¦®à¦¨ à¦¬à§à¦¯à¦¬à¦¸à¦¾à¦¯à¦¼à¦¿à¦• à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨, à¦¶à¦¿à¦•à§à¦·à¦¾ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨, à¦§à¦°à§à¦®à§€à¦¯à¦¼ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨ à¦¯à§‡à¦–à¦¾à¦¨ à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦ªà¦¾à¦°à¦¸à§à¦ªà¦¾à¦°à¦¿à¦• à¦¸à¦®à§à¦ªà¦°à§à¦• à¦¬à¦¿à¦¦à§à¦¯à¦®à¦¾à¦¨,                                                             ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
