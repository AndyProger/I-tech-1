-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 14 2022 г., 11:22
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `computer_organization`
--

-- --------------------------------------------------------

--
-- Структура таблицы `computer`
--

CREATE TABLE `computer` (
  `id_computer` int(10) UNSIGNED NOT NULL,
  `netname` varchar(30) DEFAULT NULL,
  `motherboard` varchar(30) DEFAULT NULL,
  `ram_capacity` int(10) DEFAULT NULL,
  `hdd_capacity` int(10) DEFAULT NULL,
  `monitor` varchar(30) DEFAULT NULL,
  `vendor` varchar(30) DEFAULT NULL,
  `guarantee` date DEFAULT NULL,
  `fid_processor` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `computer`
--

INSERT INTO `computer` (`id_computer`, `netname`, `motherboard`, `ram_capacity`, `hdd_capacity`, `monitor`, `vendor`, `guarantee`, `fid_processor`) VALUES
(1, 'name1', 'AMD WRX80', 4, 500000, 'Acer', 'vendor1', '2023-01-01', 1),
(2, 'name2', 'Intel 600 Series', 8, 1000000, 'LG', 'vendor2', '2015-01-01', 10),
(3, 'name3', 'AMD X470/X370', 4, 250000, 'Samsung', 'vendor3', '2012-01-01', 4),
(4, 'name4', 'Intel 400 Series', 4, 100000, 'Acer', 'vendor1', '2017-01-01', 4),
(5, 'name5', 'Intel 600 Series', 16, 300000, 'Dell', 'vendor1', '2022-12-01', 5),
(6, 'name6', 'AMD WRX80', 4, 400000, 'LG', 'vendor2', '2022-08-12', 6),
(7, 'name7', 'Intel 400 Series', 32, 500000, 'Acer', 'vendor3', '2025-01-01', 1),
(8, 'name8', 'AMD X470/X370', 32, 500000, 'Samsung', 'vendor2', '2012-01-01', 1),
(9, 'name9', 'Intel 600 Series', 16, 1200000, 'LG', 'vendor1', '2012-01-01', 2),
(10, 'name10', 'AMD WRX80', 8, 3500000, 'Dell', 'vendor1', '2030-01-01', 10),
(11, 'name11', 'Intel 9 Series', 8, 1200000, 'Acer', 'vendor4', '2007-01-01', 10),
(12, 'name12', 'Intel 600 Series', 8, 3432340, 'Samsung', 'vendor4', '2002-01-01', 9),
(13, 'name13', 'Intel 400 Series', 4, 900000, 'Dell', 'vendor3', '2023-01-01', 8),
(14, 'name14', 'AMD X470/X370', 4, 5800000, 'Acer', 'vendor3', '2025-01-01', 1),
(15, 'name15', 'AMD WRX80', 32, 700000, 'Samsung', 'vendor1', '2012-01-01', 4),
(16, 'name16', 'AMD X570', 4, 200000, 'LG', 'vendor5', '2002-01-01', 6),
(17, 'name17', 'Intel 600 Series', 32, 400000, 'Acer', 'vendor2', '2023-01-01', 9),
(18, 'name18', 'AMD WRX80', 8, 1200000, 'Dell', 'vendor1', '2020-03-04', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `computer_software`
--

CREATE TABLE `computer_software` (
  `fid_computer` int(10) UNSIGNED DEFAULT NULL,
  `fid_software` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `computer_software`
--

INSERT INTO `computer_software` (`fid_computer`, `fid_software`) VALUES
(1, 1),
(1, 10),
(3, 2),
(4, 5),
(5, 3),
(1, 3),
(17, 6),
(14, 7),
(12, 8),
(9, 1),
(16, 1),
(1, 10),
(2, 10),
(8, 5),
(7, 2),
(9, 10),
(4, 8),
(5, 9),
(17, 9),
(13, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `processor`
--

CREATE TABLE `processor` (
  `id_processor` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `frequency` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `processor`
--

INSERT INTO `processor` (`id_processor`, `name`, `frequency`) VALUES
(1, 'Intel Core i3', 2.24),
(2, 'Intel Core i5', 3.75),
(3, 'Intel Core i7', 4.25),
(4, 'Intel Xeon E3', 2.05),
(5, 'Intel Pentium', 1.99),
(6, 'Intel Celeron', 3),
(7, 'AMD Ryzen 3', 2.75),
(8, 'AMD Ryzen 5', 3.75),
(9, 'AMD Ryzen 7', 4.75),
(10, 'AMD Athlon', 2.85);

-- --------------------------------------------------------

--
-- Структура таблицы `software`
--

CREATE TABLE `software` (
  `id_software` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `software`
--

INSERT INTO `software` (`id_software`, `name`) VALUES
(1, 'Visual Studio'),
(2, 'JetBrains Rider'),
(3, 'Unity'),
(4, 'Visual Studio Code'),
(5, 'Sourcetree'),
(6, 'Jira'),
(7, 'Photoshop'),
(8, 'Blender'),
(9, 'Eclipse'),
(10, 'Microsoft Word');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`id_computer`),
  ADD KEY `fid_processor` (`fid_processor`);

--
-- Индексы таблицы `computer_software`
--
ALTER TABLE `computer_software`
  ADD KEY `fid_computer` (`fid_computer`),
  ADD KEY `fid_software` (`fid_software`);

--
-- Индексы таблицы `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`id_processor`);

--
-- Индексы таблицы `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id_software`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `computer`
--
ALTER TABLE `computer`
  MODIFY `id_computer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `processor`
--
ALTER TABLE `processor`
  MODIFY `id_processor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `software`
--
ALTER TABLE `software`
  MODIFY `id_software` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `computer`
--
ALTER TABLE `computer`
  ADD CONSTRAINT `computer_ibfk_1` FOREIGN KEY (`fid_processor`) REFERENCES `processor` (`id_processor`);

--
-- Ограничения внешнего ключа таблицы `computer_software`
--
ALTER TABLE `computer_software`
  ADD CONSTRAINT `computer_software_ibfk_1` FOREIGN KEY (`fid_computer`) REFERENCES `computer` (`id_computer`),
  ADD CONSTRAINT `computer_software_ibfk_2` FOREIGN KEY (`fid_software`) REFERENCES `software` (`id_software`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
