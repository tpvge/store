-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 01 2022 г., 17:43
-- Версия сервера: 8.0.29
-- Версия PHP: 8.0.18
create database mydb;
use mydb;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mydb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `section_id` int NOT NULL,
  `heading` varchar(45) NOT NULL,
  `preview_img` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`section_id`, `heading`, `preview_img`, `description`) VALUES
(1, 'Одежда', 'kartin', 'Одежда'),
(2, 'Худи', 'kartin', 'Худи'),
(3, 'Майки', 'kartin', 'Майки'),
(4, 'Шорты', 'kartin', 'Шорты');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `image_id` int NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `ALT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`image_id`, `link`, `ALT`) VALUES
(1, 'https://s3-eu-west-1.amazonaws.com/megaimage/mega-lutbc127-15.jpg', 'image here'),
(2, 'https://cdn.lbtq.io/productImage/original/20181116/092/20181116092406_004763778_1.jpg', 'image '),
(3, 'https://belaya-tserkov.diamondelectric.ru/images/588/587649/maika_nike_1.jpg', 'Майка'),
(5, 'https://ae04.alicdn.com/kf/H3030f748cc3045a8948aff94dcc0d8fb4/-.jpg', 'Худи_доп');

-- --------------------------------------------------------

--
-- Структура таблицы `main_categories`
--

CREATE TABLE `main_categories` (
  `main_categories_id` int NOT NULL,
  `categories_section_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `main_categories`
--

INSERT INTO `main_categories` (`main_categories_id`, `categories_section_id`, `product_id`) VALUES
(1, 1, 13),
(2, 1, 14),
(3, 1, 15),
(4, 1, 16),
(5, 1, 17),
(6, 1, 18),
(7, 1, 19),
(8, 1, 20),
(9, 1, 21),
(10, 1, 22),
(11, 1, 23),
(12, 1, 24),
(13, 1, 25),
(14, 1, 26),
(15, 1, 27),
(16, 1, 28),
(17, 1, 29),
(18, 1, 30),
(19, 1, 31);

-- --------------------------------------------------------

--
-- Структура таблицы `main_product_image`
--

