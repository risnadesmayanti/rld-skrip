-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2018 at 10:44 AM
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
  `indicator` varchar(30) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `t_indicator_luftman`
--

INSERT INTO `t_indicator_luftman` (`id`, `idf`, `indicator`, `pertanyaan`) VALUES
(1, 1, 'Pemahaman secara umum TI terha', 'apakah Divisi Bidang Teknologi / Direktorat TIK saat ini telah memahami strategi dan tujuan bisnis o'),
(2, 1, 'Pemahaman secara umum bisnis T', 'apakah pemahaman Pihak Manajemen  telah mengerti dan memahami bentuk TI yang telah diterapkan di org'),
(3, 1, 'Mempelajari keadaan organisasi', 'Apakah terdapat suatu proses mempelajari keadaan organisasi?'),
(4, 1, 'Komunikasi timbal balik antara', 'Apakah terjadi komunikasi yang timbal balik antara Divisi Bagian TI dengan Pihak manajemen '),
(5, 1, 'Keselaran pengetahuan investas', 'Bagaimana proses terjadinya knowledge sharing atau penyelarasan pengetahuan antara Divisi Bagian TI '),
(6, 1, 'Penguatan semangat dari kerja ', 'Bagaimana peran staf penghubung dalam penguatan semangat dari kerja tim dalam mengembangkan mekanism'),
(7, 2, 'Ukuran standar TI', 'Bagaimana pendapat anda mengenai ukuran kontribusi TI bagi organisasi ?'),
(8, 2, 'Ukuran standar untuk kegiatan ', 'Bagaimana ukuran kinerja organisasi dalam hal mencapai tujuan organisasi?'),
(9, 2, 'Hubungan antara ukuran TI dan ', 'Apakah terdapat hubungan antara ukuran TI dan ukuran kinerja organisasi?'),
(10, 2, 'Persetujuan dalam tingkatan la', 'Apakah Service Level Agreement (persetujuan minimal tingkatan layanan TI) diterapkan di lingkungan o'),
(11, 2, 'Pemodelan / Pembandingan', 'Apakah terdapat proses benchmarking atau proses pembandingan pengelolaan TI di lingkungan organisasi'),
(12, 2, 'Proses evaluasi dan revisi dal', 'Apakah terdapat proses evaluasi atau revisi investasi pengelolaan TI di lingkungan organisasi?'),
(13, 2, 'Budaya melakukan perbaikan sec', 'Apakah terdapat pengukuran efektivitas dan perbaikan  secara berkesinambungan tentang proses atau ke'),
(14, 3, 'Perencanaan strategis dilakuka', 'Apakah pihak TI (Divisi Bagian TI) ikut berpartisipasi dalam proses perencanaan strategis organisasi'),
(15, 3, 'Perencanaan strategi TI dilaku', 'Apakah pihak manajemen ikut berpartisipasi dalam melakukan kegiatan perencanaan strategis TI ?'),
(16, 3, 'Struktur organisasi', 'Bagaimana bentuk struktur organisasi di Divisi Bidang TI ? Dan kepada Bidang apa proses pelaporan ki'),
(17, 3, 'Cara menggunakan dana dan inve', 'Bagaimana penilaian anda tentang pengendalian anggaran organisasi dalam menggunakan dana untuk inves'),
(18, 3, 'Manajemen yang efektif untuk i', 'Bagaimana pengelolaan investasi bidang TI yang efektif bagi organisasi?'),
(19, 3, 'Komite yang memimpin dan menen', 'Apakah terdapat Steering Commite untuk Divisi Bidang TI yang berasal dari anggota di tingkat senior '),
(20, 3, 'Prioritas proyek TI yang sesua', 'Bagaimana proses penentuan keputusan untuk menentukan prioritas untuk proyek-proyek TI yang akan dii'),
(21, 4, 'Kesadaran tentang Bisnis TI / ', 'Bagaimana bisnis memandang  pengelola TI sebagai hal yang bernilai?'),
(22, 4, 'Keterlibatan manajer TI dalam ', 'Bagaimana keterlibatan atau peran Divisi bidang TI dalam perencanaan strategis organisasi?'),
(23, 4, 'Penerimaan resiko, penghargaan', 'Bagaimana praktik pembagian risiko dan penghargaan untuk Divisi Bidang TI ?'),
(24, 4, 'Manajemen komunikasi TI dan bi', 'Apakah terdapat program yang bertujuan untuk membangun hubungan antara Divisi Bidang TI dengan pihak'),
(25, 4, 'Trust (to Information Technolo', 'Bagaimana hubungan kepercayaan antara pihak manajemen dan Divisi Bidang TI di lingkungan organisasi?'),
(26, 4, 'Kumpulan dukungan senior manaj', 'Apakah proyek TI memiliki dukungan dari senior atau sponsor, baik dari Divisi Bidang TI ataupun piha'),
(27, 5, 'Peran TI dalam menentukan stra', 'Sejauh mana cakupan dukungan TI dalam menentukan strategi bisnis organisasi?'),
(28, 5, 'Standard Articulation', 'Apakah terdapat standar TI tertentu yang diterapkan di lingkungan organisasi ?'),
(29, 5, 'Organisasi Fungsional', 'Bagaimana proses organisasi secara fungsional agar komponen TI dapat saling terintegrasi satu sama l'),
(30, 5, 'Enterprise (Perusahaan)', '-'),
(31, 5, 'Inter – Enterprise (Antar peru', '-'),
(32, 5, 'Transparansi dan fleksibilitas', 'Bagaimana pandangan organisasi terhadap infrastruktur TI yang bersifat fleksibel dan transparan?'),
(33, 6, 'Dorongan lingkungan untuk beri', 'Bagaimana lingkungan organisasi memandang ide-ide inovatif dan perilaku berwirausaha terhadap pemanf'),
(34, 6, 'Pusat kekuatan TI / Lokasi kek', 'Pada tingkat manajemen mana terdapat pusat kekuatan untuk menentukan keputusan penting dalam pengelo'),
(35, 6, 'Kesiapan dalam menghadapi peru', 'Bagaimana kesiapan anggota organisasi dalam menghadapi perubahan budaya kerja ?'),
(36, 6, 'Adanya kesempatan untuk bertuk', 'Bagaimana dengan peluang adanya mutasi pertukaran posisi karir dari Divisi Bidang TI dan Bidang Mana'),
(37, 6, 'Mempertahankan rencana pengemb', 'Bagaimana dengan peluang anggota TI yang diikutsertakan dalam pelatihan Manajemen Bisnis ataupun seb'),
(38, 6, 'Sosial kooperasi baik lingkung', 'Bagaimana perilaku anggota TI di organisasi untuk bersosialisasi dengan lingkungan dalam dan luar or'),
(39, 6, 'Cara atau gaya manajemen bisni', 'Bagaimana kemampuan organisasi dalam merekrut dan mempertahankan anggota Divisi Bidang TI dan yang l');

