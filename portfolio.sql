-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2017 at 04:57 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `freelancer`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `ItemID` int(10) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `FileName` text NOT NULL,
  `Description` text NOT NULL,
  `Client` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Service` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`ItemID`, `Title`, `FileName`, `Description`, `Client`, `Date`, `Service`) VALUES
(1, 'Project Title 1', 'cabin.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href=\"https://sellfy.com/p/8Q9P/jV3VZ/\">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href=\"http://startbootstrap.com\">Start Bootstrap</a></strong>', 'November 2016', 'Web Development'),
(2, 'Project Title 2', 'cake.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href=\"https://sellfy.com/p/8Q9P/jV3VZ/\">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href=\"http://startbootstrap.com\">Start Bootstrap</a></strong>', 'January 2017', 'Graphic Design'),
(3, 'Project Title 3', 'circus.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href=\"https://sellfy.com/p/8Q9P/jV3VZ/\">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href=\"http://startbootstrap.com\">Start Bootstrap</a></strong>', 'January 2017', 'Graphic Design'),
(4, 'Project Title 4', 'game.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href=\"https://sellfy.com/p/8Q9P/jV3VZ/\">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', 'strong><a href=\"http://startbootstrap.com\">Start Bootstrap</a></strong>', 'February 2017', 'Web Development'),
(5, 'Project Title 5', 'safe.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href=\"https://sellfy.com/p/8Q9P/jV3VZ/\">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href=\"http://startbootstrap.com\">Start Bootstrap</a></strong>', 'March 2017', 'Graphic Design'),
(6, 'Project Title 6', 'submarine.png', 'Use this area of the page to describe your project. The icon above is part of a free icon set by <a href=\"https://sellfy.com/p/8Q9P/jV3VZ/\">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!', '<strong><a href=\"http://startbootstrap.com\">Start Bootstrap</a></strong>', 'March 2017', 'Web Development');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`ItemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `ItemID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
