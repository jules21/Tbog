-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2019 at 01:55 PM
-- Server version: 10.2.14-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 0, 'Technology', '2017-03-04 13:03:18'),
(2, 0, 'Business', '2017-03-04 13:14:40'),
(4, 5, 'Tourism', '2019-02-25 13:28:25'),
(5, 7, 'design', '2019-02-27 13:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 2, 'John Doe', 'jdoe@gmail.com', 'Great Post!', '2017-03-17 13:57:29'),
(2, 2, 'Jan Doe', 'jane@yahoo.com', 'Thank you for this awesome post', '2017-03-17 14:05:58'),
(3, 2, 'the click ltd', 'manager@eprn.rw', 'ygiuhk', '2019-02-25 11:01:37'),
(4, 2, 'the click ltd', 'admin@eprn.rw', 'dfmwsdf', '2019-02-25 11:50:21'),
(5, 3, 'the click ltd', 'ashly00@example.net', 'secret', '2019-02-25 11:57:34'),
(6, 9, 'the click ltd', 'ashly00@example.net', 'this is awesome', '2019-02-25 13:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(7, 2, 5, 'The power to be your best', 'The-power-to-be-your-best', 'secret', 'logo-big.png', '2019-02-25 13:12:06'),
(8, 4, 5, 'The Land of a Thousand Hills', 'The-Land-of-a-Thousand-Hills', 'Rwanda. Les Pays des Milles Collines. The Land of a Thousand Hills. A gross underestimate, as every which way you look there must be a thousand hills in sight. Lush green fields and forests cover every inch. We\'ve only flown less than a thousand miles but it\'s as if we\'ve changed continent. We arrived at Kigali Airport at midnight, fully expecting the usual airport nightmare, but were instead greeted by a clean and modern terminal.', 'Visit-Rwanda-NH_OO_Lifestyle_Canopy_Walk_0019_MASTER-1-700x467.jpg', '2019-02-25 13:38:07'),
(9, 4, 5, 'Amazing and resilient Rwanda', 'Amazing-and-resilient-Rwanda', 'We reached Rwanda after two rather long days of travel, via Johannesburg for one night. I was beginning to wonder if it would be worth it to go all that way to see a group of gorillas. I\'m pleased to say my doubts were unfounded. In fact our short visit to Rwanda was much more than a visit with some amazing primates. We arrived at Kigali, the capital of Rwanda in the evening and were collected from the airport by our guide Fred who would look after us very capably for the next few days.', '1500x500.jpg', '2019-02-25 13:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `register_date`) VALUES
(5, 'nadine', 'nana@gmail.com', 'uwingabiye', '5ebe2294ecd0e0f08eab7690d2a6ee69', '2019-02-25 12:27:23'),
(6, 'kibibi', 'kibibijoseph02@gmail.com', 'maradona', 'ddefa06f0caa9bdbc3089dff32c71ddc', '2019-02-25 13:43:05'),
(7, 'Pacifique Musirikare', 'damore.camila@example.net', 'claire', '5ebe2294ecd0e0f08eab7690d2a6ee69', '2019-02-27 13:50:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
