-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 01:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nugorxyz_empireecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_link` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_link`, `banner_image`, `created_at`, `updated_at`) VALUES
(2, 'Maxime', NULL, 'AH8kB255197.jpg', '2023-08-20 07:27:44', '2023-08-20 07:32:34'),
(3, NULL, 'https://www.youtube.com/', 'ghFvD774191.png', '2023-08-20 07:28:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billingdetails`
--

CREATE TABLE `billingdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `notes` text DEFAULT NULL,
  `tran_number` varchar(255) DEFAULT NULL,
  `tran_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billingdetails`
--

INSERT INTO `billingdetails` (`id`, `order_id`, `name`, `email`, `mobile`, `address`, `notes`, `tran_number`, `tran_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '#ORDER-63059', 'Ronan Villarreal', 'taberuf@mailinator.com', '+1 (279) 728-7231', 'Mollitia officiis ni', 'Ea ipsum iure repre', NULL, NULL, 'RonanVillarreal-6778', '2023-05-28 06:08:39', NULL),
(2, '#ORDER-22098', 'Nero Hopkins', 'setica@mailinator.com', '+1 (108) 561-4958', 'Fugiat laudantium', 'Ea necessitatibus di', NULL, NULL, 'NeroHopkins-8859', '2023-05-29 10:18:30', NULL),
(3, '#ORDER-98036', 'Jacob Villarreal', 'gubepame@mailinator.com', '+1 (221) 245-6156', 'Veniam ut nostrum n', 'Sit fugit velit acc', NULL, NULL, 'JacobVillarreal-3346', '2023-05-31 10:00:47', NULL),
(4, '#ORDER-91018', 'Hyatt Benton', 'bamasaxohy@mailinator.com', '+1 (133) 383-4628', 'Sint illo voluptas', 'Dolore nobis elit e', NULL, NULL, 'HyattBenton-2473', '2023-05-31 10:43:59', NULL),
(5, '#ORDER-33889', 'Holly Sawyer', 'bovexi@mailinator.com', '+1 (217) 317-3495', 'Omnis libero provide', 'Adipisicing et qui l', NULL, NULL, 'HollySawyer-9500', '2023-05-31 10:46:12', NULL),
(6, '#ORDER-60686', 'Astra Craft', 'lyfumi@mailinator.com', '+1 (205) 703-2455', 'Nisi voluptatem asp', 'Mollit et quia itaqu', NULL, NULL, 'AstraCraft-3918', '2023-05-31 10:47:22', NULL),
(7, '#ORDER-48446', 'Armand Knapp', 'buja@mailinator.com', '+1 (519) 442-1507', 'Sint voluptate modi', 'Et quasi reprehender', NULL, NULL, 'ArmandKnapp-5498', '2023-05-31 11:03:36', NULL),
(8, '#ORDER-87836', 'Demetrius Jacobson', 'rawisaf@mailinator.com', '+1 (236) 958-6283', 'Fugiat ut quas dolor', 'Assumenda quaerat vi', NULL, NULL, 'DemetriusJacobson-4357', '2023-05-31 11:08:01', NULL),
(9, '#ORDER-98827', 'Shaeleigh Byrd', 'vynyqyroci@mailinator.com', '+1 (187) 959-7135', 'Adipisci officia mol', 'Neque aut eos neces', NULL, NULL, 'ShaeleighByrd-6641', '2023-05-31 11:24:01', NULL),
(10, '#ORDER-30737', 'Brenden Rogers', 'pudobiqag@mailinator.com', '+1 (808) 261-5549', 'Alias quaerat esse d', 'Dicta velit dolorib', NULL, NULL, NULL, '2023-05-31 12:01:50', NULL),
(11, '#ORDER-46213', 'Elton Hayes', 'pubypat@mailinator.com', '+1 (932) 973-4088', 'Nulla aut Nam quis t', 'Non rem et doloribus', NULL, NULL, 'EltonHayes-1133', '2023-05-31 12:05:02', NULL),
(12, '#ORDER-35820', 'Kitra Guzman', 'nazikytu@mailinator.com', '+1 (337) 207-3799', 'Quaerat tempora eius', 'Veniam sed cupidata', NULL, NULL, NULL, '2023-05-31 12:05:28', NULL),
(13, '#ORDER-10071', 'Bree Robbins', 'baticy@mailinator.com', '+1 (148) 234-3531', 'Autem adipisicing ut', 'Praesentium qui faci', NULL, NULL, NULL, '2023-05-31 12:08:16', NULL),
(14, '#ORDER-49542', 'Jordan Armstrong', 'qogovo@mailinator.com', '+1 (727) 912-6164', 'Rerum cupidatat non', 'Occaecat aspernatur', '+1 (372) 309-8099', 'Distinctio Iusto co', NULL, '2023-05-31 12:10:36', NULL),
(15, '#ORDER-58582', 'Kessie Silva', 'jenogu@mailinator.com', '+1 (211) 524-7892', 'Harum adipisci ratio', 'Et ut qui ipsam est', '+1 (551) 918-3982', 'Sunt sunt quia sunt', NULL, '2023-05-31 12:13:18', NULL),
(16, '#ORDER-27657', 'Hadassah Dixon', 'byzu@mailinator.com', '+1 (205) 706-4064', 'Officia quia et quas', 'Qui aliquid sint mai', '+1 (108) 399-9558', 'Iste nisi sit dolore', NULL, '2023-05-31 12:14:20', NULL),
(17, '#ORDER-73594', 'Galvin Mcdowell', 'kija@mailinator.com', '+1 (135) 588-9661', 'Sed veritatis suscip', 'Et quisquam ex in hi', NULL, NULL, 'GalvinMcdowell-6859', '2023-05-31 12:23:11', NULL),
(18, '#ORDER-48936', 'Laith Booth', 'kobaqebed@mailinator.com', '+1 (329) 957-8013', 'Mollit autem laboris', 'Sint veritatis ea o', '+1 (168) 564-6119', 'Aute voluptate aliqu', '15', '2023-05-31 13:49:46', NULL),
(19, '#ORDER-65094', 'Ria Turner', 'gopyhikad@mailinator.com', '+1 (658) 903-8204', 'Est voluptas qui exe', 'Officiis consectetur', NULL, NULL, '15', '2023-05-31 13:51:27', NULL),
(20, '#ORDER-21325', 'Walter House', 'buriv@mailinator.com', '+1 (404) 189-9644', 'Voluptatem dolor ex', 'Voluptas iure in qui', NULL, NULL, '15', '2023-05-31 13:52:34', NULL),
(21, '#ORDER-31454', 'hamim', 'hamim.techweb@gmail.com', '01876674794', 'dhaka,bangladesh', NULL, NULL, NULL, 'hamim-8276', '2023-08-14 12:46:14', NULL),
(22, '#ORDER-45379', 'Caesar', 'hamim@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-7131', '2023-08-17 06:53:35', NULL),
(23, '#ORDER-31380', 'hah', 'tulyqut@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'hah-7813', '2023-08-17 10:20:13', NULL),
(24, '#ORDER-59470', 'Xenos Irwin', 'roni@mailinator.com', '+1 (653) 901-2169', 'Quidem vero dolor si', 'Impedit ut iste aut', NULL, NULL, 'XenosIrwin-2940', '2023-08-17 10:27:22', NULL),
(25, '#ORDER-59250', 'Yoshio Hayden', 'guzyk@mailinator.com', '+1 (684) 961-4031', 'Dolore rerum consequ', 'Veniam eos aut del', NULL, NULL, 'YoshioHayden-3601', '2023-08-17 10:28:23', NULL),
(26, '#ORDER-32955', 'Caesar', 'budyta@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-6033', '2023-08-17 10:36:23', NULL),
(27, '#ORDER-21819', 'Caesar', 'rocexudaby@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-7917', '2023-08-17 10:36:50', NULL),
(28, '#ORDER-99667', 'Jacob Faulkner', 'dopim@mailinator.com', '+1 (956) 895-6684', 'Excepteur quas ipsa', 'Sit voluptatem quia', NULL, NULL, 'JacobFaulkner-1805', '2023-08-17 10:44:36', NULL),
(29, '#ORDER-33849', 'Jamal Hoover', 'rocexudaby@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'JamalHoover-1590', '2023-08-17 10:45:41', NULL),
(30, '#ORDER-15962', 'Cullen Briggs', 'rocexudaby@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'CullenBriggs-5274', '2023-08-17 10:47:48', NULL),
(31, '#ORDER-60299', 'Caesar', 'hamim.techweb@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-8975', '2023-08-17 10:53:52', NULL),
(32, '#ORDER-68573', 'Ocean Barber', 'kyvy@mailinator.com', '+1 (601) 287-5143', 'Perspiciatis et sap', 'Quisquam provident', NULL, NULL, 'OceanBarber-4490', '2023-08-17 11:34:12', NULL),
(33, '#ORDER-44449', 'Caesar', 'rocexudaby@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-3965', '2023-08-17 11:34:59', NULL),
(34, '#ORDER-32000', 'Leigh Berg', 'gupysute@mailinator.com', '+1 (607) 452-4865', 'Nisi aspernatur moll', 'Non sed ex explicabo', NULL, NULL, 'LeighBerg-6082', '2023-08-17 11:49:34', NULL),
(35, '#ORDER-92785', 'Ariel Rhodes', 'buraka@mailinator.com', '+1 (856) 366-8362', 'Ad aut illo voluptas', 'Deleniti exercitatio', NULL, NULL, '1', '2023-08-17 12:52:58', NULL),
(36, '#ORDER-52617', 'Vance Trevino', 'hiji@mailinator.com', '+1 (444) 919-7001', 'Quos cupidatat delec', 'Et dolorem ea suscip', NULL, NULL, 'VanceTrevino-4297', '2023-08-22 06:06:38', NULL),
(37, '#ORDER-87211', 'Simon Mayo', 'cicesa@mailinator.com', '+1 (578) 418-8591', 'Sint ullamco non odi', 'Minus expedita amet', '+1 (233) 372-8386', 'Reiciendis eligendi', NULL, '2023-08-22 06:10:43', NULL),
(38, '#ORDER-40081', 'Elmo Bradley', 'syje@mailinator.com', '+1 (324) 656-2862', 'Consequat Et vel et', 'Cupidatat reprehende', NULL, NULL, '18', '2023-08-22 06:11:50', NULL),
(39, '#ORDER-88471', 'Nina Potter', 'qypy@mailinator.com', '+1 (645) 958-4939', 'In quidem voluptates', 'Tempore iure incidu', NULL, NULL, '18', '2023-08-22 06:37:18', NULL),
(40, '#ORDER-45061', 'Caesar', 'tulyqut@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, '18', '2023-08-22 06:50:05', NULL),
(41, '#ORDER-24050', 'Tatum Heath', 'gahi@mailinator.com', '+1 (868) 876-2883', 'In doloribus vero fu', 'Ipsum id magnam ips', NULL, NULL, '18', '2023-08-22 06:53:44', NULL),
(42, '#ORDER-36269', 'Caesar', 'tulyqut@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, '18', '2023-08-22 06:56:05', NULL),
(43, '#ORDER-54107', 'Todd Christian', 'mujubotuj@mailinator.com', '+1 (537) 757-4048', 'Magni eum qui molest', 'Sint culpa volupta', NULL, NULL, '18', '2023-08-22 06:58:07', NULL),
(44, '#ORDER-86827', 'Armand Garza', 'ripa@mailinator.com', '+1 (819) 585-2509', 'Debitis maiores natu', 'Libero consequat Mo', NULL, NULL, '18', '2023-08-22 07:00:11', NULL),
(45, '#ORDER-93523', 'Sybill Velasquez', 'zegytyfyd@mailinator.com', '+1 (117) 423-6922', 'Perspiciatis quis p', 'Dolorem voluptatibus', NULL, NULL, '18', '2023-08-22 07:01:37', NULL),
(46, '#ORDER-13519', 'Ulric Oliver', 'silifyquje@mailinator.com', '+1 (783) 733-2818', 'Dolorum tenetur do b', 'Quo qui occaecat qui', NULL, NULL, '18', '2023-08-22 07:02:33', NULL),
(47, '#ORDER-83799', 'Cheyenne Doyle', 'bani@mailinator.com', '+1 (297) 628-5199', 'Consequatur aliqua', 'Voluptatum earum qui', '+1 (117) 103-6464', 'Nobis dolore eveniet', '18', '2023-08-22 07:03:04', NULL),
(48, '#ORDER-37225', 'Lara Cash', 'syjat@mailinator.com', '+1 (719) 226-8273', 'Animi cumque ut ut', 'Dolor aliquip est v', NULL, NULL, '18', '2023-08-22 07:05:26', NULL),
(49, '#ORDER-30225', 'Maris Whitney', 'zurohej@mailinator.com', '+1 (224) 953-8642', 'Velit dolore labore', 'Enim consequatur eiu', NULL, NULL, '18', '2023-08-22 07:08:38', NULL),
(50, '#ORDER-47170', 'Alden Briggs', 'dafaceqel@mailinator.com', '+1 (882) 473-3829', 'Quibusdam dolorem pr', 'Aperiam amet ipsum', '+1 (233) 372-8386', 'Reiciendis eligendi', '18', '2023-08-22 07:11:31', NULL),
(51, '#ORDER-93727', 'Kylynn Russo', 'nusyhah@mailinator.com', '+1 (749) 809-5476', 'Error qui rerum natu', 'Facilis in aut et si', NULL, NULL, '18', '2023-08-22 07:17:22', NULL),
(52, '#ORDER-21014', 'Jonas Dale', 'cavuno@mailinator.com', '+1 (413) 325-4731', 'Irure fugiat evenie', 'Minima unde aut quas', NULL, NULL, '18', '2023-08-22 07:18:14', NULL),
(53, '#ORDER-13491', 'Petra Edwards', 'qakofy@mailinator.com', '+1 (437) 198-8191', 'In vero iure dolore', 'Ut nemo culpa ut qui', NULL, NULL, '17', '2023-08-22 07:41:07', NULL),
(54, '#ORDER-23547', 'Nasim Warren', 'tibo@mailinator.com', '+1 (471) 379-8949', 'Ad optio aut eum Na', 'Est quam a veritatis', NULL, NULL, '17', '2023-08-22 13:13:21', NULL),
(55, '#ORDER-53473', 'Jayme Winters', 'qymevit@mailinator.com', '+1 (713) 772-1629', 'Aperiam pariatur Eu', 'Quia mollitia praese', NULL, NULL, '17', '2023-08-22 13:13:50', NULL),
(56, '#ORDER-48958', 'Kay Farrell', 'lebuqinuxu@mailinator.com', '+1 (359) 884-5775', 'Explicabo Et sequi', 'Non aliquid dolore v', NULL, NULL, 'KayFarrell-6976', '2023-08-22 13:22:52', NULL),
(57, '#ORDER-36714', 'Jackson Myers', 'juhyl@mailinator.com', '+1 (989) 946-3542', 'Perspiciatis quisqu', 'Vel natus blanditiis', NULL, NULL, '20', '2023-08-23 10:49:26', NULL),
(58, '#ORDER-15213', 'Melanie Hartman', 'pakomyp@mailinator.com', '+1 (964) 846-1656', 'Illum dolor rerum e', 'Aut tenetur est ea e', NULL, NULL, 'tupacod-fdf-4130', '2023-08-23 10:50:24', NULL),
(59, '#ORDER-37785', 'Colby Robinson', 'facexunih@mailinator.com', '+1 (544) 324-2818', 'Expedita tempor quae', 'Dolorem optio offic', NULL, NULL, 'gegyzov_vggg-3614', '2023-08-23 10:55:24', NULL),
(60, '#ORDER-68389', 'Elliott Lewis', 'bazit@mailinator.com', '+1 (421) 952-6696', 'Impedit placeat in', 'In magna distinctio', NULL, NULL, 'ElliottLewis-2397', '2023-08-24 06:56:40', NULL),
(61, '#ORDER-65718', 'Channing Hopkins', 'lahibeg@mailinator.com', '+1 (481) 664-3442', 'Assumenda officiis p', 'Aut facere voluptas', NULL, NULL, 'ChanningHopkins-5320', '2023-08-24 06:58:08', NULL),
(62, '#ORDER-36216', 'fahim', 'fahim@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'fahim-5307', '2023-08-24 07:21:11', NULL),
(63, '#ORDER-47758', 'fahim', 'fahim@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'fahim-3942', '2023-08-24 07:24:09', NULL),
(64, '#ORDER-45129', 'nur', 'nur@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, '23', '2023-08-24 07:52:52', NULL),
(65, '#ORDER-42538', 'nur', 'nur@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'nur-1620', '2023-08-24 09:57:37', NULL),
(66, '#ORDER-41671', 'Caesar', 'tulyqut@mailinator.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, '23', '2023-08-24 12:36:00', NULL),
(67, '#ORDER-80029', 'Caesar', 'hamim947@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-2478', '2023-08-24 13:34:13', NULL),
(68, '#ORDER-29528', 'Cullen Briggs', 'hamim.techweb@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'CullenBriggs-5836', '2023-08-26 05:21:40', NULL),
(69, '#ORDER-87774', 'Cullen Briggs', 'hamim.techweb@gmail.com', '015614595312', 'dhaka,bangladesh', 'gtgtfghf', NULL, NULL, 'CullenBriggs-3629', '2023-08-26 05:23:31', NULL),
(70, '#ORDER-11283', 'Piper Pace', 'mycoruty@mailinator.com', '+1 (594) 762-3563', 'Aut qui occaecat cul', 'Dolorem omnis omnis', NULL, NULL, '17', '2023-08-30 06:55:16', NULL),
(71, '#ORDER-72623', 'Lila Dudley', 'cobitudaqu@mailinator.com', '+1 (681) 718-3377', 'Sit error velit ea n', 'Voluptas sed illum', NULL, NULL, '17', '2023-08-30 07:17:50', NULL),
(72, '#ORDER-31716', 'Caesar', 'hamim@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-4109', '2023-09-02 07:44:34', NULL),
(73, '#ORDER-19199', 'Caesar', 'hamim@gmail.com', '015614595312', 'dhaka,bangladesh', NULL, NULL, NULL, 'Caesar-4446', '2023-09-02 07:47:19', NULL),
(74, '#ORDER-45771', 'Madison Mayo', 'quhoqaq@mailinator.com', '+1 (193) 646-7698', 'Cillum dolorum Nam v', 'Perferendis ullamco', '+1 (978) 744-5564', 'asdtf345dfr', NULL, '2023-09-02 13:07:54', NULL),
(75, '#ORDER-83171', 'Desirae Farmer', 'quhoqaq@mailinator.com', '+1 (336) 966-9961', 'Laboriosam dolor de', 'Officiis est dolor q', NULL, NULL, '26', '2023-09-02 13:38:57', NULL),
(76, '#ORDER-89501', 'Lani York', 'kusevof@mailinator.com', '+1 (617) 762-6601', 'Et repellendus Sint', 'Cumque voluptate ips', NULL, NULL, 'LaniYork-5925', '2023-09-03 09:53:41', NULL),
(77, '#ORDER-19852', 'Halla Rojas', 'kiwyqiw@mailinator.com', '+1 (924) 277-7079', 'Quae et commodi dolo', 'Laudantium iure fug', '+1 (233) 372-8386', 'asdtf345dfr', NULL, '2023-09-04 05:11:42', NULL),
(78, '#ORDER-75038', 'Francis Bradley', 'kiwyqiw@mailinator.com', '+1 (176) 971-9742', 'Deserunt ad fugiat a', 'Qui ut et deleniti e', NULL, NULL, '27', '2023-09-04 05:31:22', NULL),
(79, '#ORDER-54564', 'Derek Garrett', 'kiwyqiw@mailinator.com', '+1 (732) 729-3978', 'Adipisicing quam quo', 'Eiusmod omnis est ip', NULL, NULL, '27', '2023-09-04 06:49:02', NULL),
(80, '#ORDER-46146', 'Darryl Nash', 'hebut@mailinator.com', '+1 (594) 289-5212', 'Dolor perspiciatis', 'Nihil molestiae lore', NULL, NULL, 'DarrylNash-7147', '2023-09-21 05:31:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `added_by`, `created_at`, `updated_at`) VALUES
(2, 'Samsung', 'Samsung-9408.png', 19, '2023-05-16 09:57:33', '2023-05-16 10:12:26'),
(3, 'Canon', 'canon-7881.png', 19, '2023-05-16 10:19:22', NULL),
(4, 'Welch\'s', 'welch\'s-9066.png', 22, '2023-05-18 08:34:34', NULL),
(5, 'Hatil', 'hatil-5900.png', 26, '2023-05-21 11:52:11', NULL),
(6, 'loto', 'loto-5866.jpg', 3, '2023-08-14 07:58:00', '2023-08-14 07:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `color` int(11) DEFAULT 0,
  `size` int(11) DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `color`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 17, 7, 3, 7, 3, '2023-08-28 06:54:03', '2023-08-29 11:34:38'),
(2, 17, 4, 3, 0, 4, '2023-08-28 06:55:13', '2023-08-29 11:39:43'),
(4, 17, 8, 0, NULL, 1, '2023-08-28 09:01:46', '2023-08-29 11:39:43'),
(5, 17, 2, 3, 5, 2, '2023-08-29 10:39:44', '2023-08-29 11:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Fashion', 'Fashion-3330.jpg', 21, '2023-05-13 09:06:29', '2023-05-17 08:15:20'),
(2, 'Electronic', 'Electronics-2483.webp', 34, '2023-05-14 11:10:20', '2023-05-31 10:38:11'),
(3, 'Furniture', 'furniture-5370.jpg', 21, '2023-05-17 07:36:38', '2023-05-17 07:36:38'),
(4, 'Cooking', 'cooking-8517.jpg', 21, '2023-05-17 07:38:16', '2023-05-17 07:38:16'),
(5, 'Computer & Laptop', 'computer-&-laptop-6723.jpg', 21, '2023-05-17 07:39:40', '2023-05-17 07:39:40'),
(6, 'Healthy & Beauty', 'healthy-&-beauty-1053.jpg', 21, '2023-05-17 07:42:05', '2023-05-17 07:42:05'),
(7, 'Shoes & Boots', 'shoes-&-boots-5842.jpg', 21, '2023-05-17 07:43:07', '2023-05-17 07:43:07'),
(8, 'Travel & Outdoor', 'travel-&-outdoor-6158.jpg', 21, '2023-05-17 07:44:07', '2023-05-17 07:44:07'),
(9, 'Smart Phones', 'smart-phones-8636.webp', 21, '2023-05-17 07:44:47', '2023-05-17 07:44:47'),
(10, 'TV & Audio', 'tv-&-audio-2941.webp', 21, '2023-05-17 07:45:37', '2023-05-17 07:45:37'),
(11, 'jewellery', 'jewellery-2133.jpg', 21, '2023-05-17 07:47:53', '2023-05-17 07:47:53'),
(12, 'loto', 'loto-8397.webp', 3, '2023-08-14 07:54:04', '2023-08-14 07:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `created_at`, `updated_at`) VALUES
(2, 'Blue', '#0000FF', '2023-05-13 11:11:58', NULL),
(3, 'Red', '#FF0000', '2023-05-13 11:24:48', NULL),
(4, 'Purple', '#800080', '2023-05-14 11:40:57', NULL),
(5, 'Yellow', '#FFFF00', '2023-05-14 11:41:22', NULL),
(6, 'Black', '#000000', '2023-06-30 06:30:49', NULL),
(7, 'Green', '#00ff00', '2023-05-18 07:54:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactinfos`
--

CREATE TABLE `contactinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `contact_address` text DEFAULT NULL,
  `contact_info` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactinfos`
--

INSERT INTO `contactinfos` (`id`, `contact_name`, `contact_email`, `contact_number`, `contact_address`, `contact_info`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nugortech', 'Nugortech', '01303523442', 'House # 85/2, Road # 4, Mohommadia Housing Limited, Mohommadpur., Dhaka, Bangladesh', 'Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus\", metus.\"', 1, '2023-06-01 12:40:13', '2023-08-14 08:04:01'),
(3, 'Imani Cobb', 'gofox@mailinator.com', '629', 'Ipsum aut cumque no', 'A est totam fugit i', 0, '2023-06-01 13:22:03', '2023-06-01 13:26:10'),
(4, 'Avram Alexander', 'Avram Alexander', '716', 'Neque eligendi', 'Cum dolorem', 0, '2023-06-01 13:22:06', '2023-08-14 08:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Matthew Delacruz', 'silatuce@mailinator.com', '+1 (142) 938-5809', 'Qui doloribus velit', 1, '2023-06-01 11:54:03', '2023-08-14 08:04:25'),
(16, 'Clinton Munoz', 'lowicaf@mailinator.com', '+1 (832) 626-8776', 'Incidunt ea deserun', 1, '2023-06-01 13:57:19', '2023-09-10 05:42:44'),
(17, 'Mike Francis', 'no-replyOi@gmail.com', '89315258512', 'If you have a local business and want to rank it on google maps in a specific area then this service is for you. \r\n \r\nGoogle Map Stacking is one of the best ways to rank your GMB in a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Francis\r\n \r\n \r\nPS: Want an all in one Local Plan that includes everything? \r\nhttps://www.speed-seo.net/product/local-seo-package/', 0, '2023-06-16 02:22:30', NULL),
(18, 'Mike Kendal', 'no-replyOi@gmail.com', '84851896564', 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\nThanks and regards \r\nMike Kendal', 0, '2023-06-26 11:54:28', NULL),
(19, 'Mike Hoggarth', 'mikeOi@gmail.com', '81439931817', 'Hi there \r\n \r\nThis is Mike Hoggarth\r\n \r\nLet me present you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your nugortechit.xyz SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Hoggarth\r\n \r\nmike@strictlydigital.net', 0, '2023-07-07 18:42:24', NULL),
(20, 'Mike Nyman', 'mikeMarylotaForecell@gmail.com', '87563734237', 'If you are looking to rank your local business on Google Maps in a specific area, this service is for you. \r\n \r\nGoogle Map Stacking is a highly effective technique for ranking your GMB within a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Nyman\r\n \r\n \r\nPS: Want a comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/', 1, '2023-07-17 04:30:55', '2023-08-20 12:26:58'),
(21, 'Mike Hill', 'miketutaginny@gmail.com', '89165375539', 'Hi there \r\n \r\nJust checked your nugortechit.xyz backlink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\n \r\nRegards \r\nMike Hill\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/', 1, '2023-07-22 18:52:04', '2023-08-20 12:27:02'),
(22, 'Mike Morrison', 'mikeseepadedge@gmail.com', '84851742996', 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\nThanks and regards \r\nMike Morrison', 0, '2023-07-24 12:52:37', NULL),
(23, 'Mike Backer', 'mikecolverne@gmail.com', '84419118553', 'Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat\'s right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Backer\r\n \r\nMonkey Digital', 0, '2023-07-25 16:34:22', NULL),
(24, 'Peter Baker', 'peterPeks@gmail.com', '84297773637', 'Hello nugortechit.xyz Owner. \r\n \r\nAre you looking to boost your business’ visibility on the internet as well as reach even more prospective clients? Being included in Google Autocomplete can enhance your company\'s branding, reputation, as well as targeting, causing boosted website web traffic as well as revenue. \r\n \r\nPlease go here https://www.digital-x-press.com/autosuggest/ to find how your business can take advantage of Google Autocomplete and enhance your sales potential. \r\n \r\n \r\nThank you \r\n \r\nPeter Baker\r\nDigital X Press SEO Agency', 1, '2023-07-29 18:59:45', '2023-08-20 12:26:46'),
(25, 'Mike White', 'mikeOi@gmail.com', '83185424313', 'Greetings \r\n \r\nThis is Mike White\r\n \r\nLet me show you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your nugortechit.xyz SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike White\r\n \r\nmike@strictlydigital.net', 1, '2023-08-01 16:06:47', '2023-08-20 12:26:48'),
(26, 'Mike Moore', 'mikeMarylotaForecell@gmail.com', '84227821238', 'If you are looking to rank your local business on Google Maps in a specific area, this service is for you. \r\n \r\nGoogle Map Stacking is a highly effective technique for ranking your GMB within a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Moore\r\n \r\n \r\nPS: Want a comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/', 0, '2023-08-07 16:10:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `validity` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_amount`, `validity`, `created_at`, `updated_at`) VALUES
(1, 'summer', 50, '2023-09-30', '2023-05-27 06:40:14', '2023-05-31 10:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `customer_auths`
--

CREATE TABLE `customer_auths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_auths`
--

INSERT INTO `customer_auths` (`id`, `name`, `email`, `password`, `image`, `country`, `address`, `details`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'tofofi', 'dulylafoxo@mailinator.com', '$2y$10$t8f/G0XRI2njyfY0bPqagOBjJ5r.kw.1CZg6Idm934ueQV6nTN5VK', NULL, NULL, NULL, NULL, NULL, '2023-05-18 13:16:28', '2023-05-18 13:16:28'),
(2, 'sar', 'sar@mailinator.com', '$2y$10$VPblfH2ZfR9ASNxyNJz1s.28rWgnaJMfCVVihHJMf1RzXy2PFoSUO', NULL, NULL, NULL, NULL, NULL, '2023-05-18 13:17:39', '2023-05-18 13:17:39'),
(3, 'jysisyxura', 'xeniqekaqy@mailinator.com', '$2y$10$9V5d6KnLfmpllIe9ekJ95etqjLSbQc/UlZ0Dpf1VBXy2XwckL7Pja', NULL, NULL, NULL, NULL, NULL, '2023-05-23 10:02:31', '2023-05-23 10:02:32'),
(4, 'zywocukac', 'zeqo@mailinator.com', '$2y$10$/FSgERlYaiwVsXWMc7LynO3AibBbBl/PDWkotckbip9Br2TNPFOkW', NULL, NULL, NULL, NULL, NULL, '2023-05-23 10:09:35', '2023-05-23 10:09:35'),
(5, 'pop', 'pop@gmail.com', '$2y$10$D.6i6ETdeE.ZdQPo.fzQo.ni56XL1/zBMPXKeSswY8el0t3z7wEyW', NULL, NULL, NULL, NULL, NULL, '2023-05-23 10:19:17', '2023-05-23 10:19:17'),
(6, 'weqymosy', 'suherumon@mailinator.com', '$2y$10$JjzmszqOR.XfcAOFd4SPWeq2DzSDv8ZoW.1m148rhaptyrNSffiLi', NULL, NULL, NULL, NULL, NULL, '2023-05-25 05:19:49', '2023-05-25 05:19:49'),
(7, 'pifyr', 'zytaqeta@mailinator.com', '$2y$10$EqtQrUuC0LXHJ4vRBrl9vOLOIlJOvAk6i7.1moekcFvQNQQPiqp3K', NULL, NULL, NULL, NULL, NULL, '2023-05-25 05:20:14', '2023-05-25 05:20:14'),
(8, 'lusez', 'rijadynewy@mailinator.com', '$2y$10$5Mk03UwVvnV/VvPCjPkVdOaXNjeEX.NyIySFvEuZRGPdEt0UhcrV6', NULL, NULL, NULL, NULL, NULL, '2023-05-25 05:32:28', '2023-05-25 05:32:28'),
(9, 'dar', 'dar@gmail.com', '$2y$10$6mXCz1UAEesv/FRQhozP9uWMlggsBJwq8g.C/3ZZXHy.qRyM0Mpt.', NULL, NULL, NULL, NULL, NULL, '2023-05-25 10:09:01', '2023-05-25 10:09:01'),
(10, 'fdf', 'fdf@gmail.com', '$2y$10$HWc0UaT1Yc6VC/NE7ungw.I/RltUoyDG07Jo3M2boAd7enwPFG/lK', NULL, NULL, NULL, NULL, NULL, '2023-05-25 10:14:29', '2023-05-25 10:14:29'),
(11, 'fetiny', 'vurori@mailinator.com', '$2y$10$g8WZgktgj3twhWVw0Tb9yuCripkUsTxkktY9mcetNuQ6jO16/WKri', NULL, NULL, NULL, NULL, NULL, '2023-05-25 11:18:12', '2023-05-25 11:18:12'),
(12, 'narar', 'xuxatyriku@mailinator.com', '$2y$10$m8552ZcJBUmQ7mrVKjHFwekLRpIRPkYcMgIdC.6eix60GKF4bvNGC', NULL, NULL, NULL, NULL, NULL, '2023-05-27 05:30:59', '2023-05-27 05:30:59'),
(13, 'vahicugo', 'xebytiq@mailinator.com', '$2y$10$x99nTw0in6YhOKBiWoaH2.fORYQ3lPailbPG4zsaxnCdGonhWtHzG', NULL, NULL, NULL, NULL, NULL, '2023-05-31 09:42:25', '2023-05-31 09:42:25'),
(14, 'sehogal', 'dypirigu@mailinator.com', '$2y$10$OxYsbQgZGtV6Wuio8iMfFOEARdyRzWtkpbROxsXXSgNogDmV3SAwG', NULL, NULL, NULL, NULL, NULL, '2023-05-31 09:42:34', '2023-05-31 09:42:34'),
(15, 'sofulew', 'cotumixo@mailinator.com', '$2y$10$zbJxJSdJDoSSvJzjtq6mo.SKH4oQRbTXhoLpvVPBNACIjS5qm.zou', NULL, NULL, NULL, NULL, NULL, '2023-05-31 13:39:15', '2023-05-31 13:39:16'),
(16, 'hajof', 'wuziri@mailinator.com', '$2y$10$kRfcb89eyJa85XlavcCxXOo4GZOeoYCTmSc5ZhRaBdz8Wl8NHZiu.', '16.png', NULL, '5877, Dhaka, Bangladesh', NULL, NULL, '2023-06-01 06:06:58', '2023-06-01 07:12:06'),
(17, 'lytufaru', 'hamim@gmail.com', '$2y$10$q84tyCS7zzhm6hb64YmY1eb6Cm/ROM4uy4d9tm/Nthg98YBfg2Hg6', NULL, NULL, NULL, NULL, NULL, '2023-08-14 09:59:05', '2023-08-14 09:59:05'),
(18, 'fupagyv', 'tetejawoko@mailinator.com', '$2y$10$jmSXifDNBd36r0qi.xjwoO7ra0vm8sluwyX5rZCy2M3tEYyohDA7S', NULL, NULL, NULL, NULL, NULL, '2023-08-22 06:11:07', '2023-08-22 06:11:07'),
(19, 'C-zotaniqyse-tgffd-2063', 'typoh@mailinator.com', '$2y$10$JTzkP6eXcGxpE/lvAzmJWeKxRLGYZG0X.s.8bS/TpLMu5TUrq9Zre', NULL, NULL, NULL, NULL, NULL, '2023-08-23 10:42:56', '2023-08-23 10:42:56'),
(20, 'tupacod-fdf-4130', 'jifukukywy@mailinator.com', '$2y$10$LEKRCsT1mF5D0.5WmF29LOuC.Vw3b8ZulZzU7I0GhiSAejv076FP2', NULL, NULL, NULL, NULL, NULL, '2023-08-23 10:44:10', '2023-08-23 10:44:10'),
(21, 'gegyzov_vggg-3614', 'zaci@mailinator.com', '$2y$10$7FwcnEYC0c3gzPf90hlBKuTOv6CjpVp/4cFv2tqhBpufnPcrBiPqS', NULL, NULL, NULL, NULL, NULL, '2023-08-23 10:54:25', '2023-08-23 10:54:26'),
(22, 'fahim-3942', 'fahim@gmail.com', '$2y$10$Ncaly7OI.OqhK7yl90kzZuylu4NwhlChCV0gw1ZKEnlyMyV9u6CDq', NULL, NULL, NULL, NULL, NULL, '2023-08-24 07:21:37', '2023-08-24 07:21:37'),
(23, 'nur', 'nur@gmail.com', '$2y$10$fgyrQws9m5TqF0j.T.Zb5.AJKeFTnwY2uiq5uMoY/U4U/jtlTx2Ji', NULL, NULL, NULL, NULL, NULL, '2023-08-24 07:50:56', '2023-08-24 07:50:56'),
(24, 'xujuw', 'hamim947@gmail.com', '$2y$10$MBNNbNjItFaTY/9fF5qO6egM6IIx5l5RhXCKFmqqkCOxAh0CpI6q2', NULL, NULL, NULL, NULL, NULL, '2023-08-24 13:34:35', '2023-08-24 13:34:35'),
(25, 'lajetehub', 'hamim.techweb@gmail.com', '$2y$10$mqjfIvBFY/8Vcmnw8wnAuexu3I9KH9XxuCdBosnd8/LpD4UPDW9/O', NULL, NULL, NULL, NULL, NULL, '2023-08-26 05:24:45', '2023-08-26 05:24:45'),
(26, 'wikagalebi', 'quhoqaq@mailinator.com', '$2y$10$vborABgs7JrxP0E.C1FbPevQvuRIMTxVkvUCDsJdEOEQ5hFhAwcjK', NULL, NULL, NULL, NULL, NULL, '2023-09-02 13:37:35', '2023-09-02 13:37:35'),
(27, 'kojob', 'kiwyqiw@mailinator.com', '$2y$10$X9kSk3ZK47oLp2sLtUfMFub.fqWxRHo676uHQOzz8ml/MFbXdJ2z2', NULL, NULL, NULL, NULL, NULL, '2023-09-04 05:12:02', '2023-09-04 05:12:02'),
(28, 'behama', 'hebut@mailinator.com', '$2y$10$X5l/S4ynEaxx75UXpjkeTuHR.HJGVW5ieLm2xrSiWSbg1MFehyURe', NULL, NULL, NULL, NULL, NULL, '2023-09-21 07:03:03', '2023-09-21 07:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `added_by`, `sku`, `color_id`, `size_id`, `quantity`, `product_id`, `created_at`, `updated_at`) VALUES
(74, 22, 'ZU49VOR', 3, 0, 80, 4, '2023-05-20 13:18:42', '2023-09-04 05:31:23'),
(79, 22, 'ERE398', 7, 2, 71, 3, '2023-05-27 07:07:32', '2023-09-02 13:07:54'),
(80, 22, 'ERE399', 7, 5, 100, 3, '2023-05-27 07:07:32', '2023-05-27 07:07:32'),
(110, 26, 'HA345d', 3, 7, 53, 7, '2023-05-30 06:07:32', '2023-09-21 05:31:53'),
(111, 26, 'HA432s', 6, 7, 85, 7, '2023-05-30 06:07:32', '2023-08-24 09:57:37'),
(112, 26, 'CM34ed', 0, 2, 77, 8, '2023-05-30 06:07:49', '2023-08-14 12:46:14'),
(113, 26, 'CM34ee', 0, 7, 90, 8, '2023-05-30 06:07:49', '2023-05-30 06:07:49'),
(114, 26, 'CM34ef', 0, 0, 38, 8, '2023-05-30 06:07:49', '2023-09-02 07:47:19'),
(119, 20, 'SAR333', 3, 2, 64, 1, '2023-06-01 13:56:15', '2023-08-22 07:18:14'),
(120, 20, 'SAR234', 2, 0, 83, 1, '2023-06-01 13:56:15', '2023-09-02 13:38:57'),
(121, 20, 'SAR45x', 3, 5, 72, 2, '2023-06-01 13:56:15', '2023-09-04 05:31:23'),
(122, 20, 'SAR3r4', 7, 5, 75, 1, '2023-06-01 13:56:15', '2023-06-01 13:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `login_counts`
--

CREATE TABLE `login_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `login_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_counts`
--

INSERT INTO `login_counts` (`id`, `user_id`, `login_count`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2023-08-20 12:17:36', '2023-08-20 12:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_05_13_113851_create_categories_table', 2),
(12, '2023_05_13_154331_create_colors_table', 3),
(13, '2023_05_13_173127_create_sizes_table', 4),
(19, '2023_05_13_185616_create_products_table', 5),
(20, '2023_05_14_184358_create_inventories_table', 5),
(22, '2023_05_14_194630_create_product_galleries_table', 6),
(23, '2023_05_16_131827_create_timers_table', 7),
(24, '2023_05_16_145737_create_brands_table', 7),
(28, '2023_05_16_185429_create_products_table', 8),
(30, '2023_05_18_125126_create_permission_tables', 9),
(32, '2023_05_18_183100_create_customer_auths_table', 10),
(53, '2023_05_20_182121_create_carts_table', 11),
(54, '2023_05_23_181219_create_orders_table', 11),
(55, '2023_05_23_190352_create_billingdetails_table', 11),
(56, '2023_05_23_191412_create_order_products_table', 11),
(57, '2023_05_23_192245_create_coupons_table', 11),
(59, '2023_06_01_134410_create_contacts_table', 12),
(63, '2023_06_01_181301_create_contactinfos_table', 13),
(64, '2023_08_20_115205_create_banners_table', 14),
(65, '2023_08_20_174130_create_login_counts_table', 15),
(66, '2023_09_10_115350_create_terms_conditions_table', 16),
(67, '2023_09_10_164037_create_privacy_policies_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `coupon_price` int(11) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `product_id`, `quantity`, `color_id`, `size_id`, `price`, `coupon_price`, `charge`, `status`, `created_at`, `updated_at`) VALUES
(1, '#ORDER-63059', 'RonanVillarreal-5429', 4, 2, 3, 0, 105, NULL, NULL, 1, '2023-05-28 06:08:39', '2023-08-24 09:26:19'),
(2, '#ORDER-63059', 'RonanVillarreal-9747', 1, 3, 3, 3, 715, NULL, NULL, 1, '2023-05-28 06:08:39', '2023-08-24 09:26:19'),
(3, '#ORDER-22098', 'NeroHopkins-7094', 1, 1, 3, 2, 715, NULL, NULL, 1, '2023-05-29 10:18:30', '2023-08-28 06:37:12'),
(4, '#ORDER-22098', 'NeroHopkins-2084', 4, 3, 3, 0, 105, NULL, NULL, 1, '2023-05-29 10:18:30', '2023-08-28 06:37:12'),
(5, '#ORDER-98036', 'JacobVillarreal-4338', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-05-31 10:00:47', '2023-05-31 10:00:47'),
(6, '#ORDER-91018', 'HyattBenton-4505', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-05-31 10:43:59', '2023-05-31 10:43:59'),
(7, '#ORDER-91018', 'HyattBenton-2886', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 10:43:59', '2023-05-31 10:43:59'),
(8, '#ORDER-33889', 'HollySawyer-1417', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-05-31 10:46:12', '2023-05-31 10:46:12'),
(9, '#ORDER-33889', 'HollySawyer-9491', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 10:46:12', '2023-05-31 10:46:12'),
(10, '#ORDER-60686', 'AstraCraft-4656', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-05-31 10:47:22', '2023-05-31 10:47:22'),
(11, '#ORDER-60686', 'AstraCraft-7215', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 10:47:22', '2023-05-31 10:47:22'),
(12, '#ORDER-48446', 'ArmandKnapp-9730', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-05-31 11:03:36', '2023-05-31 11:03:36'),
(13, '#ORDER-48446', 'ArmandKnapp-2352', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 11:03:36', '2023-05-31 11:03:36'),
(14, '#ORDER-87836', 'DemetriusJacobson-9518', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-05-31 11:08:01', '2023-05-31 11:08:01'),
(15, '#ORDER-87836', 'DemetriusJacobson-9126', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 11:08:01', '2023-05-31 11:08:01'),
(16, '#ORDER-98827', 'ShaeleighByrd-6135', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-05-31 11:24:01', '2023-05-31 11:24:01'),
(17, '#ORDER-98827', 'ShaeleighByrd-9275', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 11:24:02', '2023-05-31 11:24:02'),
(19, '#ORDER-46213', 'EltonHayes-9336', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 12:05:02', '2023-05-31 12:05:02'),
(25, '#ORDER-73594', 'GalvinMcdowell-6546', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 12:23:11', '2023-05-31 12:23:12'),
(26, '#ORDER-48936', '15', 1, 1, 0, 0, 715, NULL, NULL, 0, '2023-05-31 13:49:46', '2023-05-31 13:49:46'),
(27, '#ORDER-65094', '15', 1, 1, 2, 0, 715, NULL, NULL, 0, '2023-05-31 13:51:27', '2023-05-31 13:51:27'),
(28, '#ORDER-21325', '15', 1, 1, 3, 2, 715, NULL, NULL, 0, '2023-05-31 13:52:34', '2023-05-31 13:52:34'),
(29, '#ORDER-31454', 'hamim-5198', 8, 5, 6, 2, 17000, NULL, NULL, 2, '2023-07-12 12:46:14', '2023-09-21 06:46:15'),
(30, '#ORDER-45379', 'Caesar-9526', 7, 3, 3, 7, 12750, NULL, NULL, 0, '2023-07-20 06:53:35', '2023-08-17 06:53:36'),
(31, '#ORDER-99667', 'JacobFaulkner-1213', 8, 1, NULL, NULL, 17000, NULL, NULL, 4, '2023-07-19 10:44:36', '2023-08-24 09:23:48'),
(32, '#ORDER-99667', 'JacobFaulkner-7915', 7, 3, NULL, NULL, 12750, NULL, NULL, 4, '2023-07-19 10:44:36', '2023-08-24 09:23:48'),
(33, '#ORDER-33849', 'JamalHoover-2301', 8, 1, NULL, NULL, 17000, NULL, NULL, 0, '2023-07-19 10:45:41', '2023-08-17 10:45:41'),
(34, '#ORDER-33849', 'JamalHoover-6549', 7, 3, NULL, NULL, 12750, NULL, NULL, 0, '2023-07-18 10:45:41', '2023-08-17 10:45:41'),
(35, '#ORDER-15962', 'CullenBriggs-2617', 8, 2, 0, NULL, 17000, NULL, NULL, 0, '2023-07-11 10:47:48', '2023-08-17 10:47:49'),
(36, '#ORDER-60299', 'Caesar-7872', 8, 2, 0, NULL, 17000, NULL, NULL, 0, '2023-07-12 10:53:52', '2023-08-17 10:53:52'),
(37, '#ORDER-60299', 'Caesar-5117', 7, 2, 3, 7, 12750, NULL, NULL, 0, '2023-07-12 10:53:52', '2023-08-17 10:53:52'),
(38, '#ORDER-68573', 'OceanBarber-3795', 8, 2, 0, NULL, 17000, NULL, NULL, 0, '2023-07-19 11:34:12', '2023-08-17 11:34:12'),
(39, '#ORDER-68573', 'OceanBarber-6816', 7, 2, NULL, NULL, 12750, NULL, NULL, 0, '2023-07-19 11:34:12', '2023-08-17 11:34:12'),
(40, '#ORDER-44449', 'Caesar-8651', 3, 2, 7, 2, 120, NULL, NULL, 0, '2023-08-17 11:34:59', '2023-08-17 11:34:59'),
(41, '#ORDER-32000', 'LeighBerg-3007', 3, 2, 7, 2, 120, NULL, NULL, 1, '2023-08-17 11:49:34', '2023-08-17 11:49:34'),
(42, '#ORDER-32000', 'LeighBerg-9946', 8, 2, 0, NULL, 17000, NULL, NULL, 0, '2023-08-17 11:49:34', '2023-08-17 11:49:34'),
(43, '#ORDER-92785', '1', 7, 1, NULL, NULL, 12750, NULL, NULL, 0, '2023-08-13 12:52:58', '2023-08-17 12:52:58'),
(44, '#ORDER-52617', 'VanceTrevino-5847', 3, 2, 7, 2, 120, NULL, NULL, 0, '2023-08-22 06:06:38', '2023-08-22 06:06:38'),
(46, '#ORDER-40081', '18', 7, 5, 3, 7, 12750, NULL, NULL, 0, '2023-08-22 06:11:50', '2023-08-22 06:11:50'),
(47, '#ORDER-88471', '18', 2, 1, 3, 5, 1200, NULL, NULL, 0, '2023-08-22 06:37:18', '2023-08-22 06:37:18'),
(48, '#ORDER-45061', '18', 7, 1, 3, 7, 12750, NULL, NULL, 0, '2023-08-22 06:50:05', '2023-08-22 06:50:05'),
(49, '#ORDER-24050', '18', 7, 2, 3, 7, 12750, NULL, NULL, 0, '2023-08-22 06:53:44', '2023-08-22 06:53:44'),
(50, '#ORDER-36269', '18', 4, 1, 3, 0, 105, NULL, NULL, 0, '2023-08-22 06:56:05', '2023-08-22 06:56:05'),
(51, '#ORDER-54107', '18', 3, 1, 7, 2, 120, NULL, NULL, 0, '2023-08-22 06:58:07', '2023-08-22 06:58:07'),
(52, '#ORDER-86827', '18', 4, 1, 3, 0, 105, NULL, NULL, 0, '2023-08-22 07:00:11', '2023-08-22 07:00:11'),
(53, '#ORDER-93523', '18', 3, 1, 7, 2, 120, NULL, NULL, 0, '2023-08-22 07:01:37', '2023-08-22 07:01:37'),
(54, '#ORDER-13519', '18', 3, 1, 7, 2, 120, NULL, NULL, 4, '2023-08-22 07:02:33', '2023-08-24 06:46:49'),
(55, '#ORDER-83799', '18', 4, 1, 3, 0, 105, NULL, NULL, 0, '2023-08-22 07:03:04', '2023-08-22 07:03:04'),
(56, '#ORDER-37225', '18', 7, 1, 3, 7, 12750, NULL, NULL, 0, '2023-08-22 07:05:26', '2023-08-22 07:05:26'),
(57, '#ORDER-30225', '18', 1, 1, 2, 0, 2140, NULL, NULL, 0, '2023-08-22 07:08:38', '2023-08-22 07:08:38'),
(58, '#ORDER-47170', '18', 8, 1, 0, NULL, 17000, NULL, NULL, 0, '2023-08-22 07:11:31', '2023-08-22 07:11:31'),
(59, '#ORDER-93727', '18', 8, 1, 0, NULL, 17000, NULL, NULL, 0, '2023-08-22 07:17:22', '2023-08-22 07:17:22'),
(60, '#ORDER-21014', '18', 1, 1, 3, 2, 2140, NULL, NULL, 0, '2023-08-22 07:18:14', '2023-08-22 07:18:14'),
(62, '#ORDER-23547', '17', 7, 2, 3, 7, 12750, NULL, NULL, 0, '2023-08-22 13:13:21', '2023-08-22 13:13:21'),
(63, '#ORDER-53473', '17', 3, 2, 7, 2, 120, NULL, NULL, 0, '2023-08-22 13:13:50', '2023-08-22 13:13:50'),
(64, '#ORDER-48958', 'KayFarrell-3136', 2, 3, 3, 5, 1200, NULL, NULL, 0, '2023-08-22 13:22:52', '2023-08-22 13:22:52'),
(65, '#ORDER-36714', '20', 7, 3, 3, 7, 12750, NULL, NULL, 0, '2023-08-23 10:49:26', '2023-08-23 10:49:26'),
(66, '#ORDER-15213', '20', 7, 1, 3, 7, 12750, NULL, NULL, 0, '2023-08-23 10:50:24', '2023-08-23 10:50:24'),
(67, '#ORDER-37785', 'gegyzov_vggg-3614', 7, 2, 3, 7, 12750, NULL, NULL, 0, '2023-08-23 10:55:24', '2023-08-23 10:55:24'),
(68, '#ORDER-68389', 'ElliottLewis-3008', 8, 1, 0, 0, 17000, NULL, NULL, 0, '2023-08-24 06:56:40', '2023-08-24 06:56:40'),
(69, '#ORDER-68389', 'ElliottLewis-1369', 2, 2, NULL, NULL, 1200, NULL, NULL, 0, '2023-08-24 06:56:40', '2023-08-24 06:56:40'),
(70, '#ORDER-65718', 'ChanningHopkins-4722', 4, 4, NULL, NULL, 105, NULL, NULL, 0, '2023-08-24 06:58:08', '2023-08-24 06:58:08'),
(71, '#ORDER-36216', 'fahim-5099', 4, 1, NULL, NULL, 105, NULL, NULL, 0, '2023-08-24 07:21:11', '2023-08-24 07:21:11'),
(72, '#ORDER-36216', 'fahim-1474', 2, 2, NULL, NULL, 1200, NULL, NULL, 0, '2023-08-24 07:21:11', '2023-08-24 07:21:11'),
(73, '#ORDER-47758', 'fahim-3942', 1, 2, 2, 0, 2140, NULL, NULL, 0, '2023-08-24 07:24:09', '2023-08-24 07:24:09'),
(74, '#ORDER-45129', '23', 4, 1, NULL, NULL, 105, NULL, NULL, 0, '2023-08-24 07:52:52', '2023-08-24 07:52:52'),
(75, '#ORDER-42538', 'nur-1305', 7, 5, 6, 7, 12750, NULL, NULL, 0, '2023-08-24 09:57:37', '2023-08-24 09:57:37'),
(76, '#ORDER-41671', '23', 7, 8, 3, 3, 12750, NULL, NULL, 0, '2023-08-24 12:36:00', '2023-08-24 12:36:00'),
(77, '#ORDER-41671', '23', 8, 2, 0, NULL, 17000, NULL, NULL, 0, '2023-08-24 12:36:00', '2023-08-24 12:36:00'),
(78, '#ORDER-80029', 'Caesar-6543', 4, 3, 3, 0, 105, NULL, NULL, 0, '2023-08-24 13:34:13', '2023-08-24 13:34:13'),
(79, '#ORDER-29528', 'CullenBriggs-2455', 4, 2, 3, 0, 105, NULL, NULL, 0, '2023-08-26 05:21:40', '2023-08-26 05:21:40'),
(80, '#ORDER-87774', 'CullenBriggs-3042', 4, 2, 3, 0, 105, NULL, NULL, 0, '2023-08-26 05:23:31', '2023-08-26 05:23:31'),
(81, '#ORDER-87774', 'CullenBriggs-6103', 3, 3, 7, 2, 120, NULL, NULL, 0, '2023-08-26 05:23:31', '2023-08-26 05:23:31'),
(82, '#ORDER-31716', 'Caesar-2286', 7, 5, NULL, NULL, 12750, NULL, NULL, 3, '2023-09-02 07:44:34', '2023-09-02 07:51:29'),
(84, '#ORDER-45771', NULL, 3, 1, 7, 2, 120, NULL, NULL, 4, '2023-09-02 13:07:54', '2023-09-02 13:10:56'),
(85, '#ORDER-45771', NULL, 4, 1, 3, 0, 105, NULL, NULL, 4, '2023-09-02 13:07:54', '2023-09-02 13:10:56'),
(86, '#ORDER-83171', '26', 1, 3, 2, 0, 2140, NULL, NULL, 0, '2023-09-02 13:38:57', '2023-09-02 13:38:57'),
(87, '#ORDER-83171', '26', 2, 3, 3, 5, 1200, NULL, NULL, 0, '2023-09-02 13:38:57', '2023-09-02 13:38:57'),
(88, '#ORDER-89501', 'LaniYork-9426', 7, 3, 3, 7, 12750, NULL, NULL, 0, '2023-09-03 09:53:41', '2023-09-03 09:53:41'),
(89, '#ORDER-19852', NULL, 3, 4, 7, 7, 120, NULL, NULL, 0, '2023-09-04 05:11:42', '2023-09-04 05:11:42'),
(90, '#ORDER-75038', '27', 4, 2, 3, 0, 105, NULL, NULL, 0, '2023-09-04 05:31:22', '2023-09-04 05:31:23'),
(91, '#ORDER-75038', '27', 2, 1, 3, 5, 1200, NULL, NULL, 0, '2023-09-04 05:31:23', '2023-09-04 05:31:23'),
(92, '#ORDER-54564', '27', 1, 4, 3, 3, 2140, 50, 200, 0, '2023-09-04 06:49:02', '2023-09-04 06:49:02'),
(93, '#ORDER-46146', 'DarrylNash-7693', 7, 2, 3, 7, 12750, NULL, NULL, 1, '2023-09-21 05:31:53', '2023-09-21 06:43:13'),
(94, '#ORDER-46146', 'DarrylNash-5349', 8, 4, 0, NULL, 17000, NULL, NULL, 1, '2023-09-21 05:31:53', '2023-09-21 06:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `tran_number` varchar(255) DEFAULT NULL,
  `tran_id` varchar(255) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `coupon_price` varchar(255) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `customer_id`, `tran_number`, `tran_id`, `charge`, `coupon_price`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(1, '#ORDER-63059', 'RonanVillarreal-9823', NULL, NULL, 100, '50', 1, 0, '2023-05-28 06:08:39', NULL),
(2, '#ORDER-22098', 'NeroHopkins-8473', NULL, NULL, 100, '0', 1, 0, '2023-05-29 10:18:30', NULL),
(3, '#ORDER-98036', 'JacobVillarreal-1293', NULL, NULL, 100, '0', 1, 0, '2023-05-31 10:00:47', NULL),
(4, '#ORDER-91018', 'HyattBenton-9959', NULL, NULL, 100, '0', 1, 0, '2023-05-31 10:43:59', NULL),
(5, '#ORDER-33889', 'HollySawyer-5199', NULL, NULL, 0, '0', 1, 0, '2023-05-31 10:46:12', NULL),
(6, '#ORDER-60686', 'AstraCraft-9876', NULL, NULL, 0, '0', 1, 0, '2023-05-31 10:47:22', NULL),
(7, '#ORDER-48446', 'ArmandKnapp-1313', NULL, NULL, 0, '0', 1, 0, '2023-05-31 11:03:36', NULL),
(8, '#ORDER-87836', 'DemetriusJacobson-2318', NULL, NULL, 0, '0', 1, 0, '2023-05-31 11:08:01', NULL),
(9, '#ORDER-98827', 'ShaeleighByrd-6679', NULL, NULL, 0, '0', 1, 0, '2023-05-31 11:24:01', NULL),
(10, '#ORDER-30737', NULL, NULL, NULL, 0, '0', 2, 0, '2023-05-31 12:01:50', NULL),
(11, '#ORDER-46213', 'EltonHayes-2393', NULL, NULL, 0, '0', 1, 0, '2023-05-31 12:05:02', NULL),
(12, '#ORDER-35820', NULL, '+1 (249) 916-7172', 'Perspiciatis aute n', 0, '0', 2, 0, '2023-05-31 12:05:28', NULL),
(13, '#ORDER-10071', NULL, '+1 (969) 557-3237', 'Voluptate porro dolo', 0, '0', 2, 0, '2023-05-31 12:08:16', NULL),
(14, '#ORDER-49542', NULL, '+1 (372) 309-8099', 'Distinctio Iusto co', 0, '0', 2, 0, '2023-05-31 12:10:36', NULL),
(15, '#ORDER-58582', NULL, '+1 (551) 918-3982', 'Sunt sunt quia sunt', 0, '0', 2, 0, '2023-05-31 12:13:18', NULL),
(16, '#ORDER-27657', NULL, '+1 (108) 399-9558', 'Iste nisi sit dolore', 0, '0', 2, 0, '2023-05-31 12:14:20', NULL),
(17, '#ORDER-73594', 'GalvinMcdowell-1483', NULL, NULL, 0, '0', 1, 0, '2023-05-31 12:23:11', NULL),
(18, '#ORDER-48936', '15', '+1 (168) 564-6119', 'Aute voluptate aliqu', 100, '0', 2, 0, '2023-05-31 13:49:46', NULL),
(19, '#ORDER-65094', '15', NULL, NULL, 0, '0', 1, 0, '2023-05-31 13:51:27', NULL),
(20, '#ORDER-21325', '15', NULL, NULL, 0, '0', 1, 0, '2023-05-31 13:52:34', NULL),
(21, '#ORDER-31454', 'hamim-7029', NULL, NULL, 0, '0', 1, 2, '2023-08-14 12:46:14', '2023-09-21 06:46:15'),
(22, '#ORDER-45379', 'Caesar-4136', NULL, NULL, 100, '0', 1, 0, '2023-08-17 06:53:35', NULL),
(23, '#ORDER-31380', 'hah-1524', NULL, NULL, 100, '0', 1, 0, '2023-08-17 10:20:13', NULL),
(24, '#ORDER-59470', 'XenosIrwin-7002', NULL, NULL, 0, '0', 1, 0, '2023-08-17 10:27:22', NULL),
(25, '#ORDER-59250', 'YoshioHayden-1772', NULL, NULL, 0, '0', 1, 0, '2023-08-17 10:28:23', NULL),
(26, '#ORDER-32955', 'Caesar-3505', NULL, NULL, 100, '0', 1, 0, '2023-08-17 10:36:23', NULL),
(27, '#ORDER-21819', 'Caesar-8113', NULL, NULL, 100, '0', 1, 0, '2023-08-17 10:36:50', NULL),
(28, '#ORDER-99667', 'JacobFaulkner-3070', NULL, NULL, 100, '0', 1, 0, '2023-08-17 10:44:36', NULL),
(29, '#ORDER-33849', 'JamalHoover-1774', NULL, NULL, 100, '0', 1, 0, '2023-08-17 10:45:41', NULL),
(30, '#ORDER-15962', 'CullenBriggs-3731', NULL, NULL, 200, '0', 1, 0, '2023-08-17 10:47:48', NULL),
(31, '#ORDER-60299', 'Caesar-4007', NULL, NULL, 100, '0', 1, 0, '2023-08-17 10:53:52', NULL),
(32, '#ORDER-68573', 'OceanBarber-3339', NULL, NULL, 200, '0', 1, 0, '2023-08-17 11:34:12', NULL),
(33, '#ORDER-44449', 'Caesar-9749', NULL, NULL, 0, '0', 1, 0, '2023-08-17 11:34:59', NULL),
(34, '#ORDER-32000', 'LeighBerg-5718', NULL, NULL, 0, '0', 1, 0, '2023-08-17 11:49:34', NULL),
(35, '#ORDER-92785', '1', NULL, NULL, 0, '0', 1, 0, '2023-08-17 12:52:58', NULL),
(36, '#ORDER-52617', 'VanceTrevino-1065', NULL, NULL, 0, '0', 1, 0, '2023-08-22 06:06:38', NULL),
(37, '#ORDER-87211', NULL, '+1 (233) 372-8386', 'Reiciendis eligendi', 0, '0', 2, 0, '2023-08-22 06:10:43', NULL),
(38, '#ORDER-40081', '18', NULL, NULL, 0, '0', 2, 0, '2023-08-22 06:11:50', NULL),
(39, '#ORDER-88471', '18', NULL, NULL, 0, '0', 2, 0, '2023-08-22 06:37:18', NULL),
(40, '#ORDER-45061', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 06:50:05', NULL),
(41, '#ORDER-24050', '18', NULL, NULL, 0, '0', 2, 0, '2023-08-22 06:53:44', NULL),
(42, '#ORDER-36269', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 06:56:05', NULL),
(43, '#ORDER-54107', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 06:58:07', NULL),
(44, '#ORDER-86827', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 07:00:11', NULL),
(45, '#ORDER-93523', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 07:01:37', NULL),
(46, '#ORDER-13519', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 07:02:33', NULL),
(47, '#ORDER-83799', '18', '+1 (117) 103-6464', 'Nobis dolore eveniet', 0, '0', 2, 0, '2023-08-22 07:03:04', NULL),
(48, '#ORDER-37225', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 07:05:26', NULL),
(49, '#ORDER-30225', '18', NULL, NULL, 0, '0', 2, 0, '2023-08-22 07:08:38', NULL),
(50, '#ORDER-47170', '18', '+1 (233) 372-8386', 'Reiciendis eligendi', 0, '0', 2, 0, '2023-08-22 07:11:31', NULL),
(51, '#ORDER-93727', '18', NULL, NULL, 0, '0', 2, 0, '2023-08-22 07:17:22', NULL),
(52, '#ORDER-21014', '18', NULL, NULL, 0, '0', 1, 0, '2023-08-22 07:18:14', NULL),
(53, '#ORDER-13491', '17', NULL, NULL, 0, '0', 1, 0, '2023-08-22 07:41:07', NULL),
(54, '#ORDER-23547', '17', NULL, NULL, 0, '0', 1, 0, '2023-08-22 13:13:21', NULL),
(55, '#ORDER-53473', '17', NULL, NULL, 0, '0', 2, 0, '2023-08-22 13:13:50', NULL),
(56, '#ORDER-48958', 'KayFarrell-6162', NULL, NULL, 0, '0', 1, 0, '2023-08-22 13:22:52', NULL),
(57, '#ORDER-36714', '20', NULL, NULL, 0, '0', 1, 0, '2023-08-23 10:49:26', NULL),
(58, '#ORDER-15213', '20', NULL, NULL, 0, '0', 1, 0, '2023-08-23 10:50:24', NULL),
(59, '#ORDER-37785', 'gegyzov_vggg-3614', NULL, NULL, 0, '0', 1, 0, '2023-08-23 10:55:24', NULL),
(60, '#ORDER-68389', 'ElliottLewis-3933', NULL, NULL, 0, '0', 1, 0, '2023-08-24 06:56:40', NULL),
(61, '#ORDER-65718', 'ChanningHopkins-8127', NULL, NULL, 0, '0', 1, 0, '2023-08-24 06:58:08', NULL),
(62, '#ORDER-36216', 'fahim-5827', NULL, NULL, 0, '0', 1, 0, '2023-08-24 07:21:11', NULL),
(63, '#ORDER-47758', 'fahim-3942', NULL, NULL, 0, '0', 1, 0, '2023-08-24 07:24:09', NULL),
(64, '#ORDER-45129', '23', NULL, NULL, 0, '0', 1, 0, '2023-08-24 07:52:52', NULL),
(65, '#ORDER-42538', 'nur-9270', NULL, NULL, 200, '0', 1, 0, '2023-08-24 09:57:37', NULL),
(66, '#ORDER-41671', '23', NULL, NULL, 200, '0', 1, 0, '2023-08-24 12:36:00', NULL),
(67, '#ORDER-80029', 'Caesar-3599', NULL, NULL, 200, '0', 1, 0, '2023-08-24 13:34:13', NULL),
(68, '#ORDER-29528', 'CullenBriggs-2485', NULL, NULL, 0, '0', 1, 0, '2023-08-26 05:21:40', NULL),
(69, '#ORDER-87774', 'CullenBriggs-5615', NULL, NULL, 200, '0', 1, 0, '2023-08-26 05:23:31', NULL),
(70, '#ORDER-11283', '17', NULL, NULL, 100, '0', 1, 0, '2023-08-30 06:55:16', NULL),
(71, '#ORDER-72623', '17', NULL, NULL, 100, NULL, 1, 0, '2023-08-30 07:17:50', NULL),
(72, '#ORDER-31716', 'Caesar-8310', NULL, NULL, 100, '0', 1, 0, '2023-09-02 07:44:34', NULL),
(73, '#ORDER-19199', 'Caesar-5541', NULL, NULL, 100, '0', 1, 0, '2023-09-02 07:47:19', NULL),
(74, '#ORDER-45771', NULL, '+1 (978) 744-5564', 'asdtf345dfr', 200, '0', 2, 0, '2023-09-02 13:07:54', NULL),
(75, '#ORDER-83171', '26', NULL, NULL, 0, '0', 1, 0, '2023-09-02 13:38:57', NULL),
(76, '#ORDER-89501', 'LaniYork-1142', NULL, NULL, 200, '50', 1, 0, '2023-09-03 09:53:41', NULL),
(77, '#ORDER-19852', NULL, '+1 (233) 372-8386', 'asdtf345dfr', 200, '50', 2, 0, '2023-09-04 05:11:42', NULL),
(78, '#ORDER-75038', '27', NULL, NULL, 200, '50', 1, 0, '2023-09-04 05:31:22', NULL),
(79, '#ORDER-54564', '27', NULL, NULL, 200, '50', 1, 0, '2023-09-04 06:49:02', NULL),
(80, '#ORDER-46146', 'DarrylNash-5891', NULL, NULL, 100, '50', 1, 1, '2023-09-21 05:31:53', '2023-09-21 06:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy_policy` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">We are very delighted that you have shown interest in our enterprise. Data protection is of a particularly high priority for the management of the Company Name. The use of the Internet pages of the Company Name is possible without any indication of personal data; however, if a data subject wants to use special enterprise services via our website, processing of personal data could become necessary. If the processing of personal data is necessary and there is no statutory basis for such processing, we generally obtain consent from the data subject.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The processing of personal data, such as the name, address, e-mail address, or telephone number of a data subject shall always be in line with the General Data Protection Regulation (GDPR), and in accordance with the country-specific data protection regulations applicable to the Company Name. By means of this data protection declaration, our enterprise would like to inform the general public of the nature, scope, and purpose of the personal data we collect, use and process. Furthermore, data subjects are informed, by means of this data protection declaration, of the rights to which they are entitled.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">As the controller, the Company Name has implemented numerous technical and organizational measures to ensure the most complete protection of personal data processed through this website. However, Internet-based data transmissions may in principle have security gaps, so absolute protection may not be guaranteed. For this reason, every data subject is free to transfer personal data to us via alternative means, e.g. by telephone.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">1. Definitions</span><br>The data protection declaration of the Company Name is based on the terms used by the European legislator for the adoption of the General Data Protection Regulation (GDPR). Our data protection declaration should be legible and understandable for the general public, as well as our customers and business partners. To ensure this, we would like to first explain the terminology used.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">In this data protection declaration, we use, inter alia, the following terms:</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">a) Personal data<br>Personal data means any information relating to an identified or identifiable natural person (“data subject”). An identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person.<br>b) Data subject<br>Data subject is any identified or identifiable natural person, whose personal data is processed by the controller responsible for the processing.<br>c) Processing<br>Processing is any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction.<br>d) Restriction of processing<br>Restriction of processing is the marking of stored personal data with the aim of limiting their processing in the future.<br>e) Profiling<br>Profiling means any form of automated processing of personal data consisting of the use of personal data to evaluate certain personal aspects relating to a natural person, in particular to analyse or predict aspects concerning that natural person’s performance at work, economic situation, health, personal preferences, interests, reliability, behaviour, location or movements.<br>f) Pseudonymisation<br>Pseudonymisation is the processing of personal data in such a manner that the personal data can no longer be attributed to a specific data subject without the use of additional information, provided that such additional information is kept separately and is subject to technical and organisational measures to ensure that the personal data are not attributed to an identified or identifiable natural person.<br>g) Controller or controller responsible for the processing<br>Controller or controller responsible for the processing is the natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data; where the purposes and means of such processing are determined by Union or Member State law, the controller or the specific criteria for its nomination may be provided for by Union or Member State law.<br>h) Processor<br>Processor is a natural or legal person, public authority, agency or other body which processes personal data on behalf of the controller.<br>i) Recipient<br>Recipient is a natural or legal person, public authority, agency or another body, to which the personal data are disclosed, whether a third party or not. However, public authorities which may receive personal data in the framework of a particular inquiry in accordance with Union or Member State law shall not be regarded as recipients; the processing of those data by those public authorities shall be in compliance with the applicable data protection rules according to the purposes of the processing.<br>j) Third party<br>Third party is a natural or legal person, public authority, agency or body other than the data subject, controller, processor and persons who, under the direct authority of the controller or processor, are authorised to process personal data.<br>k) Consent<br>Consent of the data subject is any freely given, specific, informed and unambiguous indication of the data subject’s wishes by which he or she, by a statement or by a clear affirmative action, signifies agreement to the processing of personal data relating to him or her.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">2. Name and Address of the controller</span><br>Controller for the purposes of the General Data Protection Regulation (GDPR), other data protection laws applicable in Member states of the European Union and other provisions related to data protection is:</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Company Name<br>Company Address<br>300057 London<br>United Kingdom<br>Phone: +1234324543<br>Email: email@company.com<br>Website: https://www.example.com</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">3. Cookies</span><br>The Internet pages of the Company Name use cookies. Cookies are text files that are stored in a computer system via an Internet browser.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Many Internet sites and servers use cookies. Many cookies contain a so-called cookie ID. A cookie ID is a unique identifier of the cookie. It consists of a character string through which Internet pages and servers can be assigned to the specific Internet browser in which the cookie was stored. This allows visited Internet sites and servers to differentiate the individual browser of the dats subject from other Internet browsers that contain other cookies. A specific Internet browser can be recognized and identified using the unique cookie ID.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Through the use of cookies, the Company Name can provide the users of this website with more user-friendly services that would not be possible without the cookie setting.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">By means of a cookie, the information and offers on our website can be optimized with the user in mind. Cookies allow us, as previously mentioned, to recognize our website users. The purpose of this recognition is to make it easier for users to utilize our website. The website user that uses cookies, e.g. does not have to enter access data each time the website is accessed, because this is taken over by the website, and the cookie is thus stored on the user’s computer system. Another example is the cookie of a shopping cart in an online shop. The online store remembers the articles that a customer has placed in the virtual shopping cart via a cookie.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The data subject may, at any time, prevent the setting of cookies through our website by means of a corresponding setting of the Internet browser used, and may thus permanently deny the setting of cookies. Furthermore, already set cookies may be deleted at any time via an Internet browser or other software programs. This is possible in all popular Internet browsers. If the data subject deactivates the setting of cookies in the Internet browser used, not all functions of our website may be entirely usable.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">4. Collection of general data and information</span><br>The website of the Company Name collects a series of general data and information when a data subject or automated system calls up the website. This general data and information are stored in the server log files. Collected may be</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(1) the browser types and versions used,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(2) the operating system used by the accessing system,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(3) the website from which an accessing system reaches our website (so-called referrers), (4) the sub-websites,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(5) the date and time of access to the Internet site,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(6) an Internet protocol address (IP address),</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(7) the Internet service provider of the accessing system, and</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(8) any other similar data and information that may be used in the event of attacks on our information technology systems.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">When using these general data and information, the Company Name does not draw any conclusions about the data subject. Rather, this information is needed to</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(1) deliver the content of our website correctly,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(2) optimize the content of our website as well as its advertisement,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(3) ensure the long-term viability of our information technology systems and website technology, and</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(4) provide law enforcement authorities with the information necessary for criminal prosecution in case of a cyber-attack.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Therefore, the Company Name analyzes anonymously collected data and information statistically, with the aim of increasing the data protection and data security of our enterprise, and to ensure an optimal level of protection for the personal data we process. The anonymous data of the server log files are stored separately from all personal data provided by a data subject.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">5. Registration on our website</span><br>The data subject has the possibility to register on the website of the controller with the indication of personal data. Which personal data are transmitted to the controller is determined by the respective input mask used for the registration. The personal data entered by the data subject are collected and stored exclusively for internal use by the controller, and for his own purposes. The controller may request transfer to one or more processors (e.g. a parcel service) that also uses personal data for an internal purpose which is attributable to the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">By registering on the website of the controller, the IP address—assigned by the Internet service provider (ISP) and used by the data subject—date, and time of the registration are also stored. The storage of this data takes place against the background that this is the only way to prevent the misuse of our services, and, if necessary, to make it possible to investigate committed offenses. Insofar, the storage of this data is necessary to secure the controller. This data is not passed on to third parties unless there is a statutory obligation to pass on the data, or if the transfer serves the aim of criminal prosecution.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The registration of the data subject, with the voluntary indication of personal data, is intended to enable the controller to offer the data subject contents or services that may only be offered to registered users due to the nature of the matter in question. Registered persons are free to change the personal data specified during the registration at any time, or to have them completely deleted from the data stock of the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The data controller shall, at any time, provide information upon request to each data subject as to what personal data are stored about the data subject. In addition, the data controller shall correct or erase personal data at the request or indication of the data subject, insofar as there are no statutory storage obligations. The entirety of the controller’s employees are available to the data subject in this respect as contact persons.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">6. Subscription to our newsletters</span><br>On the website of the Company Name, users are given the opportunity to subscribe to our enterprise’s newsletter. The input mask used for this purpose determines what personal data are transmitted, as well as when the newsletter is ordered from the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Company Name informs its customers and business partners regularly by means of a newsletter about enterprise offers. The enterprise’s newsletter may only be received by the data subject if (1) the data subject has a valid e-mail address and (2) the data subject registers for the newsletter shipping. A confirmation e-mail will be sent to the e-mail address registered by a data subject for the first time for newsletter shipping, for legal reasons, in the double opt-in procedure. This confirmation e-mail is used to prove whether the owner of the e-mail address as the data subject is authorized to receive the newsletter.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">During the registration for the newsletter, we also store the IP address of the computer system assigned by the Internet service provider (ISP) and used by the data subject at the time of the registration, as well as the date and time of the registration. The collection of this data is necessary in order to understand the (possible) misuse of the e-mail address of a data subject at a later date, and it therefore serves the aim of the legal protection of the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The personal data collected as part of a registration for the newsletter will only be used to send our newsletter. In addition, subscribers to the newsletter may be informed by e-mail, as long as this is necessary for the operation of the newsletter service or a registration in question, as this could be the case in the event of modifications to the newsletter offer, or in the event of a change in technical circumstances. There will be no transfer of personal data collected by the newsletter service to third parties. The subscription to our newsletter may be terminated by the data subject at any time. The consent to the storage of personal data, which the data subject has given for shipping the newsletter, may be revoked at any time. For the purpose of revocation of consent, a corresponding link is found in each newsletter. It is also possible to unsubscribe from the newsletter at any time directly on the website of the controller, or to communicate this to the controller in a different way.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">7. Newsletter-Tracking</span><br>The newsletter of the Company Name contains so-called tracking pixels. A tracking pixel is a miniature graphic embedded in such e-mails, which are sent in HTML format to enable log file recording and analysis. This allows a statistical analysis of the success or failure of online marketing campaigns. Based on the embedded tracking pixel, the Company Name may see if and when an e-mail was opened by a data subject, and which links in the e-mail were called up by data subjects.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Such personal data collected in the tracking pixels contained in the newsletters are stored and analyzed by the controller in order to optimize the shipping of the newsletter, as well as to adapt the content of future newsletters even better to the interests of the data subject. These personal data will not be passed on to third parties. Data subjects are at any time entitled to revoke the respective separate declaration of consent issued by means of the double-opt-in procedure. After a revocation, these personal data will be deleted by the controller. The Company Name automatically regards a withdrawal from the receipt of the newsletter as a revocation.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">8. Contact possibility via the website</span><br>The website of the Company Name contains information that enables a quick electronic contact to our enterprise, as well as direct communication with us, which also includes a general address of the so-called electronic mail (e-mail address). If a data subject contacts the controller by e-mail or via a contact form, the personal data transmitted by the data subject are automatically stored. Such personal data transmitted on a voluntary basis by a data subject to the data controller are stored for the purpose of processing or contacting the data subject. There is no transfer of this personal data to third parties.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">9. Routine erasure and blocking of personal data<br>The data controller shall process and store the personal data of the data subject only for the period necessary to achieve the purpose of storage, or as far as this is granted by the European legislator or other legislators in laws or regulations to which the controller is subject to.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">If the storage purpose is not applicable, or if a storage period prescribed by the European legislator or another competent legislator expires, the personal data are routinely blocked or erased in accordance with legal requirements.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">10. Rights of the data subject</span><br>a) Right of confirmation<br>Each data subject shall have the right granted by the European legislator to obtain from the controller the confirmation as to whether or not personal data concerning him or her are being processed. If a data subject wishes to avail himself of this right of confirmation, he or she may, at any time, contact any employee of the controller.<br>b) Right of access<br>Each data subject shall have the right granted by the European legislator to obtain from the controller free information about his or her personal data stored at any time and a copy of this information. Furthermore, the European directives and regulations grant the data subject access to the following information:<br>the purposes of the processing;<br>the categories of personal data concerned;<br>the recipients or categories of recipients to whom the personal data have been or will be disclosed, in particular recipients in third countries or international organisations;<br>where possible, the envisaged period for which the personal data will be stored, or, if not possible, the criteria used to determine that period;<br>the existence of the right to request from the controller rectification or erasure of personal data, or restriction of processing of personal data concerning the data subject, or to object to such processing;<br>the existence of the right to lodge a complaint with a supervisory authority;<br>where the personal data are not collected from the data subject, any available information as to their source;<br>the existence of automated decision-making, including profiling, referred to in Article 22(1) and (4) of the GDPR and, at least in those cases, meaningful information about the logic involved, as well as the significance and envisaged consequences of such processing for the data subject.<br>Furthermore, the data subject shall have a right to obtain information as to whether personal data are transferred to a third country or to an international organisation. Where this is the case, the data subject shall have the right to be informed of the appropriate safeguards relating to the transfer.<br>If a data subject wishes to avail himself of this right of access, he or she may, at any time, contact any employee of the controller.<br>c) Right to rectification<br>Each data subject shall have the right granted by the European legislator to obtain from the controller without undue delay the rectification of inaccurate personal data concerning him or her. Taking into account the purposes of the processing, the data subject shall have the right to have incomplete personal data completed, including by means of providing a supplementary statement.<br>If a data subject wishes to exercise this right to rectification, he or she may, at any time, contact any employee of the controller.<br>d) Right to erasure (Right to be forgotten)<br>Each data subject shall have the right granted by the European legislator to obtain from the controller the erasure of personal data concerning him or her without undue delay, and the controller shall have the obligation to erase personal data without undue delay where one of the following grounds applies, as long as the processing is not necessary:<br>The personal data are no longer necessary in relation to the purposes for which they were collected or otherwise processed.<br>The data subject withdraws consent to which the processing is based according to point (a) of Article 6(1) of the GDPR, or point (a) of Article 9(2) of the GDPR, and where there is no other legal ground for the processing.<br>The data subject objects to the processing pursuant to Article 21(1) of the GDPR and there are no overriding legitimate grounds for the processing, or the data subject objects to the processing pursuant to Article 21(2) of the GDPR.<br>The personal data have been unlawfully processed.<br>The personal data must be erased for compliance with a legal obligation in Union or Member State law to which the controller is subject.<br>The personal data have been collected in relation to the offer of information society services referred to in Article 8(1) of the GDPR.<br>If one of the aforementioned reasons applies, and a data subject wishes to request the erasure of personal data stored by the Company Name, he or she may, at any time, contact any employee of the controller. An employee of Company Name shall promptly ensure that the erasure request is complied with immediately.<br>Where the controller has made personal data public and is obliged pursuant to Article 17(1) to erase the personal data, the controller, taking account of available technology and the cost of implementation, shall take reasonable steps, including technical measures, to inform other controllers processing the personal data that the data subject has requested erasure by such controllers of any links to, or copy or replication of, those personal data, as far as processing is not required. An employees of the Company Name will arrange the necessary measures in individual cases.<br>e) Right of restriction of processing<br>Each data subject shall have the right granted by the European legislator to obtain from the controller restriction of processing where one of the following applies:<br>The accuracy of the personal data is contested by the data subject, for a period enabling the controller to verify the accuracy of the personal data.<br>The processing is unlawful and the data subject opposes the erasure of the personal data and requests instead the restriction of their use instead.<br>The controller no longer needs the personal data for the purposes of the processing, but they are required by the data subject for the establishment, exercise or defence of legal claims.<br>The data subject has objected to processing pursuant to Article 21(1) of the GDPR pending the verification whether the legitimate grounds of the controller override those of the data subject.<br>If one of the aforementioned conditions is met, and a data subject wishes to request the restriction of the processing of personal data stored by the Company Name, he or she may at any time contact any employee of the controller. The employee of the Company Name will arrange the restriction of the processing.<br>f) Right to data portability<br>Each data subject shall have the right granted by the European legislator, to receive the personal data concerning him or her, which was provided to a controller, in a structured, commonly used and machine-readable format. He or she shall have the right to transmit those data to another controller without hindrance from the controller to which the personal data have been provided, as long as the processing is based on consent pursuant to point (a) of Article 6(1) of the GDPR or point (a) of Article 9(2) of the GDPR, or on a contract pursuant to point (b) of Article 6(1) of the GDPR, and the processing is carried out by automated means, as long as the processing is not necessary for the performance of a task carried out in the public interest or in the exercise of official authority vested in the controller.<br>Furthermore, in exercising his or her right to data portability pursuant to Article 20(1) of the GDPR, the data subject shall have the right to have personal data transmitted directly from one controller to another, where technically feasible and when doing so does not adversely affect the rights and freedoms of others.<br>In order to assert the right to data portability, the data subject may at any time contact any employee of the Company Name.<br>g) Right to object<br>Each data subject shall have the right granted by the European legislator to object, on grounds relating to his or her particular situation, at any time, to processing of personal data concerning him or her, which is based on point (e) or (f) of Article 6(1) of the GDPR. This also applies to profiling based on these provisions.<br>The Company Name shall no longer process the personal data in the event of the objection, unless we can demonstrate compelling legitimate grounds for the processing which override the interests, rights and freedoms of the data subject, or for the establishment, exercise or defence of legal claims.<br>If the Company Name processes personal data for direct marketing purposes, the data subject shall have the right to object at any time to processing of personal data concerning him or her for such marketing. This applies to profiling to the extent that it is related to such direct marketing. If the data subject objects to the Company Name to the processing for direct marketing purposes, the Company Name will no longer process the personal data for these purposes.<br>In addition, the data subject has the right, on grounds relating to his or her particular situation, to object to processing of personal data concerning him or her by the Company Name for scientific or historical research purposes, or for statistical purposes pursuant to Article 89(1) of the GDPR, unless the processing is necessary for the performance of a task carried out for reasons of public interest.<br>In order to exercise the right to object, the data subject may contact any employee of the Company Name. In addition, the data subject is free in the context of the use of information society services, and notwithstanding Directive 2002/58/EC, to use his or her right to object by automated means using technical specifications.<br>h) Automated individual decision-making, including profiling<br>Each data subject shall have the right granted by the European legislator not to be subject to a decision based solely on automated processing, including profiling, which produces legal effects concerning him or her, or similarly significantly affects him or her, as long as the decision (1) is not is necessary for entering into, or the performance of, a contract between the data subject and a data controller, or (2) is not authorised by Union or Member State law to which the controller is subject and which also lays down suitable measures to safeguard the data subject’s rights and freedoms and legitimate interests, or (3) is not based on the data subject’s explicit consent.<br>If the decision (1) is necessary for entering into, or the performance of, a contract between the data subject and a data controller, or (2) it is based on the data subject’s explicit consent, the Company Name shall implement suitable measures to safeguard the data subject’s rights and freedoms and legitimate interests, at least the right to obtain human intervention on the part of the controller, to express his or her point of view and contest the decision.<br>If the data subject wishes to exercise the rights concerning automated individual decision-making, he or she may, at any time, contact any employee of the Company Name.<br>i) Right to withdraw data protection consent<br>Each data subject shall have the right granted by the European legislator to withdraw his or her consent to processing of his or her personal data at any time.<br>If the data subject wishes to exercise the right to withdraw the consent, he or she may, at any time, contact any employee of the Company Name.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">11. Legal basis for the processing</span><br>Art. 6(1) lit. a GDPR serves as the legal basis for processing operations for which we obtain consent for a specific processing purpose. If the processing of personal data is necessary for the performance of a contract to which the data subject is party, as is the case, for example, when processing operations are necessary for the supply of goods or to provide any other service, the processing is based on Article 6(1) lit. b GDPR. The same applies to such processing operations which are necessary for carrying out pre-contractual measures, for example in the case of inquiries concerning our products or services. Is our company subject to a legal obligation by which processing of personal data is required, such as for the fulfillment of tax obligations, the processing is based on Art. 6(1) lit. c GDPR. In rare cases, the processing of personal data may be necessary to protect the vital interests of the data subject or of another natural person. This would be the case, for example, if a visitor were injured in our company and his name, age, health insurance data or other vital information would have to be passed on to a doctor, hospital or other third party. Then the processing would be based on Art. 6(1) lit. d GDPR. Finally, processing operations could be based on Article 6(1) lit. f GDPR. This legal basis is used for processing operations which are not covered by any of the abovementioned legal grounds, if processing is necessary for the purposes of the legitimate interests pursued by our company or by a third party, except where such interests are overridden by the interests or fundamental rights and freedoms of the data subject which require protection of personal data. Such processing operations are particularly permissible because they have been specifically mentioned by the European legislator. He considered that a legitimate interest could be assumed if the data subject is a client of the controller (Recital 47 Sentence 2 GDPR).</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">12. The legitimate interests pursued by the controller or by a third party</span><br>Where the processing of personal data is based on Article 6(1) lit. f GDPR our legitimate interest is to carry out our business in favor of the well-being of all our employees and the shareholders.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">13. Period for which the personal data will be stored</span><br>The criteria used to determine the period of storage of personal data is the respective statutory retention period. After expiration of that period, the corresponding data is routinely deleted, as long as it is no longer necessary for the fulfillment of the contract or the initiation of a contract.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">14. Provision of personal data as statutory or contractual requirement; Requirement necessary to enter into a contract; Obligation of the data subject to provide the personal data; possible consequences of failure to provide such data</span><br>We clarify that the provision of personal data is partly required by law (e.g. tax regulations) or can also result from contractual provisions (e.g. information on the contractual partner). Sometimes it may be necessary to conclude a contract that the data subject provides us with personal data, which must subsequently be processed by us. The data subject is, for example, obliged to provide us with personal data when our company signs a contract with him or her. The non-provision of the personal data would have the consequence that the contract with the data subject could not be concluded. Before personal data is provided by the data subject, the data subject must contact any employee. The employee clarifies to the data subject whether the provision of the personal data is required by law or contract or is necessary for the conclusion of the contract, whether there is an obligation to provide the personal data and the consequences of non-provision of the personal data.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">15. Existence of automated decision-making</span><br>As a responsible company, we do not use automatic decision-making or profiling. This Privacy Policy has been generated by the Privacy Policy Generator of the External Data Protection Officers that was developed in cooperation with the Media Law Lawyers from WBS-LAW.</p>', '2023-09-10 10:47:51', '2023-09-10 11:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT NULL,
  `after_discount` int(11) NOT NULL,
  `brand` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `preview_image` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `validity` date DEFAULT NULL,
  `campaign` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `product_price`, `product_discount`, `after_discount`, `brand`, `status`, `preview_image`, `slug`, `validity`, `campaign`, `description`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Salowar kamiz', 1, 2200, 60, 2140, 3, 1, 'salowar-kamiz-6824.webp', 'salowar-kamiz-6812', '2023-06-30', 1, '<p>dsafdf           adfadsdsdsdsdsdsdsdsdsdsdsdsds aedrfdf<span style=\"font-size: 14.304px;\">dsafdf           adfadsdsdsdsdsdsdsdsdsdsdsdsds aedrfdf</span></p>', 20, '2023-05-17 06:05:05', '2023-06-01 13:56:15'),
(2, 'HATIL Fixed Chair Brantley-145', 3, 1200, NULL, 1200, 5, 1, 'hatil-fixed-chair-brantley-145-1027.jpg', 'hatil-fixed-chair-brantley-145-2770', '2023-08-31', 1, '<ul style=\"margin-bottom: 10px; color: rgb(59, 58, 60); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); list-style-type: circle;\"><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Made from Powder coated mild steel  </span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">High quality fabric upholstery with soft and durable cushioning. Fabric can be selected from available options</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Metal Inert Gas (MIG) welding for superior quality and durability</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Cutting and bending are done by latest Japanese CNC machine with 99.99% accuracy</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Please refer to images for dimension details</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Imported high quality hardware fittings</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Indoor use only</span></span></span></span></span></li></ul>', 21, '2023-05-17 12:07:43', '2023-05-30 06:07:05'),
(3, 'Fresh Organic Broccoli Crowns', 4, 120, NULL, 120, NULL, 1, 'fresh-organic-broccoli-crowns-8131.jpg', 'fresh-organic-broccoli-crowns-6459', NULL, 1, '<p style=\"font-family: Inter, sans-serif; font-size: 0.9375rem; letter-spacing: 0px; line-height: 1.8; color: rgb(32, 36, 53);\">Quisque varius diam vel metus mattis, id aliquam diam rhoncus. Proin vitae magna in dui finibus malesuada et at nulla. Morbi elit ex, viverra vitae ante vel, blandit feugiat ligula. Fusce fermentum iaculis nibh, at sodales leo maximus a. Nullam ultricies sodales nunc, in pellentesque lorem mattis quis. Cras imperdiet est in nunc tristique lacinia. Nullam aliquam mauris eu accumsan tincidunt. Suspendisse velit ex, aliquet vel ornare vel, dignissim a tortor.</p><p style=\"font-family: Inter, sans-serif; font-size: 0.9375rem; letter-spacing: 0px; line-height: 1.8; color: rgb(32, 36, 53);\">Morbi ut sapien vitae odio accumsan gravida. Morbi vitae erat auctor, eleifend nunc a, lobortis neque. Praesent aliquam dignissim viverra. Maecenas lacus odio, feugiat eu nunc sit amet, maximus sagittis dolor. Vivamus nisi sapien, elementum sit amet eros sit amet, ultricies cursus ipsum. Sed consequat luctus ligula. Curabitur laoreet rhoncus blandit. Aenean vel diam ut arcu pharetra dignissim ut sed leo. Vivamus faucibus, ipsum in vestibulum vulputate, lorem orci convallis quam, sit amet consequat nulla felis pharetra lacus. Duis semper erat mauris, sed egestas purus commodo vel.</p>', 22, '2023-05-18 07:56:11', '2023-05-27 07:07:32'),
(4, 'All Natural Italian-Style Chicken Meatballs', 4, 120, 15, 105, NULL, 1, 'all-natural-italian-style-chicken-meatballs-6867.jpg', 'all-natural-italian-style-chicken-meatballs-5121', '2023-09-12', 1, '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><h1 style=\"font-family: Inter, sans-serif; font-size: 0.9375rem; letter-spacing: 0px; line-height: 1.8; color: rgb(32, 36, 53);\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p></h1>', 22, '2023-05-18 08:38:34', '2023-05-20 13:18:42'),
(7, 'HATIL File Rack Ophelia-103', 3, 14000, 1250, 12750, 5, 1, 'hatil-file-rack-ophelia-103-5786.jpg', 'hatil-file-rack-ophelia-103-6979', '2023-09-06', 0, '<ul style=\"margin-bottom: 10px; color: rgb(59, 58, 60); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); list-style-type: circle;\"><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Made from Kiln-dried imported Beech wood and veneered engineered wood.</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">High quality environment friendly Italian Ultra Violet (UV) and Polyurethane (PU) Lacquer in antique finish</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Please refer to images for dimension details</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Any assembly or installation required will be done by the HATIL team at the time of delivery (one day after delivery for CKD items)</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Imported high quality hardware fittings</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Indoor use only</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Weight 18.50</span></span></span><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\"> Kgs</span></span></span></span></span></li><li style=\"margin: 0in 0in 0.0001pt;\"><span style=\"background: white;\"><span style=\"line-height: 18pt;\"><span style=\"font-size: 11.5pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"color: black;\">Most of our furniture is made of natural components, which will have natural differences in grain construction and occasional minor blemish.</span></span></span></span></span></li></ul>', 26, '2023-05-21 12:01:43', '2023-05-30 06:07:32'),
(8, 'TexHoo Mini PC Computer Intel Core i7 i5 Processador', 5, 20000, 3000, 17000, 2, 1, 'texhoo-mini-pc-computer-intel-core-i7-i5-processador-8189.webp', 'texhoo-mini-pc-computer-intel-core-i7-i5-processador-6162', NULL, 0, '<p class=\"p\" align=\"left\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0pt 0pt 0pt 0px; font-size: medium; line-height: inherit; padding: 0pt 0pt 0pt 0em; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span data-spm-anchor-id=\"a2g0o.detail.1000023.i2.45d43bcdbchq4C\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">Warranty:</span></p><p class=\"p\" align=\"left\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0pt 0pt 0pt 0px; font-size: medium; line-height: inherit; padding: 0pt 0pt 0pt 0em; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">1. Before you receives the goods, we go through three strict quality inspections, assembly testing, warehousing quality testing, and factory quality testing.</span></p><div align=\"start\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: medium; color: rgb(0, 0, 0); border: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></div><div class=\"detailmodule_html\" align=\"start\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; font-size: 14px; font-family: \"Open Sans\", sans-serif; color: rgb(0, 0, 0); border: 0px;\"><div class=\"detail-desc-decorate-richtext\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; border: 0px;\"><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; padding: 0px; border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: arial, helvetica, sans-serif;\">2. We provide 12-month warranty for the all hardware of each product under normal use, Motherboard, RAM, ROM we provide 3 years warranty, excluding damage caused by intentional damage, accidents, product misuse, or any unauthorized personnel attempting to repair or upgrade. Please provide us with a video proof, and we will provide a replacement after confirming the problem.</span></p></div></div><div align=\"start\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: medium; color: rgb(0, 0, 0); border: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></div><p class=\"p\" align=\"left\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0pt 0pt 0pt 0px; font-size: medium; line-height: inherit; padding: 0pt 0pt 0pt 0em; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">Feedback and comments:</span></p><p class=\"p\" align=\"left\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0pt 0pt 0pt 0px; font-size: medium; line-height: inherit; padding: 0pt 0pt 0pt 0em; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">1. If you are satisfied with our products and services, please leave a 5-star praise.</span></p><p class=\"p\" align=\"left\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0pt 0pt 0pt 0px; font-size: medium; line-height: inherit; padding: 0pt 0pt 0pt 0em; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">2. Please contact us before leaving a bad review. We will do our best to provide you with support and provide satisfactory solutions.</span></p><p class=\"MsoNormal\" align=\"start\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: medium; line-height: inherit; padding: 0px; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">3. Negative feedback or low DSR will not solve any potential problems. If you have any questions, please contact us by message first, so that we have the opportunity to make reasonable rectifications within a reasonable time. We will respond as soon as possible, and we are willing to solve the problem.</span></p><div align=\"start\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: medium; color: rgb(0, 0, 0); border: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></div><p class=\"p\" align=\"left\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0pt 0pt 0pt 0px; font-size: medium; line-height: inherit; padding: 0pt 0pt 0pt 0em; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">About taxation:</span></p><div align=\"start\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: medium; color: rgb(0, 0, 0); border: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></div><p class=\"p\" align=\"left\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0pt 0pt 0pt 0px; font-size: medium; line-height: inherit; padding: 0pt 0pt 0pt 0em; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); border: 0px;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 14pt; font-family: Arial;\">1. Our prices do not include destination import duties and value-added tax, etc. Import customs clearance is the sole responsibility of the buyer. In order to avoid customs clearance issues, the seller declares \"Mini PC\" and defaults to the true value.</span></p>', 26, '2023-05-21 12:15:39', '2023-05-30 06:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `gallery_image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `added_by`, `gallery_image`, `created_at`, `updated_at`) VALUES
(5, 2, 21, 'hatil-fixed-chair-brantley-145-5606.jpg', '2023-05-17 12:07:43', NULL),
(6, 2, 21, 'hatil-fixed-chair-brantley-145-1665.jpg', '2023-05-17 12:07:43', NULL),
(7, 1, 21, 'salowar-kamiz-2169.webp', NULL, '2023-05-17 12:25:34'),
(8, 1, 21, 'salowar-kamiz-7938.webp', NULL, '2023-05-17 12:25:34'),
(9, 1, 21, 'salowar-kamiz-4120.webp', NULL, '2023-05-17 12:25:34'),
(10, 1, 21, 'salowar-kamiz-7882.webp', NULL, '2023-05-17 12:25:34'),
(11, 3, 22, 'fresh-organic-broccoli-crowns-9290.jpg', '2023-05-18 07:56:12', NULL),
(12, 3, 22, 'fresh-organic-broccoli-crowns-7119.jpg', '2023-05-18 07:56:12', NULL),
(13, 4, 22, 'all-natural-italian-style-chicken-meatballs-3027.jpg', '2023-05-18 08:38:34', NULL),
(14, 4, 22, 'all-natural-italian-style-chicken-meatballs-8367.jpg', '2023-05-18 08:38:34', NULL),
(15, 4, 22, 'all-natural-italian-style-chicken-meatballs-4432.jpg', '2023-05-18 08:38:34', NULL),
(16, 5, 26, 'hatil-file-rack-ophelia-103-9769.jpg', '2023-05-21 11:53:57', NULL),
(17, 5, 26, 'hatil-file-rack-ophelia-103-1128.jpg', '2023-05-21 11:53:57', NULL),
(18, 5, 26, 'hatil-file-rack-ophelia-103-9730.jpg', '2023-05-21 11:53:57', NULL),
(19, 7, 26, 'hatil-file-rack-ophelia-103-8514.jpg', '2023-05-21 12:01:43', NULL),
(20, 7, 26, 'hatil-file-rack-ophelia-103-9594.jpg', '2023-05-21 12:01:44', NULL),
(21, 7, 26, 'hatil-file-rack-ophelia-103-2787.jpg', '2023-05-21 12:01:44', NULL),
(22, 8, 26, 'texhoo-mini-pc-computer-intel-core-i7-i5-processador-7145.webp', '2023-05-21 12:15:39', NULL),
(23, 8, 26, 'texhoo-mini-pc-computer-intel-core-i7-i5-processador-1456.webp', '2023-05-21 12:15:39', NULL),
(24, 8, 26, 'texhoo-mini-pc-computer-intel-core-i7-i5-processador-7966.webp', '2023-05-21 12:15:40', NULL),
(25, 8, 26, 'texhoo-mini-pc-computer-intel-core-i7-i5-processador-5004.webp', '2023-05-21 12:15:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `created_at`, `updated_at`) VALUES
(2, 'M', '2023-05-13 11:42:48', NULL),
(3, 'S', '2023-05-14 11:41:56', NULL),
(5, 'XL', '2023-05-14 11:42:10', NULL),
(6, 'XXL', '2023-05-14 11:42:13', NULL),
(7, 'L', '2023-05-14 11:42:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_conditions` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `terms_conditions`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">We are very delighted that you have shown interest in our enterprise. Data protection is of a particularly high priority for the management of the Company Name. The use of the Internet pages of the Company Name is possible without any indication of personal data; however, if a data subject wants to use special enterprise services via our website, processing of personal data could become necessary. If the processing of personal data is necessary and there is no statutory basis for such processing, we generally obtain consent from the data subject.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The processing of personal data, such as the name, address, e-mail address, or telephone number of a data subject shall always be in line with the General Data Protection Regulation (GDPR), and in accordance with the country-specific data protection regulations applicable to the Company Name. By means of this data protection declaration, our enterprise would like to inform the general public of the nature, scope, and purpose of the personal data we collect, use and process. Furthermore, data subjects are informed, by means of this data protection declaration, of the rights to which they are entitled.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">As the controller, the Company Name has implemented numerous technical and organizational measures to ensure the most complete protection of personal data processed through this website. However, Internet-based data transmissions may in principle have security gaps, so absolute protection may not be guaranteed. For this reason, every data subject is free to transfer personal data to us via alternative means, e.g. by telephone.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">1. Definitions</span><br>The data protection declaration of the Company Name is based on the terms used by the European legislator for the adoption of the General Data Protection Regulation (GDPR). Our data protection declaration should be legible and understandable for the general public, as well as our customers and business partners. To ensure this, we would like to first explain the terminology used.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">In this data protection declaration, we use, inter alia, the following terms:</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">a) Personal data<br>Personal data means any information relating to an identified or identifiable natural person (“data subject”). An identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person.<br>b) Data subject<br>Data subject is any identified or identifiable natural person, whose personal data is processed by the controller responsible for the processing.<br>c) Processing<br>Processing is any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction.<br>d) Restriction of processing<br>Restriction of processing is the marking of stored personal data with the aim of limiting their processing in the future.<br>e) Profiling<br>Profiling means any form of automated processing of personal data consisting of the use of personal data to evaluate certain personal aspects relating to a natural person, in particular to analyse or predict aspects concerning that natural person’s performance at work, economic situation, health, personal preferences, interests, reliability, behaviour, location or movements.<br>f) Pseudonymisation<br>Pseudonymisation is the processing of personal data in such a manner that the personal data can no longer be attributed to a specific data subject without the use of additional information, provided that such additional information is kept separately and is subject to technical and organisational measures to ensure that the personal data are not attributed to an identified or identifiable natural person.<br>g) Controller or controller responsible for the processing<br>Controller or controller responsible for the processing is the natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data; where the purposes and means of such processing are determined by Union or Member State law, the controller or the specific criteria for its nomination may be provided for by Union or Member State law.<br>h) Processor<br>Processor is a natural or legal person, public authority, agency or other body which processes personal data on behalf of the controller.<br>i) Recipient<br>Recipient is a natural or legal person, public authority, agency or another body, to which the personal data are disclosed, whether a third party or not. However, public authorities which may receive personal data in the framework of a particular inquiry in accordance with Union or Member State law shall not be regarded as recipients; the processing of those data by those public authorities shall be in compliance with the applicable data protection rules according to the purposes of the processing.<br>j) Third party<br>Third party is a natural or legal person, public authority, agency or body other than the data subject, controller, processor and persons who, under the direct authority of the controller or processor, are authorised to process personal data.<br>k) Consent<br>Consent of the data subject is any freely given, specific, informed and unambiguous indication of the data subject’s wishes by which he or she, by a statement or by a clear affirmative action, signifies agreement to the processing of personal data relating to him or her.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">2. Name and Address of the controller</span><br>Controller for the purposes of the General Data Protection Regulation (GDPR), other data protection laws applicable in Member states of the European Union and other provisions related to data protection is:</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Company Name<br>Company Address<br>300057 London<br>United Kingdom<br>Phone: +1234324543<br>Email: email@company.com<br>Website: https://www.example.com</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">3. Cookies</span><br>The Internet pages of the Company Name use cookies. Cookies are text files that are stored in a computer system via an Internet browser.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Many Internet sites and servers use cookies. Many cookies contain a so-called cookie ID. A cookie ID is a unique identifier of the cookie. It consists of a character string through which Internet pages and servers can be assigned to the specific Internet browser in which the cookie was stored. This allows visited Internet sites and servers to differentiate the individual browser of the dats subject from other Internet browsers that contain other cookies. A specific Internet browser can be recognized and identified using the unique cookie ID.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Through the use of cookies, the Company Name can provide the users of this website with more user-friendly services that would not be possible without the cookie setting.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">By means of a cookie, the information and offers on our website can be optimized with the user in mind. Cookies allow us, as previously mentioned, to recognize our website users. The purpose of this recognition is to make it easier for users to utilize our website. The website user that uses cookies, e.g. does not have to enter access data each time the website is accessed, because this is taken over by the website, and the cookie is thus stored on the user’s computer system. Another example is the cookie of a shopping cart in an online shop. The online store remembers the articles that a customer has placed in the virtual shopping cart via a cookie.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The data subject may, at any time, prevent the setting of cookies through our website by means of a corresponding setting of the Internet browser used, and may thus permanently deny the setting of cookies. Furthermore, already set cookies may be deleted at any time via an Internet browser or other software programs. This is possible in all popular Internet browsers. If the data subject deactivates the setting of cookies in the Internet browser used, not all functions of our website may be entirely usable.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">4. Collection of general data and information</span><br>The website of the Company Name collects a series of general data and information when a data subject or automated system calls up the website. This general data and information are stored in the server log files. Collected may be</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(1) the browser types and versions used,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(2) the operating system used by the accessing system,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(3) the website from which an accessing system reaches our website (so-called referrers), (4) the sub-websites,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(5) the date and time of access to the Internet site,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(6) an Internet protocol address (IP address),</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(7) the Internet service provider of the accessing system, and</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(8) any other similar data and information that may be used in the event of attacks on our information technology systems.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">When using these general data and information, the Company Name does not draw any conclusions about the data subject. Rather, this information is needed to</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(1) deliver the content of our website correctly,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(2) optimize the content of our website as well as its advertisement,</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(3) ensure the long-term viability of our information technology systems and website technology, and</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">(4) provide law enforcement authorities with the information necessary for criminal prosecution in case of a cyber-attack.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Therefore, the Company Name analyzes anonymously collected data and information statistically, with the aim of increasing the data protection and data security of our enterprise, and to ensure an optimal level of protection for the personal data we process. The anonymous data of the server log files are stored separately from all personal data provided by a data subject.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">5. Registration on our website</span><br>The data subject has the possibility to register on the website of the controller with the indication of personal data. Which personal data are transmitted to the controller is determined by the respective input mask used for the registration. The personal data entered by the data subject are collected and stored exclusively for internal use by the controller, and for his own purposes. The controller may request transfer to one or more processors (e.g. a parcel service) that also uses personal data for an internal purpose which is attributable to the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">By registering on the website of the controller, the IP address—assigned by the Internet service provider (ISP) and used by the data subject—date, and time of the registration are also stored. The storage of this data takes place against the background that this is the only way to prevent the misuse of our services, and, if necessary, to make it possible to investigate committed offenses. Insofar, the storage of this data is necessary to secure the controller. This data is not passed on to third parties unless there is a statutory obligation to pass on the data, or if the transfer serves the aim of criminal prosecution.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The registration of the data subject, with the voluntary indication of personal data, is intended to enable the controller to offer the data subject contents or services that may only be offered to registered users due to the nature of the matter in question. Registered persons are free to change the personal data specified during the registration at any time, or to have them completely deleted from the data stock of the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The data controller shall, at any time, provide information upon request to each data subject as to what personal data are stored about the data subject. In addition, the data controller shall correct or erase personal data at the request or indication of the data subject, insofar as there are no statutory storage obligations. The entirety of the controller’s employees are available to the data subject in this respect as contact persons.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">6. Subscription to our newsletters</span><br>On the website of the Company Name, users are given the opportunity to subscribe to our enterprise’s newsletter. The input mask used for this purpose determines what personal data are transmitted, as well as when the newsletter is ordered from the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Company Name informs its customers and business partners regularly by means of a newsletter about enterprise offers. The enterprise’s newsletter may only be received by the data subject if (1) the data subject has a valid e-mail address and (2) the data subject registers for the newsletter shipping. A confirmation e-mail will be sent to the e-mail address registered by a data subject for the first time for newsletter shipping, for legal reasons, in the double opt-in procedure. This confirmation e-mail is used to prove whether the owner of the e-mail address as the data subject is authorized to receive the newsletter.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">During the registration for the newsletter, we also store the IP address of the computer system assigned by the Internet service provider (ISP) and used by the data subject at the time of the registration, as well as the date and time of the registration. The collection of this data is necessary in order to understand the (possible) misuse of the e-mail address of a data subject at a later date, and it therefore serves the aim of the legal protection of the controller.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">The personal data collected as part of a registration for the newsletter will only be used to send our newsletter. In addition, subscribers to the newsletter may be informed by e-mail, as long as this is necessary for the operation of the newsletter service or a registration in question, as this could be the case in the event of modifications to the newsletter offer, or in the event of a change in technical circumstances. There will be no transfer of personal data collected by the newsletter service to third parties. The subscription to our newsletter may be terminated by the data subject at any time. The consent to the storage of personal data, which the data subject has given for shipping the newsletter, may be revoked at any time. For the purpose of revocation of consent, a corresponding link is found in each newsletter. It is also possible to unsubscribe from the newsletter at any time directly on the website of the controller, or to communicate this to the controller in a different way.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">7. Newsletter-Tracking</span><br>The newsletter of the Company Name contains so-called tracking pixels. A tracking pixel is a miniature graphic embedded in such e-mails, which are sent in HTML format to enable log file recording and analysis. This allows a statistical analysis of the success or failure of online marketing campaigns. Based on the embedded tracking pixel, the Company Name may see if and when an e-mail was opened by a data subject, and which links in the e-mail were called up by data subjects.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">Such personal data collected in the tracking pixels contained in the newsletters are stored and analyzed by the controller in order to optimize the shipping of the newsletter, as well as to adapt the content of future newsletters even better to the interests of the data subject. These personal data will not be passed on to third parties. Data subjects are at any time entitled to revoke the respective separate declaration of consent issued by means of the double-opt-in procedure. After a revocation, these personal data will be deleted by the controller. The Company Name automatically regards a withdrawal from the receipt of the newsletter as a revocation.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">8. Contact possibility via the website</span><br>The website of the Company Name contains information that enables a quick electronic contact to our enterprise, as well as direct communication with us, which also includes a general address of the so-called electronic mail (e-mail address). If a data subject contacts the controller by e-mail or via a contact form, the personal data transmitted by the data subject are automatically stored. Such personal data transmitted on a voluntary basis by a data subject to the data controller are stored for the purpose of processing or contacting the data subject. There is no transfer of this personal data to third parties.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">9. Routine erasure and blocking of personal data<br>The data controller shall process and store the personal data of the data subject only for the period necessary to achieve the purpose of storage, or as far as this is granted by the European legislator or other legislators in laws or regulations to which the controller is subject to.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\">If the storage purpose is not applicable, or if a storage period prescribed by the European legislator or another competent legislator expires, the personal data are routinely blocked or erased in accordance with legal requirements.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">10. Rights of the data subject</span><br>a) Right of confirmation<br>Each data subject shall have the right granted by the European legislator to obtain from the controller the confirmation as to whether or not personal data concerning him or her are being processed. If a data subject wishes to avail himself of this right of confirmation, he or she may, at any time, contact any employee of the controller.<br>b) Right of access<br>Each data subject shall have the right granted by the European legislator to obtain from the controller free information about his or her personal data stored at any time and a copy of this information. Furthermore, the European directives and regulations grant the data subject access to the following information:<br>the purposes of the processing;<br>the categories of personal data concerned;<br>the recipients or categories of recipients to whom the personal data have been or will be disclosed, in particular recipients in third countries or international organisations;<br>where possible, the envisaged period for which the personal data will be stored, or, if not possible, the criteria used to determine that period;<br>the existence of the right to request from the controller rectification or erasure of personal data, or restriction of processing of personal data concerning the data subject, or to object to such processing;<br>the existence of the right to lodge a complaint with a supervisory authority;<br>where the personal data are not collected from the data subject, any available information as to their source;<br>the existence of automated decision-making, including profiling, referred to in Article 22(1) and (4) of the GDPR and, at least in those cases, meaningful information about the logic involved, as well as the significance and envisaged consequences of such processing for the data subject.<br>Furthermore, the data subject shall have a right to obtain information as to whether personal data are transferred to a third country or to an international organisation. Where this is the case, the data subject shall have the right to be informed of the appropriate safeguards relating to the transfer.<br>If a data subject wishes to avail himself of this right of access, he or she may, at any time, contact any employee of the controller.<br>c) Right to rectification<br>Each data subject shall have the right granted by the European legislator to obtain from the controller without undue delay the rectification of inaccurate personal data concerning him or her. Taking into account the purposes of the processing, the data subject shall have the right to have incomplete personal data completed, including by means of providing a supplementary statement.<br>If a data subject wishes to exercise this right to rectification, he or she may, at any time, contact any employee of the controller.<br>d) Right to erasure (Right to be forgotten)<br>Each data subject shall have the right granted by the European legislator to obtain from the controller the erasure of personal data concerning him or her without undue delay, and the controller shall have the obligation to erase personal data without undue delay where one of the following grounds applies, as long as the processing is not necessary:<br>The personal data are no longer necessary in relation to the purposes for which they were collected or otherwise processed.<br>The data subject withdraws consent to which the processing is based according to point (a) of Article 6(1) of the GDPR, or point (a) of Article 9(2) of the GDPR, and where there is no other legal ground for the processing.<br>The data subject objects to the processing pursuant to Article 21(1) of the GDPR and there are no overriding legitimate grounds for the processing, or the data subject objects to the processing pursuant to Article 21(2) of the GDPR.<br>The personal data have been unlawfully processed.<br>The personal data must be erased for compliance with a legal obligation in Union or Member State law to which the controller is subject.<br>The personal data have been collected in relation to the offer of information society services referred to in Article 8(1) of the GDPR.<br>If one of the aforementioned reasons applies, and a data subject wishes to request the erasure of personal data stored by the Company Name, he or she may, at any time, contact any employee of the controller. An employee of Company Name shall promptly ensure that the erasure request is complied with immediately.<br>Where the controller has made personal data public and is obliged pursuant to Article 17(1) to erase the personal data, the controller, taking account of available technology and the cost of implementation, shall take reasonable steps, including technical measures, to inform other controllers processing the personal data that the data subject has requested erasure by such controllers of any links to, or copy or replication of, those personal data, as far as processing is not required. An employees of the Company Name will arrange the necessary measures in individual cases.<br>e) Right of restriction of processing<br>Each data subject shall have the right granted by the European legislator to obtain from the controller restriction of processing where one of the following applies:<br>The accuracy of the personal data is contested by the data subject, for a period enabling the controller to verify the accuracy of the personal data.<br>The processing is unlawful and the data subject opposes the erasure of the personal data and requests instead the restriction of their use instead.<br>The controller no longer needs the personal data for the purposes of the processing, but they are required by the data subject for the establishment, exercise or defence of legal claims.<br>The data subject has objected to processing pursuant to Article 21(1) of the GDPR pending the verification whether the legitimate grounds of the controller override those of the data subject.<br>If one of the aforementioned conditions is met, and a data subject wishes to request the restriction of the processing of personal data stored by the Company Name, he or she may at any time contact any employee of the controller. The employee of the Company Name will arrange the restriction of the processing.<br>f) Right to data portability<br>Each data subject shall have the right granted by the European legislator, to receive the personal data concerning him or her, which was provided to a controller, in a structured, commonly used and machine-readable format. He or she shall have the right to transmit those data to another controller without hindrance from the controller to which the personal data have been provided, as long as the processing is based on consent pursuant to point (a) of Article 6(1) of the GDPR or point (a) of Article 9(2) of the GDPR, or on a contract pursuant to point (b) of Article 6(1) of the GDPR, and the processing is carried out by automated means, as long as the processing is not necessary for the performance of a task carried out in the public interest or in the exercise of official authority vested in the controller.<br>Furthermore, in exercising his or her right to data portability pursuant to Article 20(1) of the GDPR, the data subject shall have the right to have personal data transmitted directly from one controller to another, where technically feasible and when doing so does not adversely affect the rights and freedoms of others.<br>In order to assert the right to data portability, the data subject may at any time contact any employee of the Company Name.<br>g) Right to object<br>Each data subject shall have the right granted by the European legislator to object, on grounds relating to his or her particular situation, at any time, to processing of personal data concerning him or her, which is based on point (e) or (f) of Article 6(1) of the GDPR. This also applies to profiling based on these provisions.<br>The Company Name shall no longer process the personal data in the event of the objection, unless we can demonstrate compelling legitimate grounds for the processing which override the interests, rights and freedoms of the data subject, or for the establishment, exercise or defence of legal claims.<br>If the Company Name processes personal data for direct marketing purposes, the data subject shall have the right to object at any time to processing of personal data concerning him or her for such marketing. This applies to profiling to the extent that it is related to such direct marketing. If the data subject objects to the Company Name to the processing for direct marketing purposes, the Company Name will no longer process the personal data for these purposes.<br>In addition, the data subject has the right, on grounds relating to his or her particular situation, to object to processing of personal data concerning him or her by the Company Name for scientific or historical research purposes, or for statistical purposes pursuant to Article 89(1) of the GDPR, unless the processing is necessary for the performance of a task carried out for reasons of public interest.<br>In order to exercise the right to object, the data subject may contact any employee of the Company Name. In addition, the data subject is free in the context of the use of information society services, and notwithstanding Directive 2002/58/EC, to use his or her right to object by automated means using technical specifications.<br>h) Automated individual decision-making, including profiling<br>Each data subject shall have the right granted by the European legislator not to be subject to a decision based solely on automated processing, including profiling, which produces legal effects concerning him or her, or similarly significantly affects him or her, as long as the decision (1) is not is necessary for entering into, or the performance of, a contract between the data subject and a data controller, or (2) is not authorised by Union or Member State law to which the controller is subject and which also lays down suitable measures to safeguard the data subject’s rights and freedoms and legitimate interests, or (3) is not based on the data subject’s explicit consent.<br>If the decision (1) is necessary for entering into, or the performance of, a contract between the data subject and a data controller, or (2) it is based on the data subject’s explicit consent, the Company Name shall implement suitable measures to safeguard the data subject’s rights and freedoms and legitimate interests, at least the right to obtain human intervention on the part of the controller, to express his or her point of view and contest the decision.<br>If the data subject wishes to exercise the rights concerning automated individual decision-making, he or she may, at any time, contact any employee of the Company Name.<br>i) Right to withdraw data protection consent<br>Each data subject shall have the right granted by the European legislator to withdraw his or her consent to processing of his or her personal data at any time.<br>If the data subject wishes to exercise the right to withdraw the consent, he or she may, at any time, contact any employee of the Company Name.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">11. Legal basis for the processing</span><br>Art. 6(1) lit. a GDPR serves as the legal basis for processing operations for which we obtain consent for a specific processing purpose. If the processing of personal data is necessary for the performance of a contract to which the data subject is party, as is the case, for example, when processing operations are necessary for the supply of goods or to provide any other service, the processing is based on Article 6(1) lit. b GDPR. The same applies to such processing operations which are necessary for carrying out pre-contractual measures, for example in the case of inquiries concerning our products or services. Is our company subject to a legal obligation by which processing of personal data is required, such as for the fulfillment of tax obligations, the processing is based on Art. 6(1) lit. c GDPR. In rare cases, the processing of personal data may be necessary to protect the vital interests of the data subject or of another natural person. This would be the case, for example, if a visitor were injured in our company and his name, age, health insurance data or other vital information would have to be passed on to a doctor, hospital or other third party. Then the processing would be based on Art. 6(1) lit. d GDPR. Finally, processing operations could be based on Article 6(1) lit. f GDPR. This legal basis is used for processing operations which are not covered by any of the abovementioned legal grounds, if processing is necessary for the purposes of the legitimate interests pursued by our company or by a third party, except where such interests are overridden by the interests or fundamental rights and freedoms of the data subject which require protection of personal data. Such processing operations are particularly permissible because they have been specifically mentioned by the European legislator. He considered that a legitimate interest could be assumed if the data subject is a client of the controller (Recital 47 Sentence 2 GDPR).</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">12. The legitimate interests pursued by the controller or by a third party</span><br>Where the processing of personal data is based on Article 6(1) lit. f GDPR our legitimate interest is to carry out our business in favor of the well-being of all our employees and the shareholders.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">13. Period for which the personal data will be stored</span><br>The criteria used to determine the period of storage of personal data is the respective statutory retention period. After expiration of that period, the corresponding data is routinely deleted, as long as it is no longer necessary for the fulfillment of the contract or the initiation of a contract.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">14. Provision of personal data as statutory or contractual requirement; Requirement necessary to enter into a contract; Obligation of the data subject to provide the personal data; possible consequences of failure to provide such data</span><br>We clarify that the provision of personal data is partly required by law (e.g. tax regulations) or can also result from contractual provisions (e.g. information on the contractual partner). Sometimes it may be necessary to conclude a contract that the data subject provides us with personal data, which must subsequently be processed by us. The data subject is, for example, obliged to provide us with personal data when our company signs a contract with him or her. The non-provision of the personal data would have the consequence that the contract with the data subject could not be concluded. Before personal data is provided by the data subject, the data subject must contact any employee. The employee clarifies to the data subject whether the provision of the personal data is required by law or contract or is necessary for the conclusion of the contract, whether there is an obligation to provide the personal data and the consequences of non-provision of the personal data.</p><p style=\"margin-bottom: 0px; font-size: 14px; font-family: Poppins; color: rgb(119, 119, 119); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">15. Existence of automated decision-making</span><br>As a responsible company, we do not use automatic decision-making or profiling. This Privacy Policy has been generated by the Privacy Policy Generator of the External Data Protection Officers that was developed in cooperation with the Media Law Lawyers from WBS-LAW.</p>', '2023-09-10 09:27:32', '2023-09-10 09:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `timers`
--

CREATE TABLE `timers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `address`, `description`, `mobile`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Caesar da', 'hamim@gmail.com', NULL, '$2y$10$zLe9vM27QYdR1Pi88Bf3wu10cLD5020G0T9sLWmWNOis6BB/wxGIC', '3.png', 'dhaka,bangladesh', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor', NULL, NULL, '2023-05-11 05:03:18', '2023-08-14 07:52:27'),
(4, 'Evangeline Jenkins', 'dexe@mailinator.com', NULL, '$2y$10$6/lq6meQdYBNI2C2M1VWLuK5fmOR/epXAO/0f.5e1AlNbnJ0LkwDe', NULL, NULL, NULL, NULL, NULL, '2023-05-11 06:01:49', '2023-05-13 05:10:54'),
(7, 'Joan Payne', 'vumakuxip@mailinator.com', NULL, '$2y$10$SlTh3saVf//5Ug7jv3jYE.TNET8ENIUo5j6n8qIvAc.xKAZ/dnFmG', NULL, NULL, NULL, NULL, NULL, '2023-05-11 09:28:10', NULL),
(8, 'admin', 'sarweb@gmail.com', NULL, '$2y$10$5i66zOSkx00ZuHGvjkuNGuobMqs.0ibqI/6KP0AfCbHaG03VpkxA6', NULL, NULL, NULL, NULL, NULL, '2023-05-11 11:18:11', '2023-05-11 12:48:51'),
(10, 'Kieran Anderson', 'sypobele@mailinator.com', NULL, '$2y$10$TxEV56eqx7qdc.LzLHLHbe5BlX/xDQnjAvVvD/QBtd64bVfBTZAOO', NULL, NULL, NULL, NULL, NULL, '2023-05-11 12:35:28', '2023-05-11 12:40:47'),
(11, 'Amber Gordon', 'ziwa@mailinator.com', NULL, '$2y$10$QcX45mJpJmmBcdgn81Gd1.VOj6rnoE3N5tr95a141nEQGc8w/F7we', NULL, NULL, NULL, NULL, NULL, '2023-05-11 12:38:11', '2023-05-11 12:38:11'),
(12, 'Laith French', 'difeg@mailinator.com', NULL, '$2y$10$cm4nxgCs12fLJKxNvrgK4.wlol2rtBfZvHGrhQ3bBuJeJHt/T0PZO', NULL, NULL, NULL, NULL, NULL, '2023-05-11 12:42:03', '2023-05-11 12:42:03'),
(13, 'Naida Zimmerman', 'xumyqygyv@mailinator.com', NULL, '$2y$10$eTLn.tg5qJuUKkJiCSeE1uMN1VPDtwrxWGpKCV6J7HpPhVWl5vPJ2', NULL, NULL, NULL, NULL, NULL, '2023-05-11 12:42:30', NULL),
(14, 'Ora Hull', 'gyfy@mailinator.com', NULL, '$2y$10$KPdt/smFNHJV7ObOdhY52ef94aj4kSSCENfCP5oldjwk6Soh9jkdK', NULL, NULL, NULL, NULL, NULL, '2023-05-13 05:09:20', '2023-05-13 05:09:20'),
(16, 'admin', 'nur@nur.com', NULL, '$2y$10$wbVzlkpvLdcwx3f6Fatdn.HVjttxrd4otC6xQBMtQgqkv09IKwKcW', NULL, NULL, NULL, NULL, NULL, '2023-05-13 11:37:42', '2023-05-13 11:37:42'),
(18, 'Honorato Buchanan', 'sinetuwiv@mailinator.com', NULL, '$2y$10$VomlKysd7rsA1aToumkQAOOBsGpklFUZDIqQtasVN91oJ5mCacPC2', NULL, NULL, NULL, NULL, NULL, '2023-05-15 06:05:31', '2023-05-15 06:05:31'),
(19, 'Fallon Ellison', 'jiwunydef@mailinator.com', NULL, '$2y$10$WZVNGKPy7ywNEoITvdyH0Og.Pu3tyEUoH6JSNXn5RhfZdb4KsBx5u', NULL, NULL, NULL, NULL, NULL, '2023-05-16 05:19:09', '2023-05-16 05:19:09'),
(20, 'Alexa Duffy', 'wesa@mailinator.com', NULL, '$2y$10$bcZSbmU7VmGb1zQMBRlPtOd8O69.sMK5PlIuC2B7d.rArwmW7I1z.', NULL, NULL, NULL, NULL, NULL, '2023-05-17 05:30:42', '2023-05-17 05:30:42'),
(21, 'Merrill Park', 'paly@mailinator.com', NULL, '$2y$10$39ieCHCNaaZyypHUGk4b5uOGtIEkmJCINo50VuOdVisOykpz.PvC.', NULL, NULL, NULL, NULL, NULL, '2023-05-17 06:57:01', '2023-05-17 06:57:01'),
(22, 'Lillith Butler', 'kyvizizam@mailinator.com', NULL, '$2y$10$IZruxFxg4gyP8u6U3JlmZucpSCoiDnKfeBYyw9aLlvz2EK/0vnAQq', NULL, NULL, NULL, NULL, NULL, '2023-05-18 06:12:31', '2023-05-18 06:12:31'),
(23, 'sar', 'sa1r@gmail.com', NULL, '$2y$10$wNVKCZna96MN8TdggyQm6.ZTGqFuXzX97ehLW5BLQuisW1oJ6Lmy.', NULL, NULL, NULL, NULL, NULL, '2023-05-18 07:24:37', '2023-05-18 07:24:37'),
(24, 'Joan Williamson', 'ruri@mailinator.com', NULL, '$2y$10$4xXS4kwVVFMP6j5PUqpymeQJmItBhkSC31WPnGLNUQlHCvc5mG7N6', NULL, NULL, NULL, NULL, NULL, '2023-05-20 05:26:12', '2023-05-20 05:26:12'),
(25, 'Pamela Mcbride', 'zynefedo@mailinator.com', NULL, '$2y$10$2WYeN97toDQ4vDwNZec7PekCR4jqazmIxTa50DgevbV0rEzq72HKu', NULL, NULL, NULL, NULL, NULL, '2023-05-20 12:10:56', '2023-05-20 12:10:56'),
(26, 'Oscar Thornton', 'jozewivol@mailinator.com', NULL, '$2y$10$KLIikVXqJxqzVL7U4hzpxePX2gljyLgjX1KRkqCP43MVhzEpCcVGa', NULL, NULL, NULL, NULL, NULL, '2023-05-21 06:02:12', '2023-05-21 06:02:12'),
(27, 'Cameron Phelps', 'xyfipikuz@mailinator.com', NULL, '$2y$10$orrSWilLT6RxZJQRnyPhd.7KY6VhJ7PU0ogVvWbLIMTqcB7YNQE7S', NULL, NULL, NULL, NULL, NULL, '2023-05-23 13:27:19', '2023-05-23 13:27:19'),
(28, 'Fritz Cole', 'herydu@mailinator.com', NULL, '$2y$10$RWD1nvx83y5Coo/riJu2oeZ04jDyuySXEdgZQR7byuQnTw.KtssGC', NULL, NULL, NULL, NULL, NULL, '2023-05-25 06:01:25', '2023-05-25 06:01:25'),
(29, 'Geraldine Mcconnell', 'safo@mailinator.com', NULL, '$2y$10$qm4uRejcSC8QXLVskJVoZeKC/EVRNzeHIAknh/Ox3uLws2yWIcw4i', NULL, NULL, NULL, NULL, NULL, '2023-05-27 06:39:46', '2023-05-27 06:39:46'),
(30, 'Lyle Blankenship', 'jacaxeki@mailinator.com', NULL, '$2y$10$Uk7LzRTJk4YBBwecXZw4AuGnwYy9Gu63uscAaTZOaqBM4NwNy0o.G', NULL, NULL, NULL, NULL, NULL, '2023-05-28 05:43:17', '2023-05-28 05:43:17'),
(31, 'Ryan Forbes', 'kazofi@mailinator.com', NULL, '$2y$10$kPqnoFzd/xNcBXT6F9mXMur.V5eN9mPMd9I9xspXtJu9tNmyZcN4S', NULL, NULL, NULL, NULL, NULL, '2023-05-29 07:57:40', '2023-05-29 07:57:40'),
(32, 'Axel Gentry', 'litutikity@mailinator.com', NULL, '$2y$10$PmyrPbhBI1vr4GeCcxGtU.QQzqyKMrxywMg4MC5oWdvIVgp1pvlWm', NULL, NULL, NULL, NULL, NULL, '2023-05-29 09:27:12', '2023-05-29 09:27:12'),
(33, 'Igor Lawson', 'fawytajemo@mailinator.com', NULL, '$2y$10$jGLB.PBPF2jnXrGHGg3OZuXFNnL0zkNtU05d3Z1kUadpJ0LB4JcXC', NULL, NULL, NULL, NULL, NULL, '2023-05-30 06:06:39', '2023-05-30 06:06:39'),
(34, 'Dennis Fuller', 'pafalif@mailinator.com', NULL, '$2y$10$.6/ewWtgN4/F7uH9MTJrxOdtzId.OJ2GYK1YtlXRq.ta5dhZXKRLm', NULL, NULL, NULL, NULL, NULL, '2023-05-31 09:18:12', '2023-05-31 09:18:12'),
(35, 'Melodie Stephenson', 'bezodexeqa@mailinator.com', NULL, '$2y$10$Q81ThO09SDuZjc93bIKLsulfI.LlDXNL4JFQjefGzZd7/kLQqyWZa', NULL, NULL, NULL, NULL, NULL, '2023-05-31 10:36:40', NULL),
(36, 'Penelope Cantu', 'zyfik@mailinator.com', NULL, '$2y$10$Bvjo.MRChB4mTtvfNNGgsuXtqR9NRcaTP4jlye4kgjBlNy5Rs5Fqm', NULL, NULL, NULL, NULL, NULL, '2023-06-01 06:27:39', '2023-06-01 06:27:39'),
(37, 'Zoe Franks', 'sutop@mailinator.com', NULL, '$2y$10$Zc7/Blal3ErWdICQ6XhG7Orb0yaJw6RFMx4eK1Uc1kC3legS2vZ0C', NULL, NULL, NULL, NULL, NULL, '2023-06-01 13:55:55', '2023-06-01 13:55:55'),
(38, 'Nur Islam', 'nugortech@gmail.com', NULL, '$2y$10$nxcSgqp9XwOq8Xj6jyElEeIm832mmS3C8XbLR17aG8rDS.40OZZcS', '38.jpg', NULL, NULL, NULL, NULL, '2023-06-02 16:58:47', '2023-06-02 17:02:02'),
(41, 'John Doe', 'john@example.com', NULL, '$2y$10$w2iJy0qBfvTUwdNXwTZZQuPm8q7Ca3EG2K01V6dFuAZ0G/NFRBNjy', NULL, NULL, NULL, NULL, NULL, '2023-08-20 12:17:36', '2023-08-20 12:17:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billingdetails`
--
ALTER TABLE `billingdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactinfos`
--
ALTER TABLE `contactinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_auths`
--
ALTER TABLE `customer_auths`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_auths_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_counts`
--
ALTER TABLE `login_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_counts_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timers`
--
ALTER TABLE `timers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `billingdetails`
--
ALTER TABLE `billingdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contactinfos`
--
ALTER TABLE `contactinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_auths`
--
ALTER TABLE `customer_auths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `login_counts`
--
ALTER TABLE `login_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timers`
--
ALTER TABLE `timers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_counts`
--
ALTER TABLE `login_counts`
  ADD CONSTRAINT `login_counts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
