-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2018 at 09:20 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boim`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(6) UNSIGNED NOT NULL,
  `judul` varchar(250) DEFAULT NULL,
  `deskripsi` text,
  `file` varchar(100) DEFAULT NULL,
  `user_view` int(11) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `tag` text,
  `slider_priority` int(11) NOT NULL,
  `content_from` varchar(20) NOT NULL,
  `content_author` varchar(50) NOT NULL,
  `content_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `judul`, `deskripsi`, `file`, `user_view`, `tgl`, `user`, `tag`, `slider_priority`, `content_from`, `content_author`, `content_link`) VALUES
(1, 'BOIM 2018 Launching', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 'aji.jpg', 0, '2018-01-02 17:00:00', 1, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(6) UNSIGNED NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `album` varchar(50) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `uploader` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `file`, `label`, `album`, `visible`, `uploader`, `date`) VALUES
(3, '2017-09-12-11-49-07_jalalain_thumb_250_.jpg', '2017-09-12-11-49-07_jalalain_thumb_250_', 'tested', 1, '1', '2018-01-03 04:53:20'),
(4, '1.jpg', '1', 'tested', 1, '1', '2018-01-03 04:53:20'),
(5, 'history2.jpg', 'history2', 'boim2018', 1, '1', '2018-01-05 03:28:10'),
(6, '1.png', '1', 'tested', 1, '1', '2018-01-05 03:37:45'),
(7, 'epa_leadsafecertfirm__2.png', 'epa_leadsafecertfirm__2', 'tested', 1, '1', '2018-01-05 03:37:45'),
(8, '2.png', '2', 'tested', 1, '1', '2018-01-05 03:37:46'),
(9, 'download.png', 'download', 'tested', 1, '1', '2018-01-05 03:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `image`) VALUES
(4, 'TV Commercial', 'tv.PNG'),
(5, 'Music Video', 'music-video.PNG'),
(6, 'Indie Movie', 'indie-movie.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `ketentuan`
--

CREATE TABLE `ketentuan` (
  `id` int(6) UNSIGNED NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ketentuan`
--

INSERT INTO `ketentuan` (`id`, `judul`, `isi`) VALUES
(1, 'INDIE MOVIE', '<ul>\r\n <li>Indie Movie dikerjakan secara berkelompok dengan anggota bebas, selama masih dalam lingkungan Universitas Amikom Yogyakarta</li>\r\n <li>Indie Movie berwujud animasi penuh, stop motion, live shoot, atau penggabungan di antaranya</li>\r\n <li>Indie Movie boleh ber-genre apapun baik komedi, drama, action, horror atau pun penggabungannya, kecuali dokumenter.</li>\r\n <li>Indie Movie berdurasi maksimal 15 menit, sudah termasuk credit title.</li>\r\n <li>Harus terdapat  backsound musik dan suara.</li>\r\n <li>Format file: HD720, dengan ekstensi *.mp4.</li>\r\n <li>Bahan video maupun animasi utama harus bersifat original dan tidak boleh mengandung unsur SARA, SARU (merokok, minuman keras, berbicara kotor).</li>\r\n <li>File dikumpulkan dalam bentuk softcopy (copy flashdisk) dan keving DVD lengkap dengan casing dan sampul. Di dalamnya berisi file film (*.mp4), foto-foto dan video behind the scene, serta data Tim (Nama tim, nama dan NIM anggota, Contact person ketua tim, nama sutradara, poster dan trailer film).</li>\r\n <li>Mengumpulkan hardcopy poster film ukuran A3.</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `online_users`
--

CREATE TABLE `online_users` (
  `session` varchar(100) NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_users`
--

INSERT INTO `online_users` (`session`, `time`) VALUES
('e52bbc993812d5af3a1de4e026ce016158d140d6', 1516508990);

-- --------------------------------------------------------

--
-- Table structure for table `page_menu`
--

CREATE TABLE `page_menu` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `text` text,
  `parent` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `href` varchar(50) NOT NULL,
  `base_url` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_menu`
--

INSERT INTO `page_menu` (`id`, `name`, `text`, `parent`, `position`, `href`, `base_url`, `status`) VALUES
(11, 'Youtube', '', 10, 10, 'http://www.youtube.com', 0, 1),
(14, 'Home', '', 0, 11, 'homepage', 1, 1),
(15, 'ABOUT US', '', 0, 12, 'homepage#tentang_boim', 1, 1),
(16, 'Gallery', '', 0, 13, 'gallery', 1, 1),
(17, 'Kompetisi', '', 0, 14, 'homepage#kompetisi', 1, 1),
(18, 'News', '', 0, 15, 'homepage#news', 1, 1),
(19, 'Contact', '', 0, 16, 'homepage#contact', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `users` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `durasi` varchar(10) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `sutradara` varchar(100) NOT NULL,
  `tahun_produksi` varchar(20) NOT NULL,
  `sinopsis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `kategori`, `users`, `judul`, `durasi`, `genre`, `sutradara`, `tahun_produksi`, `sinopsis`) VALUES
(11, 4, 7, 'malam pertmaa', '129', 'horor', 'dik', '2017', 'xxx'),
(12, 4, 8, '', '', '', '', '', ''),
(13, 4, 9, 'malaikat maut', '90', 'drama', 'dikh', '2017', 's');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `name`, `email`, `subject`, `isi`, `created_at`) VALUES
(2, 's', 'ss@fmma.c', 's', 'Messassge', '2018-01-10 14:47:57'),
(3, 'ss', 'sd@gm.c', 'ss', 'Message', '2018-01-10 14:49:59'),
(4, 'w', 'ww@dm.co', 'w', 'Messageww', '2018-01-10 14:51:27'),
(5, 'diah', 'diah@gmail.com', 'tested aja', 'Message', '2018-01-11 10:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `id` int(6) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `img` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`id`, `nama`, `img`) VALUES
(1, 'Osha', 'osha.png'),
(2, 'NYC', 'nyc.png'),
(3, 'BBB', 'bbb.png'),
(4, 'NAT', 'efa.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture_url`, `profile_url`, `created`, `modified`, `username`, `password`, `phone`) VALUES
(7, '', '', 'Squad', 'Add', 'squadadd2015@gmail.com', '', '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'https://plus.google.com/116293762219889836598', '2018-01-10 14:11:40', '0000-00-00 00:00:00', 'squad', '', '082391727321'),
(8, '', '', 'dikih arif', 'wibowo', 'dikiharifwibowo@gmail.com', '', '', 'https://lh5.googleusercontent.com/-rfYrFxKXxJg/AAAAAAAAAAI/AAAAAAAAAXs/o21AfKzxHnM/photo.jpg', 'https://plus.google.com/102127137639742250729', '2018-01-16 10:16:40', '0000-00-00 00:00:00', 'dikih arif', '', ''),
(9, '', '', 'Dikih', 'Arif Wibowo', 'dikih.wibowo@students.amikom.ac.id', '', '', 'https://lh6.googleusercontent.com/-p3y4Y7H-9pI/AAAAAAAAAAI/AAAAAAAAABA/h30aAMPaJp0/photo.jpg', 'https://plus.google.com/109526091037855714660', '2018-01-24 14:33:16', '0000-00-00 00:00:00', 'dikih', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wd_backup_db`
--

CREATE TABLE `wd_backup_db` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `file` tinyint(1) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wd_backup_db`
--

INSERT INTO `wd_backup_db` (`id`, `name`, `file`, `date`, `user`) VALUES
(1, 'db_20170826_112621.zip', NULL, '2017-08-26 04:26:21', 1),
(2, 'db_20170826_112659.zip', 1, '2017-08-26 04:27:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wd_data_relation`
--

CREATE TABLE `wd_data_relation` (
  `id` int(11) NOT NULL,
  `on_delete` enum('restrict','cascade') NOT NULL DEFAULT 'restrict',
  `primary_table` varchar(100) NOT NULL,
  `primary_id` varchar(100) NOT NULL,
  `relation_table` varchar(100) NOT NULL,
  `relation_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wd_data_relation`
--

INSERT INTO `wd_data_relation` (`id`, `on_delete`, `primary_table`, `primary_id`, `relation_table`, `relation_id`) VALUES
(19, 'cascade', 'wd_modules', 'id', 'wd_group_privileges', 'modules_id'),
(5, 'restrict', 'wd_groups', 'id', 'wd_users_groups', 'group_id'),
(6, 'restrict', 'wd_users', 'id', 'wd_users_groups', 'user_id'),
(7, 'restrict', 'wd_groups', 'id', 'wd_group_privileges', 'groups_id'),
(24, 'restrict', 'wd_users', 'id', 'blog', 'user'),
(26, 'restrict', 'wd_users', 'id', 'gallery', 'uploader');

-- --------------------------------------------------------

--
-- Table structure for table `wd_groups`
--

CREATE TABLE `wd_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `no_delete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wd_groups`
--

INSERT INTO `wd_groups` (`id`, `name`, `description`, `no_delete`) VALUES
(1, 'super_admin', 'For Developer Only', 1),
(2, 'admin', 'Administrator', 1),
(3, 'member', 'Member', 1),
(4, 'operator', 'Operator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wd_group_privileges`
--

CREATE TABLE `wd_group_privileges` (
  `id` int(11) NOT NULL,
  `groups_id` mediumint(8) UNSIGNED NOT NULL,
  `modules_id` int(11) NOT NULL,
  `privilege` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wd_group_privileges`
--

INSERT INTO `wd_group_privileges` (`id`, `groups_id`, `modules_id`, `privilege`) VALUES
(1, 1, 1, '11000'),
(2, 1, 2, '11000'),
(3, 1, 3, '11111'),
(4, 1, 4, '11111'),
(5, 1, 5, '11111'),
(6, 1, 6, '11111'),
(7, 1, 7, '11000'),
(8, 1, 8, '11000'),
(9, 1, 9, '11111'),
(10, 1, 10, '11111'),
(11, 2, 1, '11111'),
(12, 2, 2, '11111'),
(13, 2, 3, '11111'),
(14, 2, 4, '11111'),
(15, 2, 5, '11111'),
(16, 2, 6, '11111'),
(17, 2, 9, '11111'),
(18, 2, 10, '11111'),
(72, 1, 32, '11111'),
(73, 2, 32, '11111'),
(74, 4, 32, '11111');

-- --------------------------------------------------------

--
-- Table structure for table `wd_login_attempts`
--

CREATE TABLE `wd_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wd_migration`
--

CREATE TABLE `wd_migration` (
  `id` int(11) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  `mode` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wd_migration`
--

INSERT INTO `wd_migration` (`id`, `file`, `date`, `mode`, `status`) VALUES
(26, '20170405_235413_all_db.sql', '2017-04-05 23:54:13', 'all', '2017-06-16 13:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `wd_modules`
--

CREATE TABLE `wd_modules` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `icon` varchar(50) NOT NULL DEFAULT 'fa fa-circle-o',
  `url` varchar(45) DEFAULT '#',
  `parent` varchar(45) DEFAULT NULL,
  `support` varchar(5) DEFAULT '00000' COMMENT 'xxxxx\n\n1 = Admin\n1 = Read\n1 = Create\n1 = Update\n1 = Delete',
  `sort_order` int(11) DEFAULT NULL,
  `only_super` int(11) DEFAULT NULL,
  `no_delete` int(11) NOT NULL DEFAULT '0',
  `table_module` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wd_modules`
--

INSERT INTO `wd_modules` (`id`, `title`, `icon`, `url`, `parent`, `support`, `sort_order`, `only_super`, `no_delete`, `table_module`) VALUES
(1, 'Dahsboard', 'fa fa-dashboard', 'dashboard', '0', '10000', 12, 1, 1, NULL),
(2, 'System', 'fa fa-gear', '#', '0', '10000', 13, 0, 1, NULL),
(3, 'Users', 'fa fa-user-plus', '#', '2', '11111', 33, 0, 1, NULL),
(4, 'User', 'fa fa-user', 'users', '3', '11111', 34, 0, 1, NULL),
(5, 'Groups', 'fa fa-users', 'groups', '3', '11111', 35, 0, 1, NULL),
(6, 'Module', 'fa fa-terminal', 'module', '2', '11111', 36, 0, 1, NULL),
(7, 'Data Relation', 'fa fa-archive', 'relation', '2', '10000', 37, 1, 1, NULL),
(8, 'Migration', 'fa fa-hourglass-1', 'migration', '2', '10000', 38, 1, 1, NULL),
(9, 'Backup DB', 'fa fa-database', 'backup', '2', '11111', 39, 0, 1, NULL),
(10, 'Options', 'fa fa-bars', 'options', '2', '11111', 40, 0, 1, NULL),
(32, 'pagemenu', 'fa fa-navicon ', 'pagemenu', '0', '11111', 19, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wd_options`
--

CREATE TABLE `wd_options` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text,
  `only_super` int(11) NOT NULL DEFAULT '0',
  `no_delete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wd_options`
--

INSERT INTO `wd_options` (`id`, `name`, `value`, `only_super`, `no_delete`) VALUES
(1, 'admin_email', 'admin@admin.com', 1, 1),
(2, 'super_admin_group', 'super_admin', 1, 1),
(3, 'admin_group', 'admin', 1, 1),
(4, 'default_group', 'member', 1, 1),
(5, 'identity', 'email', 1, 1),
(6, 'password_email', '123456', 1, 1),
(7, 'warranty app name', 'nama aplikasi', 0, 1),
(8, 'warranty Licence', 'lisensi', 1, 1),
(9, 'warranty guarantee', 'garansi', 1, 1),
(10, 'warranty release', 'release date', 1, 1),
(11, 'logo_footer', 'logooke.png', 0, 0),
(12, 'telepon', '(0274)8841 01 ext 501', 0, 0),
(13, 'logo', 'stamp_round.png', 0, 0),
(20, 'history_img', 'history.png', 0, 0),
(21, 'history', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 0, 0),
(22, 'video_teaser', 'http://www.youtube.com/embed/W-Q7RMpINVo', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wd_users`
--

CREATE TABLE `wd_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `no_delete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wd_users`
--

INSERT INTO `wd_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `no_delete`) VALUES
(1, '127.0.0.1', 'super', '$2y$08$s6Ctz9s9wBfAJM1Mf/hZAelLiVOa4MtZUG.4EzD.dl2WJFOaRvaIG', '', 'support@indonesiait.com', '', NULL, NULL, 'kRryF169CTjgzVwZWejeZu', 1268889823, 1516508679, 1, 'Super', 'Admin', 'ADMIN', '', 1),
(2, '127.0.0.1', 'admin', '$2y$08$AIiuasVsa4kyBAOhuh7HXOkBeN4TThXF3TjnlrIfxEZyw8bFnk99G', NULL, 'admin@admin.com', NULL, NULL, NULL, 'AWO6WnUKaIx4vFHcPG/JZu', 1465717020, 1466497168, 1, 'Administrator', '', '', '', 1),
(3, '172.16.29.2', 'dikiharifwibowo', '$2y$08$4SYB5P2S75LdenwoYXrGfOsrflVYBRefvrluGYJ7QCMNZuBlyC6wa', NULL, 'dikiharifwibowo@gmail.com', NULL, NULL, NULL, NULL, 1507967001, 1507967436, 1, 'dikiharifwibowo', '', '', '082328722687', 0),
(4, '172.16.25.2', 'murnidinianti', '$2y$08$OSCYIjpP/6Pg83CEpvxfP.IA.ymVXSZx3DUEOGieuQlcCpg7oNHqS', NULL, 'murnidinianti@gmail.com', NULL, NULL, NULL, '9GozEz9aC/OOumkzvyPRCu', 1508829816, 1509170672, 1, 'Murni Dinianti', '', '', '', 0),
(5, '::1', 'niyes', '$2y$08$p702u8Mp3Ryqd/i3/xMUU.1DLm0Nb7L3YoQ1kR0K4ViANJ4pkcOzS', NULL, 'niyes@yahoo.com', NULL, NULL, NULL, NULL, 1511801282, 1513667254, 1, 'niyes', '', '', '082328722687', 0),
(6, '::1', 'boim', '$2y$08$sAxgSymTA/zBWxhDKvRg2.pX6OFpwkhASTklvNNvfAXxAOmdWrmP.', NULL, 'boim@amikom.ac.id', NULL, NULL, NULL, NULL, 1515554444, 1515554479, 1, 'boim', '', '', '-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wd_users_groups`
--

CREATE TABLE `wd_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wd_users_groups`
--

INSERT INTO `wd_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(12, 3, 2),
(14, 4, 4),
(21, 5, 4),
(22, 6, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `user_2` (`user`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketentuan`
--
ALTER TABLE `ketentuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_users`
--
ALTER TABLE `online_users`
  ADD PRIMARY KEY (`session`);

--
-- Indexes for table `page_menu`
--
ALTER TABLE `page_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori` (`kategori`),
  ADD KEY `users` (`users`),
  ADD KEY `users_2` (`users`),
  ADD KEY `users_3` (`users`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wd_backup_db`
--
ALTER TABLE `wd_backup_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_data_relation`
--
ALTER TABLE `wd_data_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_groups`
--
ALTER TABLE `wd_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_group_privileges`
--
ALTER TABLE `wd_group_privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wb_group_privilege_wb_groups1_idx` (`groups_id`),
  ADD KEY `fk_wb_group_privilege_wb_modules1_idx` (`modules_id`);

--
-- Indexes for table `wd_login_attempts`
--
ALTER TABLE `wd_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_migration`
--
ALTER TABLE `wd_migration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_modules`
--
ALTER TABLE `wd_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_options`
--
ALTER TABLE `wd_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_users`
--
ALTER TABLE `wd_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wd_users_groups`
--
ALTER TABLE `wd_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ketentuan`
--
ALTER TABLE `ketentuan`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page_menu`
--
ALTER TABLE `page_menu`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wd_backup_db`
--
ALTER TABLE `wd_backup_db`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wd_data_relation`
--
ALTER TABLE `wd_data_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wd_groups`
--
ALTER TABLE `wd_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wd_group_privileges`
--
ALTER TABLE `wd_group_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `wd_login_attempts`
--
ALTER TABLE `wd_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wd_migration`
--
ALTER TABLE `wd_migration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wd_modules`
--
ALTER TABLE `wd_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wd_options`
--
ALTER TABLE `wd_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wd_users`
--
ALTER TABLE `wd_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wd_users_groups`
--
ALTER TABLE `wd_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `kategori` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wd_group_privileges`
--
ALTER TABLE `wd_group_privileges`
  ADD CONSTRAINT `fk_wb_group_privilege_wb_groups1` FOREIGN KEY (`groups_id`) REFERENCES `wd_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_wb_group_privilege_wb_modules1` FOREIGN KEY (`modules_id`) REFERENCES `wd_modules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wd_users_groups`
--
ALTER TABLE `wd_users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `wd_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `wd_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
