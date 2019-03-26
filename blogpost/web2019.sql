-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 01:18 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_07_090313_create_posts_table', 1),
(4, '2019_02_07_094809_create_comments_table', 1),
(5, '2019_02_25_083000_create_profiles_table', 1),
(6, '2019_03_05_032201_add_add_id_to_posts_table', 1),
(7, '2019_03_05_072028_create_tags_table', 1),
(8, '2019_03_05_072259_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'EZECOM', 'Need 10 Intern', '2019-03-16 21:34:54', '2019-03-16 21:34:54', 1),
(19, 'Laravel Demo', 'Test for', '2019-03-17 04:31:26', '2019-03-17 05:11:23', 1),
(20, 'Google Homework', 'How do you do your homework', '2019-03-17 05:12:22', '2019-03-17 05:12:22', 1),
(21, 'EZECOM', 'Post: Finding many position for internship', '2019-03-17 05:15:59', '2019-03-17 05:15:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-03-07 17:00:00', '2019-03-29 17:00:00'),
(2, 13, 1, NULL, NULL),
(3, 14, 1, NULL, NULL),
(4, 15, 2, NULL, NULL),
(5, 16, 2, NULL, NULL),
(6, 16, 2, NULL, NULL),
(7, 16, 2, NULL, NULL),
(8, 16, 2, NULL, NULL),
(9, 16, 2, NULL, NULL),
(10, 16, 2, NULL, NULL),
(11, 16, 2, NULL, NULL),
(12, 16, 2, NULL, NULL),
(13, 16, 2, NULL, NULL),
(14, 16, 2, NULL, NULL),
(15, 16, 2, NULL, NULL),
(16, 16, 2, NULL, NULL),
(17, 16, 2, NULL, NULL),
(18, 16, 2, NULL, NULL),
(19, 16, 2, NULL, NULL),
(20, 16, 2, NULL, NULL),
(21, 16, 2, NULL, NULL),
(22, 16, 2, NULL, NULL),
(23, 16, 2, NULL, NULL),
(24, 16, 2, NULL, NULL),
(25, 16, 2, NULL, NULL),
(26, 16, 2, NULL, NULL),
(27, 16, 2, NULL, NULL),
(28, 16, 2, NULL, NULL),
(29, 16, 2, NULL, NULL),
(30, 16, 2, NULL, NULL),
(31, 16, 2, NULL, NULL),
(32, 16, 2, NULL, NULL),
(33, 16, 2, NULL, NULL),
(34, 16, 2, NULL, NULL),
(35, 16, 2, NULL, NULL),
(36, 16, 2, NULL, NULL),
(37, 16, 2, NULL, NULL),
(38, 16, 2, NULL, NULL),
(39, 16, 2, NULL, NULL),
(40, 16, 2, NULL, NULL),
(41, 16, 2, NULL, NULL),
(42, 16, 2, NULL, NULL),
(43, 16, 2, NULL, NULL),
(44, 16, 2, NULL, NULL),
(45, 16, 2, NULL, NULL),
(46, 16, 2, NULL, NULL),
(47, 16, 2, NULL, NULL),
(48, 16, 2, NULL, NULL),
(49, 16, 2, NULL, NULL),
(50, 16, 2, NULL, NULL),
(51, 16, 2, NULL, NULL),
(52, 16, 2, NULL, NULL),
(53, 16, 2, NULL, NULL),
(54, 16, 2, NULL, NULL),
(55, 16, 2, NULL, NULL),
(56, 16, 2, NULL, NULL),
(57, 16, 2, NULL, NULL),
(58, 16, 2, NULL, NULL),
(59, 16, 2, NULL, NULL),
(60, 16, 2, NULL, NULL),
(61, 16, 2, NULL, NULL),
(62, 16, 2, NULL, NULL),
(63, 16, 2, NULL, NULL),
(64, 16, 2, NULL, NULL),
(65, 16, 2, NULL, NULL),
(66, 16, 2, NULL, NULL),
(67, 16, 2, NULL, NULL),
(68, 16, 2, NULL, NULL),
(69, 16, 2, NULL, NULL),
(70, 16, 2, NULL, NULL),
(71, 16, 2, NULL, NULL),
(72, 16, 2, NULL, NULL),
(73, 16, 2, NULL, NULL),
(74, 16, 2, NULL, NULL),
(75, 16, 2, NULL, NULL),
(76, 16, 2, NULL, NULL),
(77, 16, 2, NULL, NULL),
(78, 16, 2, NULL, NULL),
(79, 16, 2, NULL, NULL),
(80, 16, 2, NULL, NULL),
(81, 16, 2, NULL, NULL),
(82, 16, 2, NULL, NULL),
(83, 16, 2, NULL, NULL),
(84, 16, 2, NULL, NULL),
(85, 16, 2, NULL, NULL),
(86, 16, 2, NULL, NULL),
(87, 16, 2, NULL, NULL),
(88, 16, 2, NULL, NULL),
(89, 16, 2, NULL, NULL),
(90, 16, 2, NULL, NULL),
(91, 16, 2, NULL, NULL),
(92, 16, 2, NULL, NULL),
(93, 16, 2, NULL, NULL),
(94, 16, 2, NULL, NULL),
(95, 16, 2, NULL, NULL),
(96, 16, 2, NULL, NULL),
(97, 16, 2, NULL, NULL),
(98, 16, 2, NULL, NULL),
(99, 16, 2, NULL, NULL),
(100, 16, 2, NULL, NULL),
(101, 16, 2, NULL, NULL),
(102, 16, 2, NULL, NULL),
(103, 16, 2, NULL, NULL),
(104, 16, 2, NULL, NULL),
(105, 16, 2, NULL, NULL),
(106, 16, 2, NULL, NULL),
(107, 16, 2, NULL, NULL),
(108, 16, 2, NULL, NULL),
(109, 16, 2, NULL, NULL),
(110, 16, 2, NULL, NULL),
(111, 16, 2, NULL, NULL),
(112, 16, 2, NULL, NULL),
(113, 16, 2, NULL, NULL),
(114, 16, 2, NULL, NULL),
(115, 16, 2, NULL, NULL),
(116, 16, 2, NULL, NULL),
(117, 16, 2, NULL, NULL),
(118, 16, 2, NULL, NULL),
(119, 16, 2, NULL, NULL),
(120, 16, 2, NULL, NULL),
(121, 16, 2, NULL, NULL),
(122, 16, 2, NULL, NULL),
(123, 16, 2, NULL, NULL),
(124, 16, 2, NULL, NULL),
(125, 16, 2, NULL, NULL),
(126, 16, 2, NULL, NULL),
(127, 16, 2, NULL, NULL),
(128, 16, 2, NULL, NULL),
(129, 16, 2, NULL, NULL),
(130, 16, 2, NULL, NULL),
(131, 16, 2, NULL, NULL),
(132, 16, 2, NULL, NULL),
(133, 16, 2, NULL, NULL),
(134, 16, 2, NULL, NULL),
(135, 16, 2, NULL, NULL),
(136, 16, 2, NULL, NULL),
(137, 16, 2, NULL, NULL),
(138, 16, 2, NULL, NULL),
(139, 16, 2, NULL, NULL),
(140, 16, 2, NULL, NULL),
(141, 16, 2, NULL, NULL),
(142, 16, 2, NULL, NULL),
(143, 16, 2, NULL, NULL),
(144, 16, 2, NULL, NULL),
(145, 16, 2, NULL, NULL),
(146, 16, 2, NULL, NULL),
(147, 16, 2, NULL, NULL),
(148, 16, 2, NULL, NULL),
(149, 16, 2, NULL, NULL),
(150, 16, 2, NULL, NULL),
(151, 16, 2, NULL, NULL),
(152, 16, 2, NULL, NULL),
(153, 16, 2, NULL, NULL),
(154, 16, 2, NULL, NULL),
(155, 16, 2, NULL, NULL),
(156, 16, 2, NULL, NULL),
(157, 16, 2, NULL, NULL),
(158, 16, 2, NULL, NULL),
(159, 16, 2, NULL, NULL),
(160, 16, 2, NULL, NULL),
(161, 16, 2, NULL, NULL),
(162, 16, 2, NULL, NULL),
(163, 16, 2, NULL, NULL),
(164, 16, 2, NULL, NULL),
(165, 16, 2, NULL, NULL),
(166, 16, 2, NULL, NULL),
(167, 16, 2, NULL, NULL),
(168, 16, 2, NULL, NULL),
(169, 16, 2, NULL, NULL),
(170, 16, 2, NULL, NULL),
(171, 16, 2, NULL, NULL),
(172, 16, 2, NULL, NULL),
(173, 16, 2, NULL, NULL),
(174, 16, 2, NULL, NULL),
(175, 16, 2, NULL, NULL),
(176, 16, 2, NULL, NULL),
(177, 16, 2, NULL, NULL),
(178, 16, 2, NULL, NULL),
(179, 16, 2, NULL, NULL),
(180, 16, 2, NULL, NULL),
(181, 16, 2, NULL, NULL),
(182, 16, 2, NULL, NULL),
(183, 16, 2, NULL, NULL),
(184, 16, 2, NULL, NULL),
(185, 16, 2, NULL, NULL),
(186, 16, 2, NULL, NULL),
(187, 16, 2, NULL, NULL),
(188, 16, 2, NULL, NULL),
(189, 16, 2, NULL, NULL),
(190, 16, 2, NULL, NULL),
(191, 16, 2, NULL, NULL),
(192, 16, 2, NULL, NULL),
(193, 16, 2, NULL, NULL),
(194, 16, 2, NULL, NULL),
(195, 16, 2, NULL, NULL),
(196, 16, 2, NULL, NULL),
(197, 16, 2, NULL, NULL),
(198, 16, 2, NULL, NULL),
(199, 16, 2, NULL, NULL),
(200, 16, 2, NULL, NULL),
(201, 16, 2, NULL, NULL),
(202, 16, 2, NULL, NULL),
(203, 16, 2, NULL, NULL),
(204, 16, 2, NULL, NULL),
(205, 16, 2, NULL, NULL),
(206, 16, 2, NULL, NULL),
(207, 16, 2, NULL, NULL),
(208, 16, 2, NULL, NULL),
(209, 16, 2, NULL, NULL),
(210, 16, 2, NULL, NULL),
(211, 16, 2, NULL, NULL),
(212, 16, 2, NULL, NULL),
(213, 16, 2, NULL, NULL),
(214, 16, 2, NULL, NULL),
(215, 16, 2, NULL, NULL),
(216, 16, 2, NULL, NULL),
(217, 16, 2, NULL, NULL),
(218, 16, 2, NULL, NULL),
(219, 16, 2, NULL, NULL),
(220, 16, 2, NULL, NULL),
(221, 16, 2, NULL, NULL),
(222, 16, 2, NULL, NULL),
(223, 16, 2, NULL, NULL),
(224, 16, 2, NULL, NULL),
(225, 16, 2, NULL, NULL),
(226, 16, 2, NULL, NULL),
(227, 16, 2, NULL, NULL),
(228, 16, 2, NULL, NULL),
(229, 16, 2, NULL, NULL),
(230, 16, 2, NULL, NULL),
(231, 16, 2, NULL, NULL),
(232, 16, 2, NULL, NULL),
(233, 16, 2, NULL, NULL),
(234, 16, 2, NULL, NULL),
(235, 16, 2, NULL, NULL),
(236, 16, 2, NULL, NULL),
(237, 16, 2, NULL, NULL),
(238, 16, 2, NULL, NULL),
(239, 16, 2, NULL, NULL),
(240, 16, 2, NULL, NULL),
(241, 16, 2, NULL, NULL),
(242, 16, 2, NULL, NULL),
(243, 16, 2, NULL, NULL),
(244, 16, 2, NULL, NULL),
(245, 16, 2, NULL, NULL),
(246, 16, 2, NULL, NULL),
(247, 16, 2, NULL, NULL),
(248, 16, 2, NULL, NULL),
(249, 16, 2, NULL, NULL),
(250, 16, 2, NULL, NULL),
(251, 16, 2, NULL, NULL),
(252, 16, 2, NULL, NULL),
(253, 16, 2, NULL, NULL),
(254, 16, 2, NULL, NULL),
(255, 16, 2, NULL, NULL),
(256, 16, 2, NULL, NULL),
(257, 16, 2, NULL, NULL),
(258, 16, 2, NULL, NULL),
(259, 16, 2, NULL, NULL),
(260, 16, 2, NULL, NULL),
(261, 16, 2, NULL, NULL),
(262, 16, 2, NULL, NULL),
(263, 16, 2, NULL, NULL),
(264, 16, 2, NULL, NULL),
(265, 16, 2, NULL, NULL),
(266, 16, 2, NULL, NULL),
(267, 16, 2, NULL, NULL),
(268, 16, 2, NULL, NULL),
(269, 16, 2, NULL, NULL),
(270, 16, 2, NULL, NULL),
(271, 16, 2, NULL, NULL),
(272, 16, 2, NULL, NULL),
(273, 16, 2, NULL, NULL),
(274, 16, 2, NULL, NULL),
(275, 16, 2, NULL, NULL),
(276, 16, 2, NULL, NULL),
(277, 16, 2, NULL, NULL),
(278, 16, 2, NULL, NULL),
(279, 16, 2, NULL, NULL),
(280, 16, 2, NULL, NULL),
(281, 16, 2, NULL, NULL),
(282, 16, 2, NULL, NULL),
(283, 16, 2, NULL, NULL),
(284, 16, 2, NULL, NULL),
(285, 16, 2, NULL, NULL),
(286, 16, 2, NULL, NULL),
(287, 16, 2, NULL, NULL),
(288, 16, 2, NULL, NULL),
(289, 16, 2, NULL, NULL),
(290, 16, 2, NULL, NULL),
(291, 16, 2, NULL, NULL),
(292, 16, 2, NULL, NULL),
(293, 16, 2, NULL, NULL),
(294, 16, 2, NULL, NULL),
(295, 16, 2, NULL, NULL),
(296, 16, 2, NULL, NULL),
(297, 16, 2, NULL, NULL),
(298, 16, 2, NULL, NULL),
(299, 16, 2, NULL, NULL),
(300, 16, 2, NULL, NULL),
(301, 16, 2, NULL, NULL),
(302, 16, 2, NULL, NULL),
(303, 16, 2, NULL, NULL),
(304, 16, 2, NULL, NULL),
(305, 16, 2, NULL, NULL),
(306, 16, 2, NULL, NULL),
(307, 16, 2, NULL, NULL),
(308, 16, 2, NULL, NULL),
(309, 16, 2, NULL, NULL),
(310, 16, 2, NULL, NULL),
(311, 16, 2, NULL, NULL),
(312, 16, 2, NULL, NULL),
(313, 16, 2, NULL, NULL),
(314, 16, 2, NULL, NULL),
(315, 16, 2, NULL, NULL),
(316, 16, 2, NULL, NULL),
(317, 16, 2, NULL, NULL),
(318, 16, 2, NULL, NULL),
(319, 16, 2, NULL, NULL),
(320, 16, 2, NULL, NULL),
(321, 16, 2, NULL, NULL),
(322, 16, 2, NULL, NULL),
(323, 16, 2, NULL, NULL),
(324, 16, 2, NULL, NULL),
(325, 16, 2, NULL, NULL),
(326, 16, 2, NULL, NULL),
(327, 16, 2, NULL, NULL),
(328, 16, 2, NULL, NULL),
(329, 16, 2, NULL, NULL),
(330, 16, 2, NULL, NULL),
(331, 16, 2, NULL, NULL),
(332, 16, 2, NULL, NULL),
(333, 16, 2, NULL, NULL),
(334, 16, 2, NULL, NULL),
(335, 16, 2, NULL, NULL),
(336, 16, 2, NULL, NULL),
(337, 16, 2, NULL, NULL),
(338, 16, 2, NULL, NULL),
(339, 16, 2, NULL, NULL),
(340, 16, 2, NULL, NULL),
(341, 16, 2, NULL, NULL),
(342, 16, 2, NULL, NULL),
(343, 16, 2, NULL, NULL),
(344, 16, 2, NULL, NULL),
(345, 16, 2, NULL, NULL),
(346, 16, 2, NULL, NULL),
(347, 16, 2, NULL, NULL),
(348, 16, 2, NULL, NULL),
(349, 16, 2, NULL, NULL),
(350, 16, 2, NULL, NULL),
(351, 16, 2, NULL, NULL),
(352, 16, 2, NULL, NULL),
(353, 16, 2, NULL, NULL),
(354, 16, 2, NULL, NULL),
(355, 16, 2, NULL, NULL),
(356, 16, 2, NULL, NULL),
(357, 16, 2, NULL, NULL),
(358, 16, 2, NULL, NULL),
(359, 16, 2, NULL, NULL),
(360, 16, 2, NULL, NULL),
(361, 16, 2, NULL, NULL),
(362, 16, 2, NULL, NULL),
(363, 16, 2, NULL, NULL),
(364, 16, 2, NULL, NULL),
(365, 16, 2, NULL, NULL),
(366, 16, 2, NULL, NULL),
(367, 16, 2, NULL, NULL),
(368, 16, 2, NULL, NULL),
(369, 16, 2, NULL, NULL),
(370, 16, 2, NULL, NULL),
(371, 16, 2, NULL, NULL),
(372, 16, 2, NULL, NULL),
(373, 16, 2, NULL, NULL),
(374, 16, 2, NULL, NULL),
(375, 16, 2, NULL, NULL),
(376, 16, 2, NULL, NULL),
(377, 16, 2, NULL, NULL),
(378, 16, 2, NULL, NULL),
(379, 16, 2, NULL, NULL),
(380, 16, 2, NULL, NULL),
(381, 16, 2, NULL, NULL),
(382, 16, 2, NULL, NULL),
(383, 16, 2, NULL, NULL),
(384, 16, 2, NULL, NULL),
(385, 16, 2, NULL, NULL),
(386, 16, 2, NULL, NULL),
(387, 16, 2, NULL, NULL),
(388, 16, 2, NULL, NULL),
(389, 16, 2, NULL, NULL),
(390, 16, 2, NULL, NULL),
(391, 16, 2, NULL, NULL),
(392, 16, 2, NULL, NULL),
(393, 16, 2, NULL, NULL),
(394, 16, 2, NULL, NULL),
(395, 16, 2, NULL, NULL),
(396, 16, 2, NULL, NULL),
(397, 16, 2, NULL, NULL),
(398, 16, 2, NULL, NULL),
(399, 16, 2, NULL, NULL),
(400, 16, 2, NULL, NULL),
(401, 16, 2, NULL, NULL),
(402, 16, 2, NULL, NULL),
(403, 16, 2, NULL, NULL),
(404, 16, 2, NULL, NULL),
(405, 16, 2, NULL, NULL),
(406, 16, 2, NULL, NULL),
(407, 16, 2, NULL, NULL),
(408, 16, 2, NULL, NULL),
(409, 16, 2, NULL, NULL),
(410, 16, 2, NULL, NULL),
(411, 16, 2, NULL, NULL),
(412, 16, 2, NULL, NULL),
(413, 16, 2, NULL, NULL),
(414, 16, 2, NULL, NULL),
(415, 16, 2, NULL, NULL),
(416, 16, 2, NULL, NULL),
(417, 16, 2, NULL, NULL),
(418, 16, 2, NULL, NULL),
(419, 16, 2, NULL, NULL),
(420, 16, 2, NULL, NULL),
(421, 16, 2, NULL, NULL),
(422, 16, 2, NULL, NULL),
(423, 16, 2, NULL, NULL),
(424, 16, 2, NULL, NULL),
(425, 16, 2, NULL, NULL),
(426, 16, 2, NULL, NULL),
(427, 16, 2, NULL, NULL),
(428, 16, 2, NULL, NULL),
(429, 16, 2, NULL, NULL),
(430, 16, 2, NULL, NULL),
(431, 16, 2, NULL, NULL),
(432, 16, 2, NULL, NULL),
(433, 16, 2, NULL, NULL),
(434, 16, 2, NULL, NULL),
(435, 16, 2, NULL, NULL),
(436, 16, 2, NULL, NULL),
(437, 16, 2, NULL, NULL),
(438, 16, 2, NULL, NULL),
(439, 16, 2, NULL, NULL),
(440, 16, 2, NULL, NULL),
(441, 16, 2, NULL, NULL),
(442, 16, 2, NULL, NULL),
(443, 16, 2, NULL, NULL),
(444, 16, 2, NULL, NULL),
(445, 16, 2, NULL, NULL),
(446, 16, 2, NULL, NULL),
(447, 16, 2, NULL, NULL),
(448, 16, 2, NULL, NULL),
(449, 16, 2, NULL, NULL),
(450, 16, 2, NULL, NULL),
(451, 16, 2, NULL, NULL),
(452, 16, 2, NULL, NULL),
(453, 16, 2, NULL, NULL),
(454, 16, 2, NULL, NULL),
(455, 16, 2, NULL, NULL),
(456, 16, 2, NULL, NULL),
(457, 16, 2, NULL, NULL),
(458, 16, 2, NULL, NULL),
(459, 16, 2, NULL, NULL),
(460, 16, 2, NULL, NULL),
(461, 16, 2, NULL, NULL),
(462, 16, 2, NULL, NULL),
(463, 16, 2, NULL, NULL),
(464, 16, 2, NULL, NULL),
(465, 16, 2, NULL, NULL),
(466, 16, 2, NULL, NULL),
(467, 16, 2, NULL, NULL),
(468, 16, 2, NULL, NULL),
(469, 16, 2, NULL, NULL),
(470, 16, 2, NULL, NULL),
(471, 16, 2, NULL, NULL),
(472, 16, 2, NULL, NULL),
(473, 16, 2, NULL, NULL),
(474, 16, 2, NULL, NULL),
(475, 16, 2, NULL, NULL),
(476, 16, 2, NULL, NULL),
(477, 16, 2, NULL, NULL),
(478, 16, 2, NULL, NULL),
(479, 16, 2, NULL, NULL),
(480, 16, 2, NULL, NULL),
(481, 16, 2, NULL, NULL),
(482, 16, 2, NULL, NULL),
(483, 16, 2, NULL, NULL),
(484, 16, 2, NULL, NULL),
(485, 16, 2, NULL, NULL),
(486, 16, 2, NULL, NULL),
(487, 16, 2, NULL, NULL),
(488, 16, 2, NULL, NULL),
(489, 16, 2, NULL, NULL),
(490, 16, 2, NULL, NULL),
(491, 16, 2, NULL, NULL),
(492, 16, 2, NULL, NULL),
(493, 16, 2, NULL, NULL),
(494, 16, 2, NULL, NULL),
(495, 16, 2, NULL, NULL),
(496, 16, 2, NULL, NULL),
(497, 16, 2, NULL, NULL),
(498, 16, 2, NULL, NULL),
(499, 16, 2, NULL, NULL),
(500, 16, 2, NULL, NULL),
(501, 16, 2, NULL, NULL),
(502, 16, 2, NULL, NULL),
(503, 16, 2, NULL, NULL),
(504, 16, 2, NULL, NULL),
(505, 16, 2, NULL, NULL),
(506, 16, 2, NULL, NULL),
(507, 16, 2, NULL, NULL),
(508, 16, 2, NULL, NULL),
(509, 16, 2, NULL, NULL),
(510, 16, 2, NULL, NULL),
(511, 16, 2, NULL, NULL),
(512, 16, 2, NULL, NULL),
(513, 16, 2, NULL, NULL),
(514, 16, 2, NULL, NULL),
(515, 16, 2, NULL, NULL),
(516, 16, 2, NULL, NULL),
(517, 16, 2, NULL, NULL),
(518, 16, 2, NULL, NULL),
(519, 16, 2, NULL, NULL),
(520, 16, 2, NULL, NULL),
(521, 16, 2, NULL, NULL),
(522, 16, 2, NULL, NULL),
(523, 16, 2, NULL, NULL),
(524, 16, 2, NULL, NULL),
(525, 16, 2, NULL, NULL),
(526, 16, 2, NULL, NULL),
(527, 16, 2, NULL, NULL),
(528, 16, 2, NULL, NULL),
(529, 16, 2, NULL, NULL),
(530, 16, 2, NULL, NULL),
(531, 16, 2, NULL, NULL),
(532, 16, 2, NULL, NULL),
(533, 16, 2, NULL, NULL),
(534, 16, 2, NULL, NULL),
(535, 16, 2, NULL, NULL),
(536, 16, 2, NULL, NULL),
(537, 16, 2, NULL, NULL),
(538, 16, 2, NULL, NULL),
(539, 16, 2, NULL, NULL),
(540, 16, 2, NULL, NULL),
(541, 16, 2, NULL, NULL),
(542, 16, 2, NULL, NULL),
(543, 16, 2, NULL, NULL),
(544, 16, 2, NULL, NULL),
(545, 16, 2, NULL, NULL),
(546, 16, 2, NULL, NULL),
(547, 16, 2, NULL, NULL),
(548, 16, 2, NULL, NULL),
(549, 16, 2, NULL, NULL),
(550, 16, 2, NULL, NULL),
(551, 16, 2, NULL, NULL),
(552, 16, 2, NULL, NULL),
(553, 16, 2, NULL, NULL),
(554, 16, 2, NULL, NULL),
(555, 16, 2, NULL, NULL),
(556, 16, 2, NULL, NULL),
(557, 16, 2, NULL, NULL),
(558, 16, 2, NULL, NULL),
(559, 16, 2, NULL, NULL),
(560, 16, 2, NULL, NULL),
(561, 16, 2, NULL, NULL),
(562, 16, 2, NULL, NULL),
(563, 16, 2, NULL, NULL),
(564, 16, 2, NULL, NULL),
(565, 16, 2, NULL, NULL),
(566, 16, 2, NULL, NULL),
(567, 16, 2, NULL, NULL),
(568, 16, 2, NULL, NULL),
(569, 16, 2, NULL, NULL),
(570, 16, 2, NULL, NULL),
(571, 16, 2, NULL, NULL),
(572, 16, 2, NULL, NULL),
(573, 16, 2, NULL, NULL),
(574, 16, 2, NULL, NULL),
(575, 16, 2, NULL, NULL),
(576, 16, 2, NULL, NULL),
(577, 16, 2, NULL, NULL),
(578, 16, 2, NULL, NULL),
(579, 16, 2, NULL, NULL),
(580, 16, 2, NULL, NULL),
(581, 16, 2, NULL, NULL),
(582, 16, 2, NULL, NULL),
(583, 16, 2, NULL, NULL),
(584, 16, 2, NULL, NULL),
(585, 16, 2, NULL, NULL),
(586, 16, 2, NULL, NULL),
(587, 16, 2, NULL, NULL),
(588, 16, 2, NULL, NULL),
(589, 16, 2, NULL, NULL),
(590, 16, 2, NULL, NULL),
(591, 16, 2, NULL, NULL),
(592, 16, 2, NULL, NULL),
(593, 16, 2, NULL, NULL),
(594, 16, 2, NULL, NULL),
(595, 16, 2, NULL, NULL),
(596, 16, 2, NULL, NULL),
(597, 16, 2, NULL, NULL),
(598, 16, 2, NULL, NULL),
(599, 16, 2, NULL, NULL),
(600, 16, 2, NULL, NULL),
(601, 16, 2, NULL, NULL),
(602, 16, 2, NULL, NULL),
(603, 16, 2, NULL, NULL),
(604, 16, 2, NULL, NULL),
(605, 16, 2, NULL, NULL),
(606, 16, 2, NULL, NULL),
(607, 16, 2, NULL, NULL),
(608, 16, 2, NULL, NULL),
(609, 16, 2, NULL, NULL),
(610, 16, 2, NULL, NULL),
(611, 16, 2, NULL, NULL),
(612, 16, 2, NULL, NULL),
(613, 16, 2, NULL, NULL),
(614, 16, 2, NULL, NULL),
(615, 16, 2, NULL, NULL),
(616, 16, 2, NULL, NULL),
(617, 16, 2, NULL, NULL),
(618, 16, 2, NULL, NULL),
(619, 16, 2, NULL, NULL),
(620, 16, 2, NULL, NULL),
(621, 16, 2, NULL, NULL),
(622, 16, 2, NULL, NULL),
(623, 16, 2, NULL, NULL),
(624, 16, 2, NULL, NULL),
(625, 16, 2, NULL, NULL),
(626, 16, 2, NULL, NULL),
(627, 16, 2, NULL, NULL),
(628, 16, 2, NULL, NULL),
(629, 16, 2, NULL, NULL),
(630, 16, 2, NULL, NULL),
(631, 16, 2, NULL, NULL),
(632, 16, 2, NULL, NULL),
(633, 16, 2, NULL, NULL),
(634, 16, 2, NULL, NULL),
(635, 16, 2, NULL, NULL),
(636, 16, 2, NULL, NULL),
(637, 16, 2, NULL, NULL),
(638, 16, 2, NULL, NULL),
(639, 16, 2, NULL, NULL),
(640, 16, 2, NULL, NULL),
(641, 16, 2, NULL, NULL),
(642, 16, 2, NULL, NULL),
(643, 16, 2, NULL, NULL),
(644, 16, 2, NULL, NULL),
(645, 16, 2, NULL, NULL),
(646, 16, 2, NULL, NULL),
(647, 16, 2, NULL, NULL),
(648, 16, 2, NULL, NULL),
(649, 16, 2, NULL, NULL),
(650, 16, 2, NULL, NULL),
(651, 16, 2, NULL, NULL),
(652, 16, 2, NULL, NULL),
(653, 16, 2, NULL, NULL),
(654, 16, 2, NULL, NULL),
(655, 16, 2, NULL, NULL),
(656, 16, 2, NULL, NULL),
(657, 16, 2, NULL, NULL),
(658, 16, 2, NULL, NULL),
(659, 16, 2, NULL, NULL),
(660, 16, 2, NULL, NULL),
(661, 16, 2, NULL, NULL),
(662, 16, 2, NULL, NULL),
(663, 16, 2, NULL, NULL),
(664, 16, 2, NULL, NULL),
(665, 16, 2, NULL, NULL),
(666, 16, 2, NULL, NULL),
(667, 16, 2, NULL, NULL),
(668, 16, 2, NULL, NULL),
(669, 16, 2, NULL, NULL),
(670, 16, 2, NULL, NULL),
(671, 16, 2, NULL, NULL),
(672, 16, 2, NULL, NULL),
(673, 16, 2, NULL, NULL),
(674, 16, 2, NULL, NULL),
(675, 16, 2, NULL, NULL),
(676, 16, 2, NULL, NULL),
(677, 16, 2, NULL, NULL),
(678, 16, 2, NULL, NULL),
(679, 16, 2, NULL, NULL),
(680, 16, 2, NULL, NULL),
(681, 16, 2, NULL, NULL),
(682, 16, 2, NULL, NULL),
(683, 16, 2, NULL, NULL),
(684, 16, 2, NULL, NULL),
(685, 16, 2, NULL, NULL),
(686, 16, 2, NULL, NULL),
(687, 16, 2, NULL, NULL),
(688, 16, 2, NULL, NULL),
(689, 16, 2, NULL, NULL),
(690, 16, 2, NULL, NULL),
(691, 16, 2, NULL, NULL),
(692, 16, 2, NULL, NULL),
(693, 16, 2, NULL, NULL),
(694, 16, 2, NULL, NULL),
(695, 16, 2, NULL, NULL),
(696, 16, 2, NULL, NULL),
(697, 16, 2, NULL, NULL),
(698, 16, 2, NULL, NULL),
(699, 16, 2, NULL, NULL),
(700, 16, 2, NULL, NULL),
(701, 16, 2, NULL, NULL),
(702, 16, 2, NULL, NULL),
(703, 16, 2, NULL, NULL),
(704, 16, 2, NULL, NULL),
(705, 16, 2, NULL, NULL),
(706, 16, 2, NULL, NULL),
(707, 16, 2, NULL, NULL),
(708, 16, 2, NULL, NULL),
(709, 16, 2, NULL, NULL),
(710, 16, 2, NULL, NULL),
(711, 16, 2, NULL, NULL),
(712, 16, 2, NULL, NULL),
(713, 16, 2, NULL, NULL),
(714, 16, 2, NULL, NULL),
(715, 16, 2, NULL, NULL),
(716, 16, 2, NULL, NULL),
(717, 16, 2, NULL, NULL),
(718, 16, 2, NULL, NULL),
(719, 16, 2, NULL, NULL),
(720, 16, 2, NULL, NULL),
(721, 16, 2, NULL, NULL),
(722, 16, 2, NULL, NULL),
(723, 16, 2, NULL, NULL),
(724, 16, 2, NULL, NULL),
(725, 16, 2, NULL, NULL),
(726, 16, 2, NULL, NULL),
(727, 16, 2, NULL, NULL),
(728, 16, 2, NULL, NULL),
(729, 16, 2, NULL, NULL),
(730, 16, 2, NULL, NULL),
(731, 16, 2, NULL, NULL),
(732, 16, 2, NULL, NULL),
(733, 16, 2, NULL, NULL),
(734, 16, 2, NULL, NULL),
(735, 16, 2, NULL, NULL),
(736, 16, 2, NULL, NULL),
(737, 16, 2, NULL, NULL),
(738, 16, 2, NULL, NULL),
(739, 16, 2, NULL, NULL),
(740, 16, 2, NULL, NULL),
(741, 16, 2, NULL, NULL),
(742, 16, 2, NULL, NULL),
(743, 16, 2, NULL, NULL),
(744, 16, 2, NULL, NULL),
(745, 16, 2, NULL, NULL),
(746, 16, 2, NULL, NULL),
(747, 16, 2, NULL, NULL),
(748, 16, 2, NULL, NULL),
(749, 16, 2, NULL, NULL),
(750, 16, 2, NULL, NULL),
(751, 16, 2, NULL, NULL),
(752, 16, 2, NULL, NULL),
(753, 16, 2, NULL, NULL),
(754, 16, 2, NULL, NULL),
(755, 16, 2, NULL, NULL),
(756, 16, 2, NULL, NULL),
(757, 16, 2, NULL, NULL),
(758, 16, 2, NULL, NULL),
(759, 16, 2, NULL, NULL),
(760, 16, 2, NULL, NULL),
(761, 16, 2, NULL, NULL),
(762, 16, 2, NULL, NULL),
(763, 16, 2, NULL, NULL),
(764, 16, 2, NULL, NULL),
(765, 16, 2, NULL, NULL),
(766, 16, 2, NULL, NULL),
(767, 16, 2, NULL, NULL),
(768, 16, 2, NULL, NULL),
(769, 16, 2, NULL, NULL),
(770, 16, 2, NULL, NULL),
(771, 16, 2, NULL, NULL),
(772, 16, 2, NULL, NULL),
(773, 16, 2, NULL, NULL),
(774, 16, 2, NULL, NULL),
(775, 16, 2, NULL, NULL),
(776, 16, 2, NULL, NULL),
(777, 16, 2, NULL, NULL),
(778, 16, 2, NULL, NULL),
(779, 16, 2, NULL, NULL),
(780, 16, 2, NULL, NULL),
(781, 16, 2, NULL, NULL),
(782, 16, 2, NULL, NULL),
(783, 16, 2, NULL, NULL),
(784, 16, 2, NULL, NULL),
(785, 16, 2, NULL, NULL),
(786, 16, 2, NULL, NULL),
(787, 16, 2, NULL, NULL),
(788, 16, 2, NULL, NULL),
(789, 16, 2, NULL, NULL),
(790, 16, 2, NULL, NULL),
(791, 16, 2, NULL, NULL),
(792, 16, 2, NULL, NULL),
(793, 16, 2, NULL, NULL),
(794, 16, 2, NULL, NULL),
(795, 16, 2, NULL, NULL),
(796, 16, 2, NULL, NULL),
(797, 16, 2, NULL, NULL),
(798, 16, 2, NULL, NULL),
(799, 16, 2, NULL, NULL),
(800, 16, 2, NULL, NULL),
(801, 16, 2, NULL, NULL),
(802, 16, 2, NULL, NULL),
(803, 16, 2, NULL, NULL),
(804, 16, 2, NULL, NULL),
(805, 16, 2, NULL, NULL),
(806, 16, 2, NULL, NULL),
(807, 16, 2, NULL, NULL),
(808, 16, 2, NULL, NULL),
(809, 16, 2, NULL, NULL),
(810, 16, 2, NULL, NULL),
(811, 16, 2, NULL, NULL),
(812, 16, 2, NULL, NULL),
(813, 16, 2, NULL, NULL),
(814, 16, 2, NULL, NULL),
(815, 16, 2, NULL, NULL),
(816, 16, 2, NULL, NULL),
(817, 16, 2, NULL, NULL),
(818, 16, 2, NULL, NULL),
(819, 16, 2, NULL, NULL),
(820, 16, 2, NULL, NULL),
(821, 16, 2, NULL, NULL),
(822, 16, 2, NULL, NULL),
(823, 16, 2, NULL, NULL),
(824, 16, 2, NULL, NULL),
(825, 16, 2, NULL, NULL),
(826, 16, 2, NULL, NULL),
(827, 16, 2, NULL, NULL),
(828, 16, 2, NULL, NULL),
(829, 16, 2, NULL, NULL),
(830, 16, 2, NULL, NULL),
(831, 16, 2, NULL, NULL),
(832, 16, 2, NULL, NULL),
(833, 16, 2, NULL, NULL),
(834, 16, 2, NULL, NULL),
(835, 16, 2, NULL, NULL),
(836, 16, 2, NULL, NULL),
(837, 16, 2, NULL, NULL),
(838, 16, 2, NULL, NULL),
(839, 16, 2, NULL, NULL),
(840, 16, 2, NULL, NULL),
(841, 16, 2, NULL, NULL),
(842, 16, 2, NULL, NULL),
(843, 16, 2, NULL, NULL),
(844, 16, 2, NULL, NULL),
(845, 16, 2, NULL, NULL),
(846, 16, 2, NULL, NULL),
(847, 16, 2, NULL, NULL),
(848, 16, 2, NULL, NULL),
(849, 16, 2, NULL, NULL),
(850, 16, 2, NULL, NULL),
(851, 16, 2, NULL, NULL),
(852, 16, 2, NULL, NULL),
(853, 16, 2, NULL, NULL),
(854, 16, 2, NULL, NULL),
(855, 16, 2, NULL, NULL),
(856, 16, 2, NULL, NULL),
(857, 16, 2, NULL, NULL),
(858, 16, 2, NULL, NULL),
(859, 16, 2, NULL, NULL),
(860, 16, 2, NULL, NULL),
(861, 16, 2, NULL, NULL),
(862, 16, 2, NULL, NULL),
(863, 16, 2, NULL, NULL),
(864, 16, 2, NULL, NULL),
(865, 16, 2, NULL, NULL),
(866, 16, 2, NULL, NULL),
(867, 16, 2, NULL, NULL),
(868, 16, 2, NULL, NULL),
(869, 16, 2, NULL, NULL),
(870, 16, 2, NULL, NULL),
(871, 16, 2, NULL, NULL),
(872, 16, 2, NULL, NULL),
(873, 16, 2, NULL, NULL),
(874, 16, 2, NULL, NULL),
(875, 16, 2, NULL, NULL),
(876, 16, 2, NULL, NULL),
(877, 16, 2, NULL, NULL),
(878, 16, 2, NULL, NULL),
(879, 16, 2, NULL, NULL),
(880, 16, 2, NULL, NULL),
(881, 16, 2, NULL, NULL),
(882, 16, 2, NULL, NULL),
(883, 16, 2, NULL, NULL),
(884, 16, 2, NULL, NULL),
(885, 16, 2, NULL, NULL),
(886, 16, 2, NULL, NULL),
(887, 16, 2, NULL, NULL),
(888, 16, 2, NULL, NULL),
(889, 16, 2, NULL, NULL),
(890, 16, 2, NULL, NULL),
(891, 16, 2, NULL, NULL),
(892, 16, 2, NULL, NULL),
(893, 16, 2, NULL, NULL),
(894, 16, 2, NULL, NULL),
(895, 16, 2, NULL, NULL),
(896, 16, 2, NULL, NULL),
(897, 16, 2, NULL, NULL),
(898, 16, 2, NULL, NULL),
(899, 16, 2, NULL, NULL),
(900, 16, 2, NULL, NULL),
(901, 16, 2, NULL, NULL),
(902, 16, 2, NULL, NULL),
(903, 16, 2, NULL, NULL),
(904, 16, 2, NULL, NULL),
(905, 16, 2, NULL, NULL),
(906, 16, 2, NULL, NULL),
(907, 16, 2, NULL, NULL),
(908, 16, 2, NULL, NULL),
(909, 16, 2, NULL, NULL),
(910, 16, 2, NULL, NULL),
(911, 16, 2, NULL, NULL),
(912, 16, 2, NULL, NULL),
(913, 16, 2, NULL, NULL),
(914, 16, 2, NULL, NULL),
(915, 16, 2, NULL, NULL),
(916, 16, 2, NULL, NULL),
(917, 16, 2, NULL, NULL),
(918, 16, 2, NULL, NULL),
(919, 16, 2, NULL, NULL),
(920, 16, 2, NULL, NULL),
(921, 16, 2, NULL, NULL),
(922, 16, 2, NULL, NULL),
(923, 16, 2, NULL, NULL),
(924, 16, 2, NULL, NULL),
(925, 16, 2, NULL, NULL),
(926, 19, 1, NULL, NULL),
(927, 19, 2, NULL, NULL),
(928, 20, 1, NULL, NULL),
(929, 20, 2, NULL, NULL),
(930, 21, 1, NULL, NULL),
(931, 21, 2, NULL, NULL),
(932, 21, 3, NULL, NULL),
(933, 21, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'WEB Developer', '2019-03-04 17:00:00', '2019-03-08 17:00:00'),
(2, 'WEB Programing', '2019-03-04 17:00:00', '2019-03-29 17:00:00'),
(3, 'Network Infrastructure', '2019-03-04 17:00:00', '2019-03-13 17:00:00'),
(4, 'Network Engineer', '2019-03-07 17:00:00', '2019-03-08 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@hotmail.com', NULL, '$2y$10$33V5hSqj/0fVgtjcjLyTZOupP8556a/VPFPYvXQMQqyHcyRpcckrC', NULL, '2019-03-16 21:32:09', '2019-03-16 21:32:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=934;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
