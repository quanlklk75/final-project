-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 27, 2022 at 05:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanaonam`
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(12, 'TRÀ', 'tra', 1, 'TRÀ', 'TRÀ', 'TRÀ', '2022-03-21 21:43:10', '2022-03-26 09:04:46'),
(13, 'Bột pha trà sữa', 'bot-pha-tra-sua', 1, 'Bột pha trà sữa', 'Bột pha trà sữa', 'Bột pha trà sữa', '2022-03-21 22:20:33', '2022-03-26 09:05:07'),
(14, 'Trân châu', 'tran-chau', 1, 'Trân châu', 'Trân châu', 'Trân châu', '2022-03-21 22:32:10', '2022-03-26 09:05:38'),
(18, 'Cốc đựng, ống hút trà sữa', 'coc-dung-ong-hut-tra-sua', 1, 'Cốc đựng, ống hút trà sữa', 'Cốc đựng, ống hút trà sữa', 'Cốc đựng, ống hút trà sữa', '2022-03-22 01:22:29', '2022-03-26 09:07:00');

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
(1, 'Trương Quang Việt', 'truongvietbg@gmail.com', '0359334045', 'Web rất tốt', '2022-03-26 16:14:57', '2022-03-26 16:14:57'),
(3, 'truong quang viet', 'truongvietbg@gmail.com', '0359334045', 'noi dung', '2022-03-25 18:33:59', '2022-03-25 18:33:59');

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
(6, 'truong quang viet', 'truongvietbg@gmail.com', NULL, '$2y$10$V41w.PaxVzwWECzKAlg01ejUVFu8ZrLaFof2NwHqEDKiquntm8XKm', NULL, '2022-03-22 13:21:32', '2022-03-22 13:21:32');

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
  `vnp_TxnRef` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `qty`, `total`, `status`, `type`, `note`, `name`, `phone`, `vnp_TxnRef`, `address`, `created_at`, `updated_at`) VALUES
(39, 1, 330000, 0, 'cod', NULL, 'truong quang viet', '01659334045', NULL, 'ha noi', '2022-03-25 00:44:03', '2022-03-25 00:44:03'),
(41, 1, 9000, 0, 'cod', NULL, 'truong quang viet', '0359334045', NULL, 'HN', '2022-03-26 21:43:01', '2022-03-26 21:43:01'),
(42, 1, 9000, 1, 'cod', NULL, 'truong quang viet', '0359334043', NULL, 'HN', '2022-03-26 22:37:45', '2022-03-26 22:51:48'),
(43, 2, 383000, 0, 'cod', NULL, 'truong quang viet', '0359334048', NULL, 'HN', '2022-03-26 22:50:17', '2022-03-26 22:50:17');

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

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `qty`, `pro_id`, `order_id`, `created_at`, `updated_at`) VALUES
(24, 2, 35, 39, '2022-03-25 00:44:03', '2022-03-25 00:44:03'),
(26, 1, 39, 41, '2022-03-26 21:43:01', '2022-03-26 21:43:01'),
(27, 1, 39, 42, '2022-03-26 22:37:45', '2022-03-26 22:37:45'),
(28, 1, 34, 43, '2022-03-26 22:50:17', '2022-03-26 22:50:17'),
(29, 2, 36, 43, '2022-03-26 22:50:17', '2022-03-26 22:50:17');

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
(1, 'Cách lái xe tiết kiệm xăng', 'cach-lai-xe-tiet-kiem-xang', '<p>Trong thời buổi xăng tăng gi&aacute; như hiện nay, việc l&agrave;m sao để tiết kiệm xăng để giảm bớt chi ph&iacute; cho t&uacute;i tiền của m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; hết sức quan t&acirc;m. Xin giới thiệu 10 mẹo để tiết kiệm xăng đối với &ocirc; t&ocirc;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://caronline.com.vn/Image.ashx/image=jpeg/0dea9cb490d74e5cbc3ecd84f0eb4da9-car-save-gas-lg.jpg/car-save-gas-lg.jpg\" /><br />\r\n<br />\r\n1. Lốp phải lu&ocirc;n căng hơi<br />\r\n<br />\r\nGiữ cho lốp xe trong t&igrave;nh trạng đủ hơi l&agrave; một trong những c&aacute;ch tốt nhất để tiết kiệm nhi&ecirc;n liệu, đồng thời đ&oacute; l&agrave; c&aacute;ch để đảm bảo an to&agrave;n t&iacute;nh mạng cho người sử dụng xe bởi lốp xe non. Bơm cho lốp xe đạt đến ngưỡng tối đa theo đề nghị của nh&agrave; sản xuất. C&aacute;c l&aacute;i xe n&ecirc;n kiểm tra &iacute;t nhất một th&aacute;ng một lần.<br />\r\n<br />\r\nNếu c&oacute; hiện tượng yếu hơi th&igrave; phải bơm ngay kh&ocirc;ng n&ecirc;n chần chừ. Trước khi cho xe lăn b&aacute;nh tr&ecirc;n đường, cần sử dụng m&aacute;y đo &aacute;p suất kỹ thuật số để kiểm tra độ căng. Lốp no hơi sẽ vừa gi&uacute;p cho xe chạy &ecirc;m &aacute;i lại vừa vận h&agrave;nh tối ưu.<br />\r\n<br />\r\n2. L&aacute;i ở tốc độ vừa phải<br />\r\n<br />\r\nL&aacute;i xe n&ecirc;n ch&uacute; &yacute; tr&aacute;nh l&aacute;i tốc độ cao tr&ecirc;n những con đường gồ ghề, gập ghềnh. Tr&ecirc;n đường cao tốc, mức ti&ecirc;u thụ nhi&ecirc;n liệu khi xe đi ở tốc độ dưới 100 km/h v&agrave; tr&ecirc;n 100km/h l&agrave; rất kh&aacute;c nhau, c&oacute; thể ch&ecirc;nh nhau 10% hoặc hơn t&ugrave;y từng loại xe.<br />\r\n<br />\r\nThay v&igrave; việc li&ecirc;n tục đứng khựng v&agrave; tăng tốc đột ngột, đặc biệt ở những đoạn đ&egrave;n giao th&ocirc;ng, người l&aacute;i n&ecirc;n ước lượng khoảng c&aacute;ch với đ&egrave;n đỏ v&agrave; lưu lượng người tham gia giao th&ocirc;ng đằng trước để xe giữ được vận tốc đều. Tuy nhi&ecirc;n, kh&ocirc;ng phải cứ vận tốc thấp l&agrave; c&oacute; thể tiết kiệm xăng. Theo c&aacute;c chuy&ecirc;n gia về xe hơi th&igrave; vận tốc xuống dưới 50 km/h l&agrave;m tốn th&ecirc;m 10% nhi&ecirc;n liệu.<br />\r\n<br />\r\n3. Hạn chế sử dụng điều h&ograve;a<br />\r\n<br />\r\nNếu như thời tiết dễ chịu, người sử dụng n&ecirc;n tắt điều h&ograve;a. Việc n&agrave;y sẽ gi&uacute;p tiết kiệm được năng lượng cho xe. Điều ho&agrave; kh&ocirc;ng kh&iacute; c&oacute; thể ti&ecirc;u tốn 10% nhi&ecirc;n liệu. Tuy nhi&ecirc;n, ở tốc độ tr&ecirc;n 80km/h sử dụng điều ho&agrave; kh&ocirc;ng kh&iacute; tốt hơn cho việc mở một cửa sổ.</p>\r\n\r\n<p><img alt=\"\" src=\"http://media.thethaovanhoa.vn/Images/Uploaded/Share/2010/04/14/oto.jpg\" style=\"width:450px\" /><br />\r\nHạn chế sử dụng điều h&ograve;a l&agrave; một c&aacute;ch tiết kiệm xăng hiệu quả. Ảnh chỉ c&oacute; t&iacute;nh chất minh họa</p>\r\n\r\n<p>4. Tắt động cơ khi kh&ocirc;ng sử dụng<br />\r\n<br />\r\nKhi chiếc xe dừng lại hoặc tạm ngừng hoạt động th&igrave; n&ecirc;n tắt động cơ để nhằm giảm hao ph&iacute; nhi&ecirc;n liệu v&ocirc; &iacute;ch. Tr&aacute;nh việc h&acirc;m n&oacute;ng động cơ qu&aacute; l&acirc;u (v&iacute; dụ như tới 30-45 gi&acirc;y) v&agrave; tr&aacute;nh việc để động cơ chạy một c&aacute;ch nh&agrave;n rỗi.<br />\r\n<br />\r\n5. Sử dụng chế độ cruise control<br />\r\n<br />\r\nĐ&acirc;y l&agrave; một hệ thống kiểm so&aacute;t vận tốc tự động. V&iacute; dụ, khi c&agrave;i đặt ở tốc độ 112km/h tr&ecirc;n đường cao tốc, m&aacute;y t&iacute;nh sẽ t&iacute;nh to&aacute;n v&agrave; điều chỉnh van tiết lưu để duy tr&igrave; tốc độ ấy, gi&uacute;p tiết kiệm nhi&ecirc;n liệu cho xe. Hiệu quả hơn nữa l&agrave; hệ thống Adaptive Cruise, sử dụng ra-đa để giữ khoảng c&aacute;ch với xe đằng sau v&agrave; đằng trước.<br />\r\n<br />\r\n6. L&agrave;m sạch bộ lọc kh&ocirc;ng kh&iacute; thường xuy&ecirc;n<br />\r\n<br />\r\nT&igrave;nh trạng bộ lọc kh&ocirc;ng kh&iacute; trong xe bị nghẽn sẽ g&acirc;y tốn nhi&ecirc;n liệu. Theo t&iacute;nh to&aacute;n của chuy&ecirc;n gia, nếu bộ lọc bị tắc l&agrave;m tốn 10% nhi&ecirc;n liệu. Bộ lọc kh&iacute; rất dễ th&aacute;o rời. H&atilde;y vệ sinh v&agrave; phơi dưới &aacute;nh nắng mặt trời, nếu kh&ocirc;ng thấy &aacute;nh s&aacute;ng xuy&ecirc;n qua n&oacute; th&igrave; c&oacute; nghĩa l&agrave; cần phải thay bộ lọc mới. Nếu bộ lọc bị nghẽn nhiều lần n&ecirc;n thay bộ lọc mới để đảm bảo cho qu&aacute; tr&igrave;nh lọc kh&ocirc;ng kh&iacute; được th&ocirc;ng suốt v&agrave; tiết kiệm nhi&ecirc;n liệu.<br />\r\n<br />\r\n7. Nhấn ga từ từ<br />\r\n<br />\r\nNhiều người vẫn c&ograve;n c&oacute; th&oacute;i quen đạp mạnh ch&acirc;n ga nhằm tăng tốc đột ngột cho chiếc xe, đồng thời trước khi đỗ xe vẫn giữ ở tốc độ cao rồi phanh đột ngột. Điều n&agrave;y c&oacute; thể mang lại cảm gi&aacute;c mạnh cho người l&aacute;i, tuy nhi&ecirc;n n&oacute; cũng ch&iacute;nh l&agrave; thủ phạm &ldquo;m&oacute;c&rdquo; khỏi t&uacute;i tiền của bạn một khoản nho nhỏ khi cộng dồn lại.<br />\r\n<br />\r\nDo đ&oacute;, cố gắng nhấn ga từ từ khi xuất ph&aacute;t v&agrave; trước khi dừng xe, cần duy tr&igrave; khoảng c&aacute;ch an to&agrave;n giữa c&aacute;c phương tiện v&agrave; ph&aacute;n đo&aacute;n điều kiện giao th&ocirc;ng để kịp tăng ga v&agrave; nhấn phanh đều đặn.<br />\r\n<br />\r\n8. X&acirc;y dựng lịch tr&igrave;nh trước<br />\r\n<br />\r\nTrước khi bắt đầu đi đ&acirc;u, l&aacute;i xe n&ecirc;n t&iacute;nh to&aacute;n trước lịch tr&igrave;nh sẽ đi, thời gian đi để tr&aacute;nh t&igrave;nh trạng l&ograve;ng v&ograve;ng, nhầm đường hay lạc đường g&acirc;y ra nhiều điều phiền to&aacute;i hoặc tốn nhi&ecirc;n liệu.<br />\r\n<br />\r\n9. Kh&ocirc;ng mang qu&aacute; nhiều đồ đạc<br />\r\n<br />\r\nNếu kh&ocirc;ng cần thiết trong h&agrave;nh tr&igrave;nh kh&ocirc;ng n&ecirc;n mang nhiều đồ đạc, chỉ mang theo những thứ cần thiết. Những thứ kh&ocirc;ng cần thiết kh&ocirc;ng n&ecirc;n đưa l&ecirc;n xe. Bởi v&igrave;, cứ 50 kg h&agrave;nh l&yacute; sẽ ti&ecirc;u tốn th&ecirc;m 2% nhi&ecirc;n liệu v&agrave; g&acirc;y l&atilde;ng ph&iacute; nhi&ecirc;n liệu một c&aacute;ch kh&ocirc;ng cần thiết.<br />\r\n<br />\r\n10. Đổ xăng l&uacute;c n&agrave;o?<br />\r\n<br />\r\nMua xăng v&agrave;o s&aacute;ng sớm hoặc chiều tối, đ&acirc;y l&agrave; thời điểm xăng đặc nhất. Kh&ocirc;ng n&ecirc;n đổ qu&aacute; đầy l&agrave;m cho xăng bị r&ograve; ra ngo&agrave;i g&acirc;y nguy hiểm.</p>', '<p>Trong thời buổi xăng tăng gi&aacute; như hiện nay, việc l&agrave;m sao để tiết kiệm xăng để giảm bớt chi ph&iacute; cho t&uacute;i tiền của m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; hết sức quan t&acirc;m. Xin giới thiệu 10 mẹo để tiết...</p>', 1, '1593762831_xang.jpg', '2022-03-22 00:53:51', '2022-03-22 01:08:25');

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

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `cate_id`, `price`, `slug`, `image`, `description`, `hot`, `seo_title`, `seo_description`, `seo_keyword`, `status`, `promotion`, `qty`, `supplier`, `created_at`, `updated_at`) VALUES
(27, 'Trà xanh Thái Lan 200g', 12, 62000, 'tra-xanh-thai-lan-200g', '1648315960_tra-xanh-thai-lan.webp', '<p><strong>Tr&agrave; xanh Th&aacute;i Lan 200g</strong>&nbsp;l&agrave; sản phẩm&nbsp;tr&agrave; chuy&ecirc;n d&ugrave;ng để pha tr&agrave; sữa Th&aacute;i - hương vị tr&agrave; sữa rất được y&ecirc;u th&iacute;ch trong giới trẻ.</p>\r\n\r\n<h2><strong>Đặc điểm nổi bật của sản phẩm</strong></h2>\r\n\r\n<p><strong>-&nbsp;</strong>Được&nbsp;sản xuất từ những b&uacute;p tr&agrave; xanh tươi, nguy&ecirc;n chất qua những kh&acirc;u chọn lựa cẩn thận</p>\r\n\r\n<p>- Sản xuất tại Th&aacute;i Lan theo ti&ecirc;u chuẩn c&ocirc;ng nghệ cao ti&ecirc;n tiến, đảm bảo an to&agrave;n chất lượng cho người sử dụng.</p>\r\n\r\n<p>- Tr&agrave; Th&aacute;i thường được l&agrave;m từ tr&agrave; pha, ủ thật đặc, kết hợp c&ugrave;ng những loại nguy&ecirc;n liệu như hồi, me v&agrave; thảo&nbsp;quả.</p>\r\n\r\n<p>- L&agrave;&nbsp;một loại thức uống thơm ngon v&agrave; tốt cho sức khỏe.</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết:</strong></h2>\r\n\r\n<p>- Th&agrave;nh phần:&nbsp;l&aacute; tr&agrave; nhuyễn sấy kh&ocirc;</p>\r\n\r\n<p>- Trọng&nbsp;lượng: 200g</p>\r\n\r\n<p>- Xuất xứ: Th&aacute;i Lan</p>\r\n\r\n<p>- Được d&ugrave;ng để pha tr&agrave; sữa Th&aacute;i</p>', 1, NULL, NULL, NULL, 1, 0, 100, NULL, '2022-03-21 21:54:18', '2022-03-26 10:32:40'),
(28, 'Trà đỏ Thái Lan 400gr', 12, 62000, 'tra-do-thai-lan-400gr', '1648316038_tra-do-thai-lan-400g.webp', '<p>Tr&agrave; sữa Th&aacute;i ( Tr&agrave; xanh&nbsp;Th&aacute;i Lan) l&agrave; một loại thức uống quen thuộc kh&ocirc;ng chỉ được xem l&agrave; thần dược chống l&atilde;o h&oacute;a, với c&ocirc;ng dụng l&agrave;m đẹp tuyệt vời, bột tr&agrave; xanh c&ograve;n gi&uacute;p bạn giải kh&aacute;t, tỉnh t&aacute;o trong những ng&agrave;y h&egrave; n&oacute;ng nực mệt mỏi. C&oacute; hai loại bột tr&agrave; Th&aacute;i Lan đ&oacute; l&agrave; bột tr&agrave; xanh Th&aacute;i Lan v&agrave; bột tr&agrave; đỏ Th&aacute;i Lan.</p>\r\n\r\n<p><strong>&nbsp;Bột tr&agrave; đỏ&nbsp;Th&aacute;i Lan</strong>&nbsp;với khối lượng 400gr được sản xuất tại Th&aacute;i Lan theo ti&ecirc;u chuẩn c&ocirc;ng nghệ cao ti&ecirc;n tiến, được sản xuất từ những b&uacute;p tr&agrave; xanh tươi, nguy&ecirc;n chất qua những kh&acirc;u chọn lựa cẩn thận.</p>\r\n\r\n<p><strong>C&aacute;ch pha:</strong></p>\r\n\r\n<p>+ Đối với c&aacute;ch pha Tr&agrave; sữa :</p>\r\n\r\n<p>2 muỗng c&agrave; ph&ecirc; tr&agrave; pha với 150ml nước n&oacute;ng.&nbsp;Khuấy đều,ng&acirc;m tr&agrave; trong 10p&nbsp;</p>\r\n\r\n<p>Lấy nước cốt tr&agrave; bằng c&aacute;ch lọc qua t&uacute;i để loại bỏ b&atilde; tr&agrave;.&nbsp;Pha th&ecirc;m với 50g sữa đặc, sữa bột (&iacute;t hay nhiều t&ugrave;y khẩu vị c&aacute; nh&acirc;n</p>\r\n\r\n<p>Pha th&ecirc;m với một ch&uacute;t sữa tươi.Th&ecirc;m 2~3 th&igrave;a đường t&ugrave;y khẩu vị.&nbsp;Khuấy đều ,th&ecirc;m đ&aacute; v&agrave; sử dụng</p>\r\n\r\n<p>+ Đối với c&aacute;ch pha Tr&agrave; chanh :&nbsp;</p>\r\n\r\n<p>1 muỗng c&agrave; ph&ecirc; tr&agrave; đỏ pha với 150ml nước n&oacute;ng. Khuấy đều,ng&acirc;m tr&agrave; trong 10p&nbsp;</p>\r\n\r\n<p>Lấy nước cốt tr&agrave; bằng c&aacute;ch lọc qua t&uacute;i để loại bỏ b&atilde; tr&agrave;.&nbsp;Pha th&ecirc;m với 13.5ml nước cốt chanh&nbsp;</p>\r\n\r\n<p>Th&ecirc;m 4 th&igrave;a đường( Tuỳ khẩu vị).&nbsp;Th&ecirc;m đ&aacute; v&agrave; sử dụng</p>\r\n\r\n<p>C&ugrave;ng thưởng thức th&agrave;nh phẩm th&ocirc;i.</p>', 1, NULL, NULL, NULL, 1, 0, 1000, NULL, '2022-03-21 21:57:57', '2022-03-26 10:33:58'),
(29, 'Trà hương sen túi lọc Cozy (25 gói)', 12, 30000, 'tra-huong-sen-tui-loc-cozy-25-goi', '1648316097_tra-tui-loc-cozy-huong-sen-3.webp', '<p><strong>Tr&agrave; hương sen t&uacute;i lọc Cozy (1 hộp)&nbsp;</strong>l&agrave; một thức uống v&ocirc; c&ugrave;ng bổ dưỡng v&agrave; thơm ngon. Với vị đậm đ&agrave; của ch&egrave; v&agrave; hương thơm nhẹ nh&agrave;ng,&nbsp;đầy lưu luyến của sen đ&atilde; l&agrave;m&nbsp;n&ecirc;n một sự kết hợp ho&agrave;n hảo, tạo sự hấp dẫn đối với người thưởng thức loại tr&agrave; n&agrave;y.</p>\r\n\r\n<p><strong>Đặc điểm nổi bật của sản phẩm</strong></p>\r\n\r\n<p><strong>Tr&agrave; Cozy</strong>&nbsp;l&agrave; thương hiệu ch&egrave; duy nhất trong số 43 thương hiệu của tất cả c&aacute;c ng&agrave;nh h&agrave;ng ở Việt Nam, được Bộ C&ocirc;ng Thương lựa chọn l&agrave; thương hiệu quốc gia. Tất cả nguy&ecirc;n liệu, quy tr&igrave;nh sản xuất ch&egrave; đều được quản l&yacute; chặt chẽ từ kh&acirc;u trồng trọt, phun tưới tới thu h&aacute;i, chế biến.</p>\r\n\r\n<p><strong>Tr&agrave; hương sen t&uacute;i lọc Cozy</strong><strong>&nbsp;</strong>được sản xuất từ những b&uacute;p tr&agrave; ngon nhất v&ugrave;ng ch&egrave; Th&aacute;i Nguy&ecirc;n kết hợp hoa sen với vị tr&agrave; xanh đậm, ch&aacute;t dịu v&agrave; ngọt hậu, hương thơm m&aacute;t của hoa sen.</p>\r\n\r\n<p>Uống mỗi t&aacute;ch tr&agrave; mỗi ng&agrave;y gi&uacute;p bạn thanh nhiệt cơ thể, chống dị ứng, mẩn ngứa v&agrave;&nbsp;mụn nhọt, giảm stress, chống mệt mỏi,...</p>\r\n\r\n<p>Mỗi g&oacute;i tr&agrave; được đ&oacute;ng g&oacute;i nhỏ gọn, c&oacute; d&acirc;y cầm để vắt l&ecirc;n miệng ch&eacute;n khi sử dụng, gi&uacute;p bạn dễ d&agrave;ng pha chế v&agrave; thưởng thức.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chi tiết:</strong></p>\r\n\r\n<p>- Số lượng: 25&nbsp;t&uacute;i/hộp</p>\r\n\r\n<p>- Th&agrave;nh phần: Tr&agrave; đen, hương sen</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>', 1, NULL, NULL, NULL, 1, 0, 500, NULL, '2022-03-21 22:00:57', '2022-03-26 10:34:57'),
(30, 'Trà Ice tea Cozy Hương đào (18 gói x 15g)', 12, 75000, 'tra-ice-tea-cozy-huong-dao-18-goi-x-15g', '1648360084_tra-ice-tea-cozy-huong-dao-2.webp', '<h2><strong>Tr&agrave; Ice tea Cozy Hương đ&agrave;o (18 g&oacute;i x 15g)&nbsp;</strong>l&agrave; sự kết hợp ho&agrave;n hảo giữa vị chua v&agrave; vị ngọt, mang đến hương thơm tự nhi&ecirc;n của tr&aacute;i đ&agrave;o, gi&uacute;p m&ugrave;a h&egrave; của bạn&nbsp;trở n&ecirc;n sảng kho&aacute;i v&agrave; tươi m&aacute;t hơn.</h2>\r\n\r\n<p><strong>Đặc điểm nổi bật của sản phẩm</strong></p>\r\n\r\n<p>Sản phẩm đến từ thương hiệu tr&agrave; Cozy nổi tiếng của&nbsp;<strong>C&ocirc;ng ty Cổ phần Sản phẩm Sinh Th&aacute;i ECO Products,</strong>&nbsp;bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về chất lượng v&agrave; độ an to&agrave;n vệ sinh thực phẩm.</p>\r\n\r\n<p>Được sản xuất tr&ecirc;n d&acirc;y truyền hiện đại, đảm bảo m&ugrave;i vị v&agrave; hương thơm cho những g&oacute;i tr&agrave;, b&ecirc;n cạnh đ&oacute;, mỗi t&uacute;i tr&agrave; đều&nbsp;được đ&oacute;ng trong bao b&igrave; thiếc gi&uacute;p bảo quản tốt nhất trong mọi loại thời tiết.</p>\r\n\r\n<p><strong>Tr&agrave; Ice tea Cozy Hương đ&agrave;o (18 g&oacute;i x 15g)</strong>&nbsp;được chế biến từ những b&uacute;p tr&agrave; tươi ngon, h&aacute;i bằng tay&nbsp;đem&nbsp;đến chất lượng ho&agrave;n hảo v&agrave; hương vị thơm ngon&nbsp;nhất.&nbsp;Sản&nbsp;phẩm mang&nbsp;hương đ&agrave;o&nbsp;nhẹ nh&agrave;ng, k&iacute;ch th&iacute;ch khứu gi&aacute;c mang đến cảm gi&aacute;c sảng kho&aacute;i cho người sử dụng.</p>\r\n\r\n<p>Tr&agrave; được đ&oacute;ng g&oacute;i th&agrave;nh c&aacute;c t&uacute;i nhỏ, tiện lợi cho việc pha chế. Bạn chỉ cần h&ograve;a tan 1 g&oacute;i tr&agrave; với nước, cho th&ecirc;m đ&aacute; rồi thưởng thức hương vị thanh m&aacute;t đến từ thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p>B&ecirc;n cạnh việc h&ograve;a tan để l&agrave;m đồ uống, sản phẩm c&ograve;n c&oacute; thể sử dụng để l&agrave;m vị thạch rau c&acirc;u cho những ng&agrave;y h&egrave; của bạn th&ecirc;m phần sảng kho&aacute;i hơn.</p>', 1, NULL, NULL, NULL, 1, 0, 500, NULL, '2022-03-21 22:02:20', '2022-03-26 22:48:04'),
(31, 'Trân châu tươi Hạ Long 1kg', 14, 45000, 'tran-chau-tuoi-ha-long-1kg', '1648316360_tran-chau-tuoi-ha-long-1kg.webp', '<p><strong>Tr&acirc;n ch&acirc;u tươi Hạ Long</strong>&nbsp;l&agrave; topping kh&ocirc;ng thể thiếu trong m&oacute;n sữa chua tr&acirc;n ch&acirc;u Hạ Long hoặc bạn c&oacute; thể d&ugrave;ng để pha tr&agrave; sữa, c&aacute;c loại đồ uống giải kh&aacute;t kh&aacute;c.</p>\r\n\r\n<h1>Đặc điểm nổi bật của sản phẩm</h1>\r\n\r\n<p><strong>Tr&acirc;n ch&acirc;u tươi Hạ Long</strong>&nbsp;được chế biến từ bột năng cao cấp sản xuất theo quy tr&igrave;nh kh&eacute;p k&iacute;n c&ugrave;ng c&ocirc;ng nghệ ti&ecirc;n tiến như m&aacute;y nh&agrave;o bột, m&aacute;y cắt tr&acirc;n ch&acirc;u n&ecirc;n hạt tr&acirc;n ch&acirc;u Hạ Long lu&ocirc;n giữ được độ giai d&ograve;n nhất định.&nbsp;</p>\r\n\r\n<p><strong>Tr&acirc;n ch&acirc;u tươi Hạ Long</strong>&nbsp;l&agrave; topping kh&ocirc;ng thể thiếu với m&oacute;n sữa tươi tr&acirc;n ch&acirc;u Hạ Long. Hạt tr&acirc;n ch&acirc;u Hạ Long dai gi&ograve;n hơn c&aacute;c loại tr&acirc;n ch&acirc;u kh&aacute;c, d&ugrave; để qua đ&ecirc;m vẫn kh&ocirc;ng bị cứng.&nbsp;</p>\r\n\r\n<p><strong>THAM KHẢO C&Aacute;CH NẤU TR&Acirc;N CH&Acirc;U CỐT DỪA B&Eacute;O THƠM</strong></p>\r\n\r\n<p>Tỷ lệ nấu tr&acirc;n ch&acirc;u: 1kg tr&acirc;n ch&acirc;u tươi Hạ Long + 2,5&nbsp;l&iacute;t nước</p>\r\n\r\n<p>C&ocirc;ng thức pha nước cốt dừa: 50ml sữa đặc + 50gram đường tinh luyện + 250ml nước s&ocirc;i + 250ml nước cốt dừa</p>\r\n\r\n<p><strong>C&aacute;ch nấu tr&acirc;n ch&acirc;u nước cốt dừa chuẩn 100% sữa chua tr&acirc;n ch&acirc;u Hạ Long:</strong></p>\r\n\r\n<p>Bước 1: Đun s&ocirc;i 2,5 l&iacute;t nước</p>\r\n\r\n<p>Bước 2: Đổ tr&acirc;n ch&acirc;u v&agrave;o khuấy đều để kh&ocirc;ng bị kh&eacute;t nồi</p>\r\n\r\n<p>Bước 3: Đến khi tr&acirc;n ch&acirc;u s&ocirc;i th&igrave; cho nhỏ lửa</p>\r\n\r\n<p>Bước 4: Nấu tr&acirc;n ch&acirc;u khoảng 30 ph&uacute;t v&agrave; sau đ&oacute; ủ th&ecirc;m 25 ph&uacute;t để tr&acirc;n ch&acirc;u mềm hơn</p>\r\n\r\n<p>Bước 5: Vớt tr&acirc;n ch&acirc;u ra v&agrave; h&ograve;a c&ugrave;ng phần nước cốt dừa đ&atilde; chuẩn bị.&nbsp;</p>', 1, NULL, NULL, NULL, 1, 0, 500, NULL, '2022-03-21 22:22:40', '2022-03-26 10:39:20'),
(32, 'Trân châu sợi Krub.O 800g', 14, 29000, 'tran-chau-soi-krubo-800g', '1648316499_tran-chau-soi-krub-o-800g-1.webp', '<p><a href=\"https://www.beemart.vn/tran-chau-soi-krub-o-800g\">Tr&acirc;n ch&acirc;u sợi Krub.O</a>&nbsp;với tạo h&igrave;nh độc đ&aacute;o, h&uacute;t mắt chắc chắn sẽ l&agrave; lựa chọn kh&ocirc;ng tồi cho ly tr&agrave; sữa homemade của bạn th&ecirc;m phần hấp dẫn đ&oacute;! C&ugrave;ng t&igrave;m hiểu sản phẩm n&agrave;y của thương hiệu Krub.</p>\r\n\r\n<h2><strong>Đặc điểm nổi bật của sản phẩm</strong></h2>\r\n\r\n<p><strong>Tr&acirc;n ch&acirc;u sợi Krub.O</strong>&nbsp;được l&agrave;m từ 100% tinh bột sắn nguy&ecirc;n chất mang đến hương vị thơm, b&ugrave;i, ngọt nhẹ v&agrave; rất tốt cho sức khỏe.</p>\r\n\r\n<p>Tuy tạo h&igrave;nh kh&aacute;c so với tr&acirc;n ch&acirc;u truyền thống nhưng khi nấu ch&iacute;n tr&acirc;n ch&acirc;u vẫn c&oacute; m&agrave;u v&agrave;ng trong suốt bắt mắt c&ugrave;ng&nbsp;hương vị ngọt thanh v&agrave; độ dẻo gi&ograve;n ho&agrave;n hảo cực k&igrave; th&iacute;ch hợp khi d&ugrave;ng c&ugrave;ng với tr&agrave; sữa, ch&egrave;, b&aacute;nh flan,...</p>\r\n\r\n<p>Sản phẩm được đ&oacute;ng th&agrave;nh g&oacute;i, h&uacute;t ch&acirc;n kh&ocirc;ng cẩn thận n&ecirc;n rất tiện lợi khi sử dụng v&agrave; bảo quản. Ngo&agrave;i ra với khối lượng 800g&nbsp;sẽ rất ph&ugrave; hợp với nhu cầu của gia đ&igrave;nh đ&ocirc;ng người&nbsp;&nbsp;hoặc nh&oacute;m lớn&nbsp;đ&oacute;!</p>\r\n\r\n<h3><strong>Hướng dẫn sử dụng&nbsp;Tr&acirc;n ch&acirc;u sợi Krub.O</strong></h3>\r\n\r\n<p>-Để luộc tr&acirc;n ch&acirc;u bạn cần sử dụng lượng nước gấp 10&nbsp;lần lượng tr&acirc;n ch&acirc;u.</p>\r\n\r\n<p>-&nbsp;Khi nước s&ocirc;i, đổ tr&acirc;n ch&acirc;u v&agrave;o nồi, nấu 25 ph&uacute;t rồi tắt bếp, sau đ&oacute; ủ tiếp 25 ph&uacute;t.</p>\r\n\r\n<p>- Tiếp theo bạn xả r&aacute;o tr&acirc;n ch&acirc;u, rửa với nước đun s&ocirc;i để nguội. Sau đ&oacute; đổ tr&acirc;n ch&acirc;u v&agrave;o dịch nước đường, trộn đều&nbsp;l&agrave; c&oacute; thể sử dụng c&ugrave;ng với tr&agrave; sữa, sữa tươi hay bất cứ m&oacute;n tr&aacute;ng miệng n&agrave;o bạn th&iacute;ch v&agrave; thưởng thức nh&eacute;!</p>', 1, NULL, NULL, NULL, 1, 0, 1000, NULL, '2022-03-21 22:23:50', '2022-03-26 10:41:39'),
(33, 'Bột sữa béo B-one 1kg', 13, 75000, 'bot-sua-beo-b-one-1kg', '1648316585_bot-sua-beo-b-one.webp', '<p>Một trong những nguy&ecirc;n liệu cần thiết để pha tr&agrave; sữa, pha c&agrave; ph&ecirc; v&agrave; c&aacute;c loại thức uống kh&aacute;c.&nbsp;<strong>Bột sữa b&eacute;o B-one</strong>&nbsp;c&oacute; khối lượng 1kg được sản xuất tại Th&aacute;i Lan với hương vị đậm đ&agrave; bổ sung những dưỡng chất cần thiết cho mọi người.&nbsp;</p>\r\n\r\n<h2><strong>C&aacute;ch để pha tr&agrave;&nbsp;sữa Th&aacute;i v&ocirc; c&ugrave;ng đơn giản:</strong></h2>\r\n\r\n<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n\r\n<p>+&nbsp;Tr&agrave; th&aacute;i xanh: 50gr</p>\r\n\r\n<p>+ Bột sữa b&eacute;o B-one: 200gr</p>\r\n\r\n<p>+ Sữa đặc &ocirc;ng thọ: 40gr</p>\r\n\r\n<p>+&nbsp; Pudding trứng 30gr</p>\r\n\r\n<p>+ Tr&acirc;n ch&acirc;u đen: 200gr</p>\r\n\r\n<p>+&nbsp;Tr&acirc;n ch&acirc;u 3q 100g</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>Bước 1: Đun s&ocirc;i 1L nước, cho 50g tr&agrave; v&agrave;o ủ trong v&ograve;ng 40 ph&uacute;t.</p>\r\n\r\n<p>Bước 2: H&ograve;a tan cốt tr&agrave; c&ograve;n ấm với 200g bột sữa b&eacute;o, 100g đường v&agrave; 40g sữa đặc</p>\r\n\r\n<p>Bước 3: Đun nước đến khi s&ocirc;i rồi cho tr&acirc;n ch&acirc;u đen&nbsp;v&agrave;o luộc. Khi tr&acirc;n ch&acirc;u nổi l&ecirc;n mặt nước l&agrave; ch&iacute;n, cho nhỏ lửa đun th&ecirc;m 20 ph&uacute;t rồi vớt ra ng&acirc;m nước đường</p>\r\n\r\n<p>Bước 4: Đun 300ml nước với 30g đường, khi hỗn hợp s&ocirc;i cho 30g bột pudding trứng v&agrave;o khuấy đến khi bột flan tan hết, tắt lửa.</p>\r\n\r\n<p>Đổ hỗn hơp ra hộp đậy nắp lại, cất tủ m&aacute;t khoảng 5h sẽ đ&ocirc;ng lại</p>\r\n\r\n<p>Bước 5: Nếu muốn tr&agrave; sữa c&oacute; th&ecirc;m vị, c&oacute; thể th&ecirc;m 15ml siro, đ&aacute;, pudding v&agrave; tr&acirc;n ch&acirc;u t&ugrave;y &yacute; v&agrave;o hỗn hợp tr&agrave; sữa đ&atilde; pha.&nbsp;</p>\r\n\r\n<p>Tr&acirc;n ch&acirc;u 3Q c&aacute;c bạn lọc qua r&acirc;y lấy tr&acirc;n ch&acirc;u l&agrave; c&oacute; thể ăn được lu&ocirc;n nh&eacute;, kh&ocirc;ng phải rửa lại</p>', 1, NULL, NULL, NULL, 1, 0, 490, NULL, '2022-03-21 22:33:14', '2022-03-26 10:43:05'),
(34, 'Bột trà sữa nướng 3in1 Déli 1kg', 13, 175000, 'bot-tra-sua-nuong-3in1-deli-1kg', '1648316656_bot-tra-sua-nuong-deli1.webp', '<p>Tr&agrave; sữa nướng hẳn l&agrave; kh&ocirc;ng c&ograve;n qu&aacute; xa lạ với những t&iacute;n đồ tr&agrave; sữa rồi nhỉ? Với&nbsp;<strong>Bột tr&agrave; sữa nướng 3in1 D&eacute;li 1kg</strong>&nbsp;bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m được những ly tr&agrave; sữa nướng thơm ngon&nbsp;chuẩn vị ngay tại nh&agrave;.</p>\r\n\r\n<h2><strong>Đặc điểm nổi bật của sản phẩm</strong></h2>\r\n\r\n<p><strong>Bột tr&agrave; sữa nướng 3in1 D&eacute;li 1kg</strong>&nbsp;được l&agrave;m theo c&ocirc;ng thức đặc biệt của Tim Corp. Với nguồn nguy&ecirc;n liệu sạch 100% c&oacute; nguồn gốc r&otilde; r&agrave;ng n&ecirc;n rất an to&agrave;n với sức khỏe người sử dụng.</p>\r\n\r\n<p>Chỉ với g&oacute;i bột tr&agrave; sữa nướng 3in 1 Desli bạn sẽ dễ d&agrave;ng l&agrave;m được những cốc tr&agrave; sữa nướng chuẩn vị ngay tại nh&agrave; cho gia đ&igrave;nh vừa tiết kiệm, lại kh&ocirc;ng tốn qu&aacute; nhiều thời gian pha chế phức tạp.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>TH&Ocirc;NG TIN SẢN PHẨM</h3>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<h3>Đ&Aacute;NH GI&Aacute; SẢN PHẨM</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Tr&agrave; sữa nướng hẳn l&agrave; kh&ocirc;ng c&ograve;n qu&aacute; xa lạ với những t&iacute;n đồ tr&agrave; sữa rồi nhỉ? Với&nbsp;<strong>Bột tr&agrave; sữa nướng 3in1 D&eacute;li 1kg</strong>&nbsp;bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m được những ly tr&agrave; sữa nướng thơm ngon&nbsp;chuẩn vị ngay tại nh&agrave;.</p>\r\n\r\n<p><img src=\"https://bizweb.sapocdn.net/100/004/714/products/bot-tra-sua-nuong-deli1.png?v=1632216095513\" /></p>\r\n\r\n<h2><strong>Đặc điểm nổi bật của sản phẩm</strong></h2>\r\n\r\n<p><strong>Bột tr&agrave; sữa nướng 3in1 D&eacute;li 1kg</strong>&nbsp;được l&agrave;m theo c&ocirc;ng thức đặc biệt của Tim Corp. Với nguồn nguy&ecirc;n liệu sạch 100% c&oacute; nguồn gốc r&otilde; r&agrave;ng n&ecirc;n rất an to&agrave;n với sức khỏe người sử dụng.</p>\r\n\r\n<p>Chỉ với g&oacute;i bột tr&agrave; sữa nướng 3in 1 Desli bạn sẽ dễ d&agrave;ng l&agrave;m được những cốc tr&agrave; sữa nướng chuẩn vị ngay tại nh&agrave; cho gia đ&igrave;nh vừa tiết kiệm, lại kh&ocirc;ng tốn qu&aacute; nhiều thời gian pha chế phức tạp.</p>\r\n\r\n<p><img src=\"https://bizweb.sapocdn.net/100/004/714/products/bot-tra-sua-nuong-deli2.png?v=1632216122023\" /></p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết</strong></h2>\r\n\r\n<p>- Th&agrave;nh phần:&nbsp;bột kem b&eacute;o thực vật, bột tr&agrave; Hojicha (8%), đường c&aacute;t trắng, chất chống đ&ocirc;ng v&oacute;n (INS 551).</p>\r\n\r\n<p>- Trọng lượng: 1kg/t&uacute;i</p>\r\n\r\n<p>- Ng&agrave;y sản xuất: in tr&ecirc;n bao b&igrave;.</p>\r\n\r\n<p>- Hạn sử dụng: 18 th&aacute;ng kể từ ng&agrave;y sản xuất.</p>\r\n\r\n<p>- Sản xuất : Việt Nam</p>\r\n\r\n<p>&nbsp;- Bảo quản: nơi kh&ocirc; r&aacute;o tho&aacute;ng, tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp. Đ&oacute;ng k&iacute;n miệng t&uacute;i sau khi sử dụng.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- D&ugrave;ng pha chế tr&agrave; sữa vị truyền thống, cho 40g bột tr&agrave; sữa nướng&nbsp;v&agrave;o 100ml nước s&ocirc;i, khuấy đều, th&ecirc;m đ&aacute; v&agrave;o thưởng thức.</p>\r\n\r\n<p><strong>Lưu &yacute;</strong>: Bạn c&oacute; thể d&ugrave;ng th&ecirc;m&nbsp;10ml sữa đặc để tạo hương vị đậm đ&agrave; hơn cho đồ uống</p>', 1, NULL, NULL, NULL, 1, 0, 999, NULL, '2022-03-21 22:36:10', '2022-03-26 22:50:17'),
(35, 'Trà thái xanh 50gr', 12, 22000, 'tra-thai-xanh-50gr', '1648316888_tra xanh.webp', '<p>B&ecirc;n cạnh tr&agrave; sữa&nbsp;th&aacute;i đỏ th&igrave; tr&agrave; sữa&nbsp;th&aacute;i xanh cũng l&agrave; một loại đồ uống thu h&uacute;t giới trẻ hiện nay. Bạn ho&agrave;n to&agrave;n c&oacute; thể tạo ra những ly tr&agrave; sữa m&agrave;u xanh dịu m&aacute;t ấy bằng sản phẩm<strong>&nbsp;tr&agrave; th&aacute;i xanh 50gr&nbsp;</strong>để xua tan c&aacute;i n&oacute;ng oi ả của m&ugrave;a h&egrave; n&agrave;y.</p>\r\n\r\n<p><strong>Đặc điểm nổi bật của sản phẩm</strong></p>\r\n\r\n<p><strong>Tr&agrave; th&aacute;i xanh&nbsp;50gr</strong>&nbsp;c&oacute; xuất xứ từ Th&aacute;i Lan - nơi nổi tiếng với hương vị tr&agrave; sữa đậm đ&agrave; v&agrave; thơm ngon. Với sản phẩm n&agrave;y, bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m ra một ly tr&agrave; th&aacute;i đỏ c&oacute; vị ngọt dịu, b&eacute;o ngậy của sữa v&agrave; vị thanh m&aacute;t của tr&agrave;.</p>\r\n\r\n<p>Sản phẩm được chế biến từ c&acirc;y ch&egrave;, kết hợp với c&aacute;c loại hương liệu như: quế, hồi, đinh hương,... tạo n&ecirc;n hương vị v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; mang n&eacute;t đặc trưng của đất nước ch&ugrave;a v&agrave;ng.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh chế biến, tr&agrave; th&aacute;i xanh kh&ocirc;ng bị loại bỏ c&aacute;c chất diệp lục, bởi vậy khi pha, tr&agrave; c&oacute; m&agrave;u xanh v&agrave; c&oacute; vị ch&aacute;t hơn so với tr&agrave; th&aacute;i đỏ.&nbsp;</p>\r\n\r\n<p>L&aacute; tr&agrave; được sấy kh&ocirc;, gi&uacute;p bạn dễ d&agrave;ng bảo quản v&agrave; sử dụng. Với khối lượng nhỏ l&agrave; 50g, bạn c&oacute; thể d&ugrave;ng trong 1 lần c&ugrave;ng với c&aacute;c loại nguy&ecirc;n liệu kh&aacute;c để tạo ra ly tr&agrave; sữa th&aacute;i m&aacute;t lạnh cho ng&agrave;y h&egrave; th&ecirc;m phần sảng kho&aacute;i.</p>', 1, NULL, NULL, NULL, 1, 0, 420, NULL, '2022-03-21 22:37:09', '2022-03-26 10:48:08'),
(36, 'Bột kem béo thực vật MT35 1kg', 13, 104000, 'bot-kem-beo-thuc-vat-mt35-1kg', '1648316994_bot-kem-bo-thuc-vat-mt35.webp', '<p><strong>Bột kem b&eacute;o thực vật MT35 1kg</strong>&nbsp;l&agrave; nguy&ecirc;n liệu tuyệt vời gi&uacute;p ly tr&agrave; sữa của bạn trở n&ecirc;n thơm ngon v&agrave; b&eacute;o ngậy như ngo&agrave;i h&agrave;ng.</p>\r\n\r\n<h2><strong>Đặc điểm nổi bật của sản phẩm:</strong></h2>\r\n\r\n<p>- Tiền th&acirc;n của sản phẩm&nbsp;l&agrave; Bột kem b&eacute;o thực vật &ndash; MT35 Indo. Sản phẩm&nbsp;l&agrave; bột sữa Keviet Blanca chiết, được kết hợp th&ecirc;m với một số loại th&agrave;nh phần nhằm tạo độ b&eacute;o cao hơn, ph&ugrave; hợp hơn với khẩu vị của thị trường Việt Nam.</p>\r\n\r\n<p>- Đ&acirc;y&nbsp;l&agrave; d&ograve;ng sản phẩm chuy&ecirc;n biệt khi kết hợp với c&aacute;c loại tr&agrave;, mang lại hương vị tr&ograve;n đầy, đậm đ&agrave; tạo n&ecirc;n vị b&eacute;o thơm của sữa cũng như lưu giữ c&aacute;c hương vị kh&aacute;c nhau của chủng loại tr&agrave;.</p>\r\n\r\n<p><img src=\"https://bizweb.sapocdn.net/100/004/714/products/watermarked-bot-kem-beo-thuc-vat-mt35-1kg-1-copy.jpg?v=1542707028917\" /></p>\r\n\r\n<p><strong>- Bột kem b&eacute;o thực vật MT35 1kg&nbsp;</strong>được nghiền nhỏ v&agrave; kĩ, tạo độ mịn cho sản phẩm, l&agrave;m tăng khả năng h&ograve;a tan, kh&ocirc;ng bị v&oacute;n cục khi sử dụng.&nbsp;Pha chế một ly tr&agrave; sữa với bột kem b&eacute;o thực vật, bạn sẽ c&oacute; một ly&nbsp;tr&agrave; sữa ngon đ&uacute;ng điệu.</p>\r\n\r\n<p>- Để bảo quản sản phẩm, h&atilde;y để bột sữa Luave MT35 ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh mặt trời. Sau khi sử dụng kh&ocirc;ng hết, nhớ buộc k&iacute;n cẩn thận để bột kh&ocirc;ng bị ẩm mốc.</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết:</strong></h2>\r\n\r\n<p>- Th&agrave;nh phần: Nguy&ecirc;n liệu thực phẩm Non diary creamer, dầu cọ tinh luyện, dầu dừa tinh luyện,...</p>\r\n\r\n<p>- Xuất xứ: Indonexia</p>\r\n\r\n<p>- Khối lượng: 1KG</p>\r\n\r\n<p>- HSD: 24 th&aacute;ng</p>\r\n\r\n<h2><strong>C&aacute;ch l&agrave;m tr&agrave; sữa xo&agrave;i ngon tuyệt bằng&nbsp;Bột kem b&eacute;o thực vật MT35 1kg:</strong></h2>\r\n\r\n<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n\r\n<p>- 1 quả xo&agrave;i ch&iacute;n</p>\r\n\r\n<p>- Hồng tr&agrave;: 6 t&uacute;i lọc</p>\r\n\r\n<p>- 700ml sữa tươi</p>\r\n\r\n<p>- 1l nước s&ocirc;i</p>\r\n\r\n<p>- Bột kem b&eacute;o thực vật, mật ong</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;H&atilde;m tr&agrave; với nước s&ocirc;i khoảng 5-7 ph&uacute;t rồi vớt bỏ phần t&uacute;i lọc. Để tr&agrave; nguội ho&agrave;n to&agrave;n rồi cho v&agrave;o ngăn m&aacute;t tủ lạnh để l&agrave;m m&aacute;t tr&agrave;.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Gọt vỏ xo&agrave;i, th&aacute;i th&agrave;nh miếng nhỏ rồi cho v&agrave;o m&aacute;y xay sinh tố xay nhuyễn.</p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Lấy phần tr&agrave; trong tủ lạnh ra, h&ograve;a sữa, bột kem b&eacute;o&nbsp;v&agrave; phần xo&agrave;i xay nhuyễn v&agrave;o khuấy đều, cho mật ong vừa khẩu vị của bạn.</p>\r\n\r\n<p><strong>Bước 4:&nbsp;</strong>Cho phần hỗn hợp xo&agrave;i v&agrave;o với hỗn hợp tr&agrave;, th&ecirc;m đ&aacute;, tr&acirc;n ch&acirc;u, khuấy đều v&agrave; thưởng thức.</p>', 1, NULL, NULL, NULL, 1, 0, 1237, NULL, '2022-03-21 22:40:11', '2022-03-26 22:50:17'),
(39, 'Ly nhựa đáy bầu 360ml (10chiếc)', 18, 10000, 'ly-nhua-day-bau-360ml-10chiec', '1648317065_a2.webp', '<p>Nếu như bạn l&agrave; một người th&iacute;ch tự l&agrave;m đồ uống rồi mang đi tặng, đi chơi, th&igrave; cốc nhựa l&agrave; một dụng cụ kh&ocirc;ng thể thiếu đ&uacute;ng kh&ocirc;ng ạ</p>\r\n\r\n<p><strong>Ly nhựa đ&aacute;y bầu 360ml (10chiếc)</strong>&nbsp;với đặc điểm gọn nhẹ, bầu bầu xinh xinh, dung t&iacute;ch nhỏ (360ml) ph&ugrave; hợp với những nhu cầu nhỏ c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Sản phẩm được l&agrave;m từ chất liệu nhựa PP an to&agrave;n ph&ugrave; hợp để đựng thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng lu&ocirc;n y&ecirc;n t&acirc;m về chất lượng</p>\r\n\r\n<p>Ngo&agrave;i d&ugrave;ng để dựng c&aacute;c lo&agrave;i tr&agrave; sữa, nước &eacute;p hoa quả....một c&ocirc;ng dụng đặc biệt kh&aacute;c c&oacute; thế kể đến l&agrave; d&ugrave;ng để l&agrave;m khu&ocirc;n t&agrave;u hũ hay khu&ocirc;n flan, gi&uacute;p flan c&oacute; d&aacute;ng h&igrave;nh mũm mĩm cực xinh lu&ocirc;n ấy&nbsp;</p>', 0, NULL, NULL, NULL, 1, 10, 997, NULL, '2022-03-25 01:24:50', '2022-03-26 22:37:45');

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
(1, 'links slide 1q', '1648359798.webp', '2022-03-21 18:21:30', '2022-03-26 22:43:18'),
(3, 'links slide 2', '1648359831.webp', '2022-03-21 18:45:11', '2022-03-26 22:43:51'),
(4, 'links slide 3', '1648359851.webp', '2022-03-21 18:45:22', '2022-03-26 22:44:11');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
