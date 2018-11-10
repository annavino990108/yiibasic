-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 10 2018 г., 21:06
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
-- База данных: `spo_ket`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, NULL, 'Главная', '', ''),
(2, 5, 'Образование', '', ''),
(3, 5, 'Расписание', '', ''),
(4, NULL, 'Основные сведения', NULL, NULL),
(5, NULL, 'Студенту', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'News/News9/a544be.jpg', 9, 1, 'News', '5bd825ed99-1', ''),
(2, 'News/News1/449125.jpg', 1, 1, 'News', '1a788bafce-1', ''),
(3, 'News/News14/241737.jpg', 14, 1, 'News', '59ea85596a-1', ''),
(4, 'News/News13/562fed.jpg', 13, 1, 'News', '3e6912a5ff-1', ''),
(5, 'News/News8/25e16e.jpg', 8, 1, 'News', '77fce7ec12-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1538595869),
('m140622_111540_create_image_table', 1539883903),
('m140622_111545_add_name_to_image_table', 1539883903),
('m181003_193559_create_users_table', 1538595944),
('m181003_193616_create_news_table', 1538595944),
('m181006_134530_create_images_table', 1538834080),
('m181006_141902_create_images_table', 1538836158),
('m181013_170857_create_user_table', 1539450632),
('m181017_161105_create_users_table', 1539792907);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `image`, `file`, `date`) VALUES
(1, '31 октября 2018 года сотрудники Многофункционального центра прикладных квалификаций приняли участие в вебинаре по вопросам профессионально-общественной аккредитации основных профессиональных образовательных программ', 'Вебинар предназначен для широкого круга заинтересованных лиц:\r\n- аккредитующих организаций; организаций, образовательные программы которых получили профессионально-общественную аккредитацию;\r\n- организаций, планирующих пройти профессионально-общественную аккредитацию;\r\n- представителей органов исполнительной власти в сфере образования и в сфере труда;\r\n- представителей советов по профессиональным квалификациям и др.', '<p>31 октября 2018 года сотрудники Многофункционального центра прикладных квалификаций приняли участие в вебинаре по вопросам профессионально-общественной аккредитации основных профессиональных образовательных программ, основных программ профессионального обучения, дополнительных профессиональных программ (организатор - Национальное агентство развития квалификаций).</p>\r\n\r\n<p>Вебинар предназначен для широкого круга заинтересованных лиц:<br />\r\n- аккредитующих организаций; организаций, образовательные программы которых получили профессионально-общественную аккредитацию;<br />\r\n- организаций, планирующих пройти профессионально-общественную аккредитацию;<br />\r\n- представителей органов исполнительной власти в сфере образования и в сфере труда;<br />\r\n- представителей советов по профессиональным квалификациям и др.</p>\r\n\r\n<p>На вебинаре рассматривались вопросы нормативного правового и методического обеспечения профессионально-общественной аккредитации, в том числе разработанные и утвержденные Национальным агентством развития квалификаций Рекомендации по организации и проведению профессионально-общественной аккредитации.</p>\r\n\r\n<p>С материалами вебинара можно познакомиться на сайте Национального агентства развития квалификаций&nbsp;<a href=\"http://www.nark.ru/\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\" title=\"www.nark.ru\">www.nark.ru</a></p>\r\n', '/upload/global/News/2018-11-08/Vebinar.jpg', '/upload/global/OpfSbdGnorY.jpg', '2018-11-08'),
(8, '20 октября 2018 года в Костромском энергетическом техникуме имени Ф.В.Чижова состоялось профориентационное мероприятие «Профессиональная суббота в отрасли ТЭК и ЖКХ».', 'Участниками стали 115 школьников из школ г. Костромы №20, 22, 35, 23, 17 и школы г. Галич, Никольское и Кузнецово.', '<p><span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">20 октября 2018 года в Костромском энергетическом техникуме имени Ф.В.Чижова состоялось профориентационное мероприятие &laquo;Профессиональная суббота в отрасли ТЭК и ЖКХ&raquo;. Участниками стали 115 школьников из школ г. Костромы №20, 22, 35, 23, 17 и школы г. Галич, Никольское и Кузнецово.</span><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Школьники познакомились с историей отрасли, узнали как работает современное предприятие, производящее электрическую и тепловую энергию. Проверили себя на готовность осваивать специальности энергетической отрасли. Стали участниками акции &laquo;Делай как я!&raquo;. Посетили экскурсии по отделениям техникума. Участники мероприятия высказали желание посетить профориентационные мероприятия техникума в дни школьных каникул.</span><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Приглашаем всех, кто неравнодушен к цифровому миру, 10 ноября на профессиональную субботу отрасли цифровых технологий.</span></p>\r\n', '/upload/global/News/2018-10-20/proforientTEK.jpg', '', '2018-10-20'),
(9, 'В рамках проекта «Карьера» реализуемого в техникуме 24 октября студенты 3-4 курсов специальности «Теплоснабжение и теплотехническое оборудование» ездили в экскурсионную поездку в город Углич в музей «Гидроэнергетики»', 'Рядом с Угличской ГЭС, в бывшем здании управления Волголага, разместился музей Гидроэнергетики России. На трех этажах в 11 залах не просто собрание экспонатов, повествующих об истории развития отрасли, а настоящий интерактивный центр, где нет табличек «Руками не трогать!», потому, что большинство экспонатов как раз для этого и предназначено.', '<p><span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">В рамках проекта &laquo;Карьера&raquo; реализуемого в техникуме 24 октября студенты 3-4 курсов специальности &laquo;Теплоснабжение и теплотехническое оборудование&raquo; ездили в экскурсионную поездку в город Углич в музей &laquo;Гидроэнергетики&raquo;. Рядом с Угличской ГЭС, в бывшем здании управления Волголага, разместился музей Гидроэнергетики России. На трех этажах в 11 залах не просто собрание экспонатов, повествующих об истории развития отрасли, а настоящий интерактивный центр, где нет табличек &laquo;Руками не трогать!&raquo;, потому, что большинство экспонатов как раз для этого и предназначено.</span><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Экспозиция музея повествует об этапах развития гидроэнергетики в СССР и России, о выдающихся людях профессии, а также непосредственно о российских ГЭС. Также здесь представлены экспозиции, посвященные воде, перспективным планам развития гидроэнергетики России. Не случайно музей входит в пятерку лучших региональных музеев России. Студенты отметили для себя, что после окончания техникума могут работать не только в кительных, ТЭЦ, но и на гидроэлектростанциях.</span></p>\r\n', '/upload/global/News/2018-10-24/yglich_myzei.jpg', '', '2018-10-24');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `category_id`, `content`) VALUES
(1, 'Образование', 2, '<p><img alt=\"\" src=\"/upload/global/OpfSbdGnorY.jpg\" style=\"height:192px; width:256px\" /></p>\r\n\r\n<p>Образование</p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `auth_key`, `role`, `img`, `email`) VALUES
(1, 'Анна Виноградова', 'admin', '$2y$13$KMBxgkcssPHngdLMTs5DJ.tfapqqmDQXBZvnfhuwO8c1ISpLHefR6', 'rBXGY1A7_zEW0dtUqcm5xDh6JE1Qi78H', '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
