-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Apr 2022 pada 11.40
-- Versi server: 5.7.24
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `about_image` varchar(100) DEFAULT NULL,
  `about_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_image`, `about_description`) VALUES
(1, 'about.jpg', '<p xss=\"removed\">Halo, saya Mhd Rizky, seorang freelance web developer di Banjarmasin, saya bekerja fulltime freelance sejak Mei 2017.Saat ini dalam pekerjaan web development, dengan blog ini, saya mencoba untuk menuangkan pengalaman dan pengetahuan yang saya dapatkan, mudah-mudahan dapat menjadi manfaat bagi pembaca, jika ingin berdiskusi, atau bertanya, atau meng-hire saya untuk pekerjaan web development, bisa <a href=\"https://blog.nafies.id/contact/\" xss=\"removed\" xss=removed>menghubungi saya</a>.</p><p xss=\"removed\">Terima kasih.</p><p xss=\"removed\">Banjarmasin, 15 Februari 2021,</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`) VALUES
(1, 'Pengembangan diri', 'pengembangan-diri'),
(2, 'Success', 'success'),
(3, 'Tips dan Tricks', 'tips-dan-tricks'),
(4, 'Projects', 'projects');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text,
  `comment_status` int(11) DEFAULT '0',
  `comment_parent` int(11) DEFAULT '0',
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_date`, `comment_name`, `comment_email`, `comment_message`, `comment_status`, `comment_parent`, `comment_post_id`, `comment_image`) VALUES
(1, '2019-04-07 03:15:05', 'Joko', 'joko@gmail.com', 'Nice Post, thanks', 1, 0, 6, 'user_blank.png'),
(2, '2019-04-12 04:22:34', 'M Fikri', 'fikrifiver97@gmail.com', 'Thank you.<br>', 1, 1, 6, 'fcee14ca639c3ca3c5b93b7c7fc70ba2.png'),
(3, '2019-12-28 07:52:42', 'Name', 'mfikri@gmail.com', 'Nice Post', 1, 0, 2, 'user_blank.png'),
(4, '2019-12-28 08:00:22', 'M Fikri', 'qadalm@gmail.com', 'Nice Article', 1, 0, 2, 'user_blank.png'),
(5, '2022-02-19 21:44:15', 'ZAP', 'foo-bar@example.com', 'c:/Windows/system.ini', 0, 0, 10, 'user_blank.png'),
(6, '2022-02-19 21:44:15', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../Windows/system.ini', 0, 0, 10, 'user_blank.png'),
(7, '2022-02-19 21:44:15', 'ZAP', 'foo-bar@example.com', 'c:\\Windows\\system.ini', 0, 0, 10, 'user_blank.png'),
(8, '2022-02-19 21:44:15', 'ZAP', 'foo-bar@example.com', '..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\Windows\\system.ini', 0, 0, 10, 'user_blank.png'),
(9, '2022-02-19 21:44:16', 'ZAP', 'foo-bar@example.com', '/etc/passwd', 0, 0, 10, 'user_blank.png'),
(10, '2022-02-19 21:44:16', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../etc/passwd', 0, 0, 10, 'user_blank.png'),
(11, '2022-02-19 21:44:16', 'ZAP', 'foo-bar@example.com', 'c:/', 0, 0, 10, 'user_blank.png'),
(12, '2022-02-19 21:44:16', 'ZAP', 'foo-bar@example.com', '/', 0, 0, 10, 'user_blank.png'),
(13, '2022-02-19 21:44:16', 'ZAP', 'foo-bar@example.com', 'c:\\', 0, 0, 10, 'user_blank.png'),
(14, '2022-02-19 21:44:16', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../', 0, 0, 10, 'user_blank.png'),
(15, '2022-02-19 21:44:17', 'ZAP', 'foo-bar@example.com', 'WEB-INF/web.xml', 0, 0, 10, 'user_blank.png'),
(16, '2022-02-19 21:44:17', 'ZAP', 'foo-bar@example.com', 'WEB-INF\\web.xml', 0, 0, 10, 'user_blank.png'),
(17, '2022-02-19 21:44:17', 'ZAP', 'foo-bar@example.com', '/WEB-INF/web.xml', 0, 0, 10, 'user_blank.png'),
(18, '2022-02-19 21:44:17', 'ZAP', 'foo-bar@example.com', '\\WEB-INF\\web.xml', 0, 0, 10, 'user_blank.png'),
(19, '2022-02-19 21:44:17', 'ZAP', 'foo-bar@example.com', 'thishouldnotexistandhopefullyitwillnot', 0, 0, 10, 'user_blank.png'),
(20, '2022-02-19 21:44:43', 'ZAP', 'foo-bar@example.com', 'http://www.google.com/', 0, 0, 10, 'user_blank.png'),
(21, '2022-02-19 21:44:43', 'ZAP', 'foo-bar@example.com', 'http://www.google.com:80/', 0, 0, 10, 'user_blank.png'),
(22, '2022-02-19 21:44:43', 'ZAP', 'foo-bar@example.com', 'http://www.google.com', 0, 0, 10, 'user_blank.png'),
(23, '2022-02-19 21:44:44', 'ZAP', 'foo-bar@example.com', 'http://www.google.com/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(24, '2022-02-19 21:44:44', 'ZAP', 'foo-bar@example.com', 'http://www.google.com:80/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(25, '2022-02-19 21:44:44', 'ZAP', 'foo-bar@example.com', 'www.google.com/', 0, 0, 10, 'user_blank.png'),
(26, '2022-02-19 21:44:44', 'ZAP', 'foo-bar@example.com', 'www.google.com:80/', 0, 0, 10, 'user_blank.png'),
(27, '2022-02-19 21:44:44', 'ZAP', 'foo-bar@example.com', 'www.google.com', 0, 0, 10, 'user_blank.png'),
(28, '2022-02-19 21:44:44', 'ZAP', 'foo-bar@example.com', 'www.google.com/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(29, '2022-02-19 21:44:44', 'ZAP', 'foo-bar@example.com', 'www.google.com:80/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(30, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', '9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(31, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', 'http://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(32, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', 'https://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(33, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', 'http:\\\\9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(34, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', 'https:\\\\9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(35, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', '//9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(36, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', '\\\\9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(37, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', 'HtTp://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(38, '2022-02-19 21:45:12', 'ZAP', 'foo-bar@example.com', 'HtTpS://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(39, '2022-02-19 21:45:32', 'ZAP', 'foo-bar@example.com', '&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;', 0, 0, 10, 'user_blank.png'),
(40, '2022-02-19 21:45:33', 'ZAP', 'foo-bar@example.com', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;&lt;', 0, 0, 10, 'user_blank.png'),
(41, '2022-02-19 21:45:33', 'ZAP', 'foo-bar@example.com', '&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;', 0, 0, 10, 'user_blank.png'),
(42, '2022-02-19 21:45:33', 'ZAP', 'foo-bar@example.com', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;&lt;', 0, 0, 10, 'user_blank.png'),
(43, '2022-02-19 21:46:36', 'ZAP', 'foo-bar@example.com', 'c:/Windows/system.ini', 0, 0, 10, 'user_blank.png'),
(44, '2022-02-19 21:46:37', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../Windows/system.ini', 0, 0, 10, 'user_blank.png'),
(45, '2022-02-19 21:46:37', 'ZAP', 'foo-bar@example.com', 'c:\\Windows\\system.ini', 0, 0, 10, 'user_blank.png'),
(46, '2022-02-19 21:46:37', 'ZAP', 'foo-bar@example.com', '..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\Windows\\system.ini', 0, 0, 10, 'user_blank.png'),
(47, '2022-02-19 21:46:37', 'ZAP', 'foo-bar@example.com', '/etc/passwd', 0, 0, 10, 'user_blank.png'),
(48, '2022-02-19 21:46:37', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../etc/passwd', 0, 0, 10, 'user_blank.png'),
(49, '2022-02-19 21:46:37', 'ZAP', 'foo-bar@example.com', 'c:/', 0, 0, 10, 'user_blank.png'),
(50, '2022-02-19 21:46:37', 'ZAP', 'foo-bar@example.com', '/', 0, 0, 10, 'user_blank.png'),
(51, '2022-02-19 21:46:38', 'ZAP', 'foo-bar@example.com', 'c:\\', 0, 0, 10, 'user_blank.png'),
(52, '2022-02-19 21:46:38', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../', 0, 0, 10, 'user_blank.png'),
(53, '2022-02-19 21:46:38', 'ZAP', 'foo-bar@example.com', 'WEB-INF/web.xml', 0, 0, 10, 'user_blank.png'),
(54, '2022-02-19 21:46:38', 'ZAP', 'foo-bar@example.com', 'WEB-INF\\web.xml', 0, 0, 10, 'user_blank.png'),
(55, '2022-02-19 21:46:38', 'ZAP', 'foo-bar@example.com', '/WEB-INF/web.xml', 0, 0, 10, 'user_blank.png'),
(56, '2022-02-19 21:46:38', 'ZAP', 'foo-bar@example.com', '\\WEB-INF\\web.xml', 0, 0, 10, 'user_blank.png'),
(57, '2022-02-19 21:46:39', 'ZAP', 'foo-bar@example.com', 'thishouldnotexistandhopefullyitwillnot', 0, 0, 10, 'user_blank.png'),
(58, '2022-02-19 21:47:10', 'ZAP', 'foo-bar@example.com', 'http://www.google.com/', 0, 0, 10, 'user_blank.png'),
(59, '2022-02-19 21:47:10', 'ZAP', 'foo-bar@example.com', 'http://www.google.com:80/', 0, 0, 10, 'user_blank.png'),
(60, '2022-02-19 21:47:10', 'ZAP', 'foo-bar@example.com', 'http://www.google.com', 0, 0, 10, 'user_blank.png'),
(61, '2022-02-19 21:47:11', 'ZAP', 'foo-bar@example.com', 'http://www.google.com/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(62, '2022-02-19 21:47:11', 'ZAP', 'foo-bar@example.com', 'http://www.google.com:80/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(63, '2022-02-19 21:47:11', 'ZAP', 'foo-bar@example.com', 'www.google.com/', 0, 0, 10, 'user_blank.png'),
(64, '2022-02-19 21:47:11', 'ZAP', 'foo-bar@example.com', 'www.google.com:80/', 0, 0, 10, 'user_blank.png'),
(65, '2022-02-19 21:47:11', 'ZAP', 'foo-bar@example.com', 'www.google.com', 0, 0, 10, 'user_blank.png'),
(66, '2022-02-19 21:47:11', 'ZAP', 'foo-bar@example.com', 'www.google.com/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(67, '2022-02-19 21:47:11', 'ZAP', 'foo-bar@example.com', 'www.google.com:80/search?q=OWASP ZAP', 0, 0, 10, 'user_blank.png'),
(68, '2022-02-19 21:47:43', 'ZAP', 'foo-bar@example.com', '9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(69, '2022-02-19 21:47:43', 'ZAP', 'foo-bar@example.com', 'http://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(70, '2022-02-19 21:47:43', 'ZAP', 'foo-bar@example.com', 'https://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(71, '2022-02-19 21:47:43', 'ZAP', 'foo-bar@example.com', 'http:\\\\9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(72, '2022-02-19 21:47:43', 'ZAP', 'foo-bar@example.com', 'https:\\\\9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(73, '2022-02-19 21:47:43', 'ZAP', 'foo-bar@example.com', '//9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(74, '2022-02-19 21:47:44', 'ZAP', 'foo-bar@example.com', '\\\\9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(75, '2022-02-19 21:47:44', 'ZAP', 'foo-bar@example.com', 'HtTp://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(76, '2022-02-19 21:47:44', 'ZAP', 'foo-bar@example.com', 'HtTpS://9048905235405817977.owasp.org', 0, 0, 10, 'user_blank.png'),
(77, '2022-02-19 21:48:08', 'ZAP', 'foo-bar@example.com', '&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;', 0, 0, 10, 'user_blank.png'),
(78, '2022-02-19 21:48:08', 'ZAP', 'foo-bar@example.com', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;&lt;', 0, 0, 10, 'user_blank.png'),
(79, '2022-02-19 21:48:08', 'ZAP', 'foo-bar@example.com', '&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;', 0, 0, 10, 'user_blank.png'),
(80, '2022-02-19 21:48:08', 'ZAP', 'foo-bar@example.com', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;&lt;', 0, 0, 10, 'user_blank.png'),
(81, '2022-02-19 21:48:34', 'ZAP', 'foo-bar@example.com', '0W45pz4p', 0, 0, 10, 'user_blank.png'),
(82, '2022-02-19 21:48:34', 'ZAP', 'foo-bar@example.com', '0W45pz4p', 0, 0, 10, 'user_blank.png'),
(83, '2022-02-19 21:48:34', 'ZAP', 'foo-bar@example.com', '&#039;&quot;[removed]alert&amp;#40;1&amp;#41;;[removed]', 0, 0, 10, 'user_blank.png'),
(84, '2022-02-19 21:48:34', 'ZAP', 'foo-bar@example.com', '&#039;&quot;[removed]alert&amp;#40;1&amp;#41;;[removed]', 0, 0, 10, 'user_blank.png'),
(85, '2022-02-19 21:48:35', 'ZAP', 'foo-bar@example.com', '&#039;&quot;&lt;img&gt;', 0, 0, 10, 'user_blank.png'),
(86, '2022-02-19 21:48:58', 'ZAP', 'foo-bar@example.com', 'zApPX8sS', 0, 0, 10, 'user_blank.png'),
(87, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', '&#039;', 0, 0, 10, 'user_blank.png'),
(88, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', '&#039;', 0, 0, 10, 'user_blank.png'),
(89, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', '&quot;', 0, 0, 10, 'user_blank.png'),
(90, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', '&quot;', 0, 0, 10, 'user_blank.png'),
(91, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', ';', 0, 0, 10, 'user_blank.png'),
(92, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', ';', 0, 0, 10, 'user_blank.png'),
(93, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', '&#039;(', 0, 0, 10, 'user_blank.png'),
(94, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', '&#039;(', 0, 0, 10, 'user_blank.png'),
(95, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', ' AND 1=1 -- ', 0, 0, 10, 'user_blank.png'),
(96, '2022-02-19 21:50:12', 'ZAP', 'foo-bar@example.com', ' AND 1=2 -- ', 0, 0, 10, 'user_blank.png'),
(97, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', ' OR 1=1 -- ', 0, 0, 10, 'user_blank.png'),
(98, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', ' AND 1=2 -- ', 0, 0, 10, 'user_blank.png'),
(99, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', ' OR 1=1 -- ', 0, 0, 10, 'user_blank.png'),
(100, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&#039; AND &#039;1&#039;=&#039;1&#039; -- ', 0, 0, 10, 'user_blank.png'),
(101, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&#039; AND &#039;1&#039;=&#039;2&#039; -- ', 0, 0, 10, 'user_blank.png'),
(102, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&#039; OR &#039;1&#039;=&#039;1&#039; -- ', 0, 0, 10, 'user_blank.png'),
(103, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&#039; AND &#039;1&#039;=&#039;2&#039; -- ', 0, 0, 10, 'user_blank.png'),
(104, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&#039; OR &#039;1&#039;=&#039;1&#039; -- ', 0, 0, 10, 'user_blank.png'),
(105, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', ' UNION ALL select NULL -- ', 0, 0, 10, 'user_blank.png'),
(106, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&#039; UNION ALL select NULL -- ', 0, 0, 10, 'user_blank.png'),
(107, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&quot; UNION ALL select NULL -- ', 0, 0, 10, 'user_blank.png'),
(108, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', ') UNION ALL select NULL -- ', 0, 0, 10, 'user_blank.png'),
(109, '2022-02-19 21:50:13', 'ZAP', 'foo-bar@example.com', '&#039;) UNION ALL select NULL -- ', 0, 0, 10, 'user_blank.png'),
(110, '2022-02-19 21:50:39', 'ZAP', 'foo-bar@example.com', '&quot;;print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=&quot;', 0, 0, 10, 'user_blank.png'),
(111, '2022-02-19 21:50:39', 'ZAP', 'foo-bar@example.com', '&#039;;print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=&#039;', 0, 0, 10, 'user_blank.png'),
(112, '2022-02-19 21:50:39', 'ZAP', 'foo-bar@example.com', '${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}', 0, 0, 10, 'user_blank.png'),
(113, '2022-02-19 21:50:39', 'ZAP', 'foo-bar@example.com', '${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}\\', 0, 0, 10, 'user_blank.png'),
(114, '2022-02-19 21:50:39', 'ZAP', 'foo-bar@example.com', ';print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));', 0, 0, 10, 'user_blank.png'),
(115, '2022-02-19 21:50:40', 'ZAP', 'foo-bar@example.com', '&quot;+response.write([166,271*958,579)+&quot;', 0, 0, 10, 'user_blank.png'),
(116, '2022-02-19 21:50:40', 'ZAP', 'foo-bar@example.com', '+response.write({0}*{1})+', 0, 0, 10, 'user_blank.png'),
(117, '2022-02-19 21:50:40', 'ZAP', 'foo-bar@example.com', 'response.write(166,271*958,579)', 0, 0, 10, 'user_blank.png'),
(118, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', 'cat /etc/passwd', 0, 0, 10, 'user_blank.png'),
(119, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&amp;cat /etc/passwd&amp;', 0, 0, 10, 'user_blank.png'),
(120, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', ';cat /etc/passwd;', 0, 0, 10, 'user_blank.png'),
(121, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&quot;&amp;cat /etc/passwd&amp;&quot;', 0, 0, 10, 'user_blank.png'),
(122, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&quot;;cat /etc/passwd;&quot;', 0, 0, 10, 'user_blank.png'),
(123, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&#039;&amp;cat /etc/passwd&amp;&#039;', 0, 0, 10, 'user_blank.png'),
(124, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&#039;;cat /etc/passwd;&#039;', 0, 0, 10, 'user_blank.png'),
(125, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&amp;sleep 15&amp;', 0, 0, 10, 'user_blank.png'),
(126, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', ';sleep 15;', 0, 0, 10, 'user_blank.png'),
(127, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&quot;&amp;sleep 15&amp;&quot;', 0, 0, 10, 'user_blank.png'),
(128, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&quot;;sleep 15;&quot;', 0, 0, 10, 'user_blank.png'),
(129, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&#039;&amp;sleep 15&amp;&#039;', 0, 0, 10, 'user_blank.png'),
(130, '2022-02-19 21:51:11', 'ZAP', 'foo-bar@example.com', '&#039;;sleep 15;&#039;', 0, 0, 10, 'user_blank.png'),
(131, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', 'type %SYSTEMROOT%\\win.ini', 0, 0, 10, 'user_blank.png'),
(132, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&amp;type %SYSTEMROOT%\\win.ini', 0, 0, 10, 'user_blank.png'),
(133, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '|type %SYSTEMROOT%\\win.ini', 0, 0, 10, 'user_blank.png'),
(134, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&quot;&amp;type %SYSTEMROOT%\\win.ini&amp;&quot;', 0, 0, 10, 'user_blank.png'),
(135, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&quot;|type %SYSTEMROOT%\\win.ini', 0, 0, 10, 'user_blank.png'),
(136, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&#039;&amp;type %SYSTEMROOT%\\win.ini&amp;&#039;', 0, 0, 10, 'user_blank.png'),
(137, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&#039;|type %SYSTEMROOT%\\win.ini', 0, 0, 10, 'user_blank.png'),
(138, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&amp;timeout /T 15', 0, 0, 10, 'user_blank.png'),
(139, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '|timeout /T 15', 0, 0, 10, 'user_blank.png'),
(140, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&quot;&amp;timeout /T 15&amp;&quot;', 0, 0, 10, 'user_blank.png'),
(141, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&quot;|timeout /T 15', 0, 0, 10, 'user_blank.png'),
(142, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&#039;&amp;timeout /T 15&amp;&#039;', 0, 0, 10, 'user_blank.png'),
(143, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&#039;|timeout /T 15', 0, 0, 10, 'user_blank.png'),
(144, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', 'get-help', 0, 0, 10, 'user_blank.png'),
(145, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', ';get-help', 0, 0, 10, 'user_blank.png'),
(146, '2022-02-19 21:51:12', 'ZAP', 'foo-bar@example.com', '&quot;;get-help', 0, 0, 10, 'user_blank.png'),
(147, '2022-02-19 21:51:13', 'ZAP', 'foo-bar@example.com', '&#039;;get-help', 0, 0, 10, 'user_blank.png'),
(148, '2022-02-19 21:51:13', 'ZAP', 'foo-bar@example.com', ';get-help #', 0, 0, 10, 'user_blank.png'),
(149, '2022-02-19 21:51:13', 'ZAP', 'foo-bar@example.com', ';start-sleep -s 15', 0, 0, 10, 'user_blank.png'),
(150, '2022-02-19 21:51:13', 'ZAP', 'foo-bar@example.com', '&quot;;start-sleep -s 15', 0, 0, 10, 'user_blank.png'),
(151, '2022-02-19 21:51:13', 'ZAP', 'foo-bar@example.com', '&#039;;start-sleep -s 15', 0, 0, 10, 'user_blank.png'),
(152, '2022-02-19 21:51:13', 'ZAP', 'foo-bar@example.com', ';start-sleep -s 15 #', 0, 0, 10, 'user_blank.png'),
(153, '2022-02-19 21:52:00', 'ZAP', 'foo-bar@example.com', 'TfIcGxEyGeiPjdJvATmOnGdivqxLHOwxhmXoGBOZSpxpBBCfrNgURMoZQvSynPlIhKAnfqSeWpuYJxsKpvKcEuuxXoHpiKyacLAnchiKMfQcnJiVnhIAviRItgDgPJaWjuARkIJUwYVAFcsAYcNeidJowxVdkDlxuKIhWiqjsbttxxeUPyuUDudYLssCrPZFGxyZHLUVlcWoagmUBYCossHmJmQmSLlBXCmumsxooLGFaLrFPuRpGqLCaEdIfMUlBmpLVlwKXJKEdJxmIGneaNxZEfhGlgKlMmhkLIgVffktqHdDBedOdiAhfvxvgqLnfXdTSVZkSkjmlMYAaLEMFXZrQUyOEqdsuGXAtMctlPFMHSVnZLTYEOWpbiXNoAxcxkHbnCMyPQFULqoCQiLxhRgsZJTRMhNwEPrSoVPFlktrkKAKRCwucdunYXonMiDWeGGJuPvVZJhmYPLxqEBrjiZiNVellRjGTqrSpoIDxDPEymFNYFpyoCwOfVGQvIZfaNgfZFpHMEWrGcnXcFkjpXHyABQGwnbMAFyuEPWIXNcRavQxtehvIPhdDQjWsLMwiqRVcnyHKDaobIyPScqrvjWtFucRWjTVOXOoVMOiNJAyFCFGLSnCYWRVHtpoBIyJgTayBZHyTRYWvnbCQRQHXJlriDteoeWAjCWwcRhkSLFfUijQfPQBfKuBxOOcLQrGypcVPevpudEbqKxQYZFUAkSXESqxUfyLbUELqoaiLpRjEoOReFrgiamlmtIFSmSPZYCSyKsYydrmQYrPsVImEMpGcNyNpKIOBMtOtSyvKfQhLHVCBKwTjiPoDnnePWLWFnYvvNmtJfaLtBUlSAKdmuddTcodaMHTLrBiHqRjWZvdxTNRTGIQYvbtVkbZdjEQsgsXvTyuCYqLXUrMWbYhaneCUOZtpRiunNVhifKlSjHxewKJCdjwlnwlJMxSosmWloQpAcaUgsGHwyTbBUnLWRKpBCBjHlBYrXBaHvUSulnNcCQfunOBnnOBvNutWvalxqDUurPQXMNdSEDhNGVJAtbcGrjIZjGdyvCqQLKVLMuVfdXvLauDZPZtKXmCGwRdqxBRKlZsSxPYSFdqJrnEiCBbbSbtgEiucaFNgSnHvlJbOItNiypnmKHQhkknatXvSXVHHDPAwenxtaCiIfnENICEADRbUMXWrSrSLMmcuJyWHZfcdXcAWZRjOuHvrTEoqvimJoypEuGSnWScsnMbmYqIahWZYWXWquFHcJtwdhKTXjBpIkENtMeAnZsxbhRDfJEgnUNkCfQnLAdHasIEtHcVshNKbKNbADZHUqVkFGqbghHAHsxiHDhFIYSUPOmgeXSbObunXJNoqmyHwJihQuYllGWHQZaNRSXoYQREahFsvARrBvOKhquWxPBsboRKHmhARhuIFHNnXYlbNHMUPogCQmxtralPyJOLiBrvWoMBtDLrjkmkpDZdbhIxLYxDvmdqbuQQtGtYZxbEKqwtaWZQeIeBrqEZxhSXlXNSxxSiFHVUnXtliHTpaDsnBZQmLwJRbUrKoNajEWShfSNhUBpbnAWHtvQcJkDBNkWHhOEamhLSxOVomfRFkkHJdlVFsUXBBemuTOLfMElRjBnnSFilXWvkruthRGhhyLDMIuxwaxZeoInQYxJbKjEbMspsBrudcvfeXrPUOPKGiKtfaTdjQZIXJXbKLsGadvDJXiYghsGcFVPZTEMysirhIjAofgqGqWIRbqdULphSVOdVDefIJQKxanCplqMxqBCIMuKCcWWyLGuVxNymQmPiluwBVnyORRKtqyfDhXLkHvOppAGluYrdDarnlEOVcCJJUykivqAumwfHAyjCKfmcpXNHmNGtQHHVTnJfjxfEpNJvKKWhbtgYeXVbuHHbWeQUVtxywTKTWfGWWTqvQvGyqBZcSQgjOScRnYDnXcUbOcXbNZraPMqnWldPbnWirDfihSEkOrvubrffofjcgZVqNyRFuAGfVATEACSSNqSwNLCgvrscKHLqTFdYnyVvVNFVYMXTuJqEViEnwUOrKnNLReIjeiZMIGbGYMyUWqxmvrxnrLlaRWmpNrjRFsnHnrdPmkwqvjAHwHtL', 0, 0, 10, 'user_blank.png'),
(154, '2022-02-19 21:52:25', 'ZAP', 'foo-bar@example.com', 'ZAP', 0, 0, 10, 'user_blank.png'),
(155, '2022-02-19 21:52:25', 'ZAP', 'foo-bar@example.com', 'ZAP%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s\n', 0, 0, 10, 'user_blank.png'),
(156, '2022-02-19 21:52:25', 'ZAP', 'foo-bar@example.com', 'ZAP %1!s%2!s%3!s%4!s%5!s%6!s%7!s%8!s%9!s!s!s!s!s!s!s!s!s!s!s !s!!n&quot;!n#!n$!n%!n&amp;!n&#039;!n(!n)!n0!n1!n2!n3!n4!n5!n6!n7!n8!n9!n@!n\n', 0, 0, 10, 'user_blank.png'),
(157, '2022-02-19 21:52:50', 'ZAP', 'foo-bar@example.com', 'Set-cookie: Tamper=b46e04e1-82c7-41d6-b719-9fb2d0cfaa3f', 0, 0, 10, 'user_blank.png'),
(158, '2022-02-19 21:52:50', 'ZAP', 'foo-bar@example.com', 'any\r\nSet-cookie: Tamper=b46e04e1-82c7-41d6-b719-9fb2d0cfaa3f', 0, 0, 10, 'user_blank.png'),
(159, '2022-02-19 21:52:50', 'ZAP', 'foo-bar@example.com', 'any?\r\nSet-cookie: Tamper=b46e04e1-82c7-41d6-b719-9fb2d0cfaa3f', 0, 0, 10, 'user_blank.png'),
(160, '2022-02-19 21:52:50', 'ZAP', 'foo-bar@example.com', 'any\nSet-cookie: Tamper=b46e04e1-82c7-41d6-b719-9fb2d0cfaa3f', 0, 0, 10, 'user_blank.png'),
(161, '2022-02-19 21:52:50', 'ZAP', 'foo-bar@example.com', 'any?\nSet-cookie: Tamper=b46e04e1-82c7-41d6-b719-9fb2d0cfaa3f', 0, 0, 10, 'user_blank.png'),
(162, '2022-02-19 21:52:50', 'ZAP', 'foo-bar@example.com', 'any\r\nSet-cookie: Tamper=b46e04e1-82c7-41d6-b719-9fb2d0cfaa3f\r\n', 0, 0, 10, 'user_blank.png'),
(163, '2022-02-19 21:52:50', 'ZAP', 'foo-bar@example.com', 'any?\r\nSet-cookie: Tamper=b46e04e1-82c7-41d6-b719-9fb2d0cfaa3f\r\n', 0, 0, 10, 'user_blank.png'),
(164, '2022-02-19 21:53:18', 'ZAP', 'foo-bar@example.com', '@', 0, 0, 10, 'user_blank.png'),
(165, '2022-02-19 21:53:18', 'ZAP', 'foo-bar@example.com', '+', 0, 0, 10, 'user_blank.png'),
(166, '2022-02-19 21:53:19', 'ZAP', 'foo-bar@example.com', '|', 0, 0, 10, 'user_blank.png'),
(167, '2022-02-19 22:03:30', 'ZAP', 'foo-bar@example.com', 'c:/Windows/system.ini', 0, 0, 10, 'user_blank.png'),
(168, '2022-02-19 22:03:31', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../Windows/system.ini', 0, 0, 10, 'user_blank.png'),
(169, '2022-02-19 22:03:31', 'ZAP', 'foo-bar@example.com', 'c:\\Windows\\system.ini', 0, 0, 10, 'user_blank.png'),
(170, '2022-02-19 22:03:31', 'ZAP', 'foo-bar@example.com', '..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\Windows\\system.ini', 0, 0, 10, 'user_blank.png'),
(171, '2022-02-19 22:03:31', 'ZAP', 'foo-bar@example.com', '/etc/passwd', 0, 0, 10, 'user_blank.png'),
(172, '2022-02-19 22:03:31', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../etc/passwd', 0, 0, 10, 'user_blank.png'),
(173, '2022-02-19 22:03:32', 'ZAP', 'foo-bar@example.com', 'c:/', 0, 0, 10, 'user_blank.png'),
(174, '2022-02-19 22:03:32', 'ZAP', 'foo-bar@example.com', '/', 0, 0, 10, 'user_blank.png'),
(175, '2022-02-19 22:03:32', 'ZAP', 'foo-bar@example.com', 'c:\\', 0, 0, 10, 'user_blank.png'),
(176, '2022-02-19 22:03:32', 'ZAP', 'foo-bar@example.com', '../../../../../../../../../../../../../../../../', 0, 0, 10, 'user_blank.png'),
(177, '2022-02-19 22:03:32', 'ZAP', 'foo-bar@example.com', 'WEB-INF/web.xml', 0, 0, 10, 'user_blank.png'),
(178, '2022-02-19 22:03:32', 'ZAP', 'foo-bar@example.com', 'WEB-INF\\web.xml', 0, 0, 10, 'user_blank.png'),
(179, '2022-02-19 22:03:32', 'ZAP', 'foo-bar@example.com', '/WEB-INF/web.xml', 0, 0, 10, 'user_blank.png'),
(180, '2022-02-19 22:03:33', 'ZAP', 'foo-bar@example.com', '\\WEB-INF\\web.xml', 0, 0, 10, 'user_blank.png'),
(181, '2022-02-19 22:03:33', 'ZAP', 'foo-bar@example.com', 'thishouldnotexistandhopefullyitwillnot', 0, 0, 10, 'user_blank.png'),
(182, '2022-04-29 10:53:36', 'sadas', 'admin@admin.com', 'ss', 0, 0, 10, 'user_blank.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_home`
--

CREATE TABLE `tbl_home` (
  `home_id` int(11) NOT NULL,
  `home_caption_1` varchar(200) DEFAULT NULL,
  `home_caption_2` varchar(200) DEFAULT NULL,
  `home_bg_heading` varchar(50) DEFAULT NULL,
  `home_bg_testimonial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_home`
--

INSERT INTO `tbl_home` (`home_id`, `home_caption_1`, `home_caption_2`, `home_bg_heading`, `home_bg_testimonial`) VALUES
(1, 'Life will always feel wonderful if we always think positively', 'Personal Blog', 'image_4.png', 'image_8.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_name` varchar(50) DEFAULT NULL,
  `inbox_email` varchar(80) DEFAULT NULL,
  `inbox_subject` varchar(200) DEFAULT NULL,
  `inbox_message` text,
  `inbox_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` varchar(2) DEFAULT '0' COMMENT '0=Unread, 1=Read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_name`, `inbox_email`, `inbox_subject`, `inbox_message`, `inbox_created_at`, `inbox_status`) VALUES
(1, 'Fikri', 'fikrifiver97@gmail.com', 'Request Artikel', 'Saya mau request artikel tentang mindset.', '2019-04-11 03:46:56', '1'),
(3, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../Windows/system.ini', '2022-02-19 21:44:13', '0'),
(4, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:\\Windows\\system.ini', '2022-02-19 21:44:14', '0'),
(5, 'ZAP', 'foo-bar@example.com', 'ZAP', '..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\Windows\\system.ini', '2022-02-19 21:44:14', '0'),
(6, 'ZAP', 'foo-bar@example.com', 'ZAP', '/etc/passwd', '2022-02-19 21:44:14', '0'),
(7, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../etc/passwd', '2022-02-19 21:44:14', '0'),
(8, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:/', '2022-02-19 21:44:14', '0'),
(9, 'ZAP', 'foo-bar@example.com', 'ZAP', '/', '2022-02-19 21:44:14', '0'),
(10, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:\\', '2022-02-19 21:44:14', '0'),
(11, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../', '2022-02-19 21:44:15', '0'),
(12, 'ZAP', 'foo-bar@example.com', 'ZAP', 'WEB-INF/web.xml', '2022-02-19 21:44:15', '0'),
(13, 'ZAP', 'foo-bar@example.com', 'ZAP', 'WEB-INF\\web.xml', '2022-02-19 21:44:15', '0'),
(14, 'ZAP', 'foo-bar@example.com', 'ZAP', '/WEB-INF/web.xml', '2022-02-19 21:44:15', '0'),
(15, 'ZAP', 'foo-bar@example.com', 'ZAP', '\\WEB-INF\\web.xml', '2022-02-19 21:44:15', '0'),
(16, 'ZAP', 'foo-bar@example.com', 'ZAP', 'thishouldnotexistandhopefullyitwillnot', '2022-02-19 21:44:15', '0'),
(17, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com/', '2022-02-19 21:44:42', '0'),
(18, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com:80/', '2022-02-19 21:44:43', '0'),
(19, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com', '2022-02-19 21:44:43', '0'),
(20, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com/search?q=OWASP ZAP', '2022-02-19 21:44:43', '0'),
(21, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com:80/search?q=OWASP ZAP', '2022-02-19 21:44:43', '0'),
(22, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com/', '2022-02-19 21:44:43', '0'),
(23, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com:80/', '2022-02-19 21:44:43', '0'),
(24, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com', '2022-02-19 21:44:43', '0'),
(25, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com/search?q=OWASP ZAP', '2022-02-19 21:44:44', '0'),
(26, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com:80/search?q=OWASP ZAP', '2022-02-19 21:44:44', '0'),
(27, 'ZAP', 'foo-bar@example.com', 'ZAP', '9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(28, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(29, 'ZAP', 'foo-bar@example.com', 'ZAP', 'https://9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(30, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http:\\\\9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(31, 'ZAP', 'foo-bar@example.com', 'ZAP', 'https:\\\\9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(32, 'ZAP', 'foo-bar@example.com', 'ZAP', '//9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(33, 'ZAP', 'foo-bar@example.com', 'ZAP', '\\\\9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(34, 'ZAP', 'foo-bar@example.com', 'ZAP', 'HtTp://9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(35, 'ZAP', 'foo-bar@example.com', 'ZAP', 'HtTpS://9048905235405817977.owasp.org', '2022-02-19 21:45:11', '0'),
(36, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;', '2022-02-19 21:45:32', '0'),
(37, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;&lt;', '2022-02-19 21:45:32', '0'),
(38, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;', '2022-02-19 21:45:32', '0'),
(39, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;&lt;', '2022-02-19 21:45:32', '0'),
(40, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:/Windows/system.ini', '2022-02-19 21:46:35', '0'),
(41, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../Windows/system.ini', '2022-02-19 21:46:35', '0'),
(42, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:\\Windows\\system.ini', '2022-02-19 21:46:35', '0'),
(43, 'ZAP', 'foo-bar@example.com', 'ZAP', '..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\Windows\\system.ini', '2022-02-19 21:46:35', '0'),
(44, 'ZAP', 'foo-bar@example.com', 'ZAP', '/etc/passwd', '2022-02-19 21:46:35', '0'),
(45, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../etc/passwd', '2022-02-19 21:46:35', '0'),
(46, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:/', '2022-02-19 21:46:35', '0'),
(47, 'ZAP', 'foo-bar@example.com', 'ZAP', '/', '2022-02-19 21:46:36', '0'),
(48, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:\\', '2022-02-19 21:46:36', '0'),
(49, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../', '2022-02-19 21:46:36', '0'),
(50, 'ZAP', 'foo-bar@example.com', 'ZAP', 'WEB-INF/web.xml', '2022-02-19 21:46:36', '0'),
(51, 'ZAP', 'foo-bar@example.com', 'ZAP', 'WEB-INF\\web.xml', '2022-02-19 21:46:36', '0'),
(52, 'ZAP', 'foo-bar@example.com', 'ZAP', '/WEB-INF/web.xml', '2022-02-19 21:46:36', '0'),
(53, 'ZAP', 'foo-bar@example.com', 'ZAP', '\\WEB-INF\\web.xml', '2022-02-19 21:46:36', '0'),
(54, 'ZAP', 'foo-bar@example.com', 'ZAP', 'thishouldnotexistandhopefullyitwillnot', '2022-02-19 21:46:36', '0'),
(55, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com/', '2022-02-19 21:47:09', '0'),
(56, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com:80/', '2022-02-19 21:47:10', '0'),
(57, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com', '2022-02-19 21:47:10', '0'),
(58, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com/search?q=OWASP ZAP', '2022-02-19 21:47:10', '0'),
(59, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://www.google.com:80/search?q=OWASP ZAP', '2022-02-19 21:47:10', '0'),
(60, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com/', '2022-02-19 21:47:10', '0'),
(61, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com:80/', '2022-02-19 21:47:10', '0'),
(62, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com', '2022-02-19 21:47:11', '0'),
(63, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com/search?q=OWASP ZAP', '2022-02-19 21:47:11', '0'),
(64, 'ZAP', 'foo-bar@example.com', 'ZAP', 'www.google.com:80/search?q=OWASP ZAP', '2022-02-19 21:47:11', '0'),
(65, 'ZAP', 'foo-bar@example.com', 'ZAP', '9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(66, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http://9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(67, 'ZAP', 'foo-bar@example.com', 'ZAP', 'https://9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(68, 'ZAP', 'foo-bar@example.com', 'ZAP', 'http:\\\\9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(69, 'ZAP', 'foo-bar@example.com', 'ZAP', 'https:\\\\9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(70, 'ZAP', 'foo-bar@example.com', 'ZAP', '//9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(71, 'ZAP', 'foo-bar@example.com', 'ZAP', '\\\\9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(72, 'ZAP', 'foo-bar@example.com', 'ZAP', 'HtTp://9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(73, 'ZAP', 'foo-bar@example.com', 'ZAP', 'HtTpS://9048905235405817977.owasp.org', '2022-02-19 21:47:43', '0'),
(74, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;', '2022-02-19 21:48:08', '0'),
(75, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;ls /&quot;--&amp;gt;&lt;', '2022-02-19 21:48:08', '0'),
(76, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;', '2022-02-19 21:48:08', '0'),
(77, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&gt;&amp;lt;!--#EXEC cmd=&quot;dir \\\\&quot;--&amp;gt;&lt;', '2022-02-19 21:48:08', '0'),
(78, 'ZAP', 'foo-bar@example.com', 'ZAP', '0W45pz4p', '2022-02-19 21:48:33', '0'),
(79, 'ZAP', 'foo-bar@example.com', 'ZAP', '0W45pz4p', '2022-02-19 21:48:33', '0'),
(80, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;&quot;[removed]alert&amp;#40;1&amp;#41;;[removed]', '2022-02-19 21:48:34', '0'),
(81, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;&quot;[removed]alert&amp;#40;1&amp;#41;;[removed]', '2022-02-19 21:48:34', '0'),
(82, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;&quot;&lt;img&gt;', '2022-02-19 21:48:34', '0'),
(83, 'ZAP', 'foo-bar@example.com', 'ZAP', 'zApPX6sS', '2022-02-19 21:48:58', '0'),
(84, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;', '2022-02-19 21:50:10', '0'),
(85, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;', '2022-02-19 21:50:10', '0'),
(86, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;', '2022-02-19 21:50:10', '0'),
(87, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;', '2022-02-19 21:50:10', '0'),
(88, 'ZAP', 'foo-bar@example.com', 'ZAP', ';', '2022-02-19 21:50:10', '0'),
(89, 'ZAP', 'foo-bar@example.com', 'ZAP', ';', '2022-02-19 21:50:10', '0'),
(90, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;(', '2022-02-19 21:50:10', '0'),
(91, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;(', '2022-02-19 21:50:10', '0'),
(92, 'ZAP', 'foo-bar@example.com', 'ZAP', ' AND 1=1 -- ', '2022-02-19 21:50:10', '0'),
(93, 'ZAP', 'foo-bar@example.com', 'ZAP', ' AND 1=2 -- ', '2022-02-19 21:50:10', '0'),
(94, 'ZAP', 'foo-bar@example.com', 'ZAP', ' OR 1=1 -- ', '2022-02-19 21:50:11', '0'),
(95, 'ZAP', 'foo-bar@example.com', 'ZAP', ' AND 1=2 -- ', '2022-02-19 21:50:11', '0'),
(96, 'ZAP', 'foo-bar@example.com', 'ZAP', ' OR 1=1 -- ', '2022-02-19 21:50:11', '0'),
(97, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039; AND &#039;1&#039;=&#039;1&#039; -- ', '2022-02-19 21:50:11', '0'),
(98, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039; AND &#039;1&#039;=&#039;2&#039; -- ', '2022-02-19 21:50:11', '0'),
(99, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039; OR &#039;1&#039;=&#039;1&#039; -- ', '2022-02-19 21:50:11', '0'),
(100, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039; AND &#039;1&#039;=&#039;2&#039; -- ', '2022-02-19 21:50:11', '0'),
(101, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039; OR &#039;1&#039;=&#039;1&#039; -- ', '2022-02-19 21:50:11', '0'),
(102, 'ZAP', 'foo-bar@example.com', 'ZAP', ' UNION ALL select NULL -- ', '2022-02-19 21:50:11', '0'),
(103, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039; UNION ALL select NULL -- ', '2022-02-19 21:50:11', '0'),
(104, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot; UNION ALL select NULL -- ', '2022-02-19 21:50:11', '0'),
(105, 'ZAP', 'foo-bar@example.com', 'ZAP', ') UNION ALL select NULL -- ', '2022-02-19 21:50:11', '0'),
(106, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;) UNION ALL select NULL -- ', '2022-02-19 21:50:11', '0'),
(107, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;;print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=&quot;', '2022-02-19 21:50:39', '0'),
(108, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;;print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=&#039;', '2022-02-19 21:50:39', '0'),
(109, 'ZAP', 'foo-bar@example.com', 'ZAP', '${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}', '2022-02-19 21:50:39', '0'),
(110, 'ZAP', 'foo-bar@example.com', 'ZAP', '${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}\\', '2022-02-19 21:50:39', '0'),
(111, 'ZAP', 'foo-bar@example.com', 'ZAP', ';print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));', '2022-02-19 21:50:39', '0'),
(112, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;+response.write([599,243*485,171)+&quot;', '2022-02-19 21:50:39', '0'),
(113, 'ZAP', 'foo-bar@example.com', 'ZAP', '+response.write({0}*{1})+', '2022-02-19 21:50:39', '0'),
(114, 'ZAP', 'foo-bar@example.com', 'ZAP', 'response.write(599,243*485,171)', '2022-02-19 21:50:39', '0'),
(115, 'ZAP', 'foo-bar@example.com', 'ZAP', 'cat /etc/passwd', '2022-02-19 21:51:08', '0'),
(116, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;cat /etc/passwd&amp;', '2022-02-19 21:51:08', '0'),
(117, 'ZAP', 'foo-bar@example.com', 'ZAP', ';cat /etc/passwd;', '2022-02-19 21:51:08', '0'),
(118, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&amp;cat /etc/passwd&amp;&quot;', '2022-02-19 21:51:08', '0'),
(119, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;;cat /etc/passwd;&quot;', '2022-02-19 21:51:08', '0'),
(120, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;&amp;cat /etc/passwd&amp;&#039;', '2022-02-19 21:51:09', '0'),
(121, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;;cat /etc/passwd;&#039;', '2022-02-19 21:51:09', '0'),
(122, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;sleep 15&amp;', '2022-02-19 21:51:09', '0'),
(123, 'ZAP', 'foo-bar@example.com', 'ZAP', ';sleep 15;', '2022-02-19 21:51:09', '0'),
(124, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&amp;sleep 15&amp;&quot;', '2022-02-19 21:51:09', '0'),
(125, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;;sleep 15;&quot;', '2022-02-19 21:51:09', '0'),
(126, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;&amp;sleep 15&amp;&#039;', '2022-02-19 21:51:09', '0'),
(127, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;;sleep 15;&#039;', '2022-02-19 21:51:09', '0'),
(128, 'ZAP', 'foo-bar@example.com', 'ZAP', 'type %SYSTEMROOT%\\win.ini', '2022-02-19 21:51:09', '0'),
(129, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;type %SYSTEMROOT%\\win.ini', '2022-02-19 21:51:09', '0'),
(130, 'ZAP', 'foo-bar@example.com', 'ZAP', '|type %SYSTEMROOT%\\win.ini', '2022-02-19 21:51:09', '0'),
(131, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&amp;type %SYSTEMROOT%\\win.ini&amp;&quot;', '2022-02-19 21:51:09', '0'),
(132, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;|type %SYSTEMROOT%\\win.ini', '2022-02-19 21:51:09', '0'),
(133, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;&amp;type %SYSTEMROOT%\\win.ini&amp;&#039;', '2022-02-19 21:51:09', '0'),
(134, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;|type %SYSTEMROOT%\\win.ini', '2022-02-19 21:51:09', '0'),
(135, 'ZAP', 'foo-bar@example.com', 'ZAP', '&amp;timeout /T 15', '2022-02-19 21:51:09', '0'),
(136, 'ZAP', 'foo-bar@example.com', 'ZAP', '|timeout /T 15', '2022-02-19 21:51:10', '0'),
(137, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;&amp;timeout /T 15&amp;&quot;', '2022-02-19 21:51:10', '0'),
(138, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;|timeout /T 15', '2022-02-19 21:51:10', '0'),
(139, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;&amp;timeout /T 15&amp;&#039;', '2022-02-19 21:51:10', '0'),
(140, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;|timeout /T 15', '2022-02-19 21:51:10', '0'),
(141, 'ZAP', 'foo-bar@example.com', 'ZAP', 'get-help', '2022-02-19 21:51:10', '0'),
(142, 'ZAP', 'foo-bar@example.com', 'ZAP', ';get-help', '2022-02-19 21:51:10', '0'),
(143, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;;get-help', '2022-02-19 21:51:10', '0'),
(144, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;;get-help', '2022-02-19 21:51:10', '0'),
(145, 'ZAP', 'foo-bar@example.com', 'ZAP', ';get-help #', '2022-02-19 21:51:10', '0'),
(146, 'ZAP', 'foo-bar@example.com', 'ZAP', ';start-sleep -s 15', '2022-02-19 21:51:10', '0'),
(147, 'ZAP', 'foo-bar@example.com', 'ZAP', '&quot;;start-sleep -s 15', '2022-02-19 21:51:10', '0'),
(148, 'ZAP', 'foo-bar@example.com', 'ZAP', '&#039;;start-sleep -s 15', '2022-02-19 21:51:10', '0'),
(149, 'ZAP', 'foo-bar@example.com', 'ZAP', ';start-sleep -s 15 #', '2022-02-19 21:51:10', '0'),
(150, 'ZAP', 'foo-bar@example.com', 'ZAP', 'hVwlTVLUSNIoHyoDctEJTAKvFmBUgeXSQGuZJLfyWUsjIrZDDvABJqGPBOPqlOMDFHenXdvHSOfsZJAiOvYrVDUihtNQAYwjciATeAWMsaMvvdGBHMqLlKZVuhapaejkiqUmVWqOXvquVkTbWaXhmHpOyhfHoEPQUMGyWAkWSIyFkPoUkqFfldVuptxkvPGbVOHaSegrBYTUGrrqbETXmsVKcRgCjgEusNoCBqveXyWwSWLjbjpZlaqYlsSGVrNfLdFqhEBNADPOUZACKcaAvoMfHWDblmWJSNBhpBGBRBdeQGuJrHRieyjWpxbimyvcXiuFirwZLvUOSICuphijbMFLIaByIcPxwNKsxwAoDvqGrtCELqFBCSLbrjBtAUhnVYbNXNaxqNDjVTMkcsdmJKXZWOmkbXFmIFfeoCaGEKYyapNWWQFyAdOLvgNHyCNrLYEkuTNcyVSbrTundRrcKkEugwrAyPYYJCDLZVyEQRiMUdmbSbIJgEZcESjrnhQPIQSOGerBcUxPhesveKstlyfctsUTmKFKgcXtQdTSlgoQLtVRbhpMwoCZkSYlawbKSRGPXvDxISLDKfIJGGitKYRXThlmPEokNGiNldDncroNKSmBXeHuesBxZfUgKfRgMmXffyEaCXjHVWyaUVTYRRCMKdaaOMgSqCSqWolPhoVUatcbYUAdwrRAqGByYCEyTIUldrtXMZWwICLqiSceHidLJFCtXHSBvgLOnhyoskkgxcAIPyuuufqBqvdVBtesjbvkxEPPtBvcXRSTXBDMyhRjfWaXyEMoVpAXJWBqjsxRHDirOnhXFnTlCUOZSxnYQLAJvSCBcVgnNnkDJvHiePRZrCMhKbPXbgYIXYRllFiHPuogNgkPJCQNeIfkkYdeAaHHmAMylGymchsIKRLiFLFmuteOtEHdSsIPDUHVvkKlvkcFYTKkievHIkSKXyHbcwUOvATeYrQwKvVRVAsYqEnfhpdTjDFPrcgTQdbraTHJQToCbvcqtJtQAecenhdZxjmIDbvjZdgZGWNJglTwNxfZQRAyxkUjlcDQQuJDyjRmbdFcYHBddLPNuOlNoljtgEYvaPjsNfwxyKSYjeYfCCkeRfwqtETwSWmngKwKfPKZDRpltcyddQnqlYlCsrvJHgeIpDYXhPIbkfSPQuPNNYEQLVwQYwBJNOsnkcRvtbubkQYTZkHULEbwOmcRXRHcypJWdGZYKrHIWluHMVusaWEsrcWYMTDREFNxZTRFxlpkGHYBgjlkYIHKmBVZeoVlhNEAXkNrLbERqSWfuJXxwTCYSTajhSMQTvOQFmOeMuCHxSpyTLedNhDOpMqFGZWjhHrgNKJlEwFpOXGhpMyxuXHDRdSGCyQYjGbPjyAsyXPrmrGdwxHuFjPgmDtZQtESuUYhboknywIGRJsUnOqiUfpwsHtaHtdeEsFNtmDvATyPDwPEVCgfDgJXrVWmNswEyYVAGNTXbyeaqkMufeffNMWBLQFUUEBfOYrJhkoEkvqIkCUjEPCkgWNGmQgNnnBPCPfWqOZulANEmKAlSSssOLMOCthkiyCbCQitYHhByMNtWiBsTgMJnycdhADAwVGTZgtWTagroPhWFlewWnqxGSwqKGJaClauFiIjnwAeBpBWHaqtRJZvUZiBqsUsmrNNinAEPvbZqchNTlFtICmWjHqdcNAYwdYNbrHIdAToerZoGFLqUajbQLvutnVVGyByvgFOriKCsfwsWlTEGfySjquowgqbumdNdWeDoBsaUEYRNlxFFiyqXPIPVoyLEgiQpRrltVnKHkLRONaPauumGBxyBRJhnGXlvhMdtDDrWyZkABeKhZtoIXBfJdIUGTufWDDVtOFEBYgSBUBQwWsZweDViulqSBgYEbVqVdhqrSdDVNvflyJYxKkgYQQdFwnGfYkReoZUwoKJnHaiFxeXsvUSgwPfFSgtYueJUcNlZXXMXXqGUTxCqZOebpqsByufyEwjnBZiLjSjMijVSTtNAxxrIgNDsLDPBRTkXkqVPEHLNpmFwDxXWVeSrimeWiiQVLbxUZUpBsXonBVEZRKcXkkHTGUZQnrgXWyRgetcXDVvKCuqtGIZ', '2022-02-19 21:52:00', '0'),
(151, 'ZAP', 'foo-bar@example.com', 'ZAP', 'ZAP', '2022-02-19 21:52:24', '0'),
(152, 'ZAP', 'foo-bar@example.com', 'ZAP', 'ZAP%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s\n', '2022-02-19 21:52:24', '0'),
(153, 'ZAP', 'foo-bar@example.com', 'ZAP', 'ZAP %1!s%2!s%3!s%4!s%5!s%6!s%7!s%8!s%9!s!s!s!s!s!s!s!s!s!s!s !s!!n&quot;!n#!n$!n%!n&amp;!n&#039;!n(!n)!n0!n1!n2!n3!n4!n5!n6!n7!n8!n9!n@!n\n', '2022-02-19 21:52:24', '0'),
(154, 'ZAP', 'foo-bar@example.com', 'ZAP', 'Set-cookie: Tamper=cad89c72-84b5-4069-8a77-fa2dc66c8d7f', '2022-02-19 21:52:49', '0'),
(155, 'ZAP', 'foo-bar@example.com', 'ZAP', 'any\r\nSet-cookie: Tamper=cad89c72-84b5-4069-8a77-fa2dc66c8d7f', '2022-02-19 21:52:49', '0'),
(156, 'ZAP', 'foo-bar@example.com', 'ZAP', 'any?\r\nSet-cookie: Tamper=cad89c72-84b5-4069-8a77-fa2dc66c8d7f', '2022-02-19 21:52:49', '0'),
(157, 'ZAP', 'foo-bar@example.com', 'ZAP', 'any\nSet-cookie: Tamper=cad89c72-84b5-4069-8a77-fa2dc66c8d7f', '2022-02-19 21:52:49', '0'),
(158, 'ZAP', 'foo-bar@example.com', 'ZAP', 'any?\nSet-cookie: Tamper=cad89c72-84b5-4069-8a77-fa2dc66c8d7f', '2022-02-19 21:52:49', '0'),
(159, 'ZAP', 'foo-bar@example.com', 'ZAP', 'any\r\nSet-cookie: Tamper=cad89c72-84b5-4069-8a77-fa2dc66c8d7f\r\n', '2022-02-19 21:52:50', '0'),
(160, 'ZAP', 'foo-bar@example.com', 'ZAP', 'any?\r\nSet-cookie: Tamper=cad89c72-84b5-4069-8a77-fa2dc66c8d7f\r\n', '2022-02-19 21:52:50', '0'),
(161, 'ZAP', 'foo-bar@example.com', 'ZAP', '@', '2022-02-19 21:53:17', '0'),
(162, 'ZAP', 'foo-bar@example.com', 'ZAP', '+', '2022-02-19 21:53:17', '0'),
(163, 'ZAP', 'foo-bar@example.com', 'ZAP', '|', '2022-02-19 21:53:17', '0'),
(164, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:/Windows/system.ini', '2022-02-19 22:03:26', '0'),
(165, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../Windows/system.ini', '2022-02-19 22:03:26', '0'),
(166, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:\\Windows\\system.ini', '2022-02-19 22:03:26', '0'),
(167, 'ZAP', 'foo-bar@example.com', 'ZAP', '..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\Windows\\system.ini', '2022-02-19 22:03:26', '0'),
(168, 'ZAP', 'foo-bar@example.com', 'ZAP', '/etc/passwd', '2022-02-19 22:03:27', '0'),
(169, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../etc/passwd', '2022-02-19 22:03:27', '0'),
(170, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:/', '2022-02-19 22:03:27', '0'),
(171, 'ZAP', 'foo-bar@example.com', 'ZAP', '/', '2022-02-19 22:03:27', '0'),
(172, 'ZAP', 'foo-bar@example.com', 'ZAP', 'c:\\', '2022-02-19 22:03:27', '0'),
(173, 'ZAP', 'foo-bar@example.com', 'ZAP', '../../../../../../../../../../../../../../../../', '2022-02-19 22:03:28', '0'),
(174, 'ZAP', 'foo-bar@example.com', 'ZAP', 'WEB-INF/web.xml', '2022-02-19 22:03:28', '0'),
(175, 'ZAP', 'foo-bar@example.com', 'ZAP', 'WEB-INF\\web.xml', '2022-02-19 22:03:28', '0'),
(176, 'ZAP', 'foo-bar@example.com', 'ZAP', '/WEB-INF/web.xml', '2022-02-19 22:03:28', '0'),
(177, 'ZAP', 'foo-bar@example.com', 'ZAP', '\\WEB-INF\\web.xml', '2022-02-19 22:03:28', '0'),
(178, 'ZAP', 'foo-bar@example.com', 'ZAP', 'thishouldnotexistandhopefullyitwillnot', '2022-02-19 22:03:28', '0'),
(179, 'Muhammad Rizky', 'nuris.akbar@gmail.com', 'sadasd', 'asdasd', '2022-04-29 10:53:50', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_navbar`
--

CREATE TABLE `tbl_navbar` (
  `navbar_id` int(11) NOT NULL,
  `navbar_name` varchar(50) DEFAULT NULL,
  `navbar_slug` varchar(200) DEFAULT NULL,
  `navbar_parent_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_navbar`
--

INSERT INTO `tbl_navbar` (`navbar_id`, `navbar_name`, `navbar_slug`, `navbar_parent_id`) VALUES
(1, 'Home', NULL, 0),
(2, 'About', 'about', 0),
(3, 'Blog', 'blog', 0),
(4, 'Contact', 'contact', 0),
(5, 'All Category', 'blog', 3),
(6, 'Teknologi', 'tag/Teknologi', 3),
(10, 'Success', 'category/success', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text,
  `post_contents` longtext,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT '0',
  `post_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(1, 'Bangun Karakter Idaman Anda Dalam 5 Langkah', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3>Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.<br></p>', '18f65f55e2bc21c3a54031a74ef6c56c.jpg', '2019-04-05 07:45:42', '2019-04-14 09:07:00', 1, 'Psikologi,Motivasi', 'membangun-karakter', 1, 7, 1),
(2, '7 Tips untuk menemukan passion Anda', '', '<p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);\"=\"\">Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', '787f035149ba2179b8bc4c5ac01c5001.jpg', '2019-04-05 07:52:06', '2019-04-14 09:08:10', 1, 'Psikologi,Motivasi', 'tips-untuk-menemukan-passion-anda', 1, 6, 1),
(3, '5 Alasan kenapa Anda perlu berbuat baik', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);\"=\"\">Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', 'a06ae9341405a292ae12b67ed85dc1dc.jpg', '2019-04-05 12:25:13', '2019-04-14 09:08:51', 2, 'Psikologi,Motivasi,Kesehatan', '5-alasan-kenapa-anda-perlu-berbuat-baik', 1, 9, 1),
(4, '7 Tips untuk meningkatkan pendapatan Anda', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);\"=\"\">Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', '9a734ed5d107f0f378da0a1e13dfc92e.jpg', '2019-04-05 12:26:55', '2019-04-14 09:09:16', 3, 'Teknologi,Motivasi', 'tips-untuk-meningkatkan-pendapatan-anda', 1, 10, 1),
(5, '5 Alasan kenapa Anda harus mengajar', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);\"=\"\">Ini adalah Sub Heading&nbsp;</h3><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', 'c534b8d570a496102d49262217195a50.jpeg', '2019-04-05 12:28:19', '2019-04-14 09:10:03', 2, 'Psikologi,Motivasi', 'alasan-kenapa-anda-harus-mengajar', 1, 8, 1),
(6, '3 Rahasia Manajemen Waktu', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);\"=\"\">Ini adalah Sub Heading&nbsp;</h3><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', 'ee094df754cba6976747236e74949a43.jpg', '2019-04-05 13:05:56', '2019-04-14 09:10:15', 3, 'Psikologi,Motivasi', 'rahasia-manajemen-waktu', 1, 16, 1),
(7, '3 Teknik Efektif Membaca Cepat', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah\r\n artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\">Ini adalah Sub Heading&nbsp;</h3><p style=\"outline: 0px !important;\">Ini\r\n adalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini\r\n adalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten.</p>', 'b69bd34db0726b6cf7747a816c99254f.jpg', '2020-01-12 04:30:20', NULL, 1, 'Psikologi,Motivasi', '3-teknik-efektif-membaca-cepat', 1, 1, 1),
(8, '7 Cara Efektif Mengatasi Kegagalan dan Hidup', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah\r\n artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\">Ini adalah Sub Heading&nbsp;</h3><p style=\"outline: 0px !important;\">Ini\r\n adalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini\r\n adalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten.</p>', '6233b3b0a8283ff2945802e2b876075e.jpg', '2020-01-12 04:32:01', NULL, 2, 'Psikologi,Motivasi', '7-cara-efektif-mengatasi-kegagalan-dan-hidup', 1, 3, 1),
(9, '4 Cara Menjadi Lebih Aktif dalam Belajar', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini adalah\r\n artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style=\"font-family: \" open=\"\">Ini adalah Sub Heading&nbsp;</h3><p style=\"outline: 0px !important;\">Ini\r\n adalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten.</p><p style=\"outline: 0px !important;\">Ini\r\n adalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini \r\nadalah artikel konten Ini adalah artikel konten Ini adalah artikel \r\nkonten Ini adalah artikel konten Ini adalah artikel konten Ini adalah \r\nartikel konten Ini adalah artikel konten Ini adalah artikel konten Ini \r\nadalah artikel konten.</p>', 'ec77cde530b2eb464b9add2c31316b10.jpg', '2020-01-12 04:34:01', NULL, 1, 'Psikologi,Motivasi', '4-cara-menjadi-lebih-aktif-dalam-belajar', 1, 4, 1),
(10, 'Membuat Open Source Adminers', '', '&nbsp; Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eius perferendis ducimus quibusdam molestias magni. Sunt maxime voluptate nihil blanditiis in enim rerum est numquam modi neque iure exercitationem autem, et impedit incidunt cum delectus officia repudiandae expedita ad inventore aliquid culpa optio saepe. Dolorem obcaecati dignissimos similique harum reiciendis neque iste dolores et, animi aut eum odio doloribus iure illo atque? Minima harum quidem ad sit, atque velit amet quisquam natus voluptates numquam soluta perferendis cumque dolorem hic, quia alias nihil sapiente dolore optio. Minima odit inventore maxime molestias ex excepturi consequatur quasi saepe laborum exercitationem accusantium odio, qui iste, deserunt sed quod earum, consectetur labore. Soluta, dolorum nostrum molestias aliquid nam error enim rerum debitis rem est non repellat illo, quae minima fugit fuga veritatis! Unde, assumenda corporis officiis odit adipisci fugit totam nobis id praesentium illo. A nam, facilis eum ut optio hic laborum illo cumque! Alias delectus maxime, quod a ut enim dolorem provident consectetur, vel blanditiis quia! Nam nemo, libero repellat. Dolor esse eum dolore non possimus perferendis facilis ratione, nobis nihil dolores consectetur aliquam corporis nesciunt illo accusantium iure eaque temporibus ipsam eveniet! Debitis voluptatem numquam eius asperiores ad, quia illo ut quaerat quibusdam saepe.', 'e190c833f7e99072f207700a2decc2e0.png', '2022-02-18 15:05:02', NULL, 4, NULL, 'membuat-open-source-adminers', 1, 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `view_id` int(11) NOT NULL,
  `view_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`view_id`, `view_date`, `view_ip`, `view_post_id`) VALUES
(1, '2019-04-06 13:33:39', '::1', 6),
(2, '2019-04-06 23:04:18', '::1', 6),
(3, '2019-04-07 03:32:54', '::1', 5),
(4, '2019-04-07 03:33:14', '::1', 4),
(5, '2019-04-07 04:03:50', '::1', 3),
(6, '2019-04-09 12:19:36', '::1', 6),
(7, '2019-04-09 13:28:30', '::1', 4),
(8, '2019-04-10 01:33:10', '::1', 5),
(9, '2019-04-10 10:00:27', '::1', 2),
(10, '2019-04-10 10:58:17', '::1', 1),
(11, '2019-04-10 13:20:32', '::1', 3),
(12, '2019-04-10 13:20:46', '::1', 6),
(13, '2019-04-11 03:32:18', '::1', 6),
(14, '2019-04-11 04:24:22', '::1', 4),
(15, '2019-04-11 07:58:35', '::1', 2),
(16, '2019-04-12 04:23:04', '::1', 6),
(17, '2019-04-12 10:09:30', '::1', 5),
(18, '2019-04-13 01:42:27', '::1', 6),
(19, '2019-04-13 02:01:01', '::1', 5),
(20, '2019-04-13 02:01:18', '::1', 3),
(21, '2019-04-13 03:23:34', '::1', 4),
(22, '2019-04-14 01:39:17', '::1', 1),
(23, '2019-04-14 03:24:24', '::1', 3),
(24, '2019-04-14 04:08:24', '::1', 2),
(25, '2019-04-15 03:44:42', '::1', 6),
(26, '2019-12-19 02:28:13', '::1', 6),
(27, '2019-12-19 02:29:33', '::1', 7),
(28, '2019-12-28 03:44:29', '::1', 7),
(29, '2019-12-28 07:44:18', '::1', 3),
(30, '2019-12-28 07:44:24', '::1', 2),
(31, '2019-12-28 08:06:56', '::1', 6),
(32, '2019-12-30 03:36:11', '::1', 4),
(33, '2019-12-30 04:21:54', '::1', 7),
(34, '2019-12-31 02:54:27', '::1', 4),
(35, '2019-12-31 02:58:04', '::1', 7),
(36, '2019-12-31 02:59:37', '::1', 1),
(37, '2019-12-31 03:58:35', '::1', 6),
(38, '2020-01-01 02:54:01', '::1', 7),
(39, '2020-01-01 03:19:14', '::1', 6),
(40, '2020-01-02 02:05:56', '::1', 4),
(41, '2020-01-02 03:16:32', '::1', 7),
(42, '2020-01-02 03:24:37', '::1', 1),
(43, '2020-01-03 03:20:23', '::1', 3),
(44, '2020-01-03 03:21:18', '::1', 6),
(45, '2020-01-03 04:03:10', '::1', 7),
(46, '2020-01-04 03:59:33', '::1', 5),
(47, '2020-01-04 04:04:33', '::1', 11),
(48, '2020-01-04 04:06:22', '::1', 10),
(49, '2020-01-04 04:23:16', '::1', 16),
(50, '2020-01-04 05:51:45', '::1', 15),
(51, '2020-01-07 03:12:53', '::1', 15),
(52, '2020-01-12 04:42:18', '::1', 9),
(53, '2022-02-18 08:31:52', '::1', 8),
(54, '2022-02-18 08:39:37', '::1', 9),
(55, '2022-02-18 09:01:33', '::1', 3),
(56, '2022-02-18 10:31:23', '::1', 5),
(57, '2022-02-18 10:31:26', '::1', 1),
(58, '2022-02-18 10:31:43', '::1', 6),
(59, '2022-02-18 12:23:47', '::1', 4),
(60, '2022-02-18 15:12:37', '::1', 10),
(61, '2022-02-18 16:09:01', '::1', 10),
(62, '2022-02-18 16:23:03', '::1', 9),
(63, '2022-02-18 16:33:51', '::1', 2),
(64, '2022-02-18 17:06:29', '::1', 6),
(65, '2022-02-18 17:06:30', '::1', 4),
(66, '2022-02-18 17:06:32', '::1', 3),
(67, '2022-02-18 17:27:40', '::1', 8),
(68, '2022-02-19 09:23:54', '::1', 5),
(69, '2022-02-19 21:38:35', '::1', 10),
(70, '2022-02-19 21:43:37', '127.0.0.1', 10),
(71, '2022-02-19 21:43:37', '127.0.0.1', 9),
(72, '2022-02-19 21:43:37', '127.0.0.1', 8),
(73, '2022-02-19 21:43:37', '127.0.0.1', 4),
(74, '2022-02-19 21:43:37', '127.0.0.1', 3),
(75, '2022-02-19 21:43:37', '127.0.0.1', 5),
(76, '2022-02-19 21:43:37', '127.0.0.1', 6),
(77, '2022-02-19 21:43:37', '127.0.0.1', 1),
(78, '2022-02-19 21:43:38', '127.0.0.1', 2),
(79, '2022-02-19 21:43:38', '127.0.0.1', 7),
(80, '2022-04-20 02:58:43', '::1', 10),
(81, '2022-04-20 02:58:50', '::1', 1),
(82, '2022-04-29 10:50:48', '::1', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text,
  `site_favicon` varchar(50) DEFAULT NULL,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_logo_big` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_description`, `site_favicon`, `site_logo_header`, `site_logo_footer`, `site_logo_big`, `site_facebook`, `site_twitter`, `site_instagram`, `site_pinterest`, `site_linkedin`) VALUES
(1, 'Developer-Mhd Rizky', 'MBLOG - Source Code untuk Blogger', 'Author: A.N. Author, Illustrator: P. Picture, Category: Books, Price: $17.99, Length: 784 pages', 'favicon.png', 'logo.png', 'favicon.png', 'LOGO-BIG.png', 'https://www.facebook.com/mfikridotcom/', 'https://twitter.com/MFikri75770694/', 'https://www.instagram.com/mfikricom/', 'https://id.pinterest.com/mfikricom/', 'https://www.linkedin.com/in/m-fikri-setiadi-b03370148/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_subscribe`
--

CREATE TABLE `tbl_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `subscribe_email` varchar(100) DEFAULT NULL,
  `subscribe_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `subscribe_status` int(11) DEFAULT '0',
  `subscribe_rating` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_subscribe`
--

INSERT INTO `tbl_subscribe` (`subscribe_id`, `subscribe_email`, `subscribe_created_at`, `subscribe_status`, `subscribe_rating`) VALUES
(1, 'fikrifiver97@gmail.com', '2019-04-11 07:40:16', 1, 1),
(3, 'porthere@gmail.com', '2019-04-11 07:57:28', 1, 0),
(4, 'mufty@gmail.com', '2019-04-11 07:58:44', 0, 0),
(5, 'qadalm@gmail.com', '2019-12-28 03:06:50', 0, 0),
(6, 'nuris.akbar@gmail.com', '2022-02-18 14:37:37', 0, 0),
(7, 'royrizalianwar2018@gmail.com', '2022-02-18 14:38:25', 0, 0),
(8, 'foo-bar@example.com', '2022-02-19 21:43:37', 0, 0),
(9, 'foo-bar@example.com0W45pz4p', '2022-02-19 21:48:35', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tags`
--

CREATE TABLE `tbl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tags`
--

INSERT INTO `tbl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'Teknologi'),
(2, 'Psikologi'),
(3, 'Motivasi'),
(4, 'Kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `testimonial_name` varchar(50) DEFAULT NULL,
  `testimonial_content` text,
  `testimonial_image` varchar(50) DEFAULT NULL,
  `testimonial_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`testimonial_id`, `testimonial_name`, `testimonial_content`, `testimonial_image`, `testimonial_created_at`) VALUES
(1, 'Mhd Rizkyi, Founder of gbyas.com', 'Hei Selamat datang di website pribadiku', 'b4d8e2b191213f72dc41ce768b03b2d9.png', '2020-01-03 03:31:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_level`, `user_status`, `user_photo`) VALUES
(1, 'Mhd Rizky', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', '1', 'b60585c75b08c838ace0fc7ad47b16ae.png'),
(2, 'Joko', 'joko1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '3d0be9678f99be0b5180634d37ff8ef4.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541328, '2019-03-19 03:33:51', '::1', 'Chrome'),
(541329, '2019-03-20 01:00:19', '::1', 'Chrome'),
(541330, '2019-04-05 01:53:28', '::1', 'Firefox'),
(541331, '2019-04-06 01:37:35', '::1', 'Chrome'),
(541332, '2019-04-06 23:04:12', '::1', 'Chrome'),
(541333, '2019-04-09 12:19:32', '::1', 'Chrome'),
(541334, '2019-04-10 01:33:03', '::1', 'Chrome'),
(541335, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541336, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541337, '2019-04-12 03:51:42', '::1', 'Chrome'),
(541338, '2019-04-12 21:55:51', '::1', 'Chrome'),
(541339, '2019-04-14 01:30:40', '::1', 'Chrome'),
(541340, '2019-04-15 01:42:53', '::1', 'Chrome'),
(541341, '2019-05-08 02:07:09', '::1', 'Chrome'),
(541342, '2019-05-21 05:55:14', '::1', 'Firefox'),
(541343, '2019-08-28 07:08:22', '::1', 'Firefox'),
(541344, '2019-12-17 06:04:57', '::1', 'Firefox'),
(541345, '2019-12-18 01:34:25', '::1', 'Firefox'),
(541346, '2019-12-19 02:21:23', '::1', 'Firefox'),
(541347, '2019-12-20 07:47:00', '::1', 'Firefox'),
(541348, '2019-12-28 02:58:34', '::1', 'Firefox'),
(541349, '2019-12-29 08:48:39', '::1', 'Firefox'),
(541350, '2019-12-30 03:24:04', '::1', 'Firefox'),
(541351, '2019-12-31 02:47:15', '::1', 'Firefox'),
(541352, '2020-01-01 02:24:55', '::1', 'Firefox'),
(541353, '2020-01-02 01:58:25', '::1', 'Firefox'),
(541354, '2020-01-03 03:15:30', '::1', 'Firefox'),
(541355, '2020-01-04 03:31:49', '::1', 'Firefox'),
(541356, '2020-01-05 06:58:35', '127.0.0.1', 'Firefox'),
(541357, '2020-01-06 06:03:25', '::1', 'Firefox'),
(541358, '2020-01-07 00:57:59', '::1', 'Firefox'),
(541359, '2020-01-08 05:53:44', '::1', 'Firefox'),
(541360, '2020-01-12 04:18:15', '::1', 'Firefox'),
(541361, '2022-02-18 08:30:18', '::1', 'Chrome'),
(541362, '2022-02-18 16:00:10', '::1', 'Chrome'),
(541363, '2022-02-19 21:38:28', '::1', 'Chrome'),
(541364, '2022-02-19 21:43:36', '127.0.0.1', 'Firefox'),
(541365, '2022-04-20 02:57:42', '::1', 'Chrome'),
(541366, '2022-04-29 10:50:44', '::1', 'Chrome'),
(541367, '2022-04-29 10:52:10', '127.0.0.1', 'Chrome');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeks untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  ADD PRIMARY KEY (`navbar_id`);

--
-- Indeks untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indeks untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indeks untuk tabel `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indeks untuk tabel `tbl_tags`
--
ALTER TABLE `tbl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indeks untuk tabel `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT untuk tabel `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  MODIFY `navbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_tags`
--
ALTER TABLE `tbl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541368;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
