-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 27 2018 г., 13:45
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
(2, 1, 'Отделения', '', ''),
(3, 2, 'ЭТО', '', ''),
(4, NULL, 'Основные сведения', NULL, NULL),
(6, 2, 'ХТО', '', ''),
(7, 2, 'ТТО', '', ''),
(8, NULL, 'Абитуриенту', '', ''),
(9, NULL, 'Студенту', '', ''),
(10, NULL, 'Центр развития карьеры', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `groupclass`
--

CREATE TABLE `groupclass` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `otd_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groupclass`
--

INSERT INTO `groupclass` (`id`, `name`, `otd_id`) VALUES
(1, '1-1', '4'),
(2, '1-2', '1 курс'),
(3, '1-3', '1 курс'),
(4, '1-4', '1 курс');

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
  `name` varchar(255) NOT NULL,
  `otd1` varchar(50) DEFAULT NULL,
  `otd2` bit(1) DEFAULT NULL,
  `otd3` bit(1) DEFAULT NULL,
  `otd4` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `teg` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `public` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `teg`, `description`, `content`, `image`, `file`, `date`, `public`) VALUES
(1, '31 октября 2018 года сотрудники Многофункционального центра прикладных квалификаций приняли участие в вебинаре по вопросам профессионально-общественной аккредитации основных профессиональных образовательных программ', 'Вебинар', 'Вебинар предназначен для широкого круга заинтересованных лиц:\r\n- аккредитующих организаций; организаций, образовательные программы которых получили профессионально-общественную аккредитацию;\r\n- организаций, планирующих пройти профессионально-общественную аккредитацию;\r\n- представителей органов исполнительной власти в сфере образования и в сфере труда;\r\n- представителей советов по профессиональным квалификациям и др.', '<p>31 октября 2018 года сотрудники Многофункционального центра прикладных квалификаций приняли участие в вебинаре по вопросам профессионально-общественной аккредитации основных профессиональных образовательных программ, основных программ профессионального обучения, дополнительных профессиональных программ (организатор - Национальное агентство развития квалификаций).</p>\r\n\r\n<p>Вебинар предназначен для широкого круга заинтересованных лиц:<br />\r\n- аккредитующих организаций; организаций, образовательные программы которых получили профессионально-общественную аккредитацию;<br />\r\n- организаций, планирующих пройти профессионально-общественную аккредитацию;<br />\r\n- представителей органов исполнительной власти в сфере образования и в сфере труда;<br />\r\n- представителей советов по профессиональным квалификациям и др.</p>\r\n\r\n<p>На вебинаре рассматривались вопросы нормативного правового и методического обеспечения профессионально-общественной аккредитации, в том числе разработанные и утвержденные Национальным агентством развития квалификаций Рекомендации по организации и проведению профессионально-общественной аккредитации.</p>\r\n\r\n<p>С материалами вебинара можно познакомиться на сайте Национального агентства развития квалификаций&nbsp;<a href=\"http://www.nark.ru/\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\" title=\"www.nark.ru\">www.nark.ru</a></p>\r\n', '/upload/global/News/2018-11-08/Vebinar.jpg', '/upload/global/OpfSbdGnorY.jpg', '2018-11-08', b'1'),
(8, '20 октября 2018 года в Костромском энергетическом техникуме имени Ф.В.Чижова состоялось профориентационное мероприятие «Профессиональная суббота в отрасли ТЭК и ЖКХ».', NULL, 'Участниками стали 115 школьников из школ г. Костромы №20, 22, 35, 23, 17 и школы г. Галич, Никольское и Кузнецово.', '<p><span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">20 октября 2018 года в Костромском энергетическом техникуме имени Ф.В.Чижова состоялось профориентационное мероприятие &laquo;Профессиональная суббота в отрасли ТЭК и ЖКХ&raquo;. Участниками стали 115 школьников из школ г. Костромы №20, 22, 35, 23, 17 и школы г. Галич, Никольское и Кузнецово.</span><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Школьники познакомились с историей отрасли, узнали как работает современное предприятие, производящее электрическую и тепловую энергию. Проверили себя на готовность осваивать специальности энергетической отрасли. Стали участниками акции &laquo;Делай как я!&raquo;. Посетили экскурсии по отделениям техникума. Участники мероприятия высказали желание посетить профориентационные мероприятия техникума в дни школьных каникул.</span><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Приглашаем всех, кто неравнодушен к цифровому миру, 10 ноября на профессиональную субботу отрасли цифровых технологий.</span></p>\r\n', '/upload/global/News/2018-10-20/proforientTEK.jpg', '', '2018-10-20', b'1'),
(9, 'В рамках проекта «Карьера» реализуемого в техникуме 24 октября студенты 3-4 курсов специальности «Теплоснабжение и теплотехническое оборудование» ездили в экскурсионную поездку в город Углич в музей «Гидроэнергетики»', NULL, 'Рядом с Угличской ГЭС, в бывшем здании управления Волголага, разместился музей Гидроэнергетики России. На трех этажах в 11 залах не просто собрание экспонатов, повествующих об истории развития отрасли, а настоящий интерактивный центр, где нет табличек «Руками не трогать!», потому, что большинство экспонатов как раз для этого и предназначено.', '<p><span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">В рамках проекта &laquo;Карьера&raquo; реализуемого в техникуме 24 октября студенты 3-4 курсов специальности &laquo;Теплоснабжение и теплотехническое оборудование&raquo; ездили в экскурсионную поездку в город Углич в музей &laquo;Гидроэнергетики&raquo;. Рядом с Угличской ГЭС, в бывшем здании управления Волголага, разместился музей Гидроэнергетики России. На трех этажах в 11 залах не просто собрание экспонатов, повествующих об истории развития отрасли, а настоящий интерактивный центр, где нет табличек &laquo;Руками не трогать!&raquo;, потому, что большинство экспонатов как раз для этого и предназначено.</span><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Экспозиция музея повествует об этапах развития гидроэнергетики в СССР и России, о выдающихся людях профессии, а также непосредственно о российских ГЭС. Также здесь представлены экспозиции, посвященные воде, перспективным планам развития гидроэнергетики России. Не случайно музей входит в пятерку лучших региональных музеев России. Студенты отметили для себя, что после окончания техникума могут работать не только в кительных, ТЭЦ, но и на гидроэлектростанциях.</span></p>\r\n', '/upload/global/News/2018-10-24/yglich_myzei.jpg', '', '2018-10-24', b'0');

-- --------------------------------------------------------

--
-- Структура таблицы `otdelenie`
--

CREATE TABLE `otdelenie` (
  `id` int(2) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `otdelenie`
--

INSERT INTO `otdelenie` (`id`, `name`) VALUES
(1, 'ХТО'),
(2, 'ТТО'),
(3, 'ЭТО'),
(4, '1 курс');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  `content` text NOT NULL,
  `public` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `category_id`, `content`, `public`) VALUES
