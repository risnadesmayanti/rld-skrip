-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Feb 2018 pada 09.13
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skripsi1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_factor_luftman`
--

CREATE TABLE `t_factor_luftman` (
  `id` int(4) NOT NULL,
  `href` varchar(20) NOT NULL,
  `factor` varchar(20) NOT NULL,
  `descript` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_factor_luftman`
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
-- Struktur dari tabel `t_indicator_luftman`
--

CREATE TABLE `t_indicator_luftman` (
  `id` int(11) NOT NULL,
  `idf` int(11) NOT NULL,
  `indicator` text NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_indicator_luftman`
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
-- Struktur dari tabel `t_jabatan`
--

CREATE TABLE `t_jabatan` (
  `id` int(3) NOT NULL,
  `divisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_likert_luftman`
--

CREATE TABLE `t_likert_luftman` (
  `id` int(4) NOT NULL,
  `idin` int(3) NOT NULL,
  `val` int(3) NOT NULL,
  `descript` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_likert_luftman`
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
-- Struktur dari tabel `t_measurement`
--

CREATE TABLE `t_measurement` (
  `id` int(5) NOT NULL,
  `id_user` int(3) NOT NULL,
  `idin` int(2) NOT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_measurement`
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
(202, 45, 39, 2.6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_rating`
--

CREATE TABLE `t_rating` (
  `id` int(11) NOT NULL,
  `antarmuka` int(11) NOT NULL,
  `pemahaman` int(11) NOT NULL,
  `easy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_rating`
--

INSERT INTO `t_rating` (`id`, `antarmuka`, `pemahaman`, `easy`) VALUES
(1, 5, 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `date_access` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipe` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `a1` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id`, `date_access`, `username`, `jabatan`, `email`, `tipe`, `kategori`, `a1`) VALUES
(26, '2018-02-06', 'user3', 'Departemen Teknologi', '', 0, '1', 1),
(27, '2018-02-07', 'risna', 'Departemen RD', '', 0, '2', 1),
(28, '2018-02-08', 'ris', 'Departemen Teknologi', '', 0, '2', 1),
(29, '2018-02-08', 'user', 'Departemen RD', '', 0, '2', 1),
(30, '2018-02-10', 'Elsa', 'Bagian Akademik dan ', '', 0, '1', 1),
(31, '2018-02-11', 'Cinderella', 'Institut Teknologi B', '', 0, NULL, 1),
(32, '2018-02-12', 'Marsha', 'Bagian Sistem Inform', '', 0, NULL, 1),
(33, '2018-02-12', 'Caplin', 'Bagian Jaringan Komputer', '', 0, 'Universitas Komputer Indonesia', 1),
(34, '2018-02-14', 'Riss', 'Bagian Sistem Informasi', '', 0, 'Universitas Komputer Indonesia', 1),
(35, '2018-02-15', 'Ken', 'Bagian Jaringan Komputer', '', 0, 'Universitas Airlangga', 1),
(36, '2018-02-15', 'Bruno', 'Bagian Akademik dan Statistik', '', 0, 'Sekolah Tinggi Bahasa Asing Yapari', 1),
(37, '0000-00-00', 'howwee', 'Bagian Jaringan Komputer', 'faisalsyfl@gmail.com', 1, 'Universitas Hasanudin', 1),
(38, '0000-00-00', 'wewewe', 'Bagian Kemahasiswaan dan Humas', 'faisal.faisal.anwar@gmail.com', 2, 'Universitas Komputer Indonesia', 1),
(39, '2018-02-17', 'Ayat', 'Bagian Perencanaan dan Kerjasama', 'asuh68@gmail.com', 2, 'Universitas Pasundan', 1),
(40, '2018-02-17', 'rini', 'Bagian Perencanaan dan Kerjasama', 'rini@gmail.com', 1, 'Universitas Padjadjaran', 1),
(41, '2018-02-17', 'faisal hehe', 'Bagian Research and Development TI', 'faisal.faisal.anwar@gmail.com', 1, 'Universitas Pendidikan Indonesia', 1),
(42, '2018-02-17', 'fahmi', 'Bagian Research and Development TI', 'fahmi@gmal.xc', 1, 'Universitas Hasanudin', 1),
(43, '2018-02-17', 'kont', 'Bagian Sistem Informasi', 'SAd@gmail.com', 1, 'Universitas Hasanudin', 1),
(44, '2018-02-17', 'hope', 'Bagian Research and Development TI', 'hope@gmail.com', 2, 'Universitas Telkom', 1),
(45, '2018-02-17', 'slmaet', 'Bagian Research and Development TI', 'slamet@gmail.com', 1, 'Universitas Diponegoro', 1);

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_indicator_luftman`
--
ALTER TABLE `t_indicator_luftman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `t_jabatan`
--
ALTER TABLE `t_jabatan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_likert_luftman`
--
ALTER TABLE `t_likert_luftman`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `t_measurement`
--
ALTER TABLE `t_measurement`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `t_rating`
--
ALTER TABLE `t_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
