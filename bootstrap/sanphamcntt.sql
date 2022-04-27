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
(1, 'Trương Quang Việt', 'truongvietbg@gmail.com', '0359334045', 'Web rất tốt', '2020-07-03 16:14:57', '2020-07-03 16:14:57'),
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
(1, 'Cách lái xe tiết kiệm xăng', 'cach-lai-xe-tiet-kiem-xang', '<p>Trong thời buổi xăng tăng gi&aacute; như hiện nay, việc l&agrave;m sao để tiết kiệm xăng để giảm bớt chi ph&iacute; cho t&uacute;i tiền của m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; hết sức quan t&acirc;m. Xin giới thiệu 10 mẹo để tiết kiệm xăng đối với &ocirc; t&ocirc;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://caronline.com.vn/Image.ashx/image=jpeg/0dea9cb490d74e5cbc3ecd84f0eb4da9-car-save-gas-lg.jpg/car-save-gas-lg.jpg\" /><br />\r\n<br />\r\n1. Lốp phải lu&ocirc;n căng hơi<br />\r\n<br />\r\nGiữ cho lốp xe trong t&igrave;nh trạng đủ hơi l&agrave; một trong những c&aacute;ch tốt nhất để tiết kiệm nhi&ecirc;n liệu, đồng thời đ&oacute; l&agrave; c&aacute;ch để đảm bảo an to&agrave;n t&iacute;nh mạng cho người sử dụng xe bởi lốp xe non. Bơm cho lốp xe đạt đến ngưỡng tối đa theo đề nghị của nh&agrave; sản xuất. C&aacute;c l&aacute;i xe n&ecirc;n kiểm tra &iacute;t nhất một th&aacute;ng một lần.<br />\r\n<br />\r\nNếu c&oacute; hiện tượng yếu hơi th&igrave; phải bơm ngay kh&ocirc;ng n&ecirc;n chần chừ. Trước khi cho xe lăn b&aacute;nh tr&ecirc;n đường, cần sử dụng m&aacute;y đo &aacute;p suất kỹ thuật số để kiểm tra độ căng. Lốp no hơi sẽ vừa gi&uacute;p cho xe chạy &ecirc;m &aacute;i lại vừa vận h&agrave;nh tối ưu.<br />\r\n<br />\r\n2. L&aacute;i ở tốc độ vừa phải<br />\r\n<br />\r\nL&aacute;i xe n&ecirc;n ch&uacute; &yacute; tr&aacute;nh l&aacute;i tốc độ cao tr&ecirc;n những con đường gồ ghề, gập ghềnh. Tr&ecirc;n đường cao tốc, mức ti&ecirc;u thụ nhi&ecirc;n liệu khi xe đi ở tốc độ dưới 100 km/h v&agrave; tr&ecirc;n 100km/h l&agrave; rất kh&aacute;c nhau, c&oacute; thể ch&ecirc;nh nhau 10% hoặc hơn t&ugrave;y từng loại xe.<br />\r\n<br />\r\nThay v&igrave; việc li&ecirc;n tục đứng khựng v&agrave; tăng tốc đột ngột, đặc biệt ở những đoạn đ&egrave;n giao th&ocirc;ng, người l&aacute;i n&ecirc;n ước lượng khoảng c&aacute;ch với đ&egrave;n đỏ v&agrave; lưu lượng người tham gia giao th&ocirc;ng đằng trước để xe giữ được vận tốc đều. Tuy nhi&ecirc;n, kh&ocirc;ng phải cứ vận tốc thấp l&agrave; c&oacute; thể tiết kiệm xăng. Theo c&aacute;c chuy&ecirc;n gia về xe hơi th&igrave; vận tốc xuống dưới 50 km/h l&agrave;m tốn th&ecirc;m 10% nhi&ecirc;n liệu.<br />\r\n<br />\r\n3. Hạn chế sử dụng điều h&ograve;a<br />\r\n<br />\r\nNếu như thời tiết dễ chịu, người sử dụng n&ecirc;n tắt điều h&ograve;a. Việc n&agrave;y sẽ gi&uacute;p tiết kiệm được năng lượng cho xe. Điều ho&agrave; kh&ocirc;ng kh&iacute; c&oacute; thể ti&ecirc;u tốn 10% nhi&ecirc;n liệu. Tuy nhi&ecirc;n, ở tốc độ tr&ecirc;n 80km/h sử dụng điều ho&agrave; kh&ocirc;ng kh&iacute; tốt hơn cho việc mở một cửa sổ.</p>\r\n\r\n<p><img alt=\"\" src=\"http://media.thethaovanhoa.vn/Images/Uploaded/Share/2010/04/14/oto.jpg\" style=\"width:450px\" /><br />\r\nHạn chế sử dụng điều h&ograve;a l&agrave; một c&aacute;ch tiết kiệm xăng hiệu quả. Ảnh chỉ c&oacute; t&iacute;nh chất minh họa</p>\r\n\r\n<p>4. Tắt động cơ khi kh&ocirc;ng sử dụng<br />\r\n<br />\r\nKhi chiếc xe dừng lại hoặc tạm ngừng hoạt động th&igrave; n&ecirc;n tắt động cơ để nhằm giảm hao ph&iacute; nhi&ecirc;n liệu v&ocirc; &iacute;ch. Tr&aacute;nh việc h&acirc;m n&oacute;ng động cơ qu&aacute; l&acirc;u (v&iacute; dụ như tới 30-45 gi&acirc;y) v&agrave; tr&aacute;nh việc để động cơ chạy một c&aacute;ch nh&agrave;n rỗi.<br />\r\n<br />\r\n5. Sử dụng chế độ cruise control<br />\r\n<br />\r\nĐ&acirc;y l&agrave; một hệ thống kiểm so&aacute;t vận tốc tự động. V&iacute; dụ, khi c&agrave;i đặt ở tốc độ 112km/h tr&ecirc;n đường cao tốc, m&aacute;y t&iacute;nh sẽ t&iacute;nh to&aacute;n v&agrave; điều chỉnh van tiết lưu để duy tr&igrave; tốc độ ấy, gi&uacute;p tiết kiệm nhi&ecirc;n liệu cho xe. Hiệu quả hơn nữa l&agrave; hệ thống Adaptive Cruise, sử dụng ra-đa để giữ khoảng c&aacute;ch với xe đằng sau v&agrave; đằng trước.<br />\r\n<br />\r\n6. L&agrave;m sạch bộ lọc kh&ocirc;ng kh&iacute; thường xuy&ecirc;n<br />\r\n<br />\r\nT&igrave;nh trạng bộ lọc kh&ocirc;ng kh&iacute; trong xe bị nghẽn sẽ g&acirc;y tốn nhi&ecirc;n liệu. Theo t&iacute;nh to&aacute;n của chuy&ecirc;n gia, nếu bộ lọc bị tắc l&agrave;m tốn 10% nhi&ecirc;n liệu. Bộ lọc kh&iacute; rất dễ th&aacute;o rời. H&atilde;y vệ sinh v&agrave; phơi dưới &aacute;nh nắng mặt trời, nếu kh&ocirc;ng thấy &aacute;nh s&aacute;ng xuy&ecirc;n qua n&oacute; th&igrave; c&oacute; nghĩa l&agrave; cần phải thay bộ lọc mới. Nếu bộ lọc bị nghẽn nhiều lần n&ecirc;n thay bộ lọc mới để đảm bảo cho qu&aacute; tr&igrave;nh lọc kh&ocirc;ng kh&iacute; được th&ocirc;ng suốt v&agrave; tiết kiệm nhi&ecirc;n liệu.<br />\r\n<br />\r\n7. Nhấn ga từ từ<br />\r\n<br />\r\nNhiều người vẫn c&ograve;n c&oacute; th&oacute;i quen đạp mạnh ch&acirc;n ga nhằm tăng tốc đột ngột cho chiếc xe, đồng thời trước khi đỗ xe vẫn giữ ở tốc độ cao rồi phanh đột ngột. Điều n&agrave;y c&oacute; thể mang lại cảm gi&aacute;c mạnh cho người l&aacute;i, tuy nhi&ecirc;n n&oacute; cũng ch&iacute;nh l&agrave; thủ phạm &ldquo;m&oacute;c&rdquo; khỏi t&uacute;i tiền của bạn một khoản nho nhỏ khi cộng dồn lại.<br />\r\n<br />\r\nDo đ&oacute;, cố gắng nhấn ga từ từ khi xuất ph&aacute;t v&agrave; trước khi dừng xe, cần duy tr&igrave; khoảng c&aacute;ch an to&agrave;n giữa c&aacute;c phương tiện v&agrave; ph&aacute;n đo&aacute;n điều kiện giao th&ocirc;ng để kịp tăng ga v&agrave; nhấn phanh đều đặn.<br />\r\n<br />\r\n8. X&acirc;y dựng lịch tr&igrave;nh trước<br />\r\n<br />\r\nTrước khi bắt đầu đi đ&acirc;u, l&aacute;i xe n&ecirc;n t&iacute;nh to&aacute;n trước lịch tr&igrave;nh sẽ đi, thời gian đi để tr&aacute;nh t&igrave;nh trạng l&ograve;ng v&ograve;ng, nhầm đường hay lạc đường g&acirc;y ra nhiều điều phiền to&aacute;i hoặc tốn nhi&ecirc;n liệu.<br />\r\n<br />\r\n9. Kh&ocirc;ng mang qu&aacute; nhiều đồ đạc<br />\r\n<br />\r\nNếu kh&ocirc;ng cần thiết trong h&agrave;nh tr&igrave;nh kh&ocirc;ng n&ecirc;n mang nhiều đồ đạc, chỉ mang theo những thứ cần thiết. Những thứ kh&ocirc;ng cần thiết kh&ocirc;ng n&ecirc;n đưa l&ecirc;n xe. Bởi v&igrave;, cứ 50 kg h&agrave;nh l&yacute; sẽ ti&ecirc;u tốn th&ecirc;m 2% nhi&ecirc;n liệu v&agrave; g&acirc;y l&atilde;ng ph&iacute; nhi&ecirc;n liệu một c&aacute;ch kh&ocirc;ng cần thiết.<br />\r\n<br />\r\n10. Đổ xăng l&uacute;c n&agrave;o?<br />\r\n<br />\r\nMua xăng v&agrave;o s&aacute;ng sớm hoặc chiều tối, đ&acirc;y l&agrave; thời điểm xăng đặc nhất. Kh&ocirc;ng n&ecirc;n đổ qu&aacute; đầy l&agrave;m cho xăng bị r&ograve; ra ngo&agrave;i g&acirc;y nguy hiểm.</p>', '<p>Trong thời buổi xăng tăng gi&aacute; như hiện nay, việc l&agrave;m sao để tiết kiệm xăng để giảm bớt chi ph&iacute; cho t&uacute;i tiền của m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; hết sức quan t&acirc;m. Xin giới thiệu 10 mẹo để tiết...</p>', 1, '1593762831_xang.jpg', '2020-07-03 00:53:51', '2020-07-03 01:08:25');

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
