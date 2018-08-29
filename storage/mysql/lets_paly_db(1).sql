-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2018 at 07:34 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lets_paly_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `team1_id` mediumint(9) NOT NULL,
  `team2_id` mediumint(9) NOT NULL,
  `date_time` datetime NOT NULL COMMENT 'scheduled date and time',
  `venue_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `fixture_id` int(11) NOT NULL,
  `winning_team_id` int(11) NOT NULL,
  `man_of_match` int(11) NOT NULL COMMENT 'Players Id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 2),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(18, '2016_06_01_000004_create_oauth_clients_table', 2),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(20, '2018_08_23_143854_create_tournaments_table', 2),
(22, '2018_08_23_154414_create_players_table', 2),
(24, '2018_08_23_182858_create_matches_table', 2),
(25, '2018_08_24_014253_create_fixtures_table', 2),
(26, '2018_08_23_151604_create_teams_table', 3),
(27, '2018_08_23_173630_create_players_history_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `pid` int(10) UNSIGNED NOT NULL,
  `team_id` mediumint(9) NOT NULL,
  `f_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` longtext COLLATE utf8mb4_unicode_ci,
  `jersey_no` int(11) NOT NULL,
  `dob` datetime DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`pid`, `team_id`, `f_name`, `l_name`, `role`, `jersey_no`, `dob`, `country`, `profile_pic`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alex', 'Wasington', 'Bat', 7, '1989-05-20 00:00:00', 'England', 'default1.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(2, 1, 'Alex1', 'Patel', 'Bat', 101, '1989-05-21 00:00:00', 'England', 'default2.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(3, 1, 'Alex2', 'Wasington', 'Bat', 20, '1989-05-22 00:00:00', 'England', 'default3.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(4, 1, 'Alex3', 'Wasington', 'Bat', 23, '1989-05-23 00:00:00', 'England', 'default4.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(5, 1, 'Alex4', 'Wasington', 'Bat', 25, '1989-05-24 00:00:00', 'England', 'default5.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(6, 1, 'Alex5', 'Wasington', 'Wk', 36, '1989-05-25 00:00:00', 'England', 'default6.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(7, 1, 'Alex6', 'Wasington', 'All', 45, '1989-05-26 00:00:00', 'England', 'default7.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(8, 1, 'Alex7', 'Wasington', 'All', 49, '1989-05-27 00:00:00', 'England', 'default8.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(9, 1, 'Alex8', 'Wasington', 'Bow', 99, '1989-05-28 00:00:00', 'England', 'default9.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(10, 1, 'Alex9', 'Wasington', 'Bow', 105, '1989-05-29 00:00:00', 'England', 'default10.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(11, 1, 'Alex10', 'Wasington', 'Bow', 9, '1989-05-30 00:00:00', 'England', 'default11.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(12, 2, 'Methew1', 'Jonson', 'Bat', 89, '1989-05-31 00:00:00', 'Australia', 'default12.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(13, 2, 'Methew2', 'Jonson', 'Bat', 91, '1989-06-01 00:00:00', 'Australia', 'default13.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(14, 2, 'Methew3', 'Jonson', 'All', 201, '1989-06-02 00:00:00', 'Australia', 'default14.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(15, 2, 'Methew4', 'Jonson', 'Bat', 32, '1989-06-03 00:00:00', 'Australia', 'default15.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(16, 2, 'Methew5', 'Jonson', 'All', 33, '1989-06-04 00:00:00', 'Australia', 'default16.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(17, 2, 'Methew6', 'Jonson', 'All', 69, '1989-06-05 00:00:00', 'Australia', 'default17.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(18, 2, 'Methew7', 'Jonson', 'Wk', 89, '1989-06-06 00:00:00', 'Australia', 'default18.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(19, 2, 'Methew8', 'Jonson', 'Bow', 41, '1989-06-07 00:00:00', 'Australia', 'default19.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(20, 2, 'Methew9', 'Jonson', 'Bow', 96, '1989-06-08 00:00:00', 'Australia', 'default20.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(21, 2, 'Methew10', 'Jonson', 'Bow', 77, '1989-06-09 00:00:00', 'Australia', 'default21.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(22, 2, 'Methew11', 'Jonson', 'Bow', 88, '1989-06-10 00:00:00', 'Australia', 'default22.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(23, 3, 'Sri', 'Kumar', 'Bat', 270, '1989-06-11 00:00:00', 'India', 'default23.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(24, 3, 'Suresh', 'Raina', 'Bat', 201, '1989-06-12 00:00:00', 'India', 'default24.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(25, 3, 'Suresh', 'Ganguli', 'Bat', 217, '1989-06-13 00:00:00', 'India', 'default25.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(26, 3, 'Patel', 'David', 'Wk', 235, '1989-06-14 00:00:00', 'India', 'default26.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(27, 3, 'Singh', 'Ritesh', 'All', 219, '1989-06-15 00:00:00', 'India', 'default27.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(28, 3, 'Singh', 'RP', 'All', 289, '1989-06-16 00:00:00', 'India', 'default28.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(29, 3, 'Kumar', 'PK', 'Bow', 284, '1989-06-17 00:00:00', 'India', 'default29.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(30, 3, 'Kumar', 'Rohit', 'Bow', 269, '1989-06-18 00:00:00', 'India', 'default30.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(31, 3, 'Kumar', 'Mehul', 'Bow', 271, '1989-06-19 00:00:00', 'India', 'default31.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(32, 3, 'Kumar', 'Sri', 'Bow', 261, '1989-06-20 00:00:00', 'India', 'default32.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(33, 3, 'Kumar', 'Bhuwneshwar', 'Bow', 284, '1989-06-21 00:00:00', 'India', 'default33.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(34, 4, 'Snagakara', 'Kumar', 'Bat', 154, '1989-06-22 00:00:00', 'Sri Lanks', 'default34.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(35, 4, 'Tony', 'Opatha', 'Bat', 136, '1989-06-23 00:00:00', 'Sri Lanks', 'default35.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(36, 4, 'Mevan', 'Pieris', 'Wk', 171, '1989-06-24 00:00:00', 'Sri Lanks', 'default36.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(37, 4, 'Anura', 'Ranasinghe', 'All', 191, '1989-06-25 00:00:00', 'Sri Lanks', 'default37.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(38, 4, 'Anura', 'Tennekoon', 'All', 182, '1989-06-26 00:00:00', 'Sri Lanks', 'default38.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(39, 4, 'Michael', 'Tissera', 'Bat', 185, '1989-06-27 00:00:00', 'Sri Lanks', 'default39.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(40, 4, 'Bandula', 'Warnapura', 'Bow', 160, '1989-06-28 00:00:00', 'Sri Lanks', 'default40.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(41, 4, 'Sunil', 'Wettimuny', 'Bow', 143, '1989-06-29 00:00:00', 'Sri Lanks', 'default41.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(42, 4, 'Kiran', 'Sai', 'Bow', 134, '1989-06-30 00:00:00', 'Sri Lanks', 'default42.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(43, 4, 'Nivas', 'Sri', 'Bow', 149, '1989-07-01 00:00:00', 'Sri Lanks', 'default43.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00'),
(44, 4, 'Murlidharan', 'Muthaiya', 'Bow', 186, '1989-07-02 00:00:00', 'Sri Lanks', 'default44.png', 1, '2018-08-24 18:30:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `players_history`
--

CREATE TABLE `players_history` (
  `phid` int(10) UNSIGNED NOT NULL,
  `pid` bigint(20) NOT NULL,
  `match_type` enum('ODI','TEST','T20') COLLATE utf8mb4_unicode_ci NOT NULL,
  `matches` int(11) NOT NULL COMMENT 'Total no of matches of each format',
  `bat_inn` int(11) NOT NULL COMMENT 'Batting Innings',
  `not_out` int(11) NOT NULL,
  `bat_runs` int(11) NOT NULL COMMENT 'Total runs of selected match_type',
  `highest_scores` int(11) NOT NULL,
  `high_score_against` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Highest score against which team',
  `hundred` int(11) NOT NULL,
  `two_hundred` int(11) NOT NULL,
  `fifties` int(11) NOT NULL,
  `fours` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `bat_average` double(8,2) NOT NULL,
  `bat_strike_rate` double(8,2) NOT NULL COMMENT 'LEFT SIDE COLUMN FOR BATTING & RIGHT SIDE FOR BOWLING RECORDS',
  `bow_inn` int(11) NOT NULL COMMENT 'Batting Innings',
  `bowling_balls` int(11) NOT NULL COMMENT 'Total no of bolls bowlled',
  `bow_runs` int(11) NOT NULL COMMENT 'Runs given during bowling.',
  `wikts` int(11) NOT NULL COMMENT 'wikets taken during bowling',
  `best_bowling` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maiden` int(11) NOT NULL,
  `bow_average` double(8,2) NOT NULL,
  `bow_strike_rate` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` mediumint(8) UNSIGNED NOT NULL,
  `tean_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_state` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_rank` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `team_logo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `tean_name`, `team_code`, `country`, `club_state`, `team_rank`, `is_active`, `team_logo`, `created_at`, `updated_at`) VALUES
(1, 'Guyana Amazon Warriors', 'GAW', 'South Africa', 'A', 2, 1, '92_.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Trinbago Knight Riders', 'TKR', 'South Africa', 'B', 1, 1, '58_.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Jamaica Tallawahs', 'JT', 'South Africa', 'C', 4, 1, '90_.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'St Kitts and Nevis Patriots', 'SKNP', 'South Africa', 'D', 3, 1, '349_.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `league_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `champians` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tournaments`
--

INSERT INTO `tournaments` (`id`, `league_name`, `champians`, `is_active`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Caribbean Premier League', '', 1, '2018-09-01 15:00:00', '2018-10-31 20:00:00', '2018-08-25 18:30:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `players_history`
--
ALTER TABLE `players_history`
  ADD PRIMARY KEY (`phid`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fixtures`
--
ALTER TABLE `fixtures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `players_history`
--
ALTER TABLE `players_history`
  MODIFY `phid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
