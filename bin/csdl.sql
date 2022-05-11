-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 04, 2021 lúc 01:31 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giatien` float DEFAULT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `ten`, `giatien`, `anh`) VALUES
(24, 2, 'CPU Intel Pentium G5400', 1469400, 'templates/web/images/collection-trending-cpu-items/g5400.jpg'),
(24, 3, 'CPU Intel I3-9100f 9th GEN', 3044820, 'templates/web/images/collection-trending-cpu-items/i3-9100f.jpg'),
(24, 4, 'CPU Intel I5-10400 9th GEN', 2551910, 'templates/web/images/collection-trending-cpu-items/i5-10400.jpg'),
(24, 16, 'Card màn hình Galax RTX 2080ti', 2791150, 'templates/web/images/collection-trending-Vga-items/galax-rtx-2080ti.jpg'),
(25, 11, 'Mainboard Gigabyte A320M S2', 3646580, 'templates/web/images/collection-treding-mainboard-items/gigabyte_a320m_s2h-a.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `parent_id`) VALUES
(1, 'Main Board - Bo mạch chủ', 0),
(0, 'CPU - Bộ vi xử lí', 0),
(3, 'Bộ nhớ RAM', 0),
(2, 'VGA - Card màn hình', 0),
(4, 'Ổ cứng', 0),
(60, 'PSU - Nguồn máy tính', 0),
(101, 'Case - Vỏ máy tính', 0),
(5, 'Tai Nghe', 0),
(6, 'Bàn Phím', 0),
(7, 'Chuột', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `transaction_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`transaction_id`, `product_id`, `qty`, `amount`, `time`, `status`, `img`) VALUES
(1, 2, 2, 1469396, '20/11/2020', 'none', 'templates/web/images/collection-trending-cpu-items/g5400.jpg'),
(1, 5, 2, 4970784, '20/11/2020', 'none', 'templates/web/images/collection-trending-cpu-items/g5400.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(255) DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(255) NOT NULL DEFAULT 0,
  `qty` int(255) NOT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `price`, `qty`, `content`, `discount`, `image_link`) VALUES
