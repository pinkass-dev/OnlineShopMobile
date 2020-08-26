-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 26, 2020 at 06:09 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shopmobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `AdmiNname` varchar(100) NOT NULL,
  `AdminAddress` varchar(150) NOT NULL,
  `AdminEmail` varchar(100) NOT NULL,
  `AdminPhone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `AdmiNname`, `AdminAddress`, `AdminEmail`, `AdminPhone`) VALUES
(1, 'Admin', 'Admin', 'admin01@vtc.edu.vn', '965804067'),
(2, 'LeXuan', 'Hanoi', 'xuanln.nde19011@vtc.edu.vn', '965804068'),
(3, 'TaUoc', 'BacGiang', 'uoctv.nde18034@vtc.edu.vn', '965804069'),
(4, 'VanDuyet', 'BacGiang', 'duyetnv.nde18034@vtc.edu.vn', '965804066');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoriesId` int(11) NOT NULL,
  `CategoriesName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `ImageId` int(11) NOT NULL,
  `ImageName` varchar(200) DEFAULT NULL,
  `ImagePath` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`ImageId`, `ImageName`, `ImagePath`) VALUES
(1, 'iPhone 11 Pro 256GB - FullBox ZA/A (2 sim vật lý)', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200725/pro_trang_800x800.png'),
(2, 'iPhone 11 Lock 64GB - Mới Active 100%', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200725/iphone_11_red_800x800.png'),
(3, 'iPhone 11 Pro Max Lock 64GB - Mới 100%', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200725/11_pro_max_vang_800x800.png'),
(4, 'iPhone 11 Pro Max 256GB - FullBox LL/A (1 sim vật lý +1 E-sim)', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200725/11_pro_max_xanh_800x800.png'),
(5, 'iPhone XS Quốc tế 64GB – FullBox LL/A (1 sim vật lý + 1 E-sim)', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200727/apple_iphone_xs_black_600x600.png'),
(6, 'iPhone XS Max Quốc tế 64GB – Mới Active 100% LL/A', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200817/ip_xs_max___trang_600x600.jpg'),
(7, 'iPhone 8 Plus Quốc tế 256GB – Likenew 99%', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200728/8__trang_900x900.jpg'),
(8, 'iPhone 7 Quốc tế 128GB – Likenew 99%', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200803/7_do_900x900.jpg'),
(9, 'iPhone 6S Quốc tế 16GB – Likenew 99%', 'https://storage.googleapis.com/cdn.nhanh.vn/store2/81120/ps/20200817/iphone_6s___hong_800x800.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `MobileId` int(11) NOT NULL,
  `MobileName` varchar(200) NOT NULL,
  `MobileSale` varchar(110) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`MobileId`, `MobileName`, `MobileSale`, `Price`, `Quantity`) VALUES
(1, '	\r\niPhone 11 Pro 256GB - FullBox ZA/A (2 sim vật lý)', '', 29000000, 10),
(2, 'iPhone 11 Lock 64GB - Mới Active 100%', '', 12400000, 10),
(3, 'iPhone 11 Pro Max Lock 64GB - Mới 100%', '', 18700000, 10),
(4, 'iPhone 11 Pro Max 256GB - FullBox LL/A (1 sim vật lý +1 E-sim)', '', 28900000, 10),
(5, 'iPhone XS Quốc tế 64GB – FullBox LL/A (1 sim vật lý + 1 E-sim)', '', 15900000, 10),
(6, 'iPhone XS Max Quốc tế 64GB – Mới Active 100% LL/A', '', 14500000, 10),
(7, 'iPhone 8 Plus Quốc tế 256GB – Likenew 99%', '', 10500000, 10),
(8, 'iPhone 7 Quốc tế 128GB – Likenew 99%', '', 4700000, 10),
(9, 'iPhone 6S Quốc tế 16GB – Likenew 99%', '', 3100000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mobiledescription`
--

CREATE TABLE `mobiledescription` (
  `MobileDescriptionId` int(11) NOT NULL,
  `MobileDisplay` varchar(200) NOT NULL,
  `Camera` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `storage` int(11) NOT NULL,
  `MobileId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderDetailID` int(11) NOT NULL,
  `Price` double DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `MobileName` varchar(200) DEFAULT NULL,
  `MobileSale` varchar(110) NOT NULL,
  `MobileId` int(11) DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderStatus` varchar(50) NOT NULL,
  `OrderQuantity` double NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `ShoppingCartId` int(11) NOT NULL,
  `MobileId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserAddress` varchar(150) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `UserPhone` varchar(11) NOT NULL,
  `UserPassword` varchar(50) NOT NULL,
  `IsAdimin` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoriesId`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ImageId`);

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`MobileId`);

--
-- Indexes for table `mobiledescription`
--
ALTER TABLE `mobiledescription`
  ADD PRIMARY KEY (`MobileDescriptionId`),
  ADD KEY `fk_Mobile` (`MobileId`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `fk_Orders` (`OrderId`),
  ADD KEY `fk_OrderDetail` (`MobileId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`ShoppingCartId`),
  ADD KEY `fk_shoppingcartMobile` (`MobileId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoriesId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `ImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mobile`
--
ALTER TABLE `mobile`
  MODIFY `MobileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mobiledescription`
--
ALTER TABLE `mobiledescription`
  MODIFY `MobileDescriptionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `ShoppingCartId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobiledescription`
--
ALTER TABLE `mobiledescription`
  ADD CONSTRAINT `fk_Mobile` FOREIGN KEY (`MobileId`) REFERENCES `mobile` (`MobileId`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `fk_OrderDetail` FOREIGN KEY (`MobileId`) REFERENCES `mobile` (`MobileId`),
  ADD CONSTRAINT `fk_Orders` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`);

--
-- Constraints for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `fk_shoppingcartMobile` FOREIGN KEY (`MobileId`) REFERENCES `mobile` (`MobileId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
