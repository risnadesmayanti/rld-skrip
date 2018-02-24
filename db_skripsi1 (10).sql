-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 01:35 AM
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
  `indicator` text NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `t_indicator_luftman`
--

INSERT INTO `t_indicator_luftman` (`id`, `idf`, `indicator`, `pertanyaan`) VALUES
(1, 1, 'Pemahaman secara umum TI terhadap bisnis', 'Apakah Divisi Bidang Teknologi / Direktorat TIK saat ini telah memahami strategi dan tujuan bisnis organisasi ?'),
(2, 1, 'Pemahaman secara umum bisnis Terhadap TI', 'Apakah pemahaman Pihak Manajemen  telah mengerti dan memahami bentuk TI yang telah diterapkan di organisasi ?'),
(3, 1, 'Mempelajari keadaan organisasi', 'Apakah terdapat suatu proses mempelajari keadaan organisasi?'),
(4, 1, 'Komunikasi timbal balik antara staf TI dan staf bisnis', 'Apakah terjadi komunikasi yang timbal balik antara Divisi Bagian TI dengan Pihak manajemen '),
(5, 1, 'Keselaran pengetahuan investasi', 'Bagaimana proses terjadinya knowledge sharing atau penyelarasan pengetahuan antara Divisi Bagian TI dan Pihak manajemen di dalam organisasi ?'),
(6, 1, 'Penguatan semangat dari kerja tim dan mengembangkan mekanisme kerja sama organisasi', 'Bagaimana peran staf penghubung dalam penguatan semangat dari kerja tim dalam mengembangkan mekanisme kerja sama organisasi?'),
(7, 2, 'Ukuran standar TI', 'Bagaimana pendapat anda mengenai ukuran kontribusi TI bagi organisasi ?'),
(8, 2, 'Ukuran standar untuk kegiatan organisasi dan proses timbal balik antara bisnis', 'Bagaimana ukuran kinerja organisasi dalam hal mencapai tujuan organisasi?'),
(9, 2, 'Hubungan antara ukuran TI dan ukuran bisnis organisasi', 'Apakah terdapat hubungan antara ukuran TI dan ukuran kinerja organisasi?'),
(10, 2, 'Persetujuan dalam tingkatan layanan dari sector TI', 'Apakah Service Level Agreement (persetujuan minimal tingkatan layanan TI) diterapkan di lingkungan organisasi?'),
(11, 2, 'Pemodelan / Pembandingan', 'Apakah terdapat proses benchmarking atau proses pembandingan pengelolaan TI di lingkungan organisasi dengan pengelolaan TI di lingkungan organisasi lain ?'),
(12, 2, 'Proses evaluasi dan revisi dalam bidang organisasi TI', 'Apakah terdapat proses evaluasi atau revisi investasi pengelolaan TI di lingkungan organisasi?'),
(13, 2, 'Budaya melakukan perbaikan secara berkelanjutan', 'Apakah terdapat pengukuran efektivitas dan perbaikan  secara berkesinambungan tentang proses atau kegiatan TI dengan bisnis'),
(14, 3, 'Perencanaan strategis dilakukan secara utuh atau menyeluruh', 'Apakah pihak TI (Divisi Bagian TI) ikut berpartisipasi dalam proses perencanaan strategis organisasi?'),
(15, 3, 'Perencanaan strategi TI dilakukan secara menyeluruh', 'Apakah pihak manajemen ikut berpartisipasi dalam melakukan kegiatan perencanaan strategis TI ?'),
(16, 3, 'Struktur organisasi', 'Bagaimana bentuk struktur organisasi di Divisi Bidang TI ? Dan kepada Bidang apa proses pelaporan kinerja Divisi Bidang TI ?'),
(17, 3, 'Cara menggunakan dana dan investasi dibagian TI / control anggaran', 'Bagaimana penilaian anda tentang pengendalian anggaran organisasi dalam menggunakan dana untuk investasi di bagian TI ?'),
(18, 3, 'Manajemen yang efektif untuk investasi di bidang TI / manajemen investasi TI', 'Bagaimana pengelolaan investasi bidang TI yang efektif bagi organisasi?'),
(19, 3, 'Komite yang memimpin dan menentukan keputusan di bidang TI / pengarah', 'Apakah terdapat Steering Commite untuk Divisi Bidang TI yang berasal dari anggota di tingkat senior dan saling berkaitan dengan manajemen bisnis?'),
(20, 3, 'Prioritas proyek TI yang sesuai / proses pengurutan prioritas', 'Bagaimana proses penentuan keputusan untuk menentukan prioritas untuk proyek-proyek TI yang akan diimplementasikan di lingkungan organisasi?'),
(21, 4, 'Kesadaran tentang Bisnis TI / persepsi nilai dari bisnis TI', 'Bagaimana bisnis memandang  pengelola TI sebagai hal yang bernilai?'),
(22, 4, 'Keterlibatan manajer TI dalam perencanaan strategis organisasi / peran TI dalam perencanaan strategi bisnis', 'Bagaimana keterlibatan atau peran Divisi bidang TI dalam perencanaan strategis organisasi?'),
(23, 4, 'Penerimaan resiko, penghargaan dan nilai-nilai umum / Berbagi informasi tentang tujuan, resiko, penghargaaan atau hukuman', 'Bagaimana praktik pembagian risiko dan penghargaan untuk Divisi Bidang TI ?'),
(24, 4, 'Manajemen komunikasi TI dan bisnis /  Manajemen program TI', 'Apakah terdapat program yang bertujuan untuk membangun hubungan antara Divisi Bidang TI dengan pihak manajemen?'),
(25, 4, 'Trust (to Information Technology) all over the organization /  Relationship or Trust Style ', 'Bagaimana hubungan kepercayaan antara pihak manajemen dan Divisi Bidang TI di lingkungan organisasi?'),
(26, 4, 'Kumpulan dukungan senior manajamen untuk kegiatan TI / Berupa sponsor bisnis ', 'Apakah proyek TI memiliki dukungan dari senior atau sponsor, baik dari Divisi Bidang TI ataupun pihak manajemen?'),
(27, 5, 'Peran TI dalam menentukan strategi organisasi Secarab tradisional, sebagai enabler/kemudi organisasi, dari eksternal', 'Sejauh mana cakupan dukungan TI dalam menentukan strategi bisnis organisasi?'),
(28, 5, 'Standard Articulation', 'Apakah terdapat standar TI tertentu yang diterapkan di lingkungan organisasi ?'),
(29, 5, 'Organisasi Fungsional', 'Bagaimana proses organisasi secara fungsional agar komponen TI dapat saling terintegrasi satu sama lain?'),
(30, 5, 'Enterprise (Perusahaan)', '-'),
(31, 5, 'Inter ? Enterprise (Antar perusahaan)', '-'),
(32, 5, 'Transparansi dan fleksibilitas arsitektur', 'Bagaimana pandangan organisasi terhadap infrastruktur TI yang bersifat fleksibel dan transparan?'),
(33, 6, 'Dorongan lingkungan untuk berinovasi dan berwirausaha di organisasi / Inovasi, Kewirausahaan', 'Bagaimana lingkungan organisasi memandang ide-ide inovatif dan perilaku berwirausaha terhadap pemanfaatan TI ?'),
(34, 6, 'Pusat kekuatan TI / Lokasi kekuatan TI', 'Pada tingkat manajemen mana terdapat pusat kekuatan untuk menentukan keputusan penting dalam pengelolaan TI ?'),
(35, 6, 'Kesiapan dalam menghadapi perubahan / Kesiapan berubah', 'Bagaimana kesiapan anggota organisasi dalam menghadapi perubahan budaya kerja ?'),
(36, 6, 'Adanya kesempatan untuk bertukar pekerjaan / mencoba karir yang ada', 'Bagaimana dengan peluang adanya mutasi pertukaran posisi karir dari Divisi Bidang TI dan Bidang Manajemen Bisnis ataupun sebaliknya ?'),
(37, 6, 'Mempertahankan rencana pengembangan SDM professional di bagian perencanaan TI dan melakukan lintas pembelajaran fungsional / Lintas pelatihan', 'Bagaimana dengan peluang anggota TI yang diikutsertakan dalam pelatihan Manajemen Bisnis ataupun sebaliknya (anggota manajemen bisnis diikutsertakan dalam pelatihan TI) ?'),
(38, 6, 'Sosial kooperasi baik lingkungan di dalam dan di luar organisasi / Sosial, secara politik dan lingkungan yang terpercaya', 'Bagaimana perilaku anggota TI di organisasi untuk bersosialisasi dengan lingkungan dalam dan luar organisasi ? Khususnya dalam mengikuti pendidikan, magang atau training.'),
(39, 6, 'Cara atau gaya manajemen bisnis', 'Bagaimana kemampuan organisasi dalam merekrut dan mempertahankan anggota Divisi Bidang TI dan yang lainnya (ini berhubungan dengan gaya manajemen di lingkungan organisasi)');

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
  `descript` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `t_likert_luftman`
--

