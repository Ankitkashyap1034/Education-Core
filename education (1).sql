-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 07:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `cp_categories`
--

CREATE TABLE `cp_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_users` int(11) DEFAULT NULL,
  `categories_show_on_header` int(11) DEFAULT 0,
  `categories_status` int(11) DEFAULT NULL,
  `categories_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_categories`
--

INSERT INTO `cp_categories` (`categories_id`, `categories_name`, `categories_slug`, `categories_users`, `categories_show_on_header`, `categories_status`, `categories_created_on`) VALUES
(1, 'Academic Tutoring', 'academic-tutoring-1', 1, 0, 1, '2023-12-26 12:40:55'),
(2, 'Accounting', 'accounting-1', 1, 0, 1, '2023-12-26 12:40:55'),
(3, 'Acoustic Guitar', 'acoustic-guitar-1', 1, 0, 1, '2023-12-26 12:40:55'),
(4, 'Afterschool pick up and Baby sitting', 'afterschool-pick-up-and-baby-sitting-1', 1, 0, 1, '2023-12-26 12:40:55'),
(8, 'Algebra', 'algebra-1', 1, 0, 1, '2024-01-08 11:55:49'),
(9, 'Algorithms', 'algorithms-1', 1, 0, 1, '2024-04-10 12:09:19'),
(10, 'Anatomy', 'anatomy-1', 1, 0, 1, '2024-04-10 12:09:25'),
(11, 'Arithmetic', 'arithmetic-1', 1, 0, 1, '2024-04-10 12:09:29'),
(13, 'Basic Computer', 'basic-computer-1', 1, 0, 1, '2024-04-30 11:12:12'),
(14, 'Biology', 'biology-1', 1, 0, 1, '2024-04-30 11:12:37'),
(15, 'Biotechnology', 'biotechnology-1', 1, 0, 1, '2024-04-30 11:12:48'),
(16, 'Business Law', 'business-law-1', 1, 0, 1, '2024-04-30 11:14:36'),
(17, 'Business Studies', 'business-studies-1', 1, 0, 1, '2024-04-30 11:14:45'),
(18, 'C++', 'c-1', 1, 0, 1, '2024-04-30 11:14:52'),
(19, 'Career Coaching', 'career-coaching-1', 1, 0, 1, '2024-04-30 11:15:03'),
(20, 'Cellular Biology', 'cellular-biology-1', 1, 0, 1, '2024-04-30 11:15:15'),
(21, 'Chemistry', 'chemistry-1', 1, 0, 1, '2024-04-30 11:15:23'),
(22, 'Choreography', 'choreography-1', 1, 0, 1, '2024-04-30 11:15:39'),
(23, 'Civics', 'civics-1', 1, 0, 1, '2024-04-30 11:15:46'),
(24, 'Civil Law', 'civil-law-1', 1, 0, 1, '2024-04-30 11:15:55'),
(25, 'Classics', 'classics-1', 1, 0, 1, '2024-04-30 11:16:02'),
(26, 'Commerce', 'commerce-1', 1, 0, 1, '2024-04-30 11:16:08'),
(27, 'Computer Programming', 'computer-programming-1', 1, 0, 1, '2024-04-30 11:16:21'),
(28, 'Computing', 'computing-1', 1, 0, 1, '2024-04-30 11:16:28'),
(29, 'Cooking', 'cooking-1', 1, 0, 1, '2024-04-30 11:16:36'),
(30, 'Creative Writing', 'creative-writing-1', 1, 0, 1, '2024-04-30 11:16:47'),
(31, 'Cricket', 'cricket-1', 1, 0, 1, '2024-04-30 11:25:56'),
(32, ' CSS', 'css-1', 1, 0, 1, '2024-04-30 11:26:09'),
(33, 'Current affairs', 'current-affairs-1', 1, 0, 1, '2024-04-30 11:26:15'),
(34, 'CV writing', 'cv-writing-1', 1, 0, 1, '2024-04-30 11:26:25'),
(35, 'Dance', 'dance-1', 1, 1, 1, '2024-04-30 11:26:37'),
(36, 'Databases', 'databases-1', 1, 0, 1, '2024-04-30 11:26:44'),
(37, 'Dentistry', 'dentistry-1', 1, 0, 1, '2024-04-30 11:26:49'),
(38, 'Design', 'design-1', 1, 0, 1, '2024-04-30 11:26:58'),
(39, 'Dietetics', 'dietetics-1', 1, 0, 1, '2024-04-30 11:27:04'),
(40, 'Digital Marketing', 'digital-marketing-1', 1, 0, 1, '2024-04-30 11:27:10'),
(41, 'Drawing', 'drawing-1', 1, 0, 1, '2024-04-30 11:27:18'),
(42, 'Drum', 'drum-1', 1, 0, 1, '2024-04-30 11:27:25'),
(43, 'Economics', 'economics-1', 1, 0, 1, '2024-04-30 11:27:29'),
(44, 'Electric Guitar', 'electric-guitar-1', 1, 0, 1, '2024-04-30 11:27:35'),
(45, 'Electricity', 'electricity-1', 1, 0, 1, '2024-04-30 11:27:41'),
(46, 'Electrochemistry', 'electrochemistry-1', 1, 0, 1, '2024-04-30 11:28:03'),
(47, 'Electronics', 'electronics-1', 1, 0, 1, '2024-04-30 11:28:09'),
(48, 'Engineering', 'engineering-1', 1, 0, 1, '2024-04-30 11:28:14'),
(49, 'English', 'english-1', 1, 0, 1, '2024-04-30 11:28:22'),
(50, 'English accent reduction', 'english-accent-reduction-1', 1, 0, 1, '2024-04-30 11:28:28'),
(51, 'English listening', 'english-listening-1', 1, 0, 1, '2024-04-30 11:28:33'),
(52, 'English literature', 'english-literature-1', 1, 0, 1, '2024-04-30 11:28:40'),
(53, 'English Reading', 'english-reading-1', 1, 0, 1, '2024-04-30 11:28:45'),
(54, 'English speaking', 'english-speaking-1', 1, 0, 1, '2024-04-30 11:28:49'),
(55, 'English vocabulary', 'english-vocabulary-1', 1, 0, 1, '2024-04-30 11:29:04'),
(56, 'ESOL', 'esol-1', 1, 0, 1, '2024-04-30 11:29:11'),
(57, 'Finance', 'finance-1', 1, 0, 1, '2024-04-30 11:29:16'),
(58, 'Financial management', 'financial-management-1', 1, 0, 1, '2024-04-30 11:29:27'),
(59, 'Fitness', 'fitness-1', 1, 0, 1, '2024-04-30 11:29:33'),
(60, 'Flute', 'flute-1', 1, 0, 1, '2024-04-30 11:29:39'),
(61, 'Football', 'football-1', 1, 0, 1, '2024-04-30 11:40:48'),
(62, 'French', 'french-1', 1, 0, 1, '2024-04-30 11:40:53'),
(63, 'French listening', 'french-listening-1', 1, 0, 1, '2024-04-30 11:40:59'),
(64, 'French literature', 'french-literature-1', 1, 0, 1, '2024-04-30 11:41:05'),
(65, 'French reading', 'french-reading-1', 1, 0, 1, '2024-04-30 11:52:10'),
(66, 'French speaking', 'french-speaking-1', 1, 0, 1, '2024-04-30 11:52:20'),
(67, 'French Vocabulary', 'french-vocabulary-1', 1, 0, 1, '2024-04-30 11:52:28'),
(68, 'French writing', 'french-writing-1', 1, 0, 1, '2024-04-30 11:52:33'),
(69, 'General knowledge', 'general-knowledge-1', 1, 0, 1, '2024-04-30 11:52:39'),
(70, 'Genetics', 'genetics-1', 1, 0, 1, '2024-04-30 11:52:44'),
(71, 'Geography', 'geography-1', 1, 0, 1, '2024-04-30 11:52:49'),
(72, 'Geology', 'geology-1', 1, 0, 1, '2024-04-30 11:52:54'),
(73, 'Geometry', 'geometry-1', 1, 0, 1, '2024-04-30 11:52:59'),
(74, 'German', 'german-1', 1, 0, 1, '2024-04-30 11:53:04'),
(75, 'Grammar', 'grammar-1', 1, 0, 1, '2024-04-30 11:53:08'),
(76, 'Graphic design', 'graphic-design-1', 1, 0, 1, '2024-04-30 11:53:15'),
(77, 'Guitar', 'guitar-1', 1, 1, 1, '2024-04-30 11:53:18'),
(78, 'Gymnastics', 'gymnastics-1', 1, 0, 1, '2024-04-30 11:53:23'),
(79, 'Healthy cooking', 'healthy-cooking-1', 1, 0, 1, '2024-04-30 11:53:27'),
(80, 'Hindi', 'hindi-1', 1, 1, 1, '2024-04-30 11:53:31'),
(81, 'Hip-Hop dance', 'hip-hop-dance-1', 1, 0, 1, '2024-04-30 11:53:37'),
(82, 'History', 'history-1', 1, 0, 1, '2024-04-30 11:53:43'),
(83, 'Homework help', 'homework-help-1', 1, 0, 1, '2024-04-30 11:53:47'),
(84, 'HTML', 'html-1', 1, 0, 1, '2024-04-30 11:53:52'),
(85, 'Human Resource Management', 'human-resource-management-1', 1, 0, 1, '2024-04-30 11:53:59'),
(86, 'Illustration', 'illustration-1', 1, 0, 1, '2024-04-30 11:54:04'),
(87, 'Improvisational theatre', 'improvisational-theatre-1', 1, 0, 1, '2024-04-30 11:54:09'),
(88, 'Industrial design', 'industrial-design-1', 1, 0, 1, '2024-04-30 11:54:15'),
(89, 'Information Technology', 'information-technology-1', 1, 0, 1, '2024-04-30 11:54:20'),
(90, 'International law', 'international-law-1', 1, 0, 1, '2024-04-30 11:54:25'),
(91, 'International trade', 'international-trade-1', 1, 0, 1, '2024-04-30 11:54:30'),
(92, 'Italian', 'italian-1', 1, 0, 1, '2024-04-30 11:54:36'),
(93, 'Japanese', 'japanese-1', 1, 0, 1, '2024-04-30 11:54:40'),
(94, 'JavaScript', 'javascript-1', 1, 0, 1, '2024-04-30 11:54:59'),
(95, 'Karate', 'karate-1', 1, 0, 1, '2024-04-30 11:55:10'),
(96, 'Korean', 'korean-1', 1, 0, 1, '2024-04-30 11:55:15'),
(97, 'Labor law', 'labor-law-1', 1, 0, 1, '2024-04-30 11:55:19'),
(98, 'Leadership', 'leadership-1', 1, 0, 1, '2024-04-30 11:55:27'),
(99, 'Learning to eat well', 'learning-to-eat-well-1', 1, 0, 1, '2024-04-30 11:55:32'),
(100, 'Life coaching', 'life-coaching-1', 1, 0, 1, '2024-04-30 11:55:38'),
(101, 'Linear Algebra', 'linear-algebra-1', 1, 0, 1, '2024-04-30 11:55:45'),
(102, 'Literacy', 'literacy-1', 1, 0, 1, '2024-04-30 11:55:51'),
(103, 'Logic', 'logic-1', 1, 0, 1, '2024-04-30 11:55:58'),
(104, 'Macroeconomics', 'macroeconomics-1', 1, 0, 1, '2024-04-30 11:56:03'),
(105, 'Make-up', 'make-up-1', 1, 0, 1, '2024-04-30 11:56:07'),
(106, 'Management accounting', 'management-accounting-1', 1, 0, 1, '2024-04-30 11:56:14'),
(107, 'Management and Organization', 'management-and-organization-1', 1, 0, 1, '2024-04-30 11:56:18'),
(108, 'Marathi', 'marathi-1', 1, 0, 1, '2024-04-30 11:56:22'),
(109, 'Marketing', 'marketing-1', 1, 0, 1, '2024-04-30 11:59:02'),
(110, 'Martial arts', 'martial-arts-1', 1, 0, 1, '2024-04-30 12:08:30'),
(111, 'Massage', 'massage-1', 1, 0, 1, '2024-04-30 12:08:34'),
(112, 'Maths', 'maths-1', 1, 0, 1, '2024-04-30 12:08:40'),
(113, 'Mechanical engineering', 'mechanical-engineering-1', 1, 0, 1, '2024-04-30 12:08:45'),
(114, 'Medicine', 'medicine-1', 1, 0, 1, '2024-04-30 12:09:07'),
(115, 'Memorisation', 'memorisation-1', 1, 0, 1, '2024-04-30 12:09:12'),
(116, 'Methodology', 'methodology-1', 1, 0, 1, '2024-04-30 12:09:30'),
(117, 'Microbiology', 'microbiology-1', 1, 0, 1, '2024-04-30 12:09:34'),
(118, 'Microeconomics', 'microeconomics-1', 1, 0, 1, '2024-04-30 12:09:40'),
(119, 'Microsoft Excel', 'microsoft-excel-1', 1, 0, 1, '2024-04-30 12:09:45'),
(120, 'Microsoft PowerPoint', 'microsoft-powerpoint-1', 1, 0, 1, '2024-04-30 12:11:46'),
(121, 'Microsoft Word', 'microsoft-word-1', 1, 0, 1, '2024-04-30 12:11:51'),
(122, 'Modern Literature', 'modern-literature-1', 1, 0, 1, '2024-04-30 12:11:56'),
(123, 'Molecular biology', 'molecular-biology-1', 1, 0, 1, '2024-04-30 12:12:01'),
(124, 'Muscle strengthening', 'muscle-strengthening-1', 1, 0, 1, '2024-04-30 12:12:07'),
(125, 'Music reading', 'music-reading-1', 1, 0, 1, '2024-04-30 12:12:14'),
(126, 'Musical keyboard', 'musical-keyboard-1', 1, 0, 1, '2024-04-30 12:12:24'),
(127, 'Mythology', 'mythology-1', 1, 0, 1, '2024-04-30 12:12:30'),
(128, 'Network', 'network-1', 1, 0, 1, '2024-04-30 12:12:35'),
(129, 'Nuclear Physics', 'nuclear-physics-1', 1, 0, 1, '2024-04-30 12:12:39'),
(130, 'Nursing', 'nursing-1', 1, 0, 1, '2024-04-30 12:12:44'),
(131, 'Nutrition', 'nutrition-1', 1, 0, 1, '2024-04-30 12:12:48'),
(132, 'Oral expression', 'oral-expression-1', 1, 0, 1, '2024-04-30 12:12:53'),
(133, 'Organic chemistry', 'organic-chemistry-1', 1, 0, 1, '2024-04-30 12:12:59'),
(134, 'Other languages', 'other-languages-1', 1, 0, 1, '2024-04-30 12:13:07'),
(135, 'Other sciences', 'other-sciences-1', 1, 0, 1, '2024-04-30 12:13:13'),
(136, 'Painting', 'painting-1', 1, 0, 1, '2024-04-30 12:13:17'),
(137, 'Percussion', 'percussion-1', 1, 0, 1, '2024-04-30 12:13:26'),
(138, 'Personal coaching', 'personal-coaching-1', 1, 0, 1, '2024-04-30 12:13:32'),
(139, 'Personal development', 'personal-development-1', 1, 0, 1, '2024-04-30 12:13:37'),
(140, 'Personal shopping', 'personal-shopping-1', 1, 0, 1, '2024-04-30 12:13:46'),
(141, 'Philosophy', 'philosophy-1', 1, 0, 1, '2024-04-30 12:13:49'),
(142, 'Phonetics', 'phonetics-1', 1, 0, 1, '2024-04-30 12:13:56'),
(143, 'Photography', 'photography-1', 1, 0, 1, '2024-04-30 12:14:02'),
(144, 'Photoshop', 'photoshop-1', 1, 0, 1, '2024-04-30 12:14:07'),
(145, 'PHP', 'php-1', 1, 0, 1, '2024-04-30 12:14:13'),
(146, 'Physics', 'physics-1', 1, 0, 1, '2024-04-30 12:14:18'),
(147, 'Physiology', 'physiology-1', 1, 0, 1, '2024-04-30 12:14:22'),
(148, 'Piano', 'piano-1', 1, 1, 1, '2024-04-30 12:14:31'),
(149, 'Poetry', 'poetry-1', 1, 0, 1, '2024-04-30 12:14:36'),
(150, 'Political Sciences', 'political-sciences-1', 1, 0, 1, '2024-04-30 12:14:41'),
(151, 'Positive thinking', 'positive-thinking-1', 1, 0, 1, '2024-04-30 12:30:14'),
(152, 'Professional coaching', 'professional-coaching-1', 1, 0, 1, '2024-04-30 12:30:19'),
(153, 'Professional transition', 'professional-transition-1', 1, 0, 1, '2024-04-30 12:30:23'),
(154, 'Programming languages', 'programming-languages-1', 1, 0, 1, '2024-04-30 12:30:29'),
(155, 'Psychology', 'psychology-1', 1, 0, 1, '2024-04-30 12:30:33'),
(156, 'Public law', 'public-law-1', 1, 0, 1, '2024-04-30 12:30:38'),
(157, 'Python', 'python-1', 1, 0, 1, '2024-04-30 12:30:43'),
(158, 'Reading', 'reading-1', 1, 0, 1, '2024-04-30 12:30:48'),
(159, 'Relaxation', 'relaxation-1', 1, 0, 1, '2024-04-30 12:30:52'),
(160, 'Running', 'running-1', 1, 0, 1, '2024-04-30 12:30:59'),
(161, 'Russian', 'russian-1', 1, 0, 1, '2024-04-30 12:31:03'),
(162, 'Sanskrit', 'sanskrit-1', 1, 0, 1, '2024-04-30 12:31:08'),
(163, 'School coaching', 'school-coaching-1', 1, 0, 1, '2024-04-30 12:31:14'),
(164, 'Sculpture', 'sculpture-1', 1, 0, 1, '2024-04-30 12:31:19'),
(165, 'Singing', 'singing-1', 1, 0, 1, '2024-04-30 12:31:22'),
(166, 'Social Sciences', 'social-sciences-1', 1, 0, 1, '2024-04-30 12:31:27'),
(167, 'Sociology', 'sociology-1', 1, 0, 1, '2024-04-30 12:31:32'),
(168, 'Spanish', 'spanish-1', 1, 0, 1, '2024-04-30 12:31:36'),
(169, 'SQL', 'sql-1', 1, 0, 1, '2024-04-30 12:31:42'),
(170, 'Statistics', 'statistics-1', 1, 0, 1, '2024-04-30 12:31:47'),
(171, 'Stock Market Analysis', 'stock-market-analysis-1', 1, 0, 1, '2024-04-30 12:31:51'),
(172, 'Swimming', 'swimming-1', 1, 0, 1, '2024-04-30 12:31:56'),
(173, 'Tamil', 'tamil-1', 1, 0, 1, '2024-04-30 12:32:00'),
(174, 'Tax law', 'tax-law-1', 1, 0, 1, '2024-04-30 12:32:04'),
(175, 'Tax system', 'tax-system-1', 1, 0, 1, '2024-04-30 12:32:11'),
(176, 'Technology', 'technology-1', 1, 0, 1, '2024-04-30 12:32:15'),
(177, 'Test prep', 'test-prep-1', 1, 0, 1, '2024-04-30 12:32:19'),
(178, 'Thermodynamics', 'thermodynamics-1', 1, 0, 1, '2024-04-30 12:32:25'),
(179, 'Trigonometry', 'trigonometry-1', 1, 0, 1, '2024-04-30 12:32:32'),
(180, 'Ukulele', 'ukulele-1', 1, 0, 1, '2024-04-30 12:32:36'),
(181, 'Vegetarian cooking', 'vegetarian-cooking-1', 1, 0, 1, '2024-04-30 12:32:42'),
(182, 'Video editing', 'video-editing-1', 1, 0, 1, '2024-04-30 12:32:46'),
(183, 'Viola', 'viola-1', 1, 0, 1, '2024-04-30 12:32:51'),
(184, 'Watercolor painting', 'watercolor-painting-1', 1, 0, 1, '2024-04-30 12:32:54'),
(185, 'Web development', 'web-development-1', 1, 0, 1, '2024-04-30 12:32:58'),
(186, 'Writing', 'writing-1', 1, 0, 1, '2024-04-30 12:33:02'),
(187, 'Yoga', 'yoga-1', 1, 0, 1, '2024-04-30 12:33:07'),
(188, 'Yoga flow', 'yoga-flow-1', 1, 0, 1, '2024-04-30 12:33:11'),
(189, 'Yoga Nidra', 'yoga-nidra-1', 1, 0, 1, '2024-04-30 12:33:15'),
(190, 'Zoology', 'zoology-1', 1, 0, 1, '2024-04-30 12:33:21'),
(191, 'Zumba', 'zumba-1', 1, 0, 1, '2024-04-30 12:33:24'),
(192, 'Assamese', 'assamese-1', 1, 0, 1, '2024-04-30 12:33:46'),
(193, 'Arabic', 'arabic-1', 1, 0, 1, '2024-04-30 12:34:05'),
(194, 'Urdu', 'urdu-1', 1, 0, 1, '2024-04-30 12:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `cp_countries`
--

CREATE TABLE `cp_countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countries_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countries_users` int(11) DEFAULT NULL,
  `countries_status` int(11) DEFAULT NULL,
  `countries_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_countries`
--

INSERT INTO `cp_countries` (`countries_id`, `countries_name`, `countries_slug`, `countries_users`, `countries_status`, `countries_created_on`) VALUES
(1, 'India', 'india-1', 1, 1, '2024-04-22 06:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `cp_locations`
--

CREATE TABLE `cp_locations` (
  `locations_id` int(11) NOT NULL,
  `locations_country_id` int(11) DEFAULT NULL,
  `locations_name` varchar(255) DEFAULT NULL,
  `locations_slug` varchar(255) DEFAULT NULL,
  `locations_users` int(11) DEFAULT NULL,
  `locations_status` int(11) DEFAULT NULL,
  `locations_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_locations`
--

INSERT INTO `cp_locations` (`locations_id`, `locations_country_id`, `locations_name`, `locations_slug`, `locations_users`, `locations_status`, `locations_created_on`) VALUES
(1, 1, 'Mumbai', 'mumbai-1', 1, 1, '2024-04-22 06:58:51'),
(2, 1, 'New Delhi', 'new-delhi-1', 1, 1, '2024-04-22 06:59:03'),
(3, 1, 'Bengaluru', 'bengaluru-1', 1, 1, '2024-04-22 06:59:09'),
(5, 1, 'Kolkata', 'kolkata-1', 1, 1, '2024-04-22 06:59:27'),
(6, 1, 'Chennai', 'chennai-1', 1, 1, '2024-04-22 06:59:32'),
(7, 1, 'Uttarakhand', 'uttarakhand-1', 1, 1, '2024-04-22 06:59:38'),
(8, 1, 'Guwahati', 'guwahati-1', 1, 1, '2024-04-23 10:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `cp_location_categories`
--

CREATE TABLE `cp_location_categories` (
  `location_categories_id` int(11) NOT NULL,
  `location_categories_location_id` int(11) DEFAULT NULL,
  `location_categories_category_id` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_categories_users` int(11) DEFAULT NULL,
  `location_categories_status` int(11) DEFAULT NULL,
  `location_categories_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_location_categories`
--

INSERT INTO `cp_location_categories` (`location_categories_id`, `location_categories_location_id`, `location_categories_category_id`, `location_categories_users`, `location_categories_status`, `location_categories_created_on`) VALUES
(1, 7, '11,10,9,8,4', 1, 1, '2024-04-22 09:14:14'),
(2, 6, '11,1', 1, 1, '2024-04-22 09:14:28'),
(3, 5, '11,9,4,3', 1, 1, '2024-04-22 09:14:35'),
(4, 3, '10,9,8', 1, 1, '2024-04-22 09:14:42'),
(5, 2, '9,2,1', 1, 1, '2024-04-22 09:14:50'),
(6, 1, '10,9,3,2,1', 1, 1, '2024-04-22 09:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `cp_menus`
--

CREATE TABLE `cp_menus` (
  `menus_id` int(11) NOT NULL,
  `menus_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menus_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menus_route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menus_icons` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menus_parent` int(11) DEFAULT NULL,
  `menus_order` int(11) DEFAULT NULL,
  `menus_users` int(11) DEFAULT NULL,
  `menus_role_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menus_status` int(11) DEFAULT NULL,
  `menus_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_menus`
--

INSERT INTO `cp_menus` (`menus_id`, `menus_name`, `menus_slug`, `menus_route`, `menus_icons`, `menus_parent`, `menus_order`, `menus_users`, `menus_role_permission`, `menus_status`, `menus_created_on`) VALUES
(1, 'Dashboard', 'dashboard-1', 'admin/dashboard', 'ph-gauge', 0, 1, 1, '121,2', 1, '2024-01-04 15:40:26'),
(2, 'Settings', 'settings-2', 'admin/settings', 'ph-wrench', 0, 8, 1, '121,2', 1, '2024-01-04 15:40:26'),
(3, 'Manage Store', 'manage-store', 'admin/settings/store', NULL, 2, 1, 1, NULL, 0, '2024-01-04 15:40:26'),
(4, 'Manage Mail', 'manage-mail', 'admin/settings/mail', NULL, 2, 1, 1, NULL, 0, '2024-01-04 15:40:26'),
(5, 'Manage Profile', 'manage-profile', 'admin/settings/profile', NULL, 2, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(6, 'Manage Password', 'manage-password', 'admin/settings/password', NULL, 2, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(7, 'Products', 'products', 'admin/products', 'ph-storefront', 0, 3, 1, '121', 0, '2024-01-04 15:40:26'),
(8, 'Add Products', 'add-products', 'admin/products/add', NULL, 7, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(9, 'Manage Products', 'manage-products', 'admin/products/list', NULL, 7, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(10, 'Category', 'category', 'admin/category', 'ph-list-dashes-thin', 0, 2, 1, '121', 1, '2024-01-04 15:40:26'),
(11, 'Add Category', 'add-category', 'admin/category/add', NULL, 10, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(12, 'Add Sub Category', 'add-sub-category', 'admin/sub-category/add', NULL, 10, 1, 1, NULL, 0, '2024-01-04 15:40:26'),
(13, 'Manage Backup & Restore', 'manage-backup', 'admin/settings/backup', NULL, 2, 1, 1, NULL, 0, '2024-01-04 15:40:26'),
(14, 'Users', 'users', 'admin/users', 'ph-user', 0, 4, 1, '121', 1, '2024-01-04 15:40:26'),
(15, 'Add Users', 'add-users', 'admin/users/add', NULL, 14, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(16, 'Manage Users', 'manage-users', 'admin/users/list', NULL, 14, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(17, 'Manage Menu', 'manage-menu', 'admin/settings/menu', NULL, 2, 1, 1, NULL, 0, '2024-01-04 15:40:26'),
(18, 'Manage Sub Menu', 'manage-sub-menu', 'admin/settings/sub-menu', NULL, 2, 1, 1, NULL, 0, '2024-01-04 15:40:26'),
(19, 'Testimonials', 'testimonials-2', 'admin/testimonials', 'ph-list-dashes-thin', 0, 5, 1, '121', 1, '2024-04-15 09:16:19'),
(20, 'Add Testimonials', 'add-testimonials', 'admin/testimonials/add', NULL, 19, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(21, 'Manage Testimonials', 'manage-testimonials', 'admin/testimonials/list', NULL, 19, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(22, 'Locations', 'locations', 'admin/locations', 'ph-list-dashes-thin', 0, 6, 1, '121', 1, '2024-04-22 06:27:28'),
(23, 'Manage Country', 'manage-country', 'admin/locations/country/list', NULL, 22, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(24, 'Manage Location', 'manage-locations', 'admin/locations/locations/list', NULL, 22, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(25, 'Manage Location Category', 'manage-locations-category', 'admin/locations/category/list', NULL, 22, 1, 1, NULL, 1, '2024-01-04 15:40:26'),
(26, 'Subscriptions', 'subscriptions-2', 'admin/subscriptions', 'ph-list-dashes-thin', 0, 7, 1, '121', 1, '2024-01-04 15:40:26'),
(27, 'Manage Subscriptions', 'manage-subscriptions', 'admin/subscriptions/list', NULL, 26, 1, 1, NULL, 1, '2024-01-04 15:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `cp_products`
--

CREATE TABLE `cp_products` (
  `products_id` int(11) NOT NULL,
  `products_category_id` int(11) DEFAULT NULL,
  `products_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_slug` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_subscriptions`
--

CREATE TABLE `cp_subscriptions` (
  `subscriptions_id` int(11) NOT NULL,
  `subscriptions_name` varchar(255) DEFAULT NULL,
  `subscriptions_amount` double DEFAULT NULL,
  `subscriptions_users` int(11) DEFAULT NULL,
  `subscriptions_status` int(11) DEFAULT NULL,
  `subscriptions_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_subscriptions`
--

INSERT INTO `cp_subscriptions` (`subscriptions_id`, `subscriptions_name`, `subscriptions_amount`, `subscriptions_users`, `subscriptions_status`, `subscriptions_created_on`) VALUES
(1, 'basic', 3000, 1, 1, '2024-05-02 10:39:12'),
(2, 'standard', 5000, 1, 1, '2024-05-02 10:39:44'),
(3, 'advance', 7000, 1, 1, '2024-05-02 10:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `cp_subscriptions_meta`
--

CREATE TABLE `cp_subscriptions_meta` (
  `subscriptions_meta_id` int(11) NOT NULL,
  `subscriptions_meta_subscription_id` int(11) DEFAULT NULL,
  `subscriptions_meta_value` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_subscriptions_meta`
--

INSERT INTO `cp_subscriptions_meta` (`subscriptions_meta_id`, `subscriptions_meta_subscription_id`, `subscriptions_meta_value`) VALUES
(1, 1, '5 Lead Students'),
(2, 2, '10 Lead Students'),
(3, 3, '15 Lead Students');

-- --------------------------------------------------------

--
-- Table structure for table `cp_testimonials`
--

CREATE TABLE `cp_testimonials` (
  `testimonials_id` int(11) NOT NULL,
  `testimonials_name` varchar(255) DEFAULT NULL,
  `testimonials_designation` varchar(500) DEFAULT NULL,
  `testimonials_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonials_rating` int(11) DEFAULT NULL,
  `testimonials_image` varchar(500) DEFAULT NULL,
  `testimonials_users` int(11) DEFAULT NULL,
  `testimonials_status` int(11) DEFAULT NULL,
  `testimonials_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_testimonials`
--

INSERT INTO `cp_testimonials` (`testimonials_id`, `testimonials_name`, `testimonials_designation`, `testimonials_description`, `testimonials_rating`, `testimonials_image`, `testimonials_users`, `testimonials_status`, `testimonials_created_on`) VALUES
(1, 'Enoch', 'Driving teacher', 'Enoch is an excellent trainer. He is prompt in teaching, and made me comfortable driving on highway in 2 days of training. He has vast experience and charges are also very less. Overall, he is the best personal trainer i had come across.', 5, '20240416022446-424074-can-teach-you-driving-your-vehicle-your-place-both-manual-and-automatic-cars-years-experience-and-also-also.jpg', 1, 1, '2024-04-16 14:24:46'),
(2, 'Sai', 'English teacher', 'Mr Sai is a great teacher, he understands your weaknesses and strengths very well. You will feel very comfortable with him. I have observed significant improvement in myself since I started taking lessons with him.', 5, '20240416022500-436860-years-communication-coach-and-english-language-trainer-years-site-the-years-off-site-for-usa-clients.jpg', 1, 1, '2024-04-16 14:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `cp_users`
--

CREATE TABLE `cp_users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_phone` varchar(25) DEFAULT NULL,
  `users_password` varchar(255) DEFAULT NULL,
  `users_role` int(11) DEFAULT NULL COMMENT '121=admin,1=user,2=tutor',
  `users_profile` varchar(500) DEFAULT NULL,
  `users_courses` longtext DEFAULT NULL,
  `users_subscription_end_on` date DEFAULT NULL,
  `users_gender` varchar(10) DEFAULT NULL,
  `users_address` longtext DEFAULT NULL,
  `users_status` int(11) DEFAULT 0,
  `users_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cp_users`
--

INSERT INTO `cp_users` (`users_id`, `users_name`, `users_email`, `users_phone`, `users_password`, `users_role`, `users_profile`, `users_courses`, `users_subscription_end_on`, `users_gender`, `users_address`, `users_status`, `users_created_on`) VALUES
(1, 'Admin Education', 'admin@education.com', '+1234567890', '$2y$10$VUQ4pEVn0Y2.SWrNkmDqu.KcQk.02W1gffJ.TvwL8BK79QS.COaz.', 121, NULL, NULL, NULL, 'male', NULL, 1, '2024-04-01 12:35:16'),
(13, 'atul dev dobriyal', 'atul@pearlorganisation.com', '+918755711855', '$2y$10$YfpXckIz6wHwRyI2zp9rFuqo0Oh9.PG/H5Qw1W78TdaxVCVk6WGeu', 1, NULL, NULL, NULL, 'male', NULL, 1, '2024-04-23 07:56:56'),
(20, 'Harshit Chauhan', 'harshit@pearlorganisation.com', '+918755711855', '$2y$10$qIsTWFPEZ9dKN0t37gRRd.CERNMMBGOBp9gUIYPhkWKkjxMmvynhO', 1, NULL, '166,150,135,112,80,49', NULL, 'male', NULL, 1, '2024-05-01 10:43:04'),
(21, 'Bhuvnesh Chauhan', 'bhuvnesh@pearlorganisation.com', '+918755711855', '$2y$10$oyViyLEgNUtwRh73kxFaUOLx0WwAlU5iRR155M7e.vurJ/1U.HfdG', 2, NULL, '112,80,49', NULL, 'male', NULL, 1, '2024-05-01 10:53:59'),
(22, 'Arif Ansari', 'arif@pearlorganisation.com', '+911234567890', '$2y$10$Xhil3nzD/j7B8fnOuNmU7.dXlii4eOHpQ6hY8wTT/vKdujDYNjAii', 2, NULL, '36,27,18,9', NULL, NULL, NULL, 1, '2024-05-02 13:35:35'),
(23, 'Ajay Kumar Bagwari', 'ajaykumar@pearlorganisation.com', '+912345678920', '$2y$10$mbD77Y.A5hdYX06P/D60pOT5lnZboEiGcHGKsLD6M.YwGwGXmN3a6', 2, NULL, '182,179,176,170,169,162,157,98', NULL, NULL, NULL, 1, '2024-05-02 13:39:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cp_categories`
--
ALTER TABLE `cp_categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `cp_countries`
--
ALTER TABLE `cp_countries`
  ADD PRIMARY KEY (`countries_id`);

--
-- Indexes for table `cp_locations`
--
ALTER TABLE `cp_locations`
  ADD PRIMARY KEY (`locations_id`);

--
-- Indexes for table `cp_location_categories`
--
ALTER TABLE `cp_location_categories`
  ADD PRIMARY KEY (`location_categories_id`);

--
-- Indexes for table `cp_menus`
--
ALTER TABLE `cp_menus`
  ADD PRIMARY KEY (`menus_id`);

--
-- Indexes for table `cp_products`
--
ALTER TABLE `cp_products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `cp_subscriptions`
--
ALTER TABLE `cp_subscriptions`
  ADD PRIMARY KEY (`subscriptions_id`);

--
-- Indexes for table `cp_subscriptions_meta`
--
ALTER TABLE `cp_subscriptions_meta`
  ADD PRIMARY KEY (`subscriptions_meta_id`);

--
-- Indexes for table `cp_testimonials`
--
ALTER TABLE `cp_testimonials`
  ADD PRIMARY KEY (`testimonials_id`);

--
-- Indexes for table `cp_users`
--
ALTER TABLE `cp_users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cp_categories`
--
ALTER TABLE `cp_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `cp_countries`
--
ALTER TABLE `cp_countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cp_locations`
--
ALTER TABLE `cp_locations`
  MODIFY `locations_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cp_location_categories`
--
ALTER TABLE `cp_location_categories`
  MODIFY `location_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cp_menus`
--
ALTER TABLE `cp_menus`
  MODIFY `menus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cp_products`
--
ALTER TABLE `cp_products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_subscriptions`
--
ALTER TABLE `cp_subscriptions`
  MODIFY `subscriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cp_subscriptions_meta`
--
ALTER TABLE `cp_subscriptions_meta`
  MODIFY `subscriptions_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cp_testimonials`
--
ALTER TABLE `cp_testimonials`
  MODIFY `testimonials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cp_users`
--
ALTER TABLE `cp_users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
