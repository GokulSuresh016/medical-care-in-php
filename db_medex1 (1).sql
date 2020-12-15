-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 07:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_medex1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appoinment`
--

CREATE TABLE `tbl_appoinment` (
  `appoinment_id` int(11) NOT NULL,
  `appoinment_user_name` varchar(255) NOT NULL,
  `appoinment_department` varchar(100) NOT NULL,
  `appoinment_date` varchar(255) NOT NULL,
  `appoinment_time` varchar(255) NOT NULL,
  `appoinment_number` bigint(20) NOT NULL,
  `appoinment_meassage` varchar(1000) NOT NULL,
  `appoinment_user_id` varchar(100) NOT NULL,
  `appoinment_doctor_id` varchar(100) NOT NULL,
  `appoinment_doctor_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appoinment`
--

INSERT INTO `tbl_appoinment` (`appoinment_id`, `appoinment_user_name`, `appoinment_department`, `appoinment_date`, `appoinment_time`, `appoinment_number`, `appoinment_meassage`, `appoinment_user_id`, `appoinment_doctor_id`, `appoinment_doctor_name`) VALUES
(1, 'dsf', 'test dept', '0000-00-00', '00:00:12', 9847114512, 'demo', 'test1', '10', 'ambu'),
(2, 'dsf', 'test dept', '0000-00-00', '00:00:12', 9847114512, 'demo', 'test1', '10', 'ambu'),
(3, 'dsf', 'test dept', '4/15/2020', '12', 9847114512, 'demo', 'test1', '10', 'ambu'),
(4, 'dsf', 'test dept', '4/15/2020', '12', 9847114512, 'hsujtj', 'test1', '12', 'ambu'),
(5, 'dsf', 'test dept', '4/15/2020', '12', 9847114512, 'hsujtj', 'test1', '12', 'ambu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `banner_id` int(11) NOT NULL,
  `banner_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`banner_id`, `banner_image`) VALUES
(1, 'bg_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_basic_details`
--

CREATE TABLE `tbl_basic_details` (
  `basic_id` int(11) NOT NULL,
  `basic_mail` varchar(100) NOT NULL,
  `basic_number` varchar(25) NOT NULL,
  `basic_location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_basic_details`
--

INSERT INTO `tbl_basic_details` (`basic_id`, `basic_mail`, `basic_number`, `basic_location`) VALUES
(1, 'test@gmail.com', '9876543210', 'test data');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_posted_date` date NOT NULL,
  `blog_whom` varchar(100) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_description_short` varchar(500) NOT NULL,
  `blog_description_long` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_image`, `blog_posted_date`, `blog_whom`, `blog_title`, `blog_description_short`, `blog_description_long`) VALUES
(1, 'bg_2.jpg', '2020-10-10', 'admin', 'test data', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_login`
--

CREATE TABLE `tbl_doctor_login` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(255) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `login_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_doctor_login`
--

INSERT INTO `tbl_doctor_login` (`login_id`, `login_username`, `login_password`, `login_category`) VALUES
(10, 'admin', 'fg', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `gallery_image`) VALUES
(1, 'image_1.jpg'),
(2, 'image_2.jpg'),
(3, 'image_3.jpg'),
(4, 'image_4.jpg'),
(5, 'image_5.jpg'),
(7, 'pexels-photo-164527.jpeg'),
(8, 'pexels-photo-1766215.jpeg'),
(9, 'pexels-photo-1766215.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_info`
--

CREATE TABLE `tbl_login_info` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(100) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `login_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login_info`
--

INSERT INTO `tbl_login_info` (`login_id`, `login_username`, `login_password`, `login_category`) VALUES
(1, 'admin', 'dfs', 'user'),
(2, 'admin', 'dg', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_doctor`
--

CREATE TABLE `tbl_register_doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `doctor_username` varchar(100) NOT NULL,
  `doctor_password` varchar(50) NOT NULL,
  `doctor_image` varchar(255) NOT NULL,
  `doctor_department` varchar(100) NOT NULL,
  `doctor_hospital` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_register_doctor`
--

INSERT INTO `tbl_register_doctor` (`doctor_id`, `doctor_name`, `doctor_username`, `doctor_password`, `doctor_image`, `doctor_department`, `doctor_hospital`) VALUES
(7, 'ambu', 'admin', 'vyui', 'pexels-photo-164527.jpeg', 'test dept', 'test'),
(8, 'ambu', 'admin', 'vyui', 'pexels-photo-164527.jpeg', 'test dept', 'test'),
(9, 'ambu', 'admin', 'vyui', 'pexels-photo-164527.jpeg', 'test dept', 'test'),
(10, 'ambu', 'admin', 'vyui', 'pexels-photo-164527.jpeg', 'test dept', 'test'),
(11, 'ambu', 'admin', 'fd', 'pexels-photo-783682.jpeg', 'test dept', 'fdh'),
(12, 'ambu', 'admin', 'dg', 'pexels-photo-1766215.jpeg', 'test dept', 'test'),
(15, 'fdg', 'admin', 'fg', 'pexels-photo-783682.jpeg', 'test dept', 'fg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_user`
--

CREATE TABLE `tbl_register_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_location` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_register_user`
--

INSERT INTO `tbl_register_user` (`user_id`, `user_name`, `user_username`, `user_password`, `user_image`, `user_location`) VALUES
(1, 'ambu', 'admin', 'rtsh', 'pexels-photo-730547.jpeg', 'test'),
(2, 'ambu', 'admin', 'dfs', 'pexels-photo-164527.jpeg', 'test'),
(3, 'ambu', 'admin', 'cx', 'pexels-photo-730547.jpeg', 'x');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `service_id` int(11) NOT NULL,
  `service_icon` varchar(100) NOT NULL,
  `service_title` varchar(100) NOT NULL,
  `service_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`service_id`, `service_icon`, `service_title`, `service_description`) VALUES
(1, 'ambulance', 'Emergency Help', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.'),
(2, 'demo', 'gd', 'dsf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE `tbl_test` (
  `test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_login`
--

CREATE TABLE `tbl_user_login` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(255) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `login_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_login`
--

INSERT INTO `tbl_user_login` (`login_id`, `login_username`, `login_password`, `login_category`) VALUES
(1, 'admin', 'cx', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appoinment`
--
ALTER TABLE `tbl_appoinment`
  ADD PRIMARY KEY (`appoinment_id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `tbl_basic_details`
--
ALTER TABLE `tbl_basic_details`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_doctor_login`
--
ALTER TABLE `tbl_doctor_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_login_info`
--
ALTER TABLE `tbl_login_info`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_register_doctor`
--
ALTER TABLE `tbl_register_doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `tbl_register_user`
--
ALTER TABLE `tbl_register_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tbl_user_login`
--
ALTER TABLE `tbl_user_login`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appoinment`
--
ALTER TABLE `tbl_appoinment`
  MODIFY `appoinment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_basic_details`
--
ALTER TABLE `tbl_basic_details`
  MODIFY `basic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_doctor_login`
--
ALTER TABLE `tbl_doctor_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_login_info`
--
ALTER TABLE `tbl_login_info`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_register_doctor`
--
ALTER TABLE `tbl_register_doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_register_user`
--
ALTER TABLE `tbl_register_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_login`
--
ALTER TABLE `tbl_user_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
