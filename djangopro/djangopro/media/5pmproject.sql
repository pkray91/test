-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 04:17 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `5pmproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(100) NOT NULL,
  `session` varchar(255) NOT NULL,
  `pro_id` varchar(255) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_image` varchar(255) NOT NULL,
  `pro_price` int(255) NOT NULL,
  `pro_quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cid`, `session`, `pro_id`, `pro_name`, `pro_image`, `pro_price`, `pro_quantity`) VALUES
(1, 'qfsf39fla98nl2jtpefpc4utmf', '10', 'samsung1', '5bd96c9dc42d8.jpg', 15000, 5),
(12, '04r7ldn4ddghn5rgkr6ifp64fp', '15', 'nokia', '5bd2f20a0fbef.jpg', 15000, 5),
(13, '732o6eso0bt8okumthsvmkrnjd', '12', 'nike', '5bd1b45ba512f.jpg', 15000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `created_at`, `cat_name`) VALUES
(6, '2018-10-11 12:07:47', 'cloths'),
(4, '2018-10-11 11:55:39', 'mobile'),
(5, '2018-10-11 12:02:44', 'Television');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `password`) VALUES
('admin', 'admin12345');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `price` int(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `name`, `cat_name`, `model_no`, `image`, `size`, `price`, `description`) VALUES
(10, '2018-10-31 08:49:33', 'samsung1', 'Choose category', 'j5prime1', '5bd96c9dc42d8.jpg', '5.5 ', 15000, 'Good to use yaa'),
(11, '2018-10-25 12:16:57', 'LG', 'Television ', 'sam-32', '5bd1b4394edc3.jpg', '23', 7575, 'I am samsung..'),
(12, '2018-10-25 12:17:31', 'nike', 'cloths ', 'sm-32', '5bd1b45ba512f.jpg', '32 inch', 15000, 'I am t-shirt'),
(13, '2018-10-26 10:51:57', 'jockey', 'cloths ', 'sm-32', '5bd2f1cda39b0.jpg', '23', 8000, 'refrefrefrefrefref'),
(14, '2018-10-26 10:52:27', 'pepe', 'cloths ', 'sm-32', '5bd2f1eb3acaa.jpg', '23', 67878, 'ytjhyjhyjyujyuj'),
(15, '2018-10-26 10:52:58', 'nokia', 'mobile ', 'sm-32', '5bd2f20a0fbef.jpg', '5.5 inch', 15000, 'jmmukmuu'),
(16, '2018-10-26 10:53:32', 'mi', 'mobile ', 'sam-32', '5bd2f22c06b62.jpg', '5.5 inch', 15000, 'dvdvdvsdvd'),
(17, '2018-10-26 10:54:03', 'sony', 'Television ', 'sam-32', '5bd2f24bc49c4.jpeg', '23', 7575, ' b ngnghnghnghn'),
(18, '2018-10-26 10:54:31', 'LG', 'Television ', 'sam-32', '5bd2f2678f09c.jpeg', '23', 15000, 'ghnghnghnghnghnghn');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `created_at`, `f_name`, `l_name`, `email`, `password`, `address`, `mobile`) VALUES
(1, '2018-10-29 11:31:07', 'Harshit', 'Rai', 'anandraj6491@gmail.com', '1234', 'Noida', '9999999999'),
(4, '2018-10-30 11:24:23', 'shubh', 'Rai', 'harsh@gmail.com', '1234', 'noida', '9205910114'),
(2, '2018-10-30 10:53:50', 'Suraj', 'Rai', 's@gmail.com', '1234', 'noida', '9205910114');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `created_at`, `name`, `image`, `description`) VALUES
(20, '2018-10-29 07:01:13', 's2', '5bd6b03988cf2.jpg', 'we are good in '),
(21, '2018-10-25 11:08:07', 's3', '5bd1a41766c18.jpg', 'we are good in php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
