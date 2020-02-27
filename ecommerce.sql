-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 01:27 PM
-- Server version: 10.1.31-MariaDB
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add slider', 7, 'add_slider'),
(26, 'Can change slider', 7, 'change_slider'),
(27, 'Can delete slider', 7, 'delete_slider'),
(28, 'Can view slider', 7, 'view_slider'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add api', 11, 'add_api'),
(42, 'Can change api', 11, 'change_api'),
(43, 'Can delete api', 11, 'delete_api'),
(44, 'Can view api', 11, 'view_api');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$JrR83QWVbFwJ$3e3Zf0yuNp9o4sWT7Sx6NpV17N8TduzpqwCB4xx71r0=', '2020-02-15 07:56:18.061612', 1, 'live4web', '', '', 'ducat.harshit@gmail.com', 1, 1, '2020-01-04 06:24:21.189069'),
(5, 'pbkdf2_sha256$180000$cai0BuZDT6mm$8pi+ZQYXmnziE8unGZCXLQ91ChbNZQ7Zt0G5j2m7Kcc=', '2020-02-08 05:58:18.848573', 0, 'vibble', 'harshit', 'Duck', 'anandraj6491@gmail.com', 0, 1, '2020-01-25 06:35:02.467274'),
(7, 'pbkdf2_sha256$180000$5udFWgWTJx3E$dcKFC7sykg8UOy6AGFviBbGReOpaF5zBYOzH3v9MOUw=', '2020-01-25 07:40:15.014631', 0, 'vibble2', 'Sonu', 'Duck', 'anandraj6491@gmail.com', 0, 1, '2020-01-25 06:36:16.874837');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pprice` double NOT NULL,
  `pbrand` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `pname`, `pprice`, `pbrand`, `quantity`) VALUES
(4, 3, 'Laptop', 44000, 'HP', 1),
(5, 7, 'salt', 44000, 'TATA', 1),
(6, 7, 'salt', 44000, 'TATA', 1),
(7, 4, 'Shirt', 14500, 'lee', 4),
(8, 4, 'Shirt', 14500, 'lee', 1),
(9, 2, 'mobile', 35000, 'samsung', 1),
(10, 6, 'rat', 0, 'small', 1),
(11, 5, 'mango', 100, 'jaat', 1),
(12, 7, 'salt', 44000, 'TATA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'electronics'),
(2, 'fashion'),
(3, 'grocery'),
(4, 'others');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-04 06:29:08.174238', '1', 'Slider object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-01-04 06:31:41.138517', '1', 'Slider object (1)', 3, '', 7, 1),
(3, '2020-01-04 06:32:05.668150', '2', 'Slider object (2)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-01-04 06:33:17.098755', '3', 'Slider object (3)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-01-04 06:33:29.696113', '4', 'Slider object (4)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-01-05 07:24:56.868315', '5', 'Slider object (5)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-01-05 07:25:12.673877', '6', 'Slider object (6)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-01-05 07:25:26.645354', '7', 'Slider object (7)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-01-11 06:09:34.442398', '8', 'Slider object (8)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-01-11 06:38:36.221270', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 8, 1),
(11, '2020-01-11 06:38:46.632794', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 8, 1),
(12, '2020-01-11 06:38:58.739581', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 8, 1),
(13, '2020-01-11 06:39:35.478117', '4', 'Category object (4)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-01-12 06:19:21.760068', '1', 'Products object (1)', 1, '[{\"added\": {}}]', 9, 1),
(15, '2020-01-12 06:23:00.200991', '2', 'Products object (2)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2020-01-12 06:24:55.074587', '3', 'Products object (3)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2020-01-12 06:25:43.784337', '4', 'Products object (4)', 1, '[{\"added\": {}}]', 9, 1),
(18, '2020-01-12 06:27:17.221190', '5', 'Products object (5)', 1, '[{\"added\": {}}]', 9, 1),
(19, '2020-01-12 06:28:47.906910', '6', 'Products object (6)', 1, '[{\"added\": {}}]', 9, 1),
(20, '2020-01-12 06:35:33.200988', '7', 'Products object (7)', 1, '[{\"added\": {}}]', 9, 1),
(21, '2020-02-14 11:00:20.103378', '1', 'Harshit Rai', 1, '[{\"added\": {}}]', 11, 1),
(22, '2020-02-14 11:00:35.349304', '2', 'Anamika kumari', 1, '[{\"added\": {}}]', 11, 1),
(23, '2020-02-14 11:00:55.286125', '3', 'Priya', 1, '[{\"added\": {}}]', 11, 1),
(24, '2020-02-14 11:01:17.060786', '4', 'naina', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'api', 'api'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'cart', 'cart'),
(8, 'category', 'category'),
(5, 'contenttypes', 'contenttype'),
(9, 'products', 'products'),
(6, 'sessions', 'session'),
(7, 'slider', 'slider');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-04 06:20:45.802466'),
(2, 'auth', '0001_initial', '2020-01-04 06:20:47.480290'),
(3, 'admin', '0001_initial', '2020-01-04 06:20:53.850749'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-04 06:20:54.942604'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-04 06:20:55.009993'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-04 06:20:56.064734'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-04 06:20:56.704419'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-04 06:20:57.539424'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-04 06:20:57.607790'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-04 06:20:58.110745'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-04 06:20:58.148834'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-04 06:20:58.201572'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-04 06:20:58.932076'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-04 06:21:00.041513'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-04 06:21:00.905819'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-04 06:21:00.996640'),
(17, 'sessions', '0001_initial', '2020-01-04 06:21:01.918566'),
(18, 'slider', '0001_initial', '2020-01-04 06:21:03.697959'),
(19, 'category', '0001_initial', '2020-01-11 06:35:09.665469'),
(20, 'products', '0001_initial', '2020-01-12 06:13:43.055547'),
(21, 'products', '0002_products_category', '2020-01-12 06:21:36.179693'),
(22, 'products', '0003_auto_20200119_1246', '2020-01-19 07:17:17.124099'),
(23, 'cart', '0001_initial', '2020-02-01 06:17:15.265797'),
(24, 'api', '0001_initial', '2020-02-14 10:51:16.852879');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bdoth6rfp9kybbwa8xsax2e1xf2innkr', 'ZWIwOTExZDBmMWI2OTdmMGFjNDdjOGNmMmU1ZTJiNzE2MWU4ZjZlNDp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTBlMTI5ODBiYmM3ZjNhOWZkZjYyYjhmMGU4MTYyYTk1OTY0ZWRjIn0=', '2020-02-15 06:57:39.041034'),
('btf1ibyo2uebunkbkucj80tiy5e3klvj', 'YzkyYTRmNDY3NzYwMDZkYzFjYmFiMWUwNTc1MDVmZmRjNjNiNzIxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MDk4NDMwZTUwNDVmZTRmMzFjNmQzNGUxODY2Zjk4ZjBiNGVjYjJiIn0=', '2020-01-25 05:52:56.135556'),
('btxb5hi2vt1lff3hiazk4fw5mkesdr7w', 'ZWIwOTExZDBmMWI2OTdmMGFjNDdjOGNmMmU1ZTJiNzE2MWU4ZjZlNDp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTBlMTI5ODBiYmM3ZjNhOWZkZjYyYjhmMGU4MTYyYTk1OTY0ZWRjIn0=', '2020-02-22 05:58:18.919866'),
('qpv64tt6h0hc62q33qx6r88w160zfuq4', 'YzkyYTRmNDY3NzYwMDZkYzFjYmFiMWUwNTc1MDVmZmRjNjNiNzIxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MDk4NDMwZTUwNDVmZTRmMzFjNmQzNGUxODY2Zjk4ZjBiNGVjYjJiIn0=', '2020-01-18 06:25:32.683153'),
('um2d8v5fxjblwfbqpa1cdcshyp6cm2ju', 'NTMxNTk1ZTMyMjUzNDJjYjQzM2Y1OWQxYmJjNTk2NTU4YTU2MjEwZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNjQ0OGE2OWFmZmE5MjIyZGFkNzQ5NjUwNDk1M2YyMGNjY2IyNjRlIn0=', '2020-02-29 07:56:18.235721'),
('w9515kr3fky5vwcisz7k7krr7tipohcd', 'YzkyYTRmNDY3NzYwMDZkYzFjYmFiMWUwNTc1MDVmZmRjNjNiNzIxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MDk4NDMwZTUwNDVmZTRmMzFjNmQzNGUxODY2Zjk4ZjBiNGVjYjJiIn0=', '2020-01-26 06:14:54.104450');

-- --------------------------------------------------------

--
-- Table structure for table `eapi`
--

CREATE TABLE `eapi` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eapi`
--

INSERT INTO `eapi` (`id`, `name`, `email`, `mobile`, `salary`) VALUES
(1, 'Harshit Rai', 'ducat.harshit@gmail.com', 7042723350, 300000),
(2, 'Anamika kumari', 'anamika3286@gmail.com', 8888800000, 14000),
(3, 'Priya', 'pk.ray91@gmail.com', 8888801110, 14000),
(4, 'naina', 'naina@gmail.com', 7042723351, 14000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `brand`, `price`, `size`, `color`, `description`, `category`) VALUES
(2, 'mobile', 'Samsung-Galaxy-A9-Pro-2016-Specs.jpg', 'samsung', 35000, 5, 'red', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'electronics'),
(3, 'Laptop', 'acer.jpg', 'HP', 44000, 13, 'BLACK', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'electronics'),
(4, 'Shirt', 'a_ak4gSaG.jpg', 'lee', 14500, 36, 'blue', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'fashion'),
(5, 'mango', 'download_2.jpg', 'jaat', 100, 1, 'yellow', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'grocery'),
(6, 'rat', 'download_1.jpg', 'small', 0, 2, 'brown', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'animal'),
(7, 'salt', '1.png', 'TATA', 44000, 45, 'blue', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'grocery');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image`) VALUES
(5, 'slider1', '11.jpg'),
(6, 'slider 4', '22.jpg'),
(7, 'Harshit  Rai', '44.jpg'),
(8, 'new slider', 'cristiano-ronaldo-juventus-champions-league_1il1rr7ja531u10k6eqbiy7zc6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `eapi`
--
ALTER TABLE `eapi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `eapi`
--
ALTER TABLE `eapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
