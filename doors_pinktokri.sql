-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 11:39 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doors_pinktokri`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `hno` text NOT NULL,
  `society` text NOT NULL,
  `area` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `landmark` text DEFAULT NULL,
  `type` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `uid`, `hno`, `society`, `area`, `pincode`, `landmark`, `type`, `status`, `name`) VALUES
(109, 115, '253', 'Nagla Bachhgaiyan', 'Jaitpur Kalan', 283114, 'Near School', 'Home', 1, 'Kaushal '),
(110, 115, '123', 'Jaitpur', 'Jaitpur Kalan', 283114, 'Near school', 'Home', 1, 'Kaushal'),
(111, 116, '234', 'bhadawar', 'Jaitpur Kalan', 283114, 'opposite ramleela maidan', 'kachaura road jaitpur kalan', 1, 'anshul'),
(122, 115, 'h-9012', 'narela', 'Delhi', 11052, 'near chowk', 'Home', 1, 'Adarsh  kumar'),
(123, 115, 'B block - 090/B', 'South Delhi', 'Delhi', 110052, 'near city hospital', 'Home', 1, 'Naresh Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'doors', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `area_db`
--

CREATE TABLE `area_db` (
  `id` int(8) NOT NULL,
  `name` text NOT NULL,
  `dcharge` float NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_db`
--

INSERT INTO `area_db` (`id`, `name`, `dcharge`, `status`) VALUES
(6, 'Jaitpur Kalan', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(8) NOT NULL,
  `bimg` text NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `bimg`, `cid`) VALUES
(24, 'banner/banner-1.jpg', 15),
(25, 'banner/banner-2.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` text NOT NULL,
  `catimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `catimg`) VALUES
(1, 'GROCERIES', 'cat/thump_1600857749.jpg'),
(6, 'EDIBLE OIL', 'cat/thump_1600857785.jpg'),
(7, 'BEVERAGES', 'cat/thump_1600857829.jpg'),
(8, 'SNACK & BRANDED FOODS', 'cat/thump_1600857884.jpg'),
(9, 'PERSONAL CARE', 'cat/thump_1600857856.jpg'),
(10, 'HOME CARE', 'cat/thump_1600857914.jpg'),
(11, 'BABY & KIDS', 'cat/thump_1600857933.jpg'),
(12, 'DAIRY & BAKERY', 'cat/thump_1600857966.jpg'),
(13, 'FROZEN FOODS', 'cat/thump_1600858230.jpg'),
(14, 'PACKED FOOD', 'cat/thump_1600930618.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `ccode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `ccode`, `status`) VALUES
(243, '+91', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(8) NOT NULL,
  `uid` int(11) NOT NULL,
  `rate` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `uid`, `rate`, `msg`) VALUES