(1, 0, 'CPU Intel I8-8400 8th GEN', 1282988, 29, 'sửa nè', 0, 'templates/web/images/collection-trending-cpu-items/cpu-i5-8400.jpg'),
(2, 0, 'CPU Intel Pentium G5400', 1469396, 329, 'sửa luôn nè', 0, 'templates/web/images/collection-trending-cpu-items/g5400.jpg'),
(3, 0, 'CPU Intel I3-9100f 9th GEN', 3044821, 391, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/i3-9100f.jpg'),
(4, 0, 'CPU Intel I5-10400 9th GEN', 2551909, 486, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/i5-10400.jpg'),
(5, 0, 'CPU AMD Ryzen 3', 4970784, 459, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/ryzen3_3.jpg'),
(6, 0, 'CPU AMD Ryzen 5 ', 2866407, 490, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/ryzen5.jpg'),
(7, 0, 'CPU Intel I5-8400 8th GEN', 3588935, 440, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/cpu-i5-8400.jpg'),
(9, 1, 'MainBoard Asus ROG Strix B460G', 2612313, 167, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/asus_rog_strix_b460g_gaming-a.jpg'),
(10, 1, 'Mainboard Asus ROG Strix X570 Gaming', 1300268, 478, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/asus_rog_strix_x570_f_gaming-a.jpg'),
(11, 1, 'Mainboard Gigabyte A320M S2', 3646582, 3, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_a320m_s2h-a.jpg'),
(12, 1, 'Mainboard Gigabyte B365M Gaming', 4394264, 292, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_b365m_gaming_hd-a.jpg'),
(13, 1, 'Mainboard Gigabyte H410M', 2131898, 456, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_h410m-a.jpg'),
(14, 1, 'Mainboard Gigabyte X570 X', 696101, 441, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_x570_gaming_x-a.jpg'),
(15, 1, 'Mainboard Gigabyte Z400 GamingX', 341286, 458, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_z490_GamingX-a.jpg'),
(16, 2, 'Card màn hình Galax RTX 2080ti', 2791146, 327, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/galax-rtx-2080ti.jpg'),
(17, 2, 'Card màn hình Geforce RTX 2080ti', 3731604, 292, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/geforce_rtx_2080ti.jpg'),
(18, 2, 'Card màn hình Gigatbyte RX570', 1626684, 264, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/gigabyte-rx570.jpg'),
(19, 2, 'Card màn hình Leadtek Quadro', 1905442, 442, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/leadtek_quadro.jpg'),
(20, 2, 'Card màn hình MSI GTX 1660Ti', 1460642, 265, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/msi_gtx1650.jpg'),
(22, 3, 'Ram Corsair Vengeance LPX 16GB', 3468524, 439, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/corsair_vengeance_lpx_16gb.jpg'),
(23, 3, 'Ram G Skill 4GB', 2311591, 41, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/g.skill_4gb.jpg'),
(24, 3, 'Ram G Skill Aegis 8GB', 2957593, 364, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/g.skill_aegis_8gb.jpg'),
(25, 3, 'Ram G Skill Ripjaws V 8GB', 4827274, 446, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/g.skill_ripjaws_v_8gb.jpg'),
(26, 3, 'Ram Kington Hyper Fury 16GB', 3331214, 385, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/kingston_hyperx_fury_rgb_16gb.jpg'),
(28, 4, 'SSD Gigabyte 128GB M2', 4871597, 388, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/gigabyte_128g_m.2.jpg'),
(29, 4, 'SSD Gigabyte 480GB M2', 4486758, 328, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/gigabyte_480gb_sata.jpg'),
(30, 4, 'SSD Kingston 256GB Sata', 2868521, 476, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/kingston_256gb_sata.jpg'),
(31, 4, 'SSD Samsung 970 1TB', 3731949, 180, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/samsung970_1TB.jpg'),
(32, 4, 'SSD Seagate Barracuda120 500GB', 490754, 269, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/seagate_barracuda120_500gb.jpg'),
(33, 4, 'SSD Samsung M2 Sata', 2257815, 156, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/ssd_samsung_m.2_sata.jpg'),
(34, 4, 'SSD WB Blue 250GB', 4832284, 111, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/wd_blue_250gb.jpg'),
(35, 4, 'SSD WB Green 240GB', 3141447, 112, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/wd_green_240gb.jpg'),
(36, 5, 'Tai nghe Asus ROG DELTA ', 2402939, 269, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Asus ROG DELTA.jpg'),
(37, 6, 'Bàn Phím Cơ E-DRA EK387 Dream Pink ', 2862988, 412, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Bàn Phím Cơ E-DRA EK387 Dream Pink.jpg'),
(38, 7, 'Chuột Asus ROG Chakram ', 3209802, 205, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items-page2/unnamed (34).webp'),
(39, 6, 'Bàn phím Newmen T260 ', 1017344, 338, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Bàn phím Newmen T260.jpg'),
(40, 7, 'Chuột Corsair DarkCore RGB Pro SE Wireless', 4867705, 365, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Chuột Corsair DarkCore RGB Pro SE Wireless.jpg'),
(41, 5, 'Tai nghe SteelSeries Arctis Pro Wireless', 4908656, 57, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Tai nghe SteelSeries Arctis Pro Wireless.jpg'),
(42, 7, 'Chuột Razer Basilisk Ultimate', 3045337, 488, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Chuột Razer Basilisk Ultimate.jpg'),
(43, 5, 'Tai nghe Asus ROG Cetra Core', 2005796, 226, 'khong co gi', 0, 'templates/web/images/collection-hot-items/Tai nghe Asus ROG Cetra Core.jpg'),
(45, 4, 'SSD Samsung 970 1TB', 4936416, 285, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/samsung970_1TB.jpg'),
(46, 5, 'Tai nghe RAZER HAMMERHEAD PRO V2', 2305472, 367, 'khong co gi', 0, 'templates/web/images/collection-hot-items/TAI NGHE RAZER HAMMERHEAD PRO V2.jpg'),
(48, 7, 'Chuột Akko Hamster Wireless', 1602886, 38, 'khong co gi', 0, 'templates/web/images/collection-hot-items/Chuột Akko Hamster Wireless.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `amount`, `payment`, `message`) VALUES
(1, 0, 24, 'Tô Thảo Nhả', 'thiensubanphuc000@gmail.com', '0398991023', '12880360.0000', 'Nhả', 'none');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `username`, `password`, `role`) VALUES
(25, 'Đoàn Quang Anh', 'anhdq.1999@gmail.com', '000021122', NULL, 'anhquang', '123', 1),
(24, 'Tô Thảo Nhả', 'thiensubanphuc000@gmail.com', '0398991023', NULL, 'nha', '123', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`product_id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`transaction_id`,`product_id`) USING BTREE,
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