(1, 'ХТО', 6, '<p style=\"text-align:justify\"><a href=\"http://www.spo-ket.ru/node/36\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\"><span style=\"color:#000000\">09.02.04 &nbsp;&mdash; &laquo;Информационные системы (по отраслям)&raquo; (ИС)</span></a><br />\r\n<a href=\"http://www.spo-ket.ru/node/39\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\"><span style=\"color:#000000\">18.02.01 &nbsp;&mdash; &laquo;Аналитический контроль качества химических соединений&raquo;</span></a><br />\r\n<a href=\"http://www.spo-ket.ru/node/40\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\"><span style=\"color:#000000\">20.02.01 &nbsp;&mdash; &laquo;Рациональное использование природохозяйственных комплексов&raquo;</span></a></p>\r\n\r\n<h3 style=\"text-align:justify\">История химико-технологического отделения</h3>\r\n\r\n<div class=\"article\" style=\"color: rgb(73, 73, 73); font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\">\r\n<p>Чижовское училище было открыто в&nbsp;1894&nbsp;году на&nbsp;базе судомеханического завода Д.&nbsp;П.&nbsp;Шипова в&nbsp;составе одного класса 26&nbsp;сентября. Училище ставило своей целью подготовку мастеров для работы на&nbsp;химических заводах, промышленных и&nbsp;пище бумажных фабриках. Носило название низшего химико-технического училища имени Ф.&nbsp;В.&nbsp;Чижова. Таким образом химическое отделение является старейшим отделением в&nbsp;нашем техникуме.</p>\r\n\r\n<p>Первыми учителями на&nbsp;химико-аналитическом отделении были Егор Иванович Орлов, он&nbsp;же создатель основных химических лабораторий. Окончил Московский Университет в&nbsp;1894&nbsp;году с&nbsp;дипломом первой степени и&nbsp;сразу&nbsp;же поступил на&nbsp;преподавательскую работу в&nbsp;наш техникум. Несколько позднее в&nbsp;училище был приглашен А.&nbsp;Н.&nbsp;Корягин по&nbsp;образованию инженер технолог, который преподавал в&nbsp;училище химические производства.</p>\r\n\r\n<p>Под руководством Е.&nbsp;И.&nbsp;Орлова на&nbsp;столько оборудовались современные оборудования и&nbsp;практические занятия велись на&nbsp;высоком уровне, что уже в&nbsp;1990&nbsp;году когда праздновалось 150&nbsp;лет по&nbsp;случаю открытия первой химической лаборатории газета &laquo;Известия Московского Университета&raquo; писала: &laquo;Химическая лаборатория Костромского промышленного училища имени Ф.&nbsp;В.&nbsp;Чижова главным образом служит для работ учеников данного училища и&nbsp;имеет основную цель готовить мастеров на&nbsp;различные химические заводы.</p>\r\n\r\n<p>Лаборатории имеют кроме приборов и&nbsp;аппаратов необходимых ля&nbsp;этой цели, все возможные аппараты для производства опытов во&nbsp;время уроков химии. Деятельность лаборатории совершенно оправдывает цель ее&nbsp;основания. Учащиеся, оканчивающие курс училища охотно принимаются фабрикантами в&nbsp;заводские лаборатории, где с&nbsp;успехом производят различные аналитические работы. Она первая в&nbsp;России дает доступ изучать химию и&nbsp;знакомится с&nbsp;лабораториями лицам, окончившим народное училище, сельские, уездные и&nbsp;городские&raquo;.</p>\r\n\r\n<p>Первый выпуск был в&nbsp;1897&nbsp;году в&nbsp;количестве 24&nbsp;человек. Постепенно химические лаборатории расширялись, увеличивался прием на&nbsp;химико-аналитическое отделение и&nbsp;увеличился штат преподавателей химии.</p>\r\n\r\n<p>После событий 1917&nbsp;года, когда техникум был преобразован в&nbsp;Политехнический Институт (1920-1923), химико-аналитическое отделение выпустило 35&nbsp;инженеров-химиков. За&nbsp;годы своего существования химико-аналитическое отделение выпустило большое количество специалистов, многие из&nbsp;них закончили с&nbsp;отличием-118&nbsp;человек.</p>\r\n\r\n<p>Во второй половине 70-х годов техникум проводит целевую подготовку специалистов для новостроек. В&nbsp;этом плане было подготовлено свыше 200&nbsp;человек в&nbsp;том числе для: Шевченковского завода пластмасс-43&nbsp;человека (Казахстан); завода азотных удобрений-28&nbsp;человек (г.&nbsp;Мары-Туркменской СССР); Придонского химзавода-59&nbsp;человек (г.&nbsp;Россошь Воронежской области); завода Полимер&nbsp;&mdash; 16&nbsp;человек.</p>\r\n\r\n<p>В настоящее время на&nbsp;химико-аналитическом отделении имеется 4&nbsp;учебных кабинета, 7&nbsp;химических лабораторий для проведения химического и&nbsp;физическо&nbsp;&mdash; химического и&nbsp;спектрального анализа.</p>\r\n</div>\r\n', b'1'),
(2, 'История техникума', 1, '<p>Костромской энергетический техникум имени Ф.&nbsp;В.&nbsp;Чижова &mdash; старейшее учебное заведение области. Оно было создано в&nbsp;1894&nbsp;году на&nbsp;средства промышленника и&nbsp;мецената, уроженца г.&nbsp;Костромы Федора Васильевича Чижова и&nbsp;положило начало профессиональному образованию в&nbsp;нашем городе.</p>\r\n\r\n<p>В настоящее время Костромской энергетический техникум им.&nbsp;Ф.В. Чижова осуществляет подготовку специалистов по&nbsp;9&nbsp;специальностям:</p>\r\n\r\n<ol>\r\n	<li>&laquo;Электрические станции, сети и&nbsp;системы&raquo;</li>\r\n	<li>&laquo;Монтаж наладка и&nbsp;эксплуатация электрооборудования промышленных и&nbsp;гражданских зданий&raquo;</li>\r\n	<li>&laquo;Теплоснабжение и&nbsp;теплотехническое оборудование&raquo;</li>\r\n	<li>&laquo;Монтаж и&nbsp;эксплуатация оборудования и&nbsp;систем газоснабжения&raquo;</li>\r\n	<li>&laquo;Аналитический контроль качества химических соединений&raquo;</li>\r\n	<li>&laquo;Рациональное использование природохозяйственных комплексов&raquo;</li>\r\n	<li>&laquo;Информационные системы&raquo;</li>\r\n	<li>&laquo;Экономика и&nbsp;бухгалтерский учет&raquo;</li>\r\n	<li>&laquo;Страховое дело&raquo;</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"color: rgb(73, 73, 73); font-family: Verdana, sans-serif; font-size: 12px;\">По трем специальностям ведется обучение по&nbsp;заочной форме. Контингент обучающихся:\r\n<ul>\r\n	<li>520&nbsp;студентов очного обучения</li>\r\n	<li>120&nbsp;студентов заочного обучения</li>\r\n	<li>800&nbsp;слушателей отделения дополнительного образования</li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"color: rgb(73, 73, 73); font-family: Verdana, sans-serif; font-size: 12px;\">В техникуме функционирует 4&nbsp;отделения:\r\n<ol>\r\n	<li>Электротехническое</li>\r\n	<li>Теплотехническое</li>\r\n	<li>Химико-технологическое</li>\r\n	<li>Отделение дополнительного образования (осуществляет подготовку и&nbsp;переподготовку энергетических кадров по&nbsp;53&nbsp;направлениям)</li>\r\n</ol>\r\n</div>\r\n\r\n<p>Общее число работников техникума &mdash; 110&nbsp;человек. Педагогический состав &mdash; 59&nbsp;человек, все с&nbsp;высшим образованием; высшую квалификационную категорию имеют 32&nbsp;человека; первую &mdash; 21;&nbsp;вторую &mdash; 6.&nbsp;Работники техникума имеют звания и&nbsp;награды:</p>\r\n\r\n<ul>\r\n	<li>Медаль &laquo;За&nbsp;боевые заслуги&raquo; &mdash; 1</li>\r\n	<li>Медаль &laquo;За&nbsp;трудовое отличие&raquo;-1</li>\r\n	<li>&laquo;Заслуженный учитель школы России&raquo;-3</li>\r\n	<li>&laquo;Заслуженный работник Минтопэнерго&raquo; -1</li>\r\n	<li>&laquo;Почетный энергетик&raquo; &mdash; 6</li>\r\n	<li>&laquo;Почетный работник топливно-энергетического комплекса&raquo; -2</li>\r\n	<li>&laquo;Почетный работник СПО&raquo; -5</li>\r\n	<li>&laquo;Отличник химической промышленности&raquo;- 5</li>\r\n	<li>&laquo;Отличник физической культуры&raquo;-2</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>11&nbsp;сооружений в&nbsp;комплексе зданий энергетического техникума &mdash; памятники архитектуры 19&nbsp;века.<br />\r\nОбразовательный процесс осуществляется в&nbsp;следующих корпусах:</p>\r\n\r\n<ol>\r\n	<li>Главный (административный) корпус</li>\r\n	<li>Здание теплотехнического отделения</li>\r\n	<li>Здание химико-аналитического отделения</li>\r\n	<li>Здание электротехнического отделения с&nbsp;учебно-производственными мастерскими</li>\r\n	<li>Здание отделения дополнительного образования</li>\r\n	<li>Спортивный корпус</li>\r\n	<li>Два общежития</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>В техникуме имеется библиотека с&nbsp;читальным залом, актовый зал, танцевальный зал, музей истории техникума, столовая.</p>\r\n\r\n<p>С 2003&nbsp;года Костромской энергетический техникум Приказом Минэнерго России назначен&nbsp;<strong>Базовым</strong>&nbsp;для ССУЗ&rsquo;ов&nbsp;топливно-энергетического комплекса Центрального региона. В&nbsp;письме Федерального агентства по&nbsp;образованию от&nbsp;19.10.2007&nbsp;№&nbsp;1817/12-17 работа техникума в&nbsp;качестве базового отмечена как заслуживающая внимания.</p>\r\n\r\n<p>Федеральной службой по&nbsp;надзору в&nbsp;сфере образования и&nbsp;науки в&nbsp;феврале 2008&nbsp;года работе техникума дана высокая оценка.</p>\r\n\r\n<p>Высокое качество подготовки специалистов в&nbsp;Костромском энерготехникуме отмечают кадровые службы РАО &laquo;ЕЭС&nbsp;России&raquo; (письмо ФАО от&nbsp;28.08.2007&nbsp;№&nbsp;1412/12-17).</p>\r\n\r\n<p>2006 и 2008&nbsp;год &mdash; техникум награжден Золотой медалью &laquo;Европейское качество&raquo; в&nbsp;конкурсе &laquo;100&nbsp;лучших ссузов России&raquo;.</p>\r\n\r\n<p>2008&nbsp;&mdash; техникум &mdash; победитель областного конкурсного отбора ГОУ НПО и&nbsp;СПО для присуждения грантов на&nbsp;реализацию программы развития образовательного учреждения.</p>\r\n\r\n<p>2009&nbsp;&mdash; техникум &mdash; награжден Почетной грамотой Министерства энергетики России за заслуги в развитии топливно-энергетического комплекса.</p>\r\n\r\n<p>Студенты техникума из&nbsp;года в&nbsp;год занимают призовые места в&nbsp;конкурсах, олимпиадах, выставках областного и&nbsp;Всероссийского уровня (&laquo;Шаг в&nbsp;будущее&raquo;, &laquo;Глобальные проблемы взаимодействия человека и&nbsp;среды&raquo;; Конкурс Министерства образования и&nbsp;науки РФ&nbsp;&laquo;Интеграция&raquo;, &laquo;Национальное достояние России&raquo;, Всероссийская выставка-конкурс научно-технического творчества студентов ссузов в&nbsp;Твери и&nbsp;др.).</p>\r\n\r\n<p><a name=\"Никоноров\"></a>В&nbsp;мае 2008&nbsp;года на&nbsp;Всероссийской олимпиаде профессионального мастерства обучающихся учреждений СПО по&nbsp;специальности &laquo;Автоматизированные системы обработки информации и&nbsp;управления (по&nbsp;отраслям)&raquo; от&nbsp;Костромской области выступал студент Энергетического техникума Никоноров Павел, который получил Диплом за&nbsp;1-е место в&nbsp;Центральном Федеральном округе и&nbsp;4-е Всероссийское.</p>\r\n\r\n<p>Козлов Евгений в 2008 году стал лучшим в&nbsp;номинации &laquo;Теория&raquo; во&nbsp;Всероссийской олимпиаде по&nbsp;специальности &laquo;Электрические станции, сети и&nbsp;системы&raquo;, а в 2009 году - занял второе место во Всероссийской олимпиаде.</p>\r\n\r\n<h3>Историческая справка</h3>\r\n\r\n<p>В 2009 году преподаватель Искорцева Н.В. признана победителем конкурса &laquo;Лучшие учителя и мастера ПО&raquo; в рамках национального проекта &laquo;Образование&raquo;</p>\r\n\r\n<p>За&nbsp;последний учебный год студенты техникума получили более 80&nbsp;грамот и&nbsp;дипломов победителей областного и&nbsp;Всероссийского уровня.</p>\r\n\r\n<p>26&nbsp;сентября 1894&nbsp;года открыто Низшее химико-техническое училище имени Ф.&nbsp;В.&nbsp;Чижова (в&nbsp;соответствии с&nbsp;Положением о&nbsp;промышленных училищах имени Надворного Советника Федора Васильевича Чижова, подписанным Императором Александром III 14&nbsp;мая 1890&nbsp;года); в&nbsp;1897&nbsp;открыто Среднее техническое училище; в&nbsp;том&nbsp;же году оба училища преобразованы в&nbsp;Костромское промышленное училище имени Ф.&nbsp;В.&nbsp;Чижова.</p>\r\n\r\n<p>Учебное заведение основано по&nbsp;завещанию и&nbsp;на&nbsp;средства известного в&nbsp;19&nbsp;веке промышленника, банкира, издателя, мецената, уроженца г.&nbsp;Костромы Федора Васильевича Чижова.</p>\r\n\r\n<p>Чижов осуществлял грандиозные проекты, вкладывал средства в&nbsp;строительство и&nbsp;развитие железных дорог, пароходств, банков, библиотек, учебных заведений, медицинских учреждений. То,&nbsp;что он&nbsp;начинал делать более полутора веков назад, сегодня объявлено приоритетными направлениями в&nbsp;развитии нашего государства.</p>\r\n\r\n<p>Свой основной капитал в&nbsp;акциях Курской железной дороги, составивший по&nbsp;их&nbsp;реализации 6&nbsp;миллионов рублей, Ф.&nbsp;Чижов завещал на&nbsp;строительство и&nbsp;содержание 5&nbsp;учебных заведений у&nbsp;себя на&nbsp;Родине, в&nbsp;Костромской губернии, что было осуществлено его душеприказчиками СИ.&nbsp;Мамонтовым и&nbsp;А.&nbsp;Д.&nbsp;Поленовым.</p>\r\n\r\n<p>Н.&nbsp;А.&nbsp;Соковнин&nbsp;&mdash; первый директор училища, по&nbsp;поручению душеприказчиков Ф.&nbsp;Чижова, СИ.&nbsp;Мамонтова и&nbsp;А.Д. Поленова провел подготовительную работу по&nbsp;открытию Чижовского училища.</p>\r\n\r\n<p>Для общего руководства училищем был учрежден Попечительский совет, его Почетным членом был господин Костромской губернатор, членом Попечительского совета был Городской Голова, которые в&nbsp;обязательном порядке посещали училище.</p>\r\n\r\n<p>В 1900&nbsp;году продукция училища представлялась на&nbsp;Всемирной промышленной выставке в&nbsp;Париже и&nbsp;была удостоена большой Золотой медали и&nbsp;Диплома.</p>\r\n\r\n<p>В 1903-04&nbsp;учебном году училище посетил французский посол при Российском Императорском Дворе господин Бомпар.</p>\r\n\r\n<p>В 1913&nbsp;году во&nbsp;время празднования 300-летия Дома Романовых учащиеся училища находились в&nbsp;почетном оцеплении.</p>\r\n\r\n<p>Орлов Егор Иванович. Работал в&nbsp;училище с&nbsp;1894&nbsp;года, с&nbsp;1907&nbsp;года &mdash; инспектор училища. Организовал в&nbsp;училище лабораторию качественного и&nbsp;количественного анализа, ряд мастерских с&nbsp;действующими установками по&nbsp;производству мыла, минеральных красок, окраске тканей и&nbsp;пряжи, сухой перегонке дерева. Модель по&nbsp;перегонке дерева была награждена Большой серебряной медалью на&nbsp;1-й Всероссийской передвижной выставке (1903). В 2011 году установлена мемориальная доска на фасаде техникума.</p>\r\n\r\n<p>Флоров&nbsp;А.&nbsp;А. &mdash; мастер, затем директор училища, под его руководством учащимися на&nbsp;территории училища запущена первая в&nbsp;Костроме электростанция; позже Флоров был главным инженером строительства первой сельской электростанции в&nbsp;России (Шунгенской).</p>\r\n\r\n<p>Петров Г.&nbsp;С.&nbsp;(1886-1957), выпускник училища 1904&nbsp;года, других учебных заведений не&nbsp;заканчивал. Крупный ученый, изобретатель, доктор технических наук, профессор, заслуженный деятель науки и&nbsp;техники, обладатель более 200&nbsp;авторских свидетельств и&nbsp;патентов, создатель русской пластмассы, дважды лауреат Государственной премии (1943, 1949), организатор научно-исследовательского института (ныне его имени). Установлена мемориальная доска на фасаде техникума.</p>\r\n\r\n<p>Выпускниками техникума были четыре Героя Советского Союза: Корчагин Лев Павлович Люсин Владимир Николаевич Смирнов Николай Федорович Евграфов Садофий Петрович. Установлена мемориальная доска на фасаде техникума.</p>\r\n\r\n<p>1983&nbsp;год &mdash; представление работ студентов техникума на&nbsp;ВДНХ, награждение работ под руководством преподавателей техникума Трифонова&nbsp; Ю.&nbsp;Н.&nbsp;и&nbsp;Григорьева Ю.В. бронзовыми медалями ВДНХ.</p>\r\n\r\n<p>В 1992&nbsp;году техникуму возвращено имя Ф.&nbsp;В.&nbsp;Чижова, установлена мемориальная доска.</p>\r\n\r\n<p>1994&nbsp;году отмечалось 100-летие учебного заведения, открытие музея истории техникума, установка бюста Ф.&nbsp;В.&nbsp;Чижова.</p>\r\n\r\n<p>2004&nbsp;год &mdash; 110-летие техникума, возрождение почетной галереи, установка закладного камня на&nbsp;месте будущей часовни в&nbsp;память о&nbsp;Ф.&nbsp;В.&nbsp;Чижове.</p>\r\n\r\n<p>2005&nbsp;год &mdash; работы студентов под руководством Григорьева Ю.В. представлены на выставке ВВЦ г. Москва.</p>\r\n\r\n<p>2011&nbsp;год &mdash; техникум отметил 200-летие Ф.В. Чижова.</p>\r\n\r\n<p>2011&nbsp;год &mdash; реставрация главного учебного корпуса - памятника архитектуры 19 века, построенного по специальному проекту архитектора Штрома в 1897 году.</p>\r\n', b'0'),
(3, 'Основные сведения', 4, '<p style=\"text-align: justify;\"><strong>Наименование техникума</strong></p>\r\n\r\n<table class=\"tbglav\" style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; width:752.8px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Полное наименование</strong></td>\r\n			<td style=\"text-align: justify;\">областное государственное бюджетное профессиональное образовательное учреждение &laquo;Костромской энергетический техникум имени Ф.В. Чижова</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Официальное сокращенное наименование</strong></td>\r\n			<td style=\"text-align: justify;\">ОГБПОУ &laquo;КЭТ им. Ф.В. Чижова&raquo;, Костромской энергетический техникум</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class=\"tbglav\" style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; width:752.8px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Местонахождение Техникума</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\">156002, Костромская область, г. Кострома, проспект Текстильщиков, дом 73</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">График работы Техникума</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\">6-дневная рабочая неделя с 8.30 до 16.30</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Справочные телефоны</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\">(4942) 315191, (4942) 315026</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Адрес сайта Техникума в сети Интернет</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\"><a href=\"http://www.spo-ket.ru/\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\" title=\"www.spo-ket.ru\">www.spo-ket.ru</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Адрес электронной почты Техникума</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\"><a href=\"mailto:spo-ket@mail.ru\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">spo-ket@mail.ru</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Официальный сайт Министерства образования и науки РФ</td>\r\n			<td colspan=\"2\">\r\n			<p style=\"text-align: justify;\">Перейти по&nbsp;<a href=\"http://xn--80abucjiibhv9a.xn--p1ai/\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">ссылке</a>.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Дата создания техникума</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\">1894 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Дата государственной регистрации Техникума</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\">19 ноября 2001 года<br />\r\n			<br />\r\n			<a href=\"http://www.spo-ket.ru/node/1599\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\"><img src=\"http://www.spo-ket.ru/sites/default/files/images/svidoreg.thumbnail.jpg\" /></a></td>\r\n		</tr>\r\n		<tr style=\"text-align: justify;\">\r\n		</tr>\r\n		<tr style=\"text-align: justify;\">\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: justify;\"><strong>Учредитель техникума</strong></p>\r\n\r\n<table style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; text-align:justify; width:752.8px\">\r\n</table>\r\n\r\n<table class=\"tbglav\" style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; width:752.8px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Наименование</strong></td>\r\n			<td style=\"text-align: justify;\">Учредителем Учреждения и собственником его имущества является Костромская область.<br />\r\n			Функции и полномочия учредителя Учреждения осуществляет департамент образования и науки Костромской области (далее &ndash; Учредитель)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Место нахождения</strong></td>\r\n			<td style=\"text-align: justify;\">156013, город Кострома, улица Ленина, дом 20</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>График работы</strong></td>\r\n			<td style=\"text-align: justify;\">5-дневная рабочая неделя<br />\r\n			с 9.00 до 18.00<br />\r\n			перерыв с 12.00 до 13.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Справочный телефон</strong></td>\r\n			<td style=\"text-align: justify;\">8 (4942) 51 34 16</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Адрес сайта в сети</strong></td>\r\n			<td style=\"text-align: justify;\">http://www.koipkro.kostroma.ru/Deko/default.aspx</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Адрес электронной почты</strong></td>\r\n			<td style=\"text-align: justify;\">deko@kos-obl.kmtn.ru</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: justify;\"><strong>Руководитель техникума:</strong></p>\r\n\r\n<table style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; text-align:justify; width:752.8px\">\r\n</table>\r\n\r\n<table class=\"tbglav\" style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; width:752.8px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>ФИО</strong></td>\r\n			<td style=\"text-align: justify;\">Андрианова Татьяна Анатольевна</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Место нахождения</strong></td>\r\n			<td style=\"text-align: justify;\">156002, Костромская область, г. Кострома, проспект Текстильщиков, дом 73, кабинет 11</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>График работы</strong></td>\r\n			<td style=\"text-align: justify;\">6-дневная рабочая неделя<br />\r\n			с 8.30 до 16.30<br />\r\n			перерыв с 12.00 до 13.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Справочный телефон</strong></td>\r\n			<td style=\"text-align: justify;\">(4942) 315026</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: justify;\"><strong>Адрес электронной почты</strong></td>\r\n			<td style=\"text-align: justify;\">spo-ket@mail.ru</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table style=\"border-collapse:collapse; color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px; margin:1em 0px; width:752.8px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: justify;\">Структура техникума</td>\r\n			<td colspan=\"2\" style=\"text-align: justify;\"><a href=\"http://www.spo-ket.ru/sites/default/files/strukturpodrazd.doc\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">Положение об отделениях техникума</a>,<br />\r\n			<a href=\"http://www.spo-ket.ru/node/2196\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">Сводная информация о подразделениях техникума</a>,<a href=\"http://www.spo-ket.ru/sites/default/files/struktuprav.doc\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">&nbsp;Положение о структуре управления техникумом</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Реализуемые основные и дополнительные образовательные программы&nbsp;</span><a href=\"http://www.spo-ket.ru/sites/default/files/obrprog.doc\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Уровень образования Среднее профессиональное образование по программам подготовки специалистов среднего звена, базовый уровень</span><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Язык, на котором осуществляется обучение Русский&nbsp;</span><a href=\"http://www.spo-ket.ru/sites/default/files/45_Yazk.doc\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">см. Положение</a><span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">&nbsp;Персональный состав педагогических работников</span><a href=\"http://www.spo-ket.ru/node/1448\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Перечень недвижимого имущества&nbsp;</span><a href=\"http://www.spo-ket.ru/node/1574\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Материально-техническое обеспечение&nbsp;</span><a href=\"http://www.spo-ket.ru/sites/default/files/matterob.doc\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">План финансово-хозяйственной деятельности государственного учреждения на 2017 финансовый год Более подробно смотри на сайте&nbsp;</span><a href=\"http://bus.gov.ru/pub/agency/155217/plans\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">bus.gov.ru</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Поступление и расходование финансовых и материальных средств Более подробно смотри на сайте&nbsp;</span><a href=\"http://bus.gov.ru/public/agency/agency.html?agency=155217\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">bus.gov.ru</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Сведения о доходах, об имуществе и обязательствах имущественного характера руководителя за 2017 год&nbsp;</span><a href=\"http://www.spo-ket.ru/sites/default/files/svedeniya_o_doxodax_direktor_2017.docx\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Отчет о результатах самообследования деятельности образовательного учреждения&nbsp;</span><a href=\"http://www.spo-ket.ru/node/1527\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Копия лицензии на осуществление образовательной деятельности (с приложениями)&nbsp;</span><a href=\"http://www.spo-ket.ru/node/1464\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Копия свидетельства о государственной аккредитации (с приложениями)&nbsp;</span><a href=\"http://www.spo-ket.ru/node/1464\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Устав Техникума&nbsp;</span><a href=\"http://www.spo-ket.ru/node/1464\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Правила приема в Техникум&nbsp;</span><a href=\"http://www.spo-ket.ru/sites/default/files/pravila_priema_2016.doc\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Локальные акты, предусмотренные уставом техникума&nbsp;</span><a href=\"http://www.spo-ket.ru/node/2780\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Проверки, предписания и исполнение предписаний Более подробно смотри на сайте&nbsp;</span><a href=\"http://bus.gov.ru/pub/agency/155217/measures\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">bus.gov.ru</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">О некоммерческих организациях&nbsp;</span><a href=\"http://www.spo-ket.ru/node/242\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Ссылки на информационно-образовательные ресурсы&nbsp;</span><a href=\"http://www.spo-ket.ru/node/1526\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Электронные образовательные ресурсы&nbsp;</span><a href=\"http://www.spo-ket.ru/node/99\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<span style=\"color:rgb(73, 73, 73); font-family:verdana,sans-serif; font-size:12px\">Доступ к информационным системам и информационно-телекоммуникационным сетям&nbsp;</span><a href=\"http://www.spo-ket.ru/node/1600\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px;\">смотри здесь</a><br />\r\n<strong>Информация о среднемесячной заработной плате за 2017 год руководителя, заместителей руководителя, главного бухгалтера&nbsp;<a href=\"http://www.spo-ket.ru/sites/default/files/ZP_rykovoditelei_2017.jpg\" style=\"color: rgb(2, 122, 198); text-decoration-line: none;\">смотри здесь</a></strong></p>\r\n', b'0'),
(4, 'ЭТО', 3, '<p><a href=\"http://www.spo-ket.ru/node/1660\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\"><span style=\"color:#000000\">13.02.03 &nbsp;&mdash; &laquo;Электрические станции, сети и&nbsp;системы&raquo;</span></a><br />\r\n<br />\r\n<a href=\"http://www.spo-ket.ru/node/1659\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\"><span style=\"color:#000000\">08.02.09 &nbsp;&mdash; &laquo;Монтаж, наладка и&nbsp;эксплуатация электрооборудования промышленных и &nbsp;гражданских зданий&raquo;</span></a></p>\r\n\r\n<h2 style=\"text-align:justify\">История ЭТО</h2>\r\n\r\n<p style=\"text-align:justify\">В 1897&nbsp;году было построено здание, в&nbsp;котором разместилось механическое отделение для подготовки техников по&nbsp;механической специальности, которые могли&nbsp;бы быть ближайшими помощниками инженеров и&nbsp;других высших руководителей на&nbsp;фабриках, заводах, железных дорогах и&nbsp;электрических станциях.</p>\r\n\r\n<p style=\"text-align:justify\">Из годового отчета 1902&nbsp;года узнаем, что впервые в&nbsp;училище в&nbsp;качестве преподавателя нового предмета электротехники стал Николай Иванович Южилин, а&nbsp;уже в&nbsp;1905&nbsp;были приняты на&nbsp;работу в&nbsp;качестве преподавателей электротехники Александр Фридрихович Либих и&nbsp;Леонид Леонидович Дементьев. Окончательно на&nbsp;основании архивных данных ЭТО было сформировано в&nbsp;1919&nbsp;году.</p>\r\n\r\n<p style=\"text-align:justify\">Так, например, в&nbsp;1906&nbsp;году на&nbsp;изучение электротехники по&nbsp;расписанию отводилось 110&nbsp;часов, а&nbsp;по&nbsp;практическим занятиям&nbsp;&mdash; 282&nbsp;часа&nbsp;&mdash; эти цифры говорят, какое большое внимание уделялось практическим занятиям.</p>\r\n\r\n<p style=\"text-align:justify\">В 1919&nbsp;году ЭТО вместе с&nbsp;другими отделениями было выделено, как самостоятельное. Во&nbsp;времена Практического политехнического института 1921-1923гг. училище выпустило инженеров электриков 19&nbsp;человек.</p>\r\n\r\n<p style=\"text-align:justify\">В&nbsp;1934&nbsp;году на&nbsp;ЭТО были такие лаборатории как электроизмерительная, лаборатория электрических машин переменного тока, электротехническая лаборатория.</p>\r\n\r\n<p style=\"text-align:justify\">В 1947&nbsp;году был пущен в&nbsp;эксплуатацию электротехнический корпус, что дало возможность преподавателям совместно со&nbsp;студентами создавать новые лаборатории и&nbsp;кабинеты.</p>\r\n\r\n<p style=\"text-align:justify\">В&nbsp;настоящее время ЭТО&nbsp;&mdash; это 2&nbsp;учебных корпуса, с&nbsp;четырьмя кабинетами, с&nbsp;девятью специализированными лабораториями, двумя электромонтажными мастерскими. В&nbsp;педагогическом коллективе отделения работает заслуженный учитель России Григорьев&nbsp; Ю.&nbsp;В., почётные энергетики Алексеев&nbsp; И.&nbsp;Н., Разживин&nbsp; А.&nbsp;Н. 80%&nbsp;преподавателей имеют высшую квалификационную категорию.</p>\r\n', b'0');
INSERT INTO `pages` (`id`, `title`, `category_id`, `content`, `public`) VALUES
(5, 'ТТО', 7, '<p><a href=\"http://www.spo-ket.ru/node/34\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\"><span style=\"color:#000000\">13.02.02 &nbsp;&mdash; &laquo;Теплоснабжение и&nbsp;теплотехническое оборудование&raquo;</span></a><br />\r\n<a href=\"http://www.spo-ket.ru/node/33\" style=\"color: rgb(2, 122, 198); text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: justify; text-indent: 20px;\"><span style=\"color:#000000\">08.02.08 &nbsp;&mdash; &laquo;Монтаж и &nbsp;эксплуатация оборудования и &nbsp;систем газоснабжения&raquo;</span></a></p>\r\n\r\n<h1 style=\"text-align:justify\">История теплотехнического отделения</h1>\r\n\r\n<p style=\"text-align:justify\">Годом рождения тепломеханического (впоследствии теплотехнического) отделения по праву можно считать 1919 год, когда на базе Промышленного училища имени Ф. В. Чижова был создан Костромской промышленный техникум с трехгодичным сроком обучения.</p>\r\n\r\n<p style=\"text-align:justify\">Контингент учащихся на отделении в то время составлял всего 31 человек. В 1920 году была вновь произведена реконструкция училища. На его базе создан Практический политехнический институт с тремя отделениями. Институт сделал всего один выпуск в 1923 году, в числе его выпускников было 25 инженеров - тепломехаников и среди них будущие преподаватели техникума Шошин С.Я. и Шуваев Г.П., которые проработали в нем всю жизнь.</p>\r\n\r\n<p style=\"text-align:justify\">С 1923 года техникум стал называться Индустриальным (КИТ). Тепломеханическое отделение в первые годы своей деятельности готовило тепломехаников по эксплуатации тепловых электростанций. Для подготовки специалистов данного профиля тепломеханическое отделение располагало достаточной материальной базой: центральной силовой станцией и котельной с двумя паровыми котлами, испытательной станцией с двигателями внутреннего сгорания, паровыми машинами, слесарными и токарными мастерскими, кузницей с 8 горнами и другим оборудованием.</p>\r\n\r\n<p style=\"text-align:justify\">30-ые годы для тепломеханического отделения характеризуются тем, что на преподавательскую работу были оставлены его выпускники: Монакин А.А., Колчин Н.Н., Соколов М.И., которые всю свою жизнь отдали теплотехническому отделению. Позднее на преподавательскую работу пришел Головин Н.Н. Славой и легендой техникума стали эти преподаватели, их заслуженно называли &quot;корифеями&quot;. Стало традицией на преподавательскую работу приглашать выпускников техникума.</p>\r\n\r\n<p style=\"text-align:justify\">После окончания Великой Отечественной Войны в техникум пришли бывшие студенты Перцев Л.И., Колчина В.И., Чувилев Л.П.. В 60-ые годы с производства возвратились выпускники Трифонов Ю.Н., Оханов В.А., Морозов М.Н. В более позднее время в техникуме преподавателями работали выпускники ТТО Кириллов В.А., Кучеров Н.П., Козлова И.А., Кузьмина З.Ю. Илатовская И.В., Исаков А.И., Курило М.В.<br />\r\nНеобходимо отметить плодотворную работу в прошлом преподавателей специальных дисциплин, которые закончили другие учебные заведения: Войкиной А.В., Колотилова В.Г., Капитонова А.А., Смирнова В.А., Шерешкова В.П., Гречиной Н.А., Кузнецовой М.В.</p>\r\n\r\n<p style=\"text-align:justify\">Во все времена на протяжении более 80 лет существования теплотехнического отделения в качестве преподавателей специальных дисциплин работали высококвалифицированные специалисты. Многие из них занимали или занимают сейчас ответственные посты на предприятиях энергетической отрасли.<br />\r\nКроме специалистов-теплотехников на теплотехническом отделении всегда работали и работают профессиональные педагоги &ndash; преподаватели общеобразовательных и общепрофессиональных дисциплин, одновременно они являются классными руководителями учебных групп. Многие поколения выпускников помнят своих наставников и преподавателей: экономики Кураленок Н.В., русского языка и литературы Соболева В.А., Кашицина А.А., Зимину Л.В. , Орлинскую И.Е.; математики Низова А.И., Смирнова Г.Т. , Сергееву Л.М. , Чувилеву В.Ф.; истории и обществоведения Орлову Н.М., Якушеву Л.М., Власову Л.Д.,Чумакову Н.А.; физики Хохлова А.М., Казак Т.А., Женихову А.И.; механики Кудряшову Е.Ф. , Бургутину С.А.; черчения Славского М.Н., Смирнова М.И., Надеждину Е.А., Скворцову Л.А.; иностранных языков Грошеву Т.П. , Морозову Н.П., Чернову Л.М., физкультуры Хлебникова М.С., Ланге В.Ф.(мастер спорта по лыжам), Шокина В.И., Шокину В.А., Аметова Э.И., Морозова В.А., Белову А.Ф., Оборина А.В.</p>\r\n\r\n<p style=\"text-align:justify\">На ТТО идет смена поколений, жизнь учебного заведения продолжается, продолжаются и традиции. В 2001 году на преподавательскую работу пришла Смирнова М.В., выпускница теплотехнического отделения 1979 года, а в 2004 году - его выпускник 1960 года Афанасьев Ю.С. По прежнему у доски с мелом в руках ветераны- заслуженный учитель РФ Трифонов Ю.Н. и заслуженный энергетик Чувилев Л.П. Они продолжили традиции ТТО и создали фундаментальную методическую базу по основным учебным дисциплинам. Трифонов Ю.Н. более 30 лет возглавляет теплотехническую предметно-цикловую комиссию.<br />\r\nВ послевоенные годы теплотехническое отделение возглавляли его выпускники Колчин Н.Н., Колчина В.И., Калашников П.Г., Колодкин В.И. В 90-х годах заведующими отделением работали Зорин Н.К. и Сокровищук Н.Ю., 11 лет во главе отделения стоял Мясников И.Б., который по совместительству 8- лет являлся и заведующим заочным отделением техникума. Сейчас заведующим отделением является Гижевская Людмила Викторовна</p>\r\n\r\n<p style=\"text-align:justify\">Кроме штатных преподавателей большой вклад в подготовку специалистов теплотехнического профиля вносили и вносят работники энергетических предприятий и организаций, работающие в техникуме по совместительству. И снова родному учебному заведению помогали и помогают его выпускники, ставшие высококвалифицированными специалистами: в прошлые годы - Артамонов Ю.А., Строгалов С.В., и сегодня - Варнавин А.А., Ершов Д.А., Кондрашкин А.В., Курило М.В., Плаксин А.Н., Рассадина С.М., Смирнов И.С., Фомин Е.В.</p>\r\n\r\n<p style=\"text-align:justify\">Особого внимания заслуживают руководители дипломного проектирования, рецензенты дипломных проектов и члены Государственной аттестационной комиссии.</p>\r\n\r\n<p style=\"text-align:justify\">В послевоенные годы председателями Государственной аттестационной комиссии на теплотехническом отделении были главные инженеры Костромской ТЭЦ-1: Сазонов А.В., Горелов В.М., Семиглазов В.Г., Федотов С.А. Все они, за исключением Горелова В.М., являются выпускниками теплотехнического отделения разных лет. В состав ГАК всегда входили представители Госгортехнадзора (в настоящее время - Ростехнадзора), в том числе начальники Костромского отдела Жуков И.Е., Ометов Е.А., Розанов В.В., а также Государственные инспекторы Замышляев М.Г., Никифоров Н.В. Постоянными членами ГАК длительное время были ведущие преподаватели ТТО: Головин Н.Н., Колчин Н.Н., Колчина В.И., Монакин Н.Н., Перцев Л.И., Кураленок Н.В. Сегодня в состав ГАК входят ветераны ТТО Трифонов Ю.Н., Чувилев Л.П., Смирнова М.В.</p>\r\n\r\n<p style=\"text-align:justify\">Руководителями дипломных проектов на ТТО всегда назначались ведущие преподаватели, перечисленные выше, и высококвалифицированные инженеры энергетики предприятий г. Костромы: Артамонов Ю.А., Баринова С.В., Красильщик А.М., Давыдова Т.К., Епифанов В.В. Кузнецова М.В., Курило М.В. Морозов М.Н., Фомин Е.А. Рецензентами дипломных проектов являются на протяжении многих лет Кириллов В.А., Морозов М.Н., Гречина Н.А.- в прошлом преподаватели ТТО.</p>\r\n\r\n<p style=\"text-align:justify\">Выпускники теплотехнического отделения Колчин Н.Н., Перцев Л.И., Шошин С.Я., Трифонов Ю.Н. длительное время работали заместителями директора техникума по учебной, учебно-производственной и хозяйственной работе, а Перцев Л.И. и Трифонов Ю.Н. занимали должность директора техникума в 60-70 годы прошлого века.</p>\r\n\r\n<p style=\"text-align:justify\">В 30-е годы техникуму был нанесен серьезный ущерб. Учебно-производственные мастерские техникума были выведены из его состава и преобразованы в самостоятельное машиностроительное предприятие &ndash; завод им. Красина Л.Б. Больше всех пострадало тепломеханическое отделение, оборудование которого характеризовалось большими размерами, сложностью монтажа, наличием специальных помещений. И только в 1957 году хозяйственным способом был построен теплотехнический корпус вместе с котельной; в нем стали создаваться новые лаборатории и кабинеты. Проект здания разработала Рыбникова Н.Г., ставшая впоследствии главным архитектором г. Костромы. Проектирование, строительство и техническое оснащение лабораторий и кабинетов, включая изготовление учебной мебели, осуществлялось силами студентов под руководством преподавателей Головина Н.Н.,Колчина Н Н., Монакина А.А., Перцева Л.И., Чувилева Л.П.</p>\r\n\r\n<p style=\"text-align:justify\">В 1955 году Индустриальный техникум стал именоваться Химико-механическим, а тепломеханическое отделение переименовано в теплотехническое, при этом профили техникума и отделения остались неизменными.</p>\r\n\r\n<p style=\"text-align:justify\">В 60-е годы на базе теплотехнического отделения велась подготовка и сделано несколько выпусков специалистов по холодильным установкам.</p>\r\n\r\n<p style=\"text-align:justify\">В 1969 году был выстроен корпус учебно-производственых мастерских, где наряду с другими, была создана мастерская по ремонту теплотехнического оборудования. Ранее мастерские размещались в теплотехническом корпусе. После перевода мастерских в новое здание на освободившихся площадях теплокорпуса были созданы новые кабинеты и лаборатории. Большой вклад в развитии</p>\r\n\r\n<p style=\"text-align:justify\">Учебно-производственных мастерских внесли их руководители и мастера производственного обучения Соколов М.И., Белясин П.Ф., Колодкин В.И., Кучеровский Н.В., Донцов А.И., Стрельцов А.И., столяры Еремин И.Н., Крупин К.В.</p>\r\n\r\n<p style=\"text-align:justify\">В 1992 году на базе второго учебного здания был создан Учебно-тренировочный центр для переподготовки и повышения квалификации работников ОАО &laquo;Костромаэнерго&raquo;. В нем, наряду с электротехническими кабинетами и лабораториями, был создан специализированный теплотехнический кабинет.</p>\r\n\r\n<p style=\"text-align:justify\">В 1992 году по решению коллектива техникум переименован в энергетический и перешел в Министерство Энергетики Российской Федерации.</p>\r\n\r\n<p style=\"text-align:justify\">В 2000 году на теплотехническом отделении возобновлена подготовка специалистов по заочной форме обучения.</p>\r\n\r\n<p style=\"text-align:justify\">В 2004 году на теплотехническом отделении открыта подготовка студентов по специальности &laquo;Монтаж и эксплуатация оборудования и систем газоснабжения&raquo;, первый выпуск специалистов состоится в июне 2007 года.</p>\r\n\r\n<p style=\"text-align:justify\">В 60-70-е годы по инициативе и непосредственном руководстве директора техникума Перцева Л.И. была начата реконструкция материально-технической базы техникума. На всех отделениях создавались новые кабинеты и лаборатории, они оснащались современным оборудованием, техническими средствами обучения, одновременно производился капитальный ремонт помещений с заменой систем освещения, вентиляции, водоснабжения. Реконструкция и создание новых кабинетов и лабораторий осуществлялось силами студентов очной формы обучения под руководством преподавателей Головина Н.Н., Колчина Н.Н., Колчиной В.И., Монакина А.А., Перцева Л.И., Трифонова Ю.Н., Морозова М.Н., Чувилева Л.П. Были созданы лаборатории &laquo;Теоретических основ теплотехники&raquo;, &laquo;Гидравлики и насосов&raquo;, &laquo;Теплоснабжения и теплотехнического оборудования&raquo;, &laquo;Топливоснабжения&raquo;, &laquo;Теплотехнических измерений и автоматизации&raquo;, а также кабинеты &laquo;Охраны труда и эксплуатации теплотехнического оборудования&raquo;, &laquo;Котельных установок и водоподготовки&raquo;. Учебные кабинеты оснащались современными аудиовизуальными средствами, наглядными пособиями. В учебно-производственных мастерских было освоено производство учебной мебели &ndash; парт на металлической основе, табуретов с круглыми сидениями и другой нестандартной мебели для учебных кабинетов и лабораторий. Таким образом, осуществлялась комплексная модернизация учебно-материальной базы, которая включала в себя: разработку проекта кабинета или лаборатории, капитальный ремонт помещения с реконструкцией строительных конструкций, проектирование, изготовление и монтаж лабораторных установок, прокладка новых инженерных коммуникаций, монтаж новой системы освещения, установка новой мебели. Все работы, за исключением сложных строительных, выполняли студенты под непосредственным руководством и при участии преподавателей. Одновременно с реконструкцией учебной базы началось массовое изготовление макетов, моделей оборудования, других наглядных пособий, а затем &ndash; электродинамических тренажеров теплотехнических установок с бегущим световым потоком. Впоследствии на отделении преподаватели и студенты стали создавать тренажеры промышленных установок и оборудования, которые максимально имитируют действующее оборудование; они изготавливались в натуральную величину из заводских деталей и позволяют изучать устройство оборудования, его эксплуатацию в том виде, какой имеется на производстве.</p>\r\n\r\n<p style=\"text-align:justify\">Данные тренажеры позволяют отрабатывать правила эксплуатации газового и теплоэнергетического оборудования в условиях, максимально приближенных к производству, и включают три режима: ознакомительный, обучающий и контрольный с оценкой навыков управления оборудованием. Тренажеры могут быть использованы не только для подготовки студентов, но и работников котельных, электростанций, газовой службы предприятий.</p>\r\n\r\n<p style=\"text-align:justify\">Работа по созданию тренажеров продолжается &ndash; на очереди тренажер по эксплуатации котельной установки, который планируется изготовить в 2007 году. Компьютерные тренажеры очень удобны, просты в использовании, обеспечивают объективный и эффективный контроль знаний и навыков обучаемых. Подтверждением этому является факт приобретения у нас тренажеров энергетическими техникумами и предприятиями г.г. Костромы, Вязников, Иванова, Петрозаводска, Энгельса, Орска, Шахты и др<br />\r\nВ настоящее время получило развитие другое направление технического творчества и методической работы &ndash; создание компьютерных тренажеров по эксплуатации газовых и котельных установок. Эта работа осуществляется совместно с преподавателями и студентами Костромского технологического университета. От техникума работу возглавляет председатель теплотехнической предметно-цикловой комиссии Трифонов Ю.Н., от университета &ndash; выпускник техникума, заведующий кафедрой автоматики Шуваев В.Г. В настоящее время изготовлены и внедрены в учебный процесс университета и техникума следующие компьютерные тренажеры:</p>\r\n\r\n<ul>\r\n	<li>Эксплуатация парового котла, работающего на газе;</li>\r\n	<li>Эксплуатация газорегуляторной установки;</li>\r\n	<li>Эксплуатация водогрейного котла КВГМ-100.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Компьютерные тренажеры незаменимы при внедрении инновационных технологий обучения и, в частности, при организации Модульного обучения, основанного на компетенциях.</p>\r\n\r\n<p style=\"text-align:justify\">По заданию Федерального института развития образования РФ и непосредственном его руководстве ряд техникумов и колледжей страны в 2006 и 2007 годах разрабатывает Модульные программы подготовки высококвалифицированных рабочих и рабочих по особо сложным профессиям для наукоемких производств в рамках среднего профессионального образования. Костромской энергетический техникум вошел в группу учебных заведений, разрабатывающих Модульную программу подготовки студентов по рабочей профессии &laquo;Оператор котельной&raquo;. Преподаватели теплотехнического отделения принимают активное участие в этой работе и после её завершения техникум может приступить к реализации данного проекта.</p>\r\n', b'0');

