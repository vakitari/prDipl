-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 07 2024 г., 12:54
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
(25, 13, '3123'),
(26, 13, '123'),
(27, 13, '123'),
(28, 14, '2312'),
(29, 14, '123123'),
(30, 15, '112321'),
(31, 15, '23212332');

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
(4, 'Инновационные стратегии в управлении бизнесом', 'Курс \"Инновационные стратегии в управлении бизнесом\" предназначен для руководителей и управленцев различных уровней, а также предпринимателей, стремящихся к эффективному внедрению инноваций в свою деятельность.', 'avatars/c34ec82f57ecde2db482e524872b2d61.jpg'),
(6, 'Эффективное управление проектами в условиях цифровизации', 'Курс \"Эффективное управление проектами в условиях цифровизации\" нацелен на повышение квалификации и профессиональных навыков менеджеров проектов, а также специалистов, занятых в сфере управления проектами.', 'avatars/16b7571bde130e856388b8b5b68bc37f.webp');

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
(3, 'Основы разработки инновационных бизнес-моделей', 'Добрый день, дорогие коллеги! Сегодня мы с вами рассмотрим одну из ключевых тем нашего курса – разработку инновационных бизнес-моделей.', 4, '<p style=\"margin: calc(10px*var(--ds-zoom))0 calc(10px*var(--ds-zoom)); font-size: 16px; line-height: var(--ds-line-height-m); color: rgb(60, 60, 67); font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; background-color: rgb(247, 247, 247);\">Важность этой темы трудно переоценить, ведь именно от того, насколько грамотно и гибко мы сможем создать и внедрить новые модели, зависит успех нашего бизнеса в условиях жесткой конкуренции и постоянно меняющихся рыночных условий.</p><ol style=\"margin: calc(12px*var(--ds-zoom))0 calc(12px*var(--ds-zoom)); padding-left: calc(28px*var(--ds-zoom)); color: rgb(60, 60, 67); font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px; background-color: rgb(247, 247, 247);\"><li><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Понятие и значение инновационных бизнес-моделей:<br>Инновационная бизнес-модель – это совокупность процессов, стратегий и практик, которые позволяют компании создавать и удерживать конкурентное преимущество на рынке за счет внедрения новых продуктов, услуг или методов работы. Важность инновационных бизнес-моделей заключается в том, что они позволяют компании адаптироваться к изменениям, сохранять свою привлекательность для клиентов и партнеров, а также расширять свою долю на рынке.</p></li><li style=\"margin-top: 4px;\"><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Основные элементы инновационной бизнес-модели:</p></li></ol><ul style=\"margin: calc(12px*var(--ds-zoom))0 calc(12px*var(--ds-zoom)); padding-left: calc(28px*var(--ds-zoom)); color: rgb(60, 60, 67); font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px; background-color: rgb(247, 247, 247);\"><li><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Целевая аудитория: определение целевой аудитории и ее потребностей является первым шагом в разработке инновационной бизнес-модели. Важно понимать, кто будет пользоваться нашими продуктами или услугами и какие проблемы они хотят решить.</p></li><li style=\"margin-top: 4px;\"><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Уникальное предложение: инновационная бизнес-модель должна включать уникальное предложение, которое позволит нам выделиться на фоне конкурентов и привлечь внимание нашей целевой аудитории.</p></li><li style=\"margin-top: 4px;\"><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Процессы и ресурсы: для реализации инновационной бизнес-модели необходимо определить ключевые процессы и ресурсы, которые потребуются нам для создания и внедрения новых продуктов или услуг.</p></li><li style=\"margin-top: 4px;\"><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Доходные модели: важно разработать эффективные доходные модели, которые позволят нам получать прибыль от наших инноваций и обеспечивать устойчивое развитие бизнеса.</p></li></ul><ol style=\"margin: calc(12px*var(--ds-zoom))0 calc(12px*var(--ds-zoom)); padding-left: calc(28px*var(--ds-zoom)); color: rgb(60, 60, 67); font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px; background-color: rgb(247, 247, 247);\"><li><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Методы разработки инновационных бизнес-моделей:</p></li></ol><ul style=\"margin: calc(12px*var(--ds-zoom))0 calc(12px*var(--ds-zoom)); padding-left: calc(28px*var(--ds-zoom)); color: rgb(60, 60, 67); font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px; background-color: rgb(247, 247, 247);\"><li><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Анализ конкурентного окружения: изучение сильных и слабых сторон конкурентов, а также тенденций развития рынка позволит нам выявить возможности для создания инновационных бизнес-моделей.</p></li><li style=\"margin-top: 4px;\"><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Мозговой штурм и коллаборативное проектирование: методы коллективной генерации идей и совместного проектирования позволяют нам найти новые решения и создать инновационные бизнес-модели, которые будут соответствовать потребностям нашей целевой аудитории.</p></li><li style=\"margin-top: 4px;\"><p style=\"font-size: var(--ds-font-size-m); line-height: var(--ds-line-height-m); margin-bottom: 0px !important;\">Прототипирование и тестирование: создание прототипов новых продуктов или услуг и их тестирование на реальных пользователях позволяет нам улучшить нашу инновационную бизнес-модель и сделать ее более эффективной.</p></li></ul><p style=\"font-size: 16px; line-height: var(--ds-line-height-m); color: rgb(60, 60, 67); font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; background-color: rgb(247, 247, 247); margin-bottom: 0px !important;\">Заключение:<br>Разработка инновационных бизнес-моделей – это непрерывный процесс, который требует от нас постоянного анализа рыночной ситуации, творческого подхода к решению задач и готовности к изменениям. Надеюсь, сегодняшняя лекция помогла вам лучше понять основы этого процесса и заложить фундамент для создания успешных инновационных бизнес-моделей в вашей компании. Спасибо за внимание!</p>\r\n                    <p> </p>\r\n                ', 'true');

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
(13, 7, '12', 27),
(14, 7, '1231', 28),
(15, 7, '12223', 30);

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
(6, '123', 1),
(7, '1231', 3);

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
(1, 'vakitari', '$2y$10$lpS4DdVdAAsNWT3gu.HK5uydwHbg8yoOZg8.yPYO9eR/r7rmZbpka', 'avatars/e310474c1050adffee8bed31af9bf452.png', 2, 'vlad.bas.55@mail.ru', '89628525960', '2024-06-06'),
(5, 'admin', '$2y$10$sb8u2uQj1eWCKiP9Lr./GOash1E8BGadevyqGvhSv/0ofV7rrpMom', 'avatars/edb517a65876e95f60eea3d53045c57e.jpg', 1, '123123@mail.ru', '123123221', '2024-06-07'),
(6, 'mama', '$2y$10$5AMgMPfw/BY42KvPI7ZCKew8v3kanVZtdbx0GJKVkUrhm5wP6SK0C', 'avatars/4abeede08bd9830cf9afaea67dbb3b64.webp', 1, 'vlad.bas.55@mail.ru', '89628525960', '2024-06-07');

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
-- Дамп данных таблицы `user_answers`
--

INSERT INTO `user_answers` (`id`, `user_id`, `question_id`, `answer_id`, `rating`) VALUES
(15, 1, 15, 30, 5);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users_course`
--
ALTER TABLE `users_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
