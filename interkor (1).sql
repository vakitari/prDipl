-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 22 2024 г., 11:32
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `interkor`
--

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `title`, `qty`, `description`) VALUES
(1, 'Основы математики: от арифметики до высшей математики', 12, 'Этот курс предназначен для студентов, желающих получить прочную\r\n                                базу в математике, начиная с арифметики и заканчивая основными понятиями высшей\r\n                                математики.'),
(2, 'Введение в программирование', 11, 'На этом курсе вы научитесь писать код на языках программирования Python и JavaScript. Вы познакомитесь с основами алгоритмов, структур данных, а также узнаете о принципах объектно-ориентированного программирования'),
(3, 'История современного искусства', 14, 'На этом курсе вы познакомитесь с самыми известными работами современного искусства, их создателями и контекстом, в котором они были созданы. Курс поможет вам понять, как искусство влияет на наше общество и культуру.'),
(4, 'Философия для всех', 15, 'В этом курсе вы узнаете о самых разных философских теориях и идеях, которые формируют наше понимание мира. Курс поможет вам развить критическое мышление и понимать, как мы получаем знания и понимания о мире'),
(5, 'Изучение языков искусств', 11, 'На этом курсе вы изучите различные языки искусств, включая живопись, графику, скульптуру и другие. Вы узнаете о истории, философии и культуре каждого из этих языков искусства.');

-- --------------------------------------------------------

--
-- Структура таблицы `grade_user`
--

CREATE TABLE `grade_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `grade_user`
--

INSERT INTO `grade_user` (`id`, `user_id`, `lesson_id`, `grade`) VALUES
(1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `les_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `lesson`
--

INSERT INTO `lesson` (`id`, `les_id`, `text`, `title`) VALUES
(1, 1, 'avatars/f68c9108932742ee25d2355d926b7fdd.txt', 'начало'),
(2, 2, '123', '123'),
(3, 2, '123', '123'),
(4, 2, '123', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `lesson_list`
--

CREATE TABLE `lesson_list` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `level` text NOT NULL,
  `description` text NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `lesson_list`
--

INSERT INTO `lesson_list` (`id`, `title`, `level`, `description`, `course_id`) VALUES
(1, 'Арифметика: основы и продвинутые темы', 'Легко', 'Описание: В этой лекции мы рассмотрим основы арифметики, включая арифметические операции, округление чисел, прогрессии и ряды, а также рассмотрим более продвинутые темы, такие как дроби и десятичные дроби.', 1),
(2, 'Алгебра: основы и продвинутые темы', 'л', 'В этой лекции мы погрузимся в алгебру, изучив линейные уравнения, квадратные уравнения, функции и полиномы. Также мы рассмотрим более продвинутые темы, такие как системы линейных уравнений и многочлены.', 1),
(3, 'Геометрия: основы и продвинутые темы', 'л', ' В этой лекции мы изучим основы геометрии, включая площадь и периметр простых фигур, теорему Пифагора и ее приложения, а также треугольники и их свойства.', 1),
(4, 'Тригонометрия: основы и продвинутые темы', 'л', 'В этой лекции мы рассмотрим тригонометрию, включая тригонометрические функции и их свойства, идентификаторы и формулы тригонометрии, а также рассмотрим тригонометрические уравнения и их решение.', 1),
(5, 'Статистика: основы и продвинутые темы', 'ср', 'В этой лекции мы рассмотрим основы статистики, включая среднее, медиану, моду, распределения статистических данных, а также теорию вероятностей.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `example` text NOT NULL,
  `answer` text NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`id`, `example`, `answer`, `lesson_id`) VALUES
(1, '2+1', '3', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL,
  `role` int(11) NOT NULL,
  `email` text NOT NULL,
  `number` text NOT NULL,
  `data_reg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `avatar`, `role`, `email`, `number`, `data_reg`) VALUES
(1, '123', '$2y$10$hdc5xm41c9f8yvlyKrbgjOvDSz3WWyB41aoP0BvAGjlOeCO7kMKge', 'avatars/1e8a2ba3ea7d74c2213b66038772b0ab.jpg', 1, '123123@mail.ru', '23123', '0'),
(4, 'admin', '$2y$10$97WSAGqGjOiAswEzC/mReu6NQN0uJYn3FXr5cBpeBisGpkPBd68We', '', 2, '123123@mail.ru', '12312312', '2024-05-16');

-- --------------------------------------------------------

--
-- Структура таблицы `users_course`
--

CREATE TABLE `users_course` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users_course`
--

INSERT INTO `users_course` (`id`, `user_id`, `course_id`) VALUES
(1, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `grade_user`
--
ALTER TABLE `grade_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Индексы таблицы `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `les_id` (`les_id`);

--
-- Индексы таблицы `lesson_list`
--
ALTER TABLE `lesson_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_course`
--
ALTER TABLE `users_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `grade_user`
--
ALTER TABLE `grade_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `lesson_list`
--
ALTER TABLE `lesson_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users_course`
--
ALTER TABLE `users_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `grade_user`
--
ALTER TABLE `grade_user`
  ADD CONSTRAINT `grade_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grade_user_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`les_id`) REFERENCES `lesson_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `lesson_list`
--
ALTER TABLE `lesson_list`
  ADD CONSTRAINT `lesson_list_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lesson_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users_course`
--
ALTER TABLE `users_course`
  ADD CONSTRAINT `users_course_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
