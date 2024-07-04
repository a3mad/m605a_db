SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Fashion', '2024-04-04 03:20:38'),
(2, 'Category2', '2024-04-04 03:20:38'),
(3, 'Category3', '2024-04-04 03:20:38'),
(4, 'Category4', '2024-04-04 03:20:38'),
(5, 'Category5', '2024-04-04 03:20:38'),
(6, 'Category6', '2024-04-04 03:20:38'),
(7, 'Category7', '2024-04-04 03:20:38'),
(8, 'Category8', '2024-04-04 03:20:38'),
(9, 'Category9', '2024-04-04 03:20:38'),
(10, 'Category10', '2024-04-04 03:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `telephone`, `address`, `created_at`, `last_login_at`) VALUES
(1, 'Customer1', 'Customer1@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-07-03 03:20:38'),
(2, 'Customer2', 'Customer2@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-05-04 03:20:38'),
(3, 'Customer3', 'Customer3@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-07-03 03:20:38'),
(4, 'Customer4', 'Customer4@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-05-04 03:20:38'),
(5, 'Customer5', 'Customer5@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-07-03 03:20:38'),
(6, 'Customer6', 'Customer6@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-05-04 03:20:38'),
(7, 'Customer7', 'Customer7@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-07-03 03:20:38'),
(8, 'Customer8', 'Customer8@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-05-04 03:20:38'),
(9, 'Customer9', 'Customer9@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-07-03 03:20:38'),
(10, 'Customer10', 'Customer10@test.com', '12345678', '+123456789', 'Test address', '2024-04-04 03:20:38', '2024-05-04 03:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `returned_at` datetime DEFAULT NULL,
  `returned_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `description`, `created_at`, `returned_at`, `returned_reason`) VALUES
(1, 1, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(2, 2, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(3, 3, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(4, 4, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(5, 5, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(6, 6, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(7, 7, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(8, 8, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(9, 9, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(10, 10, 'Test description', '2024-07-04 03:20:38', NULL, NULL),
(11, 1, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(12, 2, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(13, 3, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(14, 4, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(15, 5, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(16, 6, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(17, 7, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(18, 8, 'Test description', '2024-05-04 03:20:38', NULL, NULL),
(19, 9, 'Test description', '2024-07-03 03:20:38', NULL, NULL),
(20, 10, 'Test description', '2024-05-04 03:20:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `returned_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `returned_at`) VALUES
(1, 1, 1, 5, 10.00, NULL),
(2, 2, 2, 6, 20.00, NULL),
(3, 3, 3, 4, 30.00, NULL),
(4, 4, 4, 1, 40.00, NULL),
(5, 5, 5, 1, 50.00, NULL),
(6, 6, 6, 1, 60.00, NULL),
(7, 7, 7, 1, 70.00, NULL),
(8, 8, 8, 1, 80.00, NULL),
(9, 9, 9, 1, 90.00, '2024-07-04 04:10:52'),
(10, 10, 10, 1, 100.00, NULL),
(11, 11, 1, 1, 10.00, NULL),
(12, 12, 2, 1, 20.00, NULL),
(13, 13, 3, 1, 30.00, '2024-07-03 04:11:00'),
(14, 14, 4, 1, 40.00, NULL),
(15, 15, 5, 1, 50.00, NULL),
(16, 16, 6, 1, 60.00, NULL),
(17, 17, 7, 1, 70.00, '2024-07-04 04:11:15'),
(18, 18, 8, 1, 80.00, NULL),
(19, 19, 9, 1, 90.00, NULL),
(20, 20, 10, 1, 100.00, '2024-07-03 04:11:07'),
(21, 1, 1, 1, 10.00, '2024-07-03 04:14:55'),
(22, 2, 2, 1, 20.00, NULL),
(23, 3, 3, 1, 30.00, NULL),
(24, 4, 4, 1, 40.00, NULL),
(25, 5, 5, 1, 50.00, NULL),
(26, 6, 6, 1, 60.00, NULL),
(27, 7, 7, 1, 70.00, NULL),
(28, 8, 8, 1, 80.00, NULL),
(29, 9, 9, 1, 90.00, NULL),
(30, 10, 10, 1, 100.00, NULL),
(31, 11, 1, 1, 10.00, NULL),
(32, 12, 2, 1, 20.00, NULL),
(33, 13, 3, 1, 30.00, NULL),
(34, 14, 4, 1, 40.00, NULL),
(35, 15, 5, 1, 50.00, NULL),
(36, 16, 6, 1, 60.00, NULL),
(37, 17, 7, 1, 70.00, NULL),
(38, 18, 8, 1, 80.00, NULL),
(39, 19, 9, 1, 90.00, NULL),
(40, 20, 10, 1, 100.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `supplier_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `supplier_id`, `category_id`, `quantity`, `price`, `description`, `created_at`) VALUES
(1, 'Product1', 1, 1, 10, 10.00, 'Test description', '2024-04-04 03:20:39'),
(2, 'Product2', 1, 1, 20, 20.00, 'Test description', '2024-04-04 03:20:39'),
(3, 'Product3', 2, 3, 30, 30.00, 'Test description', '2024-04-04 03:20:39'),
(4, 'Product4', 3, 4, 40, 40.00, 'Test description', '2024-04-04 03:20:39'),
(5, 'Product5', 5, 5, 50, 50.00, 'Test description', '2024-04-04 03:20:39'),
(6, 'Product6', 7, 6, 60, 60.00, 'Test description', '2024-04-04 03:20:39'),
(7, 'Product7', 6, 7, 70, 70.00, 'Test description', '2024-04-04 03:20:39'),
(8, 'Product8', 5, 8, 80, 80.00, 'Test description', '2024-04-04 03:20:39'),
(9, 'Product9', 1, 1, 90, 90.00, 'Test description', '2024-04-04 03:20:39'),
(10, 'Product10', 1, 1, 100, 100.00, 'Test description', '2024-04-04 03:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_comments`
--

CREATE TABLE `product_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `rating` int(2) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_comments`
--

INSERT INTO `product_comments` (`id`, `order_item_id`, `rating`, `comment`, `created_at`) VALUES
(1, 1, 5, 'Test comment', '2024-04-04 03:20:39'),
(2, 2, 4, 'Test comment', '2024-04-04 03:20:39'),
(3, 3, 3, 'Test comment', '2024-04-04 03:20:39'),
(4, 4, 2, 'Test comment', '2024-04-04 03:20:39'),
(5, 5, 1, 'Test comment', '2024-04-04 03:20:39'),
(6, 6, 5, 'Test comment', '2024-04-04 03:20:39'),
(7, 7, 4, 'Test comment', '2024-04-04 03:20:39'),
(8, 8, 3, 'Test comment', '2024-04-04 03:20:39'),
(9, 9, 1, 'bad item', '2024-04-04 03:20:39'),
(10, 10, 1, 'Test comment', '2024-04-04 03:20:39'),
(11, 13, 1, 'bad item', '2024-04-04 03:20:39'),
(12, 17, 1, 'bad item', '2024-04-04 03:20:39'),
(13, 20, 1, 'bad item', '2024-04-04 03:20:39'),
(14, 21, 1, 'bad item', '2024-04-04 03:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `url`, `created_at`) VALUES
(1, 1, 'Image1', 'http://test.com/image1.jpg', '2024-04-04 03:20:39'),
(2, 2, 'Image2', 'http://test.com/image2.jpg', '2024-04-04 03:20:39'),
(3, 3, 'Image3', 'http://test.com/image3.jpg', '2024-04-04 03:20:39'),
(4, 4, 'Image4', 'http://test.com/image4.jpg', '2024-04-04 03:20:39'),
(5, 5, 'Image5', 'http://test.com/image5.jpg', '2024-04-04 03:20:39'),
(6, 6, 'Image6', 'http://test.com/image6.jpg', '2024-04-04 03:20:39'),
(7, 7, 'Image7', 'http://test.com/image7.jpg', '2024-04-04 03:20:39'),
(8, 8, 'Image8', 'http://test.com/image8.jpg', '2024-04-04 03:20:39'),
(9, 9, 'Image9', 'http://test.com/image9.jpg', '2024-04-04 03:20:39'),
(10, 10, 'Image10', 'http://test.com/image10.jpg', '2024-04-04 03:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `tag_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `telephone`, `address`, `created_at`) VALUES
(1, 'Supplier1', 'Supplier1@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(2, 'Supplier2', 'Supplier2@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(3, 'Supplier3', 'Supplier3@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(4, 'Supplier4', 'Supplier4@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(5, 'Supplier5', 'Supplier5@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(6, 'Supplier6', 'Supplier6@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(7, 'Supplier7', 'Supplier7@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(8, 'Supplier8', 'Supplier8@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(9, 'Supplier9', 'Supplier9@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39'),
(10, 'Supplier10', 'Supplier10@test.com', '+123456789', 'Test address', '2024-04-04 03:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`) VALUES
(1, 'Tag1', '2024-04-04 03:20:39'),
(2, 'Tag2', '2024-04-04 03:20:39'),
(3, 'Tag3', '2024-04-04 03:20:39'),
(4, 'Tag4', '2024-04-04 03:20:39'),
(5, 'Tag5', '2024-04-04 03:20:39'),
(6, 'Tag6', '2024-04-04 03:20:39'),
(7, 'Tag7', '2024-04-04 03:20:39'),
(8, 'Tag8', '2024-04-04 03:20:39'),
(9, 'Tag9', '2024-04-04 03:20:39'),
(10, 'Tag10', '2024-04-04 03:20:39');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_1`
-- (See below for the actual view)
--
CREATE TABLE `view_1` (
`id` int(11) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`telephone` varchar(255)
,`created_at` datetime
,`number_of_products` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_2`
-- (See below for the actual view)
--
CREATE TABLE `view_2` (
`product_id` int(11) unsigned
,`product_name` varchar(255)
,`supplier_name` varchar(255)
,`number_of_sold_items` decimal(33,0)
,`total_amount` decimal(41,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_3`
-- (See below for the actual view)
--
CREATE TABLE `view_3` (
`customer_id` int(11) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`address` text
,`telephone` varchar(255)
,`created_at` datetime
,`last_login_at` datetime
,`total_purchases` decimal(41,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_4`
-- (See below for the actual view)
--
CREATE TABLE `view_4` (
`product_id` int(10) unsigned
,`name` varchar(255)
,`order_id` int(11) unsigned
,`quantity` int(11) unsigned
,`price` decimal(8,2)
,`returned_at` datetime
,`rating` int(2)
,`comment` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_5`
-- (See below for the actual view)
--
CREATE TABLE `view_5` (
`product_id` int(10) unsigned
,`product_name` varchar(255)
,`description` text
,`price` decimal(8,2)
,`quantity` int(11) unsigned
,`catagory_name` varchar(255)
,`order_date` datetime
);

-- --------------------------------------------------------

--
-- Structure for view `view_1`
--
DROP TABLE IF EXISTS `view_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_1`  AS SELECT `s`.`id` AS `id`, `s`.`name` AS `name`, `s`.`email` AS `email`, `s`.`telephone` AS `telephone`, `s`.`created_at` AS `created_at`, count(`p`.`id`) AS `number_of_products` FROM (`suppliers` `s` left join `products` `p` on(`s`.`id` = `p`.`supplier_id`)) GROUP BY `s`.`id`, `s`.`name`, `s`.`email`, `s`.`telephone`, `s`.`created_at` ORDER BY count(`p`.`id`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `view_2`
--
DROP TABLE IF EXISTS `view_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_2`  AS SELECT `p`.`id` AS `product_id`, `p`.`name` AS `product_name`, `s`.`name` AS `supplier_name`, sum(`oi`.`quantity`) AS `number_of_sold_items`, sum(`oi`.`quantity` * `oi`.`price`) AS `total_amount` FROM ((`order_items` `oi` join `products` `p` on(`oi`.`product_id` = `p`.`id`)) join `suppliers` `s` on(`p`.`supplier_id` = `s`.`id`)) WHERE `oi`.`returned_at` is null GROUP BY `oi`.`product_id`, `p`.`name`, `s`.`name` ORDER BY sum(`oi`.`quantity`) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Structure for view `view_3`
--
DROP TABLE IF EXISTS `view_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_3`  AS SELECT `c`.`id` AS `customer_id`, `c`.`name` AS `name`, `c`.`email` AS `email`, `c`.`address` AS `address`, `c`.`telephone` AS `telephone`, `c`.`created_at` AS `created_at`, `c`.`last_login_at` AS `last_login_at`, sum(`oi`.`quantity` * `oi`.`price`) AS `total_purchases` FROM ((`customers` `c` left join `orders` `o` on(`c`.`id` = `o`.`customer_id`)) join `order_items` `oi` on(`o`.`id` = `oi`.`order_id` and `oi`.`returned_at` is null)) GROUP BY `o`.`customer_id`, `c`.`name`, `c`.`email`, `c`.`address`, `c`.`telephone`, `c`.`created_at`, `c`.`last_login_at` ORDER BY sum(`oi`.`quantity` * `oi`.`price`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `view_4`
--
DROP TABLE IF EXISTS `view_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_4`  AS SELECT `oi`.`product_id` AS `product_id`, `p`.`name` AS `name`, `oi`.`order_id` AS `order_id`, `oi`.`quantity` AS `quantity`, `oi`.`price` AS `price`, `oi`.`returned_at` AS `returned_at`, `pc`.`rating` AS `rating`, `pc`.`comment` AS `comment` FROM ((`order_items` `oi` join `products` `p` on(`oi`.`product_id` = `p`.`id`)) left join `product_comments` `pc` on(`oi`.`id` = `pc`.`order_item_id`)) WHERE `oi`.`returned_at` is not null ORDER BY `oi`.`returned_at` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `view_5`
--
DROP TABLE IF EXISTS `view_5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_5`  AS SELECT `oi`.`product_id` AS `product_id`, `p`.`name` AS `product_name`, `p`.`description` AS `description`, `p`.`price` AS `price`, `p`.`quantity` AS `quantity`, `c`.`name` AS `catagory_name`, `o`.`created_at` AS `order_date` FROM (((`categories` `c` join `products` `p` on(`c`.`id` = `p`.`category_id`)) join `order_items` `oi` on(`p`.`id` = `oi`.`product_id` and `oi`.`returned_at` is null)) join `orders` `o` on(`oi`.`order_id` = `o`.`id` and `o`.`created_at` >= curdate() - interval 1 month)) WHERE `c`.`name` = 'fashion' GROUP BY `oi`.`product_id`, `p`.`name`, `p`.`description`, `p`.`price`, `p`.`quantity`, `c`.`name`, `o`.`created_at` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_customers_customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_items_orders_order_id` (`order_id`),
  ADD KEY `fk_order_items_products_product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_suppliers_supplier_id` (`supplier_id`),
  ADD KEY `fk_products_categories_category_id` (`category_id`);

--
-- Indexes for table `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_comments_order_items_order_item_id` (`order_item_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_images_products_product_id` (`product_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_tags_products_product_id` (`product_id`),
  ADD KEY `fk_product_tags_tags_tag_id` (`tag_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_order_items_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_products_suppliers_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `product_comments`
--
ALTER TABLE `product_comments`
  ADD CONSTRAINT `fk_product_comments_order_items_order_item_id` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `fk_product_images_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `fk_product_tags_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_product_tags_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
