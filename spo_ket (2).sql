-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 17 2018 г., 23:25
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
(1, NULL, 'О техникуме', '', ''),
(2, 5, 'Приемная комиссия', '', ''),
(3, 5, 'Расписание', '', ''),
(4, NULL, 'Основные сведения', NULL, NULL),
(5, NULL, 'Абитуриенту', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `groupclass`
--

CREATE TABLE `groupclass` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groupclass`
--

INSERT INTO `groupclass` (`id`, `name`) VALUES
(1, '1-1'),
(2, '1-2');

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
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`id`, `name`) VALUES
(1, 'Иностранный язык');

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
(1, 'Приемная комиссия', 2, '<p style=\"text-align:justify\">Приемная комиссия техникума начнет работу с&nbsp;<strong>5 июня</strong>. С понедельника по пятницу 8.30 - 16.00, суббота 8.30-12.00 (воскресенье выходной) вам помогут правильно написать&nbsp;<a href=\"http://www.spo-ket.ru/sites/default/files/Zayavlenie_priem_2017.pdf\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\"><span style=\"color:#000000\">заявлени</span></a>е, расскажут о специальностях техникума, предоставят информацию об организации образовательного процесса, познакомят с условиями обучения в техникуме <span style=\"color:#000000\">(</span><a href=\"http://www.spo-ket.ru/sites/default/files/Pologenie_priemnaya_komissiya._2018.doc\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\"><span style=\"color:#000000\">Положение о приёмной комиссии).</span></a></p>\r\n\r\n<table style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; text-align:justify; width:752.8px\">\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Вместе с заявлением о поступлении в техникум абитуриент должен предоставить в приёмную комиссию следующие документы:</span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\">Оригинал или ксерокопию паспорта (документа, удостоверяющего личность и гражданство)</li>\r\n	<li style=\"text-align:justify\">Оригинал или ксерокопию аттестата (другого документа гос.образца об образовании)</li>\r\n	<li style=\"text-align:justify\">4 фотографии размером 3 х 4 см</li>\r\n	<li style=\"text-align:justify\">Медицинская справка, установленной формы 086У</li>\r\n	<li style=\"text-align:justify\">СНИЛС</li>\r\n	<li style=\"text-align:justify\">Медицинская полис\r\n	<p><strong>ВАЖНО!</strong></p>\r\n\r\n	<p>В зависимости от выбранной специальности и формы обучения, перечень документов для поступления в техникум может дополняться:</p>\r\n	</li>\r\n	<li style=\"text-align:justify\">Справка с места работы или копия трудовой книжки (для заочного отделения)</li>\r\n	<li style=\"text-align:justify\">Другие документы могут быть представлены поступающим, если он претендует на льготы, установленные законодательством РФ</li>\r\n	<li style=\"text-align:justify\">При поступлении на специальность &laquo;Электрические станции, сети и системы&raquo; поступающие проходят обязательные медицинские осмотры (обследования) /согласно Постановления Правительства РФ от 14 августа 2013 г. №697/.</li>\r\n</ol>\r\n\r\n<table style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; text-align:justify; width:752.8px\">\r\n</table>\r\n\r\n<p style=\"text-align:justify\">Вы можете получить консультацию по интересующим вас вопросам по телефону приемной комиссии (4942) 31-20-24 .</p>\r\n\r\n<p style=\"text-align:justify\">Или посетить наше учебное заведение по адресу: г.Кострома, проспект Текстильщиков, 73.</p>\r\n\r\n<p style=\"text-align:justify\">Техникум готов встретить своих новых студентов просторными кабинетами, современными аудиториями и лабораториями, оборудованным спортивным залом, величественными актовыми залами; познакомить с вековой историей техникума в музее, провести по залам библиотеки, рассказать о славных чижовских традициях.</p>\r\n\r\n<p style=\"text-align:justify\">Техникум ведет&nbsp;<strong>обучение по&nbsp;<a href=\"http://www.spo-ket.ru/node/1596\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">специальностям</a></strong>, входящим в&nbsp;<strong>список стратегических</strong>. Абитуриенты имеют возможность обучаться&nbsp;<a href=\"http://www.spo-ket.ru/sites/default/files/cp1.PDF\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">по целевому направлению</a>&nbsp;от предприятий, заключив трехсторонний договор,&nbsp;<strong>за счет бюджетных средств</strong>.</p>\r\n\r\n<p style=\"text-align:justify\">Вся&nbsp;<strong>деятельность</strong>&nbsp;техникума&nbsp;<strong>лицензирована и аккредитована</strong>.&nbsp;<strong>Студенты-юноши</strong>, поступившие в техникум&nbsp;<strong>на базе 9 классов</strong>, призываются&nbsp;<strong>в ряды РА после получения диплома</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>Диплом государственного образца</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong>Делайте правильный выбор!</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong>Мы готовим кадры для российской энергетики!</strong></p>\r\n'),
(2, 'О техникуме', 1, '<p>Текст...</p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `timetable`
--

CREATE TABLE `timetable` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `lesson1` varchar(255) DEFAULT NULL,
  `cab1` int(10) DEFAULT NULL,
  `lesson2` varchar(255) DEFAULT NULL,
  `cab2` int(10) DEFAULT NULL,
  `lesson3` varchar(255) DEFAULT NULL,
  `cab3` int(10) DEFAULT NULL,
  `lesson4` varchar(255) DEFAULT NULL,
  `cab4` int(10) DEFAULT NULL,
  `lesson5` varchar(255) DEFAULT NULL,
  `cab5` int(10) DEFAULT NULL,
  `lesson6` varchar(255) DEFAULT NULL,
  `cab6` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `timetable`
--

INSERT INTO `timetable` (`id`, `date`, `groupname`, `lesson1`, `cab1`, `lesson2`, `cab2`, `lesson3`, `cab3`, `lesson4`, `cab4`, `lesson5`, `cab5`, `lesson6`, `cab6`) VALUES
(1, '2012-12-12', '1-1', 'Иностранный язык', 11, 'Иностранный язык', 1, 'Иностранный язык', 1, 'Иностранный язык', 1, 'Иностранный язык', 1, 'Иностранный язык', 1),
(2, '2012-12-12', '1-1', 'Иностранный язык', 2, 'Иностранный язык', 2, 'Иностранный язык', 2, 'Иностранный язык', 2, 'Иностранный язык', 2, 'Иностранный язык', 2),
(3, '2020-12-12', '1-2', 'Иностранный язык', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL);

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
(1, 'Анна Виноградова', 'admin', '$2y$13$KMBxgkcssPHngdLMTs5DJ.tfapqqmDQXBZvnfhuwO8c1ISpLHefR6', 'bGBkFAYXsR2zMwYOEAXYYqyAaatJ30Ti', '', '/upload/global/Users/user.png', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `groupclass`
--
ALTER TABLE `groupclass`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
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
-- Индексы таблицы `timetable`
--
ALTER TABLE `timetable`
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
-- AUTO_INCREMENT для таблицы `groupclass`
--
ALTER TABLE `groupclass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
