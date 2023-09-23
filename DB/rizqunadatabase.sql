-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Sep 2023 pada 16.23
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rizqunadatabase`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Adrik Fikhtiyaaril Amro', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1352025327_avatar.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
(3, 'Kajilele', 'kajilele@gmail.com', '08927883733', 'Tulungagung', '05c1ef1b41c6d9104a6fb73c885550b6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_alamat` text NOT NULL,
  `invoice_provinsi` varchar(255) NOT NULL,
  `invoice_kabupaten` varchar(255) NOT NULL,
  `invoice_kurir` varchar(255) NOT NULL,
  `invoice_berat` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_total_bayar` int(11) NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_resi` varchar(255) NOT NULL,
  `invoice_bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_alamat`, `invoice_provinsi`, `invoice_kabupaten`, `invoice_kurir`, `invoice_berat`, `invoice_ongkir`, `invoice_total_bayar`, `invoice_status`, `invoice_resi`, `invoice_bukti`) VALUES
(11, '2023-09-21', 3, 'eew', '222', '2wsad', '', '', ' - ', 1, 0, 150000, 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Tidak Berkategori'),
(3, 'Kaos'),
(4, 'Celana'),
(5, 'Tas Selempang'),
(6, 'Sepatu'),
(7, 'Celana Pendek'),
(8, 'Jaket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_kategori` int(11) NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_jumlah` int(11) NOT NULL,
  `produk_berat` int(11) NOT NULL,
  `produk_foto1` varchar(255) DEFAULT NULL,
  `produk_foto2` varchar(255) DEFAULT NULL,
  `produk_foto3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_nama`, `produk_kategori`, `produk_harga`, `produk_keterangan`, `produk_jumlah`, `produk_berat`, `produk_foto1`, `produk_foto2`, `produk_foto3`) VALUES
(6, 'Erigo T-Shirt Maroon Unisex', 3, 80000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br></p>', 20, 100, '853594217_erigo1.jpg', '853594217_erigo2.jpg', '853594217_erigo3.jpg'),
(7, 'Roughneck Time For The Earth Tshirt', 3, 65000, '<p>\r\n\r\n</p><p>Roughneck T267 Time For The Earth Tshirt  terbuat dari bahan Cotton combed yang  nyaman dikenakan, ditambah grafis dari sablon Plastisol, sehingga kaos ini sangat cocok  untuk aktivitas indoor maupun outdoor.</p><p>\r\n</p><p>Detail Ukuran Produk: Panjang Badan x Lebar Badan x Panjang Tangan</p><p>S :  (68 x 48 x 20)</p><p>M : (70 x 50 x 21)</p><p>L :   (72 x 52 x 22)</p><p>XL : (74 x 54 x 23)</p><p>XXL : (76 x 56 x 24)</p><p>\r\n</p><p>Detail pada model : Tinggi (178) cm, Berat (75) kg, mengenakan ukuran (XL)</p>\r\n\r\n<br><p></p>', 2, 100, '723115585_roughneck4.jpg', '723115585_roughneck5.jpg', '723115585_roughneck6.jpg'),
(8, 'Roughneck T586 Tshirt', 3, 70000, '<p>\r\n\r\n</p><p>Detail Ukuran Produk: Panjang Badan x Lebar Badan x Panjang Tangan</p><p>S :  (68 x 48 x 20)</p><p>M : (70 x 50 x 21)</p><p>L :   (72 x 52 x 22)</p><p>XL : (74 x 54 x 23)</p><p>XXL : (76 x 56 x 24)</p><br>\r\n\r\n<i></i><p></p>', 20, 100, '1195785515_roughneck1.jpg', '1195785515_roughneck2.jpg', '1195785515_roughneck3.jpg'),
(128, 'Aerostreet Chinos Panjang Elvano Hitam', 4, 150000, '<p>Bahan :&nbsp;</p><p>- Katun Strech&nbsp;</p><p>- Extra Soft Finishing&nbsp;</p><p>- Sejuk dan nyaman saat dipakai</p>', 2, 1, '840148878_aerostreet1.jpg', '840148878_aerostreet2.jpg', '840148878_aerostreet3.jpg'),
(129, 'Russ Bag Slingbag Tough Olive', 5, 150000, '<p>ss</p>', 20, 1, '363828041_russbag1.jpg', '460887248_russbag2.jpg', '460887248_russbag3.jpg'),
(132, 'Ventela Shoes', 6, 430000, '<p>Ventela Ethnic Shoes</p>', 6, 1, '1690431762_ventella.jpg', '1690431762_ventella1.jpg', '1690431762_ventella2.jpg'),
(133, 'Bloods Pants Celana Chino Afhworth 05', 4, 165000, '<p>Bloodpants Celana Chino</p>', 1, 1, '1154811186_bloodpants.jpg', '1576108408_bloodpants1.jpg', '1576108408_bloodpants2.jpg'),
(134, 'HOOLIGANS Boardshort Academica', 7, 94000, '<p>\r\n\r\n</p><p>Product Detail</p><p>\r\n</p><p>Hooligans Boardshort dengan Material Baby Canvas</p>\r\n\r\n\r\n\r\n<p>SIZE CHART</p><p>Cek foto slide 3 untuk detail size chart</p><p>\r\n</p><p>Spesifikasi : </p><p>- Boardshort</p><p>- Baby Canvas</p><p>- Embroidery HLGN+</p><p>- Regular fit</p><p>- Perbedaan Warna produk dengan display pada settingan layar monitor anda dapat terjadi.</p>\r\n\r\n<br><p></p>', 10, 1, '545999019_hooligans.jpg', '545999019_hooligans1.jpg', '545999019_hooligans3.jpg'),
(135, 'Hooligans Jacket Tracktop Marcos Navy White', 8, 195000, '<p>\r\n\r\n</p><p>\r\n\r\n</p><p>Product Detail</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>Hooligans Jacket Tracktop ini menggunakan bahan Polyester Taslan</p><p>\r\n</p><p>Material ringan, tidak terlalu tebal dan cocok digunakan dalam aktifitas harian.</p><p>\r\n</p><p>Style yang menampilkan kesan Sporty-Casual cocok untuk aktifitas Outdoor kamu.</p>\r\n\r\nSpesifikasi<p></p><p>\r\n</p><p>- Biru Navy, Putih dengan 1 garis merah melintang</p><p>\r\n</p><p>- Polyester Taslan</p><p>\r\n</p><p>- Sablon Polyflex</p><p>\r\n</p><p>- Resleting</p><p>\r\n</p><p>- Saku depan</p><p>\r\n</p><p>- Perbedaan Warna produk dengan display pada settingan layar monitor anda dapat terjadi.</p>\r\n\r\n<br><p></p>', 8, 1, '509983074_jackethooli.jpg', '509983074_jackethooli2.jpg', '509983074_jackethooli3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_invoice` int(11) NOT NULL,
  `transaksi_produk` int(11) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_jumlah`, `transaksi_harga`) VALUES
(11, 5, 7, 2, 240000),
(12, 5, 8, 1, 80000),
(13, 5, 10, 1, 400000),
(14, 6, 10, 1, 400000),
(15, 6, 9, 1, 300500),
(16, 7, 11, 2, 80000),
(17, 7, 12, 1, 120000),
(18, 8, 13, 2, 130000),
(19, 8, 11, 1, 80000),
(20, 9, 11, 1, 80000),
(21, 10, 12, 1, 120000),
(22, 11, 128, 1, 150000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
