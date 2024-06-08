-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_store_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Bakery'),
(2, 'Beverages'),
(3, 'Dairy and eggs'),
(4, 'Meat and seafood'),
(5, 'Snacks'),
(6, 'Frozen foods'),
(7, 'Baby prducts');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `phone`, `address`) VALUES
(1, 'Arif', 'arif@gmail.com', '23432123', 'Barishal'),
(2, 'Asif', 'asif@gmail.com', '23456789', 'Dhaka'),
(3, 'Rafiq', 'rafiq@gmail.com', '456765434', 'Khulna'),
(4, 'Babar', 'babar@gmail.com', '34567898', 'Khulna'),
(5, 'Racel', 'racel@gmail.com', '496765434', 'Khulna'),
(6, 'kabir', 'kabir@gmail.com', '34568898', 'Khulna'),
(7, 'kazi', 'kazi@gmail.com', '34568888', 'Barishal'),
(8, 'Abir', 'abir@gmail.com', '34508898', 'Khulna'),
(9, 'Asad', 'asad@gmail.com', '34567654', 'Barishal'),
(10, 'Rajib', 'rajib@2gmail.com', '34544345', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `hire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `name`, `email`, `phone`, `position`, `hire_date`) VALUES
(1, 'Taleb', 'taleb@gmail.com', '45676545', 'Cashier', '2020-06-03'),
(2, 'Asiq', 'asiq@gmail.com', '56787654', 'Salesman', '2021-06-10'),
(3, 'Rajjak', 'rajjak@gmail.com', '56789098', 'Store Manager', '2019-06-03'),
(4, 'Rahim', 'rahim@gmail.com', '56787656', 'Salesman', '2021-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `last_restock_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `product_id`, `quantity`, `last_restock_date`) VALUES
(1, 11, 100, '2024-06-02 23:42:34'),
(2, 9, 150, '2024-05-15 23:42:34'),
(3, 4, 100, '2024-03-09 23:46:02'),
(4, 20, 30, '2024-02-06 23:46:02'),
(5, 15, 30, '2024-04-09 23:50:00'),
(6, 19, 50, '2024-02-12 23:48:44'),
(7, 6, 20, '2024-02-05 23:50:46'),
(8, 2, 10, '2024-04-01 23:50:46'),
(9, 5, 50, '2024-06-05 23:52:18'),
(10, 18, 200, '2024-03-12 23:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `quantity`, `product_id`) VALUES
(1, 1, '2024-06-06 19:32:20', 2.00, 4),
(2, 3, '2024-06-06 19:32:20', 3.00, 9),
(3, 5, '2024-06-06 19:35:16', 2.00, 13),
(4, 6, '2024-06-06 19:35:16', 3.00, 16),
(5, 3, '2024-06-06 19:36:56', 5.00, 10),
(6, 4, '2024-06-06 19:36:56', 3.00, 2),
(7, 10, '2024-06-06 19:38:54', 2.00, 1),
(8, 8, '2024-06-06 19:38:54', 3.00, 12),
(9, 9, '2024-06-06 19:40:40', 2.00, 11),
(10, 9, '2024-06-06 19:40:40', 3.00, 16);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity_in_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `description`, `category_id`, `supplier_id`, `price`, `quantity_in_stock`) VALUES
(1, 'Chicken', 'Good quality', 4, 1, 300.00, 150),
(2, 'Beef', 'Good quality', 4, 3, 700.00, 100),
(3, 'Fish', 'High quality', 4, 3, 500.00, 100),
(4, 'Bread', 'Healthy breakfast', 1, 1, 50.00, 100),
(5, 'Milk and Yogart', 'High quality', 3, 5, 200.00, 100),
(6, 'Cheese and Butter', 'Good quality', 3, 5, 300.00, 100),
(9, 'Cake and cookies', 'High quality', 1, 4, 200.00, 100),
(10, 'Frozen seafood', 'High quality', 6, 1, 250.00, 100),
(11, 'Coffee and tea', 'High quality', 2, 1, 100.00, 200),
(12, 'Soft Drinks', 'Good quality', 2, 1, 50.00, 250),
(13, 'Chips and Crackers', 'Tasty', 5, 3, 40.00, 100),
(14, 'Candy and chocolates', 'Delicious', 5, 5, 150.00, 150),
(15, 'Baby foods', 'High quality', 7, 4, 200.00, 100),
(16, 'Diapers and wipes', 'Affordable', 7, 4, 230.00, 100),
(17, 'Frozen Vagetables', 'Good quality', 6, 1, 100.00, 100),
(18, 'Water', 'Affordable', 2, 2, 20.00, 200),
(19, 'Eggs', 'Healthy', 3, 2, 50.00, 50),
(20, 'Dried fruits', 'Healthy', 5, 3, 100.00, 150);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `name`, `contact_email`, `contact_phone`, `address`) VALUES
(1, 'Alam', 'alam@gmail.com', '6765456', 'Barishal'),
(2, 'Basar', 'basar@gmail.com', '456545633', 'Barishal'),
(3, 'Azad', 'azad@gmail.com', '56765456', 'Dhaka'),
(4, 'Jakir', 'jakir@gmail.com', '56543212', 'Khulna'),
(5, 'Basar', 'basar@gmail.com', '45678909', 'Khulna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
