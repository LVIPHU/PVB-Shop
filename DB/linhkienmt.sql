-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2021 lúc 11:08 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `linhkienmt`
--
CREATE DATABASE IF NOT EXISTS `linhkienmt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `linhkienmt`;

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
(24, 1, 'CPU Intel I8-8400 8th GEN', 1282990, 'templates/web/images/collection-trending-cpu-items/cpu-i5-8400.jpg'),
(24, 3, 'CPU Intel I3-9100f 9th GEN', 3044820, 'templates/web/images/collection-trending-cpu-items/i3-9100f.jpg'),
(24, 4, 'CPU Intel I5-10400 9th GEN', 2551910, 'templates/web/images/collection-trending-cpu-items/i5-10400.jpg'),
(24, 5, 'CPU AMD Ryzen 3', 4970780, 'templates/web/images/collection-trending-cpu-items/ryzen3_3.jpg'),
(24, 37, 'Bàn Phím Cơ E-DRA EK387 Dream Pink ', 2862990, 'templates/web/images/collection-trending-gear-items/Bàn Phím Cơ E-DRA EK387 Dream Pink.jpg'),
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
(3, 'Bộ nhớ RAM', 0),
(2, 'VGA - Card màn hình', 0),
(4, 'Ổ cứng', 0),
(9, 'PSU - Nguồn máy tính', 0),
(8, 'Case - Vỏ máy tính', 0),
(5, 'Tai Nghe', 0),
(6, 'Bàn Phím', 0),
(7, 'Chuột', 0),
(0, 'CPU - Bộ Vi Xử Lý', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `transaction_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`transaction_id`, `product_id`, `qty`, `amount`, `date`, `status`, `img`) VALUES
(1, 2, 2, 1469396, '2021-03-04', 'none', 'templates/web/images/collection-trending-cpu-items/g5400.jpg'),
(1, 5, 2, 4970784, '2021-03-04', 'none', 'templates/web/images/collection-trending-cpu-items/g5400.jpg'),
(2, 2, 2, 3044821, '2021-03-04', 'none', 'none'),
(3, 1, 1, 1282988, '2021-03-04', 'none', 'none'),
(87, 2, 1, 1469400, '2021-12-05', 'none', 'templates/web/images/collection-trending-cpu-items/g5400.jpg'),
(87, 4, 1, 2551910, '2021-12-05', 'none', 'templates/web/images/collection-trending-cpu-items/i5-10400.jpg');

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
(1, 0, 'CPU Intel I8-8400 8th GEN', 1282988, 10001, '', 0, 'templates/web/images/collection-trending-cpu-items/cpu-i5-8400.jpg'),
(2, 0, 'CPU Intel Pentium G5400', 1469396, 329, '', 0, 'templates/web/images/collection-trending-cpu-items/g5400.jpg'),
(3, 0, 'CPU Intel I3-9100f 9th GEN', 3044821, 391, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/i3-9100f.jpg'),
(4, 0, 'CPU Intel I5-10400 9th GEN', 2551909, 486, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/i5-10400.jpg'),
(5, 0, 'CPU AMD Ryzen 3', 4970784, 459, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/ryzen3_3.jpg'),
(6, 0, 'CPU AMD Ryzen 5 ', 2866407, 490, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/ryzen5.jpg'),
(7, 0, 'CPU Intel I5-8400 8th GEN', 3588935, 440, 'khong co gi', 0, 'templates/web/images/collection-trending-cpu-items/cpu-i5-8400.jpg'),
(9, 1, 'MainBoard Asus ROG Strix B460G', 2612313, 167, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/asus_rog_strix_b460g_gaming-a.jpg'),
(10, 1, 'Mainboard Asus ROG Strix X570 Gaming', 1300268, 478, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/asus_rog_strix_x570_f_gaming-a.jpg'),
(11, 1, 'Mainboard Gigabyte A320M S2', 3646582, 0, '', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_a320m_s2h-a.jpg'),
(12, 1, 'Mainboard Gigabyte B365M Gaming', 4394264, 292, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_b365m_gaming_hd-a.jpg'),
(13, 1, 'Mainboard Gigabyte H410M', 2131898, 456, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_h410m-a.jpg'),
(14, 1, 'Mainboard Gigabyte X570 X', 696101, 441, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_x570_gaming_x-a.jpg'),
(15, 1, 'Mainboard Gigabyte Z400 GamingX', 341286, 458, 'khong co gi', 0, 'templates/web/images/collection-treding-mainboard-items/gigabyte_z490_GamingX-a.jpg'),
(16, 2, 'Card màn hình Galax RTX 2080ti', 2791146, 327, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/galax-rtx-2080ti.jpg'),
(17, 2, 'Card màn hình Geforce RTX 2080ti', 3731604, 292, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/geforce_rtx_2080ti.jpg'),
(18, 2, 'Card màn hình Gigatbyte RX570', 1626684, 0, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/gigabyte-rx570.jpg'),
(19, 2, 'Card màn hình Leadtek Quadro', 1905442, 442, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/leadtek_quadro.jpg'),
(20, 2, 'Card màn hình MSI GTX 1660Ti', 3000000, 265, 'khong co gi', 0, 'templates/web/images/collection-trending-Vga-items/msi_gtx1650.jpg'),
(22, 3, 'Ram Corsair Vengeance LPX 16GB', 3468524, 439, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/corsair_vengeance_lpx_16gb.jpg'),
(23, 3, 'Ram G Skill 4GB', 2311591, 0, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/g.skill_4gb.jpg'),
(24, 3, 'Ram G Skill Aegis 8GB', 2957593, 364, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/g.skill_aegis_8gb.jpg'),
(25, 3, 'Ram G Skill Ripjaws V 8GB', 4827274, 446, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/g.skill_ripjaws_v_8gb.jpg'),
(26, 3, 'Ram Kington Hyper Fury 16GB', 3331214, 385, 'khong co gi', 0, 'templates/web/images/collection-trending-ram-items/kingston_hyperx_fury_rgb_16gb.jpg'),
(28, 4, 'SSD Gigabyte 128GB M2', 4871597, 388, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/gigabyte_128g_m.2.jpg'),
(29, 4, 'SSD Gigabyte 480GB M2', 4486758, 328, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/gigabyte_480gb_sata.jpg'),
(30, 4, 'SSD Kingston 256GB Sata', 2868521, 476, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/kingston_256gb_sata.jpg'),
(31, 4, 'SSD Samsung 970 1TB', 3731949, 180, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/samsung970_1TB.jpg'),
(32, 4, 'SSD Seagate Barracuda120 500GB', 490754, 269, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/seagate_barracuda120_500gb.jpg'),
(34, 4, 'SSD WB Blue 250GB', 4832284, 0, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/wd_blue_250gb.jpg'),
(35, 4, 'SSD WB Green 240GB', 3141447, 112, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/wd_green_240gb.jpg'),
(36, 5, 'Tai nghe Asus ROG DELTA ', 2402939, 269, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Asus ROG DELTA.jpg'),
(37, 6, 'Bàn Phím Cơ E-DRA EK387 Dream Pink ', 2862988, 412, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Bàn Phím Cơ E-DRA EK387 Dream Pink.jpg'),
(38, 7, 'Chuột Asus ROG Chakram ', 3209802, 205, 'khong co gi', 0, 'templates\\web\\images\\collection-trending-gear-items\\Chuột Asus ROG Chakram.jpg'),
(39, 6, 'Bàn phím Newmen T260 ', 1017344, 338, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Bàn phím Newmen T260.jpg'),
(40, 7, 'Chuột Corsair DarkCore RGB Pro SE Wireless', 4867705, 365, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Chuột Corsair DarkCore RGB Pro SE Wireless.jpg'),
(41, 5, 'Tai nghe SteelSeries Arctis Pro Wireless', 4908656, 0, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Tai nghe SteelSeries Arctis Pro Wireless.jpg'),
(42, 7, 'Chuột Razer Basilisk Ultimate', 3045337, 488, 'khong co gi', 0, 'templates/web/images/collection-trending-gear-items/Chuột Razer Basilisk Ultimate.jpg'),
(43, 5, 'Tai nghe Asus ROG Cetra Core', 2005796, 226, 'khong co gi', 0, 'templates/web/images/collection-hot-items/Tai nghe Asus ROG Cetra Core.jpg'),
(45, 4, 'SSD Samsung 970 1TB', 4936416, 285, 'khong co gi', 0, 'templates/web/images/collectiion-trending-ssd-items/samsung970_1TB.jpg'),
(46, 5, 'Tai nghe RAZER HAMMERHEAD PRO V2', 2305472, 367, 'khong co gi', 0, 'templates/web/images/collection-hot-items/TAI NGHE RAZER HAMMERHEAD PRO V2.jpg'),
(48, 7, 'Chuột Akko Hamster Wireless', 1602886, 0, 'khong co gi', 0, 'templates/web/images/collection-hot-items/Chuột Akko Hamster Wireless.jpg'),
(59, 0, 'CPU Intel I5-8400 8th GEN', 1282988, 100, '', 0, 'templates/web/images/collection-trending-cpu-items/cpu-i5-8400.jpg'),
(81, 8, 'Case ASUS ROG Strix Helios GX601 White Edition', 7890000, 100, '- Hỗ trợ mainboard: ATX, Micro-ATX, Mini-ITX, Extended-ATX\r\n- Khay mở rộng tối đa: 2 x 3.5\", 4 x 2.5\"\r\n- USB: 1 x USB Type C, 4 x USB 3.1\r\n- Quạt tặng kèm: 4 x 140 mm', 0, 'templates/web/images/case/Case ASUS ROG Strix Helios GX601 White Edition.jpg'),
(82, 8, 'Case Asus TUF Gaming GT501VC', 2790000, 100, '- Hỗ trợ mainboard: Mini-ITX, Micro-ATX, ATX, Extended-ATX\r\n- Khay mở rộng tối đa: 4 x 3.5\", 3 x 2.5\"\r\n- USB: , 2 x USB 3.1 Gen 1', 0, 'templates/web/images/case/Case Asus TUF Gaming GT501VC.jpg'),
(83, 8, 'Case Cooler Master Cosmos C700M', 1200000, 100, '4 x USB 3.0 / 1 x USB 3.1 Type C / 1 x Audio in out / 1 x Audio in', 0, 'templates/web/images/case/Case Cooler Master Cosmos C700M.jpg'),
(84, 8, 'Case Corsair 680X RGB TG', 6650000, 100, '- Hỗ trợ mainboard: ATX\r\n- Khay mở rộng tối đa: 3 x 3.5\", 4 x 2.5\"\r\n- USB: 1 x USB 3.1 Gen 2 Type C, 2 x USB 3.1\r\n- Quạt tặng kèm: 1 x 120 mm, 3 x 120 mm RGB', 0, 'templates/web/images/case/Case Corsair 680X RGB TG.jpg'),
(85, 8, 'Case MSI MPG SEKIRA 500G', 5700000, 100, '- Hỗ trợ mainboard: Mini-ITX, Micro-ATX, ATX, Extended-ATX\r\n- Khay mở rộng tối đa: 6 x 3.5\", 3 x 2.5\"\r\n- USB: 1 x USB Type C, 4 x USB 3.2\r\n- Quạt tặng kèm: 1 x 120 mm, 2 x 200 mm', 0, 'templates/web/images/case/Case MSI MPG SEKIRA 500G.png'),
(86, 8, 'Case Sama G4 Gaming', 570000, 100, 'Color: Black\r\nFront Ports: 2x USB2.0, 1x Mic., 1x Audio, 1x USB3.0\r\nDrive bays:  5.25\'\' x4, 3.5\'\'(Hidden) x6', 0, 'templates/web/images/case/Case Sama G4 Gaming.jpg'),
(87, 8, 'Case Xigmatek AQUARIUS S - ARTIC', 1800000, 100, '- Hỗ trợ mainboard: Micro-ATX, ATX, Mini-ITX\r\n- Khay mở rộng tối đa: 2 x 3.5\", 2 x 2.5\"\r\n- USB: , 1 x USB 3.0, 2 x USB 2.0', 0, 'templates/web/images/case/Case Xigmatek AQUARIUS S - ARTIC.jpg'),
(62, 6, 'Akko 3098 DS Matcha Red Bean', 1200000, 100, '- Bàn phím cơ\r\n- Kết nối: USB Type-C\r\n- Switch: Gateron\r\n- Phím chức năng: Có', 0, 'templates/web/images/keyboard/Akko 3098 DS Matcha Red Bean.jpg'),
(63, 6, 'ASUS ROG Strix Flare RGB Gaming', 4000000, 100, '- Bàn phím cơ\r\n- Kết nối USB 2.0\r\n- Kiểu switch Cherry MX Red\r\n- Phím chức năng Có', 0, 'templates/web/images/keyboard/ASUS ROG Strix Flare RGB Gaming.jpg'),
(64, 6, 'CORSAIR K70 MK.2 SE RGB MX', 4450000, 100, '- Bàn phím cơ\r\n- Kết nối USB 2.0\r\n- Kiểu switch Cherry MX Speed', 0, 'templates/web/images/keyboard/CORSAIR K70 MK.2 SE RGB MX.jpg'),
(65, 6, 'Logitech G913 TKL HARPY RGB Gaming', 4300000, 100, '- Bàn phím cơ\r\n- Kết nối: 2.4 GHz Wireless\r\n- Switch: GL Linear\r\n- Phím chức năng: Có', 0, 'templates/web/images/keyboard/Logitech G913 TKL HARPY RGB Gaming.jpg'),
(66, 6, 'Razer BlackWidow Elite', 4500000, 100, '- Bàn phím cơ\r\n- Kết nối USB 2.0\r\n- Kiểu switch Razer Green', 0, 'templates/web/images/keyboard/Razer BlackWidow Elite.png'),
(67, 6, 'Steelseries Apex Pro', 5000000, 100, '- Bàn phím cơ\r\n- Kết nối: USB\r\n- Switch: OmniPoint\r\n- Phím chức năng: Có', 0, 'templates/web/images/keyboard/Steelseries Apex Pro.png'),
(90, 9, 'Cooler Master MWE Gold V2 750 - 750W - 80 Plus Gold - Full Modular', 2700000, 100, '- Công suất: 750W\r\n- Chuẩn hiệu suất: 80 Plus Gold\r\n- Quạt: 1 x 120 mm', 0, 'templates/web/images/PSU/Cooler Master MWE Gold V2 750 - 750W - 80 Plus Gold - Full Modular.jpg'),
(91, 9, 'GOLDEN FIELD 600W - 80 Plus White', 1100000, 100, '- Công suất: 600W\r\n- Chuẩn hiệu suất: 80 Plus White\r\n- Quạt: 1 x 140 mm', 0, 'templates/web/images/PSU/GOLDEN FIELD 600W - 80 Plus White.jpg'),
(92, 9, 'CORSAIR RM1000x - 1000W - 80 Plus Gold - Full Modular', 4900000, 100, 'không có', 0, 'templates/web/images/PSU/CORSAIR RM1000x - 1000W - 80 Plus Gold - Full Modular.jpg'),
(93, 9, 'GIGABYTE AORUS P850W - 850W - 80 Plus Gold - Full Modular', 3800000, 100, '- Công suất: 850W\r\n- Chuẩn hiệu suất: 80 Plus Gold\r\n- Quạt: 1 x 135 mm', 0, 'templates/web/images/PSU/GIGABYTE AORUS P850W - 850W - 80 Plus Gold - Full Modular.jpg'),
(94, 9, 'AcBel 750 - 750W - 80 Plus', 1650000, 100, '- Công suất: 750W\r\n- Chuẩn hiệu suất: 80 Plus White\r\n- Quạt: 1 x 120 mm', 0, 'templates/web/images/PSU/AcBel 750 - 750W - 80 Plus.jpg'),
(95, 9, 'ASUS Rog Strix - 750W - 80 Plus Gold - Full Modular', 3900000, 100, '- Công suất: 750W\r\n- Chuẩn hiệu suất: 80 Plus Gold\r\n- Quạt: 1 x 135 mm', 0, 'templates/web/images/PSU/ASUS Rog Strix - 750W - 80 Plus Gold - Full Modular.jpg'),
(96, 9, 'MSI MPG A750GF 750W 80 Plus Gold - 750W - 80 Plus Gold - Full Modular', 3090000, 100, '- Công suất: 750W\r\n- Chuẩn hiệu suất: 80 Plus Gold\r\n- Quạt: 1 x 140 mm', 0, 'templates/web/images/PSU/MSI MPG A750GF 750W 80 Plus Gold - 750W - 80 Plus Gold - Full Modular.jpg'),
(54, 5, 'Asus Tuf Gaming H3', 850000, 100, '- Tai nghe Gaming TUF H3 - Driver ASUS Essence 50mm và công nghệ buồng kín cho âm thanh ấn tượng- Âm thanh vòm 7.1 giả lập hỗ trợ bởi Windows Sonic - Thiết kế gọn nhẹ, tạo sự thoải mái  - Gọng tai nghe bằng thép không gỉ cứng cáp giúp gia tăng độ bền- Tương thích nhiều nền tảng như PC, Mac, PS4, Nintendo Switch, Xbox One và điện thoại', 0, 'templates/web/images/headphone/Asus Tuf Gaming H3.png'),
(55, 5, 'Bluetooth Bose Headphone 700', 9999000, 100, '- Tai nghe khử tiếng ồn Bose headphones 700 \r\n- Trang bị hệ thống bốn microphone ưu việt \r\n- Thiết kế thoải mái, kết nối không dây với Bluetooth \r\n- Hệ thống cân bằng EQ âm thanh \r\n- Bose AR tăng cường âm thanh cho trải nghiệm ấn tượng', 0, 'templates/web/images/headphone/Bluetooth Bose Headphone 700.png'),
(56, 5, 'Over-ear Gaming Logitech G Pro Gen 2', 1589000, 100, 'không có', 0, 'templates/web/images/headphone/Over-ear Gaming Logitech G Pro Gen 2.png'),
(57, 5, 'Razer Kraken X Console Edition', 1400000, 100, '- Tai nghe Razer Kraken X  \r\n- Tai nghe siêu nhẹ với cảm giác đeo thoải mái  \r\n- Âm thanh rõ ràng, cân bằng  \r\n- Micro dẻo có thể uốn cong linh hoạt ', 0, 'templates/web/images/headphone/Razer Kraken X Console Edition.png'),
(97, 9, 'Nguồn máy tính AcBel Tora - 470W', 760000, 99, 'Acbel TORA 470W\r\n- Công suất: 470W\r\n- Hiệu suất: 78%\r\n- Chuẩn nguồn: ATX\r\n- Fan: 12cm\r\n- Cáp kết nối: 6 Sata - 1 ATA - 1 PCI-Ex (6+2) pin - 4+4 pin CPU - 24 pin Main', 0, 'templates/web/images/collection-trending-psu-items-page1/unnamed (31).webp'),
(98, 3, 'GSKILL TRIDENT Z RGB (8G DDR4 1x8G 3000)', 760000, 99, 'Ram Led RGB', 0, 'templates/web/images/collection-shopping-items/collection-top-sale/GSKILL TRIDENT Z RGB(8G DDR4 1x8G 3000 cas16 ).jpg'),
(100, 1, 'Mainboard ASUS Rog Strix Z490-G Gaming', 6180000, 99, 'Chuẩn mainboard: ATX\r\nSocket: 1200, Chipset: Z490\r\nHỗ trợ RAM: 4 khe DDR4, tối đa 128GB\r\nLưu trữ: 2 x M.2 NVMe, 6 x SATA 3 6Gb/s\r\nCổng xuất hình: 1 x HDMI, 1 x DisplayPort', 0, 'templates/web/images/collection-treding-mainboard-items-page3/unnamed (10).webp'),
(101, 7, 'Chuột gaming Corsair Ironclaw', 1790000, 99, 'Chuột Corsair Iron claw RGB\r\nThiết kế công thái học cho người dùng tay phải\r\nCảm biến quang học PMW3391\r\nDPI tối đa 18.000\r\nNút bấm 50 triệu lần click', 0, 'templates/web/images/collection-trending-gear-items-page2/unnamed (28).webp'),
(102, 5, 'Tai nghe Over-ear EAGLEND F6 (Bạc)', 560000, 99, '- Gọng tai nghe kim loại cao cấp, hạn chế nứt gãy, giảm áp lực đầu\r\n- Ốp tai ôm sát cách âm tốt, thoáng khí, dễ tháo lắp và vệ sinh\r\n- Cable dày, chống nhiễu, Mic lọc âm, giảm tiếng ồn\r\n- Bộ chỉnh âm thanh nằm trên vành tai giúp dễ dàng điều khiển', 0, 'templates/web/images/collection-trending-gear-items-page2/unnamed (37).webp'),
(103, 3, 'RAM AORUS RGB Memory (kèm Demo kit)', 3790000, 99, 'Kit Ram 16Gb (2x8) với 2 thanh DEMO có LED RGB tặng kèm\r\nBus RAM: 3200Mhz\r\nLED RGB', 0, 'templates/web/images/collection-shopping-items/collection-top-wish/RAM AORUS RGB Memory.jpg'),
(104, 3, 'RAM GIGABYTE 8GB DDR4-2666', 1090000, 99, '- Dung lượng: 1 x 8GB\r\n- Thế hệ: DDR4\r\n- Bus: 2666MHz\r\n- Cas: 16', 0, 'templates/web/images/collection-trending-ram-items-page2/unnamed (32).webp'),
(105, 8, 'Case máy tính Sahara D6', 2515000, 50, 'Case thùng máy thiết kế cực Cool cho Gaming .\r\nChất liệu cao cấp .\r\nHệ thống làm máy cực kì hợp lí ,  kết hợp với bộ tản nhiệt nhiệt nước và hệ thống Fan LED tuyệt vời .\r\nCase trong phân khúc cao cấp theo xu thế hiện đại .\r\nMột bộ PC hoàn hảo không thể thiếu kiểu dáng được thiết kế chiều lòng Game thủ .', 0, 'templates/web/images/collection-trending-case-items/unnamed (31).webp'),
(106, 8, 'Case máy tính Sahara D6', 2515000, 6, 'Mainboard	Gigabyte Z390 Aorus Xtreme Waterforce LGA1151V2\r\nCPU	Intel® Core™ i9 9900KF 8C 16T 3.6HGz\r\nRAM	G.Skill TRIDENT Z RGB 2x16GB DDR4 3000\r\nVGA	Gigabyte Aorus RTX 2080 Ti Xtreme Waterforce WB 11G\r\nHDD	WD HDD Black 2TB 7200rpm\r\nSSD	Samsung 970 Evo Plus 1Tb PCIe NVMe M.2\r\nPSU	Corsair HX1000 80Plus Platinum\r\nCASE	LIAN LI PC-O11 Dynamic XL ROG Certify Black\r\nTản nhiệt	Watercooling Custom', 0, 'templates/web/images/collection-shopping-items/collection-best-sale/ANNL Colinear.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `shipping_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `amount`, `shipping_date`, `delivery_date`, `payment`, `message`) VALUES
(1, 1, 1, '1', '1', '1', '1', '1.0000', '2021-11-01', '2021-11-02', '1', '1'),
(3, 3, 25, 'Lê Văn Phổ Vĩ', 'lvpv@gmail.com', '0123456789', 'Quận Bình Thạnh', '1282988.0000', '2021-03-04', '2021-03-11', 'money', 'none'),
(4, 4, 4, '4', '4', '4', '4', '4.0000', '2020-03-04', '2021-03-11', '2', '2'),
(2, 2, 2, '2', '2', '2', '2', '2.0000', '2021-03-04', '2021-03-11', '0', '0'),
(70, 0, 0, '0', '0', '0', '0', '1.0000', '2021-11-30', '2021-11-31', '0', '0'),
(84, 1, 38, 'Lê Văn Phổ Vĩ', 'phovi56@gmail.com', '0777664353', '33/12B Điện Biên Phủ Phường 15 Quận Bình Thạnh TP.HCM', '6072790.0000', '2021-12-05', '2021-12-08', 'COD', 'Ã¡d'),
(72, 1, 25, 'Đỗ Trần Thiện Bình', 'dttb@gmail.com', '0123456789', 'Quận Bình Tân', '2500000.0000', '30/10/2021', '31/10/2021', 'COD', 'none'),
(87, 2, 38, 'Lê Văn Phổ Vĩ', 'phovi56@gmail.com', '0777664353', '33/12B Điện Biên Phủ Phường 15 Quận Bình Thạnh TP.HCM', '4021310.0000', '2021-12-05', '2021-12-08', 'COD', '');

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
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL,
  `token` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `username`, `password`, `role`, `token`) VALUES
(24, 'Tô Thảo Nhả', 'thiensubanphuc000@gmail.com', '0398991023', 'Quận 1', 'nha', '$2a$12$ciJpSCqFcnz6KA0I20HTeeH8/2BRV2zkidO4cisxc8Lt0UzZ3YxQe', 1, NULL),
(23, 'ADMIN', 'pvb@gmail.com', '0123456789', 'Quận 9', 'pvb', '$2a$12$ciJpSCqFcnz6KA0I20HTeeH8/2BRV2zkidO4cisxc8Lt0UzZ3YxQe', 3, NULL),
(27, 'Lương Vĩ Phú', 'lvp@gmail.com', '0123456789', 'Quận 11', 'phu', '$2a$12$ciJpSCqFcnz6KA0I20HTeeH8/2BRV2zkidO4cisxc8Lt0UzZ3YxQe', 2, NULL),
(25, 'Đỗ Trần Thiện Bình', 'dttb@gmail.com', '0123456789', 'Quận Bình Tân', 'binh', '$2a$12$ciJpSCqFcnz6KA0I20HTeeH8/2BRV2zkidO4cisxc8Lt0UzZ3YxQe', 0, NULL),
(40, 'Lê Văn Phổ Độ', 'asd@gmail.com', '0213492344', NULL, 'phodo', '$2a$12$QPh9Eh3DHmszFWNGpxqPP.xVR4XCaE.DrLJWBqJNoFquSDwJRcPb2', 1, NULL),
(38, 'Lê Văn Phổ Vĩ', 'n18dccn240@student.ptithcm.edu.vn', '0777664353', '33/12B Điện Biên Phủ', 'phovi', '$2a$12$ciJpSCqFcnz6KA0I20HTeeH8/2BRV2zkidO4cisxc8Lt0UzZ3YxQe', 1, '3fee3d424bd40399');

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
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
