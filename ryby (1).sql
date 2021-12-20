-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 19. pro 2021, 14:31
-- Verze serveru: 10.4.22-MariaDB
-- Verze PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `ryby`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `bezostni`
--

CREATE TABLE `bezostni` (
  `id_bezostni` int(11) NOT NULL,
  `nazev_bezostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `popis_bezostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_bezostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `bezostni`
--

INSERT INTO `bezostni` (`id_bezostni`, `nazev_bezostni`, `popis_bezostni`, `obrazek_bezostni`) VALUES
(1, 'HLAVATKA PODUNAJSKÁ', 'Běžná velikost je 60-100 cm. Hájení je od 1. ledna do 30. září. Největší evropská lososovitá ryba, žijící v podhorských řekách.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Hucho_hucho_hlavatka_02.jpg'),
(2, 'LIPAN PODHORNÍ', 'Běžná velikost je 25-40 cm. Hájení je od 1. prosince do 31. července. Lososovitá ryba s minimem teček a výraznou hřbetní ploutví.', 'https://www.chytej.cz/foto/atlas_ryb/lipan_podhorni/rozlisovaci_znaky/Lipan-Sander.jpg'),
(3, 'LOSOS OBECNÝ', 'Běžná velikost je 70-90 cm. Hájení je od 1. září do 15. dubna. Nejznámější lososovitá ryba, na našem území přechodně vyhubena, ale postupně znovu vysazována.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2016/01/losos-obecny-2016-2.jpg'),
(4, 'PSTRUH AMERICKÝ DUHOVÝ', 'Běžná velikost je 25-40 cm. Hájení je od 1. září do 15. dubna. Severoamerická lososovitá ryba vysazována po celém světě. ', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Oncorhynchus_mykiss_pstruh_duhovy_02.jpg'),
(5, 'PSTRUH OBECNÝ', 'Běžná velikost je 20-40 cm. Hájení je od 1. září do 15. dubna. Neobyčejně přizpůsobivá ryba. Žije v čistých vodách s velkým obsahem kyslíku.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Salmo_trutta_pstruh_obecny_01.jpg'),
(6, 'SÍH MARÉNA', 'Běžná velikost je 30-50 cm. Doba hájení není stanovena. Stříbřitě zbarvená lososovitá ryba větších rozměrů.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Coregonus_lavaretus_maraena_Sih_marena_severni_03.jpg'),
(7, 'SÍH PELEĎ', 'Běžná velikost je 30-45 cm. Doba hájení není stanovena. Na naše území dovezený druh. Snáší i teplejší a kalnější vodu.', 'https://www.chytej.cz/foto/atlas_ryb/sih_peled/rozlisovaci_znaky/Coregonus%201.jpg'),
(8, 'SIVEN AMERICKÝ', 'Běžná velikost je 20-35 cm. Hájení je od 1. prosince do 15. dubna. Lososovitá ryba dovezená ze Severní Ameriky. Vzhledem i způsobem života je podobná pstruhu obecnému.', 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Salvelinus_fontinalis_Prague_Vltava_1.jpg'),
(9, 'ŠTIKA OBECNÁ', 'Běžná velikost je 40-70 cm. Hájení je od 1. ledna do 15. června. Je to naše nejznámější dravá ryba. Dorůstá velkých rozměrů a rychle roste.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2016/01/stika-ve-svem-zivlu-600x368.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktura tabulky `holobrisi`
--

CREATE TABLE `holobrisi` (
  `id_holobrisi` int(11) NOT NULL,
  `nazev_holobrisi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `popis_holobrisi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_holobrisi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `holobrisi`
--

INSERT INTO `holobrisi` (`id_holobrisi`, `nazev_holobrisi`, `popis_holobrisi`, `obrazek_holobrisi`) VALUES
(1, 'ÚHOŘ ŘÍČNÍ', 'Běžná velikost je 50-80 cm. Hájení je od 1. září do 30. listopadu. Hadovitá dravá ryba, která kvůli tření migruje do Sargasového moře.', 'http://www.chovzvirat.cz/images/zvirata/uhor-ricni_agl69ie.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `hrdloploutvi`
--

CREATE TABLE `hrdloploutvi` (
  `id_hrdloploutvi` int(11) NOT NULL,
  `nazev_hrdloploutvi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `popis_hrdloploutvi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_hrdloploutvi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `hrdloploutvi`
--

INSERT INTO `hrdloploutvi` (`id_hrdloploutvi`, `nazev_hrdloploutvi`, `popis_hrdloploutvi`, `obrazek_hrdloploutvi`) VALUES
(1, 'MNÍK JEDNOVOUSÝ', 'Běžná velikost je 30-45 cm. Hájení je od 1. ledna do 15. března. Žije spíše v noci a v čistých chladných vodách.', 'https://www.chytej.cz/foto/atlas_ryb/mnik_jednovousy/mnik_jednovousy.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `jeseteri`
--

CREATE TABLE `jeseteri` (
  `id_jeseteri` int(11) NOT NULL,
  `nazev_jeseteri` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `popis_jeseteri` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_jeseteri` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `jeseteri`
--

INSERT INTO `jeseteri` (`id_jeseteri`, `nazev_jeseteri`, `popis_jeseteri`, `obrazek_jeseteri`) VALUES
(1, 'JESETER HLADKÝ', 'Běžná velikost je 80-160 cm. Hájení je od 16. března do 15. června. Velký druh jesetera původem z východní Evropy.', 'https://lh3.googleusercontent.com/proxy/tgqdPcp_C0iEZat3peg738Jc11BRAc_-iToF3A7VC9BqCqQBgZQb2ygxNUbwSzVCcXrr7u1RjXWuvsJd0PawPOKCsePGXYl2QJCatfqR4fQ9cu5e172l2AoONt3ORiKzYrbB'),
(2, 'JESETER HVĚZDNATÝ', 'Běžná velikost je 100-160 cm. Hájení je od 16. března do 15. června. Velký štíhlý druh jesetera s dlouhým rypcem.', 'https://www.chytej.cz/foto/atlas_ryb/jeseter_hvezdnaty/jeseter_hvezdnaty.jpg'),
(3, 'JESETER MALÝ', 'Běžná velikost je 40-60 cm. Hájení je od 16. března do 15. června. Malý starobylý druh jesetera se špičatým rypcem.', 'http://www.chovzvirat.cz/images/zvirata/jeseter-maly_nrf72ia.jpg'),
(4, 'JESETER RUSKÝ', 'Běžná velikost je 80-160 cm. Hájení je od 16. března do 15. června. eVelký druh jesetera původem z východní Evropy.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/Acipenser_gueldenstaedti2.jpg'),
(5, 'JESETER SIBIŘSKÝ', 'Běžná velikost je 80-150 cm. Hájení je od 16. března do 15. června. Dovezený z východní části Ruska.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/Acipenser_baeri2.jpg'),
(6, 'JESETER VELKÝ', 'Běžná velikost je 120-250 cm. Hájení je od 16. března do 15. června. Největší evropský druh jesetera. Dnes už je to vymírající druh.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/Jeseter-velk%C3%BD-Acipenser-sturio-3.jpg'),
(7, 'VYZA VELKÁ', 'Běžná velikost je 150-300 cm. Hájení je od 16. března do 15. června. Je to největší jeseterovitá ryba a sladkovodní vůbec.', 'https://images.hyperinzerce.cz/inzeraty/55338024844817383945%2Foriginal%2F15645614-vyza-velka-jeseteri-001.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `maloostni`
--

CREATE TABLE `maloostni` (
  `id_maloostni` int(11) NOT NULL,
  `nazev_maloostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `popis_maloostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_maloostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `maloostni`
--

INSERT INTO `maloostni` (`id_maloostni`, `nazev_maloostni`, `popis_maloostni`, `obrazek_maloostni`) VALUES
(1, 'AMUR BÍLY', 'Běžná velikost je 50-80 cm. Doba hájení není stanovena. Je to velká kaprovitá ryba, která připomíná tlouště. K nám byla dovezena za účelem doplnění obsádek.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/05/Amur_bily_02_Ctenopharyngodon-idella-%E2%80%93-Valenciennes.jpg'),
(2, 'BOLEN DRAVÝ', 'Běžná velikost je 40-70 cm. Doba hájení je od 1. ledna do 15. června. Jediná dravá kaprovitá ryba žijící na našem území.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2018/07/bolen-dravy222.jpg'),
(3, 'CEJN PERLEŤOVÝ', 'Běžná velikost je 15-30 cm. Celoročně hájená ryba. Menší kaprovitá ryba příbuzná cejnovi.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/06/abramis_sapa_cejn_perletovy_04.jpg'),
(4, 'CEJN SINÝ', 'Běžná velikost je 30 cm. Doba hájení není stanovena. Menší druh cejna s jemnými šupinami.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2016/01/Abramis_ballerus3.jpg'),
(5, 'CEJN VELKÝ', 'Běžná velikost je 30-45 cm. Doba hájení není stanovena. Větší kaprovitá ryba, žijící v nižší nadmořské výšce.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/abramis-brama-cejn-velk%C3%BD-01.jpg'),
(6, 'CEJNEK MALÝ', 'Běžná velikost je 15-30 cm. Doba hájení není stanovena. Hojná středně velká ryba, žijící ve stojatých vodách.', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Blicca_bjoerkna_Hungary.jpg'),
(7, 'HOŘAVKA DUHOVÁ', 'Běžná velikost je 5-8 cm. Celoročně hájená ryba. Drobná kaprovitá rybka žijící ve stojatých vodách, která klade jikry do žaberní dutiny mlžů.', 'https://www.chytej.cz/foto/atlas_ryb/horavka_duhova/rozlisovaci_znaky/horavka2.jpg'),
(8, 'HROUZEK BĚLOPLOUTVÝ', 'Běžná velikost je 7-11 cm. Doba hájení není stanovena. Malá rybka s válcovitým tělem. U nás žije převážně na jižní Moravě.', 'https://www.chytej.cz/foto/atlas_ryb/hrouzek_beloploutvy/zakladni_informace/hrouz-belopl.jpg'),
(9, 'HROUZEK DLOUHOVOUSÝ', 'Běžná velikost je 7-10 cm. Doba hájení není stanovena. Nejmenší ze skupiny hrouzků. Z našeho území se postupně ztrácí.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/gobio_gobio_hrouzek_obecn%C3%BD_04.jpg'),
(10, 'HROUZEK KESSLERŮV', 'Běžná velikost je 8-11 cm. Doba hájení není stanovena. Žije v proudících řekách. Na našem území jedna z nejvzácnějších ryb.', 'https://irybarstvi.cz/wp-content/uploads/2020/07/3.Hrouzci.R.kesslerii-1024x447.jpg'),
(11, 'HROUZEK OBECNÝ', 'Běžná velikost je 8-14 cm. Doba hájení není stanovena. Rybka s válcovitým tělem, hranatou hlavou a párem vousků. Žije ve stojatých vodách s písčitým dnem.', 'http://www.chovzvirat.cz/images/zvirata/hrouzek-obecny_rfe90ca.jpg'),
(12, 'JELEC JESEN', 'Běžná velikost je 25-40 cm. Doba hájení od 16. března do 15. června. Ryba se zploštělým tělem žijící v tekoucích vodách.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/leuciscus_idus_jelec_jesen_01.jpg'),
(13, 'JELEC PROUDNÍK', 'Běžná velikost je 15-25 cm. Doba hájení není stanovena. Stříbrná kaprovitá ryba, která žije na většině našeho území.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/Leuciscus_leuciscus_hf0164-1.jpg'),
(14, 'JELEC TLOUŠŤ', 'Běžná velikost je 25-45 cm. Doba hájení od 16. března do 15. června. Ryba s válcovitým tělem žijící v tekoucích vodách mimo pstruhové bystřiny.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/leuciscus_cephalus_jelec_tlou%C5%A1%C5%A5_01.jpg'),
(15, 'KAPR OBECNÝ', 'Běžná velikost je 40-65 cm. Doba hájení není stanovena. Doba hájení od Je to naše nejběžnější ryba a zároveň i nejvíce vysazovaná.', 'https://g.denik.cz/122/03/kapr_obecny_683853481-jpg_irecept-full.jpg'),
(16, 'KARAS OBECNÝ', 'Běžná velikost je 15-30 cm. Doba hájení není stanovena. Kaprovitá ryba obývající teplé stojaté vody.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/carassius_carassius_karas_obecn%C3%BD_01.jpg'),
(17, 'KARAS STŘÍBŘITÝ', 'Běžná velikost je 15-30 cm. Doba hájení není stanovena. Ryba, která byla do Evropy zavlečena původně z Číny.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/carassius_carassius_karas_st%C5%99%C3%ADb%C5%99it%C3%BD_01.jpg'),
(18, 'LÍN OBECNÝ', 'Běžná velikost je 20-30 cm. Doba hájení není stanovena. Větší zelená ryba s jemnými šupinami, žijící v zarostlých vodách. ', 'http://www.chovzvirat.cz/images/zvirata/lin-obecny_qdm38nl.jpg'),
(19, 'MŘENKA MRAMOROVÁ', 'Běžná velikost je 8-12 cm. Doba hájení není stanovena. Drobnější ryba s dokonalým krycím zbarvením, žijící v čistých vodách.', 'http://www.chovzvirat.cz/images/zvirata/mrenka-mramorova_dsm76vp.jpg'),
(20, 'OSTRORETKA STĚHOVAVÁ', 'Běžná velikost je 25-40 cm. Doba hájení je od 16. března do 15. června. Stříbrná ryba protáhlého tvaru obývající proudné vody.', 'https://www.chytej.cz/foto/atlas_ryb/ostroretka_stehovava/zakladni_informace/Ostroretka-jihlava.jpg'),
(21, 'OSTRUCHA KŘIVOČARÁ', 'Běžná velikost je 20-40 cm. Celoročně hájená ryba. Stříbrná ryba střední velikosti, která se zdržuje u hladiny vod.', 'http://www.chovzvirat.cz/images/zvirata/ostrucha-krivocara_tiq76jr.jpg'),
(22, 'OUKLEJ OBECNÁ', 'Běžná velikost je 10-20 cm. Doba hájení není stanovena. Drobnější stříbrná ryba žijící ve většině vod u nás. Žije většinou u hladiny vod.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/Alburnus-alburnus-hd3681-1.jpg'),
(23, 'OUKLEJKA PRUHOVANÁ', 'Běžná velikost je 8-13 cm. Celoročně hájená ryba. Menší kaprovitá ryba obývající tekoucí vody. Je o něco menší než ouklej obecná.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/alburnoides_bipunctatus_he4363-1.jpg'),
(24, 'PARMA OBECNÁ', 'Běžná velikost je 40-60 cm. Doba hájení od 16. března do 15. června. Větší ryba s protáhlým tělem. Zdržuje se spíše u dna, kde se živí živočichy a rostlinnou potravou.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/barbus_barbus_parma_obecna_03.jpg'),
(25, 'PERLÍN OSTROBŘICHÝ', 'Běžná velikost je 15-30 cm. Doba hájení není stanovena. Žije v teplejších a zarostlejších stojatých vodách. Má výrazně červené ploutve.', 'https://upload.wikimedia.org/wikipedia/commons/f/fa/Scardinius_erythrophthalmus_in_aquarium.JPG'),
(26, 'PISKOŘ PRUHOVANÝ', 'Běžná velikost je 15-25 cm. Celoročně hájená ryba. Menší ryba obývající stojaté vody. Nezaměnitelná svým zbarvením a největším počtem vousků mezi našimi rybami.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/piskor-pruhovany-misgurnus-fossilis-01.jpg'),
(27, 'PLOTICE LESKLÁ', 'Běžná velikost je 20-35 cm. Doba hájení není stanovena. Střední kaprovitá ryba, u nás velmi vzácná.', 'https://www.chytej.cz/foto/atlas_ryb/plotice_leskla/zakladni_informace/Plotice-leskla-1.jpg'),
(28, 'PLOTICE OBECNÁ', 'Běžná velikost je 15-30 cm. Doba hájení není stanovena. Menší stříbrná ryba žijící ve stojatých i tekoucích vodách.', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Rutilus_rutilus_FZ.png'),
(29, 'PODOUSTEV ŘÍČNÍ', 'Běžná velikost je 20-40 cm. Doba hájení od 16. března do 15. června. Ryba podobná cejnům, nezaměnitelná pro své zakončení rypce.', 'https://www.mrk.cz/Data/Galerie/35_f2.jpg'),
(30, 'SEKAVČÍK HORSKÝ', 'Běžná velikost je 8-11 cm. Celoročně hájená ryba. Menší vousatá ryba obývající čisté vody s písčitým dnem.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2016/01/sekavec-horsky-2016.jpg'),
(31, 'SEKAVEC PODUNAJSKÝ', 'Běžná velikost je 8-11 cm. Celoročně hájená ryba. Drobná zploštělá ryba obývající čisté vody s písčitým dnem.', 'https://www.chytej.cz/foto/atlas_ryb/sekavec_podunajsky/zakladni_informace/Sekavec-4.jpg'),
(32, 'SLUNKA OBECNÁ', 'Běžná velikost je 3-6 cm. Doba hájení není stanovena. Ryba žijící v mělkých stojatých vodách, zejména v rybnících a tůních.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/leucaspius_delineatus_hd1379-2.jpg'),
(33, 'STŘEVLE POTOČNÍ', 'Běžná velikost je 5-8 cm. Celoročně hájená ryba. Pestře zbarvená ryba obývající čisté vody.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Phoxinus_phoxinus_strevle_potocni_01.jpg'),
(34, 'STŘEVLIČKA VÝCHODNÍ', 'Běžná velikost je 3-6 cm. Doba hájení není stanovena. Ryba, která k nám byla původně zavlečena z povodí amuru. Jedna z mála přizpůsobivých ryb s tendencí přemnožovat se.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2015/12/pseudorasbora_parva_hc2194-1.jpg'),
(35, 'SUMEC VELKÝ', 'Běžná velikost je  80-160 cm. Doba hájení od 1. ledna do 15. června. Je to naše největší dravá ryba dosahující délky i dva metry. Typický pro svou kůži bez šupin.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Silurus_glanis_sumec_velky_01.jpg'),
(36, 'SUMEČEK AMERICKÝ', 'Běžná velikost je 15-30 cm. Doba hájení není stanovena. Menší sumci podobná ryba, která byla na naše území zavlečená ze Severní Ameriky.', 'http://www.chovzvirat.cz/images/zvirata/sumecek-americky_eet22gl.jpg'),
(37, 'TOLSTOLOBEC PESTRÝ', 'Běžná velikost je 60-90 cm. Doba hájení není stanovena. K nám dovezený druh kaprovité ryby, živící se planktonem. Dorůstá velkých rozměrů.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Arisichthys_nobilis_tolstolobec_pestry_04.jpg'),
(38, 'TOLSTOLOBIK BÍLÝ', 'Běžná velikost je 60-90 cm. Doba hájení není stanovena. Dovezený druh velké kaprovité ryby s drobnými stříbřitými šupinami živící se rostlinným planktonem.', 'https://irybarstvi.cz/wp-content/uploads/2020/07/asian-bighead-carp.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `ostnoploutvi`
--

CREATE TABLE `ostnoploutvi` (
  `id_ostnoploutvi` int(11) NOT NULL,
  `nazev_ostnoploutvi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `popis_ostnoploutvi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_ostnoploutvi` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `ostnoploutvi`
--

INSERT INTO `ostnoploutvi` (`id_ostnoploutvi`, `nazev_ostnoploutvi`, `popis_ostnoploutvi`, `obrazek_ostnoploutvi`) VALUES
(1, 'CANDÁT OBECNÝ', 'Běžná velikost je 40-70 cm. Hájení je od 1. ledna do 15. června. Nezaměnitelná dravá ryba, která  žije ve vodách nižší nadmořské výšky', 'http://rybareninakope.cz/wp-content/uploads/image/candat-obecny.jpg'),
(2, 'CANDÁT VÝCHODNÍ', 'Běžná velikost je 20-30 cm. Hájení je od 1. ledna do 15. června. Menší druh okounovité ryby. U nás žije na jihovýchodní Moravě.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/06/candat_vychodni_02-sander-volgensis.jpg'),
(3, 'DRSEK MENŠÍ', 'Běžná velikost je 14-16 cm. Celoroční doba hájení. Ryba připomínající candáta. Žije u dna větších řek.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/zingel_streber_drsek_men%C5%A1i_02.jpg'),
(4, 'DRSEK VĚTŠÍ', 'Běžná velikost je 20-30 cm. Celoroční doba hájení. Ryba podobná candátu, která žije na dně větších řek.', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2016/01/Zingel_zingel2.jpg'),
(5, 'HLAVAČKA MRAMOROVÁ', 'Běžná velikost je 4-6 cm. Doba hájení není stanovena. Na naše území proniká z povodí Dunaje.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Hlavacka_mramorovan%C3%A1_Proterorhinus_marmoratus_01.jpg'),
(6, 'JEŽDÍK OBECNÝ', 'Běžná velikost je 8-15 cm. Doba hájení není stanovena. Drobná rybka podobná okounu.', 'https://irybarstvi.cz/wp-content/uploads/2019/12/1-4.jpg'),
(7, 'JEŽDÍK ŽLUTÝ', 'Běžná velikost je 15-20 cm. Celoročně hájená ryba. Menší okounovitá ryba se žlutozeleno-černým pruhováním', 'https://www.rybarskyrozcestnik.cz/wp-content/uploads/2016/01/Gymnocephalus_schraetser2.jpg'),
(8, 'OKOUN ŘÍČNÍ', 'Běžná velikost je 15-20 cm. Hájení je od 1. ledna do 15. června. Menší dravá ryba obývající většinu našich vod.', 'https://www.zoochleby.cz/uploads/images/5973/large/004485-5973.jpg'),
(9, 'SLUNEČNICE PESTRÁ', 'Běžná velikost je 10-15 cm. Doba hájení není stanovena. Rybka s vysokým tělem, která se vyskytuje na řadě míst ČR, ale nikde není hojná.', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/Lepomis_gibbosus_slunecnice_pestra_02.jpg'),
(10, 'VRANKA OBECNÁ', 'Běžná velikost je 8-12 cm. Celoročně hájená ryba. Drobná rybka žijící u dna proudících vod.', 'https://upload.wikimedia.org/wikipedia/commons/2/28/Cottus_gobio_%28in_situ%29.jpg'),
(11, 'VRANKA PRUHOPLOUTVÁ', 'Běžná velikost je 8-12 cm. Celoročně hájená ryba. Drobná rybka žijící u dna čistých proudících vod na severní Moravě.', 'https://g.denik.cz/32/89/vranka-111212_denik-630-16x9.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$10$V.p5A0cr3U51MzZHQWnxe.kE5Y2AGIf/w15wtJMEenJyIcohM1afe', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1639910617, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Struktura tabulky `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `vlastni_ulovky`
--

CREATE TABLE `vlastni_ulovky` (
  `id_ulovku` int(11) NOT NULL,
  `nazev_ulovku` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `delka_ulovku` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_ulovku` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `vlastni_ulovky`
--

INSERT INTO `vlastni_ulovky` (`id_ulovku`, `nazev_ulovku`, `delka_ulovku`, `obrazek_ulovku`) VALUES
(2, 'kapr', '75', 'https://irybarstvi.cz/wp-content/uploads/2020/02/hlavni.jpg'),
(3, 'sumec', '130', 'https://irybarstvi.cz/wp-content/uploads/2021/09/243006232_956336134947722_2094627742662590102_n.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `volnoostni`
--

CREATE TABLE `volnoostni` (
  `id_volnoostni` int(11) NOT NULL,
  `nazev_volnoostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `popis_volnoostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `obrazek_volnoostni` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `volnoostni`
--

INSERT INTO `volnoostni` (`id_volnoostni`, `nazev_volnoostni`, `popis_volnoostni`, `obrazek_volnoostni`) VALUES
(1, 'KOLJUŠKA TŘÍOSTNÁ', 'Běžná velikost je 6 cm. Doba hájení není stanovena. Drobná exotická rybka s trny na hřbetě ', 'https://www.crsmsodry.cz/wp-content/uploads/2018/07/gasterosteus_aculeatus_koljuska-triostna_01.jpg');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `bezostni`
--
ALTER TABLE `bezostni`
  ADD PRIMARY KEY (`id_bezostni`);

--
-- Indexy pro tabulku `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `holobrisi`
--
ALTER TABLE `holobrisi`
  ADD PRIMARY KEY (`id_holobrisi`);

--
-- Indexy pro tabulku `hrdloploutvi`
--
ALTER TABLE `hrdloploutvi`
  ADD PRIMARY KEY (`id_hrdloploutvi`);

--
-- Indexy pro tabulku `jeseteri`
--
ALTER TABLE `jeseteri`
  ADD PRIMARY KEY (`id_jeseteri`);

--
-- Indexy pro tabulku `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `maloostni`
--
ALTER TABLE `maloostni`
  ADD PRIMARY KEY (`id_maloostni`);

--
-- Indexy pro tabulku `ostnoploutvi`
--
ALTER TABLE `ostnoploutvi`
  ADD PRIMARY KEY (`id_ostnoploutvi`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexy pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexy pro tabulku `vlastni_ulovky`
--
ALTER TABLE `vlastni_ulovky`
  ADD PRIMARY KEY (`id_ulovku`);

--
-- Indexy pro tabulku `volnoostni`
--
ALTER TABLE `volnoostni`
  ADD PRIMARY KEY (`id_volnoostni`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `bezostni`
--
ALTER TABLE `bezostni`
  MODIFY `id_bezostni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pro tabulku `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `holobrisi`
--
ALTER TABLE `holobrisi`
  MODIFY `id_holobrisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `hrdloploutvi`
--
ALTER TABLE `hrdloploutvi`
  MODIFY `id_hrdloploutvi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `jeseteri`
--
ALTER TABLE `jeseteri`
  MODIFY `id_jeseteri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `maloostni`
--
ALTER TABLE `maloostni`
  MODIFY `id_maloostni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pro tabulku `ostnoploutvi`
--
ALTER TABLE `ostnoploutvi`
  MODIFY `id_ostnoploutvi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `vlastni_ulovky`
--
ALTER TABLE `vlastni_ulovky`
  MODIFY `id_ulovku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `volnoostni`
--
ALTER TABLE `volnoostni`
  MODIFY `id_volnoostni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
