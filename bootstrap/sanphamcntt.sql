-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2021 at 05:30 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanphamcntt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$DnodTevmz9cIQrzlyKal1eeaYzK2CDgoWBvNNa5kX2AQASCNVf2vS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Tr????ng Quang Vi???t', 'truongvietbg@gmail.com', '0359334045', 'Web r???t t???t', '2020-07-03 16:14:57', '2020-07-03 16:14:57'),
(3, 'truong quang viet', 'truongvietbg@gmail.com', '0359334045', 'noi dung', '2021-05-21 18:33:59', '2021-05-21 18:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'truong quang viet', 'truongvietbg@gmail.com', NULL, '$2y$10$V41w.PaxVzwWECzKAlg01ejUVFu8ZrLaFof2NwHqEDKiquntm8XKm', NULL, '2021-05-21 13:21:32', '2021-05-21 13:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `pro_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `description`, `hot`, `image`, `created_at`, `updated_at`) VALUES
(1, 'C??ch l??i xe ti???t ki???m x??ng', 'cach-lai-xe-tiet-kiem-xang', '<p>Trong th???i bu???i x??ng t??ng gi&aacute; nh?? hi???n nay, vi???c l&agrave;m sao ????? ti???t ki???m x??ng ????? gi???m b???t chi ph&iacute; cho t&uacute;i ti???n c???a m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; h???t s???c quan t&acirc;m. Xin gi???i thi???u 10 m???o ????? ti???t ki???m x??ng ?????i v???i &ocirc; t&ocirc;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://caronline.com.vn/Image.ashx/image=jpeg/0dea9cb490d74e5cbc3ecd84f0eb4da9-car-save-gas-lg.jpg/car-save-gas-lg.jpg\" /><br />\r\n<br />\r\n1. L???p ph???i lu&ocirc;n c??ng h??i<br />\r\n<br />\r\nGi??? cho l???p xe trong t&igrave;nh tr???ng ????? h??i l&agrave; m???t trong nh???ng c&aacute;ch t???t nh???t ????? ti???t ki???m nhi&ecirc;n li???u, ?????ng th???i ??&oacute; l&agrave; c&aacute;ch ????? ?????m b???o an to&agrave;n t&iacute;nh m???ng cho ng?????i s??? d???ng xe b???i l???p xe non. B??m cho l???p xe ?????t ?????n ng?????ng t???i ??a theo ????? ngh??? c???a nh&agrave; s???n xu???t. C&aacute;c l&aacute;i xe n&ecirc;n ki???m tra &iacute;t nh???t m???t th&aacute;ng m???t l???n.<br />\r\n<br />\r\nN???u c&oacute; hi???n t?????ng y???u h??i th&igrave; ph???i b??m ngay kh&ocirc;ng n&ecirc;n ch???n ch???. Tr?????c khi cho xe l??n b&aacute;nh tr&ecirc;n ???????ng, c???n s??? d???ng m&aacute;y ??o &aacute;p su???t k??? thu???t s??? ????? ki???m tra ????? c??ng. L???p no h??i s??? v???a gi&uacute;p cho xe ch???y &ecirc;m &aacute;i l???i v???a v???n h&agrave;nh t???i ??u.<br />\r\n<br />\r\n2. L&aacute;i ??? t???c ????? v???a ph???i<br />\r\n<br />\r\nL&aacute;i xe n&ecirc;n ch&uacute; &yacute; tr&aacute;nh l&aacute;i t???c ????? cao tr&ecirc;n nh???ng con ???????ng g??? gh???, g???p gh???nh. Tr&ecirc;n ???????ng cao t???c, m???c ti&ecirc;u th??? nhi&ecirc;n li???u khi xe ??i ??? t???c ????? d?????i 100 km/h v&agrave; tr&ecirc;n 100km/h l&agrave; r???t kh&aacute;c nhau, c&oacute; th??? ch&ecirc;nh nhau 10% ho???c h??n t&ugrave;y t???ng lo???i xe.<br />\r\n<br />\r\nThay v&igrave; vi???c li&ecirc;n t???c ?????ng kh???ng v&agrave; t??ng t???c ?????t ng???t, ?????c bi???t ??? nh???ng ??o???n ??&egrave;n giao th&ocirc;ng, ng?????i l&aacute;i n&ecirc;n ?????c l?????ng kho???ng c&aacute;ch v???i ??&egrave;n ????? v&agrave; l??u l?????ng ng?????i tham gia giao th&ocirc;ng ?????ng tr?????c ????? xe gi??? ???????c v???n t???c ?????u. Tuy nhi&ecirc;n, kh&ocirc;ng ph???i c??? v???n t???c th???p l&agrave; c&oacute; th??? ti???t ki???m x??ng. Theo c&aacute;c chuy&ecirc;n gia v??? xe h??i th&igrave; v???n t???c xu???ng d?????i 50 km/h l&agrave;m t???n th&ecirc;m 10% nhi&ecirc;n li???u.<br />\r\n<br />\r\n3. H???n ch??? s??? d???ng ??i???u h&ograve;a<br />\r\n<br />\r\nN???u nh?? th???i ti???t d??? ch???u, ng?????i s??? d???ng n&ecirc;n t???t ??i???u h&ograve;a. Vi???c n&agrave;y s??? gi&uacute;p ti???t ki???m ???????c n??ng l?????ng cho xe. ??i???u ho&agrave; kh&ocirc;ng kh&iacute; c&oacute; th??? ti&ecirc;u t???n 10% nhi&ecirc;n li???u. Tuy nhi&ecirc;n, ??? t???c ????? tr&ecirc;n 80km/h s??? d???ng ??i???u ho&agrave; kh&ocirc;ng kh&iacute; t???t h??n cho vi???c m??? m???t c???a s???.</p>\r\n\r\n<p><img alt=\"\" src=\"http://media.thethaovanhoa.vn/Images/Uploaded/Share/2010/04/14/oto.jpg\" style=\"width:450px\" /><br />\r\nH???n ch??? s??? d???ng ??i???u h&ograve;a l&agrave; m???t c&aacute;ch ti???t ki???m x??ng hi???u qu???. ???nh ch??? c&oacute; t&iacute;nh ch???t minh h???a</p>\r\n\r\n<p>4. T???t ?????ng c?? khi kh&ocirc;ng s??? d???ng<br />\r\n<br />\r\nKhi chi???c xe d???ng l???i ho???c t???m ng???ng ho???t ?????ng th&igrave; n&ecirc;n t???t ?????ng c?? ????? nh???m gi???m hao ph&iacute; nhi&ecirc;n li???u v&ocirc; &iacute;ch. Tr&aacute;nh vi???c h&acirc;m n&oacute;ng ?????ng c?? qu&aacute; l&acirc;u (v&iacute; d??? nh?? t???i 30-45 gi&acirc;y) v&agrave; tr&aacute;nh vi???c ????? ?????ng c?? ch???y m???t c&aacute;ch nh&agrave;n r???i.<br />\r\n<br />\r\n5. S??? d???ng ch??? ????? cruise control<br />\r\n<br />\r\n??&acirc;y l&agrave; m???t h??? th???ng ki???m so&aacute;t v???n t???c t??? ?????ng. V&iacute; d???, khi c&agrave;i ?????t ??? t???c ????? 112km/h tr&ecirc;n ???????ng cao t???c, m&aacute;y t&iacute;nh s??? t&iacute;nh to&aacute;n v&agrave; ??i???u ch???nh van ti???t l??u ????? duy tr&igrave; t???c ????? ???y, gi&uacute;p ti???t ki???m nhi&ecirc;n li???u cho xe. Hi???u qu??? h??n n???a l&agrave; h??? th???ng Adaptive Cruise, s??? d???ng ra-??a ????? gi??? kho???ng c&aacute;ch v???i xe ?????ng sau v&agrave; ?????ng tr?????c.<br />\r\n<br />\r\n6. L&agrave;m s???ch b??? l???c kh&ocirc;ng kh&iacute; th?????ng xuy&ecirc;n<br />\r\n<br />\r\nT&igrave;nh tr???ng b??? l???c kh&ocirc;ng kh&iacute; trong xe b??? ngh???n s??? g&acirc;y t???n nhi&ecirc;n li???u. Theo t&iacute;nh to&aacute;n c???a chuy&ecirc;n gia, n???u b??? l???c b??? t???c l&agrave;m t???n 10% nhi&ecirc;n li???u. B??? l???c kh&iacute; r???t d??? th&aacute;o r???i. H&atilde;y v??? sinh v&agrave; ph??i d?????i &aacute;nh n???ng m???t tr???i, n???u kh&ocirc;ng th???y &aacute;nh s&aacute;ng xuy&ecirc;n qua n&oacute; th&igrave; c&oacute; ngh??a l&agrave; c???n ph???i thay b??? l???c m???i. N???u b??? l???c b??? ngh???n nhi???u l???n n&ecirc;n thay b??? l???c m???i ????? ?????m b???o cho qu&aacute; tr&igrave;nh l???c kh&ocirc;ng kh&iacute; ???????c th&ocirc;ng su???t v&agrave; ti???t ki???m nhi&ecirc;n li???u.<br />\r\n<br />\r\n7. Nh???n ga t??? t???<br />\r\n<br />\r\nNhi???u ng?????i v???n c&ograve;n c&oacute; th&oacute;i quen ?????p m???nh ch&acirc;n ga nh???m t??ng t???c ?????t ng???t cho chi???c xe, ?????ng th???i tr?????c khi ????? xe v???n gi??? ??? t???c ????? cao r???i phanh ?????t ng???t. ??i???u n&agrave;y c&oacute; th??? mang l???i c???m gi&aacute;c m???nh cho ng?????i l&aacute;i, tuy nhi&ecirc;n n&oacute; c??ng ch&iacute;nh l&agrave; th??? ph???m &ldquo;m&oacute;c&rdquo; kh???i t&uacute;i ti???n c???a b???n m???t kho???n nho nh??? khi c???ng d???n l???i.<br />\r\n<br />\r\nDo ??&oacute;, c??? g???ng nh???n ga t??? t??? khi xu???t ph&aacute;t v&agrave; tr?????c khi d???ng xe, c???n duy tr&igrave; kho???ng c&aacute;ch an to&agrave;n gi???a c&aacute;c ph????ng ti???n v&agrave; ph&aacute;n ??o&aacute;n ??i???u ki???n giao th&ocirc;ng ????? k???p t??ng ga v&agrave; nh???n phanh ?????u ?????n.<br />\r\n<br />\r\n8. X&acirc;y d???ng l???ch tr&igrave;nh tr?????c<br />\r\n<br />\r\nTr?????c khi b???t ?????u ??i ??&acirc;u, l&aacute;i xe n&ecirc;n t&iacute;nh to&aacute;n tr?????c l???ch tr&igrave;nh s??? ??i, th???i gian ??i ????? tr&aacute;nh t&igrave;nh tr???ng l&ograve;ng v&ograve;ng, nh???m ???????ng hay l???c ???????ng g&acirc;y ra nhi???u ??i???u phi???n to&aacute;i ho???c t???n nhi&ecirc;n li???u.<br />\r\n<br />\r\n9. Kh&ocirc;ng mang qu&aacute; nhi???u ????? ?????c<br />\r\n<br />\r\nN???u kh&ocirc;ng c???n thi???t trong h&agrave;nh tr&igrave;nh kh&ocirc;ng n&ecirc;n mang nhi???u ????? ?????c, ch??? mang theo nh???ng th??? c???n thi???t. Nh???ng th??? kh&ocirc;ng c???n thi???t kh&ocirc;ng n&ecirc;n ????a l&ecirc;n xe. B???i v&igrave;, c??? 50 kg h&agrave;nh l&yacute; s??? ti&ecirc;u t???n th&ecirc;m 2% nhi&ecirc;n li???u v&agrave; g&acirc;y l&atilde;ng ph&iacute; nhi&ecirc;n li???u m???t c&aacute;ch kh&ocirc;ng c???n thi???t.<br />\r\n<br />\r\n10. ????? x??ng l&uacute;c n&agrave;o?<br />\r\n<br />\r\nMua x??ng v&agrave;o s&aacute;ng s???m ho???c chi???u t???i, ??&acirc;y l&agrave; th???i ??i???m x??ng ?????c nh???t. Kh&ocirc;ng n&ecirc;n ????? qu&aacute; ?????y l&agrave;m cho x??ng b??? r&ograve; ra ngo&agrave;i g&acirc;y nguy hi???m.</p>', '<p>Trong th???i bu???i x??ng t??ng gi&aacute; nh?? hi???n nay, vi???c l&agrave;m sao ????? ti???t ki???m x??ng ????? gi???m b???t chi ph&iacute; cho t&uacute;i ti???n c???a m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; h???t s???c quan t&acirc;m. Xin gi???i thi???u 10 m???o ????? ti???t...</p>', 1, '1593762831_xang.jpg', '2020-07-03 00:53:51', '2020-07-03 01:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `promotion` tinyint(4) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `supplier` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `links` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `links`, `image`, `created_at`, `updated_at`) VALUES
(1, 'links slide 1q', '1593825690.jpg', '2020-07-03 18:21:30', '2020-07-03 18:44:44'),
(3, 'links slide 2', '1593827111.jpg', '2020-07-03 18:45:11', '2020-07-03 18:45:11'),
(4, 'links slide 3', '1593827122.jpg', '2020-07-03 18:45:22', '2020-07-03 18:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
