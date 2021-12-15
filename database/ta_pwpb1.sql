-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2021 pada 14.31
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
-- Database: `ta_pwpb1`
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
(1, 'Sepak Bola', NULL),
(9, 'Basket', NULL);

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
(36, '2021-12-02', 'Chelsea Kokoh di Puncak Klasemen', '<p><br></p><p style=\"font-family: Arial, sans-serif; margin: 10px 0px 20px; font-size: 14px; color: rgb(51, 51, 51); line-height: 2em;\"><b style=\"font-weight: bold;\">&nbsp;</b>Chelsea&nbsp;sukses mengalahkan Watford&nbsp;dengan skor tipis 2-1 dalam partai Premier League 2021/22 pekan ke-14 yang digelar di Vicarage Road, Kamis (2/12/2021) dini hari WIB.</p><p style=\"font-family: Arial, sans-serif; margin: 10px 0px 20px; font-size: 14px; color: rgb(51, 51, 51); line-height: 2em;\">Gol Mason Mount sempat disamakan oleh Emmanuel Dennis. Hakim Ziyech muncul sebagai pahlawan kemenangan Chelsea berkat golnya di babak kedua.</p><p style=\"font-family: Arial, sans-serif; margin: 10px 0px 20px; font-size: 14px; color: rgb(51, 51, 51); line-height: 2em;\">Berkat hasil ini, Chelsea masih kokoh di puncak klasemen dengan poin 33. Sementara itu, Watford menduduki peringkat ke-17 dengan poin 13</p>', '3674afd46feab97ac66e40ebc4464431.jpg', 'tes', 1, 1),
(37, '2021-12-02', 'Suns Taklukkan Sang Pemuncak Klasemen', '<p><br></p><p><br></p><p style=\"color: rgb(35, 31, 32); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif !important;\">Phoenix Suns memenangi duel melawan Golden State Warriors dengan skor 104-96, Selasa, 30 November 2021, waktu setempat. Pertahanan kukuh Suns di paruh kedua, utamanya di lima menit terakhir pertandingan membuat Warriors tak berkutik.&nbsp;</p><p style=\"color: rgb(35, 31, 32); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif !important;\">Warriors hanya mencetak satu poin di sisa lima menit terakhir, itupun datang dari technical foul. Suns juga berhasil membuat Warriors membukukan 22 turnover. Sebaliknya, Suns hanya membuat 12 turnover.</p><p style=\"color: rgb(35, 31, 32); font-family: Roboto, sans-serif !important;\">Ini jadi kemenangan ke-17 Suns beruntun yang membuat mereka menyamai rekor terbanyak organisasi ini yang tercipta pada 2006-2007. Suns sudah tak tersentuh kekalahan lebih dari satu bulan.</p><p style=\"color: rgb(35, 31, 32); font-family: Roboto, sans-serif !important;\">Chris Paul memimpin Suns dengan dobel-dobel 15 poin, 6 rebound, 11 asis, dan 5 steal. CP3 efektif dengan 7/13 tembakan (54 persen). Deandre Ayton jadi top skor Suns dengan dobel-dobel 24 poin dan 11 rebound.Jae Crowder dan Cam Johnson masing-masing mencetak 14 poin. Keduanya mengombinasikan 7/16 tripoin.&nbsp;</p><p style=\"color: rgb(35, 31, 32); font-family: Roboto, sans-serif !important;\">Devin Booker yang hanya tampil 15 menit karena masalah di pahanya mencetak 10 poin. Mikal Bridges hanya mencetak dua poin tapi berperan krusial dalam bertahan. Ia membukukan 4 steal dan menahan Stephen Curry hanya mencetak 12 poin.&nbsp;</p><p style=\"color: rgb(35, 31, 32); font-family: Roboto, sans-serif !important;\">Curry juga hanya memasukkan 4/21 tembakan (19 persen), catatan terburuk sepanjang kariernya saat menembak setidaknya 20 kali. Ini juga kali pertama Warriors tak membukukan 100 poin di musim ini.</p><p style=\"color: rgb(35, 31, 32); font-family: Roboto, sans-serif !important;\">Top skor untuk Warriors adalah Jordan Poole dengan 28 poin, 5 rebound, 3 asis, dan 2 steal. Poole memasukkan 6/12 tripoin (50 persen). Otto Porter Jr. mengikuti dengan 16 poin. Ini adalah kekalahan perdana Warriors dalam delapan gim ke belakang.</p><p style=\"color: rgb(35, 31, 32); font-family: Roboto, sans-serif !important;\">Kedua tim kini sama kuat di puncak NBA dengan rekor menang-kalah (18-3). Lusa, Suns akan kembali bermain melawan Detroit Pistons, tetap di Footprint Center, Phoenix, Arizona, Amerika serikat. Sedangkan Warriors baru akan bermain Sabtu, 4 Desember 2021, waktu setempat. Mereka akan berpeluang membalas kekalahan hari ini dengan menjamu Suns di Chase Center.&nbsp;</p><p style=\"color: rgb(35, 31, 32); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif !important;\"><br></p>', '84b2bb6cdbc3250ba742f07b243ef84d.jpg', 'tes2', 9, 1);

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
(8, 'tes', '$2y$10$LWTr2h/mOnZOnXg4A4Q2sO.WxbPpZoDJjpJIM7a91hnShBh3g0uBu', 'tes', NULL, 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

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
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
