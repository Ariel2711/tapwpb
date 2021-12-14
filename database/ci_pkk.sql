-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2021 pada 07.15
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_pkk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(128) NOT NULL,
  `category_desc` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_desc`) VALUES
(4, 'Akhlak', 'Akhlak'),
(5, 'Fiqih', 'Ilmu Fiqih'),
(6, 'Akidah', 'Ilmu Akidah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) NOT NULL,
  `comment_parent` bigint(20) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_body` text NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) NOT NULL,
  `post_date` date NOT NULL,
  `post_title` varchar(256) NOT NULL,
  `post_body` longtext NOT NULL,
  `post_thumbnail` varchar(256) DEFAULT NULL,
  `post_slug` varchar(256) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`post_id`, `post_date`, `post_title`, `post_body`, `post_thumbnail`, `post_slug`, `category_id`, `user_id`) VALUES
(32, '2021-01-18', 'Titan Berak', 'Tes', '306e606bb94ac4d60c0197efcce37ba6.jpg', 'thing-unto-set-own-years', 6, 1),
(34, '2021-11-19', 'tes', '<p>nncbcb</p>', NULL, 'tes', 5, 1),
(35, '2021-11-19', 'Haji Naruto', '<p>teskgdvdgjd</p>', '0c8f60674dd36766df9707945bf8096a.jpg', 'haji-naruto', 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `role` enum('admin','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`, `avatar`, `role`) VALUES
(1, 'admin', '$2y$10$0OAcT33SnZu0nzOIDtr3JemPpkqt7oaTOnv39uZhK5yCV/JCwTS7i', 'Admin', '6ae9419e7356ff8c4af4b6487e9d8415.png', 'admin'),
(5, 'Uhu', '$2y$10$2PgCWJStncUdre/tm90Gi.kx8WiIUR3n3MqYe0CGyMQzIPXbfWK9C', 'Hafidz Alif Rachman', 'a8fef21d7f4a1d2fb14197d640f9146c.jpg', 'member'),
(6, 'ariel', '$2y$10$d8nKMuL8KgQw4/hfDEDfcOJvfn2/Z86mEL9Su4a8T9BBGsImtTdqS', 'Ariel', NULL, 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
