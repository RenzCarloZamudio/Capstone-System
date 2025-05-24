-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1029.awardspace.net
-- Generation Time: May 24, 2025 at 06:11 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4530883_rbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_product_history`
--

CREATE TABLE `add_product_history` (
  `add_product_history_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `date_time` datetime NOT NULL,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_product_history`
--

INSERT INTO `add_product_history` (`add_product_history_id`, `product_id`, `name`, `barcode`, `category`, `model`, `quantity`, `price`, `date_time`, `Id`) VALUES
(1, 1, 'Break pad', '123456789', '', '', 15, 1100.00, '2024-10-25 12:12:48', 1),
(2, 2, 'Seat Cover', '234567891', '', '', 15, 700.00, '2024-10-25 12:16:13', 1),
(3, 3, 'Oil Seal', '345678912', '', '', 15, 110.00, '2024-10-25 12:17:30', 1),
(4, 4, 'Gear Oil', '456789123', '', '', 15, 35.00, '2024-10-25 12:18:29', 1),
(5, 5, 'Fork Oil', '567891234', '', '', 15, 102.00, '2024-10-25 12:19:07', 1),
(6, 6, 'Tire', '678912345', '', '', 15, 2500.00, '2024-10-25 12:19:44', 1),
(7, 7, 'CDI', '789123456', '', '', 15, 150.00, '2024-10-25 12:20:26', 1),
(8, 8, 'Mini Driving Light', '891234567', '', '', 15, 620.00, '2024-10-25 12:24:25', 1),
(9, 9, 'Piaa Horn', '912345678', '', '', 15, 1300.00, '2024-10-25 12:25:34', 1),
(10, 10, 'CVT Cleaning', '1123456789', '', '', 15, 300.00, '2024-10-25 12:26:37', 1),
(11, 11, 'Relay', '2234567891', '', '', 15, 50.00, '2024-10-25 12:27:36', 1),
(12, 12, 'Fuse', '3345678912', '', '', 15, 200.00, '2024-10-25 12:28:26', 1),
(13, 13, 'Tail Light', '4456789123', '', '', 15, 1900.00, '2024-10-25 12:29:16', 1),
(14, 14, 'Gasket, Cylinder', '1', '', '', 15, 200.00, '2024-10-26 10:15:47', 1),
(15, 15, 'Prembo Califer', '1122', '', '', 100, 40000.00, '2024-10-26 11:53:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `delete_product_history`
--

CREATE TABLE `delete_product_history` (
  `delete_product_history_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `date_time` datetime NOT NULL,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edit_product_history`
--

CREATE TABLE `edit_product_history` (
  `edit_product_history_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `edit_product_history`
--

