-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2016 at 03:49 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(255) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `p_no` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `fname`, `lname`, `p_no`, `email`, `password`) VALUES
(1, 'Sanket', 'Mhatre', '9892130913', 'sanket.mhatre@ves.ac.in', 'plantsvilla');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(100) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `phone_no` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `phone_no`, `email`, `password`) VALUES
(9, 'Akash', 'Patil', '2840211111', 'akash@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `email_id` text NOT NULL,
  `phone_no` text NOT NULL,
  `rating` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(255) NOT NULL,
  `p_id` int(255) NOT NULL,
  `c_email` text NOT NULL,
  `c_phone_no` text NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` int(100) NOT NULL,
  `total_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `p_id`, `c_email`, `c_phone_no`, `quantity`, `price`, `total_price`) VALUES
(5, 2, 'akash@gmail.com', '2840211111', 2, 400, 800),
(11, 35, 'akash@gmail.com', '2840211111', 3, 348, 1044);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'Dragon Fruit PLant', 500),
(2, 'Lotus', 400),
(3, 'Adenium', 450),
(4, 'Anthurium Red', 550),
(5, 'Calanchchu', 300),
(6, 'Cuphea ignea', 100),
(7, 'Scutellaroides', 760),
(8, 'Achillea', 550),
(9, 'Zinnia elegans', 650),
(10, 'Lythraceae', 670),
(11, 'Lamiaceae', 230),
(12, 'Allium cepa', 450),
(13, 'Daucas carota', 450),
(14, 'Lactuca sativa', 500),
(15, 'Raphanus sativus', 230),
(16, 'Raphanus', 340),
(17, 'Lotus Blue', 236),
(18, 'Lotus Pink', 560),
(19, 'Lotus ', 450),
(20, 'Violet Lettuce', 458),
(21, 'Water Lettuce', 345),
(22, 'Big Pebbles Grey', 12),
(23, 'Polished Pebbles Black', 30),
(24, 'Polished Pebbles Grey', 50),
(25, 'Big Pebbles White', 560),
(26, 'Polished Pebbles White', 340),
(27, 'Pebbles For Garden', 347),
(28, 'Cuphea ignea', 340),
(29, 'Scutellaroides\r\n', 207),
(30, 'Achillea millefolium', 450),
(31, 'Zinnia elegans', 560),
(32, 'Lythraceae', 560),
(33, 'Lamiaceae', 700),
(34, 'Aloe Humlis\r\n', 450),
(35, 'American Yucca', 348),
(36, 'Variegated\r\n', 346),
(37, 'Barbadensis', 345),
(38, 'Coleus', 567),
(39, 'Asparagus', 456),
(40, 'Aloe Vera', 230),
(41, 'Allamanda', 346),
(42, 'Bhui Amla', 560),
(43, 'Plumosus', 120),
(44, 'Springery', 450),
(45, 'Boston Fen', 789),
(46, 'Canna', 678),
(47, 'Chlorophytum', 678),
(48, 'Canna Variegated', 345),
(49, 'Dwarf Crinum', 230),
(50, 'Exoecaria', 345),
(51, 'Variegated', 670),
(52, 'Hemigraphis', 780),
(53, 'Colorta', 670),
(54, 'Lithodro\r\n', 560),
(55, 'Diffusa', 560),
(56, 'Lantana', 567),
(57, 'Vetiver', 456),
(58, 'Ipomea', 457),
(59, 'Pentunia', 400),
(60, 'Morning Glory', 340),
(61, 'Pandanus', 600),
(62, 'Philondendron', 670),
(63, 'Xanadu', 670),
(64, 'Portulaca', 678),
(65, 'Pilea', 560),
(66, 'Salvia', 450),
(67, 'Roheo', 340),
(68, 'Rose', 450),
(69, 'Sunflower', 560),
(70, 'Lotus', 567),
(360, 'Aptenia', 345);

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `email_id` text NOT NULL,
  `date` date NOT NULL,
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `name`, `email_id`, `date`, `query`) VALUES
(10, 'Sanket', 'sanket.mhatre@ves.ac.in', '2016-10-02', 'ascasc'),
(11, 'Akash', 'akash@gmail.com', '2016-10-18', 'scascas'),
(12, 'Akash', 'akash@gmail.com', '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
