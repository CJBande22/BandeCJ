-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 07:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`) VALUES
(1, 'tine', '090505'),
(2, 'tine', '090505');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(55) NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_price`, `item_desc`, `item_image`) VALUES
(1, 'REDVELVET CAKE', 500.00, 'Soft red velvet layers with tangy cream cheese buttercream.', 'image/redvelvetcake.jpg'),
(2, 'VANILLA BEAN SPONGE CAKE', 350.00, 'Light, fluffy vanilla sponge with a delicate, fragrant flavor.', 'image/vanilla_bean_sponge_cake.jpg'),
(3, 'COCONUT CREAM CAKE', 460.00, 'Moist coconut cake with creamy frosting and toasted coconut flakes.', 'image/coconut_cream_cake.jpg'),
(4, 'TIRAMISU CAKE', 580.00, 'Espresso-soaked cake layers with mascarpone cream and cocoa powder.', 'image/tiramisu_cake.jpg'),
(5, 'STRAWBERRY SHORTCAKE', 370.00, 'Fluffy cake with sweetened strawberries and fresh whipped cream.', 'image/strawberry_shortcake.jpg'),
(6, 'SALTED CARAMEL CAKE', 400.00, 'Decadent caramel cake with a silky salted caramel drizzle.', 'image/salted_caramel_cake.jpg'),
(7, 'LEMON RASPBERRY CAKE', 420.00, 'Zesty lemon cake with fresh raspberries and a tangy glaze.', 'image/lemon_raspberry_cake.jpg'),
(8, 'CHOCOLOATE TRUFFLE CAKE', 500.00, 'Rich, moist chocolate cake with smooth ganache and a dusting of cocoa.', 'image/chocolatecake.jpg'),
(9, 'MATCHA CAKE', 600.00, 'Delicate, earthy matcha cake with a light, creamy frosting.', 'image/macha_cake.jpg'),
(10, 'PINEAPPLE CAKE', 360.00, 'Buttery cake topped with caramelized pineapple and a hint of brown sugar.', 'image/pineapple_cake.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `date_ordered` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `item_id`, `item_qty`, `cus_id`, `payment_method`, `item_price`, `total_price`, `date_ordered`, `status`) VALUES
(1, 0, 10, 2, 0, 'Cash on Delivery', 360.00, 0.00, '2024-12-10', 'Delivered'),
(2, 0, 5, 1, 0, 'Cash on Delivery', 370.00, 0.00, '2024-12-10', 'Delivered'),
(3, 0, 5, 1, 0, 'Cash on Delivery', 370.00, 0.00, '2024-12-11', 'Shipped'),
(4, 0, 3, 2, 0, 'Cash on Delivery', 460.00, 0.00, '2024-12-11', 'Shipped'),
(5, 0, 2, 1, 0, 'Cash on Delivery', 350.00, 0.00, '2024-12-11', 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL,
  `gender` char(1) NOT NULL,
  `contact_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `address`, `gender`, `contact_no`) VALUES
(1, 'magdalena', 'magda', '123456', 'ilawod', 'F', '09123584371'),
(2, 'jade', 'tin', '123456', 'sugcad', 'F', '09145687214'),
(3, 'rose', 'angela', '123456', 'ilawod', 'F', '09457612843'),
(4, 'jade', 'jaden', '090505', 'polangui', 'F', '098798765'),
(5, 'magda', 'magz', 'line', 'polangui', 'F', '09123584371'),
(6, 'magda', 'lena', '33333', 'ilawod', 'F', '0974636474');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `user_id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_id`, `username`, `password`) VALUES
(1, 'magda', '123456'),
(2, 'tin', '123456'),
(3, 'angela', '123456'),
(4, 'jaden', '090505'),
(5, 'magz', 'line'),
(6, 'lena', '33333');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