(33, 115, '5.0', 'great');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `cid`, `sid`, `status`) VALUES
(5, 'Personal Care', 9, 39, 1),
(6, 'Snacks & branded Foods', 8, 31, 1),
(7, 'Groceries', 1, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `noti`
--

CREATE TABLE `noti` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `img` text NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(8) NOT NULL,
  `oid` text NOT NULL,
  `uid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `pid` text NOT NULL,
  `ptype` text NOT NULL,
  `pprice` text NOT NULL,
  `ptax` varchar(100) DEFAULT NULL,
  `ddate` text NOT NULL,
  `timesloat` text NOT NULL,
  `order_date` date NOT NULL,
  `status` text NOT NULL,
  `qty` text NOT NULL,
  `total` float NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `p_method` text DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 0,
  `photo` longtext DEFAULT NULL,
  `s_photo` longtext DEFAULT NULL,
  `r_status` varchar(200) DEFAULT 'Not Assigned',
  `pickup` text DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `tid` text DEFAULT NULL,
  `ship_charge` int(20) DEFAULT NULL,
  `payment_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_list`
--

CREATE TABLE `payment_list` (
  `id` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_list`
--

INSERT INTO `payment_list` (`id`, `img`, `title`, `cred_title`, `cred_value`, `status`) VALUES
(1, 'payment/thump_1589451371.png', 'Razorpay', 'RAZORPAY_API_KEY', 'INSERT_KEY_HERE', 1),
(2, 'payment/thump_1589451385.png', 'Paypal', 'Sendbox', 'Aa0Yim_XLAz89S4cqO-kT4pK3QbFsruHvEm8zDYX_Y-wIKgsGyv4TzL84dGgtWYUoJqTvKUh0JonIaKa', 0),
(3, 'payment/thump_1589451400.png', 'Cash On Delivery', '-', '-', 1),
(4, 'payment/thump_1589451416.png', 'Pickup Myself', '-', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_pinktokri`
--

CREATE TABLE `payment_pinktokri` (
  `id` int(20) NOT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `order_parent_id` int(20) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `signature_hash` varchar(100) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` text NOT NULL,
  `sname` text NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `psdesc` text NOT NULL,
  `pgms` text NOT NULL,
  `pprice` text NOT NULL,
  `status` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pimg` text NOT NULL,
  `ptax` int(10) DEFAULT NULL,
  `prel` longtext DEFAULT NULL,
  `date` datetime NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `popular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `ptax`, `prel`, `date`, `discount`, `popular`) VALUES
(2, 'DEL MONTE RED CHILLI SAUCE 190GM ', 'SWATI AGRNCIES', 8, 26, 'DELM RED CHIILI SAUCE ', '1 gms$;250 gms$;190G$;190GM', '1$;10$;50', 1, 1, 'product/thump_1600925935.jpg', NULL, '', '2020-09-24 11:08:55', 0, 0),
(3, 'DELM GREEN CHIILI SAUCE 190GM', 'SWATI AGRNCIES', 8, 26, 'DELM G. C. SAUCE', '1 gms$;250 gms$;190GM', '1$;10$;50', 1, 1, 'product/thump_1600926300.jpg', NULL, '', '2020-09-24 11:15:00', 0, 0),
(4, 'DEL MONTE SCHEZWAN SAUCE 190GM', 'SWATI AGRNCIES', 8, 26, 'DELM SCHEZWAN SAUCE', '1 gms$;250 gms$;190GM', '1$;10$;50', 1, 1, 'product/thump_1600926700.jpg', NULL, '', '2020-09-24 11:21:40', 0, 0),
(5, 'DEL MONTE EGGLESS MAYO SPOUT 950 GM', 'SWATI AGRNCIES', 8, 60, 'DELM EGGLESS MAYO ', '1 gms$;250 gms$;950', '1$;10$;130', 1, 1, 'product/thump_1600926851.jpg', NULL, '', '2020-09-24 11:24:11', 0, 1),
(6, 'DEL MONTE PASTA SPIRALI WW 500GM', 'SWATI AGRNCIES', 8, 28, 'DELM PASTA SPIRALI ', '1 gms$;250 gms$;500', '1$;10$;210', 1, 1, 'product/thump_1600927189.jpg', NULL, '', '2020-09-24 11:29:49', 0, 0),
(7, 'DEL MONTE PASTA PENNE 500GM', 'SWATI AGRNCIES', 8, 28, 'DELM PASTA PENNE RIGATE ', '1 gms$;250 gms$;500', '1$;10$;175', 1, 1, 'product/thump_1600927391.jpg', NULL, '', '2020-09-24 11:33:11', 0, 0),
(8, 'DEL MONE OLIVE BLACK PITTED 450GM', 'SWATI AGRNCIES', 14, 58, 'DELM BLACK PITTED 450G', '1 gms$;210$;450G', '1$;10$;210', 1, 1, 'product/thump_1600927551.jpg', NULL, '', '2020-09-24 11:35:51', 0, 0),
(9, 'DEL MONTE OLIVE GREEN SLICED 450GM', 'SWATI AGRNCIES', 14, 58, 'DELM GREEN SLICED', '1 gms$;250 gms$;450GM', '1$;10$; 210', 1, 1, 'product/thump_1600927730.jpeg', NULL, '', '2020-09-24 11:38:50', 0, 0),
(10, 'DEL MONTE OLIVE BLACK SLICE 450', 'SWATI AGRNCIES', 14, 58, 'DELM BLACK SLI OLIVE', '1 gms$;250 gms$;450GM', '1$;10$;190', 1, 1, 'product/thump_1600928088.jpg', NULL, '', '2020-09-24 11:44:48', 0, 0),
(11, 'DEL MONTE OLIVE GREEN PITTED 450', 'SWATI AGRNCIES', 14, 58, 'DELM GREEN PITTED OLIVE', '1 gms$;250 gms$;450GM', '1$;10$;215', 1, 1, 'product/thump_1600928234.jpg', NULL, '', '2020-09-24 11:47:14', 0, 0),
(12, 'DEL MONTE OLIVE BLACK SLICED 235GM', 'SWATI AGRNCIES', 14, 58, 'DELM BLACK SLI', '1 gms$;250 gms$;235G', '1$;10$;120', 1, 1, 'product/thump_1600928549.jpg', NULL, '', '2020-09-24 11:52:29', 0, 0),
(13, 'DEL MONTE OLIVE BLACK PITTED 235G', 'SWATI AGRNCIES', 14, 58, 'DELM OLIVE BLACK SLICE', '1 gms$;250 gms$;235GM$;235G', '1$;10$;120', 1, 1, 'product/thump_1600928792.jpg', NULL, '', '2020-09-24 11:56:32', 0, 0),
(14, 'DEL MONTE OLIVE GREEN SLICED 235G', 'SWATI AGRNCIES', 14, 58, 'DELM OLIVE GREEN SLICED', '1 gms$;250 gms$;235G', '1$;10$;120', 1, 1, 'product/thump_1600929639.jpeg', NULL, '', '2020-09-24 12:10:39', 0, 0),
(15, 'DEL MONTE OLIVE GREEN PITTED 235G', 'SWATI AGRNCIES', 14, 58, 'DELM OLIVE GREEN PITTED', '1 gms$;250 gms$;235G', '1$;10$;120', 1, 1, 'product/thump_1600929969.jpg', NULL, '', '2020-09-24 12:16:09', 0, 0),
(16, 'DEL MONTE PINE SLICEEOE ', 'SWATI AGRNCIES', 14, 58, 'DELM PINE SLICE', '1 gms$;250 gms$;1.5', '1$;10$;130', 1, 1, 'product/thump_1600931960.jpg', NULL, '', '2020-09-24 12:49:20', 0, 0),
(17, 'DEL MONTE PINE SLICE 2.5', 'SWATI AGRNCIES', 14, 58, 'DELM PINE SLICE', '1 gms$;250 gms$;2.5', '1$;10$;190', 1, 1, 'product/thump_1600932063.jpg', NULL, '', '2020-09-24 12:51:03', 0, 0),
(18, 'DEL MONTE FRUIT COCKTAIL 2.5', 'SWATI AGRNCIES', 14, 58, 'DELM FRUIT COCKTAIL', '1 gms$;250 gms$;2.5', '1$;10$;190', 1, 1, 'product/thump_1600932170.jpg', NULL, '', '2020-09-24 12:52:50', 0, 0),
(19, 'DEL MONTE CREAM STYLE SWEET CORN 425G', 'SWATI AGRNCIES', 14, 58, 'DELM C.S SWEET CORN', '1 gms$;250 gms$;425GM', '1$;10$;90', 1, 1, 'product/thump_1600932785.jpg', NULL, '', '2020-09-24 13:03:05', 0, 0),
(20, 'DEL MONTE WHOLE  CORN KERNELS 420G', 'SWATI AGRNCIES', 14, 58, '\r\nDELM WHOLE CORN', '1 gms$;250 gms$;420G', '1$;10$;70', 1, 1, 'product/thump_1600933053.jpg', NULL, '', '2020-09-24 13:07:33', 0, 0),
(21, 'DEL MONTE BAKED BEANS IN SAUCE 450G', 'SWATI AGRNCIES', 14, 58, 'DELM BAKED BEANS', '1 gms$;250 gms$;450GM', '1$;10$;110', 1, 1, 'product/thump_1600933224.jpg', NULL, '', '2020-09-24 13:10:24', 0, 0),
(23, 'DEL MONTE PRUNES PROMO 340GM', 'SWATI AGRNCIES', 14, 58, 'DELM PRUNES PROMO', '1 gms$;250 gms$;340GM', '1$;10$;395', 1, 1, 'product/thump_1600933342.png', NULL, '', '2020-09-24 13:12:22', 0, 1),
(24, 'DEL MONTE CRANBERRIES 250G', 'SWATI AGRNCIES', 14, 58, 'DELM CRANBERRIES', '1 gms$;250 gms$;250G', '1$;10$;300', 1, 1, 'product/thump_1600933465.jpg', NULL, '', '2020-09-24 13:14:25', 0, 0),
(25, 'DEL MONTE DRIED BLUEBERRIES 130G', 'SWATI AGRNCIES', 14, 58, 'DELM BLUEBERRIES ', '1 gms$;250 gms$;250G$;130G', '1$;10$;300$;475', 1, 1, 'product/thump_1600933614.jpg', NULL, '', '2020-09-24 13:16:54', 0, 0),
(26, 'DEL MONTE PINE CRUSH SW 240ML', 'SWATI AGRNCIES', 7, 17, 'DELM FRUIT JUICE', '1 gms$;250 gms$;240ML', '1$;10', 1, 1, 'product/thump_1600933782.jpg', NULL, '', '2020-09-24 13:19:42', 0, 0),
(27, 'DEL MONTE GREEN APPLE FRUIT DRINK ', 'SWATI AGRNCIES', 7, 17, 'DELM GREEN APPLE JUICE', '1 gms$;250 gms$;240ML', '1$;10$;50', 1, 1, 'product/thump_1600933929.jpg', NULL, '', '2020-09-24 13:22:09', 0, 1),
(28, 'DEL MONTE 100% MIX FRUIT JUICE WITH VITA ACE', 'SWATI AGRNCIES', 7, 17, 'DELM MIX FRUIT JUICE', '1 gms$;250 gms$;240ML', '1$;10$;70', 1, 1, 'product/thump_1600934143.jpg', NULL, '', '2020-09-24 13:25:43', 0, 0),
(29, 'DEL MONTE FRUIT COCKTAIL 1.5', 'SWATI AGRNCIES', 14, 58, 'DELM FRUIT COCKTAIL', '1 gms$;250 gms$;1.5', '1$;10$;130', 1, 1, 'product/thump_1600934752.jpg', NULL, '', '2020-09-24 13:35:52', 0, 0),
(30, 'DEL MONTE TOMATO KETCHUP SPOUT 950G', 'SWATI AGRNCIES', 8, 26, 'DELM TOMATO KETCHUP', '1 gms$;250 gms$;950G', '1$;10$;130', 1, 1, 'product/thump_1600934933.jpg', NULL, '', '2020-09-24 13:38:53', 0, 0),
(31, 'DEL MONTE BREWED VINEGAR 180GM', 'SWATI AGRNCIES', 7, 61, 'DELM VINEGAR', '1 gms$;250 gms$;180GM', '1$;10$;50', 1, 1, 'product/thump_1600935085.jpg', NULL, '', '2020-09-24 13:41:25', 0, 0),
(32, 'HERSHEY CHOCOLATE SYRUP 6623 GM', 'JJ IMPEX', 8, 25, 'HERSHEYS SYRUP', '1 gms$;250 gms$;623GM', '1$;10$;200', 1, 1, 'product/thump_1600939341.jpg', NULL, '', '2020-09-24 14:52:21', 0, 0),
(34, 'AMERICAN GARDEN PANCAKE SYRUP ', 'JJ IMPEX', 7, 19, 'AG PANCAKE SYRUP', '1 gms$;250 gms$;709ML', '1$;10$;435', 1, 1, 'product/thump_1600939662.jpg', NULL, '', '2020-09-24 14:57:42', 0, 0),
(35, 'ABBIES VINEGAR APPLE CIDER 473', 'JJ IMPEX', 7, 61, 'ABBIES APLLE CIDER', '1 gms$;250 gms$;473', '1$;10$;2175', 1, 1, 'product/thump_1600939790.jpg', NULL, '', '2020-09-24 14:59:50', 0, 0),
(36, 'FERRERO ROCHER ', 'JJ IMPEX', 8, 25, 'FR T16 20PCS', '1 gms$;250 gms$;200G', '1$;10$;529', 1, 1, 'product/thump_1600939923.jpg', NULL, '', '2020-09-24 15:02:03', 0, 0),
(38, 'GOLDEN CROWN  WHITE VINEGAR ', 'JJ IMPEX', 7, 61, 'GC VINEGAR', '1 gms$;250 gms$;220ML', '1$;10$;39', 1, 1, 'product/thump_1600940083.jpg', NULL, '', '2020-09-24 15:04:43', 0, 0),
(39, 'BRAGG APPLE CIDER VINEGAR ', 'JJ IMPEX', 7, 61, 'BRAGG APPLE CIDER', '1 gms$;250 gms$;473ML', '1$;10$;530', 1, 1, 'product/thump_1600940189.jpg', NULL, '', '2020-09-24 15:06:29', 0, 0),
(40, 'ABBIES BARBECUE SAUCE ', 'JJ IMPEX', 8, 26, 'ABBIES BBQ SAUCE', '1 gms$;250 gms$;510G', '1$;10$;265', 1, 1, 'product/thump_1600940351.jpg', NULL, '', '2020-09-24 15:09:11', 0, 0),
(41, 'SALSITO WRAP TORTILLAS ', 'JJ IMPEX', 8, 24, 'WRAP TORTILLAS', '1 gms$;250 gms$;348$;348G', '1$;10$;190', 1, 1, 'product/thump_1600940488.jpg', NULL, '', '2020-09-24 15:11:28', 0, 0),
(42, 'GOLDEN CROWN BAKING POWDER', 'JJ IMPEX', 1, 6, 'BAKING POWDER', '1 gms$;250 gms$;100G', '1$;10$;30', 1, 1, 'product/thump_1600940569.jpeg', NULL, '', '2020-09-24 15:12:49', 0, 0),
(43, 'AXE DARK TEMPTATION', 'NARAYAN AGENCY', 9, 38, 'AXE DARK TEMPTATION 150ML DM', '150ML', '150', 1, 1, 'product/thump_1601884948.jpg', NULL, '', '2020-10-05 13:32:28', 0, 0),
(44, 'AXE GOLD TEMPTATION DEO', 'NARAYAN AGENCY', 9, 38, 'AXE GOLD TEMPTATION DEO 150ML', '1 gms$;250 gms$;150ML', '1$;10$;150', 1, 1, 'product/thump_1601885203.jpg', NULL, '', '2020-10-05 13:36:43', 0, 0),
(45, 'AXE PROVOKE', 'NARAYAN AGENCY', 9, 38, 'AXE PROVOKE 150ML DM', '150ML', '1$;10$;150', 1, 1, 'product/thump_1601885405.jpg', NULL, '', '2020-10-05 13:40:05', 0, 0),
(46, 'AXE PULSE', 'NARAYAN AGENCY', 9, 38, 'AXE PULSE 150ML DM', '1 gms$;250 gms$;150ML', '1$;10$;150', 1, 1, 'product/thump_1601885511.jpg', NULL, '', '2020-10-05 13:41:51', 0, 0),
(47, 'AXE RECHARGE 24X7 ', 'NARAYAN AGENCY', 9, 38, 'AXE RECHARGE 24X7 150ML DM', '1 gms$;250 gms$;150ML', '1$;10$;160', 1, 1, 'product/thump_1601885869.jpg', NULL, '', '2020-10-05 13:47:49', 0, 0),
(48, 'AXE RECHARGE GAMEFACE DEO', 'NARAYAN AGENCY', 9, 38, 'AXE RECHARGE GAMEFACE DEO 150ML', '1 gms$;250 gms$;150ML', '1$;10$;160', 1, 1, 'product/thump_1601886134.JPG', NULL, '', '2020-10-05 13:52:14', 0, 0),
(49, 'AXE RECHARGE MIDNIGHT DEO BODY SPRAY ', 'NARAYAN AGENCY', 9, 38, 'AXE RECHARGE MIDNIGHT DEO BODY SPRAY CA', '1 gms$;250 gms$;150ML', '1$;10$;160', 1, 1, 'product/thump_1601886493.JPG', NULL, '', '2020-10-05 13:58:13', 0, 0),
(50, 'AXE  SIGNATURE DENIM AFTER SHAVE LOTION', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE DENIM AFTER SHAVE LOTION 50ML', '50ML', '1$;10$;130', 1, 1, 'product/thump_1601886760.jpg', NULL, '', '2020-10-05 14:02:40', 0, 0),
(51, 'AXE SIGNATURE DENIM AFTER SHAVE LOTION ', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE DENIM AFTER SHAVE LOTION 100ML\r\n', '1 gms$;250 gms$;100ML', '1$;10$;220', 1, 1, 'product/thump_1601887108.jpg', NULL, '', '2020-10-05 14:08:28', 0, 0),
(52, 'AXE SIGNATURE DENIM TALC', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE DENIM TALC 100G', '100G', '1$;10$;70', 1, 1, 'product/thump_1601887349.jpg', NULL, '', '2020-10-05 14:12:29', 0, 0),
(53, 'AXE SIGNATURE DENIM TALC 300G', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE DENIM TALC 300G', '1 gms$;250 gms$;300G', '1$;10$;135', 1, 1, 'product/thump_1601887487.jpg', NULL, '', '2020-10-05 14:14:47', 0, 0),
(54, 'AXE SIGNATURE PULSE TALC 300G', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE PULSE TALC 300G', '1 gms$;250 gms$;300G', '1$;10$;135', 1, 1, 'product/thump_1601887622.jpg', NULL, '', '2020-10-05 14:17:02', 0, 0),
(55, 'AXE SIGNATURE TEMPTATION 100G', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE TEMPTATION 100G', '1 gms$;250 gms$;100G', '1$;10$;68', 1, 1, 'product/thump_1601887776.jpg', NULL, '', '2020-10-05 14:19:36', 0, 0),
(56, 'AXE SIGNATURE DENIM SHVG CREAM 60G+30%EXT', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE DENIM SHVG CREAM 60G+30%EXT', '1 gms$;250 gms$;60G', '1$;10$;65', 1, 1, 'product/thump_1601887956.jpg', NULL, '', '2020-10-05 14:22:36', 0, 0),
(57, 'AXE SIG DARK TEMP 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIG DARK TEMP 122ML', '1 gms$;250 gms$;122ML', '1$;10$;160', 1, 1, 'product/thump_1601888134.jpg', NULL, '', '2020-10-05 14:25:34', 0, 0),
(58, 'AXE SIG GOLD TEMP 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIG GOLD TEMP 122ML', '1 gms$;250 gms$;122ML', '1$;10$;170', 1, 1, 'product/thump_1601888308.jpg', NULL, '', '2020-10-05 14:28:28', 0, 0),
(59, 'AXE SIGN BODY PERFUME INTENSE 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGN BODY PERFUME INTENSE 122ML', '1 gms$;250 gms$;122ML', '1$;10$;170', 1, 1, 'product/thump_1601888460.jpg', NULL, '', '2020-10-05 14:31:00', 0, 0),
(60, 'AXE SIGNATURE BODY PERFUME MAVERICK 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME MAVERICK 122ML', '1 gms$;250 gms$;122ML', '1$;10$;160', 1, 1, 'product/thump_1601888580.jpg', NULL, '', '2020-10-05 14:33:00', 0, 0),
(61, 'AXE SIGNATURE BODY PERFUME ROGUE 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME ROGUE 122ML', '1 gms$;250 gms$;122ML', '1$;10$;160', 1, 1, 'product/thump_1601888683.jpg', NULL, '', '2020-10-05 14:34:43', 0, 0),
(62, 'AXE SIGNATURE BODY PERFUME SUAVE 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME SUAVE 122ML', '1 gms$;250 gms$;122ML', '1$;10$;160', 1, 1, 'product/thump_1601888840.jpg', NULL, '', '2020-10-05 14:37:20', 0, 0),
(63, 'AXE SIGNATURE BODY PERFUME MYSTERIOUS 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME MYSTERIOUS 122ML', '1 gms$;250 gms$;122ML', '1$;10$;160', 1, 1, 'product/thump_1601888955.jpg', NULL, '', '2020-10-05 14:39:15', 0, 0),
(64, 'AXE SIGNATURE CORPORATE BODY PERFUME 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE CORPORATE BODY PERFUME 122ML', '122ML', '1$;10$;160', 1, 1, 'product/thump_1601889126.jpg', NULL, '', '2020-10-05 14:42:06', 0, 0),
(65, 'AXE SIGNATURE SHAVING CREAM 30G', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE SHAVING CREAM 30G', '1 gms$;250 gms$;30G', '1$;10$;40', 1, 1, 'product/thump_1601889843.jpg', NULL, '', '2020-10-05 14:54:03', 0, 0),
(66, 'AXE SIGN TEMPTATION AFTER SHAVE LOTION 50ML', 'NARAYAN AGENCY', 9, 39, 'AXE SIGN TEMPTATION AFTER SHAVE LOTION 50ML', '1 gms$;250 gms$;50ML', '1$;10$;125', 1, 1, 'product/thump_1601890859.jpg', NULL, '', '2020-10-05 15:10:59', 0, 0),
(67, 'AXE TKCT CHAMP 17ML+PNDS MENS FW', 'NARAYAN AGENCY', 9, 38, 'AXE TKCT CHAMP 17ML+PNDS MENS FW', '17ML', '60', 1, 1, 'product/thump_1601891490.jpg', NULL, '', '2020-10-05 15:21:30', 0, 0),
(68, 'AXE TKCT INT 17ML+PONDS MENS FW FR', 'NARAYAN AGENCY', 9, 38, 'AXE TKCT INT 17ML+PONDS MENS FW FR', '1 gms$;250 gms$;15GM$;17ML', '1$;10$;60', 1, 1, 'product/thump_1601892041.jpg', NULL, '', '2020-10-05 15:30:41', 0, 0),
(69, 'CLEAR HAIR OIL 150ML', 'NARAYAN AGENCY', 9, 35, 'CAC HAIR OIL 150ML', '1 gms$;250 gms$;150ML', '1$;10$;105', 1, 1, 'product/thump_1601892310.jpg', NULL, '', '2020-10-05 15:35:10', 0, 0),
(70, 'CLEAR HAIR OIL 75ML', 'NARAYAN AGENCY', 9, 35, 'CLEAR HAIR OIL 75ML', '1 gms$;250 gms$;75ML', '1$;10$;48', 1, 1, 'product/thump_1601892428.jpg', NULL, '', '2020-10-05 15:37:08', 0, 0),
(71, 'CLINIC PLUS STRONG & LONG 340ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS STRONG & LONG 340ML', '1 gms$;250 gms$;340ML', '1$;10$;155', 1, 1, 'product/thump_1601892633.jpg', NULL, '', '2020-10-05 15:40:33', 0, 0),
(72, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 170ML', 'NARAYAN AGENCY', 9, 35, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 170ML', '1 gms$;250 gms$;170ML', '1$;10$;135', 1, 1, 'product/thump_1601893016.jpg', NULL, '', '2020-10-05 15:46:56', 0, 0),
(73, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 350ML', 'NARAYAN AGENCY', 9, 35, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 350ML', '1 gms$;350ML', '1$;10$;260', 1, 1, 'product/thump_1601893138.jpg', NULL, '', '2020-10-05 15:48:58', 0, 0),
(74, 'CLINIC PLUS NATURALS SHAMPOO 175ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS NATURALS SHAMPOO 175ML', '1 gms$;250 gms$;175ML', '1$;10$;81', 1, 1, 'product/thump_1601893266.jpg', NULL, '', '2020-10-05 15:51:06', 0, 0),
(75, 'CLINIC PLUS STRONG & LONG SHAMPOO 650ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS S&L SHAMPOO 650ML', '1 gms$;250 gms$;650ML', '1$;10$;270', 1, 1, 'product/thump_1601893432.jpg', NULL, '', '2020-10-05 15:53:52', 0, 0),
(76, 'CLINIC PLUS STRONG & LONG SHAMPOO 175ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS STRONG & LONG SHAMPOO 175ML', '1 gms$;250 gms$;175ML', '1$;10$;81', 1, 1, 'product/thump_1601893680.jpg', NULL, '', '2020-10-05 15:58:00', 0, 0),
(77, 'CLINIC PLUS NATURAL SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS NATURAL SHAMPOO 340ML', '1 gms$;250 gms$;340ML', '1$;10$;151', 1, 1, 'product/thump_1601893845.jpg', NULL, '', '2020-10-05 16:00:45', 0, 0),
(78, 'CLINIC PLUS NOURISHING HAIR OIL 200ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS NOURISHING HAIR OIL 200ML', '1 gms$;250 gms$;200ML', '1$;10$;90', 1, 1, 'product/thump_1601894050.jpg', NULL, '', '2020-10-05 16:04:10', 0, 0),
(80, 'CLOSE UP ANTI-GERM EVERFRESH TOOTHPASTE 150G', 'NARAYAN AGENCY', 9, 36, 'CLOSE UP ANTI-GERM EVERFRESH TOOTHPASTE 150G', '1 gms$;250 gms$;150G', '1$;10$;80', 1, 1, 'product/thump_1601898021.jpg', NULL, '', '2020-10-05 17:10:21', 0, 0),
(81, 'CLOSEUP REDHOT EVERFRESH+TOOTHPASTE 80G', 'NARAYAN AGENCY', 9, 36, 'CLOSEUP REDHOT EVERFRESH+TOOTHPASTE 80G', '1 gms$;250 gms$;80G', '1$;10$;42', 1, 1, 'product/thump_1601898282.jpg', NULL, '', '2020-10-05 17:14:42', 0, 0),
(82, 'CLOSEUP REDHOT ANTI-GERM EVERFRESH PLUS 150+150GM', 'NARAYAN AGENCY', 9, 36, 'CLOSEUP REDHOT ANTI-GERM EVERFRESH PLUS 150+150GM', '150+150GM', '150', 1, 1, 'product/thump_1601898519.jpg', NULL, '', '2020-10-05 17:18:39', 0, 0),
(83, 'DOVE DRYNESS CARE CONDITIONER 180ML (DIMANTE)', 'NARAYAN AGENCY', 9, 35, 'DOVE DRYNESS CARE CONDITIONER 180ML (DIMANTE)', '1 gms$;250 gms$;180ML', '1$;10$;185', 1, 1, 'product/thump_1601898761.jpg', NULL, '', '2020-10-05 17:22:41', 0, 0),
(84, 'DOVE HAIRFALL RESCUE CONDITIONER 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE HAIRFALL RESCUE CONDITIONER 180ML', '1 gms$;250 gms$;180ML', '1$;10$;185', 1, 1, 'product/thump_1601898903.jpg', NULL, '', '2020-10-05 17:25:03', 0, 0),
(85, 'DOVE DAILY SHINE THERAPY SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY SHAMPOO 340ML', '1 gms$;250 gms$;340ML', '1$;10$;217', 1, 1, 'product/thump_1601901043.jpg', NULL, '', '2020-10-05 18:00:43', 0, 0),
(86, 'DOVE DAILY SHINE THERAPY SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY SHAMPOO 180ML', '1 gms$;250 gms$;180ML', '1$;10$;105', 1, 1, 'product/thump_1601901205.jpg', NULL, '', '2020-10-05 18:03:25', 0, 0),
(87, 'DOVE DANDRUFF CARE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DANDRUFF CARE SHAMPOO 180ML', '180ML', '1$;10$;137', 1, 1, 'product/thump_1601901307.jpg', NULL, '', '2020-10-05 18:05:07', 0, 0),
(88, 'DOVE DANDRUFF CARE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DANDRUFF CARE SHAMPOO 340ML', '1 gms$;250 gms$;340ML', '1$;10$;260', 1, 1, 'product/thump_1601901408.jpg', NULL, '', '2020-10-05 18:06:48', 0, 0),
(89, 'DOVE DRYNESS CARE THERAPY SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DRYNESS CARE THERAPY SHAMPOO 180ML', '1 gms$;250 gms$;180ML', '1$;10$;105', 1, 1, 'product/thump_1601901497.jpg', NULL, '', '2020-10-05 18:08:17', 0, 0),
(90, 'DOVE DRYNESS CARE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DRYNESS CARE SHAMPOO 340ML', '1 gms$;250 gms$;340ML', '1$;10$;215', 1, 1, 'product/thump_1601901618.jpg', NULL, '', '2020-10-05 18:10:18', 0, 0),
(91, 'DOVE DAILY SHINE THERAPY CONDITIONER 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY CONDITIONER 180ML', '1 gms$;250 gms$;180ML', '1$;10$;175', 1, 1, 'product/thump_1601901758.jpg', NULL, '', '2020-10-05 18:12:38', 0, 0),
(92, 'DOVE HAIRFALL RESCUE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE HAIRFALL RESCUE SHAMPOO 180ML', '1 gms$;250 gms$;180ML', '1$;10$;105', 1, 1, 'product/thump_1601901890.jpg', NULL, '', '2020-10-05 18:14:50', 0, 0),
(93, 'DOVE HAIRFALL RESCUE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE HAIRFALL RESCUE SHAMPOO 340ML', '1 gms$;250 gms$;340ML', '1$;10$;215', 1, 1, 'product/thump_1601901995.jpg', NULL, '', '2020-10-05 18:16:35', 0, 0),
(94, 'DOVE INTENSE REPAIR THERAPY 650ML', 'NARAYAN AGENCY', 9, 35, 'DOVE INTENSE REPAIR THERAPY 650ML', '1 gms$;250 gms$;650ML', '1$;10$;460', 1, 1, 'product/thump_1601902113.jpg', NULL, '', '2020-10-05 18:18:33', 0, 0),
(95, 'DOVE INTENSE REPAIR THERAPY 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE INTENSE REPAIR THERAPY 180ML', '1 gms$;250 gms$;180ML', '1$;10$;105', 1, 1, 'product/thump_1601902216.jpg', NULL, '', '2020-10-05 18:20:16', 0, 0),
(96, 'DOVE INTENSE REPAIR THERAPY 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE INTENSE REPAIR THERAPY 340ML', '1 gms$;250 gms$;340ML', '1$;10$;215', 1, 1, 'product/thump_1601902322.jpg', NULL, '', '2020-10-05 18:22:02', 0, 0),
(97, 'DOVE NOURISHING OIL CARE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE NOURISHING OIL CARE SHAMPOO 180ML', '1 gms$;250 gms$;180ML', '1$;10$;100', 1, 1, 'product/thump_1601902458.jpg', NULL, '', '2020-10-05 18:24:18', 0, 0),
(98, 'DOVE NOURISHING OIL CARE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE NOURISHING OIL CARE SHAMPOO 340ML', '1 gms$;250 gms$;340ML', '1$;10$;258', 1, 1, 'product/thump_1601902606.jpg', NULL, '', '2020-10-05 18:26:46', 0, 0),
(99, 'DOVE OXYGEN MOISTURE CONDITIONER 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE OXYGEN MOISTURE CONDITIONER 180ML', '1 gms$;250 gms$;180ML', '1$;10$;200', 1, 1, 'product/thump_1601902724.jpg', NULL, '', '2020-10-05 18:28:44', 0, 0),
(100, 'DOVE OXYGEN MOISTURE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE OXYGEN MOISTURE SHAMPOO 180ML', '1 gms$;250 gms$;180ML', '1$;10$;138', 1, 1, 'product/thump_1601902803.jpg', NULL, '', '2020-10-05 18:30:03', 0, 0),
(101, 'DOVE REPAIR DAMAGE THERAPY CONDITIONER 175ML', 'NARAYAN AGENCY', 9, 35, 'DOVE REPAIR DAMAGE THERAPY CONDITIONER 175ML', '1 gms$;250 gms$;175ML', '1$;10$;175', 1, 1, 'product/thump_1601902925.jpg', NULL, '', '2020-10-05 18:32:05', 0, 0),
(102, 'DOVE DAILY SHINE THERAPY SHAMPOO 650ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY SHAMPOO 650ML', '1 gms$;250 gms$;650ML', '1$;10$;460', 1, 1, 'product/thump_1601903117.jpg', NULL, '', '2020-10-05 18:35:17', 0, 0),
(103, 'FAIR AND LOVELY BB CREAM 40GM', 'NARAYAN AGENCY', 9, 34, 'FAIR AND LOVELY BB CREAM 40GM', '1 gms$;250 gms$;40GM', '1$;10$;175', 1, 1, 'product/thump_1601903258.jpg', NULL, '', '2020-10-05 18:37:38', 0, 0),
(104, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 25GM', 'NARAYAN AGENCY', 9, 34, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 25GM', '1 gms$;250 gms$;25GM', '1$;10$;54', 1, 1, 'product/thump_1601903530.jpg', NULL, '', '2020-10-05 18:42:10', 0, 0),
(105, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 50GM', 'NARAYAN AGENCY', 9, 34, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 50GM', '50GM', '1$;10$;102', 1, 1, 'product/thump_1601903665.jpg', NULL, '', '2020-10-05 18:44:25', 0, 0),
(106, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 80GM', 'NARAYAN AGENCY', 9, 34, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 80GM', '1 gms$;250 gms$;80GM', '1$;10$;155', 1, 1, 'product/thump_1601903776.jpg', NULL, '', '2020-10-05 18:46:16', 0, 0),
(107, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 100GM', 'NARAYAN AGENCY', 9, 34, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 100GM', '1 gms$;250 gms$;100GM', '1$;10$;115', 1, 1, 'product/thump_1601903988.jpg', NULL, '', '2020-10-05 18:49:48', 0, 0),
(108, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 50GM', 'NARAYAN AGENCY', 9, 34, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 50GM', '1 gms$;250 gms$;50GM', '1$;10$;62', 1, 1, 'product/thump_1601904115.jpg', NULL, '', '2020-10-05 18:51:55', 0, 0),
(109, 'GLOW & HANDSOME 50GM FACE CREAM FOR MEN', 'NARAYAN AGENCY', 9, 34, 'GLOW & HANDSOME 50GM FACE CREAM ', '1 gms$;250 gms$;50GM', '1$;10$;122', 1, 1, 'product/thump_1601904940.jpg', NULL, '', '2020-10-05 19:05:40', 0, 0),
(110, 'INDULEKHA HAIRFALL CLEANSER BOTTLES 100ML', 'NARAYAN AGENCY', 9, 35, 'INDULEKHA HAIRFALL CLEANSER BOTTLES 100ML', '1 gms$;250 gms$;100ML', '1$;10$;130', 1, 1, 'product/thump_1601905099.jpg', NULL, '', '2020-10-05 19:08:19', 0, 0),
(111, 'LAKME 9TO5 CC CARE CREAM 9GM', 'NARAYAN AGENCY', 9, 34, 'LAKME 9TO5 CC CARE CREAM 9GM', '1 gms$;250 gms$;9GM', '1$;10$;99', 1, 1, 'product/thump_1601905328.jpg', NULL, '', '2020-10-05 19:12:08', 0, 0),
(112, 'TOP\'S GOLD LIME PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD LIME PICKLE 1KG', '1 gms$;250 gms$;1KG', '1$;10$;255', 1, 1, 'product/thump_1601973317.jpg', NULL, '', '2020-10-06 14:05:17', 0, 0),
(113, 'AASHIRWAD SHUDH CHAKKI ATTA 5KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD SHUDH CHAKKI ATTA 5KG', '1 gms$;250 gms$;5KG', '1$;10$;175', 1, 1, 'product/thump_1601973705.jpg', NULL, '', '2020-10-06 14:11:45', 0, 0),
(114, 'TOP\'S GOLD GREEN CHILLI PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD GREEN CHILLI PICKLE 1KG', '1 gms$;250 gms$;1 KG', '1$;10$;255', 1, 1, 'product/thump_1601973765.jpg', NULL, '', '2020-10-06 14:12:45', 0, 0),
(115, 'AASHIRWAD SHUDH CHAKKI ATTA 10KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD SHUDH CHAKKI ATTA 10KG', '1 gms$;250 gms$;10KG', '1$;10$;345', 1, 1, 'product/thump_1601973895.jpg', NULL, '', '2020-10-06 14:14:55', 0, 0),
(116, 'AASHIRWAD ATTA WITH MULTI-GRAINS 5KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD ATTA WITH MULTI-GRAINS 5KG', '1 gms$;250 gms$;5KG', '1$;10$;265', 1, 1, 'product/thump_1601974016.jpg', NULL, '', '2020-10-06 14:16:56', 0, 0),
(117, 'PANSARI MAIDA 500GM', 'PINKTOKRI', 1, 4, 'PANSARI MAIDA 500GM', '1 gms$;250 gms$;500GM', '1$;10$;22', 1, 1, 'product/thump_1601974270.jpg', NULL, '', '2020-10-06 14:21:10', 0, 0),
(118, 'PANSARI SOOJI (SEMOLINE) 500GM', 'PINKTOKRI', 1, 4, 'PANSARI SOOJI (SEMOLINE) 500GM', '1 gms$;250 gms$;500GM', '1$;10$;44', 1, 1, 'product/thump_1601974473.jpg', NULL, '', '2020-10-06 14:24:33', 0, 0),
(119, 'TOP\'S GOLD MANGO PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD MANGO PICKLE 1KG', '1 gms$;250 gms$;1KG', '1$;10$;255', 1, 1, 'product/thump_1601974671.jpg', NULL, '', '2020-10-06 14:27:51', 0, 0),
(120, 'PANSARI DALIA (BUY 1 GET 1) 500GM', 'PINKTOKRI', 1, 4, 'PANSARI DALIA (BUY 1 GET 1) 500GM', '1 gms$;250 gms$;500GM', '1$;10$;44', 1, 1, 'product/thump_1601974800.jpg', NULL, '', '2020-10-06 14:30:00', 0, 0),
(121, 'RAJDHANI BESAN GRAM FLOUR 1KG', 'PINKTOKRI', 1, 4, 'RAJDHANI BESAN GRAM FLOUR 1KG', '1 gms$;250 gms$;1KG', '1$;10$;89', 1, 1, 'product/thump_1601975047.jpg', NULL, '', '2020-10-06 14:34:07', 0, 0),
(122, 'RAJDHANI BESAN GRAM FLOUR 500GM', 'PINKTOKRI', 1, 4, 'RAJDHANI BESAN GRAM FLOUR 500GM', '1 gms$;250 gms$;500GM', '1$;10$;46', 1, 1, 'product/thump_1601975316.jpg', NULL, '', '2020-10-06 14:38:36', 0, 0),
(123, 'PANSARI BESAN GRAM FLOUR 1KG', 'PINKTOKRI', 1, 4, 'PANSARI BESAN GRAM FLOUR 1KG', '1 gms$;250 gms$;1KG', '1$;10$;85', 1, 1, 'product/thump_1601975548.jpg', NULL, '', '2020-10-06 14:42:28', 0, 0),
(124, 'PANSARI BESAN GRAM FLOUR 500GM', 'PINKTOKRI', 1, 4, 'PANSARI BESAN GRAM FLOUR 500GM', '1 gms$;250 gms$;500GM', '1$;10$;44', 1, 1, 'product/thump_1601975669.jpg', NULL, '', '2020-10-06 14:44:29', 0, 0),
(125, 'TOP\'S GOLD MIXED PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD MIXED PICKLE 1KG', '1 gms$;250 gms$;1KG', '1$;10$;255', 1, 1, 'product/thump_1601975832.jpg', NULL, '', '2020-10-06 14:47:12', 0, 0),
(126, 'AGROPURE BESAN (MADE FROM CHANA DAL) 500GM', 'PINKTOKRI', 1, 4, 'AGROPURE BESAN (MADE FROM CHANA DAL) 500GM', '1 gms$;250 gms$;500GM', '1$;10$;45', 1, 1, 'product/thump_1601975877.jpg', NULL, '', '2020-10-06 14:47:57', 0, 0),
(127, 'SMITH & JONES GINGER GARLIC PASTE 200G', 'PINK TOKRI ', 1, 6, 'SMITH & JONES GINGER GARLIC PASTE 200G', '1 gms$;250 gms$;200GMS', '1$;10$;45', 1, 1, 'product/thump_1601976106.jpg', NULL, '', '2020-10-06 14:51:46', 0, 0),
(128, 'AASHIRWAD SELECT SHARBATI ATTA 10KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD SELECT SHARBATI ATTA 10KG', '1 gms$;250 gms$;10KG', '1$;10$;500', 1, 1, 'product/thump_1601976204.jpg', NULL, '', '2020-10-06 14:53:24', 0, 0),
(129, 'AASHIRVAAD SELECT SHARBATI ATTA 5KG', 'PINKTOKRI', 1, 4, 'AASHIRVAAD SELECT SHARBATI ATTA 5KG', '5KG', '1$;10$;260', 1, 1, 'product/thump_1601976398.jpg', NULL, '', '2020-10-06 14:56:38', 0, 0),
(130, 'LIJJAT PAPAD PUNJABI MASALA 200G', 'PINK TOKRI ', 8, 29, 'LIJJAT PAPAD PUNJABI MASALA 200G', '1 gms$;250 gms$;200G', '1$;10$;68', 1, 1, 'product/thump_1601976405.webp', NULL, '', '2020-10-06 14:56:45', 0, 0),
(131, 'PANSARI CHAKKI FRESH ATTA 5KG', 'PINKTOKRI', 1, 4, 'PANSARI CHAKKI FRESH ATTA 5KG', '1 gms$;250 gms$;5KG', '1$;10$;145', 1, 1, 'product/thump_1601976565.jpg', NULL, '', '2020-10-06 14:59:25', 0, 0),
(132, 'LIJJAT PAPAD GARLIC 200G', 'PINK TOKRI ', 8, 29, 'LIJJAT PAPAD GARLIC 200G', '1 gms$;250 gms$;200G', '1$;10$;56', 1, 1, 'product/thump_1601976568.jpg', NULL, '', '2020-10-06 14:59:28', 0, 0),
(133, 'LIJJAT PAPAD GARLIC 200G', 'PINK TOKRI ', 8, 29, 'LIJJAT PAPAD GARLIC 200G', '1 gms$;250 gms$;200G', '1$;10$;56', 1, 1, 'product/thump_1601976570.jpg', NULL, '', '2020-10-06 14:59:30', 0, 0),
(134, 'PANSARI CHAKKI FRESH ATTA 10KG', 'PINKTOKRI', 1, 4, 'PANSARI CHAKKI FRESH ATTA 10KG', '1 gms$;250 gms$;10KG', '1$;10$;280', 1, 1, 'product/thump_1601976674.jpg', NULL, '', '2020-10-06 15:01:14', 0, 0),
(135, 'HALDIRAM MEDIUM MASALA PAPAD 200G', 'PINK TOKRI ', 8, 29, 'HALDIRAM MEDIUM MASALA PAPAD 200G', '1 gms$;200G', '1$;10$;49', 1, 1, 'product/thump_1601976786.jpg', NULL, '', '2020-10-06 15:03:06', 0, 1),
(136, 'PANSARI MP SHARBATI ATTA 5KG', 'PINKTOKRI', 1, 4, 'PANSARI MP SHARBATI ATTA 5KG', '1 gms$;250 gms$;5KG', '1$;10$;220', 1, 1, 'product/thump_1601976836.jpg', NULL, '', '2020-10-06 15:03:56', 0, 0),
(137, 'HALDIRAM PUNJABI  MASALA PAPAD 200G', 'PINK TOKRI ', 8, 29, 'HALDIRAM PUNJABI  MASALA PAPAD 200G', '1 gms$;250 gms$;200G', '1$;10$;49', 1, 1, 'product/thump_1601976923.jpg', NULL, '', '2020-10-06 15:05:23', 0, 0),
(138, 'SMITH & JONES PASTA MASALA 9G', 'PINK TOKRI ', 1, 6, 'SMITH & JONES PASTA MASALA 9G', '1 gms$;250 gms$;09G', '1$;10$;5', 1, 1, 'product/thump_1601977164.jpg', NULL, '', '2020-10-06 15:09:24', 0, 0),
(139, 'PARTAP DESI GHEE 5LTR TIN', 'PINKTOKRI', 6, 12, 'PARTAP DESI GHEE 5LTR TIN', '1 gms$;250 gms$;5LTR', '1$;10$;2600', 1, 1, 'product/thump_1601977170.jpg', NULL, '', '2020-10-06 15:09:30', 0, 1),
(140, 'BAMBINO PREMIUM PASTA MASALA 10G ', 'PINK TOKRI ', 1, 6, 'BAMBINO PREMIUM PASTA MASALA 10G ', '1 gms$;250 gms$;10G', '1$;10', 1, 1, 'product/thump_1601977431.jpg', NULL, '', '2020-10-06 15:13:51', 0, 0),
(141, 'PINKTOKRI CRYSTAL SUGAR 1KG', 'PINKTOKRI', 1, 7, 'PINKTOKRI CRYSTAL SUGAR 1KG', '1 gms$;250 gms$;1KG', '1$;10$;40', 1, 1, 'product/thump_1601977655.jpeg', NULL, '', '2020-10-06 15:17:35', 0, 0),
(142, 'BAMBIN0 MACARONI MASALA 10G', 'PINK TOKRI ', 1, 6, 'BAMBIND MACARONI MASALA 10G', '1 gms$;250 gms$;10G', '1$;10$;05', 1, 1, 'product/thump_1601977764.jpg', NULL, '', '2020-10-06 15:19:24', 0, 0),
(143, 'DHAMPURE WHITE CRYSTAL SUGAR 1KG', 'PINKTOKRI', 1, 7, 'DHAMPURE WHITE CRYSTAL SUGAR 1KG', '1 gms$;250 gms$;1KG', '1$;10$;45', 1, 1, 'product/thump_1601977777.jpg', NULL, '', '2020-10-06 15:19:37', 0, 1),
(144, 'DHAMPURE WHITE CRYSTAL SUGAR 5KG', 'PINKTOKRI', 1, 7, 'DHAMPURE WHITE CRYSTAL SUGAR 5KG', '1 gms$;250 gms$;5KG', '1$;10$;220', 1, 1, 'product/thump_1601977921.jpg', NULL, '', '2020-10-06 15:22:01', 0, 0),
(145, 'PANSARI BEDMI POORI ATTA MASALA MIX 500GM', 'PINKTOKRI', 1, 4, 'PANSARI BEDMI POORI ATTA MASALA MIX 500GM', '1 gms$;250 gms$;500GM', '1$;10$;55', 1, 1, 'product/thump_1601978030.jpg', NULL, '', '2020-10-06 15:23:50', 0, 0),
(146, 'TOP\'S GOLD MANGO PICKLE 100G', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD MANGO PICKLE 100G', '1 gms$;250 gms$;100G', '1$;10$;25', 1, 1, 'product/thump_1601978127.webp', NULL, '', '2020-10-06 15:25:27', 0, 0),
(147, 'PANSARI MISSI ROTI ATTA MASALA MIX 500GM', 'PINKTOKRI', 1, 4, 'PANSARI MISSI ROTI ATTA MASALA MIX 500GM', '1 gms$;250 gms$;500GM', '1$;10$;75', 1, 1, 'product/thump_1601978209.jpg', NULL, '', '2020-10-06 15:26:49', 0, 0),
(148, 'PANSARI BHATURA POORI ATTTA MASALA MIX 500GM', 'PINKTOKRI', 1, 4, 'PANSARI BHATURA POORI ATTTA MASALA MIX 500GM', '1 gms$;250 gms$;500GM', '1$;10$;48', 1, 1, 'product/thump_1601978327.jpg', NULL, '', '2020-10-06 15:28:47', 0, 0),
(149, 'SMITH & JONES PERI PERI SPICE MIX 12G', 'PINK TOKRI ', 1, 6, 'SMITH & JONES PERI PERI SPICE MIX 12G', '1 gms$;250 gms$;12G', '1$;10', 1, 1, 'product/thump_1601978398.jpg', NULL, '', '2020-10-06 15:29:58', 0, 0),
(150, 'DHAMPURE MINERAL BROWN SUGAR 1KG', 'PINKTOKRI', 1, 7, 'DHAMPURE MINERAL BROWN SUGAR 1KG', '1 gms$;250 gms$;1KG', '80', 1, 1, 'product/thump_1601978506.jpg', NULL, '', '2020-10-06 15:31:46', 0, 0),
(151, 'AGROPURE MAIDA PREMIUM QUALITY 500GM', 'PINKTOKRI', 1, 4, 'AGROPURE MAIDA PREMIUM QUALITY 500GM', '1 gms$;250 gms$;500GM', '1$;10$;20', 1, 1, 'product/thump_1601978741.jpg', NULL, '', '2020-10-06 15:35:41', 0, 0),
(152, 'AGROPURE SOOJI PREMIUM QUALITY 500GM', 'PINKTOKRI', 1, 4, 'AGROPURE SOOJI PREMIUM QUALITY 500GM', '1 gms$;250 gms$;500GM', '1$;10$;20', 1, 1, 'product/thump_1601978875.jpg', NULL, '', '2020-10-06 15:37:55', 0, 0),
(153, 'AGROPURE DALIA PREMIUM QUALITY 500GM ', 'PINKTOKRI', 1, 4, 'AGROPURE DALIA PREMIUM QUALITY 500GM', '1 gms$;250 gms$;500GM', '1$;10$;25', 1, 1, 'product/thump_1601978970.jpg', NULL, '', '2020-10-06 15:39:30', 0, 0),
(154, 'PANSARI POOHA (BUY 1 GET 1) 500GM', 'PINKTOKRI', 8, 24, 'PANSARI POOHA (BUY 1 GET 1) 500GM', '1 gms$;250 gms$;500GM+500GM', '72', 1, 1, 'product/thump_1601979215.jpg', NULL, '', '2020-10-06 15:43:35', 0, 0),
(155, 'AGROPURE POOHA PREMIUM QUALITY 500GM', 'PINKTOKRI', 8, 24, 'AGROPURE POOHA PREMIUM QUALITY 500GM', '1 gms$;250 gms$;500GM', '1$;10$;35', 1, 1, 'product/thump_1601979332.jpg', NULL, '', '2020-10-06 15:45:32', 0, 0),
(156, 'PANSARI SHASHA RED CHILLI POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA RED CHILLI POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;29', 1, 1, 'product/thump_1601980157.jpg', NULL, '', '2020-10-06 15:59:17', 0, 0),
(157, 'PANSARI SHASHA RED CHILLI POWDER 200GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA RED CHILLI POWDER 200GM', '1 gms$;250 gms$;200GM', '1$;10$;55', 1, 1, 'product/thump_1601980247.jpg', NULL, '', '2020-10-06 16:00:47', 0, 0),
(158, 'PANSARI SHASHA TURMERIC POWDER 200GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA TURMERIC POWDER 200GM ', '1 gms$;250 gms$;200GM', '1$;10$;42', 1, 1, 'product/thump_1601980358.jpg', NULL, '', '2020-10-06 16:02:38', 0, 1),
(159, 'PANSARI SHASHA TURMERIC POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA TURMERIC POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;22', 1, 1, 'product/thump_1601980452.jpg', NULL, '', '2020-10-06 16:04:12', 0, 0),
(160, 'PANSARI SHASHA CORIANDER POWDER 200GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA CORIANDER POWDER 200GM ', '1 gms$;250 gms$;200GM', '1$;10$;42', 1, 1, 'product/thump_1601980538.jpg', NULL, '', '2020-10-06 16:05:38', 0, 0),
(161, 'PANSARI SHASHA CORIANDER POWDER 100GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA CORIANDER POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;22', 1, 1, 'product/thump_1601980619.jpg', NULL, '', '2020-10-06 16:06:59', 0, 0),
(162, 'PANSARI SHASHA JEERA POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA JEERA POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;42', 1, 1, 'product/thump_1601980779.jpg', NULL, '', '2020-10-06 16:09:39', 0, 0),
(163, 'PANSARI SHASHA BLACK PEPPER POWDER 100GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA BLACK PEPPER POWDER 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;110', 1, 1, 'product/thump_1601980998.jpg', NULL, '', '2020-10-06 16:13:18', 0, 0),
(164, 'PANSARI SHASHA CHAAT MASALA 100GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA CHAAT MASALA 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;49', 1, 1, 'product/thump_1601981104.jpg', NULL, '', '2020-10-06 16:15:04', 0, 0),
(165, 'PANSARI SHASHA DRY MANGO POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA DRY MANGO POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;58', 1, 1, 'product/thump_1601981351.jpg', NULL, '', '2020-10-06 16:19:11', 0, 0),
(166, 'MDH MEAT KA MASALA (MUTTON MASALA) 100GM ', 'PINKTOKRI', 1, 6, 'MDH MEAT KA MASALA (MUTTON MASALA) 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;63', 1, 1, 'product/thump_1601981511.jpg', NULL, '', '2020-10-06 16:21:51', 0, 0),
(167, 'PANSARI SHASHA KASURI METHI 25GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA KASURI METHI 25GM', '1 gms$;250 gms$;25GM', '1$;10$;20', 1, 1, 'product/thump_1601981633.jpg', NULL, '', '2020-10-06 16:23:53', 0, 0),
(168, 'PANSARI SHASHA BLACK SALT 200GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA BLACK SALT 200GM', '1 gms$;250 gms$;200GM', '1$;10$;20', 1, 1, 'product/thump_1601981752.jpg', NULL, '', '2020-10-06 16:25:52', 0, 0),
(169, 'MDH GARAM MASALA 100GM ', 'PINKTOKRI', 1, 6, 'MDH GARAM MASALA 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;66', 1, 1, 'product/thump_1601982026.jpg', NULL, '', '2020-10-06 16:30:26', 0, 0),
(170, 'MDH DEGGI MIRCH 100GM', 'PINKTOKRI', 1, 6, 'MDH DEGGI MIRCH 100GM', '1 gms$;250 gms$;100GM', '1$;10$;55', 1, 1, 'product/thump_1601982323.jpg', NULL, '', '2020-10-06 16:35:23', 0, 0),
(171, 'MDH KASOORI METHI 25GM ', 'PINKTOKRI', 1, 6, 'MDH KASOORI METHI 25GM ', '1 gms$;250 gms$;25GM', '1$;10$;21', 1, 1, 'product/thump_1601982536.jpg', NULL, '', '2020-10-06 16:38:56', 0, 0),
(172, 'MDH SAMBHAR MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH SAMBHAR MASALA 100GM', '1 gms$;250 gms$;100GM', '1$;10$;53', 1, 1, 'product/thump_1601982702.jpg', NULL, '', '2020-10-06 16:41:42', 0, 0),
(173, 'MDH JAL JEERA MASALA 100GM ', 'PINKTOKRI', 1, 6, 'MDH JAL JEERA MASALA 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;45', 1, 1, 'product/thump_1601982834.jpg', NULL, '', '2020-10-06 16:43:54', 0, 0),
(174, 'MDH VEG. BIRYANI MASALA 50GM', 'PINKTOKRI', 1, 6, 'MDH VEG. BIRYANI MASALA 50GM', '1 gms$;250 gms$;50GM', '1$;10$;47', 1, 1, 'product/thump_1601982984.jpg', NULL, '', '2020-10-06 16:46:24', 0, 0),
(175, 'MDH BLACK PEPPER POWDER 50GM', 'PINKTOKRI', 1, 6, 'MDH BLACK PEPPER POWDER 50GM', '1 gms$;250 gms$;50GM', '1$;10$;60', 1, 1, 'product/thump_1601983165.jpg', NULL, '', '2020-10-06 16:49:25', 0, 0),
(176, 'MDH LAL MIRCH POWDER 100GM', 'PINKTOKRI', 1, 6, 'MDH LAL MIRCH POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;29', 1, 1, 'product/thump_1601983322.jpg', NULL, '', '2020-10-06 16:52:02', 0, 1),
(177, 'MDH DAL MAKHANI MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH DAL MAKHANI MASALA 100GM', '1 gms$;250 gms$;100GM', '1$;10$;52', 1, 1, 'product/thump_1601983440.jpg', NULL, '', '2020-10-06 16:54:00', 0, 0),
(178, 'MDH CHUNKY CHAAT MASALA 100GM ', 'PINKTOKRI', 1, 6, 'MDH CHUNKY CHAAT MASALA 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;54', 1, 1, 'product/thump_1601983663.jpg', NULL, '', '2020-10-06 16:57:43', 0, 0),
(179, 'MDH CURRY POWDER 100GM ', 'PINKTOKRI', 1, 6, 'MDH CURRY POWDER 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;52', 1, 1, 'product/thump_1601984055.jpg', NULL, '', '2020-10-06 17:04:15', 0, 0),
(180, 'MDH DHANIA POWDER 100GM', 'PINKTOKRI', 1, 6, 'MDH DHANIA POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;26', 1, 1, 'product/thump_1601984175.jpg', NULL, '', '2020-10-06 17:06:15', 0, 0),
(181, 'MDH KARAHI PANEER MASALA 60GM', 'PINKTOKRI', 1, 6, 'MDH KARAHI PANEER MASALA 60GM', '60GM', '1$;10$;43', 1, 1, 'product/thump_1601984408.jpg', NULL, '', '2020-10-06 17:10:08', 0, 0),
(182, 'MDH HALDI POWDER 100GM ', 'PINKTOKRI', 1, 6, 'MDH HALDI POWDER 100GM', '1 gms$;250 gms$;100GM', '1$;10$;25', 1, 1, 'product/thump_1601984534.jpg', NULL, '', '2020-10-06 17:12:14', 0, 0),
(183, 'MDH KITCHEN KING (MIXED SPICES POWDER) 100GM', 'PINKTOKRI', 1, 6, 'MDH KITCHEN KING (MIXED SPICES POWDER) 100GM', '1 gms$;250 gms$;100GM', '1$;10$;58', 1, 1, 'product/thump_1601984690.jpg', NULL, '', '2020-10-06 17:14:50', 0, 0),
(184, 'MDH PAV BHAJI MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH PAV BHAJI MASALA 100GM', '1 gms$;250 gms$;100GM', '1$;10$;54', 1, 1, 'product/thump_1601984935.jpg', NULL, '', '2020-10-06 17:18:55', 0, 0),
(185, 'MDH CHICKEN MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH CHICKEN MASALA 100GM', '1 gms$;250 gms$;100GM', '1$;10$;58', 1, 1, 'product/thump_1601985031.jpg', NULL, '', '2020-10-06 17:20:31', 0, 0),
(186, 'MDH SHAHI PANEER MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH SHAHI PANEER MASALA 100GM', '1 gms$;250 gms$;100GM', '1$;10$;68', 1, 1, 'product/thump_1601985191.jpg', NULL, '', '2020-10-06 17:23:11', 0, 0),
(187, 'MADHUSUDAN DESI GHEE  500ML', 'PINKTOKRI', 6, 10, 'MADHUSUDAN DESI GHEE  500ML', '1 gms$;250 gms$;500ML', '1$;10$;205', 1, 1, 'product/thump_1601985667.jpg', NULL, '', '2020-10-06 17:31:07', 0, 0),
(188, 'MADHUSUDAN DESI GHEE 1LTR', 'PINKTOKRI', 6, 10, 'MADHUSUDAN DESI GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;405', 1, 1, 'product/thump_1601985784.jpg', NULL, '', '2020-10-06 17:33:04', 0, 0),
(189, 'PATANJALI COW\'S GHEE 1LTR ', 'PINKTOKRI', 6, 10, 'PATANJALI COW\'S GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;545', 1, 1, 'product/thump_1601985944.jpg', NULL, '', '2020-10-06 17:35:44', 0, 0),
(190, 'MILKFOOD RICH DESI GHEE (DANEDAR) 1LTR', 'PINKTOKRI', 6, 10, 'MILKFOOD RICH DESI GHEE (DANEDAR) 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;403', 1, 1, 'product/thump_1601986096.jpg', NULL, '', '2020-10-06 17:38:16', 0, 0),
(191, 'MADHUSUDAN GHEE (MADE FROM COW\'S MILK) 1LTR', 'PINKTOKRI', 6, 9, 'MADHUSUDAN GHEE (MADE FROM COW\'S MILK) 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;505', 1, 1, 'product/thump_1601986496.jpg', NULL, '', '2020-10-06 17:44:56', 0, 1),
(192, 'AMUL PURE GHEE 1LTR', 'PINKTOKRI', 6, 10, 'AMUL PURE GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;480', 1, 1, 'product/thump_1601986631.jpg', NULL, '', '2020-10-06 17:47:11', 0, 0),
(193, 'AMUL COW GHEE 1LTR', 'PINKTOKRI', 6, 10, 'AMUL COW GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;490', 1, 1, 'product/thump_1601986760.jpg', NULL, '', '2020-10-06 17:49:20', 0, 0),
(194, 'MOTHER DAIRY GHEE 1LTR', 'PINKTOKRI', 6, 10, 'MOTHER DAIRY GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;500', 1, 1, 'product/thump_1601986884.jpg', NULL, '', '2020-10-06 17:51:24', 0, 0),
(195, 'PARTAP DESI GHEE 1LTR', 'PINKTOKRI', 6, 10, 'PARTAP DESI GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;520', 1, 1, 'product/thump_1601987021.jpg', NULL, '', '2020-10-06 17:53:41', 0, 0),
(196, 'ANANDA PURE GHEE 1LTR', 'PINKTOKRI', 6, 10, 'ANANDA PURE GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;400', 1, 1, 'product/thump_1601987146.jpg', NULL, '', '2020-10-06 17:55:46', 0, 0),
(197, 'AASHIRVAD SVASTI PURE COW GHEE 1LTR', 'PINKTOKRI', 6, 10, 'AASHIRVAD SVASTI PURE COW GHEE 1LTR', '1 gms$;250 gms$;1LTR', '1$;10$;500', 1, 1, 'product/thump_1601987249.jpg', NULL, '', '2020-10-06 17:57:29', 0, 0),
(198, 'LD HING ASAFOETIDA (HING) PURE DANEDAR 10GM', 'PINKTOKRI', 1, 6, 'LD HING ASAFOETIDA (HING) PURE DANEDAR 10GM', '1 gms$;250 gms$;10GM', '1$;10$;200', 1, 1, 'product/thump_1601987793.jpg', NULL, '', '2020-10-06 18:06:33', 0, 0),
(199, 'LD HING COMPOUNDED 5GM', 'PINKTOKRI', 1, 6, 'LD HING COMPOUNDED 5GM', '1 gms$;250 gms$;5GM', '1$;10$;15', 1, 1, 'product/thump_1601987949.jpg', NULL, '', '2020-10-06 18:09:09', 0, 0),
(200, 'LD HING COMPOUNDED 5GM', 'PINKTOKRI', 1, 6, 'LD HING COMPOUNDED 5GM', '1 gms$;250 gms$;5GM', '1$;10$;15', 1, 1, 'product/thump_1601988115.jpg', NULL, '', '2020-10-06 18:11:55', 0, 0),
(201, 'LD HING COMPOUNDED 27.5GM', 'PINKTOKRI', 1, 6, 'LD HING COMPOUNDED 27.5GM', '1 gms$;250 gms$;27.5GM', '1$;10$;50', 1, 1, 'product/thump_1601988256.jpg', NULL, '', '2020-10-06 18:14:16', 0, 0),
(202, 'PINKTOKRI JEERA 250GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI JEERA 250GM', '1 gms$;250 gms$;250GM', '1$;10$;65', 1, 1, 'product/thump_1601989288.jpeg', NULL, '', '2020-10-06 18:31:28', 0, 0),
(203, 'PINKTOKRI JEERA 100GM ', 'PINKTOKRI', 1, 6, 'PINKTOKRI JEERA 100GM ', '1 gms$;250 gms$;100GM', '1$;10$;29', 1, 1, 'product/thump_1601989348.jpeg', NULL, '', '2020-10-06 18:32:28', 0, 0),
(204, 'PINKTOKRI BAYLEAF 50GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI BAYLEAF 50GM', '1 gms$;250 gms$;50GM', '1$;10$;20', 1, 1, 'product/thump_1601989491.jpeg', NULL, '', '2020-10-06 18:34:51', 0, 0),
(205, 'PINKTOKRI YELLOW MUSTARD SEEDS 100GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI YELLOW MUSTARD SEEDS 100GM', '1 gms$;250 gms$;100GM', '1$;10$;20', 1, 1, 'product/thump_1601989653.jpeg', NULL, '', '2020-10-06 18:37:33', 0, 0),
(206, 'PINKTOKRI RYE SEEDS 100GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI RYE SEEDS 100GM', '1 gms$;250 gms$;100GM', '1$;10$;20', 1, 1, 'product/thump_1601989769.jpeg', NULL, '', '2020-10-06 18:39:29', 0, 0),
(207, 'PINKTOKRI MUSTARD SEEDS 100GM', 'PINKTOKRI ', 1, 6, 'PINKTOKRI MUSTARD SEEDS 100GM', '1 gms$;250 gms$;100GM', '1$;10$;15', 1, 1, 'product/thump_1601989838.jpeg', NULL, '', '2020-10-06 18:40:38', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rate_order`
--

CREATE TABLE `rate_order` (
  `id` int(8) NOT NULL,
  `oid` text NOT NULL,
  `uid` int(11) NOT NULL,
  `msg` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aid` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject` int(11) NOT NULL DEFAULT 0,
  `accept` int(11) NOT NULL DEFAULT 0,
  `complete` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`id`, `name`, `mobile`, `email`, `aid`, `address`, `status`, `password`, `reject`, `accept`, `complete`, `a_status`) VALUES
(2, 'Delivery Boy1', '1234567890', 'delboy@gail.com', 6, 'Test Address', 1, '123456', 0, 5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rnoti`
--

CREATE TABLE `rnoti` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rnoti`
--

INSERT INTO `rnoti` (`id`, `rid`, `msg`, `date`) VALUES
(9, 2, 'You have an order assigned to you.', '2020-08-16 14:35:29'),
(10, 2, 'You have an order assigned to you.', '2020-08-16 15:36:00'),
(11, 2, 'You have an order assigned to you.', '2020-08-16 20:27:45'),
(12, 2, 'You have an order assigned to you.', '2020-08-17 06:34:48'),
(13, 2, 'You have an order assigned to you.', '2020-08-17 07:13:41'),
(14, 2, 'You have an order assigned to you.', '2020-08-17 07:16:22'),
(15, 2, 'You have an order assigned to you.', '2020-08-17 13:01:37'),
(16, 2, 'You have an order assigned to you.', '2020-08-25 18:18:15'),
(17, 2, 'You have an order assigned to you.', '2020-09-08 16:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `one_key` text NOT NULL,
  `one_hash` text NOT NULL,
  `r_key` text NOT NULL,
  `r_hash` text NOT NULL,
  `currency` text CHARACTER SET utf8 NOT NULL,
  `privacy_policy` longtext NOT NULL,
  `about_us` longtext NOT NULL,
  `contact_us` longtext NOT NULL,
  `o_min` int(11) NOT NULL,
  `timezone` text NOT NULL,
  `tax` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `title` text NOT NULL,
  `terms` text NOT NULL,
  `shipping_charge` int(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `one_key`, `one_hash`, `r_key`, `r_hash`, `currency`, `privacy_policy`, `about_us`, `contact_us`, `o_min`, `timezone`, `tax`, `logo`, `favicon`, `title`, `terms`, `shipping_charge`) VALUES
(1, 'cda3dc9c-1ea5-4666-96b8-f7844a8fdc12', 'ZmUxMDUzOTAtOTE5Mi00MzNhLWFkNDktMjk1ZTY0MDA5Mzcz', 'b423ab5d-0df3-486d-8034-e09ca3bbee96', 'Yzg1YjRkM2ItOTEyNy00NDc2LWFiYTQtYzY1YjEwMzQ3N2Vk', '₹', '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pinktokri</strong>&nbsp;Delivery App app as a Free app. This SERVICE is provided by <strong>Pinktokri</strong> at no cost and is intended for use as is.</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at <strong>Pinktokri</strong> Delivery App unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/support/privacy/\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n	<li><a href=\"https://onesignal.com/privacy_policy\" target=\"_blank\">One Signal</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2020-08-16</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at [+919876543210].</p>\r\n', '<p><strong>About Pinktokri&nbsp;Delivery App </strong></p>\r\n\r\n<p>is the firm belives to delivered fresh Veggies, Fruits &amp; Heathy Juices to the consumers. As it has observed that to buy vegetables &amp; Fruits from the Local Vendor is very expensive. So we provide a platform for you to buy Quality products at a best price.Be it the freshest fruits &amp; vegetables, the finest meats, wide array of cheese, irresistible bakery products and more, for us, our customers&rsquo; needs come first and to serve them better and offer the best in terms of quality, benefits, flavour and taste we have grown and nurtured our own brands over the years.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Whether you want to order at the last minute or are looking for fresh, handpicked fruits and vegetables or want free delivery for household items - we are your daily online convenience store.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>App Features for easy Online Grocery Shopping</strong></p>\r\n\r\n<p><br />\r\n- Simplified design with easy navigation<br />\r\n- Appealing and persuasive user interface<br />\r\n- Faster browsing with just a click!<br />\r\n- Instant confirmation of receipt of your order<br />\r\n- Quick search and quicker check-outs<br />\r\n- Anywhere, anytime shopping convenience<br />\r\n- Innovative technology ensuring best-in-class customer experience<br />\r\n- Regular updates and notifications</p>\r\n', '<p>WZ 2/1, 2nd Floor, Hari Singh Park,<br />\r\nMultan Nagar, Paschim Vihar,New Delhi, India- 110056</p>\r\n<p>WhatsApp or Call: +91 987654321</p>\r\n', 300, 'Asia/Kolkata', 0, 'website/logo.png', 'website/thump_1599468824.png', 'Pink Tokri', '<p><strong>Terms &amp; Conditions</strong></p>\r\n\r\n<p>By downloading or using the app, these terms will automatically apply to you &ndash; you should make sure therefore that you read them carefully before using the app. You&rsquo;re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You&rsquo;re not allowed to attempt to extract the source code of the app, and you also shouldn&rsquo;t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to Homofy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pinktokri&nbsp;is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you&rsquo;re paying for.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Pinktokri Delivery App app stores and processes personal data that you have provided to us, in order to provide my Service. It&rsquo;s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone&rsquo;s security features and it could mean that the Homofy Delivery App app won&rsquo;t work properly or at all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The app does use third party services that declare their own Terms and Conditions.</p>\r\n\r\n<p>Link to Terms and Conditions of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://policies.google.com/terms\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/crashlytics\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n	<li><a href=\"https://onesignal.com/tos\" target=\"_blank\">One Signal</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You should be aware that there are certain things that cscodetech will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but Mayamart&nbsp;cannot take responsibility for the app not working at full functionality if you don&rsquo;t have access to Wi-Fi, and you don&rsquo;t have any of your data allowance left.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&rsquo;re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you&rsquo;re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you&rsquo;re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Along the same lines, cscodetech cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged &ndash; if it runs out of battery and you can&rsquo;t turn it on to avail the Service, cscodetech cannot accept responsibility.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>With respect to cscodetech&rsquo;s responsibility for your use of the app, when you&rsquo;re using the app, it&rsquo;s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. cscodetech accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At some point, we may wish to update the app. The app is currently available on Android &ndash; the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you&rsquo;ll need to download the updates if you want to keep using the app. Homofy&nbsp;does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n\r\n<p>I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page.</p>\r\n\r\n<p>These terms and conditions are effective as of 2020-08-16</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at [+919876543210].</p>\r\n', 60);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `cat_id`, `name`, `img`) VALUES
(1, 1, 'DAL / PULSES', 'cat/thump_1600858341.jpg'),
(2, 1, 'DRY FRUITS', 'cat/thump_1600858371.jpg'),
(3, 1, 'GHEE & VANASPATI', 'cat/thump_1600858387.jpg'),
(4, 1, 'FLOURS & GRAINS', 'cat/thump_1600861312.jpg'),
(5, 1, 'RICE & RICE PRODUCT', 'cat/thump_1600858450.png'),
(6, 1, 'MASALA & SPICES', 'cat/thump_1600858468.jpg'),
(7, 1, 'SALT & SUGAR', 'cat/thump_1600858517.jpg'),
(8, 1, 'SOYA PRODUCT', 'cat/thump_1600858535.jpg'),
(9, 6, 'PET', 'cat/thump_1600858576.png'),
(10, 6, 'POUCH', 'cat/thump_1600858602.jpg'),
(11, 6, 'JERRY CAN', 'cat/thump_1600858627.jpg'),
(12, 6, 'TIN', 'cat/thump_1600858649.jpg'),
(13, 7, 'TEA', 'cat/thump_1600861336.jpg'),
(14, 7, 'COFFEE', 'cat/thump_1600858757.jpg'),
(15, 7, 'HEALTH DRINK', 'cat/thump_1600858782.jpg'),
(16, 7, 'SOFT DRINKS', 'cat/thump_1600858807.jpg'),
(17, 7, 'JUICES', 'cat/thump_1600858827.jpg'),
(18, 7, 'EAERGY DRINKS', 'cat/thump_1600858896.jpg'),
(19, 7, 'SQUASH & SYRUP', 'cat/thump_1600858936.jpg'),
(20, 7, 'WATER', 'cat/thump_1600858963.jpg'),
(21, 7, 'SODA & FLAVOUR', 'cat/thump_1600859028.jpg'),
(22, 8, 'BISCUITS & COOKIES', 'cat/thump_1600859065.jpg'),
(23, 8, 'KHARI & TOASTS ', 'cat/thump_1600859096.jpg'),
(24, 8, 'BREAKFAST CEREAL', 'cat/thump_1600859130.jpg'),
(25, 8, 'CHOCOLATE', 'cat/thump_1600859151.jpg'),
(26, 8, 'KETCHUP & SAUCE', 'cat/thump_1600861742.jpg'),
(27, 8, 'JAMS & SPREAD', 'cat/thump_1600859222.gif'),
(28, 8, 'PASTA & NOODLES', 'cat/thump_1600859252.jpg'),
(29, 8, 'READY TO COOK FOOD', 'cat/thump_1600859276.jpg'),
(30, 8, 'INDIAN SWEETS', 'cat/thump_1600861472.jpg'),
(31, 8, 'PICKLES', 'cat/thump_1600859410.jpg'),
(32, 8, 'NAMKEENS', 'cat/thump_1600859460.jpg'),
(33, 9, 'BODY WASH & SOUP', 'cat/thump_1600859483.jpg'),
(34, 9, 'SKIN CARE', 'cat/thump_1600859502.jpg'),
(35, 9, 'HAIR CARE', 'cat/thump_1600859543.jpg'),
(36, 9, 'ORAL CARE', 'cat/thump_1600861520.jpg'),
(37, 9, 'FEMININE HYGIENE', 'cat/thump_1600859591.jpg'),
(38, 9, 'DEOS & PERFUME', 'cat/thump_1600859616.jpg'),
(39, 9, 'SHAVING NEEDS', 'cat/thump_1600859636.jpg'),
(40, 9, 'PERSONAL HYGIENE', 'cat/thump_1600859673.jpg'),
(41, 9, 'BEAUTY PRODUCT', 'cat/thump_1600859695.jpg'),
(42, 10, 'DETERGENT & CAKE', 'cat/thump_1600859719.jpg'),
(43, 10, 'ALL PURPOSE CLEAN ', 'cat/thump_1600859747.jpg'),
(44, 10, 'DISH WASH', 'cat/thump_1600861293.jpg'),
(45, 10, 'FRESHENER ', 'cat/thump_1600859830.jpg'),
(46, 10, 'TISSUE PAPERS', 'cat/thump_1600859854.jpg'),
(47, 10, 'CLEANING TOOLS', 'cat/thump_1600859879.jpg'),
(48, 10, 'POOJA NEEDS', 'cat/thump_1600859897.jpg'),
(49, 10, 'HOME UNTILITY', 'cat/thump_1600859915.jpg'),
(50, 10, 'SHOE CARE', 'cat/thump_1600859958.jpg'),
(51, 11, 'BABY GROOMING', 'cat/thump_1600859989.jpg'),
(52, 11, 'BABY BATH & SOUP', 'cat/thump_1600860048.jpg'),
(53, 11, 'DIAPERS & WIPES', 'cat/thump_1600860075.jpg'),
(54, 11, 'BABY FOODS', 'cat/thump_1600861714.jpg'),
(55, 12, 'DAIRY ', 'cat/thump_1600860114.jpg'),
(56, 12, 'BREAD & BAN', 'cat/thump_1600860134.jpg'),
(58, 14, 'TIN FRUIT', 'product/thump_1600930796.jpg'),
(59, 14, 'PAC VEGETABLE', 'product/thump_1600930833.jpg'),
(60, 8, 'MAYO / CRAME', 'cat/thump_1600931755.jpg'),
(61, 7, 'VINEGAR', 'product/thump_1600935107.');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `id` int(11) NOT NULL,
  `mintime` text NOT NULL,
  `maxtime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`id`, `mintime`, `maxtime`) VALUES
(9, '09:00', '12:00'),
(10, '12:00', '15:00'),
(11, '15:00', '18:00'),
(12, '02:39', '16:43');

-- --------------------------------------------------------

--
-- Table structure for table `uread`
--

CREATE TABLE `uread` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `imei` text DEFAULT NULL,
  `email` text NOT NULL,
  `ccode` text NOT NULL,
  `mobile` text NOT NULL,
  `rdate` datetime NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `pin` text DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `imei`, `email`, `ccode`, `mobile`, `rdate`, `password`, `status`, `pin`, `area`) VALUES
(115, 'Abhishek Kumar', 'e3611233ea9b6252', 'abhishek@signtific.co.in', '+91', '123456789', '2020-08-16 13:40:32', '123456789', 1, NULL, 'Jaitpur Kalan'),
(116, 'Anshul bhadauria', 'dd4a18c6fc749db3', 'truewayip@gmail.com', '+91', '7300922727', '2020-08-16 16:50:46', 'Anshul@123', 1, NULL, NULL),
(117, 'ashutosh khande', 'dad82cf167d2c49f', 'ashutosh.khande', '+91', '9167601130', '2020-08-24 19:52:37', 'Ashu@9167', 1, NULL, NULL),
(126, 'Arun  Kumar', NULL, 'arun@gmail.com', '+91', '9988776655', '2020-09-30 18:20:30', '123456', 1, NULL, 'Jaitpur Kalan'),
(127, 'aman saxena', NULL, 'aman@gmail.com', '+91', '8854785693', '2020-10-01 13:04:35', '1234', 1, NULL, 'Jaitpur Kalan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area_db`
--
ALTER TABLE `area_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti`
--
ALTER TABLE `noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_list`
--
ALTER TABLE `payment_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_pinktokri`
--
ALTER TABLE `payment_pinktokri`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_order`
--
ALTER TABLE `rate_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rnoti`
--
ALTER TABLE `rnoti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uread`
--
ALTER TABLE `uread`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area_db`
--
ALTER TABLE `area_db`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_list`
--
ALTER TABLE `payment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_pinktokri`
--
ALTER TABLE `payment_pinktokri`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `rate_order`
--
ALTER TABLE `rate_order`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rnoti`
--
ALTER TABLE `rnoti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `uread`
--
ALTER TABLE `uread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
