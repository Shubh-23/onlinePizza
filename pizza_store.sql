-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 12:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `knex_migrations`
--

CREATE TABLE `knex_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `knex_migrations`
--

INSERT INTO `knex_migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '20211228080559_product.js', 1, '2021-12-28 08:15:03'),
(9, '20211228081814_user.js', 2, '2022-01-12 07:49:42'),
(13, '20220111102820_orders.js', 3, '2022-01-12 08:15:56'),
(14, '20220111143443_orderItems.js', 3, '2022-01-12 08:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `knex_migrations_lock`
--

CREATE TABLE `knex_migrations_lock` (
  `index` int(10) UNSIGNED NOT NULL,
  `is_locked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `knex_migrations_lock`
--

INSERT INTO `knex_migrations_lock` (`index`, `is_locked`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `phone`, `Address`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 27, '7000518719', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-12 08:17:06', '2022-01-12 08:17:06'),
(2, 27, '7000518719', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-12 09:14:27', '2022-01-12 09:14:27'),
(3, 27, '7000518719', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-12 09:53:26', '2022-01-12 09:53:26'),
(4, 27, '7000518719', '159,gayatri nagar, ujjain', 'order deliver', '2022-01-12 09:55:40', '2022-01-12 09:55:40'),
(5, 27, '9302878511', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-12 10:01:22', '2022-01-12 10:01:22'),
(6, 27, '7000518719', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-12 10:06:14', '2022-01-12 10:06:14'),
(7, 27, '7000518719', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-12 11:21:26', '2022-01-12 11:21:26'),
(8, 27, '9685485511', 'vijay nagar,indore', 'order deliver', '2022-01-12 11:38:19', '2022-01-12 11:38:19'),
(9, 27, '7000518719', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-12 12:01:16', '2022-01-12 12:01:16'),
(10, 27, '7000518719', '159,gayatri nagar, ujjain', 'order deliver', '2022-01-12 12:02:08', '2022-01-12 12:02:08'),
(11, 27, '7000518719', 'vijay nagar,indore', 'order deliver', '2022-01-12 12:04:01', '2022-01-12 12:04:01'),
(12, 29, '7000518719', 'sector B, jagjivan ram colony, patnipura square , indore', 'order deliver', '2022-01-19 14:59:08', '2022-01-19 14:59:08'),
(13, 27, '+917000518719', 'vijay nagar,indore', 'order deliver', '2022-04-23 10:45:57', '2022-04-23 10:45:57'),
(14, 27, '7000518719', 'asdf', 'order deliver', '2022-04-23 10:48:28', '2022-04-23 10:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `name`, `image`, `size`, `qty`, `price`) VALUES
(1, 1, 'Margherita', 'pizza.png', 'small', 2, '250'),
(2, 3, 'Margherita', 'pizza.png', 'small', 2, '250'),
(3, 3, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(4, 3, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(5, 4, 'Margherita', 'pizza.png', 'small', 1, '250'),
(6, 4, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(7, 4, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(8, 4, 'Americana', 'pizza.png', 'large', 1, '500'),
(9, 4, 'Chicken Mushroom', 'pizza.png', 'medium', 1, '350'),
(10, 5, 'Margherita', 'pizza.png', 'small', 2, '250'),
(11, 5, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(12, 5, 'Carbonara', 'pizza.png', 'small', 2, '200'),
(13, 6, 'Margherita', 'pizza.png', 'small', 3, '250'),
(14, 6, 'Marinara', 'pizza.png', 'medium', 2, '300'),
(15, 6, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(16, 7, 'Margherita', 'pizza.png', 'small', 2, '250'),
(17, 7, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(18, 8, 'Margherita', 'pizza.png', 'small', 2, '250'),
(19, 8, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(20, 8, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(21, 9, 'Margherita', 'pizza.png', 'small', 2, '250'),
(22, 9, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(23, 9, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(24, 10, 'Margherita', 'pizza.png', 'small', 2, '250'),
(25, 10, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(26, 11, 'Margherita', 'pizza.png', 'small', 2, '250'),
(27, 11, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(28, 11, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(29, 12, 'Margherita', 'pizza.png', 'small', 1, '250'),
(30, 12, 'Marinara', 'pizza.png', 'medium', 2, '300'),
(31, 12, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(32, 13, 'Margherita', 'pizza.png', 'small', 3, '250'),
(33, 13, 'Marinara', 'pizza.png', 'medium', 2, '300'),
(34, 13, 'Carbonara', 'pizza.png', 'small', 2, '200'),
(35, 13, 'Americana', 'pizza.png', 'large', 1, '500'),
(36, 14, 'Margherita', 'pizza.png', 'small', 2, '250'),
(37, 14, 'Marinara', 'pizza.png', 'medium', 1, '300'),
(38, 14, 'Carbonara', 'pizza.png', 'small', 1, '200'),
(39, 14, 'Vegies pizza', 'pizza.png', 'large', 1, '600'),
(40, 14, 'Pepperoni', 'pizza.png', 'medium', 1, '500');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `size`, `price`) VALUES
(1, 'Margherita', 'pizza.png', 'small', '250'),
(2, 'Marinara', 'pizza.png', 'medium', '300'),
(3, 'Carbonara', 'pizza.png', 'small', '200'),
(4, 'Americana', 'pizza.png', 'large', '500'),
(5, 'Chicken Mushroom', 'pizza.png', 'medium', '350'),
(6, 'Paneer pizza', 'pizza.png', 'small', '200'),
(7, 'Vegies pizza', 'pizza.png', 'large', '600'),
(8, 'Pepperoni', 'pizza.png', 'medium', '500');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'potter parker', 'potterparker09@gmail.com', '', '\'customer\'', '1', '2022-01-04 06:12:03', '2022-01-04 06:12:03'),
(6, 'potter parker', 'Akm2681410@gmail.com', '13246', '\'customer\'', '1', '2022-01-04 07:02:32', '2022-01-04 07:02:32'),
(15, 'potter parker', 'bakerywala@gmail.com', '$2b$10$cIwJi8Cd/9lZDpKtm.rxOeXk4IcqQGBuFmo3FbW.agYjIiwUW9gdC', '\'customer\'', '1', '2022-01-04 07:34:35', '2022-01-04 07:34:35'),
(18, 'potter parker', 'bakerywala132@gmail.com', '$2b$10$7t0w3n6SRRUCHXlsu7123.b4uAuzwJP/4Rk1jKnHUh4MusSYow3La', '\'customer\'', '1', '2022-01-04 07:35:11', '2022-01-04 07:35:11'),
(20, 'potter parker', 'potterparker0932@gmail.com', '$2b$10$Z9Zs2ZZD1R2QOuZtsTcAtOV1.cMyMssXFfQ1EsWwNh4c4/Jq82SOG', '\'customer\'', '1', '2022-01-04 08:51:08', '2022-01-04 08:51:08'),
(22, 'potter parker', 'potterparker0239@gmail.com', '$2b$10$fIiX8nfqu5fV1UEdYhUWce8iCiHbmU4Pnjq6MLKaC0ztA4X1cNJHC', '\'customer\'', '1', '2022-01-04 09:13:38', '2022-01-04 09:13:38'),
(24, 'shubh', 'bakerywala123@gmail.com', '$2b$10$rE9wdUqLG/k.RJMk3yAThedaliscSTsTmMX5MuyOlLRGxHRk5lYjK', '\'customer\'', '1', '2022-01-05 23:51:55', '2022-01-05 23:51:55'),
(25, 'potter parker', 'Akm26814110@gmail.com', '$2b$10$ydf9Vxj1GhlbKFZC1fSdjOisiVpguLGUzOnGuC2qTf8BVcReW0zU2', '\'customer\'', '1', '2022-01-06 00:08:07', '2022-01-06 00:08:07'),
(27, 'potter parker', 'potterparker2309@gmail.com', '$2b$10$1.UHWz/fG8nCqqrTTn8pn.jyxOxm7OAuTlrLUJCj7pp2vh5Eh6DFC', '\'customer\'', '1', '2022-01-10 02:14:14', '2022-01-10 02:14:14'),
(28, 'shubham yadav', 'shubhamyadav123@gmail.com', '$2b$10$FRI1x/u/NzuzlknPRWh2puZKRfFpA34m3XEh68Ki4XS9VEhR48wbO', '\'customer\'', '1', '2022-01-11 00:29:36', '2022-01-11 00:29:36'),
(29, 'potter parker', 'potterparker230997@gmail.com', '$2b$10$kcfnmkHcsqqc6j0TypwIVOykz7I7q7pbCNAJrnKwpx9244lXR/kwi', NULL, '1', '2022-01-19 14:58:37', '2022-01-19 14:58:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knex_migrations`
--
ALTER TABLE `knex_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knex_migrations_lock`
--
ALTER TABLE `knex_migrations_lock`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_order_id_foreign` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knex_migrations`
--
ALTER TABLE `knex_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `knex_migrations_lock`
--
ALTER TABLE `knex_migrations_lock`
  MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