-- --------------------------------------------------------

--
-- Структура таблицы `timetable`
--

CREATE TABLE `timetable` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL,
  `otdelenie` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `lesson1` varchar(255) DEFAULT NULL,
  `cab1` int(10) DEFAULT NULL,
  `prepodavatel1` varchar(50) DEFAULT NULL,
  `lesson2` varchar(255) DEFAULT NULL,
  `cab2` int(10) DEFAULT NULL,
  `prepodavatel2` varchar(50) DEFAULT NULL,
  `lesson3` varchar(255) DEFAULT NULL,
  `cab3` int(10) DEFAULT NULL,
  `prepodavatel3` varchar(50) DEFAULT NULL,
  `lesson4` varchar(255) DEFAULT NULL,
  `cab4` int(10) DEFAULT NULL,
  `prepodavatel4` varchar(50) DEFAULT NULL,
  `lesson5` varchar(255) DEFAULT NULL,
  `cab5` int(10) DEFAULT NULL,
  `prepodavatel5` varchar(50) DEFAULT NULL,
  `lesson6` varchar(255) DEFAULT NULL,
  `cab6` int(10) DEFAULT NULL,
  `prepodavatel6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `timetable`
--

INSERT INTO `timetable` (`id`, `date`, `otdelenie`, `groupname`, `lesson1`, `cab1`, `prepodavatel1`, `lesson2`, `cab2`, `prepodavatel2`, `lesson3`, `cab3`, `prepodavatel3`, `lesson4`, `cab4`, `prepodavatel4`, `lesson5`, `cab5`, `prepodavatel5`, `lesson6`, `cab6`, `prepodavatel6`) VALUES
(1, '2018-11-26', '1 курс', '1-1', 'Информатика', 2, 'Васильев A.П.', 'Математика', 36, 'Волкова Е. Н.', 'Физика', 73, 'Баженов В. М.', '', NULL, '', '', NULL, NULL, '', NULL, NULL),
(2, '2018-11-26', '1 курс', '1-2', 'Физика', 73, 'Баженов В. М.', 'История', 18, 'Васильев Д. Г.', 'Химия', 50, 'Зинихина Ю. А.', 'Математика', 44, 'Лазакович К. И.', '', NULL, NULL, '', NULL, NULL),
(3, '2018-11-26', '1 курс', '1-3', 'Химия', 50, 'Зинихина Ю. А.', 'Физика', 73, 'Баженов В. М.', 'История', 18, 'Васильев Д. Г.', '', NULL, '', '', NULL, NULL, '', NULL, NULL);

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
(1, 'Анна Виноградова', 'admin', '$2y$13$OhhUcQX.Hz5uz8ePQ7KxMO5frhT6xBBBVWVfh2TzYwJYUD3H3xnm2', 'q1DWbaK3cShxsOopy2zkh19bZ4t-X93U', '', '/upload/global/Users/user.png', '');

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
-- Индексы таблицы `otdelenie`
--
ALTER TABLE `otdelenie`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `groupclass`
--
ALTER TABLE `groupclass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `otdelenie`
--
ALTER TABLE `otdelenie`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
