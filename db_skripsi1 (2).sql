-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2017 at 09:21 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_skripsi1`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_factor_luftman`
--

CREATE TABLE IF NOT EXISTS `t_factor_luftman` (
`id` int(4) NOT NULL,
  `href` varchar(20) NOT NULL,
  `factor` varchar(20) NOT NULL,
  `descript` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `t_factor_luftman`
--

INSERT INTO `t_factor_luftman` (`id`, `href`, `factor`, `descript`) VALUES
(1, 'komunikasi', 'Faktor Komunikasi', 'Dalam hal ini adalah proses pertukaran gagasan. Jika organisasi telah memiliki proses berkomunikasi yang baik, maka pertukaran gagasan akan efektif dan pemahaman yang jelas tentang apa yang diperlukan untuk memastikan strategi yang diterapkan akan menghasilkan kesuksesan. Ketika proses komunikasi dilakukan dengan sering, maka akan ada sedikit kesadaran bisnis dari TI atau sedikit penghargaan TI dari pihak bisnis atau organisasi. Untuk lingkungan yang dinamis, selalu pestikan bahwa berbagi pengetahuan yang berkelanjutan adalah hal yang sangat penting.'),
(2, 'kompetensi', 'Faktor Kompetensi', 'Berhubungan dengan pemahaman bisnis dalam organisasinya. Seta penggunaan nilai metrik bisnis dan nilaai metrik TI. Ukuran kompetensi juga berbicara tentang tingkat layanan yang menilai komitmen TI dalam membantu proses bisnis, termasuk bagaimana penyampaian istilah TI yang dapat dipahami dan diterima bisnis. Tingkat layanan juga terkait dengan kriteria yang secara jelas menentukan imbalan jika TI terlaksana dengan baik, ataupun denda jika tujuan tidak terlaksana. Kesiapan ukuran kompetensi juga berkaitan dengan peningkatan yang berlanjut atau terus menerus.'),
(3, 'kelola', 'Faktor Tata Kelola', 'Meliputi pertimbangan untuk tata kelola TI mencakup bagaimana kewenangan sumber daya, risiko, resolusi konflik, dan tanggung jawab untuk TI dibagi di antara mitra bisnis, manajemen TI, dan penyedia layanan. Isu pemilihan dan prioritas proyek disertakan juga disertakan dalam kesiapan organisasi. Memastikan bahwa peserta bisnis dan TI yang sesuai telah membahas dan meninjau prioritas dan alokasi sumber daya TI adalah salah satu hal terpenting dalam penyelarasan. Kewenangan pengambilan keputusan ini juga perlu didefinisikan secara jelas'),
(4, 'kerjasama', 'Faktor Kerjasama', 'Berkaitan dengan memastikan sponsor bisnis dan mitra usaha TI yang tepat, dan pembagian risiko serta penghargaan merupakan kontributor utama penyelarasan yang matang. Kemitraan ini harus berkembang ke titik di mana TI memungkinkan dan mendorong perubahan pada proses bisnis dan strategi bisnis. Tentu, ini menuntut penglihatan yang jelas, yang dilakukan oleh pemilik organisasi dan elemen penting lainnya.'),
(5, 'lingkup', 'Faktor Ruang Lingkup', 'Ruang lingkup teknologi berkaitan dengan penilaian penerapan teknologi baru yang efektif, mendorong proses bisnis dan strategi sebagai standar yang benar, berasumsi peran pendukung infrastruktur fleksibel yang transparan bagi semua elemen bisnis, baik itu mitra dan pelanggan. Serta berkaitan dengan pemberian solusi yang tepat, yang sesuai dengan kebutuhan pelanggan'),
(6, 'kemampuan', 'Faktor Kemampuan', 'Mencakup semua pertimbangan sumber daya manusia TI, seperti inovasi, semangat wirausahawan yang dimiliki SDM TI, bagaimana gaya manajemen yang digunakan, perubahan kesiapan, serta lingkungan sosial, dan politik yang terpercaya.');

-- --------------------------------------------------------

--
-- Table structure for table `t_indicator_luftman`
--

CREATE TABLE IF NOT EXISTS `t_indicator_luftman` (
`id` int(11) NOT NULL,
  `idf` int(11) NOT NULL,
  `indicator` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `t_indicator_luftman`
--

INSERT INTO `t_indicator_luftman` (`id`, `idf`, `indicator`) VALUES
(1, 1, 'Pemahaman secara umum TI terha'),
(2, 1, 'Pemahaman secara umum bisnis T'),
(3, 1, 'Mempelajari keadaan organisasi'),
(4, 1, 'Komunikasi timbal balik antara'),
(5, 1, 'Keselaran pengetahuan investas'),
(6, 1, 'Penguatan semangat dari kerja '),
(7, 2, 'Ukuran standar TI'),
(8, 2, 'Ukuran standar untuk kegiatan '),
(9, 2, 'Hubungan antara ukuran TI dan '),
(10, 2, 'Persetujuan dalam tingkatan la'),
(11, 2, 'Pemodelan / Pembandingan'),
(12, 2, 'Proses evaluasi dan revisi dal'),
(13, 2, 'Budaya melakukan perbaikan sec'),
(14, 3, 'Perencanaan strategis dilakuka'),
(15, 3, 'Perencanaan strategi TI dilaku'),
(16, 3, 'Struktur organisasi'),
(17, 3, 'Cara menggunakan dana dan inve'),
(18, 3, 'Manajemen yang efektif untuk i'),
(19, 3, 'Komite yang memimpin dan menen'),
(20, 3, 'Prioritas proyek TI yang sesua'),
(21, 4, 'Kesadaran tentang Bisnis TI / '),
(22, 4, 'Keterlibatan manajer TI dalam '),
(23, 4, 'Penerimaan resiko, penghargaan'),
(24, 4, 'Manajemen komunikasi TI dan bi'),
(25, 4, 'Trust (to Information Technolo'),
(26, 4, 'Kumpulan dukungan senior manaj'),
(27, 5, 'Peran TI dalam menentukan stra'),
(28, 5, 'Standard Articulation'),
(29, 5, 'Organisasi Fungsional'),
(30, 5, 'Enterprise (Perusahaan)'),
(31, 5, 'Inter ? Enterprise (Antar peru'),
(32, 5, 'Transparansi dan fleksibilitas'),
(33, 6, 'Dorongan lingkungan untuk beri'),
(34, 6, 'Pusat kekuatan TI / Lokasi kek'),
(35, 6, 'Kesiapan dalam menghadapi peru'),
(36, 6, 'Adanya kesempatan untuk bertuk'),
(37, 6, 'Mempertahankan rencana pengemb'),
(38, 6, 'Sosial kooperasi baik lingkung'),
(39, 6, 'Cara atau gaya manajemen bisni');

-- --------------------------------------------------------

--
-- Table structure for table `t_likert_luftman`
--

CREATE TABLE IF NOT EXISTS `t_likert_luftman` (
`id` int(4) NOT NULL,
  `idf` int(4) NOT NULL,
  `idin` int(4) NOT NULL,
  `descript` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `t_likert_luftman`
--

INSERT INTO `t_likert_luftman` (`id`, `idf`, `idin`, `descript`) VALUES
(1, 1, 1, 'Kurang sadar akan pentingnya Manajemen TI'),
(2, 1, 1, 'Terbatasnya kesadaran pemahaman  TI terhadap prose'),
(3, 1, 1, 'Pemahaman TI ada pada manajemen bagian tengah ke a'),
(4, 1, 1, 'Adanya dorongan penggunaan TI melalui organisasi'),
(5, 1, 1, 'Penyerapan fungsi TI untuk proses bisnis'),
(6, 1, 2, 'Kurang sadar akan pentingnya Manajemen bisnis'),
(7, 1, 2, 'Terbatasnya kesadaran pemahaman  bisnis terhadap T'),
(8, 1, 2, 'Munculnya kesadaran tentang pemahaman bisnis'),
(9, 1, 2, 'Bisnis menyadari akan potensi yang dimiliki organi'),
(10, 1, 2, 'Penyerapan proses bisnis untuk TI'),
(11, 1, 3, 'Adanya tim khusus yang mempelajari organisasi seca'),
(12, 1, 3, 'Pembelajaran dilakukan secara tidak formal'),
(13, 1, 3, 'Teratur dan jelas dalam mempelajari kondisi organi'),
(14, 1, 3, 'Kompak dan saling terikat satu sama lain'),
(15, 1, 3, 'Kuat dan terstruktur'),
(16, 1, 4, 'Komunikasi berlangsung karena adanya perintah dan '),
(17, 1, 4, 'Terbatas, tenang / malas'),
(18, 1, 4, 'Muncul rasa tenang'),
(19, 1, 4, 'Berkomunikasi secara tenang dan tidak formal (sant'),
(20, 1, 4, 'Berkomunasi secara santai'),
(21, 1, 5, 'Dilakukan secara khusus oleh tim ad-hoc'),
(22, 1, 5, 'Bersifat semi  terstruktur'),
(23, 1, 5, 'Terstruktur disekitar proses-proses yang penting'),
(24, 1, 5, 'Dijadikan kebiasaan'),
(25, 1, 5, 'Penyertaan enterprise dalam proses penyelaran peng'),
(26, 1, 6, 'Tidak ada atau dilakukan secara ad-hoc'),
(27, 1, 6, 'Berdasarkan pada terbatasnya teknologi taktis'),
(28, 1, 6, 'Dilakukan secara formal dalam pertemuan biasa'),
(29, 1, 6, 'Bersifat terikat, efektif diterapkan pada semua ti'),
(30, 1, 6, 'Penyertaan enterprise dalam proses pengembangan da'),
(31, 2, 1, 'Secara teknis, tidak berhubungan dengan bisnis'),
(32, 2, 1, 'Biaya yang efisien'),
(33, 2, 1, 'Pengelolaan keuangan yang tradisional'),
(34, 2, 1, 'Biaya yang efektif'),
(35, 2, 1, 'Diperpanjang pada rekanan eksternal'),
(36, 2, 2, 'Secara ad-hoc, tidak berhubungan dengan TI'),
(37, 2, 2, 'Fokus pada fungsional organisasi'),
(38, 2, 2, 'Pengelolaan keuangan yang tradisional'),
(39, 2, 2, 'Berbasis pada pelanggan'),
(40, 2, 2, 'Diperpanjang pada rekanan eksternal'),
(41, 2, 3, 'Pengukuran adhoc tidak terhubung'),
(42, 2, 3, 'Pengukuran tingkat bisnis dan TI tidak terhubung'),
(43, 2, 3, 'Pengukuran kemunculan bisnis dan TI terhubung'),
(44, 2, 3, 'Pengukuran tingkat bisnis dan TI terhubung'),
(45, 2, 3, 'Pengukuran bisnis, rekanan dan TI terhubung'),
(46, 2, 4, 'Kehadiran tidak tentu'),
(47, 2, 4, 'Bersifat teknikal di bagian fungsional'),
(48, 2, 4, 'Kemunculan sector TI di seluruh enterprise'),
(49, 2, 4, 'Penggunaan yang luas di berbagai enteprise'),
(50, 2, 4, 'Diperpanjang pada rekanan eksternal'),
(51, 2, 5, 'Tidak secara umum dipraktikan'),
(52, 2, 5, 'Dilakukan secara tidak formal'),
(53, 2, 5, 'Difokuskan pada proses-proses yang spesifik'),
(54, 2, 5, 'Dilakukan secara rutin'),
(55, 2, 5, 'Dilakukan secara rutin dengan rekanan lain'),
(56, 2, 6, 'Tidak dilakukan proses evaluasi dan revisi'),
(57, 2, 6, 'Dilakukan evaluasi dan revisi di beberapa bagian u'),
(58, 2, 6, 'Muncul formalitas'),
(59, 2, 6, 'Dilakukan secara formal'),
(60, 2, 6, 'Dilakukan secara formal'),
(61, 2, 7, 'Tidak ada'),
(62, 2, 7, 'Minim untuk melakukan perbaikan'),
(63, 2, 7, 'Perbaikan berkelanjutan diperlihatkan'),
(64, 2, 7, 'Dilakukan berkali-kali'),
(65, 2, 7, 'Rutin dilakukan'),
(66, 3, 1, 'Dilakukan secara ad-hoc'),
(67, 3, 1, 'Dasar perencanaan ada pada tingkat fungsional'),
(68, 3, 1, 'Terdapat beberapa perencanaan terhadap inter-organ'),
(69, 3, 1, 'Dikelola di seluruh perusahaan'),
(70, 3, 1, 'Terintegrasi secara menyeluruh dan diluar perusaha'),
(71, 3, 2, 'Dilakukan secara ad-hoc'),
(72, 3, 2, 'Perencanaan taktis fungsional'),
(73, 3, 2, 'Perencanaan difokuskan, dan terdapat beberapa pere'),
(74, 3, 2, 'Dikelola di seluruh perusahaan'),
(75, 3, 2, 'Terintegrasi secara menyeluruh dan diluar perusaha'),
(76, 3, 3, 'Pelaporan dilakukan terpusat atau dilakukan secara'),
(77, 3, 3, 'Pelaporan dilakukan terpusat atau dilakukan secara'),
(78, 3, 3, 'Pelaporan dilakukan terpusat atau dilakukan secara'),
(79, 3, 3, 'Pelaporan digabungkan. Laporan CIO kepada COO atau'),
(80, 3, 3, 'Pelaporan digabungkan. Laporan CIO kepada CEO'),
(81, 3, 4, 'Adanya pusat pembiayaan, karena pengeluaran tak me'),
(82, 3, 4, 'Adanya pusat pembiayaan oleh organisasi yang fungs'),
(83, 3, 4, 'Adanya pusat pembiayaan, untuk mengatasi beberapa '),
(84, 3, 4, 'Adanya pusat investasi'),
(85, 3, 4, 'Adanya pusat investasi dan pusat laba (benefit)'),
(86, 3, 5, 'Berdasarkan pembiayaan,  karena pengeluaran tak me'),
(87, 3, 5, 'Berdasarkan pembiayaan,  terfokus pada operasional'),
(88, 3, 5, 'Dilakukan secara tradisional, proses enabler'),
(89, 3, 5, 'Efektifitas pembiayaan, poros penggerak ada pada p'),
(90, 3, 5, 'Nilai bisnis, diperluas dengan rekanan bisnis dari'),
(91, 3, 6, 'Tidak formal / biasa seperti pegawai lainnya'),
(92, 3, 6, 'Komunikasi diatur secara berkala'),
(93, 3, 6, 'Berkomunikasi jelas seperti biasanya'),
(94, 3, 6, 'Komite yang efektif dibentuk secara formal '),
(95, 3, 6, 'Komite dibentuk dari kemitraan / rekanan '),
(96, 3, 7, 'Cepat tanggap tentang  suatu proyek'),
(97, 3, 7, 'Sesekali cepat dalam merespon'),
(98, 3, 7, 'Lebih banyak cepat dalam merespon'),
(99, 3, 7, 'Cepat dalam merespon pekerjaan, menjadi nilai tamb'),
(100, 3, 7, 'Nilai prioritas ditambahkan untuk mitra bisnis'),
(101, 4, 1, 'TI dianggap sebagai biaya bisnis organisasi'),
(102, 4, 1, 'TI muncul sebagai sebuah aset organisasi'),
(103, 4, 1, 'TI dipandang sebagai sebuah asset organisasi'),
(104, 4, 1, 'TI merupakan bagian dari strategi bisnis organisas'),
(105, 4, 1, 'Bisnis TI bersifat co-adaptif'),
(106, 4, 2, 'Tidak adanya peluang dalam area bisnis'),
(107, 4, 2, 'Proses bisnis sebagai enabler perencanaan strategi'),
(108, 4, 2, 'Proses bisnis sebagai kemudi perencanaan strategis'),
(109, 4, 2, 'Strategi bisnis sebagai enabler atau kemudi proses'),
(110, 4, 2, 'Bisnis TI bersifat co-adaptif'),
(111, 4, 3, 'TI mengambil resiko dengan penghargaan yang sediki'),
(112, 4, 3, 'TI mengambil cukup banyak resiko dengan penghargaa'),
(113, 4, 3, 'Adanya toleransi tentang resiko yang diambil, dala'),
(114, 4, 3, 'Penerimaan resiko oleh TI dan penghargaan nantinya'),
(115, 4, 3, 'Resiko dan penghargaan akan dibagikan'),
(116, 4, 4, 'Dilakukan secara ad-hoc'),
(117, 4, 4, 'Standar manajemen didefinisikan'),
(118, 4, 4, 'Standar manajemen telah ditaati'),
(119, 4, 4, 'Standar manajemen lebih meningkat'),
(120, 4, 4, 'Perbaikan yang berkelanjutan'),
(121, 4, 5, 'Pertentangan / minimal'),
(122, 4, 5, 'Mengutamatakn transaksional'),
(123, 4, 5, 'Memunculkan penghargaan terhadap penyedia layanan '),
(124, 4, 5, 'Penyedia layanan yang dihargai'),
(125, 4, 5, 'Rekanan bisnis yang dihargai'),
(126, 4, 6, 'Tidak terdapat dukungan'),
(127, 4, 6, 'Terbatas pada organisasi yang fungsional'),
(128, 4, 6, 'Ada pada tingkat organisasi fungsional'),
(129, 4, 6, 'Ada pada tingkat kualitas yang tinggi'),
(130, 4, 6, 'Berada pada tingkat CEO '),
(131, 5, 1, 'Dilakukan secara tradisional (contohnya proses aku'),
(132, 5, 1, 'Proses transaksi menggunakan sistem (contohnya Ent'),
(133, 5, 1, 'Ruang lingkup yang diperluas (contohnya proses bis'),
(134, 5, 1, 'Pendefinisian kembali ruang lingkup bisnis (contoh'),
(135, 5, 1, 'Ruang lingkup diambil dari eksternal organisasi, d'),
(136, 5, 2, 'Tidak ada atau dibuat secara ad-hoc'),
(137, 5, 2, 'Standar terdefinisi'),
(138, 5, 2, 'Memperlihatkan standar enterprise'),
(139, 5, 2, 'Standar enterprise'),
(140, 5, 2, 'Standar antar enterprise'),
(141, 5, 3, 'Tidak ada integrasi yang dilakukan secara formal'),
(142, 5, 3, 'Upaya awal untuk melakukan integrasi'),
(143, 5, 3, 'Diintegrasikan untuk seluruh enterprise'),
(144, 5, 3, 'Diintegrasikan dengan rekanan bisnis enterprise'),
(145, 5, 3, 'Berkembang dengan mitra bisnis'),
(146, 5, 4, 'Tidak ada integrasi yang dilakukan secara formal'),
(147, 5, 4, 'Upaya awal untuk melakukan integrasi'),
(148, 5, 4, 'Diintegrasikan untuk seluruh enterprise'),
(149, 5, 4, 'Diintegrasikan dengan rekanan bisnis enterprise'),
(150, 5, 4, 'Berkembang dengan mitra bisnis'),
(151, 5, 5, 'Tidak ada integrasi yang dilakukan secara formal'),
(152, 5, 5, 'Upaya awal untuk melakukan integrasi'),
(153, 5, 5, 'Diintegrasikan untuk seluruh enterprise'),
(154, 5, 5, 'Diintegrasikan dengan rekanan bisnis enterprise'),
(155, 5, 5, 'Berkembang dengan mitra bisnis'),
(156, 5, 6, 'Tidak ada transparansi dan fleksibilitas'),
(157, 5, 6, 'Transparansi dan fleksibilitas terbatas'),
(158, 5, 6, 'Difokuskan untuk urusan komunikasi'),
(159, 5, 6, 'Memperlihatkan efektifitas manajemen teknologi'),
(160, 5, 6, 'Melewati infrastruktur yang ada'),
(161, 6, 1, 'Tidak ada (putus asa)'),
(162, 6, 1, 'Tergantung pada organisasi fungsional'),
(163, 6, 1, 'Toleransi terhadap resiko yang diambil'),
(164, 6, 1, 'Berhubungan dengan enterprise, mitra bisnis dan ma'),
(165, 6, 1, 'Mengikuti norma yang ada'),
(166, 6, 2, 'Ada dalam bisnis perusahaan'),
(167, 6, 2, 'Terdapat dalam bagian  organisasi fungsional '),
(168, 6, 2, 'Muncul di seluruh bagian dalam organisasi'),
(169, 6, 2, 'Terdapat di seluruh bagian organisasi'),
(170, 6, 2, 'Dibagian seluruh eksekutif, termasuk CIO dan rekan'),
(171, 6, 3, 'Perusahaan atau organisasi selama ini telah tahan '),
(172, 6, 3, 'Bergantung pada organisasi fungsional perusahaan'),
(173, 6, 3, 'Diperlukan adanya perubahan dalam organisasi'),
(174, 6, 3, 'Kebutuhan yang tinggi, maka akan difokuskan untuk '),
(175, 6, 3, 'Kebutuhan yang tinggi, maka akan difokuskan untuk '),
(176, 6, 4, 'Tidak ada kesempatan untuk bertukar pekerjaan'),
(177, 6, 4, 'Dilakukan secara minimum'),
(178, 6, 4, 'Bergantung pada organisasi fungsional'),
(179, 6, 4, 'Dilakukan di seluruh organisasi fungsional'),
(180, 6, 4, 'Dilakukan di seluruh bagian perusahaan'),
(181, 6, 5, 'Tidak ada kesempatan untuk belajar di lintas peker'),
(182, 6, 5, 'Dilakukan secara minimum'),
(183, 6, 5, 'Bergantung pada organisasi fungsional'),
(184, 6, 5, 'Dilakukan hanya pada organisasi fungsional'),
(185, 6, 5, 'Dilakukan di seluruh bagian organisasi bisnis'),
(186, 6, 6, 'Berdampak minimum'),
(187, 6, 6, 'Mengutamakan proses transaksional'),
(188, 6, 6, 'Memperlihatkan penyediaan layanan yang bernilai'),
(189, 6, 6, 'Penyediaan layanan yang bernilai'),
(190, 6, 6, 'Rekanan bisnis yang bernilai '),
(191, 6, 7, 'Memerintah dan memberikan kontrol'),
(192, 6, 7, 'Berdasarkan consensus yang ada'),
(193, 6, 7, 'Berdasarkan hasil atau capaian perusahaan'),
(194, 6, 7, 'Berdasarkan pada laba atau nilai  yang dimiliki'),
(195, 6, 7, 'Berdasarkan pada hubungan kerja sama dengan pihak ');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_factor_luftman`
--
ALTER TABLE `t_factor_luftman`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_indicator_luftman`
--
ALTER TABLE `t_indicator_luftman`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_likert_luftman`
--
ALTER TABLE `t_likert_luftman`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_factor_luftman`
--
ALTER TABLE `t_factor_luftman`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_indicator_luftman`
--
ALTER TABLE `t_indicator_luftman`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `t_likert_luftman`
--
ALTER TABLE `t_likert_luftman`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