INSERT INTO `t_likert_luftman` (`id`, `idin`, `val`, `descript`) VALUES
(1, 1, 1, 'Karyawan Divisi Bidang TI kurang sadar tentang pentingnya proses manajemen TI untuk merumuskan teknologi yang sesuai dengan tujuan bisnis organisasi.'),
(2, 1, 2, 'Karyawan Divisi Bidang TI memiliki kesadaran yang terbatas tentang pentingnya memahami kesesuaian manajemen TI terhadap tujuan bisnis organisasi '),
(3, 1, 3, 'Kondisi pemahaman kesesuaian manajemen TI terhadap tujuan bisnis organisasi hanya muncul pada manajemen bagian tengah ke atas.'),
(4, 1, 4, 'Penggunaan TI didorong oleh pemahaman Divisi Bagian TI terhadap strategi dan tujuan bisnis.'),
(5, 1, 5, 'Fungsi TI yang telah diimplementasikan dapat diserap untuk proses bisnis organisasi.'),
(6, 2, 1, 'Pihak manajemen kurang sadar tentang pentingnya memahami bentuk teknologi yang sesuai dengan tujuan bisnis organisasi.'),
(7, 2, 2, 'Karyawan di bagian manajerial memiliki kesadaran yang terbatas mengenai pentingnya memahami kesesuaian bentuk TI dengan tujuan bisnis organisasi'),
(8, 2, 3, 'Munculnya kesadaran tentang pemahaman kesesuaian manajemen bisnis dan bentuk TI terhadap arah strategi dan tujuan bisnis organisasi '),
(9, 2, 4, 'Pihak manajerial telah menyadari adanya potensi kebermanfaatan bentuk TI yang telah dimiliki organisasi.'),
(10, 2, 5, 'Pihak manajerial telah melihat adanya penyerapan fungsi manajemen bisnis pada bentuk TI yang diterapkan'),
(11, 3, 1, 'Terdapat tim khusus (adhoc) yang secara sederhana mempelajari lingkungan organisasi'),
(12, 3, 2, 'Proses mempelajari lingkungan organisasi dilakukan secara tidak formal. Artinya tidak ada program khusus yang direncakan oleh organisasi.'),
(13, 3, 3, 'Proses mempelajari organisasi dilakukan secara teratur dan secara jelas dilakukan oleh seluruh staf.'),
(14, 3, 4, 'Proses pembelajaran dilakukan secara terikat antardivisi.'),
(15, 3, 5, 'Proses pembelajaran organisasi dilakukan secara terstruktur dan merupakan suatu hal yang penting untuk dilakukan.'),
(16, 4, 1, 'Komunikasi yang berlangsung antar karyawan  TI dan Manajerial cenderung dikendalikan dan diperintahkan oleh pihak manajemen'),
(17, 4, 2, 'Komunikasi antarkaryawan TI dan Manajerial dilakukan secara terbatas, dan cenderung seadanya'),
(18, 4, 3, 'Proses berkomunikasi yang terjalin antarkaryawan  TI dan Manajerial dapat memunculkan perasaan yang santai (tenang).'),
(19, 4, 4, 'Proses berkomunikasi antarkaryawan TI dan Manajerial  dilakukan secara tenang dan tidak formal (bersifat santai)'),
(20, 4, 5, 'Proses berkomunikasi antarkaryawan TI dan Manajerial  dilakukan secara tidak formal (artinya komunikasi dilakukan tanpa perlu adanya kegiatan formal)'),
(21, 5, 1, 'Proses penyelarasan pengetahuan investasi TI dilakukan secara khusus oleh tim yang terpisah'),
(22, 5, 2, 'Proses penyelarasan pengetahuan investasi TI dilakukan lebih bersifat semi terstruktur'),
(23, 5, 3, 'Proses knowledge sharing antar karyawan TI dan manajerial dilakukan hanya untuk proses-proses yang dianggap penting, dan bersifat terstruktur'),
(24, 5, 4, 'Proses knowledge sharing antar karyawan TI dan Manajerial telah dijadikan suatu kebiasaan bagi organisasi'),
(25, 5, 5, 'Knowledge sharing yang dilakukan oleh organisasi melibatkan enterprise dari luar organisasi'),
(26, 6, 1, 'Organisasi memiliki staf penghubung yang berperan untuk menguatkan semangat kerja tim, dan staf penghubung tersebut dibentuk secara terpisah dan berbeda dari tim yang telah ada.'),
(27, 6, 2, 'Teknologi taktis yang terbatas digunakan oleh staf penghubung dalam menguatkan semangat kerja tim.'),
(28, 6, 3, 'Penguatan semangat dari kerja tim oleh staf penghubung dilakukan secara formal dalam sebuah pertemuan rutin'),
(29, 6, 4, 'Proses penguatan semangat kerja tim yang dilakukan oleh staf penghubung bersifat terikat, dan efektif diterapkan pada semua tingkatan bagian internal organisasi '),
(30, 6, 5, 'Proses penguatan semangat kerja tim yang dilakukan oleh staf penghubung melibatkan enterprise di luar organisasi'),
(31, 7, 1, 'Secara teknis ukuran kontribusi TI tidak ada hubungannya dengan tujuan bisnis organisasi '),
(32, 7, 2, 'Biaya penggunaan TI untuk lingkungan organisasi cukup efisien'),
(33, 7, 3, 'Organisasi masih menggunakan model tradisional untuk proses pengelolaan keuangan '),
(34, 7, 4, 'Penggunaan biaya yang efektif untuk implementasi TI di lingkungan organisasi'),
(35, 7, 5, 'Pengukuran kontribusi TI dilakukan secara luas hingga pada mitra eksternal lingkungan organisasi'),
(36, 8, 1, 'Pengukuran kinerja organisasi tidak berhubungan dengan TI dan pihak manajemen'),
(37, 8, 2, 'Pengukuran kinerja organisasi hanya terfokus pada bagian fungsional dari organisasi'),
(38, 8, 3, 'Pengelolaan keuangan organisasi masih menggunakan cara tradisional (tidak melibatkan teknologi'),
(39, 8, 4, 'Pengukuran kinerja organisasi berdasarkan kondisi atau kepuasan pelanggan '),
(40, 8, 5, 'Pengukuran kinerja organisasi dilakukan secara luas hingga pada mitra atau rekanan eksternal'),
(41, 9, 1, 'Proses pengukuran keterhubungan ukuran TI dan ukuran kinerja organiasasi dilakukan oleh tim adhoc yang tidak terhubung dengan tim lainnya'),
(42, 9, 2, 'Proses ukuran kinerja organisasi dan TI tidak memiliki keterkaitan satu dengan yang lain'),
(43, 9, 3, 'Munculnya keterhubungan antara ukuran bisnis dan  ukuran TI'),
(44, 9, 4, 'Ukuran kinerja organisasi dan ukuran TI telah saling terhubung'),
(45, 9, 5, 'Ukuran kinerja organisasi, kemitraan dan TI saling terhubung satu dengan yang lain'),
(46, 10, 1, 'Penerapan persetujuan pada tingkat layanan / Service Level Agreement (SLA) tidak dilaksanakan secara terus menerus'),
(47, 10, 2, 'Penerapan SLA bersifat teknikal, hanya pada bagian fungsional'),
(48, 10, 3, 'Kemunculan SLA sektor TI telah diterapkan di seluruh bagian organisasi'),
(49, 10, 4, 'Penerapan SLA diterapkan secara luas di berbagai enterprise'),
(50, 10, 5, 'Penerapan SLA dilakukan secara luas hingga pada rekanan/kemitraan eksternal'),
(51, 11, 1, 'Proses pembandingan (benchmarking) pengelolaan TI tidak secara umum dipraktikkan oleh lingkungan organisasi'),
(52, 11, 2, 'Proses benchmarking tidak dilakukan secara formal oleh lingkungan organisasi'),
(53, 11, 3, 'Proses benchmarking hanya dilakukan pada proses-proses yang spesifik bagi organisasi'),
(54, 11, 4, 'Proses benchmarking telah dilakukan secara rutin oleh lingkungan organisasi'),
(55, 11, 5, 'Proses benchmarking dilakukan secara rutin, dan diperluas dengan mitra organisasi'),
(56, 12, 1, 'Organisasi tidak melakukan proses evaluasi ataupun revisi mengenai pengelolaan TI'),
(57, 12, 2, 'Organisasi melakukan proses evaluasi ataupun revisi hanya pada beberapa bidang di lingkungannya, dan terbatas untuk masalah tertentu'),
(58, 12, 3, 'Proses evaluasi/revisi, dapat memunculkan kegiatan formalitas pengelolan TI di lingkungan organisasi'),
(59, 12, 4, 'Proses evaluasi/revisi dilakukan secara formal '),
(60, 12, 5, 'Proses evaluasi/revisi dilakukan secara rutin'),
(61, 13, 1, 'Organisasi tidak melakukan kegiatan pengukuran dan perbaikan efektivitas tentang kegiatan TI dengan bisnis secara rutin'),
(62, 13, 2, 'Proses pengukuran dan  perbaikan efektivitas masih dikatakan minim dilakukan secara rutin'),
(63, 13, 3, 'Organisasi dengan secara terbuka memperlihatkan proses  pengukuran dan perbaikan efektivitas TI dengan bisnis'),
(64, 13, 4, 'Untuk beberapa kali, organisasi melakukan proses  pengukuran dan perbaikan efektivitas TI dengan bisnis'),
(65, 13, 5, 'Organisasi telah melakukan proses   pengukuran dan perbaikan efektivitas TI dengan bisnis secara rutin dan membudaya'),
(66, 14, 1, 'Tidak semua pihak TI ikut berpartisipasi dalam proses perencanaan strategis organisasi. Artinya terdapat tim khusus dari pihak TI untuk ikut berpartisipasi'),
(67, 14, 2, 'Dasar perencanaan strategis hanya berfokus pada bagian fungsional organisasi dan perencanaan hanya dilakukan pada divisi bidang fungsional'),
(68, 14, 3, 'Proses perencanaan strategis tidak hanya tentang lingkungan internal organisasi, tetapi juga mengenai perencanaan terhadap lingkungan eksternal organisasi'),
(69, 14, 4, 'Perencanaan strategis dikelola oleh seluruh bagian lingkungan organisasi'),
(70, 14, 5, 'Perencanaan strategis terintegrasi secara menyeluruh untuk lingkungan internal dan eksternal organisasi'),
(71, 15, 1, 'Tidak semua pihak manajemen ikut berpartisipasi dalam proses perencanaan strategis organisasi. Artinya, terdapat tim khusus dari pihak manajemen untuk ikut berpartisipasi'),
(72, 15, 2, 'Proses perencanaan terfokus pada taktis fungsional TI yang akan diimplementasikan di lingkungan organisasi'),
(73, 15, 3, 'Perencanaan strategis TI dilakukan secara terfokus, di samping itu terdapat beberapa perencanaan strategis TI antar organisasi.'),
(74, 15, 4, 'Perencanaan strategis TI dikelola oleh seluruh bagian lingkungan organisasi'),
(75, 15, 5, 'Perencanaan strategis TI terintegrasi secara menyeluruh untuk lingkungan dalam dan luar organisasi'),
(76, 16, 1, 'Proses pelaporan dilakukan secara terpusat atau dilakukan secara desentralisasi (dari Chief Information Officer kepada Chief Financial Officer)'),
(77, 16, 2, 'Proses pelaporan dilakukan secara terpusat atau dilakukan secara desentralisasi (dari Chief Information Officer kepada Chief Financial Officer). Namun terkadang dilakukan secara kolokasi '),
(78, 16, 3, 'Proses pelaporan dilakukan secara terpusat atau dilakukan secara desentralisasi. Terkadang proses desentralisasi melalui cara penggabungan antara Chief Information Officer (CIO) dan Chief Operating Officer (COO), yang memiliki alur komunikasi dari CIO ke '),
(79, 16, 4, 'Proses pelaporan dilakukan secara bersamaan. Artinya laporan diberikan dari CIO ke COO / CEO'),
(80, 16, 5, 'Proses pelaporan dilakukan secara bersamaan antara CIO dan CEO organisasi'),
(81, 17, 1, 'Organisasi memiliki pusat pembiayaan untuk mengendalikan anggaran akibat dari pengeluaran yang tak menentu'),
(82, 17, 2, 'Organisasi memiliki pusat pembiayaan untuk mengendalikan  anggaran, pengelolaan ini dilakukan oleh bagian fungsional'),
(83, 17, 3, 'Organisasi memiliki pusat pembiayaan untuk mengatasi beberapa hal mengenai penanaman modal'),
(84, 17, 4, 'Organisasi memiliki tata kelola investasi TI yang terpusat'),
(85, 17, 5, 'Organisasi memiliki tata kelola investasi dan laba TI yang terpusat'),
(86, 18, 1, 'Pengelolaan investasi TI dilakukan berdasarkan pada pembiayaan. Hal ini dikarenakan pengeluaran dari organisasi yang tidak menentu.'),
(87, 18, 2, 'Pengelolaan investasi bidang TI dilakukan berdasarkan pada pembiayaan, terfokus pada operasional dan perawatan TI untuk keperluan lingkungan organisasi'),
(88, 18, 3, 'Penentuan ada dan tidaknya pengelolaan investasi bidang TI dilakukan dengan cara tradisional, sesuai dengan faktor pendorong yang organisasi miliki'),
(89, 18, 4, 'Dengan adanya pengelolaan investasi bidang TI, terdapat efektivitas pembiayaan lingkungan organisasi, yang mana poros penggerak ada pada proses perencanaan TI'),
(90, 18, 5, 'Nilai bisnis dari adanya pengelolaan investasi TI, dilakukan secara luas hingga pada rekanan/kemitraan eksternal'),
(91, 19, 1, 'Steering Commite (SC) untuk Divisi Bidang TI  dilakukan secara tidak formal, artinya sama seperti pegawai yang lain.'),
(92, 19, 2, 'SC melakukan komunikasi yang berkala antara divisi bidang TI dan pihak manajemen untuk menentukan prioritas implementasi proyek TI'),
(93, 19, 3, 'Proses komunikasi antara divisi bidang TI, pihak manajemen dan SC dilakukan secara jelas dan seperti biasa'),
(94, 19, 4, 'SC yang ada dibentuk secara formal, sehingga membuat proses menjadi efektif'),
(95, 19, 5, 'SC dibentuk dari kemitraan / rekanan organisasi dengan pihak luar.'),
(96, 20, 1, 'Proses penentuan keputusan dilakukan dengan cepat tanggap untuk menentukan prioritas implementasi proyek TI'),
(97, 20, 2, 'Sesekali respons dilakukan untuk menentukan implementasi TI dilakukan dengan cepat'),
(98, 20, 3, 'Lebih banyak respons yang cepat untuk menentukan implementasi TI di lingkungan organisasi'),
(99, 20, 4, 'Staf di lingkungan organisasi cepat dalam merespons pekerjaan, sehingga dapat menjadi nilai tambah untuk menentukan prioritas implementasi TI'),
(100, 20, 5, 'Nilai prioritas untuk menentukan prioritas implementasi TI dapat ditambahkan untuk rekanan/mitra bisnis'),
(101, 21, 1, 'TI dianggap sebagai biaya bisnis yang perlu dikeluarkan oleh organisasi'),
(102, 21, 2, 'Pengelola TI memunculkan anggapan bahwa  TI merupakan salahsatu asset yang dimiliki oleh organisasi'),
(103, 21, 3, 'TI yang saat ini telah ada dipandang sebagai sebuah asset yang dimiliki oleh organisasi'),
(104, 21, 4, 'Penerapan TI untuk proses bisnis perusahaan merupakan bagian dari strategi bisnis organisasi '),
(105, 21, 5, 'Penerapan TI secara bisnis bersifat co-adaptif'),
(106, 22, 1, 'Organisasi tidak menyedia tempat bagi pengelola TI dalam area bisnis (termasuk kaitannya dengan perencanaan strategi organisasi)'),
(107, 22, 2, 'Proses bisnis dari keterlibatan TI digunakan sebagai faktor pendukung dari terselenggaranya perencanaan strategis organisasi'),
(108, 22, 3, 'Proses bisnis yang melibatkan TI digunakan sebagai salah satu kemudi dari proses pencapaian rencana strategis organisasi'),
(109, 22, 4, 'Strategi bisnis yang melibatkan TI digunakan sebagai faktor pendukung atau poros kemudi dari proses bisnis organisasi'),
(110, 22, 5, 'Bisnis yang melibatkan TI bersifat co-adaptif'),
(111, 23, 1, 'Dalam pembagiannya, TI berani mengambil resiko meskipun penghargaan yang akan diberikan tidak banyak (sedikit)'),
(112, 23, 2, 'TI mengambil cukup banyak resiko walaupun penghargaan yang diberikan sedikit'),
(113, 23, 3, 'Terdapat toleransi dari risiko yang diambil, namun dalam bagian ini TI mendapatkan beberapa penghargaan'),
(114, 23, 4, 'Apa pun risiko dan penghargaan yang diberikan kepada Divisi Bidang TI nanti akan dibagikan kepada tim.'),
(115, 23, 5, 'Risiko dan penghargaan akan dibagikan kepada seluruh tim di Divisi Bidang TI'),
(116, 24, 1, 'Program dilakukan secara khusus oleh tim yang ditunjuk'),
(117, 24, 2, 'Program yang dilakukan memiliki standar manajemen tertentu'),
(118, 24, 3, 'Standar manajemen untuk program telah ditaati oleh Divisi Bidang TI dan pihak manajemen'),
(119, 24, 4, 'Standar manajemen hubungan/komunikasi antara Divisi Bidang TI dengan  pihak manajemen mengalami peningkatan dari standar sebelumnya'),
(120, 24, 5, 'Adanya perbaikan standar manajemen komunikasi yang berkelanjutan oleh Divisi Bidang TI dan pihak manajemen'),
(121, 25, 1, 'Hubungan kepercayaan yang minim antara pihak manajemen dan Divisi Bidang TI '),
(122, 25, 2, 'Kepercayaan yang ada lebih mengutamakan bagian transaksional organisasi'),
(123, 25, 3, 'Adanya kepercayaan antara pihak manajemen dan Divisi Bidang TI, memunculkan penghargaan terhadap penyedia layanan yang bermitra dengan organisasi'),
(124, 25, 4, 'Penyedia layanan yang menghubungkan kepercayaan Divisi Bidang TI dan pihak manajemen telah dihargai oleh organisasi'),
(125, 25, 5, 'Hubungan kepercayaan dengan rekanan bisnis organisasi, dihargai oleh Divisi TI dan pihak manajamen'),
(126, 26, 1, 'Organisasi tidak memiliki dukungan dari senior atau sponsor manapun'),
(127, 26, 2, 'Dukungan senior atau sponsor hanya terbatas pada bagian fungsional organisasi'),
(128, 26, 3, 'Terdapat dukungan senior atau sponsor pada bagian fungsional organisasi'),
(129, 26, 4, 'Terdapat dukungan senior atau sponsor dengan tingkat kualitas yang tinggi'),
(130, 26, 5, 'Dukungan senior atau sponsor hanya ada pada tingkat CEO (atau pimpinan perusahaan)'),
(131, 27, 1, 'Proses dalam hal manajemen finansial masih dilakukan secara tradisional (tidak ada TI yang khusus untuk mengurusi manajerial finansial)'),
(132, 27, 2, 'Proses transaksi di lingkungan organisasi telah menggunakan sistem (contohnya dengan diterapkannya Enterprise Support System / Decision Support System)'),
(133, 27, 3, 'Cakupan dukungan TI mulai diperluas (contohnya proses bisnis organisasi sebagai faktor pendukung tercapainya rencana strategis organisasi)'),
(134, 27, 4, 'Cakupan dukungan TI didefinisikan kembali dalam ruang lingkup bisnis organisasi (contohnya bisa berupa proses bisnis sebagai poros kemudi organisasi)'),
(135, 27, 5, 'Cakupan dukungan TI diambil dari eksternal organisasi, artinya strategi bisnis yang sudah disusun menjadi faktor pendukung atau poros kemudi dari organisasi'),
(136, 28, 1, 'Tidak terdapat standar TI yang sengaja dibuat'),
(137, 28, 2, 'Standar TI yang diterapkan pada organisasi telah terdefinisikan dengan baik'),
(138, 28, 3, 'Standar TI yang diterapkan di organisasi dapat memperlihatkan ukuran dari standar enterprise'),
(139, 28, 4, 'Organisasi telah masuk ke dalam standar enterprise'),
(140, 28, 5, 'Organisasi telah masuk ke dalam standar antarenterprise'),
(141, 29, 1, 'Tidak terdapat integrasi yang dilakukan secara formal pada bagian fungsional di lingkungan organisasi'),
(142, 29, 2, 'Organisasi melakukan upaya awal untuk melakukan integrasi antarkomponen TI  yang sudah diimplementasikan'),
(143, 29, 3, 'Dilakukannya proses integrasi komponen TI pada seluruh bagian fungsional di lingkungan organisasi  '),
(144, 29, 4, 'Komponen TI  pada bagian fungsional di lingkungan organisasi ikut diintegrasikan hingga pada rekanan/mitra bisnis'),
(145, 29, 5, 'Proses integrasi komponen TI  pada bagian fungsional di lingkungan organisasi  telah diimplementasikan, serta ikut berkembang dengan rekanan/mitra bisnis '),
(146, 30, 1, 'Tidak terdapat integrasi yang dilakukan secara formal di lingkungan organisasi'),
(147, 30, 2, 'Organisasi melakukan upaya awal untuk melakukan integrasi antarkomponen TI yang sudah diimplementasikan'),
(148, 30, 3, 'Dilakukannya proses integrasi komponen TI pada seluruh bagian di lingkungan organisasi  '),
(149, 30, 4, 'Komponen TI  di lingkungan organisasi ikut diintegrasikan hingga pada rekanan/mitra bisnis'),
(150, 30, 5, 'Proses integrasi komponen TI telah diimplementasikan, serta ikut berkembang dengan rekanan/mitra bisnis '),
(151, 31, 1, 'Tidak terdapat integrasi yang dilakukan secara formal di lingkungan ekseternal organisasi'),
(152, 31, 2, 'Bagian internal organisasi melakukan upaya awal untuk melakukan integrasi antarkomponen TI yang sudah diimplementasikan di eksternal organisasi'),
(153, 31, 3, 'Dilakukannya proses integrasi komponen TI pada seluruh bagian di lingkungan eksternal organisasi  '),
(154, 31, 4, 'Komponen TI  di lingkungan eksternal organisasi ikut diintegrasikan hingga pada rekanan/mitra bisnis'),
(155, 31, 5, 'Proses integrasi komponen TI telah diimplementasikan, serta ikut berkembang dengan rekanan/mitra bisnis '),
(156, 32, 1, 'Organisasi tidak menerapkan infrastruktur TI yang fleksibel dan transparan'),
(157, 32, 2, 'Organisasi masih menerapkan transparansi dan fleksibilitas infrastruktur TI yang terbatas'),
(158, 32, 3, 'Penerapan infrastruktur TI yang transparan dan fleksibel difokuskan untuk proses komunikasi'),
(159, 32, 4, 'Penerapan infrastruktur TI dapat memperlihatkan tingkat efektivitas manajemen TI di lingkungan organisasi'),
(160, 32, 5, 'Infrastruktur TI yang diimplementasikan oleh organisasi telah melewati infrastruktur yang ada di organisasi lainnya'),
(161, 33, 1, 'Organisasi tidak memandang penting ide-ide dari anggotanya'),
(162, 33, 2, 'Inovasi dan perilaku wirausaha dari anggota ditentukan berdasarkan fungsionalitas ide untuk organisasi'),
(163, 33, 3, 'Organisasi memberikan toleransi terhadap resiko dari penerapan ide yang dimiliki oleh anggotanya'),
(164, 33, 4, 'Organisasi akan memandang lebih ide dan perilaku wirausaha yang berhubungan dengan fungsionalitas organisasi, mitra bisnis, dan manajerial TI'),
(165, 33, 5, 'Inovasi dan perilaku wirausaha anggota, telah mengikuti norma yang ada (tidak keluar dari norma-norma yang berlaku di masyarakat)'),
(166, 34, 1, 'Pusat kekuatan TI terdapat pada bagian dalam bisnis perusahaan (bagian inti perusahaan)'),
(167, 34, 2, 'Pusat kekuatan (kekuasaan) ada di bagian fungsional organisasi'),
(168, 34, 3, 'Pusat kekuatan mulai muncul di seluruh bagian, dalam lingkungan organisasi'),
(169, 34, 4, 'Pusat kekuatan terdapat di seluruh bagian dalam lingkungan organisasi'),
(170, 34, 5, 'Pusat kekuatan hanya ada di keseluruhan bagian eksekutif, termasuk CIO dan rekanan/mitra bisnis'),
(171, 35, 1, 'Sejauh ini organisasi telah tahan terhadap perubahan yang ada'),
(172, 35, 2, 'Kesiapan anggota masih bergantung pada bagian fungsional dari organisasi'),
(173, 35, 3, 'Untuk dapat mengetahui kesiapan anggota, perlu adanya perubahan dalam budaya kerja di lingkungan organisasi'),
(174, 35, 4, 'Kesiapan anggota dalam menghadapi perubahan, akan ditentukan karena adanya kebutuhan yang tinggi untuk lingkungan organisasi'),
(175, 35, 5, 'Kesiapan anggota dalam menghadapi perubahan, akan ditentukan karena adanya kebutuhan yang tinggi untuk lingkungan organisasi'),
(176, 36, 1, 'Tidak adanya peluang bagi anggota organisasi untuk bisa bertukar posisi karier antara Divisi Bidang TI dan Bidang Manajemen'),
(177, 36, 2, 'Adanya mutasi pertukaran posisi  karier Divisi Bidang TI dan bidang Mananjemen dilakukan secara minimum'),
(178, 36, 3, 'Adanya mutasi, bergantung pada bagian fungsional dalam lingkungan organisasi'),
(179, 36, 4, 'Mutasi pertukaran posisi dilakukan pada seluruh bagian hanya dalam bagian fungsional di lingkungan organisasi'),
(180, 36, 5, 'Mutasi pertukaran posisi dilakukan pada seluruh bagian yang ada dalam lingkungan organisasi'),
(181, 37, 1, 'Organisasi tidak memberikan kesempatan anggota kedua divisi tersebut untuk belajar di lintas pekerjaan secara formal'),
(182, 37, 2, 'Organisasi memberikan peluang bagi anggota kedua divisi tersebut untu dapat belajar di lintas pekerjaan'),
(183, 37, 3, 'Pelaksanaan pelatihan untuk lintas pekerjaan bergantung pada bagian fungsional dalam lingkungan organisasi'),
(184, 37, 4, 'Organisasi memberikan peluang pelatihan lintas pekerjaan hanya pada bagian fungsional di lingkungan organisasi'),
(185, 37, 5, 'Organisasi memberikan peluang pelatihan lintas pekerjaan pada seluruh bagian di lingkungan organisasi'),
(186, 38, 1, 'Perilaku anggota dalam bersosialisasi hanya akan memiliki dampak yang minim untuk lingkungan organisasi'),
(187, 38, 2, 'Dalam bersosialisasi, anggota akan lebih mengutamakan proses transaksional saja'),
(188, 38, 3, 'Perilaku anggota dalam bersosialisasi, dapat memperlihatkan penyediaan nilai layanan yang dimiliki organisasi'),
(189, 38, 4, 'Keikutsertaan anggota dalam mengikuti training di luar organisai, dapat menyediakan layanan yang bernilai'),
(190, 38, 5, 'Organisasi dapat mengetahui rekanan/mitra bisnis yang memiliki nilai lebih'),
(191, 39, 1, 'Gaya manajemen organisasi yang ada cenderung memerintah dan memberikan arahan kepada anggotanya'),
(192, 39, 2, 'Gaya manajemen berdasarkan pada konsensus (kesepakatan) yang digunakan di lingkungan organisasi'),
(193, 39, 3, 'Gaya manajemen untuk mempertahankan anggota dipilih berdasarkan hasil atau capaian perusahaan'),
(194, 39, 4, 'Gaya manajemen untuk mempertahankan anggota dipilih berdasarkan laba atau nilai yang diperoleh'),
(195, 39, 5, 'Gaya manajemen untuk mempertahankan dan merekrut anggota dipilih berdasarkan hubungan kerja sama dengan pihak luar.');

