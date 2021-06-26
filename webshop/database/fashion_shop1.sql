-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2021 lúc 04:20 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fashion_shop1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Nhân', 'nhan2000ts@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(3, 'Duy', 'duy@gmail.com', '96e79218965eb72c92a549dd5a330112', 2, 1622855969),
(4, 'Đức', 'duc123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1623253265);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Thời trang', NULL, 0, 1, '2021-06-04 18:20:00'),
(2, 'Bán chạy', NULL, 0, 2, '2021-06-04 18:20:00'),
(3, 'Khuyến mãi', NULL, 0, 3, '2021-06-04 18:20:00'),
(4, 'Tin tức', NULL, 0, 4, '2021-06-04 18:20:00'),
(5, 'Giỏ hàng', NULL, 0, 5, '2021-06-04 18:20:00'),
(6, 'Liên hệ', NULL, 0, 6, '2021-06-04 18:20:00'),
(7, 'THỜI TRANG NAM', NULL, 1, 1, '2021-06-04 18:20:00'),
(8, 'THỜI TRANG NỮ', NULL, 1, 2, '2021-06-04 18:20:00'),
(9, 'THỜI TRANG GIA ĐÌNH', NULL, 1, 3, '2021-06-04 18:20:00'),
(10, 'Quần Kaki', NULL, 7, 1, '2021-06-04 18:24:15'),
(12, 'Quần Jeans', NULL, 7, 3, '2021-06-04 18:24:15'),
(24, 'Quần Short', '', 7, 5, '0000-00-00 00:00:00'),
(14, 'Áo Khoác', NULL, 7, 5, '2021-06-04 18:24:15'),
(15, 'Áo Thun', NULL, 7, 6, '2021-06-04 18:24:15'),
(16, 'Áo Sơ Mi', NULL, 7, 7, '2021-06-04 18:24:15'),
(17, 'Quần Jeans', NULL, 8, 1, '2021-06-04 18:24:15'),
(18, 'Quần Kaki', NULL, 8, 2, '2021-06-04 18:24:15'),
(19, 'Chân Váy', NULL, 8, 3, '2021-06-04 18:24:15'),
(20, 'Áo Thun', NULL, 8, 4, '2021-06-04 18:32:52'),
(21, 'Áo Sơ Mi', NULL, 8, 5, '2021-06-04 18:32:52'),
(22, 'Áo Len', NULL, 8, 6, '2021-06-04 18:32:52'),
(23, 'Đồ Bộ Gia Đình', NULL, 9, 1, '2021-06-04 18:32:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(1, 1, 25, 1, '130000.00', 0),
(2, 1, 24, 1, '170000.00', 0),
(3, 2, 18, 1, '250000.00', 0),
(4, 3, 6, 1, '271000.00', 0),
(5, 4, 25, 1, '130000.00', 0),
(6, 5, 16, 1, '150000.00', 0),
(7, 6, 23, 1, '240000.00', 0),
(8, 7, 18, 1, '250000.00', 0),
(9, 8, 2, 1, '210000.00', 0),
(10, 9, 23, 1, '240000.00', 0),
(11, 10, 1, 3, '507000.00', 0),
(12, 11, 25, 1, '130000.00', 0),
(13, 12, 23, 1, '240000.00', 0),
(14, 13, 26, 1, '310000.00', 0),
(15, 14, 27, 2, '260000.00', 0),
(16, 15, 3, 3, '630000.00', 0),
(17, 16, 20, 1, '250000.00', 0),
(18, 17, 8, 1, '110000.00', 0),
(19, 18, 2, 1, '210000.00', 0),
(20, 19, 27, 2, '260000.00', 0),
(21, 20, 27, 1, '130000.00', 0),
(22, 20, 17, 1, '150000.00', 0),
(23, 21, 2, 1, '210000.00', 0),
(24, 22, 27, 1, '130000.00', 0),
(25, 23, 5, 3, '930000.00', 0),
(26, 24, 27, 1, '130000.00', 0),
(27, 25, 18, 1, '250000.00', 0),
(28, 26, 2, 1, '210000.00', 0),
(29, 27, 27, 1, '130000.00', 0),
(30, 28, 2, 1, '210000.00', 0),
(31, 29, 27, 1, '130000.00', 0),
(32, 29, 21, 1, '250000.00', 0),
(33, 30, 27, 1, '130000.00', 0),
(34, 31, 18, 11, '2750000.00', 0),
(35, 32, 6, 1, '271000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(1, 10, 'Quần Kaki Dài Nam QKK0034', '<p>Quần Jean Nam với chất lượng cao cấp, đường may sắc n&eacute;t từng chi tiết, form slim chỉn chu v&agrave; thoải m&aacute;i. Dễ d&agrave;ng phối với mọi trang phục, chiếc quần Jean Kenta sẽ tạo cho bạn cảm gi&aacute;c tự tin nhất khi mặc với mức gi&aacute; cực k&igrave; hợp l&yacute;.</p>\r\n\r\n<p>Chất liệu: denim co gi&atilde;n thoải m&aacute;i, mịn m&aacute;t, bền m&agrave;u.</p>\r\n', '189000.00', 20000, 'Quần_Kaki_Dài_Nam_QKK0034_11.jpg', '[\"5_74412a3c923a4eb3acbc0b4a41884f11.jpg\",\"5_c08cdad74a154d11a396f6f8962cfd1.jpg\"]', 2, 1, 10, 3, 1622824824),
(2, 10, 'Quần Kaki Dài Nam QKK0035', '<p>Quần kaki nam Kenta với form d&aacute;ng Slim trẻ trung v&agrave; thời thượng. Chất kaki co gi&atilde;n, vải si&ecirc;u m&aacute;t, thoải m&aacute;i trong mọi chuyển động. Sản phẩm sẽ đem đến sự h&agrave;i l&ograve;ng nhất.</p>\r\n\r\n<p>Chất liệu: kaki cao cấp si&ecirc;u mịn, co gi&atilde;n.&nbsp;</p>\r\n', '220000.00', 10000, 'Quần_Kaki_Dài_Nam_QKK0035_11.jpg', '[\"Qu\\u1ea7n_Kaki_D\\u00e0i_Nam_QKK00351.jpg\"]', 9, 3, 34, 8, 1622824877),
(3, 10, 'Quần Kaki Dài Nam QKK0038', '<p>Quần kaki nam Kenta với form d&aacute;ng Slim trẻ trung v&agrave; thời thượng. Chất kaki co gi&atilde;n, vải si&ecirc;u m&aacute;t, thoải m&aacute;i trong mọi chuyển động. Sản phẩm sẽ đem đến sự h&agrave;i l&ograve;ng nhất.</p>\r\n\r\n<p>Chất liệu: kaki cao cấp si&ecirc;u mịn, co gi&atilde;n.&nbsp;</p>\r\n', '220000.00', 10000, 'Quần_Kaki_Dài_Nam_QKK0038_.jpg', '[\"Qu\\u1ea7n_Kaki_D\\u00e0i_Nam_QKK0038_2_1.jpg\",\"Qu\\u1ea7n_Kaki_D\\u00e0i_Nam_QKK0038_31.jpg\"]', 2, 1, 6, 2, 1622824933),
(4, 12, 'Quần Jean Nam QJD0052', '<p>&Aacute;o thun Polo Nam tại Kenta lu&ocirc;n đẹp v&agrave; sang trọng, chất liệu vải&nbsp;si&ecirc;u đẹp, mịn v&agrave; m&aacute;t. Với form d&aacute;ng thoải m&aacute;i, t&ocirc;n d&aacute;ng cho người mặc, đủ size từ 50kg đến 90kg cho c&aacute;c bạn nam. Tay &aacute;o v&agrave; cổ &aacute;o được dệt ri&ecirc;ng c&oacute; bổ sung sợi Spandex để đảm bảo độ đ&agrave;n hồi, chống nh&atilde;o qua c&aacute;c lần giặt.&nbsp;</p>\r\n\r\n<p>Chất liệu: 95% cotton - 5% Spandex thấm h&uacute;t v&agrave; tho&aacute;ng kh&iacute; tốt</p>\r\n', '330000.00', 19000, 'Quần_Jean_Nam_QJD00521.jpg', '[\"3a_0f927825c4e3432687c4ab39db93911.jpg\",\"4_2a24dab150f94e88b29ff78e8ad85211.jpg\"]', 0, 0, 4, 1, 1622825000),
(5, 12, 'Quần Jean Nam QJD0049', '<p>Quần Jean Nam với chất lượng cao cấp, đường may sắc n&eacute;t từng chi tiết, form slim chỉn chu v&agrave; thoải m&aacute;i. Dễ d&agrave;ng phối với mọi trang phục, chiếc quần Jean Kenta sẽ tạo cho bạn cảm gi&aacute;c tự tin nhất khi mặc với mức gi&aacute; cực k&igrave; hợp l&yacute;.</p>\r\n\r\n<p>Chất liệu: denim co gi&atilde;n thoải m&aacute;i, mịn m&aacute;t, bền m&agrave;u.</p>\r\n', '330000.00', 20000, 'Quần_Jean_Nam_QJD00491.jpg', '[\"3_251ceea3f5dc485a844dd924755f8111.jpg\",\"4_f22d51235df44234a5534973dc88ec2.jpg\"]', 1, 0, 9, 2, 1622825047),
(6, 12, 'Quần Jean Nam QJD0044', '<p>Quần Jean Nam với chất lượng cao cấp, đường may sắc n&eacute;t từng chi tiết, form slim chỉn chu v&agrave; thoải m&aacute;i. Dễ d&agrave;ng phối với mọi trang phục, chiếc quần Jean Kenta sẽ tạo cho bạn cảm gi&aacute;c tự tin nhất khi mặc với mức gi&aacute; cực k&igrave; hợp l&yacute;.</p>\r\n\r\n<p>Chất liệu: denim co gi&atilde;n thoải m&aacute;i, mịn m&aacute;t, bền m&agrave;u.</p>\r\n', '290000.00', 19000, 'Quần_Jean_Nam_QJD00441.jpg', '[\"3_cd03ebfe952648c2b4cc8e904bc8b33.jpg\",\"5_74412a3c923a4eb3acbc0b4a41884f2.jpg\"]', 2, 2, 4, 1, 1622825095),
(7, 19, 'VÁY LIỀN NỮ HAI DÂY', '<p>V&aacute;y liền chất liệu 100% cotton<br />\r\nD&aacute;ng fit &amp; flare, 2 d&acirc;y bản to, cổ vu&ocirc;ng, mở c&uacute;c dọc th&acirc;n.</p>\r\n\r\n<p><a href=\"https://canifa.com/catalog/product/view/id/228441/s/vay-lien-nu-6DS21S006/category/231/#product-detail-tab-content-2\">CHẤT LIỆU</a></p>\r\n\r\n<p>100% cotton</p>\r\n', '299000.00', 30000, 'VÁY LIỀN NỮ HAI DÂY.jpg', '[]', 1, 0, 9, 2, 1622825233),
(8, 20, 'ÁO PHÔNG NỮ COTTON USA', '<p><a href=\"https://canifa.com/catalog/product/view/id/226871/s/ao-phong-nu-6TS21S019/category/196/#product-detail-tab-content-1\">M&Ocirc; TẢ</a></p>\r\n\r\n<p>&Aacute;o ph&ocirc;ng chất liệu cotton USA<br />\r\nD&aacute;ng regular, cổ tr&ograve;n, tay cộc, chun d&uacute;n gấu tay.</p>\r\n\r\n<p><a href=\"https://canifa.com/catalog/product/view/id/226871/s/ao-phong-nu-6TS21S019/category/196/#product-detail-tab-content-2\">CHẤT LIỆU</a></p>\r\n\r\n<p>100% cotton</p>\r\n\r\n<p>&nbsp;</p>\r\n', '120000.00', 10000, 'ÁO PHÔNG NỮ COTTON USA.jpg', '[]', 1, 1, 4, 1, 1622825313),
(9, 14, 'Áo Khoác Kaki Nam AKK0008', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;</p>\r\n\r\n<p>Chất liệu: kaki cao cấp v&agrave; co gi&atilde;n, c&oacute;&nbsp;t&uacute;i trong</p>\r\n', '340000.00', 20000, 'Áo_Khoác_Kaki_Nam_AKK0008.jpg', '[\"5_9efedd1b5f244345934e45d416e36e1.jpg\",\"4_366e51a7cf8c4c9d9e8803411060aa1.jpg\"]', 1, 0, 4, 1, 1622825656),
(10, 14, 'Áo Khoác Kaki Nam AKK0009', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;</p>\r\n\r\n<p>Chất liệu: kaki co gi&atilde;n, c&oacute; t&uacute;i trong</p>\r\n', '330000.00', 10000, 'Áo_Khoác_Kaki_Nam_AKK0009.jpg', '[\"3_70e0ab32e6524a2a87387e14190c051.jpg\",\"2_c1f86f10268f48ff9efd55d11b6ad71.jpg\"]', 0, 0, 4, 1, 1622825769),
(11, 14, 'Áo Khoác Kaki Nam AKK00010', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;</p>\r\n\r\n<p>Chất liệu: kaki co gi&atilde;n, c&oacute; t&uacute;i trong</p>\r\n', '330000.00', 10000, 'Áo_Khoác_Kaki_Nam_AKK00010.jpg', '[\"4_6c785fb4eb194fe889cc1017b4eac01.jpg\",\"2_bf760c8a944142d4bf2cbbf0a361981.jpg\"]', 0, 0, 4, 1, 1622825859),
(12, 14, 'Áo Khoác Jean AKJ0003', '<p>&Aacute;o kho&aacute;c Jean đơn giản v&agrave; thời thượng, dễ mix mọi trang phục. Đậm chất c&aacute; t&iacute;nh, form cực chuẩn.</p>\r\n\r\n<p>Chất liệu: denim&nbsp;co gi&atilde;n, c&oacute; 2&nbsp;t&uacute;i trong</p>\r\n', '450000.00', 30000, 'Áo_Khoác_Jean_AKJ0003.jpg', '[\"3_0097f35180c648a2aecc1625d09a821.jpg\",\"2_45d6b172ac7143c59cc79b4136fea11.jpg\"]', 0, 0, 4, 1, 1622825944),
(13, 14, 'Áo Khoác Trơn Ko Nón AKN0223', '<p>&Aacute;o kho&aacute;c thun nỉ&nbsp;năng động v&agrave;&nbsp;thoải m&aacute;i. Mặc đi nắng hoặc trời se lạnh cực tốt</p>\r\n\r\n<p>Chất liệu: vải nỉ&nbsp;cao cấp</p>\r\n', '220000.00', 10000, 'Áo_Khoác_Trơn_Ko_Nón_AKN0223.jpg', '[\"4_52acc80e4edd4ddb9d6d3f83259e041.jpg\",\"3_a2e9e804fb3a418abce4a59d28c2a41.jpg\"]', 0, 0, 4, 1, 1622826033),
(14, 14, 'Áo Khoác Trơn Ko Nón AKN0223_T', '<p>&Aacute;o kho&aacute;c thun nỉ&nbsp;năng động v&agrave;&nbsp;thoải m&aacute;i. Mặc đi nắng hoặc trời se lạnh cực tốt</p>\r\n\r\n<p>Chất liệu: vải nỉ&nbsp;cao cấp</p>\r\n', '220000.00', 20000, 'Áo_Khoác_Trơn_Ko_Nón_AKN0223_T.jpg', '[\"5_b64051ca582e4c5e93f1b1491dfc561.jpg\",\"4_f51e229a48c7442a97dc00871740861.jpg\"]', 1, 0, 4, 1, 1622826115),
(15, 14, 'Áo Khoác Dù Không Nón 2 Lớp AKD0031', '<p>&Aacute;o kho&aacute;c D&ugrave;&nbsp;năng động, thoải m&aacute;i với phi&ecirc;n bản cải tiếng kh&ocirc;ng n&oacute;n.&nbsp;Phong c&aacute;ch đơn giản, dế mặc, from &aacute;o chuẩn đẹp, c&oacute; t&uacute;i &aacute;o trong để vật dụng quan trọng, t&uacute;i&nbsp;ngo&agrave;i c&oacute; d&acirc;y k&eacute;o kh&oacute;a ykk bền bỉ.</p>\r\n\r\n<p>Chất liệu: vải d&ugrave; cao cấp, l&oacute;t trong mịn m&aacute;t.&nbsp;</p>\r\n', '250000.00', 20000, 'Áo_Khoác_Dù_Không_Nón_2_Lớp_AKD0031.jpg', '[\"2_fa61d36dceef474784d029740de0971.jpg\",\"4_72bf903ea92a44088f8d7792938e2c1.jpg\"]', 1, 0, 4, 1, 1622826216),
(17, 15, 'Áo Thun Nam Trắng Trơn ATN0114', '<p>&Aacute;o thun trơn&nbsp;cổ tr&ograve;n phi&ecirc;n bản Premium,&nbsp;dễ mix mọi trang phục, item n&ecirc;n c&oacute; trong tủ đồ&nbsp;<br />\r\n-Chất liệu 100% cotton tự nhi&ecirc;n, co gi&atilde;n 4 chiều, vải d&agrave;y dặn l&ecirc;n form rất đẹp.<br />\r\n-Thấm h&uacute;t mồ h&ocirc;i cực tốt, mặc si&ecirc;u tho&aacute;ng v&agrave; thoải m&aacute;i, độ bền cao.<br />\r\n-Bo cổ được dệt ri&ecirc;ng, n&ecirc;n sẽ kh&ocirc;ng bị gi&atilde;n cổ &aacute;o khi mặc thời gian d&agrave;i.<br />\r\n-Nẹp vắt sổ ở phần n&aacute;ch, sau khi giặt vẫn giữ được form kh&ocirc;ng bị đ&ugrave;n.</p>\r\n', '160000.00', 10000, 'Áo_Thun_Nam_Trắng_Trơn_ATN0114.jpg', '[\"6_f52167748a1e43f8b25e438fa511871.jpg\",\"4a_9d76c69cf92448ce94567c3296f681.jpg\"]', 3, 1, 14, 3, 1622826390),
(18, 15, 'Áo Thun Polo Nam Cổ Dệt ATP0030', '<p>&Aacute;o thun Polo Nam tại Kenta lu&ocirc;n đẹp v&agrave; sang trọng, chất liệu vải&nbsp;si&ecirc;u đẹp, mịn v&agrave; m&aacute;t. Với form d&aacute;ng thoải m&aacute;i, t&ocirc;n d&aacute;ng cho người mặc, đủ size từ 50kg đến 90kg cho c&aacute;c bạn nam. Tay &aacute;o v&agrave; cổ &aacute;o được dệt ri&ecirc;ng c&oacute; bổ sung sợi Spandex để đảm bảo độ đ&agrave;n hồi, chống nh&atilde;o qua c&aacute;c lần giặt.&nbsp;</p>\r\n\r\n<p>Chất liệu: 95% cotton - 5% Spandex thấm h&uacute;t v&agrave; tho&aacute;ng kh&iacute; tốt</p>\r\n', '280000.00', 30000, 'Áo_Thun_Polo_Nam_Cổ_Dệt_ATP0030.jpg', '[\"7_f8a0fa081dc64dffa969f1466664731.jpg\",\"6_ac4c8233da244943b85f0bfddeb8121.jpg\"]', 5, 3, 29, 6, 1622826473),
(19, 15, 'Áo Thun Polo Nam ATP0029', '<p>&Aacute;o thun Polo lu&ocirc;n đẹp v&agrave; sang trọng, ko bao giờ lỗi mốt, form chuẩn. Chất vải polo hột si&ecirc;u đẹp, mịn v&agrave; m&aacute;t. Với form d&aacute;ng thoải m&aacute;i, t&ocirc;n d&aacute;ng cho người mặc, đủ size từ 50kg đến 90kg cho c&aacute;c bạn nam.</p>\r\n\r\n<p>Chất liệu: vải thun c&aacute; sấu bền bỉ, &iacute;t nhăn, thấm h&uacute;t tốt.&nbsp;</p>\r\n', '280000.00', 30000, 'Áo_Thun_Polo_Nam_ATP0029.jpg', '[\"6_482c6cc46ddf4bc08655dc240f75e01.jpg\",\"5_71ea107f28304f8c8213ed06e059641.jpg\"]', 2, 0, 9, 2, 1622826548),
(20, 16, 'Sơ Mi Tay Dài Đen Trơn SMD0060', '<p>Sơ mi tay d&agrave;i phi&ecirc;n bản cải tiến, item&nbsp;lu&ocirc;n sang trọng v&agrave;&nbsp;lịch l&atilde;m. Chất vải tho&aacute;ng m&aacute;t v&agrave; &iacute;t nhăn, thấm h&uacute;t cực tốt. Đường may tinh tế, form cực chuẩn.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>\r\n', '250000.00', 0, 'Sơ Mi Tay Dài Đen Trơn SMD0060.jpg', '[]', 3, 1, 14, 3, 1622826651),
(21, 16, 'Sơ Mi Nam Tay Dài SMD0055', '<p>Sơ mi tay d&agrave;i lu&ocirc;n sang trọng, lịch l&atilde;m. Chất vải tho&aacute;ng m&aacute;t v&agrave; &iacute;t nhăn, thấm h&uacute;t cực tốt. Đường may tinh tế, form cực chuẩn.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>\r\n', '250000.00', 0, 'Sơ Mi Nam Tay Dài SMD0055.jpg', '[\"so-mi-nam-trang-3_622ddae240d1441.jpg\"]', 3, 0, 9, 2, 1622826734),
(27, 15, 'Áo Thun Cartoon ATN0111', '<h2>M&ocirc; tả</h2>\r\n\r\n<p>&Aacute;o thun cổ tr&ograve;n, nổi bật với c&aacute;c h&igrave;nh in mạnh mẽ v&agrave; c&aacute; t&iacute;nh, form chuẩn.</p>\r\n\r\n<p>Chất liệu: cotton 100%, co gi&atilde;n 2 chiều,&nbsp;mực in bền m&agrave;u</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>\r\n', '180000.00', 50000, 'Áo_Thun_Cartoon_ATN0111.jpg', '[\"4_311220a01ea841ecb383ec7bda235e1.jpg\",\"3_6412494898514a0abf151768d6c8561.jpg\"]', 5, 3, 29, 6, 1624323415),
(24, 13, 'Quần Short Thun Nỉ Dây Kéo Túi QST0004', '<p>Quần short thun nỉ thoải m&aacute;i v&agrave; dễ chịu khi mặc, d&acirc;y k&eacute;o t&uacute;i Ykk 2 b&ecirc;n tiện dụng.</p>\r\n\r\n<p>Chất liệu: nỉ da c&aacute; mịn m&aacute;t, thấm h&uacute;t tốt</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>\r\n', '180000.00', 10000, 'Quần_Short_Thun_Nỉ_Dây_Kéo_Túi_QST0004.jpg', '[\"5_422556b3322343eb9721090772b91f1.jpg\",\"3_bd718dff9f7648568309e462a63fcb1.jpg\"]', 5, 1, 13, 3, 1622827096);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, 'Thời trang Nữ', 'slider_22.jpg', 'http://localhost/webshop/thoi-trang-nu-c8', 2, '2021-06-04 18:37:03'),
(2, 'Thời trang Nam và Nữ', 'slider_12.jpg', 'http://localhost/webshop/moi', 1, '2021-06-04 18:37:44'),
(3, 'Thời trang Gia Đình', '1534655105_banner-ao-gia-dinh-12.jpg', 'http://localhost/webshop/thoi-trang-gia-dinh-c9', 3, '2021-06-04 18:38:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(23, 0, 14, 'tienganh', 'tienkgsd@gmail.com', '90795745', 'Tây ninh', '', '930000.00', '', 1624347282),
(2, 1, 1, 'Hiển', 'hien348@gmail.com', '0866776', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '250000.00', '', 1622827915),
(3, 1, 1, 'Hiển', 'hien348@gmail.com', '0866776', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '271000.00', '', 1622827979),
(21, 0, 0, 'ngnan', 'ngann@gmail.com', '098979', 'binh tay', '', '210000.00', '', 1624345095),
(22, 0, 14, 'tienganh', 'tienkgsd@gmail.com', '90795745', 'Tây ninh', '', '130000.00', '', 1624346186),
(16, 1, 0, 'khangafaf', 'khang@gmail.com', '09998874', 'Bình Tây', '', '250000.00', '', 1624324384),
(17, 1, 0, 'hiensfsf', 'khangdggn@gmail.com', '0986785', 'bình hòa', '', '110000.00', '', 1624324683),
(18, 1, 0, 'Duc Thanh Nguyen', 'nhan2000ts@gmail.com', '0363498542', 'binh dinh', '', '210000.00', '', 1624329196),
(19, 0, 1, 'Hiển', 'hien348@gmail.com', '0866776', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '260000.00', '', 1624343990),
(20, 1, 0, 'thọ hien', 'hienhienn@gmail.com', '09883453', 'tây giang', '', '280000.00', '', 1624344803),
(10, 1, 12, 'tung', 'tung3543@gmail.com', '0099087', 'tây sơn', '', '507000.00', '', 1624241042),
(25, 1, 14, 'tienganh', 'tienkgsd@gmail.com', '90795745', 'Tây ninh', '', '250000.00', '', 1624351710),
(24, 0, 14, 'tienganh', 'tienkgsd@gmail.com', '90795745', 'Tây ninh', '', '130000.00', '', 1624350858),
(14, 1, 1, 'Hiển', 'hien348@gmail.com', '0866776', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '260000.00', '', 1624323488),
(15, 1, 1, 'Hiển', 'hien348@gmail.com', '0866776', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '630000.00', '', 1624323535),
(26, 0, 0, 'Duc thanh', 'nhan2000afts@gmail.com', '0363498542', 'binh dinh', '', '210000.00', '', 1624420982),
(27, 0, 16, 'test1', 'test1@gmail.com', '07978976865', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '130000.00', '', 1624421685),
(28, 1, 0, 'test2', 'test2@gmail.com', '0363498542', 'Binh Dinh', '', '210000.00', '', 1624421832),
(29, 0, 16, 'test1', 'test1@gmail.com', '07978976865', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '380000.00', '', 1624425251),
(30, 1, 16, 'test1', 'test1@gmail.com', '07978976865', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '130000.00', '', 1624425334),
(31, 0, 16, 'test1', 'test1@gmail.com', '07978976865', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', '', '2750000.00', '', 1624425898),
(32, 1, 0, 'nhan', 'nhan00@gmail.com', '980878967', 'Binh Dinh', '', '271000.00', '', 1624431514);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(1, 'Hiển', 'hien348@gmail.com', '96e79218965eb72c92a549dd5a330112', '0866776', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', 2021),
(14, 'tienganh', 'tienkgsd@gmail.com', '96e79218965eb72c92a549dd5a330112', '90795745', 'Tây ninh', 2021),
(12, 'tung', 'tung3543@gmail.com', '96e79218965eb72c92a549dd5a330112', '', 'tây sơn', 2021),
(4, 'haohao', 'hao@gmail.com', '96e79218965eb72c92a549dd5a330112', '89780879', '449 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức', 2021),
(5, 'Nguyễn Thanh Duy', 'duyduy@gmail.com', '96e79218965eb72c92a549dd5a330112', '789806767477576', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', 2021),
(6, 'ghfh', 'dhdh@gmail.com', '96e79218965eb72c92a549dd5a330112', '708907464524325', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', 2021),
(7, 'Nguyễn Duy Hưng', 'hung@gmail.com', '96e79218965eb72c92a549dd5a330112', '8798098-98-9-98', 'binh dinh', 2021),
(13, 'test', 'test@gmail.com', '96e79218965eb72c92a549dd5a330112', '46547567', 'Bình Tây', 2021),
(9, 'Lê Văn', 'asfjkshd@gmail.com', '96e79218965eb72c92a549dd5a330112', '97897', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', 2021),
(10, '243235', 'sgdfhfhfg@gmail.com', '96e79218965eb72c92a549dd5a330112', '98709685', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', 2021),
(11, 'Lê Công Hiếu', 'hieu@gmail.com', '96e79218965eb72c92a549dd5a330112', '097897776', 'binh dinh', 2021),
(15, 'tiengsi', 'si@gmail.com', '96e79218965eb72c92a549dd5a330112', 'hgkhk', 'An Giang', 2021),
(16, 'test1', 'test1@gmail.com', '96e79218965eb72c92a549dd5a330112', '07978976865', '448 Lê Văn Việt. Tăng Nhơn Phú A, quận 9', 2021);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
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
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
