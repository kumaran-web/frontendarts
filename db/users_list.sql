-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 14, 2024 at 12:07 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_list`
--

DROP TABLE IF EXISTS `users_list`;
CREATE TABLE IF NOT EXISTS `users_list` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(20) DEFAULT NULL,
  `registration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login_date` timestamp NULL DEFAULT NULL,
  `subscription_type` enum('Free','Basic','Premium') DEFAULT NULL,
  `subscription_start_date` date DEFAULT NULL,
  `subscription_end_date` date DEFAULT NULL,
  `account_status` enum('Active','Inactive','Suspended') DEFAULT NULL,
  `preferred_language` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `bio` text,
  `others` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_list`
--

INSERT INTO `users_list` (`user_id`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `date_of_birth`, `gender`, `address_line1`, `address_line2`, `city`, `state_province`, `country`, `zip_postal_code`, `registration_date`, `last_login_date`, `subscription_type`, `subscription_start_date`, `subscription_end_date`, `account_status`, `preferred_language`, `timezone`, `profile_picture_url`, `bio`, `others`) VALUES
(1, 'John', 'Doe', 'johndoe', 'johndoe@example.com', '123-456-7890', '1990-05-15', 'Male', '123 Main St', 'Apt 101', 'New York', 'NY', 'USA', '10001', '2023-01-15 04:30:00', '2023-05-20 10:00:00', 'Premium', '2023-01-15', '2024-01-15', 'Active', 'English', 'America/New_York', 'https://example.com/profile.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Other details here'),
(2, 'Jane', 'Smith', 'janesmith', 'janesmith@example.com', '987-654-3210', '1988-08-22', 'Female', '456 Oak Ave', 'Suite 202', 'Los Angeles', 'CA', 'USA', '90001', '2023-02-20 04:00:00', '2023-06-25 07:15:00', 'Basic', '2023-02-20', '2023-08-20', 'Active', 'Spanish', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Additional info'),
(3, 'Michael', 'Johnson', 'michaelj', 'michaelj@example.com', '555-123-4567', '1995-11-10', 'Male', '789 Pine St', '', 'Chicago', 'IL', 'USA', '60601', '2023-03-10 06:15:00', '2023-07-15 08:30:00', 'Free', '2023-03-10', '2023-09-10', 'Inactive', 'French', 'America/Chicago', 'https://example.com/profile.jpg', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Additional details'),
(4, 'Emily', 'Brown', 'emilyb', 'emilyb@example.com', '222-333-4444', '1993-04-05', 'Female', '321 Elm St', 'Apt 50', 'Houston', 'TX', 'USA', '77002', '2023-04-05 02:30:00', '2023-08-10 11:45:00', 'Premium', '2023-04-05', '2024-04-05', 'Active', 'English', 'America/Chicago', 'https://example.com/profile.jpg', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'More info'),
(5, 'David', 'Lee', 'davidl', 'davidl@example.com', '777-888-9999', '1992-12-01', 'Male', '555 Maple Ave', 'Unit 10', 'San Francisco', 'CA', 'USA', '94105', '2023-05-01 07:50:00', '2023-09-20 03:30:00', 'Basic', '2023-05-01', '2023-11-01', 'Active', 'German', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Additional details'),
(6, 'Sarah', 'Taylor', 'saraht', 'saraht@example.com', '444-555-6666', '1991-07-18', 'Female', '888 Cedar St', 'Suite 5', 'Miami', 'FL', 'USA', '33101', '2023-06-15 09:00:00', '2023-10-05 13:00:00', 'Premium', '2023-06-15', '2024-06-15', 'Active', 'English', 'America/New_York', 'https://example.com/profile.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Other details'),
(7, 'Matthew', 'Wilson', 'mattheww', 'mattheww@example.com', '666-777-8888', '1994-09-30', 'Male', '222 Walnut St', '', 'Boston', 'MA', 'USA', '02108', '2023-07-20 05:15:00', '2023-11-30 10:30:00', 'Free', '2023-07-20', '2024-01-20', 'Active', 'French', 'America/New_York', 'https://example.com/profile.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'Additional info'),
(8, 'Olivia', 'Martinez', 'oliviam', 'oliviam@example.com', '333-444-5555', '1990-03-25', 'Female', '777 Pineapple St', 'Apt 15', 'Seattle', 'WA', 'USA', '98101', '2023-08-10 06:30:00', '2023-12-01 09:15:00', 'Basic', '2023-08-10', '2024-02-10', 'Active', 'Spanish', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.', 'More info'),
(9, 'James', 'Garcia', 'jamesg', 'jamesg@example.com', '999-000-1111', '1989-06-12', 'Male', '999 Orange Ave', 'Suite 25', 'Phoenix', 'AZ', 'USA', '85001', '2023-09-05 03:45:00', '2024-01-15 06:00:00', 'Premium', '2023-09-05', '2024-09-05', 'Active', 'English', 'America/Phoenix', 'https://example.com/profile.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.', 'Additional details'),
(10, 'Emma', 'Rodriguez', 'emmar', 'emmar@example.com', '111-222-3333', '1993-02-28', 'Female', '111 Peach St', '', 'Dallas', 'TX', 'USA', '75201', '2023-10-15 06:00:00', '2024-02-28 08:15:00', 'Free', '2023-10-15', '2024-04-15', 'Active', 'French', 'America/Chicago', 'https://example.com/profile.jpg', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.', 'Additional info'),
(11, 'William', 'Lopez', 'williaml', 'williaml@example.com', '444-999-8888', '1991-11-05', 'Male', '444 Lemon St', 'Unit 30', 'Atlanta', 'GA', 'USA', '30301', '2023-11-01 03:15:00', '2024-03-01 04:30:00', 'Basic', '2023-11-01', '2024-05-01', 'Active', 'German', 'America/New_York', 'https://example.com/profile.jpg', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.', 'Other details'),
(12, 'Isabella', 'Hernandez', 'isabellah', 'isabellah@example.com', '555-777-9999', '1994-04-20', 'Female', '555 Cherry St', '', 'Denver', 'CO', 'USA', '80201', '2023-12-05 08:30:00', '2024-04-20 11:00:00', 'Premium', '2023-12-05', '2024-12-05', 'Active', 'English', 'America/Denver', 'https://example.com/profile.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Additional details'),
(13, 'Sophia', 'Perez', 'sophiap', 'sophiap@example.com', '333-555-7777', '1990-09-08', 'Female', '333 Pine St', 'Apt 20', 'Portland', 'OR', 'USA', '97201', '2024-01-01 03:30:00', '2024-05-01 05:45:00', 'Basic', '2024-01-01', '2024-07-01', 'Active', 'Spanish', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Additional details'),
(14, 'Alexander', 'Ramirez', 'alexanderr', 'alexanderr@example.com', '888-222-1111', '1991-12-12', 'Male', '888 Rose St', '', 'Austin', 'TX', 'USA', '78701', '2024-02-10 05:00:00', '2024-06-20 08:30:00', 'Premium', '2024-02-10', '2025-02-10', 'Active', 'English', 'America/Chicago', 'https://example.com/profile.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'More info'),
(15, 'Mia', 'Flores', 'miaf', 'miaf@example.com', '777-444-2222', '1993-05-25', 'Female', '777 Oak St', 'Unit 8', 'San Jose', 'CA', 'USA', '95101', '2024-03-15 03:15:00', '2024-07-10 05:00:00', 'Free', '2024-03-15', '2024-09-15', 'Active', 'French', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.', 'More info'),
(16, 'Benjamin', 'Torres', 'benjamint', 'benjamint@example.com', '222-444-6666', '1992-08-30', 'Male', '222 Elm St', 'Suite 18', 'Seattle', 'WA', 'USA', '98101', '2024-04-05 07:00:00', '2024-08-20 10:15:00', 'Basic', '2024-04-05', '2024-10-05', 'Active', 'German', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.', 'Additional info'),
(17, 'Charlotte', 'Gomez', 'charlotteg', 'charlotteg@example.com', '999-555-3333', '1994-03-18', 'Female', '999 Walnut St', '', 'Philadelphia', 'PA', 'USA', '19101', '2024-05-01 05:30:00', '2024-09-10 07:45:00', 'Premium', '2024-05-01', '2025-05-01', 'Active', 'English', 'America/New_York', 'https://example.com/profile.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.', 'Additional details'),
(18, 'Lucas', 'Ortega', 'lucaso', 'lucaso@example.com', '444-777-9999', '1991-10-10', 'Male', '444 Pine St', 'Apt 12', 'Dallas', 'TX', 'USA', '75201', '2024-06-10 08:45:00', '2024-10-20 12:00:00', 'Free', '2024-06-10', '2025-06-10', 'Active', 'Spanish', 'America/Chicago', 'https://example.com/profile.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Additional details'),
(19, 'Amelia', 'Reyes', 'ameliar', 'ameliar@example.com', '111-444-7777', '1990-07-05', 'Female', '111 Apple St', 'Suite 22', 'San Francisco', 'CA', 'USA', '94101', '2024-07-05 04:00:00', '2024-11-15 06:15:00', 'Basic', '2024-07-05', '2025-01-05', 'Active', 'English', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Other details'),
(20, 'Logan', 'Martinez', 'loganm', 'loganm@example.com', '666-888-9999', '1993-04-30', 'Male', '666 Mango St', '', 'Miami', 'FL', 'USA', '33101', '2024-08-01 04:30:00', '2024-12-10 06:45:00', 'Premium', '2024-08-01', '2025-08-01', 'Active', 'French', 'America/New_York', 'https://example.com/profile.jpg', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Additional info'),
(21, 'Ava', 'Hernandez', 'avah', 'avah@example.com', '555-222-9999', '1992-02-20', 'Female', '555 Cherry Blossom St', '', 'Denver', 'CO', 'USA', '80201', '2024-09-05 07:00:00', '2025-01-20 09:15:00', 'Free', '2024-09-05', '2025-03-05', 'Active', 'German', 'America/Denver', 'https://example.com/profile.jpg', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.', 'More info'),
(22, 'Jackson', 'Lopez', 'jacksonl', 'jacksonl@example.com', '333-777-8888', '1991-05-15', 'Male', '333 Maple St', '', 'Phoenix', 'AZ', 'USA', '85001', '2024-10-01 03:15:00', '2025-02-01 05:30:00', 'Basic', '2024-10-01', '2025-04-01', 'Active', 'English', 'America/Phoenix', 'https://example.com/profile.jpg', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.', 'Other details'),
(23, 'Grace', 'Garcia', 'graceg', 'graceg@example.com', '888-444-1111', '1990-12-18', 'Female', '888 Grape St', 'Suite 10', 'Austin', 'TX', 'USA', '78701', '2024-11-05 05:45:00', '2025-03-15 08:00:00', 'Premium', '2024-11-05', '2025-11-05', 'Active', 'Spanish', 'America/Chicago', 'https://example.com/profile.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.', 'Additional details'),
(24, 'Ethan', 'Martinez', 'ethanm', 'ethanm@example.com', '555-111-4444', '1993-08-22', 'Male', '555 Apple St', 'Apt 5', 'Seattle', 'WA', 'USA', '98101', '2025-01-15 04:00:00', '2025-05-20 07:15:00', 'Premium', '2025-01-15', '2026-01-15', 'Active', 'English', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Other details'),
(25, 'Madison', 'Lopez', 'madisonl', 'madisonl@example.com', '777-999-1111', '1992-04-10', 'Female', '777 Cherry St', 'Suite 15', 'Phoenix', 'AZ', 'USA', '85001', '2025-02-20 06:15:00', '2025-06-25 08:30:00', 'Free', '2025-02-20', '2025-08-20', 'Active', 'Spanish', 'America/Phoenix', 'https://example.com/profile.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'More info'),
(26, 'Alexander', 'Gonzalez', 'alexanderg', 'alexanderg@example.com', '111-333-5555', '1991-11-05', 'Male', '111 Maple St', '', 'Denver', 'CO', 'USA', '80201', '2025-03-10 04:30:00', '2025-07-15 06:45:00', 'Basic', '2025-03-10', '2025-09-10', 'Active', 'German', 'America/Denver', 'https://example.com/profile.jpg', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.', 'Additional info'),
(27, 'Sophia', 'Hernandez', 'sophiah', 'sophiah@example.com', '444-666-8888', '1990-12-01', 'Female', '444 Orange St', 'Unit 8', 'Miami', 'FL', 'USA', '33101', '2025-04-05 07:00:00', '2025-08-10 10:15:00', 'Premium', '2025-04-05', '2026-04-05', 'Active', 'English', 'America/New_York', 'https://example.com/profile.jpg', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Additional details'),
(28, 'William', 'Garcia', 'williamg', 'williamg@example.com', '999-888-7777', '1993-07-18', 'Male', '999 Pine St', 'Suite 20', 'San Francisco', 'CA', 'USA', '94101', '2025-05-01 08:30:00', '2025-09-20 11:00:00', 'Free', '2025-05-01', '2025-11-01', 'Active', 'French', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Additional details'),
(29, 'Isabella', 'Rodriguez', 'isabellar', 'isabellar@example.com', '222-555-9999', '1992-02-28', 'Female', '222 Walnut St', 'Apt 10', 'Boston', 'MA', 'USA', '02108', '2025-06-15 02:30:00', '2025-10-30 04:45:00', 'Premium', '2025-06-15', '2026-06-15', 'Active', 'English', 'America/New_York', 'https://example.com/profile.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Other details'),
(30, 'Oliver', 'Martinez', 'oliverm', 'oliverm@example.com', '777-888-6666', '1991-09-30', 'Male', '777 Elm St', '', 'Dallas', 'TX', 'USA', '75201', '2025-07-20 03:45:00', '2025-11-30 06:00:00', 'Basic', '2025-07-20', '2026-01-20', 'Active', 'Spanish', 'America/Chicago', 'https://example.com/profile.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'More info'),
(31, 'Amelia', 'Lopez', 'amelial', 'amelial@example.com', '333-777-4444', '1994-04-25', 'Female', '333 Oak St', 'Suite 30', 'Austin', 'TX', 'USA', '78701', '2025-08-10 05:00:00', '2025-12-01 08:15:00', 'Free', '2025-08-10', '2026-02-10', 'Active', 'German', 'America/Chicago', 'https://example.com/profile.jpg', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.', 'More info'),
(32, 'Henry', 'Gomez', 'henryg', 'henryg@example.com', '888-444-2222', '1993-05-20', 'Male', '888 Pine St', 'Unit 25', 'San Jose', 'CA', 'USA', '95101', '2025-09-05 05:30:00', '2026-01-20 08:45:00', 'Premium', '2025-09-05', '2026-09-05', 'Active', 'English', 'America/Los_Angeles', 'https://example.com/profile.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.', 'Additional details'),
(33, 'Ella', 'Hernandez', 'ellah', 'ellah@example.com', '555-777-3333', '1992-02-05', 'Female', '555 Apple Blossom St', '', 'Denver', 'CO', 'USA', '80201', '2025-10-01 07:00:00', '2026-02-01 10:15:00', 'Basic', '2025-10-01', '2026-04-01', 'Active', 'German', 'America/Denver', 'https://example.com/profile.jpg', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.', 'Other details');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
