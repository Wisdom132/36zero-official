-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2018 at 12:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `36zero`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'University', 'university', '2018-12-12 11:54:47', '2018-12-16 09:58:24'),
(2, 'Polytechnic', 'polytechnic', '2018-12-12 12:08:50', '2018-12-12 12:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2018-12-13 03:23:08', '2018-12-13 03:23:08'),
(2, 9, 2, '2018-12-13 04:09:27', '2018-12-13 04:09:27'),
(4, 11, 2, '2018-12-13 05:10:26', '2018-12-13 05:10:26'),
(5, 12, 1, '2018-12-14 21:19:50', '2018-12-14 21:19:50'),
(6, 13, 1, '2018-12-14 21:38:04', '2018-12-14 21:38:04'),
(8, 15, 1, '2018-12-16 23:32:49', '2018-12-16 23:32:49'),
(9, 16, 2, '2018-12-17 11:58:38', '2018-12-17 11:58:38'),
(11, 18, 2, '2018-12-20 14:45:14', '2018-12-20 14:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_11_120847_create_posts_table', 1),
(4, '2018_12_11_120929_create_categories_table', 1),
(5, '2018_12_11_122207_create_category_post_table', 1),
(6, '2018_12_15_070547_create_roles_table', 2),
(7, '2018_12_15_070715_create_role_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$bv5vA97wd9Org3RbNYu2peK3as1kOngurHMTGYQKs.IuOlTZMVeUi', '2018-12-18 05:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(1, 'Post-Create', 'post', '2018-12-15 16:02:20', '2018-12-15 16:02:20'),
(2, 'Post-Update', 'post', '2018-12-15 16:02:54', '2018-12-15 16:02:54'),
(3, 'Post-Delete', 'post', '2018-12-15 16:03:14', '2018-12-15 16:03:14'),
(4, 'Post-Publish', 'post', '2018-12-15 16:03:36', '2018-12-15 16:03:36'),
(5, 'Access-Permission', 'other', '2018-12-16 08:47:42', '2018-12-16 08:47:42'),
(6, 'Access-Roles', 'other', '2018-12-16 08:47:57', '2018-12-16 09:03:00'),
(7, 'Admin-Create', 'user', '2018-12-16 09:04:16', '2018-12-16 09:04:16'),
(8, 'Admin-Update', 'user', '2018-12-16 09:04:44', '2018-12-16 09:04:44'),
(9, 'Admin-Delete', 'user', '2018-12-16 09:05:08', '2018-12-16 09:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 1, 2, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 4, 2, NULL, NULL),
(6, 4, 3, NULL, NULL),
(7, 4, 4, NULL, NULL),
(8, 4, 7, NULL, NULL),
(9, 4, 8, NULL, NULL),
(10, 4, 9, NULL, NULL),
(11, 4, 5, NULL, NULL),
(12, 4, 6, NULL, NULL),
(13, 3, 1, NULL, NULL),
(14, 3, 2, NULL, NULL),
(15, 3, 3, NULL, NULL),
(17, 2, 2, NULL, NULL),
(18, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posted_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `image`, `posted_by`, `created_at`, `updated_at`) VALUES
(6, 'NECO [MAY/JUN $ NOV/DEC] RUNS', 'fortemne-possumus', '<p>xsddsdsds</p>', 'phpY3sNd9.png', '', '2018-12-13 03:23:07', '2018-12-13 03:23:07'),
(9, 'NECO [MAY/JUN $ NOV/DEC]', 'fortemne-possumus44', '<p>jndkkdl</p>', 'php3aNGza.png', '', '2018-12-13 04:09:27', '2018-12-13 04:09:27'),
(11, 'testing slug', 'testing-slug', '<p>iosdnslcnslzc</p>', 'phpbScDOY.png', '', '2018-12-13 05:10:26', '2018-12-13 05:10:26'),
(12, 'testing author', 'testing-author', '<p>&nbsp;testing author</p>', 'phpkVUsJr.jpeg', 'John', '2018-12-14 21:19:49', '2018-12-16 23:35:43'),
(13, 'Read the group’s rules about promoting content', 'read-the-groups-rules-about-promoting-content', '<p>above. That&rsquo;s great. But who&rsquo;s going to see them? Now you need some connections. A lot of connections. But you don&rsquo;t want just any connections. You want people in your industry. Why? Because if someone isn&rsquo;t in your industry, how likely are they to read, share and engage with your content?<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;So go after the people who are your ideal readers &ndash; your ideal clients, or customers, or peers. Its always more engaging and appealing to personalize your invitation when adding a connection on LinkedIn, Do not just click the invite button.<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Use Groups. LinkedIn Groups are a content promotion candystore &ndash; if you know how to use them. But a lot of people either don&rsquo;t know how to promote their content politely, or they don&rsquo;t care too much if they irritate other group members. Read the group&rsquo;s rules about promoting content before you do anything. If you do promote content, promote other people&rsquo;s content as much as you promote your own.<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Don&rsquo;t promote content all the time. Once a week should be the maximum. Once a month is more polite. The best way to promote content is to find a discussion that is directly related to your content. Add a thoughtful and helpful comment that includes a link to your content. Don&rsquo;t sell your link &ndash; include it as if it was a reference. This will take 5-6 times more work than just auto posting. But it&rsquo;s the most ethical and effective way to promote content.<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Use Pulse, LinkedIn&rsquo;s Publishing Platform. Pulse posts can get massive exposure. They can deliver more traffic and attention than if you published the same piece on your site. Unless, of course, you&rsquo;ve got a super-popular blog</p>', 'phpcpny07.jpg', 'John', '2018-12-14 21:38:04', '2018-12-17 00:10:50'),
(15, 'While LinkedIn seems like the perfect', 'while-linkedin-seems-like-the-perfect', '<p style=\"text-align: left;\">While LinkedIn seems like the perfect place to promote content, sometimes it gives content marketers an Ice reception. This happens to a lot of us, you just need to know some of the etiquette rules on LinkedIn.<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;How to promote content on LinkedIn in 6 ways:<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Post daily, and post right. If there&rsquo;s one thing you can do to promote your content on LinkedIn, it would be to publish a new status update every day.<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Just once a day is good, and you can even skip the weekends. You&rsquo;ll get double the engagement if you include links in your updates.<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Include images and videos. You&rsquo;ll get 98% more comments with an image, and 75% more shares with a video. Post in the morning as early in the morning as 6 or 7am your time. LinkedIn is the corporate world.<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Build your following. Let&rsquo;s say you&rsquo;ve just queued up a bunch of awesome LinkedIn status updates, all built according to the best practices </p>', 'phps9bLvk.jpg', 'John', '2018-12-15 08:54:49', '2018-12-17 00:08:30'),
(16, 'Where does it come from', 'where-does-it-come-from', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>&nbsp;</p>', 'php8kkSdG.png', 'Legendary', '2018-12-17 11:58:37', '2018-12-17 11:58:37'),
(18, 'My first blog post', 'my-first-blog-post', '<p>Here am i testing this platform for its functionality and responsiveness. The devs are behind me thinking of what next i wpuld do but, trust me they have no idea what i\'m u[p to becuse like them i\'m a pretty fast thinker.</p>\r\n<p>&nbsp;</p>\r\n<p>Okay lets nopt talk much lets review this and proceed. they are super excited i decided to end here/.</p>', 'phpnP44SZ.png', 'Legendary', '2018-12-20 14:45:14', '2018-12-20 14:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Writer', '2018-12-15 07:15:22', '2018-12-15 07:15:22'),
(2, 'Editor', '2018-12-15 07:15:44', '2018-12-15 07:15:44'),
(3, 'Publisher', '2018-12-15 07:16:01', '2018-12-15 07:16:01'),
(4, 'Global Access', '2018-12-15 11:30:19', '2018-12-16 09:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 3, 3, NULL, NULL),
(16, 4, 2, NULL, NULL),
(17, 2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_of_origin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `phone_no`, `state_of_origin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Legendary', 'default.png', '', '', 'excellentloaded@gmail.com', NULL, '$2y$10$ZPzStJoir8nhmf45dmPdVu2wEJ82txrus1qvjZR0eNS/7IL6MX2Iy', 'VXfKPTgXaWdtqTCb1Ys6ylhPI3zYT7WBCRZvJ6Rn2rwLWWwzV7fVCsG0qIKz', '2018-12-13 09:19:01', '2018-12-16 08:24:43'),
(3, 'Peter John', 'php2g3Niq.png', '08100062831', 'Akwa Ibom', 'admin@admin.com', NULL, '$2y$10$y02WTRJWwUoH.WBUhmqBCeI5TaP9bggPD4VbR3HEZ0cd0.lVadqie', 'Z23MlZynetkN381NffXE76eG5bLP2RPeMA0b45d0a8UlapkSVUS9wJuf56G9', '2018-12-15 08:46:29', '2018-12-18 05:45:38'),
(5, 'John Doe', 'default.png', '07067172511', 'Rivers', 'admin@gmail.com', NULL, '$2y$10$la6swc8vMR30v1t9UfH5NO9.LG.oMizvNdYyJ8.uTkKnqBoMwpIvS', NULL, '2018-12-18 05:51:32', '2018-12-18 05:51:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_post_id_index` (`post_id`),
  ADD KEY `category_post_category_id_index` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_role_id_index` (`role_id`),
  ADD KEY `role_users_users_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_users_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
