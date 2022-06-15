-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 25, 2022 lúc 04:45 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `number_phone`, `created_at`, `updated_at`) VALUES
(1, 1, '25 Kim Đồng-Gio Linh-Quảng Trị', '0914170417', '2021-11-18 09:06:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `product_name`, `photo_url`, `quantity`, `price`, `created_at`, `updated_at`, `username`, `product_id`, `image_path`) VALUES
(26, 'KEM DƯỠNG ẨM RAU MÁ GOODOC', 'https://cf.shopee.vn/file/953812ad64f512eaf70f84a2f7feb0c4', 2, 420000, '2021-12-06 07:17:04', '2021-12-20 20:56:01', 'demo123@gmail.com', 19, '/storage/product/1/3g8CJRIyldxTKgB4KscB.jpg'),
(38, 'Máy Vắt Cam Hafele GS-401 - Hàng Chính Hãng', 'https://salt.tikicdn.com/cache/400x400/ts/product/72/11/6d/ee8548cdff33b49b781e0bf8f3653093.png.webp', 2, 619000, '2022-01-08 07:32:20', '2022-01-08 07:32:20', 'khanhgiolinh@gmail.com', 18, '/storage/product/1/4r7bleRNGPCmqCUPfE9c.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`, `photo_url`) VALUES
(1, 'Điện thoại-Máy tính bảng', 0, 'dien-thoai-may-tinh-bang', '2021-08-26 19:46:09', '2022-01-08 09:00:44', NULL, 'https://salt.tikicdn.com/cache/w100/ts/product/ea/f0/31/53c13846f5ecb0fdccc671c40e893076.jpg.webp'),
(2, 'Điện tử- Điện lạnh', 0, 'dien-tu-dien-lanh', '2021-08-26 19:46:23', '2021-08-26 19:46:23', NULL, 'https://dienlanhbachkhoatunglam.net/uploads/files/images/dien-tu-dien-lanh-bach-khoa.jpg'),
(3, 'Phụ kiện- Thiết bị số', 0, 'phu-kien-thiet-bi-so', '2021-08-26 19:46:38', '2021-08-26 19:46:38', NULL, 'https://prices.vn/photos/7/category/Phu-kien-thiet-bi-so.png'),
(4, 'Laptop- Thiết bị IT', 0, 'laptop-thiet-bi-it', '2021-08-26 19:46:57', '2021-08-26 19:46:57', NULL, 'https://cdn.tgdd.vn/Products/Images/44/238131/lg-gram-14-i7-14z90pgah75a5-0-600x600.jpg'),
(5, 'Máy ảnh- Quay phim', 0, 'may-anh-quay-phim', '2021-08-26 19:47:08', '2021-08-26 19:47:08', NULL, 'https://img.websosanh.vn/v2/users/review/images/u13i0dtj9hsqs.jpg?compress=85'),
(6, 'Điện gia dụng', 0, 'dien-gia-dung', '2021-08-26 19:47:20', '2021-08-26 19:47:20', NULL, 'https://baotridienmay.com/wp-content/uploads/2021/01/sua-chua-dien-gia-dung-768x445.jpg'),
(7, 'Nhà cửa- Đời sống', 0, 'nha-cua-doi-song', '2021-08-26 19:47:35', '2021-08-26 19:47:35', NULL, 'https://thitruongsi.com/kinh-nghiem/wp-content/uploads/2017/09/nha-cua-doi-song.jpg'),
(8, 'Hàng tiêu dùng - Thực phẩm', 0, 'hang-tieu-dung-thuc-pham', '2021-08-26 19:47:57', '2021-08-26 19:47:57', NULL, 'https://i0.wp.com/hoanggiaan.net/wp-content/uploads/2021/06/fmcg-la-gi-tiem-nang-phat-trien-cua-nganh-hang-tieu-dung-nhanh.jpg'),
(9, 'Điện thoại', 1, 'dien-thoai', '2021-09-08 21:18:41', '2021-09-08 21:18:41', NULL, 'https://phongvu.vn/cong-nghe/wp-content/uploads/2020/06/TJDYpZN3r8B7onh2imuNah-2.jpg'),
(10, 'Đồ chơi, Mẹ & Bé', 0, 'do-choi-me-be', '2021-09-08 21:20:23', '2021-09-08 21:20:23', NULL, 'https://thongminhmatsang.com/wp-content/uploads/2020/08/tao-vong-quay-do-choi-cho-tre.jpg'),
(11, 'Làm đẹp- Sức khỏe', 0, 'lam-dep-suc-khoe', '2021-09-08 21:20:42', '2021-09-08 21:20:42', NULL, 'https://staticpro.happyskin.vn/images/posts/34a63f6c4e4cbfc41c8186db3d4cbe48/nen-va-khong-nen-dau-tu-san-pham-nao-trong-quy-trinh-duong-da-0x0igy_800x600.png'),
(12, 'Thời trang- Phụ kiện', 0, 'thoi-trang-phu-kien', '2021-09-08 21:20:52', '2021-09-08 21:20:52', NULL, 'https://sakurafashion.vn/upload/images_294/69118708_2762636780423259_3359439349241348096_n.jpg'),
(13, 'Áo nam', 12, 'ao-nam', '2021-09-08 21:21:18', '2021-09-08 21:21:18', NULL, 'https://aothudong.com/upload/product/atd-187/ao-thun-nam-dai-tay-xanh-cuc-chat-0.jpg'),
(14, 'Giày dép nam', 12, 'giay-dep-nam', '2021-09-08 21:21:40', '2021-09-08 21:21:40', NULL, 'https://vcdn-giadinh.vnecdn.net/2020/05/07/4c4c3b8a2132d52934eeaa5910beb6-3406-3537-1588867362.jpg'),
(15, 'Giày dép nữ', 12, 'giay-dep-nu', '2021-09-08 21:21:56', '2021-09-08 21:21:56', NULL, 'https://vcdn-giadinh.vnecdn.net/2020/09/06/5f253bde88f3c-1-4322-1599368354.jpg'),
(16, 'Laptop', 4, 'laptop', '2021-09-08 21:22:31', '2021-09-08 21:22:31', NULL, 'https://laptoptitan.vn/wp-content/uploads/2021/04/15-Laptop-Tot-nhat-2021-1.jpg'),
(17, 'Iphone', 9, 'iphone', '2021-09-10 20:44:46', '2021-09-10 20:44:46', NULL, 'https://drtao.vn/wp-content/uploads/2021/09/iphone-13-pro-family-select.jpg'),
(18, 'Máy tính bảng', 1, 'may-tinh-bang', '2021-09-10 20:44:58', '2021-09-10 20:44:58', NULL, 'https://bangxephang.com/wp-content/uploads/2021/05/May-tinh-bang-duoi-10-trieu.jpg'),
(19, 'Tai nghe', 3, 'tai-nghe', '2021-09-10 20:45:10', '2021-09-10 20:45:10', NULL, 'https://cdn.tgdd.vn/Products/Images/54/187374/tai-nghe-bluetooth-kanen-k6-den-2-org.jpg'),
(20, 'Ốp lưng', 3, 'op-lung', '2021-09-10 20:45:21', '2021-09-10 20:45:21', NULL, 'https://hnship.vn/upload/images/2020/11/12/12-11-2020-16051448315fac90ff1fc705fac90ff1fc8c-0.jpg'),
(21, 'Thời trang nữ', 12, 'thoi-trang-nu', '2021-09-11 02:20:06', '2021-09-11 02:20:06', NULL, 'https://i.vietgiaitri.com/2018/10/7/36-cach-phoi-do-dep-style-chat-va-phong-cach-cho-nu-ca-tinh-7f800b.png'),
(22, 'Thể thao- Dã ngoại', 0, 'the-thao-da-ngoai', '2021-11-15 20:00:52', '2021-11-19 19:26:15', NULL, 'http://hanoimoi.com.vn/Uploads/images/phananh/2020/12/31/xedap1.jpg'),
(23, 'Dụng cụ thể thao', 22, 'dung-cu-the-thao', '2021-11-18 08:01:33', '2021-11-19 19:25:31', NULL, 'https://vietluat.vn/wp-content/uploads/2020/11/cac-dung-cu-the-thao-tai-nha-e1585369159689-600x400.jpg'),
(24, 'Tã-Bỉm', 10, 'ta-bim', '2021-11-18 08:03:16', '2021-11-19 19:25:00', NULL, 'https://cdn.chanhtuoi.com/uploads/2016/05/5-loai-ta-nao-tot-nhat-duoc-cac-tin-dung-cho-be-1.jpg'),
(25, 'Đồ dùng nhà bếp', 7, 'do-dung-nha-bep', '2021-11-18 08:05:05', '2021-11-19 19:24:29', NULL, 'https://file.hstatic.net/1000277887/file/xoong-doc-hai-3_2d2376e8bd0443399bc934582e5178ba_grande.jpg'),
(26, 'Nhật Khánh Nguyễn', 0, 'nhat-khanh-nguyen', '2021-11-19 19:53:39', '2021-11-19 19:53:45', '2021-11-19 19:53:45', '+84914170417'),
(27, 'Mỹ phẩm', 11, 'my-pham', '2021-12-01 06:30:16', '2021-12-01 06:30:16', NULL, 'https://suno.vn/blog/wp-content/uploads/2016/12/ban-my-pham-online-lam-giau-khong-kho-1024x683.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `content`, `rating`, `created_at`, `updated_at`, `product_id`) VALUES
(1, 1, 'cung dc', 5, '2021-11-30 20:55:04', '2021-11-30 20:55:04', 19),
(2, 1, 'giay dep lam nha', 5, '2021-11-30 20:56:02', '2021-11-30 20:56:02', 13),
(3, 1, 'cung dc', 5, '2021-12-01 03:24:04', '2021-12-01 03:24:04', 13),
(4, 1, 'vc', 5, '2021-12-01 06:54:42', '2021-12-01 06:54:42', 11),
(5, 1, 'ko', 5, '2021-12-04 20:18:34', '2021-12-04 20:18:34', 13),
(6, 1, 'dep', 5, '2021-12-04 20:20:04', '2021-12-04 20:20:04', 13),
(7, 12, 'hoi dat', 3, '2021-12-04 20:34:13', '2021-12-04 20:34:13', 13),
(8, 1, 'xau ghe', 2, '2021-12-05 02:53:32', '2021-12-05 02:53:32', 13),
(9, 14, 'ngon', 5, '2022-01-02 04:11:42', '2022-01-02 04:11:42', 17),
(10, 14, '08/01/2022', 5, '2022-01-08 06:35:26', '2022-01-08 06:35:26', 17),
(11, 14, 'khanh', 5, '2022-01-08 06:58:02', '2022-01-08 06:58:02', 13),
(12, 14, 'Ngon', 5, '2022-01-08 07:33:29', '2022-01-08 07:33:29', 18),
(13, 14, 'ngon vcl', 5, '2022-02-21 00:49:41', '2022-02-21 00:49:41', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_images`
--

CREATE TABLE `comment_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_images`
--

INSERT INTO `comment_images` (`id`, `image_name`, `image_path`, `comment_id`, `created_at`, `updated_at`) VALUES
(1, '15d9a11f061f7376d070e4bdacc589e3.jpg', '/storage/comment/1/WY3Xf5FBcKLfikeckAL3.jpg', 1, '2021-11-30 20:55:04', '2021-11-30 20:55:04'),
(2, 'z1972784085982_c27e2e4a9d228f20e595c0a5eaf394c8_6fa7becb5d2d41fdb7970df35e44bf5b_master.jpg', '/storage/comment/1/U0H1UoeVJugjJUx6YRsl.jpg', 2, '2021-11-30 20:56:03', '2021-11-30 20:56:03'),
(3, 'z1972785375036_d8e0bd33c4691483eb9a37dfcb0c92a9_fa1b5663a9c9458f86550b1da92657f4_master.jpg', '/storage/comment/1/ZoFlfeJ9ZMSP5fJnNjHq.jpg', 2, '2021-11-30 20:56:03', '2021-11-30 20:56:03'),
(4, 'z1972785375036_d8e0bd33c4691483eb9a37dfcb0c92a9_fa1b5663a9c9458f86550b1da92657f4_master.jpg', '/storage/comment/1/61dwcZUjvuQuusfUSR8N.jpg', 6, '2021-12-04 20:20:04', '2021-12-04 20:20:04'),
(5, 'pack.png', '/storage/comment/14/MsqAky9qoJ3LBFz6BDgY.png', 9, '2022-01-02 04:11:43', '2022-01-02 04:11:43'),
(6, 'z2741983375102_399eb5858d848969b19c2b23f8522fa0.jpg', '/storage/comment/14/NSlK7hbShRWVbRx0LHHV.jpg', 10, '2022-01-08 06:35:27', '2022-01-08 06:35:27'),
(7, 'z2741977304999_fe51ee381e9994017918685f1b2167eb.jpg', '/storage/comment/14/u8eEO3lnbfaxM8zEK5yD.jpg', 11, '2022-01-08 06:58:02', '2022-01-08 06:58:02'),
(8, 'z2741998539160_26db22db5b11d81d0bcade936b75989c.jpg', '/storage/comment/14/Fur1WCxtr5wH71ahzOlO.jpg', 12, '2022-01-08 07:33:29', '2022-01-08 07:33:29'),
(9, 'z2741998553061_944e19ef452d14acef0d77ba08cf3191.jpg', '/storage/comment/14/DtH5eLRkkV3UCW2EAiXk.jpg', 13, '2022-02-21 00:49:42', '2022-02-21 00:49:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'menu 1', 0, NULL, NULL, '', NULL),
(2, 'menu 2', 0, NULL, NULL, '', NULL),
(3, 'menu 3', 0, NULL, NULL, '', NULL),
(4, 'menu 1.1', 1, NULL, NULL, '', NULL),
(5, 'menu 1.1.1', 4, NULL, NULL, '', NULL),
(6, 'Menu 4', 0, '2021-08-23 19:59:05', '2021-08-23 19:59:05', '', NULL),
(7, 'Menu 2.1', 2, '2021-08-23 19:59:26', '2021-08-23 20:32:15', '', '2021-08-23 20:32:15'),
(8, 'Menu 2.1.1', 7, '2021-08-23 20:11:10', '2021-08-23 20:32:14', 'menu-211', '2021-08-23 20:32:14'),
(9, 'Menu 4.1', 6, '2021-08-24 21:00:35', '2021-08-24 21:00:35', 'menu-41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_08_22_042826_create_categories_table', 1),
(4, '2021_08_23_093159_add_column_deleted_at_table_categories', 2),
(5, '2021_08_23_134637_create_menus_table', 3),
(6, '2021_08_24_030802_add_column_slug_to_menus_table', 4),
(7, '2021_08_24_032956_add_column_soft_delete_to_menus_table', 5),
(8, '2021_08_25_040553_create_products_table', 6),
(9, '2021_08_25_041123_create_product_tags_table', 6),
(10, '2021_08_25_041244_create_tags_table', 6),
(11, '2021_08_25_041745_create_product_images_table', 7),
(12, '2021_08_27_023507_add_column_feature_image_name', 8),
(13, '2021_08_27_025853_add_column_image_name_to_table_product_image', 9),
(14, '2021_08_28_042212_add_column_delete_at_to_product_table', 10),
(15, '2021_08_28_133056_create_sliders_table', 11),
(16, '2021_08_29_043758_add_column_deleted_at_to_slider', 12),
(17, '2021_08_30_075851_create_settings_table', 13),
(18, '2021_08_30_093053_add_column_type_settings_table', 14),
(19, '2021_08_30_095713_add_column_deleted_at_to_settings', 15),
(20, '2021_08_30_143014_create_roles_table', 16),
(21, '2021_08_30_143058_create_permissions_table', 16),
(22, '2021_08_30_143150_create_table_user_role', 16),
(23, '2021_08_30_143234_create_table_permission_role', 16),
(24, '2021_09_01_033845_add_column_deleted_at_table_users', 17),
(25, '2021_09_02_043702_add_column_parent_id_permission', 18),
(26, '2021_09_02_091810_add_column_key_code_permissions', 19),
(27, '2021_09_10_042712_add_column_view_count_to_table_product', 20),
(28, '2021_11_11_081523_create_carts_table', 21),
(29, '2021_11_18_090157_create_addresses_table', 22),
(30, '2021_11_18_130444_create_orders_table', 23),
(31, '2021_11_18_130524_create_order__details_table', 23),
(32, '2021_11_29_084014_add_column_delete_at_to_order_table', 24),
(33, '2021_11_30_080231_create_comments_table', 25),
(34, '2021_12_01_020348_create_comment_images_table', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `success` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `email`, `address`, `amount`, `status`, `created_at`, `updated_at`, `phone_number`, `deleted_at`, `success`) VALUES
(1, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 2100000, 'Giao hàng thành công', '2021-11-30 20:54:47', '2022-02-24 20:42:43', '0914170417', '2022-02-24 20:42:43', b'1'),
(2, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 6800000, 'Giao hàng thành công', '2021-11-30 20:55:31', '2022-02-24 20:42:58', '0914170417', '2022-02-24 20:42:58', b'1'),
(3, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 25500000, 'Giao hàng thành công', '2021-11-30 20:55:40', '2022-02-24 20:43:28', '0914170417', '2022-02-24 20:43:28', b'1'),
(4, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 75000000, 'Giao hàng thành công', '2021-12-01 06:26:27', '2021-12-02 19:35:34', '0914170417', NULL, b'1'),
(5, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 27720000, 'Giao hàng thành công', '2021-12-02 08:55:58', '2021-12-02 19:35:35', '0914170417', NULL, b'1'),
(6, 'khanhnguyen3984610275@gmail.com', '25 Kim Đồng Hòa Qúy Đà Nẵng', 7650000, 'Giao hàng thành công', '2021-12-03 20:35:01', '2021-12-03 20:58:06', '0914170417', NULL, b'1'),
(7, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 4570000, 'Giao hàng thành công', '2021-12-04 20:00:40', '2022-02-24 20:43:20', '0914170417', '2022-02-24 20:43:20', b'1'),
(8, '123321@gmail.com', '25 Kim Đồng Gio Linh Quảng Trị', 59925000, 'Giao hàng thành công', '2021-12-04 20:34:00', '2021-12-05 19:50:35', '0914170417', NULL, b'1'),
(9, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 9710000, 'Giao hàng thành công', '2021-12-05 02:52:43', '2022-02-24 20:43:09', '0914170417', '2022-02-24 20:43:09', b'1'),
(10, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 6120000, 'Giao hàng thành công', '2021-12-05 02:53:02', '2022-02-24 20:43:16', '0914170417', '2022-02-24 20:43:16', b'1'),
(11, 'demo123@gmail.com', '67 Bùi Thị Xuân Đà Nẵng', 9197000, 'Giao hàng thành công', '2021-12-05 02:58:29', '2021-12-05 19:50:40', '0988666666', NULL, b'1'),
(12, 'khanhnguyen3984610275@gmail.com', '25 Kim Đồng Hòa Qúy Đà Nẵng', 6880000, 'Giao hàng thành công', '2021-12-05 19:46:02', '2021-12-05 19:50:42', '0914170417', NULL, b'1'),
(13, 'demo123@gmail.com', '08 Bình Kỳ-phường Hòa Qúy, Quận Ngũ Hành Sơn-TP Đà Nẵng', 76399000, 'Giao hàng thành công', '2021-12-05 19:50:06', '2021-12-05 19:50:44', '0914170417', NULL, b'1'),
(14, 'khanhnguyen3984610275@gmail.com', '25 Kim Đồng Hòa Qúy Đà Nẵng', 26700000, 'Giao hàng thành công', '2021-12-20 21:07:56', '2022-02-24 20:43:04', '0914170417', '2022-02-24 20:43:04', b'1'),
(15, 'khanhgiolinh@gmail.com', '67 Bùi Thị Xuân Hải Châu Đà Nẵng', 511045000, 'Giao hàng thành công', '2021-12-20 21:08:55', '2022-02-24 20:43:02', '0914170417', '2022-02-24 20:43:02', b'1'),
(16, 'huyb0709@gmail.com', '30 Phần Lăng 5', 1900000, 'Giao hàng thành công', '2022-01-02 04:11:18', '2022-01-02 04:12:31', '0765530742', NULL, b'1'),
(17, 'huyb0709@gmail.com', '30 Phần Lăng 5', 5100000, 'Giao hàng thành công', '2022-01-08 06:57:30', '2022-01-08 07:35:33', '0765530742', NULL, b'1'),
(18, 'huyb0709@gmail.com', '30 Phần Lăng 5', 1857000, 'Giao hàng thành công', '2022-01-08 07:33:02', '2022-01-08 07:35:31', '0765530742', NULL, b'1'),
(19, 'huyb0709@gmail.com', '30 Phần Lăng 5', 980000, 'Mới đặt hàng', '2022-01-08 09:05:35', '2022-01-08 09:05:35', '0765530742', NULL, NULL),
(20, 'huyb0709@gmail.com', '30 Phần Lăng 5', 680000, 'Mới đặt hàng', '2022-02-21 00:49:04', '2022-02-21 00:49:04', '0765530742', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 'KEM DƯỠNG ẨM RAU MÁ GOODOC', 420000, 5, '2021-11-30 20:54:47', '2021-11-30 20:54:47'),
(2, 2, 8, 'SIGNATURE LOGO CHUTE JACKET', 680000, 10, '2021-11-30 20:55:31', '2021-11-30 20:55:31'),
(3, 3, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1275000, 20, '2021-11-30 20:55:40', '2021-11-30 20:55:40'),
(4, 4, 11, 'iPhone 13 (128GB)', 25000000, 3, '2021-12-01 06:26:27', '2021-12-01 06:26:27'),
(5, 5, 8, 'SIGNATURE LOGO CHUTE JACKET', 680000, 4, '2021-12-02 08:55:58', '2021-12-02 08:55:58'),
(6, 5, 11, 'iPhone 13 (128GB)', 25000000, 1, '2021-12-02 08:55:58', '2021-12-02 08:55:58'),
(7, 6, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1275000, 6, '2021-12-03 20:35:01', '2021-12-03 20:35:01'),
(8, 7, 8, 'SIGNATURE LOGO CHUTE JACKET', 680000, 6, '2021-12-04 20:00:40', '2021-12-04 20:00:40'),
(9, 7, 9, 'ARDENT SHIRT', 490000, 1, '2021-12-04 20:00:40', '2021-12-04 20:00:40'),
(10, 8, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1275000, 47, '2021-12-04 20:34:00', '2021-12-04 20:34:00'),
(11, 9, 16, 'Tã Quần Bobby - Đệm Lưng Thấm Mồ Hôi XL96 (96 Miếng)', 615000, 1, '2021-12-05 02:52:43', '2021-12-05 02:52:43'),
(12, 9, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1700000, 3, '2021-12-05 02:52:43', '2021-12-05 02:52:43'),
(13, 9, 15, 'Bộ Tạ Tập Tay Đa Năng Điều Chỉnh 2 in 1 Kết Hợp Tạ Đẩy (40kg)', 799000, 5, '2021-12-05 02:52:43', '2021-12-05 02:52:43'),
(14, 10, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1700000, 2, '2021-12-05 02:53:02', '2021-12-05 02:53:02'),
(15, 10, 8, 'SIGNATURE LOGO CHUTE JACKET', 680000, 4, '2021-12-05 02:53:02', '2021-12-05 02:53:02'),
(16, 11, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1700000, 4, '2021-12-05 02:58:29', '2021-12-05 02:58:29'),
(17, 11, 15, 'Bộ Tạ Tập Tay Đa Năng Điều Chỉnh 2 in 1 Kết Hợp Tạ Đẩy (40kg)', 799000, 3, '2021-12-05 02:58:29', '2021-12-05 02:58:29'),
(18, 12, 9, 'ARDENT SHIRT', 490000, 1, '2021-12-05 19:46:02', '2021-12-05 19:46:02'),
(19, 12, 17, 'Giường gấp gọn YLF 2198 giường đơn loại to - Hàng chính hãng', 1900000, 3, '2021-12-05 19:46:02', '2021-12-05 19:46:02'),
(20, 12, 14, 'ÁO SƠ MI TAY NGẮN REGULAR FIT GENI', 230000, 3, '2021-12-05 19:46:02', '2021-12-05 19:46:02'),
(21, 13, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1700000, 4, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(22, 13, 15, 'Bộ Tạ Tập Tay Đa Năng Điều Chỉnh 2 in 1 Kết Hợp Tạ Đẩy (40kg)', 799000, 6, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(23, 13, 8, 'SIGNATURE LOGO CHUTE JACKET', 680000, 2, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(24, 13, 9, 'ARDENT SHIRT', 490000, 3, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(25, 13, 11, 'iPhone 13 (128GB)', 25000000, 2, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(26, 13, 14, 'ÁO SƠ MI TAY NGẮN REGULAR FIT GENI', 230000, 3, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(27, 13, 16, 'Tã Quần Bobby - Đệm Lưng Thấm Mồ Hôi XL96 (96 Miếng)', 615000, 2, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(28, 13, 17, 'Giường gấp gọn YLF 2198 giường đơn loại to - Hàng chính hãng', 1900000, 3, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(29, 13, 18, 'Máy Vắt Cam Hafele GS-401 - Hàng Chính Hãng', 619000, 5, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(30, 13, 19, 'KEM DƯỠNG ẨM RAU MÁ GOODOC', 420000, 3, '2021-12-05 19:50:06', '2021-12-05 19:50:06'),
(31, 14, 11, 'iPhone 13 (128GB)', 25000000, 1, '2021-12-20 21:07:56', '2021-12-20 21:07:56'),
(32, 14, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1700000, 1, '2021-12-20 21:07:56', '2021-12-20 21:07:56'),
(33, 15, 11, 'iPhone 13 (128GB)', 25000000, 20, '2021-12-20 21:08:55', '2021-12-20 21:08:55'),
(34, 15, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1700000, 6, '2021-12-20 21:08:55', '2021-12-20 21:08:55'),
(35, 15, 16, 'Tã Quần Bobby - Đệm Lưng Thấm Mồ Hôi XL96 (96 Miếng)', 615000, 1, '2021-12-20 21:08:55', '2021-12-20 21:08:55'),
(36, 15, 14, 'ÁO SƠ MI TAY NGẮN REGULAR FIT GENI', 230000, 1, '2021-12-20 21:08:55', '2021-12-20 21:08:55'),
(37, 16, 17, 'Giường gấp gọn YLF 2198 giường đơn loại to - Hàng chính hãng', 1900000, 1, '2022-01-02 04:11:18', '2022-01-02 04:11:18'),
(38, 17, 13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', 1700000, 3, '2022-01-08 06:57:30', '2022-01-08 06:57:30'),
(39, 18, 18, 'Máy Vắt Cam Hafele GS-401 - Hàng Chính Hãng', 619000, 3, '2022-01-08 07:33:02', '2022-01-08 07:33:02'),
(40, 19, 9, 'ARDENT SHIRT', 490000, 2, '2022-01-08 09:05:35', '2022-01-08 09:05:35'),
(41, 20, 8, 'SIGNATURE LOGO CHUTE JACKET', 680000, 1, '2022-02-21 00:49:04', '2022-02-21 00:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'category', 'category', '2021-09-03 20:47:29', '2021-09-03 20:47:29', 0, NULL),
(2, 'list', 'list', '2021-09-03 20:47:29', '2021-09-03 20:47:29', 1, 'category_list'),
(3, 'add', 'add', '2021-09-03 20:47:29', '2021-09-03 20:47:29', 1, 'category_add'),
(4, 'edit', 'edit', '2021-09-03 20:47:29', '2021-09-03 20:47:29', 1, 'category_edit'),
(5, 'delete', 'delete', '2021-09-03 20:47:29', '2021-09-03 20:47:29', 1, 'category_delete'),
(6, 'slider', 'slider', '2021-09-03 20:48:24', '2021-09-03 20:48:24', 0, NULL),
(7, 'list', 'list', '2021-09-03 20:48:24', '2021-09-03 20:48:24', 6, 'slider_list'),
(8, 'add', 'add', '2021-09-03 20:48:24', '2021-09-03 20:48:24', 6, 'slider_add'),
(9, 'edit', 'edit', '2021-09-03 20:48:24', '2021-09-03 20:48:24', 6, 'slider_edit'),
(10, 'delete', 'delete', '2021-09-03 20:48:24', '2021-09-03 20:48:24', 6, 'slider_delete'),
(11, 'menu', 'menu', '2021-09-03 20:49:25', '2021-09-03 20:49:25', 0, NULL),
(12, 'list', 'list', '2021-09-03 20:49:25', '2021-09-03 20:49:25', 11, 'menu_list'),
(13, 'add', 'add', '2021-09-03 20:49:25', '2021-09-03 20:49:25', 11, 'menu_add'),
(14, 'edit', 'edit', '2021-09-03 20:49:25', '2021-09-03 20:49:25', 11, 'menu_edit'),
(15, 'delete', 'delete', '2021-09-03 20:49:25', '2021-09-03 20:49:25', 11, 'menu_delete'),
(16, 'product', 'product', '2021-09-04 20:47:08', '2021-09-04 20:47:08', 0, NULL),
(17, 'list', 'list', '2021-09-04 20:47:08', '2021-09-04 20:47:08', 16, 'product_list'),
(18, 'add', 'add', '2021-09-04 20:47:08', '2021-09-04 20:47:08', 16, 'product_add'),
(19, 'edit', 'edit', '2021-09-04 20:47:08', '2021-09-04 20:47:08', 16, 'product_edit'),
(20, 'delete', 'delete', '2021-09-04 20:47:08', '2021-09-04 20:47:08', 16, 'product_delete'),
(21, 'setting', 'setting', '2021-09-04 20:47:14', '2021-09-04 20:47:14', 0, NULL),
(22, 'list', 'list', '2021-09-04 20:47:14', '2021-09-04 20:47:14', 21, 'setting_list'),
(23, 'add', 'add', '2021-09-04 20:47:14', '2021-09-04 20:47:14', 21, 'setting_add'),
(24, 'edit', 'edit', '2021-09-04 20:47:14', '2021-09-04 20:47:14', 21, 'setting_edit'),
(25, 'delete', 'delete', '2021-09-04 20:47:14', '2021-09-04 20:47:14', 21, 'setting_delete'),
(26, 'user', 'user', '2021-09-04 20:47:23', '2021-09-04 20:47:23', 0, NULL),
(27, 'list', 'list', '2021-09-04 20:47:23', '2021-09-04 20:47:23', 26, 'user_list'),
(28, 'add', 'add', '2021-09-04 20:47:23', '2021-09-04 20:47:23', 26, 'user_add'),
(29, 'edit', 'edit', '2021-09-04 20:47:23', '2021-09-04 20:47:23', 26, 'user_edit'),
(30, 'delete', 'delete', '2021-09-04 20:47:23', '2021-09-04 20:47:23', 26, 'user_delete'),
(31, 'role', 'role', '2021-09-04 20:47:29', '2021-09-04 20:47:29', 0, NULL),
(32, 'list', 'list', '2021-09-04 20:47:29', '2021-09-04 20:47:29', 31, 'role_list'),
(33, 'add', 'add', '2021-09-04 20:47:29', '2021-09-04 20:47:29', 31, 'role_add'),
(34, 'edit', 'edit', '2021-09-04 20:47:29', '2021-09-04 20:47:29', 31, 'role_edit'),
(35, 'delete', 'delete', '2021-09-04 20:47:29', '2021-09-04 20:47:29', 31, 'role_delete'),
(36, 'order', 'order', '2021-12-07 04:07:07', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(2, 5, 3, NULL, NULL),
(3, 5, 4, NULL, NULL),
(4, 5, 5, NULL, NULL),
(5, 5, 7, NULL, NULL),
(6, 5, 8, NULL, NULL),
(164, 1, 2, NULL, NULL),
(165, 1, 3, NULL, NULL),
(166, 1, 4, NULL, NULL),
(167, 1, 5, NULL, NULL),
(168, 1, 17, NULL, NULL),
(169, 1, 18, NULL, NULL),
(170, 1, 19, NULL, NULL),
(171, 1, 20, NULL, NULL),
(172, 1, 7, NULL, NULL),
(173, 1, 8, NULL, NULL),
(174, 1, 9, NULL, NULL),
(175, 1, 10, NULL, NULL),
(176, 1, 12, NULL, NULL),
(177, 1, 13, NULL, NULL),
(178, 1, 14, NULL, NULL),
(179, 1, 15, NULL, NULL),
(180, 1, 22, NULL, NULL),
(181, 1, 23, NULL, NULL),
(182, 1, 24, NULL, NULL),
(183, 1, 25, NULL, NULL),
(184, 1, 27, NULL, NULL),
(185, 1, 28, NULL, NULL),
(186, 1, 29, NULL, NULL),
(187, 1, 30, NULL, NULL),
(188, 1, 32, NULL, NULL),
(189, 1, 33, NULL, NULL),
(190, 1, 34, NULL, NULL),
(191, 1, 35, NULL, NULL),
(192, 3, 2, NULL, NULL),
(193, 3, 3, NULL, NULL),
(194, 3, 4, NULL, NULL),
(195, 3, 5, NULL, NULL),
(196, 3, 7, NULL, NULL),
(197, 3, 8, NULL, NULL),
(198, 3, 9, NULL, NULL),
(199, 3, 10, NULL, NULL),
(200, 3, 12, NULL, NULL),
(201, 3, 13, NULL, NULL),
(202, 3, 14, NULL, NULL),
(203, 3, 15, NULL, NULL),
(204, 3, 17, NULL, NULL),
(205, 3, 18, NULL, NULL),
(206, 3, 19, NULL, NULL),
(207, 3, 20, NULL, NULL),
(208, 3, 22, NULL, NULL),
(209, 3, 23, NULL, NULL),
(210, 3, 24, NULL, NULL),
(211, 3, 25, NULL, NULL),
(212, 3, 27, NULL, NULL),
(213, 3, 28, NULL, NULL),
(214, 3, 29, NULL, NULL),
(215, 3, 30, NULL, NULL),
(216, 3, 32, NULL, NULL),
(217, 3, 33, NULL, NULL),
(218, 3, 34, NULL, NULL),
(219, 3, 35, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `view_count`, `photo_url`) VALUES
(1, 'DirtyCoins Print Cardigan - Cream/Green', '490000', '/storage/product/1/ZubASThSNUF2m9f0poXg.png', '<ul>\r\n	<li>100% nỉ b&ocirc;ng</li>\r\n	<li>2 t&uacute;i&nbsp;th&acirc;n &aacute;o</li>\r\n	<li>Hoạ tiết logo DIRTYCOINS &aacute;p dụng c&ocirc;ng nghệ in chuyển nhiệt</li>\r\n	<li>Th&ecirc;u tay thủ c&ocirc;ng logo Y viền b&ocirc;ng</li>\r\n	<li>Bo g&acirc;n viền &aacute;o, t&agrave; &aacute;o v&agrave; cổ tay &aacute;o</li>\r\n	<li>H&agrave;ng khuy dễ đ&oacute;ng mở</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/product/dirtycoins-cardigan-1-w-c5ec4e51-dbb3-44f3-8dac-7e47b525b84f.png\" style=\"height:123px; width:100px\" /></p>', 1, 21, '2021-09-09 20:33:06', '2021-09-14 07:44:39', '1-353521fc-0eac-4192-92a7-86d2c42afac2.png', '2021-09-14 07:44:39', 19, NULL),
(2, 'DirtyCoins Print Cardigan - Cream/Green', '490000', '/storage/product/1/ZubASThSNUF2m9f0poXg.png', '<ul>\r\n	<li>100% nỉ b&ocirc;ng</li>\r\n	<li>2 t&uacute;i&nbsp;th&acirc;n &aacute;o</li>\r\n	<li>Hoạ tiết logo DIRTYCOINS &aacute;p dụng c&ocirc;ng nghệ in chuyển nhiệt</li>\r\n	<li>Th&ecirc;u tay thủ c&ocirc;ng logo Y viền b&ocirc;ng</li>\r\n	<li>Bo g&acirc;n viền &aacute;o, t&agrave; &aacute;o v&agrave; cổ tay &aacute;o</li>\r\n	<li>H&agrave;ng khuy dễ đ&oacute;ng mở</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/product/dirtycoins-cardigan-1-w-c5ec4e51-dbb3-44f3-8dac-7e47b525b84f.png\" style=\"height:1850px; width:1500px\" /></p>', 1, 21, '2021-09-09 20:33:06', '2021-09-14 07:44:41', '1-353521fc-0eac-4192-92a7-86d2c42afac2.png', '2021-09-14 07:44:41', 22, NULL),
(3, 'DirtyCoins Print Cardigan - Cream/Green', '490000', '/storage/product/1/ZubASThSNUF2m9f0poXg.png', '<ul>\r\n	<li>100% nỉ b&ocirc;ng</li>\r\n	<li>2 t&uacute;i&nbsp;th&acirc;n &aacute;o</li>\r\n	<li>Hoạ tiết logo DIRTYCOINS &aacute;p dụng c&ocirc;ng nghệ in chuyển nhiệt</li>\r\n	<li>Th&ecirc;u tay thủ c&ocirc;ng logo Y viền b&ocirc;ng</li>\r\n	<li>Bo g&acirc;n viền &aacute;o, t&agrave; &aacute;o v&agrave; cổ tay &aacute;o</li>\r\n	<li>H&agrave;ng khuy dễ đ&oacute;ng mở</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/product/dirtycoins-cardigan-1-w-c5ec4e51-dbb3-44f3-8dac-7e47b525b84f.png\" style=\"height:1850px; width:1500px\" /></p>', 1, 12, '2021-09-09 20:33:06', '2021-09-14 07:44:45', '1-353521fc-0eac-4192-92a7-86d2c42afac2.png', '2021-09-14 07:44:45', 10, NULL),
(4, 'DirtyCoins Print Cardigan - Cream/Green', '490000', '/storage/product/1/ZubASThSNUF2m9f0poXg.png', '<ul>\r\n	<li>100% nỉ b&ocirc;ng</li>\r\n	<li>2 t&uacute;i&nbsp;th&acirc;n &aacute;o</li>\r\n	<li>Hoạ tiết logo DIRTYCOINS &aacute;p dụng c&ocirc;ng nghệ in chuyển nhiệt</li>\r\n	<li>Th&ecirc;u tay thủ c&ocirc;ng logo Y viền b&ocirc;ng</li>\r\n	<li>Bo g&acirc;n viền &aacute;o, t&agrave; &aacute;o v&agrave; cổ tay &aacute;o</li>\r\n	<li>H&agrave;ng khuy dễ đ&oacute;ng mở</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/product/dirtycoins-cardigan-1-w-c5ec4e51-dbb3-44f3-8dac-7e47b525b84f.png\" style=\"height:1850px; width:1500px\" /></p>', 1, 12, '2021-09-09 20:33:06', '2021-09-14 07:44:53', '1-353521fc-0eac-4192-92a7-86d2c42afac2.png', '2021-09-14 07:44:53', 1, NULL),
(5, 'DirtyCoins Print Cardigan - Cream/Green', '490000', '/storage/product/1/ZubASThSNUF2m9f0poXg.png', '<ul>\r\n	<li>100% nỉ b&ocirc;ng</li>\r\n	<li>2 t&uacute;i&nbsp;th&acirc;n &aacute;o</li>\r\n	<li>Hoạ tiết logo DIRTYCOINS &aacute;p dụng c&ocirc;ng nghệ in chuyển nhiệt</li>\r\n	<li>Th&ecirc;u tay thủ c&ocirc;ng logo Y viền b&ocirc;ng</li>\r\n	<li>Bo g&acirc;n viền &aacute;o, t&agrave; &aacute;o v&agrave; cổ tay &aacute;o</li>\r\n	<li>H&agrave;ng khuy dễ đ&oacute;ng mở</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/product/dirtycoins-cardigan-1-w-c5ec4e51-dbb3-44f3-8dac-7e47b525b84f.png\" style=\"height:1850px; width:1500px\" /></p>', 1, 12, '2021-09-09 20:33:06', '2021-09-14 07:44:55', '1-353521fc-0eac-4192-92a7-86d2c42afac2.png', '2021-09-14 07:44:55', 9, NULL),
(6, 'DirtyCoins Print Cardigan - Cream/Green', '490000', '/storage/product/1/ZubASThSNUF2m9f0poXg.png', '<ul>\r\n	<li>100% nỉ b&ocirc;ng</li>\r\n	<li>2 t&uacute;i&nbsp;th&acirc;n &aacute;o</li>\r\n	<li>Hoạ tiết logo DIRTYCOINS &aacute;p dụng c&ocirc;ng nghệ in chuyển nhiệt</li>\r\n	<li>Th&ecirc;u tay thủ c&ocirc;ng logo Y viền b&ocirc;ng</li>\r\n	<li>Bo g&acirc;n viền &aacute;o, t&agrave; &aacute;o v&agrave; cổ tay &aacute;o</li>\r\n	<li>H&agrave;ng khuy dễ đ&oacute;ng mở</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/product/dirtycoins-cardigan-1-w-c5ec4e51-dbb3-44f3-8dac-7e47b525b84f.png\" style=\"height:1850px; width:1500px\" /></p>', 1, 12, '2021-09-09 20:33:06', '2021-09-14 07:44:58', '1-353521fc-0eac-4192-92a7-86d2c42afac2.png', '2021-09-14 07:44:58', 7, NULL),
(7, 'Iphone 12 Pro Max 128GB', '30000000', '/storage/product/1/n1gtJpvb9kTzDstzF6uj.jpg', '<h3><a href=\"https://www.thegioididong.com/dtdd/iphone-12-pro-max\" target=\"_blank\">iPhone 12 Pro Max 128 GB</a>&nbsp;một si&ecirc;u phẩm&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;đến từ&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\">Apple</a>. M&aacute;y c&oacute; một hiệu năng ho&agrave;n to&agrave;n mạnh mẽ đ&aacute;p ứng tốt nhiều nhu cầu đến từ người d&ugrave;ng v&agrave; mang trong m&igrave;nh một thiết kế đầy vu&ocirc;ng vức, sang trọng.</h3>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/product/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg\" style=\"height:300px; width:300px\" /></p>', 1, 9, '2021-09-14 02:07:19', '2021-09-14 20:03:41', 'iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', '2021-09-14 20:03:41', 100, NULL),
(8, 'SIGNATURE LOGO CHUTE JACKET', '680000', '/storage/product/1/woNtfql0jchYS4rctm63.jpg', '<p>no</p>', 1, 13, '2021-09-14 07:43:25', '2021-09-14 07:43:25', 'boucw02zg0rt-1-0067-hinh-mat-truoc-0-d2bfbf1c-7237-4ff7-ac66-fa1c3cb7f4fd (1).jpg', NULL, NULL, 'http://192.168.1.8:8000/storage/product/1/woNtfql0jchYS4rctm63.jpg'),
(9, 'ARDENT SHIRT', '490000', '/storage/product/1/IEgsNU3Rb7XqL5hbhJ3M.jpg', '<p>ko</p>', 1, 13, '2021-09-14 07:47:17', '2021-09-14 07:47:17', '035dca0f-2044-41d4-b153-cabd4f0953c8.jpg', NULL, NULL, 'http://192.168.1.8:8000/storage/product/1/IEgsNU3Rb7XqL5hbhJ3M.jpg'),
(10, 'Nike Air Jordan 3 Retro White Cement Like Auth', '1190000', '/storage/product/1/wcRaFZymZ1nrfDa41TEf.jpg', '<p>ko</p>', 1, 14, '2021-09-14 07:49:09', '2021-09-14 20:03:39', 'nike-air-jordan-3-white-cement-like-auth-1-800x601.jpg', '2021-09-14 20:03:39', NULL, NULL),
(11, 'iPhone 13 (128GB)', '25000000', '/storage/product/1/4CB82vE3WTk9Su6QbHW0.jpg', '<p>ko</p>', 1, 9, '2021-09-14 20:06:32', '2021-11-04 05:57:26', 'ip13-pro_2.jpg', NULL, NULL, 'http://192.168.1.8:8000/storage/product/1/4CB82vE3WTk9Su6QbHW0.jpg'),
(12, 'THE CHUNKY WOLF VARSITY JACKET', '1800000', '/storage/product/1/uEytKqIRRcYNaAVyn1Nh.jpg', '<p>ko</p>', 1, 13, '2021-09-20 00:32:36', '2021-11-30 19:56:10', 'studio_session-261_ce2cfd33be7e46a7bfd9b1e9df1cfba8_master.jpg', '2021-11-30 19:56:10', NULL, 'http://192.168.1.8:8000/storage/product/1/uEytKqIRRcYNaAVyn1Nh.jpg'),
(13, 'THE BASIC WOLF CHELSEA BOOT - BLACK', '1700000', '/storage/product/11/PAHdyunQJC0Cgp2XUKbG.jpg', '<h2>TH&Ocirc;NG TIN SẢN PHẨM</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;u sắc: Đen l&aacute;ng</li>\r\n	<li>Chất liệu da: Da b&ograve; nhập khẩu</li>\r\n	<li>Chất liệu đế gi&agrave;y: Cao su cao cấp</li>\r\n	<li>L&oacute;t Trong: Vải canvas cao cấp, da d&ecirc;</li>\r\n	<li>Độ cao g&oacute;t: 3,5 cm</li>\r\n</ul>', 1, 14, '2021-12-04 20:11:29', '2021-12-04 20:11:29', 'z1972784085982_c27e2e4a9d228f20e595c0a5eaf394c8_6fa7becb5d2d41fdb7970df35e44bf5b_master.jpg', NULL, NULL, 'https://product.hstatic.net/200000033444/product/chelsea_thum_7dce129297a944b4a39fc9880726865c_master.jpg'),
(14, 'ÁO SƠ MI TAY NGẮN REGULAR FIT GENI', '230000', '/storage/product/1/flltXWtrDl5zMm2YjCVt.jpg', '<p>ko</p>', 1, 12, '2021-09-20 00:36:56', '2021-09-20 00:50:49', 'DSC00035-Edit-compressed-600x600.jpg', NULL, NULL, 'http://192.168.1.8:8000/storage/product/1/flltXWtrDl5zMm2YjCVt.jpg'),
(15, 'Bộ Tạ Tập Tay Đa Năng Điều Chỉnh 2 in 1 Kết Hợp Tạ Đẩy (40kg)', '799000', '/storage/product/1/vyCczllWEqcwMrFh5WA6.jpg', '<p>M&ocirc; Tả Sản Phẩm</p>\r\n\r\n<p>Chất liệu b&aacute;nh tạ; Nhựa đen ABS chịu lực cao cấp. Tay cầm v&agrave; thanh nối được l&agrave;m từ th&eacute;p chống gỉ kết hợp nhựa ABS chịu lực cực cao. Bộ tạ tay 40kg bao gồm: Tạ miếng nhựa 3kg - 8 miếng ; 2,5kg - 4 miếng &amp; 1,25kg - 4 miếng Với đ&ocirc;̣ b&ecirc;̀ cao, đ&aacute;p ứng mọi nhu cầu tập luyện của bạn.Ngo&agrave;i ra tạ c&ograve;n được thiết kế đẹp mắt, đ&ograve;n tạ cầm nắm chắc chắn gi&uacute;p bạn y&ecirc;n t&acirc;m tập luyện. Tạ c&oacute; thể th&aacute;o lắp dễ d&agrave;ng để tăng hoặc giảm c&acirc;n nặng ph&ugrave; hợp nhiều b&agrave;i tập kh&aacute;c nhau. Đa dạng c&aacute;c b&agrave;i tập kh&aacute;c nhau l&ecirc;n từng v&ugrave;ng cơ như: cơ tay,cơ ngực,vai...</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chi tiết về sản phẩm bộ tạ tập tay 40kg đa năng.</strong><br />\r\n- Chất liệu b&aacute;nh tạ; Nhựa đen ABS chịu lực cao cấp.<br />\r\n- Tay cầm v&agrave; thanh nối được l&agrave;m từ th&eacute;p chống gỉ kết hợp nhựa ABS chịu lực cực cao.<br />\r\n-&nbsp;<strong>Bộ tạ tay</strong>&nbsp;40kg bao gồm: Tạ miếng nhựa 3kg - 8 miếng ; 2,5kg - 4 miếng &amp; 1,25kg - 4 miếng.</p>\r\n\r\n<p><img alt=\"Bộ tạ tay đa năng điều chỉnh 40kg\" src=\"https://salt.tikicdn.com/ts/tmp/b6/68/61/cf6bebd2c8eb80956f45c5a499de969d.jpg\" /></p>\r\n\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/b0/7e/0a/65559e9fedbdb0883d702e7315bf4e0a.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Với đ&ocirc;̣ b&ecirc;̀ cao, đ&aacute;p ứng mọi nhu cầu tập luyện của bạn.Ngo&agrave;i ra tạ c&ograve;n được thiết kế đẹp mắt, đ&ograve;n tạ cầm nắm chắc chắn gi&uacute;p bạn y&ecirc;n t&acirc;m tập luyện.<br />\r\n-&nbsp;<strong>Bộ tạ tập tay</strong>&nbsp;n&agrave;y c&oacute; thể th&aacute;o lắp dễ d&agrave;ng để tăng hoặc giảm c&acirc;n nặng ph&ugrave; hợp nhiều b&agrave;i tập kh&aacute;c nhau.<br />\r\n- Đa dạng c&aacute;c b&agrave;i tập kh&aacute;c nhau l&ecirc;n từng v&ugrave;ng cơ như: cơ tay,cơ ngực,</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/63/c2/83/7aa11517c4eebe3e59b57a38b0167f09.jpg\" /></p>', 1, 23, '2021-11-15 19:59:22', '2021-11-18 08:06:06', '5716455231c2da297d43b0e7ef96d0d5.jpg.jpg', NULL, NULL, 'https://salt.tikicdn.com/cache/400x400/ts/product/b6/68/61/5716455231c2da297d43b0e7ef96d0d5.jpg.webp'),
(16, 'Tã Quần Bobby - Đệm Lưng Thấm Mồ Hôi XL96 (96 Miếng)', '615000', '/storage/product/1/toGPMCD5yj9zNomFFihL.jpg', '<p>C&ocirc;ng nghệ Unicharm độc quyền, chất liệu &ecirc;m &aacute;i, dịu nhẹ cho da Bề mặt dạng s&oacute;ng thấm h&uacute;t si&ecirc;u tốc Thun lưng co gi&atilde;n Soft - Fit co gi&atilde;n linh hoạt Bao b&igrave; sản phẩm c&oacute; thể thay đổi t&ugrave;y theo đợt nhập h&agrave;ng</p>\r\n\r\n<p><img alt=\"Tã Quần Bobby - Đệm Lưng Thấm Mồ Hôi XL96 (96  Miếng)\" src=\"https://salt.tikicdn.com/ts/tmp/8c/a3/8c/775dd3ae77ba5aca3bbb6fc5a5cd5321.jpg\" style=\"height:2116px; width:750px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>T&atilde; Quần Bobby - Đệm Lưng Thấm Mồ H&ocirc;i</strong>&nbsp;l&agrave; sản phẩm mới trong c&aacute;c d&ograve;ng sản phẩm của Bobby, chất liệu mềm mại, an to&agrave;n c&ugrave;ng độ thấm h&uacute;t, tho&aacute;ng kh&iacute; tốt lu&ocirc;n l&agrave; những ti&ecirc;u ch&iacute; được c&aacute;c mẹ ưu ti&ecirc;n h&agrave;ng đầu mỗi khi đi lựa chọn bỉm, t&atilde; cho b&eacute;.</li>\r\n	<li>T&atilde; quần được sản xuất dưới c&ocirc;ng nghệ Unicharm độc quyền, sử dụng chất liệu &ecirc;m &aacute;i, dịu nhẹ cho da. Cấu tạo bề mặt dạng s&oacute;ng gi&uacute;p thấm h&uacute;t si&ecirc;u tốc đồng thời hạn chế tiếp x&uacute;c giữa da với chất thải, cho da b&eacute; lu&ocirc;n kh&ocirc; tho&aacute;ng, sạch sẽ.</li>\r\n	<li>Thun lưng được thiết kế co gi&atilde;n linh hoạt vừa vặn theo từng cử động của b&eacute; gi&uacute;p ngăn tr&agrave;n ph&iacute;a lưng v&agrave; mang lại cho b&eacute; cảm gi&aacute;c thoải m&aacute;i, kh&ocirc;ng bị g&ograve; b&oacute;, kh&oacute; chịu khi mẹ mặc t&atilde; cho b&eacute;.</li>\r\n	<li>M&agrave;ng đ&aacute;y tho&aacute;t ẩm gi&uacute;p lưu chuyển kh&ocirc;ng kh&iacute; b&ecirc;n trong t&atilde;, đẩy nhanh kh&iacute; n&oacute;ng ẩm ra b&ecirc;n ngo&agrave;i, cho da b&eacute; h&ocirc; hấp tự nhi&ecirc;n, đem lại cảm gi&aacute;c dễ chịu tuyệt đối cho b&eacute; chơi ngoan cả ng&agrave;y, đồng thời kh&aacute;ng hăm hiệu quả hơn.</li>\r\n	<li>Bỉm Bobby c&oacute; chỉ thị ướt gi&uacute;p mẹ biết được thời điểm cần thay t&atilde;. Khi t&atilde; đầy, m&agrave;u ở đ&aacute;y sẽ chuyển sang m&agrave;u xanh đậm. Mẹ chỉ cần lưu &yacute; quan s&aacute;t để thay t&atilde;, cho da b&eacute; lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; thoải m&aacute;i.</li>\r\n	<li>Dải băng d&iacute;nh cuốn ta sau khi sử dụng tiện lợi v&agrave; gi&uacute;p giữu vệ sinh sạch sẽ.</li>\r\n</ul>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 1, 24, '2021-11-15 20:02:56', '2021-11-18 08:05:58', 'b1237705e0dfa4e0fb913e874a3c2a45.jpg.jpg', NULL, NULL, 'https://salt.tikicdn.com/cache/400x400/ts/product/d0/2c/59/b1237705e0dfa4e0fb913e874a3c2a45.jpg.webp'),
(17, 'Giường gấp gọn YLF 2198 giường đơn loại to - Hàng chính hãng', '1900000', '/storage/product/1/8pGmBydPzTEWSY0z6vcj.jpg', '<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/e8/67/fc/97cf9651581ea10c75b130e767ceddc4.png\" style=\"height:750px; width:750px\" /><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/6a/a1/05/491b099b677a2227a8b44ddae6400f2d.png\" style=\"height:750px; width:750px\" /><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/26/38/5e/72ad501fc17648e8170cb91552fe4b80.png\" style=\"height:750px; width:750px\" /><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/5d/01/fd/b6668018855637f41348eb1decb3c83a.png\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/dc/5c/8d/18e434c6029a3fc37db22bf1f88625bc.png\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/ef/73/ea/7a47924fcdac00810e9457beac4d313f.png\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/d1/e8/59/37343bab722080778817bd0953bf5294.png\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/75/1e/8a/7c603d53f2116acdbc21b110846b1397.png\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/f3/33/9a/e27c3fb4d7f50cbe80d50dfe5d321638.png\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/22/45/0a/5798c1b63423930ff2251b3e0674b7c9.png\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 1, 7, '2021-11-15 20:06:54', '2021-11-15 20:06:54', '3988c190a733b0941b2df75321930985.png.jpg', NULL, NULL, 'https://salt.tikicdn.com/cache/400x400/ts/product/ef/73/ea/3988c190a733b0941b2df75321930985.png.webp'),
(18, 'Máy Vắt Cam Hafele GS-401 - Hàng Chính Hãng', '619000', '/storage/product/1/4r7bleRNGPCmqCUPfE9c.png', '<p>Vỏ ngo&agrave;i bằng th&eacute;p kh&ocirc;ng gỉ v&agrave; lưới lọc bằng nhựa Bộ phận c&oacute; thể th&aacute;o rời dễ d&agrave;ng vệ sinh Chức năng chống nhỏ giọt Thiết kế h&igrave;nh trụ chống bụi x&acirc;m nhập &Iacute;t tiếng ồn khi vận h&agrave;nh Ch&acirc;n cao su chống trượt</p>\r\n\r\n<p>Tốc độ quay vắt ổn định</p>\r\n\r\n<p><strong>M&aacute;y Vắt Cam Hafele GS-401</strong>&nbsp;sử dụng điện 220 - 240V/50 - 60Hz nhằm đảm bảo được c&ocirc;ng suất hoạt động tối đa l&agrave; 100W, nhờ vậy m&agrave; tốc độ quay vắt sẽ ổn định hơn, gi&uacute;p bạn nhanh ch&oacute;ng c&oacute; được những cốc nước cam bổ dưỡng.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/37/14/82/08b6802bd71389f83f66737e0b4545dd.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Chức năng chống nhỏ giọt</p>\r\n\r\n<p>M&aacute;y vắt cam Hafele c&ograve;n c&oacute; chức năng đ&oacute;ng mở chống nhỏ giọt, đảm bảo vệ sinh hơn. V&igrave; vậy m&agrave; sản phẩm m&aacute;y vắt cam bằng điện n&agrave;y rất ph&ugrave; hợp d&ugrave;ng cho qu&aacute;n nước giải kh&aacute;t, qu&aacute;n c&agrave; ph&ecirc;.&nbsp;T&iacute;nh năng tự động ở đ&acirc;y ch&iacute;nh l&agrave; c&ocirc;ng tắc m&aacute;y &eacute;p: Tự động bật khi bạn &eacute;p tr&aacute;i c&acirc;y xuống v&agrave; phễu bắt đầu xoay. V&agrave; sẽ tắt ngay sau khi &aacute;p lực giảm tr&ecirc;n phễu. L&uacute;c n&agrave;y đ&acirc;y, phễu gạt b&atilde; ra ngo&agrave;i v&agrave; chỉ vắt nước cốt từ quả. Nước chảy qua bầu lọc v&agrave;o trong bầu đựng nước từ đ&oacute; sẽ chảy v&agrave;o b&ecirc;n trong cốc (ống m&aacute;ng phải mở). Bầu lọc giữ lại phần b&atilde; v&agrave; hạt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/7a/94/47/1b3c6c365d2b6e0e3ab10400bde957b7.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Dễ d&agrave;ng th&aacute;o rời</p>\r\n\r\n<p>Đặc biệt, c&aacute;c bộ phận của m&aacute;y c&oacute; thể th&aacute;o rời để dễ d&agrave;ng vệ sinh. M&aacute;y c&oacute; thiết kế h&igrave;nh trụ chống bụi x&acirc;m nhập, vỏ ngo&agrave;i bằng th&eacute;p kh&ocirc;ng gỉ v&agrave; lưới lọc bằng nhựa, nắp đậy trong suốt rất đẹp v&agrave; ấn tượng. Ch&acirc;n cao su chống trượt hiệu quả, khi vận h&agrave;nh m&aacute;y kh&ocirc;ng k&ecirc;u ồn, gi&uacute;p bạn an t&acirc;m hơn về tuổi thọ v&agrave; độ bền của m&aacute;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/b8/b1/ed/3d57532db4db4e44d9d0d66ee0d42905.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Hướng dẫn sử dụng m&aacute;y vắt cam Hafele</p>\r\n\r\n<p><strong>Vận h&agrave;nh</strong></p>\r\n\r\n<ul>\r\n	<li>1. Thiết lập m&aacute;y &eacute;p Hafele 535.43.089</li>\r\n	<li>2. Để thiết bị đứng tr&ecirc;n một bề mặt bằng phẳng dễ vệ sinh.</li>\r\n	<li>3. Th&aacute;o d&acirc;y nguồn từ khoang chứa d&acirc;y điện (b&ecirc;n dưới m&aacute;y &eacute;p).</li>\r\n	<li>4. Cắm ph&iacute;ch cắm v&agrave;o nguồn điện&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Chọn phụ kiện</strong></p>\r\n\r\n<ul>\r\n	<li>1. T&ugrave;y v&agrave;o k&iacute;ch thước quả, bạn c&oacute; thể sử dụng phễu lớn hoặc b&eacute;.</li>\r\n	<li>2. Phễu lớn ph&ugrave; hợp để &eacute;p cam qu&yacute;t nhỏ như bưởi, cam,</li>\r\n	<li>3. Phễu b&eacute; ph&ugrave; hợp để &eacute;p quả nhỏ</li>\r\n	<li>4. Lắp phễu &eacute;p nhỏ trực tiếp l&ecirc;n tr&ecirc;n trục dẫn động.</li>\r\n	<li>5. Nếu bạn muốn d&ugrave;ng phễu lớn, h&atilde;y lắp phễu b&eacute; l&ecirc;n tr&ecirc;n trục dẫn động. Sau đ&oacute; lắp phễu lớn tr&ecirc;n đỉnh phễu b&eacute;.</li>\r\n	<li>6. Khi lắp phễu v&agrave;o m&aacute;y, bạn phải đảm bảo rằng c&aacute;c nấc trong kẹp phễu lớn v&agrave;o đ&uacute;ng vị tr&iacute; tr&ecirc;n c&aacute;c c&aacute;nh khuấy tr&ecirc;n phễu b&eacute;.</li>\r\n	<li>7. Để t&aacute;ch c&aacute;c phễu, h&atilde;y k&eacute;o phễu lớn hướng l&ecirc;n v&agrave; ra ngo&agrave;i.</li>\r\n</ul>\r\n\r\n<p><strong>&Eacute;p</strong></p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Nếu bạn d&ugrave;ng lực &eacute;p qu&aacute; lớn l&ecirc;n phễu &eacute;p, th&igrave; động cơ c&oacute; thể bị kẹt.</p>\r\n\r\n<ul>\r\n	<li>1. Mở nắp chống bụi trong suốt ra.</li>\r\n	<li>2. Lắp phễu ph&ugrave; hợp l&ecirc;n tr&ecirc;n trục dẫn động.</li>\r\n	<li>3. Phễu &eacute;p ph&ugrave; hợp l&ecirc;n tr&ecirc;n trục dẫn động.\r\n	<ul>\r\n		<li>Nếu bạn muốn gom nước &eacute;p v&agrave;o trong b&igrave;nh đựng, h&atilde;y ấn ống m&aacute;ng hướng l&ecirc;n tr&ecirc;n để đ&oacute;ng n&oacute; lại.</li>\r\n		<li>Nếu bạn muốn lấy nước &eacute;p v&agrave;o cốc trực tiếp, h&atilde;y ấn ống m&aacute;ng hướng xuống dưới v&agrave; mở ống m&aacute;ng để cốc hứng b&ecirc;n dưới.</li>\r\n	</ul>\r\n	</li>\r\n	<li>4. Cắt đ&ocirc;i tr&aacute;i cam v&agrave; ấn đầu cắt của nửa quả l&ecirc;n phễu.</li>\r\n	<li>5. Để tối đa h&oacute;a lượng nước &eacute;p từ hoa quả, h&atilde;y ấn quả l&ecirc;n tr&ecirc;n phễu v&agrave;i lần.</li>\r\n</ul>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 1, 25, '2021-11-15 20:08:57', '2021-11-18 08:05:49', 'ee8548cdff33b49b781e0bf8f3653093.png', NULL, NULL, 'https://salt.tikicdn.com/cache/400x400/ts/product/72/11/6d/ee8548cdff33b49b781e0bf8f3653093.png.webp'),
(19, 'KEM DƯỠNG ẨM RAU MÁ GOODOC', '420000', '/storage/product/1/3g8CJRIyldxTKgB4KscB.jpg', '<p>Em về được &iacute;t kem rau m&aacute; goodoc mời chị em p&ecirc;n đơn, sp n&agrave;y đang rất hiếm h&agrave;ng , Dưỡng ẩm rau m&aacute; Goodndoc d&ugrave;ng th&iacute;ch lắm c&aacute;c b&aacute;c nha. Gi&aacute; tầm trung m&agrave; ngon 👍👍👍 🌸GOODNDOC CETELLA REPAIR CREAM🌸 (Kh&ocirc;i phục t&aacute;i tạo l&agrave;n da bị tổn thương , ,dưỡng chuy&ecirc;n biệt cho da k&iacute;ch ứng -vi&ecirc;m- mụn, dưỡng ẩm , hợp cả da kh&ocirc; da 🍁Bạn n&agrave;y đang được lựa chọn sử dụng rất nhiều trong hỗ trợ điều trị bệnh l&iacute; da v&agrave; trong quy tr&igrave;nh dưỡng da h&agrave;ng ng&agrave;y. Vậy n&ecirc;n đang ch&aacute;y h&agrave;ng l&agrave; c&oacute; l&iacute; do cả . -Trước hết l&agrave; dạng tr&igrave;nh b&agrave;y : h&atilde;ng gọi l&agrave; kem nhưng chất kem kh&ocirc;ng đặc ,giống gel hơn thấm nhanh kh&ocirc;ng nhờn r&iacute;t nặng mặt b&iacute; da nhưng khả năng dưỡng ẩm vẫn rất ok ( mấy bạn m&igrave;nh lấy cho d&ugrave;ng c&aacute;i n&agrave;y đều khen b&ocirc;i thấy thấm nhanh, da mịn ngủ 1 đ&ecirc;m dậy vẫn thấy ẩm kh&ocirc;ng thấy tr&oacute;c da ) vậy n&ecirc;n da dầu hay da kh&ocirc; vừa -đều d&ugrave;ng được -về m&ugrave;i hương : thơm nhẹ nh&agrave;ng ,chiết xuất rau m&aacute; nhưng ko c&oacute; m&ugrave;i rau m&aacute; :v mấy bạn gh&eacute;t rau m&aacute; cứ x&agrave;i tự nhi&ecirc;n - về t&aacute;c dụng : Đặc biệt nhất của bạn kem n&agrave;y l&agrave; khả năng t&aacute;i tạo phục hồi l&agrave;n da bị tổn thương :do tia uv , ho&aacute;c chất , c&aacute;c l&agrave;n da sau trị liệu-phi kim-lăn kim- sử dụng bha aha retinol, da nhiễm corticoid ...- hoặc đơn giản như da kh&ocirc; mất nước, da c&oacute; mụn ( t&aacute;c dụng n&agrave;y giống như t&aacute;c dụng của gel b5 laroche posay , bioderma t&iacute;m- l&agrave; 1 sự lựa chọn đ&aacute;ng c&acirc;n nhắc) vậy n&ecirc;n kem được lựa chọn để xử l&iacute; nhiều vấn đề kh&aacute;c nhau về da th&iacute;ch hợp cho người c&oacute; l&agrave;n da hư tổn 🌸Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng dưỡng ẩm, kh&ocirc;i phục h&agrave;ng r&agrave;o bảo vệ da chống l&atilde;o ho&aacute; :HA, glycerin, axit b&eacute;o , ceramid, niacinamid.... 🌸- một số chiết suất tự nhi&ecirc;n trong kem : tinh chất rau m&aacute; , chiết suất c&acirc;y ho&agrave;ng cầm ,chiết xuất hoa lưu ly,...Th&agrave;nh phần kh&aacute;c water, butylene Glycol, glycerin, Centella Asiatica Extract, Betaglucan, Squalane,Niacinamide, Beeswax,Asiaticosid, Asiatic Acid,Arginine, Allatoin, Panthenol,Ceramide, Adenosine, HA,.. 🍀Chỉ định: 🌱Dưỡng trắng s&aacute;ng, mịn m&agrave;ng hơn. 🌱Kh&ocirc;i phục, t&aacute;i tạo l&agrave;n da bị tổn thương do UV, h&oacute;a chất. 🌱Dưỡng da nhăn, l&atilde;o h&oacute;a, sam xạm m&agrave;u, da n&aacute;m, da ch&aacute;y nắng, da c&oacute; vấn đề (th&acirc;m mụn, sạm, ...). 🌱Dưỡng cho da c&oacute; vấn đề : mụn, k&iacute;ch ứng, da vi&ecirc;m&hellip; 🌱Dưỡng da kh&ocirc;, t&aacute;i tạo da. 🌱Dưỡng v&agrave; bảo vệ da khỏi t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i.</p>', 1, 27, '2021-11-30 20:51:47', '2021-12-01 06:30:30', 'c064bb0c406c286c87d9eed3039a0449.jpg', NULL, NULL, 'https://cf.shopee.vn/file/953812ad64f512eaf70f84a2f7feb0c4'),
(21, 'Huy Bui hhhhhhh', '10000', '/storage/product/1/72xaONKKMl2gNXSaPN5s.jpeg', '<p>ko</p>', 1, 9, '2022-01-08 07:00:48', '2022-01-08 07:01:11', 'hinh-nen-powerpoint-la-bac-ha_092721507.jpeg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/zybAQaSJjsbvE6XgSk2s.png', 1, '2021-09-09 20:33:06', '2021-09-09 20:33:06', '2-df22a294-3e31-4fea-be32-6aee6e19e5ea.png'),
(2, '/storage/product/1/PM8sxVDSjdixsmEbaf86.png', 1, '2021-09-09 20:33:06', '2021-09-09 20:33:06', '4-432e3cbb-34fa-4be8-863d-b9982e938adb.png'),
(4, '/storage/product/1/4IRWMEJ701Dm0KZ0rgec.png', 1, '2021-09-09 20:33:06', '2021-09-09 20:33:06', 'dirtycoins-cardigan-1-w-c5ec4e51-dbb3-44f3-8dac-7e47b525b84f.png'),
(5, '/storage/product/1/LzRv1ZULdLUIFENAF1dD.png', 2, '2021-09-09 20:33:06', '2021-09-09 20:33:06', 'dirtycoins-cardigan-w.png'),
(17, '/storage/product/1/j1eyIdwIOwzj8XLc3S0s.jpg', 8, '2021-09-14 07:45:15', '2021-09-14 07:45:15', 'boucw02zg0rt-1-0067-hinh-mat-sau-0.jpg'),
(18, '/storage/product/1/pzFPpaWlx6FwgEdGxMv8.jpg', 8, '2021-09-14 07:45:15', '2021-09-14 07:45:15', 'boucw02zg0rt-1-0067-hinh-mat-truoc-0-d2bfbf1c-7237-4ff7-ac66-fa1c3cb7f4fd (1).jpg'),
(19, '/storage/product/1/3HG0bvIx7faRsACtmi4P.png', 8, '2021-09-14 07:45:15', '2021-09-14 07:45:15', 'size-chart-paradox-2.png'),
(20, '/storage/product/1/QgjmBAr3SMdasdvIIdK3.jpg', 9, '2021-09-14 07:47:17', '2021-09-14 07:47:17', '035dca0f-2044-41d4-b153-cabd4f0953c8.jpg'),
(21, '/storage/product/1/RJRA1O6ARzSl8tkYHyGH.jpg', 9, '2021-09-14 07:47:17', '2021-09-14 07:47:17', 'e9445f7f-8b6c-4fed-98e5-26d183d5bbab.jpg'),
(22, '/storage/product/1/ht3DnfaYumwZGdQofgwa.jpg', 10, '2021-09-14 07:49:09', '2021-09-14 07:49:09', 'Nike-Air-jordan-3-White-Cement-650x650.jpg'),
(23, '/storage/product/1/KaNnpgE6Ojd8aHFAVn0p.jpg', 10, '2021-09-14 07:49:09', '2021-09-14 07:49:09', 'Nike-Air-jordan-3-White-Cement-rep-650x650.jpg'),
(24, '/storage/product/1/szJm7Kh8qKE6iDkZTxId.jpg', 10, '2021-09-14 07:49:09', '2021-09-14 07:49:09', 'Nike-Air-jordan-3-White-Cement-replica-650x650.jpg'),
(25, '/storage/product/1/wqcGGNso0ZbLxNy2AeNT.jpg', 7, '2021-09-14 07:50:24', '2021-09-14 07:50:24', 'iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg'),
(26, '/storage/product/1/jVmCygw0USjRFeqwRYyT.jpg', 7, '2021-09-14 07:50:24', '2021-09-14 07:50:24', 'vi-vn-iphone-12-pro-max-4.jpg'),
(27, '/storage/product/1/Ruxt5XsGzjTbKiY0wPzN.jpg', 7, '2021-09-14 07:50:24', '2021-09-14 07:50:24', 'vi-vn-iphone-12-pro-max-5.jpg'),
(28, '/storage/product/1/X366V3ox8zAoOIcLERfY.jpg', 7, '2021-09-14 07:50:24', '2021-09-14 07:50:24', 'vi-vn-iphone-12-pro-max-8.jpg'),
(33, '/storage/product/1/flXv1Xfpqsqsn1m1tExK.jpg', 11, '2021-09-14 20:08:36', '2021-09-14 20:08:36', 'ip13-pro_2.jpg'),
(34, '/storage/product/1/rzn9zLKhVqM2nAHnMcUT.jpg', 11, '2021-09-14 20:08:36', '2021-09-14 20:08:36', 'iphone_13-01 (1).jpg'),
(35, '/storage/product/1/8Rd4m8HFti3BKNQ54BCJ.jpg', 11, '2021-09-14 20:08:36', '2021-09-14 20:08:36', 'iphone_13-02.jpg'),
(36, '/storage/product/1/ec1NEVggP2dIenLo92Gj.jpg', 11, '2021-09-14 20:08:36', '2021-09-14 20:08:36', 'iphone_13-04.jpg'),
(37, '/storage/product/1/dviQfNPsypYe8bn5IyvT.jpg', 11, '2021-09-14 20:08:36', '2021-09-14 20:08:36', 'iphone-13_2.jpg'),
(38, '/storage/product/1/FTlvCq1n6kXJi3PLTenW.jpg', 12, '2021-09-20 00:32:36', '2021-09-20 00:32:36', 'studio_session-242_d4efd83517aa430aa95f52f5771f5289_master.jpg'),
(39, '/storage/product/1/KRmdHKIUcyxXhwOTQ8q6.jpg', 12, '2021-09-20 00:32:36', '2021-09-20 00:32:36', 'studio_session-261_ce2cfd33be7e46a7bfd9b1e9df1cfba8_master.jpg'),
(40, '/storage/product/1/2jfH6usTAfPRp2xKfdeq.jpg', 12, '2021-09-20 00:32:36', '2021-09-20 00:32:36', 'thumnail_826ff13f86fd43b88720879b49d819d1_master.jpg'),
(41, '/storage/product/1/EXn9F1CyyvifFKrXwX5e.jpg', 12, '2021-09-20 00:32:36', '2021-09-20 00:32:36', 'z2455944607250_5537aa77f66d2e5904a2c36927267f1c_73e34827bf6244619cce3df2a1506d27_master.jpg'),
(42, '/storage/product/1/IpGUalSXMZKjr7CofVnW.jpg', 13, '2021-09-20 00:34:12', '2021-09-20 00:34:12', '2_d994658b8cd04202b5be056958c053f2_master.jpg'),
(43, '/storage/product/1/ZVOYbqjPXBvq4c4WCs3m.jpg', 13, '2021-09-20 00:34:12', '2021-09-20 00:34:12', 'z1972784085982_c27e2e4a9d228f20e595c0a5eaf394c8_6fa7becb5d2d41fdb7970df35e44bf5b_master.jpg'),
(44, '/storage/product/1/2DxWUFGCnJ6yPyeocaHU.jpg', 13, '2021-09-20 00:34:12', '2021-09-20 00:34:12', 'z1972785375036_d8e0bd33c4691483eb9a37dfcb0c92a9_fa1b5663a9c9458f86550b1da92657f4_master.jpg'),
(45, '/storage/product/1/9CuTPGmsseva0UfdwzOO.jpg', 14, '2021-09-20 00:36:56', '2021-09-20 00:36:56', '2-compressed-600x600.jpg'),
(46, '/storage/product/1/QYhfqTOU0vmlRKusoS3v.jpg', 14, '2021-09-20 00:36:56', '2021-09-20 00:36:56', 'DSC00035a-Edit-compressed-600x600.jpg'),
(47, '/storage/product/1/TkR3sIPdQJROCVhe1SW7.jpg', 14, '2021-09-20 00:36:56', '2021-09-20 00:36:56', 'DSC00035-Edit-compressed-600x600.jpg'),
(48, '/storage/product/1/w7Va8U502PmH9OplTOLT.jpg', 14, '2021-09-20 00:36:56', '2021-09-20 00:36:56', 'HANH5033-compressed-600x600.jpg'),
(49, '/storage/product/1/ZdMUOTGkqtoU4dJySvf1.jpg', 15, '2021-11-15 19:59:22', '2021-11-15 19:59:22', '7ac42cbe62a138352aa1b1b79d14bae3.jpg.jpg'),
(50, '/storage/product/1/vAfajkEkNjMbBBliIEtm.jpg', 15, '2021-11-15 19:59:22', '2021-11-15 19:59:22', '361f1c01c220a55e2ec687af632afd60.jpg.jpg'),
(51, '/storage/product/1/XrPKauwPPBx2JX4TgN28.jpg', 15, '2021-11-15 19:59:22', '2021-11-15 19:59:22', '5716455231c2da297d43b0e7ef96d0d5.jpg.jpg'),
(52, '/storage/product/1/BOZwnK9yMAVefKsbhdRg.jpg', 15, '2021-11-15 19:59:22', '2021-11-15 19:59:22', 'b3984f6b6ab98d5b7a6699af40ac43d7.jpg.jpg'),
(53, '/storage/product/1/GqytYDYW67wuGkUBMqan.jpg', 16, '2021-11-15 20:02:56', '2021-11-15 20:02:56', '0ad66156d86024a50fc65342348f2256.jpg.jpg'),
(54, '/storage/product/1/VTpC2s2BLBz4G75OarvY.jpg', 16, '2021-11-15 20:02:56', '2021-11-15 20:02:56', '10eebc66207b3a2ff5dff41fdf3aab50.jpg.jpg'),
(55, '/storage/product/1/aqNC5QIklmyd0XiV3UJG.jpg', 16, '2021-11-15 20:02:56', '2021-11-15 20:02:56', '26a66aef28f74a05e1f15d9ec997ac4e.jpg.jpg'),
(56, '/storage/product/1/jqMXsROT47Uc8e7BKWFX.jpg', 16, '2021-11-15 20:02:56', '2021-11-15 20:02:56', 'b1237705e0dfa4e0fb913e874a3c2a45.jpg.jpg'),
(57, '/storage/product/1/abAM3BPPoxpqchlaqhjK.png', 17, '2021-11-15 20:06:54', '2021-11-15 20:06:54', '64c46bcf12702bcb26f036987d85c8e4.png'),
(58, '/storage/product/1/ooRUr9HlrKj9cxk9iqx6.jpg', 17, '2021-11-15 20:06:54', '2021-11-15 20:06:54', '3988c190a733b0941b2df75321930985.png.jpg'),
(59, '/storage/product/1/pM01sMQKEX031DewTQtB.jpg', 17, '2021-11-15 20:06:54', '2021-11-15 20:06:54', '05473fc1942eb48f640e86ab1abadc75.png.jpg'),
(60, '/storage/product/1/nQbgkpJqw7nEVO527cvC.png', 17, '2021-11-15 20:06:54', '2021-11-15 20:06:54', 'e9b0aee34a2eeb363be60d31e366860b.png'),
(61, '/storage/product/1/Jfi1lKlo14X8HqQ9lB2i.png', 18, '2021-11-15 20:08:57', '2021-11-15 20:08:57', '3d6177d4c678d763224a3b26ddd0d566.png'),
(62, '/storage/product/1/zQFV3XZMPoSSvdH6WDfp.png', 18, '2021-11-15 20:08:57', '2021-11-15 20:08:57', 'edc80e28fb34619d7cfb954585ee42ea.png'),
(63, '/storage/product/1/JusANvHB3LtAp7EDuMZU.png', 18, '2021-11-15 20:08:57', '2021-11-15 20:08:57', 'ee8548cdff33b49b781e0bf8f3653093.png'),
(64, '/storage/product/1/KYUC1KKBHZlZrAydaF1z.jpg', 19, '2021-11-30 20:51:47', '2021-11-30 20:51:47', '15d9a11f061f7376d070e4bdacc589e3.jpg'),
(65, '/storage/product/1/V70Nxz0DiRsPNqj2ENEm.jpg', 19, '2021-11-30 20:51:47', '2021-11-30 20:51:47', 'c064bb0c406c286c87d9eed3039a0449.jpg'),
(66, '/storage/product/1/N0z7saae1frctjuYDhzZ.jpg', 19, '2021-11-30 20:51:47', '2021-11-30 20:51:47', 'f67f4a14478fa99add752672fbd57e36.jpg'),
(67, '/storage/product/11/QnEzS6Vm5tqgq2zuyf30.jpg', 20, '2021-12-04 20:11:29', '2021-12-04 20:11:29', '2_d994658b8cd04202b5be056958c053f2_master.jpg'),
(68, '/storage/product/11/iHwetxTzX26iDcmpbhmk.jpg', 20, '2021-12-04 20:11:29', '2021-12-04 20:11:29', 'z1972784085982_c27e2e4a9d228f20e595c0a5eaf394c8_6fa7becb5d2d41fdb7970df35e44bf5b_master.jpg'),
(69, '/storage/product/11/4uNtaMU1yUMxD412N7Rp.jpg', 20, '2021-12-04 20:11:29', '2021-12-04 20:11:29', 'z1972785375036_d8e0bd33c4691483eb9a37dfcb0c92a9_fa1b5663a9c9458f86550b1da92657f4_master.jpg'),
(70, '/storage/product/1/RVxA3H2HzyaOThzWJnnT.jpeg', 21, '2022-01-08 07:00:49', '2022-01-08 07:00:49', 'hinh-nen-powerpoint-la-bac-ha_092721507.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(5, 3, 13, '2021-09-10 19:37:37', '2021-09-10 19:37:37'),
(6, 4, 11, '2021-09-10 19:37:57', '2021-09-10 19:37:57'),
(7, 5, 10, '2021-09-10 19:38:18', '2021-09-10 19:38:18'),
(8, 6, 12, '2021-09-10 19:38:56', '2021-09-10 19:38:56'),
(9, 1, 9, '2021-09-10 20:19:12', '2021-09-10 20:19:12'),
(10, 1, 10, '2021-09-10 20:19:12', '2021-09-10 20:19:12'),
(11, 2, 11, '2021-09-10 20:20:38', '2021-09-10 20:20:38'),
(12, 7, 3, '2021-09-14 02:07:19', '2021-09-14 02:07:19'),
(13, 7, 14, '2021-09-14 02:07:19', '2021-09-14 02:07:19'),
(14, 7, 15, '2021-09-14 02:07:19', '2021-09-14 02:07:19'),
(15, 7, 16, '2021-09-14 02:07:19', '2021-09-14 02:07:19'),
(16, 8, 17, '2021-09-14 07:43:25', '2021-09-14 07:43:25'),
(17, 8, 18, '2021-09-14 07:43:25', '2021-09-14 07:43:25'),
(18, 8, 19, '2021-09-14 07:43:25', '2021-09-14 07:43:25'),
(19, 9, 20, '2021-09-14 07:47:17', '2021-09-14 07:47:17'),
(20, 9, 18, '2021-09-14 07:47:17', '2021-09-14 07:47:17'),
(21, 9, 9, '2021-09-14 07:47:17', '2021-09-14 07:47:17'),
(22, 10, 21, '2021-09-14 07:49:09', '2021-09-14 07:49:09'),
(23, 10, 22, '2021-09-14 07:49:09', '2021-09-14 07:49:09'),
(24, 10, 23, '2021-09-14 07:49:09', '2021-09-14 07:49:09'),
(25, 11, 3, '2021-09-14 20:06:32', '2021-09-14 20:06:32'),
(26, 11, 14, '2021-09-14 20:06:32', '2021-09-14 20:06:32'),
(27, 11, 16, '2021-09-14 20:06:32', '2021-09-14 20:06:32'),
(28, 12, 24, '2021-09-20 00:32:36', '2021-09-20 00:32:36'),
(29, 12, 25, '2021-09-20 00:32:36', '2021-09-20 00:32:36'),
(30, 12, 26, '2021-09-20 00:32:36', '2021-09-20 00:32:36'),
(31, 13, 23, '2021-09-20 00:34:12', '2021-09-20 00:34:12'),
(32, 13, 27, '2021-09-20 00:34:12', '2021-09-20 00:34:12'),
(33, 13, 9, '2021-09-20 00:34:12', '2021-09-20 00:34:12'),
(34, 14, 20, '2021-09-20 00:36:56', '2021-09-20 00:36:56'),
(35, 14, 9, '2021-09-20 00:36:56', '2021-09-20 00:36:56'),
(36, 15, 28, '2021-11-15 19:59:22', '2021-11-15 19:59:22'),
(37, 15, 29, '2021-11-15 19:59:22', '2021-11-15 19:59:22'),
(38, 15, 30, '2021-11-15 19:59:22', '2021-11-15 19:59:22'),
(39, 16, 31, '2021-11-15 20:02:56', '2021-11-15 20:02:56'),
(40, 16, 32, '2021-11-15 20:02:56', '2021-11-15 20:02:56'),
(41, 16, 33, '2021-11-15 20:02:56', '2021-11-15 20:02:56'),
(42, 17, 34, '2021-11-15 20:06:54', '2021-11-15 20:06:54'),
(43, 17, 35, '2021-11-15 20:06:54', '2021-11-15 20:06:54'),
(44, 17, 36, '2021-11-15 20:06:54', '2021-11-15 20:06:54'),
(45, 18, 37, '2021-11-15 20:08:57', '2021-11-15 20:08:57'),
(46, 18, 38, '2021-11-15 20:08:57', '2021-11-15 20:08:57'),
(47, 19, 39, '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(48, 19, 40, '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(49, 19, 41, '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(50, 19, 13, '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(51, 19, 42, '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(52, 20, 43, '2021-12-04 20:11:29', '2021-12-04 20:11:29'),
(53, 20, 44, '2021-12-04 20:11:29', '2021-12-04 20:11:29'),
(54, 20, 45, '2021-12-04 20:11:29', '2021-12-04 20:11:29'),
(55, 21, 46, '2022-01-08 07:00:49', '2022-01-08 07:00:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL),
(4, 'content', 'Chỉnh sửa nội dung', NULL, NULL),
(5, 'Editer', 'Editer', '2021-09-02 21:02:12', '2021-09-02 21:17:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(4, 9, 2, NULL, NULL),
(6, 1, 1, NULL, NULL),
(8, 11, 2, NULL, NULL),
(9, 6, 2, NULL, NULL),
(10, 10, 2, NULL, NULL),
(11, 12, 2, NULL, NULL),
(12, 13, 2, NULL, NULL),
(13, 5, 3, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`, `deleted_at`) VALUES
(2, 'phone_contact1', 'aaaaaaa', '2021-08-30 02:40:37', '2021-08-30 02:40:37', 'Textarea', NULL),
(3, 'phone_contact22', 'aaaaaaaaa', '2021-08-30 02:45:39', '2021-08-30 02:48:22', 'Text', NULL),
(4, 'phone_contact', '0914170417', '2021-08-30 02:58:42', '2021-08-30 02:58:47', 'Text', '2021-08-30 02:58:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Điện thoại', 'aaaaabbbbbbbbbb', '/storage/slider/1/TKa4Z5j7FDEBSVms6Kvd.jpg', '2f82d8942505cd95e13f3fb2cf116181.jpg', '2021-08-28 20:55:23', '2021-09-07 07:24:44', '2021-09-07 07:24:44'),
(2, 'Nguyễn Nhật Khánh', 'a', '/storage/slider/1/9JO2F7WQBwD7cYg50VBA.jpg', '7c452d6bbf242165e6cee7442b3a2e36.jpg', '2021-08-28 21:35:30', '2021-08-28 21:39:52', '2021-08-28 21:39:52'),
(4, 'Nhật Khánh Nguyễn', 'aaaaaaaaaaa', '/storage/slider//tFrJ2MCezZMVEMCqZSWi.png', 'big-city-boy.png', '2021-09-05 01:53:18', '2021-09-07 07:24:40', '2021-09-07 07:24:40'),
(5, 'Slider 1', 'Slider 1', '/storage/slider/1/HHaNggpdE7cFmjxqkNCc.png', '829f9afc04c198196f03f16f7e4ed6f3_xxhdpi.png', '2021-09-07 07:30:27', '2021-09-08 07:51:17', '2021-09-08 07:51:17'),
(6, 'Slider 2', 'Slider 2', '/storage/slider/1/n0L65ghNsc6o4dnXM9Sx.png', '2cc679265809bd8cf905a7611a40446d_xxhdpi.png', '2021-09-07 07:30:42', '2021-09-08 07:51:15', '2021-09-08 07:51:15'),
(7, 'Slider 3', 'Slider 3', '/storage/slider/1/hynw3ZVhV34m7I6kdVTz.png', 'aff08d81aad49d3e7b2c22e1ad7b1290_xxhdpi.png', '2021-09-07 07:30:59', '2021-09-08 07:51:12', '2021-09-08 07:51:12'),
(8, 'Slide 1', 'Slide 1', '/storage/slider/1/ZJxXJp2Gn2Yg2vExzqE2.jpg', 'slide-img3.jpg', '2021-09-08 07:51:38', '2021-09-08 07:53:26', '2021-09-08 07:53:26'),
(9, 'Slide 2', 'Slide 2', '/storage/slider/1/VFzUnmKZHRmkb8yEsQud.png', 'slide-img4.png', '2021-09-08 07:52:15', '2021-11-15 20:18:02', '2021-11-15 20:18:02'),
(10, 'Slide 4', 'Slide 4', '/storage/slider/1/z1byVp6PD0kEzrPvDHon.png', 'slide-img2.png', '2021-09-08 07:54:03', '2021-11-15 20:10:50', '2021-11-15 20:10:50'),
(11, 'Slide 5', 'Slide 5', '/storage/slider/1/lKG1eXcd6d6bLgaMOCUH.png', 'slide-img5.png', '2021-09-08 07:54:20', '2021-11-15 20:10:46', '2021-11-15 20:10:46'),
(12, 'slider 22', 'ko', '/storage/slider/1/ADRP02l0sO4LMXrrvaCx.png', 'cccf42e3f88708bf3e612bf12ad4e54d.png', '2021-11-15 20:17:51', '2021-11-15 20:17:51', NULL),
(13, 'slider khanh 1', 'ko', '/storage/slider/1/TJ9Z0Xchcqv2tSgdWVqA.png', 'bd2cca6fa17db928f36873f1ccc04552.png', '2021-11-15 20:18:22', '2021-11-15 20:18:22', NULL),
(14, 'Slider khanh 2', 'ko', '/storage/slider/1/kzWrcuXu1eIznOIuxSGl.png', '6706ba1941438d6f6c9ce67ab1f811a2.png', '2021-11-15 20:18:36', '2021-11-15 20:18:36', NULL),
(15, 'slider khanh 3', 'ko', '/storage/slider/1/yQpWReSOeYpkbswjOXzF.png', 'dd31f02e4b1083cbe7b949530e7f76bd.png', '2021-11-15 20:18:51', '2021-11-15 20:18:51', NULL),
(16, 'slider khanh 4', 'ko', '/storage/slider/1/ngYp4CdAF6orplZQ5A8v.png', 'fdf238a5f832fe749dcbabf87b3a5551.png', '2021-11-15 20:19:14', '2021-11-15 20:19:14', NULL),
(17, 'slider khanh 5', 'ko', '/storage/slider/1/aGHkuBohc8niVQKo1i2T.png', 'fc89d10acbdd0ab9515781f6c004bebd.png', '2021-11-15 20:19:27', '2021-11-15 20:19:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'dien thoai', '2021-08-26 20:51:33', '2021-08-26 20:51:33'),
(2, 'phone', '2021-08-26 20:51:33', '2021-08-26 20:51:33'),
(3, 'dienthoai', '2021-08-26 20:52:47', '2021-08-26 20:52:47'),
(4, 'ipad', '2021-08-26 20:56:56', '2021-08-26 20:56:56'),
(5, 'may tinh bang', '2021-08-26 20:56:56', '2021-08-26 20:56:56'),
(6, 'shirt', '2021-08-27 07:33:12', '2021-08-27 07:33:12'),
(7, 'ao', '2021-08-27 07:36:31', '2021-08-27 07:36:31'),
(8, 'quanao', '2021-08-27 20:45:38', '2021-08-27 20:45:38'),
(9, 'thoi-trang', '2021-09-09 20:33:06', '2021-09-09 20:33:06'),
(10, 'dirty-coins', '2021-09-09 20:33:06', '2021-09-09 20:33:06'),
(11, 'thoi-trang-nu', '2021-09-09 20:33:06', '2021-09-09 20:33:06'),
(12, 'fashion', '2021-09-10 19:37:27', '2021-09-10 19:37:27'),
(13, 'women', '2021-09-10 19:37:37', '2021-09-10 19:37:37'),
(14, 'iphone', '2021-09-14 02:07:19', '2021-09-14 02:07:19'),
(15, 'iphone-12', '2021-09-14 02:07:19', '2021-09-14 02:07:19'),
(16, 'apple', '2021-09-14 02:07:19', '2021-09-14 02:07:19'),
(17, 'bomber', '2021-09-14 07:43:25', '2021-09-14 07:43:25'),
(18, 'unisex', '2021-09-14 07:43:25', '2021-09-14 07:43:25'),
(19, 'ao-khoac', '2021-09-14 07:43:25', '2021-09-14 07:43:25'),
(20, 'ao-so-mi', '2021-09-14 07:47:17', '2021-09-14 07:47:17'),
(21, 'nike', '2021-09-14 07:49:09', '2021-09-14 07:49:09'),
(22, 'giay', '2021-09-14 07:49:09', '2021-09-14 07:49:09'),
(23, 'giay-nam', '2021-09-14 07:49:09', '2021-09-14 07:49:09'),
(24, 'ao-nam', '2021-09-20 00:32:36', '2021-09-20 00:32:36'),
(25, 'the-wolf', '2021-09-20 00:32:36', '2021-09-20 00:32:36'),
(26, 'jacket', '2021-09-20 00:32:36', '2021-09-20 00:32:36'),
(27, 'shoes', '2021-09-20 00:34:12', '2021-09-20 00:34:12'),
(28, 'gym', '2021-11-15 19:59:22', '2021-11-15 19:59:22'),
(29, 'ta', '2021-11-15 19:59:22', '2021-11-15 19:59:22'),
(30, 'the-hinh', '2021-11-15 19:59:22', '2021-11-15 19:59:22'),
(31, 'bim', '2021-11-15 20:02:56', '2021-11-15 20:02:56'),
(32, 'me va be', '2021-11-15 20:02:56', '2021-11-15 20:02:56'),
(33, 'baby', '2021-11-15 20:02:56', '2021-11-15 20:02:56'),
(34, 'giuong', '2021-11-15 20:06:54', '2021-11-15 20:06:54'),
(35, 'nha cua', '2021-11-15 20:06:54', '2021-11-15 20:06:54'),
(36, 'giuong gap gon', '2021-11-15 20:06:54', '2021-11-15 20:06:54'),
(37, 'nha-cua', '2021-11-15 20:08:57', '2021-11-15 20:08:57'),
(38, 'may-ep', '2021-11-15 20:08:57', '2021-11-15 20:08:57'),
(39, 'kem duong', '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(40, 'lam dep', '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(41, 'cream', '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(42, 'phu nu', '2021-11-30 20:51:47', '2021-11-30 20:51:47'),
(43, 'giay tay', '2021-12-04 20:11:29', '2021-12-04 20:11:29'),
(44, 'giay nam', '2021-12-04 20:11:29', '2021-12-04 20:11:29'),
(45, 'thoi trang nam', '2021-12-04 20:11:29', '2021-12-04 20:11:29'),
(46, 'hhhhh', '2022-01-08 07:00:49', '2022-01-08 07:00:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `address`, `phone_number`) VALUES
(1, 'Nguyễn Nhật Khánh', 'khanhgiolinh@gmail.com', NULL, '$2y$10$gn.jyVngZxMNRsnyD75fxOCy6ZQEZWYRBT0FUaJ5RN34c3GrJ79Z6', 'GMVKtViGqJSEiesiljbxJlXCIKkfGa3W6fTICU92iP0BUmero2EnpsHSdNWg', NULL, '2021-12-28 19:53:23', NULL, '67 Bùi Thị Xuân Hải Châu Đà Nẵng', '0914170417'),
(14, 'Huy Bui', 'huyb0709@gmail.com', NULL, '$2y$10$0TBhbL7Lg6p/eU8p7zEGs.lW3E88tv0hT5KwKEu8uqkffr8RDigGW', NULL, '2022-01-02 04:10:39', '2022-01-08 07:35:41', NULL, '30 Phần Lăng 5', '0765530742'),
(15, 'Test 123', 'test123@gmail.com', NULL, '$2y$10$ncuvNkC.aXP76iX3Q0kM0OCjIyAwPPcIt35CcynCVsfkG8sORG0vO', NULL, '2022-02-24 20:42:17', '2022-02-24 20:42:17', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_images`
--
ALTER TABLE `comment_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comment_images`
--
ALTER TABLE `comment_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
