-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 6 月 22 日 06:52
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_prototype01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `dev13_diary`
--

CREATE TABLE `dev13_diary` (
  `diary_id` int(12) NOT NULL,
  `registration_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `today_events` text NOT NULL,
  `events_impression` text NOT NULL,
  `events_emotions` text NOT NULL,
  `events_points` int(12) NOT NULL,
  `events_points_reason` text NOT NULL,
  `photo_keyword` text NOT NULL,
  `photo_keyword_reason` text NOT NULL,
  `photo_emotions` text NOT NULL,
  `photo_points` int(11) NOT NULL,
  `photo_points_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `dev13_diary`
--

INSERT INTO `dev13_diary` (`diary_id`, `registration_date`, `created_date`, `update_date`, `today_events`, `events_impression`, `events_emotions`, `events_points`, `events_points_reason`, `photo_keyword`, `photo_keyword_reason`, `photo_emotions`, `photo_points`, `photo_points_reason`) VALUES
(1, '2023-06-22', '2023-06-22 01:08:27', '2023-06-22 01:08:27', '壁打ち', 'みんな凄い', '不安', -60, 'ついていけるのかな。。', 'プログラミング', 'ジーズにいるから', '不安', -76, 'できるんかなーーープログラミング'),
(2, '2023-06-22', '2023-06-22 13:35:52', '2023-06-22 13:35:52', 'あじふらい', 'うまい', '幸せ', 100, 'たべものは人を幸せにする', 'mac', 'スタイリッシュ', 'かっこええ', 76, '敷居が高い'),
(3, '2023-06-22', '2023-06-22 13:43:27', '2023-06-22 13:43:27', 'FF16発売', '発売日なので', '欲しい', 100, 'FFは昔から好き！', 'M2MAC', '欲しい', '欲しい', 76, '欲しいけどかえない');

-- --------------------------------------------------------

--
-- テーブルの構造 `dev13_user`
--

CREATE TABLE `dev13_user` (
  `user_id` int(12) NOT NULL,
  `user_code` varchar(64) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `user_flg` int(1) NOT NULL,
  `user_indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `dev13_user`
--

INSERT INTO `dev13_user` (`user_id`, `user_code`, `user_name`, `user_pass`, `user_mail`, `user_flg`, `user_indate`) VALUES
(1, 'gawasan', '田川昌輝', '1234', 'tomato@tomato.co.jp', 1, '2023-06-20 18:54:56');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `dev13_diary`
--
ALTER TABLE `dev13_diary`
  ADD PRIMARY KEY (`diary_id`);

--
-- テーブルのインデックス `dev13_user`
--
ALTER TABLE `dev13_user`
  ADD PRIMARY KEY (`user_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `dev13_diary`
--
ALTER TABLE `dev13_diary`
  MODIFY `diary_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `dev13_user`
--
ALTER TABLE `dev13_user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
