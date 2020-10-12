-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2020 at 03:17 AM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinktokridb`
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
  `landmark` text,
  `type` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
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
(1, 'pinktokri', 'pink3131');

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
  `cid` int(11) NOT NULL DEFAULT '0'
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
  `status` int(11) NOT NULL DEFAULT '1'
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
  `rate` int(11) NOT NULL DEFAULT '0',
  `p_method` text,
  `rid` int(11) NOT NULL DEFAULT '0',
  `a_status` int(11) NOT NULL DEFAULT '0',
  `photo` longtext,
  `s_photo` longtext,
  `r_status` varchar(200) DEFAULT 'Not Assigned',
  `pickup` text,
  `tax` int(11) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `tid` text,
  `ship_charge` int(20) DEFAULT NULL,
  `payment_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `oid`, `uid`, `pname`, `pid`, `ptype`, `pprice`, `ptax`, `ddate`, `timesloat`, `order_date`, `status`, `qty`, `total`, `rate`, `p_method`, `rid`, `a_status`, `photo`, `s_photo`, `r_status`, `pickup`, `tax`, `address_id`, `tid`, `ship_charge`, `payment_id`) VALUES
(1, '#5f83e6016b642', 115, '0$;0$;0', '784$;176$;211', '250GM$;100GM$;180GM ', '35$;29$;47', '0$;0$;0', '13/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '1$;4$;5', 386, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 123, '0', 0, NULL),
(2, '#5f83e7faeba63', 115, '0$;0', '784$;211', '250GM$;180GM ', '35$;47', '0$;0', '20/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '1$;5', 330, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 109, '0', 60, NULL),
(3, '#5f83e847751b2', 115, '0', '784', '250GM', '35', '0', '20/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '12', 480, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 109, '0', 60, NULL),
(4, '#5f83f40e947e6', 115, 'MADHUSUDAN GHEE (MADE FROM COWS MILK) 1LTR$;MDH LAL MIRCH POWDER 100GM', '191$;176', '1LTR$;100GM', '505$;29', '0$;0', '26/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'cancelled', '1$;1', 534, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 110, '0', 0, NULL),
(5, '#5f83f79041372', 115, 'MADHUSUDAN GHEE (MADE FROM COWS MILK) 1LTR$;MDH LAL MIRCH POWDER 100GM', '191$;176', '1LTR$;100GM', '505$;29', '0$;0', '20/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '1$;1', 534, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 110, '0', 0, NULL),
(6, '#5f83fc3775fe7', 115, 'MADHUSUDAN GHEE (MADE FROM COWS MILK) 1LTR$;MDH LAL MIRCH POWDER 100GM', '191$;176', '1LTR$;100GM', '505$;29', '0$;0', '12/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '1$;1', 534, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 109, '0', 0, NULL),
(7, '#5f83fc9ec12b9', 115, 'MADHUSUDAN GHEE (MADE FROM COWS MILK) 1LTR$;MDH LAL MIRCH POWDER 100GM', '191$;176', '1LTR$;100GM', '505$;29', '0$;0', '27/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '1$;1', 534, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 109, '0', 0, NULL),
(8, '#5f83fe6115ce2', 115, 'MADHUSUDAN GHEE (MADE FROM COWS MILK) 1LTR$;MDH LAL MIRCH POWDER 100GM', '191$;176', '1LTR$;100GM', '505$;29', '0$;0', '20/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '1$;1', 534, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 109, '0', 0, NULL),
(9, '#5f83ff187593e', 115, 'MADHUSUDAN GHEE (MADE FROM COWS MILK) 1LTR', '191', '1LTR', '505', '0', '13/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'pending', '1', 505, 0, 'Cash On Delivery', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 122, '0', 0, NULL),
(10, '#5f841f7ed67e0', 115, 'MADHUSUDAN GHEE (MADE FROM COWS MILK) 1LTR', '191', '1LTR', '505', '0', '20/10/2020', '9:00 AM - 12:00 PM', '2020-10-12', 'cancelled', '6', 3030, 0, 'Pickup Myself', 0, 0, NULL, NULL, 'Not Assigned', NULL, 0, 122, '0', 0, NULL);

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
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_list`
--

INSERT INTO `payment_list` (`id`, `img`, `title`, `cred_title`, `cred_value`, `status`) VALUES
(1, 'payment/thump_1589451371.png', 'Razorpay', 'rzp_live_L7YSHulfVFytQT', '1lflSwEGGJtF3pA9sZcBdyBO', 1),
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
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `prel` longtext,
  `date` datetime NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `popular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `ptax`, `prel`, `date`, `discount`, `popular`) VALUES
(2, 'DEL MONTE RED CHILLI SAUCE 190GM ', 'SWATI AGRNCIES', 8, 26, 'DELM RED CHIILI SAUCE ', '190GM', '50', 1, 1, 'product/thump_1600925935.jpg', NULL, '', '2020-09-24 11:08:55', 0, 0),
(3, 'DELM GREEN CHIILI SAUCE 190GM', 'SWATI AGRNCIES', 8, 26, 'DELM G. C. SAUCE', '190GM', '50', 1, 1, 'product/thump_1600926300.jpg', NULL, '', '2020-09-24 11:15:00', 0, 0),
(4, 'DEL MONTE SCHEZWAN SAUCE 190GM', 'SWATI AGRNCIES', 8, 26, 'DELM SCHEZWAN SAUCE', '190GM', '50', 1, 1, 'product/thump_1600926700.jpg', NULL, '', '2020-09-24 11:21:40', 0, 0),
(5, 'DEL MONTE EGGLESS MAYO SPOUT 950 GM', 'SWATI AGRNCIES', 8, 60, 'DELM EGGLESS MAYO ', '950', '130', 1, 1, 'product/thump_1600926851.jpg', NULL, '', '2020-09-24 11:24:11', 0, 1),
(6, 'DEL MONTE PASTA SPIRALI WW 500GM', 'SWATI AGRNCIES', 8, 28, 'DELM PASTA SPIRALI ', '500', '210', 1, 1, 'product/thump_1600927189.jpg', NULL, '', '2020-09-24 11:29:49', 0, 0),
(7, 'DEL MONTE PASTA PENNE 500GM', 'SWATI AGRNCIES', 8, 28, 'DELM PASTA PENNE RIGATE ', '500', '175', 1, 1, 'product/thump_1600927391.jpg', NULL, '', '2020-09-24 11:33:11', 0, 0),
(8, 'DEL MONE OLIVE BLACK PITTED 450GM', 'SWATI AGRNCIES', 14, 58, 'DELM BLACK PITTED 450G', '210$;450G', '210', 1, 1, 'product/thump_1600927551.jpg', NULL, '', '2020-09-24 11:35:51', 0, 0),
(9, 'DEL MONTE OLIVE GREEN SLICED 450GM', 'SWATI AGRNCIES', 14, 58, 'DELM GREEN SLICED', '450GM', ' 210', 1, 1, 'product/thump_1600927730.jpeg', NULL, '', '2020-09-24 11:38:50', 0, 0),
(10, 'DEL MONTE OLIVE BLACK SLICE 450', 'SWATI AGRNCIES', 14, 58, 'DELM BLACK SLI OLIVE', '450GM', '190', 1, 1, 'product/thump_1600928088.jpg', NULL, '', '2020-09-24 11:44:48', 0, 0),
(11, 'DEL MONTE OLIVE GREEN PITTED 450', 'SWATI AGRNCIES', 14, 58, 'DELM GREEN PITTED OLIVE', '450GM', '215', 1, 1, 'product/thump_1600928234.jpg', NULL, '', '2020-09-24 11:47:14', 0, 0),
(12, 'DEL MONTE OLIVE BLACK SLICED 235GM', 'SWATI AGRNCIES', 14, 58, 'DELM BLACK SLI', '235G', '120', 1, 1, 'product/thump_1600928549.jpg', NULL, '', '2020-09-24 11:52:29', 0, 0),
(13, 'DEL MONTE OLIVE BLACK PITTED 235G', 'SWATI AGRNCIES', 14, 58, 'DELM OLIVE BLACK SLICE', '235GM$;235G', '120', 1, 1, 'product/thump_1600928792.jpg', NULL, '', '2020-09-24 11:56:32', 0, 0),
(14, 'DEL MONTE OLIVE GREEN SLICED 235G', 'SWATI AGRNCIES', 14, 58, 'DELM OLIVE GREEN SLICED', '235G', '120', 1, 1, 'product/thump_1600929639.jpeg', NULL, '', '2020-09-24 12:10:39', 0, 0),
(15, 'DEL MONTE OLIVE GREEN PITTED 235G', 'SWATI AGRNCIES', 14, 58, 'DELM OLIVE GREEN PITTED', '235G', '120', 1, 1, 'product/thump_1600929969.jpg', NULL, '', '2020-09-24 12:16:09', 0, 0),
(16, 'DEL MONTE PINE SLICEEOE ', 'SWATI AGRNCIES', 14, 58, 'DELM PINE SLICE', '1.5', '130', 1, 1, 'product/thump_1600931960.jpg', NULL, '', '2020-09-24 12:49:20', 0, 0),
(17, 'DEL MONTE PINE SLICE 2.5', 'SWATI AGRNCIES', 14, 58, 'DELM PINE SLICE', '2.5', '190', 1, 1, 'product/thump_1600932063.jpg', NULL, '', '2020-09-24 12:51:03', 0, 0),
(18, 'DEL MONTE FRUIT COCKTAIL 2.5', 'SWATI AGRNCIES', 14, 58, 'DELM FRUIT COCKTAIL', '2.5', '190', 1, 1, 'product/thump_1600932170.jpg', NULL, '', '2020-09-24 12:52:50', 0, 0),
(19, 'DEL MONTE CREAM STYLE SWEET CORN 425G', 'SWATI AGRNCIES', 14, 58, 'DELM C.S SWEET CORN', '425GM', '90', 1, 1, 'product/thump_1600932785.jpg', NULL, '', '2020-09-24 13:03:05', 0, 0),
(20, 'DEL MONTE WHOLE  CORN KERNELS 420G', 'SWATI AGRNCIES', 14, 58, '\r\nDELM WHOLE CORN', '420G', '70', 1, 1, 'product/thump_1600933053.jpg', NULL, '', '2020-09-24 13:07:33', 0, 0),
(21, 'DEL MONTE BAKED BEANS IN SAUCE 450G', 'SWATI AGRNCIES', 14, 58, 'DELM BAKED BEANS', '450GM', '110', 1, 1, 'product/thump_1600933224.jpg', NULL, '', '2020-09-24 13:10:24', 0, 0),
(23, 'DEL MONTE PRUNES PROMO 340GM', 'SWATI AGRNCIES', 14, 58, 'DELM PRUNES PROMO', '340GM', '395', 1, 1, 'product/thump_1600933342.png', NULL, '', '2020-09-24 13:12:22', 0, 1),
(24, 'DEL MONTE CRANBERRIES 250G', 'SWATI AGRNCIES', 14, 58, 'DELM CRANBERRIES', '250G', '300', 1, 1, 'product/thump_1600933465.jpg', NULL, '', '2020-09-24 13:14:25', 0, 0),
(25, 'DEL MONTE DRIED BLUEBERRIES 130G', 'SWATI AGRNCIES', 14, 58, 'DELM BLUEBERRIES ', '250G$;130G', '300$;475', 1, 1, 'product/thump_1600933614.jpg', NULL, '', '2020-09-24 13:16:54', 0, 0),
(26, 'DEL MONTE PINE CRUSH SW 240ML', 'SWATI AGRNCIES', 7, 17, 'DELM FRUIT JUICE', '240ML', '10', 1, 1, 'product/thump_1600933782.jpg', NULL, '', '2020-09-24 13:19:42', 0, 0),
(27, 'DEL MONTE GREEN APPLE FRUIT DRINK ', 'SWATI AGRNCIES', 7, 17, 'DELM GREEN APPLE JUICE', '240ML', '50', 1, 1, 'product/thump_1600933929.jpg', NULL, '', '2020-09-24 13:22:09', 0, 1),
(28, 'DEL MONTE 100% MIX FRUIT JUICE WITH VITA ACE', 'SWATI AGRNCIES', 7, 17, 'DELM MIX FRUIT JUICE', '240ML', '70', 1, 1, 'product/thump_1600934143.jpg', NULL, '', '2020-09-24 13:25:43', 0, 0),
(29, 'DEL MONTE FRUIT COCKTAIL 1.5', 'SWATI AGRNCIES', 14, 58, 'DELM FRUIT COCKTAIL', '1.5', '130', 1, 1, 'product/thump_1600934752.jpg', NULL, '', '2020-09-24 13:35:52', 0, 0),
(30, 'DEL MONTE TOMATO KETCHUP SPOUT 950G', 'SWATI AGRNCIES', 8, 26, 'DELM TOMATO KETCHUP', '950G', '130', 1, 1, 'product/thump_1600934933.jpg', NULL, '', '2020-09-24 13:38:53', 0, 0),
(31, 'DEL MONTE BREWED VINEGAR 180GM', 'SWATI AGRNCIES', 7, 61, 'DELM VINEGAR', '180GM', '50', 1, 1, 'product/thump_1600935085.jpg', NULL, '', '2020-09-24 13:41:25', 0, 0),
(32, 'HERSHEY CHOCOLATE SYRUP 6623 GM', 'JJ IMPEX', 8, 25, 'HERSHEYS SYRUP', '623GM', '200', 1, 1, 'product/thump_1600939341.jpg', NULL, '', '2020-09-24 14:52:21', 0, 0),
(34, 'AMERICAN GARDEN PANCAKE SYRUP ', 'JJ IMPEX', 7, 19, 'AG PANCAKE SYRUP', '709ML', '435', 1, 1, 'product/thump_1600939662.jpg', NULL, '', '2020-09-24 14:57:42', 0, 0),
(35, 'ABBIES VINEGAR APPLE CIDER 473', 'JJ IMPEX', 7, 61, 'ABBIES APLLE CIDER', '473', '2175', 1, 1, 'product/thump_1600939790.jpg', NULL, '', '2020-09-24 14:59:50', 0, 0),
(36, 'FERRERO ROCHER ', 'JJ IMPEX', 8, 25, 'FR T16 20PCS', '200G', '529', 1, 1, 'product/thump_1600939923.jpg', NULL, '', '2020-09-24 15:02:03', 0, 0),
(38, 'GOLDEN CROWN  WHITE VINEGAR ', 'JJ IMPEX', 7, 61, 'GC VINEGAR', '220ML', '39', 1, 1, 'product/thump_1600940083.jpg', NULL, '', '2020-09-24 15:04:43', 0, 0),
(39, 'BRAGG APPLE CIDER VINEGAR ', 'JJ IMPEX', 7, 61, 'BRAGG APPLE CIDER', '473ML', '530', 1, 1, 'product/thump_1600940189.jpg', NULL, '', '2020-09-24 15:06:29', 0, 0),
(40, 'ABBIES BARBECUE SAUCE ', 'JJ IMPEX', 8, 26, 'ABBIES BBQ SAUCE', '510G', '265', 1, 1, 'product/thump_1600940351.jpg', NULL, '', '2020-09-24 15:09:11', 0, 0),
(41, 'SALSITO WRAP TORTILLAS ', 'JJ IMPEX', 8, 24, 'WRAP TORTILLAS', '348$;348G', '190', 1, 1, 'product/thump_1600940488.jpg', NULL, '', '2020-09-24 15:11:28', 0, 0),
(42, 'GOLDEN CROWN BAKING POWDER', 'JJ IMPEX', 1, 6, 'BAKING POWDER', '100G', '30', 1, 1, 'product/thump_1600940569.jpeg', NULL, '', '2020-09-24 15:12:49', 0, 0),
(43, 'AXE DARK TEMPTATION', 'NARAYAN AGENCY', 9, 38, 'AXE DARK TEMPTATION 150ML DM', '150ML', '150', 1, 1, 'product/thump_1601884948.jpg', NULL, '', '2020-10-05 13:32:28', 0, 0),
(44, 'AXE GOLD TEMPTATION DEO', 'NARAYAN AGENCY', 9, 38, 'AXE GOLD TEMPTATION DEO 150ML', '150ML', '150', 1, 1, 'product/thump_1601885203.jpg', NULL, '', '2020-10-05 13:36:43', 0, 0),
(45, 'AXE PROVOKE', 'NARAYAN AGENCY', 9, 38, 'AXE PROVOKE 150ML DM', '150ML', '150', 1, 1, 'product/thump_1601885405.jpg', NULL, '', '2020-10-05 13:40:05', 0, 0),
(46, 'AXE PULSE', 'NARAYAN AGENCY', 9, 38, 'AXE PULSE 150ML DM', '150ML', '150', 1, 1, 'product/thump_1601885511.jpg', NULL, '', '2020-10-05 13:41:51', 0, 0),
(47, 'AXE RECHARGE 24X7 ', 'NARAYAN AGENCY', 9, 38, 'AXE RECHARGE 24X7 150ML DM', '150ML', '160', 1, 1, 'product/thump_1601885869.jpg', NULL, '', '2020-10-05 13:47:49', 0, 0),
(48, 'AXE RECHARGE GAMEFACE DEO', 'NARAYAN AGENCY', 9, 38, 'AXE RECHARGE GAMEFACE DEO 150ML', '150ML', '160', 1, 1, 'product/thump_1601886134.JPG', NULL, '', '2020-10-05 13:52:14', 0, 0),
(49, 'AXE RECHARGE MIDNIGHT DEO BODY SPRAY ', 'NARAYAN AGENCY', 9, 38, 'AXE RECHARGE MIDNIGHT DEO BODY SPRAY CA', '150ML', '160', 1, 1, 'product/thump_1601886493.JPG', NULL, '', '2020-10-05 13:58:13', 0, 0),
(50, 'AXE  SIGNATURE DENIM AFTER SHAVE LOTION', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE DENIM AFTER SHAVE LOTION 50ML', '50ML', '130', 1, 1, 'product/thump_1601886760.jpg', NULL, '', '2020-10-05 14:02:40', 0, 0),
(51, 'AXE SIGNATURE DENIM AFTER SHAVE LOTION ', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE DENIM AFTER SHAVE LOTION 100ML\r\n', '100ML', '220', 1, 1, 'product/thump_1601887108.jpg', NULL, '', '2020-10-05 14:08:28', 0, 0),
(52, 'AXE SIGNATURE DENIM TALC', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE DENIM TALC 100G', '100G', '70', 1, 1, 'product/thump_1601887349.jpg', NULL, '', '2020-10-05 14:12:29', 0, 0),
(53, 'AXE SIGNATURE DENIM TALC 300G', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE DENIM TALC 300G', '300G', '135', 1, 1, 'product/thump_1601887487.jpg', NULL, '', '2020-10-05 14:14:47', 0, 0),
(54, 'AXE SIGNATURE PULSE TALC 300G', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE PULSE TALC 300G', '300G', '135', 1, 1, 'product/thump_1601887622.jpg', NULL, '', '2020-10-05 14:17:02', 0, 0),
(55, 'AXE SIGNATURE TEMPTATION 100G', 'NARAYAN AGENCY', 9, 34, 'AXE SIGNATURE TEMPTATION 100G', '100G', '68', 1, 1, 'product/thump_1601887776.jpg', NULL, '', '2020-10-05 14:19:36', 0, 0),
(56, 'AXE SIGNATURE DENIM SHVG CREAM 60G+30%EXT', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE DENIM SHVG CREAM 60G+30%EXT', '60G', '65', 1, 1, 'product/thump_1601887956.jpg', NULL, '', '2020-10-05 14:22:36', 0, 0),
(57, 'AXE SIG DARK TEMP 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIG DARK TEMP 122ML', '122ML', '160', 1, 1, 'product/thump_1601888134.jpg', NULL, '', '2020-10-05 14:25:34', 0, 0),
(58, 'AXE SIG GOLD TEMP 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIG GOLD TEMP 122ML', '122ML', '170', 1, 1, 'product/thump_1601888308.jpg', NULL, '', '2020-10-05 14:28:28', 0, 0),
(59, 'AXE SIGN BODY PERFUME INTENSE 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGN BODY PERFUME INTENSE 122ML', '122ML', '170', 1, 1, 'product/thump_1601888460.jpg', NULL, '', '2020-10-05 14:31:00', 0, 0),
(60, 'AXE SIGNATURE BODY PERFUME MAVERICK 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME MAVERICK 122ML', '122ML', '160', 1, 1, 'product/thump_1601888580.jpg', NULL, '', '2020-10-05 14:33:00', 0, 0),
(61, 'AXE SIGNATURE BODY PERFUME ROGUE 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME ROGUE 122ML', '122ML', '160', 1, 1, 'product/thump_1601888683.jpg', NULL, '', '2020-10-05 14:34:43', 0, 0),
(62, 'AXE SIGNATURE BODY PERFUME SUAVE 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME SUAVE 122ML', '122ML', '160', 1, 1, 'product/thump_1601888840.jpg', NULL, '', '2020-10-05 14:37:20', 0, 0),
(63, 'AXE SIGNATURE BODY PERFUME MYSTERIOUS 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE BODY PERFUME MYSTERIOUS 122ML', '122ML', '160', 1, 1, 'product/thump_1601888955.jpg', NULL, '', '2020-10-05 14:39:15', 0, 0),
(64, 'AXE SIGNATURE CORPORATE BODY PERFUME 122ML', 'NARAYAN AGENCY', 9, 38, 'AXE SIGNATURE CORPORATE BODY PERFUME 122ML', '122ML', '160', 1, 1, 'product/thump_1601889126.jpg', NULL, '', '2020-10-05 14:42:06', 0, 0),
(65, 'AXE SIGNATURE SHAVING CREAM 30G', 'NARAYAN AGENCY', 9, 39, 'AXE SIGNATURE SHAVING CREAM 30G', '30G', '40', 1, 1, 'product/thump_1601889843.jpg', NULL, '', '2020-10-05 14:54:03', 0, 0),
(66, 'AXE SIGN TEMPTATION AFTER SHAVE LOTION 50ML', 'NARAYAN AGENCY', 9, 39, 'AXE SIGN TEMPTATION AFTER SHAVE LOTION 50ML', '50ML', '125', 1, 1, 'product/thump_1601890859.jpg', NULL, '', '2020-10-05 15:10:59', 0, 0),
(67, 'AXE TKCT CHAMP 17ML+PNDS MENS FW', 'NARAYAN AGENCY', 9, 38, 'AXE TKCT CHAMP 17ML+PNDS MENS FW', '17ML', '60', 1, 1, 'product/thump_1601891490.jpg', NULL, '', '2020-10-05 15:21:30', 0, 0),
(68, 'AXE TKCT INT 17ML+PONDS MENS FW FR', 'NARAYAN AGENCY', 9, 38, 'AXE TKCT INT 17ML+PONDS MENS FW FR', '15GM$;17ML', '60', 1, 1, 'product/thump_1601892041.jpg', NULL, '', '2020-10-05 15:30:41', 0, 0),
(69, 'CLEAR HAIR OIL 150ML', 'NARAYAN AGENCY', 9, 35, 'CAC HAIR OIL 150ML', '150ML', '105', 1, 1, 'product/thump_1601892310.jpg', NULL, '', '2020-10-05 15:35:10', 0, 0),
(70, 'CLEAR HAIR OIL 75ML', 'NARAYAN AGENCY', 9, 35, 'CLEAR HAIR OIL 75ML', '75ML', '48', 1, 1, 'product/thump_1601892428.jpg', NULL, '', '2020-10-05 15:37:08', 0, 0),
(71, 'CLINIC PLUS STRONG & LONG 340ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS STRONG & LONG 340ML', '340ML', '155', 1, 1, 'product/thump_1601892633.jpg', NULL, '', '2020-10-05 15:40:33', 0, 0),
(72, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 170ML', 'NARAYAN AGENCY', 9, 35, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 170ML', '170ML', '135', 1, 1, 'product/thump_1601893016.jpg', NULL, '', '2020-10-05 15:46:56', 0, 0),
(73, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 350ML', 'NARAYAN AGENCY', 9, 35, 'CLEAR COMPLETE ACTIVE CARE SHAMPOO 350ML', '350ML', '260', 1, 1, 'product/thump_1601893138.jpg', NULL, '', '2020-10-05 15:48:58', 0, 0),
(74, 'CLINIC PLUS NATURALS SHAMPOO 175ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS NATURALS SHAMPOO 175ML', '175ML', '81', 1, 1, 'product/thump_1601893266.jpg', NULL, '', '2020-10-05 15:51:06', 0, 0),
(75, 'CLINIC PLUS STRONG & LONG SHAMPOO 650ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS S&L SHAMPOO 650ML', '650ML', '270', 1, 1, 'product/thump_1601893432.jpg', NULL, '', '2020-10-05 15:53:52', 0, 0),
(76, 'CLINIC PLUS STRONG & LONG SHAMPOO 175ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS STRONG & LONG SHAMPOO 175ML', '175ML', '81', 1, 1, 'product/thump_1601893680.jpg', NULL, '', '2020-10-05 15:58:00', 0, 0),
(77, 'CLINIC PLUS NATURAL SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS NATURAL SHAMPOO 340ML', '340ML', '151', 1, 1, 'product/thump_1601893845.jpg', NULL, '', '2020-10-05 16:00:45', 0, 0),
(78, 'CLINIC PLUS NOURISHING HAIR OIL 200ML', 'NARAYAN AGENCY', 9, 35, 'CLINIC PLUS NOURISHING HAIR OIL 200ML', '200ML', '90', 1, 1, 'product/thump_1601894050.jpg', NULL, '', '2020-10-05 16:04:10', 0, 0),
(80, 'CLOSE UP ANTI-GERM EVERFRESH TOOTHPASTE 150G', 'NARAYAN AGENCY', 9, 36, 'CLOSE UP ANTI-GERM EVERFRESH TOOTHPASTE 150G', '150G', '80', 1, 1, 'product/thump_1601898021.jpg', NULL, '', '2020-10-05 17:10:21', 0, 0),
(81, 'CLOSEUP REDHOT EVERFRESH+TOOTHPASTE 80G', 'NARAYAN AGENCY', 9, 36, 'CLOSEUP REDHOT EVERFRESH+TOOTHPASTE 80G', '80G', '42', 1, 1, 'product/thump_1601898282.jpg', NULL, '', '2020-10-05 17:14:42', 0, 0),
(82, 'CLOSEUP REDHOT ANTI-GERM EVERFRESH PLUS 150+150GM', 'NARAYAN AGENCY', 9, 36, 'CLOSEUP REDHOT ANTI-GERM EVERFRESH PLUS 150+150GM', '150+150GM', '150', 1, 1, 'product/thump_1601898519.jpg', NULL, '', '2020-10-05 17:18:39', 0, 0),
(83, 'DOVE DRYNESS CARE CONDITIONER 180ML (DIMANTE)', 'NARAYAN AGENCY', 9, 35, 'DOVE DRYNESS CARE CONDITIONER 180ML (DIMANTE)', '180ML', '185', 1, 1, 'product/thump_1601898761.jpg', NULL, '', '2020-10-05 17:22:41', 0, 0),
(84, 'DOVE HAIRFALL RESCUE CONDITIONER 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE HAIRFALL RESCUE CONDITIONER 180ML', '180ML', '185', 1, 1, 'product/thump_1601898903.jpg', NULL, '', '2020-10-05 17:25:03', 0, 0),
(85, 'DOVE DAILY SHINE THERAPY SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY SHAMPOO 340ML', '340ML', '217', 1, 1, 'product/thump_1601901043.jpg', NULL, '', '2020-10-05 18:00:43', 0, 0),
(86, 'DOVE DAILY SHINE THERAPY SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY SHAMPOO 180ML', '180ML', '105', 1, 1, 'product/thump_1601901205.jpg', NULL, '', '2020-10-05 18:03:25', 0, 0),
(87, 'DOVE DANDRUFF CARE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DANDRUFF CARE SHAMPOO 180ML', '180ML', '137', 1, 1, 'product/thump_1601901307.jpg', NULL, '', '2020-10-05 18:05:07', 0, 0),
(88, 'DOVE DANDRUFF CARE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DANDRUFF CARE SHAMPOO 340ML', '340ML', '260', 1, 1, 'product/thump_1601901408.jpg', NULL, '', '2020-10-05 18:06:48', 0, 0),
(89, 'DOVE DRYNESS CARE THERAPY SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DRYNESS CARE THERAPY SHAMPOO 180ML', '180ML', '105', 1, 1, 'product/thump_1601901497.jpg', NULL, '', '2020-10-05 18:08:17', 0, 0),
(90, 'DOVE DRYNESS CARE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DRYNESS CARE SHAMPOO 340ML', '340ML', '215', 1, 1, 'product/thump_1601901618.jpg', NULL, '', '2020-10-05 18:10:18', 0, 0),
(91, 'DOVE DAILY SHINE THERAPY CONDITIONER 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY CONDITIONER 180ML', '180ML', '175', 1, 1, 'product/thump_1601901758.jpg', NULL, '', '2020-10-05 18:12:38', 0, 0),
(92, 'DOVE HAIRFALL RESCUE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE HAIRFALL RESCUE SHAMPOO 180ML', '180ML', '105', 1, 1, 'product/thump_1601901890.jpg', NULL, '', '2020-10-05 18:14:50', 0, 0),
(93, 'DOVE HAIRFALL RESCUE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE HAIRFALL RESCUE SHAMPOO 340ML', '340ML', '215', 1, 1, 'product/thump_1601901995.jpg', NULL, '', '2020-10-05 18:16:35', 0, 0),
(94, 'DOVE INTENSE REPAIR THERAPY 650ML', 'NARAYAN AGENCY', 9, 35, 'DOVE INTENSE REPAIR THERAPY 650ML', '650ML', '460', 1, 1, 'product/thump_1601902113.jpg', NULL, '', '2020-10-05 18:18:33', 0, 0),
(95, 'DOVE INTENSE REPAIR THERAPY 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE INTENSE REPAIR THERAPY 180ML', '180ML', '105', 1, 1, 'product/thump_1601902216.jpg', NULL, '', '2020-10-05 18:20:16', 0, 0),
(96, 'DOVE INTENSE REPAIR THERAPY 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE INTENSE REPAIR THERAPY 340ML', '340ML', '215', 1, 1, 'product/thump_1601902322.jpg', NULL, '', '2020-10-05 18:22:02', 0, 0),
(97, 'DOVE NOURISHING OIL CARE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE NOURISHING OIL CARE SHAMPOO 180ML', '180ML', '100', 1, 1, 'product/thump_1601902458.jpg', NULL, '', '2020-10-05 18:24:18', 0, 0),
(98, 'DOVE NOURISHING OIL CARE SHAMPOO 340ML', 'NARAYAN AGENCY', 9, 35, 'DOVE NOURISHING OIL CARE SHAMPOO 340ML', '340ML', '258', 1, 1, 'product/thump_1601902606.jpg', NULL, '', '2020-10-05 18:26:46', 0, 0),
(99, 'DOVE OXYGEN MOISTURE CONDITIONER 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE OXYGEN MOISTURE CONDITIONER 180ML', '180ML', '200', 1, 1, 'product/thump_1601902724.jpg', NULL, '', '2020-10-05 18:28:44', 0, 0),
(100, 'DOVE OXYGEN MOISTURE SHAMPOO 180ML', 'NARAYAN AGENCY', 9, 35, 'DOVE OXYGEN MOISTURE SHAMPOO 180ML', '180ML', '138', 1, 1, 'product/thump_1601902803.jpg', NULL, '', '2020-10-05 18:30:03', 0, 0),
(101, 'DOVE REPAIR DAMAGE THERAPY CONDITIONER 175ML', 'NARAYAN AGENCY', 9, 35, 'DOVE REPAIR DAMAGE THERAPY CONDITIONER 175ML', '175ML', '175', 1, 1, 'product/thump_1601902925.jpg', NULL, '', '2020-10-05 18:32:05', 0, 0),
(102, 'DOVE DAILY SHINE THERAPY SHAMPOO 650ML', 'NARAYAN AGENCY', 9, 35, 'DOVE DAILY SHINE THERAPY SHAMPOO 650ML', '650ML', '460', 1, 1, 'product/thump_1601903117.jpg', NULL, '', '2020-10-05 18:35:17', 0, 0),
(103, 'FAIR AND LOVELY BB CREAM 40GM', 'NARAYAN AGENCY', 9, 34, 'FAIR AND LOVELY BB CREAM 40GM', '40GM', '175', 1, 1, 'product/thump_1601903258.jpg', NULL, '', '2020-10-05 18:37:38', 0, 0),
(104, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 25GM', 'NARAYAN AGENCY', 9, 34, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 25GM', '25GM', '54', 1, 1, 'product/thump_1601903530.jpg', NULL, '', '2020-10-05 18:42:10', 0, 0),
(105, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 50GM', 'NARAYAN AGENCY', 9, 34, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 50GM', '50GM', '102', 1, 1, 'product/thump_1601903665.jpg', NULL, '', '2020-10-05 18:44:25', 0, 0),
(106, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 80GM', 'NARAYAN AGENCY', 9, 34, 'FAIR & LOVELY ADVANCE MULTI-VITAMINS 80GM', '80GM', '155', 1, 1, 'product/thump_1601903776.jpg', NULL, '', '2020-10-05 18:46:16', 0, 0),
(107, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 100GM', 'NARAYAN AGENCY', 9, 34, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 100GM', '100GM', '115', 1, 1, 'product/thump_1601903988.jpg', NULL, '', '2020-10-05 18:49:48', 0, 0),
(108, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 50GM', 'NARAYAN AGENCY', 9, 34, 'GLOW & LOVELY MULTI-VITAMINS FACE WASH 50GM', '50GM', '62', 1, 1, 'product/thump_1601904115.jpg', NULL, '', '2020-10-05 18:51:55', 0, 0),
(109, 'GLOW & HANDSOME 50GM FACE CREAM FOR MEN', 'NARAYAN AGENCY', 9, 34, 'GLOW & HANDSOME 50GM FACE CREAM ', '50GM', '122', 1, 1, 'product/thump_1601904940.jpg', NULL, '', '2020-10-05 19:05:40', 0, 0),
(110, 'INDULEKHA HAIRFALL CLEANSER BOTTLES 100ML', 'NARAYAN AGENCY', 9, 35, 'INDULEKHA HAIRFALL CLEANSER BOTTLES 100ML', '100ML', '130', 1, 1, 'product/thump_1601905099.jpg', NULL, '', '2020-10-05 19:08:19', 0, 0),
(111, 'LAKME 9TO5 CC CARE CREAM 9GM', 'NARAYAN AGENCY', 9, 34, 'LAKME 9TO5 CC CARE CREAM 9GM', '9GM', '99', 1, 1, 'product/thump_1601905328.jpg', NULL, '', '2020-10-05 19:12:08', 0, 0),
(112, 'TOP\'S GOLD LIME PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD LIME PICKLE 1KG', '1KG', '255', 1, 1, 'product/thump_1601973317.jpg', NULL, '', '2020-10-06 14:05:17', 0, 0),
(113, 'AASHIRWAD SHUDH CHAKKI ATTA 5KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD SHUDH CHAKKI ATTA 5KG', '5KG', '175', 1, 1, 'product/thump_1601973705.jpg', NULL, '', '2020-10-06 14:11:45', 0, 0),
(114, 'TOP\'S GOLD GREEN CHILLI PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD GREEN CHILLI PICKLE 1KG', '1 KG', '255', 1, 1, 'product/thump_1601973765.jpg', NULL, '', '2020-10-06 14:12:45', 0, 0),
(115, 'AASHIRWAD SHUDH CHAKKI ATTA 10KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD SHUDH CHAKKI ATTA 10KG', '10KG', '345', 1, 1, 'product/thump_1601973895.jpg', NULL, '', '2020-10-06 14:14:55', 0, 0),
(116, 'AASHIRWAD ATTA WITH MULTI-GRAINS 5KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD ATTA WITH MULTI-GRAINS 5KG', '5KG', '265', 1, 1, 'product/thump_1601974016.jpg', NULL, '', '2020-10-06 14:16:56', 0, 0),
(117, 'PANSARI MAIDA 500GM', 'PINKTOKRI', 1, 4, 'PANSARI MAIDA 500GM', '500GM', '22', 1, 1, 'product/thump_1601974270.jpg', NULL, '', '2020-10-06 14:21:10', 0, 0),
(118, 'PANSARI SOOJI (SEMOLINE) 500GM', 'PINKTOKRI', 1, 4, 'PANSARI SOOJI (SEMOLINE) 500GM', '500GM', '44', 1, 1, 'product/thump_1601974473.jpg', NULL, '', '2020-10-06 14:24:33', 0, 0),
(119, 'TOP\'S GOLD MANGO PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD MANGO PICKLE 1KG', '1KG', '255', 1, 1, 'product/thump_1601974671.jpg', NULL, '', '2020-10-06 14:27:51', 0, 0),
(120, 'PANSARI DALIA (BUY 1 GET 1) 500GM', 'PINKTOKRI', 1, 4, 'PANSARI DALIA (BUY 1 GET 1) 500GM', '500GM', '44', 1, 1, 'product/thump_1601974800.jpg', NULL, '', '2020-10-06 14:30:00', 0, 0),
(121, 'RAJDHANI BESAN GRAM FLOUR 1KG', 'PINKTOKRI', 1, 4, 'RAJDHANI BESAN GRAM FLOUR 1KG', '1KG', '89', 1, 1, 'product/thump_1601975047.jpg', NULL, '', '2020-10-06 14:34:07', 0, 0),
(122, 'RAJDHANI BESAN GRAM FLOUR 500GM', 'PINKTOKRI', 1, 4, 'RAJDHANI BESAN GRAM FLOUR 500GM', '500GM', '46', 1, 1, 'product/thump_1601975316.jpg', NULL, '', '2020-10-06 14:38:36', 0, 0),
(123, 'PANSARI BESAN GRAM FLOUR 1KG', 'PINKTOKRI', 1, 4, 'PANSARI BESAN GRAM FLOUR 1KG', '1KG', '85', 1, 1, 'product/thump_1601975548.jpg', NULL, '', '2020-10-06 14:42:28', 0, 0),
(124, 'PANSARI BESAN GRAM FLOUR 500GM', 'PINKTOKRI', 1, 4, 'PANSARI BESAN GRAM FLOUR 500GM', '500GM', '44', 1, 1, 'product/thump_1601975669.jpg', NULL, '', '2020-10-06 14:44:29', 0, 0),
(125, 'TOP\'S GOLD MIXED PICKLE 1KG', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD MIXED PICKLE 1KG', '1KG', '255', 1, 1, 'product/thump_1601975832.jpg', NULL, '', '2020-10-06 14:47:12', 0, 0),
(126, 'AGROPURE BESAN (MADE FROM CHANA DAL) 500GM', 'PINKTOKRI', 1, 4, 'AGROPURE BESAN (MADE FROM CHANA DAL) 500GM', '500GM', '45', 1, 1, 'product/thump_1601975877.jpg', NULL, '', '2020-10-06 14:47:57', 0, 0),
(127, 'SMITH & JONES GINGER GARLIC PASTE 200G', 'PINK TOKRI ', 1, 6, 'SMITH & JONES GINGER GARLIC PASTE 200G', '200GMS', '45', 1, 1, 'product/thump_1601976106.jpg', NULL, '', '2020-10-06 14:51:46', 0, 0),
(128, 'AASHIRWAD SELECT SHARBATI ATTA 10KG', 'PINKTOKRI', 1, 4, 'AASHIRWAD SELECT SHARBATI ATTA 10KG', '10KG', '500', 1, 1, 'product/thump_1601976204.jpg', NULL, '', '2020-10-06 14:53:24', 0, 0),
(129, 'AASHIRVAAD SELECT SHARBATI ATTA 5KG', 'PINKTOKRI', 1, 4, 'AASHIRVAAD SELECT SHARBATI ATTA 5KG', '5KG', '260', 1, 1, 'product/thump_1601976398.jpg', NULL, '', '2020-10-06 14:56:38', 0, 0),
(130, 'LIJJAT PAPAD PUNJABI MASALA 200G', 'PINK TOKRI ', 8, 29, 'LIJJAT PAPAD PUNJABI MASALA 200G', '200G', '68', 1, 1, 'product/thump_1601976405.webp', NULL, '', '2020-10-06 14:56:45', 0, 0),
(131, 'PANSARI CHAKKI FRESH ATTA 5KG', 'PINKTOKRI', 1, 4, 'PANSARI CHAKKI FRESH ATTA 5KG', '5KG', '145', 1, 1, 'product/thump_1601976565.jpg', NULL, '', '2020-10-06 14:59:25', 0, 0),
(132, 'LIJJAT PAPAD GARLIC 200G', 'PINK TOKRI ', 8, 29, 'LIJJAT PAPAD GARLIC 200G', '200G', '56', 1, 1, 'product/thump_1601976568.jpg', NULL, '', '2020-10-06 14:59:28', 0, 0),
(133, 'LIJJAT PAPAD GARLIC 200G', 'PINK TOKRI ', 8, 29, 'LIJJAT PAPAD GARLIC 200G', '200G', '56', 1, 1, 'product/thump_1601976570.jpg', NULL, '', '2020-10-06 14:59:30', 0, 0),
(134, 'PANSARI CHAKKI FRESH ATTA 10KG', 'PINKTOKRI', 1, 4, 'PANSARI CHAKKI FRESH ATTA 10KG', '10KG', '280', 1, 1, 'product/thump_1601976674.jpg', NULL, '', '2020-10-06 15:01:14', 0, 0),
(135, 'HALDIRAM MEDIUM MASALA PAPAD 200G', 'PINK TOKRI ', 8, 29, 'HALDIRAM MEDIUM MASALA PAPAD 200G', '200G', '49', 1, 1, 'product/thump_1601976786.jpg', NULL, '', '2020-10-06 15:03:06', 0, 1),
(136, 'PANSARI MP SHARBATI ATTA 5KG', 'PINKTOKRI', 1, 4, 'PANSARI MP SHARBATI ATTA 5KG', '5KG', '220', 1, 1, 'product/thump_1601976836.jpg', NULL, '', '2020-10-06 15:03:56', 0, 0),
(137, 'HALDIRAM PUNJABI  MASALA PAPAD 200G', 'PINK TOKRI ', 8, 29, 'HALDIRAM PUNJABI  MASALA PAPAD 200G', '200G', '49', 1, 1, 'product/thump_1601976923.jpg', NULL, '', '2020-10-06 15:05:23', 0, 0),
(138, 'SMITH & JONES PASTA MASALA 9G', 'PINK TOKRI ', 1, 6, 'SMITH & JONES PASTA MASALA 9G', '09G', '5', 1, 1, 'product/thump_1601977164.jpg', NULL, '', '2020-10-06 15:09:24', 0, 0),
(139, 'PARTAP DESI GHEE 5LTR TIN', 'PINKTOKRI', 6, 12, 'PARTAP DESI GHEE 5LTR TIN', '5LTR', '2600', 1, 1, 'product/thump_1601977170.jpg', NULL, '', '2020-10-06 15:09:30', 0, 1),
(140, 'BAMBINO PREMIUM PASTA MASALA 10G ', 'PINK TOKRI ', 1, 6, 'BAMBINO PREMIUM PASTA MASALA 10G ', '10G', '10', 1, 1, 'product/thump_1601977431.jpg', NULL, '', '2020-10-06 15:13:51', 0, 0),
(141, 'PINKTOKRI CRYSTAL SUGAR 1KG', 'PINKTOKRI', 1, 7, 'PINKTOKRI CRYSTAL SUGAR 1KG', '1KG', '40', 1, 1, 'product/thump_1601977655.jpeg', NULL, '', '2020-10-06 15:17:35', 0, 0),
(142, 'BAMBIN0 MACARONI MASALA 10G', 'PINK TOKRI ', 1, 6, 'BAMBIND MACARONI MASALA 10G', '10G', '05', 1, 1, 'product/thump_1601977764.jpg', NULL, '', '2020-10-06 15:19:24', 0, 0),
(143, 'DHAMPURE WHITE CRYSTAL SUGAR 1KG', 'PINKTOKRI', 1, 7, 'DHAMPURE WHITE CRYSTAL SUGAR 1KG', '1KG', '45', 1, 1, 'product/thump_1601977777.jpg', NULL, '', '2020-10-06 15:19:37', 0, 1),
(144, 'DHAMPURE WHITE CRYSTAL SUGAR 5KG', 'PINKTOKRI', 1, 7, 'DHAMPURE WHITE CRYSTAL SUGAR 5KG', '5KG', '220', 1, 1, 'product/thump_1601977921.jpg', NULL, '', '2020-10-06 15:22:01', 0, 0),
(145, 'PANSARI BEDMI POORI ATTA MASALA MIX 500GM', 'PINKTOKRI', 1, 4, 'PANSARI BEDMI POORI ATTA MASALA MIX 500GM', '500GM', '55', 1, 1, 'product/thump_1601978030.jpg', NULL, '', '2020-10-06 15:23:50', 0, 0),
(146, 'TOP\'S GOLD MANGO PICKLE 100G', 'PINK TOKRI ', 1, 6, 'TOP\'S GOLD MANGO PICKLE 100G', '100G', '25', 1, 1, 'product/thump_1601978127.webp', NULL, '', '2020-10-06 15:25:27', 0, 0),
(147, 'PANSARI MISSI ROTI ATTA MASALA MIX 500GM', 'PINKTOKRI', 1, 4, 'PANSARI MISSI ROTI ATTA MASALA MIX 500GM', '500GM', '75', 1, 1, 'product/thump_1601978209.jpg', NULL, '', '2020-10-06 15:26:49', 0, 0),
(148, 'PANSARI BHATURA POORI ATTTA MASALA MIX 500GM', 'PINKTOKRI', 1, 4, 'PANSARI BHATURA POORI ATTTA MASALA MIX 500GM', '500GM', '48', 1, 1, 'product/thump_1601978327.jpg', NULL, '', '2020-10-06 15:28:47', 0, 0),
(149, 'SMITH & JONES PERI PERI SPICE MIX 12G', 'PINK TOKRI ', 1, 6, 'SMITH & JONES PERI PERI SPICE MIX 12G', '12G', '10', 1, 1, 'product/thump_1601978398.jpg', NULL, '', '2020-10-06 15:29:58', 0, 0),
(150, 'DHAMPURE MINERAL BROWN SUGAR 1KG', 'PINKTOKRI', 1, 7, 'DHAMPURE MINERAL BROWN SUGAR 1KG', '1KG', '80', 1, 1, 'product/thump_1601978506.jpg', NULL, '', '2020-10-06 15:31:46', 0, 0),
(151, 'AGROPURE MAIDA PREMIUM QUALITY 500GM', 'PINKTOKRI', 1, 4, 'AGROPURE MAIDA PREMIUM QUALITY 500GM', '500GM', '20', 1, 1, 'product/thump_1601978741.jpg', NULL, '', '2020-10-06 15:35:41', 0, 0),
(152, 'AGROPURE SOOJI PREMIUM QUALITY 500GM', 'PINKTOKRI', 1, 4, 'AGROPURE SOOJI PREMIUM QUALITY 500GM', '500GM', '20', 1, 1, 'product/thump_1601978875.jpg', NULL, '', '2020-10-06 15:37:55', 0, 0),
(153, 'AGROPURE DALIA PREMIUM QUALITY 500GM ', 'PINKTOKRI', 1, 4, 'AGROPURE DALIA PREMIUM QUALITY 500GM', '500GM', '25', 1, 1, 'product/thump_1601978970.jpg', NULL, '', '2020-10-06 15:39:30', 0, 0),
(154, 'PANSARI POOHA (BUY 1 GET 1) 500GM', 'PINKTOKRI', 8, 24, 'PANSARI POOHA (BUY 1 GET 1) 500GM', '500GM+500GM', '72', 1, 1, 'product/thump_1601979215.jpg', NULL, '', '2020-10-06 15:43:35', 0, 0),
(155, 'AGROPURE POOHA PREMIUM QUALITY 500GM', 'PINKTOKRI', 8, 24, 'AGROPURE POOHA PREMIUM QUALITY 500GM', '500GM', '35', 1, 1, 'product/thump_1601979332.jpg', NULL, '', '2020-10-06 15:45:32', 0, 0),
(156, 'PANSARI SHASHA RED CHILLI POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA RED CHILLI POWDER 100GM', '100GM', '29', 1, 1, 'product/thump_1601980157.jpg', NULL, '', '2020-10-06 15:59:17', 0, 0),
(157, 'PANSARI SHASHA RED CHILLI POWDER 200GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA RED CHILLI POWDER 200GM', '200GM', '55', 1, 1, 'product/thump_1601980247.jpg', NULL, '', '2020-10-06 16:00:47', 0, 0),
(158, 'PANSARI SHASHA TURMERIC POWDER 200GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA TURMERIC POWDER 200GM ', '200GM', '42', 1, 1, 'product/thump_1601980358.jpg', NULL, '', '2020-10-06 16:02:38', 0, 1),
(159, 'PANSARI SHASHA TURMERIC POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA TURMERIC POWDER 100GM', '100GM', '22', 1, 1, 'product/thump_1601980452.jpg', NULL, '', '2020-10-06 16:04:12', 0, 0),
(160, 'PANSARI SHASHA CORIANDER POWDER 200GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA CORIANDER POWDER 200GM ', '200GM', '42', 1, 1, 'product/thump_1601980538.jpg', NULL, '', '2020-10-06 16:05:38', 0, 0),
(161, 'PANSARI SHASHA CORIANDER POWDER 100GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA CORIANDER POWDER 100GM', '100GM', '22', 1, 1, 'product/thump_1601980619.jpg', NULL, '', '2020-10-06 16:06:59', 0, 0),
(162, 'PANSARI SHASHA JEERA POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA JEERA POWDER 100GM', '100GM', '42', 1, 1, 'product/thump_1601980779.jpg', NULL, '', '2020-10-06 16:09:39', 0, 0),
(163, 'PANSARI SHASHA BLACK PEPPER POWDER 100GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA BLACK PEPPER POWDER 100GM ', '100GM', '110', 1, 1, 'product/thump_1601980998.jpg', NULL, '', '2020-10-06 16:13:18', 0, 0),
(164, 'PANSARI SHASHA CHAAT MASALA 100GM ', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA CHAAT MASALA 100GM ', '100GM', '49', 1, 1, 'product/thump_1601981104.jpg', NULL, '', '2020-10-06 16:15:04', 0, 0),
(165, 'PANSARI SHASHA DRY MANGO POWDER 100GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA DRY MANGO POWDER 100GM', '100GM', '58', 1, 1, 'product/thump_1601981351.jpg', NULL, '', '2020-10-06 16:19:11', 0, 0),
(166, 'MDH MEAT KA MASALA (MUTTON MASALA) 100GM ', 'PINKTOKRI', 1, 6, 'MDH MEAT KA MASALA (MUTTON MASALA) 100GM ', '100GM', '63', 1, 1, 'product/thump_1601981511.jpg', NULL, '', '2020-10-06 16:21:51', 0, 0),
(167, 'PANSARI SHASHA KASURI METHI 25GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA KASURI METHI 25GM', '25GM', '20', 1, 1, 'product/thump_1601981633.jpg', NULL, '', '2020-10-06 16:23:53', 0, 0),
(168, 'PANSARI SHASHA BLACK SALT 200GM', 'PINKTOKRI', 1, 6, 'PANSARI SHASHA BLACK SALT 200GM', '200GM', '20', 1, 1, 'product/thump_1601981752.jpg', NULL, '', '2020-10-06 16:25:52', 0, 0),
(169, 'MDH GARAM MASALA 100GM ', 'PINKTOKRI', 1, 6, 'MDH GARAM MASALA 100GM ', '100GM', '66', 1, 1, 'product/thump_1601982026.jpg', NULL, '', '2020-10-06 16:30:26', 0, 0),
(170, 'MDH DEGGI MIRCH 100GM', 'PINKTOKRI', 1, 6, 'MDH DEGGI MIRCH 100GM', '100GM', '55', 1, 1, 'product/thump_1601982323.jpg', NULL, '', '2020-10-06 16:35:23', 0, 0),
(171, 'MDH KASOORI METHI 25GM ', 'PINKTOKRI', 1, 6, 'MDH KASOORI METHI 25GM ', '25GM', '21', 1, 1, 'product/thump_1601982536.jpg', NULL, '', '2020-10-06 16:38:56', 0, 0),
(172, 'MDH SAMBHAR MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH SAMBHAR MASALA 100GM', '100GM', '53', 1, 1, 'product/thump_1601982702.jpg', NULL, '', '2020-10-06 16:41:42', 0, 0),
(173, 'MDH JAL JEERA MASALA 100GM ', 'PINKTOKRI', 1, 6, 'MDH JAL JEERA MASALA 100GM ', '100GM', '45', 1, 1, 'product/thump_1601982834.jpg', NULL, '', '2020-10-06 16:43:54', 0, 0),
(174, 'MDH VEG. BIRYANI MASALA 50GM', 'PINKTOKRI', 1, 6, 'MDH VEG. BIRYANI MASALA 50GM', '50GM', '47', 1, 1, 'product/thump_1601982984.jpg', NULL, '', '2020-10-06 16:46:24', 0, 0),
(175, 'MDH BLACK PEPPER POWDER 50GM', 'PINKTOKRI', 1, 6, 'MDH BLACK PEPPER POWDER 50GM', '50GM', '60', 1, 1, 'product/thump_1601983165.jpg', NULL, '', '2020-10-06 16:49:25', 0, 0),
(176, 'MDH LAL MIRCH POWDER 100GM', 'PINKTOKRI', 1, 6, 'MDH LAL MIRCH POWDER 100GM', '100GM', '29', 1, 1, 'product/thump_1601983322.jpg', NULL, '', '2020-10-06 16:52:02', 0, 1),
(177, 'MDH DAL MAKHANI MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH DAL MAKHANI MASALA 100GM', '100GM', '52', 1, 1, 'product/thump_1601983440.jpg', NULL, '', '2020-10-06 16:54:00', 0, 0),
(178, 'MDH CHUNKY CHAAT MASALA 100GM ', 'PINKTOKRI', 1, 6, 'MDH CHUNKY CHAAT MASALA 100GM ', '100GM', '54', 1, 1, 'product/thump_1601983663.jpg', NULL, '', '2020-10-06 16:57:43', 0, 0),
(179, 'MDH CURRY POWDER 100GM ', 'PINKTOKRI', 1, 6, 'MDH CURRY POWDER 100GM ', '100GM', '52', 1, 1, 'product/thump_1601984055.jpg', NULL, '', '2020-10-06 17:04:15', 0, 0),
(180, 'MDH DHANIA POWDER 100GM', 'PINKTOKRI', 1, 6, 'MDH DHANIA POWDER 100GM', '100GM', '26', 1, 1, 'product/thump_1601984175.jpg', NULL, '', '2020-10-06 17:06:15', 0, 0),
(181, 'MDH KARAHI PANEER MASALA 60GM', 'PINKTOKRI', 1, 6, 'MDH KARAHI PANEER MASALA 60GM', '60GM', '43', 1, 1, 'product/thump_1601984408.jpg', NULL, '', '2020-10-06 17:10:08', 0, 0),
(182, 'MDH HALDI POWDER 100GM ', 'PINKTOKRI', 1, 6, 'MDH HALDI POWDER 100GM', '100GM', '25', 1, 1, 'product/thump_1601984534.jpg', NULL, '', '2020-10-06 17:12:14', 0, 0),
(183, 'MDH KITCHEN KING (MIXED SPICES POWDER) 100GM', 'PINKTOKRI', 1, 6, 'MDH KITCHEN KING (MIXED SPICES POWDER) 100GM', '100GM', '58', 1, 1, 'product/thump_1601984690.jpg', NULL, '', '2020-10-06 17:14:50', 0, 0),
(184, 'MDH PAV BHAJI MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH PAV BHAJI MASALA 100GM', '100GM', '54', 1, 1, 'product/thump_1601984935.jpg', NULL, '', '2020-10-06 17:18:55', 0, 0),
(185, 'MDH CHICKEN MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH CHICKEN MASALA 100GM', '100GM', '58', 1, 1, 'product/thump_1601985031.jpg', NULL, '', '2020-10-06 17:20:31', 0, 0),
(186, 'MDH SHAHI PANEER MASALA 100GM', 'PINKTOKRI', 1, 6, 'MDH SHAHI PANEER MASALA 100GM', '100GM', '68', 1, 1, 'product/thump_1601985191.jpg', NULL, '', '2020-10-06 17:23:11', 0, 0),
(187, 'MADHUSUDAN DESI GHEE  500ML', 'PINKTOKRI', 6, 10, 'MADHUSUDAN DESI GHEE  500ML', '500ML', '205', 1, 1, 'product/thump_1601985667.jpg', NULL, '', '2020-10-06 17:31:07', 0, 0),
(188, 'MADHUSUDAN DESI GHEE 1LTR', 'PINKTOKRI', 6, 10, 'MADHUSUDAN DESI GHEE 1LTR', '1LTR', '405', 1, 1, 'product/thump_1601985784.jpg', NULL, '', '2020-10-06 17:33:04', 0, 0),
(189, 'PATANJALI COW\'S GHEE 1LTR ', 'PINKTOKRI', 6, 10, 'PATANJALI COW\'S GHEE 1LTR', '1LTR', '545', 1, 1, 'product/thump_1601985944.jpg', NULL, '', '2020-10-06 17:35:44', 0, 0),
(190, 'MILKFOOD RICH DESI GHEE (DANEDAR) 1LTR', 'PINKTOKRI', 6, 10, 'MILKFOOD RICH DESI GHEE (DANEDAR) 1LTR', '1LTR', '403', 1, 1, 'product/thump_1601986096.jpg', NULL, '', '2020-10-06 17:38:16', 0, 0),
(191, 'MADHUSUDAN GHEE (MADE FROM COW\'S MILK) 1LTR', 'PINKTOKRI', 6, 9, 'MADHUSUDAN GHEE (MADE FROM COW\'S MILK) 1LTR', '1LTR', '505', 1, 1, 'product/thump_1601986496.jpg', NULL, '', '2020-10-06 17:44:56', 0, 1),
(192, 'AMUL PURE GHEE 1LTR', 'PINKTOKRI', 6, 10, 'AMUL PURE GHEE 1LTR', '1LTR', '480', 1, 1, 'product/thump_1601986631.jpg', NULL, '', '2020-10-06 17:47:11', 0, 0),
(193, 'AMUL COW GHEE 1LTR', 'PINKTOKRI', 6, 10, 'AMUL COW GHEE 1LTR', '1LTR', '490', 1, 1, 'product/thump_1601986760.jpg', NULL, '', '2020-10-06 17:49:20', 0, 0),
(194, 'MOTHER DAIRY GHEE 1LTR', 'PINKTOKRI', 6, 10, 'MOTHER DAIRY GHEE 1LTR', '1LTR', '500', 1, 1, 'product/thump_1601986884.jpg', NULL, '', '2020-10-06 17:51:24', 0, 0),
(195, 'PARTAP DESI GHEE 1LTR', 'PINKTOKRI', 6, 10, 'PARTAP DESI GHEE 1LTR', '1LTR', '520', 1, 1, 'product/thump_1601987021.jpg', NULL, '', '2020-10-06 17:53:41', 0, 0),
(196, 'ANANDA PURE GHEE 1LTR', 'PINKTOKRI', 6, 10, 'ANANDA PURE GHEE 1LTR', '1LTR', '400', 1, 1, 'product/thump_1601987146.jpg', NULL, '', '2020-10-06 17:55:46', 0, 0),
(197, 'AASHIRVAD SVASTI PURE COW GHEE 1LTR', 'PINKTOKRI', 6, 10, 'AASHIRVAD SVASTI PURE COW GHEE 1LTR', '1LTR', '500', 1, 1, 'product/thump_1601987249.jpg', NULL, '', '2020-10-06 17:57:29', 0, 0),
(198, 'LD HING ASAFOETIDA (HING) PURE DANEDAR 10GM', 'PINKTOKRI', 1, 6, 'LD HING ASAFOETIDA (HING) PURE DANEDAR 10GM', '10GM', '200', 1, 1, 'product/thump_1601987793.jpg', NULL, '', '2020-10-06 18:06:33', 0, 0),
(199, 'LD HING COMPOUNDED 5GM', 'PINKTOKRI', 1, 6, 'LD HING COMPOUNDED 5GM', '5GM', '15', 1, 1, 'product/thump_1601987949.jpg', NULL, '', '2020-10-06 18:09:09', 0, 0),
(200, 'LD HING COMPOUNDED 5GM', 'PINKTOKRI', 1, 6, 'LD HING COMPOUNDED 5GM', '5GM', '15', 1, 1, 'product/thump_1601988115.jpg', NULL, '', '2020-10-06 18:11:55', 0, 0),
(201, 'LD HING COMPOUNDED 27.5GM', 'PINKTOKRI', 1, 6, 'LD HING COMPOUNDED 27.5GM', '27.5GM', '50', 1, 1, 'product/thump_1601988256.jpg', NULL, '', '2020-10-06 18:14:16', 0, 0),
(202, 'PINKTOKRI JEERA 250GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI JEERA 250GM', '250GM', '65', 1, 1, 'product/thump_1601989288.jpeg', NULL, '', '2020-10-06 18:31:28', 0, 0),
(203, 'PINKTOKRI JEERA 100GM ', 'PINKTOKRI', 1, 6, 'PINKTOKRI JEERA 100GM ', '100GM', '29', 1, 1, 'product/thump_1601989348.jpeg', NULL, '', '2020-10-06 18:32:28', 0, 0),
(204, 'PINKTOKRI BAYLEAF 50GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI BAYLEAF 50GM', '50GM', '20', 1, 1, 'product/thump_1601989491.jpeg', NULL, '', '2020-10-06 18:34:51', 0, 0),
(205, 'PINKTOKRI YELLOW MUSTARD SEEDS 100GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI YELLOW MUSTARD SEEDS 100GM', '100GM', '20', 1, 1, 'product/thump_1601989653.jpeg', NULL, '', '2020-10-06 18:37:33', 0, 0),
(206, 'PINKTOKRI RYE SEEDS 100GM', 'PINKTOKRI', 1, 6, 'PINKTOKRI RYE SEEDS 100GM', '100GM', '20', 1, 1, 'product/thump_1601989769.jpeg', NULL, '', '2020-10-06 18:39:29', 0, 0),
(207, 'PINKTOKRI MUSTARD SEEDS 100GM', 'PINKTOKRI ', 1, 6, 'PINKTOKRI MUSTARD SEEDS 100GM', '100GM', '15', 1, 1, 'product/thump_1601989838.jpeg', NULL, '', '2020-10-06 18:40:38', 0, 1),
(209, 'BINGO TEDHE MEDHE ALOO BHUJIA 180GM ', 'PINKTOKRI', 8, 32, 'BINGO TEDHE MEDHE ALOO BHUJIA 180GM ', '180GM', '47', 1, 1, 'product/thump_1602142073.jpg', 0, '', '2020-10-08 12:57:53', 0, 0),
(210, 'BINGO TEDHE MEDHE COCKTAIL MIX 180GM', 'PINKTOKRI', 8, 32, 'BINGO TEDHE MEDHE COCKTAIL MIX 180GM', '180GM', '47', 1, 1, 'product/thump_1602142314.jpg', 0, '', '2020-10-08 13:01:54', 0, 0),
(211, 'BINGO TEDHE MEDHE NUT CRACKERS 180GM ', 'PINKTOKRI ', 8, 32, 'BINGO TEDHE MEDHE NUT CRACKERS 180GM ', '180GM ', '47', 1, 1, 'product/thump_1602142382.jpeg', 0, '', '2020-10-08 13:03:02', 0, 0),
(212, 'BINGO TEDHE MEDHE PULSE MIX 180GM', 'PINKTOKRI ', 8, 32, 'BINGO TEDHE MEDHE PULSE MIX 180GM', '180GM ', '47', 1, 1, 'product/thump_1602142467.jpg', 0, '', '2020-10-08 13:04:27', 0, 0),
(213, 'CINTHOL LIME REFRESHING DEO TALC 300G', 'PINKTOKRI', 9, 34, 'CINTHOL LIME REFRESHING DEO TALC 300G', '300GM ', '124', 1, 1, 'product/thump_1602142564.jpg', 0, '', '2020-10-08 13:06:04', 0, 0),
(214, 'CINTHOL ORIGINAL COMPLEXION TALC 300GM', 'PINKTOKRI ', 9, 34, 'CINTHOL ORIGINAL COMPLEXION TALC 300GM', '300GM ', '124', 1, 1, 'product/thump_1602142639.jpg', 0, '', '2020-10-08 13:07:19', 0, 0),
(215, 'CLOSEUP EVERFRESH ANTI GERM (LEMON MINT) 150GM', 'PINKTOKRI', 9, 36, 'CLOSEUP EVERFRESH ANTI GERM(LEMON MINT) 150GM', '150GM ', '92', 1, 1, 'product/thump_1602142745.jpg', 0, '', '2020-10-08 13:09:05', 0, 0),
(216, 'CLOSEUP FIRE+FREEZE 150GM ', 'PINKTOKRI', 9, 36, 'CLOSEUP FIRE+FREEZE 150GM ', '150GM ', '92', 1, 1, 'product/thump_1602142819.jpg', 0, '', '2020-10-08 13:10:19', 0, 0),
(217, 'CLOSEUP TRIPLE FRESH FORMULA 2X150GM', 'PINKTOKRI', 9, 36, 'CLOSEUP TRIPLE FRESH FORMULA 2X150GM', '300GM', '143', 1, 1, 'product/thump_1602142876.jpg', 0, '', '2020-10-08 13:11:16', 0, 0),
(218, 'CLOSEUP TRIPLE FRESH FORMULA 150GM ', 'PINKTOKRI', 9, 36, 'CLOSEUP TRIPLE FRESH FORMULA 150GM ', '150GM ', '85', 1, 1, 'product/thump_1602143001.jpg', 0, '', '2020-10-08 13:13:21', 0, 0),
(219, 'CLOSEUP WHITE EXTRACTION NATURAL SMILE 150GM', 'PINKTOKRI ', 9, 36, 'CLOSEUP WHITE EXTRACTION NATURAL SMILE 150GM', '150GM', '92', 1, 1, 'product/thump_1602143059.jpg', 0, '', '2020-10-08 13:14:19', 0, 0),
(220, 'COLGATE ACTIVE SALT LEMON 100GM', 'PINKTOKRI', 9, 36, 'COLGATE ACTIVE SALT LEMON 100GM', '100GM', '58', 1, 1, 'product/thump_1602143113.jpg', 0, '', '2020-10-08 13:15:13', 0, 0),
(221, 'COLGATE ACTIVE SALT LEMON 200GM', 'PINKTOKRI', 9, 36, 'COLGATE ACTIVE SALT LEMON 200GM', '200GM ', '95', 1, 1, 'product/thump_1602143169.jpg', 0, '', '2020-10-08 13:16:09', 0, 0),
(222, 'COLGATE ACTIVE SALT TOOTHPASTE 100GM', 'PINKTOKRI', 9, 36, 'COLGATE ACTIVE SALT TOOTHPASTE 100GM', '100GM ', '55', 1, 1, 'product/thump_1602143217.jpg', 0, '', '2020-10-08 13:16:57', 0, 0),
(223, 'COLGATE ACTIVE SALT TOOTHPASTE 200+100GM', 'PINKTOKRI', 9, 36, 'COLGATE ACTIVE SALT TOOTHPASTE 200+100GM', '300GM', '131', 1, 1, 'product/thump_1602143274.jpg', 0, '', '2020-10-08 13:17:54', 0, 0),
(224, 'COLGATE ACTIVE SALT TOOTHPASTE 200GM', 'PINKTOKRI', 9, 36, 'COLGATE ACTIVE SALT TOOTHPASTE 200GM', '200GM', '95', 1, 1, 'product/thump_1602143329.jpg', 0, '', '2020-10-08 13:18:49', 0, 0),
(225, 'COLGATE CHARCOAL CLEAN TOOTHPASTE (BAMBOO CHARCOAL & MINT) 120+120GM ', 'PINKTOKRI', 9, 36, 'COLGATE CHARCOAL CLEAN TOOTHPASTE (BAMBOO CHARCOAL & MINT) 120+120GM ', '240GM', '170', 1, 1, 'product/thump_1602143398.jpg', 0, '', '2020-10-08 13:19:58', 0, 0),
(226, 'COLGATE CIBACA  MAHABACHAT 2X175GM', 'PINKTOKRI', 9, 36, 'COLGATE CIBACA  MAHABACHAT 2X175GM', '350GM', '98', 1, 1, 'product/thump_1602143483.jpg', 0, '', '2020-10-08 13:21:23', 0, 0),
(227, 'COLGATE CIBACA TOOTHPASTE 175GM ', 'PINKTOKRI', 9, 36, 'COLGATE CIBACA TOOTHPASTE 175GM ', '175GM', '54', 1, 1, 'product/thump_1602143702.jpg', 0, '', '2020-10-08 13:25:02', 0, 0),
(228, 'COLGATE CIBACA VEDSHAKTI TOOTHPASTE 160GM', 'PINKTOKRI', 9, 36, 'COLGATE CIBACA VEDSHAKTI TOOTHPASTE 160GM', '160GM', '52', 1, 1, 'product/thump_1602143755.jpg', 0, '', '2020-10-08 13:25:55', 0, 0),
(229, 'COLGATE HEALTHY SMILES FOR LITTLE TEETH(STRAWBERRY FLAVOUR) 80GM ', 'PINKTOKRI', 9, 36, 'COLGATE HEALTHY SMILES FOR LITTLE TEETH(STRAWBERRY FLAVOUR) 80GM ', '80GM', '90', 1, 1, 'product/thump_1602143834.jpg', 0, '', '2020-10-08 13:27:14', 0, 0),
(230, 'COLGATE HERBAL TOOTHPASTE 200GM', 'PINKTOKRI', 9, 36, 'COLGATE HERBAL TOOTHPASTE 200GM', '200GM', '95', 1, 1, 'product/thump_1602143877.jpg', 0, '', '2020-10-08 13:27:57', 0, 0),
(231, 'COLGATE MAXFRESH TOOTHPASTE 70+14GM ', 'PINKTOKRI ', 9, 36, 'COLGATE MAXFRESH TOOTHPASTE 70+14GM ', '84GM', '53', 1, 1, 'product/thump_1602143937.jpg', 0, '', '2020-10-08 13:28:57', 0, 0),
(232, 'COLGATE MAXFRESH TOOTHPASTE 150+150GM', 'PINKTOKRI', 9, 36, 'COLGATE MAXFRESH TOOTHPASTE 150+150GM', '300GM', '162', 1, 1, 'product/thump_1602143984.jpg', 0, '', '2020-10-08 13:29:44', 0, 0),
(233, 'COLGATE MAXFRESH TOOTHPASTE 150GM', 'PINKTOKRI', 9, 36, 'COLGATE MAXFRESH TOOTHPASTE 150GM', '150GM', '90', 1, 1, 'product/thump_1602144044.jpg', 0, '', '2020-10-08 13:30:44', 0, 0),
(234, 'COLGATE MAXFRESH TOOTHPASTE COOLING CRYSTALS 80GM', 'PINKTOKRI', 9, 36, 'COLGATE MAXFRESH TOOTHPASTE COOLING CRYSTALS 80GM', '80GM', '52', 1, 1, 'product/thump_1602144147.jpg', 0, '', '2020-10-08 13:32:27', 0, 0),
(235, 'COLGATE MAXFRESH TOOTHPASTE COOLING CRYSTALS 150GM', 'PINKTOKRI', 9, 36, 'COLGATE MAXFRESH TOOTHPASTE COOLING CRYSTALS 150GM', '150GM', '90', 1, 1, 'product/thump_1602144195.jpg', 0, '', '2020-10-08 13:33:15', 0, 0),
(236, 'COLGATE PLAX PEPPERMINT FRESH 250ML', 'PINKTOKRI', 9, 36, 'COLGATE PLAX PEPPERMINT FRESH 250ML', '250ML', '110', 1, 1, 'product/thump_1602144242.jpg', 0, '', '2020-10-08 13:34:02', 0, 0),
(237, 'COLGATE PLAX PEPPERMINT FRESH 500ML', 'PINKTOKRI', 9, 36, 'COLGATE PLAX PEPPERMINT FRESH 500ML', '500ML', '212', 1, 1, 'product/thump_1602144288.jpg', 0, '', '2020-10-08 13:34:48', 0, 0),
(238, 'COLGATE SENSITIVE MEGA OFFER 2X80GM ', 'PINKTOKRI', 9, 36, 'COLGATE SENSITIVE MEGA OFFER 2X80GM ', '160GM', '110', 1, 1, 'product/thump_1602144331.jpg', 0, '', '2020-10-08 13:35:31', 0, 0),
(239, 'COLGATE STRONG TEETH TOOTHPASTE 45GM', 'PINKTOKRI', 9, 36, 'COLGATE STRONG TEETH TOOTHPASTE 45GM', '45GM', '20', 1, 1, 'product/thump_1602144376.jpg', 0, '', '2020-10-08 13:36:16', 0, 0),
(240, 'COLGATE STRONG TEETH TOOTHPASTE 100GM', 'PINKTOKRI', 9, 36, 'COLGATE STRONG TEETH TOOTHPASTE 100GM', '100GM', '52', 1, 1, 'product/thump_1602144442.jpeg', 0, '', '2020-10-08 13:37:22', 0, 0),
(241, 'COLGATE STRONG TEETH TOOTHPASTE 150GM', 'PINKTOKRI', 9, 36, 'COLGATE STRONG TEETH TOOTHPASTE 150GM', '150GM', '65', 1, 1, 'product/thump_1602144485.jpg', 0, '', '2020-10-08 13:38:05', 0, 0),
(242, 'COLGATE STRONG TEETH TOOTHPASTE 200+100GM', 'PINKTOKRI', 9, 36, 'COLGATE STRONG TEETH TOOTHPASTE 200+100GM', '300GM ', '140', 1, 1, 'product/thump_1602144566.jpg', 0, '', '2020-10-08 13:39:26', 0, 0),
(243, 'COLGATE STRONG TEETH TOOTHPASTE 200+200+100GM', 'PINKTOKRI', 9, 36, 'COLGATE STRONG TEETH TOOTHPASTE 200+200+100GM', '500GM', '206', 1, 1, 'product/thump_1602144658.jpg', 0, '', '2020-10-08 13:40:58', 0, 0),
(244, 'COLGATE STRONG TEETH TOOTHPASTE 200GM', 'PINKTOKRI', 9, 36, 'COLGATE STRONG TEETH TOOTHPASTE 200GM', '200GM', '90', 1, 1, 'product/thump_1602144716.jpg', 0, '', '2020-10-08 13:41:56', 0, 0),
(245, 'COLGATE SWARNA VEDSHAKTI 100GM', 'PINKTOKRI', 9, 36, 'COLGATE SWARNA VEDSHAKTI 100GM', '100GM', '52', 1, 1, 'product/thump_1602144778.jpg', 0, '', '2020-10-08 13:42:58', 0, 0),
(246, 'COLGATE SWARNA VEDSHAKTI 200GM', 'PINKTOKRI', 9, 36, 'COLGATE SWARNA VEDSHAKTI 200GM', '200GM', '87', 1, 1, 'product/thump_1602144839.jpg', 0, '', '2020-10-08 13:43:59', 0, 0),
(247, 'COLGATE TOOTHPOWDER SUPER RAKSHAK 100GM', 'PINKTOKRI', 9, 36, 'COLGATE TOOTHPOWDER SUPER RAKSHAK 100GM', '100GM', '48', 1, 1, 'product/thump_1602144911.jpg', 0, '', '2020-10-08 13:45:11', 0, 0),
(248, 'COLGATE TOOTHPOWDER SUPER RAKSHAK 200GM', 'PINKTOKRI', 9, 36, 'COLGATE TOOTHPOWDER SUPER RAKSHAK 200GM', '200GM', '88', 1, 1, 'product/thump_1602144961.jpg', 0, '', '2020-10-08 13:46:01', 0, 0),
(249, 'COLGATE TOTAL 12 WHOLE MOUTH HEALTH 120+65GM', 'PINKTOKRI', 9, 36, 'COLGATE TOTAL 12 WHOLE MOUTH HEALTH 120+65GM', '185GM', '130', 1, 1, 'product/thump_1602145014.jpg', 0, '', '2020-10-08 13:46:54', 0, 0),
(250, 'COLGATE TOTAL 12 WHOLE MOUTH HEALTH 120GM', 'PINKTOKRI', 9, 36, 'COLGATE TOTAL 12 WHOLE MOUTH HEALTH 120GM', '120GM', '94', 1, 1, 'product/thump_1602145072.jpg', 0, '', '2020-10-08 13:47:52', 0, 0),
(251, 'COLGATE TRIPLE FRESH FORMULA TOOTHPASTE 80GM', 'PINKTOKRI', 9, 36, 'COLGATE TRIPLE FRESH FORMULA TOOTHPASTE 80GM', '80GM ', '45', 1, 1, 'product/thump_1602145265.jpg', 0, '', '2020-10-08 13:51:05', 0, 0),
(252, 'COLGATE VISIBLE WHITE TOOTHPASTE 100+100GM', 'PINKTOKRI', 9, 36, 'COLGATE VISIBLE WHITE TOOTHPASTE 100+100GM', '200GM', '170', 1, 1, 'product/thump_1602145312.jpg', 0, '', '2020-10-08 13:51:52', 0, 0),
(253, 'COLGATE VISIBLE WHITE TOOTHPASTE 100GM', 'PINKTOKRI', 9, 36, 'COLGATE VISIBLE WHITE TOOTHPASTE 100GM', '100GM', '94', 1, 1, 'product/thump_1602145355.jpg', 0, '', '2020-10-08 13:52:35', 0, 0),
(254, 'DENVER BEER SHAMPOO 200ML', 'PINKTOKRI', 9, 35, '\r\nDENVER BEER SHAMPOO 200ML', '200ML', '110', 1, 1, 'product/thump_1602145393.jpg', 0, '', '2020-10-08 13:53:13', 0, 0),
(255, 'DENVER HAMIILTON BODY TALC 100+100GM', 'PINKTOKRI', 9, 34, 'DENVER HAMIILTON BODY TALC 100+100GM', '200GM', '85', 1, 1, 'product/thump_1602145459.jpg', 0, '', '2020-10-08 13:54:19', 0, 0),
(256, 'DENVER HAMIILTON BODY TALC 300+300GM', 'PINKTOKRI', 9, 34, 'DENVER HAMIILTON BODY TALC 300+300GM', '600GM', '199', 1, 1, 'product/thump_1602145643.jpeg', 0, '', '2020-10-08 13:57:23', 0, 0),
(257, 'DIET-FOODS CARDAMOM SUGAR FREE BREAD TOAST 200GM', 'PINKTOKRI', 8, 23, 'DIET-FOODS CARDAMOM SUGAR FREE BREAD TOAST 200GM', '200GM', '60', 1, 1, 'product/thump_1602145729.jpg', 0, '', '2020-10-08 13:58:49', 0, 0),
(258, 'DR. BATRA\'S CONDITIONER 200ML', 'PINKTOKRI', 9, 35, 'DR. BATRA\'S CONDITIONER 200ML', '200ML', '159', 1, 1, 'product/thump_1602145777.jpg', 0, '', '2020-10-08 13:59:37', 0, 0),
(259, 'DR.BATRA\'S ACNE CLEAR FACE WASH 100GM', 'PINKTOKRI', 9, 34, 'DR.BATRA\'S ACNE CLEAR FACE WASH 100GM', '100GM', '159', 1, 1, 'product/thump_1602145870.jpg', 0, '', '2020-10-08 14:01:10', 0, 0),
(260, 'DR.BATRA\'S DANDRUFF CLEANSING SHAMPOO 200ML', 'PINKTOKRI', 9, 35, 'DR.BATRA\'S DANDRUFF CLEANSING SHAMPOO 200ML', '200ML', '159', 1, 1, 'product/thump_1602146014.jpg', 0, '', '2020-10-08 14:03:34', 0, 0),
(261, 'DR.BATRA\'S HAIRFALL CONTROL SHAMPOO 200ML', 'PINKTOKRI', 9, 35, 'DR.BATRA\'S HAIRFALL CONTROL SHAMPOO 200ML', '200ML', '199', 1, 1, 'product/thump_1602146061.jpg', 0, '', '2020-10-08 14:04:21', 0, 0),
(262, 'DR.BATRA\'S HAIRFALL CONTROL SHAMPOO 500ML', 'PINKTOKRI', 9, 35, 'DR.BATRA\'S HAIRFALL CONTROL SHAMPOO 500ML', '500ML', '439', 1, 1, 'product/thump_1602146114.jpg', 0, '', '2020-10-08 14:05:14', 0, 0),
(263, 'DR.BATRA\'S INSTANT GLOW FACE WASH 100GM', 'PINKTOKRI', 9, 34, 'DR.BATRA\'S INSTANT GLOW FACE WASH 100GM', '100GM', '159', 1, 1, 'product/thump_1602146212.jpg', 0, '', '2020-10-08 14:06:52', 0, 0),
(264, 'DR.BATRA\'S OIL CONTROL FACE WASH 100G', 'PINKTOKRI', 9, 34, 'DR.BATRA\'S OIL CONTROL FACE WASH 100G', '100GM', '159', 1, 1, 'product/thump_1602146273.jpg', 0, '', '2020-10-08 14:07:53', 0, 0),
(265, 'DR.BATRA\'S PRO+ INTENSE VOLUME SHAMPOO 500ML', 'PINKTOKRI', 9, 35, 'DR.BATRA\'S PRO+ INTENSE VOLUME SHAMPOO5 500ML', '500ML', '439', 1, 1, 'product/thump_1602146374.jpg', 0, '', '2020-10-08 14:09:34', 0, 0),
(266, 'ENVY  COOL WAVE TALC 300G', 'PINKTOKRI', 9, 34, 'ENVY  COOL WAVE TALC 300G', '300GM', '99', 1, 1, 'product/thump_1602146422.jpeg', 0, '', '2020-10-08 14:10:22', 0, 0),
(267, 'ENVY COOL WAVE BODY TALC 100G', 'PINKTOKRI', 9, 34, 'ENVY COOL WAVE BODY TALC 100G', '100GM', '40', 1, 1, 'product/thump_1602146488.jpg', 0, '', '2020-10-08 14:11:28', 0, 0);
INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `ptax`, `prel`, `date`, `discount`, `popular`) VALUES
(268, 'ENVY PASSION BODY TALC 100G', 'PINKTOKRI', 9, 34, 'ENVY PASSION BODY TALC 100G', '100GM', '40', 1, 1, 'product/thump_1602146526.jpg', 0, '', '2020-10-08 14:12:06', 0, 0),
(269, 'ENVY PASSION BODY TALC 300G', 'PINKTOKRI', 9, 34, 'ENVY PASSION BODY TALC 300G', '300GM', '99', 1, 1, 'product/thump_1602146566.jpeg', 0, '', '2020-10-08 14:12:46', 0, 0),
(270, 'EVERYUTH NATURALS EXFOLIATING WALNUT SCRUB 25GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS EXFOLIATING WALNUT SCRUB 25GM', '25GM', '38', 1, 1, 'product/thump_1602146644.jpg', 0, '', '2020-10-08 14:14:04', 0, 0),
(271, 'EVERYUTH NATURALS EXFOLIATING WALNUT SCRUB 50GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS EXFOLIATING WALNUT SCRUB 50GM', '50GM', '71', 1, 1, 'product/thump_1602146718.jpg', 0, '', '2020-10-08 14:15:18', 0, 0),
(272, 'EVERYUTH NATURALS EXFOLIATING WALNUT SCRUB 200GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS EXFOLIATING WALNUT SCRUB 200GM', '200GM', '190', 1, 1, 'product/thump_1602146795.jpg', 0, '', '2020-10-08 14:16:35', 0, 0),
(273, 'EVERYUTH NATURALS GOLDEN GLOW PEEL-OFF MASK 30GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS GOLDEN GLOW PEEL-OFF MASK 30GM', '30GM', '47', 1, 1, 'product/thump_1602146849.jpg', 0, '', '2020-10-08 14:17:29', 0, 0),
(274, 'EVERYUTH NATURALS GOLDEN GLOW PEEL-OFF MASK 90GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS GOLDEN GLOW PEEL-OFF MASK 90GM', '90GM', '108', 1, 1, 'product/thump_1602146929.jpg', 0, '', '2020-10-08 14:18:49', 0, 0),
(275, 'EVERYUTH NATURALS NOURISHING ALOEVERA & CUCUMBER GEL 100GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS NOURISHING ALOEVERA & CUCUMBER GEL 100GM ', '100GM', '80', 1, 1, 'product/thump_1602146996.jpg', 0, '', '2020-10-08 14:19:56', 0, 0),
(276, 'EVERYUTH NATURALS PURE & LIGHT TAN REMOVAL PACK 50GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS PURE & LIGHT TAN REMOVAL PACK 50GM', '50GM', '94', 1, 1, 'product/thump_1602147051.jpg', 0, '', '2020-10-08 14:20:51', 0, 0),
(277, 'EVERYUTH NATURALS PURE & LIGHT TAN REMOVAL SCRUB 50GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS PURE & LIGHT TAN REMOVAL SCRUB 50GM', '50GM', '108', 1, 1, 'product/thump_1602147097.jpg', 0, '', '2020-10-08 14:21:37', 0, 0),
(278, 'EVERYUTH NATURALS REJUVENATING (CUCUMBER & ALOE VERA FACEPACK) 50GM', 'PINKTOKRI', 9, 34, 'EVERYUTH NATURALS REJUVENATING (CUCUMBER & ALOE VERA FACEPACK) 50GM', '50GM', '57', 1, 1, 'product/thump_1602147155.jpg', 0, '', '2020-10-08 14:22:35', 0, 0),
(279, 'FAIR & LOVELY INSTANT BRIGHTNESS FACE WASH FOR MEN 100GM', 'PINKTOKRI', 9, 34, 'FAIR & LOVELY INSTANT BRIGHTNESS FACE WASH FOR MEN 100GM', '100GM', '140', 1, 1, 'product/thump_1602147203.jpg', 0, '', '2020-10-08 14:23:23', 0, 0),
(280, 'FIAMA MEN SHOWER GEL COOL BURST (WITH MENTHOL CRYSTALS) 250ML', 'PINKTOKRI', 9, 33, 'FIAMA MEN SHOWER GEL COOL BURST (WITH MENTHOL CRYSTALS) 250ML', '250ML', '189', 1, 1, 'product/thump_1602147260.jpg', 0, '', '2020-10-08 14:24:20', 0, 0),
(281, 'FIAMA MEN SHOWER GEL QUICK WASH 250ML', 'PINKTOKRI', 9, 33, 'FIAMA MEN SHOWER GEL QUICK WASH 250ML', '250ML', '189', 1, 1, 'product/thump_1602147320.jpg', 0, '', '2020-10-08 14:25:20', 0, 0),
(282, 'FIAMA SHOWER GEL (BLACKCURRANT & BEARBERRY) 250ML', 'PINKTOKRI', 9, 33, 'FIAMA SHOWER GEL (BLACKCURRANT & BEARBERRY) 250ML', '250ML', '189', 1, 1, 'product/thump_1602147367.jpg', 0, '', '2020-10-08 14:26:07', 0, 0),
(283, 'FIAMA SHOWER GEL (LEMONGRASS & JOJOBA) 250ML', 'PINKTOKRI', 9, 33, 'FIAMA SHOWER GEL (LEMONGRASS & JOJOBA) 250ML', '250ML', '189', 1, 1, 'product/thump_1602147408.jpg', 0, '', '2020-10-08 14:26:48', 0, 0),
(284, 'FIAMA SHOWER GEL (PATCHOULI & MACADAMIA) 250ML ', 'PINKTOKRI', 9, 33, 'FIAMA SHOWER GEL (PATCHOULI & MACADAMIA) 250ML ', '250ML', '189', 1, 1, 'product/thump_1602147448.jpg', 0, '', '2020-10-08 14:27:28', 0, 0),
(285, 'FIAMA SHOWER GEL (PEACH & AVOCADO) 250ML', 'PINKTOKRI', 9, 33, 'FIAMA SHOWER GEL (PEACH & AVOCADO) 250ML', '250ML', '189', 1, 1, 'product/thump_1602147522.jpg', 0, '', '2020-10-08 14:28:42', 0, 0),
(286, 'GLAM-UP MOISTURISING LIGHT MAKEUP CREAM 34GM', 'PINKTOKRI', 9, 41, 'GLAM-UP MOISTURISING LIGHT MAKEUP CREAM 34GM', '34GM', '202', 1, 1, 'product/thump_1602147623.jpeg', 0, '', '2020-10-08 14:30:23', 0, 0),
(287, 'GODREJ NUPUR HENNA POWDER 50G', 'PINKTOKRI', 9, 35, 'GODREJ NUPUR HENNA POWDER 50G', '50GM', '32', 1, 1, 'product/thump_1602147698.jpg', 0, '', '2020-10-08 14:31:38', 0, 0),
(288, 'GODREJ NUPUR HENNA POWDER 150G', 'PINKTOKRI', 9, 35, 'GODREJ NUPUR HENNA POWDER 150G', '150GM', '69', 1, 1, 'product/thump_1602147756.jpg', 0, '', '2020-10-08 14:32:36', 0, 0),
(289, 'HALO NOURISHING SHAMPOO+CONDITIONER 1000ML', 'PINKTOKRI', 9, 35, 'HALO NOURISHING SHAMPOO+CONDITIONER 1000ML', '1000ML', '260', 1, 1, 'product/thump_1602147812.jpg', 0, '', '2020-10-08 14:33:32', 0, 0),
(290, 'HIMALAYA ANTI HAIR-FALL CONDITIONER 100ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI HAIR-FALL CONDITIONER 100ML', '100ML', '85', 1, 1, 'product/thump_1602147868.jpg', 0, '', '2020-10-08 14:34:28', 0, 0),
(291, 'HIMALAYA ANTI-DANDRUFF CONDITIONER 100ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI-DANDRUFF CONDITIONER 100ML', '100ML', '85', 1, 1, 'product/thump_1602147924.jpg', 0, '', '2020-10-08 14:35:24', 0, 0),
(292, 'HIMALAYA ANTI-DANDRUFF SHAMPOO 200ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI-DANDRUFF SHAMPOO 200ML', '200ML', '135', 1, 1, 'product/thump_1602147982.jpg', 0, '', '2020-10-08 14:36:22', 0, 0),
(293, 'HIMALAYA ANTI-DANDRUFF SHAMPOO 400ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI-DANDRUFF SHAMPOO 400ML', '400ML', '242', 1, 1, 'product/thump_1602148026.jpg', 0, '', '2020-10-08 14:37:06', 0, 0),
(294, 'HIMALAYA ANTI-DANDRUFF SHAMPOO 700ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI-DANDRUFF SHAMPOO 700ML', '700ML', '460', 1, 1, 'product/thump_1602148083.jpg', 0, '', '2020-10-08 14:38:03', 0, 0),
(295, 'HIMALAYA ANTI-HAIRFALL SHAMPOO 200ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI-HAIRFALL SHAMPOO 200ML', '200ML', '125', 1, 1, 'product/thump_1602148143.jpg', 0, '', '2020-10-08 14:39:03', 0, 0),
(296, 'HIMALAYA ANTI-HAIRFALL SHAMPOO 400ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI-HAIRFALL SHAMPOO 400ML', '400ML', '225', 1, 1, 'product/thump_1602148181.jpg', 0, '', '2020-10-08 14:39:41', 0, 0),
(297, 'HIMALAYA ANTI-HAIRFALL SHAMPOO 700ML', 'PINKTOKRI', 9, 35, 'HIMALAYA ANTI-HAIRFALL SHAMPOO 700ML', '700ML', '440', 1, 1, 'product/thump_1602148219.jpg', 0, '', '2020-10-08 14:40:19', 0, 0),
(298, 'HIMALAYA CLEAR COMPLEXION BRIGHTENING FACE WASH 100GM', 'PINKTOKRI', 9, 34, 'HIMALAYA CLEAR COMPLEXION BRIGHTENING FACE WASH 100GM', '100GM', '135', 1, 1, 'product/thump_1602148272.jpg', 0, '', '2020-10-08 14:41:12', 0, 0),
(299, 'HIMALAYA CLEAR COMPLEXION WHITENING FACE SCRUB 100GM', 'PINKTOKRI', 9, 34, 'HIMALAYA CLEAR COMPLEXION WHITENING FACE SCRUB 100GM', '100GM', '130', 1, 1, 'product/thump_1602148315.jpg', 0, '', '2020-10-08 14:41:55', 0, 0),
(300, 'HIMALAYA COMPLETE CARE TOOTHPASTE 80GM', 'PINKTOKRI', 9, 36, 'HIMALAYA COMPLETE CARE TOOTHPASTE 80GM', '80GM', '50', 1, 1, 'product/thump_1602148374.jpg', 0, '', '2020-10-08 14:42:54', 0, 0),
(301, 'HIMALAYA COMPLETE CARE TOOTHPASTE 150GM', 'PINKTOKRI', 9, 36, 'HIMALAYA COMPLETE CARE TOOTHPASTE 150GM', '150GM', '80', 1, 1, 'product/thump_1602148452.jpg', 0, '', '2020-10-08 14:44:12', 0, 0),
(302, 'HIMALAYA FACE & BEARD WASH 40ML', 'PINKTOKRI', 9, 34, 'HIMALAYA FACE & BEARD WASH 40ML', '40ML', '85', 1, 1, 'product/thump_1602148549.jpg', 0, '', '2020-10-08 14:45:49', 0, 0),
(303, 'HIMALAYA FRESH START OIL CLEAR FACE WASH (BLUEBERRY) 100ML', 'PINKTOKRI', 9, 34, 'HIMALAYA FRESH START OIL CLEAR FACE WASH (BLUEBERRY) 100ML', '100ML', '136', 1, 1, 'product/thump_1602148624.jpg', 0, '', '2020-10-08 14:47:04', 0, 0),
(304, 'HIMALAYA FRESH START OIL CLEAR FACE WASH (LEMON) 100ML', 'PINKTOKRI', 9, 34, 'HIMALAYA FRESH START OIL CLEAR FACE WASH (LEMON) 100ML', '100ML', '136', 1, 1, 'product/thump_1602148728.jpg', 0, '', '2020-10-08 14:48:48', 0, 0),
(305, 'HIMALAYA FRESH START OIL CLEAR FACE WASH (PEACH) 100ML', 'PINKTOKRI', 9, 34, 'HIMALAYA FRESH START OIL CLEAR FACE WASH (PEACH) 100ML', '100ML', '136', 1, 1, 'product/thump_1602148832.jpg', 0, '', '2020-10-08 14:50:32', 0, 0),
(306, 'HIMALAYA GENTLE DAILY CARE PROTEIN CONDITIONER 100ML', 'PINKTOKRI', 9, 35, 'HIMALAYA GENTLE DAILY CARE PROTEIN CONDITIONER 100ML', '100ML', '85', 1, 1, 'product/thump_1602148910.jpg', 0, '', '2020-10-08 14:51:50', 0, 0),
(307, 'HIMALAYA GENTLE DAILY CARE PROTEIN SHAMPOO 200ML', 'PINKTOKRI', 9, 35, 'HIMALAYA GENTLE DAILY CARE PROTEIN SHAMPOO 200ML', '200ML', '135', 1, 1, 'product/thump_1602148960.jpg', 0, '', '2020-10-08 14:52:40', 0, 0),
(308, 'HIMALAYA GENTLE DAILY CARE PROTEIN SHAMPOO 400ML', 'PINKTOKRI', 9, 35, 'HIMALAYA GENTLE DAILY CARE PROTEIN SHAMPOO 400ML', '400ML', '225', 1, 1, 'product/thump_1602149070.jpg', 0, '', '2020-10-08 14:54:30', 0, 0),
(309, 'HIMALAYA GENTLE DAILY CARE PROTEIN SHAMPOO 700ML', 'PINKTOKRI', 9, 35, 'HIMALAYA GENTLE DAILY CARE PROTEIN SHAMPOO 700ML', '700ML', '440', 1, 1, 'product/thump_1602149110.jpg', 0, '', '2020-10-08 14:55:10', 0, 0),
(310, 'HIMALAYA GENTLE EXFOLIATING APRICOT SCRUB 100GM', 'PINKTOKRI', 9, 34, 'HIMALAYA GENTLE EXFOLIATING APRICOT SCRUB 100GM', '100GM', '130', 1, 1, 'product/thump_1602149159.jpg', 0, '', '2020-10-08 14:55:59', 0, 0),
(311, 'HIMALAYA GENTLE EXFOLIATING WALNUT SCRUB 100GM', 'PINKTOKRI', 9, 34, 'HIMALAYA GENTLE EXFOLIATING WALNUT SCRUB 100GM', '100GM', '130', 1, 1, 'product/thump_1602149225.jpg', 0, '', '2020-10-08 14:57:05', 0, 0),
(312, 'HIMALAYA INTENSE OIL CLEAR  FACE WASH FOR MEN 50ML', 'PINKTOKRI', 9, 34, 'HIMALAYA INTENSE OIL CLEAR  FACE WASH FOR MEN 50ML', '50ML', '75', 1, 1, 'product/thump_1602149318.jpg', 0, '', '2020-10-08 14:58:38', 0, 0),
(313, 'HIMALAYA NATURAL GLOW KESAR FACE WASH 100GM', 'PINKTOKRI', 9, 34, 'HIMALAYA NATURAL GLOW KESAR FACE WASH 100GM', '100GM', '125', 1, 1, 'product/thump_1602149509.jpg', 0, '', '2020-10-08 15:01:49', 0, 0),
(314, 'HIMALAYA NATURAL SHINE HENNA 50GM', 'PINKTOKRI', 9, 35, 'HIMALAYA NATURAL SHINE HENNA 50GM', '50GM', '35', 1, 1, 'product/thump_1602149562.jpg', 0, '', '2020-10-08 15:02:42', 0, 0),
(315, 'HIMALAYA NATURAL SHINE HENNA 120GM', 'PINKTOKRI', 9, 35, 'HIMALAYA NATURAL SHINE HENNA 120GM', '120GM', '70', 1, 1, 'product/thump_1602149616.jpg', 0, '', '2020-10-08 15:03:36', 0, 0),
(316, 'HIMALAYA NOURISHING SKIN CREAM (LIGHT & NON-GREASY) 50ML', 'PINKTOKRI', 9, 41, 'HIMALAYA NOURISHING SKIN CREAM (LIGHT & NON-GREASY) 50ML', '50ML', '72', 1, 1, 'product/thump_1602149673.jpg', 0, '', '2020-10-08 15:04:33', 0, 0),
(317, 'HIMALAYA POWER GLOW LICORICE FACE WASH FOR MEN 50ML', 'PINKTOKRI', 9, 34, 'HIMALAYA POWER GLOW LICORICE FACE WASH FOR MEN 50ML', '50ML', '75', 1, 1, 'product/thump_1602149864.jpg', 0, '', '2020-10-08 15:07:44', 0, 0),
(318, 'HIMALAYA PURIFYING NEEM FACE WASH 100ML', 'PINKTOKRI', 9, 34, 'HIMALAYA PURIFYING NEEM FACE WASH 100ML', '100ML', '115', 1, 1, 'product/thump_1602149961.jpg', 0, '', '2020-10-08 15:09:21', 0, 0),
(319, 'HIMALAYA PURIFYING NEEM FACE WASH 150ML', 'PINKTOKRI', 9, 34, 'HIMALAYA PURIFYING NEEM FACE WASH 150ML', '150ML', '150', 1, 1, 'product/thump_1602150004.jpg', 0, '', '2020-10-08 15:10:04', 0, 0),
(320, 'HIMALAYA PURIFYING NEEM FACE WASH 200ML', 'PINKTOKRI', 9, 34, 'HIMALAYA PURIFYING NEEM FACE WASH 200ML', '200ML', '115', 1, 1, 'product/thump_1602150046.jpg', 0, '', '2020-10-08 15:10:46', 0, 0),
(321, 'HIMALAYA PURIFYING NEEM PACK 100GM', 'PINKTOKRI', 9, 34, 'HIMALAYA PURIFYING NEEM PACK 100GM', '100GM', '130', 1, 1, 'product/thump_1602150123.jpg', 0, '', '2020-10-08 15:12:03', 0, 0),
(322, 'HIMALAYA REFRESHING & CLARIFYING TONER 100ML', 'PINKTOKRI', 9, 41, 'HIMALAYA REFRESHING & CLARIFYING TONER 100ML', '100ML', '95', 1, 1, 'product/thump_1602150169.jpg', 0, '', '2020-10-08 15:12:49', 0, 0),
(323, 'HIMALAYA SPARKLING WHITE TOOTHPASTE 80GM', 'PINKTOKRI', 9, 36, 'HIMALAYA SPARKLING WHITE TOOTHPASTE 80GM', '80GM', '60', 1, 1, 'product/thump_1602150209.jpg', 0, '', '2020-10-08 15:13:29', 0, 0),
(324, 'HIMALAYA SPARKLING WHITE TOOTHPASTE 150G', 'PINKTOKRI', 9, 36, 'HIMALAYA SPARKLING WHITE TOOTHPASTE 150G', '150GM', '90', 1, 1, 'product/thump_1602150273.jpg', 0, '', '2020-10-08 15:14:33', 0, 0),
(325, 'HIMALAYA TAN REMOVAL ORANGE FACE SCRUB 100GM', 'PINKTOKRI', 9, 34, 'HIMALAYA TAN REMOVAL ORANGE FACE SCRUB 100GM', '100GM', '130', 1, 1, 'product/thump_1602150337.jpg', 0, '', '2020-10-08 15:15:37', 0, 0),
(326, 'HIMALAYA WINTER DEFENCE MOISTURIZING CREAM 50ML', 'PINKTOKRI', 9, 41, 'HIMALAYA WINTER DEFENCE MOISTURIZING CREAM 50ML', '50ML', '68', 1, 1, 'product/thump_1602150383.jpg', 0, '', '2020-10-08 15:16:23', 0, 0),
(327, 'LUX VELVET TOUCH MOISTURIZING BODY WASH (JASMINE & ALMOND OIL) 235ML', 'PINKTOKRI', 9, 33, 'LUX VELVET TOUCH MOISTURIZING BODY WASH (JASMINE & ALMOND OIL) 235ML', '235ML', '94', 1, 1, 'product/thump_1602150435.jpg', 0, '', '2020-10-08 15:17:15', 0, 0),
(328, 'MATA PICKUP BAG 100PCS', 'PINKTOKRI', 10, 49, 'MATA PICKUP BAG 100PCS', '100PCS', '60', 1, 1, 'product/thump_1602150548.jpeg', 0, '', '2020-10-08 15:19:08', 0, 0),
(329, 'MEDIMIX ANTI PIMPLE FACE WASH 100ML', 'PINKTOKRI', 9, 34, 'MEDIMIX ANTI PIMPLE FACE WASH 100ML', '100ML', '110', 1, 1, 'product/thump_1602150728.jpg', 0, '', '2020-10-08 15:22:08', 0, 0),
(330, 'MEDIMIX ANTI-TAN FACE WASH 50ML', 'PINKTOKRI', 9, 34, 'MEDIMIX ANTI-TAN FACE WASH 50ML', '50ML', '62', 1, 1, 'product/thump_1602150778.jpg', 0, '', '2020-10-08 15:22:58', 0, 0),
(331, 'MEDIMIX ANTI-TAN FACE WASH 100ML', 'PINKTOKRI', 9, 34, 'MEDIMIX ANTI-TAN FACE WASH 100ML', '100ML', '110', 1, 1, 'product/thump_1602150831.jpg', 0, '', '2020-10-08 15:23:51', 0, 0),
(332, 'MEN\'S FAIR & LOVELY INSTANT BRIGHTNESS CREAM 25GM', 'PINKTOKRI', 9, 41, 'MEN\'S FAIR & LOVELY INSTANT BRIGHTNESS CREAM 25GM', '25GM', '70', 1, 1, 'product/thump_1602150887.jpg', 0, '', '2020-10-08 15:24:47', 0, 0),
(333, 'MENS GLOW & HANDSOME INSTANT BRIGHTNESS 50GM ', 'PINKTOKRI', 9, 41, 'MENS GLOW & HANDSOME INSTANT BRIGHTNESS 50GM ', '50GM', '120', 1, 1, 'product/thump_1602150975.jpg', 0, '', '2020-10-08 15:26:15', 0, 0),
(334, 'PALMOLIVE AROMA ABSOLUTE RELAX SHOWER GEL 250ML', 'PINKTOKRI', 9, 33, 'PALMOLIVE AROMA ABSOLUTE RELAX SHOWER GEL 250ML', '250ML', '189', 1, 1, 'product/thump_1602151015.jpg', 0, '', '2020-10-08 15:26:55', 0, 0),
(335, 'PALMOLIVE AROMA MOMENTS FEEL THE MASSAGE (SHOWER GEL) 250ML', 'PINKTOKRI', 9, 33, 'PALMOLIVE AROMA MOMENTS FEEL THE MASSAGE (SHOWER GEL) 250ML', '250ML', '171', 1, 1, 'product/thump_1602151065.jpg', 0, '', '2020-10-08 15:27:45', 0, 0),
(336, 'PALMOLIVE AROMA MORNING TONIC SHOWER GEL 250ML', 'PINKTOKRI', 9, 33, 'PALMOLIVE AROMA MORNING TONIC SHOWER GEL 250ML', '250ML', '189', 1, 1, 'product/thump_1602151136.jpg', 0, '', '2020-10-08 15:28:56', 0, 0),
(337, 'PALMOLIVE AROMA MORNING TONIC SHOWER GEL 750ML', 'PINKTOKRI', 9, 33, 'PALMOLIVE AROMA MORNING TONIC SHOWER GEL 750ML', '750ML', '474', 1, 1, 'product/thump_1602151181.jpg', 0, '', '2020-10-08 15:29:41', 0, 0),
(338, 'PALMOLIVE LUMINOUS OILS SHOWER GEL (FIG OIL WITH WHITE ORCHID) 250ML', 'PINKTOKRI', 9, 33, 'PALMOLIVE LUMINOUS OILS SHOWER GEL (FIG OIL WITH WHITE ORCHID) 250ML', '250ML', '237', 1, 1, 'product/thump_1602151271.jpg', 0, '', '2020-10-08 15:31:11', 0, 0),
(339, 'PALMOLIVE LUMINOUS OILS SHOWER GEL (MACADAMIA OIL WITH PEONY) 250ML', 'PINKTOKRI', 9, 33, 'PALMOLIVE LUMINOUS OILS SHOWER GEL (MACADAMIA OIL WITH PEONY) 250ML', '250ML', '237', 1, 1, 'product/thump_1602151340.jpg', 0, '', '2020-10-08 15:32:20', 0, 0),
(340, 'PARK AVENUE BEER SHAMPOO ANTI-DANDRUFF 180ML', 'PINKTOKRI', 9, 35, 'PARK AVENUE BEER SHAMPOO ANTI-DANDRUFF 180ML', '180ML', '145', 1, 1, 'product/thump_1602151405.jpg', 0, '', '2020-10-08 15:33:25', 0, 0),
(341, 'PARK AVENUE BEER SHAMPOO ANTI-DANDRUFF 350ML', 'PINKTOKRI', 9, 35, 'PARK AVENUE BEER SHAMPOO ANTI-DANDRUFF 350ML', '350ML', '245', 1, 1, 'product/thump_1602151464.jpg', 0, '', '2020-10-08 15:34:24', 0, 0),
(342, 'PARK AVENUE BEER SHAMPOO DAMAGE FREE 180ML', 'PINKTOKRI', 9, 35, 'PARK AVENUE BEER SHAMPOO DAMAGE FREE 180ML', '180ML', '145', 1, 1, 'product/thump_1602151512.jpg', 0, '', '2020-10-08 15:35:12', 0, 0),
(343, 'PARK AVENUE BEER SHAMPOO DAMAGE FREE 350ML', 'PINKTOKRI', 9, 35, 'PARK AVENUE BEER SHAMPOO DAMAGE FREE 350ML', '350ML', '242', 1, 1, 'product/thump_1602151588.jpg', 0, '', '2020-10-08 15:36:28', 0, 0),
(344, 'PARK AVENUE BEER SHAMPOO HAIR FALL CONTROL 180ML', 'PINKTOKRI', 9, 35, 'PARK AVENUE BEER SHAMPOO HAIR FALL CONTROL 180ML', '180ML', '145', 1, 1, 'product/thump_1602151666.jpg', 0, '', '2020-10-08 15:37:46', 0, 0),
(345, 'PARK AVENUE BEER SHAMPOO SHINY AND BOUNCY 180ML', 'PINKTOKRI', 9, 35, 'PARK AVENUE BEER SHAMPOO SHINY AND BOUNCY 180ML', '180ML', '145', 1, 1, 'product/thump_1602151707.jpg', 0, '', '2020-10-08 15:38:27', 0, 0),
(346, 'PARK AVENUE BEER SHAMPOO SHINY AND BOUNCY 350ML', 'PINKTOKRI', 9, 35, 'PARK AVENUE BEER SHAMPOO SHINY AND BOUNCY 350ML', '350ML', '245', 1, 1, 'product/thump_1602151771.jpg', 0, '', '2020-10-08 15:39:31', 0, 0),
(347, 'PEARS FRESH RENEWAL FACEWASH 60GM', 'PINKTOKRI', 9, 34, 'PEARS FRESH RENEWAL FACEWASH 60GM', '60GM', '145', 1, 1, 'product/thump_1602151821.jpg', 0, '', '2020-10-08 15:40:21', 0, 0),
(348, 'PEARS PURE & GENTLE FACEWASH 60GM', 'PINKTOKRI', 9, 34, 'PEARS PURE & GENTLE FACEWASH 60GM', '60GM', '145', 1, 1, 'product/thump_1602151936.jpg', 0, '', '2020-10-08 15:42:16', 0, 0),
(349, 'PEPSODENT CAVITY PROTECTION 2IN1(FIGHTS GERMS & FRESHNESS BREATH) 150GM', 'PINKTOKRI', 9, 36, 'PEPSODENT CAVITY PROTECTION 2IN1(FIGHTS GERMS & FRESHNESS BREATH) 150GM', '150GM', '90', 1, 1, 'product/thump_1602151995.jpg', 0, '', '2020-10-08 15:43:15', 0, 0),
(350, 'PEPSODENT CAVITY PROTECTION TOOTHPASTE 125GM', 'PINKTOKRI', 9, 36, 'PEPSODENT CAVITY PROTECTION TOOTHPASTE 125GM', '125GM', '49', 1, 1, 'product/thump_1602152076.jpg', 0, '', '2020-10-08 15:44:36', 0, 0),
(351, 'PEPSODENT CAVITY PROTECTION TOOTHPASTE 200GM', 'PINKTOKRI', 9, 36, 'PEPSODENT CAVITY PROTECTION TOOTHPASTE 200GM', '200GM', '82', 1, 1, 'product/thump_1602152129.jpg', 0, '', '2020-10-08 15:45:29', 0, 0),
(352, 'PEPSODENT EXPERT PROTECTION TOOTHPASTE 140GM', 'PINKTOKRI', 9, 36, 'PEPSODENT EXPERT PROTECTION TOOTHPASTE 140GM', '140GM', '111', 1, 1, 'product/thump_1602152176.jpg', 0, '', '2020-10-08 15:46:16', 0, 0),
(353, 'PEPSODENT GERM CHECK TOOTHPASTE 150+150GM', 'PINKTOKRI', 9, 36, 'PEPSODENT GERM CHECK TOOTHPASTE 150+150GM', '300GM', '148', 1, 1, 'product/thump_1602152240.jpg', 0, '', '2020-10-08 15:47:20', 0, 0),
(354, 'PEPSODENT GUMCARE+ TOOTHPASTE 140GM', 'PINKTOKRI', 9, 36, 'PEPSODENT GUMCARE+ TOOTHPASTE 140GM', '140GM', '90', 1, 1, 'product/thump_1602152754.jpg', 0, '', '2020-10-08 15:55:54', 0, 0),
(355, 'PEPSODENT WHITENING TOOTHPASTE 150GM', 'PINKTOKRI', 9, 36, 'PEPSODENT WHITENING TOOTHPASTE 150GM', '150GM', '92', 1, 1, 'product/thump_1602152804.jpg', 0, '', '2020-10-08 15:56:44', 0, 0),
(356, 'POND\'S COLD CREAM FOR SOFT GLOWING SKIN 26GM(49)', 'PINKTOKRI', 9, 41, 'POND\'S COLD CREAM FOR SOFT GLOWING SKIN 26GM', '26GM', '49', 1, 1, 'product/thump_1602152846.jpg', 0, '', '2020-10-08 15:57:26', 0, 0),
(357, 'POND\'S COLD CREAM FOR SOFT GLOWING SKIN 55ML', 'PINKTOKRI', 9, 41, 'POND\'S COLD CREAM FOR SOFT GLOWING SKIN 55ML', '55ML', '92', 1, 1, 'product/thump_1602153115.jpg', 0, '', '2020-10-08 16:01:55', 0, 0),
(358, 'POND\'S COLD CREAM SOFT GLOWING 100ML', 'PINKTOKRI', 9, 41, 'POND\'S COLD CREAM SOFT GLOWING 100ML', '100ML', '149', 1, 1, 'product/thump_1602153233.jpg', 0, '', '2020-10-08 16:03:53', 0, 0),
(359, 'POND\'S COLD CREAM SOFT GLOWING CREAM 200ML ', 'PINKTOKRI', 9, 41, 'POND\'S COLD CREAM SOFT GLOWING CREAM 200ML ', '200ML', '285', 1, 1, 'product/thump_1602153272.jpg', 0, '', '2020-10-08 16:04:32', 0, 0),
(360, 'POND\'S MAGIC ACACIA HONEY 100G ', 'PINKTOKRI', 9, 34, 'POND\'S MAGIC ACACIA HONEY 100G ', '100GM', '108', 1, 1, 'product/thump_1602153343.jpg', 0, '', '2020-10-08 16:05:43', 0, 0),
(361, 'POND\'S MEN PIMPLE CLEAR FACE WASH 50GM', 'PINKTOKRI', 9, 34, 'POND\'S MEN PIMPLE CLEAR FACE WASH 50GM', '50GM', '105', 1, 1, 'product/thump_1602153399.jpg', 0, '', '2020-10-08 16:06:39', 0, 0),
(362, 'POND\'S ORCHID & JASMINE TALC 100G', 'PINKTOKRI', 9, 34, 'POND\'S ORCHID & JASMINE TALC 100G', '100GM', '106', 1, 1, 'product/thump_1602153448.jpg', 0, '', '2020-10-08 16:07:28', 0, 0),
(363, 'POND\'S ORCHID & JASMINE TALC 300G', 'PINKTOKRI', 9, 34, 'POND\'S ORCHID & JASMINE TALC 300G', '300GM', '280', 1, 1, 'product/thump_1602153490.jpg', 0, '', '2020-10-08 16:08:10', 0, 0),
(364, 'POND\'S PINK LILY TALC 100GM', 'PINKTOKRI', 9, 34, 'POND\'S PINK LILY TALC 100GM', '100G', '83', 1, 1, 'product/thump_1602153528.jpg', 0, '', '2020-10-08 16:08:48', 0, 0),
(365, 'POND\'S PINK LILY TALC 400GM', 'PINKTOKRI', 9, 34, 'POND\'S PINK LILY TALC 400GM', '400G', '270', 1, 1, 'product/thump_1602153588.jpg', 0, '', '2020-10-08 16:09:48', 0, 0),
(366, 'POND\'S SANDAL NATURAL SUNSCEEN 300G', 'PINKTOKRI', 9, 34, 'POND\'S SANDAL NATURAL SUNSCEEN 300G', '300G', '258', 1, 1, 'product/thump_1602153643.jpg', 0, '', '2020-10-08 16:10:43', 0, 0),
(367, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS 23GM', 'PINKTOKRI', 9, 41, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS 23GM', '23G', '66', 1, 1, 'product/thump_1602153685.jpeg', 0, '', '2020-10-08 16:11:25', 0, 0),
(368, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS 35GM', 'PINKTOKRI', 9, 41, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS 35GM', '35G', '120', 1, 1, 'product/thump_1602153725.jpg', 0, '', '2020-10-08 16:12:05', 0, 0),
(369, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS FACE WASH 50GM', 'PINKTOKRI', 9, 34, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS FACE WASH 50GM', '50G', '73', 1, 1, 'product/thump_1602153771.jpg', 0, '', '2020-10-08 16:12:51', 0, 0),
(370, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS FACEWASH 100GM', 'PINKTOKRI', 9, 34, 'POND\'S WHITE BEAUTY SPOT-LESS FAIRNESS FACEWASH 100GM', '100G', '135', 1, 1, 'product/thump_1602153830.jpg', 0, '', '2020-10-08 16:13:50', 0, 0),
(371, 'POND\'S WHITE BEAUTY SUN DULLNESS REMOVAL FACIAL SCRUB 50GM', 'PINKTOKRI', 9, 34, 'POND\'S WHITE BEAUTY SUN DULLNESS REMOVAL FACIAL SCRUB 50GM', '50G', '140', 1, 1, 'product/thump_1602153965.jpg', 0, '', '2020-10-08 16:16:05', 0, 0),
(372, 'SUNDROP PEANUT BUTTER 12SACHETS (32GM EACH) ', 'PINKTOKRI', 8, 27, 'SUNDROP PEANUT BUTTER 12SACHETS (32GM EACH) ', '384', '110', 1, 1, 'product/thump_1602154214.jpg', 0, '', '2020-10-08 16:20:14', 0, 0),
(373, 'SUNSILK ALMOND AND HONEY CONDITIONER 180ML', 'PINKTOKRI', 9, 35, 'SUNSILK ALMOND AND HONEY CONDITIONER 180ML', '180ML', '145', 1, 1, 'product/thump_1602154259.jpg', 0, '', '2020-10-08 16:20:59', 0, 0),
(374, 'SUNSILK ALMOND AND HONEY SHAMPOO 195ML', 'PINKTOKRI', 9, 35, 'SUNSILK ALMOND AND HONEY SHAMPOO 195ML', '195ML', '90', 1, 1, 'product/thump_1602154313.jpg', 0, '', '2020-10-08 16:21:53', 0, 0),
(375, 'SUNSILK COCONUT WATER AND ALOE VERA CONDITIONER 180ML', 'PINKTOKRI', 9, 35, 'SUNSILK COCONUT WATER AND ALOE VERA CONDITIONER 180ML', '180ML', '145', 1, 1, 'product/thump_1602154362.jpg', 0, '', '2020-10-08 16:22:42', 0, 0),
(376, 'SUNSILK COCONUT WATER AND ALOE VERA SHAMPOO 195ML(95)', 'PINKTOKRI', 9, 35, 'SUNSILK COCONUT WATER AND ALOE VERA SHAMPOO 195ML', '195ML', '95', 1, 1, 'product/thump_1602154424.jpg', 0, '', '2020-10-08 16:23:44', 0, 0),
(377, 'SUNSILK COCONUT WATER AND ALOE VERA SHAMPOO 370ML', 'PINKTOKRI', 9, 35, 'SUNSILK COCONUT WATER AND ALOE VERA SHAMPOO 370ML', '370ML', '182', 1, 1, 'product/thump_1602154462.jpg', 0, '', '2020-10-08 16:24:22', 0, 0),
(378, 'SUNSILK GREEN TEA & WHITE LILY SHAMPOO 370ML', 'PINKTOKRI', 9, 35, 'SUNSILK GREEN TEA & WHITE LILY SHAMPOO 370ML', '370ML', '180', 1, 1, 'product/thump_1602154500.jpg', 0, '', '2020-10-08 16:25:00', 0, 0),
(379, 'SUNSILK HAIRFALL SOLUTION SHAMPOO 340ML', 'PINKTOKRI', 9, 35, 'SUNSILK HAIRFALL SOLUTION SHAMPOO 340ML', '340ML', '170', 1, 1, 'product/thump_1602154553.jpg', 0, '', '2020-10-08 16:25:53', 0, 0),
(380, 'SUNSILK LONG AND HEALTHY GROWTH SHAMPOO 340ML', 'PINKTOKRI', 9, 35, 'SUNSILK LONG AND HEALTHY GROWTH SHAMPOO 340ML', '340ML', '170', 1, 1, 'product/thump_1602154612.jpg', 0, '', '2020-10-08 16:26:52', 0, 0),
(381, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 80ML', 'PINKTOKRI', 9, 35, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 80ML', '80ML', '41', 1, 1, 'product/thump_1602154649.jpg', 0, '', '2020-10-08 16:27:29', 0, 0),
(382, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 180ML', 'PINKTOKRI', 9, 35, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 180ML', '180ML', '135', 1, 1, 'product/thump_1602154685.jpg', 0, '', '2020-10-08 16:28:05', 0, 0),
(383, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 340ML', 'PINKTOKRI', 9, 35, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 340ML', '340ML', '170', 1, 1, 'product/thump_1602154739.jpg', 0, '', '2020-10-08 16:28:59', 0, 0),
(384, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 650ML', 'PINKTOKRI', 9, 35, 'SUNSILK LUSCIOUSLY THICK AND LONG SHAMPOO 650ML', '650ML', '290', 1, 1, 'product/thump_1602154774.jpg', 0, '', '2020-10-08 16:29:34', 0, 0),
(385, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 80ML', 'PINKTOKRI', 9, 35, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 80ML', '80ML', '41', 1, 1, 'product/thump_1602154815.jpg', 0, '', '2020-10-08 16:30:15', 0, 0),
(386, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 180ML', 'PINKTOKRI', 9, 35, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 180ML', '180ML', '90', 1, 1, 'product/thump_1602154891.jpg', 0, '', '2020-10-08 16:31:31', 0, 0),
(387, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 340ML', 'PINKTOKRI', 9, 35, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 340ML', '340ML', '170', 1, 1, 'product/thump_1602154935.jpg', 0, '', '2020-10-08 16:32:15', 0, 0),
(388, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 650ML', 'PINKTOKRI', 9, 35, 'SUNSILK NOURISHING SOFT & SMOOTH SHAMPOO 650ML', '650ML', '290', 1, 1, 'product/thump_1602154980.jpg', 0, '', '2020-10-08 16:33:00', 0, 0),
(389, 'SUNSILK PERFECT STRAIGHT SHAMPOO 340ML', 'PINKTOKRI', 9, 35, 'SUNSILK PERFECT STRAIGHT SHAMPOO 340ML', '340ML', '170', 1, 1, 'product/thump_1602155022.jpg', 0, '', '2020-10-08 16:33:42', 0, 0),
(390, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 80ML', 'PINKTOKRI', 9, 35, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 80ML', '80ML', '41', 1, 1, 'product/thump_1602155062.jpg', 0, '', '2020-10-08 16:34:22', 0, 0),
(391, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 180ML', 'PINKTOKRI', 9, 35, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 180ML', '180ML', '90', 1, 1, 'product/thump_1602155119.jpg', 0, '', '2020-10-08 16:35:19', 0, 0),
(392, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 340ML', 'PINKTOKRI', 9, 35, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 340ML', '340ML', '170', 1, 1, 'product/thump_1602155161.jpg', 0, '', '2020-10-08 16:36:01', 0, 0),
(393, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 650ML', 'PINKTOKRI', 9, 35, 'SUNSILK STUNNING BLACK SHINE SHAMPOO 650ML', '650ML', '285', 1, 1, 'product/thump_1602155205.jpg', 0, '', '2020-10-08 16:36:45', 0, 0),
(394, 'TRESEMME CLIMATE PROTECTION CONDITIONER 190ML', 'PINKTOKRI', 9, 35, 'TRESEMME CLIMATE PROTECTION CONDITIONER 190ML', '190ML', '179', 1, 1, 'product/thump_1602155248.jpg', 0, '', '2020-10-08 16:37:28', 0, 0),
(395, 'TRESEMME CLIMATE PROTECTION SHAMPOO 185ML', 'PINKTOKRI', 9, 35, 'TRESEMME CLIMATE PROTECTION SHAMPOO 185ML', '185ML', '115', 1, 1, 'product/thump_1602155293.jpg', 0, '', '2020-10-08 16:38:13', 0, 0),
(396, 'TRESEMME HAIR FALL DEFENCE 85ML', 'PINKTOKRI', 9, 35, 'TRESEMME HAIR FALL DEFENCE 85ML', '85ML', '51', 1, 1, 'product/thump_1602155334.jpg', 0, '', '2020-10-08 16:38:54', 0, 0),
(397, 'TRESEMME HAIR FALL DEFENCE 185ML', 'PINKTOKRI', 9, 35, 'TRESEMME HAIR FALL DEFENCE 185ML', '185ML', '110', 1, 1, 'product/thump_1602155421.jpg', 0, '', '2020-10-08 16:40:21', 0, 0),
(398, 'TRESEMME HAIR FALL DEFENCE 580ML', 'PINKTOKRI', 9, 35, 'TRESEMME HAIR FALL DEFENCE 580ML', '580ML', '415', 1, 1, 'product/thump_1602155507.jpg', 0, '', '2020-10-08 16:41:47', 0, 0),
(399, 'TRESEMME HAIRFALL DEFENCE 190ML', 'PINKTOKRI', 9, 35, 'TRESEMME HAIRFALL DEFENCE 190ML', '190ML', '172', 1, 1, 'product/thump_1602155661.jpg', 0, '', '2020-10-08 16:44:21', 0, 0),
(400, 'TRESEMME SMOOTH & SHINE 190ML', 'PINKTOKRI', 9, 35, 'TRESEMME SMOOTH & SHINE 190ML', '190ML', '179', 1, 1, 'product/thump_1602155714.jpg', 0, '', '2020-10-08 16:45:14', 0, 0),
(401, 'TRESEMME SMOOTH AND SHINE 85ML', 'PINKTOKRI', 9, 35, 'TRESEMME SMOOTH AND SHINE 85ML', '85ML', '51', 1, 1, 'product/thump_1602155754.jpg', 0, '', '2020-10-08 16:45:54', 0, 0),
(402, 'TRESEMME SMOOTH AND SHINE 185ML', 'PINKTOKRI', 9, 35, 'TRESEMME SMOOTH AND SHINE 185ML', '185ML', '115', 1, 1, 'product/thump_1602155811.jpg', 0, '', '2020-10-08 16:46:51', 0, 0),
(403, 'TRESEMME SMOOTH AND SHINE 340ML', 'PINKTOKRI', 9, 35, 'TRESEMME SMOOTH AND SHINE 340ML', '340ML', '215', 1, 1, 'product/thump_1602155863.jpg', 0, '', '2020-10-08 16:47:43', 0, 0),
(404, 'TRESEMME SMOOTH AND SHINE 580ML', 'PINKTOKRI', 9, 35, 'TRESEMME SMOOTH AND SHINE 580ML', '580ML', '415', 1, 1, 'product/thump_1602155945.jpg', 0, '', '2020-10-08 16:49:05', 0, 0),
(405, 'WHITE TONE FACE POWDER 30GM', 'PINKTOKRI', 9, 41, 'WHITE TONE FACE POWDER 30GM', '30G', '50', 1, 1, 'product/thump_1602155986.jpg', 0, '', '2020-10-08 16:49:46', 0, 0),
(406, 'WHITE TONE FACE POWDER 70GM', 'PINKTOKRI', 9, 41, 'WHITE TONE FACE POWDER 70GM', '70GM', '90', 1, 1, 'product/thump_1602156033.jpg', 0, '', '2020-10-08 16:50:33', 0, 0),
(407, 'WHITE TONE SOFT & SMOOTH FACE CREAM 25GM ', 'PINKTOKRI', 9, 41, 'WHITE TONE SOFT & SMOOTH FACE CREAM 25GM ', '25GM', '68', 1, 1, 'product/thump_1602156083.jpg', 0, '', '2020-10-08 16:51:23', 0, 0),
(408, 'PARK AVENUE SIGNATURE COLLECTION VOYAGE (AMAZON WOODS) 120ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE SIGNATURE COLLECTION VOYAGE (AMAZON WOODS) 120ML', '120ML', '250', 1, 1, 'product/thump_1602160148.jpg', 0, '', '2020-10-08 17:59:08', 0, 0),
(409, 'OSSUM PERFUMED BODY MIST ( WITH AQUA) 115ML', 'PINKTOKRI', 9, 38, 'OSSUM PERFUMED BODY MIST ( WITH AQUA) 115ML', '115ML', '202', 1, 1, 'product/thump_1602160307.jpg', 0, '', '2020-10-08 18:01:47', 0, 0),
(410, 'FOGG MASTER VOYAGE INTENSE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG MASTER VOYAGE INTENSE BODY SPRAY 120ML', '120ML', '202', 1, 1, 'product/thump_1602160413.jpeg', 0, '', '2020-10-08 18:03:33', 0, 0),
(411, 'ENVY WOMEN BLISS DEODRANT SPRAY (WITH ENVY LUV FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY WOMEN BLISS DEODRANT SPRAY (WITH ENVY LUV FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602160639.jpg', 0, '', '2020-10-08 18:07:19', 0, 0),
(412, 'ENVY RUSH DEODORANT PRAY (WITH ENVY DARK FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY RUSH DEODORANT PRAY (WITH ENVY DARK FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602160803.jpg', 0, '', '2020-10-08 18:10:03', 0, 0),
(413, 'FOGG MONARCH FRAGRANCE BODY SPRAY 100GM', 'PINKTOKRI', 9, 38, 'FOGG MONARCH FRAGRANCE BODY SPRAY 100GM', '100G', '166', 1, 1, 'product/thump_1602160948.jpg', 0, '', '2020-10-08 18:12:28', 0, 0),
(414, 'FOGG MASTER ROYAL INTENSE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG MASTER ROYAL INTENSE BODY SPRAY 120ML', '120ML', '202', 1, 1, 'product/thump_1602161098.jpg', 0, '', '2020-10-08 18:14:58', 0, 0),
(415, 'PARK AVENUE VOYAGE FUJI SPICE BODY PERFUME 135ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE VOYAGE FUJI SPICE BODY PERFUME 135ML', '135ML', '195', 1, 1, 'product/thump_1602161231.jpg', 0, '', '2020-10-08 18:17:11', 0, 0),
(416, 'FOGG FRESH AROMATIC FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG FRESH AROMATIC FRAGRANCE BODY SPRAY 120ML', '120ML', '207', 1, 1, 'product/thump_1602161390.jpg', 0, '', '2020-10-08 18:19:50', 0, 0),
(417, 'FOGG FRESH ORIENTAL FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG FRESH ORIENTAL FRAGRANCE BODY SPRAY 120ML', '120ML', '207', 1, 1, 'product/thump_1602161533.jpg', 0, '', '2020-10-08 18:22:13', 0, 0),
(418, 'OSSUM PERFUMED BODY MIST (WITH AQUA) 115ML', 'PINKTOKRI', 9, 38, 'OSSUM PERFUMED BODY MIST (WITH AQUA) 115ML', '115ML', '202', 1, 1, 'product/thump_1602161748.jpg', 0, '', '2020-10-08 18:25:48', 0, 0),
(419, 'OSSUM ROMANCE PERFUMED BODY MIST (WITH AQUA) 115ML', 'PINKTOKRI', 9, 38, 'OSSUM ROMANCE PERFUMED BODY MIST (WITH AQUA) 115ML', '115ML', '202', 1, 1, 'product/thump_1602161846.jpg', 0, '', '2020-10-08 18:27:26', 0, 0),
(420, 'OSSUM BLOSSOM PERFUMED BODY MIST (WITH AQUA) 115ML', 'PINKTOKRI', 9, 38, 'OSSUM BLOSSOM PERFUMED BODY MIST (WITH AQUA) 115ML', '115ML', '202', 1, 1, 'product/thump_1602161939.jpg', 0, '', '2020-10-08 18:28:59', 0, 0),
(421, 'ENVY DARK DEODORANT SPRAY (WITH ENVY DARK POCKET PERFUME FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY DARK DEODORANT SPRAY (WITH ENVY DARK POCKET PERFUME FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602162172.jpg', 0, '', '2020-10-08 18:32:52', 0, 0),
(422, 'ENVY ABSOLUTE DEODORANT SPRAY (ENVY LUV POCKET PERFUME FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY ABSOLUTE DEODORANT SPRAY (ENVY LUV POCKET PERFUME FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602162335.jpg', 0, '', '2020-10-08 18:35:35', 0, 0),
(423, 'ENVY SPEED DEODORANT SPRAY (ENVY LUV POCKET PERFUME FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY SPEED DEODORANT SPRAY (ENVY LUV POCKET PERFUME FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602162497.jpg', 0, '', '2020-10-08 18:38:17', 0, 0),
(424, 'ENVY PASSION DEODORANT SPRAY (ENVY DARK POCKET PERFUME FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY PASSION DEODORANT SPRAY (ENVY DARK POCKET PERFUME FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602162645.jpg', 0, '', '2020-10-08 18:40:45', 0, 0),
(425, 'ENVY NOIR DEODORANT SPRAY (ENVY DARK POCKET PERFUME FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY NOIR DEODORANT SPRAY (ENVY DARK POCKET PERFUME FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602162741.jpg', 0, '', '2020-10-08 18:42:21', 0, 0),
(426, 'ENVY FORCE DEODORANT SPRAY (ENVY DARK POCKET PERFUME FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY FORCE DEODORANT SPRAY (ENVY DARK POCKET PERFUME FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602162815.jpg', 0, '', '2020-10-08 18:43:35', 0, 0),
(427, 'FOGG SCENT WOMEN (EAU DE PARFUM) 100ML', 'PINKTOKRI', 9, 38, 'FOGG SCENT WOMEN (EAU DE PARFUM) 100ML', '100ML', '450', 1, 1, 'product/thump_1602162939.jpg', 0, '', '2020-10-08 18:45:39', 0, 0),
(428, 'FOGG SCENT WOMEN IMPRESSIO (EAU DE PARFUM) 100ML', 'PINKTOKRI', 9, 38, 'FOGG SCENT WOMEN IMPRESSIO (EAU DE PARFUM) 100ML', '100ML', '450', 1, 1, 'product/thump_1602163084.jpg', 0, '', '2020-10-08 18:48:04', 0, 0),
(429, 'FOGG SCENT WOMEN XPRESSIO (EAU DE PARFUM) 100ML', 'PINKTOKRI', 9, 38, 'FOGG SCENT WOMEN XPRESSIO (EAU DE PARFUM) 100ML', '100ML', '450', 1, 1, 'product/thump_1602163179.jpg', 0, '', '2020-10-08 18:49:39', 0, 0),
(430, 'FOGG SCENT WOMEN XTREMO (EAU DE PARFUM) 100ML', 'PINKTOKRI', 9, 38, 'FOGG SCENT WOMEN XTREMO (EAU DE PARFUM) 100ML', '100ML', '450', 1, 1, 'product/thump_1602163258.jpg', 0, '', '2020-10-08 18:50:58', 0, 0),
(431, 'FOGG SCENT WOMEN \"MAKE MY DAY\" (EAU DE PARFUM) 100ML', 'PINKTOKRI', 9, 38, 'FOGG SCENT WOMEN \"MAKE MY DAY\" (EAU DE PARFUM) 100ML', '100ML', '450', 1, 1, 'product/thump_1602163332.jpg', 0, '', '2020-10-08 18:52:12', 0, 0),
(432, 'FOGG SCENT WOMEN \"BEAUTIFUL SECRET\" (EAU DE PARFUM) 100ML', 'PINKTOKRI', 9, 38, 'FOGG SCENT WOMEN \"BEAUTIFUL SECRET\" (EAU DE PARFUM) 100ML', '100ML', '450', 1, 1, 'product/thump_1602163427.jpg', 0, '', '2020-10-08 18:53:47', 0, 0),
(433, 'FOGG MAJESTIC FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG MAJESTIC FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602163603.jpg', 0, '', '2020-10-08 18:56:43', 0, 0),
(434, 'FOGG FRESH AQUA FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG FRESH AQUA FRAGRANCE BODY SPRAY 120ML', '120ML', '207', 1, 1, 'product/thump_1602164174.jpg', 0, '', '2020-10-08 19:06:14', 0, 0),
(435, 'FOGG FRESH WOODY FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG FRESH WOODY FRAGRANCE BODY SPRAY 120ML', '120ML', '207', 1, 1, 'product/thump_1602164256.jpg', 0, '', '2020-10-08 19:07:36', 0, 0),
(436, 'FOGG FRESH FOUGERE FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG FRESH FOUGERE FRAGRANCE BODY SPRAY 120ML', '120ML', '207', 1, 1, 'product/thump_1602164351.jpg', 0, '', '2020-10-08 19:09:11', 0, 0),
(437, 'FOGG NAPOLEON FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG NAPOLEON FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602164485.jpg', 0, '', '2020-10-08 19:11:25', 0, 0),
(438, 'FOGG DELICIOUS FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG DELICIOUS FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602164557.jpg', 0, '', '2020-10-08 19:12:37', 0, 0),
(439, 'FOGG ESSENCE FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG ESSENCE FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602164633.jpg', 0, '', '2020-10-08 19:13:53', 0, 0),
(440, 'FOGG ROYAL FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG ROYAL FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602164701.jpg', 0, '', '2020-10-08 19:15:01', 0, 0),
(441, 'FOGG IMPERIAL FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG IMPERIAL FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602164804.jpg', 0, '', '2020-10-08 19:16:44', 0, 0),
(442, 'FOGG PARADISE FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG PARADISE FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602164900.jpg', 0, '', '2020-10-08 19:18:20', 0, 0),
(443, 'FOGG VICTOR FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG VICTOR FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602164973.jpg', 0, '', '2020-10-08 19:19:33', 0, 0),
(444, 'FOGG MARCO FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG MARCO FRAGRANCE BODY SPRAY 120ML', '120ML', '166', 1, 1, 'product/thump_1602165103.jpg', 0, '', '2020-10-08 19:21:43', 0, 0),
(445, 'FOGG MARCO INTENSE FRAGRANCE BODY SPRAY 120ML', 'PINKTOKRI', 9, 38, 'FOGG MARCO INTENSE FRAGRANCE BODY SPRAY 120ML', '120ML', '202', 1, 1, 'product/thump_1602165190.jpg', 0, '', '2020-10-08 19:23:10', 0, 0),
(446, 'FOGG STAR POLARIS FRAGRANCE BODY PERFUME 120ML', 'PINKTOKRI', 9, 38, 'FOGG STAR POLARIS FRAGRANCE BODY PERFUME 120ML', '120ML', '225', 1, 1, 'product/thump_1602165313.jpg', 0, '', '2020-10-08 19:25:13', 0, 0),
(447, 'FOGG STAR JUPITER INTENSE FRAGRANCE BODY PERFUME 120ML', 'PINKTOKRI', 9, 38, 'FOGG STAR JUPITER INTENSE FRAGRANCE BODY PERFUME 120ML', '120ML', '225', 1, 1, 'product/thump_1602165425.jpg', 0, '', '2020-10-08 19:27:05', 0, 0),
(448, 'FOGG MASTER NAPOLEON INTENSE FRAGRANCE BODY SPRAY  120ML', 'PINKTOKRI', 9, 38, 'FOGG MASTER NAPOLEON INTENSE FRAGRANCE BODY SPRAY  120ML', '120ML', '202', 1, 1, 'product/thump_1602165540.jpg', 0, '', '2020-10-08 19:29:00', 0, 0),
(449, 'ENVY  KISS DEODORANT SPRAY (WITH  ENVY LUV POCKET PERFUME FREE) 120ML', 'PINKTOKRI', 9, 38, 'ENVY  KISS DEODORANT SPRAY (WITH  ENVY LUV POCKET PERFUME FREE) 120ML', '120ML', '190', 1, 1, 'product/thump_1602165718.jpg', 0, '', '2020-10-08 19:31:58', 0, 0),
(450, 'FOGG RADIATE FRAGRANT BODY SPRAY FOR WOMEN 120ML', 'PINKTOKRI', 9, 38, 'FOGG RADIATE FRAGRANT BODY SPRAY FOR WOMEN 120ML', '120ML', '166', 1, 1, 'product/thump_1602165820.jpg', 0, '', '2020-10-08 19:33:40', 0, 0),
(451, 'PARK AVENUE GOOD MORNING MOISTURISING SHAVING FOAM 420GM', 'PINKTOKRI', 9, 39, 'PARK AVENUE GOOD MORNING MOISTURISING SHAVING FOAM 420GM', '420GM', '215', 1, 1, 'product/thump_1602165978.jpg', 0, '', '2020-10-08 19:36:18', 0, 0),
(452, 'DENVER IMPERIAL HAMILTON EXCLUSIVE COLLECTION (PERFUME+DEODORANT) 60+165ML', 'PINKTOKRI', 9, 38, 'DENVER IMPERIAL HAMILTON EXCLUSIVE COLLECTION (PERFUME+DEODORANT) 60+165ML', '225ML', '425', 1, 1, 'product/thump_1602166915.jpg', 0, '', '2020-10-08 19:51:55', 0, 0),
(453, 'DENVER HAMILTON EXCLUSIVE COLLECTION(PERFUME+DEODORANT) 225ML', 'PINKTOKRI', 9, 38, 'DENVER HAMILTON EXCLUSIVE COLLECTION(PERFUME+DEODORANT) 225ML', '225ML', '425', 1, 1, 'product/thump_1602167032.jpg', 0, '', '2020-10-08 19:53:52', 0, 0),
(454, 'DENVER HAMILTON (PERFUME+DEODORANT) 100ML', 'PINKTOKRI', 9, 38, 'DENVER HAMILTON (PERFUME+DEODORANT) 100ML', '100ML', '400', 1, 1, 'product/thump_1602167164.jpg', 0, '', '2020-10-08 19:56:04', 0, 0),
(455, 'DENVER HAMILTON (PERFUME+DEODORANT) 60ML', 'PINKTOKRI', 9, 38, 'DENVER HAMILTON (PERFUME+DEODORANT) 60ML', '60ML', '249', 1, 1, 'product/thump_1602167298.jpg', 0, '', '2020-10-08 19:58:18', 0, 0),
(456, 'DENVER IMPERIAL HAMILTON (PERFUME+DEODORANT) 100ML', 'PINKTOKRI', 9, 38, 'DENVER IMPERIAL HAMILTON (PERFUME+DEODORANT) 100ML', '100ML', '400', 1, 1, 'product/thump_1602167419.jpg', 0, '', '2020-10-08 20:00:19', 0, 0),
(457, 'DENVER IMPERIAL HAMILTON (PERFUME+DEODORANT) 60ML', 'PINKTOKRI', 9, 38, 'DENVER IMPERIAL HAMILTON (PERFUME+DEODORANT) 60ML', '60ML', '249', 1, 1, 'product/thump_1602167553.jpg', 0, '', '2020-10-08 20:02:33', 0, 0),
(458, 'DENVER BLACK.CODE PERFUME 60ML', 'PINKTOKRI', 9, 38, 'DENVER BLACK.CODE PERFUME 60ML', '60ML', '210', 1, 1, 'product/thump_1602229215.jpg', 0, '', '2020-10-09 13:10:15', 0, 0),
(459, 'DENVER ORIGINAL PERFUME 60ML', 'PINKTOKRI', 9, 38, 'DENVER ORIGINAL PERFUME 60ML', '60ML', '210', 1, 1, 'product/thump_1602229341.jpg', 0, '', '2020-10-09 13:12:21', 0, 0),
(460, 'DENVER AUTOGRAPH COLLECTION SRK EMPEROR  DEODORANT 150ML', 'PINKTOKRI', 9, 38, 'DENVER AUTOGRAPH COLLECTION SRK EMPEROR  DEODORANT 150ML', '60ML', '225', 1, 1, 'product/thump_1602229961.jpg', 0, '', '2020-10-09 13:22:41', 0, 0),
(461, 'DENVER AUTOGRAPH COLLECTION SRK MAESTRO  DEODORANT 150ML', 'PINKTOKRI', 9, 38, 'DENVER AUTOGRAPH COLLECTION SRK MAESTRO  DEODORANT 150ML', '150ML', '225', 1, 1, 'product/thump_1602230061.jpg', 0, '', '2020-10-09 13:24:21', 0, 0),
(462, 'PARK AVENUE REGAL PERFUME WITH AROMATIC OILS 130ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE REGAL PERFUME WITH AROMATIC OILS 130ML', '130ML', '220', 1, 1, 'product/thump_1602230216.jpg', 0, '', '2020-10-09 13:26:56', 0, 0),
(463, 'PARK AVENUE (VOYAGE+NEO+VOYAGE) BODY SPRAY (BUY 2 GET 1 FREE) 450ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE (VOYAGE+NEO+VOYAGE) BODY SPRAY (BUY 2 GET 1 FREE) 450ML', '450ML', '465', 1, 1, 'product/thump_1602230376.jpg', 0, '', '2020-10-09 13:29:36', 0, 0),
(464, 'PARK AVENUE (GOOD MORNING+STORM+GOOD MORNING) BODY SPRAY (BUY 2 GET 1 FREE) 450ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE (GOOD MORNING+STORM+GOOD MORNING) BODY SPRAY (BUY 2 GET 1 FREE) 450ML', '450ML', '390', 1, 1, 'product/thump_1602230574.jpg', 0, '', '2020-10-09 13:32:54', 0, 0),
(465, 'DENVER SPORT DEODORANT BODY SPRAY 150ML', 'PINKTOKRI', 9, 38, 'DENVER SPORT DEODORANT BODY SPRAY 150ML', '150ML', '175', 1, 1, 'product/thump_1602230869.jpg', 0, '', '2020-10-09 13:37:49', 0, 0),
(466, 'DENVER ORIGINAL DEODORANT BODY SPRAY 150ML', 'PINKTOKRI', 9, 38, 'DENVER ORIGINAL DEODORANT BODY SPRAY 150ML', '150ML', '175', 1, 1, 'product/thump_1602230956.jpg', 0, '', '2020-10-09 13:39:16', 0, 0),
(467, 'DENVER BLACK.CODE DEODORANT BODY SPRAY 150ML', 'PINKTOKRI', 9, 38, 'DENVER BLACK.CODE DEODORANT BODY SPRAY 150ML', '150ML', '170', 1, 1, 'product/thump_1602231027.jpg', 0, '', '2020-10-09 13:40:27', 0, 0),
(468, 'DENVER BLACK.CODE DEODORANT BODY SPRAY 150ML', 'PINKTOKRI', 9, 38, 'DENVER BLACK.CODE DEODORANT BODY SPRAY 150ML', '150ML', '170', 1, 1, 'product/thump_1602231102.jpg', 0, '', '2020-10-09 13:41:42', 0, 0),
(469, 'DENVER CALIBER HAMILTON DEODORANT BODY SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER CALIBER HAMILTON DEODORANT BODY SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602231192.jpg', 0, '', '2020-10-09 13:43:12', 0, 0),
(470, 'DENVER HONOUR HAMILTON DEODORANT BODY SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER HONOUR HAMILTON DEODORANT BODY SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602231288.jpg', 0, '', '2020-10-09 13:44:48', 0, 0),
(471, 'DENVER PRESTIGE HAMILTON DEODORANT BODY SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER PRESTIGE HAMILTON DEODORANT BODY SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602231374.jpg', 0, '', '2020-10-09 13:46:14', 0, 0),
(472, 'DENVER NOBLE HAMILTON DEODORANT BODY SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER NOBLE HAMILTON DEODORANT BODY SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602231432.jpg', 0, '', '2020-10-09 13:47:12', 0, 0),
(473, 'DENVER ROYAL OUD HAMILTON DEODORANT BODY SPRAY 150ML', 'PINKTOKRI', 9, 38, 'DENVER ROYAL OUD HAMILTON DEODORANT BODY SPRAY 150ML', '150ML', '175', 1, 1, 'product/thump_1602231539.jpg', 0, '', '2020-10-09 13:48:59', 0, 0),
(474, 'DENVER IMPERIAL HAMILTON DEODORANT BODY SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER IMPERIAL HAMILTON DEODORANT BODY SPRAY 150ML', '150ML', '175', 1, 1, 'product/thump_1602231637.jpg', 0, '', '2020-10-09 13:50:37', 0, 0),
(475, 'DENVER SPORTING CLUB RIDER DEODORANT SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER SPORTING CLUB RIDER DEODORANT SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602231753.jpg', 0, '', '2020-10-09 13:52:33', 0, 0),
(476, 'DENVER SPORTING CLUB GOAL DEODORANT SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER SPORTING CLUB GOAL DEODORANT SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602231884.jpg', 0, '', '2020-10-09 13:54:44', 0, 0),
(477, 'PARK AVENUE GOOD MORNING AFTER SHAVE LOTION 50ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE GOOD MORNING AFTER SHAVE LOTION 50ML', '50ML', '110', 1, 1, 'product/thump_1602232001.jpg', 0, '', '2020-10-09 13:56:41', 0, 0),
(478, 'DENVER HAMILTON DEODORANT BODY SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER HAMILTON DEODORANT BODY SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602232142.jpg', 0, '', '2020-10-09 13:59:02', 0, 0),
(479, 'DENVER PRIDE HAMILTON DEODORANT BODY SPRAY 165ML', 'PINKTOKRI', 9, 38, 'DENVER PRIDE HAMILTON DEODORANT BODY SPRAY 165ML', '165ML', '175', 1, 1, 'product/thump_1602232223.jpg', 0, '', '2020-10-09 14:00:23', 0, 0),
(480, 'PARK AVENUE SPORTZ POWER AQUA PUNCH 150ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE SPORTZ POWER AQUA PUNCH 150ML', '150ML', '199', 1, 1, 'product/thump_1602232322.jpg', 0, '', '2020-10-09 14:02:02', 0, 0),
(481, 'PARK AVENUE SPORTZ STYLE WOODY BLAST 150ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE SPORTZ STYLE WOODY BLAST 150ML', '150ML', '199', 1, 1, 'product/thump_1602232442.jpg', 0, '', '2020-10-09 14:04:02', 0, 0),
(482, 'PARK AVENUE SPORTZ FORCE CITRUS KICK 150ML', 'PINKTOKRI', 9, 38, 'PARK AVENUE SPORTZ FORCE CITRUS KICK 150ML', '150ML', '199', 1, 1, 'product/thump_1602232566.jpg', 0, '', '2020-10-09 14:06:06', 0, 0),
(483, 'ENVY VANESA NATURAL SPRAY FOR WOMEN 60ML', 'PINKTOKRI', 9, 38, 'ENVY VANESA NATURAL SPRAY FOR WOMEN 60ML', '60ML', '225', 1, 1, 'product/thump_1602232943.jpg', 0, '', '2020-10-09 14:12:23', 0, 0),
(484, 'ENVY VANESA NATURAL SPRAY EVOKE FOR MEN 60ML', 'PINKTOKRI', 9, 38, 'ENVY VANESA NATURAL SPRAY EVOKE FOR MEN 60ML', '60ML', '225', 1, 1, 'product/thump_1602233031.jpg', 0, '', '2020-10-09 14:13:51', 0, 0),
(485, 'DENVER BLACK.CODE COLOGNE TALC (BUY 1 GET 1 FREE) 200GM', 'PINKTOKRI', 9, 38, 'DENVER BLACK.CODE COLOGNE TALC (BUY 1 GET 1 FREE) 200GM', '200GM', '75', 1, 1, 'product/thump_1602233166.jpg', 0, '', '2020-10-09 14:16:06', 0, 0),
(486, 'ENVY ENCHANT FOR WOMEN (FINE FRENCH FRAGRANCE) 100ML', 'PINKTOKRI', 9, 38, 'ENVY ENCHANT FOR WOMEN (FINE FRENCH FRAGRANCE) 100ML', '100ML', '425', 1, 1, 'product/thump_1602233285.jpg', 0, '', '2020-10-09 14:18:05', 0, 0),
(487, 'ENVY BEWITCH FOR WOMEN (FINE FRENCH FRAGRANCE) 100ML', 'PINKTOKRI', 9, 38, 'ENVY BEWITCH FOR WOMEN (FINE FRENCH FRAGRANCE) 100ML', '100ML', '425', 1, 1, 'product/thump_1602233394.jpg', 0, '', '2020-10-09 14:19:54', 0, 0),
(488, 'ENVY ELEGANT FOR MEN (FINE FRENCH FRAGRANCE) 100ML', 'PINKTOKRI', 9, 38, 'ENVY ELEGANT FOR MEN (FINE FRENCH FRAGRANCE) 100ML', '100ML', '425', 1, 1, 'product/thump_1602233577.jpg', 0, '', '2020-10-09 14:22:57', 0, 0),
(489, 'ENVY VANESA PERFUME SPRAY BOLD FOR MEN 60ML', 'PINKTOKRI', 9, 38, 'ENVY VANESA PERFUME SPRAY BOLD FOR MEN 60ML', '60ML', '225', 1, 1, 'product/thump_1602233682.jpg', 0, '', '2020-10-09 14:24:42', 0, 0),
(490, 'ENVY VANESA PERFUME SPRAY FOR MEN 60ML', 'PINKTOKRI', 9, 38, 'ENVY VANESA PERFUME SPRAY FOR MEN 60ML', '60ML', '225', 1, 1, 'product/thump_1602233786.jpg', 0, '', '2020-10-09 14:26:26', 0, 0),
(491, 'ENVY VANESA BLUSH NATURAL SPRAY FOR WOMEN 60ML', 'PINKTOKRI', 9, 38, 'ENVY VANESA BLUSH NATURAL SPRAY FOR WOMEN 60ML', '60ML', '225', 1, 1, 'product/thump_1602233908.jpg', 0, '', '2020-10-09 14:28:28', 0, 0),
(492, 'ENVY VANESA PLEASURE NATURAL SPRAY FOR WOMEN 60ML', 'PINKTOKRI', 9, 38, 'ENVY VANESA PLEASURE NATURAL SPRAY FOR WOMEN 60ML', '60ML', '225', 1, 1, 'product/thump_1602233995.jpg', 0, '', '2020-10-09 14:29:55', 0, 0),
(493, 'DENVER ORIGINAL EXCLUSIVE COLLECTION (PERFUME+DEODORANT) 210ML', 'PINKTOKRI', 9, 38, 'DENVER ORIGINAL EXCLUSIVE COLLECTION (PERFUME+DEODORANT) 210ML', '210ML', '390', 1, 1, 'product/thump_1602234182.jpg', 0, '', '2020-10-09 14:33:02', 0, 0),
(494, 'DENVER BLACK.CODE EXCLUSIVE COLLECTION (PERFUME+DEODORANT) 210ML', 'PINKTOKRI', 9, 38, 'DENVER BLACK.CODE EXCLUSIVE COLLECTION (PERFUME+DEODORANT) 210ML', '210ML', '390', 1, 1, 'product/thump_1602234263.jpg', 0, '', '2020-10-09 14:34:23', 0, 0),
(495, 'DENVER SPORTING CLUB GOAL EXCLUSIVE COLLECTION (DEO+PERFUME) 225ML', 'PINKTOKRI', 9, 38, 'DENVER SPORTING CLUB GOAL EXCLUSIVE COLLECTION (DEO+PERFUME) 225ML', '225ML', '425', 1, 1, 'product/thump_1602234531.jpg', 0, '', '2020-10-09 14:38:51', 0, 0),
(496, 'PANSARI TASTY BASMATI RICE BAG 5KG ', 'PINKTOKRI', 1, 5, 'PANSARI TASTY BASMATI RICE BAG 5KG ', '5KG', '305', 1, 1, 'product/thump_1602235886.jpg', 0, '', '2020-10-09 15:01:26', 0, 0),
(497, 'HIMALAYA  GREEN TEA GINGER ', 'PINK TOKRI ', 7, 13, 'HIMALAYA  GREEN TEA GINGER  RELIEVES INDIGESTION ', '20G', '55', 1, 1, 'product/thump_1602236009.jpg', 0, '', '2020-10-09 15:03:29', 0, 0),
(498, 'HIMALAYA  GREEN TEA CLASSIC  ', 'PINK TOKRI ', 7, 13, 'HIMALAYA  GREEN TEA CLASSIC  KEEPS YOU ACTIVE ', '20G', '55', 1, 1, 'product/thump_1602236145.jpg', 0, '', '2020-10-09 15:05:45', 0, 0),
(499, 'PANSARI KHANA BASMATI RICE 5KG BAG ', 'PINKTOKRI', 1, 5, 'PANSARI KHANA BASMATI RICE 5KG BAG ', '5KG', '365', 1, 1, 'product/thump_1602236189.jpg', 0, '', '2020-10-09 15:06:29', 0, 0),
(500, 'PANSARI KHANA BASMATI RICE 1KG ', 'PINKTOKRI', 1, 5, 'PANSARI KHANA BASMATI RICE 1KG ', '1KG', '75', 1, 1, 'product/thump_1602236322.jpg', 0, '', '2020-10-09 15:08:42', 0, 0),
(501, 'BROOKE BOND TAJ MAHAL 190G', 'PINK TOKRI ', 7, 13, 'BROOKE BOND TAJ MAHAL 190G RICH AND FLAVORFUL ', '190G', '165', 1, 1, 'product/thump_1602236397.jpg', 0, '', '2020-10-09 15:09:57', 0, 0);
INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `ptax`, `prel`, `date`, `discount`, `popular`) VALUES
(502, 'PANSARI ROYAL BASMATI RICE 5KG BAG', 'PINKTOKRI', 1, 5, 'PANSARI ROYAL BASMATI RICE 5KG BAG', '5KG', '570', 1, 1, 'product/thump_1602236410.jpg', 0, '', '2020-10-09 15:10:10', 0, 0),
(503, 'PANSARI ROYAL BASMATI RICE 1KG BAG', 'PINKTOKRI', 1, 5, 'PANSARI ROYAL BASMATI RICE 1KG BAG', '1KG', '85', 1, 1, 'product/thump_1602236472.jpg', 0, '', '2020-10-09 15:11:12', 0, 0),
(504, 'HIMALAYA  GREEN TEA GINGER 40G ', 'PINK TOKRI ', 7, 13, 'HIMALAYA  GREEN TEA GINGER 40G  RELIEVES INDIGESTION ', '40G ', '100', 1, 1, 'product/thump_1602236515.jpg', 0, '', '2020-10-09 15:11:55', 0, 0),
(505, 'AGROPURE POPULAR BASMATI RICE 5KG BAG', 'PINKTOKRI', 1, 5, 'AGROPURE POPULAR BASMATI RICE 5KG BAG', '5KG', '305', 1, 1, 'product/thump_1602236641.jpg', 0, '', '2020-10-09 15:14:01', 0, 0),
(506, 'AGROPURE PREMIUM BASMATI RICE 5KG BAG', 'PINKTOKRI', 1, 5, 'AGROPURE PREMIUM BASMATI RICE 5KG BAG', '5KG', '425', 1, 1, 'product/thump_1602236818.jpg', 0, '', '2020-10-09 15:16:58', 0, 0),
(507, 'OREAL REFINED GROUNDNUT OIL 1L', 'PINK TOKRI ', 6, 9, 'OREAL REFINED GROUNDNUT OIL 1L ', '1LTR', '160', 1, 1, 'product/thump_1602236943.jpg', 0, '', '2020-10-09 15:19:03', 0, 0),
(508, 'SUNDROP SUPER ADVANCED LOW ABSORB (1+1LTR) OIL', 'PINKTOKRI', 6, 9, 'SUNDROP SUPER ADVANCED LOW ABSORB (1+1LTR) OIL', '2LTR', '340', 1, 1, 'product/thump_1602237015.jpg', 0, '', '2020-10-09 15:20:15', 0, 0),
(509, 'OREAL YELOW MUSTARD OIL 1LTR', 'PINKTOKRI', 6, 9, 'OREAL YELOW MUSTARD OIL 1LTR', '1LTR', '180', 1, 1, 'product/thump_1602237117.jpg', 0, '', '2020-10-09 15:21:57', 0, 0),
(510, 'PANSARI DAILY BASMATI , 5KG ', 'PINK TOKRI ', 1, 5, 'PANSARI DAILY BASMATI , 5KG', '5KG', '255', 1, 1, 'product/thump_1602237119.jpg', 0, '', '2020-10-09 15:21:59', 0, 0),
(511, 'KANODIA KOLHU BRAND MUSTARD OIL 1LTR', 'PINKTOKRI', 6, 9, 'KANODIA KOLHU BRAND MUSTARD OIL 1LTR', '1LTR', '139', 1, 1, 'product/thump_1602237227.jpg', 0, '', '2020-10-09 15:23:47', 0, 0),
(512, 'DALDA REFINED GROUNDNUT OIL 1L', 'PINK TOKRI ', 6, 9, 'DALDA REFINED GROUNDNUT OIL 1L \r\n', '1LTR ', '170', 1, 1, 'product/thump_1602237292.jpg', 0, '', '2020-10-09 15:24:52', 0, 0),
(513, 'FORTUNE PREMIUM KACHI GHANI PURE MUSTARD OIL 1LTR', 'PINKTOKRI', 6, 9, 'FORTUNE PREMIUM KACHI GHANI PURE MUSTARD OIL 1LTR', '1LTR', '135', 1, 1, 'product/thump_1602237337.jpg', 0, '', '2020-10-09 15:25:37', 0, 0),
(514, 'KANODIA YELLOW MUSTARD OIL 1LTR', 'PINKTOKRI', 6, 9, 'KANODIA YELLOW MUSTARD OIL 1LTR', '1LTR', '210', 1, 1, 'product/thump_1602237531.jpg', 0, '', '2020-10-09 15:28:51', 0, 0),
(515, 'KANODIA KOLHU BRAND MUSTARD OIL 2LTR', 'PINKTOKRI', 6, 9, 'KANODIA KOLHU BRAND MUSTARD OIL 2LTR', '2LTR', '276', 1, 1, 'product/thump_1602237702.jpg', 0, '', '2020-10-09 15:31:42', 0, 0),
(516, 'PANSARI TIL TEL  500ML ', 'PINK TOKRI ', 6, 9, 'PANSARI TIL TEL  500ML  EDIBLE OIL \r\n', '500ML', '70', 1, 1, 'product/thump_1602237757.jpg', 0, '', '2020-10-09 15:32:37', 0, 0),
(517, 'SUNDROP SUPERLITE ADVANCED LOW ABSORB OIL 3LTR', 'PINKTOKRI', 6, 11, 'SUNDROP SUPERLITE ADVANCED LOW ABSORB OIL 3LTR', '3LTR', '415', 1, 1, 'product/thump_1602237804.jpg', 0, '', '2020-10-09 15:33:24', 0, 0),
(518, 'PANSARI TIL TEL  1L', 'PINK TOKRI ', 6, 9, 'PANSARI TIL TEL  1L ', '1LTR', '138', 1, 1, 'product/thump_1602237869.jpg', 0, '', '2020-10-09 15:34:29', 0, 0),
(519, 'FORTUNE SOYA HEALTH REFINED SOYABEAN OIL 1LTR', 'PINKTOKRI', 6, 10, 'FORTUNE SOYA HEALTH REFINED SOYABEAN OIL 1LTR', '1LTR', '110', 1, 1, 'product/thump_1602237928.jpg', 0, '', '2020-10-09 15:35:28', 0, 0),
(520, 'WAGH BAKRI TEA STRONG AND REFRESHING 500G', 'PINK TOKRI ', 7, 13, 'WAGH BAKRI TEA STRONG AND REFRESHING 500G PREMIUM LEAF TEA', '500G', '230', 1, 1, 'product/thump_1602238166.jpg', 0, '', '2020-10-09 15:39:26', 0, 0),
(521, 'WAGH BAKRI TEA STRONG AND REFRESHING 250G', 'PINK TOKRI ', 7, 13, 'WAGH BAKRI TEA STRONG AND REFRESHING 250G  PREMIUM LEAF TEA ', '250G', '120', 1, 1, 'product/thump_1602238278.jpg', 0, '', '2020-10-09 15:41:18', 0, 0),
(522, 'WAGH BAKRI INSTANT TEA COMBO PACK 3IN1 168G', 'PINK TOKRI ', 7, 13, 'WAGH BAKRI INSTANT TEA COMBO PACK 3IN1 MASALA GINGER ELAICHI ', '168G', '135', 1, 1, 'product/thump_1602238404.jpg', 0, '', '2020-10-09 15:43:24', 0, 0),
(523, 'TAJ MAHAL RICH AND FLAVOURFUL TEA 250GM', 'PINKTOKRI', 7, 13, 'TAJ MAHAL RICH AND FLAVOURFUL TEA 250GM', '250GM', '130', 1, 1, 'product/thump_1602238453.jpg', 0, '', '2020-10-09 15:44:13', 0, 0),
(524, 'TAJ MAHAL RICH AND FLAVOURFUL TEA 500GM', 'PINKTOKRI', 7, 13, 'TAJ MAHAL RICH AND FLAVOURFUL TEA 500GM', '500GM', '270', 1, 1, 'product/thump_1602238511.jpg', 0, '', '2020-10-09 15:45:11', 0, 0),
(525, 'WAGH BAKRI NO ADDED SUGAR INSTANT TEA ', 'PINK TOKRI ', 7, 13, 'WAGH BAKRI NO ADDED SUGAR INSTANT TEA PREMIX MASALA ', '80G', '  130', 1, 1, 'product/thump_1602238515.jpg', 0, '', '2020-10-09 15:45:15', 0, 0),
(526, 'TAJ MAHAL RICH AND FLAVOURFUL TEA 1KG', 'PINKTOKRI', 7, 13, 'TAJ MAHAL RICH AND FLAVOURFUL TEA 1KG', '1KG', '525', 1, 1, 'product/thump_1602238567.jpg', 0, '', '2020-10-09 15:46:07', 0, 0),
(527, 'WAGH BAKRI SPICED TEA 250G ', 'PINK TOKRI ', 7, 13, 'WAGH BAKRI SPICED TEA 250G  7 FRESHENING  SPICES ', '250G', '140', 1, 1, 'product/thump_1602238642.jpg', 0, '', '2020-10-09 15:47:22', 0, 0),
(528, 'NESCAFE CLASSIC PURE COFFEE 500GM', 'PINKTOKRI', 7, 14, 'NESCAFE CLASSIC PURE COFFEE 500GM', '500GM', '1050', 1, 1, 'product/thump_1602238706.jpg', 0, '', '2020-10-09 15:48:26', 0, 0),
(529, 'WAGH BAKRI MILI PREMIUM STRONG LEAF TEA 1KG', 'PINKTOKRI', 7, 13, 'WAGH BAKRI MILI PREMIUM STRONG LEAF TEA 1KG', '1KG', '399', 1, 1, 'product/thump_1602238811.jpg', 0, '', '2020-10-09 15:50:11', 0, 0),
(530, 'HIMALAYA GREEN TEA TULASI 40G', 'PINK TOKRI ', 7, 13, 'HIMALAYA GREEN TEA TULASI 40G EASES COUGH AND COLD ', '40G ', '100', 1, 1, 'product/thump_1602238818.jpg', 0, '', '2020-10-09 15:50:18', 0, 0),
(531, 'WAGH BAKRI NAVCHETAN DANEDAR TEA 1KG', 'PINKTOKRI', 7, 13, 'WAGH BAKRI NAVCHETAN DANEDAR TEA 1KG', '1KG', '250', 1, 1, 'product/thump_1602238934.jpg', 0, '', '2020-10-09 15:52:14', 0, 0),
(532, 'BROOKE BOND TAJ MAHAL 47.5 G ', 'PINK TOKRI ', 7, 13, 'BROOKE BOND TAJ MAHAL 47.5 G  RICH AND FLAVORFUL ', '47.5G', '52', 1, 1, 'product/thump_1602238977.jpg', 0, '', '2020-10-09 15:52:57', 0, 0),
(533, 'WAGH BAKRI NAVCHETAN DANEDAR TEA 250GM', 'PINKTOKRI', 7, 13, 'WAGH BAKRI NAVCHETAN DANEDAR TEA 250GM', '250GM', '65', 1, 1, 'product/thump_1602238999.jpg', 0, '', '2020-10-09 15:53:19', 0, 0),
(534, 'COSTAD ORO EXTRA VIRGIN OLIVE OIL 1LTR ', 'PINKTOKRI', 6, 9, 'COSTAD ORO EXTRA VIRGIN OLIVE OIL 1LTR ', '1LTR', '700', 1, 1, 'product/thump_1602239192.jpg', 0, '', '2020-10-09 15:56:32', 0, 0),
(535, 'HIMALAYA GREEN TEA LEMON  40G', 'PINK TOKRI ', 7, 13, 'HIMALAYA GREEN TEA LEMON  40G REDUCES FATIGUE ', '40G', '100', 1, 1, 'product/thump_1602239222.jpg', 0, '', '2020-10-09 15:57:02', 0, 0),
(536, 'COSTAD ORO OLIVE POMANCE OIL 1LTR ', 'PINKTOKRI', 6, 9, 'COSTAD ORO OLIVE POMANCE OIL 1LTR ', '1LTR', '500', 1, 1, 'product/thump_1602239327.jpg', 0, '', '2020-10-09 15:58:47', 0, 0),
(537, 'SHASHA TEQ MASALA 50G', 'PINK TOKRI ', 7, 13, 'SHASHA TE MASALA 50G ', '50G', '38', 1, 1, 'product/thump_1602239363.jpg', 0, '', '2020-10-09 15:59:23', 0, 0),
(538, 'DEL MONTE EXTRA LIGHT OLIVE OIL 1LTR', 'PINKTOKRI', 6, 9, 'DEL MONTE EXTRA LIGHT OLIVE OIL 1LTR', '1LTR', '625', 1, 1, 'product/thump_1602239603.jpg', 0, '', '2020-10-09 16:03:23', 0, 0),
(539, 'DEL MONTE EXTRA VIRGIN OLIVE OIL 500ML', 'PINKTOKRI', 6, 9, 'DEL MONTE EXTRA VIRGIN OLIVE OIL 500ML', '500ML', '425', 1, 1, 'product/thump_1602239678.jpg', 0, '', '2020-10-09 16:04:38', 0, 0),
(540, 'WAGH BAKRI INSTANT MASALA TEA 140G', 'PINK TOKRI ', 7, 13, 'WAGH BAKRI INSTANT MASALA TEA 140G 3IN1 JUST ADD HOT WATER ', '40G', '130', 1, 1, 'product/thump_1602239690.jpg', 0, '', '2020-10-09 16:04:50', 0, 0),
(541, 'DEL MONTE EXTRA VIRGIN OLIVE OIL 250ML', 'PINKTOKRI', 6, 9, 'DEL MONTE EXTRA VIRGIN OLIVE OIL 250ML', '250ML', '225', 1, 1, 'product/thump_1602239743.jpg', 0, '', '2020-10-09 16:05:43', 0, 0),
(542, 'DEL MONTE OLIVE POMANCE OIL 1LTR', 'PINKTOKRI', 6, 9, 'DEL MONTE OLIVE POMANCE OIL 1LTR', '1LTR', '425', 1, 1, 'product/thump_1602239818.jpg', 0, '', '2020-10-09 16:06:58', 0, 0),
(543, 'ENGINE KACHI GHANI MUSTARD OIL GRADE-1 500ML', 'PINKTOKRI', 6, 9, 'ENGINE KACHI GHANI MUSTARD OIL GRADE-1 500ML', '500ML', '70', 1, 1, 'product/thump_1602239970.jpg', 0, '', '2020-10-09 16:09:30', 0, 0),
(544, 'HIMALAYA  GREEN TEA CLASSIC  40G', 'PINK TOKRI ', 7, 13, 'HIMALAYA  GREEN TEA CLASSIC  40G KEEPS YOU ACTIVE ', '40G ', '100', 1, 1, 'product/thump_1602239986.jpg', 0, '', '2020-10-09 16:09:46', 0, 0),
(545, 'ENGINE KACHI GHANI MUSTARD OIL GRADE-1 1LTR', 'PINKTOKRI', 6, 9, 'ENGINE KACHI GHANI MUSTARD OIL GRADE-1 1LTR', '1LTR', '130', 1, 1, 'product/thump_1602240040.jpg', 0, '', '2020-10-09 16:10:40', 0, 0),
(546, 'ENGINE KACHI GHANI MUSTARD OIL GRADE-1 2LTR', 'PINKTOKRI', 6, 12, 'ENGINE KACHI GHANI MUSTARD OIL GRADE-1 2LTR', '2LTR', '268', 1, 1, 'product/thump_1602240158.jpg', 0, '', '2020-10-09 16:12:38', 0, 0),
(547, 'TODAY HARYALI TEA 1KG', 'PINKTOKRI', 7, 13, 'TODAY HARYALI TEA 1KG', '1KG', '400', 1, 1, 'product/thump_1602240553.jpg', 0, '', '2020-10-09 16:19:13', 0, 0),
(548, 'TODAY PREMIUM TEA 250GM ', 'PINKTOKRI', 7, 13, 'TODAY PREMIUM TEA 250GM ', '250GM', '95', 1, 1, 'product/thump_1602240632.jpg', 0, '', '2020-10-09 16:20:32', 0, 0),
(549, 'TODAY STAR TEA 200GM', 'PINKTOKRI', 7, 13, 'TODAY STAR TEA 200GM', '200GM', '55', 1, 1, 'product/thump_1602240710.jpg', 0, '', '2020-10-09 16:21:50', 0, 0),
(550, 'TODAY PREMIUM TEA (250GM PREMIUM TEA PACK FREE) 1KG', 'PINKTOKRI', 7, 13, 'TODAY PREMIUM TEA (250GM PREMIUM TEA PACK FREE) 1KG', '1250GM', '455', 1, 1, 'product/thump_1602240891.jpg', 0, '', '2020-10-09 16:24:51', 0, 0),
(551, 'TODAY STAR TEA 1KG ', 'PINKTOKRI', 7, 13, 'TODAY STAR TEA 1KG ', '1KG', '295', 1, 1, 'product/thump_1602240965.jpg', 0, '', '2020-10-09 16:26:05', 0, 0),
(552, 'BROOKE BOND TAAZA TEA 250GM', 'PINKTOKRI', 7, 13, 'BROOKE BOND TAAZA TEA 250GM', '250GM', '66', 1, 1, 'product/thump_1602241054.jpg', 0, '', '2020-10-09 16:27:34', 0, 0),
(553, 'TATA TEA AGNI 1KG ', 'PINK TOKRI ', 7, 13, 'TATA TEA AGNI 1KG  EXTRA STRONG LEAVES ', '1KG', '260', 1, 1, 'product/thump_1602241082.jpg', 0, '', '2020-10-09 16:28:02', 0, 0),
(554, 'BROOKE BOND TAAZA MASALA TEA 250GM', 'PINKTOKRI', 7, 13, 'BROOKE BOND TAAZA MASALA TEA 250GM', '250GM', '70', 1, 1, 'product/thump_1602241141.jpg', 0, '', '2020-10-09 16:29:01', 0, 0),
(555, 'TATA TEA PREMIUM 1KG', 'PINK TOKRI ', 7, 13, 'TATA TEA PREMIUM 1KG  DESH KI CHAI ', '1KG', '395', 1, 1, 'product/thump_1602241194.jpg', 0, '', '2020-10-09 16:29:54', 0, 0),
(556, 'BROOKE BOND RED LABEL TEA 1KG ', 'PINKTOKRI', 7, 13, 'BROOKE BOND RED LABEL TEA 1KG ', '1KG', '405', 1, 1, 'product/thump_1602241247.jpg', 0, '', '2020-10-09 16:30:47', 0, 0),
(557, 'TATA TEA PREMIUM 250G', 'PINK TOKRI ', 7, 13, 'TATA TEA PREMIUM 250G  DESH KI CHAI ', '250GMS', '120', 1, 1, 'product/thump_1602241341.jpg', 0, '', '2020-10-09 16:32:21', 0, 0),
(558, 'LIPTON GREEN TEA PURE AND LIGHT 100GM ', 'PINKTOKRI', 7, 13, 'LIPTON GREEN TEA PURE AND LIGHT 100GM ', '100GM', '140', 1, 1, 'product/thump_1602241362.jpg', 0, '', '2020-10-09 16:32:42', 0, 0),
(559, 'LIPTON GREEN TEA PURE AND LIGHT 250GM', 'PINKTOKRI', 7, 13, 'LIPTON GREEN TEA PURE AND LIGHT 250GM', '250GM', '280', 1, 1, 'product/thump_1602241416.jpg', 0, '', '2020-10-09 16:33:36', 0, 0),
(560, 'TATA TEA GOLD 250G', 'PINK TOKRI ', 7, 13, 'TATA TEA GOLD 250G RICH TASTE ', '250G', '125', 1, 1, 'product/thump_1602241509.jpg', 0, '', '2020-10-09 16:35:09', 0, 0),
(561, 'LIPTON DARJEELING LONG LEAF TEA 250GM', 'PINKTOKRI', 7, 13, 'LIPTON DARJEELING LONG LEAF TEA 250GM', '250GM', '440', 1, 1, 'product/thump_1602241529.jpg', 0, '', '2020-10-09 16:35:29', 0, 0),
(562, 'TATA TEA MASALA CHAI 250G', 'PINK TOKRI ', 7, 13, 'TATA TEA MASALA CHAI 250G 5 KA SWAD ', '250G', '85', 1, 1, 'product/thump_1602241633.jpg', 0, '', '2020-10-09 16:37:13', 0, 0),
(563, 'LIPTON YELLOW LABEL TEA(FINEST BLEND) 250GM ', 'PINKTOKRI', 7, 13, 'LIPTON YELLOW LABEL TEA(FINEST BLEND) 250GM ', '250GM', '230', 1, 1, 'product/thump_1602241637.jpg', 0, '', '2020-10-09 16:37:17', 0, 0),
(564, 'TATA TEA AGNI 500G', 'PINK TOKRI ', 7, 13, 'TATA TEA AGNI 500G EXTRA STRONG LEAVES ', '500G', '130', 1, 1, 'product/thump_1602242698.jpg', 0, '', '2020-10-09 16:54:58', 0, 0),
(565, 'TATA TEA AGNI 250G', 'PINK TOKRI ', 7, 13, 'TATA TEA AGNI 500G EXTRA STRONG LEAVES ', '250G', '65', 1, 1, 'product/thump_1602242767.jpg', 0, '', '2020-10-09 16:56:07', 0, 0),
(566, 'BROOKE BOND RED LABEL 500G', 'PINK TOKRI ', 7, 13, 'BROOKE BOND RED LABEL 500G TASTE OF TOGETHERNESS ', '500G', '210', 1, 1, 'product/thump_1602242911.jpg', 0, '', '2020-10-09 16:58:31', 0, 0),
(567, 'BROOKE BOND RED LABEL 250G', 'PINK TOKRI ', 7, 13, 'BROOKE BOND RED LABEL 250G TASTE OF TOGETHERNESS ', '250G', '105G', 1, 1, 'product/thump_1602243112.jpg', 0, '', '2020-10-09 17:01:52', 0, 0),
(568, 'BROOKE BOND RED LABEL NATURAL CARE 250G', 'PINK TOKRI ', 7, 13, 'BROOKE BOND RED LABEL NATURAL CARE 250G ENHANCE IMMUNITY ', '250G', '135', 1, 1, 'product/thump_1602243238.jpg', 0, '', '2020-10-09 17:03:58', 0, 0),
(569, 'LIPTON GREEN TEA LEMON ZEST  32.5 G', 'PINK TOKRI ', 7, 13, 'LIPTON GREEN TEA LEMON TEA  32.5 G ', '32.5 G', '160', 1, 1, 'product/thump_1602243432.jpg', 0, '', '2020-10-09 17:07:12', 0, 0),
(570, 'LIPTON GREEN TEA HONEY LEMON 35G', 'PINK TOKRI ', 7, 13, 'LIPTON GREEN TEA HONEY LEMON 35G ', '35G', '160', 1, 1, 'product/thump_1602243638.jpg', 0, '', '2020-10-09 17:10:38', 0, 0),
(571, 'LIPTON GREEN TEA TULSI NATURA ', 'PINK TOKRI ', 7, 13, 'LIPTON GREEN TEA , TULSI NATURA , 32.5 G ', '32.5G ', '155', 1, 1, 'product/thump_1602245041.jpg', 0, '', '2020-10-09 17:34:01', 0, 0),
(572, 'LIPTON GREEN TEA PURE AND LIGHT 32.5', 'PINK TOKRI ', 7, 13, 'LIPTON GREEN TEA PURE AND LIGHT 32.5 ', '32.5 G', '160', 1, 1, 'product/thump_1602245288.jpg', 0, '', '2020-10-09 17:38:08', 0, 0),
(573, 'WAGH BAKRI INSTANT ELAICHI 80G', 'PINK TOKRI ', 7, 13, 'WAGH BAKRI INSTANT ELAICHI 80G', '80G', '130', 1, 1, 'product/thump_1602245420.jpg', 0, '', '2020-10-09 17:40:20', 0, 0),
(574, 'HIMALAYA GREEN TEA LEMON 20G', 'PINK TOKRI ', 7, 13, 'HIMALAYA GREEN TEA LEMON 20G ', '20G', '55', 1, 1, 'product/thump_1602245588.jpg', 0, '', '2020-10-09 17:43:08', 0, 0),
(575, 'PANSARI REFINED SOYABEAN OIL 1L', 'PINK TOKRI ', 7, 13, 'PANSARI REFINED SOYABEAN OIL 1L ', '1LTR ', '105', 1, 1, 'product/thump_1602245820.jpg', 0, '', '2020-10-09 17:47:00', 0, 0),
(576, 'TOPS DRINKING CHOCOLATE 100GM ', 'PINKTOKRI', 7, 61, 'TOPS DRINKING CHOCOLATE 100GM ', '100GM', '67', 1, 1, 'product/thump_1602246580.jpg', 0, '', '2020-10-09 17:59:40', 0, 0),
(577, 'TWININGS PURE CAMOMILE 30GM', 'PINKTOKRI', 7, 13, 'TWININGS PURE CAMOMILE 30GM', '30GM', '300', 1, 1, 'product/thump_1602246688.jpg', 0, '', '2020-10-09 18:01:28', 0, 0),
(578, 'KANODIA MUSTARD OIL 5L ', 'PINK TOKRI ', 6, 11, 'KANODIA MUSTARD OIL 5L  KOLHU BRAND', '5LTR ', '690', 1, 1, 'product/thump_1602246813.jpg', 0, '', '2020-10-09 18:03:33', 0, 0),
(579, 'DALDA REFINED GROUNDNUT OIL 5L', 'PINK TOKRI ', 6, 11, 'DALDA REFINED GROUNDNUT OIL 5L', '5LTR', '835', 1, 1, 'product/thump_1602247229.jpg', 0, '', '2020-10-09 18:10:29', 0, 0),
(580, 'GOLDEN CROWN PREMIUM COCOA POWDER 100GM', 'PINKTOKRI', 7, 21, 'GOLDEN CROWN PREMIUM COCOA POWDER 100GM', '100GM', '75', 1, 1, 'product/thump_1602247250.jpg', 0, '', '2020-10-09 18:10:50', 0, 0),
(581, 'NESCAFE GOLD CAPPUCCINO 125GM', 'PINKTOKRI', 7, 14, 'NESCAFE GOLD CAPPUCCINO 125GM', '125GM', '119', 1, 1, 'product/thump_1602247405.jpg', 0, '', '2020-10-09 18:13:25', 0, 0),
(582, 'COSTA D\' ORO OLIVE POMANCE OIL 5L', 'PINK TOKRI ', 6, 12, 'COSTA D\' ORO OLIVE POMANCE OIL 5L', '5LTR ', '250', 1, 1, 'product/thump_1602247537.jpg', 0, '', '2020-10-09 18:15:37', 0, 0),
(583, 'SUNBEAN BEATEN CAFFE (COFFEE PASTE ) 75GM', 'PINKTOKRI', 7, 14, 'SUNBEAN BEATEN CAFFE (COFFEE PASTE ) 75GM', '75GM', '48', 1, 1, 'product/thump_1602247543.jpg', 0, '', '2020-10-09 18:15:43', 0, 0),
(584, 'FORTUNE MUSTARD OIL 5L', 'PINK TOKRI ', 6, 12, 'FORTUNE MUSTARD OIL 5L KACCHI GHANI ', '5L', '725', 1, 1, 'product/thump_1602247723.jpg', 0, '', '2020-10-09 18:18:43', 0, 0),
(585, 'DAVIDOFF FINE AROMA (MASTERPIECE OF COFFEE) 100GM', 'PINKTOKRI', 7, 14, 'DAVIDOFF FINE AROMA (MASTERPIECE OF COFFEE) 100GM', '100GM', '465', 1, 1, 'product/thump_1602247780.jpg', 0, '', '2020-10-09 18:19:40', 0, 0),
(586, 'DELMONTE OLIVE POMANCE OIL 5L', 'PINK TOKRI ', 6, 12, 'DELMONTE OLIVE POMANCE OIL 5L ', '5LTR ', '1950', 1, 1, 'product/thump_1602247889.jpg', 0, '', '2020-10-09 18:21:29', 0, 0),
(587, 'DAVIDOFF RICH AROMA (MASTERPIECE OF COFFEE) 100GM', 'PINKTOKRI', 7, 14, 'DAVIDOFF RICH AROMA (MASTERPIECE OF COFFEE) 100GM', '100GM', '465', 1, 1, 'product/thump_1602247977.jpg', 0, '', '2020-10-09 18:22:57', 0, 0),
(588, 'BRU INSTANT COFFEE 200GM', 'PINKTOKRI', 7, 14, 'BRU INSTANT COFFEE 200GM', '200GM', '323', 1, 1, 'product/thump_1602248093.jpg', 0, '', '2020-10-09 18:24:53', 0, 0),
(589, 'DEL MONTE EXTRA LIGHT  OLIVE OIL 5L', 'PINK TOKRI ', 6, 9, 'DEL MONTE EXTRA LIGHT(IN TASTE )  OLIVE OIL 5L ', '5LTR ', '2800', 1, 1, 'product/thump_1602248109.jpg', 0, '', '2020-10-09 18:25:09', 0, 0),
(590, 'BRU GOLD PURE COFFEE 100GM', 'PINKTOKRI', 7, 14, 'BRU GOLD PURE COFFEE 100GM', '100GM', '261', 1, 1, 'product/thump_1602248202.jpg', 0, '', '2020-10-09 18:26:42', 0, 0),
(591, 'NESCAFE GOLD BLEND 95GM', 'PINKTOKRI', 7, 14, 'NESCAFE GOLD BLEND 95GM', '95GM', '470', 1, 1, 'product/thump_1602248379.jpg', 0, '', '2020-10-09 18:29:39', 0, 0),
(592, 'BRU GOLD COFFEE 50GM ', 'PINKTOKRI', 7, 14, 'BRU GOLD COFFEE 50GM ', '50GM', '138', 1, 1, 'product/thump_1602248583.jpg', 0, '', '2020-10-09 18:33:03', 0, 0),
(593, 'NESCAFE CLASSIC PURE COFFEE 100GM', 'PINKTOKRI', 7, 14, 'NESCAFE CLASSIC PURE COFFEE 100GM', '100GM', '280', 1, 1, 'product/thump_1602248661.jpg', 0, '', '2020-10-09 18:34:21', 0, 0),
(594, 'SUNBEAM BEATEN CAFFE COFFEE PASTE 125GM ', 'PINKTOKRI', 7, 14, 'SUNBEAM BEATEN CAFFE COFFEE PASTE 125GM ', '125GM', '124', 1, 1, 'product/thump_1602248783.jpg', 0, '', '2020-10-09 18:36:23', 0, 0),
(595, 'NESCAFE CLASSIC PURE COFFEE 50GM', 'PINKTOKRI', 7, 14, 'NESCAFE CLASSIC PURE COFFEE 50GM', '50GM', '143', 1, 1, 'product/thump_1602248963.jpg', 0, '', '2020-10-09 18:39:23', 0, 0),
(596, 'NESCAFE CLASSIC PURE COFFEE 25GM', 'PINKTOKRI', 7, 14, 'NESCAFE CLASSIC PURE COFFEE 25GM', '25GM', '73', 1, 1, 'product/thump_1602249023.jpg', 0, '', '2020-10-09 18:40:23', 0, 0),
(597, 'NESCAFE CLASSIC PURE COFFEE 200GM', 'PINKTOKRI', 7, 14, 'NESCAFE CLASSIC PURE COFFEE 200GM', '200GM', '470', 1, 1, 'product/thump_1602249135.jpg', 0, '', '2020-10-09 18:42:15', 0, 0),
(598, 'BRU INSTANT COFFEE 50GM ', 'PINKTOKRI', 7, 14, 'BRU INSTANT COFFEE 50GM ', '50GM', '57', 1, 1, 'product/thump_1602249299.jpg', 0, '', '2020-10-09 18:44:59', 0, 0),
(599, 'NESCAFE SUNRISE RICH AROMA COFFEE 200GM', 'PINKTOKRI', 7, 14, 'NESCAFE SUNRISE RICH AROMA COFFEE 200GM', '200GM', '295', 1, 1, 'product/thump_1602249381.jpg', 0, '', '2020-10-09 18:46:21', 0, 0),
(600, 'NESCAFE SUNRISE RICH AROMA COFFEE 50GM', 'PINKTOKRI', 7, 14, 'NESCAFE SUNRISE RICH AROMA COFFEE 50GM', '50GM', '80', 1, 1, 'product/thump_1602249457.jpg', 0, '', '2020-10-09 18:47:37', 0, 0),
(601, 'NESTLE EVERYDAY MILK POWDER 200GM ', 'PINKTOKRI', 7, 13, 'NESTLE EVERYDAY MILK POWDER 200GM ', '200GM', '103', 1, 1, 'product/thump_1602249770.jpg', 0, '', '2020-10-09 18:52:50', 0, 0),
(602, 'NESTLE EVERYDAY MILK POWDER 400GM ', 'PINKTOKRI', 7, 13, 'NESTLE EVERYDAY MILK POWDER 400GM ', '185', '0', 1, 1, 'product/thump_1602249886.jpg', 0, '', '2020-10-09 18:54:46', 0, 0),
(603, 'NESTEA LEMON FLAVOUR ICED TEA 400GM ', 'PINKTOKRI', 7, 13, 'NESTEA LEMON FLAVOUR ICED TEA 400GM ', '400GM ', '162', 1, 1, 'product/thump_1602250005.jpg', 0, '', '2020-10-09 18:56:45', 0, 0),
(604, 'NESTLE EVERYDAY MILK POWDER 1KG', 'PINKTOKRI', 7, 13, 'NESTLE EVERYDAY MILK POWDER 1KG', '1KG', '475', 1, 1, 'product/thump_1602250164.jpg', 0, '', '2020-10-09 18:59:24', 0, 0),
(605, 'SAFFOLA GOLD BLENDED EDIBLE VEGETABLE OIL 1LTR', 'PINKTOKRI', 6, 10, 'SAFFOLA GOLD BLENDED EDIBLE VEGETABLE OIL 1LTR', '1LTR', '125', 1, 1, 'product/thump_1602250525.jpg', 0, '', '2020-10-09 19:05:25', 0, 0),
(606, 'SAFFOLA ACTIVE  BLENDED EDIBLE VEGETABLE OIL 1LTR', 'PINKTOKRI', 6, 10, 'SAFFOLA ACTIVE  BLENDED EDIBLE VEGETABLE OIL 1LTR', '1LTR', '120', 1, 1, 'product/thump_1602250588.jpg', 0, '', '2020-10-09 19:06:28', 0, 0),
(607, 'NESTLE MILKMAID SKIMMED MILK 400GM', 'PINKTOKRI', 12, 55, 'NESTLE MILKMAID SKIMMED MILK 400GM', '400GM', '125', 1, 1, 'product/thump_1602250719.jpg', 0, '', '2020-10-09 19:08:39', 0, 0),
(608, 'PANSARI KACCHI GHANI MUSTARD OIL 2LTR', 'PINKTOKRI', 6, 9, 'PANSARI KACCHI GHANI MUSTARD OIL 2LTR', '2LTR', '230', 1, 1, 'product/thump_1602250840.jpg', 0, '', '2020-10-09 19:10:40', 0, 0),
(609, 'PANSARI KACCHI GHANI MUSTARD OIL 1LTR', 'PINKTOKRI', 6, 9, 'PANSARI KACCHI GHANI MUSTARD OIL 1LTR', '1LTR', '115', 1, 1, 'product/thump_1602250986.jpg', 0, '', '2020-10-09 19:13:06', 0, 0),
(610, 'SUNDROP SUPERLITE ADVANCED LOW ABSORB OIL 5LTR', 'PINKTOKRI', 6, 11, 'SUNDROP SUPERLITE ADVANCED LOW ABSORB OIL 5LTR', '5LTR', '850', 1, 1, 'product/thump_1602251106.jpg', 0, '', '2020-10-09 19:15:06', 0, 0),
(611, 'SAFFOLA ACTIVE BLENDED VEGETABLE OIL 5LTR', 'PINKTOKRI', 6, 11, 'SAFFOLA ACTIVE BLENDED VEGETABLE OIL 5LTR', '5LTR', '660', 1, 1, 'product/thump_1602251221.jpg', 0, '', '2020-10-09 19:17:01', 0, 0),
(612, 'SAFFOLA GOLD BLENDED VEGETABLE OIL 5LTR', 'PINKTOKRI', 6, 11, 'SAFFOLA GOLD BLENDED VEGETABLE OIL 5LTR', '5LTR', '810', 1, 1, 'product/thump_1602251321.jpg', 0, '', '2020-10-09 19:18:41', 0, 0),
(613, 'PANSARI KACCHI GHANI MUSTARD OIL 5LTR', 'PINKTOKRI', 6, 9, 'PANSARI KACCHI GHANI MUSTARD OIL 5LTR', '5LTR', '570', 1, 1, 'product/thump_1602251427.jpg', 0, '', '2020-10-09 19:20:27', 0, 0),
(614, 'SUNDROP HEART EDIBLE VEGETABLE OIL 5LTR', 'PINKTOKRI', 6, 11, 'SUNDROP HEART EDIBLE VEGETABLE OIL 5LTR', '5LTR', '850', 1, 1, 'product/thump_1602251611.jpg', 0, '', '2020-10-09 19:23:31', 0, 0),
(615, 'SOFFOLA TOTAL BLENDED VEGETABLE OIL 5LTR ', 'PINKTOKRI', 6, 11, 'SOFFOLA TOTAL BLENDED VEGETABLE OIL 5LTR ', '5LTR', '980', 1, 1, 'product/thump_1602251752.jpg', 0, '', '2020-10-09 19:25:52', 0, 0),
(616, 'PANSARI REFINED SOYABEAN OIL 5LTR', 'PINKTOKRI', 6, 11, 'PANSARI REFINED SOYABEAN OIL 5LTR', '5LTR ', '550', 1, 1, 'product/thump_1602251849.jpg', 0, '', '2020-10-09 19:27:29', 0, 0),
(617, 'TOPS CORN FLAKES CRUNCHY & MALTED 500GM ', 'PINKTOKRI', 8, 24, 'TOPS CORN FLAKES CRUNCHY & MALTED 500GM \r\n', '500GM', '110', 1, 1, 'product/thump_1602316578.jpg', 0, '', '2020-10-10 13:26:18', 0, 0),
(618, 'TOPS TOMATO KETCHUP 950GM ', 'PINKTOKRI ', 8, 26, 'TOPS TOMATO KETCHUP 950GM ', '950GM', '90', 1, 1, 'product/thump_1602316796.jpg', 0, '', '2020-10-10 13:29:56', 0, 0),
(619, 'VEEBA TRULY TOMATO KETCHUP 900GM ', 'PINKTOKRI', 8, 26, 'VEEBA TRULY TOMATO KETCHUP 900GM ', '900GM', '116', 1, 1, 'product/thump_1602316874.jpg', 0, '', '2020-10-10 13:31:14', 0, 0),
(620, 'VEEBA HOT SWEET TOMATO CHILLI SAUCE 100GM', 'PINKTOKRI', 8, 26, 'VEEBA HOT SWEET TOMATO CHILLI SAUCE 100GM', '100GM', '22', 1, 1, 'product/thump_1602316946.jpg', 0, '', '2020-10-10 13:32:26', 0, 0),
(621, 'MAGGI RICH TOMATO KETCHUP PICHKOO 90GM', 'PINKTOKRI', 8, 26, 'MAGGI RICH TOMATO KETCHUP PICHKOO 90GM', '90GM', '15', 1, 1, 'product/thump_1602317073.jpg', 0, '', '2020-10-10 13:34:33', 0, 0),
(622, 'KELLOGG\'S CHOCOS FILLS CENTRE-FILLED PILLOWS 35GM', 'PINKTOKRI', 8, 26, 'KELLOGG\'S CHOCOS FILLS CENTRE-FILLED PILLOWS 35GM', '35GM', '18', 1, 1, 'product/thump_1602317240.jpg', 0, '', '2020-10-10 13:37:20', 0, 0),
(623, 'TOPS RICH SNACK SAUCE ENRICHED WITH FRUITS (BUY 1 GET 1 FREE) 970GM ', 'PINKTOKRI', 8, 26, 'TOPS RICH SNACK SAUCE ENRICHED WITH FRUITS (BUY 1 GET 1 FREE) 970GM ', '970GM ', '142', 1, 1, 'product/thump_1602317389.jpg', 0, '', '2020-10-10 13:39:49', 0, 0),
(624, 'TOPS TOMATO KETCHUP 200GM', 'PINKTOKRI', 8, 26, 'TOPS TOMATO KETCHUP 200GM', '200GM', '42', 1, 1, 'product/thump_1602317594.jpg', 0, '', '2020-10-10 13:43:14', 0, 0),
(625, 'TOPS TOMATO KETCHUP 500GM', 'PINKTOKRI', 8, 26, 'TOPS TOMATO KETCHUP 500GM', '500GM', '75', 1, 1, 'product/thump_1602317668.jpg', 0, '', '2020-10-10 13:44:28', 0, 0),
(626, 'TOPS TOMATO KETCHUP 1KG', 'PINKTOKRI', 8, 26, 'TOPS TOMATO KETCHUP 1KG', '1KG', '110', 1, 1, 'product/thump_1602317739.jpg', 0, '', '2020-10-10 13:45:39', 0, 0),
(627, 'VEEBA HOT SWEET TOMATO CHILLI SAUCE 360GM', 'PINKTOKRI', 8, 26, 'VEEBA HOT SWEET TOMATO CHILLI SAUCE 360GM', '360GM', '85', 1, 1, 'product/thump_1602317886.jpg', 0, '', '2020-10-10 13:48:06', 0, 0),
(628, 'VEEBA TRULY TOMATO KETCHUP 360GM', 'PINKTOKRI', 8, 26, 'VEEBA TRULY TOMATO KETCHUP 360GM', '360GM', '80', 1, 1, 'product/thump_1602318006.jpg', 0, '', '2020-10-10 13:50:06', 0, 0),
(629, 'VEEBA TRULY TOMATO KETCHUP 500GM', 'PINKTOKRI', 8, 26, 'VEEBA TRULY TOMATO KETCHUP 500GM', '500GM', '89', 1, 1, 'product/thump_1602318084.jpg', 0, '', '2020-10-10 13:51:24', 0, 0),
(630, 'VEEBA HOT SWEET TOMATO CHILLI SAUCE 500GM', 'PINKTOKRI', 8, 26, 'VEEBA HOT SWEET TOMATO CHILLI SAUCE 500GM', '500GM', '95', 1, 1, 'product/thump_1602318261.jpg', 0, '', '2020-10-10 13:54:21', 0, 0),
(631, 'KISSAN FRESH TOMATO KETCHUP 1KG', 'PINKTOKRI', 8, 26, 'KISSAN FRESH TOMATO KETCHUP 1KG', '1KG', '133', 1, 1, 'product/thump_1602318351.jpg', 0, '', '2020-10-10 13:55:51', 0, 0),
(632, 'VEEBA TRULY TOMATO KETCHUP 1KG', 'PINKTOKRI', 8, 26, 'VEEBA TRULY TOMATO KETCHUP 1KG', '1KG', '134', 1, 1, 'product/thump_1602318429.jpg', 0, '', '2020-10-10 13:57:09', 0, 0),
(633, 'KISSAN FRESH TOMATO KETCHUP 450GM', 'PINKTOKRI', 8, 26, 'KISSAN FRESH TOMATO KETCHUP 450GM', '450GM', '47', 1, 1, 'product/thump_1602318520.jpg', 0, '', '2020-10-10 13:58:40', 0, 0),
(634, 'KELLOGG\'S CORN FLAKES ORIGINAL 70GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CORN FLAKES ORIGINAL 70GM', '70GM', '18', 1, 1, 'product/thump_1602318713.jpg', 0, '', '2020-10-10 14:01:53', 0, 0),
(635, 'TOPS MIXED FRUIT JAM 200GM ', 'PINKTOKRI', 8, 27, 'TOPS MIXED FRUIT JAM 200GM ', '200GM', '54', 1, 1, 'product/thump_1602318827.jpg', 0, '', '2020-10-10 14:03:47', 0, 0),
(636, 'TOPS MIXED FRUIT JAM 475GM', 'PINKTOKRI', 8, 27, 'TOPS MIXED FRUIT JAM 475GM', '475GM', '125', 1, 1, 'product/thump_1602319007.jpg', 0, '', '2020-10-10 14:06:47', 0, 0),
(637, 'KISSAN MIXED FRUIT JAM 200GM', 'PINKTOKRI', 8, 27, 'KISSAN MIXED FRUIT JAM 200GM', '200GM', '62', 1, 1, 'product/thump_1602319103.jpg', 0, '', '2020-10-10 14:08:23', 0, 0),
(638, 'KISSAN MIXED FRUIT JAM 500GM', 'PINKTOKRI', 8, 27, 'KISSAN MIXED FRUIT JAM 500GM', '500GM', '142', 1, 1, 'product/thump_1602319173.jpg', 0, '', '2020-10-10 14:09:33', 0, 0),
(639, 'KELLOGG\'S SPECIAL K ORIGINAL BREAKFAST CEREAL 435GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S SPECIAL K ORIGINAL BREAKFAST CEREAL 435GM', '435GM', '392', 1, 1, 'product/thump_1602319854.jpg', 0, '', '2020-10-10 14:20:54', 0, 0),
(640, 'KELLOGG\'S CHOCOS MAGIC HEARTS BREAKFAST CEREAL 325GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS MAGIC HEARTS BREAKFAST CEREAL 325GM', '325GM', '167', 1, 1, 'product/thump_1602319985.jpg', 0, '', '2020-10-10 14:23:05', 0, 0),
(641, 'KELLOGG\'S CHOCOS WEBS BREAKFAST CEREAL 300GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS WEBS BREAKFAST CEREAL 300GM', '300GM', '153', 1, 1, 'product/thump_1602320060.jpg', 0, '', '2020-10-10 14:24:20', 0, 0),
(642, 'KELLOGG\'S MUESLI WITH 0% ADDED SUGAR BREAKFAST CEREAL 500GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S MUESLI WITH 0% ADDED SUGAR BREAKFAST CEREAL 500GM', '500GM', '284', 1, 1, 'product/thump_1602320205.jpg', 0, '', '2020-10-10 14:26:45', 0, 0),
(643, 'KELLOGG\'S CHOCO FILLS (BUY 2 GET 1 FREE) 540GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCO FILLS (BUY 2 GET 1 FREE) 540GM', '540GM', '178', 1, 1, 'product/thump_1602320365.jpg', 0, '', '2020-10-10 14:29:25', 0, 0),
(644, 'KELLOGG\'S MUESLI WITH 20% NUTS DELIGHT 500GM ', 'PINKTOKRI', 8, 24, 'KELLOGG\'S MUESLI WITH 20% NUTS DELIGHT 500GM ', '500GM', '284', 1, 1, 'product/thump_1602320489.jpg', 0, '', '2020-10-10 14:31:29', 0, 0),
(645, 'KELLOGG\'S GRANOLA ALMONDS & CRANBERRIES 460GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S GRANOLA ALMONDS & CRANBERRIES 460GM', '460GM', '284', 1, 1, 'product/thump_1602320596.jpg', 0, '', '2020-10-10 14:33:16', 0, 0),
(646, 'KELLOGG\'S GRANOLA CHOCOLATE & ALMONDS CEREAL 460GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S GRANOLA CHOCOLATE & ALMONDS CEREAL 460GM', '450GM', '284', 1, 1, 'product/thump_1602320745.jpg', 0, '', '2020-10-10 14:35:45', 0, 0),
(647, 'KELLOGG\'S MUESLI WITH 22% FRUIT MAGIC BREAKFAST CEREAL 500GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S MUESLI WITH 22% FRUIT MAGIC BREAKFAST CEREAL 500GM', '500GM', '284', 1, 1, 'product/thump_1602320851.jpg', 0, '', '2020-10-10 14:37:31', 0, 0),
(648, 'TOPS PREMIUM SOYA SAUCE 740GM ', 'PINKTOKRI', 8, 26, 'TOPS PREMIUM SOYA SAUCE 740GM ', '740GM', '60', 1, 1, 'product/thump_1602320978.jpg', 0, '', '2020-10-10 14:39:38', 0, 0),
(649, 'TOPS PREMIUM GREEN CHILLI SAUCE 650GM ', 'PINKTOKRI', 8, 26, 'TOPS PREMIUM GREEN CHILLI SAUCE 650GM ', '650GM', '60', 1, 1, 'product/thump_1602321047.jpg', 0, '', '2020-10-10 14:40:47', 0, 0),
(650, 'TOPS PREMIUM RED CHILLI SAUCE 650GM ', 'PINKTOKRI', 8, 26, 'TOPS PREMIUM RED CHILLI SAUCE 650GM ', '650GM', '60', 1, 1, 'product/thump_1602321143.jpg', 0, '', '2020-10-10 14:42:23', 0, 0),
(651, 'TOPS GREEN CHILLI SAUCE 200GM', 'PINKTOKRI', 8, 26, 'TOPS GREEN CHILLI SAUCE 200GM', '200GM', '45', 1, 1, 'product/thump_1602321244.jpg', 0, '', '2020-10-10 14:44:04', 0, 0),
(652, 'TOPS RED CHILLI SAUCE 200GM', 'PINKTOKRI', 8, 26, 'TOPS RED CHILLI SAUCE 200GM', '200GM', '45', 1, 1, 'product/thump_1602321314.jpg', 0, '', '2020-10-10 14:45:14', 0, 0),
(653, 'TOPS SOYA SAUCE (40GM FREE)  240GM ', 'PINKTOKRI', 8, 26, 'TOPS SOYA SAUCE (40GM FREE)  240GM ', '240GM', '45', 1, 1, 'product/thump_1602321435.jpg', 0, '', '2020-10-10 14:47:15', 0, 0),
(654, 'CHING\'S SCHEZWAN CHUTNEY 250GM', 'PINKTOKRI', 8, 26, 'CHING\'S SCHEZWAN CHUTNEY 250GM', '250GM', '72', 1, 1, 'product/thump_1602321571.jpg', 0, '', '2020-10-10 14:49:31', 0, 0),
(655, 'CHING\'S DARK SOY SAUCE (SOYABEAN SAUCE) 90GM', 'PINKTOKRI', 8, 26, 'CHING\'S DARK SOY SAUCE (SOYABEAN SAUCE) 90GM', '90GM', '18', 1, 1, 'product/thump_1602321737.jpg', 0, '', '2020-10-10 14:52:17', 0, 0),
(656, 'CHING\'S GREEN CHILLI SAUCE 90GM', 'PINKTOKRI', 8, 26, 'CHING\'S GREEN CHILLI SAUCE 90GM', '90GM', '18', 1, 1, 'product/thump_1602321828.jpg', 0, '', '2020-10-10 14:53:48', 0, 0),
(657, 'CHING\'S RED CHILLI SAUCE 90GM', 'PINTOKRI', 8, 26, 'CHING\'S RED CHILLI SAUCE 90GM', '90GM', '18', 1, 1, 'product/thump_1602321884.jpg', 0, '', '2020-10-10 14:54:44', 0, 0),
(658, 'MAGGI IMLI SAUCE PICHKOO 90GM ', 'PINKTOKRI', 8, 26, 'MAGGI IMLI SAUCE PICHKOO 90GM ', '90GM', '19', 1, 1, 'product/thump_1602322109.jpg', 0, '', '2020-10-10 14:58:29', 0, 0),
(659, 'MAGGI HOT & SWEET TOMATO CHILLI SAUCE 90GM', 'PINKTOKRI', 8, 26, 'MAGGI HOT & SWEET TOMATO CHILLI SAUCE 90GM', '90GM', '19', 1, 1, 'product/thump_1602322210.jpg', 0, '', '2020-10-10 15:00:10', 0, 0),
(660, 'SMITH & JONES TOMATO KETCHUP 90GM ', 'PINKTOKRI', 8, 26, 'SMITH & JONES TOMATO KETCHUP 90GM ', '90GM', '14', 1, 1, 'product/thump_1602322328.jpg', 0, '', '2020-10-10 15:02:08', 0, 0),
(661, 'DEL MONTE GREEN CHILLI SAUCE 190GM ', 'PINKTOKRI', 8, 26, 'DEL MONTE GREEN CHILLI SAUCE 190GM ', '190GM', '47', 1, 1, 'product/thump_1602322402.jpg', 0, '', '2020-10-10 15:03:22', 0, 0),
(662, 'DEL MONTE BREWED VINEGAR 180ML', 'PINKTOKRI', 7, 61, 'DEL MONTE BREWED VINEGAR 180ML', '180ML', '45', 1, 1, 'product/thump_1602322554.jpg', 0, '', '2020-10-10 15:05:54', 0, 0),
(663, 'GOLDEN CROWN WHITE VINEGAR (NON-FRUIT & SYNTHETIC) 220ML', 'PINKTOKRI', 7, 61, 'GOLDEN CROWN WHITE VINEGAR (NON-FRUIT & SYNTHETIC) 220ML', '220ML', '25', 1, 1, 'product/thump_1602322767.jpg', 0, '', '2020-10-10 15:09:27', 0, 0),
(664, 'GOLDEN CROWN DARK SAUCE 330GM', 'PINKTOKRI', 8, 26, 'GOLDEN CROWN DARK SAUCE 330GM', '330GM', '50', 1, 1, 'product/thump_1602323072.jpeg', 0, '', '2020-10-10 15:14:32', 0, 0),
(665, 'LEE KUM KEE PREMIUM DARK SOY SAUCE 500ML', 'PINKTOKRI', 8, 26, 'LEE KUM KEE PREMIUM DARK SOY SAUCE 500ML', '500ML', '220', 1, 1, 'product/thump_1602323211.jpg', 0, '', '2020-10-10 15:16:51', 0, 0),
(666, 'SRIRAJA PANICH CHILLI SAUCE 570GM', 'PINKTOKRI', 8, 26, 'SRIRAJA PANICH CHILLI SAUCE 570GM', '570GM', '160', 1, 1, 'product/thump_1602323376.jpg', 0, '', '2020-10-10 15:19:36', 0, 0),
(667, 'CHING\'S CHILLI VINEGAR SYNTHETIC 170ML', 'PINKTOKRI', 7, 61, 'CHING\'S CHILLI VINEGAR SYNTHETIC 170ML', '170ML', '47', 1, 1, 'product/thump_1602323487.jpg', 0, '', '2020-10-10 15:21:27', 0, 0),
(668, 'TOPS PREMIUM VINEGAR (WHITE) 610ML', 'PINKTOKRI', 7, 61, 'TOPS PREMIUM VINEGAR (WHITE) 610ML', '610ML', '45', 1, 1, 'product/thump_1602323595.jpg', 0, '', '2020-10-10 15:23:15', 0, 0),
(669, 'BACHUN OYSTER SAUCE 350ML', 'PINKTOKRI', 8, 26, 'BACHUN OYSTER SAUCE 350ML', '350ML', '205', 1, 1, 'product/thump_1602323746.jpg', 0, '', '2020-10-10 15:25:46', 0, 0),
(670, 'ABBIE\'S BARBECUE SAUCE ORIGINAL 510GM ', 'PINKTOKRI', 8, 26, 'ABBIE\'S BARBECUE SAUCE ORIGINAL 510GM ', '510GM', '210', 1, 1, 'product/thump_1602323886.jpg', 0, '', '2020-10-10 15:28:06', 0, 0),
(671, 'MC.ILHENNY CO. TOBASCO PEPPER SAUCE 60ML', 'PINKTOKRI', 8, 26, 'MC.ILHENNY CO. TOBASCO PEPPER SAUCE 60ML', '60ML', '160', 1, 1, 'product/thump_1602323984.jpg', 0, '', '2020-10-10 15:29:44', 0, 0),
(672, 'ABBIE\'S VINEGAR APPLE CIDER 473ML', 'PINKTOKRI', 7, 61, 'ABBIE\'S VINEGAR APPLE CIDER 473ML', '473ML', '155', 1, 1, 'product/thump_1602324082.jpg', 0, '', '2020-10-10 15:31:22', 0, 0),
(673, 'BRAGG ORGANIC APPLE CIDER VINEGAR 473ML', 'PINKTOKRI', 7, 61, 'BRAGG ORGANIC APPLE CIDER VINEGAR 473ML', '473ML', '480', 1, 1, 'product/thump_1602324216.jpg', 0, '', '2020-10-10 15:33:36', 0, 0),
(674, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 250GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 250GM', '250GM', '112', 1, 1, 'product/thump_1602324348.jpg', 0, '', '2020-10-10 15:35:48', 0, 0),
(675, 'KELLOGG\'S CORN FLAKES BREAKFAST CEREAL 250GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CORN FLAKES BREAKFAST CEREAL 250GM', '250GM', '86', 1, 1, 'product/thump_1602324477.jpg', 0, '', '2020-10-10 15:37:57', 0, 0),
(676, 'KELLOGG\'S CHOCOS CRUNCHY BITES BREAKFAST CEREAL 375GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS CRUNCHY BITES BREAKFAST CEREAL 375GM', '375GM', '162', 1, 1, 'product/thump_1602324601.jpg', 0, '', '2020-10-10 15:40:01', 0, 0),
(677, 'KELLOGG\'S CORN FLAKES WITH REAL STRAWBEERY PUREE 300GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CORN FLAKES WITH REAL STRAWBEERY PUREE 300GM', '300GM', '126', 1, 1, 'product/thump_1602324743.jpg', 0, '', '2020-10-10 15:42:23', 0, 0),
(678, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 1KG', 'PINKTOKRI', 7, 18, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 1KG', '1KG', '347', 1, 1, 'product/thump_1602325557.jpg', 0, '', '2020-10-10 15:55:57', 0, 0),
(679, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 500GM', 'PINKTOKRI', 7, 18, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 500GM', '500GM', '199', 1, 1, 'product/thump_1602325620.jpg', 0, '', '2020-10-10 15:57:00', 0, 0),
(680, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 75GM', 'PINKTOKRI', 7, 18, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 75GM', '75GM', '29', 1, 1, 'product/thump_1602325687.jpg', 0, '', '2020-10-10 15:58:07', 0, 0),
(681, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 200GM', 'PINKTOKRI', 7, 18, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 200GM', '200GM', '105', 1, 1, 'product/thump_1602325752.jpg', 0, '', '2020-10-10 15:59:12', 0, 0),
(682, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 500GM', 'PINKTOKRI', 7, 18, 'CADBURY BOURNVITA (INNER STRENGTH FORMULA) 500GM', '500GM', '212', 1, 1, 'product/thump_1602325828.jpg', 0, '', '2020-10-10 16:00:28', 0, 0),
(683, 'SAFFOLA OATS (WITH SAFFOLA OATS 400GM FREE) 1400GM', 'PINKTOKRI', 8, 24, 'SAFFOLA OATS (WITH SAFFOLA OATS 400GM FREE) 1400GM', '1400GM', '180', 1, 1, 'product/thump_1602326057.jpg', 0, '', '2020-10-10 16:04:17', 0, 0),
(684, 'KELLOGG\'S OATS 200GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S OATS 200GM', '200GM', '41', 1, 1, 'product/thump_1602326173.jpg', 0, '', '2020-10-10 16:06:13', 0, 0),
(685, 'NUTRIFY HONEY ROASTED OATS 40GM', 'PINKTOKRI', 8, 24, 'NUTRIFY HONEY ROASTED OATS 40GM', '40GM', '20', 1, 1, 'product/thump_1602326349.jpg', 0, '', '2020-10-10 16:09:09', 0, 0),
(686, 'NUTRIFY HONEY ROASTED OATS 250GM', 'PINKTOKRI', 8, 24, 'NUTRIFY HONEY ROASTED OATS 250GM', '250GM', '134', 1, 1, 'product/thump_1602326430.jpg', 0, '', '2020-10-10 16:10:30', 0, 0),
(687, 'KELLOGG\'S REAL ALMOND HONEY CORN FLAKES 300GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S REAL ALMOND HONEY CORN FLAKES 300GM', '300GM', '153', 1, 1, 'product/thump_1602326607.jpg', 0, '', '2020-10-10 16:13:27', 0, 0),
(688, 'KELLOGG\'S CHOCOS CHOTA LADDOO 375GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS CHOTA LADDOO 375GM', '375GM', '171', 1, 1, 'product/thump_1602326736.jpg', 0, '', '2020-10-10 16:15:36', 0, 0),
(689, 'KELLOGG\'S CORN FLAKES WITH REAL HONEY 300GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CORN FLAKES WITH REAL HONEY 300GM', '300GM', '126', 1, 1, 'product/thump_1602326822.jpg', 0, '', '2020-10-10 16:17:02', 0, 0),
(690, 'KELLOGG\'S CHOCOS MOCNS & STARS BREAKFAST CEREAL 375GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS MOCNS & STARS BREAKFAST CEREAL 375GM', '375GM', '158', 1, 1, 'product/thump_1602326935.jpg', 0, '', '2020-10-10 16:18:55', 0, 0),
(691, 'KELLOGG\'S CORN FLAKES BREAKFAST CEREAL 1.10KG', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CORN FLAKES BREAKFAST CEREAL 1.10KG', '1.10KG', '279', 1, 1, 'product/thump_1602327590.jpg', 0, '', '2020-10-10 16:29:50', 0, 0),
(692, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 1.20KG', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 1.20KG', '1.20KG', '423', 1, 1, 'product/thump_1602327707.jpg', 0, '', '2020-10-10 16:31:47', 0, 0),
(693, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 375GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 375GM', '375GM', '149', 1, 1, 'product/thump_1602327837.jpg', 0, '', '2020-10-10 16:33:57', 0, 0),
(694, 'KELLOGG\'S CORN FLAKES BREAKFAST CEREAL 290GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CORN FLAKES BREAKFAST CEREAL 290GM', '290GM', '90', 1, 1, 'product/thump_1602327964.jpg', 0, '', '2020-10-10 16:36:04', 0, 0),
(695, 'KELLOGG\'S ALL BRAIN WHEAT FLAKES 425GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S ALL BRAIN WHEAT FLAKES 425GM', '425GM', '185', 1, 1, 'product/thump_1602328053.jpg', 0, '', '2020-10-10 16:37:33', 0, 0),
(696, 'GOLDEN CROWN DOUBLE ACTING BAKING POWDER 100GM', 'PINKTOKRI', 1, 6, 'GOLDEN CROWN DOUBLE ACTING BAKING POWDER 100GM', '100GM', '28', 1, 1, 'product/thump_1602328180.jpg', 0, '', '2020-10-10 16:39:40', 0, 0),
(697, 'PRINGLES POTATO CRISPS (PERI PERI FLAVOUR) 107GM', 'PINKTOKRI', 8, 32, 'PRINGLES POTATO CRISPS (PERI PERI FLAVOUR) 107GM', '107GM', '90', 1, 1, 'product/thump_1602328346.jpg', 0, '', '2020-10-10 16:42:26', 0, 0),
(698, 'PRINGLES POTATO CRISPS (PIZZA FLAVOUR) 107GM', 'PINKTOKRI', 8, 32, 'PRINGLES POTATO CRISPS (PIZZA FLAVOUR) 107GM', '107GM', '90', 1, 1, 'product/thump_1602328431.jpg', 0, '', '2020-10-10 16:43:51', 0, 0),
(699, 'PRINGLES POTATO CRISPS (ORIGINAL FLAVOUR) 107GM', 'PINKTOKRI', 8, 32, 'PRINGLES POTATO CRISPS (ORIGINAL FLAVOUR) 107GM', '107GM', '90', 1, 1, 'product/thump_1602328496.jpg', 0, '', '2020-10-10 16:44:56', 0, 0),
(700, 'PRINGLES POTATO CRISPS (SOUR CREAM & ONION FLAVOUR) 107GM', 'PINKTOKRI', 8, 32, 'PRINGLES POTATO CRISPS (SOUR CREAM & ONION FLAVOUR) 107GM', '107GM', '90', 1, 1, 'product/thump_1602328561.jpg', 0, '', '2020-10-10 16:46:01', 0, 0),
(701, 'ABBIE\'S BREADCRUMBS PLAIN JAPANESE STYLE 200GM', 'PINKTOKRI', 8, 32, 'ABBIE\'S BREADCRUMBS PLAIN JAPANESE STYLE 200GM', '200GM', '90', 1, 1, 'product/thump_1602328682.jpg', 0, '', '2020-10-10 16:48:02', 0, 0),
(702, 'BROWN & POLSON CUSTARD POWDER (VANILLA) 500GM', 'PINKTOKRI', 8, 29, 'BROWN & POLSON CUSTARD POWDER (VANILLA) 500GM', '500GM ', '115', 1, 1, 'product/thump_1602328810.jpg', 0, '', '2020-10-10 16:50:10', 0, 0),
(703, 'BROWN & POLSON CUSTARD POWDER (VANILLA) 100GM', 'PINKTOKRI', 8, 29, 'BROWN & POLSON CUSTARD POWDER (VANILLA) 100GM', '100GM', '33', 1, 1, 'product/thump_1602328862.jpg', 0, '', '2020-10-10 16:51:02', 0, 0),
(704, 'TOPS CUSTARD POWDER (KESAR PISTA) 130GM', 'PINKTOKRI', 8, 29, 'TOPS CUSTARD POWDER (KESAR PISTA) 130GM', '130GM', '44', 1, 1, 'product/thump_1602328952.jpg', 0, '', '2020-10-10 16:52:32', 0, 0),
(705, 'TOPS CUSTARD POWDER (VANILLA) 130GM', 'PINKTOKRI', 8, 29, 'TOPS CUSTARD POWDER (VANILLA) 130GM', '130GM', '38', 1, 1, 'product/thump_1602329026.jpg', 0, '', '2020-10-10 16:53:46', 0, 0),
(706, 'TOPS CUSTARD POWDER (STRAWBERRY) 130GM', 'PINKTOKRI', 8, 29, 'TOPS CUSTARD POWDER (STRAWBERRY) 130GM', '130GM', '35', 1, 1, 'product/thump_1602329097.jpg', 0, '', '2020-10-10 16:54:57', 0, 0),
(707, 'TOPS CUSTARD POWDER (KESAR ELAICHI) 130GM', 'PINKTOKRI', 8, 29, 'TOPS CUSTARD POWDER (KESAR ELAICHI) 130GM', '130GM', '44', 1, 1, 'product/thump_1602329171.jpg', 0, '', '2020-10-10 16:56:11', 0, 0),
(708, 'TOPS CORNFLOUR 100GM', 'PINKTOKRI', 1, 4, 'TOPS CORNFLOUR 100GM', '100GM', '25', 1, 1, 'product/thump_1602329234.jpg', 0, '', '2020-10-10 16:57:14', 0, 0),
(709, 'GOLDEN CROWN CORNFLOUR 100GM', 'PINKTOKRI', 1, 4, 'GOLDEN CROWN CORNFLOUR 100GM', '100GM', '25', 1, 1, 'product/thump_1602329311.jpg', 0, '', '2020-10-10 16:58:31', 0, 0),
(710, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 700GM ', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CHOCOS BREAKFAST CEREAL 700GM ', '700GM ', '269', 1, 1, 'product/thump_1602333601.jpg', 0, '', '2020-10-10 18:10:01', 0, 0),
(711, 'KELLOGG\'S OATS (PACK OF 2) 900GM', 'PINKTOKRI', 8, 24, 'KELLOGG\'S OATS (PACK OF 2) 900GM', '900GM', '178', 1, 1, 'product/thump_1602333765.jpg', 0, '', '2020-10-10 18:12:45', 0, 0),
(712, 'KELLOGG\'S CORN FLAKES ORIGINAL 475GM ', 'PINKTOKRI', 8, 24, 'KELLOGG\'S CORN FLAKES ORIGINAL 475GM ', '475GM', '162', 1, 1, 'product/thump_1602333887.jpg', 0, '', '2020-10-10 18:14:47', 0, 0),
(713, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"L\" SIZE (76NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"L\" SIZE (76NOS)', '76NOS', '950', 1, 1, 'product/thump_1602334443.', 0, '', '2020-10-10 18:24:03', 0, 0),
(714, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"S\" SIZE (80NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"S\" SIZE (80NOS)', '80NOS', '845', 1, 1, 'product/thump_1602334518.', 0, '', '2020-10-10 18:25:18', 0, 0),
(715, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"L\" SIZE (54NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"L\" SIZE (54NOS)', '54NOS', '690', 1, 1, 'product/thump_1602334587.', 0, '', '2020-10-10 18:26:27', 0, 0),
(716, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"XL\" SIZE (54NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"XL\" SIZE (54NOS)', '54NOS', '750', 1, 1, 'product/thump_1602334697.', 0, '', '2020-10-10 18:28:17', 0, 0),
(717, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"XL\" SIZE (28NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"XL\" SIZE (28NOS)', '28NOS', '385', 1, 1, 'product/thump_1602334748.', 0, '', '2020-10-10 18:29:08', 0, 0),
(718, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"M\" SIZE (54NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"M\" SIZE (54NOS)', '54NOS', '650', 1, 1, 'product/thump_1602334811.', 0, '', '2020-10-10 18:30:11', 0, 0),
(719, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"S\" SIZE (54NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"S\" SIZE (54NOS)', '54NOS', '595', 1, 1, 'product/thump_1602334866.', 0, '', '2020-10-10 18:31:06', 0, 0),
(720, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"S\" SIZE (28NOS)', 'PINKTOKRI', 11, 53, 'HIMALAYA BABY PANTS(CLINICALLY TESTED) \"S\" SIZE (28NOS)', '28NOS', '310', 1, 1, 'product/thump_1602334922.', 0, '', '2020-10-10 18:32:02', 0, 0),
(721, 'PALMOLIVE NATURAL LIQUID HAND WASH (ORCHID &  MILK) 185ML', 'PINKTOKRI', 9, 40, 'PALMOLIVE NATURAL LIQUID HAND WASH (ORCHID &  MILK) 185ML', '185ML', '44', 1, 1, 'product/thump_1602335793.jpg', 0, '', '2020-10-10 18:46:33', 0, 0),
(722, 'PALMOLIVE NATURAL LIQUID HAND WASH (SEA MINERALS) 185ML', 'PINKTOKRI', 9, 40, 'PALMOLIVE NATURAL LIQUID HAND WASH (SEA MINERALS) 185ML', '185ML', '44', 1, 1, 'product/thump_1602335873.jpg', 0, '', '2020-10-10 18:47:53', 0, 0),
(723, 'MARICO\'S TRAVEL PROTECT (SURFACE DISINFECTANT) SPRAY 200ML', 'PINKTOKRI', 9, 40, 'MARICO\'S TRAVEL PROTECT (SURFACE DISINFECTANT) SPRAY 200ML', '200ML', '161', 1, 1, 'product/thump_1602336014.jpg', 0, '', '2020-10-10 18:50:14', 0, 0),
(724, 'MARICO\'S HOUSE PROTECT (SURFACE DISINFECTANT) SPRAY 200ML', 'PINKTOKRI', 9, 40, 'MARICO\'S HOUSE PROTECT (SURFACE DISINFECTANT) SPRAY 200ML', '200ML', '161', 1, 1, 'product/thump_1602336082.jpg', 0, '', '2020-10-10 18:51:22', 0, 0),
(725, 'GODREJ MAGIC HANDWASH (POWER TO LIQUID) 9GM', 'PINKTOKRI', 9, 40, 'GODREJ MAGIC HANDWASH (POWER TO LIQUID) 9GM', '9GM', '36', 1, 1, 'product/thump_1602336228.jpg', 0, '', '2020-10-10 18:53:48', 0, 0),
(726, 'GODREJ MULTIPURPOSE DISINFECTANT LIQUID (AQUA) 500ML', 'PINKTOKRI', 9, 40, 'GODREJ MULTIPURPOSE DISINFECTANT LIQUID (AQUA) 500ML', '500ML', '153', 1, 1, 'product/thump_1602336337.jpg', 0, '', '2020-10-10 18:55:37', 0, 0),
(727, 'GODREJ MULTIPURPOSE DISINFECTANT LIQUID (CITRUS) 500ML', 'PINKTOKRI', 9, 40, 'GODREJ MULTIPURPOSE DISINFECTANT LIQUID (CITRUS) 500ML', '500ML', '153', 1, 1, 'product/thump_1602336396.jpg', 0, '', '2020-10-10 18:56:36', 0, 0),
(728, 'ITC NIM WASH VEGETABLE & FRUIT WASH (NEEM & CITRUS FRUIT EXTRACT) 500ML', 'PINKTOKRI', 9, 40, 'ITC NIM WASH VEGETABLE & FRUIT WASH (NEEM & CITRUS FRUIT EXTRACT) 500ML', '500ML', '90', 1, 1, 'product/thump_1602336530.jpg', 0, '', '2020-10-10 18:58:50', 0, 0),
(729, 'ITC NIM WASH VEGETABLE & FRUIT WASH (NEEM & CITRUS FRUIT EXTRACT) 150ML', 'PINKTOKRI', 9, 40, 'ITC NIM WASH VEGETABLE & FRUIT WASH (NEEM & CITRUS FRUIT EXTRACT) 150ML', '150ML', '27', 1, 1, 'product/thump_1602336641.jpg', 0, '', '2020-10-10 19:00:41', 0, 0),
(730, 'ITC NIM WASH VEGETABLE & FRUIT WASH (NEEM & CITRUS FRUIT EXTRACT) 450ML', 'PINKTOKRI', 9, 40, 'ITC NIM WASH VEGETABLE & FRUIT WASH (NEEM & CITRUS FRUIT EXTRACT) 450ML', '450ML', '117', 1, 1, 'product/thump_1602336700.jpg', 0, '', '2020-10-10 19:01:40', 0, 0),
(731, 'HIMALAYA PURE HANDS (STRAWBERRY) HAND SANITIZER 100ML', 'PINKTOKRI', 9, 40, 'HIMALAYA PURE HANDS (STRAWBERRY) HAND SANITIZER 100ML', '100ML', '48', 1, 1, 'product/thump_1602336882.jpg', 0, '', '2020-10-10 19:04:42', 0, 0),
(732, 'HIMALAYA PURE HANDS (STRAWBERRY) HAND SANITIZER 200ML', 'PINKTOKRI', 9, 40, 'HIMALAYA PURE HANDS (STRAWBERRY) HAND SANITIZER 200ML', '200ML', '95', 1, 1, 'product/thump_1602336956.jpg', 0, '', '2020-10-10 19:05:56', 0, 0),
(733, 'HIMALAYA PURE HANDS (LITCHI) HAND SANITIZER 200ML', 'PINKTOKRI', 9, 40, 'HIMALAYA PURE HANDS (LITCHI) HAND SANITIZER 200ML', '200ML', '95', 1, 1, 'product/thump_1602337062.jpg', 0, '', '2020-10-10 19:07:42', 0, 0),
(734, 'HIMALAYA PURE HANDS (LEMON) HAND SANITIZER 100ML', 'PINKTOKRI', 9, 40, 'HIMALAYA PURE HANDS (LEMON) HAND SANITIZER 100ML', '100ML', '45', 1, 1, 'product/thump_1602337165.jpg', 0, '', '2020-10-10 19:09:25', 0, 0),
(735, 'LIFEBUOY HAND SANITIZER (WITHOUT WATER) 500ML', 'PINKTOKRI', 9, 40, 'LIFEBUOY HAND SANITIZER (WITHOUT WATER) 500ML', '500ML', '225', 1, 1, 'product/thump_1602337299.jpg', 0, '', '2020-10-10 19:11:39', 0, 0),
(736, 'MARICO VEGGIE CLEAN (FOR FRUITS & VEGETABLES) 200ML', 'PINKTOKRI', 9, 40, 'MARICO VEGGIE CLEAN (FOR FRUITS & VEGETABLES) 200ML', '200ML', '49', 1, 1, 'product/thump_1602337444.jpg', 0, '', '2020-10-10 19:14:04', 0, 0),
(737, 'GODREJ INSTANT HAND SANITIZER 200ML', 'PINKTOKRI', 9, 40, 'GODREJ INSTANT HAND SANITIZER 200ML', '200ML', '90', 1, 1, 'product/thump_1602337527.jpg', 0, '', '2020-10-10 19:15:27', 0, 0),
(738, 'GODREJ INSTANT HAND SANITIZER 100ML', 'PINKTOKRI', 9, 40, 'GODREJ INSTANT HAND SANITIZER 100ML', '100ML', '45', 1, 1, 'product/thump_1602337585.jpg', 0, '', '2020-10-10 19:16:25', 0, 0),
(739, 'COLIN GLASS & HOUSEHOLD CLEANER 250ML', 'PINKTOKRI', 9, 40, 'COLIN GLASS & HOUSEHOLD CLEANER 250ML', '250ML', '52', 1, 1, 'product/thump_1602337692.jpg', 0, '', '2020-10-10 19:18:12', 0, 0),
(740, 'PALMOLIVE ANTI BACTERIAL HAND SANITIZER 100ML', 'PINKTOKRI', 9, 40, 'PALMOLIVE ANTI BACTERIAL HAND SANITIZER 100ML', '100ML', '45', 1, 1, 'product/thump_1602337777.jpg', 0, '', '2020-10-10 19:19:37', 0, 0),
(741, 'HIMALAYA PUREHANDS HAND SANITIZER (ORANGE) 100ML', 'PINKTOKRI', 9, 40, 'HIMALAYA PUREHANDS HAND SANITIZER (ORANGE) 100ML', '100ML', '48', 1, 1, 'product/thump_1602337905.jpg', 0, '', '2020-10-10 19:21:45', 0, 0),
(742, 'SAVLON CLOTHES DISINFECTANT & REFRESHING SPRAY 230ML', 'PINKTOKRI', 9, 40, 'SAVLON CLOTHES DISINFECTANT & REFRESHING SPRAY 230ML', '230ML', '158', 1, 1, 'product/thump_1602338039.jpg', 0, '', '2020-10-10 19:23:59', 0, 0),
(743, 'SAVLON SPRAY & WIPE (FOR MULTI-PURPOSE USE) 500ML', 'PINKTOKRI', 9, 40, 'SAVLON SPRAY & WIPE (FOR MULTI-PURPOSE USE) 500ML', '500ML', '143', 1, 1, 'product/thump_1602338663.jpg', 0, '', '2020-10-10 19:34:23', 0, 0),
(744, 'SAVLON MOISTURE SHIELD GERM PROTECTION HANDWASH 500ML', 'PINKTOKRI', 9, 40, 'SAVLON MOISTURE SHIELD GERM PROTECTION HANDWASH 500ML', '500ML', '90', 1, 1, 'product/thump_1602338756.jpg', 0, '', '2020-10-10 19:35:56', 0, 0),
(745, 'SAVLON HAND RUB LIQUID (ETHANOL & ISOPROPYL ALCOHOL) 200ML', 'PINTOKRI', 9, 40, 'SAVLON HAND RUB LIQUID (ETHANOL & ISOPROPYL ALCOHOL) 200ML', '200ML', '90', 1, 1, 'product/thump_1602338877.jpg', 0, '', '2020-10-10 19:37:57', 0, 0),
(746, 'SAVLON HEXA ADVANCED BODY WASH 100ML', 'PINKTOKRI', 9, 40, 'SAVLON HEXA ADVANCED BODY WASH 100ML', '100ML', '54', 1, 1, 'product/thump_1602338982.jpg', 0, '', '2020-10-10 19:39:42', 0, 0),
(747, 'SAVLON SURFACE DISINFECTANT SPRAY 170GM', 'PINKTOKRI', 9, 40, 'SAVLON SURFACE DISINFECTANT SPRAY 170GM ', '170GM', '143', 1, 1, 'product/thump_1602339160.jpg', 0, '', '2020-10-10 19:42:40', 0, 0),
(748, 'SAVLON HAND RUB LIQUID (ETHANOL & ISOPROPYL ALCOHOL) 500ML', 'PINKTOKRI', 9, 40, 'SAVLON HAND RUB LIQUID (ETHANOL & ISOPROPYL ALCOHOL) 500ML', '500ML', '216', 1, 1, 'product/thump_1602339237.jpg', 0, '', '2020-10-10 19:43:57', 0, 0);
INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `ptax`, `prel`, `date`, `discount`, `popular`) VALUES
(749, 'SAVLON GERM PROTECTION WIPES 10NOS.', 'PINKTOKRI', 9, 40, 'SAVLON GERM PROTECTION WIPES 10NOS.', '10NOS', '41', 1, 1, 'product/thump_1602339318.jpg', 0, '', '2020-10-10 19:45:18', 0, 0),
(750, 'GODREJ FRUIT & VEGGIE WASH 250ML', 'PINKTOKRI', 9, 40, 'GODREJ FRUIT & VEGGIE WASH 250ML', '250ML', '113', 1, 1, 'product/thump_1602339430.jpg', 0, '', '2020-10-10 19:47:10', 0, 0),
(751, 'SAVLON MULTIPURPOSE DISINFECTANT+CLEANER 500ML', 'PINKTOKRI', 9, 40, 'SAVLON MULTIPURPOSE DISINFECTANT+CLEANER 500ML', '500ML', '174', 1, 1, 'product/thump_1602339521.jpg', 0, '', '2020-10-10 19:48:41', 0, 0),
(752, 'SAVLON MULTIPURPOSE DISINFECTANT+CLEANER 1LTR', 'PINKTOKRI', 9, 40, 'SAVLON MULTIPURPOSE DISINFECTANT+CLEANER 1LTR', '1LTR', '342', 1, 1, 'product/thump_1602339598.jpg', 0, '', '2020-10-10 19:49:58', 0, 0),
(753, 'SAVLON ANTISEPTIC DISINFECTANT LIQUID 500ML', 'PINKTOKRI', 9, 40, 'SAVLON ANTISEPTIC DISINFECTANT LIQUID 500ML', '500ML', '140', 1, 1, 'product/thump_1602339694.jpg', 0, '', '2020-10-10 19:51:34', 0, 0),
(754, 'SAVLON ANTISEPTIC DISINFECTANT LIQUID 100ML', 'PINKTOKRI', 9, 40, 'SAVLON ANTISEPTIC DISINFECTANT LIQUID 100ML', '100ML', '40', 1, 1, 'product/thump_1602339770.jpg', 0, '', '2020-10-10 19:52:50', 0, 0),
(755, 'SAVLON ANTISEPTIC DISINFECTANT LIQUID 1LTR', 'PINKTOKRI', 9, 40, 'SAVLON ANTISEPTIC DISINFECTANT LIQUID 1LTR', '1LTR', '262', 1, 1, 'product/thump_1602339830.jpg', 0, '', '2020-10-10 19:53:50', 0, 0),
(756, 'SAVLON HEXAPRO ANTISEPTIC SOLUTION 100ML', 'PINKTOKRI', 9, 40, 'SAVLON HEXAPRO ANTISEPTIC SOLUTION 100ML', '100ML', '45', 1, 1, 'product/thump_1602339961.jpg', 0, '', '2020-10-10 19:56:01', 0, 0),
(757, 'GODREJ INSTANT HAND SANITIZER (AQUA) 50ML', 'PINKTOKRI', 9, 40, 'GODREJ INSTANT HAND SANITIZER (AQUA) 50ML', '50ML', '23', 1, 1, 'product/thump_1602340079.jpg', 0, '', '2020-10-10 19:57:59', 0, 0),
(758, 'SAVLON MOISTURE SHIELD HANDWASH LIQUID 750ML', 'PINKTOKRI', 9, 40, 'SAVLON MOISTURE SHIELD HANDWASH LIQUID 750ML', '750ML', '90', 1, 1, 'product/thump_1602340387.jpg', 0, '', '2020-10-10 20:03:07', 0, 0),
(759, 'SAVLON DEEP CLEAN HANDWASH LIQUID 725ML', 'PINKTOKRI', 9, 40, 'SAVLON DEEP CLEAN HANDWASH LIQUID 725ML', '725ML', '90', 1, 1, 'product/thump_1602340472.jpg', 0, '', '2020-10-10 20:04:32', 0, 0),
(760, 'SAVLON HERBAL SENSITIVE HANDWASH LIQUID 750ML', 'PINKTOKRI', 9, 40, 'SAVLON HERBAL SENSITIVE HANDWASH LIQUID 750ML', '750ML', '90', 1, 1, 'product/thump_1602340550.jpg', 0, '', '2020-10-10 20:05:50', 0, 0),
(761, 'GODREJ MASTERCHEF\'S HANDWASH 750ML', 'PINKTOKRI', 9, 40, 'GODREJ MASTERCHEF\'S HANDWASH 750ML', '750ML', '104', 1, 1, 'product/thump_1602340653.jpg', 0, '', '2020-10-10 20:07:33', 0, 0),
(762, 'GODREJ MASTERBLASTER HANDWASH 750ML', 'PINKTOKRI', 9, 40, 'GODREJ MASTERBLASTER HANDWASH 750ML', '750ML', '104', 1, 1, 'product/thump_1602340727.jpg', 0, '', '2020-10-10 20:08:47', 0, 0),
(763, 'LIFEBUOY GERM PROTECTION HANDWASH NATURE (BUY 1 GET 1 FREE) 1.5LTR', 'PINKTOKRI', 9, 40, 'LIFEBUOY GERM PROTECTION HANDWASH NATURE (BUY 1 GET 1 FREE) 1.5LTR', '1.5LTR', '170', 1, 1, 'product/thump_1602340881.jpg', 0, '', '2020-10-10 20:11:21', 0, 0),
(764, 'MEDIMIX HANDWASH (NEEM+TULSI+ALOE VERA) 750ML', 'PINKTOKRI', 9, 40, 'MEDIMIX HANDWASH (NEEM+TULSI+ALOE VERA) 750ML', '750ML', '105', 1, 1, 'product/thump_1602340994.jpg', 0, '', '2020-10-10 20:13:14', 0, 0),
(765, 'MEDIMIX HANDWASH (NEEM+TURMERIC+ALOE VERA) 750ML', 'PINKTOKRI', 9, 40, 'MEDIMIX HANDWASH (NEEM+TURMERIC+ALOE VERA) 750ML', '750ML', '105', 1, 1, 'product/thump_1602341069.jpg', 0, '', '2020-10-10 20:14:29', 0, 0),
(766, 'FIAMA HAND WASH (PEPPERMINT & GREEN APPLE) 350ML', 'PINKTOKRI', 9, 40, 'FIAMA HAND WASH (PEPPERMINT & GREEN APPLE) 350ML', '350ML', '63', 1, 1, 'product/thump_1602341155.jpg', 0, '', '2020-10-10 20:15:55', 0, 0),
(767, 'FIAMA HAND WASH (GRAPEFRUIT & BERGAMOT) 350ML', 'PINKTOKRI', 9, 40, 'FIAMA HAND WASH (GRAPEFRUIT & BERGAMOT) 350ML', '350ML', '63', 1, 1, 'product/thump_1602341234.jpg', 0, '', '2020-10-10 20:17:14', 0, 0),
(768, 'FIAMA HAND WASH (GRAPEFRUIT & BERGAMOT) 400ML', 'PINKTOKRI', 9, 40, 'FIAMA HAND WASH (GRAPEFRUIT & BERGAMOT) 400ML', '400ML', '135', 1, 1, 'product/thump_1602341296.jpg', 0, '', '2020-10-10 20:18:16', 0, 0),
(769, 'PALMOLIVE HAND WASH INVIGORATING MACADAMIA OIL WITH PEONY 500ML', 'PINKTOKRI', 9, 40, 'PALMOLIVE HAND WASH INVIGORATING MACADAMIA OIL WITH PEONY 500ML', '500ML', '179', 1, 1, 'product/thump_1602341419.jpg', 0, '', '2020-10-10 20:20:19', 0, 0),
(770, 'PALMOLIVE HAND WASH REJUVENATING FIG OIL WITH ORCHID 500ML', 'PINKTOKRI', 9, 40, 'PALMOLIVE HAND WASH REJUVENATING FIG OIL WITH ORCHID 500ML', '500ML', '179', 1, 1, 'product/thump_1602341508.jpg', 0, '', '2020-10-10 20:21:48', 0, 0),
(771, 'PALMOLIVE LIQUID HAND WASH SEA MINERALS 250ML', 'PINKTOKRI', 9, 40, 'PALMOLIVE LIQUID HAND WASH SEA MINERALS 250ML', '250ML', '90', 1, 1, 'product/thump_1602341587.jpg', 0, '', '2020-10-10 20:23:07', 0, 0),
(772, 'PALMOLIVE FOAMING HAND WASH HYDRATING (RASPBERRY) 250ML', 'PINKTOKRI', 9, 40, 'PALMOLIVE FOAMING HAND WASH HYDRATING (RASPBERRY) 250ML', '250ML', '126', 1, 1, 'product/thump_1602341680.jpg', 0, '', '2020-10-10 20:24:40', 0, 0),
(773, 'HIMALAYA PURE HANDS HAND WASH (TULSI & LEMON) 185ML', 'PINKTOKRI', 9, 40, 'HIMALAYA PURE HANDS HAND WASH (TULSI & LEMON) 185ML', '185ML', '45', 1, 1, 'product/thump_1602341792.jpg', 0, '', '2020-10-10 20:26:32', 0, 0),
(774, 'LIFEBUOY HANDWASH TOTAL 10 (BUY 3 SAVE 40) 555ML', 'PINKTOKRI', 9, 40, 'LIFEBUOY HANDWASH TOTAL 10 (BUY 3 SAVE 40) 555ML', '555ML', '102', 1, 1, 'product/thump_1602341980.jpg', 0, '', '2020-10-10 20:29:40', 0, 0),
(775, 'LIFEBUOY HANDWASH TOTAL 10 (BUY 1 GET 1 FREE) 1.5LTR', 'PINKTOKRI', 9, 40, 'LIFEBUOY HANDWASH TOTAL 10 (BUY 1 GET 1 FREE) 1.5LTR', '1.5LTR', '170', 1, 1, 'product/thump_1602342087.jpg', 0, '', '2020-10-10 20:31:27', 0, 0),
(776, 'LIFEBUOY HANDWASH NATURE (BUY 1 GET 1 FREE) 1.5LTR', 'PINKTOKRI', 9, 40, 'LIFEBUOY HANDWASH NATURE (BUY 1 GET 1 FREE) 1.5LTR', '1.5LTR', '170', 1, 1, 'product/thump_1602342193.jpg', 0, '', '2020-10-10 20:33:13', 0, 0),
(777, 'PT ARHAR DAL 1KG', 'PINKTOKRI', 1, 1, 'PT ARHAR DAL 1KG', '1KG', '120', 1, 1, 'product/thump_1602409398.jpeg', 0, '', '2020-10-11 15:13:18', 0, 0),
(778, 'WINTEX NEXXT TOILET ROLE (PACK OF FOUR )', 'PINK TOKRI ', 10, 46, '0', '4 ROLL ', '160', 1, 1, 'product/thump_1602409414.jpg', 0, '', '2020-10-11 15:13:34', 0, 0),
(779, 'PT ARHAR DAL 500GM', 'PINKTOKRI', 1, 1, 'PT ARHAR DAL 500GM', '500GM', '60', 1, 1, 'product/thump_1602409610.jpeg', 0, '', '2020-10-11 15:16:50', 0, 0),
(780, 'PT BASMATI RICE 1KG', 'PINKTOKRI', 1, 5, 'PT BASMATI RICE 1KG', '1KG', '80', 1, 1, 'product/thump_1602409650.jpeg', 0, '', '2020-10-11 15:17:30', 0, 0),
(781, 'PT BHUNA CHANA 250GM ', 'PINKTOKRI', 1, 1, 'PT BHUNA CHANA 250GM ', '250GM', '40', 1, 1, 'product/thump_1602409693.jpeg', 0, '', '2020-10-11 15:18:13', 0, 0),
(782, 'HINDALCO FRESHWRAPP 72MTRS', 'PINK TOKRI ', 10, 49, 'HINDALCO FRESHWRAPP 72MTRS ', '72MTRS', '290', 1, 1, 'product/thump_1602409717.jpg', 0, '', '2020-10-11 15:18:37', 0, 0),
(783, 'PT BHUNA CHANA PLAIN 100GM', 'PINKTOKRI', 8, 32, 'PT BHUNA CHANA PLAIN 100GM', '100GM', '15', 1, 1, 'product/thump_1602409749.jpeg', 0, '', '2020-10-11 15:19:09', 0, 0),
(784, 'PT BHUNA CHANA PLAIN 250GM', 'PINKTOKRI', 8, 32, 'PT BHUNA CHANA PLAIN 250GM', '250GM', '35', 1, 1, 'product/thump_1602409782.jpeg', 0, '', '2020-10-11 15:19:42', 0, 0),
(785, 'PT CHANA DAL 1KG ', 'PINKTOKRI', 1, 1, 'PT CHANA DAL 1KG ', '1KG', '80', 1, 1, 'product/thump_1602409824.jpeg', 0, '', '2020-10-11 15:20:24', 0, 0),
(786, 'PT CHANA DAL 500GM ', 'PINKTOKRI', 1, 1, 'PT CHANA DAL 500GM ', '500GM', '40', 1, 1, 'product/thump_1602409860.jpeg', 0, '', '2020-10-11 15:21:00', 0, 0),
(787, 'PT DHANIA POWDER 250GM', 'PINKTOKRI', 1, 6, 'PT DHANIA POWDER 250GM', '250GM', '40', 1, 1, 'product/thump_1602409920.jpeg', 0, '', '2020-10-11 15:22:00', 0, 0),
(788, 'PT HALDI POWDER 250GM', 'PINKTOKRI', 1, 6, 'PT HALDI POWDER 250GM', '250GM', '40', 1, 1, 'product/thump_1602409954.jpeg', 0, '', '2020-10-11 15:22:34', 0, 0),
(789, 'PT KABULI CHANA 1KG', 'PINKTOKRI', 1, 1, 'PT KABULI CHANA 1KG', '1KG', '90', 1, 1, 'product/thump_1602409985.jpeg', 0, '', '2020-10-11 15:23:05', 0, 0),
(790, 'PT KABULI CHANA 500GM', 'PINKTOKRI', 1, 1, 'PT KABULI CHANA 500GM', '500GM', '45', 1, 1, 'product/thump_1602410022.jpeg', 0, '', '2020-10-11 15:23:42', 0, 0),
(791, 'PT KABULI CHANA MAXICO 1KG', 'PINKTOKRI', 1, 1, 'PT KABULI CHANA MAXICO 1KG', '1KG', '104', 1, 1, 'product/thump_1602410089.jpeg', 0, '', '2020-10-11 15:24:49', 0, 0),
(792, 'PT KABULI CHANA MAXICO 500GM', 'PINKTOKRI', 1, 1, 'PT KABULI CHANA MAXICO 500GM', '500GM', '52', 1, 1, 'product/thump_1602410119.jpeg', 0, '', '2020-10-11 15:25:19', 0, 0),
(793, 'PT KALA CHANA 1KG', 'PINKTOKRI', 1, 1, 'PT KALA CHANA 1KG', '1KG', '98', 1, 1, 'product/thump_1602410152.jpeg', 0, '', '2020-10-11 15:25:52', 0, 0),
(794, 'WO  WRAP WRAPPING PAPER ', 'PINK TOKRI ', 10, 49, 'WO  WRAP WRAPPING PAPER  ', '20MTRS', '120', 1, 1, 'product/thump_1602410175.jpeg', 0, '', '2020-10-11 15:26:15', 0, 0),
(795, 'PT KALA CHANA 500GM', 'PINKTOKRI', 1, 1, 'PT KALA CHANA 500GM', '500GM', '40', 1, 1, 'product/thump_1602410183.jpeg', 0, '', '2020-10-11 15:26:23', 0, 0),
(796, 'PT MALKA MASOOR (LAL) 1KG', 'PINKTOKRI', 1, 1, 'PT MALKA MASOOR (LAL) 1KG', '1KG', '84', 1, 1, 'product/thump_1602410216.jpeg', 0, '', '2020-10-11 15:26:56', 0, 0),
(797, 'PT MALKA MASOOR (LAL) 500GM', 'PINKTOKRI', 1, 1, 'PT MALKA MASOOR (LAL) 500GM', '500GM', '42', 1, 1, 'product/thump_1602410249.jpeg', 0, '', '2020-10-11 15:27:29', 0, 0),
(798, 'PT MOONG BADI (MASALA) 250GM', 'PINKTOKRI', 1, 1, 'PT MOONG BADI (MASALA) 250GM', '250GM', '60', 1, 1, 'product/thump_1602410296.jpeg', 0, '', '2020-10-11 15:28:16', 0, 0),
(799, 'PT MOONG BADI (PLAIN) 250GM', 'PINKTOKRI', 1, 1, 'PT MOONG BADI (PLAIN) 250GM', '250GM', '55', 1, 1, 'product/thump_1602410545.jpeg', 0, '', '2020-10-11 15:32:25', 0, 0),
(800, 'COOK 2 WRAP ', 'PINK TOKRI ', 10, 49, 'COOK 2 WRAP   20MTRS ', '20MTRS', '120', 1, 1, 'product/thump_1602410550.jpeg', 0, '', '2020-10-11 15:32:30', 0, 0),
(801, 'PT MOONG DAL 1KG', 'PINKTOKRI', 1, 1, 'PT MOONG DAL 1KG', '1KG', '120', 1, 1, 'product/thump_1602410682.jpeg', 0, '', '2020-10-11 15:34:42', 0, 0),
(802, 'HINDALCO FRESHWRAPP  1KG ', 'PINK TOKRI ', 10, 49, 'HINDALCO FRESHWRAPP  1KG ALUMINIUM FOIL WRAP  ', '1KG', '360', 1, 1, 'product/thump_1602410764.jpg', 0, '', '2020-10-11 15:36:04', 0, 0),
(803, 'PT MOONG DAL CHILKA 1KG', 'PINKTOKRI', 1, 1, 'PT MOONG DAL CHILKA 1KG', '1KG', '110', 1, 1, 'product/thump_1602410764.jpeg', 0, '', '2020-10-11 15:36:04', 0, 0),
(804, 'PT MOONG DAL CHILKA 500GM', 'PINKTOKRI', 1, 1, 'PT MOONG DAL CHILKA 500GM', '500GM', '55', 1, 1, 'product/thump_1602410800.jpeg', 0, '', '2020-10-11 15:36:40', 0, 0),
(805, 'PT MOONG DAL DHULI 500GM ', 'PINKTOKRI', 1, 1, 'PT MOONG DAL DHULI 500GM ', '500GM', '60', 1, 1, 'product/thump_1602410849.jpeg', 0, '', '2020-10-11 15:37:29', 0, 0),
(806, 'PT MOTH 1KG', 'PINKTOKRI', 1, 1, 'PT MOTH 1KG', '1KG', '110', 1, 1, 'product/thump_1602410888.jpeg', 0, '', '2020-10-11 15:38:08', 0, 0),
(807, 'PT MOTH 500GM', 'PINKTOKRI', 1, 1, 'PT MOTH 500GM', '500GM', '55', 1, 1, 'product/thump_1602410920.jpeg', 0, '', '2020-10-11 15:38:40', 0, 0),
(808, 'PT RAJMA BLACK 1KG(104)', 'PINKTOKRI', 1, 1, 'PT RAJMA BLACK 1KG', '1KG', '104', 1, 1, 'product/thump_1602410950.jpeg', 0, '', '2020-10-11 15:39:10', 0, 0),
(809, 'PT RAJMA BLACK 500GM', 'PINKTOKRI', 1, 1, 'PT RAJMA BLACK 500GM', '500GM', '52', 1, 1, 'product/thump_1602411052.jpeg', 0, '', '2020-10-11 15:40:52', 0, 0),
(810, 'PT RAJMA SHARMILI 1KG', 'PINKTOKRI', 1, 1, 'PT RAJMA SHARMILI 1KG', '1KG', '124', 1, 1, 'product/thump_1602411086.jpeg', 0, '', '2020-10-11 15:41:26', 0, 0),
(811, 'PT RAJMA SHARMILI 500GM', 'PINKTOKRI', 1, 1, 'PT RAJMA SHARMILI 500GM', '500GM', '62', 1, 1, 'product/thump_1602411129.jpeg', 0, '', '2020-10-11 15:42:09', 0, 0),
(812, 'PT SABUT MASOOR (BLACK) 1KG', 'PINKTOKRI', 1, 1, 'PT SABUT MASOOR (BLACK) 1KG', '1KG', '88', 1, 1, 'product/thump_1602411212.jpeg', 0, '', '2020-10-11 15:43:32', 0, 0),
(813, 'PT SABUT MASOOR (BLACK) 500GM', 'PINKTOKRI', 1, 1, 'PT SABUT MASOOR (BLACK) 500GM', '500GM', '44', 1, 1, 'product/thump_1602411272.jpeg', 0, '', '2020-10-11 15:44:32', 0, 0),
(814, 'PT SOYA BADI (BIG) 250GM', 'PINKTOKRI', 1, 1, 'PT SOYA BADI (BIG) 250GM', '250GM', '40', 1, 1, 'product/thump_1602411401.jpeg', 0, '', '2020-10-11 15:46:41', 0, 0),
(815, 'PT SOYA BADI SMALL 250GM', 'PINKTOKRI', 1, 8, 'PT SOYA BADI SMALL 250GM', '250GM', '40', 1, 1, 'product/thump_1602411488.jpeg', 0, '', '2020-10-11 15:48:08', 0, 0),
(816, 'PT UDAD BADI (TEJ MASALA) 250GM', 'PINKTOKRI', 1, 1, 'PT UDAD BADI (TEJ MASALA) 250GM', '250GM', '90', 1, 1, 'product/thump_1602411540.jpeg', 0, '', '2020-10-11 15:49:00', 0, 0),
(817, 'PT WHITE PEAS 1KG', 'PINKTOKRI', 1, 1, 'PT WHITE PEAS 1KG', '1KG', '110', 1, 1, 'product/thump_1602411572.jpeg', 0, '', '2020-10-11 15:49:32', 0, 0),
(818, 'PT WHITE PEAS 500GM', 'PINKTOKRI', 1, 1, 'PT WHITE PEAS 500GM', '500GM', '55', 1, 1, 'product/thump_1602411668.jpeg', 0, '', '2020-10-11 15:51:08', 0, 0),
(819, 'WINTEX ELEGANT 100 TISSUES  ', 'PINK TOKRI ', 10, 46, 'WINTEX ELEGANT 100 TISSUES  ', '100PCS ', '38', 1, 1, 'product/thump_1602411846.jpeg', 0, '', '2020-10-11 15:54:06', 0, 0),
(820, 'WINTEX NEXXT 2PLY TISSUES ', 'PINK TOKRI ', 10, 46, 'WINTEX NEXXT 2PLY TISSUES  ', '50PCS ', '50', 1, 1, 'product/thump_1602412022.jpg', 0, '', '2020-10-11 15:57:02', 0, 0),
(821, 'WINTEX CLASS ', 'PINK TOKRI ', 10, 46, 'WINTEX CLASS  1 PLY SERVIETTES ', '80GMS', '35', 1, 1, 'product/thump_1602412289.jpeg', 0, '', '2020-10-11 16:01:29', 0, 0),
(822, 'WINTEX ULTIMA ', 'PINK TOKRI ', 10, 46, 'WINTEX ULTIMA  2PLY SERVIETTES ', '50PCS ', '38', 1, 1, 'product/thump_1602412461.jpg', 0, '', '2020-10-11 16:04:21', 0, 0),
(823, 'WINTEX SELECCT TOILET PAPER ', 'PINK TOKRI ', 10, 46, 'WINTEX SELECCT TOILET PAPER  ', '150PCS ', '32', 1, 1, 'product/thump_1602412576.jpg', 0, '', '2020-10-11 16:06:16', 0, 0),
(824, 'WINTEX PRIME TOILET TISSUES ', 'PINK TOKRI ', 10, 46, 'WINTEX PRIME TOILET TISSUES  AS GOOD AS BEST IN WORLD ', '120MTRS ', '48', 1, 1, 'product/thump_1602412773.jpg', 0, '', '2020-10-11 16:09:33', 0, 0),
(825, 'WINTEX FAB TOILET ROLL ', 'PINK TOKRI .', 10, 46, 'WINTEX FAB TOILET ROLL ', '12PCS ', '250', 1, 1, 'product/thump_1602412974.jpg', 0, '', '2020-10-11 16:12:54', 0, 0),
(826, 'PT AJWAIN 100GM', 'PINKTOKRI', 1, 6, 'PT AJWAIN 100GM', '100GM', '30', 1, 1, 'product/thump_1602413094.jpeg', 0, '', '2020-10-11 16:14:54', 0, 0),
(827, 'PT BADI ELAICHI 50GM ', 'PINKTOKRI', 1, 6, 'PT BADI ELAICHI 50GM ', '50GM', '45', 1, 1, 'product/thump_1602413271.jpeg', 0, '', '2020-10-11 16:17:51', 0, 0),
(828, 'PT CHOTI ELAICHI 50GM', 'PINKTOKRI', 1, 6, 'PT CHOTI ELAICHI 50GM', '50GM', '135', 1, 1, 'product/thump_1602413326.jpeg', 0, '', '2020-10-11 16:18:46', 0, 0),
(829, 'PT DALCHINI 50GM', 'PINKTOKRI', 1, 6, 'PT DALCHINI 50GM', '50GM', '20', 1, 1, 'product/thump_1602413365.jpeg', 0, '', '2020-10-11 16:19:25', 0, 0),
(830, 'PT DEGI MIRCH 100GM', 'PINKTOKRI', 1, 6, 'PT DEGI MIRCH 100GM', '100GM', '40', 1, 1, 'product/thump_1602413400.jpeg', 0, '', '2020-10-11 16:20:00', 0, 0),
(831, 'WINTEX ULTRA KITCHEN ROLL PRINTED ', 'PINK TOKRI ', 10, 46, 'WINTEX ULTRA KITCHEN ROLL PRINTED ', '250GMS ', '75', 1, 1, 'product/thump_1602413426.jpg', 0, '', '2020-10-11 16:20:26', 0, 0),
(832, 'PT LAL MIRCH (SABUT) 50GM ', 'PINKTOKRI', 1, 6, 'PT LAL MIRCH (SABUT) 50GM ', '50GM', '15', 1, 1, 'product/thump_1602413428.jpeg', 0, '', '2020-10-11 16:20:28', 0, 0),
(833, 'PT MIRCH KUTTI 250GM', 'PINKTOKRI', 1, 6, 'PT MIRCH KUTTI 250GM', '250GM', '65', 1, 1, 'product/thump_1602413461.jpeg', 0, '', '2020-10-11 16:21:01', 0, 0),
(834, 'PT MIRCH POWDER 250GM', 'PINKTOKRI', 1, 6, 'PT MIRCH POWDER 250GM', '250GM', '60', 1, 1, 'product/thump_1602413501.jpeg', 0, '', '2020-10-11 16:21:41', 0, 0),
(835, 'WINTEX CLASS TOILET TISSUE EMBOSSED ', 'PINK TOKRI ', 10, 46, 'WINTEX CLASS TOILET TISSUE EMBOSSED PACK OF 10', '10PCS', '180', 1, 1, 'product/thump_1602413563.jpg', 0, '', '2020-10-11 16:22:43', 0, 0),
(836, 'PT SOUNF MOTI 100GM', 'PINKTOKRI', 1, 6, 'PT SOUNF MOTI 100GM', '100GM', '25', 1, 1, 'product/thump_1602413591.jpeg', 0, '', '2020-10-11 16:23:11', 0, 0),
(837, 'PT SOUNTH 100GM', 'PINKTOKRI', 1, 6, 'PT SOUNTH 100GM', '100GM', '45', 1, 1, 'product/thump_1602413641.jpeg', 0, '', '2020-10-11 16:24:01', 0, 0),
(838, 'HIMALAYA PURIFING NEEM FACIAL WIPES ', 'PINK TOKRI ', 9, 34, 'HIMALAYA PURIFING NEEM FACIAL WIPES ', '25PCS ', '95', 1, 1, 'product/thump_1602413755.jpg', 0, '', '2020-10-11 16:25:55', 0, 0),
(839, 'AGROPURE KHICHRI MIX PULSES 500GM', 'PINKTOKRI', 1, 1, 'AGROPURE KHICHRI MIX PULSES 500GM', '500GM', '45', 1, 1, 'product/thump_1602414269.jpg', 0, '', '2020-10-11 16:34:29', 0, 0),
(840, 'WINTEX ULTIMA TOILET ROLL ', 'PINK TOKRI ', 10, 46, 'WINTEX ULTIMA TOILET ROLL PACK OF 6 SUPER SAVER PACK ', '6PCS', '150', 1, 1, 'product/thump_1602414280.jpg', 0, '', '2020-10-11 16:34:40', 0, 0),
(841, 'AGROPURE MOOTH SABUT 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE MOOTH SABUT 500GM ', '500GM', '60', 1, 1, 'product/thump_1602414452.jpg', 0, '', '2020-10-11 16:37:32', 0, 0),
(842, 'WINTEX ELEGANT TOILET ROLL PACK OF 2', 'PINK TOKRI ', 10, 46, 'WINTEX ELEGANT TOILET ROLL PACK OF 2', '2PCS', '150', 1, 1, 'product/thump_1602414464.jpg', 0, '', '2020-10-11 16:37:44', 0, 0),
(843, 'AGROPURE URAD SABUT 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE URAD SABUT 500GM ', '500GM', '65', 1, 1, 'product/thump_1602414517.jpg', 0, '', '2020-10-11 16:38:37', 0, 0),
(844, 'AGROPURE MASOOR SABUT 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE MASOOR SABUT 500GM ', '500GM', '42', 1, 1, 'product/thump_1602414651.jpg', 0, '', '2020-10-11 16:40:51', 0, 0),
(845, 'AGROPURE MASOOR DAL 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE MASOOR DAL 500GM ', '500GM', '49', 1, 1, 'product/thump_1602414750.jpg', 0, '', '2020-10-11 16:42:30', 0, 0),
(846, 'AGROPURE RAJMA SHARMILI 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE RAJMA SHARMILI 500GM ', '500GM', '65', 1, 1, 'product/thump_1602414810.jpg', 0, '', '2020-10-11 16:43:30', 0, 0),
(847, 'WINTEX ELEGANT KITCHEN ROLL ', 'PINK TOKRI ', 10, 46, 'WINTEX ELEGANT KITCHEN ROLL PACK OF 2', '2PCS', '110', 1, 1, 'product/thump_1602414811.jpeg', 0, '', '2020-10-11 16:43:31', 0, 0),
(848, 'AGROPURE MOONG CHILKA 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE MOONG CHILKA 500GM ', '500GM', '58', 1, 1, 'product/thump_1602414871.jpg', 0, '', '2020-10-11 16:44:31', 0, 0),
(849, 'WINTEX NEXXT KITCHEN ROLL ', 'PINK TOKRI ', 10, 46, 'WINTEX NEXXT KITCHEN ROLL  PACK OF 2 VALUE PACK', '2PCS', '135', 1, 1, 'product/thump_1602414908.jpg', 0, '', '2020-10-11 16:45:08', 0, 0),
(850, 'AGROPURE MOONG SABUT 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE MOONG SABUT 500GM ', '500GM', '56', 1, 1, 'product/thump_1602414927.jpg', 0, '', '2020-10-11 16:45:27', 0, 0),
(851, 'AGROPURE CHANNA DAL 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE CHANNA DAL 500GM ', '500GM', '44', 1, 1, 'product/thump_1602414985.jpg', 0, '', '2020-10-11 16:46:25', 0, 0),
(852, 'AGROPURE MIX DAL 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE MIX DAL 500GM ', '500GM', '55', 1, 1, 'product/thump_1602415065.jpg', 0, '', '2020-10-11 16:47:45', 0, 0),
(853, 'WINTEX ULTIMA FACIAL TISSUE PACK OF 5', 'PINK TOKRI ', 10, 46, 'WINTEX ULTIMA FACIAL TISSUE PACK OF 5', '5PCS ', '170', 1, 1, 'product/thump_1602415091.jpg', 0, '', '2020-10-11 16:48:11', 0, 0),
(854, 'AGROPURE DAL MAKHANI 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE DAL MAKHANI 500GM ', '500GM', '65', 1, 1, 'product/thump_1602415131.jpg', 0, '', '2020-10-11 16:48:51', 0, 0),
(855, 'AGROPURE MASOOR MALKA 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE MASOOR MALKA 500GM ', '500GM', '44', 1, 1, 'product/thump_1602415227.jpg', 0, '', '2020-10-11 16:50:27', 0, 0),
(856, 'AGROPURE URAD DHULI 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE URAD DHULI 500GM ', '500GM', '70', 1, 1, 'product/thump_1602415295.jpg', 0, '', '2020-10-11 16:51:35', 0, 0),
(857, 'WINTEX ULTIMA PACK OF 3 TISSUES', 'PINK TOKRI ', 10, 46, 'WINTEX ULTIMA FACIAL TISSUE PACK OF 3Q', '3PCS', '170', 1, 1, 'product/thump_1602415349.jpg', 0, '', '2020-10-11 16:52:29', 0, 0),
(858, 'AGROPURE URAD CHILKA 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE URAD CHILKA 500GM ', '500GM', '65', 1, 1, 'product/thump_1602415389.jpg', 0, '', '2020-10-11 16:53:09', 0, 0),
(859, 'AGROPURE RAJMA BLACK 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE RAJMA BLACK 500GM ', '500GM', '56', 1, 1, 'product/thump_1602415454.jpg', 0, '', '2020-10-11 16:54:14', 0, 0),
(860, 'WINTEX PRIME FACIAL TISSUES ', 'PINK TOKRI ', 10, 46, 'WINTEX PRIME FACIAL TISSUES ', '200PCS ', '55', 1, 1, 'product/thump_1602415498.jpg', 0, '', '2020-10-11 16:54:58', 0, 0),
(861, 'AGROPURE KABULI CHANA 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE KABULI CHANA 500GM ', '500GM', '48', 1, 1, 'product/thump_1602415511.jpg', 0, '', '2020-10-11 16:55:11', 0, 0),
(862, 'AGROPURE KABULI MEXICO 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE KABULI MEXICO 500GM ', '500GM', '55', 1, 1, 'product/thump_1602415656.jpg', 0, '', '2020-10-11 16:57:36', 0, 0),
(863, 'AGROPURE CHANA SABUT 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE CHANA SABUT 500GM ', '500GM', '55', 1, 1, 'product/thump_1602415831.jpg', 0, '', '2020-10-11 17:00:31', 0, 0),
(864, 'AGROPURE LOBIA WHITE 500GM ', 'PINKTOKRI', 1, 1, 'AGROPURE LOBIA WHITE 500GM ', '500GM', '52', 1, 1, 'product/thump_1602415944.jpg', 0, '', '2020-10-11 17:02:24', 0, 0),
(865, 'PT GARAM MASALA (PISA) 100GM', 'PINKTOKRI', 1, 6, 'PT GARAM MASALA (PISA) 100GM', '100GM', '80', 1, 1, 'product/thump_1602416177.jpeg', 0, '', '2020-10-11 17:06:17', 0, 0),
(866, 'ONKAR MANJEET\'S SAINDA NAMAK', 'PINK TOKRI ', 1, 7, 'ONKAR MANJEET\'S SAINDA NAMAK VRAT KA SHUDH ', '200G', '10', 1, 1, 'product/thump_1602418083.jpg', 0, '', '2020-10-11 17:38:03', 0, 0),
(867, 'SACCHAMOTI SABUD DANA ', 'PINK TOKRI ', 1, 7, 'SACCHAMOTI SABUD DANA ', '200GMS', '25', 1, 1, 'product/thump_1602418323.jpg', 0, '', '2020-10-11 17:42:03', 0, 0),
(868, 'NAMH SHIVAY JYOT BATTI ', 'PINK TOKRI ', 10, 48, 'NAMH SHIVAY JYOT BATTI ', '0', '5', 1, 1, 'product/thump_1602418721.jpg', 0, '', '2020-10-11 17:48:41', 0, 0),
(869, 'RADHA JYOT BATTI ', 'PINK TOKRI ', 10, 48, 'RADHA JYOT BATTI ', '0', '5', 1, 1, 'product/thump_1602418814.jpg', 0, '', '2020-10-11 17:50:14', 0, 0),
(870, 'PT KALI MIRCH 50GM', 'PINKTOKRI', 1, 6, 'PT KALI MIRCH 50GM', '50GM', '25', 1, 1, 'product/thump_1602419127.jpeg', 0, '', '2020-10-11 17:55:27', 0, 0),
(871, 'PT LAVANG 50GM', 'PINKTOKRI', 1, 6, 'PT LAVANG 50GM', '50GM', '30', 1, 1, 'product/thump_1602419211.jpeg', 0, '', '2020-10-11 17:56:51', 0, 0),
(872, 'PT KALI MIRCH 100GM', 'PINKTOKRI', 1, 6, 'PT KALI MIRCH 100GM', '100GM', '45', 1, 1, 'product/thump_1602419254.jpeg', 0, '', '2020-10-11 17:57:34', 0, 0),
(873, 'HANUMAN SINDUR ', 'PINK TOKRI ', 10, 48, 'HANUMAN SINDUR  WE SELL 3 FOR 15 ', '1PCS ', '10', 1, 1, 'product/thump_1602419638.jpeg', 0, '', '2020-10-11 18:03:58', 0, 0),
(874, 'MEDIMIX NATURAL GLYCERINE BATHING BAR 625GM', 'PINKTOKRI', 9, 33, 'MEDIMIX NATURAL GLYCERINE BATHING BAR 625GM', '625GM', '185', 1, 1, 'product/thump_1602423894.jpg', 0, '', '2020-10-11 19:14:54', 0, 0),
(875, 'MEDIMIX TURMERIC & ARGAN OIL BATHING BAR 625GM', 'PINKTOKRI', 9, 33, 'MEDIMIX TURMERIC & ARGAN OIL BATHING BAR 625GM', '625GM', '205', 1, 1, 'product/thump_1602423984.jpg', 0, '', '2020-10-11 19:16:24', 0, 0),
(876, 'MEDIMIX 18-HERBS SOAP BATHING BAR 625GM', 'PINKTOKRI', 9, 33, 'MEDIMIX 18-HERBS SOAP BATHING BAR 625GM', '625GM', '150', 1, 1, 'product/thump_1602424061.jpg', 0, '', '2020-10-11 19:17:41', 0, 0),
(877, 'MEDIMIX 18-HERBS SOAP BATHING BAR 375GM', 'PINKTOKRI', 9, 33, 'MEDIMIX 18-HERBS SOAP BATHING BAR 375GM', '375GM', '99', 1, 1, 'product/thump_1602424177.jpg', 0, '', '2020-10-11 19:19:37', 0, 0),
(878, 'MEDIMIX NATURAL GLYCERINE BATHING BAR 375GM', 'PINKTOKRI', 9, 33, 'MEDIMIX NATURAL GLYCERINE BATHING BAR 375GM', '375GM', '126', 1, 1, 'product/thump_1602424265.jpg', 0, '', '2020-10-11 19:21:05', 0, 0),
(879, 'MEDIMIX SANDAI BATHING BAR 375GM', 'PINKTOKRI', 9, 33, 'MEDIMIX SANDAI BATHING BAR 375GM', '375GM', '140', 1, 1, 'product/thump_1602424379.jpg', 0, '', '2020-10-11 19:22:59', 0, 0),
(880, 'MEDIMIX SANDAI BATHING BAR 625GM', 'PINKTOKRI', 9, 33, 'MEDIMIX SANDAI BATHING BAR 625GM', '625GM', '205', 1, 1, 'product/thump_1602424430.jpg', 0, '', '2020-10-11 19:23:50', 0, 0),
(881, 'LIFEBUOY SILVER SHIELD FORMULA (TOTAL) BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'LIFEBUOY SILVER SHIELD FORMULA (TOTAL) BATHING SOAP 500GM', '500GM', '76', 1, 1, 'product/thump_1602424583.jpg', 0, '', '2020-10-11 19:26:23', 0, 0),
(882, 'LUX ROSE & VITAMIN BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'LUX ROSE & VITAMIN BATHING SOAP 500GM', '500GM', '90', 1, 1, 'product/thump_1602424741.jpg', 0, '', '2020-10-11 19:29:01', 0, 0),
(883, 'LUX JASMINE & VITAMIN BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'LUX JASMINE & VITAMIN BATHING SOAP 500GM', '500GM', '90', 1, 1, 'product/thump_1602424798.jpg', 0, '', '2020-10-11 19:29:58', 0, 0),
(884, 'DOVE CREAM BEAUTY BATHING BAR 500GM (4+1)', 'PINKTOKRI', 9, 33, 'DOVE CREAM BEAUTY BATHING BAR 500GM (4+1)', '500GM', '246', 1, 1, 'product/thump_1602424989.jpg', 0, '', '2020-10-11 19:33:09', 0, 0),
(885, 'MANGALDEEP SANDAL AFARBATTIS ', 'PINK TOKRI ', 10, 48, 'MANGALDEEP SANDAL AFARBATTIS  FRAGRANCE PLUS ', '40PCS', '48', 1, 1, 'product/thump_1602425061.jpg', 0, '', '2020-10-11 19:34:21', 0, 0),
(886, 'LUX CREAMY PERFECTION (WHITE ROSE & SWISS MOISTURISERS) 125GM', 'PINKTOKRI', 9, 33, 'LUX CREAMY PERFECTION (WHITE ROSE & SWISS MOISTURISERS) 125GM', '125GM', '52', 1, 1, 'product/thump_1602425121.jpg', 0, '', '2020-10-11 19:35:21', 0, 0),
(887, 'WINTEX FACIAL TISSUE (BUY ONE GET ONE )', 'PINK TOKRI ', 10, 46, 'WINTEX FACIAL TISSUE BUY ONE GET ONE FREE', '200PCS EACH', '85', 1, 1, 'product/thump_1602425282.jpg', 0, '', '2020-10-11 19:38:02', 0, 0),
(888, 'PEARS PURE & GENTLE BATHING SOAP 375GM', 'PINKTOKRI', 9, 33, 'PEARS PURE & GENTLE BATHING SOAP 375GM', '375GM', '143', 1, 1, 'product/thump_1602425311.jpg', 0, '', '2020-10-11 19:38:31', 0, 0),
(889, 'VIVEL LOTUS OIL+VITAMIN E BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'VIVEL LOTUS OIL+VITAMIN E BATHING SOAP 500GM', '500GM', '90', 1, 1, 'product/thump_1602425400.jpg', 0, '', '2020-10-11 19:40:00', 0, 0),
(890, 'WINTEX PRIME FACIAL TISSUES ', 'PINK TOKRI ', 10, 46, 'WINTEX PRIME FACIAL TISSUES EXTRA SOFT AND ABSORBENT ', '100PCS', '55', 1, 1, 'product/thump_1602425416.jpg', 0, '', '2020-10-11 19:40:16', 0, 0),
(891, 'FIAMA GEL BAR (PEACH & AVOCADO) 375GM', 'PINKTOKRI', 9, 33, 'FIAMA GEL BAR (PEACH & AVOCADO) 375GM', '375GM', '143', 1, 1, 'product/thump_1602425554.jpg', 0, '', '2020-10-11 19:42:34', 0, 0),
(892, 'SHIP SUPERIOR MATCHBOX PACK OF 10', 'PINK TOKRI ', 10, 48, 'SHIP SUPERIOR MATCHBOXES PACK OF 10', '10PCS', '10', 1, 1, 'product/thump_1602425655.jpg', 0, '', '2020-10-11 19:44:15', 0, 0),
(893, 'FIAMA GEL BAR (LEMONGRASS & JOJOBA) 500GM', 'PINKTOKRI', 9, 33, 'FIAMA GEL BAR (LEMONGRASS & JOJOBA) 500GM', '500GM', '171', 1, 1, 'product/thump_1602425694.jpg', 0, '', '2020-10-11 19:44:54', 0, 0),
(894, 'FIAMA GEL BAR (BLACKCURRANT & BEARBERRY) 500GM', 'PINKTOKRI', 9, 33, 'FIAMA GEL BAR (BLACKCURRANT & BEARBERRY) 500GM', '500GM', '171', 1, 1, 'product/thump_1602425853.jpg', 0, '', '2020-10-11 19:47:33', 0, 0),
(895, 'FIAMA GEL BAR MEN (ENERGISING SPORT) 500GM', 'PINKTOKRI', 9, 33, 'FIAMA GEL BAR MEN (ENERGISING SPORT) 500GM', '500GM', '171', 1, 1, 'product/thump_1602426028.jpg', 0, '', '2020-10-11 19:50:28', 0, 0),
(896, 'FIAMA GEL BAR (PATCHOULI & MACADAMIA) 500GM', 'PINKTOKRI', 9, 33, 'FIAMA GEL BAR (PATCHOULI & MACADAMIA) 500GM', '500GM', '171', 1, 1, 'product/thump_1602426152.jpg', 0, '', '2020-10-11 19:52:32', 0, 0),
(897, 'PARLE MELODY CHOCOLATE TOFFEE', 'PINK TOKRI ', 8, 25, 'PARLE MELODY CHOCOLATE TOFFEE', '391GMS', '95', 1, 1, 'product/thump_1602426158.jpg', 0, '', '2020-10-11 19:52:38', 0, 0),
(898, 'FIAMA GEL BAR CELEBRATION PACK 625GM', 'PINKTOKRI', 9, 33, 'FIAMA GEL BAR CELEBRATION PACK 625GM', '625GM', '246', 1, 1, 'product/thump_1602426273.jpg', 0, '', '2020-10-11 19:54:33', 0, 0),
(899, 'FIAMA GEL+CREME BAR (FRANGIPANI & ALMOND) 375GM', 'PINKTOKRI', 9, 33, 'FIAMA GEL+CREME BAR (FRANGIPANI & ALMOND) 375GM', '375GM', '133', 1, 1, 'product/thump_1602426410.jpg', 0, '', '2020-10-11 19:56:50', 0, 0),
(900, 'MANGALDEEP TREYA AGARBATTI', 'PINK TOKRI ', 10, 48, 'MANGALDEEP TREYA AGARBATTI', '80PCS', '48', 1, 1, 'product/thump_1602426504.jpg', 0, '', '2020-10-11 19:58:24', 0, 0),
(901, 'LIRIL LEMON & TEA TREE OIL BATHING SOAP 450GM', 'PINKTOKRI', 9, 33, 'LIRIL LEMON & TEA TREE OIL BATHING SOAP 450GM', '450GM', '145', 1, 1, 'product/thump_1602426572.jpg', 0, '', '2020-10-11 19:59:32', 0, 0),
(902, 'SAVLON GLYCERINE BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'SAVLON GLYCERINE BATHING SOAP 500GM', '500GM', '137', 1, 1, 'product/thump_1602426670.jpg', 0, '', '2020-10-11 20:01:10', 0, 0),
(903, 'SAVLON HEXA ADVANCED BATHING SOAP 300GM', 'PINKTOKRI', 9, 33, 'SAVLON HEXA ADVANCED BATHING SOAP 300GM', '300GM', '97', 1, 1, 'product/thump_1602426749.jpg', 0, '', '2020-10-11 20:02:29', 0, 0),
(904, 'HAMAM NEEM TULSI & ALOE VERA BATHING SOAP 150GM', 'PINKTOKRI', 9, 33, 'HAMAM NEEM TULSI & ALOE VERA BATHING SOAP 150GM', '150GM', '48', 1, 1, 'product/thump_1602426846.jpg', 0, '', '2020-10-11 20:04:06', 0, 0),
(905, 'MANGALDEEP MOGRA ', 'PINK TOKRI ', 10, 48, 'MANGALDEEP MOGRA  ', '12PCS', '10', 1, 1, 'product/thump_1602427062.jpg', 0, '', '2020-10-11 20:07:42', 0, 0),
(906, 'INDULEKHA BRINGHA OIL (AN AYURVEDIC PROPRIETARY MEDICINE) 50ML ', 'PINKTOKRI', 9, 35, 'INDULEKHA BRINGHA OIL (AN AYURVEDIC PROPRIETARY MEDICINE) 50ML ', '50ML', '222', 1, 1, 'product/thump_1602485418.jpg', 0, '', '2020-10-12 12:20:18', 0, 0),
(907, 'INDULEKHA BRINGHA OIL (AN AYURVEDIC PROPRIETARY MEDICINE) 100ML ', 'PINKTOKRI', 9, 35, 'INDULEKHA BRINGHA OIL (AN AYURVEDIC PROPRIETARY MEDICINE) 100ML ', '100ML', '410', 1, 1, 'product/thump_1602485470.jpg', 0, '', '2020-10-12 12:21:10', 0, 0),
(908, 'INDULEKHA BRINGHA HAIR CLEANSER (AN AYURVEDIC PROPRIETARY MEDICINE FOR HAIRFALL) 200ML ', 'PINKTOKRI', 9, 35, 'INDULEKHA BRINGHA HAIR CLEANSER (AN AYURVEDIC PROPRIETARY MEDICINE FOR HAIRFALL) 200ML ', '200ML', '222', 1, 1, 'product/thump_1602485599.jpg', 0, '', '2020-10-12 12:23:19', 0, 0),
(909, 'INDULEKHA BRINGHA HAIR CLEANSER (AN AYURVEDIC PROPRIETARY MEDICINE FOR HAIRFALL) 100ML ', 'PINKTOKRI', 9, 35, 'INDULEKHA BRINGHA HAIR CLEANSER (AN AYURVEDIC PROPRIETARY MEDICINE FOR HAIRFALL) 100ML ', '100ML', '128', 1, 1, 'product/thump_1602485648.jpg', 0, '', '2020-10-12 12:24:08', 0, 0),
(910, 'CLEAR ANTI-DANDRUFF NOURISHING HAIR OIL 75ML', 'PINKTOKRI', 9, 35, 'CLEAR ANTI-DANDRUFF NOURISHING HAIR OIL 75ML', '75ML', '48', 1, 1, 'product/thump_1602485732.jpg', 0, '', '2020-10-12 12:25:32', 0, 0),
(911, 'CLEAR ANTI-DANDRUFF NOURISHING HAIR OIL 150ML', 'PINKTOKRI', 9, 35, 'CLEAR ANTI-DANDRUFF NOURISHING HAIR OIL 150ML', '150ML', '105', 1, 1, 'product/thump_1602485761.jpg', 0, '', '2020-10-12 12:26:01', 0, 0),
(912, 'PARACHUTE HOT OIL WARMING COCONUT HAIR OIL 190ML', 'PINKTOKRI', 9, 35, 'PARACHUTE HOT OIL WARMING COCONUT HAIR OIL 190ML', '190ML', '105', 1, 1, 'product/thump_1602485891.jpg', 0, '', '2020-10-12 12:28:11', 0, 0),
(913, 'PARACHUTE ALOE VERA ENRICHED COCONUT HAIR OIL 250ML', 'PINKTOKRI', 9, 35, 'PARACHUTE ALOE VERA ENRICHED COCONUT HAIR OIL 250ML', '250ML', '114', 1, 1, 'product/thump_1602486018.jpg', 0, '', '2020-10-12 12:30:18', 0, 0),
(914, 'PARACHUTE ALOE VERA ENRICHED COCONUT HAIR OIL 75ML', 'PINKTOKRI', 9, 35, 'PARACHUTE ALOE VERA ENRICHED COCONUT HAIR OIL 75ML', '75ML', '37', 1, 1, 'product/thump_1602486665.jpg', 0, '', '2020-10-12 12:41:05', 0, 0),
(915, 'PARACHUTE 100% PURE COCONUT OIL 100ML', 'PINKTOKRI', 9, 35, 'PARACHUTE 100% PURE COCONUT OIL 100ML', '100ML', '32', 1, 1, 'product/thump_1602486749.jpg', 0, '', '2020-10-12 12:42:29', 0, 0),
(916, 'DEL MONTE CLASSIC OLIVE OIL 200ML', 'PINKTOKRI', 9, 35, 'DEL MONTE CLASSIC OLIVE OIL 200ML', '200ML', '190', 1, 1, 'product/thump_1602486915.jpg', 0, '', '2020-10-12 12:45:15', 0, 0),
(917, 'VASELINE SKIN PROTECTING JELLY ORIGINAL 20GM', 'PINKTOKRI', 9, 34, 'VASELINE SKIN PROTECTING JELLY ORIGINAL 20GM', '20GM', '40', 1, 1, 'product/thump_1602487020.jpg', 0, '', '2020-10-12 12:47:00', 0, 0),
(918, 'VASELINE SKIN PROTECTING JELLY ORIGINAL 40GM', 'PINKTOKRI', 9, 34, 'VASELINE SKIN PROTECTING JELLY ORIGINAL 40GM', '40GM', '71', 1, 1, 'product/thump_1602487316.jpg', 0, '', '2020-10-12 12:51:56', 0, 0),
(919, 'VASELINE SKIN PROTECTING JELLY ORIGINAL 85GM', 'PINKTOKRI', 9, 34, 'VASELINE SKIN PROTECTING JELLY ORIGINAL 85GM', '85GM', '119', 1, 1, 'product/thump_1602487367.jpg', 0, '', '2020-10-12 12:52:47', 0, 0),
(920, 'CLINIC PLUS HAIR NOURISHING COCONUT OIL (NON-STICKY) 200ML', 'PINKTOKRI', 9, 35, 'CLINIC PLUS HAIR NOURISHING COCONUT OIL (NON-STICKY) 200ML', '200ML', '90', 1, 1, 'product/thump_1602487461.jpg', 0, '', '2020-10-12 12:54:21', 0, 0),
(921, 'PARK AVENUE COOL BLUE FRAGRANT SOAP 125GM', 'PINKTOKRI', 9, 33, 'PARK AVENUE COOL BLUE FRAGRANT SOAP 125GM', '125GM', '45', 1, 1, 'product/thump_1602487594.jpg', 0, '', '2020-10-12 12:56:34', 0, 0),
(922, 'PARK AVENUE GOOD MORNING (TEA TREE OIL+SHEA BUTTER) MEN\'S SOAP 125GM', 'PINKTOKRI', 9, 33, 'PARK AVENUE GOOD MORNING (TEA TREE OIL+SHEA BUTTER) MEN\'S SOAP 125GM', '125GM', '48', 1, 1, 'product/thump_1602487765.jpg', 0, '', '2020-10-12 12:59:25', 0, 0),
(923, 'PARK AVENUE PURE LUXURY (SHEA BUTTER+COCONUT OIL) MEN\'S SOAP 125GM', 'PINKTOKRI', 9, 33, 'PARK AVENUE PURE LUXURY (SHEA BUTTER+COCONUT OIL) MEN\'S SOAP 125GM', '125GM', '48', 1, 1, 'product/thump_1602487858.jpg', 0, '', '2020-10-12 13:00:58', 0, 0),
(924, 'PARK AVENUE GERM PROTECT (ENRICHED WITH ALOE VERA) MEN\'S SOAP 125GM', 'PINKTOKRI', 9, 33, 'PARK AVENUE GERM PROTECT (ENRICHED WITH ALOE VERA) MEN\'S SOAP 125GM', '125GM', '48', 1, 1, 'product/thump_1602488003.jpg', 0, '', '2020-10-12 13:03:23', 0, 0),
(925, 'PARK AVENUE GERM PROTECT (ENRICHED WITH ALOE VERA) MEN\'S SOAP 500GM(3+1)', 'PINKTOKRI', 9, 33, 'PARK AVENUE GERM PROTECT (ENRICHED WITH ALOE VERA) MEN\'S SOAP 500GM(3+1)', '500GM', '145', 1, 1, 'product/thump_1602488103.jpg', 0, '', '2020-10-12 13:05:03', 0, 0),
(926, 'PARK AVENUE PURE LUXURY (SHEA BUTTER+COCONUT OIL) MEN\'S SOAP 500GM(3+1)', 'PINKTOKRI', 9, 33, 'PARK AVENUE PURE LUXURY (SHEA BUTTER+COCONUT OIL) MEN\'S SOAP 500GM(3+1)', '500GM', '145', 1, 1, 'product/thump_1602488206.jpg', 0, '', '2020-10-12 13:06:46', 0, 0),
(927, 'PARK AVENUE GOOD MORNING (TEA TREE OIL+SHEA BUTTER) MEN\'S SOAP 500GM(3+1)', 'PINKTOKRI', 9, 33, 'PARK AVENUE GOOD MORNING (TEA TREE OIL+SHEA BUTTER) MEN\'S SOAP 500GM(3+1)', '500GM', '145', 1, 1, 'product/thump_1602488263.jpg', 0, '', '2020-10-12 13:07:43', 0, 0),
(928, 'GODREJ NO.1 JASMINE MILK CREAM BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'GODREJ NO.1 JASMINE MILK CREAM BATHING SOAP 500GM', '500GM', '68', 1, 1, 'product/thump_1602488376.jpg', 0, '', '2020-10-12 13:09:36', 0, 0),
(929, 'GODREJ NO.1 LIME ALOE VERA BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'GODREJ NO.1 LIME ALOE VERA BATHING SOAP 500GM', '500GM', '68', 1, 1, 'product/thump_1602488444.jpg', 0, '', '2020-10-12 13:10:44', 0, 0),
(930, 'GODREJ NO.1 SANDAL TURMERIC BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'GODREJ NO.1 SANDAL TURMERIC BATHING SOAP 500GM', '500GM', '68', 1, 1, 'product/thump_1602488532.jpg', 0, '', '2020-10-12 13:12:12', 0, 0),
(931, 'GODREJ NO.1 KESAR MILK CREAM BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'GODREJ NO.1 KESAR MILK CREAM BATHING SOAP 500GM', '500GM', '68', 1, 1, 'product/thump_1602488624.jpg', 0, '', '2020-10-12 13:13:44', 0, 0),
(932, 'GODREJ NO.1 LAVENDER MILK CREAM BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'GODREJ NO.1 LAVENDER MILK CREAM BATHING SOAP 500GM', '500GM', '68', 1, 1, 'product/thump_1602488670.jpg', 0, '', '2020-10-12 13:14:30', 0, 0),
(933, 'GODREJ NO.1 ROSEWATER ALMOND BATHING SOAP 500GM', 'PINKTOKRI', 9, 33, 'GODREJ NO.1 ROSEWATER ALMOND BATHING SOAP 500GM', '500GM', '68', 1, 1, 'product/thump_1602488753.jpg', 0, '', '2020-10-12 13:15:53', 0, 0),
(934, 'GODREJ FAIR & GLOW FAIRNESS+PROTEINS BATHING SOAP 400GM', 'PINKTOKRI', 9, 33, 'GODREJ FAIR & GLOW FAIRNESS+PROTEINS BATHING SOAP 400GM', '400GM', '84', 1, 1, 'product/thump_1602488865.jpg', 0, '', '2020-10-12 13:17:45', 0, 0),
(935, 'GODREJ CINTHOL INSTA DEO SOAP 300GM', 'PINKTOKRI', 9, 33, 'GODREJ CINTHOL INSTA DEO SOAP 300GM', '300GM', '94', 1, 1, 'product/thump_1602488955.jpg', 0, '', '2020-10-12 13:19:15', 0, 0),
(936, 'GODREJ CINTHOL COOL MENTHOL+ACTIVE DEO FRAGRANCE SOAP 300GM', 'PINKTOKRI', 9, 33, 'GODREJ CINTHOL COOL MENTHOL+ACTIVE DEO FRAGRANCE SOAP 300GM', '300GM', '94', 1, 1, 'product/thump_1602489039.jpg', 0, '', '2020-10-12 13:20:39', 0, 0),
(937, 'GODREJ CINTHOL HEALTH+99% GERM PROTECTION SOAP 300GM', 'PINKTOKRI', 9, 33, 'GODREJ CINTHOL HEALTH+99% GERM PROTECTION SOAP 300GM', '300GM', '94', 1, 1, 'product/thump_1602489124.jpg', 0, '', '2020-10-12 13:22:04', 0, 0),
(938, 'GODREJ CINTHOL LIME REFRESHING DEO SOAP 300GM', 'PINKTOKRI', 9, 33, 'GODREJ CINTHOL LIME REFRESHING DEO SOAP 300GM', '300GM', '71', 1, 1, 'product/thump_1602489260.jpg', 0, '', '2020-10-12 13:24:20', 0, 0),
(939, 'MEDIKER ANTI LACE HAIR OIL 50ML', 'PINKTOKRI', 9, 35, 'MEDIKER ANTI LACE HAIR OIL 50ML', '50ML', '32', 1, 1, 'product/thump_1602489374.jpg', 0, '', '2020-10-12 13:26:14', 0, 0),
(940, 'HIMALAYA NEEM & TURMERIC SOAP (8N X 75GM)', 'PINKTOKRI', 9, 33, 'HIMALAYA NEEM & TURMERIC SOAP (8N X 75GM)', '600GM', '166', 1, 1, 'product/thump_1602489495.jpg', 0, '', '2020-10-12 13:28:15', 0, 0),
(941, 'HIMALAYA PUREHANDS TULSI SOAP (4 X 125GM)', 'PINKTOKRI', 9, 33, 'HIMALAYA PUREHANDS TULSI SOAP (4 X 125GM)', '500GM', '150', 1, 1, 'product/thump_1602489620.jpg', 0, '', '2020-10-12 13:30:20', 0, 0),
(942, 'HIMALAYA TULSI & TURMERIC SOAP (4 X 125GM)', 'PINKTOKRI', 9, 33, 'HIMALAYA TULSI & TURMERIC SOAP (4 X 125GM)', '500GM', '125', 1, 1, 'product/thump_1602489899.jpg', 0, '', '2020-10-12 13:34:59', 0, 0),
(943, 'HIMALAYA ALMOND & ROSE SOAP (3 X 75GM+75GM FREE)', 'PINKTOKRI', 9, 33, 'HIMALAYA ALMOND & ROSE SOAP (3 X 75GM+75GM FREE)', '300GM', '85', 1, 1, 'product/thump_1602490019.jpg', 0, '', '2020-10-12 13:36:59', 0, 0),
(944, 'HIMALAYA ALMOND & ROSE SOAP (4 X 125GM)', 'PINKTOKRI', 9, 33, 'HIMALAYA ALMOND & ROSE SOAP (4 X 125GM)', '500GM', '149', 1, 1, 'product/thump_1602490083.jpg', 0, '', '2020-10-12 13:38:03', 0, 0),
(945, 'CADBURY CELEBRATION PACK 165.7GM', 'PINKTOKRI', 8, 25, 'CADBURY CELEBRATION PACK 165.7GM', '165.7GM', '143', 1, 1, 'product/thump_1602490538.jpg', 0, '', '2020-10-12 13:45:38', 0, 0),
(946, 'MANGALDEEP PUJA AGARBATTIS PUSHPANJALI 80NOS.', 'PINKTOKRI', 10, 48, 'MANGALDEEP PUJA AGARBATTIS PUSHPANJALI 80NOS.', '80NOS', '48', 1, 1, 'product/thump_1602490662.jpg', 0, '', '2020-10-12 13:47:42', 0, 0),
(947, 'MANGALDEEP PREMIUM AGARBATTIS LAVENDER 80NOS.', 'PINKTOKRI', 10, 48, 'MANGALDEEP PREMIUM AGARBATTIS LAVENDER 80NOS.', '80NOS', '48', 1, 1, 'product/thump_1602490721.jpg', 0, '', '2020-10-12 13:48:41', 0, 0),
(948, 'MANGALDEEP PUJA AGARBATTIS BOUQUET 80NOS.', 'PINKTOKRI', 10, 48, 'MANGALDEEP PUJA AGARBATTIS BOUQUET 80NOS.', '80NOS', '48', 1, 1, 'product/thump_1602490792.jpg', 0, '', '2020-10-12 13:49:52', 0, 0),
(949, 'MANGALDEEP PUJA AGARBATTIS BOUQUET 12NOS. (FREE MATCHBOX)', 'PINKTOKRI', 10, 48, 'MANGALDEEP PUJA AGARBATTIS BOUQUET 12NOS. (FREE MATCHBOX)', '12NOS', '9.5', 1, 1, 'product/thump_1602490855.jpg', 0, '', '2020-10-12 13:50:55', 0, 0),
(950, 'MANGALDEEP MOGRA DHOOP 40NOS.', 'PINKTOKRI', 10, 48, 'MANGALDEEP MOGRA DHOOP 40NOS.', '40NOS', '14', 1, 1, 'product/thump_1602490964.jpg', 0, '', '2020-10-12 13:52:44', 0, 0),
(951, 'QALAM ROCK SALT 200GM', 'PINKTOKRI', 1, 6, 'QALAM ROCK SALT 200GM', '200GM', '11', 1, 1, 'product/thump_1602491486.jpeg', 0, '', '2020-10-12 14:01:26', 0, 0),
(952, 'CADBURY CELEBRATION PACK 120.6GM ', 'PINKTOKRI', 8, 25, 'CADBURY CELEBRATION PACK 120.6GM ', '120.6GM', '95', 1, 1, 'product/thump_1602491569.jpg', 0, '', '2020-10-12 14:02:49', 0, 0),
(953, 'PARLE MANGO BITE TOFFEE PACKET 289GM ', 'PINKTOKRI', 11, 54, 'PARLE MANGO BITE TOFFEE PACKET 289GM ', '289GM', '48', 1, 1, 'product/thump_1602491688.jpg', 0, '', '2020-10-12 14:04:48', 0, 0),
(954, 'LONDONDERRY RICH CARAMELISED MILK CANDY 277GM', 'PINKTOKRI', 11, 54, 'LONDONDERRY RICH CARAMELISED MILK CANDY 277GM', '277GM', '48', 1, 1, 'product/thump_1602491781.jpg', 0, '', '2020-10-12 14:06:21', 0, 0),
(955, 'PARLE ORANGE BITE CANDY PACKET 289GM', 'PINKTOKRI', 11, 54, 'PARLE ORANGE BITE CANDY PACKET 289GM', '289GM', '48', 1, 1, 'product/thump_1602491865.jpg', 0, '', '2020-10-12 14:07:45', 0, 0),
(956, 'CADBURY CHOCLAIRS GOLD CANDY PACKET 330GM', 'PINKTOKRI', 11, 54, 'CADBURY CHOCLAIRS GOLD CANDY PACKET 330GM', '330GM', '110', 1, 1, 'product/thump_1602491949.jpg', 0, '', '2020-10-12 14:09:09', 0, 0),
(957, 'PARLE MELODY CHOCOLATY CANDY PACKET 196GM', 'PINKTOKRI', 11, 54, 'PARLE MELODY CHOCOLATY CANDY PACKET 196GM', '196GM', '48', 1, 1, 'product/thump_1602492036.jpg', 0, '', '2020-10-12 14:10:36', 0, 0),
(958, 'FERRERO ROCHER CHOCLATE 200GM', 'PINKTOKRI', 8, 25, 'FERRERO ROCHER CHOCLATE 200GM', '200GM', '500', 1, 1, 'product/thump_1602492130.jpg', 0, '', '2020-10-12 14:12:10', 0, 0),
(959, 'CADBURY CELEBRATION PACK 64.2GM', 'PINKTOKRI', 8, 25, 'CADBURY CELEBRATION PACK 64.2GM', '64.2GM', '48', 1, 1, 'product/thump_1602492220.jpg', 0, '', '2020-10-12 14:13:40', 0, 0),
(960, 'CADBURY GEMS SURPRISE 17.8GM', 'PINKTOKRI', 8, 25, 'CADBURY GEMS SURPRISE 17.8GM', '17.8GM', '43', 1, 1, 'product/thump_1602492326.jpg', 0, '', '2020-10-12 14:15:26', 0, 0),
(961, 'NESTLE CLASSIC CHOCOLATE 18GM', 'PINKTOKRI', 8, 25, 'NESTLE CLASSIC CHOCOLATE 18GM', '18GM', '9.5', 1, 1, 'product/thump_1602492405.jpg', 0, '', '2020-10-12 14:16:45', 0, 0),
(962, 'NESTLE MILKY BAR MOOSHA WHEAT COCOA CRISPIES 45GM', 'PINKTOKRI', 8, 25, 'NESTLE MILKY BAR MOOSHA WHEAT COCOA CRISPIES 45GM', '45GM', '43', 1, 1, 'product/thump_1602492525.jpg', 0, '', '2020-10-12 14:18:45', 0, 0),
(963, 'NESTLE KITKAT TEMPTING TRUFFLE CHOCOLATE 50GM', 'PINKTOKRI', 8, 25, 'NESTLE KITKAT TEMPTING TRUFFLE CHOCOLATE 50GM', '50GM', '52', 1, 1, 'product/thump_1602492641.', 0, '', '2020-10-12 14:20:41', 0, 0),
(964, 'HIMALAYA PURIFYING NEEM FACIAL WIPES 10NOS.', 'PINKTOKRI', 9, 34, 'HIMALAYA PURIFYING NEEM FACIAL WIPES 10NOS.', '10NOS', '42', 1, 1, 'product/thump_1602492753.jpg', 0, '', '2020-10-12 14:22:33', 0, 0),
(965, 'NESTLE KITKAT DIVINE CHOCO PUDDING CHOCOLATE 50GM', 'PINKTOKRI', 8, 25, 'NESTLE KITKAT DIVINE CHOCO PUDDING CHOCOLATE 50GM', '50GM', '52', 1, 1, 'product/thump_1602492860.', 0, '', '2020-10-12 14:24:20', 0, 0),
(966, 'NESTLE KITKAT HEAVENLY BROWNIE RUBES DARK CHOCOLATE 50GM', 'PINKTOKRI', 8, 25, 'NESTLE KITKAT HEAVENLY BROWNIE RUBES DARK CHOCOLATE 50GM', '50GM', '57', 1, 1, 'product/thump_1602493186.jpeg', 0, '', '2020-10-12 14:29:46', 0, 0),
(967, 'NESTLE KITKAT CHOCOLATE 27.5GM', 'PINKTOKRI', 8, 25, 'NESTLE KITKAT CHOCOLATE 27.5GM', '27.5GM', '19', 1, 1, 'product/thump_1602493492.jpg', 0, '', '2020-10-12 14:34:52', 0, 0),
(968, 'NESTLE KITKAT CHOCOLATE 37.3GM', 'PINKTOKRI', 8, 25, 'NESTLE KITKAT CHOCOLATE 37.3GM', '37.3GM', '24', 1, 1, 'product/thump_1602493560.jpg', 0, '', '2020-10-12 14:36:00', 0, 0),
(969, 'NESTLE KITKAT SHARE & SNAP CHOCOLATE 55GM', 'PINKTOKRI', 8, 25, 'NESTLE KITKAT SHARE & SNAP CHOCOLATE 55GM', '55GM', '38', 1, 1, 'product/thump_1602493626.jpg', 0, '', '2020-10-12 14:37:06', 0, 0),
(970, 'KINDER JOY RICH IN MILK 20GM', 'PINKTOKRI', 8, 25, 'KINDER JOY RICH IN MILK 20GM', '20GM', '38', 1, 1, 'product/thump_1602493752.jpg', 0, '', '2020-10-12 14:39:12', 0, 0),
(971, 'CADBURY GEMS 21.36GM', 'PINKTOKRI', 8, 25, 'CADBURY GEMS 21.36GM', '21.36GM', '9.5', 1, 1, 'product/thump_1602493836.jpg', 0, '', '2020-10-12 14:40:36', 0, 0),
(972, 'CADBURY GEMS 8.9GM', 'PINKTOKRI', 8, 25, 'CADBURY GEMS 8.9GM', '8.9GM', '4.7', 1, 1, 'product/thump_1602493924.jpg', 0, '', '2020-10-12 14:42:04', 0, 0),
(973, 'MANGALDEEP ROSE DHOOP 20NOS', 'PINKTOKRI', 10, 48, 'MANGALDEEP ROSE DHOOP 20NOS', '20NOS', '14', 1, 1, 'product/thump_1602494038.jpg', 0, '', '2020-10-12 14:43:58', 0, 0),
(974, 'MANGALDEEP SANDAL DHOOP 20NOS', 'PINKTOKRI', 10, 48, 'MANGALDEEP SANDAL DHOOP 20NOS', '20NOS', '14', 1, 1, 'product/thump_1602494096.jpg', 0, '', '2020-10-12 14:44:56', 0, 0),
(975, 'NESTLE MUNCH WAFER 25GM', 'PINKTOKRI', 8, 25, 'NESTLE MUNCH WAFER 25GM', '25GM', '9.5', 1, 1, 'product/thump_1602494210.jpg', 0, '', '2020-10-12 14:46:50', 0, 0),
(976, 'CANDYMAN FANTASTIK ROLL 12.9GM', 'PINKTOKRI', 8, 25, 'CANDYMAN FANTASTIK ROLL 12.9GM', '12.9GM', '4.5', 1, 1, 'product/thump_1602494324.jpg', 0, '', '2020-10-12 14:48:44', 0, 0),
(977, 'HOMELITE MATCHBOX 5BOX', 'PINKTOKRI', 10, 48, 'HOMELITE MATCHBOX 5BOX', '5BOX', '9.5', 1, 1, 'product/thump_1602494476.jpg', 0, '', '2020-10-12 14:51:16', 0, 0),
(978, 'NESTLE CLASSIC CHOCOLATE 34GM', 'PINKTOKRI', 8, 25, 'NESTLE CLASSIC CHOCOLATE 34GM', '34GM', '19', 1, 1, 'product/thump_1602494564.jpg', 0, '', '2020-10-12 14:52:44', 0, 0),
(979, 'NESTLE BARONE CHOCOLATE 40GM', 'PINKTOKRI', 8, 25, 'NESTLE BARONE CHOCOLATE 40GM', '40GM', '19', 1, 1, 'product/thump_1602494754.jpg', 0, '', '2020-10-12 14:55:54', 0, 0),
(980, 'NESTLE BARONE CHOCOLATE 24.2GM', 'PINKTOKRI', 8, 25, 'NESTLE BARONE CHOCOLATE 24.2GM', '24.2GM', '9.5', 1, 1, 'product/thump_1602494816.jpg', 0, '', '2020-10-12 14:56:56', 0, 0),
(981, 'SARASWATI KUMKUM ROLI 1PKT', 'PINKTOKRI', 10, 48, 'SARASWATI KUMKUM ROLI 1PKT', '1PKT', '5', 1, 1, 'product/thump_1602495004.jpeg', 0, '', '2020-10-12 15:00:04', 0, 0),
(982, 'POLO 30GM', 'PINKTOKRI', 11, 54, 'POLO 30GM', '30GM', '9.5', 1, 1, 'product/thump_1602495097.jpg', 0, '', '2020-10-12 15:01:37', 0, 0),
(983, 'POLO 15GM', 'PINKTOKRI', 11, 54, 'POLO 15GM', '15GM', '5', 1, 1, 'product/thump_1602495166.jpg', 0, '', '2020-10-12 15:02:46', 0, 0);

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
  `password` text COLLATE utf8mb4_unicode_ci,
  `reject` int(11) NOT NULL DEFAULT '0',
  `accept` int(11) NOT NULL DEFAULT '0',
  `complete` int(11) NOT NULL DEFAULT '0',
  `a_status` int(11) NOT NULL DEFAULT '1'
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
(1, 'cda3dc9c-1ea5-4666-96b8-f7844a8fdc12', 'ZmUxMDUzOTAtOTE5Mi00MzNhLWFkNDktMjk1ZTY0MDA5Mzcz', 'b423ab5d-0df3-486d-8034-e09ca3bbee96', 'Yzg1YjRkM2ItOTEyNy00NDc2LWFiYTQtYzY1YjEwMzQ3N2Vk', '₹', '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pinktokri</strong>&nbsp;Delivery App app as a Free app. This SERVICE is provided by <strong>Pinktokri</strong> at no cost and is intended for use as is.</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at <strong>Pinktokri</strong> Delivery App unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/support/privacy/\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n	<li><a href=\"https://onesignal.com/privacy_policy\" target=\"_blank\">One Signal</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2020-08-16</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at [+919876543210].</p>\r\n', '<p><strong>About Pinktokri&nbsp;Delivery App </strong></p>\r\n\r\n<p>is the firm belives to delivered fresh Veggies, Fruits &amp; Heathy Juices to the consumers. As it has observed that to buy vegetables &amp; Fruits from the Local Vendor is very expensive. So we provide a platform for you to buy Quality products at a best price.Be it the freshest fruits &amp; vegetables, the finest meats, wide array of cheese, irresistible bakery products and more, for us, our customers&rsquo; needs come first and to serve them better and offer the best in terms of quality, benefits, flavour and taste we have grown and nurtured our own brands over the years.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Whether you want to order at the last minute or are looking for fresh, handpicked fruits and vegetables or want free delivery for household items - we are your daily online convenience store.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>App Features for easy Online Grocery Shopping</strong></p>\r\n\r\n<p><br />\r\n- Simplified design with easy navigation<br />\r\n- Appealing and persuasive user interface<br />\r\n- Faster browsing with just a click!<br />\r\n- Instant confirmation of receipt of your order<br />\r\n- Quick search and quicker check-outs<br />\r\n- Anywhere, anytime shopping convenience<br />\r\n- Innovative technology ensuring best-in-class customer experience<br />\r\n- Regular updates and notifications</p>\r\n', '<p><i class=\"icon-pointer\"></i> <span>Plot No. 86, Ground Floor, Near Onkar Nagar underpass, Ashok Park main, Delhi-110035</span></p>\r\n<p><i class=\"icon-call-end\"></i> Call: <a style=\"color: #e40c80;\" href=\"tel:+919654125050\">+91 9654125050</a> | <a style=\"color: #e40c80;\" href=\"tel:+919654725050\">+91 9654725050</a></p>\r\n<p><i class=\"icon-envelope\"></i><a style=\"color: #e40c80;\" href=\"mailto:pinktokri@gmail.com\"> pinktokri@gmail.com</a></p>\r\n', 300, 'Asia/Kolkata', 0, 'website/logo.png', 'website/thump_1599468824.png', 'Pink Tokri', '<p><strong>Terms &amp; Conditions</strong></p>\r\n\r\n<p>By downloading or using the app, these terms will automatically apply to you &ndash; you should make sure therefore that you read them carefully before using the app. You&rsquo;re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You&rsquo;re not allowed to attempt to extract the source code of the app, and you also shouldn&rsquo;t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to Homofy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pinktokri&nbsp;is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you&rsquo;re paying for.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Pinktokri Delivery App app stores and processes personal data that you have provided to us, in order to provide my Service. It&rsquo;s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone&rsquo;s security features and it could mean that the Homofy Delivery App app won&rsquo;t work properly or at all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The app does use third party services that declare their own Terms and Conditions.</p>\r\n\r\n<p>Link to Terms and Conditions of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://policies.google.com/terms\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/crashlytics\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n	<li><a href=\"https://onesignal.com/tos\" target=\"_blank\">One Signal</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You should be aware that there are certain things that cscodetech will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but Mayamart&nbsp;cannot take responsibility for the app not working at full functionality if you don&rsquo;t have access to Wi-Fi, and you don&rsquo;t have any of your data allowance left.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&rsquo;re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you&rsquo;re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you&rsquo;re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Along the same lines, cscodetech cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged &ndash; if it runs out of battery and you can&rsquo;t turn it on to avail the Service, cscodetech cannot accept responsibility.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>With respect to cscodetech&rsquo;s responsibility for your use of the app, when you&rsquo;re using the app, it&rsquo;s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. cscodetech accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At some point, we may wish to update the app. The app is currently available on Android &ndash; the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you&rsquo;ll need to download the updates if you want to keep using the app. Homofy&nbsp;does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n\r\n<p>I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page.</p>\r\n\r\n<p>These terms and conditions are effective as of 2020-08-16</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at [+919876543210].</p>\r\n', 60);

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
  `imei` text,
  `email` text NOT NULL,
  `ccode` text NOT NULL,
  `mobile` text NOT NULL,
  `rdate` datetime NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `pin` text,
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
(127, 'aman saxena', NULL, 'aman@gmail.com', '+91', '8854785693', '2020-10-01 13:04:35', '1234', 1, NULL, 'Jaitpur Kalan'),
(128, 'puneet garg', NULL, 'puneetgarg9278@gmail.com', '+91', '9278242453', '2020-10-07 20:05:08', 'Puneet@9278', 1, NULL, ''),
(129, 'Salman Sarkar', NULL, 'sarkarsalman541@gmail.com', '+91', '9315975233', '2020-10-08 16:50:00', 'sarkar', 1, NULL, ''),
(130, 'pinki', NULL, 'pinkibansal1206@gmail.com', '+91', '9582798743', '2020-10-09 20:34:49', 'r7ch8@03', 1, NULL, '');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `uread`
--
ALTER TABLE `uread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