-- --------------------------------------------------------

--
-- Table structure for table `t_measurement`
--

CREATE TABLE IF NOT EXISTS `t_measurement` (
`id` int(5) NOT NULL,
  `id_user` int(3) NOT NULL,
  `idin` int(2) NOT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=371 ;

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
(78, 23, 39, 3.2),
(79, 24, 1, 1.6),
(80, 24, 2, 2.4),
(81, 24, 3, 3.2),
(82, 24, 4, 4),
(83, 24, 5, 2),
(84, 24, 6, 2.2),
(85, 24, 7, 1.8),
(86, 24, 8, 3),
(87, 24, 9, 2.6),
(88, 24, 10, 2),
(89, 24, 11, 1.4),
(90, 24, 12, 1.8),
(91, 24, 13, 3.4),
(92, 24, 14, 2.6),
(93, 24, 15, 1.4),
(94, 24, 16, 1.6),
(95, 24, 17, 2.8),
(96, 24, 18, 4.6),
(97, 24, 19, 2.6),
(98, 24, 20, 2.6),
(99, 24, 21, 3.2),
(100, 24, 22, 2),
(101, 24, 23, 3.6),
(102, 24, 24, 3.8),
(103, 24, 25, 2.8),
(104, 24, 26, 3.4),
(105, 24, 27, 1.8),
(106, 24, 28, 3.4),
(107, 24, 29, 4.2),
(108, 24, 30, 4),
(109, 24, 31, 3.6),
(110, 24, 32, 4),
(111, 24, 33, 2.4),
(112, 24, 34, 2),
(113, 24, 35, 3),
(114, 24, 36, 4.6),
(115, 24, 37, 2.4),
(116, 24, 38, 3),
(117, 24, 39, 2.8),
(118, 25, 1, 3.8),
(119, 25, 2, 3.2),
(120, 25, 3, 4.2),
(121, 25, 4, 4),
(122, 25, 5, 2.6),
(123, 25, 6, 3),
(124, 25, 7, 3.6),
(125, 25, 8, 2.6),
(126, 25, 9, 4.4),
(127, 25, 10, 4.4),
(128, 25, 11, 4.6),
(129, 25, 12, 4.6),
(130, 25, 13, 3.2),
(138, 25, 14, 2),
(139, 25, 15, 2),
(140, 25, 16, 2),
(141, 25, 17, 2),
(142, 25, 18, 2),
(143, 25, 19, 2),
(144, 25, 20, 2),
(145, 25, 21, 2.6),
(146, 25, 22, 2),
(147, 25, 23, 2),
(148, 25, 24, 2),
(149, 25, 25, 2),
(150, 25, 26, 2),
(151, 25, 27, 3.8),
(152, 25, 28, 2),
(153, 25, 29, 3.6),
(154, 25, 30, 2.4),
(155, 25, 31, 2.8),
(156, 25, 32, 2),
(157, 25, 33, 3),
(158, 25, 34, 3.6),
(159, 25, 35, 3),
(160, 25, 36, 3.8),
(161, 25, 37, 2.6),
(162, 25, 38, 4),
(163, 25, 39, 4.6),
(164, 45, 1, 2.6),
(165, 45, 2, 2.4),
(166, 45, 3, 2.2),
(167, 45, 4, 2.6),
(168, 45, 5, 2.6),
(169, 45, 6, 3.2),
(170, 45, 7, 2.2),
(171, 45, 8, 2.2),
(172, 45, 9, 2),
(173, 45, 10, 2.2),
(174, 45, 11, 2),
(175, 45, 12, 2),
(176, 45, 13, 3),
(177, 45, 14, 2.2),
(178, 45, 15, 2.2),
(179, 45, 16, 2),
(180, 45, 17, 2.2),
(181, 45, 18, 2.6),
(182, 45, 19, 2.2),
(183, 45, 20, 2.4),
(184, 45, 21, 2.2),
(185, 45, 22, 2.2),
(186, 45, 23, 2),
(187, 45, 24, 2.2),
(188, 45, 25, 2.2),
(189, 45, 26, 2.2),
(190, 45, 27, 2.4),
(191, 45, 28, 2.2),
(192, 45, 29, 2),
(193, 45, 30, 2.2),
(194, 45, 31, 2.2),
(195, 45, 32, 2.4),
(196, 45, 33, 2),
(197, 45, 34, 2.6),
(198, 45, 35, 2.4),
(199, 45, 36, 2.6),
(200, 45, 37, 3.2),
(201, 45, 38, 3.8),
(202, 45, 39, 2.6),
(203, 46, 1, 2),
(204, 46, 2, 2),
(205, 46, 3, 2),
(206, 46, 4, 2),
(207, 46, 5, 2),
(208, 46, 6, 2),
(209, 46, 7, 2),
(210, 46, 8, 2),
(211, 46, 9, 2),
(212, 46, 10, 2),
(213, 46, 11, 2),
(214, 46, 12, 2),
(215, 46, 13, 2.2),
(216, 46, 14, 2),
(217, 46, 15, 2),
(218, 46, 16, 2.4),
(219, 46, 17, 2.8),
(220, 46, 18, 3),
(221, 46, 19, 3.6),
(222, 46, 20, 3.6),
(223, 46, 21, 2.4),
(224, 46, 22, 2.8),
(225, 46, 23, 2.6),
(226, 46, 24, 3),
(227, 46, 25, 2.8),
(228, 46, 26, 3.6),
(229, 46, 27, 3.2),
(230, 46, 28, 3.6),
(231, 46, 29, 3.4),
(232, 46, 30, 4),
(233, 46, 31, 4),
(234, 46, 32, 3.8),
(235, 46, 33, 2.4),
(236, 46, 34, 2.8),
(237, 46, 35, 3.2),
(238, 46, 36, 3.8),
(239, 46, 37, 4),
(240, 46, 38, 3.6),
(241, 46, 39, 4.4),
(242, 47, 1, 2.8),
(243, 47, 2, 2.8),
(244, 47, 3, 3.4),
(245, 47, 4, 3.4),
(246, 47, 5, 3.8),
(247, 47, 6, 4.2),
(248, 49, 1, 2),
(249, 49, 2, 3.2),
(250, 49, 3, 3.6),
(251, 49, 4, 3.8),
(252, 49, 5, 3.8),
(253, 49, 6, 3.4),
(254, 49, 7, 2.4),
(255, 49, 8, 3.2),
(256, 49, 9, 3.4),
(257, 49, 10, 3),
(258, 49, 11, 3.4),
(259, 49, 12, 4),
(260, 49, 13, 4.4),
(261, 49, 14, 2.8),
(262, 49, 15, 2.6),
(263, 49, 16, 3.2),
(264, 49, 17, 3.6),
(265, 49, 18, 4.2),
(266, 49, 19, 4.2),
(267, 49, 20, 4),
(268, 49, 21, 4),
(269, 49, 22, 4.2),
(270, 49, 23, 3),
(271, 49, 24, 4),
(272, 49, 25, 4),
(273, 49, 26, 4.2),
(274, 49, 27, 4),
(275, 49, 28, 4),
(276, 49, 29, 4),
(277, 49, 30, 4.6),
(278, 49, 31, 4.2),
(279, 49, 32, 4.6),
(280, 49, 33, 4),
(281, 49, 34, 4.6),
(282, 49, 35, 3.4),
(283, 49, 36, 3.6),
(284, 49, 37, 5),
(285, 49, 38, 5),
(286, 49, 39, 5),
(287, 50, 1, 2.6),
(288, 50, 2, 3.2),
(289, 50, 3, 3.4),
(290, 50, 4, 3),
(291, 50, 5, 2),
(292, 50, 6, 1),
(293, 50, 7, 3.4),
(294, 50, 8, 4.2),
(295, 50, 9, 3),
(296, 50, 10, 2.2),
(297, 50, 11, 4.2),
(298, 50, 12, 2.4),
(299, 50, 13, 3.4),
(300, 50, 14, 2.6),
(301, 50, 15, 4.4),
(302, 50, 16, 1.8),
(303, 50, 17, 3),
(304, 50, 18, 2.2),
(305, 50, 19, 2.2),
(306, 50, 20, 3.4),
(307, 50, 21, 2.8),
(308, 50, 22, 2.6),
(309, 50, 23, 4),
(310, 50, 24, 3),
(311, 50, 25, 2.6),
(312, 50, 26, 2.2),
(313, 51, 27, 2.4),
(314, 51, 28, 3),
(315, 51, 29, 3.8),
(316, 51, 30, 3.2),
(317, 51, 31, 2.4),
(318, 51, 32, 3),
(319, 51, 21, 2.2),
(320, 51, 22, 3.6),
(321, 51, 23, 4.4),
(322, 51, 24, 3.2),
(323, 51, 25, 1.4),
(324, 51, 26, 3.8),
(325, 52, 33, 1.2),
(326, 52, 34, 3),
(327, 52, 35, 3.4),
(328, 52, 36, 3),
(329, 52, 37, 2.8),
(330, 52, 38, 3),
(331, 52, 39, 2.8),
(332, 54, 7, 2.6),
(333, 54, 8, 3.4),
(334, 54, 9, 2.8),
(335, 54, 10, 3.2),
(336, 54, 11, 2.6),
(337, 54, 12, 1.6),
(338, 54, 13, 2.8),
(339, 54, 1, 3),
(340, 54, 2, 3),
(341, 54, 3, 2.6),
(342, 54, 4, 3.2),
(343, 54, 5, 3.6),
(344, 54, 6, 2.8),
(345, 54, 14, 3.2),
(346, 54, 15, 2.4),
(347, 54, 16, 2),
(348, 54, 17, 2.6),
(349, 54, 18, 3.6),
(350, 54, 19, 4.2),
(351, 54, 20, 3),
(352, 54, 21, 2.8),
(353, 54, 22, 1.4),
(354, 54, 23, 2.8),
(355, 54, 24, 3.8),
(356, 54, 25, 3.2),
(357, 54, 26, 3.2),
(358, 54, 27, 3),
(359, 54, 28, 3.6),
(360, 54, 29, 4.4),
(361, 54, 30, 3.8),
(362, 54, 31, 3.2),
(363, 54, 32, 3.2),
(364, 54, 33, 2.8),
(365, 54, 34, 3.2),
(366, 54, 35, 2.8),
(367, 54, 36, 4),
(368, 54, 37, 3.6),
(369, 54, 38, 2.2),
(370, 54, 39, 3.2);

-- --------------------------------------------------------

--
-- Table structure for table `t_rating`
--

CREATE TABLE IF NOT EXISTS `t_rating` (
`id` int(11) NOT NULL,
  `antarmuka` int(11) NOT NULL,
  `pemahaman` int(11) NOT NULL,
  `easy` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t_rating`
--

INSERT INTO `t_rating` (`id`, `antarmuka`, `pemahaman`, `easy`) VALUES
(1, 5, 4, 3),
(2, 4, 2, 4),
(3, 4, 5, 5),
(4, 4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_strategi`
--

CREATE TABLE IF NOT EXISTS `t_strategi` (
  `id` int(11) NOT NULL,
  `idin` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `strategi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_strategi`
--

INSERT INTO `t_strategi` (`id`, `idin`, `level`, `kondisi`, `strategi`) VALUES
(0, 0, 0, 'kondisi', 'strategi'),
(1, 1, 1, 'Tidak Ada', 'Lingkungan organisasi harus bisa memberikan suatu fasilitas atau program bagi karyawan di bagian manajerial dan TI agar bisa saling memahami peran dari pekerjaannya masing-masing'),
(2, 2, 1, 'Tidak Ada', 'Lingkungan organisasi harus bisa memberikan suatu fasilitas atau program bagi karyawan di bagian manajerial dan TI agar bisa saling memahami peran dari pekerjaannya masing-masing'),
(3, 3, 1, 'Ad hoc dan tidak pasti', 'Karyawan TI sebaiknya memiliki inisiatif untuk dapat meningkatkan pemahamannya mengenai aspek bisnis, begitupun sebaliknya. Sebaiknya adakan program atau insentif yang formal untuk mendorong motivasi tentang pemahaman bisnis oleh TI'),
(4, 4, 1, 'Hanya berdasarkan perintah', 'Pastikan TI telah dapat memiliki pemahaman bisnis yang cukup. Dan karyawan TI harus lebih aktif lagi dalam kegiatan diskusi strategi bisnis organisasi'),
(5, 5, 1, 'Tidak Ada', 'Baiknya dibuat sebuah mekanisme formal dan terstruktur untuk mengelola pengetahuan sebagai aset. Sehingga pengetahuan yang ada tidak hanya terkotak-kota di setiap unit'),
(6, 6, 1, 'Tidak Ada', 'Diperlukan adanya orang yang dapat menjembatani proses berkomunikasi bisnis dan TI'),
(7, 7, 1, 'Tidak Berhubungan dengan bisnis', 'Sebaiknya TI memposisikan dirinya tidak hanya sebatas peran pendukung bagi bisnis. Tapi juga merupakan aspek penting bagi proses bisnis. Sehingga ukuran TI yang ada dapat berhubungan'),
(8, 8, 1, 'Ad hoc dan tidak pasti', 'Pihak manajemen tingkat atas baiknya menjadikan TI sebagai prioritas dalam menjalankan proses bisnisnya. Selain daripada itu libatkan juga TI dalam proses pembuatan rencana strategis'),
(9, 9, 1, 'Ad hoc, tidak saling berhubungan', 'Sebaiknya bisnis dapat melihat pengeluaran TI merupaka bagian dari pengeluaran operasional yang dipandang tidak biasa saja'),
(10, 10, 1, 'Tidak ada', 'Sebaiknya manajemen tingkat atas menjadikan TI sebagai prioritas utama dalam proses bisnis organisasi. Dan pengukuran kinerja TI tidak hanya sebatas aspek teknis yang bersifat minimal dan informal'),
(11, 11, 1, 'Tidak dilakukan ', 'Lakukan peningkatan pemahaman bisnis mengenai potensi dan kapabilitas TI. Selain daripada itu ubah kecenderungan pola pikir lingkungan organisasi mengenai aspek bisnis yang sepenuhnya menjadi tanggung jawab bisnis, dimana seharusnya TI juga aktif untuk berkontribusi tentang proses bisnis organisasi.'),
(12, 12, 1, 'Tidak ada', 'Sebaiknya libatkan TI dalam proses penentuan investasi TI. Dan TI harus dapat memposisikan dirinya yang tidak hanya terbtas sebagai pendukung teknis bagi bisnis saja.'),
(13, 13, 1, 'Tidak ada', 'Tingkatkan pemahaman bisnis terhadap potensi dan kapabilitas TI, sehingga TI tidak dilihat hanya sebagai alat pendukung teknis biasa dan dapat dijadikan prioritas utama untuk dikembangkan'),
(14, 14, 1, 'Ad hoc', 'Sebaiknya prose pembuatan rencana strategi organisasi turut meilbatkan TI, sehingga diharapkan TI memiliki pemahaman bisnis yang cukup, begitupun sebaliknya. Disamping itu, ubah pandangan manajemen tingkat atas yang memandang pembuatan rencana strategi organisasi hanya menjadi konsumsi internal bagi para eksekutif bisnis'),
(15, 15, 1, 'Ad hoc', 'Sebaiknya TI memposisikan dirinya secara aktif dan tidak hanya berfokus pada hal-hal teknis saja. Serta pastikan TI memiliki pemahaman bisnis yang cukup. Disamping itu, investasi TI harus lebih cenderung dapat memenuhi kebutuhan bisnis jangka panjang'),
(16, 16, 1, 'Sentralisasi/Desentralisasi; CIO melapor kepada CFO', 'Tingkatkan kembali pemahaman bisnis TI, sehingga TI  memiliki ide bisnis yang bermanfaat bagi organisasi. Disamping itu perlu adanya rencana strategi TI untuk menentukan arsitektur dan standar yang mencakup lingkup organisasi, serta dapat mengelola sumber dayanya secara maksimal'),
(17, 17, 1, 'Cost center, pengeluaran tidak menentu', 'Program atau insentif khusus (kerjasama antara unit SDM dengan unit TI) yang dapat memotivasi unit TI untuk memiliki pemahaman bisnis yang lebih baik dalam bentuk kontribusi ide bagaimana TI dapat digunakan oleh unit bisnis untuk memperbaiki kualitas proses bisnisnya. Disamping itu baiknya pengelola TI harus mengubah paradigmanya bahwa TI seharusnya dapat men-challenge bisnis dalam rangka memperbaiki proses bisnis atau inovasi layanan baru'),
(18, 18, 1, 'Berdasarkan biaya, untuk mengurangi biaya', 'Lakukan peningkatan pemahaman bisnis mengenai potensi dan kapabilitas TI. Selain daripada itu ubah pola pikir TI yang melihat bahwa aspek bisnis sepenuhnya menjadi tanggung jawab bisnis saja. Pastikan melakukan investasi TI karena pemenuhan kebutuhan bisnis jangka panjang'),
(19, 19, 1, 'Tidak ada', 'Sebaiknya posisikan peran TI sebagai unsur penting bagi proses bisnis, sehingga TI akan membutuhkan komite pengarah untuk melaksanakan perannya. Jika akan melakukan investasi TI, baiknya tidak hanya ditentukan oleh masing-masing unit bisnis saja (tapi juga melibatkan peran TI)'),
(20, 20, 1, 'Reaktif', 'Penentuan prioritas proyek tidak hanya berdasarkan dari kebutuhan TI dalam jangka pendek, tetapi juga disesuaikan dengan proses bisnis organisasi. Hal ini akan didukung apabila organisasi memiliki rencana strategi TI dan pemahaman bisnis yang cukup'),
(21, 21, 1, 'TI dipandang hanya sebagai biaya', 'Sebaiknya bangun hubungan interpersonal yang baik antara pengelola TI dengan pihak bisnis (manajerial). Sehingga pemhaman mengenai peran strategis dan kemampuan TI dapat diperoleh oleh kedua belah pihak. Selanjutnya pastikan pengelola TI memiliki rencana strategi mengenai implementasi TI di lingkungan organisasi, dan pengelola TI harus dapat mengelola sumber dayanya semaksimal mungkin'),
(22, 22, 1, 'Tidak ditempatkan dalam area bisnis', 'Sebaiknya pengelola TI dapat meningkatkan pemahaman mengenai proses bisnis organisasi, dan posisikan diri secara aktif, tidak hanya sabatas pendukung teknis bagi proses bisnis. Selanjutnya strategi bisnis seharusnya tidak dibatasi hanya untuk konsumsi para eksekutif bisnis saja. Pembuatan keputusan investasi tidak hanya menjadi wewenang manajemen bisnis, tapi juga perlu melibatkan pengelola TI.'),
(23, 23, 1, 'TI menanggung semua resiko tanpa reward', 'Peran dari orang tengah (liaison staff) atau staf penghubung harusnya dapat difungsikan dengan maksimal. Disamping itu, kualitas pemahaman antara pihak bisnis dan pengelola TI perlu ditingkatkan.  Selanjutnya, bangung kembali hubungan interpersonal antara pengelola TI dengan pihak bisnis'),
(24, 24, 1, 'Ad hoc', 'Sebaiknya pihak bisnis memiliki pemahaman yang cukup terkait potensi dan kapabilitas pengelola TI. Disamping itu pengelola TI harus memiliki sifat aktif tidak hanya sebagai alat pendukung teknis di lingkungan organisasi sehingga tidak melihat adanya kebutuhan terhadap proses pengelolaan kolaboratif'),
(25, 25, 1, 'Ada konflik', 'Pengelola TI perlu memaksimalkan perannya untuk membangun hubungan interpersonal yang baik dengan pihak bisnis, begitupun sebaliknya. Selanjutnya adalah staf penghubung yang ada tidak selalu menjembatani komunikasi pihak bisnis dan pengelola TI hanya dalam kasus proyek saja (perlu adanya inisiatif tertentu yang bersifat kontemporer)'),
(26, 26, 1, 'Tidak ada', 'Unit TI (diwakili oleh pengelola TI) membangun hubungan relasi dengan manajemen bisnis, kepala unit bisnis organisasi, melakukan kampanye tentang pentingnya peran TI secara strategis terhadap proses bisnis unit (melalui diskusi informal, tukar-menukar informasi secara elektronis via email). Serta membangun portal komunitas internal sebagai media komunikasi antara bisnis dengan TI, unit TI dapat diminta untuk memberikan ide / masukkan terkait penggunaan TI dalam bisnis secara berkala dalam bentuk tulisan / artikel (di publikasikan secara elektronis untuk menjadi komsumsi unit-unit bisnis di internal organisasi). Ini dilakukan untuk menambah pengetahuan pengelola TI dan pihak bisnis'),
(27, 27, 1, 'Tradisional (sebagai support, seperti laporan, email)', 'Sebaiknya pengelola TI membina komunikasi yang baik dengan manajemen bisnis level atas dan para kepala unit bisnis, menggali kendala dan permasalahan yang menjadi keluhan bisnis sambil mengupayakan ide bagaimana TI dapat digunakan sebagai solusi (melakukan selft- assessment terhadap kualitas layanan TI, kuesioner atau pengamatan terhadap proses bisnis berjalan).'),
(28, 28, 1, 'Tidak ada', 'Unit TI (diwakili oleh pengelola TI) membangun hubungan relasi dengan manajemen bisnis, kepala unit bisnis organisasi, melakukan kampanye tentang pentingnya peran TI secara strategis terhadap proses bisnis unit (melalui diskusi informal, tukar-menukar informasi secara elektronis via email). Selanjutnya Unit TI (bekerja sama dengan unit SDM) menyelenggarakan pelatihan secara berkala bagi unit-unit bisnis (selaku pengguna layanan TI) terkait pada penggunaan TI.\nUkuran'),
(29, 29, 1, 'Tidak terintegrasi secara formal', 'Organisasi harus mengupayakan arsitektur TI untuk bisa diintegrasikan'),
(30, 30, 1, 'Tidak terintegrasi secara formal', 'Organisasi harus mengupayakan arsitektur TI untuk bisa diintegrasikan'),
(31, 31, 1, 'Tidak terintegrasi secara formal', 'Organisasi harus mengupayakan untuk membuat konsep arsiterktur antar perusahaan, untuk kemudian diuji cobakan'),
(32, 32, 1, 'Tidak ada', 'Diperlukan adanya program atau insentif khusus (kerjasama antara unit SDM dengan unit TI) yang dapat memotivasi unit TI untuk memiliki pemahaman bisnis yang lebih baik dalam bentuk kontribusi ide bagaimana TI dapat digunakan oleh unit bisnis untuk memperbaiki kualitas proses bisnisnya'),
(33, 33, 1, 'Tidak didukung', 'Pengelola TI ikut berperan dalam menumbuh kembangkan budaya inovasi / kewirausahaan di dalam unitnya, dalam bentuk diskusi internal bersama, membahas contoh kasus, penilaian kinerja / pemberian bonus berdasarkan kontribusi dalam bentuk ide atau inisiatif yang bersifat inovatif. Serta adanya program / insentif khusus (bekerja sama dengan unit SDM) untuk mendorong inisiatif / aktivitas yang mendorong unit TI dan unit bisnis berkolaborasi menghasilkan ide inovatif yang di realisasikan dalam bentuk proyek / inisiatif TI-bisnis.'),
(34, 34, 1, 'Dalam bisnis', 'Kepala unit yang ada di lingkungan organisasi baiknya dapat lebih inisiatif untuk mau ikut berpartisipasi / terlibat langsung terkait dengan perumusan keputusan / kebijakan. Selain daripada itu sebaiknya pengelola TI dapat memberikan kontribusi lebih bagi organisasi, tidak hanya sebatas pendukung teknis saja'),
(35, 35, 1, 'Sulit (cenderung menolak perubahan)', 'Perlu adanya peningkatan dalam hal proses menyampaikan aspirasi manajemen tingkat atas kepada para staf operasional, hal ini dilakukan untuk menghindari terjadinya salah persepsi. Selain daripada itu, sebaiknya perlu dibuat suatu program atau inisiatif formal yang menanamkan budaya semangat perubahan, pengembangan keahlian atau lainnya bagi mereka yang dinilai memiliki peran sebagai agen perubahan di lingkungan organisasi'),
(36, 36, 1, 'Tidak ada', 'Pengelola TI perlu memposisikan perannya tidak hanya sebatas sebagai pendukung teknis bisnis biasa. Perlu adanya pengingkatan kualitas pemahaman dan kemitraan antara pengelola TI dan pihak bisnis. Selanjutnya, perlu diadakan program pelatihan lintas fungsi yang bersifat formal untuk dapat menumbuhkan kesadaran terhadap manfaat dari program yang telah dilakuakn.'),
(37, 37, 1, 'Tidak ada', 'Pengelola TI perlu membangun hubungan interpersonal yang baik dengan bisnis agar dapat memahami peranannya masing-masing dalam strategi bisnis yang diterapkan. Disamping itu, pengelola TI harus membangun pola pikir dimana aspek bisnis tidak sepenuhnya menjadi tanggung jawab pihak bisnis saja tapi juga merupakan tanggung jawab pengelola TI'),
(38, 38, 1, 'Ada, tetapi minim', 'Perlu adanya peningkatan kualitas komunikasi antara bisnis dan TI agar dapat terbina lebih baik. Selain daripada itu perlu adanya pembagian batasan peran dan tanggung jawab dari pengelola TI dan pihak bisnis agar tidak saling tumpang tindih'),
(39, 39, 1, 'Melalui perintah', 'Sebaiknya pengelola TI dapat meningkatkan motivasinya terkait dengan inisiatif dan partisipasi untuk memberikan ide atau masukan yang dapat mendukung proses bisnis yang cukup penting. Selian daripada itu, sebaiknya organisasi membuat suatu program atau insentif khusus yang bersifat formal dan jelas untuk mendorong inisiatif dan partisipasi serta tanggung jawab dari para kepala unit (termasuk unit TI)'),
(40, 1, 2, 'Ada, tetapi sedikit', 'Pastikan proses komunikasi kepada bagian manajemen tingkat atas dilakukan lebih aktif. Proses komunikasi yang aktif dapat meningkatkan pemahaman mengenai peran kerja di bagiannya masing-masing'),
(41, 2, 2, 'Ada, tetapi sedikit', 'Di samping itu perlu adanya peningkatan mengenai pentingnya TI dalam menggerakkan proses bisnis di organisasi'),
(42, 3, 2, 'Tidak formal', 'Menciptakan lingkungan kerja yang terbuka, sehingga dapat mengembangkan proses belajar bagi karyawan di lingkungan organisasi'),
(43, 4, 2, 'Terbatas, tetapi santai', 'Perlunya pihak bisnis menganggap bahwa peran pengelola TI di organisasi  adalah sebagai rekan bisnis, dan tidak hanya sekedar penyedia layanan kebutuhan proses bisnis saja. Sehingga proses komunikasi tidak hanya berjalan karena adanya keperluan tentang proses bisnis'),
(44, 5, 2, 'Semi terstruktur', 'Sebaiknya membuat Knowledge Management System (KMS) untuk seluruh unit-unit yang ada di organisasi, untuk keudian disosialisasikan dengan tepat dan berkesinambungan. Disamping itu organisasi perlu menumbuhkan budaya berbagi kesadaran untuk senantiasa menyimpan, menciptakan dan mengolah yang organisasi miliki.'),
(45, 6, 2, 'Berdasarkan teknologi taktis yang terbatas', 'Sebaiknya perlu ada pendefinisian peran dan tanggung jawab staf penghubung bagi pihak yang memiliki kemampuan dalam hal teknis ataupun bisnis organisasi. Disamping itu penting juga untuk memastikan agenda strategis TI dibahas dan dirapatkan dengan tepat waktu dan berkesinambungan'),
(46, 7, 2, 'Biaya yang efisien', 'Organisasi perlu membuat evaluasi (assessment) mengenai manfaat dan kontribusi TI yang cukup lengkap, mencakup bagian teknis, operasional, keuangan dan SDM. Disamping itu, perlu dilakukan juga peninjauan dan penindaklanjutan atas hasil dari evaluasi yang telah dilakukan sebelumnya'),
(47, 8, 2, 'Berada pada bagian fungsional organisasi', 'Organisasi perlu membuat evaluasi (assessment) mengenai manfaat dan kontribusi TI yang cukup lengkap, mencakup bagian teknis, operasional, keuangan dan SDM. Disamping itu, perlu dilakukan juga peninjauan dan penindaklanjutan atas hasil dari evaluasi yang telah dilakukan sebelumnya'),
(48, 9, 2, 'Pengukuran bisnis dan TI tidak dihubungkan', 'Sebaiknya organisasi membuat tim perumus khusus di bawah kendali komite pengarah (SC). Tim ini memiliki fungsi untuk mengukur kinerja antara pihak bisnis dan pengelola TI yang komprehensif mencakup nilai investasi dan risiko TI'),
(49, 10, 2, 'Bersifat teknis pada untit fungsional', 'Organisasi perlu untuk membuat jaminan persetujuan dalam tingkatan layanan di bagian unit fungsional, baik itu teknis maupun non teknis. Dan disesuaikan dengan kebutuhan lingkungan organisasi. Selain daripada itu organisasi perlu juga melakukan pengawasan dan pelaporan capaian mutu layanan yang telah diberikan kepada kustomer organisasi'),
(50, 11, 2, 'Tidak formal', 'Sebaiknya organisasi melakukan pemodelan / pembandingan yang formal mengenai kinerja pengelolaan TI yang baik, nilai investasi TI, dan lain sebagainya. Dan baiknya lagi, pemodelan dilakukan berdasarkan "best practice" di organisasi lainnya dengan pendekatan parameter-parameter tertentu. '),
(51, 12, 2, 'Dilakukan hanya jika terjadi masalah', 'Organisasi perlu melakukan kegiatan penilaian dan evaluasi secara rutin dalam periode tertentu, untuk kemudian ditindaklanjuti hasil dari penilaian dan evaluasi tersebut'),
(52, 13, 2, 'Dilakukan secara minim', 'Organisasi baiknya menerapkan dan menerbitkan kebijakan untuk melakukan perbaikan yang berkesinambungan dari sejak awal seiring dengan berjalannya program kerja TI'),
(53, 14, 2, 'Dasar perencanaan ada pada tingkatan fungsional', 'Organisasi sebaiknya mengeluarkan kebijakan tentang perencanaan strategi TI dan kebijakan tentang perencanaan strategi bisnis organisasi'),
(54, 15, 2, 'Perencanaan hanya secara taktis', 'Organisasi sebaiknya mengeluarkan kebijakan tentang perencanaan strategi TI dan kebijakan tentang perencanaan strategi bisnis organisasi'),
(55, 16, 2, 'Sentralisasi/des entralisasi, hanya ada pada beberapa lokasi; CIO melaporkan pada CFO', 'Sebaiknya CIO bertanggung jawab langsung ke CEO dengan tupoksi strategis yang melaksanakan layanan dan pengelolaan SI/TI  di organisasi. Selanjutnya otoritas pengelolaan aplikasi diserahkan ke masing-masing unit fungsional yang bersangkutan dengan tetap mengacu pada standarisasi yang telah ada'),
(56, 17, 2, 'Digunakan sebagai pusat biaya pada organisasi fungsional', 'Sebaiknya organisasi memiliki unit/divisi yang memiliki fungsi sebagai pusat pembiayaan. Di samping itu penting bagi organisasi untuk melakukan beberapa investasi, baik itu investasi bisnis ataupun investasi TI'),
(57, 18, 2, 'Berfokus pada operasional dan pemeliharaan', 'Sebaiknya organisasi membentuk komite pengarah (SC) dari pihak bisnis dan pengelola TI. Tugas dari SC yang dibentuk adalah untuk memberikan rekomendasi mengenai rencana dan inisiatif bisnis dan TI jangka panjang. Rekomendasi ini kemudian diberikan kepada unit-unit fungsional bisnis. Selain daripada itu, Pelaksanaan perumusan rencana strategis SI/TI yang mencakup nilai investasi SI/TI tetap dilakukan oleh CIO'),
(58, 19, 2, 'Komunikasi diatur secara berkala', 'Sebaiknya organisasi membentuk komite pengarah untuk memastikan integrasi dam manfaat program yang telah ada berjalan dengan baik. Selain daripada itu komite pengarah ini memiliki tugas utama untuk memberikan keputusan strategis SI/TI yang telah direncanakan'),
(59, 20, 2, 'Sesekali dilakukan secara responsif', 'Dalam proses penentuan prioritas proyek TI, baiknya organisasi melakukannya dengan lebih responsif. Artinya sering dilakukan secara responsif akan lebih baik daripada dilakukan hanya sesekali'),
(60, 21, 2, 'TI mulai dilihat sebagai aset', 'Organisasi harus melihat fungsi TI sebagai sebuah aset penting yang perlu dimiliki, dimana aset ini digunakan sebagai penggerak dari proses bisnis organisasi'),
(61, 22, 2, 'Merupakan pendukung proses bisnis', 'Organisasi perlu melibatkan pengelola TI dalam melakukan perencanaan yang terfokus pada rencana TI. Proses perencanaan juga beberapa kali dilakukan antarorganisasi'),
(62, 23, 2, 'TI menanggung sebagian besar resiko dengan sedikit penghargaan', 'Pengelola TI dan pihak bisnis sebaiknya membuat perencenaan SI/TI di awal sebelum program akan dimulai, ini dilakukan untuk memastikan efektivitas waktu dalam pengerjaan proyek serta risiko yang akan didapat. Selain daripada itu, organisasi perlu untuk mengawasi program SI/TI yang sedang berjalan di bawah komite pengarah'),
(63, 24, 2, 'Berdasarkan standar yang telah ditentukan', 'Sebaiknya organisasi dapat menaati standar yang telah ditentukan sebelumnya yang membahas tentang manajemen komunikasi untuk melakukan pengelolaan TI '),
(64, 25, 2, 'Hanya sebatas pada transaksi yang penting', 'Perlunya membangun kepercayaan agar organisasi dapat memunculkan nilai dari penyediaan layanan yang telah dilakukan'),
(65, 26, 2, 'Terbatas pada bagian fungsional di organisasi', 'Kumpulan dukungan senior harus mulai ditetapkan, hanya pada bagian fungsional di organisasi dan dilakukan secara tidak terbatas (bentuk sponsornya)'),
(66, 27, 2, 'TI berperan dalam proses transaksi bisnis', 'Bagian manajemen tingkat atas sebaiknya mendorong pola pikir di lingkungan organisasi, bahwa TI dapat menyokong strategi organisasi yang sudah ada dan turut memperbaiki proses bisnis organisasi. Selain daripada itu, bagian manajemen tingkat atas juga perlu untuk melakukan rapat secara berkala dalam merumuskan SI/TI sebagai solusi dari permasalahan bisnis di lingkungan organisasi. Kegiatan tersebut juga dilaksanakan dengan bantuan komite pengarah TI'),
(67, 28, 2, 'Telah terefinisi dan diterapkan pada unit fungsional tertentu', 'Sebaiknya organisasi membuat kebijakan standar implementasi yang berlaku di seluruh unit di lingkungan organisasi. Di samping itu pengelola TI perlu untuk melakukan sosialisasi tentang penerapan SI/TI di lingkungan organisasi.'),
(68, 29, 2, 'Terintegrasi pada unit fungsional tertentu', 'Sebaiknya organisasi mulai melakukan integrasi arsitektur TI pada seluruh proses penting'),
(69, 30, 2, 'Terintegrasi pada unit fungsional tertentu', 'Organisasi harus mulai membangun arsitektur yang bersifat enterprise'),
(70, 31, 2, 'Terintegrasi pada unit fungsional tertentu', 'Organisasi harus mulai membangun arsitektur yang bersifat enterprise dengan mitra bisnis yang penting'),
(71, 32, 2, 'Masih terbatas', 'Transparansi dan fleksibilitas arsitektur TI yang masih terbatas, maka organisasi harus lebih fokus dalam proses komunikasi antar unit agar tidak terjadi kesalahpahaman'),
(72, 33, 2, 'Tergantung pada organisasi fungsional', 'Dalam hal ini sebaiknya pimpinan organisasi memberikan dukungan dengan cara menciptakan lingkungan yang dapat mengakomodasi inovasi dan kemandirian karyawan di lingkungan organisasi'),
(73, 34, 2, 'Berada pada bagian fungsional organisasi', 'Pusat kekuatan TI sebaiknya tidak hanya berada pada bagian fungsional saja, organisasi harus mulai menempat seluruh unit bagian menjadi pusat kekuatan TI yang dimilikinya'),
(74, 35, 2, 'Tergantung pada bagian fungsional organisasi', 'Karyawan di seluruh unit organisasi harus menyadari dan mengakui bahwa mereka butuh untuk mempersiapkan diri dalam menghadapi perubahan, baik itu budaya kerja atau sistem kerja di lingkungan organisasi'),
(75, 36, 2, 'Dilakukan secara minim', 'Dilakukannya perumusan mekanisme program lintas karier yang berfungsi untuk meningkatkan pemahaman pengelola TI terhadap peran rencana strategis TI dan terhadap proses bisnis organisasi. Selain daripada itu, penting bagi pimpinan untuk memotivasi dan melakukan sosialiasi mengenai pentingnya manfaat pemahaman proses bisnis organisasi bagi pengelola TI.'),
(76, 37, 2, 'Dilakukan secara minim', 'Dilakukannya perumusan mekanisme program lintas karier yang berfungsi untuk meningkatkan pemahaman pengelola TI terhadap peran rencana strategis TI dan terhadap proses bisnis organisasi. Selain daripada itu, penting bagi pimpinan untuk memotivasi dan melakukan sosialiasi mengenai pentingnya manfaat pemahaman proses bisnis organisasi bagi pengelola TI.'),
(77, 38, 2, 'Sebatas pada transaksi yang penting', 'Perlunya pengelola TI untuk melakukan sosialisasi secara berkala kepada stafnya mengenai pentingnya memahami proses bisnis organisasi sebagai faktor pendukung kesuksesan dari inisiatif TI yang sudah ada'),
(78, 39, 2, 'Berdasarkan kesepakatan (konsensus)', 'Organisasi sebaiknya menerapkan sasaran yang jelas untuk setiap kegiatan inisiatif dari pengelola TI dan pihak bisnis. Di samping itu, penting bagi organisasi untuk menerapkan proses manajemen proyek di lingkungan organisasinya'),
(79, 1, 3, 'Manajer senior dan manajer tingkat menengah', 'Dalam hal ini sebaiknya manajer senior dan manajer tingkat menengar telah menyadari akan pentingnya memahami pentingnya manajemen pengelolaan TI terhadap bisnis organisasi'),
(80, 2, 3, 'Organisasi mulai menyadari pentingnya pemahaman IT oleh bisnis', 'Sebaiknya pihak bisnis (manajerial) harus dapat menyadari potensi yang dimiliki oleh pengelola TI dalam proses bisnis organisasi. Ini dapat dilakukan dengan dilakukannya peningkatan pemahaman pihak bisnis terhadap TI'),
(81, 3, 3, 'Reguler dan jelas', 'Pastikan adanya ikatan antardivisi, dimana setiap divisi bisa memahami fungsi dan tugas antardivisi yang ada di lingkungan organisasi'),
(82, 4, 3, 'Terjadi secara formal dan dua arah', 'Sebaiknya organisasi dapat menghilangkan proses komunikasi yang menggunakan command and control. Artinya biarkan proses komunikasi antardivisi berjalan secara santai'),
(83, 5, 3, 'Terstruktur hanya pada proses yang penting', 'Sebaiknya pembagian pengetahuan dilakukan secara menyeluruh di lingkungan organisasi, agar pengetahuan baik itu bisnis ataupun TI dapat selaras di seluruh lingkungan organisasi'),
(84, 6, 3, 'Dilakukan secara formal, melalui pertemuan biasa', 'Peran dari staf penghubung (liaison staff) harus merubah keleluasan dan efektifitas komunikasi, membuat komunikasi yang rutin dilakukan pada setiap divisi sehingga divisi di lingkungan organisasi dapat terhubung (bond) satu sama lain'),
(85, 7, 3, 'Masih menggunakan pengukuran finansial yang tradisional', 'Sebaiknya ukuran standar TI dapat ditingkat dengan cara mulai menggunakan proses umpan balik formal (evaluasi secara formal), untuk meninjau seberapa baik hasil dari implementasi metode tradisional'),
(86, 8, 3, 'Masih menggunakan pengukuran finansial yang tradisional', 'Sebaiknya pihak bisnis mengubah pola instrumen pengukuran kinerjanya menjadi pola tradisional. Ketika pola ini diterapkan, mulailah untuk melakukan proses umpan balik (evaluasi) secara formal'),
(87, 9, 3, 'Pengukuran bisnis dan TI mulai dihubungkan', 'Organisasi dapat menghubungkan atau melakukan perbandingan hasil keselarasan antara instrumen pengukuran kinerja bisnis dengan instrumen pengukuran kinerja TI, sehingga hasilnya dapat memperlihatkan apakah ukuran bisnis dan TI telah seimbang atau tidak'),
(88, 10, 3, 'Muncul di seluruh organisasi', 'Dalam pembuatan persetujuan tingkat layanan yang diberikan, organisasi harus dapat menerapkannya pada seluruh tingkatan di lingkungan organisasi dengan bentuk persetujuan yang sama, tidak hanya diterapkan perdivisi dengan bentuk persetujuan yang berbeda antardivisinya'),
(89, 11, 3, 'Mulai ada', 'Pemodelan yang saat ini mulai dilakukan, sebaiknya dilakukan secara rutin. Pemodelan bisa dilakukan dalam cakupan bagian fungsional di lingkungan organisasi'),
(90, 12, 3, 'Mulai ada dan dilakukan secara formal', 'Sebaiknya proses evaluasi yang bersifat formal dilakukan secara rutin, sehingga dapat membuat perubahan berdasarkan hasil evaluasi yang telah dilakukan secara rutin'),
(91, 13, 3, 'Mulai ada', 'Setelah organisasi mulai melakukan proses perbaikan , sebaiknya mulai lakukan perbaikan yang bersifat formal pada tingkatan bagian fungsional secara rutin (berkelanjutan)'),
(92, 14, 3, 'Perencanaan hanya terjadi diantara beberapa unit di dalam organisasi', 'Dalam melakukan perencanaan strategis, sebaiknya organisasi melibatkan seluruh unit yang ada di organisasi untuk sama-sama menyusun rencana strategis'),
(93, 15, 3, 'Perencanaan terfokus hanya antara beberapa unit di dalam organisasi', 'Dalam melakukan perencanaan strategis TI, sebaiknya organisasi melibatkan seluruh unit yang ada untuk sama-sama menyusun rencana strategis. Artinya tidak hanya pengelola TI yang menyusun rencana TI'),
(94, 16, 3, 'Sentralisasi/Dese ntralisasi, mulai federasi, CIO melaporkan pada COO', 'Sebaiknya ubah sistem pelaporan yang sebelumnya hanya sebatas laporan kerja divisi menjadi laporan kerja unit yang lebih besar'),
(95, 17, 3, 'Dilakukan secara terpusat pada pusat pembiayaan, dam terdapat beberapa investasi', 'Sebaiknya ubah pengendalian anggaran kepada arah investasi. Artinya perlu adanya pusat kendali investasi yang terpisah dari pusat pembiayaan yang sebelumnya diadakan'),
(96, 18, 3, 'Dilakukan secara tradisional, dan mendukung proses bisnis', 'Sebaiknya mulai meninggalkan pengelolaan investasi TI secara tradisional. Proses pengelolaan sebaiknya dapat dilakukan untuk mengefektifkan biaya pengeluaran organisasi, dengan menjadikannya sebagai faktor penggerak (kemudi) proses bisnis yang ada di organisasi'),
(97, 19, 3, 'Komunikasi jelas dan reguler', 'Bentuk komite pengendali (SC) yang bersifat formal dan tugaskan SC sebaik mungkin'),
(98, 20, 3, 'Sebagian besar dilakukan secara responsif', 'Lakukan perubahan dalam menentukan prioritas dengan berdasarkan nilai tambah (value add) serta lebih responsif terhadap konidisi permasalahan yang ada'),
(99, 21, 3, 'TI dilihat sebagai aset', 'Sebaiknya ubah cara pandang pihak bisnis terhadap peran pengelola TI, bahwa TI merupakan bagian dari penggerak dasar proses bisnis tidak hanya sebagai aset pendukung organisasi saja'),
(100, 22, 3, 'TI menjadi faktor pendukung proses bisnis', 'Sebaiknya berikan keleluasaan pengelola TI agar mereka dapat menjalankan fungsinya sebagai faktor pendukung maupun faktor kendali proses bisnis di lingkungan organisasi'),
(101, 23, 3, 'Bertoleransi terhadap resiko, dan adanya penghargaan yang diberikan kepada TI', 'Pengelola TI dan pihak bisnis sebaiknya sama-sama menerima pembagian risiko dalam menjalankan proses bisnis dari perencanaan yang sudah ditetapkan, serta sama-sama menerima pembagian penghargaan '),
(102, 24, 3, 'Standar yang ada telah dipatuhi oleh staf TI', 'Organisasi sebaiknya membuat standar mengenai bagaimana pihak bisnis dan pengelola TI berkomunikasi atau saling berhubungan'),
(103, 25, 3, 'Kepercayaan sebagai penyedia layanan mulai muncul', 'Sebaiknya terdapat tingkat kepercayaan yang baik antarunit dalam organisasi agar dapat memunculkan nilai dari penyediaan layanan yang telah dilakukan'),
(104, 26, 3, 'Ada pada bagian fungsional organisasi', 'Lakukan peningkatan kualitas sponsor, serta keterlibatannya di lingkungan organisasi. Sebaiknya dukungan sponsor bisa diperluas ke tingkat atas manajemen (CEO)'),
(105, 27, 3, 'Ruang lingkup diperluas  (seperti menjadi pendukung untuk proses bisnis)', 'Organisasi perlu melakukan penataan ulang mengenai ruang lingkup pengendalian proses bisnis, dan menjadikan TI sebagai kendali utama dalam proses bisnis organisasi'),
(106, 28, 3, 'Memunculkan standar dari organisasi', 'Dari standar yang saat ini telah ada, organisasi baiknya dapat mengubah standarisasi yang awalnya bersifat fungsional menjadi besifat menyeluruh'),
(107, 29, 3, 'Terintegrasi pada proses yang penting', 'Sebaiknya arsitektur TI telah terintegrasi di seluruh proses bisnis yang ada di organisasi, tidak hanya untuk proses yang penting saja'),
(108, 30, 3, 'Telah memunculkan arsitektur organisasi', 'Organisasi harus menetapkan arsitektur standar yang bersifat enterprise, untuk kemudian diimplementasikan di lingkungannya'),
(109, 31, 3, 'Telah dimunculkan dengan rekanan yang penting', 'Organisasi harus menetapkan arsitektur standar yang bersifat enterprise, untuk kemudian diimplementasikan di lingkungannya dan diimplementasikan oleh mitra/rekan bisnis yang penting'),
(110, 32, 3, 'Fokus pada proses berkomunikasi', 'Sebaiknya organisasi membuat manajemen teknologi yang efektif, sehingga terjadi transparansi di seluruh lingkungan organisasi'),
(111, 33, 3, 'Toleransi terhadap risiko', 'Dalam hal ini inovasi dan sikap enterpreneur tidak terbatas. Telah adanya toleransi terhadap risiko, membuat inovasi dan sikap enterpreneur harus tumbuh di seluruh organisasi, serta rekanan bisnis'),
(112, 34, 3, 'Pimpinan bisnis dan unit fungsional dengan dukungan dari unit TI', 'Sebaiknya pusat kekuatan TI tidak hanya terbatas pada pimpinan bisnis dan unit fungsional organisasi saja. Namun harus mulai menyeluruh'),
(113, 35, 3, 'Lingkungan organisasi telah menyadari perlunya perubahan', 'Organisasi perlu untuk melakukan proses peningkatan pemahaman di seluruh lingkungan organisasi, sehingga setiap karyawan pada setiap divisi memiliki kesiapan yang baik menuju perubahan'),
(114, 36, 3, 'Tergantung pada bagian fungsional organisasi', 'Sebaiknya organisasi mengadakan program pelatihan antar di visi di seluruh bagian organisasi, ini dilakukan untuk mempersiapkan pergantian karir (career crossover)'),
(115, 37, 3, 'Tergantung pada bagian fungsional organisasi', 'Sebaiknya organisasi membuat program pelatihan apabila dirasa perlu dilakukan'),
(116, 38, 3, 'Penilaian sebagai penyedia mulai muncul', 'Organisasi perlu mengubah bentuk layanannya terhadap lingkungan sosial berdasarkan kepada nilai layanannya (value based)'),
(117, 39, 3, 'Berdasarkan pada hasil yang dicapai', 'Sebaiknya organisasi melakukan control wewenang antardivisi fungsional secara rutin dan bersifat formal'),
(118, 1, 4, 'Telah memahami secara utuh', 'Organisasi baiknya dapat memberikan pemahaman tantang fungsi TI secara baik, sehingga bisa mengotimalkan keselarasan TI dengan proses bisnis'),
(119, 2, 4, 'Bisnis telah sadar tentang potensi TI yang diimplementasikan', 'Organisasi baiknya dapat memberikan pemahaman tantang fungsi TI secara baik, sehingga bisa mengotimalkan keselarasan TI dengan proses bisnis'),
(120, 3, 4, 'Dilakukan secara bersatu, dan terikat', 'Dalam mempelajari organisasi, sebaiknya dilakukan dengan semi terstruktur dengan metode yang baik'),
(121, 4, 4, 'Tidak formal', 'Sebaiknya organisasi melakukan pelatihan khusus mengenai cara berkomunikasi  tertentu sehingga setiap karryawan dengan sendirinya dapat menyadari budaya kerja setiap divisi'),
(122, 5, 4, 'Terstruktur hanya pada proses yang penting', 'Sebaiknya proses penyelarasan pengetahuan (knowledge sharing) organisasi tidak hanya dilakukan menyeluruh di lingkungan internal organisasi, tetapi lingkungan eksternal organisasi juga perlu untuk melakukan knowledge sharing'),
(123, 6, 4, 'Kuat dan efektif diterapkan di seluruh tingkatan', 'Sebaiknya proses penguatan semangat organisasi tidak hanya dilakukan menyeluruh di lingkungan internal organisasi, tetapi lingkungan eksternal organisasi juga perlu dilakukan'),
(124, 7, 4, 'Biaya yang efektif', 'Organisasi perlu mengubah pola instrumen pengkuran manfaat TI secara formal, serta mulai mengukur aspek teknis dan memikirkan tingkat efisiensi biaya yang dikeluarkan'),
(125, 8, 4, 'Beradasarkan pada kustomer', 'Organisasi perlu mengubah pola instrumen  pengukuran kinerja menjadi customer based'),
(126, 9, 4, 'Pengukuran bisnis dan TI telah dihubungkan dalam lingkungan organisasi', 'Selain daripada melakukan pengukuran standar TI dan bisnis, organisasi juga perlu melakukan pengukuran standar kemitraan'),
(127, 10, 4, 'Telah ada di seluruh organisasi', 'Organisasi harus memiliki persetujuan tingkat layanan yang berorientasi secara teknis dan mrmiliki otirntasi berdasarkan hubungan kerjasama (relationship based)'),
(128, 11, 4, 'Dilakukan secara rutin', 'Organisasi perlu melakukan pemodelan secara rutin dalam cakupan organisasi yang menyeluruh'),
(129, 12, 4, 'Dilakukan secara formal, melalui pertemuan biasa', 'Organisasi perlu melakukan evaluasi dan revisi secara rutin dalam cakupan organisasi yang menyeluruh'),
(130, 13, 4, 'Cukup sering dilakukan', 'Organisasi sebaiknya melaksanakan perbaikan secara rutin di tingkat fungsional. Di samping itu organisasi juga perlu melakukan pengukuran terhadap tingkat efektivitasnya dalam melaksanakan perbaikan secara rutin'),
(131, 14, 4, 'Dikelola sampai ke inter (luar) organisasi', 'Melakukan perubahan perencanaan strategis menjadi terhubung ke bagian fungsional organisasi, maupun dengan bagian luar organisasi (sponsor dan mitra bisnis)'),
(132, 15, 4, 'Dikelola sampai ke inter (luar) organisasi', 'Proses perencanaan strategi TI harus diintegrasikan pada seluruh bagian di lingkungan organisasi serta bagian liar (sponsor dan mitra bisnis)'),
(133, 16, 4, 'Mulai fereasi, artinya CIO melakukan pelaporan kepada COO atau CEO', 'Sebaiknya pola federasi tetap dilanjutkan, artinya pengelola TI dapat melapor langsung ke pimpinan organisasi'),
(134, 17, 4, 'Adanya pusat investasi', 'Sebaiknya organisasi melakukan perubahan kendali anggaran kepada arah investasi (investment driver) dan melakukan kontrol terhadap keunggulan profit dari setiap investasi oleh divisi yang menangani pusat keuntungan (profit center)'),
(135, 18, 4, 'Adanya penggunaan biaya yang efektif', 'Organisasi harus dapat mengarahkan manajemen investasi kepada sesuatu yang bernilai (value add) serta perlu adanya rekan bisnis yang dilibatkan dalam proses manajemen investasi'),
(136, 19, 4, 'Dilakukan secara formal, dengan pengarah yang efektif', 'Organisasi perlu memilih komite pengarah dari daftar mitra bisnisnya'),
(137, 20, 4, 'Sebagian besar bersifat responsif', 'Lakukan perubahan dalam menentukan prioritas dengan berdasarkan nilai tambah (value add) serta lebih responsif terhadap kondisi permasalahan yang ada'),
(138, 21, 4, 'TI dilihat sebagai faktor pendukung / kemudi proses bisnis', 'Setiap mitra bisnis ataupun mitra TI harus dapat memberikan nilai kepada proses bisnis organisasi'),
(139, 22, 4, 'Berperan sebagai faktor pendukung / kemudi dalam strategi bisnis', 'Pastikan manajer TI berperan sebagai kemudi dari pengelolaan implementasi TI yang bersikap ko-adaptif terhadap pihak bisnis'),
(140, 23, 4, 'Adanya penerimaan risiki dan berbagi penghargaan', 'Sebaiknya dilakukan pembagian risiko dan penghargaan secara adil pada pihak manajerial ataupun pengelola TI'),
(141, 24, 4, 'Standar telah dipatuhi', 'Sebaiknya terus lakukan perbaikan yang berkelanjutan terhadap standar yang telah ditentukan dan dipatuhi sebelumnya'),
(142, 25, 4, 'Kepercayaan sebagai penyedia sangat bernilai', 'Kepercayaan terhadap mitra bisnis harus dijadikan nilai tambah yang dimiliki organisasi, sehingga penting bagi organisasi untuk menjaga tingkat kepercayaan terhadap mitra bisnis'),
(143, 26, 4, 'Ada pada tingkatan bagian atas manajemen', 'Sebaiknya organisasi mulai mencari atau berkomunikasi dengan penyedia sponsor untuk dapat bekerja sama dengan bagian pada tingkat CEO'),
(144, 27, 4, 'Ruang lingkup TI didefinisikan kembali (sebagai kemudi bisnis proses)', 'Sebaiknya organisai mulai memperluas ruang lingkup dari TI menjadi ruang lingkup yang berkaitan dengan bagian eksternal organisasi, serta jadikan strategi bisnis sebagai faktor pendukung atau kemudi dari proses perluasan ruang lingkup TI'),
(145, 28, 4, 'Standar enterprise', 'Organisasi perlu menetapkan standar untuk antarorganisasi, tidak hanya untuk organisasinya sendiri'),
(146, 29, 4, 'Telah terintegrasi', 'Selain telah terintegrasi di bagian internal organisasi, sebaiknya ruang lingkup TI berkembang dengan mitra atau rekanan bisnis organisasi'),
(147, 30, 4, 'Arsitektur standar enterprise', 'Organisasi harus mulai membangun arsitektur yang bersifat enterprise'),
(148, 31, 4, 'Dilakukan dengan partner yang penting', 'Organisasi harus mulai membangun arsitektur yang bersifat enterprise dengan seluruh mitra/rekanan bisnis yang dimiliki'),
(149, 32, 4, 'Dimunculkan terhadap seluruh organisasi', 'Transparansi dan fleksibilitas arsitektur perlu diterapkan di seluruh infrastruktur yang dimiliki oleh organisasi'),
(150, 33, 4, 'Terjadi di lingkungan enterprise, rekanan bisnis dan manajer TI', 'Inovasi dan sikap enterpreneur di seluruh internal dan eksternal organisasi  bersifat normal dan tidak berlebihan'),
(151, 34, 4, 'Pusat kekuatan berada di seluruh lingkungan organisasi', 'Pusat kekuatan TI sebaiknya berada di seluruh bagian eksekutif organisasi, termasuk CIO dan mitra atau rekanan bisnis'),
(152, 35, 4, 'Sangat sadar tentang perlu adanya perubahan', 'Sebaiknya karyawan organisasi melakukan persiapan dalam menghadapi perubahan dengan fokus'),
(153, 36, 4, 'Dilakukan di seluruh bagian fungsional organisasi', 'Sebaiknya organisasi mengadakan program bertukar pekerjaan antar divisi di seluruh bagian organisasi, ini dilakukan untuk mempersiapkan pergantian karir (career crossover)'),
(154, 37, 4, 'Hanya terjadi pada bagian fungsional organisasi', 'Sebaiknya organisasi mengadakan program pelatihan antar divisi di seluruh bagian organisasi, ini dilakukan untuk mempersiapkan pergantian karir (career crossover)'),
(155, 38, 4, 'Bernilai dari penyedia layanan', 'Sebaiknya karyawan organisasi dapat bersosialisasi dengan baik terhadap mitra/rekanan bisnis, ini karena rekanan bisnis memiliki nilai tambah bagi organisasi'),
(156, 39, 4, 'Berdasarkan keuntungan yang diperoleh oleh organisasi', 'Organisasi perlu mengubah orientasi gaya manajemen menjadi Relationship Based, hal ini berarti hubungan kemitraan menjadi nilai tambah dalam gaya manajemen yang dilakukan'),
(157, 1, 5, 'Manajerial telah memahami fungsi TI terhadap bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(158, 2, 5, 'Manajerial telah memahami fungsi TI terhadap bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(159, 3, 5, 'Dilakukan secara kuat dan terstruktur', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(160, 4, 5, 'Dilakukan secara tidak formal', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(161, 5, 5, 'Dilakukan hingga lintas organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(162, 6, 5, 'Dilakukan hingga lintas organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(163, 7, 5, 'Telah diperluas hingga mitra bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(164, 8, 5, 'Telah diperluas hingga mitra bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(165, 9, 5, 'Ukuran manajerial, mitra bisnis dan pengukuran TI telah seimbang', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(166, 10, 5, 'Telah diperluas hingga mitra bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(167, 11, 5, 'Rutin dilakukan dengan rekanan bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(168, 12, 5, 'Rutin dilakukan', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(169, 13, 5, 'Rutin dilakukan', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(170, 14, 5, 'Terintegrasi secara menyeluruh sampai bagian luar dari organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(171, 15, 5, 'Terintegrasi secara menyeluruh sampai bagian luar dari organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(172, 16, 5, 'Dilakukan secara federasi, CIO melaporkan kepada CEO', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(173, 17, 5, 'Adanya pusat investasi dan pusat keuntungan (profit)', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(174, 18, 5, 'Nilai bisnis (investasi) diperluas hingga mitra bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(175, 19, 5, 'Dilakukan dengan mitra organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(176, 20, 5, 'Nilai tambah bagi mitra bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(177, 21, 5, 'Persepsi TI telah bisa beradaptasi dengan nilai bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(178, 22, 5, 'Peran TI telah sesuai dengan bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(179, 23, 5, 'Adanya pembagian risiko dan penghargaan', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(180, 24, 5, 'Manajemen program ditingkatkan secara terus menerus', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(181, 25, 5, 'Kemitraan memiliki nilai tambah', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(182, 26, 5, 'Ada pada tingkat CEO', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(183, 27, 5, 'Peran berada pada lingkup eksternal, sebagai pendukung dari strategi bisnis', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(184, 28, 5, 'Standar antarperusahaan dengan mitra organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(185, 29, 5, 'Terintegrasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(186, 30, 5, 'Standar arsitektur enterprise', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(187, 31, 5, 'Dilakukan dengan seluruh rekanan organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.');
INSERT INTO `t_strategi` (`id`, `idin`, `level`, `kondisi`, `strategi`) VALUES
(188, 32, 5, 'Dilakukan terhadap seluruh infrastruktur yang dimiliki organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(189, 33, 5, 'Normal dimiliki oleh staf di lingkungan organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(190, 34, 5, 'Berada di seluruh eksekutif, termasuk CIO dan mitra organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(191, 35, 5, 'Tingkat kesiapan berubah tinggi, dan bersifat fokus', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(192, 36, 5, 'Dilakukan di seluruh bagian pada organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(193, 37, 5, 'Dilakukan di seluruh bagian pada organisasi', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(194, 38, 5, 'Kemitraan memiliki nilai tambah', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.'),
(195, 39, 5, 'Berdasarkan kerjasama yang telah ada', 'IT and other business functions (marketing, finance, R&D, etc.)  adapt their strategies together, using fully de- veloped processes that include external part- ners and customers. Organizations should seek to attain, and sustain, the fifth and highest level of alignment.');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
`id` int(11) NOT NULL,
  `date_access` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipe` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `a1` int(1) NOT NULL,
  `a2` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `date_access`, `username`, `jabatan`, `email`, `tipe`, `kategori`, `a1`, `a2`) VALUES
(26, '2018-02-06', 'user3', 'Departemen Teknologi', '', 0, '1', 1, 0),
(27, '2018-02-07', 'risna', 'Departemen RD', '', 0, '2', 1, 0),
(28, '2018-02-08', 'ris', 'Departemen Teknologi', '', 0, '2', 1, 0),
(29, '2018-02-08', 'user', 'Departemen RD', '', 0, '2', 1, 0),
(30, '2018-02-10', 'Elsa', 'Bagian Akademik dan ', '', 0, '1', 1, 0),
(31, '2018-02-11', 'Cinderella', 'Institut Teknologi B', '', 0, NULL, 1, 0),
(32, '2018-02-12', 'Marsha', 'Bagian Sistem Inform', '', 0, NULL, 1, 0),
(33, '2018-02-12', 'Caplin', 'Bagian Jaringan Komputer', '', 0, 'Universitas Komputer Indonesia', 1, 0),
(34, '2018-02-14', 'Riss', 'Bagian Sistem Informasi', '', 0, 'Universitas Komputer Indonesia', 1, 0),
(35, '2018-02-15', 'Ken', 'Bagian Jaringan Komputer', '', 0, 'Universitas Airlangga', 1, 0),
(36, '2018-02-15', 'Bruno', 'Bagian Akademik dan Statistik', '', 0, 'Sekolah Tinggi Bahasa Asing Yapari', 1, 0),
(37, '0000-00-00', 'howwee', 'Bagian Jaringan Komputer', 'faisalsyfl@gmail.com', 1, 'Universitas Hasanudin', 1, 0),
(38, '0000-00-00', 'wewewe', 'Bagian Kemahasiswaan dan Humas', 'faisal.faisal.anwar@gmail.com', 2, 'Universitas Komputer Indonesia', 1, 0),
(39, '2018-02-17', 'Ayat', 'Bagian Perencanaan dan Kerjasama', 'asuh68@gmail.com', 2, 'Universitas Pasundan', 1, 0),
(40, '2018-02-17', 'rini', 'Bagian Perencanaan dan Kerjasama', 'rini@gmail.com', 1, 'Universitas Padjadjaran', 1, 0),
(41, '2018-02-17', 'faisal hehe', 'Bagian Research and Development TI', 'faisal.faisal.anwar@gmail.com', 1, 'Universitas Pendidikan Indonesia', 1, 0),
(42, '2018-02-17', 'fahmi', 'Bagian Research and Development TI', 'fahmi@gmal.xc', 1, 'Universitas Hasanudin', 1, 0),
(43, '2018-02-17', 'kont', 'Bagian Sistem Informasi', 'SAd@gmail.com', 1, 'Universitas Hasanudin', 1, 0),
(44, '2018-02-17', 'hope', 'Bagian Research and Development TI', 'hope@gmail.com', 2, 'Universitas Telkom', 1, 0),
(45, '2018-02-17', 'slmaet', 'Bagian Research and Development TI', 'slamet@gmail.com', 1, 'Universitas Diponegoro', 1, 0),
(46, '2018-02-17', 'halahknthl', 'Bagian Jaringan Komputer', 'halahkntl@gmail.com', 1, 'Institut Teknologi Sepuluh November', 1, 0),
(47, '2018-02-17', 'eagan', 'Bagian Jaringan Komputer', 'asad@gmail.com', 1, 'Universitas Diponegoro', 1, 0),
(48, '2018-02-17', 'ayat.suhaya@yahoo.co.id', 'Bagian Jaringan Komputer', 'faisalsyfl@gmail.com', 1, 'Universitas Hasanudin', 1, 0),
(49, '2018-02-18', 'Rini swasta', 'Bagian Research and Development TI', 'faisalsyfl@gmail.com', 2, 'Universitas Komputer Indonesia', 1, 0),
(50, '2018-02-20', 'Risna', 'Bagian Research and Development TI', 'risnadesmayanti@gmail.com', 2, 'Universitas Komputer Indonesia', 1, 0),
(51, '2018-02-20', 'Aka', 'Bagian Kemahasiswaan dan Humas', 'ka@gmail.com', 1, 'Universitas Pendidikan Indonesia', 1, 0),
(52, '2018-02-20', 'Fikra', 'Bagian Kemahasiswaan dan Humas', 'fikar@gmail.com', 2, 'Universitas Komputer Indonesia', 1, 0),
(53, '2018-02-23', 'risnaris', 'Bagian Kemahasiswaan dan Humas', 'risnadesmayanti@gmail.com', 1, 'Universitas Pendidikan Indonesia', 1, 1),
(54, '2018-02-23', 'risnaddes', 'Bagian Research and Development TI', 'fikar@gmail.com', 1, 'Universitas Pendidikan Indonesia', 1, 1);

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
-- Indexes for table `t_rating`
--
ALTER TABLE `t_rating`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_strategi`
--
ALTER TABLE `t_strategi`
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
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `t_rating`
--
ALTER TABLE `t_rating`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
