-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 04:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'test@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4');

-- --------------------------------------------------------

--
-- Table structure for table `women_cloths`
--

CREATE TABLE `women_cloths` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `women_cloths`
--

INSERT INTO `women_cloths` (`id`, `title`, `price`, `image`, `brand`) VALUES
(1, 'EMBROIDERED SHIRT (WTR111331)', 'PKR 0.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111331MTP_1_1000x.jpg?v=1617215026', 'ethnic'),
(2, 'EMBROIDERED SAAREE (WTB111879)', 'PKR 0.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111879BLK_1_1000x.jpg?v=1619024596', 'ethnic'),
(3, 'EMBROIDERED SUIT (WTP111733)', 'PKR 3,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111733-BLU_1_1000x.jpg?v=1618987225', 'ethnic'),
(4, 'DUSKY AURORA (WUC111289)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111289-DARKPINK_1_1000x.jpg?v=1615398595', 'ethnic'),
(5, 'EMBROIDERED SUIT (WTB111874)', 'PKR 12,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111874MRN_1_348032e4-0793-434a-8195-45a5a2766562_1000x.jpg?v=1624859025', 'ethnic'),
(6, 'EMBROIDERED SHIRT (WTR211265)', 'PKR 9,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR211265KHK_1_1000x.jpg?v=1619628556', 'ethnic'),
(7, 'EMBROIDERED TOP (WTF111558)', 'PKR 7,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111558FSH_1_1000x.jpg?v=1617815628', 'ethnic'),
(8, 'SOLID SUIT (WTD111778)', 'PKR 5,190.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTD111778_1_1000x.jpg?v=1621230324', 'ethnic'),
(9, 'EMBROIDERED SHIRT (WTR111437)', 'PKR 3,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111437CRM_1_1000x.jpg?v=1617215153', 'ethnic'),
(10, 'EMBROIDERED KURTI (WTF111600)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111600RST_1000x.jpg?v=1617814868', 'ethnic'),
(11, 'TRIBAL CHARM (WUC111277)', 'PKR 11,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111277-LIGHTBLUE_1_1000x.jpg?v=1615399616', 'ethnic'),
(12, 'EMBROIDERED SHIRT (WTP111715)', 'PKR 8,390.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111715-FSH_4_1000x.jpg?v=1618989920', 'ethnic'),
(13, 'EMBROIDERED SHIRT (WTC211006)', 'PKR 4,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211006STN_1_a2b90254-a170-4227-848c-73c89e10e2d8_1000x.jpg?v=1622646480', 'ethnic'),
(14, 'PRINTED KURTI (WTF211171)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF211171MTP_1_1000x.jpg?v=1620242950', 'ethnic'),
(15, 'EMBROIDERED SUIT (WTB111522)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111522_2_1000x.jpg?v=1613970646', 'ethnic'),
(16, 'VIVACIOUS (WUC111272)', 'PKR 2,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111272-MUSTARD_1_1000x.jpg?v=1615399656', 'ethnic'),
(17, 'EMBROIDERED SHIRT (WTC211138)', 'PKR 4,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211138WHT_1_1000x.jpg?v=1620233206', 'ethnic'),
(18, 'ARCADIA (WUC111297)', 'PKR 2,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111297-BLUE_1_1000x.jpg?v=1615398360', 'ethnic'),
(19, 'EMBROIDERED SHIRT (WTP111752)', 'PKR 3,690.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111752-MRN_4_1000x.jpg?v=1618989784', 'ethnic'),
(20, 'SOLID SUIT (WTP111732)', 'PKR 2,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111732-BLU_1_1000x.jpg?v=1617815871', 'ethnic'),
(21, 'EMBROIDERED KURTI (WTF211188)', 'PKR 2,690.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WFT211188MTP_1_1000x.jpg?v=1620233085', 'ethnic'),
(22, 'DUST (WUC111268)', 'PKR 1,890.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111268-BLACK_1_1000x.jpg?v=1615398609', 'ethnic'),
(23, 'EMBROIDERED SHIRT (WTR111448)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111448PRTGRN_1_1000x.jpg?v=1617215232', 'ethnic'),
(24, 'PRINTED TOP (WTF211215)', 'PKR 1,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF211215MTP_1_1000x.jpg?v=1620234416', 'ethnic'),
(25, 'CHECKERED SUIT (WTD111800)', 'PKR 3,690.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTD111800MTP_3_1000x.jpg?v=1614185162', 'ethnic'),
(26, 'EMBROIDERED SUIT (WTB111899)', 'PKR 2,590.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111899Lilac_1_1000x.jpg?v=1619025671', 'ethnic'),
(27, 'JACQUARD SHIRT (WTC211047)', 'PKR 3,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211047PRP_1_c941df0a-7837-4700-9003-4a938fe7060e_1000x.jpg?v=1622646753', 'ethnic'),
(28, 'JACQUARD SHIRT (WTC211046)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211046MTP_1_54cc524d-0d53-4068-abc3-5297f07cf553_1000x.jpg?v=1622646738', 'ethnic'),
(29, 'EMBROIDERED SUIT (WTR211317)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR211317LEF_1_1000x.jpg?v=1621443985', 'ethnic'),
(30, 'EMBROIDERED TOP (WTF211218)', 'PKR 2,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WFT211218LTYEL_1_1000x.jpg?v=1620242975', 'ethnic'),
(31, 'JACQUARD SHIRT (WTR211259)', 'PKR 8,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR211259MTP_1_1000x.jpg?v=1621444139', 'ethnic'),
(32, 'EMBROIDERED SUIT (WTR111400)', 'PKR 5,390.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111400WHT_1_1000x.jpg?v=1619629261', 'ethnic'),
(33, 'SOLID TOP (WTF111566)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111566WHT_1_1000x.jpg?v=1617815900', 'ethnic'),
(34, 'JACQUARD SHIRT (WTC211048)', 'PKR 2,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211048BLU_1_1000x.jpg?v=1622646768', 'ethnic'),
(35, 'EMBROIDERED SHIRT (WTR111332)', 'PKR 5,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111332OLV_1_1000x.jpg?v=1617815375', 'ethnic'),
(36, 'PRINTED SHIRT (WTC111120)', 'PKR 4,190.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC111120MTP_1_1000x.jpg?v=1617815758', 'ethnic'),
(37, 'EMBROIDERED SUIT (WTB111895)', 'PKR 3,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111895MTP_1_1000x.jpg?v=1624859015', 'ethnic'),
(38, 'EMBROIDERED TOP (WTF111553)', 'PKR 2,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111553TELBLU_1_1000x.jpg?v=1617815603', 'ethnic'),
(39, 'EMBROIDERED SUIT (WTB111876)', 'PKR 3,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111876GRY_1_1000x.jpg?v=1624858978', 'ethnic'),
(40, 'EMBROIDERED SHIRT (WTP111758)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111758-WHT_1_1000x.jpg?v=1618987236', 'ethnic'),
(41, 'EMBROIDERED TOP (WTF211217)', 'PKR 5,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF211217ORG_1_1000x.jpg?v=1620234050', 'ethnic'),
(42, 'EMBROIDERED SHIRT (WTP111737)', 'PKR 2,890.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111737MTP_1_1000x.jpg?v=1620233450', 'ethnic'),
(43, 'EMBROIDERED SHIRT (WTC211130)', 'PKR 2,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211130MTP_4_1000x.jpg?v=1620233129', 'ethnic'),
(44, 'Chaman Flared Shirt', '-PKR 2,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5413.jpg', 'engine'),
(45, 'Chanda Dupatta', 'PKR 0', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5413_1.jpg', 'engine'),
(46, 'Balochi Retro Suit', 'PKR 0', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21d4565.jpg', 'engine'),
(47, 'Zar 2-Piece', 'PKR 2,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21d4565_1.jpg', 'engine'),
(48, 'Reet 2-Piece', 'PKR 2,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21t4631_peach.jpg', 'engine'),
(49, 'Noor Kari Kaldiaar', 'PKR 5,000', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21t4631_peach_1.jpg', 'engine'),
(50, 'Sarayu Gown 3-Piece', 'PKR 5,000', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21t4857_black.jpg', 'engine'),
(51, 'Jamdani Dupatta', 'PKR 7,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21t4857_black_1.jpg', 'engine'),
(52, 'Jamdani Embellished Dupatta', 'PKR 7,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21c5659.jpg', 'engine'),
(53, 'Wood Block Kurta', 'PKR 10,000', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21c5659_1.jpg', 'engine'),
(54, 'DoodLing Tiered Dress', 'PKR 10,000', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21c4863_offwhite.jpg', 'engine'),
(55, 'Chaman 2-Piece', 'PKR 3,898', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21c4863_offwhite_1.jpg', 'engine'),
(56, 'T-shirt', 'PKR 645', 'https://pk.khaadi.com/media/catalog/product/w/t/wtsp20202_white_1_3.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(57, 'Kurta', 'PKR 1,290', 'https://pk.khaadi.com/media/catalog/product/w/t/wtsp20202_white_2_4.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(58, 'Kurta', 'PKR 2,090', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_off-white_1_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(59, 'Kurta', 'PKR 3,490', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_off-white_3_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(60, 'Kurta', 'PKR 2,090', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_white_1_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(61, 'Kurta', 'PKR 3,490', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_white_4_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(62, 'Kurta', 'PKR 2,090', 'https://pk.khaadi.com/media/catalog/product/e/t/etp20311_black_1_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(63, 'Kurta', 'PKR 3,490', 'https://pk.khaadi.com/media/catalog/product/e/t/etp20311_black_2_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(64, 'Kurta', 'PKR 2,990', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20226_white_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(65, 'Kurta', 'PKR 4,990', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20226_white_2.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(66, 'Kurta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20306_blue_1_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(67, 'Kurta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20306_blue_2_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(68, 'Kurta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20351_white_1_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(69, 'Kurta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20351_white_2_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(70, 'Kurta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20355_beige_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(71, 'Kurta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20355_beige_2.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(72, 'Kurta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20320_white_1_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(73, 'Kurta Dupatta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20320_white_2_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(74, 'Khaas Kurta', 'PKR 2,690', 'https://pk.khaadi.com/media/catalog/product/e/t/etp20307_beige_1_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi'),
(75, 'Khaas Kurta', 'PKR 4,490', 'https://pk.khaadi.com/media/catalog/product/e/t/etp20307_beige_2_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds', 'khaadi');

-- --------------------------------------------------------

--
-- Table structure for table `women_shoes`
--

CREATE TABLE `women_shoes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `women_cloths`
--
ALTER TABLE `women_cloths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `women_shoes`
--
ALTER TABLE `women_shoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `women_cloths`
--
ALTER TABLE `women_cloths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `women_shoes`
--
ALTER TABLE `women_shoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