-- --------------------------------------------------------

--
-- Table structure for table `t_jabatan`
--

CREATE TABLE IF NOT EXISTS `t_jabatan` (
`id` int(3) NOT NULL,
  `divisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_likert_luftman`
--

CREATE TABLE IF NOT EXISTS `t_likert_luftman` (
`id` int(4) NOT NULL,
  `idin` int(3) NOT NULL,
  `val` int(3) NOT NULL,
  `descript` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `t_likert_luftman`
--

INSERT INTO `t_likert_luftman` (`id`, `idin`, `val`, `descript`) VALUES
(1, 1, 1, 'Kurang sadar akan pentingnya Manajemen TI'),
(2, 1, 2, 'Terbatasnya kesadaran pemahaman  TI terhadap proses bisnis'),
(3, 1, 3, 'Pemahaman TI ada pada manajemen bagian tengah ke atas'),
(4, 1, 4, 'Adanya dorongan penggunaan TI melalui organisasi'),
(5, 1, 5, 'Penyerapan fungsi TI untuk proses bisnis'),
(6, 2, 1, 'Kurang sadar akan pentingnya Manajemen bisnis'),
(7, 2, 2, 'Terbatasnya kesadaran pemahaman  bisnis terhadap TI'),
(8, 2, 3, 'Munculnya kesadaran tentang pemahaman bisnis'),
(9, 2, 4, 'Bisnis menyadari akan potensi yang dimiliki organisasi'),
(10, 2, 5, 'Penyerapan proses bisnis untuk TI'),
(11, 3, 1, 'Adanya tim khusus yang mempelajari organisasi secara sederhana'),
(12, 3, 2, 'Pembelajaran dilakukan secara tidak formal'),
(13, 3, 3, 'Teratur dan jelas dalam mempelajari kondisi organisasi'),
(14, 3, 4, 'Kompak dan saling terikat satu sama lain'),
(15, 3, 5, 'Kuat dan terstruktur'),
(16, 4, 1, 'Komunikasi berlangsung karena adanya perintah dan dikendalikan'),
(17, 4, 2, 'Terbatas, tenang / malas'),
(18, 4, 3, 'Muncul rasa tenang'),
(19, 4, 4, 'Berkomunikasi secara tenang dan tidak formal (santai)'),
(20, 4, 5, 'Berkomunasi secara santai'),
(21, 5, 1, 'Dilakukan secara khusus oleh tim ad-hoc'),
(22, 5, 2, 'Bersifat semi  terstruktur'),
(23, 5, 3, 'Terstruktur disekitar proses-proses yang penting'),
(24, 5, 4, 'Dijadikan kebiasaan'),
(25, 5, 5, 'Penyertaan enterprise dalam proses penyelaran pengetahuan investasi'),
(26, 6, 1, 'Tidak ada atau dilakukan secara ad-hoc'),
(27, 6, 2, 'Berdasarkan pada terbatasnya teknologi taktis'),
(28, 6, 3, 'Dilakukan secara formal dalam pertemuan biasa'),
(29, 6, 4, 'Bersifat terikat, efektif diterapkan pada semua tingkatan di bagian internal organisasi'),
(30, 6, 5, 'Penyertaan enterprise dalam proses pengembangan dan penguatan kerjasama organisasi'),
(31, 7, 1, 'Secara teknis, tidak berhubungan dengan bisnis'),
(32, 7, 2, 'Biaya yang efisien'),
(33, 7, 3, 'Pengelolaan keuangan yang tradisional'),
(34, 7, 4, 'Biaya yang efektif'),
(35, 7, 5, 'Diperpanjang pada rekanan eksternal'),
(36, 8, 1, 'Secara ad-hoc, tidak berhubungan dengan TI'),
(37, 8, 2, 'Fokus pada fungsional organisasi'),
(38, 8, 3, 'Pengelolaan keuangan yang tradisional'),
(39, 8, 4, 'Berbasis pada pelanggan'),
(40, 8, 5, 'Diperpanjang pada rekanan eksternal'),
(41, 9, 1, 'Pengukuran adhoc tidak terhubung'),
(42, 9, 2, 'Pengukuran tingkat bisnis dan TI tidak terhubung'),
(43, 9, 3, 'Pengukuran kemunculan bisnis dan TI terhubung'),
(44, 9, 4, 'Pengukuran tingkat bisnis dan TI terhubung'),
(45, 9, 5, 'Pengukuran bisnis, rekanan dan TI terhubung'),
(46, 10, 1, 'Kehadiran tidak tentu'),
(47, 10, 2, 'Bersifat teknikal di bagian fungsional'),
(48, 10, 3, 'Kemunculan sector TI di seluruh enterprise'),
(49, 10, 4, 'Penggunaan yang luas di berbagai enteprise'),
(50, 10, 5, 'Diperpanjang pada rekanan eksternal'),
(51, 11, 1, 'Tidak secara umum dipraktikan'),
(52, 11, 2, 'Dilakukan secara tidak formal'),
(53, 11, 3, 'Difokuskan pada proses-proses yang spesifik'),
(54, 11, 4, 'Dilakukan secara rutin'),
(55, 11, 5, 'Dilakukan secara rutin dengan rekanan lain'),
(56, 12, 1, 'Tidak dilakukan proses evaluasi dan revisi'),
(57, 12, 2, 'Dilakukan evaluasi dan revisi di beberapa bagian untuk masalah khusus'),
(58, 12, 3, 'Muncul formalitas'),
(59, 12, 4, 'Dilakukan secara formal'),
(60, 12, 5, 'Dilakukan secara formal'),
(61, 13, 1, 'Tidak ada'),
(62, 13, 2, 'Minim untuk melakukan perbaikan'),
(63, 13, 3, 'Perbaikan berkelanjutan diperlihatkan'),
(64, 13, 4, 'Dilakukan berkali-kali'),
(65, 13, 5, 'Rutin dilakukan'),
(66, 14, 1, 'Dilakukan secara ad-hoc'),
(67, 14, 2, 'Dasar perencanaan ada pada tingkat fungsional'),
(68, 14, 3, 'Terdapat beberapa perencanaan terhadap inter-organisasi'),
(69, 14, 4, 'Dikelola di seluruh perusahaan'),
(70, 14, 5, 'Terintegrasi secara menyeluruh dan diluar perusahaan'),
(71, 15, 1, 'Dilakukan secara ad-hoc'),
(72, 15, 2, 'Perencanaan taktis fungsional'),
(73, 15, 3, 'Perencanaan difokuskan, dan terdapat beberapa perencanaan terhadap inter-organisasi'),
(74, 15, 4, 'Dikelola di seluruh perusahaan'),
(75, 15, 5, 'Terintegrasi secara menyeluruh dan diluar perusahaan'),
(76, 16, 1, 'Pelaporan dilakukan terpusat atau dilakukan secara desentralisasi. Dari CIO kepada CFO'),
(77, 16, 2, 'Pelaporan dilakukan terpusat atau dilakukan secara desentralisasi. Terkadang dilakukan co-location. '),
(78, 16, 3, 'Pelaporan dilakukan terpusat atau dilakukan secara desentralisasi. Terkadang dilakukan pergabungan a'),
(79, 16, 4, 'Pelaporan digabungkan. Laporan CIO kepada COO ataupun CEO'),
(80, 16, 5, 'Pelaporan digabungkan. Laporan CIO kepada CEO'),
(81, 17, 1, 'Adanya pusat pembiayaan, karena pengeluaran tak menentu'),
(82, 17, 2, 'Adanya pusat pembiayaan oleh organisasi yang fungsional'),
(83, 17, 3, 'Adanya pusat pembiayaan, untuk mengatasi beberapa penanaman modal'),
(84, 17, 4, 'Adanya pusat investasi'),
(85, 17, 5, 'Adanya pusat investasi dan pusat laba (benefit)'),
(86, 18, 1, 'Berdasarkan pembiayaan,  karena pengeluaran tak menentu'),
(87, 18, 2, 'Berdasarkan pembiayaan,  terfokus pada operasional dan pemeliharaan / perawatan'),
(88, 18, 3, 'Dilakukan secara tradisional, proses enabler'),
(89, 18, 4, 'Efektifitas pembiayaan, poros penggerak ada pada proses'),
(90, 18, 5, 'Nilai bisnis, diperluas dengan rekanan bisnis dari luar'),
(91, 19, 1, 'Tidak formal / biasa seperti pegawai lainnya'),
(92, 19, 2, 'Komunikasi diatur secara berkala'),
(93, 19, 3, 'Berkomunikasi jelas seperti biasanya'),
(94, 19, 4, 'Komite yang efektif dibentuk secara formal '),
(95, 19, 5, 'Komite dibentuk dari kemitraan / rekanan '),
(96, 20, 1, 'Cepat tanggap tentang  suatu proyek'),
(97, 20, 2, 'Sesekali cepat dalam merespon'),
(98, 20, 3, 'Lebih banyak cepat dalam merespon'),
(99, 20, 4, 'Cepat dalam merespon pekerjaan, menjadi nilai tambah prioritas'),
(100, 20, 5, 'Nilai prioritas ditambahkan untuk mitra bisnis'),
(101, 21, 1, 'TI dianggap sebagai biaya bisnis organisasi'),
(102, 21, 2, 'TI muncul sebagai sebuah aset organisasi'),
(103, 21, 3, 'TI dipandang sebagai sebuah asset organisasi'),
(104, 21, 4, 'TI merupakan bagian dari strategi bisnis organisasi'),
(105, 21, 5, 'Bisnis TI bersifat co-adaptif'),
(106, 22, 1, 'Tidak adanya peluang dalam area bisnis'),
(107, 22, 2, 'Proses bisnis sebagai enabler perencanaan strategi'),
(108, 22, 3, 'Proses bisnis sebagai kemudi perencanaan strategis'),
(109, 22, 4, 'Strategi bisnis sebagai enabler atau kemudi proses bisnis'),
(110, 22, 5, 'Bisnis TI bersifat co-adaptif'),
(111, 23, 1, 'TI mengambil resiko dengan penghargaan yang sedikit'),
(112, 23, 2, 'TI mengambil cukup banyak resiko dengan penghargaan yang sedikit'),
(113, 23, 3, 'Adanya toleransi tentang resiko yang diambil, dalam hal ini TI mendapatkan beberapa penghargaan'),
(114, 23, 4, 'Penerimaan resiko oleh TI dan penghargaan nantinya dibagikan kepada tim TI'),
(115, 23, 5, 'Resiko dan penghargaan akan dibagikan'),
(116, 24, 1, 'Dilakukan secara ad-hoc'),
(117, 24, 2, 'Standar manajemen didefinisikan'),
(118, 24, 3, 'Standar manajemen telah ditaati'),
(119, 24, 4, 'Standar manajemen lebih meningkat'),
(120, 24, 5, 'Perbaikan yang berkelanjutan'),
(121, 25, 1, 'Pertentangan / minimal'),
(122, 25, 2, 'Mengutamatakn transaksional'),
(123, 25, 3, 'Memunculkan penghargaan terhadap penyedia layanan '),
(124, 25, 4, 'Penyedia layanan yang dihargai'),
(125, 25, 5, 'Rekanan bisnis yang dihargai'),
(126, 26, 1, 'Tidak terdapat dukungan'),
(127, 26, 2, 'Terbatas pada organisasi yang fungsional'),
(128, 26, 3, 'Ada pada tingkat organisasi fungsional'),
(129, 26, 4, 'Ada pada tingkat kualitas yang tinggi'),
(130, 26, 5, 'Berada pada tingkat CEO '),
(131, 27, 1, 'Dilakukan secara tradisional (contohnya proses akunting dan penggunaan  email)'),
(132, 27, 2, 'Proses transaksi menggunakan sistem (contohnya Enterprise Support System dan Decision Support System'),
(133, 27, 3, 'Ruang lingkup yang diperluas (contohnya proses bisnis sebagai enabler organisasi)'),
(134, 27, 4, 'Pendefinisian kembali ruang lingkup bisnis (contohnya bisa berupa proses bisnis sebagai kemudi organ'),
(135, 27, 5, 'Ruang lingkup diambil dari eksternal organisasi, dimana strategi bisnis menjadi enabler atau driver'),
(136, 28, 1, 'Tidak ada atau dibuat secara ad-hoc'),
(137, 28, 2, 'Standar terdefinisi'),
(138, 28, 3, 'Memperlihatkan standar enterprise'),
(139, 28, 4, 'Standar enterprise'),
(140, 28, 5, 'Standar antar enterprise'),
(141, 29, 1, 'Tidak ada integrasi yang dilakukan secara formal'),
(142, 29, 2, 'Upaya awal untuk melakukan integrasi'),
(143, 29, 3, 'Diintegrasikan untuk seluruh enterprise'),
(144, 29, 4, 'Diintegrasikan dengan rekanan bisnis enterprise'),
(145, 29, 5, 'Berkembang dengan mitra bisnis'),
(146, 30, 1, 'Tidak ada integrasi yang dilakukan secara formal'),
(147, 30, 2, 'Upaya awal untuk melakukan integrasi'),
(148, 30, 3, 'Diintegrasikan untuk seluruh enterprise'),
(149, 30, 4, 'Diintegrasikan dengan rekanan bisnis enterprise'),
(150, 30, 5, 'Berkembang dengan mitra bisnis'),
(151, 31, 1, 'Tidak ada integrasi yang dilakukan secara formal'),
(152, 31, 2, 'Upaya awal untuk melakukan integrasi'),
(153, 31, 3, 'Diintegrasikan untuk seluruh enterprise'),
(154, 31, 4, 'Diintegrasikan dengan rekanan bisnis enterprise'),
(155, 31, 5, 'Berkembang dengan mitra bisnis'),
(156, 32, 1, 'Tidak ada transparansi dan fleksibilitas'),
(157, 32, 2, 'Transparansi dan fleksibilitas terbatas'),
(158, 32, 3, 'Difokuskan untuk urusan komunikasi'),
(159, 32, 4, 'Memperlihatkan efektifitas manajemen teknologi'),
(160, 32, 5, 'Melewati infrastruktur yang ada'),
(161, 33, 1, 'Tidak ada (putus asa)'),
(162, 33, 2, 'Tergantung pada organisasi fungsional'),
(163, 33, 3, 'Toleransi terhadap resiko yang diambil'),
(164, 33, 4, 'Berhubungan dengan enterprise, mitra bisnis dan manajer TI'),
(165, 33, 5, 'Mengikuti norma yang ada'),
(166, 34, 1, 'Ada dalam bisnis perusahaan'),
(167, 34, 2, 'Terdapat dalam bagian  organisasi fungsional '),
(168, 34, 3, 'Muncul di seluruh bagian dalam organisasi'),
(169, 34, 4, 'Terdapat di seluruh bagian organisasi'),
(170, 34, 5, 'Dibagian seluruh eksekutif, termasuk CIO dan rekan bisnis'),
(171, 35, 1, 'Perusahaan atau organisasi selama ini telah tahan terhadap perubahan yang ada'),
(172, 35, 2, 'Bergantung pada organisasi fungsional perusahaan'),
(173, 35, 3, 'Diperlukan adanya perubahan dalam organisasi'),
(174, 35, 4, 'Kebutuhan yang tinggi, maka akan difokuskan untuk melakukan perubahan'),
(175, 35, 5, 'Kebutuhan yang tinggi, maka akan difokuskan untuk melakukan perubahan'),
(176, 36, 1, 'Tidak ada kesempatan untuk bertukar pekerjaan'),
(177, 36, 2, 'Dilakukan secara minimum'),
(178, 36, 3, 'Bergantung pada organisasi fungsional'),
(179, 36, 4, 'Dilakukan di seluruh organisasi fungsional'),
(180, 36, 5, 'Dilakukan di seluruh bagian perusahaan'),
(181, 37, 1, 'Tidak ada kesempatan untuk belajar di lintas pekerjaan'),
(182, 37, 2, 'Dilakukan secara minimum'),
(183, 37, 3, 'Bergantung pada organisasi fungsional'),
(184, 37, 4, 'Dilakukan hanya pada organisasi fungsional'),
(185, 37, 5, 'Dilakukan di seluruh bagian organisasi bisnis'),
(186, 38, 1, 'Berdampak minimum'),
(187, 38, 2, 'Mengutamakan proses transaksional'),
(188, 38, 3, 'Memperlihatkan penyediaan layanan yang bernilai'),
(189, 38, 4, 'Penyediaan layanan yang bernilai'),
(190, 38, 5, 'Rekanan bisnis yang bernilai '),
(191, 39, 1, 'Memerintah dan memberikan kontrol'),
(192, 39, 2, 'Berdasarkan consensus yang ada'),
(193, 39, 3, 'Berdasarkan hasil atau capaian perusahaan'),
(194, 39, 4, 'Berdasarkan pada laba atau nilai  yang dimiliki'),
(195, 39, 5, 'Berdasarkan pada hubungan kerja sama dengan pihak luar');

-- --------------------------------------------------------

--
-- Table structure for table `t_measurement`
--

CREATE TABLE IF NOT EXISTS `t_measurement` (
`id` int(5) NOT NULL,
  `id_user` int(3) NOT NULL,
  `idin` int(2) NOT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `t_measurement`
--

INSERT INTO `t_measurement` (`id`, `id_user`, `idin`, `value`) VALUES
(1, 20, 1, 3.6),
(2, 20, 2, 4.4),
(3, 20, 3, 3.4),
(4, 20, 4, 5),
(5, 20, 5, 4.8),
(6, 20, 6, 4.8),
(7, 20, 7, 5),
(8, 20, 8, 4),
(9, 20, 9, 3),
(10, 20, 10, 2),
(11, 20, 11, 1),
(12, 20, 12, 1),
(13, 20, 13, 2),
(14, 20, 14, 5),
(15, 20, 15, 5),
(16, 20, 16, 4),
(17, 20, 17, 2),
(18, 20, 18, 3),
(19, 20, 19, 1),
(20, 20, 20, 2),
(21, 20, 21, 1.8),
(22, 20, 22, 3.6),
(23, 20, 23, 4),
(24, 20, 24, 4.6),
(25, 20, 25, 3.4),
(26, 20, 26, 4),
(27, 20, 27, 4),
(28, 20, 28, 2.4),
(29, 20, 29, 2.2),
(30, 20, 30, 3),
(31, 20, 31, 3.8),
(32, 20, 32, 4.4),
(33, 20, 33, 4),
(34, 20, 34, 3.8),
(35, 20, 35, 4),
(36, 20, 36, 4),
(37, 20, 37, 3.8),
(38, 20, 38, 3.8),
(39, 20, 39, 4),
(40, 23, 1, 2.2),
(41, 23, 2, 4.4),
(42, 23, 3, 2),
(43, 23, 4, 2.8),
(44, 23, 5, 4.2),
(45, 23, 6, 2.6),
(46, 23, 7, 2.4),
(47, 23, 8, 4.4),
(48, 23, 9, 3),
(49, 23, 10, 2.8),
(50, 23, 11, 3),
(51, 23, 12, 4),
(52, 23, 13, 5),
(53, 23, 14, 3),
(54, 23, 15, 3),
(55, 23, 16, 4),
(56, 23, 17, 5),
(57, 23, 18, 2.4),
(58, 23, 19, 3.6),
(59, 23, 20, 2.6),
(60, 23, 21, 1.8),
(61, 23, 22, 2.8),
(62, 23, 23, 3),
(63, 23, 24, 3.6),
(64, 23, 25, 2),
(65, 23, 26, 2.8),
(66, 23, 27, 2),
(67, 23, 28, 3.4),
(68, 23, 29, 4.6),
(69, 23, 30, 4.6),
(70, 23, 31, 2),
(71, 23, 32, 3.4),
(72, 23, 33, 3),
(73, 23, 34, 3),
(74, 23, 35, 2.8),
(75, 23, 36, 3.2),
(76, 23, 37, 3),
(77, 23, 38, 2.2),
(78, 23, 39, 3.2);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
`id` int(11) NOT NULL,
  `date_access` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `a1` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `date_access`, `username`, `jabatan`, `kategori`, `a1`) VALUES
(1, '2018-01-06', 'user', 'Dewan Direksi', '1', 1),
(2, '2018-01-06', 'risna', 'Dewan Direksi', '1', 1),
(3, '2018-01-23', 'risna', 'Administrasi', '1', 1),
(4, '2018-01-14', 'risna', 'Administrasi', '2', 1),
(5, '2018-01-16', 'risna', 'Departemen Pemasaran', '3', 1),
(6, '2018-01-22', 'risna', 'Dewan Direksi', '4', 1),
(7, '2018-01-20', 'user2', 'Dewan Direksi', '4', 1),
(8, '2018-01-16', 'admin', 'Dept Personalia', '5', 1),
(9, '2018-01-15', 'admin', 'Departemen TI', '5', 1),
(10, '2018-01-20', 'admin', 'Dewan Direksi', '3', 1),
(11, '2018-01-22', 'admin', 'Departemen TI', '3', 1),
(12, '2018-01-20', 'admin', 'Departemen TI', '2', 1),
(13, '2017-10-25', 'admin', 'Dewan Direksi', '1', 1),
(14, '2018-01-23', '1401788', 'Departemen RD', '4', 1),
(15, '2018-01-17', 'Rara', 'Dewan Direksi', '5', 1),
(16, '2018-01-22', 'REER', 'Departemen RD', '1', 1),
(17, '2018-01-19', 'user', 'Dewan Direksi', '1', 1),
(18, '2018-01-19', 'Kiki', 'Departemen Humas', '2', 1),
(19, '2018-01-20', 'risna', 'Departemen Humas', '3', 1),
(20, '2018-01-26', 'admin', 'Dewan Direksi', '2', 1),
(21, '2018-01-26', 'risna', 'Departemen Humas', '1', 1),
(22, '2018-01-26', 'Faisil', 'Manajer', '3', 1),
(23, '2018-01-26', 'adminb4t', 'Manajer', '3', 1);

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
-- Indexes for table `t_jabatan`
--
ALTER TABLE `t_jabatan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_likert_luftman`
--
ALTER TABLE `t_likert_luftman`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_measurement`
--
ALTER TABLE `t_measurement`
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
-- AUTO_INCREMENT for table `t_jabatan`
--
ALTER TABLE `t_jabatan`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_likert_luftman`
--
ALTER TABLE `t_likert_luftman`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `t_measurement`
--
ALTER TABLE `t_measurement`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
