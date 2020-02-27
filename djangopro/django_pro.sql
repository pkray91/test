-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 12:09 PM
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
-- Database: `django_pro`
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
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee'),
(29, 'Can add user_ profile', 8, 'add_user_profile'),
(30, 'Can change user_ profile', 8, 'change_user_profile'),
(31, 'Can delete user_ profile', 8, 'delete_user_profile'),
(32, 'Can view user_ profile', 8, 'view_user_profile'),
(33, 'Can add user_ profile', 9, 'add_user_profile'),
(34, 'Can change user_ profile', 9, 'change_user_profile'),
(35, 'Can delete user_ profile', 9, 'delete_user_profile'),
(36, 'Can view user_ profile', 9, 'view_user_profile'),
(37, 'Can add employee', 10, 'add_employee'),
(38, 'Can change employee', 10, 'change_employee'),
(39, 'Can delete employee', 10, 'delete_employee'),
(40, 'Can view employee', 10, 'view_employee');

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
(1, 'pbkdf2_sha256$150000$1eMtF9D6BFtI$UO2nzWZUyhJuQuWg999N8VURSnqtCkCWNyBsnV0vt7k=', '2019-12-27 05:08:24.755636', 1, 'live4web', '', '', 'ducat.harshit@gmail.com', 1, 1, '2019-12-27 05:05:16.129278');

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
(1, '2019-12-27 05:15:04.214175', '16', 'Employee object (16)', 1, '[{\"added\": {}}]', 10, 1),
(2, '2019-12-27 05:15:38.077717', '16', 'Employee object (16)', 2, '[]', 10, 1),
(3, '2019-12-27 05:16:12.574518', '16', 'Employee object (16)', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 10, 1);

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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'crud', 'employee'),
(7, 'firstapp', 'employee'),
(8, 'firstapp', 'user_profile'),
(9, 'profile_maker', 'user_profile'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2019-12-15 12:29:15.983825'),
(2, 'auth', '0001_initial', '2019-12-15 12:29:18.826288'),
(3, 'admin', '0001_initial', '2019-12-15 12:29:30.768991'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-12-15 12:29:33.483552'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-12-15 12:29:33.624724'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-12-15 12:29:35.929053'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-12-15 12:29:38.753443'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-12-15 12:29:40.715929'),
(9, 'auth', '0004_alter_user_username_opts', '2019-12-15 12:29:40.847930'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-12-15 12:29:42.455915'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-12-15 12:29:42.515916'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-12-15 12:29:42.707920'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-12-15 12:29:44.864494'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-12-15 12:29:47.515632'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-12-15 12:29:49.359740'),
(16, 'auth', '0011_update_proxy_permissions', '2019-12-15 12:29:49.471765'),
(17, 'firstapp', '0001_initial', '2019-12-15 12:29:49.911777'),
(18, 'firstapp', '0002_delete_employee', '2019-12-15 12:29:51.231858'),
(19, 'firstapp', '0003_employee', '2019-12-15 12:29:51.851948'),
(20, 'firstapp', '0004_auto_20191214_2123', '2019-12-15 12:29:54.939158'),
(21, 'firstapp', '0005_delete_employee', '2019-12-15 12:29:55.099167'),
(22, 'firstapp', '0006_test', '2019-12-15 12:29:55.655182'),
(23, 'firstapp', '0007_auto_20191214_2128', '2019-12-15 12:29:56.527476'),
(24, 'firstapp', '0008_delete_student', '2019-12-15 12:29:56.799485'),
(25, 'firstapp', '0009_demo', '2019-12-15 12:29:57.271495'),
(26, 'firstapp', '0010_delete_demo', '2019-12-15 12:29:57.687506'),
(27, 'firstapp', '0011_employee', '2019-12-15 12:29:58.059879'),
(28, 'formcrud', '0001_initial', '2019-12-15 12:29:58.430164'),
(29, 'formcrud', '0002_delete_demo', '2019-12-15 12:29:58.790179'),
(30, 'sessions', '0001_initial', '2019-12-15 12:29:59.050174'),
(31, 'firstapp', '0012_auto_20191215_1802', '2019-12-16 05:10:43.765042'),
(32, 'firstapp', '0013_user_profile_image', '2019-12-16 05:10:44.504345'),
(33, 'profile_maker', '0001_initial', '2019-12-16 07:27:35.764226'),
(34, 'crud', '0001_initial', '2019-12-17 05:54:22.972312'),
(35, 'crud', '0002_auto_20191218_1510', '2019-12-18 09:41:02.326711'),
(36, 'crud', '0003_employee_image', '2019-12-26 04:34:42.836756'),
(37, 'profile_maker', '0002_auto_20191226_1003', '2019-12-26 04:34:42.922335');

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
('qbvk3b4m26jpo19wftb6ijeiyaud3lcx', 'NGQ3NzAzMzI1YzZlZDViNzU0NjM2MzVkZGQ5OTQ5M2U3M2E5MTRmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMTk1MWVkOWJiMDI0YmIyOTc4ZDU3ZDMzOGMwMjg1NjU3YzhhMDhmIn0=', '2020-01-10 05:09:29.410085');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `salary` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `mobile`, `address`, `salary`, `image`) VALUES
(11, 'Harshit', 'ducat.harshit@gmail.com', 7042723350, 'nnnnnnnnnn', '300000', 'a.jpg'),
(12, 'Anamika kumari', 'pk.ray91@gmail.com', 7042723350, 'hhhhhhh', '43545', 'k.jpg'),
(15, 'Harsh', 'naina@gmail.com', 7042723350, 'jjjjjj', '43545', 'a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_user_profile`
--

CREATE TABLE `firstapp_user_profile` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `salary` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_maker_user_profile`
--

CREATE TABLE `profile_maker_user_profile` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `technologies` varchar(500) NOT NULL,
  `email` varchar(254) NOT NULL,
  `display_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_maker_user_profile`
--

INSERT INTO `profile_maker_user_profile` (`id`, `fname`, `lname`, `technologies`, `email`, `display_picture`) VALUES
(1, 'Harshit', 'Rai', 'Python', 'ducat.harshit@gmail.com', 'k.jpg'),
(2, 'Harshit', 'Rai', 'Python', 'ducat.harshit@gmail.com', '5pmproject.sql'),
(3, '123', '12', 'Python', 'ducat.harshit@gmail.com', 'k_sAuzPcr.jpg'),
(4, 'Harshit', 'Rai', 'Python', 'pk.ray91@gmail.com', 'k_yKaZTu8.jpg'),
(5, 'priya', 'Rai', 'Python', 'asaurabh93@gmail.com', 'a.jpg'),
(6, 'priya', 'kumari', 'php', 'p@gmail.com', 'images/a.jpg'),
(7, 'naina', 'Rai', 'Python', 'naina@gmail.com', 'images/a_oHb28ji.jpg');

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
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firstapp_user_profile`
--
ALTER TABLE `firstapp_user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_maker_user_profile`
--
ALTER TABLE `profile_maker_user_profile`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `firstapp_user_profile`
--
ALTER TABLE `firstapp_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_maker_user_profile`
--
ALTER TABLE `profile_maker_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