CREATE TABLE `main_product_image` (
  `main_product_image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `main_product_image`
--

INSERT INTO `main_product_image` (`main_product_image_id`, `product_id`, `image_id`) VALUES
(1, 13, 1),
(2, 14, 1),
(3, 15, 1),
(4, 16, 1),
(5, 17, 1),
(6, 18, 1),
(7, 19, 1),
(8, 20, 1),
(9, 21, 1),
(10, 22, 1),
(11, 23, 1),
(12, 24, 1),
(13, 25, 1),
(14, 26, 3),
(15, 27, 1),
(16, 28, 1),
(17, 29, 1),
(18, 30, 1),
(19, 31, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `heading` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `availability` tinyint NOT NULL,
  `full_price` double NOT NULL,
  `promo_price` double NOT NULL,
  `descripiton` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`product_id`, `heading`, `price`, `availability`, `full_price`, `promo_price`, `descripiton`) VALUES
(13, 'Худи1', 1000, 1, 1200, 1100, 'cool_hoodi'),
(14, 'Худи2', 1000, 1, 1200, 1100, 'cool_hoodi'),
(15, 'Худи3', 1000, 1, 1200, 1100, 'cool_hoodi'),
(16, 'Худи4', 1000, 0, 1200, 1100, 'cool_hoodi'),
(17, 'Худи5', 1000, 1, 1200, 1100, 'cool_hoodi'),
(18, 'Худи6', 1000, 0, 1200, 1100, 'cool_hoodi'),
(19, 'Худи7', 1000, 1, 1200, 1100, 'cool_hoodi'),
(20, 'Худи8', 1000, 0, 1200, 1100, 'cool_hoodi'),
(21, 'Худи9', 1000, 1, 1200, 1100, 'cool_hoodi'),
(22, 'Худи10', 1000, 1, 1200, 1100, 'cool_hoodi'),
(23, 'Худи11', 1000, 1, 1200, 1100, 'cool_hoodi'),
(24, 'Худи12', 1000, 1, 1200, 1100, 'cool_hoodi'),
(25, 'Худи13', 1000, 1, 1200, 1100, 'cool_hoodi'),
(26, 'Майка1', 500, 1, 600, 400, 'cool_t'),
(27, 'Худи 20', 1000, 1, 1550, 950, 'Описание худи'),
(28, 'Худи21', 1000, 1, 1550, 950, 'Описание худи'),
(29, 'Худи22', 1000, 1, 1550, 950, 'Описание худи'),
(30, 'Худи23', 1000, 1, 1550, 950, 'Описание худи'),
(31, 'Худи24', 1000, 1, 1550, 950, 'Описание худи');

-- --------------------------------------------------------

--
-- Структура таблицы `secondary_product_category`
--

CREATE TABLE `secondary_product_category` (
  `secondary_product_category_id` int NOT NULL,
  `categories_section_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `secondary_product_category`
--

INSERT INTO `secondary_product_category` (`secondary_product_category_id`, `categories_section_id`, `product_id`) VALUES
(1, 2, 13),
(2, 2, 14),
(3, 2, 15),
(4, 2, 16),
(5, 2, 17),
(6, 2, 18),
(7, 2, 19),
(8, 2, 20),
(9, 2, 21),
(10, 2, 22),
(11, 2, 23),
(12, 2, 24),
(13, 2, 25),
(15, 2, 27),
(17, 2, 28),
(18, 2, 30),
(19, 2, 31),
(20, 2, 29),
(14, 3, 26);

-- --------------------------------------------------------

--
-- Структура таблицы `secondary_product_image`
--

CREATE TABLE `secondary_product_image` (
  `secondary_product_image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `secondary_product_image`
--

INSERT INTO `secondary_product_image` (`secondary_product_image_id`, `product_id`, `image_id`) VALUES
(1, 13, 2),
(14, 13, 5),
(2, 14, 2),
(15, 14, 5),
(3, 15, 2),
(16, 15, 5),
(4, 16, 2),
(5, 17, 2),
(6, 18, 2),
(7, 19, 2),
(8, 20, 2),
(9, 21, 2),
(10, 22, 2),
(11, 23, 2),
(12, 24, 2),
(13, 25, 2),
(17, 27, 2),
(18, 27, 5),
(19, 28, 5),
(20, 28, 2),
(21, 29, 2),
(22, 29, 5),
(23, 30, 2),
(24, 30, 5),
(25, 31, 2),
(26, 31, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`section_id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Индексы таблицы `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`main_categories_id`,`categories_section_id`,`product_id`),
  ADD KEY `fk_main_categories_categories_idx` (`categories_section_id`),
  ADD KEY `fk_main_categories_product1_idx` (`product_id`);

--
-- Индексы таблицы `main_product_image`
--
ALTER TABLE `main_product_image`
  ADD PRIMARY KEY (`main_product_image_id`,`product_id`,`image_id`),
  ADD KEY `fk_main_product_image_product1_idx` (`product_id`),
  ADD KEY `fk_main_product_image_image1_idx` (`image_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `secondary_product_category`
--
ALTER TABLE `secondary_product_category`
  ADD PRIMARY KEY (`secondary_product_category_id`,`categories_section_id`,`product_id`),
  ADD KEY `fk_secondary_product_category_categories1_idx` (`categories_section_id`),
  ADD KEY `fk_secondary_product_category_product1_idx` (`product_id`);

--
-- Индексы таблицы `secondary_product_image`
--
ALTER TABLE `secondary_product_image`
  ADD PRIMARY KEY (`secondary_product_image_id`,`product_id`,`image_id`),
  ADD KEY `fk_secondary_product_image_product1_idx` (`product_id`),
  ADD KEY `fk_secondary_product_image_image1_idx` (`image_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `section_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `main_categories_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `main_product_image`
--
ALTER TABLE `main_product_image`
  MODIFY `main_product_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `secondary_product_category`
--
ALTER TABLE `secondary_product_category`
  MODIFY `secondary_product_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `secondary_product_image`
--
ALTER TABLE `secondary_product_image`
  MODIFY `secondary_product_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `main_categories`
--
ALTER TABLE `main_categories`
  ADD CONSTRAINT `fk_main_categories_categories` FOREIGN KEY (`categories_section_id`) REFERENCES `categories` (`section_id`),
  ADD CONSTRAINT `fk_main_categories_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ограничения внешнего ключа таблицы `main_product_image`
--
ALTER TABLE `main_product_image`
  ADD CONSTRAINT `fk_main_product_image_image1` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `fk_main_product_image_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ограничения внешнего ключа таблицы `secondary_product_category`
--
ALTER TABLE `secondary_product_category`
  ADD CONSTRAINT `fk_secondary_product_category_categories1` FOREIGN KEY (`categories_section_id`) REFERENCES `categories` (`section_id`),
  ADD CONSTRAINT `fk_secondary_product_category_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ограничения внешнего ключа таблицы `secondary_product_image`
--
ALTER TABLE `secondary_product_image`
  ADD CONSTRAINT `fk_secondary_product_image_image1` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `fk_secondary_product_image_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
