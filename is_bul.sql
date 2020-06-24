SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `is_bul`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `askerlik`
--

CREATE TABLE `askerlik` (
  `id` int(11) NOT NULL,
  `Askerlik_durum` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `askerlik`
--

INSERT INTO `askerlik` (`id`, `Askerlik_durum`) VALUES
(4, 'Muaf'),
(1, 'Tecilli'),
(2, 'Yapildi'),
(3, 'Yapilmadi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calisma_sekli`
--

CREATE TABLE `calisma_sekli` (
  `id` int(11) NOT NULL,
  `calis_sekli_ad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `calisma_sekli`
--

INSERT INTO `calisma_sekli` (`id`, `calis_sekli_ad`) VALUES
(1, 'Sürekli / Tam zamanli'),
(2, 'Dönemsel / Proje bazl?'),
(3, 'Stajyer'),
(4, 'Yari zamanli / Part Time'),
(5, 'Serbest Zamanli');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `egitim`
--

CREATE TABLE `egitim` (
  `id` int(11) NOT NULL,
  `egitim` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `egitim`
--

INSERT INTO `egitim` (`id`, `egitim`) VALUES
(11, 'Doktora - Ögrenci'),
(2, 'Ilkögretim - Mezun'),
(1, 'Ilkögretim - Ögrenci'),
(4, 'Lise - Mezun'),
(3, 'Lise - Ögrenci'),
(6, 'Meslek Yüksekokulu - Mezun'),
(5, 'Meslek Yüksekokulu - Ögrenci'),
(8, 'Üniversite - Mezun'),
(7, 'Üniversite - Ögrenci'),
(10, 'Yüksek Lisans - Mezun'),
(9, 'Yüksek Lisans - Ögrenci');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ehliyet`
--

CREATE TABLE `ehliyet` (
  `id` int(11) NOT NULL,
  `ehliyeti` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ehliyet`
--

INSERT INTO `ehliyet` (`id`, `ehliyeti`) VALUES
(2, 'A1'),
(3, 'A2'),
(4, 'B1'),
(10, 'BE'),
(9, 'C1'),
(11, 'D1'),
(12, 'D1E'),
(13, 'F'),
(14, 'G'),
(1, 'M');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `engeli`
--

CREATE TABLE `engeli` (
  `id` int(11) NOT NULL,
  `Engel_Ad` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `engeli`
--

INSERT INTO `engeli` (`id`, `Engel_Ad`) VALUES
(1, 'Engelli'),
(2, 'Engellsiz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firma_sektor`
--

CREATE TABLE `firma_sektor` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `firma_sektor`
--

INSERT INTO `firma_sektor` (`id`, `ad`) VALUES
(1, 'Hizmet'),
(2, 'Egitim'),
(3, 'Gayrimenkul, Emlak ??leri'),
(4, 'Danismanlik'),
(5, 'Telekomünikasyon'),
(6, 'Çagri Merkezi Hizmetleri'),
(7, 'Gayrimenkul De?erleme'),
(8, 'Bili?im'),
(9, 'Diger'),
(10, 'Tekstil');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilanlar`
--

CREATE TABLE `ilanlar` (
  `id` int(11) NOT NULL,
  `Aciklama` varchar(250) DEFAULT NULL,
  `Is_Tecrübesi` int(11) DEFAULT NULL,
  `Egitim_Düzeyi` int(11) DEFAULT NULL,
  `Sektörümüz` int(11) DEFAULT NULL,
  `Calisma_Tipi` int(11) DEFAULT NULL,
  `Pozisyonu` int(11) DEFAULT NULL,
  `Askerlik_Durumu` int(11) DEFAULT NULL,
  `Engel_Durum` int(11) DEFAULT NULL,
  `Sehir` int(11) DEFAULT NULL,
  `İletisim_Bilgilerimiz` int(11) DEFAULT NULL,
  `İlan_Tarihi` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ilanlar`
--

INSERT INTO `ilanlar` (`id`, `Aciklama`, `Is_Tecrübesi`, `Egitim_Düzeyi`, `Sektörümüz`, `Calisma_Tipi`, `Pozisyonu`, `Askerlik_Durumu`, `Engel_Durum`, `Sehir`, `İletisim_Bilgilerimiz`, `İlan_Tarihi`) VALUES
(1, 'Bos Yapmiyacak Eleman Lazim ', 1, 4, 8, 1, NULL, 1, 2, 34, 5, '2020-06-24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilan_kategori`
--

CREATE TABLE `ilan_kategori` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ilan_kategori`
--

INSERT INTO `ilan_kategori` (`id`, `ad`) VALUES
(1, 'Banka/Sigorta'),
(2, 'Bilisim/Telekom'),
(3, 'Egitim/Ogretim'),
(4, 'Güvenlik'),
(5, 'Hukuk/Avukat'),
(6, 'Insan Kaynaklari/Yönetim'),
(7, 'Lojistik/Tasimacilik/Depo'),
(8, 'Magaza/Perakende'),
(9, 'Muhasebe/Finans'),
(10, 'Pazarlama/Reklam/Tanitim/Tasarim'),
(11, 'Saglik'),
(12, 'Satis/Satis Müdürü/TeleSais'),
(13, 'Sekreter/Yönetici Asistani'),
(14, 'Staj/Yeni Mezun/Part-Time'),
(15, 'Tekstil'),
(16, 'Turizm/Gida/Hizmet'),
(17, 'Üretim/Endüstriyel Ürünler/Otomotiv'),
(18, 'Yapi/Mimar/insaat');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `telefon_No` int(11) DEFAULT NULL,
  `web_site` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `mail`, `telefon_No`, `web_site`) VALUES
(5, 'ibrahimyldz11@gmail.com', 508111552, 'www.null.com'),
(6, 'dilarayldz11@gmail.com', 508111551, 'www.null.com.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `is_tecrübe`
--

CREATE TABLE `is_tecrübe` (
  `id` int(11) NOT NULL,
  `tecrübe` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `is_tecrübe`
--

INSERT INTO `is_tecrübe` (`id`, `tecrübe`) VALUES
(1, 'Tecrübeli'),
(2, 'Tecrübesiz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pozisyon`
--

CREATE TABLE `pozisyon` (
  `id` int(11) NOT NULL,
  `pozisyon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `pozisyon`
--

INSERT INTO `pozisyon` (`id`, `pozisyon`) VALUES
(1, 'Satis Danismani'),
(2, 'Satis Temsilcisi'),
(3, 'Satis Uzmani'),
(4, 'Satis Temsilcisi'),
(5, 'Çagri Merkezi Müsteri Temsilcisi'),
(6, 'Magaza Müdürü'),
(7, 'Bölge Satis Sorumlusu'),
(8, 'Tibbi Satis Mümessili'),
(9, 'Musteri Temsilcisi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pozisyon_seviye`
--

CREATE TABLE `pozisyon_seviye` (
  `id` int(11) NOT NULL,
  `pozisyon_ad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `pozisyon_seviye`
--

INSERT INTO `pozisyon_seviye` (`id`, `pozisyon_ad`) VALUES
(1, 'Üst düzey yönetici'),
(2, 'Orta düzey yönetici'),
(3, 'Yönetici adayi'),
(4, 'Uzman'),
(5, 'Uzman Yardimcisi'),
(6, 'Yeni Baslayan'),
(7, 'Stajyer'),
(8, 'Eleman'),
(9, 'Hizmet Personeli'),
(10, 'Serbest Freelancer');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) DEFAULT NULL,
  `soy_Ad` varchar(50) DEFAULT NULL,
  `unvan` varchar(50) DEFAULT NULL,
  `Oz_Gecmis` char(150) DEFAULT NULL,
  `Dogum_Tarihi` date NOT NULL DEFAULT current_timestamp(),
  `Sehir` int(11) DEFAULT NULL,
  `Cinsiyet` varchar(10) NOT NULL,
  `Ehliyet` int(11) DEFAULT NULL,
  `Egitim` int(11) DEFAULT NULL,
  `Yabanci_Dil` int(11) DEFAULT NULL,
  `Maas_Beklentim` int(11) DEFAULT NULL,
  `İletisim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `profil`
--

INSERT INTO `profil` (`id`, `ad`, `soy_Ad`, `unvan`, `Oz_Gecmis`, `Dogum_Tarihi`, `Sehir`, `Cinsiyet`, `Ehliyet`, `Egitim`, `Yabanci_Dil`, `Maas_Beklentim`, `İletisim`) VALUES
(1, 'Ibrahim', 'Yildiz', 'Data Analysis', 'Veri Analistciyiz Iste', '2020-06-24', 34, 'Erkek', 2, 7, 1, 5000, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sehir`
--

CREATE TABLE `sehir` (
  `id` int(11) NOT NULL,
  `sehir_ad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sehir`
--

INSERT INTO `sehir` (`id`, `sehir_ad`) VALUES
(1, 'Adana'),
(2, 'Ad?yaman'),
(3, 'Afyon'),
(4, 'A?r?'),
(5, 'Amasya'),
(6, 'Ankara'),
(7, 'Antalya'),
(8, 'Artvin'),
(9, 'Ayd?n'),
(10, 'Bal?kesir'),
(11, 'Bilecik'),
(12, 'Bingöl'),
(13, 'Bitlis'),
(14, 'Bolu'),
(15, 'Burdur'),
(16, 'Bursa'),
(17, 'Çanakkale'),
(18, 'Çank?r?'),
(19, 'Çorum'),
(20, 'Denizli'),
(21, 'Diyarbak?r'),
(22, 'Edirne'),
(23, 'Elaz??'),
(24, 'Erzincan'),
(25, 'Erzurum'),
(26, 'Eski?ehir'),
(27, 'Gaziantep'),
(28, 'Giresun'),
(29, 'Gümü?hane'),
(30, 'Hakkari'),
(31, 'Hatay'),
(32, 'Isparta'),
(33, 'Mersin'),
(34, '?stanbul'),
(35, '?zmir'),
(36, 'Kars'),
(37, 'Kastamonu'),
(38, 'Kayseri'),
(39, 'K?rklareli'),
(40, 'K?r?ehir'),
(41, 'Kocaeli'),
(42, 'Konya'),
(43, 'Kütahya'),
(44, 'Malatya'),
(45, 'Manisa'),
(46, 'K.Mara?'),
(47, 'Mardin'),
(48, 'Mu?la'),
(49, 'Mu?'),
(50, 'Nev?ehir'),
(51, 'Ni?de'),
(52, 'Ordu'),
(53, 'Rize'),
(54, 'Sakarya'),
(55, 'Samsun'),
(56, 'Siirt'),
(57, 'Sinop'),
(58, 'Sivas'),
(59, 'Tekirda?'),
(60, 'Tokat'),
(61, 'Trabzon'),
(62, 'Tunceli'),
(63, '?anl?urfa'),
(64, 'U?ak'),
(65, 'Van'),
(66, 'Yozgat'),
(67, 'Zonguldak'),
(68, 'Aksaray'),
(69, 'Bayburt'),
(70, 'Karaman'),
(71, 'K?r?kkale'),
(72, 'Batman'),
(73, '??rnak'),
(74, 'Bart?n'),
(75, 'Ardahan'),
(76, 'I?d?r'),
(77, 'Yalova'),
(78, 'Karabük'),
(79, 'Kilis'),
(80, 'Osmaniye'),
(81, 'Düzce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyruk`
--

CREATE TABLE `uyruk` (
  `id` int(11) NOT NULL,
  `ülke_ad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `uyruk`
--

INSERT INTO `uyruk` (`id`, `ülke_ad`) VALUES
(1, 'Abhazya'),
(2, 'Afganistan'),
(3, 'Almanya'),
(4, 'Amerika Birle?ik Devletleri'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Antigua ve Barbuda'),
(8, 'Arjantin'),
(9, 'Arnavutluk'),
(10, 'Avustralya'),
(11, 'Avusturya'),
(12, 'Azerbaycan'),
(13, 'Bahamalar'),
(14, 'Bahreyn'),
(15, 'Banglade?'),
(16, 'Barbados'),
(17, 'Bat? Sahra'),
(18, 'Belarus'),
(19, 'Belçika'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bhutan'),
(23, 'Birle?ik Arap Emirlikleri'),
(24, 'Bolivya'),
(25, 'Bosna Hersek'),
(26, 'Botsvana'),
(27, 'Brezilya'),
(28, 'Brunei'),
(29, 'Bulgaristan'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cezayir'),
(33, 'Cibuti Cumhuriyeti'),
(34, 'Çad'),
(35, 'Çek Cumhuriyeti'),
(36, 'Çin Halk Cumhuriyeti'),
(37, 'Da?l?k Karaba? Cumhuriyeti'),
(38, 'Danimarka'),
(39, 'Do?u Timor'),
(40, 'Dominik Cumhuriyeti'),
(41, 'Dominika'),
(42, 'Ekvador'),
(43, 'Ekvator Ginesi'),
(44, 'El Salvador'),
(45, 'Endonezya'),
(46, 'Eritre'),
(47, 'Ermenistan'),
(48, 'Estonya'),
(49, 'Etiyopya'),
(50, 'Fas'),
(51, 'Fiji'),
(52, 'Fildi?i Sahilleri'),
(53, 'Filipinler'),
(54, 'Filistin'),
(55, 'Finlandiya'),
(56, 'Fransa'),
(57, 'Gabon'),
(58, 'Gambiya'),
(59, 'Gana'),
(60, 'Gine Bissau'),
(61, 'Gine'),
(62, 'Grenada'),
(63, 'Guyana'),
(64, 'Guatemala'),
(65, 'Güney Afrika Cumhuriyeti'),
(66, 'Güney Kore'),
(67, 'Güney Osetya'),
(68, 'Gürcistan'),
(69, 'Haiti'),
(70, 'H?rvatistan'),
(71, 'Hindistan'),
(72, 'Hollanda'),
(73, 'Honduras'),
(74, 'Irak'),
(75, '?ngiltere'),
(76, '?ran'),
(77, '?rlanda'),
(78, '?spanya'),
(79, '?srail'),
(80, '?sveç'),
(81, '?sviçre'),
(82, '?talya'),
(83, '?zlanda'),
(84, 'Jamaika'),
(85, 'Japonya'),
(86, 'Kamboçya'),
(87, 'Kamerun'),
(88, 'Kanada'),
(89, 'Karada?'),
(90, 'Katar'),
(91, 'Kazakistan'),
(92, 'Kenya'),
(93, 'K?rg?zistan'),
(94, 'K?br?s Cumhuriyeti'),
(95, 'Kiribati'),
(96, 'Kolombiya'),
(97, 'Komorlar'),
(98, 'Kongo'),
(99, 'Kongo Demokratik Cumhuriyeti'),
(100, 'Kosova'),
(101, 'Kosta Rika'),
(102, 'Kuveyt'),
(103, 'Kuzey K?br?s Türk Cumhuriyeti'),
(104, 'Kuzey Kore'),
(105, 'Küba'),
(106, 'Lakota Cumhuriyeti'),
(107, 'Laos'),
(108, 'Lesotho'),
(109, 'Letonya'),
(110, 'Liberya'),
(111, 'Libya'),
(112, 'Liechtenstein'),
(113, 'Litvanya'),
(114, 'Lübnan'),
(115, 'Lüksemburg'),
(116, 'Macaristan'),
(117, 'Madagaskar'),
(118, 'Makedonya Cumhuriyeti'),
(119, 'Malavi'),
(120, 'Maldivler'),
(121, 'Malezya'),
(122, 'Mali'),
(123, 'Malta'),
(124, 'Marshall Adalar?'),
(125, 'Meksika'),
(126, 'M?s?r'),
(127, 'Mikronezya'),
(128, 'Mo?olistan'),
(129, 'Moldova'),
(130, 'Monako'),
(131, 'Moritanya'),
(132, 'Moritus'),
(133, 'Mozambik'),
(134, 'Myanmar'),
(135, 'Namibya'),
(136, 'Nauru'),
(137, 'Nepal'),
(138, 'Nikaragua'),
(139, 'Nijer'),
(140, 'Nijerya'),
(141, 'Norveç'),
(142, 'Orta Afrika Cumhuriyeti'),
(143, 'Özbekistan'),
(144, 'Pakistan'),
(145, 'Palau'),
(146, 'Panama'),
(147, 'Papua Yeni Gine'),
(148, 'Paraguay'),
(149, 'Peru'),
(150, 'Polonya'),
(151, 'Portekiz'),
(152, 'Romanya'),
(153, 'Ruanda'),
(154, 'Rusya Federasyonu'),
(155, 'Saint Kitts ve Nevis'),
(156, 'Saint Lucia'),
(157, 'Saint Vincent ve Grenadinler'),
(158, 'Samoa'),
(159, 'San Marino'),
(160, 'Sao Tome ve Principe'),
(161, 'Sealand'),
(162, 'Senegal'),
(163, 'Sey?eller'),
(164, 'S?rbistan'),
(165, 'Sierra Leone'),
(166, 'Singapur'),
(167, 'Slovakya'),
(168, 'Slovenya'),
(169, 'Solomon Adalar?'),
(170, 'Somali'),
(171, 'Somaliland'),
(172, 'Sri Lanka'),
(173, 'Sudan'),
(174, 'Surinam'),
(175, 'Suudi Arabistan'),
(176, 'Suriye'),
(177, 'Svaziland'),
(178, '?ili'),
(179, 'Tacikistan'),
(180, 'Tamil Eelam'),
(181, 'Tanzanya'),
(182, 'Tayland'),
(183, 'Tayvan'),
(184, 'Togo'),
(185, 'Tonga'),
(186, 'Transdinyester'),
(187, 'Trinidad ve Tobago'),
(188, 'Tunus'),
(189, 'Tuvalu'),
(190, 'Türkiye'),
(191, 'Türkmenistan'),
(192, 'Uganda'),
(193, 'Ukrayna'),
(194, 'Umman'),
(195, 'Uruguay'),
(196, 'Ürdün'),
(197, 'Vanuatu'),
(198, 'Vatikan'),
(199, 'Venezuela'),
(200, 'Vietnam'),
(201, 'Yemen'),
(202, 'Yeni Zelanda'),
(203, 'Ye?il Burun'),
(204, 'Yunanistan'),
(205, 'Zambiya'),
(206, 'Zimbabve');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yabanci_dil`
--

CREATE TABLE `yabanci_dil` (
  `id` int(11) NOT NULL,
  `dil` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `yabanci_dil`
--

INSERT INTO `yabanci_dil` (`id`, `dil`) VALUES
(1, 'Ingilizce'),
(2, 'Fransizca'),
(3, 'Almanca'),
(4, 'Rusca'),
(5, 'Arapca'),
(6, 'Ispanyolca'),
(7, 'Japonca'),
(8, 'Korece');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `askerlik`
--
ALTER TABLE `askerlik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Askerlik_durum` (`Askerlik_durum`);

--
-- Tablo için indeksler `calisma_sekli`
--
ALTER TABLE `calisma_sekli`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `egitim`
--
ALTER TABLE `egitim`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `egitim` (`egitim`);

--
-- Tablo için indeksler `ehliyet`
--
ALTER TABLE `ehliyet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ehliyeti` (`ehliyeti`);

--
-- Tablo için indeksler `engeli`
--
ALTER TABLE `engeli`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `firma_sektor`
--
ALTER TABLE `firma_sektor`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ilanlar`
--
ALTER TABLE `ilanlar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Is_Tecrübesi` (`Is_Tecrübesi`),
  ADD KEY `Egitim_Düzeyi` (`Egitim_Düzeyi`),
  ADD KEY `Sektörümüz` (`Sektörümüz`),
  ADD KEY `Calisma_Tipi` (`Calisma_Tipi`),
  ADD KEY `Pozisyonu` (`Pozisyonu`),
  ADD KEY `Askerlik_Durumu` (`Askerlik_Durumu`),
  ADD KEY `Engel_Durum` (`Engel_Durum`),
  ADD KEY `Sehir` (`Sehir`),
  ADD KEY `İletisim_Bilgilerimiz` (`İletisim_Bilgilerimiz`);

--
-- Tablo için indeksler `ilan_kategori`
--
ALTER TABLE `ilan_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `telefon_No` (`telefon_No`);

--
-- Tablo için indeksler `is_tecrübe`
--
ALTER TABLE `is_tecrübe`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pozisyon`
--
ALTER TABLE `pozisyon`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pozisyon_seviye`
--
ALTER TABLE `pozisyon_seviye`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sehir` (`Sehir`),
  ADD KEY `Ehliyet` (`Ehliyet`),
  ADD KEY `Egitim` (`Egitim`),
  ADD KEY `Yabanci_Dil` (`Yabanci_Dil`),
  ADD KEY `İletisim` (`İletisim`);

--
-- Tablo için indeksler `sehir`
--
ALTER TABLE `sehir`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyruk`
--
ALTER TABLE `uyruk`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yabanci_dil`
--
ALTER TABLE `yabanci_dil`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `askerlik`
--
ALTER TABLE `askerlik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `calisma_sekli`
--
ALTER TABLE `calisma_sekli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `egitim`
--
ALTER TABLE `egitim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `ehliyet`
--
ALTER TABLE `ehliyet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `engeli`
--
ALTER TABLE `engeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `firma_sektor`
--
ALTER TABLE `firma_sektor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `ilanlar`
--
ALTER TABLE `ilanlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ilan_kategori`
--
ALTER TABLE `ilan_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `is_tecrübe`
--
ALTER TABLE `is_tecrübe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `pozisyon`
--
ALTER TABLE `pozisyon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `pozisyon_seviye`
--
ALTER TABLE `pozisyon_seviye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sehir`
--
ALTER TABLE `sehir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `uyruk`
--
ALTER TABLE `uyruk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- Tablo için AUTO_INCREMENT değeri `yabanci_dil`
--
ALTER TABLE `yabanci_dil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `ilanlar`
--
ALTER TABLE `ilanlar`
  ADD CONSTRAINT `ilanlar_ibfk_1` FOREIGN KEY (`Is_Tecrübesi`) REFERENCES `is_tecrübe` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_2` FOREIGN KEY (`Egitim_Düzeyi`) REFERENCES `egitim` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_3` FOREIGN KEY (`Sektörümüz`) REFERENCES `firma_sektor` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_4` FOREIGN KEY (`Calisma_Tipi`) REFERENCES `calisma_sekli` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_5` FOREIGN KEY (`Pozisyonu`) REFERENCES `pozisyon` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_6` FOREIGN KEY (`Askerlik_Durumu`) REFERENCES `askerlik` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_7` FOREIGN KEY (`Engel_Durum`) REFERENCES `engeli` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_8` FOREIGN KEY (`Sehir`) REFERENCES `sehir` (`id`),
  ADD CONSTRAINT `ilanlar_ibfk_9` FOREIGN KEY (`İletisim_Bilgilerimiz`) REFERENCES `iletisim` (`id`);

--
-- Tablo kısıtlamaları `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`Sehir`) REFERENCES `sehir` (`id`),
  ADD CONSTRAINT `profil_ibfk_2` FOREIGN KEY (`Ehliyet`) REFERENCES `ehliyet` (`id`),
  ADD CONSTRAINT `profil_ibfk_3` FOREIGN KEY (`Egitim`) REFERENCES `egitim` (`id`),
  ADD CONSTRAINT `profil_ibfk_4` FOREIGN KEY (`Yabanci_Dil`) REFERENCES `yabanci_dil` (`id`),
  ADD CONSTRAINT `profil_ibfk_5` FOREIGN KEY (`İletisim`) REFERENCES `iletisim` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
