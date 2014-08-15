-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2014 at 02:19 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(2) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `admin_email_address` varchar(256) NOT NULL,
  `admin_password` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email_address`, `admin_password`, `status`) VALUES
(1, 'Kowshik Ahmed', 'kowshik.ahmed@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'test', 'test@email.com', '098f6bcd4621d373cade4e832627b4f6', 1),
(3, 'abrar', 'abrar@email.com', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE IF NOT EXISTS `tbl_blog` (
  `blog_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `category_id` int(3) NOT NULL,
  `blog_title` varchar(256) NOT NULL,
  `blog_description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_date_time` datetime NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `user_id`, `category_id`, `blog_title`, `blog_description`, `status`, `created_date_time`) VALUES
(1, 2, 4, 'পরিত্রাণ পেতে গায়ে', '<p>\r\n শিশুপুত্র ও কন্যা নিয়ে শ্বশুর বাড়িতে ছিলেন মিতু আক্তার (২৫)। শ্বশুর-শাশুড়ির সঙ্গে বনিবনা হচ্ছিল না। চলছিল শারীরিক ও মানসিক নির্যাতন। এরপরও তিনি মুখ বুজে পড়েছিলেন। এক পর্যায়ে তা সহ্যের সীমা ছাড়িয়ে যায়। আর তখনই গায়ে কেরোসিন ঢেলে আগুন ধরিয়ে দেন তিনি।</p>\r\n<p>\r\n <br />\r\n গত শুক্রবার রাতে পটুয়াখালীর বাউফল উপজেলার ধান্দি গ্রামে এ ঘটনা ঘটে বলে মিতুর পরিবারের সদস্যদের ভাষ্য। অগ্নিদগ্ধ গৃহবধূকে আজ শনিবার সকালে ঢাকা মেডিকেল কলেজ হাসপাতালের বার্ন ইউনিটে ভর্তি করা হয়েছে। তাঁর শরীরের প্রায় পুরোটা পুড়ে গেছে বলে চিকিত্সকেরা জানিয়েছেন। নিবিড় পরিচর্যা কেন্দ্রে (আইসিইউ) তাঁকে চিকিত্সা দেওয়া হচ্ছে।<br />\r\n বার্ন অ্যান্ড প্লাস্টিক সার্জারি ইউনিটের জাতীয় সমন্বয়কারী সামন্ত লাল সেন বলেছেন বলেন, মিতুর (২৫) বাঁচার আশা খুব কম। একজন মানুষের শরীরের ৫০ ভাগের বেশি পুড়লে তাঁর বাঁচার সম্ভাবনা কমে আসে। মিতুর শরীরের ৯৫ ভাগ পুড়ে গেছে।</p>\r\n<p>\r\n <br />\r\n মিতুর পরিবারের সদস্যদের ভাষ্য, গতকাল দুপুরে তিনি গায়ে কেরোসিন ঢেলে আগুন জ্বেলে আত্মহত্যার চেষ্টা করেন। মিতু ধান্দি গ্রামে শ্বশুর বাড়িতে থাকতেন। তাঁর স্বামী মিজানুর রহমান কাজ করেন গাজীপুরের একটি পোশাক কারখানায়। তাঁর অনুপস্থিতিতে ঘটনাটি ঘটে।<br />\r\n স্বজনদের ভাষ্য, মিতুর শ্বশুর-শাশুড়ি আজ সকালে তাঁকে ঢাকা মেডিকেল কলেজ হাসপাতালে নিয়ে আসেন। বার্ন ইউনিটে ভর্তির পর তাঁরা সটকে পড়েন।</p>\r\n<p>\r\n <br />\r\n মিতুর ভাই সংবাদ-কর্মী মাসুদ রানা প্রথম আলো ডটকমকে বলেন, &lsquo;বিয়ের পর থেকে মিতুর শ্বশুর আলতাফ হাওলাদার ও শাশুড়ি হালিমা বেগম এটা-ওটা চাইতেন। তাঁরা যখন যা দাবি করেছেন, সাধ্যমতো আমরা দেওয়ার চেষ্টা করেছি। এরপরও তাঁরা শারীরিক ও মানসিক নির্যাতন করতেন। আমরা বেশ কয়েকবার এ নিয়ে মিতুর শ্বশুর-শাশুড়ি ও স্বামীর সঙ্গে বসেছি। নির্যাতন থামেনি।&rsquo;<br />\r\n আজ দুপুর ১২টার দিকে ঢাকা মেডিকেলের বার্ন অ্যান্ড প্লাস্টিক সার্জারি ইউনিটে মিতুকে আইসিইউতে ঢোকানোর আগে দেখা যায়, মিতুর সারা শরীর ব্যান্ডেজে মোড়া। যন্ত্রণায় তিনি ক্রমাগত চিত্কার করছেন। পাশে দাঁড়িয়ে নিরুপায় স্বজনেরা চোখ মুছছেন।</p>\r\n', '1', '0000-00-00 00:00:00'),
(4, 3, 1, 'Test Blog', '<p>\r\n Test Blog Description..........</p>\r\n', '1', '2013-06-02 09:06:30'),
(5, 2, 1, 'HP Laptop', '<p>\r\n Artical About HP laptop..........................</p>\r\n', '1', '2013-06-08 09:06:44'),
(6, 2, 2, 'MRF Bat', '<p>\r\n Artical About MRF Bat.................</p>\r\n', '1', '2013-06-08 09:06:37'),
(7, 2, 3, 'About Gallexy S4', '<p>\r\n Artical About Gallexy S4.............</p>\r\n', '1', '2013-06-08 09:06:07'),
(8, 9, 1, 'hello', '<p>\r\n hello</p>\r\n', '1', '2014-08-15 13:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(2) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'Laptop', 'Laptop category description here....................................................'),
(2, 'Sports', '..............'),
(3, 'It', ''),
(4, 'Politics', ''),
(5, 'Game', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` int(5) NOT NULL AUTO_INCREMENT,
  `blog_id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comments_description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `blog_id`, `name`, `comments_description`, `status`) VALUES
(1, 1, 'Alif Ahmed', 'This is test comments', 0),
(2, 0, '', 'zxczx', 0),
(3, 0, '', 'zxczx', 0),
(4, 0, '', 'zxczx', 0),
(5, 0, '', 'zxczx', 0),
(6, 1, 'Kowshik Ahmed', 'Test Blog Comments', 0),
(7, 1, 'Shafiul Alam', '...................................................................................', 0),
(8, 1, 'Tania Alam', '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `gander` varchar(6) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zip_code` varchar(4) NOT NULL,
  `activation_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'if activation_status=0  User inactive and activation_status=1 user active',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `first_name`, `last_name`, `email_address`, `password`, `address`, `mobile_no`, `city`, `gander`, `country`, `zip_code`, `activation_status`) VALUES
(1, 'Tahsin', 'Abrar', 'abrar.cste@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Dhaka', '01717538525', 'Dhaka', 'Male', 'Bangladesh', '1212', 1),
(2, 'Alif', 'Ahmed Ratul', 'alif.ahmed@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '                    Ishurdi                ', '01711231142', 'Ishurdi', 'male', 'BS', '6622', 1),
(4, 'Tania', 'Alam', 'tani@yahoo.com', '96e79218965eb72c92a549dd5a330112', 'Dhaka', '01712742217', 'Dhaka', 'female', 'BD', '1205', 0),
(5, 'Kowshik', 'Ahmed', 'kowshik.ahmed@yahoo.com', '96e79218965eb72c92a549dd5a330112', 'Dhaka', '01711231142', 'Ishurdi', 'male', 'AW', '9876', 0),
(6, 'Jahidul', 'Islam', 'jahid@gmail.com', '96e79218965eb72c92a549dd5a330112', 'pabna', '09876543', 'Pabna', 'male', 'BD', '5655', 0),
(7, 'Jannatul', 'Miskat', 'miskat.alam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Dhaka', '098765432', 'Dhaka', 'female', 'AR', '2432', 1),
(9, 'test', '', 'test@email.com', '098f6bcd4621d373cade4e832627b4f6', 'test', '', 'test', 'test', 'test', '', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
