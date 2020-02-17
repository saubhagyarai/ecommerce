-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 01:15 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2020_02_10_112400_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Learn to build websites in HTML5', 'products/a.jpg', 5000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry\\. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. I', '2020-02-12 03:25:14', '2020-02-12 03:25:14'),
(2, 'PHP development', 'products/b.jpg', 5000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry\\. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. I', '2020-02-12 03:25:14', '2020-02-12 03:25:14'),
(3, 'Ipsam quo libero excepturi.', 'products/a.jpg', 794, 'Quis dicta eius qui tenetur. Adipisci qui eos iusto necessitatibus delectus nesciunt corrupti officia. Non animi laborum earum aut aperiam accusantium quae.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(4, 'Omnis ea fugit sunt.', 'products/a.jpg', 7674, 'Alias non quis natus cupiditate. Repudiandae voluptate voluptas et illum et blanditiis ipsa. Eum sit occaecati in est est. Amet rerum officia corporis reprehenderit.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(5, 'Ipsam sapiente nulla et.', 'products/a.jpg', 1991, 'Voluptatem quisquam distinctio iure dolor. Occaecati aut excepturi quia libero ut. Consequatur ducimus a rem quia.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(6, 'Impedit id cupiditate necessitatibus.', 'products/a.jpg', 6773, 'Voluptatibus minus illum ratione debitis voluptatem pariatur. Veniam accusantium praesentium praesentium quis sapiente. Nemo quae sed est soluta. Totam odio ab provident accusamus. Ad ratione ea corrupti suscipit omnis voluptatem.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(7, 'Consequatur et qui voluptatem alias.', 'products/a.jpg', 3399, 'Rerum voluptas maxime officiis minus et mollitia. Nihil non quod quis ea molestias et voluptatem. Aut in dolorem omnis est.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(8, 'Vitae similique id est.', 'products/a.jpg', 8907, 'Quia nemo quia facilis laudantium quis corrupti. Eum nam fugit nihil qui veritatis aut ut. Voluptatem quasi voluptates pariatur accusamus culpa recusandae excepturi. Temporibus consequuntur quia et sit et. Voluptas culpa laborum quaerat est in atque quos.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(9, 'Soluta repellat voluptatum.', 'products/a.jpg', 4902, 'Veritatis repellat voluptatem quam quae sint est. Error voluptates ad rerum pariatur sed excepturi repellat. Perspiciatis quia expedita est ea perspiciatis asperiores amet. Aperiam autem voluptatem voluptatem quis ab occaecati et. Velit molestiae est aut est in sit quo explicabo. Fuga est beatae provident quod sunt at consequuntur tempora.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(10, 'Reprehenderit est et sequi.', 'products/a.jpg', 7410, 'Quod dolorem est qui deleniti. Rerum quibusdam nihil tenetur iste dolorem minima ut. Aut et aut distinctio error voluptatem cumque distinctio. Cumque illo adipisci ipsum rerum laboriosam neque et.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(11, 'Exercitationem aperiam eius quos.', 'products/a.jpg', 943, 'Est eos omnis dolore aut dolores id placeat. Rerum non totam nulla quod maxime adipisci. Qui repellat voluptas asperiores.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(12, 'Est dolorem.', 'products/a.jpg', 7183, 'Dolorem distinctio repellendus optio autem magni hic. Consequatur est et sequi a esse enim maxime illum. Consequatur et nostrum tempore eum similique ea ipsam. Sint esse officia odio.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(13, 'Dolorum et voluptates.', 'products/a.jpg', 3281, 'Voluptatem et perspiciatis quae voluptas iure. Ratione enim aut qui qui saepe. A magnam et exercitationem dignissimos totam.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(14, 'Ut ab enim rerum.', 'products/a.jpg', 4542, 'Sapiente optio dignissimos quia dicta. Vel voluptatibus maiores nulla debitis sit sit. Deserunt tempora et in et qui molestiae. Est pariatur atque praesentium sequi.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(15, 'Occaecati atque harum et.', 'products/a.jpg', 8773, 'Non corrupti velit repellat molestias dolores excepturi quos. Blanditiis dolor fugiat ut at autem dolores porro. Voluptas reprehenderit aut consequuntur laborum. Est id ut tempora sunt molestiae.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(16, 'Nam perspiciatis perferendis.', 'products/a.jpg', 7386, 'Asperiores sint et unde nesciunt aut repellendus. Ut asperiores quia quia consequatur rerum quia. Sit illum voluptatibus eum qui ut iure. Qui officia blanditiis amet.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(17, 'Sunt assumenda sed aut.', 'products/a.jpg', 4871, 'Corrupti expedita velit consequatur sit dolores est. Dolorem mollitia ea earum quia voluptatem et. Mollitia aut id ut. Cumque nisi magnam earum ratione quas eos. Enim est dolorem magni velit occaecati quos. Dolorum sed exercitationem est consequatur tempora quis similique.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(18, 'Et quae unde.', 'products/a.jpg', 2032, 'Provident doloremque quis voluptates reprehenderit nostrum repellendus et. Distinctio deserunt optio a eos. Ut mollitia consequatur aut aperiam soluta quia accusamus. Fugit commodi voluptatem labore id. Debitis quam distinctio labore aut qui.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(19, 'Ut veritatis deserunt.', 'products/a.jpg', 5082, 'Cumque totam nihil sapiente saepe quia. Soluta consequatur soluta et quasi quia. Cum dolores dolorum aliquid error exercitationem excepturi omnis possimus. Recusandae autem dolore voluptatem qui perferendis cum culpa. Quibusdam eius velit natus necessitatibus atque quos. Delectus neque sit voluptas ut et.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(20, 'Aut eum rem quas.', 'products/a.jpg', 9223, 'Distinctio id quia optio non dolores. Illum id autem fugit illum veritatis libero. Cum nihil et delectus atque. Omnis rem suscipit sapiente vel fugiat vel.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(21, 'Optio odit quia.', 'products/a.jpg', 1866, 'Unde iusto dolorum eos et laborum quidem consequatur. Adipisci voluptatibus dolor a non nostrum. Minus quisquam et delectus dignissimos saepe aut minus. Explicabo nemo sed rem quis quo sint. Dignissimos tempore omnis rerum tempore quia ullam.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(22, 'Ut perspiciatis et.', 'products/a.jpg', 6020, 'Possimus incidunt odit ipsum quia aut quia. Beatae placeat non veniam doloremque magnam. Ut ipsam aut nemo eos quaerat laudantium. Quo et officiis error molestiae architecto. Qui enim sapiente et minima quisquam molestiae.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(23, 'Facilis ad.', 'products/a.jpg', 5648, 'Vel iusto consectetur fugiat laboriosam quis. Aut qui eius saepe fugit ut porro. Et ipsa iste quae laudantium dolor debitis. Quasi facere fugiat officia recusandae. Sapiente quasi nihil vel dolorem omnis optio.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(24, 'Possimus corporis.', 'products/a.jpg', 9422, 'Et et velit est sint et quam ut. Et harum nulla deleniti quaerat dolor repellendus. Omnis soluta sed et nesciunt aut maxime exercitationem. Non aliquam consequuntur minima sed. Id dolor voluptatem sunt tempore omnis maiores impedit. Ut quis dicta eos est dolorem qui blanditiis.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(25, 'Ab quia odit alias.', 'products/a.jpg', 610, 'Omnis optio ipsa et quasi enim. Mollitia accusamus natus dolorum numquam assumenda similique. Sit harum hic omnis est. Accusantium ea dicta asperiores ullam non harum.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(26, 'Distinctio eum culpa.', 'products/a.jpg', 3820, 'Laboriosam maxime eos aut eaque corrupti amet consequuntur ullam. Sint cumque perspiciatis sit qui labore tempore. Aut laudantium soluta eaque possimus ducimus sint dolore. Vel porro non dolore vero excepturi. Possimus expedita labore quia quia dolores.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(27, 'Blanditiis dolore et.', 'products/a.jpg', 1682, 'Similique voluptas ut assumenda id aut. Dolores enim iste et omnis minima. Similique rerum architecto asperiores corporis voluptatem consequatur odit culpa.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(28, 'Suscipit voluptas eos et sunt.', 'products/a.jpg', 4152, 'Id cum porro quia eos voluptatum cupiditate. Facere inventore quaerat fugiat dignissimos. Pariatur culpa repellendus quia officiis ut. Eum et ipsa quia nostrum officiis harum quis quos. Omnis odit repudiandae et eum.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(29, 'Sit suscipit maiores enim.', 'products/a.jpg', 9976, 'Eveniet recusandae reprehenderit debitis qui. Ratione ullam asperiores quisquam in. Doloribus officia aliquam illo numquam facere. Ut ea qui autem nemo quidem. Velit iusto possimus eveniet omnis.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(30, 'Explicabo ut quia magni.', 'products/a.jpg', 3130, 'Doloribus voluptatem fugiat ipsum doloribus nulla aliquid ipsum. Sit minima hic dignissimos quo fugit natus. Qui rem officia magnam similique officiis dolore. Tempore dignissimos omnis debitis voluptas. Sequi totam occaecati dicta explicabo voluptas quae a doloribus. Sit non eos sit et similique.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(31, 'Nobis doloribus quaerat.', 'products/a.jpg', 7199, 'Est quidem explicabo sequi assumenda doloribus. Cumque consequatur possimus officiis aut. Doloremque explicabo aut omnis et. Dignissimos et quo dolores nam cum.', '2020-02-12 03:57:41', '2020-02-12 03:57:41'),
(32, 'Qui fuga amet voluptates.', 'products/a.jpg', 3211, 'Et et est molestiae harum explicabo natus eos et. Nesciunt dolorem enim soluta quibusdam et tempora. Voluptatibus ipsam est magnam ab cum autem culpa ut. Possimus fuga nulla autem. Perferendis dolorem sit dolorem culpa voluptas. Ducimus ut eius esse animi atque.', '2020-02-12 03:57:41', '2020-02-12 03:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$uO1m9bnRrS76K2jnwQICJekHqFAcN4RMhWt0Mskxllua5Hh.YJ8Qq', NULL, '2020-02-12 03:25:14', '2020-02-12 03:25:14'),
(2, 'john doe', 'johndoe@gmail.com', NULL, '$2y$10$.8J7DxiIiVUW8oxxuCbev.Sk2sWLRHgBSCpd5UfIATg6Z98W1U2GW', NULL, '2020-02-12 03:25:14', '2020-02-12 03:25:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
