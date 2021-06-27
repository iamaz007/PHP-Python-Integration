-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 09:17 PM
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
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `women_cloths`
--

INSERT INTO `women_cloths` (`id`, `title`, `price`, `image`) VALUES
(1, 'EMBROIDERED SHIRT (WTR111331)', 'PKR 0.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111331MTP_1_1000x.jpg?v=1617215026'),
(2, 'EMBROIDERED SAAREE (WTB111879)', 'PKR 0.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111879BLK_1_1000x.jpg?v=1619024596'),
(3, 'EMBROIDERED SUIT (WTP111733)', 'PKR 3,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111733-BLU_1_1000x.jpg?v=1618987225'),
(4, 'DUSKY AURORA (WUC111289)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111289-DARKPINK_1_1000x.jpg?v=1615398595'),
(5, 'EMBROIDERED SUIT (WTB111874)', 'PKR 12,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111874MRN_4_ef3d813f-acdb-490f-be26-7cc2f314df6a_1000x.jpg?v=1619025296'),
(6, 'EMBROIDERED SHIRT (WTR211265)', 'PKR 9,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR211265KHK_1_1000x.jpg?v=1619628556'),
(7, 'EMBROIDERED TOP (WTF111558)', 'PKR 7,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111558FSH_1_1000x.jpg?v=1617815628'),
(8, 'PARADISE SHINE (WUC111292)', 'PKR 5,190.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111292-GREEN_1_1000x.jpg?v=1615399136'),
(9, 'SOLID SUIT (WTD111778)', 'PKR 3,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTD111778_1_1000x.jpg?v=1621230324'),
(10, 'EMBROIDERED SHIRT (WTR111437)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111437CRM_1_1000x.jpg?v=1617215153'),
(11, 'EMBROIDERED KURTI (WTF111600)', 'PKR 11,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111600RST_1000x.jpg?v=1617814868'),
(12, 'EMBROIDERED SUIT (WTB111897)', 'PKR 8,390.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111897GRN_1_1000x.jpg?v=1619025642'),
(13, 'TRIBAL CHARM (WUC111277)', 'PKR 4,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111277-LIGHTBLUE_1_1000x.jpg?v=1615399616'),
(14, 'EMBROIDERED SHIRT (WTP111715)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111715-FSH_4_1000x.jpg?v=1618989920'),
(15, 'SOLID KURTI (WTF111593)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111593YEL_4_1000x.jpg?v=1613577655'),
(16, 'EMBROIDERED SHIRT (WTC211006)', 'PKR 2,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211006STN_1_a2b90254-a170-4227-848c-73c89e10e2d8_1000x.jpg?v=1622646480'),
(17, 'PRINTED KURTI (WTF211171)', 'PKR 3,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF211171MTP_1_1000x.jpg?v=1620242950'),
(18, 'EMBROIDERED SUIT (WTB111522)', 'PKR 2,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111522_2_1000x.jpg?v=1613970646'),
(19, 'VIVACIOUS (WUC111272)', 'PKR 4,490.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111272-MUSTARD_1_1000x.jpg?v=1615399656'),
(20, 'EMBROIDERED SHIRT (WTC211138)', 'PKR 2,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211138WHT_1_1000x.jpg?v=1620233206'),
(21, 'ARCADIA (WUC111297)', 'PKR 3,690.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111297-BLUE_1_1000x.jpg?v=1615398360'),
(22, 'EMBROIDERED SHIRT (WTP111752)', 'PKR 2,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111752-MRN_4_1000x.jpg?v=1618989784'),
(23, 'PRINTED TOP (WTF211215)', 'PKR 2,690.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF211215MTP_1_1000x.jpg?v=1620234416'),
(24, 'EMBROIDERED SHIRT (WTC111019)', 'PKR 1,890.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC111019PNK_1_1000x.jpg?v=1619628201'),
(25, 'EMBROIDERED KURTI (WTF211174)', 'PKR 9,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF211174PCH_1_1000x.jpg?v=1620242943'),
(26, 'EMBROIDERED KAFTAN (WTB111900)', 'PKR 6,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB-111900NVY_1_1000x.jpg?v=1619024555'),
(27, 'JACQUARD SUIT (WTR111368)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111368OLV_1_1000x.jpg?v=1617815713'),
(28, 'EMBROIDERED KURTI (WTF111592)', 'PKR 1,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTF111592ORG_1_1000x.jpg?v=1617946854'),
(29, 'SOLID SUIT (WTP111732)', 'PKR 3,690.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111732-BLU_1_1000x.jpg?v=1617815871'),
(30, 'EMBROIDERED KURTI (WTF211188)', 'PKR 2,590.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WFT211188MTP_1_1000x.jpg?v=1620233085'),
(31, 'DUST (WUC111268)', 'PKR 3,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111268-BLACK_1_1000x.jpg?v=1615398609'),
(32, 'PRINTED SHIRT (WTC111905)', 'PKR 1,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC111905MTP_1_1000x.jpg?v=1615399205'),
(33, 'EMBROIDERED SHIRT (WTR111448)', 'PKR 3,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111448PRTGRN_1_1000x.jpg?v=1617215232'),
(34, 'EMBROIDERED SUIT (WTR111383)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTR111838BLU_1_1000x.jpg?v=1617215412'),
(35, 'BALOCHI (WUC111298)', 'PKR 2,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WUC-111298-TEAL_1_1000x.jpg?v=1615398449'),
(36, 'EMBROIDERED SHIRT (WTP111716)', 'PKR 2,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTP111716-GRN_1_1000x.jpg?v=1617815211'),
(37, 'CHECKERED SUIT (WTD111800)', 'PKR 8,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTD111800MTP_3_1000x.jpg?v=1614185162'),
(38, 'EMBROIDERED SHIRT (WTC111140)', 'PKR 5,390.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC111140DRKNVY_1_1000x.jpg?v=1612977320'),
(39, 'PRINTED SUIT (WTB111524)', 'PKR 2,790.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111524_1_1000x.jpg?v=1616392480'),
(40, 'JACQUARD SHIRT (WTC211043)', 'PKR 2,090.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211043MTP_1_1000x.jpg?v=1622646703'),
(41, 'EMBROIDERED SUIT (WTB111881)', 'PKR 5,990.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTB111881MTP_4_1000x.jpg?v=1619025397'),
(42, 'EMBROIDERED KURTI (WTF211173)', 'PKR 4,190.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WFT211173RED_4_1000x.jpg?v=1620233034'),
(43, 'EMBROIDERED SHIRT (WTC211136)', 'PKR 3,290.00', '//cdn.shopify.com/s/files/1/2290/7917/products/WTC211136GRY_1_1000x.jpg?v=1620233191'),
(44, 'Chaman Flared Shirt', 'PKR 0', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5413.jpg'),
(45, 'Solid Dupatta', 'PKR 2,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5413_1.jpg'),
(46, 'Chanda Dupatta', 'PKR 2,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21d5440_orange.jpg'),
(47, 'Sarayu Gown 3-Piece', 'PKR 5,000', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21d5440_orange_1.jpg'),
(48, 'DoodLing Tiered Dress', 'PKR 5,000', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21d4565.jpg'),
(49, 'Dotted Love', 'PKR 7,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21d4565_1.jpg'),
(50, 'Morning Walk Top', 'PKR 7,500', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21b5543_maroon.jpg'),
(51, 'Chamkeeli', 'PKR 3,898', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21b5543_maroon_1.jpg'),
(52, 'Wood Block Tunic', 'PKR 2,338', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5396_yellow.jpg'),
(53, 'Peepal Kurti', 'PKR 3,898', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5396_yellow_1.jpg'),
(54, 'Peepal Jacquard Tunic', 'PKR 2,338', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5131.jpg'),
(55, 'Taanka Shalwar', 'PKR 1,698', 'https://generation-static.b-cdn.net/media/catalog/product/s/2/s21w5131_1.jpg'),
(56, 'T-shirt', 'PKR 645', 'https://pk.khaadi.com/media/catalog/product/w/t/wtsp20202_white_1_3.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(57, 'Kurta', 'PKR 1,290', 'https://pk.khaadi.com/media/catalog/product/w/t/wtsp20202_white_2_4.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(58, 'Kurta', 'PKR 2,090', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_off-white_1_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(59, 'Kurta', 'PKR 3,490', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_off-white_3_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(60, 'Kurta', 'PKR 2,090', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_white_1_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(61, 'Kurta', 'PKR 3,490', 'https://pk.khaadi.com/media/catalog/product/c/t/ctp20208_white_4_7.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(62, 'Kurta', 'PKR 2,090', 'https://pk.khaadi.com/media/catalog/product/e/t/etp20311_black_1_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(63, 'Kurta', 'PKR 3,490', 'https://pk.khaadi.com/media/catalog/product/e/t/etp20311_black_2_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(64, 'Kurta', 'PKR 2,990', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20226_white_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(65, 'Kurta', 'PKR 4,990', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20226_white_2.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(66, 'Kurta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20306_blue_1_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(67, 'Kurta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20306_blue_2_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(68, 'Kurta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20351_white_1_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(69, 'Kurta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20351_white_2_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(70, 'Kurta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20355_beige_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(71, 'Kurta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20355_beige_2.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(72, 'Kurta', 'PKR 2,690', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20374_yellow_1.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(73, 'Kurta', 'PKR 4,490', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20374_yellow_2.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(74, 'Kurta Dupatta', 'PKR 2,270', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20320_white_1_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds'),
(75, 'Khaas Kurta', 'PKR 3,790', 'https://pk.khaadi.com/media/catalog/product/e/t/ete20320_white_2_6.jpg?width=300&height=&canvas=300:&quality=80&bg-color=255,255,255&fit=bounds');

-- --------------------------------------------------------

--
-- Table structure for table `women_shoes`
--

CREATE TABLE `women_shoes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` longtext DEFAULT NULL
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
