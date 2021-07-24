-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 24 2021 г., 15:14
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `red-promo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `favorits`
--

CREATE TABLE `favorits` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `news_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `favorits`
--

INSERT INTO `favorits` (`id`, `user_id`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 2, 4, NULL, NULL),
(2, 2, 4, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(98, '2014_10_12_000000_create_users_table', 1),
(99, '2014_10_12_100000_create_password_resets_table', 1),
(100, '2019_08_19_000000_create_failed_jobs_table', 1),
(101, '2021_07_22_151841_create_news_table', 1),
(102, '2021_07_23_100644_create_tags_table', 1),
(103, '2021_07_24_041421_create_favorits_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_favorit` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `description`, `author`, `tag`, `image`, `is_favorit`, `created_at`, `updated_at`) VALUES
(1, 'Voluptates ipsam animi consectetur repellendus.', 'Lizard in head downwards, and the pattern on their hands and feet, to make SOME change in my size; and as Alice could see, when she heard a little glass table. \'Now, I\'ll manage better this time,\'.', 'Voluptatibus qui rerum nemo sunt praesentium. Facere omnis consectetur aut iusto fugit. Sunt doloremque et sint illo qui.', 'Horacio Schamberger', 'Rerum.', 'nyan-cat.jpg', 0, NULL, NULL),
(2, 'Natus sapiente reiciendis sed ullam.', 'VERY deeply with a little nervous about it while the rest of my life.\' \'You are old,\' said the Queen. \'I haven\'t the slightest idea,\' said the Hatter. \'Does YOUR watch tell you my.', 'Exercitationem et pariatur et sint ut sequi. Libero omnis sed iste id quae non sed. Aut quod sed temporibus vel expedita.', 'Lexus Gleichner IV', 'Vel.', 'S1200.jpg', 0, NULL, NULL),
(3, 'Molestiae quam id eveniet qui repellendus.', 'King, \'that only makes the world you fly, Like a tea-tray in the same side of WHAT? The other side of WHAT?\' thought Alice; \'I might as well as she could not stand, and she very good-naturedly began.', 'Dolorem et quas molestiae facilis. Nostrum a consequatur officia nam quia. Sit labore facere quaerat. Nihil animi officia est laborum.', 'Alycia Monahan', 'Qui.', 'caty.jpg', 0, NULL, NULL),
(4, 'Esse et incidunt sunt eveniet quibusdam culpa.', 'William the Conqueror.\' (For, with all their simple sorrows, and find a pleasure in all directions, \'just like a mouse, That he met in the distance. \'Come on!\' and ran till she too began dreaming.', 'Eos aliquam tempore soluta minima deserunt. Sint quibusdam praesentium architecto ut ut officia.', 'Carli Cummerata', 'Et.', 'S1200.jpg', 1, NULL, NULL),
(5, 'Assumenda et et commodi rerum.', 'Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to wash the things between whiles.\' \'Then you may stand down,\' continued the Hatter, it woke up again with a great hurry.', 'Eligendi ut dolorem ab dolor tempore. Sunt dignissimos qui vitae odit.', 'Alexandro Bogan', 'Illum.', 'S1200.jpg', 0, NULL, NULL),
(6, 'Quia quas quidem quasi inventore et esse consequatur.', 'Her first idea was that she looked down at her rather inquisitively, and seemed to be done, I wonder?\' Alice guessed in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on.', 'Qui id recusandae provident laudantium. Laboriosam quia explicabo beatae impedit dolorem ipsam. Eum ut voluptatem non qui ea consequatur qui.', 'Vella Kerluke', 'Optio.', 'S1200.jpg', 0, NULL, NULL),
(7, 'Aut quos consequatur dolorum.', 'Bill! I wouldn\'t be so proud as all that.\' \'With extras?\' asked the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon remarked: \'because they lessen from day to such.', 'Placeat dignissimos ab est et autem ex qui. Recusandae facilis aut sequi porro ab odio.', 'Lennie Weber', 'Et.', 'S1200.jpg', 0, NULL, NULL),
(8, 'Rerum aut laudantium at tenetur.', 'She generally gave herself very good height indeed!\' said the Cat, and vanished. Alice was too dark to see that the poor animal\'s feelings. \'I quite agree with you,\' said the Cat. \'Do you take me.', 'Libero vel sit sit enim deserunt voluptates. Praesentium omnis harum dolorem et ea nihil non. Eum qui incidunt illum sed et.', 'Liliana Eichmann', 'Iusto.', 'S1200.jpg', 1, NULL, NULL),
(9, 'Non nesciunt aut expedita distinctio iste et sapiente.', 'ONE with such a capital one for catching mice--oh, I beg your pardon,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she did not come the same as the door of which was a most.', 'Ratione iste ullam voluptatem praesentium magni. Architecto fugit mollitia expedita quod. Et quis ullam velit eum aut. Sed quo velit eveniet quaerat.', 'Stephon Gutmann MD', 'Dolor.', 'S1200.jpg', 1, NULL, NULL),
(10, 'Fuga quas facilis odit id iure et incidunt voluptatem.', 'Bill! I wouldn\'t say anything about it, and fortunately was just possible it had gone. \'Well! I\'ve often seen them at last, more calmly, though still sobbing a little timidly, for she thought, \'till.', 'Vitae et saepe architecto illum beatae et ut. In qui et voluptatem. Nesciunt eum consequatur quisquam et distinctio.', 'Miss Gwendolyn Feil', 'Et.', 'S1200.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `news_tags`
--

CREATE TABLE `news_tags` (
  `news_id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `tagname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '12345678', NULL, NULL, NULL),
(2, 'admin', 'admin@admin.com', NULL, '$2y$10$LTumjud0kXB.Z4M6ZsPk..jr2PEAyjV8yzz2w0M8wX2EyAHHHtWTu', NULL, '2021-07-23 22:00:02', '2021-07-23 22:00:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `favorits`
--
ALTER TABLE `favorits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorits_id_index` (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id_index` (`id`);

--
-- Индексы таблицы `news_tags`
--
ALTER TABLE `news_tags`
  ADD KEY `news_tags_news_id_index` (`news_id`),
  ADD KEY `news_tags_tag_id_index` (`tag_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_id_index` (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `favorits`
--
ALTER TABLE `favorits`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news_tags`
--
ALTER TABLE `news_tags`
  ADD CONSTRAINT `news_tags_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
