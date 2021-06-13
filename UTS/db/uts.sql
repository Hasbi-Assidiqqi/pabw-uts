-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2021 pada 06.44
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_me`
--

CREATE TABLE `about_me` (
  `id` int(11) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `name_button` varchar(255) NOT NULL,
  `link_button` varchar(225) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `about_me`
--

INSERT INTO `about_me` (`id`, `deskripsi`, `name_button`, `link_button`, `gambar`) VALUES
(1, '<p><span style=\"color:#000000\">Hello, i am <strong>Muhammad Hasbi Assidiqqi</strong></span></p>\r\n\r\n<p><span style=\"color:#000000\">Saya adalah mahasiswa semester 4. WEB ini dibuat untuk tugas UTS pada matakuliah PABW</span></p>\r\n', 'Services', '#services', '60bee3504cb09.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `label` varchar(225) NOT NULL,
  `isi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `gambar`, `label`, `isi`) VALUES
(3, 'fa fa-phone', 'Phone', '+6281373721975'),
(4, 'fa fa-envelope', 'Email', 'assidiqqi.0210@gmail.com'),
(6, 'fa fa-map-marker', 'Address', '<p>JL. Pahlawan, Bantan<br />\r\nBengkalis - Riau</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `footer`
--

INSERT INTO `footer` (`id`, `footer`) VALUES
(1, 'Copyright &copy; Muhammad Hasbi Assidiqqi 2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`id`, `gambar`, `judul`, `kategori`) VALUES
(1, '60c41e96a23e8.jpg', '1', 1),
(2, '60c41f29ae7e2.jpg', '2', 1),
(3, '60c41f36c5a53.jpg', '3', 1),
(4, '60c41f42c7581.jpg', '4', 1),
(5, '60c41f4b15458.jpg', '5', 1),
(6, '60c41f53cfb61.jpg', '6', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery_category`
--

CREATE TABLE `galery_category` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galery_category`
--

INSERT INTO `galery_category` (`id`, `judul`) VALUES
(1, 'Foto'),
(2, 'Video');

-- --------------------------------------------------------

--
-- Struktur dari tabel `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `information`
--

INSERT INTO `information` (`id`, `judul`, `link`) VALUES
(1, 'Tekno', 'https://tekno.kompas.com/'),
(2, 'Otomotif', 'https://otomotif.kompas.com/'),
(3, 'Internasional', 'https://internasional.kompas.com/'),
(4, 'Nasional', 'https://nasional.kompas.com/'),
(5, 'Megapolitan', 'https://megapolitan.kompas.com/'),
(6, 'Tren', 'https://www.kompas.com/tren'),
(7, 'Healt', 'https://health.kompas.com/'),
(8, 'Entertaiment', 'https://entertainment.kompas.com/'),
(9, 'Sains', 'https://sains.kompas.com/'),
(10, 'Regional', 'https://regional.kompas.com/'),
(11, 'Properti', 'https://properti.kompas.com/'),
(12, 'Lifestyle', 'https://lifestyle.kompas.com/'),
(13, 'Travel', 'https://travel.kompas.com/'),
(14, 'Edukasi', 'https://edukasi.kompas.com/'),
(15, 'Food', 'https://www.kompas.com/food'),
(16, 'Artikel Terpopuler', 'https://indeks.kompas.com/terpopuler'),
(17, 'Artikel Terkini', 'https://indeks.kompas.com/'),
(18, 'Artikel Headline', 'https://indeks.kompas.com/headline');

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_home`
--

CREATE TABLE `item_home` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `item_home`
--

INSERT INTO `item_home` (`id`, `gambar`, `link`, `judul`, `deskripsi`) VALUES
(2, '60c45760e493a.png', 'contact.php', 'Contact', 'Lihat info kami dan hubungi'),
(3, '60c4563b39be8.png', 'galery.php', 'Galery', 'Lihat semua kegiatan kami'),
(4, '60c4566ddeceb.png', 'profile.php', 'Profile', 'Kenal lebih dekat dengan kami');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jumbotron`
--

CREATE TABLE `jumbotron` (
  `id` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `name_button` varchar(225) NOT NULL,
  `link_button` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jumbotron`
--

INSERT INTO `jumbotron` (`id`, `deskripsi`, `name_button`, `link_button`) VALUES
(1, '<p><span style=\"color:#ffffff\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:48px\"><small>Hello, I&#39;am</small></span><br />\r\n<span style=\"font-size:72px\"><big><strong>Muhammad Hasbi</strong></big></span></span></span></span></p>\r\n\r\n<p><span style=\"color:#ffffff\"><span style=\"font-size:28px\"><small><span style=\"font-family:Calibri,sans-serif\">I&#39;am learning Technology Web</span></small></span></span></p>\r\n', 'About me', '#about-me');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jumbotron_home`
--

CREATE TABLE `jumbotron_home` (
  `id` int(11) NOT NULL,
  `welcome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jumbotron_home`
--

INSERT INTO `jumbotron_home` (`id`, `welcome`) VALUES
(1, 'This web is intended for <br><span>LEARNING WEB TECHNOLOGY</span>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_services`
--

CREATE TABLE `my_services` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `my_services`
--

INSERT INTO `my_services` (`id`, `gambar`, `nama`, `deskripsi`) VALUES
(31, '60bee80111bda.png', 'UI/UX Design', '<p>Design aplikasi sesuai keinginan dan kepuasan anda</p>\r\n'),
(32, '60bee821c57d6.png', 'WEB Developer', '<p>Mulailah kegiatan anda secara digital berbasis web dengan jasa kami</p>\r\n'),
(33, '60bee833c126c.png', 'Mobile Developer', '<p>Aktivitas lebih leluasa di genggaman anda. mulailah dengan kami</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `gambar`, `judul`, `kategori`, `tanggal`, `deskripsi`) VALUES
(9, '60c32a7a6512c.jpg', 'Epic Games Gratiskan Game Genshin Impact dan Control', 1, '2021-06-11', '<p>Penulis Kevin Rizky Pratama | Editor Yudha Pratomo KOMPAS.com - Setiap minggunya Epic Games kerap membagikan game secara gratis melalui platform distribusi Epic Games Store. Pada pekan ini, ada dua judul game yang dapat diunduh secara cuma-cuma. Kedua judul game tersebut cukup populer di kalangan para gamer, yaitu Genshin Impact dan Control. Kehadiran Genshin Impact sendiri masih terbilang baru di Epic Games Store. Sebelum hadir di Epic Games Store, pemain harus mengunduh launcher game melalui situs resmi Mihoyo, apabila hendak memainkan Genshin Impact di PC. Demi merayakan kedatangan Genshin Impact di Epic Games Store, pengembang juga memberikan kode redeem yang dapat diklaim oleh para pemain. Adapun kode yang dimaksud adalah sebagai berikut. - GenshinEpic Setelah kode ditukarkan, pemain bakal mendapat 10.000 Mora, 10 Adventurer&#39;s Experience, 5 Mystic Enhancement, beserta sejumlah makanan yang dapat digunakan di dalam game. Baca juga: Hacker Bobol Server EA, Curi Kode Penting Game FIFA 21 Terima kasih telah membaca Kompas.com. Dapatkan informasi, inspirasi dan insight di email kamu. Daftarkan email Selain Genshin Impact, Epic Games juga turut menggratiskan game Control. Game ini telah menuai banyak pujian sejak pertama kali diluncurkan pada Agustus 2019 lalu. Control sendiri mengisahkan petualangan seorang wanita bernama Jesse Feden mencari saudara laki-lakinya, Dylan. Jesse pergi mengunjungi Bureau of Control, sebuah organisasi paling misterius di pemerintahan AS. Di tengah-tengah penyelidikannya, Jesse justru menemukan pimpinan organisasi tersebut yang sudah tak lagi bernyawa. Jesse yang berada di tempat kejadian tidak sengaja mengambil senjata misterius yang menewaskan direktur perusahaan tersebut. Secara tiba-tiba, Jesse terseret masuk ke dunia misterius bernama Astral. Jesse kemudian mulai mendapatkan kekuatan supranatural, seperti menggerakkan objek (telekinesis) dan mampu mengendalikan senjata misterius bernama Weapon of Service. Perjalanan Jesse yang semula sudah merepotkan, kini semakin sulit lantaran Jesse harus menggantikan posisi pimpinan biro federal tersebut. Baca juga: Pameran Game Terbesar E3 2021 Digelar Online, Ini Jadwalnya Bermodalkan senjata misterius dan kemampuan telekinesis, Jesse memiliki misi untuk memulihkan Bureau of Control dari serangan monster dan anomali yang berasal dari dimensi lain sekaligus mencari keberadaan Dylan. Dari pantauan KompasTekno di laman resmi Epic Game Store, Jumat (11/6/2021), Genshin Impact dan Control dapat diunduh secara gratis mulai hari ini hingga 17 Juni mendatang. Setelah tanggal tersebut, Control akan kembali dijual dengan harga normal sebesar Rp 389.000. Genshin Impact dan Control dapat diunduh melalui situs Epic Games Store melalui tautan berikut. Cara download Untuk mengunduh kedua game gratis tersebut, pemain cukup masuk ke halaman Epic Games Store melalui tautan berikut ini. Apabila belum login, pemain wajib masuk menggunakan ID dan password terlebih dahulu. Kemudian, pilih judul game yang dikehendaki. Setelah itu, pada bagian kanan, terdapat tombol &quot;Get&quot;. Tekan tombol tersebut untuk mulai mengunduh game.<br />\r\n<br />\r\nArtikel ini telah tayang di&nbsp;<a href=\"https://www.kompas.com/\">Kompas.com</a>&nbsp;dengan judul &quot;Epic Games Gratiskan Game Genshin Impact dan Control&quot;, Klik untuk baca:&nbsp;<a href=\"https://tekno.kompas.com/read/2021/06/11/14061857/epic-games-gratiskan-game-genshin-impact-dan-control?page=all#page2\">https://tekno.kompas.com/read/2021/06/11/14061857/epic-games-gratiskan-game-genshin-impact-dan-control?page=all#page2</a>.<br />\r\nPenulis : Kevin Rizky Pratama<br />\r\nEditor : Yudha Pratomo<br />\r\n<br />\r\nDownload aplikasi&nbsp;<a href=\"https://www.kompas.com/\">Kompas.com</a>&nbsp;untuk akses berita lebih mudah dan cepat:<br />\r\nAndroid:&nbsp;<a href=\"https://bit.ly/3g85pkA\">https://bit.ly/3g85pkA</a><br />\r\niOS:&nbsp;<a href=\"https://apple.co/3hXWJ0L\">https://apple.co/3hXWJ0L</a></p>\r\n'),
(10, '60c32af9e6594.jpg', 'Luncurkan 5G, Tidak Sekadar Punya 2300 MHz', 3, '2021-06-11', '<p>Editor Amir Sodikin UPAYA Telkomsel menancapkan bendera pertama pada 27 Mei 2021, sebagai penyelenggara layanan generasi kelima (5G) sangat patut diacungi jempol walau dengan kelengkapan yang belum maksimal. Tidak ada satu pun operator telko Tanah Air yang bisa menyamainya. Indosat sekalipun, meski anggota Grup Ooredoo Qatar itu sudah sempat mengumumkan rencana untuk menjadi operator 5G pertama. Indosat sendiri baru mengajukan permohonan mendapat SKLO (Surat Keterangan Laik Operasi) 5G pada 3 atau 4 Juni lalu. Juga Smartfren, yang sama-sama memiliki spektrum 2300 MHz seperti Telkomsel. Bisa dimaklumi Telkomsel belum maksimal, karena baru bisa menggunakan rentang 30 MHz di spektrum 2300 MHz miliknya, karena yang 20 MHz hasil menang lelang secara adminsitratif belum dikuasainya. Baca juga: Heboh Teknologi 5G, Berikut Ragam Inovasi Smartphone Flagship untuk Menyambut Era 5G Pemilikan spektrum selebar 50 MHz belumlah optimal untuk membuka layanan 5G, sehingga target 100X kecepatan 4G LTE, up to 10 Gbps sulit tercapai. Kita pun bisa maklum kalau capaian dari uji coba di beberapa tempat &ldquo;hanya&rdquo; 600 Mbps dan nyaris 800 Mbps. Juga latensi (waktu yang dibutuhkan dari asal sampai tujuan) belum sampai satu milidetik, tapi sudah jauh dari lima milidetik seperti dicapai 4G. Terima kasih telah membaca Kompas.com. Dapatkan informasi, inspirasi dan insight di email kamu. Daftarkan email Untuk menjalankan layanan 5G, teoretis operator harus punya 100 MHz di milimeterband, gelombang pendek antara 2,3 GHz sampai 26 GHz dan 28 GHz, yang konon akan dibuka pemerintah bersamaan dengan pelepasan spektrum 700 Mhz ex-TV analog. Sementara spektrum 2,3 Ghz tidak begitu disukai karena ekosistemnya, yang antara lain berupa radio dan gadgetnya, tidak banyak diproduksi vendor teknologi. Industri lebih menyukai spektrum 26 MHz dan 28 GHz, sampai 35 GHz dan seterusnya untuk membuka layanan 5G, karena frekuensi yang tersedia sekitaran 1.000 MHz per spektrum, sehingga jika pun ada 10 operator yang meminta, masing-masing 100 MHz masih bisa. &ldquo;Untung&rdquo; kita hanya punya enam operator: Telkomsel, Indosat, Xl Axiata, Hutchison 3, Smartfren dan Net-1 (Sampurna Telecom). Dari enam operator itu, paling banyak spektrumnya adalah Telkomsel dengan 155 MHz, lalu Indosat Ooredoo dengan 95 MHz, XL Axiata 90 MHz, Smartfren 62 MHz, 3 selebar 50 MHz dan Net-1 selebar 15 MHz. Yang paling sulit berinovasi adalah Net-1 yang menggunakan frekuensi tidak umum, 450 MHz. Baca juga: Orang Indonesia Mulai Banyak Cari Ponsel 5G Murah di Google Benar Telkomsel punya frekuensi di atas 100 MHz, namun mereka harus pikir panjang untuk memanfaatkan 100 MHz di antaranya hanya sekadar memberi layanan 5G secara optimal. Hal yang pertama, tiap spektrumnya &ndash; 900 MHz, 1800 MHz dan 2300 MHz &ndash; sudah dipadati oleh 168 juta pelanggannya dengan 30 persen lebih pelanggan 2G, yang meski tiap pelanggan hanya menyetor &ldquo;recehan&rdquo;, tapi kali 50 jutaan. Kemudian yang kedua, untuk urusan 5G, uji coba di lapangan tidak memungkinkan diterapkannya rekayasa CA (carrier aggregation &ndash; menggabungkan dua atau lebih spektrum) untuk mendapat output kecepatan lebih tinggi. CA di teknologi 4G LTE bisa memuntahkan kecepatan sampai 150 Mbps, bahkan dilaporkan 300 Mbps, tetapi men-CA-kan teknologi 5G, hasilnya yang keluar adalah semprotan 4G LTE juga. Demikian juga, untuk mengejar kapasitas setara 5G, belum mungkin menggunakan rekayasa MIMO (multiple in-multiple out) dengan menggandakan antena-antena. Namun diyakini, ketika pemerintah sudah mengeluarkan izin penggunaan spektrum milimeterband di 26 GHz dan 28 GHz dan seterusnya, upaya mengomersialkan 5G bisa lancar. Tetapi, 5G masih memberi syarat lain. Di spektrum milimeterband, karena cakupannya sempit, investasi operator akan tinggi karena otomatis jarak antar-BTS jadinya rapat. Apalagi jika diperlukan untuk transportasi mobil (autonomous vehicle) yang tidak boleh ada longgarnya pancaran sinyal si operator, agar mobil itu tidak melenceng yang justru dapat membahayakan masyarakat. Karena investasinya tinggi, harga data 5G &ndash; diperkirakan &ndash; 10 kali lebih mahal dibanding 4G LTE, sehingga dipertanyakan apakah pasar ritel akan bisa dirambah operator 5G. Dari beberapa uji coba, penggunaan layanan 5G paling cocok adalah untuk industri, perkebunan, pertanian, perkantoran, rumah sakit dan sebagainya. Baca juga: Indonesia Bakal Punya Jalan Tol 5G hingga 1.300 MHz Pada 2024 Ada sedikit keperluan untuk rumah tangga 5G, kebanyakan rumah tangga para sultan, dengan menggunakan robot-robot, yang bisa dilaksanakan kalau gaji asisten rumah tangga (ART) sudah lebih mahal dari saat ini. Sepanjang gaji ART murah seperti sekarang, hanya sultan yang alergi terhadap ART yang akan menggunakan jasa 5G. Fiberisasi dan bengekan Di industri, pabrik-pabrik dan sebagainya, layanan 5G sangat ditunggu, karena bisa menyelesaikan banyak masalah. Misalnya tidak akan ada karyawan yang minta cuti hamil, tidak akan ada tambahan tunjangan keluarga karena pegawainya lumayan produktif di rumah, atau tidak usah ngurusi pegawainya yang bengekan. Sedih dan bahagianya, 5G bahkan akan lebih dahsyat dibanding pandemi yang membuat maraknya PHK, tetapi juga memunculkan banyak usaha rumah tangga. Teknologi 5G juga memunculkan IoT (internet of things) yang bisa memberi solusi bagi pekebun, peternak, petani dengan pengawasan dan otomatisasi kegiatan. Misalnya melakukan penyiraman tanaman, memberi catu ternak dengan pakan yang terukur waktu dan besarannya, tanpa repot mengurusi keluhan dan hak karyawan. Hanya saja, spektrum yang digunakan bukannya milimeterband namun gelombang panjang semisal 700 MHz dan 900 MHz, juga bahkan 450 MHz. Kelebihan spektrum ini bertolak belakang dengan milimeterband, sebab jarak antar-BTS bisa jauh karena radius jangkauan BTS-nya bisa sampai lima kilometer-an. Hal lain yang bisa jadi prasyarat untuk operasional 5G adalah pemilikan serat optik (fibre optic) yang kapasitasnya nyaris tidak terbatas. &nbsp; Fiber optik ini yang harus menjangkau semua BTS yang dioperasikan, sehingga kemampuan prima 5G bisa tersalurkan. Dari semua operator, lagi-lagi Kelompok Telkom yang memiliki jaringan fiber optik terpanjang, sampai 100.000 kilometer, sementara Moratel baru 30.000 Km, yang itu pun sudah membahagiakan Smartfren ketika berhasil membeli 20 persen lebih saham Moratel. Namun pemilikan fiber sepanjang itu belum optimal kalau &ldquo;urat-urat&rdquo; fiber belum masuk semua pelosok, menyambung semua BTS si operator. Baca juga: 5G Diprediksi Membunuh PlayStation dkk Dalam kaitan ini, XL Axiata pun menjual hampir semua menara BTS-nya, lalu menyewanya kembali, karena BTS nantinya tidak terlalu optimal tanpa semua tersambung ke serat optik. Dan, mereka sedang melakukan fiberisasi, menyambungkan serat optik ke semua BTS-nya.<br />\r\n<br />\r\nArtikel ini telah tayang di&nbsp;<a href=\"https://www.kompas.com/\">Kompas.com</a>&nbsp;dengan judul &quot;Luncurkan 5G, Tidak Sekadar Punya 2300 MHz&quot;, Klik untuk baca:&nbsp;<a href=\"https://tekno.kompas.com/read/2021/06/11/12501317/luncurkan-5g-tidak-sekadar-punya-2300-mhz?page=all#page2\">https://tekno.kompas.com/read/2021/06/11/12501317/luncurkan-5g-tidak-sekadar-punya-2300-mhz?page=all#page2</a>.<br />\r\n<br />\r\nEditor : Amir Sodikin<br />\r\n<br />\r\nDownload aplikasi&nbsp;<a href=\"https://www.kompas.com/\">Kompas.com</a>&nbsp;untuk akses berita lebih mudah dan cepat:<br />\r\nAndroid:&nbsp;<a href=\"https://bit.ly/3g85pkA\">https://bit.ly/3g85pkA</a><br />\r\niOS:&nbsp;<a href=\"https://apple.co/3hXWJ0L\">https://apple.co/3hXWJ0L</a></p>\r\n'),
(11, '60c32c2975b4c.jpg', 'Bocoran Ungkap Samsung Galaxy Z Fold 3 Punya Kamera di Dalam Layar', 2, '2021-06-11', '<p>Penulis Kevin Rizky Pratama | Editor Yudha Pratomo</p>\r\n\r\n<p>KOMPAS.com - Desas-desus terkait kehadiran ponsel lipat Galaxy Z Fold 3 kembali mencuat di internet. Kabar terbaru menyebut bahwa Samsung akan membekali ponsel ini dengan kamera di bawah layar.</p>\r\n\r\n<p>Kabar tersebut terendus dari kicauan Max Weinbach, penulis media teknologi yang juga dikenal sebagai pembocor gadget kenamaan.</p>\r\n\r\n<p>Dalam sebuah unggahan, Weinbach mengatakan bahwa Galaxy Z Fold 3 akan memiliki kamera selfie yang ditanamkan di bawah layar.</p>\r\n\r\n<p>Meski masih berupa rumor, namun, informasi serupa juga turut disampaikan oleh Ice Universe, yang kerap memberikan bocoran seputar gadget terbaru dengan akurat.</p>\r\n\r\n<p>Melalui akun Twitternya, Ice Universe mengatakan bahwa Galaxy Z Fold 3 teknologi kamera di dalam layar akan memungkinkan layar ponsel untuk dapat terbagi menjadi dua bagian.</p>\r\n\r\n<p>Namun, hal ini akan membuat sensor kamera menjadi lebih nampak seperti halnya yang terjadi pada ponsel ZTE Axon 20 5G saat ini.</p>\r\n\r\n<p>Di sisi lain, teknologi baru ini turut membawa keuntungan. Karena mampu memancarkan transmisi cahaya yang lebih baik, kamera selfie pada Galaxy Z Fold 3 konon dapat menghasilkan kualitas gambar yang lebih baik.</p>\r\n\r\n<p>Kabar soal penggunaan kamera di bawah layar pada Galaxy Z Fold 3 ini sudah muncul sejak Januari lalu.</p>\r\n\r\n<p>Kala itu, Samsung memamerkan teknologi bernama Under Panel Camera (UPC). Awalnya, teknologi tersebut diduga akan hadir di Galaxy S21 Series. Namun, dugaan tersebut tidak terbukti.<br />\r\n<br />\r\nArtikel ini telah tayang di&nbsp;<a href=\"https://www.kompas.com/\">Kompas.com</a>&nbsp;dengan judul &quot;Bocoran Ungkap Samsung Galaxy Z Fold 3 Punya Kamera di Dalam Layar&quot;, Klik untuk baca:&nbsp;<a href=\"https://tekno.kompas.com/read/2021/06/11/12320047/bocoran-ungkap-samsung-galaxy-z-fold-3-punya-kamera-di-dalam-layar\">https://tekno.kompas.com/read/2021/06/11/12320047/bocoran-ungkap-samsung-galaxy-z-fold-3-punya-kamera-di-dalam-layar</a>.<br />\r\nPenulis : Kevin Rizky Pratama<br />\r\nEditor : Yudha Pratomo<br />\r\n<br />\r\nDownload aplikasi&nbsp;<a href=\"https://www.kompas.com/\">Kompas.com</a>&nbsp;untuk akses berita lebih mudah dan cepat:<br />\r\nAndroid:&nbsp;<a href=\"https://bit.ly/3g85pkA\">https://bit.ly/3g85pkA</a><br />\r\niOS:&nbsp;<a href=\"https://apple.co/3hXWJ0L\">https://apple.co/3hXWJ0L</a></p>\r\n'),
(12, '60c32df707a87.jpg', 'Tanda-tanda Kehadiran Windows 11', 1, '2021-06-11', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Penulis Galuh Putri Riyanto | Editor Yudha Pratomo</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">KOMPAS.com - Terhitung sudah enam tahun sejak Microsoft meluncurkan sistem operasi Windows 10 ke pasaran. Kabar baiknya, kehadiran OS Windows generasi selanjutnya alias Windows 11, konon sudah di depan mata.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Microsoft pun telah memberikan tanda-tanda kehadiran Windows 11 dalam beberapa kesempatan berbeda. Mulai dari merilis sebuah wallpaper yang membentuk angka 11, merilis video berdurasi 11 menit, hingga akan mengadakan sebuah acara pada pukul 11. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Yang paling baru, perusahaan rintisan Bill Gates itu mengunggah sebuah video berdurasi 11 menit berjudul Windows Startup Sounds &ndash; Slo-fi Remix di kanal YouTube resminya. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Video tersebut berisi kompilasi suara startup tiga sistem operasi lawas Microsoft, yakni Windows 95, XP, dan 7 yang diperlambat hingga 4.000 persen. Video tersebut juga menyajikan rentetan wallpaper ikonik di ketiga OS lawas tersebut. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Dalam keterangannya, Microsoft menyebutkan, kompilasi suara tersebut dapat membantu pengguna untuk rileks sembari menanti acara &quot;Microsoft Event&quot; yang akan diselenggarakan pada 24 Juni mendatang, pukul 11 a.m EST atau sekitar pukul 22.00 WIB. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">pada awal Juni ini, Microsoft merilis wallpaper baru yang memperlihatkan sebuah jendela khas logo Microsoft. Jendela itu terlihat terpapar sinar sehingga memberikan bayangan membentuk angka 11. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Dengan mengingat semua yang telah dibagikan oleh Microsoft tersebut, ini kemungkinan menginsyaratkan kehadiran Windows 11 yang tidak lama lagi. Lihat Foto Tampilan wallpaper baru Windows yang menginsyaratkan kehadiran Windows 11.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">(HotHardware) Tak hanya itu, indikasi lain kehadiran penerus Windows 10 itu juga muncul dari pernyataan CEO Microsoft langsung. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Pada bulan Mei lalu, CEO Microsoft Satya Nadella mengonfirmasi bahwa perusahaan akan membagikan pembaruan paling signifikan dalam satu dekade terakhir untuk sistem operasi garapannya.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">&nbsp;&quot;Kami akan membagikan salah satu pembaruan paling signifikan untuk Windows dalam dekade terakhir dalam waktu dekat,&quot; kata Nadella. &quot;Saya telah menghostingnya sendiri selama beberapa bulan terakhir, dan saya sangat bersemangat dengan Windows generasi selanjutnya,&quot; lanjut Nadella. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Antarmuka Windows 11 akan dirombak? </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Pada akhir Mei lalu, Microsoft juga batal meluncurkan sistem operasi 10X yang ditujukan khusus untuk perangkat tablet dan laptop layar ganda. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Menurut rumor, perusahaan justru berencana memboyong fitur-fitur yang ada pada Windows 10X ke Windows 11. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Salah satunya ialah perombakan antarmuka (UI) masif yang diberi nama kode Sun Valley. Sun Valley kabarnya akan membawa desain UI baru yang akan memperbarui dan memodernisasi pengalaman pengguna ketika menggunakan desktop Windows. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Kabar lain menyebutkan, peluncuran Windows 11 akan bersamaan dengan kehadiran posesor inter baru, yakni Intel generasi ke-12 Alder Lake Core. Dengan begitu, Windows 11 juga diharapkan hadir dengan membawa fitur-fitur baru yang dirancang khusus untuk prosesor hybrid tersebut,&nbsp;sebagaimana dihimpun KompasTekno dari HotHardware, Jumat (11/6/2021). Untuk digarisbawahi, kehadiran Windows 11 ini masih berupa tanda-tanda. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:Roboto\"><span style=\"color:#2a2a2a\">Microsoft juga belum memberikan informasi resmi soal kelahiran penerus dari Windows 10 itu. Kita tunggu saja.</span></span></span></span></span></span><br />\r\n&nbsp;</p>\r\n'),
(13, '60c32efd79187.jpg', 'Siasat Baru Apple Rayu Pengguna Android agar Beralih ke iPhone', 1, '2021-06-11', '<p>Penulis Wahyunanda Kusuma Pertiwi | Editor Oik Yusuf</p>\r\n\r\n<p>KOMPAS.com - Apple agaknya semakin ambisius untuk menarik pengguna Android agar mau migrasi ke iOS. Siasat terbaru yang dilancarkan adalah rencana peningkatan aplikasi &quot;Move to iOS&quot; yang ada di perangkat Android.</p>\r\n\r\n<p>Aplikasi yang mulai hadir sejak tahun 2015 lalu ini bertujuan memudahkan pengguna Android untuk pindah ke iPhone. Seiring dengan kehadiran iOS 15, kemampuan Move to iOS bakal lebih lengkap.</p>\r\n\r\n<p>Aplikasi ini bisa memindahkan beberapa konten, seperti kontak, riwayat pesan, foto, video, bookmark web, akun e-mail, kalender, dan wallpaper.</p>\r\n\r\n<p>Ini Deretan Fitur Barunya Nantinya, aplikasi Move to OS juga bakal bisa memindahkan seluruh foto, album, file, folder, hingga setelan accessibility&nbsp;dari perangkat Android ke iPhone.</p>\r\n\r\n<p>Pengguna Android pun tidak perlu repot melakukan terlalu banyak pengaturan ulang ketika berpindah ke iOS Apple juga memudahkan cara mendapatkan Move to iOS dengan menerapkan kode QR yang bisa dipindai pengguna Android untuk diarahkan ke laman&nbsp;download aplikasi tersebut di toko Play Store.</p>\r\n\r\n<p>Dihimpun KompasTekno dari MacRumors, Kamis (10/6/2021), peningkatan kemampuan Move to iOS ini bakal bisa digunakan dengan iPhone yang menjalankan sistem operasi iOS 15.</p>\r\n\r\n<p>Terima kasih telah membaca Kompas.com. Dapatkan informasi, inspirasi dan insight di email kamu.</p>\r\n\r\n<p>Dengan kata lain, pengguna Android baru akan bisa memanfaatkannya ketika OS Apple tersebtu dirilis sekitar bulan September hingga November mendatang.</p>\r\n\r\n<p>Aplikasi Move to iOS sendiri agaknya juga perlu diperbarui. iOS dan Android praktis menjadi penguasa platform mobile saat ini, setelah BlackBerry OS dan Windows Phone gagal menjadi alternatif di urutan ketiga.</p>\r\n\r\n<p>Menurut data dari GS Stat Counter, pangsa pasar Android mencapai 72,72 persen per bulan Mei 202, sementara iOS menguasai 25,47 persen.</p>\r\n'),
(14, '60c33c51e158f.jpg', 'Unboxing dan Menjajal Samsung Galaxy Tab A7 Lite, Tablet 8,7 Inci Harga Rp 2 Jutaan', 2, '2021-06-11', '<p>Penulis Galuh Putri Riyanto | Editor Oik Yusuf KOMPAS.com - Samsung baru saja memboyong tablet dengan harga Rp 2,5 juta ke pasar Indonesia, yaitu Samsung Galaxy Tab A7 Lite. Meski dihargai Rp 2 jutaan, tablet berukuran 8,7 inci yang merupakan versi lebih kecil dari Tab A7 sebelumnya ini diklaim tetap dibekali dengan sejumlah fitur mumpuni. KompasTekno berkesempatan menjajal Galaxy Tab A7 Lite varian warna Gray. Dari segi kemasan, kotak penjualan Galaxy Tab A7 Lite mengusung desain minimalis, yakni menggunakan latar belakang didominasi warna putih, dilengkapi gambar dan nama perangkat di bagian depannya.<br />\r\n<br />\r\nKetika dibuka, isi kotak penjualannya pun minimalis, yakni hanya ada satu perangkat, buku panduan penggunaan, charger, dan SIM card ejector tool. Saat digenggam, untuk ukuran tablet,&nbsp;Galaxy Tab A7 Lite&nbsp;masih terasa ringan dan tipis di tangan. Tablet ini memiliki bobot 371 gram dan ketebalan 8 mm. Dari segi desain, Galaxy Tab A7 Lite memberikan kesan premium karena bagian punggungnya memiliki finishing matte berwarna abu-abu. Kendati demikian, punggung Galaxy Tab A7 Lite masih terasa licin apabila diusap.<br />\r\n<br />\r\nGalaxy Tab A7 Lite yang terasa ringan, tipis, dan licin membuatnyua rawan terlepas dari genggaman tangan. Solusinya, pengguna agaknya perlu menggunakan soft atau hard case tablet. Di bagian depan, Galaxy Tab A7 Lite mengusung layar LCD TFT berbentang 8,7 inci dengan resolusi 800 x 1.340 piksel. Meski memiliki layar hampir 9 inci, tablet ini masih dapat digenggam dengan satu tangan.<br />\r\n<br />\r\nDi bagian tengan atas layar, terdapat sebuah lubang mungil, tempat kamera selfie beresolusi 2 MP berada.&nbsp; Di bagian punggungnya, tablet hanya ini dibekali dengan satu kamera belakang beresolusi 8 MP. Beralih ke sektor dapur pacu, Galaxy Tab A7 Lite ditenagai chip Mediatek Helio P22T (12 nm) dengan CPU octa-core (4x2.3GHz + 4x1.8GHz),&nbsp; dipadankan dengan RAM 3 GB dan media internal 32 GB, yang bisa diekspansi dengan kartu miroSD hingga 1 TB.<br />\r\n&nbsp;</p>\r\n'),
(15, '60c33dabce407.jpeg', 'Hacker Bobol Server EA, Curi Kode Penting Game FIFA 21', 3, '2021-06-11', '<p>Penulis Bill Clinten | Editor Yudha Pratomo</p>\r\n\r\n<p>KOMPAS.com - Server perusahaan game raksasa asal Amerika Serikat, Electronic Arts (EA), dibobol oleh peretas (hacker).</p>\r\n\r\n<p>Aksi tersebut diduga terjadi pada 6 Juni lalu. Akibatnya, sejumlah source code (kode sumber) atau kodepenting yang bisa digunakan untuk mengembangkan game besutan EA dicuri peretas.</p>\r\n\r\n<p>Adapun beberapa file yang dicuri mencakup source code milik FIFA 21, FIFA 22, game engine Frostbite, dan lain sebagainya.</p>\r\n\r\n<p>Peretas mengklaim besaran file yang berhasil dicuri mencapai 780 GB. Namun, pihak EA memastikan bahwa tidak ada data pemain yang ikut dicuri dalam aksi peretasan ini.</p>\r\n\r\n<p>Berdasarkan laporan Motherboard, para peretas ini tampaknya belum merilis data tersebut ke publik. Baca juga: Hacker Korea Utara Berupaya Bobol Server Pembuat Vaksin Covid-19 Para peretas ini tampaknya akan lebih memilih untuk menjual data yang berhasil dicuri melalui sejumlah forum di internet.</p>\r\n\r\n<p>Mereka diduga akan menjual data tersebut kepada penawar tertinggi.&nbsp; Belum diketahui siapa sebenarnya identitas pencuri ini. Yang jelas, pihak EA membenarkan bahwa server mereka memang sempat diretas oleh orang yang tidak bertanggung jawab.</p>\r\n\r\n<p>&nbsp;&quot;Kami tengah menginvestigasi gangguan terkini yang melanda server kami, di mana source code dari sejumlah game, begitu juga sejumlah tool, berhasil dicuri,&quot; ujar pihak EA. Mereka melanjutkan bahwa data pemain yang tersimpan di server-nya aman, sehingga para pemain tak perlu khawatir terkait berbagai masalah privasi, sebagaimana dirangkum KompasTekno dari VG247, Jumat (11/6/2021).</p>\r\n\r\n<p>Saat ini, EA menjelaskan bahwa pihaknya tengah bekerja sama dengan pihak terkait untuk menginvestigasi kasus peretasan ini lebih lanjut, serta telah melakukan sejumlah pembaruan terhadap sistem mereka.</p>\r\n\r\n<p>&quot;Kami telah menerapkan sejumlah peningkatan keamanan dan memastikan bahwa (peretasan) tidak memiliki dampak yang berarti terhadap game-game atau bisnis kami,&quot; imbuh pihak EA. Sempat melanda CD Projekt Red Ini bukan pertama kalinya perusahaan pengembang game diretas.</p>\r\n\r\n<p>Sekitar Februari lalu, pengembang game asal Polandia, CD Projekt Red (CDPR) mengonfirmasi bahwa mereka menjadi target dari serangan siber. Baca juga: Elon Musk Jadi Incaran Kelompok Peretas Anonymous Para peretas mengklaim berhasil mencuri data penting milik perusahaan, termasuk source code sejumlah game dan dokumen lain.</p>\r\n\r\n<p>Menurut CDPR, peretas berhasil masuk ke dalam jaringan internal perusahaan, menanamkan ransomware dan mengambil sejumlah data yang tersimpan di dalamnya.</p>\r\n\r\n<p>Peretas juga meninggalkan sebuah pesan yang mengatakan bahwa data milik perusahaan telah dienkripsi dan peretas meminta tebusan.</p>\r\n\r\n<p>Hacker tersebut lantas mengeklaim bahwa mereka berhasil mencuri source code dari game Cyberpunk 2077, The Witcher 3: The Wild Hunt, dan Gwent: The Witcher Card Game.</p>\r\n\r\n<p>Tak cuma itu, peretas juga mengklaim telah mengantongi dokumen penting perusahaan yang terkait dengan data keuangan, SDM, dokumen dengan investor, dan lainnya.<br />\r\n&nbsp;</p>\r\n'),
(16, '60c33ea20f374.jpg', 'Realme 8 5G Segera Masuk Indonesia, Dijanjikan Jadi Ponsel 5G \"Termurah\"', 2, '2021-06-11', '<p>Penulis Galuh Putri Riyanto | Editor Oik Yusuf</p>\r\n\r\n<p>KOMPAS.com - Pada awal April lalu, Realme baru saja menelurkan dua smartphone anyarnya, yaitu Realme 8 dan Realme 8 Pro di Indonesia.</p>\r\n\r\n<p>Realme kini berniat menghadirkan model lain dari lini Realme 8 yang sudah mendukung konektivitas jaringan 5G, yaitu Realme 8 5G, dalam waktu dekat. Rencana ini diungkap oleh Palson Yi selaku Marketing Director Realme Indonesia. &quot;Realme sepenuhnya siap menjadi vendor yang mempopulerkan 5G. Perangkat kami yang akan segera dirilis ialah Realme 8 5G,&quot; ungkap Yi,&nbsp;dalam acara bertajuk Realme 5G Summit Indonesia yang disiarkan secara online, hari ini, Selasa (8/6/2021).</p>\r\n\r\n<p>Yi mengklaim Realme 8 5G akan menjadi smartphone 5G paling murah di Indonesia, tapi dia belum mau mengungkap harga dari ponsel tersebut.</p>\r\n\r\n<p>Yi hanya memberikan kisi-kisi bahwa harga Realme 8 5G akan lebih &quot;murah&quot;, dibandingkan harga pasaran smartphone 5G yang biasanya berkisar di atas Rp 5 juta.</p>\r\n\r\n<p>&quot;Harga pasaran ponsel 5G masih di atas Rp 5 juta, dan sejauh ini yang paling murah mungkin masih di atas Rp 3,5 juta. Kalau kami ingin menjadi ponsel 5G termurah, berapa harganya?,&quot; kata Yi.</p>\r\n\r\n<p>Sebagai perbandingan, pada saat peluncurannya April lalu, Realme 8 dijual seharga Rp 3,6 juta di Indonesia. Sementara, Realme 8 Pro yang memiliki spesifikasi lebih canggih dihargai Rp 4,5 juta.</p>\r\n\r\n<p>Janji kecepatan internet 2,77 Gbps</p>\r\n\r\n<p>Selain menggoda penggemar dengan harga &quot;termurah&quot;, Yi juga telah membocorkan bahwa Realme 8 5G ini menggunakan System-on-Chip MediaTek Dimensity 700 5G dengan proses fabrikasi 7nm.</p>\r\n\r\n<p>Model 5G di SoC tersebut diklaim bisa menghasilkan kecepatan internet (downlink) hingga 2,77 Gbps. Dimensity 700 5G juga mendukung refresh rate 90 Hz, berikut sensor kamera utama 48 MP atau 64 MP, serta mode pemotretan AI-bokeh, AI-color, dan AI-beauty.</p>\r\n\r\n<p>Dari situ dapat diduga bahwa Realme 8 5G setidaknya akan&nbsp;memiliki fitur-fitur seperti tersebut di atas.&nbsp;</p>\r\n\r\n<p>Sayangnya, Yi tidak memberikan bocoran spesifikasi lainnya dari ponsel 5G yang diklaim paling murah itu. Namun, dari segi desain, tampaknya Realme 8 versi 5G akan serupa dengan dua saudaranya yang telah dirilis lebih dahulu.</p>\r\n\r\n<p>Saat ditanya soal tanggal perilisan, Yi hanya menggoda penggemar dengan menjawab singkat. &quot;Sebentar lagi,&quot; katanya, sambil menambahkan bahwa ponsel tersebut saat ini sedang melakukan uji coba jaringan 5G dengan operator seluler Smartfren.&nbsp;</p>\r\n\r\n<p>KompasTekno sudah mencoba mengonfirmasi apakah Realme 8 5G ini sudah akan mendukung band n40 atau belum.</p>\r\n\r\n<p>Kendati demikian, hingga berita ini ditulis belum ada jawaban dari Realme. Dukungan perangkat pada pita n40 di frekuensi 2.300 MHz ini menjadi persyaratan mendasar agar suatu ponsel bisa menikmati layanan 5G di Indonesia seperti yang sudah mulai digelar oleh Telkomsel.</p>\r\n'),
(17, '60c33f5c44fe7.jpg', 'Bocoran Performa Snapdragon 888 Plus, Skor Lebih Tinggi dari Versi Biasa', 3, '2021-06-10', '<p>Penulis Conney Stephanie | Editor Reska K. Nistanto</p>\r\n\r\n<p>KOMPAS.com -&nbsp;Qualcomm dikabarkan tengah bersiap merilis chip mobile kelas atas baru, yakni Snapdragon 888 Plus.</p>\r\n\r\n<p>SoC ini bakal menjadi suksesor dari Snapdragon 888 versi standar dan kemungkinan memiliki performa lebih tinggi.</p>\r\n\r\n<p>Meski belum ada informasi resmi mengenai chip tersebut, namun baru-baru ini bocoran tentang Snapdragon 888+ mulai beredar di internet.</p>\r\n\r\n<p>Kali ini, chip tersebut muncul di halaman situs pengujian performa (benchmark) Geekbench. Berdasarkan bocoran skor benchmark multi-platform Geekbench, yang dipublikasikan oleh pembocor Abhishek Yadav, Snapdragon 888 Plus menghasilkan nilai pengujian single core sebesar 1.171 poin dan multi core sebesar 3.704 poin.</p>\r\n\r\n<p>Qualcomm Teratas Dari tangkapan layar yang beredar, pengujian tersebut dilakukan pada perangkat yang menjalankan sistem operasi (OS) Android 11.</p>\r\n\r\n<p>Namun, tidak disebutkan perangkat apa yang digunakan dalam pengujian ini. Lihat Foto Bocoran benchmark Geekbench Snapdragon 888 Plus(phonearena.com) T</p>\r\n\r\n<p>Jika dibandingkan dengan versi standar, skor Snapdragon 888 Plus yang berkode nama &quot;Lahaina&quot; itu lebih tinggi daripada skor Snapdragon 888 di Samsung Galaxy S21, yang mencatat skor single core 1.043 poin dan multi core 3.090 poin.</p>\r\n\r\n<p>Begitu juga dengan OnePlus 9 yang hanya memperoleh skor single core 1.127 poin dan multi core 3.667 poin.</p>\r\n\r\n<p>Snapdragon 888 Plus adalah chip dengan delapan inti (octa-core) dengan satu core CPU&nbsp; utama, satu kluster dengan 3 core CPU, dan satu kluster dengan 4 core CPU.</p>\r\n\r\n<p>Core utamanya adalah CPU berbasis ARM Cortex-X1 dengan kecepatan clock 3,00 GHz. Sebelumnya, CPU Kryo 680 pada Snapdragon 888 versi standar hanya memiliki kecepatan 2,84 GHz.</p>\r\n\r\n<p>Selain core utama, terdapat juga satu kluster yang terdiri atas tiga core, yang kabarnya menggunakan CPU Cortex-A78, dengan kecepatan clock 2,42 GHz.</p>\r\n\r\n<p>Terakhir, terdapat pula satu kluster empat core yang berbasis Cortex-A55 dengan frekuensi 1,80 GHz, sebagaimana dihimpun KompasTekno dari Phone Arena, Kamis (3/6/2021).</p>\r\n\r\n<p>GPU ngebut Tak hanya CPU, kinerja pengolah grafis (GPU) pun kabarnya juga turut digenjot. Adreno 660 yang tersemat di Snapdragon 888 Plus ini diklaim lebih ngebut dibanding GPU yang sama di versi standar.<br />\r\n&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_category`
--

CREATE TABLE `news_category` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `news_category`
--

INSERT INTO `news_category` (`id`, `judul`) VALUES
(1, 'software'),
(2, 'Gadget'),
(3, 'Internet');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider_desc`
--

CREATE TABLE `slider_desc` (
  `id` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `slider_desc`
--

INSERT INTO `slider_desc` (`id`, `judul`, `deskripsi`) VALUES
(1, 'You <span>learn</span> at <span>home</span>', 'Belajar dengan suasana hati yang lebih asik dan mempelajari hal baru setiap harinya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider_home`
--

CREATE TABLE `slider_home` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `slider_home`
--

INSERT INTO `slider_home` (`id`, `gambar`, `deskripsi`) VALUES
(1, '60c459c03e133.png', 'pexels-agung-pandit-wiguna-3401403'),
(2, '60c459d98dc94.png', 'pexels-andrea-piacquadio-3768172'),
(3, '60c459e50bf5c.png', 'pexels-august-de-richelieu-4261790'),
(4, '60c459f17106a.png', 'pexels-energepiccom-313690'),
(5, '60c45a04e8264.png', 'pexels-joshua-mcknight-1139311');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galery_category`
--
ALTER TABLE `galery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `item_home`
--
ALTER TABLE `item_home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jumbotron`
--
ALTER TABLE `jumbotron`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jumbotron_home`
--
ALTER TABLE `jumbotron_home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `my_services`
--
ALTER TABLE `my_services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider_desc`
--
ALTER TABLE `slider_desc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider_home`
--
ALTER TABLE `slider_home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `galery_category`
--
ALTER TABLE `galery_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `item_home`
--
ALTER TABLE `item_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jumbotron`
--
ALTER TABLE `jumbotron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jumbotron_home`
--
ALTER TABLE `jumbotron_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_services`
--
ALTER TABLE `my_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `slider_desc`
--
ALTER TABLE `slider_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `slider_home`
--
ALTER TABLE `slider_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
