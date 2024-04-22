-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mysql
-- Thời gian đã tạo: Th4 22, 2024 lúc 02:14 AM
-- Phiên bản máy phục vụ: 8.0.28
-- Phiên bản PHP: 8.2.18


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `LaptopApp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Apple'),
(2, 'Dell'),
(3, 'HP'),
(4, 'Lenovo'),
(5, 'Asus'),
(6, 'Acer'),
(7, 'MSI'),
(8, 'Microsoft'),
(9, 'Samsung'),
(10, 'LG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `laptop_id` int NOT NULL,
  `quantity` int DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `laptops`
--

CREATE TABLE `laptops` (
  `id` int NOT NULL,
  `name` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Tên sản phẩm',
  `price` decimal(10,2) NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `brightness` int DEFAULT NULL COMMENT 'Độ sáng',
  `ram` int DEFAULT NULL COMMENT 'RAM (GB)',
  `rom` int DEFAULT NULL COMMENT 'Bộ nhớ trong (GB)',
  `processor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Chip xử lý',
  `graphics_card` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Card đồ họa',
  `brand_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `screen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wireless` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `battery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keyboard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bluetooth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `webcam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `laptops`
--

INSERT INTO `laptops` (`id`, `name`, `price`, `thumbnail`, `description`, `brightness`, `ram`, `rom`, `processor`, `graphics_card`, `brand_id`, `created_at`, `updated_at`, `avatar_url`, `screen`, `wireless`, `system`, `color`, `weight`, `battery`, `keyboard`, `bluetooth`, `webcam`, `lan`) VALUES
(1, 'MacBook Air', 999.99, 'macbook_air_thumbnail.jpg', 'Description of MacBook Air', 300, 8, 256, 'M1', 'On board', 1, '2024-04-13 12:20:52', '2024-04-20 00:23:49', 'https://drive.google.com/thumbnail?id=1dobrW9tt0h3wUiKtAzS61bx5d2uanbiI', '13.3 inches QHD+ OLED 60Hz', 'wifi', 'MacOs', 'silver', '1.2 kg', 'up to 10hrs using', 'no led', 'v5.2', 'HD+ Webcam', '10/100 Mbps'),
(2, 'Dell XPS 13', 1299.99, 'dell_xps13_thumbnail.jpg', 'Description of Dell XPS 13', 350, 16, 512, 'Intel Core i7', 'Intel UHD Graphics', 2, '2024-04-13 12:20:52', '2024-04-18 09:35:40', 'https://drive.google.com/thumbnail?id=1GzKKg00mZ3msDeyxhqP97xz_HGm0lWiH', '15.6 inches  60 Hz', 'WiFi 802.11ax (Wifi 6)', 'Windows 11 Home SL + Office Home & Student 2021', 'gray', '2.5 kg', '4-cell Li-ion, 76 Whr', 'Có phím số, LED trắng', 'v5.2', 'HD Webcam', '10/100 Mbps'),
(3, 'HP Spectre x360', 1399.99, 'hp_spectre_x360_thumbnail.jpg', 'Description of HP Spectre x360', 400, 16, 512, 'Intel Core i5-1140P', 'Intel Iris Xe Graphics', 3, '2024-04-13 12:20:52', '2024-04-20 00:26:18', 'https://drive.google.com/thumbnail?id=191_ElrscoNhWVS-lO1vPkaAxpnITLSU_', '14 inches FHD+  90Hz', 'wifi', 'Windows 10 Home SL + Office Home & Student 2021', 'black', '1.5kg', '4-cell Li-ion, 76 Whr', 'white led', 'v5.2', 'HD Webcam', '10/100 Mbps'),
(5, 'Asus ZenBook 14', 1099.99, 'asus_zenbook14_thumbnail.jpg', 'Description of Asus ZenBook 14', 700, 16, 512, 'Intel Core i7-13700H', 'NVIDIA GeForce MX450', 5, '2024-04-13 12:20:52', '2024-04-20 00:28:24', 'https://drive.google.com/thumbnail?id=1JqBrl_0XhUi3IITk4YAhrFfjvWgE_zPo', '14 inches QHD+ 90Hz', 'WiFi 802.11ax (Wifi 6)', 'Windows 11 Home SL + Office Home & Student 2021', 'black', '1.5kg', '4-cell Li-ion, 76 Whr', 'white led', 'v5.2', 'FHD+ Webcam', '10/100 Mbps'),
(6, 'Acer Swift 3', 899.99, 'acer_swift3_thumbnail.jpg', 'Description of Acer Swift 3', 300, 8, 512, 'AMD Ryzen 7', 'AMD Radeon Graphics', 6, '2024-04-13 12:20:52', '2024-04-17 10:53:46', 'https://drive.google.com/thumbnail?id=1U3E9XnpB_FeNMKXF_FP2QU9-qU7rP-0l', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'MSI GS66 Stealth', 1899.99, 'msi_gs66_thumbnail.jpg', 'Description of MSI GS66 Stealth', 300, 32, 1000, 'Intel Core i9', 'NVIDIA GeForce RTX 3080', 7, '2024-04-13 12:20:52', '2024-04-17 10:56:20', 'https://drive.google.com/thumbnail?id=1az4WhFJqrjvVLteXoB4sgMwcfo1RbbOB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Microsoft Surface Laptop 4', 1299.99, 'surface_laptop4_thumbnail.jpg', 'Description of Microsoft Surface Laptop 4', 350, 16, 512, 'AMD Ryzen 7', 'AMD Radeon Graphics', 8, '2024-04-13 12:20:52', '2024-04-17 10:57:08', 'https://drive.google.com/thumbnail?id=1BPQkBqY0tRZx72Fj7CFXE7O7w2ZV7jfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Samsung Galaxy Book Pro', 1199.99, 'samsung_galaxybookpro_thumbnail.jpg', 'Description of Samsung Galaxy Book Pro', 350, 16, 512, 'Intel Core i7', 'Intel Iris Xe Graphics', 9, '2024-04-13 12:20:52', '2024-04-17 11:01:38', 'https://drive.google.com/thumbnail?id=1wCT1feWpNCiqxbMzMWJCKuY5zV-xMPho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'LG Gram 14', 1399.99, 'lg_gram14_thumbnail.jpg', 'Description of LG Gram 14', 300, 16, 512, 'Intel Core i7', 'Intel Iris Xe Graphics', 10, '2024-04-13 12:20:52', '2024-04-17 11:00:16', 'https://drive.google.com/thumbnail?id=1DdFHaO-c__wSxwAeiah4P3C_PmZzSYzG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'new laptop', 1699.00, NULL, 'super good', 500, 16, 1024, 'I7-13800H', 'RTX 4060', 7, '2024-04-14 06:58:30', '2024-04-15 12:39:34', 'https://drive.google.com/thumbnail?id=1Ek9bjb9tvcq2iYGeO01BT7e9HCm0ASeZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'MSI Bravo 2024', 1699.00, NULL, 'super good', 500, 16, 1024, 'R7-5900H', 'RX-9000', 7, '2024-04-14 07:17:58', '2024-04-17 16:03:31', 'https://drive.google.com/thumbnail?id=15-KwmrM9n5GG_0ThpMan-gO19wyfvefn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'test 4', 1599.00, NULL, 'nonono', 1000, 16, 512, 'I7-13800H', 'RTX 4060', 2, '2024-04-14 07:32:49', '2024-04-16 00:59:41', 'https://drive.google.com/thumbnail?id=19aP7Q_GnLy_yMhx_Q4OwMie8F5RfD0Pi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'test 5', 1299.00, NULL, 'kakakaka', 5555, 16, 512, 'I7-13800H', 'RTX 4060', 8, '2024-04-14 08:04:52', '2024-04-14 09:13:55', 'https://drive.google.com/thumbnail?id=1jdupCoDehFh9TNDRxryENRg-MR1Qbqb5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'test 6', 1599.00, NULL, 'sfgasfqwfawg', 1222, 12, 300, 'I7-13800H', 'RTX 4060', 7, '2024-04-14 08:11:58', '2024-04-14 08:11:58', 'https://drive.google.com/thumbnail?id=1gtf_dukWRL_Qyb37vuM27f0bsGEGQ0Ju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'test 7', 1599.00, NULL, 'LAPTOP 5 NUMBER QUAN', 1500, 17, 75, 'I7-13800H', 'RTX 4099', 6, '2024-04-15 03:48:31', '2024-04-15 03:50:46', 'https://drive.google.com/thumbnail?id=1iJLh26NE_JBgn1WFl1ijOkllQDmTbm2u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'laptop sieu vip pro', 1000000.00, NULL, 'có chức năng ai tạo ra laptop khác', 500, 160, 1024, 'i', 'RTX 4099', 7, '2024-04-15 11:07:02', '2024-04-15 11:07:02', 'https://drive.google.com/thumbnail?id=1WX4hPKH8ARZgQrFz8vEf6jfVvJDh4Ki_', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'test laptop', 1700.00, NULL, 'a very good laptop', 2000, 16, 1024, 'I7-13800H', 'RTX 4099', 4, '2024-04-17 03:53:43', '2024-04-17 16:01:48', 'https://drive.google.com/thumbnail?id=1-lAKxQziOWvd5quyVin1HuuK_XI8IsTV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'dell 19', 1599.00, NULL, 'dell 18 very good', 1500, 16, 256, 'I7-13800H', 'RTX 4099', 2, '2024-04-18 08:15:29', '2024-04-18 08:38:26', 'https://drive.google.com/thumbnail?id=1S7r0oIGiyzaWgQhCF9ZL09b95EucG5Av', '15.6 inches  120 Hz', 'WiFi 802.11ax (Wifi 6)', 'Windows 11 Home SL + Office Home & Student 2021', 'black', '2.5 kg', '3-cell Li-ion, 41 Whr', 'Có phím số, không LED', 'v5.2', 'FHD+ Webcam', '10/100 Mbps'),
(20, 'Dell vostro 5410 2024', 1200.00, NULL, 'dell vostro is a very good laptop for new student', 400, 16, 1024, 'Intel Core i9-13900H', 'Intel Iris Xe Graphics', 2, '2024-04-21 05:21:57', '2024-04-21 05:21:57', 'https://drive.google.com/thumbnail?id=1DRbEZ4AAe5yC1fI3INV8LoxFZQPiZDtc', '15.6 inches FHD+ 90 Hz', 'WiFi 802.11ax (Wifi 6)', 'Windows 12 Home SL + Office Home & Student 2024', 'ultra galaxy', '1.5kg', '4-cell Li-ion, 76 Whr', 'white led', 'v5.2', 'FHD+ Webcam, AI vision, FACE receiving sensor', '10/100 Mbps'),
(21, 'dell test 5', 1500.00, NULL, 'description of dell test 1', 1200, 8, 1024, 'Intel Core i5-1140P', 'On board', 2, '2024-04-21 10:26:29', '2024-04-21 10:28:39', 'https://drive.google.com/thumbnail?id=14qrRQ2CWAfRvCnBeWhrERwozg6Oh_jaX', '15.6 inches FHD+ 90 Hz', 'WiFi 802.11ax (Wifi 6)', 'Windows 11 Home SL + Office Home & Student 2021', 'gray', '1.5kg', '3-cell Li-ion, 41 Whr', 'gray', 'v5.2', 'HD Webcam', '10/100 Mbps');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `laptop_images`
--

CREATE TABLE `laptop_images` (
  `id` int NOT NULL,
  `laptop_id` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `laptop_images`
--

INSERT INTO `laptop_images` (`id`, `laptop_id`, `url`) VALUES
(4, 11, 'https://drive.google.com/thumbnail?id=1LHpmEgCrzekTLhMpdHnlSsLBeU4HTtzZ'),
(6, 18, 'https://drive.google.com/thumbnail?id=151s9j1oNOWG3rcvNtkecOMlcLG0zu6VF'),
(7, 18, 'https://drive.google.com/thumbnail?id=1akcEEp2UVPl-KM2p2zFjdHr1tnYmoIXF'),
(8, 18, 'https://drive.google.com/thumbnail?id=1CkRGa0eC7MImktqryfi6N4R27HxljX6-'),
(9, 19, 'https://drive.google.com/thumbnail?id=1hqwSWL_z7MfpDnBpAE3j8zS5dUam7an9'),
(10, 19, 'https://drive.google.com/thumbnail?id=1_QaW9V4H01SzI7EqmF4BZu9f1YVS_I7c'),
(11, 19, 'https://drive.google.com/thumbnail?id=1s4Y3XvKQsVu33d3M2Dp2E_0PfIFQnFm5'),
(12, 1, 'https://drive.google.com/thumbnail?id=1qZalNxPIXfi7PkO6cgtbdiJRPKWOl5Ps'),
(13, 1, 'https://drive.google.com/thumbnail?id=1fwK7kgNm6c7Mo5FOVytyswK-5kUCEBQC'),
(14, 1, 'https://drive.google.com/thumbnail?id=111u7RaGy3B2IiLkka93obWqtIMdeFkXl'),
(15, 2, 'https://drive.google.com/thumbnail?id=18_it2NUDMaFBDt5SuufrkX_EMHfy2x3f'),
(16, 2, 'https://drive.google.com/thumbnail?id=1sMCqaJeYHuoEeT1Rcoke8926_Q5bJADG'),
(17, 2, 'https://drive.google.com/thumbnail?id=1W9AGI9Oip6XDjoqMzXqPvl4ivwlTE0Db'),
(18, 3, 'https://drive.google.com/thumbnail?id=1lK4-5NgvCbw-hWQLhjq_pkM0AwuOll7n'),
(19, 3, 'https://drive.google.com/thumbnail?id=1VRje44pBOrtjmBCVVQJnmJEhI_iOHNWY'),
(20, 5, 'https://drive.google.com/thumbnail?id=1l_f9U5UaRfjouxM6hU6MlqbNEyAHLK9L'),
(21, 5, 'https://drive.google.com/thumbnail?id=1nWXd472GZHm5_TDrbCyPRB44XP8BPsHQ'),
(22, 20, 'https://drive.google.com/thumbnail?id=1SPt-9KEHejw_76XzWNmCvx9BbSz5GDpw'),
(23, 20, 'https://drive.google.com/thumbnail?id=1IiWS5IRZY8eA5PDAYsFK6yZID806iwAk'),
(24, 20, 'https://drive.google.com/thumbnail?id=1pMFDSRh_vnhVZBZ_xNf172mGQEkL_Fdw'),
(25, 21, 'https://drive.google.com/thumbnail?id=1bl3gOm1ombUXFJkMpdCaZXn-fgH29Nj5'),
(26, 21, 'https://drive.google.com/thumbnail?id=1qwgFZHVd12IuWjdUHjksYrx_A4nvfYG7'),
(27, 21, 'https://drive.google.com/thumbnail?id=13AYDAAb2XXlULV1PUAp8kaR0KdirOLob');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_13_085254_brands', 1),
(6, '2024_04_13_085303_laptops', 1),
(7, '2024_04_13_085604_cart_items', 1),
(8, '2024_04_13_085613_orders', 1),
(9, '2024_04_13_085628_order_details', 1),
(10, '2024_04_18_032443_add_column_to_laptops', 2),
(11, '2024_04_18_170010_add_column_to_cart_items', 3),
(12, '2024_04_18_170811_add_column_to_cart_items_2', 4),
(13, '2024_04_21_063344_add_columns_to_orders', 5),
(14, '2024_04_21_070702_add_columns_to_orders2', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','processing','delivered','received','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `total_money` decimal(10,2) DEFAULT NULL,
  `shipping_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `phone_number`, `note`, `order_date`, `status`, `total_money`, `shipping_address`, `payment_method`, `created_at`, `updated_at`, `tax`) VALUES
