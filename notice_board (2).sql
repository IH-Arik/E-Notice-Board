-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 06:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notice_board`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-05-10 07:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `notice_type` varchar(50) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `is_important` tinyint(1) DEFAULT 0,
  `publish_date` datetime NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `public_notices`
--

CREATE TABLE `public_notices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail_path` varchar(255) NOT NULL,
  `full_image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_notices`
--

INSERT INTO `public_notices` (`id`, `title`, `description`, `thumbnail_path`, `full_image_path`, `created_at`, `is_active`) VALUES
(2, 'GUB Annual Research Publication and Grants Award Ceremony 2023', 'The Center for Research Innovation and Transformation (CRIT) of Green University of Bangladesh is going to organize the GUB Annual Research Publication and Grants Award Ceremony 2023 on 29 December 2023 at 3:00 pm in room # A 302.\r\n\r\nIn this event, the Green University of Bangladesh is going to recognize and reward high-quality research publications produced by eligible researchers of the GUB to encourage them to conduct more quality research works.\r\n\r\nAdditionally, the GUB Research Grant Award 2023 will also be handed over among the respected awardees. We will also award Dr. Molla Shahadat Hossain Lipu, Associate Professor, Department of EEE, GUB for being enlisted as the top 2% scientist in the world in 2023.\r\n\r\nIt will be our great privilege to have Prof. Dr. M Abdur Razzak, Department of Electrical and Electronic Engineering & Additional Director, Green Energy Research Center, Independent University, Bangladesh, as the Chief Guest of this ceremony.\r\n\r\nBesides, Prof. Dr. Khawza Iftekhar Uddin Ahmed, Honorable Vice Chancellor (Acting), Green University of Bangladesh will grace the occasion as the Special Guest.\r\n\r\n\"', 'uploads/public/1746958552_thumb_2_1703877707_news-cover.jpg', '', '2025-05-11 10:15:52', 1),
(3, 'Successful Completion of the ITD Workshop Titled as “Bridging the Gap: The Role of Development Communication in Advancing the SDGs', 'The day long ITD workshop on Bridging the Gap: The Role of Development Communication in Advancing the SDGs, organized jointly by the Department of Journalism and Media Communication (JMC), Green University of Bangladesh and the Bangladesh Academy for Rural Development (BARD), was successfully held on 11th November 2024.\r\n\r\nA total of 60 students participated in the event, accompanied by our esteemed Advisor, Prof. Dr. Shah Md. Nister Jahan Kabir; Chairperson Dr. Md. Aliur Rahman; Lecturer Monjur Kibriya Bhuiyan and Media Lab Coordinator Kazi Mahadi Muntasir. We departed from the GUB campus at around 8:30 am and arrived at BARD, where we were warmly welcomed by Director of Training, Mr. Abdullah Al Mamun, Junior Director of Training, Mr. Junayed Rahim and Assistant Professor and Head of the Department of Mass Communication and Journalism at Comilla University, Mr. Kazi M. Anisul Islam, Lecturer Ms. Jakia Jahan Mukta from Comilla University also joined the welcome session and shared an insightful introductory speech about BARD and its mission.\r\n\r\n\r\nAfter the workshop, the students had the opportunity to explore the natural beauty of the BARD campus, which left them in awe of the organization’s infrastructure and serene environment. We departed from BARD around 5:30 pm, reflecting on the enriching experience we had throughout the day.', 'uploads/public/1746958640_thumb_itd-1742545915.jpg', '', '2025-05-11 10:17:20', 1),
(4, 'CSE T10 Cricket Tournament', 'We are thrilled to share the much-anticipated event  CSE T10 CRICKET TOURNAMENT 2025, organized by the Green University Computer Club.The tournament will run from April 26 to April 29, featuring exciting knockout matches between 16 student teams. We warmly invite all students, faculties, and staff to the Trophy Unveiling Ceremony to join us in cheering for the teams and enjoying the vibrant atmosphere of the tournament. Let’s come together to celebrate our players and make this event a grand success!', 'uploads/public/1747566203_thumb_t-10-cse-1745652106.png', '', '2025-05-18 11:03:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `type` enum('club','breaking','general','headline') NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `type`, `content`, `created_at`) VALUES
(12, 'club', 'Orientation Week – August 19–23, 2025', '2025-05-10 18:20:11'),
(13, 'club', 'Freshers\' Welcome Party – August 25, 2025', '2025-05-10 18:20:44'),
(14, 'breaking', 'Green University of Bangladesh (GUB) has recently received the prestigious ISO 9001:2008 certificate for quality education. Green University achieved this ISO 9001:2008 Certification by the Internationally Recognized Accredited Certification Body Orion Registrar Inc., USA covering the area “Design & Development of Course Content and Ensuring Quality Education at Undergraduate and Graduate Level”.', '2025-05-10 18:28:35'),
(15, 'general', 'Green University of Bangladesh (GUB) conducts its academic and administrative activities in a green campus at Purbachal American City, Kanchan, Rupganj, Narayanganj, Dhaka, Bangladesh. At present, the permanent campus of GUB has one administrative and eight academic buildings. This campus is in a calm, serene, green and open environment. The Green University Campus includes: Separate Academic and Administrative Building, IT Center, Multipurpose Hall, IT based Library, Different laboratories, Indoor and outdoor games facilities, Playgrounds, Medical Center, Cafeteria, and Transport facilities etc.', '2025-05-10 18:29:18'),
(16, 'club', 'Career Fair – October 10, 2025', '2025-05-10 18:29:44'),
(18, 'club', 'Cultural Fest – November 15, 2025', '2025-05-10 18:30:05'),
(19, 'club', 'Tech Symposium – December 5–6, 2025', '2025-05-10 18:30:38'),
(20, 'club', 'Winter Break Begins – December 21, 2025', '2025-05-10 18:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `type` enum('notice','video','faculty','admin') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `type`, `file_path`, `uploaded_at`) VALUES
(33, 'notice', 'uploads/1746897434_491709770_1067243642104587_3010754289694679890_n.png', '2025-05-10 17:17:14'),
(34, 'notice', 'uploads/1746897482_486572085_1044852647677020_556345358110567438_n.jpg', '2025-05-10 17:18:02'),
(35, 'notice', 'uploads/1746897532_486288810_1044852031010415_8659220752831453491_n.jpg', '2025-05-10 17:18:52'),
(36, 'video', 'uploads/1746897675_AQOMZkg-W2my-mAmUXK9w3tPzLR-tMMBdSAvK-FqDuB4EsdQdjQWEwLkGyIqxyqaBCw48SWLPCG0Zyut7Cz6plQA.mp4', '2025-05-10 17:21:15'),
(37, 'notice', 'uploads/1746900110_494177488_1071944188301199_2917967225902399649_n.jpg', '2025-05-10 18:01:50'),
(38, 'faculty', 'uploads/1746900110_pre-registration-of-courses-for-summer-2025-1745137313.pdf', '2025-05-10 18:01:50'),
(39, 'faculty', 'uploads/1746901618_re-scheduling-of-classes-examinations-and-office-activities-due-to-nat-test-1744356462.pdf', '2025-05-10 18:26:58'),
(40, 'admin', 'uploads/1746901654_Prayer-Timing_-_-96.jpg', '2025-05-10 18:27:34'),
(41, 'admin', 'uploads/1746902224_169545653_1864857327012519_5357855777224442186_n.jpg', '2025-05-10 18:37:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_notices`
--
ALTER TABLE `public_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_notices`
--
ALTER TABLE `public_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
