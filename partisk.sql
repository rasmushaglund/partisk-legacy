-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2014 at 11:31 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `partisk`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party_id` int(11) NOT NULL,
  `answer` varchar(20) CHARACTER SET latin1 NOT NULL,
  `question_id` int(11) NOT NULL,
  `source` text COLLATE utf8_swedish_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8_swedish_ci,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL,
  `approved_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=230 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `party_id`, `answer`, `question_id`, `source`, `date`, `created_by`, `deleted`, `updated_by`, `created_date`, `updated_date`, `description`, `approved`, `approved_by`, `approved_date`) VALUES
(7, 4, 'nej', 14, 'http://politik.piratpartiet.se/patent-2/', '2013-09-14 22:00:00', 2, 0, 2, '2013-10-21 12:35:49', '2013-11-27 19:44:06', '', 1, 2, '2013-11-27 19:44:06'),
(8, 4, 'ja', 15, 'http://politik.piratpartiet.se/fra/', '2013-09-14 22:00:00', 2, 0, 2, '2013-10-21 12:35:49', '2013-11-27 19:44:20', '', 1, 2, '2013-11-27 19:44:20'),
(10, 2, 'nej', 17, 'http://www.moderat.se/eu/euron', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(11, 3, 'ja', 17, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/euro/', '2013-12-08 16:28:54', 2, 1, 2, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(12, 9, 'nej', 17, 'http://www.mp.se/politik/eu-och-euro', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(13, 4, 'nej', 17, 'http://politik.piratpartiet.se/eu/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(14, 6, 'nej', 17, 'http://kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Euron/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(15, 5, 'nej', 17, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/EU/Politik-A---O/EMU/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(16, 8, 'nej', 17, 'https://sverigedemokraterna.se/?page_id=11454', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(18, 7, 'nej', 17, 'http://www.vansterpartiet.se/politik/euron-2/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(19, 7, 'nej', 18, 'http://www.vansterpartiet.se/politik/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(20, 7, 'ja', 19, 'http://www.vansterpartiet.se/politik/abort/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(21, 7, 'ja', 20, 'http://www.riksdagen.se/sv/Dokument-Lagar/Forslag/Motioner/Barnfattigdom_H102-8255882D-BC55-440F-914F-8B5C4C20EA21/?text=true', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 19:47:08', '"Riksdagen beslutar vad som anförs i motionen om att riksnormen för försörjningsstöd bör höjas med 300 kronor i månaden per barn."', 1, 0, '0000-00-00 00:00:00'),
(22, 7, 'ja', 21, 'http://www.vansterpartiet.se/politik/dodshjalp/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(23, 7, 'nej', 22, 'http://www.vansterpartiet.se/politik/abort/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 19:45:40', '"Vänsterpartiet vill även att möjligheten till dispens för barn under 18 år att ingå äktenskap ska tas bort."', 1, 0, '0000-00-00 00:00:00'),
(24, 6, 'ja', 19, 'http://kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Abort/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(25, 8, 'nej', 23, 'https://sverigedemokraterna.se/?page_id=10893', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(26, 8, 'ja', 24, 'https://sverigedemokraterna.se/?page_id=10893', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(27, 3, 'ja', 19, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/abort/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(28, 3, 'ja', 25, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/karnkraft/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(29, 3, 'nej', 26, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/karnkraft/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(30, 3, 'ja', 27, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/nato/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(31, 6, 'nej', 28, 'http://kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Gardsforsaljning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(32, 6, 'ja', 29, 'http://kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Modersmalsundervisning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(33, 5, 'ja', 19, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Sociala-fragor-vard-och-omsorg/Politik-A---', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(34, 5, 'ja', 30, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Infrastruktur-och-trafik/Politik-A---O/Alko', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(35, 5, 'ja', 31, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Sociala-fragor-vard-och-omsorg/Politik-A---', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(36, 5, '6', 32, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Skola-och-utbildning/Politik-A---O/Betyg/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 20:16:37', '"Centerpartiet har tillsammans med Alliansen [...] infört en ny betygsskala i sex steg och eleverna får nu betyg från år 6"', 1, 0, '0000-00-00 00:00:00'),
(37, 5, 'ja', 21, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Sociala-fragor-vard-och-omsorg/Politik-A---', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(38, 1, 'ja', 19, 'http://www.socialdemokraterna.se/Webben-for-alla/S-kvinnor/S-kvinnor/Var-politik/Var-politik-A-O/Abort/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 08:24:55', '', 1, 0, '0000-00-00 00:00:00'),
(39, 8, 'ja', 19, 'http://sverigedemokraterna.se/?page_id=10893', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(40, 2, 'ja', 19, 'http://www.moderat.se/debatt/ulrika-karlsson-orovackande-utveckling-i-synen-pa-abort-i-europa', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(41, 1, '6', 32, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Skola/Betyg/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 20:14:20', '"Betyg i grundskolan ska finnas från årskurs 6"', 1, 0, '0000-00-00 00:00:00'),
(42, 2, '6', 32, 'http://www.moderat.se/skola-och-utbildning/grundskolan', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 20:15:38', '"Dessutom har ett nytt betygssystem införts och från och med hösten 2012 ges betyg från årskurs 6."', 1, 0, '0000-00-00 00:00:00'),
(43, 3, '4', 32, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/betyg/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 20:15:59', '"Vi vill [...] Införa betyg från åk 4"', 1, 0, '0000-00-00 00:00:00'),
(44, 6, '6', 32, 'http://kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Betyg/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 20:18:06', '"Från höstterminen 2012 infördes betyg från årskurs sex, det tycker vi är bra för att tydliggöra kunskapsmål."', 1, 0, '0000-00-00 00:00:00'),
(45, 7, '9', 32, 'http://www.vansterpartiet.se/politik/betyg-2/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 20:16:57', '"Den typ av betyg vi istället vill se är ett intyg och omdöme som en elev får med sig efter att ha avslutat en utbildning och det första betyget ska då ges i årskurs 9."', 1, 0, '0000-00-00 00:00:00'),
(46, 8, '4', 32, 'http://www.riksdagen.se/sv/Dokument-Lagar/Forslag/Motioner/Betyg-fran-arskurs-4_GZ02Ub507/?text=true', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-21 12:35:49', '2013-10-22 20:17:48', '"Vi menar dels att betyg skall införas redan i årskurs 4 i grundskolan [...]"', 1, 0, '0000-00-00 00:00:00'),
(47, 1, 'ja', 30, 'http://www.socialdemokraterna.se/Webben-for-alla/Partidistrikt/Kalmar/MediaN/Nyhetsarkiv/Alkolas-kan', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(49, 3, 'nej', 22, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/aktenskap/', '2013-12-07 23:00:00', 2, 0, 2, '2013-10-21 12:35:49', '2013-12-17 09:32:13', '"Dispensmöjligheten att ingå äktenskap före 18 års ålder bör avskaffas."', 0, 0, '0000-00-00 00:00:00'),
(50, 1, 'ja', 29, 'http://www.socialdemokraterna.se/Webben-for-alla/S-kvinnor/S-kvinnor-i-Jonkopings-lan/Var-Politik/A-', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(51, 3, 'ja', 29, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/modersmalsundervisning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(52, 6, 'ja', 29, 'http://kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Modersmalsundervisning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(53, 8, 'nej', 29, 'http://sverigedemokraterna.se/?page_id=10893', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(54, 1, 'ja', 15, 'http://www.socialdemokraterna.se/Webben-for-alla/Partidistrikt/Goteborg/Politik/Var-politik-A-till-O', '2013-12-08 16:28:54', 2, 1, 2, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(55, 2, 'nej', 15, 'http://www.moderat.se/forsvar-och-krisberedskap/signalspaning', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(56, 3, 'nej', 15, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/fra-forsvarets-radioanstalt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(57, 5, 'nej', 15, 'http://www.centerpartiet.se/Nyheter/Arkiv-2007/Annie-om-signalspaning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(58, 6, 'nej', 15, 'http://www.overtornea.kristdemokraterna.se/web-Overtornea-content/web-Overtornea-leftmenu/FOV16-0002', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(59, 1, 'nej', 15, 'http://www.dn.se/Pages/Article.aspx?id=1034640&epslanguage=sv', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(60, 7, 'ja', 15, 'http://www.vansterpartiet.se/v-och-mp-motsatter-sig-okad-signalspaning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(61, 9, 'ja', 15, 'http://www.mp.se/politik/internet-och-integritet', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(62, 1, 'nej', 28, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Sociala-fragor/Alkohol/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(63, 2, 'ja', 28, 'http://www.moderat.se/sundsvall/alkohol-och-narkotikafragor', '2013-12-07 23:00:00', 2, 0, 2, '2013-10-21 12:35:49', '2014-01-18 16:14:00', '', 0, 0, '0000-00-00 00:00:00'),
(64, 3, 'nej', 28, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/alkohol/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(65, 5, 'ja', 28, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Jobb-och-arbetsliv/Politik-A---O/Gardsforsa', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(66, 8, 'ja', 28, 'https://sverigedemokraterna.se/?p=4043‎', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(67, 9, 'nej', 28, 'http://www.newsmill.se/artikel/2012/03/23/folkh-lsan-m-ste-g-f-re-g-rdsf-rs-ljning', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(68, 1, 'ja', 26, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Energi/Karnkraft/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(69, 1, 'nej', 25, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Energi/Karnkraft/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(70, 2, 'nej', 26, 'http://www.moderat.se/sundsvall/energi', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(71, 2, 'ja', 25, 'http://www.moderat.se/sundsvall/energi', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(72, 5, 'ja', 26, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Miljo-energi-och-klimat/Politik-A---O/Karnk', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(73, 5, 'nej', 25, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Miljo-energi-och-klimat/Politik-A---O/Karnk', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(74, 6, 'nej', 26, 'http://kristdemokraterna.se/VarPolitik/Politikomraden/Miljo-och-energi/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(75, 7, 'ja', 26, 'http://www.vansterpartiet.se/fordjupning/energi-fordjupning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(76, 7, 'nej', 25, 'http://www.vansterpartiet.se/fordjupning/energi-fordjupning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(77, 9, 'ja', 26, 'http://www.mp.se/politik/karnkraft', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(78, 9, 'nej', 25, 'http://www.mp.se/politik/karnkraft', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(79, 8, 'nej', 26, 'http://sverigedemokraterna.se/?page_id=10893', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(80, 8, 'ja', 25, 'http://sverigedemokraterna.se/?page_id=10893', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(81, 1, 'ja', 31, 'http://www.socialdemokraterna.se/Webben-for-alla/Partidistrikt/Goteborg/Politik/Var-politik-A-till-O', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(82, 3, 'ja', 31, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/apoteksmarknaden/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(83, 5, 'ja', 31, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Sociala-fragor-vard-och-omsorg/Politik-A---', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(84, 3, 'nej', 21, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/dodshjalp/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(85, 5, 'nej', 21, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Sociala-fragor-vard-och-omsorg/Politik-A---', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(86, 6, 'nej', 21, 'http://kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Dodshjalp/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(87, 1, 'nej', 21, 'http://www.svt.se/nyheter/sverige/partier-sager-nej-till-aktiv-dodshjalp', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(88, 2, 'nej', 21, 'http://www.svt.se/nyheter/sverige/partier-sager-nej-till-aktiv-dodshjalp', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(89, 9, 'nej', 21, 'http://www.svt.se/nyheter/sverige/partier-sager-nej-till-aktiv-dodshjalp', '2010-04-06 22:00:00', 2, 0, 2, '2013-10-21 12:35:49', '2013-11-27 20:23:55', '', 1, 2, '2013-11-27 20:23:55'),
(90, 1, 'nej', 27, 'http://www.socialdemokraterna.se/Internationellt/Arkiv/Gamla-internationella-A-O/NATO/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(91, 2, 'ja', 27, 'http://www.moderat.se/sundsvall/forsvaret', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(92, 5, 'nej', 27, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Forsvars--och-sakerhetspolitik/Politik-A---', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(93, 6, 'nej', 27, 'http://www.kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Nato/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(94, 7, 'nej', 27, 'http://www.vansterpartiet.se/politik/forsvaret/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(95, 8, 'nej', 27, 'http://sverigedemokraterna.se/?page_id=10893', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(96, 9, 'nej', 27, 'http://www.mp.se/karlskrona/just-nu/ja-till-fred-nej-till-nato', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(97, 5, 'nej', 24, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Infrastruktur-och-trafik/Politik-A---O/Jarn', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(98, 5, 'ja', 23, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Utrikes--och-bistandsfragor/Politik-A---O/E', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(99, 3, 'ja', 23, 'http://www.folkpartiet.se/vara-politiker/cecilia-malmstrom/nar-jag-var-eu-minister/artiklar/turkiet-', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(100, 2, 'ja', 18, 'http://www.moderat.se/debatt/vinstforbud-vore-ett-misstag', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(101, 7, 'nej', 18, 'http://www.dn.se/nyheter/sverige/v-kraver-stopp-for-vinster-i-valfarden/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(102, 9, 'nej', 18, 'http://www.mp.se/haninge/just-nu/forbud-mot-vinster-i-valfarden-beslutad-pa-kongressen', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(124, 1, 'ja', 14, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/abort/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-21 12:35:49', NULL, NULL, 1, 0, '0000-00-00 00:00:00'),
(130, 3, 'ja', 68, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/arbetsloshetsforsakring/', '2013-12-08 16:28:54', 2, 1, 2, '2013-10-22 10:19:01', NULL, '"Att dagens a-kassor ska ersättas med en gemensam arbetslöshetskassa i statlig regi som omfattar alla som arbetar."', 1, 0, '0000-00-00 00:00:00'),
(131, 6, 'ja', 68, 'http://www.kristdemokraterna.se/Media/Nyhetsarkiv/Vi-satsar-tre-miljarder-pa-nya-reformer/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:20:34', NULL, '"Det är dags att införa en obligatorisk a-kassa i Sverige. Alla som arbetar och uppfyller villkoren för försäkringen bör omfattas av en arbetslöshetsförsäkring med rätt till inkomstrelaterad ersättning om man blir arbetslös."', 1, 0, '0000-00-00 00:00:00'),
(132, 5, 'ja', 68, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Socialforsakringar-och-bidrag/Politik-A---O/A-kassaarbetsloshetsersattning/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-22 10:22:01', '2013-10-22 10:22:12', '"För Centerpartiet är en obligatorisk arbetslöshetsförsäkring en viktig del i en flexibel arbetsmarknadsmodell."', 1, 0, '0000-00-00 00:00:00'),
(133, 9, 'ja', 68, 'http://www.dn.se/nyheter/politik/mp-vill-att-a-kassan-ska-bli-obligatorisk/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:25:05', NULL, '"Inför en obligatorisk, statlig arbetslöshetsförsäkring som slås ihop med sjukförsäkringen. Låt en ny statlig myndighet sköta sjukpenning, a-kassa och försörjningsstöd (socialbidrag). Det föreslår miljöpartiet, som samtidigt slutar sträva efter en medborgarlön."', 1, 0, '0000-00-00 00:00:00'),
(134, 1, 'nej', 68, 'http://www.dn.se/debatt/hog-tid-for-nytankande-om-den-svenska-a-kassan/', '2013-11-06 23:00:00', 6, 0, 2, '2013-10-22 10:27:26', '2013-11-07 22:17:36', '', 1, 2, '2013-11-07 22:17:36'),
(135, 7, 'nej', 68, 'http://www.dn.se/debatt/hog-tid-for-nytankande-om-den-svenska-a-kassan/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:27:59', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(136, 8, 'ja', 68, 'http://sverigedemokraterna.se/wp-content/uploads/2013/08/Sverigedemokraterna-Inriktningsprogram-2011-Arbetsmarknad.pdf', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:31:53', NULL, '"Vi anser [...] att a-kassan görs till en obligatorisk och skattefinansierad inkomstförsäkring som sköts och administreras av Försäkringskassan."', 1, 0, '0000-00-00 00:00:00'),
(137, 3, 'nej', 70, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/alkohol/', '2013-10-21 22:00:00', 2, 0, 2, '2013-10-22 10:36:28', '2013-12-02 19:12:38', '"Vi vill [...] Behålla Systembolagets monopol."', 1, 2, '2013-12-02 19:12:38'),
(138, 6, 'nej', 70, 'http://www.kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Alkohol/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:38:45', NULL, '"Kristdemokraterna värnar om Systembolagets försäljningsmonopol [...]"', 1, 0, '0000-00-00 00:00:00'),
(139, 5, 'nej', 70, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Sociala-fragor-vard-och-omsorg/Politik-A---O/Alkoholpolitik/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:39:39', NULL, '"Centerpartiet vill [...] Behålla Systembolaget som statligt monopol."', 1, 0, '0000-00-00 00:00:00'),
(140, 1, 'nej', 70, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Sociala-fragor/Alkohol/', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-22 10:44:24', '2013-12-08 14:03:31', '"Vi slår vakt om Systembolagets monopol eftersom det motverkar en försäljning som inte går att kontrollera [...]"', 1, 2, '2013-12-08 14:03:03'),
(141, 8, 'nej', 70, 'http://sverigedemokraterna.se/var-politik/var-politik-a-till-o/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:45:30', NULL, '"Vi önskar bevara Systembolagets alkoholmonopol [...]"', 1, 0, '0000-00-00 00:00:00'),
(142, 2, 'nej', 77, 'http://www.moderat.se/skola-och-utbildning/gymnasieskolan', '2012-06-25 22:00:00', 2, 0, 2, '2013-10-22 10:48:22', '2013-12-08 16:00:43', '"För de elever som väljer att läsa yrkesprogram eller lärlingsutbildning tas kravet på att läsa in högskolebehörighet bort."', 1, 2, '2013-12-08 16:00:43'),
(143, 1, 'ja', 77, 'http://www.socialdemokraterna.se/Webben-for-alla/Partidistrikt/Stockholm/Var-politik/Arkiv/A-O/Utbildning/Gymnasieskolan/', '2013-12-16 18:43:57', 2, 1, 2, '2013-10-22 10:49:51', '2013-12-11 22:33:12', '"Den viktigaste prioriteringen inom gymnasieskolan är att se till att alla elever går ut med goda kunskaper och högskolebehörighet."', 0, 2, '2013-12-02 19:12:52'),
(144, 3, 'nej', 77, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/gymnasieskolan/', '2013-10-21 22:00:00', 2, 0, 2, '2013-10-22 10:53:46', '2013-12-02 19:12:45', '"Eleverna ska kunna välja om de vill läsa in högskolebehörighet eller inte."', 1, 2, '2013-12-02 19:12:45'),
(145, 9, 'ja', 77, 'http://www.mp.se/just-nu/mp-vill-starka-lasandet-i-skolan', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:56:42', NULL, '"Miljöpartiet vill återinföra högskolebehörigheten [...]"', 1, 0, '0000-00-00 00:00:00'),
(146, 7, 'ja', 77, 'http://www.svt.se/nyheter/blocken-oense-om-behorighet-for-larlingar', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:58:20', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(147, 8, 'nej', 77, 'http://www.svt.se/nyheter/blocken-oense-om-behorighet-for-larlingar', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 10:58:52', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(148, 1, 'ja', 20, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Barn/', '2013-12-08 16:28:54', 2, 1, 2, '2013-10-22 19:44:46', NULL, '"Underhållsstödet höjs med 50 kronor per barn och månad, barnbidraget med 100 kronor per barn och månad."', 1, 0, '0000-00-00 00:00:00'),
(149, 1, 'ja', 51, 'http://www.teknikensvarld.se/2011/04/10/12461/juholt-sager-ja-till-hojd-bensinskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:00:18', NULL, '"På frågan ”Ska bensinskatten höjas?” svarar Juholt – utan att tveka – ”ja”."', 1, 0, '0000-00-00 00:00:00'),
(150, 2, 'nej', 51, 'http://www.dn.se/nyheter/politik/moderat-nej-till-hojd-bensinskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:01:26', NULL, '"Statsminister Fredrik Reinfeldt säger nej till fortsatt höjd bensinskatt. Det skulle kunna slå tillbaka mot klimatarbetet, tror han"', 1, 0, '0000-00-00 00:00:00'),
(151, 3, 'nej', 51, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/bensinskatt/', '2013-10-21 22:00:00', 2, 0, 2, '2013-10-22 20:02:41', '2013-11-27 21:42:44', '"Vi vill [...] Behålla bensinskatten oförändrad."', 1, 2, '2013-11-27 21:42:44'),
(152, 5, 'nej', 51, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Miljo-energi-och-klimat/Politik-A---O/Bensinpriset/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:04:08', NULL, '"Att sänka bensinskatten är dock inte en hållbar lösning på sikt, vare sig ekonomiskt eller miljömässigt."', 1, 0, '0000-00-00 00:00:00'),
(153, 9, 'ja', 51, 'http://www.mp.se/politik/bilar-och-bensinskatt', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:05:13', NULL, '"Miljöpartiet vill [...] höja bensinskatten och satsa på modernare bilar och bättre kollektivtrafik, och"', 1, 0, '0000-00-00 00:00:00'),
(154, 6, 'nej', 51, 'http://www.sydsvenskan.se/sverige/kd-ingen-hojning-av-bensinskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:11:25', NULL, '"Kristdemokraternas partiledare Göran Hägglund lovar att arbeta för att bensinskatten inte ska höjas under nästa mandatperiod."', 1, 0, '0000-00-00 00:00:00'),
(155, 8, 'nej', 51, 'http://sverigedemokraterna.se/var-politik/var-politik-a-till-o/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:13:10', NULL, '"Sverigedemokraterna vill ha ett stopp för fortsatta höjningar av drivmedelskatterna."', 1, 0, '0000-00-00 00:00:00'),
(156, 5, 'nej', 57, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:26:49', NULL, '"- Att föreslå lagstiftning är överflödigt. Det finns redan idag möjlighet för rektorer och arbetsgivare att själva bestämma om deras anställda ska få bära heltäckande slöja, säger Peter Svensson." ', 1, 0, '0000-00-00 00:00:00'),
(157, 3, 'ja', 57, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:28:41', NULL, '"I ett filmklipp som partiet producerade i augusti förra året säger partiledare Jan Björklund att lagarna och reglerna måste förtydligas. Förbudet ska gälla både lärare och elever:\r\n\r\n- Det är orimligt att en person med täckt ansikte ska jobba med barn i en förskola, säger Björklund i filmklippet."', 1, 0, '0000-00-00 00:00:00'),
(158, 9, 'nej', 57, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:31:52', NULL, '"- Vi vill inte förbjuda niqab på allmänna platser, säger Maria Ferm."', 1, 0, '0000-00-00 00:00:00'),
(159, 2, 'ja', 57, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:34:11', NULL, '"I ett mejl till Expo skriver Moderaternas pressekreterare Edna Cedervall att partiet inte tror på ett förbud mot heltäckande slöja bland eleverna i skolorna. Däremot vill M öppna för ett förbud mot "lärare och förskollärare att dölja sitt ansikte i sin yrkesutövning"."', 1, 0, '0000-00-00 00:00:00'),
(160, 1, 'ja', 57, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:34:49', NULL, '"Men det kan finnas vissa situationer, t.ex. i vissa yrken, där det kan ha konsekvenser om man döljer hela ansiktet. Vi tycker inte att burka ska bäras i skolan, vare sig av lärare eller av elever."', 1, 0, '0000-00-00 00:00:00'),
(161, 8, 'ja', 57, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-22 20:35:31', NULL, '"Sverigedemokraterna välkomnade det franska förbudet mot heltäckande slöjor på allmän plats. De tar tydligt ställning mot den heltäckande slöjan och förknippar plagget med terrorism. Sverige bör följa i Frankrikes fotspår, menar Åkesson i ett pressmeddelande."', 1, 0, '0000-00-00 00:00:00'),
(162, 7, 'nej', 57, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-08 16:28:54', 2, 0, 2, '2013-10-22 20:35:57', '2013-10-22 20:36:09', '"Vänsterpartiet skriver på sin sajt att det inte ska finnas något förbud mot burka, niqab eller liknande i vare sig skolan eller samhället. Samtidigt är partiet mån om att ingen ska tvingas att bära ett klädesplagg de inte vill ha:"', 1, 0, '0000-00-00 00:00:00'),
(163, 6, 'nej', 59, 'http://www.kristdemokraterna.se/VarPolitik/Korta-Svar-AO/Formogenhetsskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 09:54:27', NULL, '"En förmögenhetsskatt är en form av dubbelbeskattning eftersom man redan har betalat skatt på inkomsten, och ska alltså inte återinföras i någon form."', 1, 0, '0000-00-00 00:00:00'),
(164, 3, 'nej', 59, 'https://www.folkpartiet.se/var-politik/var-politik-a-o/formogenhetsskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 09:55:11', NULL, '"Vi vill [...] Inte återinföra förmögenhetsskatten, som drev kapital och jobb ut ur Sverige."', 1, 0, '0000-00-00 00:00:00'),
(165, 9, 'ja', 59, 'http://www.di.se/artiklar/2010/4/27/rapport-rodgrona-aterinfor-formogenhetsskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 09:58:08', NULL, '"Om de rödgröna partierna vinner höstens riksdagsval så kommer förmögenhetsskatten att återinföras, erfar SVT:s Rapport. Detta sedan Miljöpartiet, som tidigare motsatt sig förslaget, har ändrat sig."', 1, 0, '0000-00-00 00:00:00'),
(166, 1, 'ja', 59, 'http://www.di.se/artiklar/2010/4/27/rapport-rodgrona-aterinfor-formogenhetsskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 09:58:37', NULL, '"Om de rödgröna partierna vinner höstens riksdagsval så kommer förmögenhetsskatten att återinföras [...]"', 1, 0, '0000-00-00 00:00:00'),
(167, 7, 'ja', 59, 'http://www.di.se/artiklar/2010/4/27/rapport-rodgrona-aterinfor-formogenhetsskatt/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 09:59:06', NULL, '"Om de rödgröna partierna vinner höstens riksdagsval så kommer förmögenhetsskatten att återinföras [...]"', 1, 0, '0000-00-00 00:00:00'),
(168, 5, 'nej', 59, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Ekonomi-och-skatter/Politik-A---O/Ekonomisk-politik/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 10:00:11', NULL, '"Andra betydelsefulla reformer som har förbättrat den svenska konkurrenskraften är avskaffad förmögenhetsskatt [...]"', 1, 0, '0000-00-00 00:00:00'),
(169, 1, 'nej', 75, 'www.socialdemokraterna.se/upload/Radslag/Skola/dokument/Skolplattform.pdf', '2007-11-15 23:00:00', 2, 0, 2, '2013-10-27 10:20:47', '2013-12-04 14:02:10', '"[...] men vi säger nej till förstatligande av skolan."\r\n', 1, 2, '2013-12-04 14:02:10'),
(170, 3, 'ja', 75, 'https://www.folkpartiet.se/var-politik/var-politik-a-o/statlig-skola/', '2013-10-26 22:00:00', 2, 0, 2, '2013-10-27 10:24:23', '2013-12-04 14:02:17', '"Vi vill [...] Införa ett modernt statligt huvudmannaskap."', 1, 2, '2013-12-04 14:02:17'),
(171, 7, 'ja', 75, 'http://www.dn.se/nyheter/politik/vansterpartiet-vill-forstatliga-skolan/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 10:29:00', NULL, '"V:s partistyrelse ville avvakta en parlamentarisk utredning om kommunaliseringens effekter. Men kongressen valde att sätta ner foten redan nu. Beslutet fattades med röstsiffrorna 125–87."', 1, 0, '0000-00-00 00:00:00'),
(172, 8, 'ja', 75, 'http://www.di.se/artiklar/2012/5/6/sd-v-och-fp-vill-forstatliga-skolan/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 10:30:49', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(173, 5, 'nej', 75, 'http://www.di.se/artiklar/2012/5/6/sd-v-och-fp-vill-forstatliga-skolan/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 10:31:42', NULL, '"Jag kommer aldrig att tumma på det fria skolvalet, sade C-ledaren Annie Lööf [...]"', 1, 0, '0000-00-00 00:00:00'),
(174, 1, 'nej', 53, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Upphovsratt-och-fildelning/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 14:53:15', NULL, '"Vi tar starkt avstånd från dem som anser att det rent principiellt ska vara tillåtet att ladda ned upphovsrättsskyddat material utan att den som har skapat filmen, musiken eller boken får betalt."', 1, 0, '0000-00-00 00:00:00'),
(175, 4, 'ja', 53, 'http://politik.piratpartiet.se/fildelning-2/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 14:57:25', NULL, '"Piratpartiet anser att fri, icke-kommersiell inhämtning, nyttjande, förädlande och spridning av kultur ska uppmuntras."', 1, 0, '0000-00-00 00:00:00'),
(176, 9, 'ja', 53, 'http://www.mp.se/om/partiprogram/manniskan', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 14:59:25', NULL, '"Kopiering och fildelning för privat bruk ska inte vara straffbart, samtidigt som upphovsmän ska ha rätt till en rimlig ersättning."', 1, 0, '0000-00-00 00:00:00'),
(177, 2, 'nej', 53, 'http://www.dn.se/nyheter/sverige/sa-tycker-partierna-om-upphovsratten/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:01:25', NULL, '"Det är viktigt med möjligheten att göra kopior för privat bruk från lagliga digitala förlagor, men vi har inget förslag om att legalisera fildelning från olagliga förlagor. Det är viktigt att upphovsrätten respekteras."', 1, 0, '0000-00-00 00:00:00'),
(178, 3, 'nej', 53, 'http://www.dn.se/nyheter/sverige/sa-tycker-partierna-om-upphovsratten/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:02:10', NULL, '"Nej, det anser vi inte är en bra lösning."', 1, 0, '0000-00-00 00:00:00'),
(179, 5, 'nej', 53, 'http://www.dn.se/nyheter/sverige/sa-tycker-partierna-om-upphovsratten/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:02:57', NULL, '"Vi vill ta bort förbudet mot nedladdning av upphovsrättsskyddade verk för privat bruk. En sådan kriminalisering är inte teknikneutral eftersom samma regler inte gäller för annan kopiering för privat bruk. Tillgängliggörande av upphovsrättsskyddat material ska även fortsättningsvis vara förbjudet."', 1, 0, '0000-00-00 00:00:00'),
(180, 6, 'nej', 53, 'http://www.dn.se/nyheter/sverige/sa-tycker-partierna-om-upphovsratten/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:03:20', NULL, '"Nej. Vi anser att upphovsmännen har rätt till sina verk, även om de finns tillgängliga på internet. I de fall upphovsmännen medger fildelning är det naturligtvis okej."', 1, 0, '0000-00-00 00:00:00'),
(181, 7, 'ja', 53, 'http://www.dn.se/nyheter/sverige/sa-tycker-partierna-om-upphovsratten/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:04:05', NULL, '"Ja, debatten om fildelningen är i akut behov av att byta spår."', 1, 0, '0000-00-00 00:00:00'),
(182, 8, 'nej', 53, 'http://sverigedemokraterna.se/var-politik/var-politik-a-till-o/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:05:06', NULL, '"Vad gäller frågan om spridande av upphovsrättsskyddat material står Sverigedemokraterna upp för såväl äganderätten som upphovsrätten."', 1, 0, '0000-00-00 00:00:00'),
(183, 5, 'nej', 24, 'http://www.alliansen.se/2012/05/att-aterreglera-jarnvagen-hotar-jobben/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:12:08', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(184, 3, 'nej', 24, 'http://www.alliansen.se/2012/05/att-aterreglera-jarnvagen-hotar-jobben/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:12:34', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(185, 2, 'nej', 24, 'http://www.alliansen.se/2012/05/att-aterreglera-jarnvagen-hotar-jobben/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:12:46', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(186, 6, 'nej', 24, 'http://www.alliansen.se/2012/05/att-aterreglera-jarnvagen-hotar-jobben/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:13:03', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(187, 7, 'ja', 24, 'http://www.vansterpartiet.se/aterreglera-jarnvagen/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:14:15', NULL, '"Vi föreslår en rad förändringar, bland annat en återreglering av järnvägen som innebär att SJ får ensamrätt för kommersiell trafik på stambanorna."', 1, 0, '0000-00-00 00:00:00'),
(188, 1, 'ja', 24, 'http://www.svt.se/nyheter/sverige/lat-trafikverket-ta-hand-om-jarnvagen', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:15:06', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(189, 9, 'ja', 24, 'http://www.svt.se/nyheter/sverige/lat-trafikverket-ta-hand-om-jarnvagen', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 15:15:42', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(190, 1, 'ja', 78, 'http://www.dn.se/nyheter/sverige/krav-pa-republik-far-laggas-pa-hyllan/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:37:08', NULL, '"Det största partiet, Socialdemokraterna, har också republikkravet inskrivet i sitt principprogram."', 1, 0, '0000-00-00 00:00:00'),
(191, 3, 'nej', 78, 'http://www.folkpartiet.se/var-politik/var-politik-a-o/monarki-och-republik/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:39:58', NULL, '"Vi vill [...] Behålla nuvarande kompromiss om Sveriges statsskick."', 1, 0, '0000-00-00 00:00:00'),
(192, 6, 'nej', 78, 'Därför ska Sveriges statsskick även fortsättningsvis vara konstitutionell monarki.', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:41:26', NULL, '"Därför ska Sveriges statsskick även fortsättningsvis vara konstitutionell monarki."', 1, 0, '0000-00-00 00:00:00'),
(193, 2, 'nej', 78, 'http://www.moderat.se/demokrati/sveriges-grundlagar', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:43:12', NULL, '"Sveriges statsskick, monarkin, ska bevaras."', 1, 0, '0000-00-00 00:00:00'),
(194, 7, 'ja', 78, 'http://www.vansterpartiet.se/politik/monarkin/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:44:33', NULL, '"Vänsterpartiet är aldrig berett att kompromissa om demokratin. Därför anser vi att Sverige bör vara republik med en demokratiskt vald statschef."', 1, 0, '0000-00-00 00:00:00'),
(195, 8, 'nej', 78, 'http://sverigedemokraterna.se/var-politik/var-politik-a-till-o/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:45:38', NULL, '"Vi ställer oss positiva till dagens konstitutionella monarki med monarken som Sveriges statschef."', 1, 0, '0000-00-00 00:00:00'),
(196, 5, 'nej', 78, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Grundlag-och-samhallsutveckling/Politik-A---O/Monarki/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:46:59', NULL, '"Centerpartiet vill [...] bevara monarkin i dess nuvarande form – ett kungahus som endast har en representativ funktion."', 1, 0, '0000-00-00 00:00:00'),
(197, 9, 'ja', 78, 'http://www.aftonbladet.se/nyheter/valet2010/article12322089.ab', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:48:51', NULL, '"– Som demokrat måste man vara kritisk till monarkin. I grunden är det inte demokratiskt med arvstro, sa Peter Eriksson i SVT:s partiledarutfrågning i morse."', 1, 0, '0000-00-00 00:00:00'),
(198, 9, 'ja', 56, 'http://www.mp.se/om/partiprogram/valfarden', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:55:43', NULL, '"Papperslösa och asylsökande ska ha rätt till vård."', 1, 0, '0000-00-00 00:00:00'),
(199, 1, 'ja', 56, 'http://www.socialdemokraterna.se/Webben-for-alla/Landsting/Vastsverige/Kongressnyheter/Ja-till-vard-for-papperslosa/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:56:49', NULL, '"På den socialdemokratiska partikongressen beslutades att även papperslösa ska kunna få vård efter behov, inte enbart akutsjukvård som är fallet idag."', 1, 0, '0000-00-00 00:00:00'),
(200, 5, 'ja', 56, 'http://www.centerpartiet.se/Centerpolitik/Politikomraden/Sociala-fragor-vard-och-omsorg/Politik-A---O/Papperslosa/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 21:57:38', NULL, '"Centerpartiet [...] Att papperslösa och gömda ska ha rätt till vård på motsvarande villkor som övriga befolkningen"', 1, 0, '0000-00-00 00:00:00'),
(201, 8, 'nej', 56, 'http://sverigedemokraterna.se/2012/07/06/betala-inte-for-vard-till-dem-som-vistas-olagligt-i-sverige/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 22:02:59', NULL, '"Betala inte för vård till dem som vistas olagligt i Sverige"', 1, 0, '0000-00-00 00:00:00'),
(202, 2, 'ja', 56, 'http://www.dn.se/nyheter/politik/alliansen-papperslosa-kan-fa-vard/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 22:04:01', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(203, 3, 'ja', 56, 'http://www.dn.se/nyheter/politik/alliansen-papperslosa-kan-fa-vard/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 22:04:16', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(204, 6, 'ja', 56, 'http://www.dn.se/nyheter/politik/alliansen-papperslosa-kan-fa-vard/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-27 22:04:42', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(205, 1, 'ja', 60, 'http://www.socialdemokraterna.se/Var-politik/Var-politik-A-till-O/Pensionar/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-28 18:48:14', NULL, '"Idag betalar en pensionär mer i skatt än en löntagare med samma inkomst. Men pension är uppskjuten lön. Det innebär att den ska beskattas lika som lön. Allt annat är oacceptabelt."', 1, 0, '0000-00-00 00:00:00'),
(206, 9, 'ja', 60, 'http://www.mp.se/sites/default/files/mp_budgetmotion_hosten_2013.pdf', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-28 18:53:52', NULL, '"Vi delar inte alliansregeringens principiella synsätt att\r\ndet ska vara högre skatt på pension än på lön."', 1, 0, '0000-00-00 00:00:00'),
(207, 7, 'ja', 60, 'http://haninge.vansterpartiet.se/2010/07/15/lars-ohlys-tal-i-almedalen/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-28 18:55:58', NULL, '"Vi i Vänsterpartiet vill att alla ska betala samma skatt på samma inkomst. Arbetslösa, sjuka, föräldralediga och pensionärer ska betala samma skatt på en intjänad hundralapp som den som arbetar."', 1, 0, '0000-00-00 00:00:00'),
(208, 6, 'ja', 60, 'http://www.kristdemokraterna.se/VarPolitik/Korta-Svar-AO/', '2013-12-08 16:28:54', 2, 0, NULL, '2013-10-28 19:00:55', NULL, '"Kristdemokraterna vill på sikt sänka skatten för pensionärer så att den hamnar på samma nivå som för löntagare."', 1, 0, '0000-00-00 00:00:00'),
(212, 9, 'ja', 19, 'http://www.mp.se/sites/default/files/miljopartiets_partiprogram_2013_lagupplost.pdf', '2013-12-08 16:28:54', 2, 0, NULL, '2013-11-12 22:24:59', NULL, '"Miljöpartiet värnar kvinnors rätt till abort."', 1, 0, '0000-00-00 00:00:00'),
(213, 1, 'nej', 20, 'dsa', '2013-12-08 16:28:54', 2, 0, NULL, '2013-11-15 10:25:36', NULL, 'ads', 1, 0, '0000-00-00 00:00:00'),
(214, 1, 'bla', 20, 'asdsa', '2013-12-08 16:28:54', 2, 1, 2, '2013-11-15 10:32:17', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(215, 9, 'contributor svar3', 84, 'dsadsa', '2013-12-08 16:28:54', 6, 0, 6, '2013-12-02 19:41:25', '2013-12-02 20:46:38', 'sadsa', 1, 0, '0000-00-00 00:00:00'),
(216, 4, 'contributor svar 2', 84, 'dsaf', '2013-12-08 16:28:54', 6, 1, 6, '2013-12-02 19:41:59', NULL, 'adsads', 1, 0, '0000-00-00 00:00:00'),
(217, 9, 'nej', 84, 'bla', '2013-12-08 16:28:54', 6, 0, NULL, '2013-12-02 20:53:21', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(218, 5, 'ja', 68, 'dsadsa', '2013-12-08 16:28:54', 2, 0, NULL, '2013-12-05 14:23:10', NULL, 'ads', 1, 0, '0000-00-00 00:00:00'),
(219, 5, 'ja', 68, 'dsadsa', '2013-12-08 16:28:54', 2, 0, NULL, '2013-12-05 14:28:45', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(220, 5, 'ja', 70, 'dsadsa', '2013-12-08 16:28:54', 2, 0, NULL, '2013-12-05 18:18:50', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(221, 5, 'ja', 77, 'adsasdads', '2013-12-08 16:28:54', 2, 0, NULL, '2013-12-05 20:35:17', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(222, 4, 'ja', 77, 'dsadsadsa', '2013-12-08 16:28:54', 2, 0, NULL, '2013-12-05 20:35:34', NULL, '', 1, 0, '0000-00-00 00:00:00'),
(223, 1, 'sad 2,5år', 84, 'http://expo.se/2011/sa-tycker-riksdagspartierna-om-heltackande-slojor_3935.html', '2013-12-02 23:00:00', 2, 0, 2, '2013-12-11 11:02:13', '2013-12-11 11:02:50', 'ads', 1, 2, '2013-12-11 11:02:50'),
(224, 1, 'ja', 97, 'dsadsadsa', '2014-01-08 23:00:00', 2, 0, 2, '2014-01-10 18:53:48', '2014-01-10 19:07:19', 'dsa', 1, 2, '2014-01-10 19:07:19'),
(225, 1, 'blaj', 72, 'dsadsa', '2014-01-07 23:00:00', 2, 0, 2, '2014-01-15 20:45:08', '2014-01-15 20:45:12', 'sad', 1, 2, '2014-01-15 20:45:12'),
(226, 1, 'aaa', 98, 'sad', '2014-01-13 23:00:00', 2, 0, 2, '2014-01-18 21:54:16', '2014-01-18 21:54:57', '', 1, 2, '2014-01-18 21:54:57'),
(227, 1, 'ja', 100, 'dsa', '2014-01-01 23:00:00', 2, 0, 2, '2014-01-26 20:14:22', '2014-01-26 20:14:41', 'dsa', 1, 2, '2014-01-26 20:14:41'),
(228, 1, 'asdsad', 100, 'asd', '2013-12-31 23:00:00', 2, 0, 2, '2014-01-26 20:14:54', '2014-01-26 20:16:38', '', 1, 2, '2014-01-26 20:16:38'),
(229, 2, 'nej', 100, 'dsadsa', '2013-12-31 23:00:00', 2, 0, 2, '2014-01-26 20:29:52', '2014-01-26 20:30:30', '', 1, 2, '2014-01-26 20:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `answers_tags`
--

CREATE TABLE IF NOT EXISTS `answers_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `text` text NOT NULL,
  `ip` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `referer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `text`, `ip`, `date`, `referer`) VALUES
(1, 'asdasd', 'sad', 'sad', '127.0.0.1', '2014-01-18 16:53:16', 'http://localhost/Partisk/om'),
(2, 'asdasd', 'asd', 'sad', '127.0.0.1', '2014-01-18 16:54:41', 'http://localhost/Partisk/om'),
(3, 'asdasd', 'asdasd', 'asdasd', '127.0.0.1', '2014-01-18 16:55:49', 'http://localhost/Partisk/om');

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE IF NOT EXISTS `parties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `website` varchar(100) CHARACTER SET latin1 NOT NULL,
  `color` text COLLATE utf8_swedish_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `last_result_parliment` decimal(10,2) NOT NULL DEFAULT '0.00',
  `last_result_eu` decimal(10,2) NOT NULL DEFAULT '0.00',
  `updated_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8_swedish_ci,
  `short_name` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `name`, `website`, `color`, `created_by`, `deleted`, `last_result_parliment`, `last_result_eu`, `updated_by`, `created_date`, `updated_date`, `description`, `short_name`) VALUES
(1, 'socialdemokraterna', 'http://www.socialdemokraterna.se', '#ed1b34', 2, 0, '32.40', '44.55', 2, '2013-10-21 12:58:30', '2013-12-15 10:51:41', '', 'S'),
(2, 'moderaterna', 'http://www.modarat.se', '#66bee6', 2, 0, '30.00', '19.00', NULL, '2013-10-21 12:58:30', '0000-00-00 00:00:00', NULL, 'M'),
(3, 'folkpartiet', 'http://www.folkpartiet.se', '#004990', 2, 0, '7.00', '14.00', NULL, '2013-10-21 12:58:30', '0000-00-00 00:00:00', NULL, 'FP'),
(4, 'piratpartiet', 'http://www.piratpartiet.se', '#660087', 2, 0, '1.00', '7.00', NULL, '2013-10-21 12:58:30', '0000-00-00 00:00:00', NULL, 'PP'),
(5, 'centerpartiet', 'http://www.centerpartiet.se', '#099a54', 2, 0, '7.00', '6.00', NULL, '2013-10-21 12:58:30', '0000-00-00 00:00:00', NULL, 'C'),
(6, 'kristdemokraterna', 'http://www.kristdemokraterna.se', '#005aa9', 2, 0, '6.00', '5.00', NULL, '2013-10-21 12:58:30', '0000-00-00 00:00:00', NULL, 'KD'),
(7, 'vänsterpartiet', 'http://www.vansterpartiet.se', '#ed1c24', 2, 0, '6.00', '6.00', 2, '2013-10-21 12:58:30', '2013-12-05 14:46:02', '', 'V'),
(8, 'sverigedemokraterna', 'http://www.sverigedemokraterna.se', '#009ddc', 2, 0, '6.00', '3.00', NULL, '2013-10-21 12:58:30', '0000-00-00 00:00:00', NULL, 'SD'),
(9, 'miljöpartiet', 'http://www.mp.se', '#499754', 2, 0, '7.00', '11.00', NULL, '2013-10-21 12:58:30', '0000-00-00 00:00:00', NULL, 'MP'),
(10, 'Feministiskt Initiativ', 'http://feministisktinitiativ.se/', '#cc0066', 2, 0, '0.00', '2.00', NULL, '2013-12-08 20:04:50', NULL, '', 'F!'),
(11, 'Junilistan', 'http://junilistan.se/', '#f89a1c', 2, 0, '0.00', '4.00', NULL, '2013-12-08 20:05:17', NULL, '', 'JL'),
(12, 'bajs', 'dsadsa', '', 2, 1, '0.00', '0.00', 2, '2013-12-16 18:34:13', NULL, 'dsadsadsadsa', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET latin1 NOT NULL,
  `type` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_swedish_ci,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL,
  `approved_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `done` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `type`, `created_by`, `deleted`, `updated_by`, `updated_date`, `created_date`, `description`, `approved`, `approved_by`, `approved_date`, `done`) VALUES
(14, 'Patentsystemet ska avskaffas', 'YESNO', 2, 0, 2, '2013-11-05 21:29:04', '2013-10-21 13:05:42', '', 0, 0, '0000-00-00 00:00:00', 0),
(15, 'FRA-lagen ska avvecklas', 'YESNO', 2, 0, 2, '2013-12-08 11:31:54', '2013-10-21 13:05:42', 'dsadsa', 1, 2, '2013-12-08 11:31:54', 0),
(17, 'Sverige ska införa euro som valuta?', 'YESNO', 2, 0, 2, '2014-01-15 18:26:08', '2013-10-21 13:05:42', '', 1, 2, '2014-01-15 18:26:08', 0),
(18, 'Vinster i välfärden ska vara tillåtet', 'YESNO', 2, 0, 2, '2014-01-26 20:43:26', '2013-10-21 13:05:42', '', 1, 2, '2014-01-26 20:43:26', 0),
(19, 'Kvinnor ska ha rätt till lagliga och säkra abort', 'YESNO', 2, 0, 2, '2013-11-13 11:18:43', '2013-10-21 13:05:42', '', 1, 2, '2013-11-13 11:18:43', 0),
(20, 'Barnbidraget ska höjas', 'YESNO', 2, 0, 2, '2013-11-07 22:26:28', '2013-10-21 13:05:42', '', 0, 2, '2013-11-07 22:26:04', 0),
(21, 'Patienter ska ha rätt till dödshjälp', 'YESNO', 2, 0, 2, '2013-11-12 10:04:01', '2013-10-21 13:05:42', '', 1, 2, '2013-11-12 10:04:01', 0),
(22, 'Barn under 18 år ska kunna ingå i äktenskap', 'YESNO', 2, 0, 2, '2013-11-07 22:26:11', '2013-10-21 13:05:42', '', 0, 2, '2013-11-07 22:24:47', 0),
(23, 'Turkiet ska tillåtas gå med i EU', 'YESNO', 2, 0, 2, '2014-01-10 18:51:25', '2013-10-21 13:05:42', '', 1, 2, '2014-01-10 18:51:25', 0),
(24, 'Järnvägen ska återregleras', 'YESNO', 2, 0, 2, '2013-11-13 11:13:09', '2013-10-21 13:05:42', 'En återreglering av järnvägen skulle innebära att endast staten får nytja stambanorna för kommersiell trafik.', 1, 2, '2013-11-13 11:13:09', 0),
(25, 'Kärnkraften ska byggas ut', 'YESNO', 2, 0, 2, '2013-11-12 10:03:28', '2013-10-21 13:05:42', '', 1, 2, '2013-11-12 10:03:28', 0),
(26, 'Kärnkraften ska avvecklas', 'YESNO', 2, 0, 2, '2013-11-12 10:03:23', '2013-10-21 13:05:42', '', 1, 2, '2013-11-12 10:03:23', 0),
(27, 'Sverige ska gå med i NATO', 'YESNO', 2, 0, 2, '2014-01-26 20:36:53', '2013-10-21 13:05:42', '', 1, 2, '2014-01-26 20:36:53', 1),
(28, 'Gårdsförsäljning ska vara tillåtet', 'YESNO', 2, 0, 2, '2013-11-11 17:32:24', '2013-10-21 13:05:42', '', 1, 2, '2013-11-11 17:32:24', 0),
(29, 'Modersmålsundervisning ska vara en rättighet', 'YESNO', 2, 0, 2, '2013-11-12 10:03:42', '2013-10-21 13:05:42', '', 1, 2, '2013-11-12 10:03:42', 0),
(30, 'Nytillverkade bilar ska utrustas med alkolås', 'YESNO', 2, 0, 2, '2013-12-02 21:00:34', '2013-10-21 13:05:42', '', 1, 2, '2013-12-02 21:00:34', 0),
(31, 'Receptfria läkemedel ska kunna köpas i vanliga affärer', 'YESNO', 2, 0, 2, '2013-11-05 21:30:45', '2013-10-21 13:05:42', '', 0, 0, '0000-00-00 00:00:00', 0),
(32, 'Från vilken årskurs  ska elever ha betyg?', 'CHOICE', 2, 0, 2, '2014-01-10 18:36:51', '2013-10-21 13:05:42', '', 1, 2, '2014-01-10 18:36:51', 0),
(48, 'Trängselskatt ska införas i flera städer', 'YESNO', 2, 0, 2, '2013-11-05 21:32:57', '2013-10-22 08:33:53', '', 0, 0, '0000-00-00 00:00:00', 0),
(49, 'Sverige ska investera i höghastighetståg', 'YESNO', 2, 0, 2, '2013-11-05 21:32:23', '2013-10-22 08:35:04', '', 0, 0, '0000-00-00 00:00:00', 0),
(50, 'Licensjakt på varg ska vara tillåten', 'YESNO', 2, 0, 2, '2013-11-05 21:27:49', '2013-10-22 08:39:56', '', 0, 0, '0000-00-00 00:00:00', 0),
(51, 'Bensinskatten ska höjas', 'YESNO', 2, 0, 2, '2013-11-08 23:10:43', '2013-10-22 08:40:34', '', 1, 2, '2013-11-08 23:10:43', 0),
(52, 'Statliga museer ska ha fri entré', 'YESNO', 2, 0, 2, '2013-11-05 21:31:27', '2013-10-22 08:41:35', '', 0, 0, '0000-00-00 00:00:00', 0),
(53, 'Icke-kommersiell kopiering av upphovsrättsskyddat material ska vara tillåten', 'YESNO', 2, 0, 2, '2013-11-11 17:32:35', '2013-10-22 08:45:02', '', 1, 2, '2013-11-11 17:32:35', 0),
(54, 'TV-licensen ska avskaffas', 'YESNO', 2, 0, 2, '2013-11-05 21:33:13', '2013-10-22 08:45:54', '', 0, 0, '0000-00-00 00:00:00', 0),
(55, 'Kommuner ska kunna säga nej till att ta emot flyktingar', 'YESNO', 2, 0, 2, '2013-11-05 21:26:49', '2013-10-22 08:47:27', '', 0, 0, '0000-00-00 00:00:00', 0),
(56, 'Papperslösa flyktingar ska ha rätt till vård', 'YESNO', 2, 0, 2, '2013-11-13 11:25:29', '2013-10-22 08:48:10', '', 1, 2, '2013-11-13 11:25:29', 0),
(57, 'Förbud för lärare att bära heltäckande slöja', 'YESNO', 2, 0, 2, '2013-11-11 17:32:02', '2013-10-22 08:49:45', '', 1, 2, '2013-11-11 17:32:02', 0),
(58, 'Vårdnadsbidraget ska avskaffas', 'YESNO', 2, 0, 2, '2013-11-05 21:33:35', '2013-10-22 08:51:57', '', 0, 0, '0000-00-00 00:00:00', 0),
(59, 'Förmögenhetsskatten ska återinföras', 'YESNO', 2, 0, 2, '2013-11-11 17:32:09', '2013-10-22 08:52:38', '', 1, 2, '2013-11-11 17:32:09', 0),
(60, 'Det ska vara samma skatt på pension och lön2', 'YESNO', 2, 0, 2, '2013-12-04 21:37:50', '2013-10-22 08:53:39', '', 1, 2, '2013-12-04 21:37:50', 0),
(61, 'Rut-avdraget ska avskaffas', 'YESNO', 2, 0, 2, '2013-11-05 21:30:51', '2013-10-22 08:54:01', '', 0, 0, '0000-00-00 00:00:00', 0),
(62, 'Sexköpslagen ska avskaffas', 'YESNO', 2, 0, 2, '2013-11-05 21:31:02', '2013-10-22 08:57:43', '', 0, 0, '0000-00-00 00:00:00', 0),
(63, 'Rattfyllerister ska få hårdare straff', 'YESNO', 2, 0, 2, '2013-11-05 21:30:31', '2013-10-22 09:00:32', '', 0, 0, '0000-00-00 00:00:00', 0),
(64, 'Våldsbrott ska bestraffas hårdare', 'YESNO', 2, 0, 2, '2013-11-05 21:33:30', '2013-10-22 09:00:54', '', 0, 0, '0000-00-00 00:00:00', 0),
(65, 'Förtidspension ska vara möjlig när man är23', 'YESNO', 2, 0, 2, '2013-11-17 10:00:21', '2013-10-22 09:03:57', 'adsdsa', 0, 0, '0000-00-00 00:00:00', 0),
(66, 'Sjukförsäkringen ska vara tidsbegränsad', 'YESNO', 2, 0, 2, '2013-11-05 21:31:13', '2013-10-22 09:17:45', '', 0, 0, '0000-00-00 00:00:00', 0),
(67, 'Tandvård ska ingå i sjukförsäkringen', 'YESNO', 2, 0, 2, '2013-11-05 21:32:48', '2013-10-22 09:18:05', '', 0, 0, '0000-00-00 00:00:00', 0),
(68, 'A-kassan ska vara obligatorisk', 'YESNO', 6, 1, 2, '2013-11-07 22:26:17', '2013-10-22 09:19:03', '', 0, 2, '2013-11-07 22:21:49', 0),
(69, 'Omskärelse ska vara tillåtet endast av medicinska skäl', 'YESNO', 2, 0, 2, '2013-11-05 21:28:44', '2013-10-22 09:33:47', '', 0, 0, '0000-00-00 00:00:00', 0),
(70, 'Alkoholmonopolet ska avskaffas23', 'YESNO', 2, 1, 2, '2013-12-08 11:32:14', '2013-10-22 09:35:16', '', 0, 2, '2013-12-08 11:32:14', 0),
(71, 'Svenska soldater ska tas hem ifrån Afghanistan', 'YESNO', 2, 0, 2, '2013-11-05 21:31:35', '2013-10-22 09:58:47', '', 0, 0, '0000-00-00 00:00:00', 0),
(72, 'Sverige ska sluta exportera vapen', 'YESNO', 2, 0, 2, '2014-01-15 20:45:16', '2013-10-22 09:59:27', '', 1, 2, '2014-01-15 20:45:16', 0),
(73, 'Värnplikten ska återinföras', 'YESNO', 2, 0, 2, '2013-11-05 21:33:42', '2013-10-22 10:00:04', '', 0, 0, '0000-00-00 00:00:00', 0),
(74, 'Sverige ska gå ur EU', 'YESNO', 2, 0, 2, '2013-11-05 21:31:45', '2013-10-22 10:00:31', '', 0, 0, '0000-00-00 00:00:00', 0),
(75, 'Förstatliga skolan', 'YESNO', 2, 0, 2, '2013-11-11 17:32:16', '2013-10-22 10:00:59', '', 1, 2, '2013-11-11 17:32:16', 0),
(76, 'Begränsa antal friskolor', 'YESNO', 2, 0, 2, '2013-11-05 21:24:17', '2013-10-22 10:02:01', '', 0, 0, '0000-00-00 00:00:00', 0),
(77, 'Alla gymnasieprogram ska leda till högskolebehörighet4', 'YESNO', 2, 0, 2, '2013-12-14 23:06:43', '2013-10-22 10:02:27', '', 1, 2, '2013-12-14 23:06:43', 0),
(78, 'Monarkin ska avskaffas', 'YESNO', 2, 0, 2, '2013-11-12 10:03:48', '2013-10-22 10:03:36', '', 1, 2, '2013-11-12 10:03:48', 0),
(79, 'Sverige ska hålla fler folkomröstningar', 'YESNO', 2, 0, 2, '2013-11-05 21:32:06', '2013-10-22 10:04:21', '', 0, 0, '0000-00-00 00:00:00', 0),
(81, 'habana2', 'YESNO', 2, 1, 2, '2013-11-17 09:41:24', '2013-11-17 09:31:30', 'dsa\r\n', 1, 2, '2013-11-17 09:41:24', 0),
(82, 'aaaTest', 'YESNO', 2, 1, 2, '0000-00-00 00:00:00', '2013-11-25 12:22:08', 'testestestest', 0, 0, '0000-00-00 00:00:00', 0),
(83, 'AATEST', 'YESNO', 2, 1, 2, '0000-00-00 00:00:00', '2013-11-25 12:24:04', 'TEst', 0, 0, '0000-00-00 00:00:00', 0),
(84, 'Contributorfråga2', 'YESNO', 6, 0, 2, '2013-12-11 11:02:56', '2013-12-02 19:28:20', '', 1, 2, '2013-12-11 11:02:56', 0),
(85, 'Contributorfråga 2', 'YESNO', 6, 0, NULL, '0000-00-00 00:00:00', '2013-12-02 19:31:42', 'dsafds', 0, 0, '0000-00-00 00:00:00', 0),
(86, 'Contributorfråga 3', 'YESNO', 6, 1, 6, '0000-00-00 00:00:00', '2013-12-02 19:32:19', '', 0, 0, '0000-00-00 00:00:00', 0),
(87, 'rasnusfråga 1', 'YESNO', 26, 0, NULL, '0000-00-00 00:00:00', '2013-12-04 18:01:51', 'saddsadsa', 0, 0, '0000-00-00 00:00:00', 0),
(88, 'rasmus fråga 3', 'YESNO', 26, 0, NULL, '0000-00-00 00:00:00', '2013-12-04 18:03:45', 'saddsadsa', 0, 0, '0000-00-00 00:00:00', 0),
(89, 'rasmus fråga 3', 'YESNO', 26, 0, NULL, '0000-00-00 00:00:00', '2013-12-04 18:06:52', 'saddsadsa', 0, 0, '0000-00-00 00:00:00', 0),
(90, 'rasmus fin fråga', 'YESNO', 26, 0, NULL, '0000-00-00 00:00:00', '2013-12-04 18:07:14', 'dsa', 0, 0, '0000-00-00 00:00:00', 0),
(91, 'sadsaddsadsa', 'YESNO', 2, 0, NULL, '0000-00-00 00:00:00', '2013-12-05 13:20:52', '', 0, 0, '0000-00-00 00:00:00', 0),
(92, 'dsadsadsadsa', 'YESNO', 2, 0, NULL, '0000-00-00 00:00:00', '2013-12-05 13:48:06', '', 0, 0, '0000-00-00 00:00:00', 0),
(93, 'asdasdsad', 'YESNO', 2, 1, 2, '0000-00-00 00:00:00', '2013-12-05 14:35:40', '', 0, 0, '0000-00-00 00:00:00', 0),
(94, 'dsadsadsa', 'YESNO', 2, 0, NULL, '0000-00-00 00:00:00', '2013-12-05 18:21:12', '', 0, 0, '0000-00-00 00:00:00', 0),
(95, 'testfråga 1337', 'YESNO', 2, 0, 2, '2013-12-08 13:55:26', '2013-12-08 13:38:56', 'sad', 1, 2, '2013-12-08 13:55:26', 0),
(96, 'abc1234', 'YESNO', 2, 1, 2, '2013-12-15 10:49:12', '2013-12-09 20:09:58', 'dsa', 0, 0, '0000-00-00 00:00:00', 0),
(97, 'Testfråga', 'CHOICE', 2, 0, 2, '2014-01-26 19:31:56', '2014-01-10 18:53:24', 'blaj', 1, 2, '2014-01-26 19:31:56', 1),
(98, 'Testfråga', 'YESNO', 2, 0, 2, '2014-01-18 21:54:37', '2014-01-18 21:53:57', '', 1, 2, '2014-01-18 21:54:37', 0),
(99, 'blablabla %', 'YESNO', 2, 0, NULL, '0000-00-00 00:00:00', '2014-01-19 09:40:18', '', 0, 0, '0000-00-00 00:00:00', 0),
(100, 'uuuu', 'YESNO', 2, 0, 2, '2014-01-26 20:14:37', '2014-01-26 20:14:13', '', 1, 2, '2014-01-26 20:14:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question_quizzes`
--

CREATE TABLE IF NOT EXISTS `question_quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `question_quizzes`
--

INSERT INTO `question_quizzes` (`id`, `question_id`, `quiz_id`) VALUES
(1, 68, 2),
(2, 76, 2),
(3, 15, 2),
(4, 59, 2),
(5, 28, 2),
(6, 75, 2),
(7, 76, 2),
(8, 65, 2),
(9, 59, 2),
(10, 26, 2),
(11, 53, 2),
(13, 65, 3),
(15, 79, 3),
(16, 26, 4),
(17, 28, 4),
(18, 21, 4),
(19, 17, 4),
(20, 32, 6),
(21, 53, 4),
(23, 15, 3),
(25, 77, 3);

-- --------------------------------------------------------

--
-- Table structure for table `question_tags`
--

CREATE TABLE IF NOT EXISTS `question_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=257 ;

--
-- Dumping data for table `question_tags`
--

INSERT INTO `question_tags` (`id`, `question_id`, `tag_id`) VALUES
(9, 76, 51),
(10, 76, 54),
(28, 55, 63),
(36, 50, 68),
(37, 50, 69),
(43, 69, 37),
(44, 69, 56),
(47, 14, 72),
(52, 63, 36),
(53, 63, 49),
(54, 63, 74),
(55, 31, 75),
(56, 31, 76),
(57, 61, 77),
(59, 62, 74),
(60, 62, 78),
(61, 66, 79),
(62, 52, 47),
(63, 71, 27),
(64, 71, 46),
(67, 74, 34),
(68, 79, 44),
(72, 49, 41),
(76, 67, 37),
(77, 67, 79),
(78, 67, 80),
(79, 48, 35),
(80, 48, 36),
(83, 54, 47),
(85, 64, 74),
(86, 58, 28),
(87, 73, 26),
(88, 73, 27),
(121, 22, 29),
(122, 22, 52),
(123, 68, 48),
(132, 51, 35),
(133, 51, 36),
(137, 57, 51),
(138, 57, 56),
(139, 59, 35),
(140, 59, 57),
(141, 75, 51),
(142, 28, 49),
(143, 53, 59),
(144, 53, 60),
(145, 53, 61),
(150, 26, 65),
(151, 26, 66),
(152, 26, 67),
(153, 25, 65),
(154, 25, 66),
(155, 25, 67),
(156, 29, 51),
(157, 29, 70),
(158, 78, 71),
(161, 21, 37),
(162, 21, 73),
(175, 24, 41),
(176, 24, 62),
(182, 56, 37),
(183, 56, 63),
(188, 81, 82),
(189, 81, 83),
(190, 81, 84),
(197, 65, 58),
(198, 65, 85),
(199, 65, 86),
(200, 30, 36),
(201, 30, 49),
(202, 89, 87),
(203, 89, 88),
(204, 90, 89),
(208, 60, 35),
(209, 60, 58),
(216, 20, 29),
(217, 20, 53),
(226, 19, 64),
(229, 15, 27),
(230, 15, 55),
(231, 70, 49),
(232, 70, 50),
(242, 95, 43),
(248, 77, 51),
(250, 32, 51),
(253, 17, 43),
(254, 72, 38),
(255, 72, 43),
(256, 97, 100);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` int(11) DEFAULT NULL,
  `approved_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `approved`, `date`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted`, `approved_by`, `approved_date`) VALUES
(1, 'sad', 'dsa', 0, '2013-12-16 18:44:40', 2, '2013-11-17 20:12:08', 2, '2013-12-05 14:44:28', 1, NULL, NULL),
(2, 'bla', 'sad', 1, '2013-11-19 19:14:52', 2, '2013-11-17 20:13:18', 2, NULL, 1, NULL, NULL),
(3, 'dsadsa2321dsa', 'saffsafsafsa', 1, '2014-01-10 20:14:26', 2, '2013-11-17 20:13:48', 2, '2014-01-10 20:14:26', 0, 2, '2014-01-10 20:14:26'),
(4, 'dsadsa', 'sadafsasf', 1, '2014-01-10 20:10:08', 2, '2013-11-17 20:21:04', 2, '2014-01-10 20:10:08', 0, 2, '2014-01-10 20:10:08'),
(5, 'hmm', 'dsadsadsadsa', 0, '2013-11-19 19:14:49', 2, '2013-11-19 19:05:59', 2, NULL, 1, NULL, NULL),
(6, 'dsadsa', 'aa', 0, '0000-00-00 00:00:00', 2, '2013-12-05 14:45:34', NULL, NULL, 0, NULL, NULL),
(7, 'dsadsadsa', 'dsadsadsa', 0, '2013-12-05 18:36:32', 2, '2013-12-05 18:36:27', 2, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE IF NOT EXISTS `quiz_answers` (
  `id` varchar(40) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `temp_quiz_id` varchar(40) NOT NULL,
  `importance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `question_id`, `answer`, `date`, `temp_quiz_id`, `importance`) VALUES
('52effac1-2ec0-454c-b7e3-06d47ddeb986', 15, '0', '0000-00-00', '52effac1-1c64-4678-9f79-06d47ddeb986', 2),
('52effac1-3ba4-4103-bb24-06d47ddeb986', 77, '0', '0000-00-00', '52effac1-1c64-4678-9f79-06d47ddeb986', 2),
('52effca9-0a34-4705-918a-11597ddeb986', 21, NULL, '2014-02-03', '52effca9-d8fc-4c8a-bb3c-11597ddeb986', 2),
('52effca9-1b64-436a-a9a8-11597ddeb986', 26, 'nej', '2014-02-03', '52effca9-d8fc-4c8a-bb3c-11597ddeb986', 3),
('52effca9-2bcc-4c67-8597-11597ddeb986', 17, 'ja', '2014-02-03', '52effca9-d8fc-4c8a-bb3c-11597ddeb986', 2),
('52effca9-3bd0-4e23-95fb-11597ddeb986', 28, NULL, '2014-02-03', '52effca9-d8fc-4c8a-bb3c-11597ddeb986', 3),
('52effca9-ec84-40c2-ab41-11597ddeb986', 53, 'ja', '2014-02-03', '52effca9-d8fc-4c8a-bb3c-11597ddeb986', 2),
('52f00017-e49c-4026-96a5-11a97ddeb986', 15, 'ja', '2014-02-03', '52f00017-d36c-4a23-aa57-11a97ddeb986', 2),
('52f00017-fcd4-4f90-b5d8-11a97ddeb986', 77, 'nej', '2014-02-03', '52f00017-d36c-4a23-aa57-11a97ddeb986', 2),
('52f00072-506c-4caf-a29f-1acf7ddeb986', 17, 'ja', '2014-02-03', '52f00072-3d48-415a-9401-1acf7ddeb986', 2),
('52f00072-6db8-4340-8d69-1acf7ddeb986', 21, 'nej', '2014-02-03', '52f00072-3d48-415a-9401-1acf7ddeb986', 2),
('52f00072-7e84-425c-8983-1acf7ddeb986', 53, NULL, '2014-02-03', '52f00072-3d48-415a-9401-1acf7ddeb986', 2),
('52f00072-8eec-4f67-ab0c-1acf7ddeb986', 26, 'nej', '2014-02-03', '52f00072-3d48-415a-9401-1acf7ddeb986', 2),
('52f00072-9ef0-4f78-9071-1acf7ddeb986', 28, 'ja', '2014-02-03', '52f00072-3d48-415a-9401-1acf7ddeb986', 2),
('52f0021a-8b80-45f7-ad2d-17177ddeb986', 21, 'ja', '2014-02-03', '52f0021a-78c0-4641-b6ef-17177ddeb986', 2),
('52f0021a-a7a0-456c-898f-17177ddeb986', 28, 'nej', '2014-02-03', '52f0021a-78c0-4641-b6ef-17177ddeb986', 3),
('52f0021a-b808-47df-a3a6-17177ddeb986', 53, 'ja', '2014-02-03', '52f0021a-78c0-4641-b6ef-17177ddeb986', 1),
('52f0021a-c80c-4464-81bf-17177ddeb986', 26, 'nej', '2014-02-03', '52f0021a-78c0-4641-b6ef-17177ddeb986', 3),
('52f0021a-d7ac-4f05-92fc-17177ddeb986', 17, 'ja', '2014-02-03', '52f0021a-78c0-4641-b6ef-17177ddeb986', 1),
('52f0046e-d1e4-4afd-b301-11a87ddeb986', 15, NULL, '2014-02-03', '52f0046e-c118-4427-b47b-11a87ddeb986', 2),
('52f0046e-ea1c-48d1-8a1e-11a87ddeb986', 77, NULL, '2014-02-03', '52f0046e-c118-4427-b47b-11a87ddeb986', 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE IF NOT EXISTS `quiz_results` (
  `id` varchar(40) NOT NULL,
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) NOT NULL DEFAULT '1',
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `data`, `created`, `version`, `quiz_id`) VALUES
('5280015b-5ad8-4860-8091-1ee4f70e163e', '', '2013-11-10 21:59:18', 1, 0),
('5280031b-970c-4d7f-bded-1ee4f70e163e', '{"question_agree_rate":{"1":100,"2":0,"3":33.333333333333,"4":0,"5":50,"6":50,"7":100,"8":33.333333333333,"9":100},"points_percentage":{"1":50,"2":0,"3":0,"4":0,"5":8.3333333333333,"6":8.3333333333333,"7":8.3333333333333,"8":0,"9":25}}', '2013-11-10 22:05:34', 1, 0),
('52810025-3e88-492f-b164-29b8f70e163e', '{"question_agree_rate":{"1":50,"2":25,"3":40,"4":100,"5":25,"6":25,"7":33,"8":50,"9":67},"points_percentage":{"1":13,"2":0,"3":0,"4":38,"5":0,"6":0,"7":0,"8":0,"9":50}}', '2013-11-11 16:05:17', 1, 0),
('52810830-2344-417c-958a-29b8f70e163e', '{"question_agree_rate":{"1":50,"2":25,"3":40,"4":100,"5":25,"6":25,"7":33,"8":50,"9":67},"points_percentage":{"1":15,"2":8,"3":15,"4":8,"5":8,"6":8,"7":8,"8":15,"9":15}}', '2013-11-11 16:40:08', 1, 0),
('5281090d-8c00-43ea-859a-29b8f70e163e', '{"question_agree_rate":{"1":50,"2":25,"3":40,"4":100,"5":25,"6":25,"7":33,"8":50,"9":67},"points_percentage":{"1":17,"2":6,"3":14,"4":8,"5":8,"6":8,"7":8,"8":14,"9":17}}', '2013-11-11 16:43:18', 1, 0),
('52810bd9-e3ac-423d-80f0-3267f70e163e', '{"question_agree_rate":{"1":50,"2":25,"3":40,"4":100,"5":25,"6":25,"7":33,"8":50,"9":67},"points_percentage":{"1":17,"2":6,"3":14,"4":8,"5":8,"6":8,"7":8,"8":14,"9":17}}', '2013-11-11 16:55:16', 1, 0),
('52810c4c-90f0-4172-9ce9-3167f70e163e', '{"question_agree_rate":{"1":0,"2":50,"3":40,"4":100,"5":25,"6":25,"7":33,"8":50,"9":33},"points_percentage":{"1":0,"2":19,"3":19,"4":7,"5":11,"6":11,"7":7,"8":19,"9":7}}', '2013-11-11 16:56:57', 1, 0),
('52811450-110c-4e83-a417-329bf70e163e', '{"question_agree_rate":{"1":0,"2":50,"3":40,"4":100,"5":25,"6":25,"7":33,"8":50,"9":33},"points_percentage":{"1":3,"2":14,"3":11,"4":17,"5":9,"6":9,"7":11,"8":14,"9":11}}', '2013-11-11 17:31:12', 1, 0),
('528114b9-1ed8-4b53-b67b-31e4f70e163e', '{"question_agree_rate":{"1":56,"2":29,"3":50,"4":100,"5":11,"6":29,"7":57,"8":50,"9":71},"points_percentage":{"1":14,"2":5,"3":13,"4":12,"5":4,"6":8,"7":15,"8":12,"9":17}}', '2013-11-11 17:33:24', 1, 0),
('52811ac3-ce5c-4d06-b67a-35f5f70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":4,"2":13,"3":0,"4":33,"5":4,"6":13,"7":13,"8":8,"9":13}}', '2013-11-11 17:59:18', 1, 0),
('52811f7f-57c0-49e2-9ed5-36c8f70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":11,"2":11,"3":11,"4":11,"5":11,"6":11,"7":11,"8":11,"9":11}}', '2013-11-11 18:18:51', 1, 0),
('5281313c-50b0-46bd-b0b2-3af0f70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":11,"2":11,"3":11,"4":12,"5":11,"6":11,"7":11,"8":11,"9":12}}', '2013-11-11 19:35:02', 1, 0),
('528131aa-e1f8-43f6-a6fc-3ab7f70e163e', '{"question_agree_rate":{"1":22,"2":14,"3":20,"4":100,"5":22,"6":29,"7":57,"8":13,"9":71},"points_percentage":{"1":8,"2":6,"3":7,"4":15,"5":8,"6":10,"7":18,"8":6,"9":21}}', '2013-11-11 19:36:28', 1, 0),
('528131e9-c560-4c3f-97ab-37daf70e163e', '{"question_agree_rate":{"1":56,"2":29,"3":50,"4":100,"5":11,"6":29,"7":57,"8":50,"9":71},"points_percentage":{"1":15,"2":6,"3":13,"4":11,"5":4,"6":7,"7":15,"8":12,"9":17}}', '2013-11-11 19:38:08', 1, 0),
('52814fcc-a7f8-4729-b03a-452bf70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":4,"2":13,"3":0,"4":33,"5":4,"6":13,"7":13,"8":8,"9":13}}', '2013-11-11 21:44:54', 1, 0),
('528150b2-73e4-4376-9bf9-4636f70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":11,"2":11,"3":11,"4":11,"5":11,"6":11,"7":11,"8":11,"9":11}}', '2013-11-11 21:48:43', 1, 0),
('528150ca-dae0-4a31-b087-41e3f70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":11,"2":11,"3":11,"4":12,"5":11,"6":11,"7":11,"8":11,"9":12}}', '2013-11-11 21:49:23', 1, 0),
('5281511e-9744-41b8-8bc9-452bf70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":11,"2":11,"3":11,"4":12,"5":11,"6":11,"7":11,"8":11,"9":12}}', '2013-11-11 21:50:41', 1, 0),
('528152a0-b870-4cb4-977a-452cf70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":4,"2":13,"3":0,"4":33,"5":4,"6":13,"7":13,"8":8,"9":13}}', '2013-11-11 21:57:05', 1, 0),
('52815340-6a80-4757-8540-452bf70e163e', '{"question_agree_rate":{"1":0,"2":29,"3":10,"4":100,"5":22,"6":14,"7":29,"8":25,"9":29},"points_percentage":{"1":1,"2":14,"3":5,"4":20,"5":11,"6":9,"7":14,"8":13,"9":14}}', '2013-11-11 22:02:25', 1, 0),
('5281f566-1bc4-4874-9122-4636f70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":11,"2":11,"3":11,"4":11,"5":11,"6":11,"7":11,"8":11,"9":11}}', '2013-11-12 09:31:27', 1, 0),
('5281f63b-e160-4f1d-94b3-452cf70e163e', '{"question_agree_rate":{"1":25,"2":0,"3":11,"4":50,"5":13,"6":17,"7":33,"8":14,"9":29},"points_percentage":{"1":15,"2":7,"3":10,"4":10,"5":10,"6":10,"7":14,"8":11,"9":14}}', '2013-11-12 09:35:03', 1, 0),
('5281f751-302c-40f9-b043-4814f70e163e', '{"question_agree_rate":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0},"points_percentage":{"1":11,"2":11,"3":11,"4":11,"5":11,"6":11,"7":11,"8":11,"9":11}}', '2013-11-12 09:39:40', 1, 0),
('5281fb66-29b8-428a-9e74-452cf70e163e', '{"question_agree_rate":{"1":38,"2":33,"3":33,"4":50,"5":13,"6":33,"7":17,"8":29,"9":29},"points_percentage":{"1":16,"2":11,"3":16,"4":8,"5":7,"6":12,"7":7,"8":12,"9":11}}', '2013-11-12 09:57:07', 1, 0),
('5281fd4c-1d8c-4bd2-a754-452bf70e163e', '{"question_agree_rate":{"1":78,"2":31,"3":40,"4":100,"5":39,"6":50,"7":88,"8":53,"9":82},"points_percentage":{"1":15,"2":7,"3":9,"4":8,"5":8,"6":10,"7":17,"8":11,"9":16}}', '2013-11-12 10:06:34', 1, 0),
('5282bff5-e2a8-41bf-815b-759cf70e163e', '{"question_agree_rate":{"1":0,"2":6,"3":0,"4":67,"5":6,"6":6,"7":13,"8":6,"9":11},"points_percentage":{"1":9,"2":11,"3":8,"4":13,"5":11,"6":11,"7":13,"8":11,"9":13}}', '2013-11-12 23:56:30', 1, 0),
('5282c158-3ff4-405a-b4c7-7a37f70e163e', '{"question_agree_rate":{"1":0,"2":50,"3":0,"4":100,"5":50,"6":50,"7":100,"8":100,"9":100},"points_percentage":{"1":9,"2":11,"3":8,"4":13,"5":11,"6":11,"7":13,"8":11,"9":13}}', '2013-11-13 00:01:50', 1, 0),
('5282c1be-ba9c-494c-9aca-77c0f70e163e', '{"question_agree_rate":{"1":75,"2":30,"3":40,"4":100,"5":37,"6":51,"7":90,"8":56,"9":84},"points_percentage":{"1":15,"2":6,"3":9,"4":8,"5":8,"6":10,"7":16,"8":11,"9":17}}', '2013-11-13 00:21:24', 1, 0),
('5282cbf7-ab40-41e8-8d7e-77cff70e163e', '{"question_agree_rate":{"1":0,"2":50,"3":0,"4":100,"5":38,"6":38,"7":60,"8":60,"9":60},"points_percentage":{"1":11,"2":11,"3":7,"4":15,"5":10,"6":10,"7":12,"8":12,"9":12}}', '2013-11-13 00:47:12', 1, 0),
('5282d0bd-f55c-44cb-9d1e-79b7f70e163e', '{"question_agree_rate":{"1":73,"2":25,"3":35,"4":100,"5":44,"6":49,"7":95,"8":49,"9":91},"points_percentage":{"1":17,"2":0,"3":0,"4":19,"5":0,"6":3,"7":30,"8":3,"9":28}}', '2013-11-13 01:09:18', 1, 0),
('5282d75c-6858-4f44-80f4-79b7f70e163e', '{"question_agree_rate":{"1":20,"2":50,"3":25,"4":100,"5":38,"6":50,"7":50,"8":50,"9":38},"points_percentage":{"1":0,"2":0,"3":0,"4":100,"5":0,"6":0,"7":0,"8":0,"9":0}}', '2013-11-13 01:35:48', 1, 0),
('52833885-64f8-4e70-aa9e-79b7f70e163e', '{"question_agree_rate":{"1":70,"2":31,"3":48,"4":100,"5":30,"6":54,"7":83,"8":54,"9":78},"points_percentage":{"1":23,"2":0,"3":0,"4":7,"5":0,"6":4,"7":32,"8":4,"9":30}}', '2013-11-13 08:32:21', 1, 0),
('52834144-b074-4f62-ad7c-03d3f70e163e', '{"question_agree_rate":{"1":{"result":43,"range":7,"plus_points":3},"2":{"result":31,"range":13,"plus_points":4},"3":{"result":0,"range":13,"plus_points":0},"4":{"result":100,"range":4,"plus_points":4},"5":{"result":15,"range":13,"plus_points":2},"6":{"result":18,"range":11,"plus_points":2},"7":{"result":69,"range":13,"plus_points":9},"8":{"result":78,"range":9,"plus_points":7},"9":{"result":54,"range":13,"plus_points":7}},"points_percentage":{"1":0,"2":0,"3":0,"4":27,"5":0,"6":0,"7":33,"8":33,"9":7}}', '2013-11-13 09:07:37', 1, 0),
('528345cf-dbfc-4003-afdf-130ef70e163e', '{"question_agree_rate":{"1":{"result":0,"range":4,"points":0},"2":{"result":40,"range":10,"points":4},"3":{"result":0,"range":8,"points":0},"4":{"result":100,"range":4,"points":4},"5":{"result":25,"range":8,"points":2},"6":{"result":25,"range":8,"points":2},"7":{"result":60,"range":10,"points":6},"8":{"result":50,"range":4,"points":2},"9":{"result":40,"range":10,"points":4}},"points_percentage":{"1":{"result":0,"range":6,"points":-4},"2":{"result":0,"range":6,"points":-2},"3":{"result":0,"range":6,"points":-8},"4":{"result":67,"range":6,"points":4},"5":{"result":0,"range":6,"points":-4},"6":{"result":0,"range":6,"points":-4},"7":{"result":33,"range":6,"points":2},"8":{"result":0,"range":6,"points":0},"9":{"result":0,"range":6,"points":-2}}}', '2013-11-13 09:26:55', 1, 0),
('52834dae-9a5c-4fe2-90da-14adf70e163e', '{"question_agree_rate":{"1":{"result":57,"range":7,"plus_points":4,"minus_points":3},"2":{"result":38,"range":16,"plus_points":6,"minus_points":10},"3":{"result":29,"range":14,"plus_points":4,"minus_points":10},"4":{"result":100,"range":6,"plus_points":6,"minus_points":0},"5":{"result":50,"range":14,"plus_points":7,"minus_points":7},"6":{"result":46,"range":13,"plus_points":6,"minus_points":7},"7":{"result":100,"range":16,"plus_points":16,"minus_points":0},"8":{"result":88,"range":8,"plus_points":7,"minus_points":1},"9":{"result":81,"range":16,"plus_points":13,"minus_points":3}},"points_percentage":{"1":{"result":3,"range":39,"points":1},"2":{"result":0,"range":39,"points":-4},"3":{"result":0,"range":39,"points":-6},"4":{"result":15,"range":39,"points":6},"5":{"result":0,"range":39,"points":0},"6":{"result":0,"range":39,"points":-1},"7":{"result":41,"range":39,"points":16},"8":{"result":15,"range":39,"points":6},"9":{"result":26,"range":39,"points":10}}}', '2013-11-13 10:01:00', 1, 0),
('52835b08-d244-41f6-8c1b-1ec7f70e163e', '{"question_agree_rate":{"1":{"result":70,"range":43,"plus_points":30,"minus_points":13},"2":{"result":35,"range":40,"plus_points":14,"minus_points":26},"3":{"result":42,"range":48,"plus_points":20,"minus_points":28},"4":{"result":100,"range":9,"plus_points":9,"minus_points":0},"5":{"result":36,"range":45,"plus_points":16,"minus_points":29},"6":{"result":55,"range":42,"plus_points":23,"minus_points":19},"7":{"result":85,"range":39,"plus_points":33,"minus_points":6},"8":{"result":56,"range":39,"plus_points":22,"minus_points":17},"9":{"result":80,"range":45,"plus_points":36,"minus_points":9}},"points_percentage":{"1":{"result":19,"range":89,"points":17},"2":{"result":0,"range":89,"points":-12},"3":{"result":0,"range":89,"points":-8},"4":{"result":10,"range":89,"points":9},"5":{"result":0,"range":89,"points":-13},"6":{"result":4,"range":89,"points":4},"7":{"result":30,"range":89,"points":27},"8":{"result":6,"range":89,"points":5},"9":{"result":30,"range":89,"points":27}}}', '2013-11-13 10:58:58', 1, 0),
('52838218-e3c0-4f87-aeec-2217f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":2,"plus_points":0,"minus_points":2},"3":{"result":0,"range":2,"plus_points":0,"minus_points":2},"4":{"result":100,"range":2,"plus_points":2,"minus_points":0},"5":{"result":0,"range":2,"plus_points":0,"minus_points":2},"6":{"result":0,"range":2,"plus_points":0,"minus_points":2},"7":{"result":100,"range":2,"plus_points":2,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":100,"range":2,"plus_points":2,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":6,"points":0},"2":{"result":0,"range":6,"points":-2},"3":{"result":0,"range":6,"points":-2},"4":{"result":33,"range":6,"points":2},"5":{"result":0,"range":6,"points":-2},"6":{"result":0,"range":6,"points":-2},"7":{"result":33,"range":6,"points":2},"8":{"result":0,"range":6,"points":0},"9":{"result":33,"range":6,"points":2}}}', '2013-11-13 13:43:59', 0, 0),
('52838239-be20-48a8-b9cb-1fbef70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":67,"range":6,"plus_points":4,"minus_points":2},"3":{"result":0,"range":4,"plus_points":0,"minus_points":4},"4":{"result":100,"range":4,"plus_points":4,"minus_points":0},"5":{"result":50,"range":4,"plus_points":2,"minus_points":2},"6":{"result":50,"range":4,"plus_points":2,"minus_points":2},"7":{"result":67,"range":6,"plus_points":4,"minus_points":2},"8":{"result":100,"range":2,"plus_points":2,"minus_points":0},"9":{"result":67,"range":6,"plus_points":4,"minus_points":2}},"points_percentage":{"1":{"result":0,"range":12,"points":0},"2":{"result":17,"range":12,"points":2},"3":{"result":0,"range":12,"points":-4},"4":{"result":33,"range":12,"points":4},"5":{"result":0,"range":12,"points":0},"6":{"result":0,"range":12,"points":0},"7":{"result":17,"range":12,"points":2},"8":{"result":17,"range":12,"points":2},"9":{"result":17,"range":12,"points":2}}}', '2013-11-13 13:44:44', 2, 0),
('5283b2b3-9bc0-4eab-8eca-03d3f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":2,"plus_points":0,"minus_points":2},"3":{"result":0,"range":2,"plus_points":0,"minus_points":2},"4":{"result":100,"range":2,"plus_points":2,"minus_points":0},"5":{"result":0,"range":2,"plus_points":0,"minus_points":2},"6":{"result":0,"range":2,"plus_points":0,"minus_points":2},"7":{"result":100,"range":2,"plus_points":2,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":100,"range":2,"plus_points":2,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":6,"points":0},"2":{"result":0,"range":6,"points":-2},"3":{"result":0,"range":6,"points":-2},"4":{"result":33,"range":6,"points":2},"5":{"result":0,"range":6,"points":-2},"6":{"result":0,"range":6,"points":-2},"7":{"result":33,"range":6,"points":2},"8":{"result":0,"range":6,"points":0},"9":{"result":33,"range":6,"points":2}}}', '2013-11-13 17:11:32', 2, 0),
('529cee1b-4058-483f-b8ee-2497f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":-3},"2":{"result":0,"range":9,"points":-3},"3":{"result":0,"range":9,"points":-3},"4":{"result":33,"range":9,"points":3},"5":{"result":0,"range":9,"points":-3},"6":{"result":0,"range":9,"points":-3},"7":{"result":33,"range":9,"points":3},"8":{"result":0,"range":9,"points":0},"9":{"result":33,"range":9,"points":3},"10":{"result":0,"range":9,"points":0}}}', '2013-12-02 20:31:31', 2, 0),
('529cee52-c818-4a21-93bc-103bf70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":67,"range":9,"plus_points":6,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":100,"range":6,"plus_points":6,"minus_points":0},"5":{"result":50,"range":6,"plus_points":3,"minus_points":3},"6":{"result":50,"range":6,"plus_points":3,"minus_points":3},"7":{"result":67,"range":9,"plus_points":6,"minus_points":3},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"9":{"result":67,"range":9,"plus_points":6,"minus_points":3},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":18,"points":-3},"2":{"result":17,"range":18,"points":3},"3":{"result":0,"range":18,"points":-3},"4":{"result":33,"range":18,"points":6},"5":{"result":0,"range":18,"points":0},"6":{"result":0,"range":18,"points":0},"7":{"result":17,"range":18,"points":3},"8":{"result":17,"range":18,"points":3},"9":{"result":17,"range":18,"points":3},"10":{"result":0,"range":18,"points":0}}}', '2013-12-02 20:32:37', 2, 0),
('529cf940-ac20-42eb-bd56-296ef70e163e', '', '2013-12-02 21:32:07', 2, 0),
('529d0070-1b04-44bc-80c6-2cbef70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":50,"range":6,"points":3},"2":{"result":0,"range":6,"points":-3},"3":{"result":0,"range":6,"points":-3},"4":{"result":0,"range":6,"points":0},"5":{"result":0,"range":6,"points":-3},"6":{"result":0,"range":6,"points":-3},"7":{"result":0,"range":6,"points":0},"8":{"result":0,"range":6,"points":-3},"9":{"result":50,"range":6,"points":3},"10":{"result":0,"range":6,"points":0}}}', '2013-12-02 21:49:39', 2, 3),
('529d00e8-f4a8-4a77-8ba4-2c08f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":100,"range":3,"plus_points":3,"minus_points":0},"3":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"6":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"9":{"result":0,"range":3,"plus_points":0,"minus_points":3},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":15,"points":-3},"2":{"result":20,"range":15,"points":3},"3":{"result":20,"range":15,"points":3},"4":{"result":0,"range":15,"points":0},"5":{"result":20,"range":15,"points":3},"6":{"result":20,"range":15,"points":3},"7":{"result":0,"range":15,"points":0},"8":{"result":20,"range":15,"points":3},"9":{"result":0,"range":15,"points":-3},"10":{"result":0,"range":15,"points":0}}}', '2013-12-02 21:51:40', 2, 3),
('529d019b-d054-4dc5-a277-2e94f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":0,"range":12,"points":-3},"3":{"result":25,"range":12,"points":3},"4":{"result":0,"range":12,"points":0},"5":{"result":0,"range":12,"points":-3},"6":{"result":25,"range":12,"points":3},"7":{"result":0,"range":12,"points":0},"8":{"result":0,"range":12,"points":-3},"9":{"result":25,"range":12,"points":3},"10":{"result":0,"range":12,"points":0}}}', '2013-12-02 21:54:41', 2, 4),
('529f35b0-1f54-41da-8a20-630ef70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":-3},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":0},"10":{"result":0,"range":0,"points":0}}}', '2013-12-04 14:01:24', 2, 3),
('529f35c7-8d64-40cb-aca7-630cf70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":3,"points":0},"2":{"result":0,"range":3,"points":0},"3":{"result":100,"range":3,"points":3},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2013-12-04 14:01:47', 2, 3),
('529f35ed-acc4-4254-b96f-630bf70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":-3},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":0},"10":{"result":0,"range":0,"points":0}}}', '2013-12-04 14:02:26', 2, 3),
('529f35fc-b7cc-4659-9f14-06fdf70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-3},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2013-12-04 14:02:40', 2, 3),
('529f8c0a-f2a4-4460-b041-0b78f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2013-12-04 20:09:50', 2, 3),
('529f8efe-1468-42c0-b1dc-1472f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2013-12-04 20:22:26', 2, 3),
('529f90d3-025c-4cc6-92cd-1232f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":0,"points":-3},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":-6},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":0},"10":{"result":0,"range":0,"points":0}}}', '2013-12-04 20:30:15', 2, 3),
('529f9103-5b14-4e32-8bd9-08b3f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2013-12-04 20:31:03', 2, 3),
('52a0c7eb-dd98-438b-82ad-4f48f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"12":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0},"11":{"result":0,"range":3,"points":0},"12":{"result":0,"range":3,"points":0}}}', '2013-12-05 18:37:36', 2, 3),
('52a0c8f8-db0c-4f80-b732-4157f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"12":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0},"11":{"result":0,"range":3,"points":0},"12":{"result":0,"range":3,"points":0}}}', '2013-12-05 18:42:04', 2, 3),
('52a0c989-4d58-44b8-81ca-7408f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0}}}', '2013-12-05 18:44:29', 2, 3),
('52a0cacf-7b28-4618-a312-4f63f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0}}}', '2013-12-05 18:49:56', 2, 3),
('52a0de32-f0a4-4f5b-8f7b-527cf70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0}}}', '2013-12-05 20:12:38', 2, 3),
('52a0de3e-a628-462d-92ca-5387f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":100,"range":6,"plus_points":6,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":6,"points":-3},"2":{"result":0,"range":6,"points":0},"3":{"result":100,"range":6,"points":6},"4":{"result":0,"range":6,"points":0},"5":{"result":0,"range":6,"points":0},"6":{"result":0,"range":6,"points":0},"7":{"result":0,"range":6,"points":0},"8":{"result":0,"range":6,"points":0},"9":{"result":0,"range":6,"points":0}}}', '2013-12-05 20:12:50', 2, 3),
('52a0e05c-186c-4fe2-b29f-51baf70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":3,"plus_points":0,"minus_points":3},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":0},"4":{"result":0,"range":0,"points":-3},"5":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":0}}}', '2013-12-05 20:22:01', 2, 0),
('52a49af7-eadc-4a41-8f9b-7d4df70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":100,"range":3,"points":3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":-6},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0}}}', '2013-12-08 16:14:56', 2, 3),
('52a49be2-c51c-4683-982f-7d76f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":3,"points":0},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":0},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":100,"range":3,"points":3}}}', '2013-12-08 16:19:10', 2, 4),
('52a49c1a-329c-44cf-ab9a-06f3f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":3,"plus_points":0,"minus_points":3}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":0},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":-3}}}', '2013-12-08 16:19:47', 2, 4),
('52a49c7f-1784-4212-82a3-0b21f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":3,"points":0},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":0},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"6":{"result":0,"range":3,"points":0},"7":{"result":0,"range":3,"points":0},"8":{"result":0,"range":3,"points":0},"9":{"result":100,"range":3,"points":3}}}', '2013-12-08 16:21:27', 2, 4),
('52a49c97-8cf0-45d3-9147-09ecf70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":3,"plus_points":0,"minus_points":3}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":0},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":-3}}}', '2013-12-08 16:21:52', 2, 4),
('52a49e8e-a654-4bfb-8956-0bb7f70e163e', '{"question_agree_rate":{"1":{"result":67,"range":9,"plus_points":6,"minus_points":3},"2":{"result":25,"range":12,"plus_points":3,"minus_points":9},"3":{"result":33,"range":9,"plus_points":3,"minus_points":6},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":75,"range":12,"plus_points":9,"minus_points":3},"6":{"result":50,"range":12,"plus_points":6,"minus_points":6},"7":{"result":100,"range":9,"plus_points":9,"minus_points":0},"8":{"result":33,"range":9,"plus_points":3,"minus_points":6},"9":{"result":75,"range":12,"plus_points":9,"minus_points":3}},"points_percentage":{"1":{"result":11,"range":27,"points":3},"2":{"result":0,"range":27,"points":-6},"3":{"result":0,"range":27,"points":-3},"4":{"result":11,"range":27,"points":3},"5":{"result":22,"range":27,"points":6},"6":{"result":0,"range":27,"points":0},"7":{"result":33,"range":27,"points":9},"8":{"result":0,"range":27,"points":-3},"9":{"result":22,"range":27,"points":6}}}', '2013-12-08 16:30:13', 2, 4),
('52a4b5d3-6a04-4528-bc66-14e0f70e163e', '{"question_agree_rate":{"1":{"result":67,"range":9,"plus_points":6,"minus_points":3},"2":{"result":25,"range":12,"plus_points":3,"minus_points":9},"3":{"result":33,"range":9,"plus_points":3,"minus_points":6},"9":{"result":75,"range":12,"plus_points":9,"minus_points":3},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":75,"range":12,"plus_points":9,"minus_points":3},"7":{"result":100,"range":9,"plus_points":9,"minus_points":0},"8":{"result":33,"range":9,"plus_points":3,"minus_points":6},"6":{"result":50,"range":12,"plus_points":6,"minus_points":6}},"points_percentage":{"1":{"result":11,"range":27,"points":3},"2":{"result":0,"range":27,"points":-6},"3":{"result":0,"range":27,"points":-3},"9":{"result":22,"range":27,"points":6},"4":{"result":11,"range":27,"points":3},"5":{"result":22,"range":27,"points":6},"7":{"result":33,"range":27,"points":9},"8":{"result":0,"range":27,"points":-3},"6":{"result":0,"range":27,"points":0}}}', '2013-12-08 18:09:31', 2, 4),
('52a5b7c9-7604-40be-8c56-4154f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":0},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"11":{"result":0,"range":0,"points":0},"10":{"result":0,"range":0,"points":0}}}', '2013-12-09 12:30:15', 2, 0),
('52a5b7ee-e8b0-4719-bc90-4af4f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":0,"range":12,"points":-3},"3":{"result":0,"range":12,"points":-3},"9":{"result":25,"range":12,"points":3},"4":{"result":0,"range":12,"points":0},"5":{"result":25,"range":12,"points":3},"7":{"result":25,"range":12,"points":3},"8":{"result":0,"range":12,"points":-3},"6":{"result":0,"range":12,"points":-3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-09 12:30:43', 2, 4),
('52a5b8b1-7da8-4430-b54b-369af70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":0},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"11":{"result":0,"range":0,"points":0},"10":{"result":0,"range":0,"points":0}}}', '2013-12-09 12:34:07', 2, 0),
('52a5ba1f-cc34-4261-b517-3a88f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":0,"plus_points":0,"minus_points":0},"2":{"result":0,"range":0,"plus_points":0,"minus_points":0},"3":{"result":0,"range":0,"plus_points":0,"minus_points":0},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":0,"plus_points":0,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":0,"plus_points":0,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":0,"points":0},"2":{"result":0,"range":0,"points":0},"3":{"result":0,"range":0,"points":0},"9":{"result":0,"range":0,"points":0},"4":{"result":0,"range":0,"points":0},"5":{"result":0,"range":0,"points":0},"7":{"result":0,"range":0,"points":0},"8":{"result":0,"range":0,"points":0},"6":{"result":0,"range":0,"points":0},"11":{"result":0,"range":0,"points":0},"10":{"result":0,"range":0,"points":0}}}', '2013-12-09 12:40:15', 2, 0),
('52a5bc9f-ca0c-4684-874a-59e4f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":0,"plus_points":0,"minus_points":0},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":-3},"2":{"result":0,"range":9,"points":-3},"3":{"result":0,"range":9,"points":-3},"9":{"result":33,"range":9,"points":3},"4":{"result":33,"range":9,"points":3},"5":{"result":0,"range":9,"points":-3},"7":{"result":33,"range":9,"points":3},"8":{"result":0,"range":9,"points":0},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2013-12-09 12:50:52', 2, 0);
INSERT INTO `quiz_results` (`id`, `data`, `created`, `version`, `quiz_id`) VALUES
('52a63628-620c-4682-907b-1198f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":0,"range":12,"points":-3},"3":{"result":0,"range":12,"points":-3},"9":{"result":25,"range":12,"points":3},"4":{"result":0,"range":12,"points":0},"5":{"result":25,"range":12,"points":3},"7":{"result":25,"range":12,"points":3},"8":{"result":0,"range":12,"points":-3},"6":{"result":0,"range":12,"points":-3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-09 21:29:16', 2, 4),
('52a63633-2490-4e46-975c-1198f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":100,"range":3,"plus_points":3,"minus_points":0},"3":{"result":100,"range":3,"plus_points":3,"minus_points":0},"9":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":3,"plus_points":0,"minus_points":3},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"6":{"result":100,"range":3,"plus_points":3,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":12,"points":-3},"2":{"result":25,"range":12,"points":3},"3":{"result":25,"range":12,"points":3},"9":{"result":0,"range":12,"points":-3},"4":{"result":0,"range":12,"points":0},"5":{"result":0,"range":12,"points":-3},"7":{"result":0,"range":12,"points":-3},"8":{"result":25,"range":12,"points":3},"6":{"result":25,"range":12,"points":3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-09 21:29:28', 2, 4),
('52a86171-2754-4581-9671-06bff70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":100,"range":3,"plus_points":3,"minus_points":0},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":0,"range":0,"plus_points":0,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":0,"range":3,"plus_points":0,"minus_points":3},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":100,"range":3,"plus_points":3,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":25,"range":12,"points":3},"3":{"result":0,"range":12,"points":-3},"9":{"result":0,"range":12,"points":0},"4":{"result":0,"range":12,"points":0},"5":{"result":25,"range":12,"points":3},"7":{"result":0,"range":12,"points":-3},"8":{"result":0,"range":12,"points":-3},"6":{"result":25,"range":12,"points":3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-11 13:27:03', 2, 6),
('52ab924f-5224-4fef-bc74-7767f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":50,"range":6,"points":3},"2":{"result":0,"range":6,"points":-3},"3":{"result":0,"range":6,"points":-3},"9":{"result":50,"range":6,"points":3},"4":{"result":0,"range":6,"points":0},"5":{"result":0,"range":6,"points":-3},"7":{"result":0,"range":6,"points":0},"8":{"result":0,"range":6,"points":-3},"6":{"result":0,"range":6,"points":-3},"11":{"result":0,"range":6,"points":0},"10":{"result":0,"range":6,"points":0}}}', '2013-12-13 23:03:47', 2, 3),
('52ac63b5-9ebc-42d7-8202-0fa2f70e163e', '{"question_agree_rate":{"1":{"result":33,"range":9,"plus_points":3,"minus_points":6},"2":{"result":50,"range":12,"plus_points":6,"minus_points":6},"3":{"result":0,"range":9,"plus_points":0,"minus_points":9},"9":{"result":50,"range":12,"plus_points":6,"minus_points":6},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":100,"range":12,"plus_points":12,"minus_points":0},"7":{"result":100,"range":9,"plus_points":9,"minus_points":0},"8":{"result":67,"range":9,"plus_points":6,"minus_points":3},"6":{"result":25,"range":12,"plus_points":3,"minus_points":9},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":27,"points":-3},"2":{"result":0,"range":27,"points":0},"3":{"result":0,"range":27,"points":-9},"9":{"result":0,"range":27,"points":0},"4":{"result":11,"range":27,"points":3},"5":{"result":44,"range":27,"points":12},"7":{"result":33,"range":27,"points":9},"8":{"result":11,"range":27,"points":3},"6":{"result":0,"range":27,"points":-6},"11":{"result":0,"range":27,"points":0},"10":{"result":0,"range":27,"points":0}}}', '2013-12-14 13:57:31', 2, 4),
('52ac63fa-0f64-41aa-b253-0fcdf70e163e', '{"question_agree_rate":{"1":{"result":67,"range":9,"plus_points":6,"minus_points":3},"2":{"result":25,"range":12,"plus_points":3,"minus_points":9},"3":{"result":33,"range":9,"plus_points":3,"minus_points":6},"9":{"result":75,"range":12,"plus_points":9,"minus_points":3},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":75,"range":12,"plus_points":9,"minus_points":3},"7":{"result":100,"range":9,"plus_points":9,"minus_points":0},"8":{"result":33,"range":9,"plus_points":3,"minus_points":6},"6":{"result":50,"range":12,"plus_points":6,"minus_points":6},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":11,"range":27,"points":3},"2":{"result":0,"range":27,"points":-6},"3":{"result":0,"range":27,"points":-3},"9":{"result":22,"range":27,"points":6},"4":{"result":11,"range":27,"points":3},"5":{"result":22,"range":27,"points":6},"7":{"result":33,"range":27,"points":9},"8":{"result":0,"range":27,"points":-3},"6":{"result":0,"range":27,"points":0},"11":{"result":0,"range":27,"points":0},"10":{"result":0,"range":27,"points":0}}}', '2013-12-14 13:58:26', 2, 4),
('52ac659c-f094-4682-9e46-7b83f70e163e', '{"question_agree_rate":{"1":{"result":67,"range":9,"plus_points":6,"minus_points":3},"2":{"result":25,"range":12,"plus_points":3,"minus_points":9},"3":{"result":33,"range":9,"plus_points":3,"minus_points":6},"9":{"result":75,"range":12,"plus_points":9,"minus_points":3},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":75,"range":12,"plus_points":9,"minus_points":3},"7":{"result":100,"range":9,"plus_points":9,"minus_points":0},"8":{"result":33,"range":9,"plus_points":3,"minus_points":6},"6":{"result":50,"range":12,"plus_points":6,"minus_points":6},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":11,"range":27,"points":3},"2":{"result":0,"range":27,"points":-6},"3":{"result":0,"range":27,"points":-3},"9":{"result":22,"range":27,"points":6},"4":{"result":11,"range":27,"points":3},"5":{"result":22,"range":27,"points":6},"7":{"result":33,"range":27,"points":9},"8":{"result":0,"range":27,"points":-3},"6":{"result":0,"range":27,"points":0},"11":{"result":0,"range":27,"points":0},"10":{"result":0,"range":27,"points":0}}}', '2013-12-14 14:05:28', 2, 4),
('52ac65ce-9d54-4e28-8f92-1069f70e163e', '{"question_agree_rate":{"1":{"result":50,"range":6,"plus_points":3,"minus_points":3},"2":{"result":50,"range":6,"plus_points":3,"minus_points":3},"3":{"result":0,"range":6,"plus_points":0,"minus_points":6},"9":{"result":50,"range":6,"plus_points":3,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":6,"plus_points":6,"minus_points":0},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":50,"range":6,"plus_points":3,"minus_points":3},"6":{"result":0,"range":6,"plus_points":0,"minus_points":6},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":0},"2":{"result":0,"range":9,"points":0},"3":{"result":0,"range":9,"points":-6},"9":{"result":0,"range":9,"points":0},"4":{"result":0,"range":9,"points":0},"5":{"result":67,"range":9,"points":6},"7":{"result":33,"range":9,"points":3},"8":{"result":0,"range":9,"points":0},"6":{"result":0,"range":9,"points":-6},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2013-12-14 14:07:13', 2, 4),
('52ac71c0-8b98-46ee-b162-0210f70e163e', '{"question_agree_rate":{"1":{"result":75,"range":12,"plus_points":9,"minus_points":3},"2":{"result":100,"range":12,"plus_points":12,"minus_points":0},"3":{"result":75,"range":12,"plus_points":9,"minus_points":3},"9":{"result":75,"range":12,"plus_points":9,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":25,"range":12,"plus_points":3,"minus_points":9},"7":{"result":0,"range":9,"plus_points":0,"minus_points":9},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"6":{"result":75,"range":12,"plus_points":9,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":15,"range":39,"points":6},"2":{"result":31,"range":39,"points":12},"3":{"result":15,"range":39,"points":6},"9":{"result":15,"range":39,"points":6},"4":{"result":0,"range":39,"points":0},"5":{"result":0,"range":39,"points":-6},"7":{"result":0,"range":39,"points":-9},"8":{"result":8,"range":39,"points":3},"6":{"result":15,"range":39,"points":6},"11":{"result":0,"range":39,"points":0},"10":{"result":0,"range":39,"points":0}}}', '2013-12-14 15:06:28', 2, 4),
('52aca287-e314-417d-ae49-10fef70e163e', '{"question_agree_rate":{"1":{"result":43,"range":21,"plus_points":9,"minus_points":12},"2":{"result":40,"range":30,"plus_points":12,"minus_points":18},"3":{"result":57,"range":21,"plus_points":12,"minus_points":9},"9":{"result":60,"range":30,"plus_points":18,"minus_points":12},"4":{"result":100,"range":9,"plus_points":9,"minus_points":0},"5":{"result":60,"range":30,"plus_points":18,"minus_points":12},"7":{"result":86,"range":21,"plus_points":18,"minus_points":3},"8":{"result":57,"range":21,"plus_points":12,"minus_points":9},"6":{"result":70,"range":30,"plus_points":21,"minus_points":9},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":54,"points":-3},"2":{"result":0,"range":54,"points":-6},"3":{"result":6,"range":54,"points":3},"9":{"result":11,"range":54,"points":6},"4":{"result":17,"range":54,"points":9},"5":{"result":11,"range":54,"points":6},"7":{"result":28,"range":54,"points":15},"8":{"result":6,"range":54,"points":3},"6":{"result":22,"range":54,"points":12},"11":{"result":0,"range":54,"points":0},"10":{"result":0,"range":54,"points":0}}}', '2013-12-14 18:39:56', 2, 4),
('52accd1f-2388-4749-affd-2a9ef70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":50,"range":6,"points":3},"2":{"result":0,"range":6,"points":-3},"3":{"result":0,"range":6,"points":-3},"9":{"result":50,"range":6,"points":3},"4":{"result":0,"range":6,"points":0},"5":{"result":0,"range":6,"points":-3},"7":{"result":0,"range":6,"points":0},"8":{"result":0,"range":6,"points":-3},"6":{"result":0,"range":6,"points":-3},"11":{"result":0,"range":6,"points":0},"10":{"result":0,"range":6,"points":0}}}', '2013-12-14 21:26:59', 2, 3),
('52accefd-d4e8-44ff-b0ad-1d13f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":100,"range":3,"plus_points":3,"minus_points":0},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":-3},"2":{"result":33,"range":9,"points":3},"3":{"result":0,"range":9,"points":-3},"9":{"result":0,"range":9,"points":-3},"4":{"result":0,"range":9,"points":0},"5":{"result":33,"range":9,"points":3},"7":{"result":0,"range":9,"points":0},"8":{"result":33,"range":9,"points":3},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2013-12-14 21:34:59', 2, 4),
('52ad8ed2-a9d0-4328-be14-7cf3f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":100,"range":3,"plus_points":3,"minus_points":0},"3":{"result":100,"range":3,"plus_points":3,"minus_points":0},"9":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"6":{"result":100,"range":3,"plus_points":3,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":15,"points":-3},"2":{"result":20,"range":15,"points":3},"3":{"result":20,"range":15,"points":3},"9":{"result":0,"range":15,"points":-3},"4":{"result":0,"range":15,"points":0},"5":{"result":20,"range":15,"points":3},"7":{"result":0,"range":15,"points":0},"8":{"result":20,"range":15,"points":3},"6":{"result":20,"range":15,"points":3},"11":{"result":0,"range":15,"points":0},"10":{"result":0,"range":15,"points":0}}}', '2013-12-15 11:13:25', 2, 3),
('52b5bd09-dfe4-4e53-9f39-2982f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":6,"plus_points":6,"minus_points":0},"2":{"result":0,"range":6,"plus_points":0,"minus_points":6},"3":{"result":50,"range":6,"plus_points":3,"minus_points":3},"9":{"result":100,"range":6,"plus_points":6,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":50,"range":6,"plus_points":3,"minus_points":3},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":6,"plus_points":0,"minus_points":6},"6":{"result":50,"range":6,"plus_points":3,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":40,"range":15,"points":6},"2":{"result":0,"range":15,"points":-6},"3":{"result":0,"range":15,"points":0},"9":{"result":40,"range":15,"points":6},"4":{"result":0,"range":15,"points":0},"5":{"result":0,"range":15,"points":0},"7":{"result":20,"range":15,"points":3},"8":{"result":0,"range":15,"points":-6},"6":{"result":0,"range":15,"points":0},"11":{"result":0,"range":15,"points":0},"10":{"result":0,"range":15,"points":0}}}', '2013-12-21 16:08:48', 2, 4),
('52b5bf30-bdcc-4eac-bc84-58f0f70e163e', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":100,"range":3,"plus_points":3,"minus_points":0},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":0,"range":3,"plus_points":0,"minus_points":3},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":-3},"2":{"result":33,"range":9,"points":3},"3":{"result":0,"range":9,"points":-3},"9":{"result":0,"range":9,"points":-3},"4":{"result":0,"range":9,"points":0},"5":{"result":33,"range":9,"points":3},"7":{"result":0,"range":9,"points":0},"8":{"result":33,"range":9,"points":3},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2013-12-21 16:17:59', 2, 4),
('52b711b5-79bc-453a-81a8-1d06f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":0,"range":12,"points":-3},"3":{"result":0,"range":12,"points":-3},"9":{"result":25,"range":12,"points":3},"4":{"result":0,"range":12,"points":0},"5":{"result":25,"range":12,"points":3},"7":{"result":25,"range":12,"points":3},"8":{"result":0,"range":12,"points":-3},"6":{"result":0,"range":12,"points":-3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-22 16:22:19', 2, 4),
('52b76594-02b0-486b-951e-2e7cf70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":50,"range":6,"points":3},"2":{"result":0,"range":6,"points":-3},"3":{"result":0,"range":6,"points":-3},"9":{"result":50,"range":6,"points":3},"4":{"result":0,"range":6,"points":0},"5":{"result":0,"range":6,"points":-3},"7":{"result":0,"range":6,"points":0},"8":{"result":0,"range":6,"points":-3},"6":{"result":0,"range":6,"points":-3},"11":{"result":0,"range":6,"points":0},"10":{"result":0,"range":6,"points":0}}}', '2013-12-22 22:20:09', 2, 3),
('52bc58ac-2638-4dc1-8d87-0d14f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":0,"range":12,"points":-3},"3":{"result":0,"range":12,"points":-3},"9":{"result":25,"range":12,"points":3},"4":{"result":0,"range":12,"points":0},"5":{"result":25,"range":12,"points":3},"7":{"result":25,"range":12,"points":3},"8":{"result":0,"range":12,"points":-3},"6":{"result":0,"range":12,"points":-3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-26 16:26:33', 2, 4),
('52bd6487-e08c-4c71-9b3b-36e2f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":13,"plus_points":13,"minus_points":0},"2":{"result":6,"range":16,"plus_points":1,"minus_points":15},"3":{"result":31,"range":13,"plus_points":4,"minus_points":9},"9":{"result":81,"range":16,"plus_points":13,"minus_points":3},"4":{"result":0,"range":3,"plus_points":0,"minus_points":3},"5":{"result":56,"range":16,"plus_points":9,"minus_points":7},"7":{"result":69,"range":13,"plus_points":9,"minus_points":4},"8":{"result":0,"range":15,"plus_points":0,"minus_points":15},"6":{"result":25,"range":16,"plus_points":4,"minus_points":12},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":43,"range":30,"points":13},"2":{"result":0,"range":30,"points":-14},"3":{"result":0,"range":30,"points":-5},"9":{"result":33,"range":30,"points":10},"4":{"result":0,"range":30,"points":-3},"5":{"result":7,"range":30,"points":2},"7":{"result":17,"range":30,"points":5},"8":{"result":0,"range":30,"points":-15},"6":{"result":0,"range":30,"points":-8},"11":{"result":0,"range":30,"points":0},"10":{"result":0,"range":30,"points":0}}}', '2013-12-27 11:29:28', 2, 4),
('52bdfe7f-bfa0-4b40-97af-41f4f70e163e', '{"question_agree_rate":{"1":{"result":95,"range":19,"plus_points":18,"minus_points":1},"2":{"result":14,"range":22,"plus_points":3,"minus_points":19},"3":{"result":47,"range":19,"plus_points":9,"minus_points":10},"9":{"result":95,"range":22,"plus_points":21,"minus_points":1},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":59,"range":22,"plus_points":13,"minus_points":9},"7":{"result":100,"range":13,"plus_points":13,"minus_points":0},"8":{"result":14,"range":21,"plus_points":3,"minus_points":18},"6":{"result":55,"range":22,"plus_points":12,"minus_points":10},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":29,"range":59,"points":17},"2":{"result":0,"range":59,"points":-16},"3":{"result":0,"range":59,"points":-1},"9":{"result":34,"range":59,"points":20},"4":{"result":5,"range":59,"points":3},"5":{"result":7,"range":59,"points":4},"7":{"result":22,"range":59,"points":13},"8":{"result":0,"range":59,"points":-15},"6":{"result":3,"range":59,"points":2},"11":{"result":0,"range":59,"points":0},"10":{"result":0,"range":59,"points":0}}}', '2013-12-27 22:26:18', 2, 4),
('52be1690-ed5c-43e7-83d1-5313f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":0,"range":12,"points":-3},"3":{"result":0,"range":12,"points":-3},"9":{"result":25,"range":12,"points":3},"4":{"result":0,"range":12,"points":0},"5":{"result":25,"range":12,"points":3},"7":{"result":25,"range":12,"points":3},"8":{"result":0,"range":12,"points":-3},"6":{"result":0,"range":12,"points":-3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-28 00:08:57', 2, 4),
('52bef682-704c-496a-bf4d-1498f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":13,"plus_points":13,"minus_points":0},"2":{"result":8,"range":13,"plus_points":1,"minus_points":12},"3":{"result":31,"range":13,"plus_points":4,"minus_points":9},"9":{"result":100,"range":13,"plus_points":13,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":69,"range":13,"plus_points":9,"minus_points":4},"7":{"result":90,"range":10,"plus_points":9,"minus_points":1},"8":{"result":0,"range":12,"plus_points":0,"minus_points":12},"6":{"result":31,"range":13,"plus_points":4,"minus_points":9},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":33,"range":39,"points":13},"2":{"result":0,"range":39,"points":-11},"3":{"result":0,"range":39,"points":-5},"9":{"result":33,"range":39,"points":13},"4":{"result":0,"range":39,"points":0},"5":{"result":13,"range":39,"points":5},"7":{"result":21,"range":39,"points":8},"8":{"result":0,"range":39,"points":-12},"6":{"result":0,"range":39,"points":-5},"11":{"result":0,"range":39,"points":0},"10":{"result":0,"range":39,"points":0}}}', '2013-12-28 16:04:29', 2, 4),
('52bf3d3c-5ac8-49f2-bb39-15edf70e163e', '{"question_agree_rate":{"1":{"result":100,"range":7,"plus_points":7,"minus_points":0},"2":{"result":10,"range":10,"plus_points":1,"minus_points":9},"3":{"result":57,"range":7,"plus_points":4,"minus_points":3},"9":{"result":70,"range":10,"plus_points":7,"minus_points":3},"4":{"result":0,"range":3,"plus_points":0,"minus_points":3},"5":{"result":30,"range":10,"plus_points":3,"minus_points":7},"7":{"result":43,"range":7,"plus_points":3,"minus_points":4},"8":{"result":0,"range":9,"plus_points":0,"minus_points":9},"6":{"result":40,"range":10,"plus_points":4,"minus_points":6},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":58,"range":12,"points":7},"2":{"result":0,"range":12,"points":-8},"3":{"result":8,"range":12,"points":1},"9":{"result":33,"range":12,"points":4},"4":{"result":0,"range":12,"points":-3},"5":{"result":0,"range":12,"points":-4},"7":{"result":0,"range":12,"points":-1},"8":{"result":0,"range":12,"points":-9},"6":{"result":0,"range":12,"points":-2},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2013-12-28 21:06:19', 2, 4),
('52c1dc96-4a48-4c7e-885a-2487f70e163e', '{"question_agree_rate":{"1":{"result":25,"range":12,"plus_points":3,"minus_points":9},"2":{"result":80,"range":15,"plus_points":12,"minus_points":3},"3":{"result":0,"range":12,"plus_points":0,"minus_points":12},"9":{"result":40,"range":15,"plus_points":6,"minus_points":9},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":100,"range":15,"plus_points":15,"minus_points":0},"7":{"result":100,"range":6,"plus_points":6,"minus_points":0},"8":{"result":80,"range":15,"plus_points":12,"minus_points":3},"6":{"result":20,"range":15,"plus_points":3,"minus_points":12},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":42,"points":-6},"2":{"result":21,"range":42,"points":9},"3":{"result":0,"range":42,"points":-12},"9":{"result":0,"range":42,"points":-3},"4":{"result":7,"range":42,"points":3},"5":{"result":36,"range":42,"points":15},"7":{"result":14,"range":42,"points":6},"8":{"result":21,"range":42,"points":9},"6":{"result":0,"range":42,"points":-9},"11":{"result":0,"range":42,"points":0},"10":{"result":0,"range":42,"points":0}}}', '2013-12-30 20:54:34', 2, 4),
('52c1ddde-dfd0-494b-9223-22d4f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":50,"range":6,"plus_points":3,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":6,"plus_points":6,"minus_points":0},"4":{"result":100,"range":3,"plus_points":3,"minus_points":0},"5":{"result":100,"range":6,"plus_points":6,"minus_points":0},"7":{"result":100,"range":6,"plus_points":6,"minus_points":0},"8":{"result":50,"range":6,"plus_points":3,"minus_points":3},"6":{"result":50,"range":6,"plus_points":3,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":13,"range":24,"points":3},"2":{"result":0,"range":24,"points":0},"3":{"result":0,"range":24,"points":-3},"9":{"result":25,"range":24,"points":6},"4":{"result":13,"range":24,"points":3},"5":{"result":25,"range":24,"points":6},"7":{"result":25,"range":24,"points":6},"8":{"result":0,"range":24,"points":0},"6":{"result":0,"range":24,"points":0},"11":{"result":0,"range":24,"points":0},"10":{"result":0,"range":24,"points":0}}}', '2013-12-30 21:10:24', 2, 4),
('52c44204-6554-4102-ab5f-2919f70e163e', '{"question_agree_rate":{"1":{"result":100,"range":9,"plus_points":9,"minus_points":0},"2":{"result":50,"range":12,"plus_points":6,"minus_points":6},"3":{"result":67,"range":9,"plus_points":6,"minus_points":3},"9":{"result":50,"range":12,"plus_points":6,"minus_points":6},"4":{"result":0,"range":6,"plus_points":0,"minus_points":6},"5":{"result":50,"range":12,"plus_points":6,"minus_points":6},"7":{"result":25,"range":12,"plus_points":3,"minus_points":9},"8":{"result":33,"range":9,"plus_points":3,"minus_points":6},"6":{"result":50,"range":12,"plus_points":6,"minus_points":6},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":75,"range":12,"points":9},"2":{"result":0,"range":12,"points":0},"3":{"result":25,"range":12,"points":3},"9":{"result":0,"range":12,"points":0},"4":{"result":0,"range":12,"points":-6},"5":{"result":0,"range":12,"points":0},"7":{"result":0,"range":12,"points":-6},"8":{"result":0,"range":12,"points":-3},"6":{"result":0,"range":12,"points":0},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2014-01-01 16:27:59', 2, 4),
('52c5ca08-77a8-46cd-8669-71dff70e163e', '{"question_agree_rate":{"1":{"result":30,"range":30,"plus_points":9,"minus_points":21},"2":{"result":31,"range":39,"plus_points":12,"minus_points":27},"3":{"result":40,"range":30,"plus_points":12,"minus_points":18},"9":{"result":69,"range":39,"plus_points":27,"minus_points":12},"4":{"result":100,"range":18,"plus_points":18,"minus_points":0},"5":{"result":46,"range":39,"plus_points":18,"minus_points":21},"7":{"result":90,"range":30,"plus_points":27,"minus_points":3},"8":{"result":40,"range":30,"plus_points":12,"minus_points":18},"6":{"result":54,"range":39,"plus_points":21,"minus_points":18},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":60,"points":-12},"2":{"result":0,"range":60,"points":-15},"3":{"result":0,"range":60,"points":-6},"9":{"result":25,"range":60,"points":15},"4":{"result":30,"range":60,"points":18},"5":{"result":0,"range":60,"points":-3},"7":{"result":40,"range":60,"points":24},"8":{"result":0,"range":60,"points":-6},"6":{"result":5,"range":60,"points":3},"11":{"result":0,"range":60,"points":0},"10":{"result":0,"range":60,"points":0}}}', '2014-01-02 20:20:59', 2, 4),
('52c5d717-132c-4dcb-b6ad-75eaf70e163e', '{"question_agree_rate":{"1":{"result":40,"range":15,"plus_points":6,"minus_points":9},"2":{"result":0,"range":16,"plus_points":0,"minus_points":16},"3":{"result":20,"range":15,"plus_points":3,"minus_points":12},"9":{"result":94,"range":16,"plus_points":15,"minus_points":1},"4":{"result":90,"range":10,"plus_points":9,"minus_points":1},"5":{"result":19,"range":16,"plus_points":3,"minus_points":13},"7":{"result":92,"range":13,"plus_points":12,"minus_points":1},"8":{"result":0,"range":16,"plus_points":0,"minus_points":16},"6":{"result":19,"range":16,"plus_points":3,"minus_points":13},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":33,"points":-3},"2":{"result":0,"range":33,"points":-16},"3":{"result":0,"range":33,"points":-9},"9":{"result":42,"range":33,"points":14},"4":{"result":24,"range":33,"points":8},"5":{"result":0,"range":33,"points":-10},"7":{"result":33,"range":33,"points":11},"8":{"result":0,"range":33,"points":-16},"6":{"result":0,"range":33,"points":-10},"11":{"result":0,"range":33,"points":0},"10":{"result":0,"range":33,"points":0}}}', '2014-01-02 21:16:22', 2, 4),
('52c5e5d3-7b58-4f58-88c8-75edf70e163e', '{"question_agree_rate":{"1":{"result":0,"range":15,"plus_points":0,"minus_points":15},"2":{"result":83,"range":18,"plus_points":15,"minus_points":3},"3":{"result":60,"range":15,"plus_points":9,"minus_points":6},"9":{"result":33,"range":18,"plus_points":6,"minus_points":12},"4":{"result":100,"range":6,"plus_points":6,"minus_points":0},"5":{"result":33,"range":18,"plus_points":6,"minus_points":12},"7":{"result":40,"range":15,"plus_points":6,"minus_points":9},"8":{"result":83,"range":18,"plus_points":15,"minus_points":3},"6":{"result":67,"range":18,"plus_points":12,"minus_points":6},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":39,"points":-15},"2":{"result":31,"range":39,"points":12},"3":{"result":8,"range":39,"points":3},"9":{"result":0,"range":39,"points":-6},"4":{"result":15,"range":39,"points":6},"5":{"result":0,"range":39,"points":-6},"7":{"result":0,"range":39,"points":-3},"8":{"result":31,"range":39,"points":12},"6":{"result":15,"range":39,"points":6},"11":{"result":0,"range":39,"points":0},"10":{"result":0,"range":39,"points":0}}}', '2014-01-02 22:19:44', 2, 4),
('52c73ce4-40d8-45fc-bc25-1b467ddeb986', '{"question_agree_rate":{"1":{"result":75,"range":12,"plus_points":9,"minus_points":3},"2":{"result":20,"range":15,"plus_points":3,"minus_points":12},"3":{"result":50,"range":12,"plus_points":6,"minus_points":6},"9":{"result":40,"range":15,"plus_points":6,"minus_points":9},"4":{"result":0,"range":6,"plus_points":0,"minus_points":6},"5":{"result":60,"range":15,"plus_points":9,"minus_points":6},"7":{"result":50,"range":12,"plus_points":6,"minus_points":6},"8":{"result":25,"range":12,"plus_points":3,"minus_points":9},"6":{"result":40,"range":15,"plus_points":6,"minus_points":9},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":67,"range":9,"points":6},"2":{"result":0,"range":9,"points":-9},"3":{"result":0,"range":9,"points":0},"9":{"result":0,"range":9,"points":-3},"4":{"result":0,"range":9,"points":-6},"5":{"result":33,"range":9,"points":3},"7":{"result":0,"range":9,"points":0},"8":{"result":0,"range":9,"points":-6},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-01-03 22:42:54', 2, 4),
('52cc766d-3128-45a2-b618-41247ddeb986', '{"question_agree_rate":{"1":{"result":75,"range":12,"plus_points":9,"minus_points":3},"2":{"result":40,"range":15,"plus_points":6,"minus_points":9},"3":{"result":50,"range":12,"plus_points":6,"minus_points":6},"9":{"result":60,"range":15,"plus_points":9,"minus_points":6},"4":{"result":50,"range":6,"plus_points":3,"minus_points":3},"5":{"result":80,"range":15,"plus_points":12,"minus_points":3},"7":{"result":75,"range":12,"plus_points":9,"minus_points":3},"8":{"result":50,"range":12,"plus_points":6,"minus_points":6},"6":{"result":60,"range":15,"plus_points":9,"minus_points":6},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":22,"range":27,"points":6},"2":{"result":0,"range":27,"points":-3},"3":{"result":0,"range":27,"points":0},"9":{"result":11,"range":27,"points":3},"4":{"result":0,"range":27,"points":0},"5":{"result":33,"range":27,"points":9},"7":{"result":22,"range":27,"points":6},"8":{"result":0,"range":27,"points":0},"6":{"result":11,"range":27,"points":3},"11":{"result":0,"range":27,"points":0},"10":{"result":0,"range":27,"points":0}}}', '2014-01-07 21:49:53', 2, 4),
('52cdc05b-4eac-4146-af9c-556e7ddeb986', '{"question_agree_rate":{"1":{"result":50,"range":12,"plus_points":6,"minus_points":6},"2":{"result":20,"range":15,"plus_points":3,"minus_points":12},"3":{"result":25,"range":12,"plus_points":3,"minus_points":9},"9":{"result":80,"range":15,"plus_points":12,"minus_points":3},"4":{"result":100,"range":6,"plus_points":6,"minus_points":0},"5":{"result":60,"range":15,"plus_points":9,"minus_points":6},"7":{"result":100,"range":12,"plus_points":12,"minus_points":0},"8":{"result":25,"range":12,"plus_points":3,"minus_points":9},"6":{"result":40,"range":15,"plus_points":6,"minus_points":9},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":30,"points":0},"2":{"result":0,"range":30,"points":-9},"3":{"result":0,"range":30,"points":-6},"9":{"result":30,"range":30,"points":9},"4":{"result":20,"range":30,"points":6},"5":{"result":10,"range":30,"points":3},"7":{"result":40,"range":30,"points":12},"8":{"result":0,"range":30,"points":-6},"6":{"result":0,"range":30,"points":-3},"11":{"result":0,"range":30,"points":0},"10":{"result":0,"range":30,"points":0}}}', '2014-01-08 21:17:34', 2, 4),
('52cdcb55-bb98-4d09-9fc8-59077ddeb986', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":50,"range":6,"points":3},"2":{"result":0,"range":6,"points":-3},"3":{"result":0,"range":6,"points":-3},"9":{"result":50,"range":6,"points":3},"4":{"result":0,"range":6,"points":0},"5":{"result":0,"range":6,"points":-3},"7":{"result":0,"range":6,"points":0},"8":{"result":0,"range":6,"points":-3},"6":{"result":0,"range":6,"points":-3},"11":{"result":0,"range":6,"points":0},"10":{"result":0,"range":6,"points":0}}}', '2014-01-08 22:04:18', 2, 3),
('52cf27bd-d2f8-43c5-b4ad-79887ddeb986', '{"question_agree_rate":{"1":{"result":100,"range":3,"plus_points":3,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":100,"range":3,"plus_points":3,"minus_points":0},"7":{"result":100,"range":3,"plus_points":3,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":25,"range":12,"points":3},"2":{"result":0,"range":12,"points":-3},"3":{"result":0,"range":12,"points":-3},"9":{"result":25,"range":12,"points":3},"4":{"result":0,"range":12,"points":0},"5":{"result":25,"range":12,"points":3},"7":{"result":25,"range":12,"points":3},"8":{"result":0,"range":12,"points":-3},"6":{"result":0,"range":12,"points":-3},"11":{"result":0,"range":12,"points":0},"10":{"result":0,"range":12,"points":0}}}', '2014-01-09 22:50:44', 2, 4),
('52d054a9-de34-42c0-9aca-19f67ddeb986', '{"question_agree_rate":{"1":{"result":100,"range":6,"plus_points":6,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":67,"range":9,"points":6},"2":{"result":0,"range":9,"points":-3},"3":{"result":0,"range":9,"points":-3},"9":{"result":33,"range":9,"points":3},"4":{"result":0,"range":9,"points":0},"5":{"result":0,"range":9,"points":-3},"7":{"result":0,"range":9,"points":0},"8":{"result":0,"range":9,"points":-3},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-01-10 20:14:44', 2, 3),
('52d19ba7-46a8-4fa5-a593-16a67ddeb986', '{"question_agree_rate":{"1":{"result":100,"range":6,"plus_points":6,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":67,"range":9,"points":6},"2":{"result":0,"range":9,"points":-3},"3":{"result":0,"range":9,"points":-3},"9":{"result":33,"range":9,"points":3},"4":{"result":0,"range":9,"points":0},"5":{"result":0,"range":9,"points":-3},"7":{"result":0,"range":9,"points":0},"8":{"result":0,"range":9,"points":-3},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-01-11 19:32:05', 2, 3),
('52d44079-02e4-4d07-9e27-06d37ddeb986', '{"question_agree_rate":{"1":{"result":33,"range":9,"plus_points":3,"minus_points":6},"2":{"result":25,"range":12,"plus_points":3,"minus_points":9},"3":{"result":0,"range":9,"plus_points":0,"minus_points":9},"9":{"result":50,"range":12,"plus_points":6,"minus_points":6},"4":{"result":50,"range":6,"plus_points":3,"minus_points":3},"5":{"result":50,"range":12,"plus_points":6,"minus_points":6},"7":{"result":67,"range":9,"plus_points":6,"minus_points":3},"8":{"result":25,"range":12,"plus_points":3,"minus_points":9},"6":{"result":0,"range":12,"plus_points":0,"minus_points":12},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":3,"points":-3},"2":{"result":0,"range":3,"points":-6},"3":{"result":0,"range":3,"points":-9},"9":{"result":0,"range":3,"points":0},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":0},"7":{"result":100,"range":3,"points":3},"8":{"result":0,"range":3,"points":-6},"6":{"result":0,"range":3,"points":-12},"11":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2014-01-13 19:39:14', 2, 4),
('52d44134-6868-4085-99d6-14e27ddeb986', '{"question_agree_rate":{"1":{"result":25,"range":12,"plus_points":3,"minus_points":9},"2":{"result":20,"range":15,"plus_points":3,"minus_points":12},"3":{"result":0,"range":12,"plus_points":0,"minus_points":12},"9":{"result":40,"range":15,"plus_points":6,"minus_points":9},"4":{"result":50,"range":6,"plus_points":3,"minus_points":3},"5":{"result":60,"range":15,"plus_points":9,"minus_points":6},"7":{"result":75,"range":12,"plus_points":9,"minus_points":3},"8":{"result":25,"range":12,"plus_points":3,"minus_points":9},"6":{"result":0,"range":15,"plus_points":0,"minus_points":15},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":-6},"2":{"result":0,"range":9,"points":-9},"3":{"result":0,"range":9,"points":-12},"9":{"result":0,"range":9,"points":-3},"4":{"result":0,"range":9,"points":0},"5":{"result":33,"range":9,"points":3},"7":{"result":67,"range":9,"points":6},"8":{"result":0,"range":9,"points":-6},"6":{"result":0,"range":9,"points":-15},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-01-13 19:40:48', 2, 4),
('52da81a1-d638-4516-8438-66e87ddeb986', '{"question_agree_rate":{"1":{"result":100,"range":12,"plus_points":12,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":80,"range":15,"points":12},"2":{"result":0,"range":15,"points":-3},"3":{"result":0,"range":15,"points":-3},"9":{"result":20,"range":15,"points":3},"4":{"result":0,"range":15,"points":0},"5":{"result":0,"range":15,"points":-3},"7":{"result":0,"range":15,"points":0},"8":{"result":0,"range":15,"points":-3},"6":{"result":0,"range":15,"points":-3},"11":{"result":0,"range":15,"points":0},"10":{"result":0,"range":15,"points":0}}}', '2014-01-18 13:29:18', 2, 3),
('52dacb56-e958-4cf0-8fcd-682b7ddeb986', '{"question_agree_rate":{"1":{"result":100,"range":6,"plus_points":6,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":67,"range":9,"points":6},"2":{"result":0,"range":9,"points":-3},"3":{"result":0,"range":9,"points":-3},"9":{"result":33,"range":9,"points":3},"4":{"result":0,"range":9,"points":0},"5":{"result":0,"range":9,"points":-3},"7":{"result":0,"range":9,"points":0},"8":{"result":0,"range":9,"points":-3},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-01-18 18:43:42', 2, 3);
INSERT INTO `quiz_results` (`id`, `data`, `created`, `version`, `quiz_id`) VALUES
('52dae7cf-ae54-4011-8782-7d857ddeb986', '{"question_agree_rate":{"1":{"result":100,"range":6,"plus_points":6,"minus_points":0},"2":{"result":0,"range":3,"plus_points":0,"minus_points":3},"3":{"result":0,"range":3,"plus_points":0,"minus_points":3},"9":{"result":100,"range":3,"plus_points":3,"minus_points":0},"4":{"result":0,"range":0,"plus_points":0,"minus_points":0},"5":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":0,"range":0,"plus_points":0,"minus_points":0},"8":{"result":0,"range":3,"plus_points":0,"minus_points":3},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":67,"range":9,"points":6},"2":{"result":0,"range":9,"points":-3},"3":{"result":0,"range":9,"points":-3},"9":{"result":33,"range":9,"points":3},"4":{"result":0,"range":9,"points":0},"5":{"result":0,"range":9,"points":-3},"7":{"result":0,"range":9,"points":0},"8":{"result":0,"range":9,"points":-3},"6":{"result":0,"range":9,"points":-3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-01-18 20:45:10', 2, 3),
('52eeb8df-ab88-4cf2-bed9-48327ddeb986', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":50,"range":6,"plus_points":3,"minus_points":3},"3":{"result":50,"range":6,"plus_points":3,"minus_points":3},"9":{"result":50,"range":6,"plus_points":3,"minus_points":3},"4":{"result":50,"range":6,"plus_points":3,"minus_points":3},"5":{"result":0,"range":6,"plus_points":0,"minus_points":6},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":50,"range":6,"plus_points":3,"minus_points":3},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":3,"points":-3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":-6},"6":{"result":0,"range":3,"points":-3},"7":{"result":0,"range":3,"points":0},"8":{"result":100,"range":3,"points":3},"11":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2014-02-02 21:30:11', 2, 3),
('52eeb8e9-bcf4-41b2-bffa-48327ddeb986', '{"question_agree_rate":{"1":{"result":25,"range":12,"plus_points":3,"minus_points":9},"2":{"result":50,"range":12,"plus_points":6,"minus_points":6},"3":{"result":50,"range":12,"plus_points":6,"minus_points":6},"9":{"result":0,"range":15,"plus_points":0,"minus_points":15},"4":{"result":0,"range":6,"plus_points":0,"minus_points":6},"5":{"result":60,"range":15,"plus_points":9,"minus_points":6},"6":{"result":40,"range":15,"plus_points":6,"minus_points":9},"7":{"result":25,"range":12,"plus_points":3,"minus_points":9},"8":{"result":75,"range":12,"plus_points":9,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":-6},"2":{"result":0,"range":9,"points":0},"3":{"result":0,"range":9,"points":0},"9":{"result":0,"range":9,"points":-15},"4":{"result":0,"range":9,"points":-6},"5":{"result":33,"range":9,"points":3},"6":{"result":0,"range":9,"points":-3},"7":{"result":0,"range":9,"points":-6},"8":{"result":67,"range":9,"points":6},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-02-02 21:30:28', 2, 4),
('52eebc2f-0da4-4770-af90-4a5f7ddeb986', '{"question_agree_rate":{"1":{"result":67,"range":18,"plus_points":12,"minus_points":6},"2":{"result":50,"range":18,"plus_points":9,"minus_points":9},"3":{"result":50,"range":18,"plus_points":9,"minus_points":9},"9":{"result":89,"range":27,"plus_points":24,"minus_points":3},"4":{"result":100,"range":12,"plus_points":12,"minus_points":0},"5":{"result":56,"range":27,"plus_points":15,"minus_points":12},"6":{"result":67,"range":27,"plus_points":18,"minus_points":9},"7":{"result":100,"range":18,"plus_points":18,"minus_points":0},"8":{"result":38,"range":24,"plus_points":9,"minus_points":15},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":9,"range":69,"points":6},"2":{"result":0,"range":69,"points":0},"3":{"result":0,"range":69,"points":0},"9":{"result":30,"range":69,"points":21},"4":{"result":17,"range":69,"points":12},"5":{"result":4,"range":69,"points":3},"6":{"result":13,"range":69,"points":9},"7":{"result":26,"range":69,"points":18},"8":{"result":0,"range":69,"points":-6},"11":{"result":0,"range":69,"points":0},"10":{"result":0,"range":69,"points":0}}}', '2014-02-02 21:45:08', 2, 4),
('52efef7f-ce04-4d30-ba77-11b57ddeb986', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":50,"range":6,"plus_points":3,"minus_points":3},"3":{"result":50,"range":6,"plus_points":3,"minus_points":3},"9":{"result":50,"range":6,"plus_points":3,"minus_points":3},"4":{"result":50,"range":6,"plus_points":3,"minus_points":3},"5":{"result":0,"range":6,"plus_points":0,"minus_points":6},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":50,"range":6,"plus_points":3,"minus_points":3},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":3,"points":-3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":-6},"6":{"result":0,"range":3,"points":-3},"7":{"result":0,"range":3,"points":0},"8":{"result":100,"range":3,"points":3},"11":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2014-02-03 19:35:33', 2, 3),
('52eff942-d920-46da-a78c-06d37ddeb986', '{"question_agree_rate":{"1":{"result":0,"range":3,"plus_points":0,"minus_points":3},"2":{"result":50,"range":6,"plus_points":3,"minus_points":3},"3":{"result":50,"range":6,"plus_points":3,"minus_points":3},"9":{"result":50,"range":6,"plus_points":3,"minus_points":3},"4":{"result":50,"range":6,"plus_points":3,"minus_points":3},"5":{"result":0,"range":6,"plus_points":0,"minus_points":6},"6":{"result":0,"range":3,"plus_points":0,"minus_points":3},"7":{"result":50,"range":6,"plus_points":3,"minus_points":3},"8":{"result":100,"range":3,"plus_points":3,"minus_points":0},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":3,"points":-3},"2":{"result":0,"range":3,"points":0},"3":{"result":0,"range":3,"points":0},"9":{"result":0,"range":3,"points":0},"4":{"result":0,"range":3,"points":0},"5":{"result":0,"range":3,"points":-6},"6":{"result":0,"range":3,"points":-3},"7":{"result":0,"range":3,"points":0},"8":{"result":100,"range":3,"points":3},"11":{"result":0,"range":3,"points":0},"10":{"result":0,"range":3,"points":0}}}', '2014-02-03 20:17:42', 2, 3),
('52f00067-9fb8-4285-acaf-1acf7ddeb986', '{"question_agree_rate":{"1":{"result":33,"range":9,"plus_points":3,"minus_points":6},"2":{"result":67,"range":9,"plus_points":6,"minus_points":3},"3":{"result":67,"range":9,"plus_points":6,"minus_points":3},"9":{"result":25,"range":12,"plus_points":3,"minus_points":9},"4":{"result":0,"range":3,"plus_points":0,"minus_points":3},"5":{"result":25,"range":12,"plus_points":3,"minus_points":9},"6":{"result":50,"range":12,"plus_points":6,"minus_points":6},"7":{"result":0,"range":9,"plus_points":0,"minus_points":9},"8":{"result":67,"range":9,"plus_points":6,"minus_points":3},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":9,"points":-3},"2":{"result":33,"range":9,"points":3},"3":{"result":33,"range":9,"points":3},"9":{"result":0,"range":9,"points":-6},"4":{"result":0,"range":9,"points":-3},"5":{"result":0,"range":9,"points":-6},"6":{"result":0,"range":9,"points":0},"7":{"result":0,"range":9,"points":-9},"8":{"result":33,"range":9,"points":3},"11":{"result":0,"range":9,"points":0},"10":{"result":0,"range":9,"points":0}}}', '2014-02-03 20:47:46', 2, 4),
('52f0020c-b328-4fde-83b9-17177ddeb986', '{"question_agree_rate":{"1":{"result":41,"range":22,"plus_points":9,"minus_points":13},"2":{"result":64,"range":14,"plus_points":9,"minus_points":5},"3":{"result":82,"range":22,"plus_points":18,"minus_points":4},"9":{"result":43,"range":23,"plus_points":10,"minus_points":13},"4":{"result":50,"range":2,"plus_points":1,"minus_points":1},"5":{"result":13,"range":23,"plus_points":3,"minus_points":20},"6":{"result":78,"range":23,"plus_points":18,"minus_points":5},"7":{"result":29,"range":14,"plus_points":4,"minus_points":10},"8":{"result":45,"range":20,"plus_points":9,"minus_points":11},"11":{"result":0,"range":0,"plus_points":0,"minus_points":0},"10":{"result":0,"range":0,"plus_points":0,"minus_points":0}},"points_percentage":{"1":{"result":0,"range":31,"points":-4},"2":{"result":13,"range":31,"points":4},"3":{"result":45,"range":31,"points":14},"9":{"result":0,"range":31,"points":-3},"4":{"result":0,"range":31,"points":0},"5":{"result":0,"range":31,"points":-17},"6":{"result":42,"range":31,"points":13},"7":{"result":0,"range":31,"points":-6},"8":{"result":0,"range":31,"points":-2},"11":{"result":0,"range":31,"points":0},"10":{"result":0,"range":31,"points":0}}}', '2014-02-03 20:54:51', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'moderator'),
(3, 'contributor'),
(5, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `deleted`, `created_by`, `created_date`, `updated_by`, `updated_date`, `is_category`) VALUES
(26, 'värnplikt', 1, 0, '2014-01-05 22:57:08', 2, '0000-00-00 00:00:00', 0),
(27, 'försvar', 1, 0, '2014-01-05 23:09:46', 2, '0000-00-00 00:00:00', 0),
(28, 'bidrag', 1, 0, '2014-01-05 23:02:04', 2, '0000-00-00 00:00:00', 0),
(29, 'familj', 1, 0, '2014-01-05 23:06:01', 2, '0000-00-00 00:00:00', 0),
(30, 'brottslighet', 0, 0, '2013-10-31 19:49:34', 0, '0000-00-00 00:00:00', 0),
(31, 'straff', 0, 0, '2013-10-31 19:49:34', 0, '0000-00-00 00:00:00', 0),
(32, 'välfärd', 1, 0, '2014-01-05 22:38:57', 2, '0000-00-00 00:00:00', 0),
(33, 'media', 0, 0, '2013-10-31 19:49:59', 0, '0000-00-00 00:00:00', 0),
(34, 'eu', 1, 0, '2014-01-05 19:55:57', 2, '0000-00-00 00:00:00', 0),
(35, 'skatt', 0, 0, '2013-10-31 19:50:22', 0, '0000-00-00 00:00:00', 0),
(36, 'trafik', 0, 0, '2013-10-31 19:50:22', 0, '0000-00-00 00:00:00', 0),
(37, 'vård', 0, 0, '2014-01-07 18:47:36', 2, '2014-01-07 18:47:36', 1),
(38, 'vapen', 0, 0, '2013-10-31 19:55:36', 0, '0000-00-00 00:00:00', 0),
(39, 'export', 1, 0, '2014-01-05 23:08:45', 2, '0000-00-00 00:00:00', 0),
(40, 'tåg', 0, 0, '2013-10-31 19:55:57', 0, '0000-00-00 00:00:00', 0),
(41, 'infrastruktur', 1, 0, '2014-01-05 23:51:13', 2, '0000-00-00 00:00:00', 0),
(42, 'euro', 1, 0, '2014-01-06 00:06:01', 2, '0000-00-00 00:00:00', 0),
(43, 'ekonomi', 0, 0, '2014-01-08 20:43:50', 2, '2014-01-08 20:43:50', 1),
(44, 'demokrati', 0, 0, '2013-10-31 19:56:26', 0, '0000-00-00 00:00:00', 0),
(45, 'nato', 1, 0, '2014-01-05 19:21:29', 2, '0000-00-00 00:00:00', 0),
(46, 'afghanistan', 0, 0, '2013-10-31 19:56:55', 0, '0000-00-00 00:00:00', 0),
(47, 'kultur', 0, 0, '2013-10-31 19:57:10', 0, '0000-00-00 00:00:00', 0),
(48, 'a-kassa2', 0, 0, '2013-12-07 19:38:42', 2, '2013-12-07 19:38:42', 0),
(49, 'alkohol', 0, 0, '2013-11-05 21:22:52', 0, '0000-00-00 00:00:00', 0),
(50, 'monopol', 0, 0, '2013-11-05 21:22:52', 0, '0000-00-00 00:00:00', 0),
(51, 'utbildning', 0, 0, '2014-01-07 18:47:43', 2, '2014-01-07 18:47:43', 1),
(52, 'äktenskap', 1, 0, '2014-01-05 21:06:57', 2, '0000-00-00 00:00:00', 0),
(53, 'barnbidrag', 0, 0, '2013-11-05 21:24:07', 0, '0000-00-00 00:00:00', 0),
(54, 'friskolor', 1, 0, '2014-01-05 23:11:08', 2, '0000-00-00 00:00:00', 0),
(55, 'fra', 1, 0, '2014-01-05 23:11:29', 2, '0000-00-00 00:00:00', 0),
(56, 'religion', 0, 0, '2013-11-05 21:25:16', 0, '0000-00-00 00:00:00', 0),
(57, 'förmögenhetsskatt4', 0, 0, '2014-01-06 01:31:01', 2, '2014-01-06 01:31:01', 0),
(58, 'pension', 0, 0, '2013-11-05 21:26:00', 0, '0000-00-00 00:00:00', 0),
(59, 'fildelning', 1, 0, '2014-01-05 22:57:24', 2, '0000-00-00 00:00:00', 0),
(60, 'upphovsrätt', 1, 0, '2014-01-05 22:41:03', 2, '0000-00-00 00:00:00', 0),
(61, 'piratkopiering', 0, 0, '2013-11-05 21:26:29', 0, '0000-00-00 00:00:00', 0),
(62, 'järnväg', 0, 0, '2013-11-05 21:26:37', 0, '0000-00-00 00:00:00', 0),
(63, 'invandring', 0, 0, '2013-11-05 21:26:49', 0, '0000-00-00 00:00:00', 0),
(64, 'abort3', 1, 0, '2013-12-16 18:44:30', 2, '2013-12-15 10:50:34', 0),
(65, 'kärnkraft', 0, 0, '2013-11-05 21:27:33', 0, '0000-00-00 00:00:00', 0),
(66, 'miljö', 0, 0, '2014-01-08 20:43:57', 2, '2014-01-08 20:43:57', 1),
(67, 'energi4', 0, 0, '2014-01-06 01:21:46', 2, '2014-01-06 01:21:46', 0),
(68, 'jakt', 1, 0, '2014-01-05 19:24:06', 2, '0000-00-00 00:00:00', 0),
(69, 'varg', 1, 0, '2014-01-05 22:39:27', 2, '0000-00-00 00:00:00', 0),
(70, 'modersmålsundervisning', 1, 0, '2014-01-05 22:44:47', 2, '0000-00-00 00:00:00', 0),
(71, 'monarki', 0, 0, '2013-11-05 21:28:24', 0, '0000-00-00 00:00:00', 0),
(72, 'patent', 1, 0, '2014-01-05 19:40:45', 2, '0000-00-00 00:00:00', 0),
(73, 'dödshjälp1', 0, 0, '2014-01-06 16:15:50', 2, '2014-01-06 16:15:50', 0),
(74, 'brott', 1, 0, '2014-01-05 19:24:46', 2, '0000-00-00 00:00:00', 0),
(75, 'läkemedel', 0, 0, '2013-11-05 21:30:45', 0, '0000-00-00 00:00:00', 0),
(76, 'apotek', 0, 0, '2013-11-05 21:30:45', 0, '0000-00-00 00:00:00', 0),
(77, 'rut', 1, 0, '2014-01-05 19:59:02', 2, '0000-00-00 00:00:00', 0),
(78, 'prostitution', 0, 0, '2013-11-05 21:30:57', 0, '0000-00-00 00:00:00', 0),
(79, 'försäkring', 1, 0, '2014-01-05 23:49:57', 2, '0000-00-00 00:00:00', 0),
(80, 'tandvård', 0, 0, '2013-11-05 21:32:48', 0, '0000-00-00 00:00:00', 0),
(81, 'turkiet', 1, 0, '2014-01-05 22:32:37', 2, '0000-00-00 00:00:00', 0),
(82, 'test1', 0, 0, '2013-11-17 09:31:30', 0, '0000-00-00 00:00:00', 0),
(83, 'ekonomi2', 0, 0, '2013-11-17 09:41:24', 0, '0000-00-00 00:00:00', 0),
(84, 'politik', 0, 0, '2013-11-17 09:41:24', 0, '0000-00-00 00:00:00', 0),
(85, 'dsa', 1, 0, '2014-01-05 19:40:00', 2, '0000-00-00 00:00:00', 0),
(86, 'blu', 1, 0, '2013-12-07 19:52:22', 2, '0000-00-00 00:00:00', 0),
(87, 'rasmus', 1, 0, '2014-01-05 19:16:54', 2, '0000-00-00 00:00:00', 0),
(88, 'test', 1, 0, '2014-01-05 19:20:11', 2, '0000-00-00 00:00:00', 0),
(89, '1234', 1, 0, '2013-12-05 18:23:31', 2, '2013-12-05 14:36:12', 0),
(90, 'dsadsa', 0, 2, '2013-12-05 14:40:03', 0, '0000-00-00 00:00:00', 0),
(91, 'dsadsa', 0, 2, '2013-12-05 18:23:17', 0, '0000-00-00 00:00:00', 0),
(92, 'testtagg', 0, 0, '2013-12-08 11:32:34', 0, '0000-00-00 00:00:00', 0),
(93, 'asd', 0, 0, '2013-12-08 13:38:56', 0, '0000-00-00 00:00:00', 0),
(94, 'sad', 0, 0, '2013-12-08 13:39:07', 0, '0000-00-00 00:00:00', 0),
(95, '1', 0, 0, '2013-12-08 13:41:24', 0, '0000-00-00 00:00:00', 0),
(96, '2', 0, 0, '2013-12-08 13:42:46', 0, '0000-00-00 00:00:00', 0),
(97, '4', 0, 0, '2013-12-08 13:43:52', 0, '0000-00-00 00:00:00', 0),
(98, '5', 0, 0, '2013-12-08 13:44:03', 0, '0000-00-00 00:00:00', 0),
(99, '7', 0, 0, '2013-12-08 13:50:17', 0, '0000-00-00 00:00:00', 0),
(100, 'abc', 0, 0, '2014-01-10 18:53:24', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `description` text,
  `email` text NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `fullname` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `created_date`, `updated_date`, `deleted`, `created_by`, `updated_by`, `description`, `email`, `approved`, `fullname`) VALUES
(2, 'admin', '$2a$10$WPL9Lf1FgFR5uXX32VSceeWjAzv2enWjFWs6vxC9SXpzZmwm/oBwC', 1, '2013-11-12 21:17:07', '2013-12-15 11:58:18', 0, 2, 2, 'asdasdasdasdasdsa', 'admin@partisk.nu', 1, 'Administrator'),
(5, 'moderator', '$2a$10$IoMnoMbaeqYEKmjrRos7P.wYXIafF09thSlLxrHCIto2cCRAB69IS', 2, '2013-10-17 13:40:11', '2013-12-04 19:09:47', 0, 2, 2, 'moderator presentation', 'moderator@partisk.nu', 1, 'Moderator'),
(6, 'contributor', '$2a$10$K1L48./n05.eBugWMCWD8.sRI61gdHWJfJsMGsQToeAognQEmSt1y', 3, '2013-10-17 13:40:27', '2013-12-04 19:09:32', 0, 2, 2, 'sdsadsadsadsa', 'contributor@partisk.nu', 1, 'Contributor'),
(29, 'testnamn', '$2a$10$CNUGsjrG2ekbG6L85LBpG.gnk6fEAlay95TclqZLB25YNMSqWkJke', 1, '2013-12-05 19:52:33', '2013-12-08 16:50:57', 1, 2, 2, 'saddsasasadsad', 'test@test2.se', 1, 'Test test'),
(30, 'rasmushaglund', '$2a$10$2UCHlSkquVAvf3rKZCSTUeZZaPluHTI1KdzUcdkNFw374pEux/ZaW', 5, '2013-12-05 20:02:58', '2013-12-05 20:49:24', 0, 1, 2, 'fdsadsadsa dsa dsa dsa dsa dsa', 'rasmus.haglund@gmail.com', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE IF NOT EXISTS `user_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `model` text NOT NULL,
  `action` text NOT NULL,
  `object_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `ip` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=325 ;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `model`, `action`, `object_id`, `date`, `text`, `ip`) VALUES
(1, 2, 'answer', 'add', 212, '2013-11-12 22:24:59', 'ja', '127.0.0.1'),
(2, 2, 'question', 'edit', 24, '2013-11-13 11:10:28', '', '127.0.0.1'),
(3, 2, 'question', 'edit', 24, '2013-11-13 11:13:09', '', '127.0.0.1'),
(4, 2, 'question', 'edit', 19, '2013-11-13 11:18:43', '', '127.0.0.1'),
(5, 2, 'question', 'edit', 60, '2013-11-13 11:23:34', '', '127.0.0.1'),
(6, 2, 'question', 'edit', 56, '2013-11-13 11:24:02', '', '127.0.0.1'),
(7, 2, 'question', 'edit', 56, '2013-11-13 11:25:29', '', '127.0.0.1'),
(8, 2, 'user', 'add', 8, '2013-11-13 11:37:52', 'bla', '127.0.0.1'),
(9, 2, 'user', 'edit', 8, '2013-11-13 11:38:00', '', '127.0.0.1'),
(10, 2, 'user', 'delete', 8, '2013-11-13 11:38:32', '', '127.0.0.1'),
(11, 2, 'answer', 'add', 213, '2013-11-15 10:25:36', 'nej', '127.0.0.1'),
(12, 2, 'answer', 'delete', 148, '2013-11-15 10:25:42', '', '127.0.0.1'),
(13, 2, 'answer', 'add', 214, '2013-11-15 10:32:17', 'bla', '127.0.0.1'),
(14, 2, 'answer', 'delete', 214, '2013-11-15 10:32:27', '', '127.0.0.1'),
(15, 2, 'question', 'add', 81, '2013-11-17 09:31:30', 'habana', '127.0.0.1'),
(16, 2, 'question', 'edit', 81, '2013-11-17 09:41:16', '', '127.0.0.1'),
(17, 2, 'question', 'edit', 81, '2013-11-17 09:41:24', '', '127.0.0.1'),
(18, 2, 'question', 'delete', 81, '2013-11-17 09:43:06', '', '127.0.0.1'),
(19, 2, 'question', 'edit', 65, '2013-11-17 09:52:21', '', '127.0.0.1'),
(20, 2, 'question', 'edit', 65, '2013-11-17 09:55:27', '', '127.0.0.1'),
(21, 2, 'question', 'edit', 65, '2013-11-17 09:59:22', '', '127.0.0.1'),
(22, 2, 'question', 'edit', 65, '2013-11-17 10:00:21', '', '127.0.0.1'),
(23, 2, 'quiz', 'add', 4, '2013-11-17 20:21:04', 'dsadsa', '127.0.0.1'),
(24, 2, 'quiz', 'add', 3, '2013-11-18 21:24:58', '', '127.0.0.1'),
(25, 2, 'quiz', 'add', 4, '2013-11-18 21:26:58', '', '127.0.0.1'),
(26, 2, 'quiz', 'add', 5, '2013-11-18 21:27:50', '', '127.0.0.1'),
(27, 2, 'quiz', 'add', 6, '2013-11-19 06:11:18', '', '127.0.0.1'),
(28, 2, 'quiz', 'add', 7, '2013-11-19 06:16:29', '', '127.0.0.1'),
(29, 2, 'quiz', 'add', 8, '2013-11-19 06:16:37', '', '127.0.0.1'),
(30, 2, 'quiz', 'add', 9, '2013-11-19 06:18:18', '', '127.0.0.1'),
(31, 2, 'quiz', 'add', 10, '2013-11-19 06:18:27', '', '127.0.0.1'),
(32, 2, 'quiz', 'add', 11, '2013-11-19 19:05:46', '', '127.0.0.1'),
(33, 2, 'quiz', 'add', 5, '2013-11-19 19:05:59', 'hmm', '127.0.0.1'),
(34, 2, 'quiz', 'delete', 5, '2013-11-19 19:14:49', '', '127.0.0.1'),
(35, 2, 'quiz', 'delete', 2, '2013-11-19 19:14:52', '', '127.0.0.1'),
(36, 2, 'quiz', 'add', 12, '2013-11-19 19:19:08', '', '127.0.0.1'),
(37, 2, 'quiz', 'add', 13, '2013-11-19 19:19:12', '', '127.0.0.1'),
(38, 2, 'quiz', 'add', 14, '2013-11-19 19:19:21', '', '127.0.0.1'),
(39, 2, 'quiz', 'add', 15, '2013-11-19 19:19:31', '', '127.0.0.1'),
(40, 2, 'user', 'add', 17, '2013-11-25 11:58:55', 'hej', '127.0.0.1'),
(41, 2, 'user', 'delete', 17, '2013-11-25 12:00:07', '', '127.0.0.1'),
(42, 2, 'user', 'delete', 16, '2013-11-25 12:00:10', '', '127.0.0.1'),
(43, 2, 'question', 'delete', 82, '2013-11-25 13:23:21', '', '127.0.0.1'),
(44, 2, 'question', 'delete', 83, '2013-11-25 13:24:32', '', '127.0.0.1'),
(45, 2, 'user', 'edit', 18, '2013-11-25 17:16:20', '', '127.0.0.1'),
(46, 2, 'user', 'edit', 18, '2013-11-25 17:17:03', '', '127.0.0.1'),
(47, 2, 'user', 'add', 19, '2013-11-25 17:17:45', 'test2', '127.0.0.1'),
(48, 2, 'party', 'add', 10, '2013-11-25 22:04:22', 'testparti', '127.0.0.1'),
(49, 2, 'user', 'edit', 5, '2013-11-26 19:54:11', '', '127.0.0.1'),
(50, 2, 'user', 'delete', 20, '2013-11-26 19:54:34', '', '127.0.0.1'),
(51, 2, 'quiz', 'add', 16, '2013-11-26 19:57:52', '', '127.0.0.1'),
(52, 2, 'quiz', 'add', 17, '2013-11-26 20:01:26', '', '127.0.0.1'),
(53, 2, 'quiz', 'add', 18, '2013-11-26 20:01:30', '', '127.0.0.1'),
(54, 2, 'quiz', 'add', 19, '2013-11-26 20:01:34', '', '127.0.0.1'),
(55, 2, 'party', 'delete', 10, '2013-11-26 20:04:29', '', '127.0.0.1'),
(56, 2, 'answer', 'edit', 7, '2013-11-27 19:37:49', '', '127.0.0.1'),
(57, 2, 'answer', 'edit', 7, '2013-11-27 19:44:06', '', '127.0.0.1'),
(58, 2, 'answer', 'edit', 8, '2013-11-27 19:44:20', '', '127.0.0.1'),
(59, 2, 'answer', 'edit', 89, '2013-11-27 20:23:55', '', '127.0.0.1'),
(60, 2, 'answer', 'delete', 11, '2013-11-27 20:30:11', '', '127.0.0.1'),
(61, 2, 'question', 'delete', 68, '2013-11-27 20:30:34', '', '127.0.0.1'),
(62, 2, 'answer', 'edit', 140, '2013-11-27 20:33:01', '', '127.0.0.1'),
(63, 2, 'answer', 'edit', 140, '2013-11-27 20:33:08', '', '127.0.0.1'),
(64, 2, 'answer', 'delete', 130, '2013-11-27 20:33:39', '', '127.0.0.1'),
(65, 2, 'answer', 'edit', 151, '2013-11-27 21:42:44', '', '127.0.0.1'),
(66, 2, 'answer', 'edit', 140, '2013-12-02 19:12:32', '', '127.0.0.1'),
(67, 2, 'answer', 'edit', 137, '2013-12-02 19:12:38', '', '127.0.0.1'),
(68, 2, 'answer', 'edit', 144, '2013-12-02 19:12:45', '', '127.0.0.1'),
(69, 2, 'answer', 'edit', 143, '2013-12-02 19:12:52', '', '127.0.0.1'),
(70, 2, 'answer', 'edit', 142, '2013-12-02 19:12:59', '', '127.0.0.1'),
(71, 6, 'question', 'add', 86, '2013-12-02 19:32:19', 'Contributorfråga 3', '127.0.0.1'),
(72, 6, 'answer', 'add', 215, '2013-12-02 19:41:25', 'contributor svar', '127.0.0.1'),
(73, 6, 'answer', 'add', 216, '2013-12-02 19:41:59', 'contributor svar 2', '127.0.0.1'),
(74, 6, 'answer', 'delete', 216, '2013-12-02 19:53:45', '', '127.0.0.1'),
(75, 6, 'question', 'edit', 84, '2013-12-02 20:46:29', '', '127.0.0.1'),
(76, 6, 'answer', 'edit', 215, '2013-12-02 20:46:38', '', '127.0.0.1'),
(77, 6, 'question', 'delete', 86, '2013-12-02 20:52:55', '', '127.0.0.1'),
(78, 6, 'answer', 'add', 217, '2013-12-02 20:53:21', 'nej', '127.0.0.1'),
(79, 2, 'question', 'edit', 30, '2013-12-02 21:00:34', '', '127.0.0.1'),
(80, 2, 'answer', 'edit', 169, '2013-12-04 14:02:10', '', '127.0.0.1'),
(81, 2, 'answer', 'edit', 170, '2013-12-04 14:02:17', '', '127.0.0.1'),
(82, 2, 'user', 'edit', 21, '2013-12-04 17:40:07', '', '127.0.0.1'),
(83, 2, 'user', 'edit', 21, '2013-12-04 17:40:55', '', '127.0.0.1'),
(84, 2, 'user', 'delete', 25, '2013-12-04 17:48:31', '', '127.0.0.1'),
(85, 2, 'user', 'edit', 26, '2013-12-04 17:53:31', '', '127.0.0.1'),
(86, 2, 'user', 'edit', 26, '2013-12-04 17:53:38', '', '127.0.0.1'),
(87, 2, 'user', 'edit', 26, '2013-12-04 17:53:43', '', '127.0.0.1'),
(88, 26, 'question', 'add', 89, '2013-12-04 18:06:52', 'rasmus fråga 3', '127.0.0.1'),
(89, 26, 'question', 'add', 90, '2013-12-04 18:07:14', 'rasmus fin fråga', '127.0.0.1'),
(90, 2, 'user', 'edit', 6, '2013-12-04 18:09:32', '', '127.0.0.1'),
(91, 2, 'user', 'edit', 5, '2013-12-04 18:09:47', '', '127.0.0.1'),
(92, 2, 'question', 'edit', 70, '2013-12-04 21:33:07', '', '127.0.0.1'),
(93, 2, 'question', 'edit', 77, '2013-12-04 21:36:53', '', '127.0.0.1'),
(94, 2, 'question', 'edit', 60, '2013-12-04 21:37:50', '', '127.0.0.1'),
(95, 2, 'user', 'edit', 27, '2013-12-04 22:20:39', '', '127.0.0.1'),
(96, 2, 'user', 'edit', 27, '2013-12-04 22:20:51', '', '127.0.0.1'),
(97, 2, 'user', 'edit', 27, '2013-12-04 22:40:51', '', '127.0.0.1'),
(98, 2, 'user', 'edit', 27, '2013-12-04 22:41:58', '', '127.0.0.1'),
(99, 2, 'user', 'edit', 27, '2013-12-04 22:42:04', '', '127.0.0.1'),
(100, 2, 'user', 'edit', 27, '2013-12-04 22:42:10', '', '127.0.0.1'),
(101, 2, 'user', 'edit', 27, '2013-12-04 22:42:14', '', '127.0.0.1'),
(102, 2, 'user', 'edit', 26, '2013-12-05 12:25:21', '', '127.0.0.1'),
(103, 2, 'question', 'edit', 77, '2013-12-05 13:20:42', '', '127.0.0.1'),
(104, 2, 'question', 'add', 91, '2013-12-05 13:20:52', 'sadsaddsadsa', '127.0.0.1'),
(105, 2, 'question', 'edit', 70, '2013-12-05 13:47:59', '', '127.0.0.1'),
(106, 2, 'question', 'add', 92, '2013-12-05 13:48:06', 'dsadsadsadsa', '127.0.0.1'),
(107, 2, 'answer', 'add', 218, '2013-12-05 14:23:10', 'ja', '127.0.0.1'),
(108, 2, 'answer', 'add', 219, '2013-12-05 14:28:45', 'ja', '127.0.0.1'),
(109, 2, 'question', 'add', 93, '2013-12-05 14:35:40', 'asdasdsad', '127.0.0.1'),
(110, 2, 'category', 'edit', 89, '2013-12-05 14:36:12', '', '127.0.0.1'),
(111, 2, 'category', 'add', 90, '2013-12-05 14:40:03', 'dsadsa', '127.0.0.1'),
(112, 2, 'party', 'edit', 7, '2013-12-05 14:40:45', '', '127.0.0.1'),
(113, 2, 'party', 'add', 11, '2013-12-05 14:42:36', 'sadsa', '127.0.0.1'),
(114, 2, 'quiz', 'edit', 1, '2013-12-05 14:44:22', '', '127.0.0.1'),
(115, 2, 'quiz', 'edit', 1, '2013-12-05 14:44:28', '', '127.0.0.1'),
(116, 2, 'quiz', 'add', 6, '2013-12-05 14:45:34', 'dsadsa', '127.0.0.1'),
(117, 2, 'party', 'delete', 11, '2013-12-05 14:45:55', '', '127.0.0.1'),
(118, 2, 'party', 'edit', 7, '2013-12-05 14:46:02', '', '127.0.0.1'),
(119, 2, 'user', 'add', 28, '2013-12-05 14:47:02', 'test', '127.0.0.1'),
(120, 2, 'user', 'delete', 26, '2013-12-05 14:47:23', '', '127.0.0.1'),
(121, 2, 'user', 'delete', 27, '2013-12-05 14:47:29', '', '127.0.0.1'),
(122, 2, 'user', 'delete', 28, '2013-12-05 14:47:30', '', '127.0.0.1'),
(123, 2, 'answer', 'add', 220, '2013-12-05 18:18:50', 'ja', '127.0.0.1'),
(124, 2, 'question', 'add', 94, '2013-12-05 18:21:12', 'dsadsadsa', '127.0.0.1'),
(125, 2, 'category', 'add', 91, '2013-12-05 18:23:17', 'dsadsa', '127.0.0.1'),
(126, 2, 'category', 'delete', 89, '2013-12-05 18:23:31', '', '127.0.0.1'),
(127, 2, 'party', 'add', 12, '2013-12-05 18:24:56', 'dsadsa', '127.0.0.1'),
(128, 2, 'party', 'delete', 12, '2013-12-05 18:24:59', '', '127.0.0.1'),
(129, 2, 'quiz', 'add', 7, '2013-12-05 18:36:27', 'dsadsadsa', '127.0.0.1'),
(130, 2, 'quiz', 'delete', 7, '2013-12-05 18:36:32', '', '127.0.0.1'),
(131, 2, 'user', 'add', 29, '2013-12-05 18:52:34', 'testnamn', '127.0.0.1'),
(132, 2, 'user', 'edit', 29, '2013-12-05 18:53:05', '', '127.0.0.1'),
(133, 2, 'user', 'edit', 30, '2013-12-05 19:03:54', '', '127.0.0.1'),
(134, 2, 'user', 'edit', 30, '2013-12-05 19:07:04', '', '127.0.0.1'),
(135, 2, 'user', 'edit', 30, '2013-12-05 19:45:34', '', '127.0.0.1'),
(136, 2, 'user', 'edit', 30, '2013-12-05 19:46:47', '', '127.0.0.1'),
(137, 2, 'user', 'edit', 29, '2013-12-05 19:46:53', '', '127.0.0.1'),
(138, 2, 'user', 'edit', 29, '2013-12-05 19:46:56', '', '127.0.0.1'),
(139, 2, 'user', 'edit', 30, '2013-12-05 19:49:20', '', '127.0.0.1'),
(140, 2, 'user', 'edit', 30, '2013-12-05 19:49:24', '', '127.0.0.1'),
(141, 2, 'answer', 'add', 221, '2013-12-05 20:35:17', 'ja', '127.0.0.1'),
(142, 2, 'answer', 'add', 222, '2013-12-05 20:35:34', 'ja', '127.0.0.1'),
(143, 2, 'party', 'add', 13, '2013-12-07 17:57:16', 'test', '127.0.0.1'),
(144, 2, 'party', 'delete', 13, '2013-12-07 18:02:43', '', '127.0.0.1'),
(145, 2, 'party', 'add', 14, '2013-12-07 18:06:24', 'dsadsadsadsa', '127.0.0.1'),
(146, 2, 'party', 'delete', 14, '2013-12-07 18:18:48', '', '127.0.0.1'),
(147, 2, 'party', 'add', 15, '2013-12-07 18:22:25', 'dsadsadsa', '127.0.0.1'),
(148, 2, 'party', 'delete', 16, '2013-12-07 18:25:13', '', '127.0.0.1'),
(149, 2, 'party', 'delete', 17, '2013-12-07 18:27:40', '', '127.0.0.1'),
(150, 2, 'party', 'delete', 15, '2013-12-07 18:27:51', '', '127.0.0.1'),
(151, 2, 'party', 'add', 18, '2013-12-07 18:31:33', 'za', '127.0.0.1'),
(152, 2, 'party', 'delete', 18, '2013-12-07 18:32:06', '', '127.0.0.1'),
(153, 2, 'party', 'add', 19, '2013-12-07 18:32:15', 'dsadsadsa', '127.0.0.1'),
(154, 2, 'party', 'add', 20, '2013-12-07 18:34:35', 'dsadsadsa', '127.0.0.1'),
(155, 2, 'party', 'delete', 20, '2013-12-07 18:34:42', '', '127.0.0.1'),
(156, 2, 'party', 'add', 21, '2013-12-07 18:34:48', 'dsadsadsa', '127.0.0.1'),
(157, 2, 'party', 'delete', 21, '2013-12-07 18:35:30', '', '127.0.0.1'),
(158, 2, 'party', 'delete', 19, '2013-12-07 18:35:46', '', '127.0.0.1'),
(159, 2, 'party', 'delete', 21, '2013-12-07 18:36:17', '', '127.0.0.1'),
(160, 2, 'party', 'add', 22, '2013-12-07 18:36:38', 'abc', '127.0.0.1'),
(161, 2, 'party', 'delete', 22, '2013-12-07 18:36:43', '', '127.0.0.1'),
(162, 2, 'party', 'add', 23, '2013-12-07 18:37:02', '123', '127.0.0.1'),
(163, 2, 'party', 'delete', 23, '2013-12-07 18:37:06', '', '127.0.0.1'),
(164, 2, 'party', 'add', 24, '2013-12-07 18:38:57', 'aaa', '127.0.0.1'),
(165, 2, 'party', 'delete', 24, '2013-12-07 18:41:17', '', '127.0.0.1'),
(166, 2, 'category', 'edit', 48, '2013-12-07 19:38:42', '', '127.0.0.1'),
(167, 2, 'category', 'delete', 86, '2013-12-07 19:52:22', '', '127.0.0.1'),
(168, 2, 'question', 'edit', 15, '2013-12-08 11:31:54', '', '127.0.0.1'),
(169, 2, 'question', 'edit', 70, '2013-12-08 11:32:14', '', '127.0.0.1'),
(170, 2, 'question', 'edit', 77, '2013-12-08 11:32:34', '', '127.0.0.1'),
(171, 2, 'question', 'edit', 77, '2013-12-08 11:33:06', '', '127.0.0.1'),
(172, 2, 'question', 'add', 95, '2013-12-08 13:38:56', 'testfråga 1337', '127.0.0.1'),
(173, 2, 'question', 'edit', 95, '2013-12-08 13:39:07', '', '127.0.0.1'),
(174, 2, 'question', 'edit', 95, '2013-12-08 13:41:24', '', '127.0.0.1'),
(175, 2, 'question', 'edit', 95, '2013-12-08 13:41:33', '', '127.0.0.1'),
(176, 2, 'question', 'edit', 95, '2013-12-08 13:50:17', '', '127.0.0.1'),
(177, 2, 'question', 'edit', 95, '2013-12-08 13:55:26', '', '127.0.0.1'),
(178, 2, 'question', 'edit', 77, '2013-12-08 13:57:09', '', '127.0.0.1'),
(179, 2, 'question', 'edit', 77, '2013-12-08 13:57:16', '', '127.0.0.1'),
(180, 2, 'question', 'delete', 93, '2013-12-08 13:58:49', '', '127.0.0.1'),
(181, 2, 'answer', 'edit', 140, '2013-12-08 14:02:49', '', '127.0.0.1'),
(182, 2, 'answer', 'edit', 140, '2013-12-08 14:03:03', '', '127.0.0.1'),
(183, 2, 'answer', 'edit', 140, '2013-12-08 14:03:11', '', '127.0.0.1'),
(184, 2, 'answer', 'edit', 140, '2013-12-08 14:03:23', '', '127.0.0.1'),
(185, 2, 'answer', 'edit', 140, '2013-12-08 14:03:31', '', '127.0.0.1'),
(186, 2, 'party', 'add', 25, '2013-12-08 15:48:24', 'blubb', '127.0.0.1'),
(187, 2, 'party', 'edit', 25, '2013-12-08 15:48:31', '', '127.0.0.1'),
(188, 2, 'party', 'delete', 25, '2013-12-08 15:48:35', '', '127.0.0.1'),
(189, 2, 'user', 'add', 31, '2013-12-08 15:50:14', 'dsadsa', '127.0.0.1'),
(190, 2, 'user', 'edit', 29, '2013-12-08 15:50:57', '', '127.0.0.1'),
(191, 2, 'user', 'delete', 29, '2013-12-08 16:00:07', '', '127.0.0.1'),
(192, 2, 'answer', 'edit', 142, '2013-12-08 16:00:35', '', '127.0.0.1'),
(193, 2, 'answer', 'edit', 142, '2013-12-08 16:00:43', '', '127.0.0.1'),
(194, 2, 'party', 'add', 26, '2013-12-08 20:04:50', 'Feministiskt Initiativ', '127.0.0.1'),
(195, 2, 'party', 'add', 27, '2013-12-08 20:05:17', 'Junilistan', '127.0.0.1'),
(196, 2, 'user', 'delete', 31, '2013-12-08 22:11:25', '', '127.0.0.1'),
(197, 2, 'question', 'delete', 70, '2013-12-09 18:14:41', '', '127.0.0.1'),
(198, 2, 'question', 'add', 96, '2013-12-09 20:09:58', 'abc123', '127.0.0.1'),
(199, 2, 'answer', 'add', 223, '2013-12-11 11:02:13', 'ja', '127.0.0.1'),
(200, 2, 'answer', 'edit', 223, '2013-12-11 11:02:23', '', '127.0.0.1'),
(201, 2, 'answer', 'edit', 223, '2013-12-11 11:02:50', '', '127.0.0.1'),
(202, 2, 'question', 'edit', 84, '2013-12-11 11:02:56', '', '127.0.0.1'),
(203, 2, 'question', 'edit', 32, '2013-12-11 11:46:01', '', '127.0.0.1'),
(204, 2, 'quiz', 'add', 20, '2013-12-11 11:46:33', '', '127.0.0.1'),
(205, 2, 'answer', 'edit', 143, '2013-12-11 22:33:12', '', '127.0.0.1'),
(206, 2, 'quiz', 'delete', 14, '2013-12-12 14:06:30', '', '127.0.0.1'),
(207, 2, 'question', 'edit', 77, '2013-12-14 23:00:30', '', '127.0.0.1'),
(208, 2, 'question', 'edit', 77, '2013-12-14 23:02:42', '', '127.0.0.1'),
(209, 2, 'question', 'edit', 77, '2013-12-14 23:06:43', '', '127.0.0.1'),
(210, 2, 'party', 'edit', 1, '2013-12-14 23:07:50', '', '127.0.0.1'),
(211, 2, 'question', 'edit', 96, '2013-12-15 10:49:12', '', '127.0.0.1'),
(212, 2, 'category', 'edit', 64, '2013-12-15 10:50:00', '', '127.0.0.1'),
(213, 2, 'category', 'edit', 64, '2013-12-15 10:50:34', '', '127.0.0.1'),
(214, 2, 'party', 'edit', 1, '2013-12-15 10:50:45', '', '127.0.0.1'),
(215, 2, 'party', 'edit', 1, '2013-12-15 10:51:35', '', '127.0.0.1'),
(216, 2, 'party', 'edit', 1, '2013-12-15 10:51:41', '', '127.0.0.1'),
(217, 2, 'user', 'edit', 2, '2013-12-15 10:58:18', '', '127.0.0.1'),
(218, 2, 'question', 'delete', 96, '2013-12-16 18:04:58', '', '127.0.0.1'),
(219, 2, 'party', 'add', 12, '2013-12-16 18:34:13', 'bajs', '127.0.0.1'),
(220, 2, 'party', 'delete', 12, '2013-12-16 18:36:16', '', '127.0.0.1'),
(221, 2, 'answer', 'delete', 143, '2013-12-16 18:43:57', '', '127.0.0.1'),
(222, 2, 'category', 'delete', 64, '2013-12-16 18:44:30', '', '127.0.0.1'),
(223, 2, 'quiz', 'delete', 1, '2013-12-16 18:44:40', '', '127.0.0.1'),
(224, 2, 'user', 'add', 32, '2013-12-16 18:45:04', 'blubb', '127.0.0.1'),
(225, 2, 'user', 'delete', 32, '2013-12-16 18:45:21', '', '127.0.0.1'),
(226, 2, 'answer', 'edit', 49, '2013-12-17 09:32:13', '', '127.0.0.1'),
(227, 2, 'user', 'delete', 33, '2013-12-22 21:31:35', '', '127.0.0.1'),
(228, 2, 'quiz', 'add', 21, '2013-12-30 20:50:23', '', '127.0.0.1'),
(229, 2, 'user', 'delete', 39, '2014-01-04 22:10:34', '', '127.0.0.1'),
(230, 2, 'user', 'delete', 38, '2014-01-04 22:10:38', '', '127.0.0.1'),
(231, 2, 'user', 'delete', 37, '2014-01-04 22:10:41', '', '127.0.0.1'),
(232, 2, 'user', 'delete', 36, '2014-01-04 22:10:45', '', '127.0.0.1'),
(233, 2, 'category', 'delete', 68, '2014-01-05 19:24:06', '', '127.0.0.1'),
(234, 2, 'category', 'delete', 74, '2014-01-05 19:24:46', '', '127.0.0.1'),
(235, 2, 'category', 'delete', 85, '2014-01-05 19:40:00', '', '127.0.0.1'),
(236, 2, 'category', 'delete', 72, '2014-01-05 19:40:53', '', '127.0.0.1'),
(237, 2, 'category', 'delete', 34, '2014-01-05 19:55:57', '', '127.0.0.1'),
(238, 2, 'category', 'delete', 77, '2014-01-05 19:59:02', '', '127.0.0.1'),
(239, 2, 'category', 'delete', 52, '2014-01-05 21:06:57', '', '127.0.0.1'),
(240, 2, 'category', 'delete', 81, '2014-01-05 22:32:37', '', '127.0.0.1'),
(241, 2, 'category', 'delete', 32, '2014-01-05 22:38:57', '', '127.0.0.1'),
(242, 2, 'category', 'delete', 69, '2014-01-05 22:39:27', '', '127.0.0.1'),
(243, 2, 'category', 'delete', 60, '2014-01-05 22:41:03', '', '127.0.0.1'),
(244, 2, 'category', 'delete', 70, '2014-01-05 22:44:47', '', '127.0.0.1'),
(245, 2, 'category', 'delete', 26, '2014-01-05 22:57:08', '', '127.0.0.1'),
(246, 2, 'category', 'delete', 59, '2014-01-05 22:57:24', '', '127.0.0.1'),
(247, 2, 'category', 'delete', 28, '2014-01-05 23:02:04', '', '127.0.0.1'),
(248, 2, 'category', 'delete', 29, '2014-01-05 23:06:01', '', '127.0.0.1'),
(249, 2, 'category', 'delete', 39, '2014-01-05 23:08:45', '', '127.0.0.1'),
(250, 2, 'category', 'delete', 27, '2014-01-05 23:09:46', '', '127.0.0.1'),
(251, 2, 'category', 'delete', 54, '2014-01-05 23:11:08', '', '127.0.0.1'),
(252, 2, 'category', 'delete', 55, '2014-01-05 23:11:29', '', '127.0.0.1'),
(253, 2, 'category', 'delete', 79, '2014-01-05 23:49:57', '', '127.0.0.1'),
(254, 2, 'category', 'delete', 41, '2014-01-05 23:51:13', '', '127.0.0.1'),
(255, 2, 'category', 'delete', 42, '2014-01-06 00:06:01', '', '127.0.0.1'),
(256, 2, 'category', 'edit', 73, '2014-01-06 00:12:13', '', '127.0.0.1'),
(257, 2, 'category', 'edit', 73, '2014-01-06 00:12:33', '', '127.0.0.1'),
(258, 2, 'category', 'edit', 73, '2014-01-06 00:19:23', '', '127.0.0.1'),
(259, 2, 'category', 'edit', 73, '2014-01-06 00:54:28', '', '127.0.0.1'),
(260, 2, 'category', 'edit', 73, '2014-01-06 01:01:36', '', '127.0.0.1'),
(261, 2, 'category', 'edit', 73, '2014-01-06 01:14:06', '', '127.0.0.1'),
(262, 2, 'category', 'edit', 73, '2014-01-06 01:16:47', '', '127.0.0.1'),
(263, 2, 'category', 'edit', 67, '2014-01-06 01:20:11', '', '127.0.0.1'),
(264, 2, 'category', 'edit', 67, '2014-01-06 01:21:46', '', '127.0.0.1'),
(265, 2, 'category', 'edit', 57, '2014-01-06 01:22:51', '', '127.0.0.1'),
(266, 2, 'category', 'edit', 73, '2014-01-06 01:26:34', '', '127.0.0.1'),
(267, 2, 'category', 'edit', 57, '2014-01-06 01:31:01', '', '127.0.0.1'),
(268, 2, 'category', 'edit', 73, '2014-01-06 11:42:34', '', '127.0.0.1'),
(269, 2, 'category', 'edit', 73, '2014-01-06 15:54:03', '', '127.0.0.1'),
(270, 2, 'category', 'edit', 73, '2014-01-06 15:58:47', '', '127.0.0.1'),
(271, 2, 'category', 'edit', 73, '2014-01-06 16:03:05', '', '127.0.0.1'),
(272, 2, 'category', 'edit', 73, '2014-01-06 16:04:15', '', '127.0.0.1'),
(273, 2, 'category', 'edit', 73, '2014-01-06 16:09:51', '', '127.0.0.1'),
(274, 2, 'category', 'edit', 73, '2014-01-06 16:10:38', '', '127.0.0.1'),
(275, 2, 'category', 'edit', 73, '2014-01-06 16:10:56', '', '127.0.0.1'),
(276, 2, 'category', 'edit', 73, '2014-01-06 16:11:14', '', '127.0.0.1'),
(277, 2, 'category', 'edit', 73, '2014-01-06 16:13:43', '', '127.0.0.1'),
(278, 2, 'category', 'edit', 73, '2014-01-06 16:14:16', '', '127.0.0.1'),
(279, 2, 'category', 'edit', 37, '2014-01-07 18:47:36', '', '127.0.0.1'),
(280, 2, 'category', 'edit', 51, '2014-01-07 18:47:43', '', '127.0.0.1'),
(281, 2, 'category', 'edit', 43, '2014-01-08 20:43:50', '', '127.0.0.1'),
(282, 2, 'category', 'edit', 66, '2014-01-08 20:43:57', '', '127.0.0.1'),
(283, 2, 'question', 'edit', 32, '2014-01-10 18:36:51', '', '127.0.0.1'),
(284, 2, 'question', 'edit', 23, '2014-01-10 18:51:19', '', '127.0.0.1'),
(285, 2, 'question', 'edit', 23, '2014-01-10 18:51:25', '', '127.0.0.1'),
(286, 2, 'question', 'add', 97, '2014-01-10 18:53:24', 'Testfråga', '127.0.0.1'),
(287, 2, 'question', 'edit', 97, '2014-01-10 18:53:38', '', '127.0.0.1'),
(288, 2, 'answer', 'add', 224, '2014-01-10 18:53:48', 'ja', '127.0.0.1'),
(289, 2, 'answer', 'edit', 224, '2014-01-10 19:07:19', '', '127.0.0.1'),
(290, 2, 'quiz', 'add', 22, '2014-01-10 20:07:31', '', '127.0.0.1'),
(291, 2, 'quiz', 'edit', 3, '2014-01-10 20:08:54', '', '127.0.0.1'),
(292, 2, 'quiz', 'edit', 4, '2014-01-10 20:10:08', '', '127.0.0.1'),
(293, 2, 'quiz', 'edit', 3, '2014-01-10 20:10:51', '', '127.0.0.1'),
(294, 2, 'quiz', 'edit', 3, '2014-01-10 20:11:29', '', '127.0.0.1'),
(295, 2, 'quiz', 'edit', 3, '2014-01-10 20:14:26', '', '127.0.0.1'),
(296, 2, 'question', 'edit', 17, '2014-01-15 18:26:08', '', '127.0.0.1'),
(297, 2, 'answer', 'add', 225, '2014-01-15 20:45:09', 'blaj', '127.0.0.1'),
(298, 2, 'answer', 'edit', 225, '2014-01-15 20:45:12', '', '127.0.0.1'),
(299, 2, 'question', 'edit', 72, '2014-01-15 20:45:16', '', '127.0.0.1'),
(300, 2, 'answer', 'edit', 63, '2014-01-18 16:14:00', '', '127.0.0.1'),
(301, 2, 'question', 'add', 98, '2014-01-18 21:53:57', 'Testfråga', '127.0.0.1'),
(302, 2, 'answer', 'add', 226, '2014-01-18 21:54:16', 'aaa', '127.0.0.1'),
(303, 2, 'question', 'edit', 98, '2014-01-18 21:54:37', '', '127.0.0.1'),
(304, 2, 'answer', 'edit', 226, '2014-01-18 21:54:57', '', '127.0.0.1'),
(305, 2, 'question', 'add', 99, '2014-01-19 09:40:18', 'blablabla %', '127.0.0.1'),
(306, 2, 'quiz', 'add', 23, '2014-01-21 21:43:22', '', '127.0.0.1'),
(307, 2, 'quiz', 'add', 24, '2014-01-21 21:49:51', '', '127.0.0.1'),
(308, 2, 'quiz', 'delete', 24, '2014-01-21 21:49:57', '', '127.0.0.1'),
(309, 2, 'quiz', 'add', 25, '2014-01-21 22:09:14', '', '127.0.0.1'),
(310, 2, 'question', 'edit', 18, '2014-01-26 19:17:38', '', '127.0.0.1'),
(311, 2, 'question', 'edit', 97, '2014-01-26 19:31:56', '', '127.0.0.1'),
(312, 2, 'quiz', 'delete', 12, '2014-01-26 19:45:48', '', '127.0.0.1'),
(313, 2, 'quiz', 'delete', 22, '2014-01-26 19:45:52', '', '127.0.0.1'),
(314, 2, 'question', 'add', 100, '2014-01-26 20:14:13', 'uuuu', '127.0.0.1'),
(315, 2, 'answer', 'add', 227, '2014-01-26 20:14:22', 'ja', '127.0.0.1'),
(316, 2, 'question', 'edit', 100, '2014-01-26 20:14:37', '', '127.0.0.1'),
(317, 2, 'answer', 'edit', 227, '2014-01-26 20:14:41', '', '127.0.0.1'),
(318, 2, 'answer', 'add', 228, '2014-01-26 20:14:54', 'asdsad', '127.0.0.1'),
(319, 2, 'answer', 'edit', 228, '2014-01-26 20:16:38', '', '127.0.0.1'),
(320, 2, 'answer', 'add', 229, '2014-01-26 20:29:52', 'nej', '127.0.0.1'),
(321, 2, 'answer', 'edit', 229, '2014-01-26 20:30:30', '', '127.0.0.1'),
(322, 2, 'question', 'edit', 27, '2014-01-26 20:36:53', '', '127.0.0.1'),
(323, 2, 'question', 'edit', 18, '2014-01-26 20:41:44', '', '127.0.0.1'),
(324, 2, 'question', 'edit', 18, '2014-01-26 20:43:26', '', '127.0.0.1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
