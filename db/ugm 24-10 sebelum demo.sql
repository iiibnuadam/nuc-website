-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 11:24 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ugm`
--

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(6) UNSIGNED NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `file` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `downloader` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `judul`, `deskripsi`, `file`, `date`, `author`, `downloader`) VALUES
(1, 'Buku Panduan Lomba', '-', 'belajar-oop-php-mysql.pdf', '2018-10-18', '3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(6) UNSIGNED NOT NULL,
  `question` text,
  `answer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(1, 'Bagaimana tahap pendaftaran NSIDC?', '<p><span xss=removed>Pendaftaran dilakukan melalui 2 tahapan oleh dosen perwakilan PT, kemudian oleh masing-masing mahasiswa ketua tim. Pendaftaran PT yang berhasil akan membuat nama PT tersebut tampil di pilihan PT pada Pendaftaran Tim. Jadi, penting bagi perwakilan PT untuk terlebih dahulu mendaftarkan PT masing-masing.</span></p>\n'),
(2, 'Apakah manfaat Pendaftaran PT?', '<p><span xss=removed>Untuk memonitor status dan data tim mahasiswa yang berpartisipasi di GEMASTIK 11 dari PT terkait. Setelah masuk dengan akunnya ke dasbor website GEMASTIK 11, seorang perwakilan PT bisa memantau tim mana saja yang mendaftar dengan sebagai perwakilan mahasiswa dari PT tersebut. Akun perwakilan PT bisa memberikan justifikasi tolak, jika ada tim mahasiswa yang dirasa tidak berhak untuk mewakili PT.</span></p>\n'),
(3, 'Bagaimana alur pendaftaran tim dan kapan akun dianggap sudah terverifikasi?', '<p><span xss=removed>Setelah melakukan pendaftaran, panitia akan melakukan verifikasi. Proses ini cukup memakan waktu, sehingga dimohon kepada pendaftar untuk bersabar. Setelah divalidasi oleh panitia, sistem melalui noreply-gemastik@its.ac.id akan mengirimkan email ke ketua tim terdaftar dengan menyertakan tautan untuk Verifikasi Email dan Registrasi Akun. Tautan ini akan membawa pendaftar ke sebuah halaman website untuk membuat password bagi akun tim di GEMASTIK 11. Setelah itu, pendaftar dapat masuk website GEMASTIK 11. Dengan demikian, akun tim/ peserta telah terverifikasi.</span></p>\n'),
(4, 'Apakah saya boleh mendaftar lebih dari satu lomba dengan tim yang berbeda?', '<p><span xss=removed>Satu peserta boleh mendaftar lebih dari satu lomba, namun satu peserta hanya boleh SATU kali menjadi KETUA tim. Jika ingin mendaftar lomba lain dengan tim yang berbeda, peserta tersebut hanya dapat menjadi ANGGOTA tim.</span></p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_depan`
--

CREATE TABLE `galeri_depan` (
  `id` int(6) UNSIGNED NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `img` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_depan`
--

INSERT INTO `galeri_depan` (`id`, `nama`, `img`) VALUES
(1, 'Galeri 1', 'gallery-1.jpg'),
(2, 'Galeri 2', 'gallery-2.jpg'),
(3, 'Galeri 3', 'gallery-3.jpg'),
(4, 'galeri 4', 'gallery-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(6) UNSIGNED NOT NULL,
  `kategori` int(11) DEFAULT NULL,
  `pendaftaran_awal` date DEFAULT NULL,
  `pendaftaran_akhir` date DEFAULT NULL,
  `mak_submit` date DEFAULT NULL,
  `pengumuman` date DEFAULT NULL,
  `final` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `kategori`, `pendaftaran_awal`, `pendaftaran_akhir`, `mak_submit`, `pengumuman`, `final`) VALUES
(1, 1, '2018-10-19', '2018-10-26', '2018-10-31', '2018-11-08', '2018-11-10'),
(2, 3, '2018-10-25', '2018-10-26', '2018-10-29', '2018-11-09', '2018-11-10'),
(3, 3, '2018-10-09', '2018-10-25', '2018-10-31', '0000-00-00', '2018-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `juri`
--

CREATE TABLE `juri` (
  `id` int(6) UNSIGNED NOT NULL,
  `foto` text,
  `nama` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `juri`
--

INSERT INTO `juri` (`id`, `foto`, `nama`, `jabatan`) VALUES
(1, 'team-1.jpg', 'Zayid Bazed', 'Developer Facebook Inc'),
(2, 'team-2.jpg', 'Cristal Widjaja', 'Lead Business Intellegence Gojek');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(6) UNSIGNED NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `icon` text,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`, `deskripsi`) VALUES
(1, 'Lomba Poster Prototipe Nasional', 'apple-touch-icon.png', '<p><span xss=removed>Animasi merupakan sebuah lomba karya cipta dalam bentuk visualiasi 2D maupun 3D yang mengandung unsur kreativitas dan inovasi</span></p>\n'),
(3, 'kategori dua', 'juara_2.jpg', '<p>asdsad</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(6) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `href` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `title`, `href`, `status`) VALUES
(1, 'UGM', 'https://ugm.ac.id/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `link_sosmed`
--

CREATE TABLE `link_sosmed` (
  `id` int(6) UNSIGNED NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link_sosmed`
--

INSERT INTO `link_sosmed` (`id`, `link`, `icon`) VALUES
(1, 'https://www.instagram.com/ugm', 'instagram'),
(2, 'https://facebook.com/ugm', 'facebook'),
(3, 'https://www.twitter.com/ugm', 'twitter');

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
('7563ec8b02bcad6b69b37d460ca6455bb4406c6f', 1540372979);

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
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(6) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `img` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `nama`, `img`) VALUES
(1, 'strider', 'client-1.png'),
(2, 'runtastic', 'client-2.png'),
(3, 'edit share', 'client-3.png'),
(4, 'infocus', 'client-4.png'),
(5, 'gate group', 'client-5.png'),
(6, 'cadent', 'client-6.png');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(6) UNSIGNED NOT NULL,
  `users` int(11) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `pendaftaran` int(11) DEFAULT NULL,
  `atas_nama` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `bukti` text,
  `tanggal` date DEFAULT NULL,
  `transfer_ke` varchar(50) DEFAULT NULL,
  `status_pembayaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `users`, `kategori`, `pendaftaran`, `atas_nama`, `jumlah`, `bukti`, `tanggal`, `transfer_ke`, `status_pembayaran`) VALUES
(3, 18, 1, 3, 'dikih arif wibowo', 100000, 'photo_2018-01-21_16-20-58.jpg', '2018-10-30', 'BNI', 1),
(4, 18, 3, 4, 'imam', 100000, 'photo_2018-01-04_17-32-02_2.jpg', '2018-10-30', 'BNI', 0),
(5, 15, 1, 2, 'asd', 1000, 'photo_2018-01-04_17-20-56_1.jpg', '2018-11-06', 'BNI', 0),
(6, 20, 1, 5, 'fahmi', 450000, 'photo_2018-01-04_17-32-02_3.jpg', '2018-10-18', 'BNI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(6) UNSIGNED NOT NULL,
  `users` int(11) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `judul` text,
  `subtema` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `file` text,
  `asal_ptn` varchar(100) DEFAULT NULL,
  `ketua` varchar(100) DEFAULT NULL,
  `anggota_1` varchar(100) DEFAULT NULL,
  `anggota_2` varchar(100) DEFAULT NULL,
  `status_pembayaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `users`, `kategori`, `judul`, `subtema`, `deskripsi`, `file`, `asal_ptn`, `ketua`, `anggota_1`, `anggota_2`, `status_pembayaran`) VALUES
(1, 17, 1, 'as', 'teknologi digital', '<p>asd</p>\n', 'photo_2018-09-08_20-47-15_5.pdf', 'amikom', 'gelas kaca', '', '', NULL),
(2, 15, 1, 'JUDUL 1asdas', 'teknologi tepat guna dengan kearifan lokal', '<p>asd</p>\n', 'photo_2018-09-08_20-47-15_7.pdf', 'amikom', 'bagus wibisana', '', '', 0),
(3, 18, 1, 'prototipe', 'teknologi digital', '<p>asdsa</p>\n', 'photo_2018-09-08_20-47-15_8.pdf', 'UGM', 'pucuk harum', '', '', 1),
(4, 18, 3, 'judul dua', 'teknologi tepat guna dengan kearifan lokal', '<p>asd</p>\n', 'photo_2018-09-08_20-47-15_9.pdf', 'UGM', 'pucuk harum', 'dani', 'doni', 0),
(5, 20, 1, 'test packet 1', 'teknologi digital', '<p>hallo</p>\n', 'belajar-oop-php-mysql.pdf', 'UNY', 'fahmi', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(6) UNSIGNED NOT NULL,
  `title` text,
  `foto` text,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `title`, `foto`, `deskripsi`) VALUES
(1, 'Finalis Lomba NSIDC', 'blog1539328065_(1)_1.png', '<p xss=removed>Selamat kepada 10 finalis lomba Pengembangan Perangkat Lunak (<em>Software Development</em>)</p>\n\n<p xss=removed> </p>\n\n<ul>\n <li><strong>BCC ADL</strong> - Universitas Brawijaya</li>\n <li><strong>Klilink</strong> - Universitas Indonesia</li>\n <li><strong>Mider Team</strong> - Universitas Lampung</li>\n <li><strong>ODS</strong> - Universitas Jember</li>\n <li><strong>PadjadjaranVR</strong> - Universitas Padjadjaran</li>\n <li><strong>Rencong</strong> - Universitas Syiah Kuala</li>\n <li><strong>Tiga Titik</strong> - Universitas Brawijaya</li>\n <li><strong>Txteam</strong> - Universitas Telkom</li>\n <li><strong>UMMVICTORY</strong> - Universitas Muhammadiyah Malang</li>\n <li><strong>XCute</strong> - Institut Teknologi Sepuluh Nopember</li>\n</ul>\n\n<p xss=removed> </p>\n\n<p xss=removed>Sampai bertemu REMO di Surabaya! :)</p>\n');

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
(2, 'db_20170826_112659.zip', 1, '2017-08-26 04:27:01', 1),
(3, 'db_20181018_011608.zip', NULL, '2018-10-17 18:16:09', 3);

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
(26, 'restrict', 'wd_users', 'id', 'gallery', 'uploader'),
(27, 'restrict', 'wd_users', 'id', 'download', 'author'),
(37, 'restrict', 'pendaftaran', 'id', 'pembayaran', 'pendaftaran'),
(36, 'restrict', 'kategori', 'id', 'pembayaran', 'kategori'),
(35, 'restrict', 'wd_users', 'id', 'pembayaran', 'users'),
(34, 'restrict', 'kategori', 'id', 'jadwal', 'kategori'),
(38, 'restrict', 'wd_users', 'id', 'pendaftaran', 'users'),
(39, 'restrict', 'kategori', 'id', 'pendaftaran', 'kategori');

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
(3, 'mahasiswa/dosen', 'mahasiswa/dosen', 1),
(4, 'panitia', 'panitia', 1);

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
(11, 2, 1, '11111'),
(12, 2, 2, '11111'),
(13, 2, 3, '11111'),
(14, 2, 4, '11111'),
(15, 2, 5, '11111'),
(16, 2, 6, '11111'),
(17, 2, 9, '11111'),
(18, 2, 10, '11111'),
(73, 2, 32, '11111'),
(79, 2, 37, '11111'),
(89, 2, 44, '11111'),
(95, 2, 47, '11111'),
(127, 1, 1, '11000'),
(128, 1, 54, '11111'),
(130, 1, 2, '11000'),
(131, 1, 3, '11000'),
(132, 1, 5, '11111'),
(133, 1, 6, '11111'),
(134, 1, 7, '11000'),
(135, 1, 8, '11000'),
(136, 1, 10, '11111'),
(137, 1, 32, '11111'),
(138, 1, 9, '11111'),
(139, 1, 4, '11111'),
(140, 1, 48, '11111'),
(141, 1, 51, '11111'),
(143, 1, 35, '11111'),
(144, 1, 33, '11111'),
(145, 1, 36, '11111'),
(146, 1, 37, '11111'),
(147, 1, 40, '11111'),
(148, 1, 43, '11111'),
(149, 1, 44, '11111'),
(150, 1, 45, '11111'),
(151, 1, 46, '11111'),
(152, 1, 47, '11111'),
(169, 1, 56, '11111'),
(170, 1, 57, '11111'),
(174, 1, 58, '11111'),
(196, 3, 1, '11111'),
(197, 3, 51, '11111'),
(198, 3, 57, '11111'),
(215, 4, 1, '11111'),
(216, 4, 54, '11111'),
(217, 4, 58, '11111'),
(218, 4, 9, '11111'),
(219, 4, 4, '11110'),
(220, 4, 48, '11111'),
(221, 4, 35, '11111'),
(222, 4, 36, '11111'),
(223, 4, 37, '11111'),
(224, 4, 40, '11111'),
(225, 4, 43, '11111'),
(226, 4, 44, '11111'),
(227, 4, 45, '11111'),
(228, 4, 46, '11111'),
(229, 4, 47, '11111'),
(230, 4, 56, '11111');

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
(1, 'Dahsboard', 'fa fa-dashboard', 'dashboard', '0', '10000', 17, 1, 1, NULL),
(2, 'System', 'fa fa-gear', '#', '0', '10000', 22, 0, 1, NULL),
(3, 'Users', 'fa fa-user-plus', '#', '2', '11111', 49, 0, 1, NULL),
(4, 'User', 'fa fa-user', 'users', '0', '11111', 30, 0, 1, NULL),
(5, 'Groups', 'fa fa-users', 'groups', '3', '11111', 51, 0, 1, NULL),
(6, 'Module', 'fa fa-terminal', 'module', '2', '11111', 52, 0, 1, NULL),
(7, 'Data Relation', 'fa fa-archive', 'relation', '2', '10000', 53, 1, 1, NULL),
(8, 'Migration', 'fa fa-hourglass-1', 'migration', '2', '10000', 54, 1, 1, NULL),
(9, 'Backup DB', 'fa fa-database', 'backup', '0', '11111', 29, 0, 1, NULL),
(10, 'Options', 'fa fa-bars', 'options', '2', '11111', 56, 0, 1, NULL),
(32, 'pagemenu', 'fa fa-navicon ', 'pagemenu', '0', '11111', 28, NULL, 0, NULL),
(33, 'Download', 'fa fa-cloud-download', 'download', '0', '11111', 57, NULL, 0, NULL),
(34, 'Download', 'fa fa-archive', 'download', '0', '11111', 55, NULL, 0, NULL),
(35, 'Link', 'fa fa-chain', 'link', '0', '11111', 41, NULL, 0, NULL),
(36, 'Partner', 'fa fa-smile-o', 'partner', '0', '11111', 59, NULL, 0, 'partner'),
(37, 'Tentang Kami', 'fa fa-info-circle', 'tentang_kami', '0', '11111', 60, NULL, 0, NULL),
(40, 'Faq', 'fa fa fa-question-circle', 'faq', '0', '11111', 63, NULL, 0, 'faq'),
(43, 'Pengumuman', 'fa fa-bullhorn', 'pengumuman', '0', '11111', 64, NULL, 0, 'pengumuman'),
(44, 'Profil', 'fa fa-rocket', 'profil', '0', '11111', 66, NULL, 0, NULL),
(45, 'Galeri Depan', 'fa fa fa-camera', 'galeridepan', '0', '11111', 67, NULL, 0, 'galeri_depan'),
(46, 'Juri', 'fa fa fa-fire', 'juri', '0', '11111', 68, NULL, 0, 'juri'),
(47, 'Link Sosmed', 'fa fa-facebook-square', 'linksosmed', '0', '11111', 69, NULL, 0, NULL),
(48, 'Kategori Lomba', 'fa fa-tags', 'kategorilomba', '0', '11111', 31, NULL, 0, 'kategori'),
(51, 'Pendaftaran Lomba', 'fa fa-trophy', 'pendaftaranlomba', '0', '11111', 32, NULL, 0, 'pendaftaran'),
(54, 'Data Pendaftar', 'fa fa-trophy', 'datapendaftar', '0', '11000', 18, NULL, 0, NULL),
(56, 'Jadwal Lomba', 'fa fa-calendar', 'jadwallomba', '0', '11111', 70, NULL, 0, 'jadwal'),
(57, 'Konfirmasi Pembayaran', 'fa fa-money', 'konfirmasipembayaran', '0', '11111', 71, NULL, 0, 'pembayaran'),
(58, 'Data Konf Pembayaran', 'fa fa-money', 'datapembayaran', '0', '11010', 19, NULL, 0, NULL);

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
(12, 'telepon', '082328722687', 0, 0),
(22, 'video_teaser', 'http://www.youtube.com/embed/W-Q7RMpINVo', 0, 0),
(23, 'about_us', '<p>lorem</p>\n', 0, 0),
(24, 'about_us_img', 'Tentang.png', 0, 0),
(25, 'alamat', 'A108 Adam Street\nNew York, NY 535022', 0, 0),
(26, 'email', 'admin@ugm.ac.id', 0, 0),
(27, 'logo', 'titipcrop_1.png', 0, 0),
(28, 'ket_dsidc', 'hallo. Justo eget magna fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.', 0, 0),
(29, 'buku_panduan', 'belajar-oop-php-mysql_2.pdf', 0, 0);

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
  `no_delete` int(11) NOT NULL DEFAULT '0',
  `team` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wd_users`
--

INSERT INTO `wd_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `no_delete`, `team`) VALUES
(1, '127.0.0.1', 'super', '$2y$08$s6Ctz9s9wBfAJM1Mf/hZAelLiVOa4MtZUG.4EzD.dl2WJFOaRvaIG', '', 'support@indonesiait.com', '', NULL, NULL, 'kRryF169CTjgzVwZWejeZu', 1268889823, 1539882783, 1, 'Super', 'Admin', 'ADMIN', '', 1, ''),
(2, '127.0.0.1', 'admin', '$2y$08$AIiuasVsa4kyBAOhuh7HXOkBeN4TThXF3TjnlrIfxEZyw8bFnk99G', NULL, 'admin@admin.com', NULL, NULL, NULL, 'AWO6WnUKaIx4vFHcPG/JZu', 1465717020, 1466497168, 1, 'Administrator', '', '', '', 1, ''),
(3, '172.16.29.2', 'dikiharifwibowo', '$2y$08$4SYB5P2S75LdenwoYXrGfOsrflVYBRefvrluGYJ7QCMNZuBlyC6wa', NULL, 'dikiharifwibowo@gmail.com', NULL, NULL, NULL, NULL, 1507967001, 1539880552, 1, 'dikiharifwibowo', '', '', '082328722687', 0, ''),
(4, '172.16.25.2', 'murnidinianti', '$2y$08$5G0uDYGR4Vzu8.Gghqb5X.aWL7l./OWjoEj7g9qqt.wo.M1CDF.s.', NULL, 'murnidinianti@gmail.com', NULL, NULL, NULL, '9GozEz9aC/OOumkzvyPRCu', 1508829816, 1539776333, 1, 'Murni Dinianti', '', '', '', 0, ''),
(15, '::1', 'bagus', '$2y$08$NSaWdrB07ko2QLuXGJdOHeXG/99dvnSShz2l9UpwBPwxB7tOppCzG', NULL, 'baguswibisana@gmail.com', NULL, NULL, NULL, NULL, 1539519731, 1539800415, 1, 'bagus wibisana', '', '', '081229517374', 0, 'bagus wi'),
(18, '::1', 'pucuk', '$2y$08$JPsXp/BLXljNktPXwpuSl.1YVv8UM70Jv0yhKsXEtJPOCzljbYgxu', NULL, 'pucuk@gmail.com', NULL, NULL, NULL, NULL, 1539797224, 1539799390, 1, 'pucuk harum', '', '', '08232812133', 0, 'teh pucuk'),
(19, '::1', 'dikih', '$2y$08$GvKxvBCwcHOptmD2IlsJZ.qPwdrAWrHcYrBozIBZYPeTkKblyOiEC', NULL, 'dikih.wibowo@students.amikom.ac.id', NULL, NULL, NULL, NULL, 1539878588, 1539878664, 1, 'dikih arif wibowo', '', '', '082328722687', 0, 'mantheweb'),
(20, '::1', 'fahmi', '$2y$08$iNz9EBccs6apwnsjcfGvDOeA51ud9YFQPsBxUJkuf4iOuYeiE5nsK', NULL, 'fahmiaisar99@gmail.com', NULL, NULL, NULL, NULL, 1539878888, 1539880192, 1, 'fahmi', '', '', '082328722687', 0, 'mda24241212');

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
(32, 3, 4),
(23, 4, 3),
(21, 5, 4),
(22, 6, 2),
(25, 8, 3),
(26, 9, 3),
(27, 10, 3),
(28, 11, 3),
(29, 12, 3),
(30, 13, 3),
(31, 14, 3),
(33, 15, 3),
(34, 16, 3),
(35, 17, 3),
(36, 18, 3),
(37, 19, 3),
(38, 20, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_depan`
--
ALTER TABLE `galeri_depan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `juri`
--
ALTER TABLE `juri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_sosmed`
--
ALTER TABLE `link_sosmed`
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
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `galeri_depan`
--
ALTER TABLE `galeri_depan`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `juri`
--
ALTER TABLE `juri`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `link_sosmed`
--
ALTER TABLE `link_sosmed`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `page_menu`
--
ALTER TABLE `page_menu`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wd_backup_db`
--
ALTER TABLE `wd_backup_db`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wd_data_relation`
--
ALTER TABLE `wd_data_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wd_groups`
--
ALTER TABLE `wd_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wd_group_privileges`
--
ALTER TABLE `wd_group_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `wd_options`
--
ALTER TABLE `wd_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `wd_users`
--
ALTER TABLE `wd_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wd_users_groups`
--
ALTER TABLE `wd_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Constraints for dumped tables
--

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
