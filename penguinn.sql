-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Янв 14 2020 г., 20:44
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
-- Структура таблицы `categori`
--

CREATE TABLE `categori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `categori`
--

INSERT INTO `categori` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Mikrovolnovki', NULL, NULL),
(8, 'Holodilniki', NULL, NULL),
(10, 'sgfs', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-01-14 17:06:42', '2020-01-14 17:06:42');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Пароль', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Токен восстановления', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Аватар', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Роль', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Отображаемое имя', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Роль', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Родитель', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Сортировка', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug (ЧПУ)', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Автор', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Категория', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Отрывок', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Содержимое', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Изображение Статьи', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Название', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Рекомендовано', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Автор', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Отрывок', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Содержимое', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Дата создания', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Дата обновления', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Изображение Страницы', 0, 1, 1, 1, 1, 1, NULL, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Пользователь', 'Пользователи', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-01-14 17:04:11', '2020-01-14 17:04:11'),
(2, 'menus', 'menus', 'Меню', 'Меню', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-14 17:04:11', '2020-01-14 17:04:11'),
(3, 'roles', 'roles', 'Роль', 'Роли', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(4, 'categories', 'categories', 'Категория', 'Категории', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-01-14 17:06:41', '2020-01-14 17:06:41'),
(5, 'posts', 'posts', 'Статья', 'Статьи', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(6, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-01-14 17:06:42', '2020-01-14 17:06:42');

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
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-14 17:04:12', '2020-01-14 17:04:12');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель управления', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.dashboard', NULL),
(2, 1, 'Медиа', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.media.index', NULL),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.users.index', NULL),
(4, 1, 'Роли', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.roles.index', NULL),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-01-14 17:04:12', '2020-01-14 17:04:12', NULL, NULL),
(6, 1, 'Конструктор Меню', '', '_self', 'voyager-list', NULL, 5, 10, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.menus.index', NULL),
(7, 1, 'База данных', '', '_self', 'voyager-data', NULL, 5, 11, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-01-14 17:04:12', '2020-01-14 17:04:12', 'voyager.settings.index', NULL),
(11, 1, 'Категории', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-01-14 17:06:41', '2020-01-14 17:06:41', 'voyager.categories.index', NULL),
(12, 1, 'Статьи', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-01-14 17:06:42', '2020-01-14 17:06:42', 'voyager.posts.index', NULL),
(13, 1, 'Страницы', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-01-14 17:06:42', '2020-01-14 17:06:42', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, NULL, 13, '2020-01-14 17:06:42', '2020-01-14 17:06:42', 'voyager.hooks', NULL);

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
(7, '2019_11_06_175551_create_categories_table', 4),
(8, '2016_01_01_000000_add_voyager_user_fields', 5),
(9, '2016_01_01_000000_create_data_types_table', 5),
(10, '2016_05_19_173453_create_menu_table', 5),
(11, '2016_10_21_190000_create_roles_table', 5),
(12, '2016_10_21_190000_create_settings_table', 5),
(13, '2016_11_30_135954_create_permission_table', 5),
(14, '2016_11_30_141208_create_permission_role_table', 5),
(15, '2016_12_26_201236_data_types__add__server_side', 5),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 5),
(17, '2017_01_14_005015_create_translations_table', 5),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 5),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 5),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 5),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 5),
(22, '2017_08_05_000000_add_group_to_settings_table', 5),
(23, '2017_11_26_013050_add_user_role_relationship', 5),
(24, '2017_11_26_015000_create_user_roles_table', 5),
(25, '2018_03_11_000000_add_user_settings', 5),
(26, '2018_03_14_000000_add_details_to_data_types_table', 5),
(27, '2018_03_16_000000_make_settings_value_nullable', 5),
(28, '2016_01_01_000000_create_pages_table', 6),
(29, '2016_01_01_000000_create_posts_table', 6),
(30, '2016_02_15_204651_create_categories_table', 7),
(31, '2017_04_11_000000_alter_post_nullable_fields_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-01-14 17:06:42', '2020-01-14 17:06:42');

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
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(2, 'browse_bread', NULL, '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(3, 'browse_database', NULL, '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(4, 'browse_media', NULL, '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(5, 'browse_compass', NULL, '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(6, 'browse_menus', 'menus', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(7, 'read_menus', 'menus', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(8, 'edit_menus', 'menus', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(9, 'add_menus', 'menus', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(10, 'delete_menus', 'menus', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(11, 'browse_roles', 'roles', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(12, 'read_roles', 'roles', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(13, 'edit_roles', 'roles', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(14, 'add_roles', 'roles', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(15, 'delete_roles', 'roles', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(16, 'browse_users', 'users', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(17, 'read_users', 'users', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(18, 'edit_users', 'users', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(19, 'add_users', 'users', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(20, 'delete_users', 'users', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(21, 'browse_settings', 'settings', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(22, 'read_settings', 'settings', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(23, 'edit_settings', 'settings', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(24, 'add_settings', 'settings', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(25, 'delete_settings', 'settings', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(26, 'browse_categories', 'categories', '2020-01-14 17:06:41', '2020-01-14 17:06:41'),
(27, 'read_categories', 'categories', '2020-01-14 17:06:41', '2020-01-14 17:06:41'),
(28, 'edit_categories', 'categories', '2020-01-14 17:06:41', '2020-01-14 17:06:41'),
(29, 'add_categories', 'categories', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(30, 'delete_categories', 'categories', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(31, 'browse_posts', 'posts', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(32, 'read_posts', 'posts', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(33, 'edit_posts', 'posts', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(34, 'add_posts', 'posts', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(35, 'delete_posts', 'posts', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(36, 'browse_pages', 'pages', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(37, 'read_pages', 'pages', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(38, 'edit_pages', 'pages', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(39, 'add_pages', 'pages', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(40, 'delete_pages', 'pages', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(41, 'browse_hooks', NULL, '2020-01-14 17:06:42', '2020-01-14 17:06:42');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-14 17:06:42', '2020-01-14 17:06:42');

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
(6, 'vv', 'vvvvv', NULL, 'Описание', '0', 8, '', 1, 'new', '2019-11-25 17:29:20', '2019-11-25 17:29:20'),
(7, 'Холодильник', '500', NULL, 'Белый', '0', 8, '19_12_12_07_26_25.jpg', 1, 'new', '2019-12-12 16:26:25', '2019-12-12 16:26:25'),
(8, 'Микроволновка', '400', NULL, 'Клевая', '0', 7, '19_12_19_08_18_38.jpg', 1, 'new', '2019-12-19 17:18:38', '2019-12-19 17:18:38'),
(9, 'Микроволновка', '300', NULL, 'Так себе', '0', 7, '19_12_19_08_20_05.jpg', 1, 'new', '2019-12-19 17:20:05', '2019-12-19 17:20:05'),
(10, 'Микроволновка(странная)', '200', NULL, 'Клевая', '0', 7, '19_12_19_08_29_15.jpg', 1, 'new', '2019-12-19 17:29:15', '2019-12-19 17:29:15'),
(11, 'Микроволновка(странная)', '100', '<p>Странная, греет только надежды, кормит завтраками, может послать.</p>', 'Клевая', '0', 7, '19_12_19_08_37_11.jpg', 1, 'new', '2019-12-19 17:37:11', '2019-12-19 17:37:11');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Администратор', '2020-01-14 17:04:12', '2020-01-14 17:04:12'),
(2, 'user', 'Обычный Пользователь', '2020-01-14 17:04:12', '2020-01-14 17:04:12');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Название Сайта', 'Название Сайта', '', 'text', 1, 'Site'),
(2, 'site.description', 'Описание Сайта', 'Описание Сайта', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Логотип Сайта', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Фоновое Изображение для Админки', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Название Админки', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Описание Админки', 'Добро пожаловать в Voyager. Пропавшую Админку для Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Загрузчик Админки', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Иконка Админки', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (используется для панели администратора)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-01-14 17:06:42', '2020-01-14 17:06:42'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-01-14 17:06:42', '2020-01-14 17:06:42');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'peng', 'azvart1994@gmail.com', 'users/default.png', NULL, '$2y$10$uYlr9DCXPMmqE4fRbDNvlue8qmHDb0G3.jgDJUR4hLnoIWekR5dAu', 'gge8tJWopF4vN9olQOKzeiyP0zQQ6Ie84KRc723CunuoReHPw5rHdI3UGNgo', NULL, '2019-10-21 13:41:32', '2019-10-21 13:41:32');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

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
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categori`
--
ALTER TABLE `categori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
