-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 05 2018 г., 20:22
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD04-project-gurov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_attempts` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `lastname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_attempts`) VALUES
(1, 'gogotheog@gmail.com', '$2y$10$F2p/jfSnpSjOIgpVrOst/OVfGeNcSUtfWSBj.ZHbyBq.dnityArke', 'admin', 'Олег', 'Гуров', 'Москва', 'Россия', '1339572901.jpg', '50-1339572901.jpg', 'jGeHcKnPDdw2LJY', 3),
(9, 'oleg@gmail.com', '$2y$10$8exghMT4laB9Cyl3nxzJHeHUuF0I5.cpQhClNdDby5.TjjEITr0Ou', 'user', 'Тест', 'Тестов', 'Вашингтон', 'Америка', '1007420922.jpg', '50-1007420922.jpg', 'SdTChvsLHbUGelt', 3),
(15, 'admin@gmail.com', '$2y$10$0bdvMmii.SDk5luOq0b2Tu8hwjgJ.gESQrVy5j6ysMvlurw2YNHb6', 'admin', 'Admin', '2', 'Москва', 'Россия', NULL, NULL, NULL, NULL),
(16, 'user@gmail.com', '$2y$10$qc.js3uaZSMQU3QwHsdbneyxet/mRt38w04wobm52DeEnciOmmqme', 'user', 'User', '2', 'Тбилиси', 'СССР', NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
