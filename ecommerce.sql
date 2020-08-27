-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2019 at 06:35 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `listofcartitem`
--

CREATE TABLE IF NOT EXISTS `listofcartitem` (
`id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rvalue` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listofcartitem`
--

INSERT INTO `listofcartitem` (`id`, `shipping_id`, `product_id`, `product_name`, `product_price`, `quantity`, `rvalue`) VALUES
(8, 30, 25, 'Logitech Keyboard', 300, 5, '832941'),
(9, 30, 42, 'Dell Laptop', 44000, 1, '832941'),
(10, 31, 35, 'Dell Laptop', 28000, 1, '860306'),
(11, 32, 23, 'PS4', 40000, 1, '321979'),
(12, 32, 41, 'Dell Laptop', 31000, 6, '321979'),
(13, 0, 35, 'Dell Laptop', 28000, 99, '541188'),
(14, 0, 34, 'Computer Led Ram', 3700, 21, '541188'),
(15, 0, 133, 'Thrustmaster Hotas Warthog Dual Throttles XG6', 8000, 1, '541188'),
(16, 34, 65, 'Led Keyboard', 3566, 7, '756217'),
(17, 34, 23, 'PS4', 40000, 3, '756217'),
(18, 35, 141, 'E-Blue Gaming Desk EGT002 ', 33000, 5, '341158'),
(19, 35, 149, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 4, '341158'),
(20, 36, 65, 'Led Keyboard', 3566, 5, '324721'),
(21, 36, 101, 'Creative Speaker', 6500, 10, '324721'),
(22, 36, 144, 'E-Blue Gaming Desk EGT002 ', 25400, 2, '324721'),
(23, 37, 66, 'Led Keyboard', 6547, 1, '710158'),
(24, 38, 66, 'Led Keyboard', 6547, 6, '201989'),
(25, 39, 37, 'Dell Laptop', 32000, 99, '210112'),
(26, 40, 37, 'Dell Laptop', 32000, 99, '959635'),
(27, 40, 34, 'Computer Led Ram', 3700, 99, '959635'),
(28, 41, 32, 'Samsung Monitor', 69888, 99, '428963'),
(29, 42, 23, 'PS4', 40000, 99, '289075'),
(30, 42, 32, 'Samsung Monitor', 69888, 99, '289075');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email_address` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `access_label` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email_address`, `admin_password`, `access_label`) VALUES
(0, 'Gazi', 'gazi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_temp`
--

CREATE TABLE IF NOT EXISTS `tbl_cart_temp` (
`cart_id` int(11) NOT NULL,
  `session_id` varchar(26) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` int(5) NOT NULL,
  `publication_status` tinyint(1) NOT NULL,
  `deletion_status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart_temp`
--

INSERT INTO `tbl_cart_temp` (`cart_id`, `session_id`, `product_image`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `publication_status`, `deletion_status`) VALUES
(31, 'aqr7tul1k2cdh07s9don4ng906', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 23, 'PS4', 40000, 12, 0, 0),
(32, 'thuflljrr3ubvm9dkn1v6k1gu3', 'product_images/71C1zQH2G+L._SL1500_.jpg', 99, 'Creative Speaker', 4300, 1, 1, 0),
(34, 'thuflljrr3ubvm9dkn1v6k1gu3', 'product_images/Del.jpg', 44, 'Dell Laptop', 10000, 1, 1, 0),
(35, 'thuflljrr3ubvm9dkn1v6k1gu3', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 23, 'PS4', 40000, 2, 0, 0),
(37, 'thuflljrr3ubvm9dkn1v6k1gu3', 'product_images/r.jpg', 64, 'Led Keyboard', 3333, 1, 0, 0),
(38, 'thuflljrr3ubvm9dkn1v6k1gu3', 'product_images/r.jpg', 64, 'Led Keyboard', 3333, 1, 1, 0),
(39, 'ddb26l46tqcitjfgmiee2trs13', 'product_images/chair6.jpg', 140, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 1, 0, 0),
(40, 'cp9m3oc95vrk72to57srlh67k3', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 23, 'PS4', 40000, 1, 1, 0),
(41, 'fkokv0jgv7jefp4bjiqmscgm05', 'product_images/91nHqZL6TYL._SL1500_.jpg', 107, '24" LED Monitor', 31500, 1, 0, 0),
(42, 'fkokv0jgv7jefp4bjiqmscgm05', 'product_images/v.jpg', 25, 'Logitech Keyboard', 300, 1, 1, 0),
(43, 'jj954mejohtlibjpd88ol73jq6', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 23, 'PS4', 40000, 1, 0, 0),
(47, 'n6g5225q5vi10tuc7rb003o857', 'product_images/Corsair-Vengeance-RGB-LED-RAM.jpg', 34, 'Computer Led Ram', 3700, 5, 0, 0),
(48, 'gh8ak92njs6du7bvj385fgj085', 'product_images/v.jpg', 25, 'Logitech Keyboard', 300, 4, 0, 0),
(50, 'gh8ak92njs6du7bvj385fgj085', 'product_images/4300.jpg', 42, 'Dell Laptop', 44000, 1, 0, 0),
(51, 'jj954mejohtlibjpd88ol73jq6', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 23, 'PS4', 40000, 1, 0, 0),
(52, 'jj954mejohtlibjpd88ol73jq6', 'product_images/Dell-Studio-14z_large.jpg', 41, 'Dell Laptop', 31000, 6, 0, 0),
(53, 'gpe679cegb2sutv1f95j5afck6', 'product_images/5289-1_thumb800.jpg', 35, 'Dell Laptop', 28000, 100, 0, 0),
(54, 'gpe679cegb2sutv1f95j5afck6', 'product_images/Corsair-Vengeance-RGB-LED-RAM.jpg', 34, 'Computer Led Ram', 3700, 21, 0, 0),
(55, 'gpe679cegb2sutv1f95j5afck6', 'product_images/stick5.jpg', 133, 'Thrustmaster Hotas Warthog Dual Throttles XG6', 8000, 1, 0, 0),
(56, 'gpe679cegb2sutv1f95j5afck6', 'product_images/s-l1000.jpg', 65, 'Led Keyboard', 3566, 7, 0, 0),
(57, 'gpe679cegb2sutv1f95j5afck6', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 23, 'PS4', 40000, 3, 0, 0),
(58, 'gpe679cegb2sutv1f95j5afck6', 'product_images/desk1.jpg', 141, 'E-Blue Gaming Desk EGT002 ', 33000, 5, 0, 0),
(59, 'gpe679cegb2sutv1f95j5afck6', 'product_images/chair4.jpg', 149, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 1, 0, 0),
(60, 'gpe679cegb2sutv1f95j5afck6', 'product_images/chair4.jpg', 149, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 3, 0, 0),
(61, '502o53giomg5dakjei2fkal101', 'product_images/s-l1000.jpg', 65, 'Led Keyboard', 3566, 5, 0, 0),
(62, '502o53giomg5dakjei2fkal101', 'product_images/creative-inspire-t3000.716941.jpg', 101, 'Creative Speaker', 6500, 10, 0, 0),
(63, '502o53giomg5dakjei2fkal101', 'product_images/desk4.jpg', 144, 'E-Blue Gaming Desk EGT002 ', 25400, 2, 0, 0),
(64, 't34ucekisscqilgp7bnsf4i0e0', 'product_images/kb-003_original.jpg', 66, 'Led Keyboard', 6547, 1, 0, 0),
(65, '3asvrkf3re2airk14eatih5jg6', 'product_images/v.jpg', 25, 'Logitech Keyboard', 300, 200, 0, 0),
(66, '3asvrkf3re2airk14eatih5jg6', 'product_images/v.jpg', 25, 'Logitech Keyboard', 300, 500, 0, 0),
(67, '3asvrkf3re2airk14eatih5jg6', 'product_images/v.jpg', 25, 'Logitech Keyboard', 300, 500, 0, 0),
(68, '3asvrkf3re2airk14eatih5jg6', 'product_images/Del.jpg', 44, 'Dell Laptop', 10000, 100, 0, 0),
(69, '3asvrkf3re2airk14eatih5jg6', 'product_images/item_XL_10158323_12732480.jpg', 37, 'Dell Laptop', 32000, 500, 0, 0),
(70, '3asvrkf3re2airk14eatih5jg6', 'product_images/Corsair-Vengeance-RGB-LED-RAM.jpg', 34, 'Computer Led Ram', 3700, 200, 0, 0),
(71, 'o755i6jgtqlelve8jnuo2dokg6', 'product_images/0050124_0.jpeg', 32, 'Samsung Monitor', 69888, 200, 0, 0),
(72, 'o755i6jgtqlelve8jnuo2dokg6', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 23, 'PS4', 40000, 300, 0, 0),
(73, 'o755i6jgtqlelve8jnuo2dokg6', 'product_images/0050124_0.jpeg', 32, 'Samsung Monitor', 69888, 300, 1, 0),
(74, 's6gp574batr1bbpghegar7vvb6', 'product_images/Corsair-Vengeance-RGB-LED-RAM.jpg', 34, 'Computer Led Ram', 3700, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catagory`
--

CREATE TABLE IF NOT EXISTS `tbl_catagory` (
`catagory_id` int(11) NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `catagory_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_catagory`
--

INSERT INTO `tbl_catagory` (`catagory_id`, `catagory_name`, `catagory_description`, `publication_status`) VALUES
(5, 'Laptop ', 'HP', 1),
(6, 'KeyBoard', 'APointTech', 1),
(7, 'Pendrive', 'Flash', 1),
(9, 'Power Bank', 'Samsung', 1),
(10, 'Speaker', 'Boss', 1),
(13, 'Monitor', 'HP', 1),
(14, 'Mouse', '...............', 1),
(16, 'Cooling Pad', '.........................', 1),
(17, 'Ram', '................', 1),
(18, 'Playstation', '...........................', 1),
(19, 'Flight Stick', '<div style=""><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Joysticks are often used to control video games, and usually have one or more push-buttons whose state can also be read by the computer. A popular variation of the joystick used on modern&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game_console" title="Video game console" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game consoles</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is the&nbsp;</span><a href="https://en.wikipedia.org/wiki/Analog_stick" title="Analog stick" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">analog stick</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">. Joysticks are also used for controlling machines such as cranes, trucks, underwater unmanned vehicles, wheelchairs, surveillance cameras, and&nbsp;</span><a href="https://en.wikipedia.org/wiki/Zero-turn_mower" title="Zero-turn mower" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">zero turning radius lawn mowers</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">. Miniature finger-operated joysticks have been adopted as input devices for smaller electronic equipment such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Mobile_phone" title="Mobile phone" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">mobile phones</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span></div>', 1),
(20, 'Gaming Chair', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 1),
(21, 'Gaming Desk', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 1),
(22, 'Mouse Pad', '<div style="font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;"><span style="color: rgba(255, 255, 255, 0.87); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(20, 21, 24);"><br></span></div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">FANTECH MP80 Gaming Mouse Pad Gel Mouse Pad Locking Edge Smooth Mouse Mat Speed Version.</span></font><div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Features: 1.Very cool, fashion and practcal for office and gamer. 2. Professional speed version game mouse pad, best gift for Game Lovers.</span></font></div>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
`customer_id` int(111) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(100) NOT NULL,
  `con_pass` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `city` varchar(11) NOT NULL,
  `country` varchar(12) NOT NULL,
  `zip_code` varchar(11) NOT NULL,
  `deletion_status` tinyint(1) NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `first_name`, `last_name`, `email`, `password`, `con_pass`, `address`, `mobile`, `city`, `country`, `zip_code`, `deletion_status`, `publication_status`) VALUES
(33, 'subaita', 'rahman', 's@gmail.com', 'baba', 'baba', 'Road no-8,House-36,Mohammadpur,Dhaka', '1673230127', 'Dhaka', 'Bangladesh', '1207', 0, 0),
(34, 'subaita', 'rahman', 's@gmail.com', 'dfhdfh', 'fdhdfhd', 'Road no-8,House-36,Mohammadpur,Dhaka', '1673230127', 'Dhaka', 'Bangladesh', '1207', 0, 1),
(35, 'subaita', 'rahman', 's@gmail.com', 'fhnsfdnh', 'vndnf', 'Road no-8,House-36,Mohammadpur,Dhaka', '1673230127', 'Dhaka', 'Bangladesh', '1207', 0, 0),
(38, 'egsdgsdg', 'dsgsdg', 'dgsdg@fcvafd', 'asgfdg', 'adgadgadg', 'dagadgad', 'gadgadgadg', 'dgadg', 'adgadg', 'adgadg', 0, 0),
(39, 'QFGSAFG', 'SFGASG', 'SDGADG@SAFGAFG', 'SGASDG', 'ASDGAD', 'GADGAD', 'GADGADG', 'ADGADG', 'ADGDG', 'adGADG', 0, 0),
(40, 'Md.Raqibul', 'Rumman', 'admin@gmail.com', 'rrr', 'rrr', 'Jalshuka,Khulumbaria, Sahilkupa,Jhenaidah', '01757571237', 'Shilkupa', 'Bangladesh', '7320', 0, 0),
(41, 'test', 'testcase', 'test@gmail.com', 'rrr', 'rrr', 'test address', '332234232', 'test', 'asfadfa', '342', 0, 0),
(42, 'Saidul', 'Islam', 'said@gmail.com', '123456', '123456', 'H-52,sector-7, Uttara, Dhaka.', '01478523690', 'Dhaka', 'Bangladesh', '1240', 0, 0),
(43, 'Gazi ', 'Al-Amin', 'gazialmin96@yahoo.com', '123456', '123456', 'Dhaka Uddan, Mohammadpur, Dhaka-1207', '01773754465', 'Laksmipur', 'Bangladesh', '1207', 0, 0),
(44, 'Rabbi', 'Chwadury', 'rabbi@gmail.com', '123456', '123456', 'nikunjo', '01773754462', 'Dhaka', 'Bangladesh', '1040', 0, 1),
(45, 'Mohaiminul', 'bin- Noor', 'noor@yahoo.com', '123456', '123456', 'AIUB permanent campus, Kuratoli, Dhaka.', '01773754462', 'Dhaka', 'Bangladesh', '1239', 0, 1),
(46, 'test', 'test', 'test@test.test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE IF NOT EXISTS `tbl_manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `manufacturer_name` varchar(255) NOT NULL,
  `manufacturer_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_description`, `publication_status`) VALUES
(4, 'Xaomi', '...............................', 1),
(5, 'Dell', '...............', 1),
(6, 'Samsung', '...............', 1),
(8, 'Twinmoss', '.......', 1),
(9, 'Asus', '', 1),
(11, 'Twinmos', '...................', 1),
(12, 'Sony', '.................', 1),
(13, 'APointTech', 'descrip', 1),
(14, 'A4Tech', 'descrip', 1),
(15, 'Logitech', 'des', 1),
(16, 'EE', 'des', 1),
(17, 'Creative', 'des', 1),
(18, 'Thrustmaster', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Joysticks are often used to control video games, and usually have one or more push-buttons whose state can also be read by the computer. A popular variation of the joystick used on modern&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game_console" title="Video game console" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game consoles</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is the&nbsp;</span><a href="https://en.wikipedia.org/wiki/Analog_stick" title="Analog stick" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">analog stick</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">. Joysticks are also used for controlling machines such as cranes.</span>', 1),
(19, 'Cobra-ERGO', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 1),
(20, 'E-Blue', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 1),
(21, 'FANTECH', '<font face="Arial, Verdana"><span style="font-size: 13.3333px;">FANTECH MP80 Gaming Mouse Pad Gel Mouse Pad Locking Edge Smooth Mouse Mat Speed VersionFeatures: 1.Very cool, fashion and practcal for office and gamer. 2. Professional speed version game mouse pad, best gift for Game Lovers.</span></font>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
`order_id` int(7) NOT NULL,
  `customer_id` int(7) NOT NULL,
  `shipping_id` int(7) NOT NULL,
  `payment_id` int(7) NOT NULL,
  `order_total` float NOT NULL,
  `order_status` varchar(20) NOT NULL DEFAULT 'Pending',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publication_status` tinyint(1) NOT NULL,
  `deletion_status` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `order_date`, `publication_status`, `deletion_status`) VALUES
(22, 0, 0, 0, 0, 'Pending', '2019-11-26 15:54:05', 0, 0),
(23, 40, 24, 0, 0, 'Pending', '2019-11-26 17:03:13', 0, 0),
(24, 0, 0, 0, 0, 'Pending', '2019-11-26 17:03:28', 0, 0),
(25, 0, 0, 0, 0, 'Pending', '2019-11-26 19:32:04', 0, 0),
(26, 0, 0, 0, 0, 'Pending', '2019-11-26 19:41:24', 0, 0),
(27, 40, 27, 0, 0, 'Pending', '2019-11-26 19:41:24', 0, 0),
(28, 0, 0, 0, 0, 'Pending', '2019-11-26 19:57:19', 0, 0),
(29, 0, 0, 0, 0, 'Pending', '2019-11-27 07:37:44', 0, 0),
(30, 0, 0, 0, 0, 'Pending', '2019-11-27 07:42:54', 0, 0),
(31, 0, 0, 0, 0, 'Pending', '2019-11-27 07:43:33', 0, 0),
(32, 0, 0, 0, 0, 'Pending', '2019-11-27 08:27:02', 0, 0),
(33, 0, 0, 0, 0, 'Pending', '2019-11-28 12:56:06', 0, 0),
(34, 0, 0, 0, 0, 'Pending', '2019-11-28 13:04:52', 0, 0),
(35, 42, 35, 0, 0, 'Pending', '2019-11-28 13:10:07', 0, 0),
(36, 0, 0, 0, 0, 'Pending', '2019-11-28 13:10:55', 0, 0),
(37, 0, 0, 0, 0, 'Pending', '2019-11-29 15:45:05', 0, 0),
(38, 0, 0, 0, 0, 'Pending', '2019-11-30 12:59:45', 0, 0),
(39, 0, 0, 0, 0, 'Pending', '2019-11-30 13:02:30', 0, 0),
(40, 0, 0, 0, 0, 'Pending', '2019-12-01 11:58:11', 0, 0),
(41, 0, 0, 0, 0, 'Pending', '2019-12-01 12:01:19', 0, 0),
(42, 0, 0, 0, 0, 'Pending', '2019-12-01 12:04:10', 0, 0),
(43, 0, 0, 0, 0, 'Pending', '2019-12-01 12:06:26', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE IF NOT EXISTS `tbl_order_details` (
`order_details_id` int(10) NOT NULL,
  `order_id` int(70) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`) VALUES
(1, 11, 74, '32 GB Pendrive', 1000, 15),
(2, 11, 64, 'Led Keyboard', 3333, 5),
(3, 12, 45, 'Dell Laptop', 66000, 10),
(4, 12, 69, 'Led Keyboard', 2300, 1),
(5, 14, 23, 'PS4', 40000, 12),
(6, 15, 23, 'PS4', 40000, 1),
(7, 16, 23, 'PS4', 40000, 1),
(8, 17, 23, 'PS4', 40000, 1),
(9, 18, 23, 'PS4', 40000, 1),
(10, 19, 23, 'PS4', 40000, 12),
(11, 20, 107, '24" LED Monitor', 31500, 1),
(12, 20, 25, 'Logitech Keyboard', 300, 1),
(13, 21, 107, '24" LED Monitor', 31500, 1),
(14, 21, 25, 'Logitech Keyboard', 300, 1),
(15, 22, 23, 'PS4', 40000, 1),
(17, 23, 23, 'PS4', 40000, 1),
(20, 24, 23, 'PS4', 40000, 1),
(23, 25, 23, 'PS4', 40000, 1),
(26, 26, 23, 'PS4', 40000, 1),
(27, 26, 23, 'PS4', 40000, 0),
(28, 26, 25, 'Logitech Keyboard', 300, 0),
(29, 28, 23, 'PS4', 40000, 1),
(30, 28, 23, 'PS4', 40000, 0),
(31, 28, 25, 'Logitech Keyboard', 300, 0),
(32, 28, 35, 'Dell Laptop', 28000, 0),
(33, 29, 25, 'Logitech Keyboard', 300, 4),
(34, 29, 25, 'Logitech Keyboard', 300, 0),
(35, 29, 42, 'Dell Laptop', 44000, 1),
(36, 30, 25, 'Logitech Keyboard', 300, 4),
(37, 30, 25, 'Logitech Keyboard', 300, 0),
(38, 30, 42, 'Dell Laptop', 44000, 1),
(39, 31, 23, 'PS4', 40000, 1),
(40, 31, 23, 'PS4', 40000, 0),
(41, 31, 25, 'Logitech Keyboard', 300, 0),
(42, 31, 35, 'Dell Laptop', 28000, 0),
(43, 32, 23, 'PS4', 40000, 1),
(44, 32, 23, 'PS4', 40000, 0),
(45, 32, 25, 'Logitech Keyboard', 300, 0),
(46, 32, 35, 'Dell Laptop', 28000, 0),
(47, 32, 23, 'PS4', 40000, 1),
(48, 32, 41, 'Dell Laptop', 31000, 6),
(49, 33, 35, 'Dell Laptop', 28000, 100),
(50, 33, 34, 'Computer Led Ram', 3700, 21),
(51, 33, 133, 'Thrustmaster Hotas Warthog Dual Throttles XG6', 8000, 1),
(52, 34, 35, 'Dell Laptop', 28000, 100),
(53, 34, 34, 'Computer Led Ram', 3700, 21),
(54, 34, 133, 'Thrustmaster Hotas Warthog Dual Throttles XG6', 8000, 1),
(55, 34, 65, 'Led Keyboard', 3566, 7),
(56, 34, 23, 'PS4', 40000, 3),
(57, 35, 35, 'Dell Laptop', 28000, 100),
(58, 35, 34, 'Computer Led Ram', 3700, 21),
(59, 35, 133, 'Thrustmaster Hotas Warthog Dual Throttles XG6', 8000, 1),
(60, 35, 65, 'Led Keyboard', 3566, 7),
(61, 35, 23, 'PS4', 40000, 3),
(62, 35, 141, 'E-Blue Gaming Desk EGT002 ', 33000, 5),
(63, 35, 149, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 1),
(64, 35, 149, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 3),
(65, 36, 35, 'Dell Laptop', 28000, 100),
(66, 36, 34, 'Computer Led Ram', 3700, 21),
(67, 36, 133, 'Thrustmaster Hotas Warthog Dual Throttles XG6', 8000, 1),
(68, 36, 65, 'Led Keyboard', 3566, 7),
(69, 36, 23, 'PS4', 40000, 3),
(70, 36, 141, 'E-Blue Gaming Desk EGT002 ', 33000, 5),
(71, 36, 149, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 1),
(72, 36, 149, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 3),
(73, 37, 65, 'Led Keyboard', 3566, 5),
(74, 37, 101, 'Creative Speaker', 6500, 10),
(75, 37, 144, 'E-Blue Gaming Desk EGT002 ', 25400, 2),
(76, 38, 66, 'Led Keyboard', 6547, 1),
(77, 39, 66, 'Led Keyboard', 6547, 1),
(78, 40, 25, 'Logitech Keyboard', 300, 200),
(79, 40, 25, 'Logitech Keyboard', 300, 500),
(80, 40, 25, 'Logitech Keyboard', 300, 500),
(81, 40, 44, 'Dell Laptop', 10000, 100),
(82, 40, 37, 'Dell Laptop', 32000, 500),
(83, 41, 25, 'Logitech Keyboard', 300, 200),
(84, 41, 25, 'Logitech Keyboard', 300, 500),
(85, 41, 25, 'Logitech Keyboard', 300, 500),
(86, 41, 44, 'Dell Laptop', 10000, 100),
(87, 41, 37, 'Dell Laptop', 32000, 500),
(88, 41, 34, 'Computer Led Ram', 3700, 200),
(89, 42, 32, 'Samsung Monitor', 69888, 200),
(90, 43, 32, 'Samsung Monitor', 69888, 200),
(91, 43, 23, 'PS4', 40000, 300),
(92, 43, 32, 'Samsung Monitor', 69888, 300);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_payment` (
`payment_id` int(7) NOT NULL,
  `payment_type` int(12) NOT NULL,
  `payment_status` varchar(25) NOT NULL DEFAULT 'Pending',
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_type`, `payment_status`, `payment_date`) VALUES
(32, 0, 'Pending', '2019-11-26 15:54:05'),
(33, 0, 'Pending', '2019-11-26 17:03:28'),
(34, 0, 'Pending', '2019-11-26 19:32:04'),
(35, 0, 'Pending', '2019-11-26 19:41:24'),
(36, 0, 'Pending', '2019-11-26 19:57:19'),
(37, 0, 'Pending', '2019-11-27 07:37:44'),
(38, 0, 'Pending', '2019-11-27 07:42:54'),
(39, 0, 'Pending', '2019-11-27 07:43:33'),
(40, 0, 'Pending', '2019-11-27 08:27:02'),
(41, 0, 'Pending', '2019-11-28 12:56:06'),
(42, 0, 'Pending', '2019-11-28 13:04:52'),
(43, 0, 'Pending', '2019-11-28 13:10:55'),
(44, 0, 'Pending', '2019-11-29 15:45:05'),
(45, 0, 'Pending', '2019-11-30 12:59:45'),
(46, 0, 'Pending', '2019-11-30 13:02:30'),
(47, 0, 'Pending', '2019-12-01 11:58:11'),
(48, 0, 'Pending', '2019-12-01 12:01:19'),
(49, 0, 'Pending', '2019-12-01 12:04:10'),
(50, 0, 'Pending', '2019-12-01 12:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
`product_id` int(6) NOT NULL,
  `catagory_id` int(3) NOT NULL,
  `manufacturer_id` int(3) NOT NULL,
  `product_name` varchar(51) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(4) NOT NULL,
  `product_sku` varchar(5) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `publication_status` tinyint(1) NOT NULL,
  `deletion_status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `catagory_id`, `manufacturer_id`, `product_name`, `product_price`, `product_quantity`, `product_sku`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`, `deletion_status`) VALUES
(23, 18, 12, 'PS4', 40000, 5, 'mklp', 'short', 'long', 'product_images/playstation-4-dualshock-4-playstation-camera-one-column-01-ps4-us-05oct17.png', 1, 0),
(25, 6, 15, 'Logitech Keyboard', 300, 6, 'lkjh', 'short', 'long', 'product_images/v.jpg', 1, 0),
(32, 13, 6, 'Samsung Monitor', 69888, 70, 'qwert', 's', 'l', 'product_images/0050124_0.jpeg', 1, 0),
(34, 17, 11, 'Computer Led Ram', 3700, 16, 'assss', 's', 'l', 'product_images/Corsair-Vengeance-RGB-LED-RAM.jpg', 1, 0),
(35, 5, 5, 'Dell Laptop', 28000, 5, 'kkjj', '.................', '.............................................', 'product_images/5289-1_thumb800.jpg', 1, 0),
(37, 5, 5, 'Dell Laptop', 32000, 4, 'llll', '.............', '...............................', 'product_images/item_XL_10158323_12732480.jpg', 1, 0),
(38, 5, 5, 'Dell Laptop', 64000, 16, 'oip', '...............', '...............................', 'product_images/item_XL_17512662_23868657.jpg', 1, 0),
(41, 5, 5, 'Dell Laptop', 31000, 11, 'vvvv', '............', '.......................', 'product_images/Dell-Studio-14z_large.jpg', 1, 0),
(42, 5, 5, 'Dell Laptop', 44000, 78, 'jjjj', '.............', '...............................', 'product_images/4300.jpg', 1, 0),
(43, 5, 5, 'Dell Laptop', 56000, 6, 'hjhjh', '............', '............................', 'product_images/Dell_laptop_349.jpg', 1, 0),
(44, 5, 5, 'Dell Laptop', 10000, 19, 'aaaaa', '..............', '.............................', 'product_images/Del.jpg', 1, 0),
(45, 5, 5, 'Dell Laptop', 66000, 77, 'lpoi', '.............', '....................', 'product_images/lenovoflexpad_big.jpg', 1, 0),
(46, 5, 5, 'Dell Laptop', 23000, 44, 'lllll', '.............', '...........................', 'product_images/x260-38id.png', 1, 0),
(63, 6, 15, 'Led Keyboard', 9800, 78, 'dnvon', '..............................', '..............................', 'product_images/led-keyboard_1505144096359_10816625_ver1.0.jpg', 1, 0),
(64, 6, 15, 'Led Keyboard', 3333, 34, 'rrrrr', '......................', '.........................', 'product_images/r.jpg', 1, 0),
(65, 6, 15, 'Led Keyboard', 3566, 12, 'jhgf', '..............', '......................', 'product_images/s-l1000.jpg', 1, 0),
(66, 6, 15, 'Led Keyboard', 6547, 14, 'loiu', '...............', '.......................', 'product_images/kb-003_original.jpg', 1, 0),
(67, 6, 15, 'Led Keyboard', 4100, 22, 'hytr', '............', '................', 'product_images/_SKU133376tongyong (7).jpg', 1, 0),
(69, 6, 15, 'Led Keyboard', 2300, 36, 'lkjhp', '...............', '................', 'product_images/HAVIT-Rainbow-Backlit-Wired-Gaming-Keyboard-and-Mouse-Combo-Black-2016-Model-0-5.jpg', 1, 0),
(70, 6, 15, 'Led Keyboard', 980, 17, 'plkjh', '............', '.....................', 'product_images/hv-kb558cm-gaming-keyboard-mouse-combo-4.jpg', 1, 0),
(71, 6, 15, 'Led Keyboard', 1500, 11, 'qwerm', '...............', '.................', 'product_images/kb-003_original.jpg', 1, 0),
(72, 6, 15, 'Led Keyboard', 1200, 11, 'abcde', '...................', '........................', 'product_images/s-l1000.jpg', 1, 0),
(73, 7, 8, '16 GB Pendrive', 450, 23, 'qaz', '................', '.......................', 'product_images/51GxPs-FNKL._SL1000_.jpg', 1, 0),
(74, 7, 8, '32 GB Pendrive', 1000, 14, 'kjla', '...............', '.............................', 'product_images/71-9eP+yh6L._SL1500_.jpg', 1, 0),
(75, 7, 8, '32 GB Pendrive', 1200, 13, 'sssa', '......................', '....................', 'product_images/615whLfGL4L._SY355_.jpg', 1, 0),
(76, 7, 8, '16 GB Pendrive', 700, 9, 'rtrt', '.....................', '...................', 'product_images/3044_19.jpg', 1, 0),
(77, 7, 8, '32 GB Pendrive', 1200, 3, 'mnb', '...........', '......................', 'product_images/5197208wZ2L._SL1000_.jpg', 1, 0),
(78, 7, 8, '16 GB Pendrive', 750, 12, 'eeee', '....................', '....................', 'product_images/925839215s.jpg', 1, 0),
(79, 7, 8, '8 GB Pendrive', 455, 13, 'dsa', '.............', '...........', 'product_images/740617222401_L.jpg', 1, 0),
(80, 7, 8, '8 GB Pendrive', 550, 12, 'ddddd', '.....................', '.......................', 'product_images/best_pendrive_usb3_flashdrive1.jpg', 1, 0),
(81, 7, 8, '4 GB Pendrive', 350, 4, 'fffff', '...................', '............................', 'product_images/product_29-500x500.jpg', 1, 0),
(82, 9, 16, '1600mah Power Bank', 3000, 23, 'az', '...............................', '.............................', 'product_images/61PrA8JLREL._SX425_.jpg', 1, 0),
(83, 9, 16, '1600mah Power Bank', 2300, 22, 'werq', '....................', '.......................', 'product_images/power-bank-8000-mah--MO8839-19--hd.jpg', 1, 0),
(84, 9, 16, '1600mah Power Bank', 2500, 2, 'derw', '......................', '............................', 'product_images/powerflat-punainen.jpg', 1, 0),
(85, 9, 16, '3200mah Power Bank', 6500, 3, 'dddf', '..................', '.................', 'product_images/21946_xl.jpg', 1, 0),
(86, 9, 16, '3200mah Power Bank', 6000, 32, 'fder', '..........', '.....................', 'product_images/hd-power-bank-battery-motion-detection-spy-camera-2-.jpg', 1, 0),
(90, 9, 16, '1600mah Power Bank', 3200, 453, 'dbn', '.....................', '..........................', 'product_images/suich-power-banks.jpg', 1, 0),
(92, 9, 16, '1600mah Power Bank', 2200, 43, 'dgh', '.................', '....................', 'product_images/as.jpg', 1, 0),
(93, 9, 16, '1800mah Power Bank', 3300, 0, '', 'nnnnnnnn', 'nnnnnnnnnnnnnnnnnnnnnnnn', 'product_images/cs.jpg', 1, 0),
(95, 9, 16, '1800mah Power Bank', 2365, 13, 'fdsgr', '.................', '..................', 'product_images/qw.jpg', 1, 0),
(97, 10, 17, 'Creative Speaker', 4322, 43, 'dt', '............', '...................', 'product_images/71B558HgE+L._SL1500_.jpg', 1, 0),
(99, 10, 17, 'Creative Speaker', 4300, 2, 'dewq', '.............', '...................', 'product_images/71C1zQH2G+L._SL1500_.jpg', 1, 0),
(100, 10, 17, 'Creative Speaker', 2400, 3, 'vc', '..............', '...................', 'product_images/867279-Edifier M1370BT Home Audio Speakers Bluetooth-l.jpg', 1, 0),
(101, 10, 17, 'Creative Speaker', 6500, 4, 'ft', '..............', '', 'product_images/creative-inspire-t3000.716941.jpg', 1, 0),
(102, 10, 17, 'Creative Speaker', 4700, 5, 'frt', '.................', '....................', 'product_images/Creative-Speakers-680x425.jpg', 1, 0),
(103, 10, 17, 'Creative Speaker', 4450, 6, 'ui', '...............', '..................', 'product_images/hero-creative-t4-wireless.jpg', 1, 0),
(104, 10, 17, 'Creative Speaker', 2300, 2, 'kli', '..............', '.........................', 'product_images/Inspire_A200_c.jpg', 1, 0),
(105, 10, 17, 'Creative Speaker', 3100, 8, 'lp', '..................', '...............', 'product_images/dav-tz215-1.jpeg', 1, 0),
(106, 10, 17, 'Creative Speaker', 2100, 8, 'bvc', '...............', '..............', 'product_images/LHD627-600x600.jpg', 1, 0),
(107, 13, 6, '24" LED Monitor', 31500, 9, 'fda', '..............', '..............', 'product_images/91nHqZL6TYL._SL1500_.jpg', 1, 0),
(108, 13, 6, '24" LED Monitor', 54000, 7, 'vsa', '.............', '.................', 'product_images/medium01.jpg', 1, 0),
(109, 13, 6, '24" LED Monitor', 43500, 14, 'aqw', '......................', '........................', 'product_images/281.jpg', 1, 0),
(110, 13, 6, '24" LED Monitor', 22000, 23, 're', '....................', '..........................', 'product_images/s-l640.jpg', 1, 0),
(111, 13, 6, '24" LED Monitor', 65400, 87, 'cdf', '.................', '...................', 'product_images/u_10157851.jpg', 1, 0),
(112, 13, 6, '22" LED Monitor', 28900, 19, 'vbh', '.................', '................', 'product_images/ASUS PG279Q_1-600x600.jpg', 1, 0),
(113, 13, 6, '22" LED Monitor', 36900, 98, 'jk', '.........................', '......................', 'product_images/Pdpdefault-ls27d590cs-za-600x600-C1-052016.jpg', 1, 0),
(114, 13, 6, '22" LED Monitor', 58900, 56, 'derg', '.........................', '..................', 'product_images/l27000whs_hero-15.jpg', 1, 0),
(116, 14, 13, 'Optical Mouse', 1200, 6, 'cft', '........................', '.....................', 'product_images/1465367762612196.jpg', 1, 0),
(118, 14, 13, 'Optical Mouse', 1100, 12, 'fgt', '.........................', '...................', 'product_images/1457949437702761.jpg', 1, 0),
(119, 14, 13, 'Optical Mouse', 1050, 78, 'hyu', '..................', '..........................', 'product_images/233137080_48adae47-1f80-45fb-b44b-64f7f082fed2.jpg', 1, 0),
(120, 14, 13, 'Optical Mouse', 700, 147, 'lllv', '...............', '.......................', 'product_images/9339028013086.jpg', 1, 0),
(121, 14, 13, 'Optical Mouse', 850, 17, 'yt', '.................', '...............', 'product_images/61HhRdHCudL._SL1500_-e1493831350108.jpg', 1, 0),
(122, 14, 13, 'Optical Mouse', 1200, 15, 'tr.', '....................', '......................', 'product_images/ROCCAT_Kone_Pure_Optical_01.jpg', 1, 0),
(123, 14, 13, 'Optical Mouse', 600, 78, 'bvfg', '....................', '.................', 'product_images/cougar-450m-top-view-2-800x533-c.jpg', 1, 0),
(124, 14, 13, 'Optical Mouse', 550, 76, 'fgtr', '.................', '.....................', 'product_images/roccat-kone-plus-gaming-mouse-image.jpg', 1, 0),
(125, 14, 13, 'Optical Mouse', 500, 19, 'vgf', '.................', '...........................', 'product_images/Speedlink-Prime-Z-DW-Featured.jpg', 1, 0),
(126, 16, 15, 'Rosewill RLCP-11004 Laptop Cooling Pad', 3300, 56, 'gty', '...................', '................', 'product_images/34-981-023-02.jpg', 1, 0),
(127, 16, 15, 'Rosewill RLCP-11 Laptop Cooling Pad', 1200, 59, 'lpo', '.....................', '..................', 'product_images/NotepalXLfront_01.jpg', 1, 0),
(128, 16, 15, 'Rosewill RLCP-3404 Laptop Cooling Pad', 1800, 23, 'ed', '..............................', '.................................', 'product_images/qw.jpg', 1, 0),
(129, 19, 18, 'Thrustmaster T.16000M FCS HOTAS Controller', 8400, 1000, '365JK', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Joysticks are often used to control video games, and usually have one or more push-buttons whose state can also be read by the computer. A popular variation of the joystick used on modern&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game_console" title="Video game console" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game consoles</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is the&nbsp;</span><a href="https://en.wikipedia.org/wiki/Analog_stick" title="Analog stick" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">analog stick</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.&nbsp;</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Joysticks are also used for controlling machines such as cranes, trucks, underwater unmanned vehicles, wheelchairs, surveillance cameras, and&nbsp;</span><a href="https://en.wikipedia.org/wiki/Zero-turn_mower" title="Zero-turn mower" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">zero turning radius lawn mowers</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">. Miniature finger-operated joysticks have been adopted as input devices for smaller electronic equipment such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Mobile_phone" title="Mobile phone" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">mobile phones</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span>', 'product_images/stick1.jpg', 1, 0),
(130, 19, 18, 'Thrustmaster VG 2960773 T16000M FCS Joystick, Black', 9600, 500, 'AK67G', '<h1 id="title" class="a-size-large a-spacing-none" style="box-sizing: border-box; padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizeLegibility; background-color: rgb(255, 255, 255); margin-bottom: 0px !important; line-height: 1.3 !important;"><font color="#111111" face="Arial, sans-serif"><span style="font-size: 21px; font-weight: normal;">Joysticks are often used to control video games, and usually have one or more push-buttons whose state can also be read by the computer. A popular variation of the joystick used on modern video game consoles is the analog stick. Joysticks are also used for controlling machines such as cranes, trucks, underwater unmanned vehicles, wheelchairs, surveillance cameras, and zero turning radius lawn mowers. Miniature finger-operated joysticks have been adopted as input devices for smaller electronic equipment such as mobile phones.</span></font></h1>', '<font face="Arial, Verdana"><span style="font-size: 13.3333px;">Joysticks are often used to control video games, and usually have one or more push-buttons whose state can also be read by the computer. A popular variation of the joystick used on modern video game consoles is the analog stick. Joysticks are also used for controlling machines such as cranes, trucks, underwater unmanned vehicles, wheelchairs, surveillance cameras, and zero turning radius lawn mowers. Miniature finger-operated joysticks have been adopted as input devices for smaller electronic equipment such as mobile phones.</span></font>', 'product_images/stick2.jpg', 1, 0),
(131, 19, 18, 'Thrustmaster 2960720 Hotas Warthog Flight Stick', 7800, 200, 'XC11E', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', 'product_images/stick3.jpg', 1, 0),
(132, 19, 18, 'Thrustmaster Hotas Warthog Dual Throttles and Contr', 5000, 500, 'LTY33', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', 'product_images/stick4.jpg', 1, 0),
(133, 19, 18, 'Thrustmaster Hotas Warthog Dual Throttles XG6', 8000, 200, 'LTY33', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', 'product_images/stick5.jpg', 1, 0),
(134, 19, 18, 'Mad Catz V.1 Stick for PC', 7800, 500, 'LOP23', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">In the 1960s the use of joysticks became widespread in radio-controlled model aircraft systems such as the Kwik Fly produced by Phill Kraft (1964). The now-defunct Kraft Systems firm eventually became an important OEM supplier of joysticks to the computer industry and other users. The first use of joysticks outside the radio-controlled aircraft industry may have been in the control of powered wheelchairs, such as the&nbsp;</span><a href="https://en.wikipedia.org/w/index.php?title=Permobil&amp;action=edit&amp;redlink=1" class="new" title="Permobil (page does not exist)" style="text-decoration-line: none; color: rgb(165, 88, 88); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Permobil</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;(1963). During this time period NASA used joysticks as control devices as part of the Apollo missions. For example, the lunar lander test models were controlled with a joystick.</span>', 'product_images/stick6.jpg', 1, 0),
(135, 20, 19, 'COBRA-ERGO GAMING CHAIR', 18000, 100, 'LTY33', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 'product_images/chair1.jpg', 0, 0),
(136, 20, 19, 'COBRA-PRO PC GAMING CHAIR', 33000, 200, 'LOP23', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 'product_images/chair2.jpg', 0, 0),
(137, 20, 19, 'E-BLUE MAZER PC GAMING CHAIR ', 20000, 50, 'XC11E', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 'product_images/chair3.jpg', 0, 0);
INSERT INTO `tbl_product` (`product_id`, `catagory_id`, `manufacturer_id`, `product_name`, `product_price`, `product_quantity`, `product_sku`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`, `deletion_status`) VALUES
(138, 20, 19, 'E-BLUE MAZER PC GAMING CHAIR ', 33000, 500, 'LK3X9', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 'product_images/chair4.jpg', 0, 0),
(139, 20, 19, 'COBRA-PRO PC GAMING CHAIR', 25400, 500, 'LTY33', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 'product_images/chair5.jpg', 0, 0),
(140, 20, 19, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 200, 'LOP23', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">gaming chair</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;is one designed specially for the comfort of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Video_game" title="Video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">video game</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;players. The history of the gaming chair originated from&nbsp;</span><a href="https://en.wikipedia.org/wiki/Racing_video_game" title="Racing video game" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">racing games</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;such as&nbsp;</span><a href="https://en.wikipedia.org/wiki/Need_For_Speed" class="mw-redirect" title="Need For Speed" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Need For Speed</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/FlatOut" title="FlatOut" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">FlatOut</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">,&nbsp;</span><a href="https://en.wikipedia.org/wiki/Dirt_(series)" class="mw-redirect" title="Dirt (series)" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">Dirt</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">, etc. The original idea was to replicate the feel you have when driving a&nbsp;</span><a href="https://en.wikipedia.org/wiki/Sports_car" title="Sports car" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;">sporty car</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="https://en.wikipedia.org/wiki/Gaming_chair#cite_note-1" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;This is why almost all gaming chairs are designed to look like a car seat. They have very high backrests and flared out sides. The sides of the seat will typically have additional padding. The sides of the backrest will be slightly curved inward. Most Models will also have some type of cutouts in the backrest to help add to the sporty look.</span>', 'product_images/chair6.jpg', 0, 0),
(141, 21, 20, 'E-Blue Gaming Desk EGT002 ', 33000, 50, 'XC11E', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 'product_images/desk1.jpg', 1, 0),
(142, 21, 20, 'E-Blue Gaming Desk EGT002 ', 33000, 50, 'LOP23', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 'product_images/desk2.jpg', 1, 0),
(143, 21, 20, 'E-BLUE MAZER PC GAMING CHAIR ', 78000, 500, 'VBG56', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 'product_images/desk3.jpg', 1, 0),
(144, 21, 20, 'E-Blue Gaming Desk EGT002 ', 25400, 200, 'XC11E', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 'product_images/desk4.jpg', 1, 0),
(145, 21, 20, 'E-Blue Gaming Desk EGT002 ', 33000, 200, 'JCXAQ', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 'product_images/desk5.jpg', 1, 0),
(146, 21, 20, 'E-Blue Gaming Desk EGT002 ', 25400, 50, 'JCXAQ', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', '<span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Because of the large variety of parts that can go into a computer built to play video games, gaming computers are frequently custom-assembled, rather than pre-assembled, either by gaming and hardware enthusiasts or by companies that specialize in producing custom gaming machines. In order to generate interest, gaming computer manufacturers that sell complete systems often produce boutique models, allowing them to compete on aesthetic design in addition to the hardware inside.</span>', 'product_images/desk6.jpg', 1, 0),
(147, 20, 20, 'E-BLUE MAZER PC GAMING CHAIR ', 33000, 500, 'XC11E', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', 'product_images/chair3.jpg', 1, 0),
(148, 20, 20, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 100, 'VBG56', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', 'product_images/chair2.jpg', 1, 0),
(149, 20, 20, 'E-BLUE MAZER PC GAMING CHAIR ', 25400, 500, 'JCXAQ', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', 'product_images/chair4.jpg', 1, 0),
(150, 20, 19, 'COBRA-PRO PC GAMING CHAIR', 25400, 200, 'XC11E', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', 'product_images/chair6.jpg', 1, 0),
(151, 20, 19, 'COBRA-PRO PC GAMING CHAIR', 33000, 200, 'LK3X9', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', 'product_images/chair5.jpg', 1, 0),
(152, 20, 19, 'COBRA-PRO PC GAMING CHAIR', 25400, 50, 'XC11E', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', '<span style="color: rgb(105, 110, 110); font-family: Roboto, sans-serif; font-size: 14px; letter-spacing: 0.1px; background-color: rgb(250, 251, 251);">In a class of its own, this flight system is perfectly crafted for looks and comfortable gaming. The Force Feedback effect in the joystick even lets you feel wind shear, turbulence and g-forces, so you will feel that you are really flying an airplane. The use of illuminated and programmable buttons on the base of the throttle adds to the effect, making you feel like you are sitting in a real airplane cockpit.</span>', 'product_images/chair1.jpg', 1, 0),
(153, 22, 21, 'MP25', 520, 10, 'On St', '<font face="Arial, Verdana"><span style="font-size: 13.3333px;">FANTECH MP25 Gaming Mouse Pad Gel Mouse Pad Locking Edge Smooth Mouse Mat Speed VersionFeatures: 1.Very cool, fashion and practcal for office and gamer. 2. Professional speed version game mouse pad, best gift for Game Lovers.</span></font>', 'Ownership gives the owner the exclusive right to use the work, with some exceptions. When a person creates an original work, fixed in a tangible medium, he or she automatically owns Yes, in some circumstances, it is possible to use a copyright-protected work without infringing the ownerâ€™s copyright. For more about this, you may wish to learn about fair use. It is important to note that your content can be removed in response to a claim of copyright infringement, even if you have.', 'product_images/MP25(gaming mouse pad).jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE IF NOT EXISTS `tbl_shipping` (
`shipping_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `city` varchar(12) NOT NULL,
  `country` varchar(10) NOT NULL,
  `zip_code` varchar(14) NOT NULL,
  `deletion_status` tinyint(1) NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `name`, `email_address`, `address`, `phone_number`, `city`, `country`, `zip_code`, `deletion_status`, `publication_status`) VALUES
(30, 'test case', 'test@gmail.com', 'test', '34', 'adfad', 'Bangladesh', '342', 0, 0),
(31, 'Md.Raqibul Hasan Rumman', 'admin@gmail.com', 'Jalshuka,Khulumbaria, Sahilkupa,Jhenaidah', '01757571237', 'Shilkupa', 'Australia', '7320', 0, 0),
(32, 'Md.Raqibul Hasan Rumman', 'admin@gmail.com', 'Jalshuka,Khulumbaria, Sahilkupa,Jhenaidah', '01757571237', 'Shilkupa', 'Bangladesh', '7320', 0, 0),
(34, 'Al-Amin Gazi', 'gazialamin96@gmail.com', 'Dhanmondi 27, Dhaka City, Bangladesh', '01773754462', 'Dhaka', 'Bangladesh', '1238', 0, 0),
(35, 'Dr. Muhammad younus', 'younus96@gmail.com', 'floor-10th, H-5,C-Block,Bosundhara, ', '01369852741', 'Dhaka', 'Bangladesh', '1235', 0, 0),
(36, 'Rabbi', 'rabbi@gmail.com', 'House-2, Road-11,Nikunjo-2, Dhaka, Bangladesh', '01773754468', 'Dhaka', 'Bangladesh', '1240', 0, 0),
(37, 'Mohaiminul Noor', 'noor@yahoo.com', 'AIUB permanent campus, Kuratoli, Dhaka.', '01773754462', 'Dhaka', 'Bangladesh', '1239', 0, 1),
(38, 'Masudul Karim', 'masud@gmail.com', 'AIUB permanent campus, Kuratoli, Dhaka.', '01773754462', 'Dhaka', 'Bangladesh', '1239', 0, 1),
(39, 'test', 'test@test.test', 'dftguhjkzxcfvgbhnjkmk', '014755', 'Dhaka', 'Bangladesh', '1240', 0, 0),
(40, 'test', 'test@test.test', 'test', 'test', 'test', 'Bangladesh', '1234', 0, 0),
(41, 'test', 'test@test.test', 'test', 'test', 'test', 'Bangladesh', 'test', 0, 0),
(42, 'test', 'test@test.test', 'test', 'test', 'test', 'Bangladesh', '1240', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listofcartitem`
--
ALTER TABLE `listofcartitem`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_cart_temp`
--
ALTER TABLE `tbl_cart_temp`
 ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
 ADD PRIMARY KEY (`catagory_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
 ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
 ADD PRIMARY KEY (`shipping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listofcartitem`
--
ALTER TABLE `listofcartitem`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tbl_cart_temp`
--
ALTER TABLE `tbl_cart_temp`
MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
MODIFY `catagory_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
MODIFY `customer_id` int(111) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
MODIFY `order_id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
MODIFY `order_details_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
MODIFY `payment_id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
MODIFY `product_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