INSERT INTO `edit_product_history` (`edit_product_history_id`, `product_id`, `name`, `barcode`, `category`, `reason`, `date_time`, `Id`) VALUES
(1, 1, '', '', 'option1', 'Wrong input', '2024-10-25 12:14:26', 1),
(2, 1, '', '', 'Braking System', 'Correction', '2024-10-25 15:49:54', 1),
(3, 2, '', '', 'Interior Accessories', 'Correction', '2024-10-25 15:50:19', 1),
(4, 3, '', '', 'Engine Component', 'Correction', '2024-10-25 15:50:32', 1),
(5, 4, '', '', 'Engine Component', 'Correction', '2024-10-25 15:50:46', 1),
(6, 5, '', '', 'Engine Component', 'Correction', '2024-10-25 15:51:02', 1),
(7, 6, '', '', 'Tires and Wheels', 'Correction', '2024-10-25 15:51:25', 1),
(8, 7, '', '', 'Engine Component', 'Correction', '2024-10-25 15:51:41', 1),
(9, 8, '', '', 'Lighting', 'Correction', '2024-10-25 15:51:57', 1),
(10, 9, '', '', 'Lighting', 'Correction', '2024-10-25 15:52:11', 1),
(11, 11, '', '', 'Electrical Component', 'Correction', '2024-10-25 15:52:34', 1),
(12, 10, '', '', 'Engine Component', 'Correction', '2024-10-25 15:52:47', 1),
(13, 12, '', '', 'Electrical Component', 'Correction', '2024-10-25 15:53:01', 1),
(14, 13, '', '', 'Lighting', 'Correction', '2024-10-25 15:53:24', 1),
(15, 5, '', '4806527201175', NULL, 'Adjust', '2024-10-26 09:38:08', 1),
(16, 14, '', '', 'Engine Component', 'correction', '2024-10-26 10:17:05', 1),
(17, 3, '', '931023080200', NULL, 'correction', '2024-10-26 10:20:31', 1),
(18, 14, '', '12211324', NULL, 'correction', '2024-10-26 10:38:08', 1),
(19, 1, '', '4902430222891', NULL, 'correction', '2024-10-26 10:38:38', 1),
(20, 14, '', '2PHE13510000', NULL, 'correction', '2024-10-26 10:43:14', 1),
(21, 3, '', '931023080200', NULL, 'correction', '2024-10-26 10:44:45', 1),
(22, 3, '', '931023080200', NULL, 'correction', '2024-10-26 10:44:47', 1),
(23, 15, '', '1122-DCD', NULL, 'correction', '2024-10-26 11:53:54', 1),
(24, 17, 'On the very verge of expiring milk', '', NULL, 'name correction', '2024-11-14 22:25:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `handle_defective_product_history`
--

CREATE TABLE `handle_defective_product_history` (
  `handle_defective_product_history` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `date_time` datetime NOT NULL,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `orders_total` decimal(8,2) NOT NULL,
  `orders_cash` decimal(8,2) NOT NULL,
  `orders_change` decimal(8,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `orders_total`, `orders_cash`, `orders_change`, `order_date`, `Id`) VALUES
(1, 1910.00, 2000.00, 90.00, '2024-11-14 14:53:40', 1),
(2, 550.00, 1000.00, 450.00, '2024-11-14 14:53:40', 1),
(3, 1920.00, 2000.00, 80.00, '2024-11-14 14:53:40', 1),
(4, 15905.00, 16000.00, 95.00, '2024-11-14 14:53:40', 1),
(5, 1100.00, 2000.00, 900.00, '2024-11-14 14:53:40', 1),
(6, 700.00, 1000.00, 300.00, '2024-11-14 14:53:40', 1),
(7, 700.00, 1000.00, 300.00, '2024-11-14 14:53:40', 1),
(8, 1400.00, 2000.00, 600.00, '2024-11-14 14:53:40', 1),
(9, 5700.00, 6000.00, 300.00, '2024-11-14 14:53:40', 1),
(10, 200000.00, 250000.00, 50000.00, '2024-11-14 14:53:40', 1),
(11, 50.00, 100.00, 50.00, '2024-11-14 14:53:40', 1),
(12, 2267.00, 2300.00, 33.00, '2024-11-14 14:53:40', 1),
(13, 1100.00, 2000.00, 900.00, '2024-11-14 23:03:21', 1),
(14, 5500.00, 6000.00, 500.00, '2025-03-20 19:39:19', 1),
(15, 3300.00, 4000.00, 700.00, '2025-03-20 19:39:50', 1),
(16, 550.00, 1000.00, 450.00, '2025-04-08 11:43:04', 1),
(17, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:12', 1),
(18, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:12', 1),
(19, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:13', 1),
(20, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:13', 1),
(21, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:13', 1),
(22, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:13', 1),
(23, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:13', 1),
(24, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:13', 1),
(25, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:14', 1),
(26, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:14', 1),
(27, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:14', 1),
(28, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:14', 1),
(29, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:14', 1),
(30, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:14', 1),
(31, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:15', 1),
(32, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:15', 1),
(33, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:15', 1),
(34, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:15', 1),
(35, 6420.00, 7000.00, 580.00, '2025-05-17 15:24:15', 1),
(36, 700.00, 1000.00, 300.00, '2025-05-24 14:01:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`, `subtotal`) VALUES
(1, 1, 1, 'Break pad', 1, 1100.00, 1100.00),
(2, 1, 2, 'Seat Cover', 1, 700.00, 700.00),
(3, 1, 3, 'Oil Seal', 1, 110.00, 110.00),
(4, 2, 10, 'CVT Cleaning', 1, 300.00, 300.00),
(5, 2, 11, 'Relay', 1, 50.00, 50.00),
(6, 2, 12, 'Fuse', 1, 200.00, 200.00),
(7, 3, 8, 'Mini Driving Light', 1, 620.00, 620.00),
(8, 3, 9, 'Piaa Horn', 1, 1300.00, 1300.00),
(9, 4, 1, 'Break pad', 8, 1100.00, 8800.00),
(10, 4, 2, 'Seat Cover', 10, 700.00, 7000.00),
(11, 4, 4, 'Gear Oil', 3, 35.00, 105.00),
(12, 5, 1, 'Break pad', 1, 1100.00, 1100.00),
(13, 6, 2, 'Seat Cover', 1, 700.00, 700.00),
(14, 7, 2, 'Seat Cover', 1, 700.00, 700.00),
(15, 8, 2, 'Seat Cover', 2, 700.00, 1400.00),
(16, 9, 13, 'Tail Light', 3, 1900.00, 5700.00),
(17, 10, 15, 'Prembo Califer', 5, 40000.00, 200000.00),
(18, 11, 11, 'Relay', 1, 50.00, 50.00),
(19, 12, 3, 'Oil Seal', 3, 110.00, 330.00),
(20, 12, 1, 'Break pad', 1, 1100.00, 1100.00),
(21, 12, 2, 'Seat Cover', 1, 700.00, 700.00),
(22, 12, 4, 'Gear Oil', 1, 35.00, 35.00),
(23, 12, 5, 'Fork Oil', 1, 102.00, 102.00),
(24, 13, 1, 'Break pad', 1, 1100.00, 1100.00),
(25, 15, 1, 'Break pad', 3, 1100.00, 3300.00),
(26, 16, 3, 'Oil Seal', 5, 110.00, 550.00),
(27, 17, 1, 'Break pad', 5, 1100.00, 5500.00),
(28, 17, 2, 'Seat Cover', 1, 700.00, 700.00),
(29, 17, 3, 'Oil Seal', 2, 110.00, 220.00),
(30, 36, 2, 'Seat Cover', 1, 700.00, 700.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `supplier_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `barcode`, `category`, `model`, `quantity`, `price`, `supplier_id`) VALUES
(1, 'Break pad', '4902430222891', 'Braking System', 'Honda XR150', 3, 1100.00, 0),
(2, 'Seat Cover', '6922014510112', 'Interior Accessories', 'Universal', 8, 700.00, 0),
(3, 'Oil Seal', '931023080200', 'Engine Component', 'Yamaha Aero', 3, 110.00, 0),
(4, 'Gear Oil 500ml', '4806035204828', 'Engine Component', '', 11, 35.00, 0),
(5, 'Fork Oil 500ml', '4806527201175', 'Engine Component', '', 15, 102.00, 0),
(6, 'Tire', '678912345', 'Tires and Wheels', 'Suzuki Raid', 15, 2500.00, 0),
(7, 'CDI', '789123456', 'Engine Component', 'Universal', 15, 150.00, 0),
(8, 'Mini Driving Light', '891234567', 'Lighting', 'Yamaha NMAX', 14, 620.00, 0),
(9, 'Piaa Horn', '912345678', 'Lighting', 'Suzuki Burg', 14, 1300.00, 0),
(10, 'CVT Cleaning', '1123456789', 'Engine Component', 'Hondal Clic', 14, 300.00, 0),
(11, 'Relay', '2234567891', 'Electrical Component', 'Universal', 0, 50.00, 0),
(12, 'Fuse', '3345678912', 'Electrical Component', 'Universal', 14, 200.00, 0),
(13, 'Tail Light', '4456789123', 'Lighting', 'Honda ADV16', 12, 1900.00, 0),
(14, 'Gasket, Cylinder', '2PHE13510000', 'Engine Component', 'Universal', 15, 200.00, 0),
(15, 'Brembo Califer', '1122-DCD', 'Braking System', 'Universal', 95, 40000.00, 0),
(16, 'Almost Expired Milk', '412765457', 'Braking System', '', 15, 15.00, 0),
(17, 'On the immediate verge of expiring milk', '63456134', 'Braking System', '', 15, 15.00, 0),
(19, 'Spoiled Milk', '902141234', 'Braking System', 'Milky', 15, 15.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int NOT NULL,
  `sales_total` decimal(8,2) NOT NULL,
  `sales_cash` decimal(8,2) NOT NULL,
  `sales_change` decimal(8,2) NOT NULL,
  `sales_date` timestamp NOT NULL,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustment`
--

CREATE TABLE `stock_adjustment` (
  `adjustment_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `date_time` datetime NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_adjustment`
--

INSERT INTO `stock_adjustment` (`adjustment_id`, `product_id`, `qty`, `date_time`, `reason`, `Id`) VALUES
(1, 11, 1, '2024-10-26 10:26:17', '1', 1),
(2, 3, 10, '2024-11-14 22:09:44', 'Wrong count', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_in`
--

CREATE TABLE `stock_in` (
  `stock_in_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `date_time` datetime NOT NULL,
  `delivery_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_in`
--

INSERT INTO `stock_in` (`stock_in_id`, `product_id`, `qty`, `date_time`, `delivery_id`, `Id`) VALUES
(1, 2, 5, '2024-10-26 10:39:28', '1', 1),
(2, 2, 5, '2024-10-26 10:39:29', '1', 1),
(3, 1, 1, '2024-11-14 21:52:10', '0', 1),
(4, 2, 1, '2024-11-14 21:52:37', '0', 1),
(5, 5, 1, '2024-11-14 22:00:55', 'A14', 1),
(6, 1, 5, '2025-05-17 15:03:39', '74398', 1),
(7, 1, 2, '2025-05-17 15:06:11', '74398', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `supplier__business_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `supplier_contact_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `supplier_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_joined` date NOT NULL,
  `Username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `two_factor_secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `first_name`, `last_name`, `date_joined`, `Username`, `Password`, `two_factor_secret`) VALUES
(1, '', '', '0000-00-00', 'Worker1', 'Worker1234567@', '2ADIU4G2BVR4URYY'),
(2, '', '', '0000-00-00', 'Worker2', 'Worker2345678@', 'WWLJET7EDOFJGYCH'),
(3, '', '', '0000-00-00', 'Worker3', 'Worker3456789@', ''),
(21, '', '', '0000-00-00', 'Ancora imparo', 'Tr3@sur3Hunt!1', ''),
(22, '', '', '0000-00-00', 'Jayimparo24', 'Tr3@sur3Hunt!1', ''),
(23, '', '', '0000-00-00', 'kherleen', 'Worker1234567@', ''),
(24, '', '', '0000-00-00', 'Paul Lexxus', '#12345RBMmotor', ''),
(25, '', '', '0000-00-00', 'Worker4', 'Worker1234567@', ''),
(26, '', '', '0000-00-00', 'KentSavior ', 'e<7k.8HF*_5BKK', ''),
(27, '', '', '0000-00-00', 'Jobert', 'MyF1D015thebE$t!', ''),
(28, '', '', '0000-00-00', 'Worker8', 'Worker1234567@', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_product_history`
--
ALTER TABLE `add_product_history`
  ADD PRIMARY KEY (`add_product_history_id`),
  ADD KEY `product_id` (`product_id`,`Id`),
  ADD KEY `add_product_history_id` (`add_product_history_id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `delete_product_history`
--
ALTER TABLE `delete_product_history`
  ADD PRIMARY KEY (`delete_product_history_id`),
  ADD KEY `product_id` (`product_id`,`Id`),
  ADD KEY `delete_product_history_id` (`delete_product_history_id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `edit_product_history`
--
ALTER TABLE `edit_product_history`
  ADD PRIMARY KEY (`edit_product_history_id`),
  ADD KEY `edit_product_history_id` (`edit_product_history_id`,`Id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `handle_defective_product_history`
--
ALTER TABLE `handle_defective_product_history`
  ADD PRIMARY KEY (`handle_defective_product_history`),
  ADD KEY `handle_defective_product_history` (`handle_defective_product_history`,`product_id`,`Id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id_2` (`order_id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_detail_id` (`order_detail_id`,`order_id`,`product_id`),
  ADD KEY `Test7` (`order_id`),
  ADD KEY `Test8` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `product_id` (`product_id`,`supplier_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `sales_id` (`sales_id`,`Id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `stock_adjustment`
--
ALTER TABLE `stock_adjustment`
  ADD PRIMARY KEY (`adjustment_id`),
  ADD KEY `adjustment_id` (`adjustment_id`,`product_id`,`Id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `stock_in`
--
ALTER TABLE `stock_in`
  ADD PRIMARY KEY (`stock_in_id`),
  ADD KEY `stock_in_id` (`stock_in_id`,`product_id`),
  ADD KEY `Test12` (`product_id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_product_history`
--
ALTER TABLE `add_product_history`
  MODIFY `add_product_history_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `delete_product_history`
--
ALTER TABLE `delete_product_history`
  MODIFY `delete_product_history_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `edit_product_history`
--
ALTER TABLE `edit_product_history`
  MODIFY `edit_product_history_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `handle_defective_product_history`
--
ALTER TABLE `handle_defective_product_history`
  MODIFY `handle_defective_product_history` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_adjustment`
--
ALTER TABLE `stock_adjustment`
  MODIFY `adjustment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_in`
--
ALTER TABLE `stock_in`
  MODIFY `stock_in_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