(19, 4, 'cus1', '0987899977', 'nếu muốn phá sản hãy gửi hàng đểu', '2024-04-21 07:00:41', 'cancelled', 10669.91, '105, Tan Phong, District 7', 'COD', NULL, NULL, NULL),
(20, 4, 'Chí Kha', '1234554321', 'đóng gói cẩn thận nếu không muốn bị ban', '2024-04-21 07:11:25', 'received', 2639.98, 'Nhà Bè', 'COD', NULL, NULL, NULL),
(21, 4, 'cus2', '0333279377', 'che tên nếu không muốn bị hack', '2024-04-21 07:14:48', 'cancelled', 4619.97, '260, Mai Chi Tho, District 2, Ho Chi Minh City', 'COD', NULL, NULL, NULL),
(22, 14, 'Kha', '0888888888', 'nếu muốn phá sản hãy gửi hàng đểu', '2024-04-21 08:26:39', 'processing', 3078.90, 'xã Mỹ Hạnh Bắc, Đức Hòa, Long An', 'COD', NULL, NULL, NULL),
(23, 14, 'cus3', '777999888', 'che tên nếu không muốn bị hack', '2024-04-21 08:28:12', 'processing', 3299.97, '300, Mai Chi Tho, District 2, Ho Chi Minh City', 'COD', NULL, NULL, NULL),
(24, 4, 'cus1', '0987899977', 'hàng dễ vỡ xin nhẹ tay', '2024-04-21 09:46:54', 'cancelled', 11108.90, '105, Tan Phong, District 7, Ho Chi Minh City', 'COD', NULL, NULL, NULL),
(25, 4, 'test', '0888888888', 'đóng gói cẩn thận nếu không muốn bị ban', '2024-04-21 09:48:18', 'cancelled', 3187.80, 'xã Mỹ Hạnh Bắc, Đức Hòa, Long An', 'COD', NULL, NULL, NULL),
(26, 4, 'Kha', '0888888888', 'nếu muốn phá sản hãy gửi hàng đểu', '2024-04-21 09:49:27', 'pending', 3408.89, 'xã Mỹ Hạnh Bắc, Đức Hòa, Long An', 'COD', NULL, NULL, 340.89),
(27, 15, 'cus1', '0987899977', 'hàng dễ vỡ xin nhẹ tay', '2024-04-21 10:45:07', 'received', 6049.99, '105, Tan Phong, District 7, Ho Chi Minh City', 'COD', NULL, NULL, 605.00),
(28, 15, 'Kha', '0888888888', NULL, '2024-04-21 10:45:28', 'processing', 1429.99, 'xã Mỹ Hạnh Bắc, Đức Hòa, Long An', 'COD', NULL, NULL, 143.00),
(29, 15, 'Chí Kha', '1234554321', 'đóng gói cẩn thận nếu không muốn bị ban', '2024-04-21 10:45:41', 'cancelled', 1209.99, 'Nhà Bè, TP Hồ Chí Minh', 'COD', NULL, NULL, 121.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `number_of_products` int DEFAULT '1',
  `total_money` decimal(10,2) DEFAULT '0.00',
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `number_of_products`, `total_money`, `color`) VALUES
(8, 19, 10, 1399.99, 5, 6999.95, NULL),
(9, 19, 6, 899.99, 3, 2699.97, NULL),
(10, 20, 1, 999.99, 1, 999.99, 'silver'),
(11, 20, 10, 1399.99, 1, 1399.99, NULL),
(12, 21, 3, 1399.99, 3, 4199.97, 'black'),
(13, 22, 13, 1599.00, 1, 1599.00, NULL),
(14, 22, 20, 1200.00, 1, 1200.00, 'ultra galaxy'),
(15, 23, 1, 999.99, 3, 2999.97, 'silver'),
(16, 24, 20, 1200.00, 7, 8400.00, 'ultra galaxy'),
(17, 24, 12, 1699.00, 1, 1699.00, NULL),
(18, 25, 14, 1299.00, 1, 1299.00, NULL),
(19, 25, 15, 1599.00, 1, 1599.00, NULL),
(20, 26, 10, 1399.99, 1, 1399.99, NULL),
(21, 26, 11, 1699.00, 1, 1699.00, NULL),
(22, 27, 21, 1500.00, 3, 4500.00, 'gray'),
(23, 27, 1, 999.99, 1, 999.99, 'silver'),
(24, 28, 2, 1299.99, 1, 1299.99, 'gray'),
(25, 29, 5, 1099.99, 1, 1099.99, 'black');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User 1', 'user1@example.com', NULL, '$2y$10$9LHkLy/6DCgxVu9IwL.jhOasZLPBHorEuoX3b.m7k53f.0sWK82nm', 'user', NULL, '2024-04-13 12:20:52', '2024-04-13 12:20:52'),
(2, 'User 2', 'user2@example.com', NULL, '$2y$10$zBsVPgGRURDPxaL6AoM9yurlcHcde1L00QOSXtF6yfd46X7fnzu7O', 'user', NULL, '2024-04-13 12:20:52', '2024-04-13 12:20:52'),
(3, 'admin', 'admin@example.com', NULL, '$2y$10$zBsVPgGRURDPxaL6AoM9yurlcHcde1L00QOSXtF6yfd46X7fnzu7O', 'admin', NULL, '2024-04-13 12:20:52', '2024-04-13 12:20:52'),
(4, 'Chí Kha', 'abc123@gmail.com', NULL, '$2y$10$603JGoPbRqsaZ0NxEOxRl.YdIt77S2ndtu2pUJ3r3ZqRMDATy2cM2', 'user', NULL, '2024-04-13 14:04:43', '2024-04-13 14:04:43'),
(5, 'Chi Kha', 'mck0506@gmail.com', NULL, '$2y$10$pfJGbpAlBDTjTiE9Klj63.mq8gNbMniq3QiSFNSLcLK7./tMwnZYW', 'user', NULL, '2024-04-15 11:25:56', '2024-04-15 11:25:56'),
(12, 'Kha test mail', 'khamai05767@gmail.com', NULL, '$2y$10$2RlVTzp26Cj0yCsdlqSiDu/IJe0TE19y2i9t8qiC6S0wtkurYGFSW', 'user', NULL, '2024-04-16 03:26:24', '2024-04-16 03:26:24'),
(13, 'kha test mail', 'chikha13122@gmail.com', NULL, '$2y$10$DGHVS1EG4lbWhE4fm3jNTuHzumoq6Ps32vnVjxjy4s8Yf.2KcQWky', 'user', NULL, '2024-04-16 03:30:42', '2024-04-16 03:30:42'),
(14, 'mck', 'mck@gmail.com', NULL, '$2y$10$2wqUgTV92Q3t6xHNO7kFpuGciI2PPOZWybrLJUBwBaMYMujtA5.Va', 'user', NULL, '2024-04-21 08:26:05', '2024-04-21 08:26:05'),
(15, 'Nam', 'nam@gmail.com', NULL, '$2y$10$JZ7yO6DzNYl8Npc8EkYaZuu26UnbX9MyRp1JDeSo.dgUa/L0dLdoO', 'user', NULL, '2024-04-21 10:39:10', '2024-04-21 10:39:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_items_cart_id` (`user_id`),
  ADD KEY `fk_cart_items_product_id` (`laptop_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laptops_brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `laptop_images`
--
ALTER TABLE `laptop_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laptop_id` (`laptop_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_details_order_id` (`order_id`),
  ADD KEY `fk_order_details_product_id` (`product_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `laptop_images`
--
ALTER TABLE `laptop_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `fk_cart_items_cart_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_cart_items_product_id` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`);

--
-- Các ràng buộc cho bảng `laptops`
--
ALTER TABLE `laptops`
  ADD CONSTRAINT `fk_laptops_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Các ràng buộc cho bảng `laptop_images`
--
ALTER TABLE `laptop_images`
  ADD CONSTRAINT `laptop_images_ibfk_1` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_order_details_product_id` FOREIGN KEY (`product_id`) REFERENCES `laptops` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
