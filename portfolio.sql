-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--

-- Generation Time: Mar 21, 2017 at 05:15 PM
-- Server version: 5.5.53-log
-- PHP Version: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `freelancer`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
  `ItemID` int(10) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `FileName` text NOT NULL,
  `Description` text NOT NULL,
  `Client` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Service` varchar(100) NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`ItemID`, `Title`, `FileName`, `Description`, `Client`, `Date`, `Service`) VALUES
(1, 'Project Title 1', 'cabin.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href="http://startbootstrap.com">Start Bootstrap</a></strong>', 'November 2016', 'Web Development'),
(2, 'Project Title 2', 'cake.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href="http://startbootstrap.com">Start Bootstrap</a></strong>', 'January 2017', 'Graphic Design'),
(3, 'Project Title 3', 'circus.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href="http://startbootstrap.com">Start Bootstrap</a></strong>', 'January 2017', 'Graphic Design'),
(4, 'Project Title 4', 'game.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', 'strong><a href="http://startbootstrap.com">Start Bootstrap</a></strong>', 'February 2017', 'Web Development'),
(5, 'Project Title 5', 'safe.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href="http://startbootstrap.com">Start Bootstrap</a></strong>', 'March 2017', 'Graphic Design'),
(6, 'Project Title 6', 'submarine.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href="http://startbootstrap.com">Start Bootstrap</a></strong>', 'March 2017', 'Web Development'),
(7, 'Project Title 7', 'submarine.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href="http://startbootstrap.com">Start Bootstrap</a></strong>', 'March 2017', 'Graphic Design');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
