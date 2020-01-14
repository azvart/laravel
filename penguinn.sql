-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Ноя 25 2019 г., 21:13
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `penguinn`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Mikrovolnovki', NULL, NULL),
(8, 'Holodilniki', NULL, NULL),
(10, 'sgfs', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `smallbody` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `smallbody`, `url`, `showhide`, `created_at`, `updated_at`) VALUES
(1, 'Первая статья', 'Тут представлена первая статья,наслаждайтесь\r\n', 'first', 'firstarticle', 'show', NULL, NULL),
(2, 'Добро пожаловать на вторую статью ', 'Введите вторую статью:\r\n<br>\r\n<input type=\'text\'/>', '', 'secondarticle', 'show', NULL, NULL),
(3, 'А это третья статья', 'Я не знаю что тут писать поэтому я попытаюсь скинуть картинку пингвина.\r\n<img src=\"data:image/jpeg;base64,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\">', '', 'thirdarticle', 'show', NULL, NULL),
(4, 'сайт-статья', '<a href=\'../mynewapp/index.html\'>Перейди сюда</a>', '', 'site', 'show', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_28_164426_create_maintexts_table', 2),
(6, '2019_11_06_175619_create_products_table', 3),
(7, '2019_11_06_175551_create_categories_table', 4);

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
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `small_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showhide` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `category_id` int(11) DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `body`, `small_body`, `showhide`, `category_id`, `picture`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vdsvdsabvsbsbs', 'safafasf', NULL, 'avsavsavca', '0', NULL, '', 1, 'new', '2019-11-18 17:23:05', '2019-11-18 17:23:05'),
(2, 'savca', 'dsvav', NULL, 'avdsav', '0', NULL, '', 1, 'new', '2019-11-18 17:23:46', '2019-11-18 17:23:46'),
(3, 'Какой-то товар', '200', NULL, 'Описание', '0', NULL, '19_11_25_07_31_45.jpg', 1, 'new', '2019-11-25 16:31:46', '2019-11-25 16:31:46'),
(4, 'Товар номер 2', '400$', NULL, 'Описание', '0', NULL, '19_11_25_08_24_31.jpg', 1, 'new', '2019-11-25 17:24:31', '2019-11-25 17:24:31'),
(5, 'Какой-то товар', '500', NULL, 'Описание 3', '0', NULL, '19_11_25_08_26_43.jpg', 1, 'new', '2019-11-25 17:26:43', '2019-11-25 17:26:43'),
(6, 'vv', 'vvvvv', NULL, 'Описание', '0', 8, '', 1, 'new', '2019-11-25 17:29:20', '2019-11-25 17:29:20');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'peng', 'azvart1994@gmail.com', NULL, '$2y$10$uYlr9DCXPMmqE4fRbDNvlue8qmHDb0G3.jgDJUR4hLnoIWekR5dAu', 'gge8tJWopF4vN9olQOKzeiyP0zQQ6Ie84KRc723CunuoReHPw5rHdI3UGNgo', '2019-10-21 13:41:32', '2019-10-21 13:41:32');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
