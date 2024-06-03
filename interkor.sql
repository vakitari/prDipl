-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 03 2024 г., 03:07
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
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`) VALUES
(3, 2, '222'),
(4, 2, '222'),
(5, 3, '23'),
(6, 3, '232'),
(7, 4, '23'),
(8, 4, '232'),
(9, 5, '23'),
(10, 5, '232'),
(11, 6, '23'),
(12, 6, '232'),
(13, 7, '123'),
(14, 7, '123');

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `avatar`) VALUES
(6, '12312', '3123', 'avatars/284b2a4a7c2519d06996dd816a7b1418.jpg'),
(7, '123', '1232', 'avatars/abc905b051e989a39f828306f0a2eacb.png');

-- --------------------------------------------------------

--
-- Структура таблицы `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `context` longtext NOT NULL,
  `pub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `description`, `course_id`, `context`, `pub`) VALUES
(26, '12312', '123', 7, '\r\n                    <p> \r\n                    </p><p> \r\n                    </p><p> \r\n                    </p><p>Вы можете начинать создавать курс(удалите этот текст)</p>\r\n                .123123<p></p>\r\n                .3123123123123<p></p>\r\n                ', 'true'),
(27, '123123123', '123123', 7, '\r\n                    <p> \r\n                    </p><p>Вы можете начинать создавать курс(у123далите123123 этот текст)</p>\r\n                .<p></p>\r\n                ', 'false'),
(43, '', '', 7, '\r\n                    <p> \r\n                    </p><p>  Опубликовать сразу  </p>\r\n                .<p></p>\r\n                ', 'true'),
(44, '231231', '231231', 6, '\r\n                    <p> </p><div style=\"color: rgb(171, 178, 191); background-color: rgb(40, 44, 52); font-family: Consolas, &quot;Courier New&quot;, monospace; line-height: 19px; white-space: pre;\"><span style=\"color: #98c379;\">\'id\'</span> =&gt; <span style=\"color: #e06c75;\">$less_id</span>,<span style=\"text-align: var(--bs-body-text-align); color: rgb(152, 195, 121);\">\'id\'</span><span style=\"text-align: var(--bs-body-text-align);\"> =&gt; </span><span style=\"text-align: var(--bs-body-text-align); color: rgb(224, 108, 117);\">$less_id</span><span style=\"text-align: var(--bs-body-text-align);\">,</span><span style=\"text-align: var(--bs-body-text-align); color: rgb(152, 195, 121);\">\'id\'</span><span style=\"text-align: var(--bs-body-text-align);\"> =&gt; </span><span style=\"text-align: var(--bs-body-text-align); color: rgb(224, 108, 117);\">$less_id</span><span style=\"text-align: var(--bs-body-text-align);\">,</span></div>\r\n                    <p> \r\n                    </p><p></p><p></p>\r\n                .1111<p></p>\r\n                ', 'false'),
(45, '123', '123123', 6, '123123<p> </p>\r\n                ', 'true'),
(46, '12312', '123', 6, '123123<p> </p>\r\n                ', 'true'),
(47, '', '', 6, '\r\n                    <p> </p>\r\n                ', 'true');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `correct_answer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `test_id`, `question_text`, `correct_answer_id`) VALUES
(2, 1, '22', 3),
(3, 2, '123', 5),
(4, 2, '123', 7),
(5, 2, '123', 9),
(6, 2, '123', 11),
(7, 3, '123', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `less_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `title`, `less_id`) VALUES
(1, '2222', 44),
(2, '21321', 26),
(3, '132', 44);

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
(4, 'admin', '$2y$10$97WSAGqGjOiAswEzC/mReu6NQN0uJYn3FXr5cBpeBisGpkPBd68We', 'avatars/b52a3c7f5af0c85421466b7d99b36e63.png', 2, '123123@mail.ru', '12312312', '2024-05-16');

-- --------------------------------------------------------

--
-- Структура таблицы `users_course`
--

CREATE TABLE `users_course` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_ibfk_1` (`test_id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users_course`
--
ALTER TABLE `users_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users_course`
--
ALTER TABLE `users_course`
  ADD CONSTRAINT `users_course_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_answers_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
