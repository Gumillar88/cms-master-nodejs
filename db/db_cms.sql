/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.6-MariaDB : Database - db_cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_cms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_cms`;

/*Table structure for table `logs` */

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_ID` bigint(20) NOT NULL,
  `action` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `logs` */

insert  into `logs`(`ID`,`user_ID`,`action`,`data`,`created`) values 
(1,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637207200),
(2,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637223658),
(3,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637224827),
(4,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637253978),
(5,1,'Create an sliders','{\"ID\":12,\"title\":\"qq\",\"description\":\"<p>qqq<\\/p>\",\"image\":\"slider - 1637259976.jpg\",\"date\":\"2021-11-25\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"active\":0,\"created_at\":\"2021-11-18 06:26:16\",\"user_id\":1}',1637259976),
(6,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637294175),
(7,1,'Edit an slider','{\"title\":\"qq\",\"description\":\"<p>qqq<\\/p>\",\"image\":\"slider - 1637259976.jpg\",\"date\":\"2021-11-25\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"active\":\"0\",\"user_id\":1,\"flag_date\":\"0\"}',1637310587),
(8,1,'Edit an slider','{\"title\":\"qq\",\"description\":\"<p>qqq<\\/p>\",\"image\":\"slider - 1637259976.jpg\",\"date\":\"2021-11-25\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"active\":\"1\",\"user_id\":1,\"flag_date\":\"1\"}',1637310599),
(9,1,'Edit an slider','{\"title\":\"Lorem ipsum dolor siamet\",\"description\":\"<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\",\"image\":\"slider - 1637259976.jpg\",\"date\":\"2021-11-25\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"active\":\"1\",\"user_id\":1,\"flag_date\":\"1\"}',1637310659),
(10,1,'Edit an slider','{\"title\":\"Lorem ipsum dolor siamet\",\"description\":\"<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\",\"image\":\"slider - 1637310766.jpeg\",\"date\":\"2021-11-25\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"active\":\"1\",\"user_id\":1,\"flag_date\":\"1\"}',1637310766),
(11,1,'Edit an slider','{\"title\":\"Lorem ipsum dolor siamet\",\"description\":\"<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\",\"image\":\"slider - 1637310766.jpeg\",\"date\":\"2021-11-25\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"active\":\"1\",\"user_id\":1,\"flag_date\":\"0\"}',1637310991),
(12,1,'Edit an slider','{\"title\":\"Lorem ipsum dolor siamet\",\"description\":\"<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor siametLorem ipsum dolor siametLorem ipsum dolor siamet<\\/p>\",\"image\":\"slider - 1637310766.jpeg\",\"date\":\"2021-11-25\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"active\":\"1\",\"user_id\":1,\"flag_date\":\"0\"}',1637311000),
(13,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637371106),
(14,1,'Edit an Home Aboutus','{\"aboutus\":\"\",\"card1title\":\"Knowledge Sharing and Capacity Building\",\"card1desc\":\"Knowledge Sharing and Capacity Building\",\"card1url\":\"http:\\/\\/localhost\\/myApp\\/re-rkcmpd\\/about-us\",\"card2title\":\"Voluntary Initiatives\",\"card2image\":\"img-ocean-min-1.png\",\"card2desc\":\"ASEAN countries are a major source of marine plastics, but many private companies, communities, NGOs, and others have initiatives to reduce marine plastic debris in the region.\",\"card2url\":\"http:\\/\\/localhost\\/myApp\\/re-rkcmpd\\/goodpractices\\/27\",\"card3title\":\"Private Sector Platform\",\"card3image\":\"img-ocean-min-2.png\",\"card3desc\":\"This platform showcases products, services, or technologies initiated by private companies from all ASEAN+3 countries that contribute to the reduction of plastic waste.\",\"card3url\":\"http:\\/\\/localhost\\/myApp\\/re-rkcmpd\\/story\"}',1637376739),
(15,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637386745),
(16,1,'Edit an slider','{\"label\":\"RKC-MPD\",\"content\":\"<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">Various documents emphasising the importance of sharing knowledge and capacity development related to marine plastic debris have been produced by the United Nations, the Association of Southeast Asian Nations (ASEAN), and others. <\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">One of them is the ASEAN+3 Marine Plastics Debris Cooperative Action Initiative, which states best use of existing institutions such as Economic Research Institute for ASEAN and East Asia (ERIA), for sharing knowledge and capacity development. <\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">The initiative was welcomed by the ASEAN+3 Summit (10 ASEAN Member States, China, Japan, and Republic of Korea) in November 2018.&nbsp;<\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">With support from the Government of Japan and others, ERIA established on 01 October 2019 the Regional Knowledge Centre&nbsp;for Marine Plastic Debris (RKC-MPD), an information clearinghouse on marine plastic debris in ASEAN+3 countries.<\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><iframe allow=\\\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\\\" allowfullscreen=\\\"\\\" frameborder=\\\"0\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/QY1sBaTgd-0\\\" width=\\\"560\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"category\":\"2\",\"subcateId\":\"5\",\"user_id\":1}',1637396213),
(17,1,'Edit an slider','{\"label\":\"RKC-MPD\",\"content\":\"<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">Various documents emphasising the importance of sharing knowledge and capacity development related to marine plastic debris have been produced by the United Nations, the Association of Southeast Asian Nations (ASEAN), and others. <\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">One of them is the ASEAN+3 Marine Plastics Debris Cooperative Action Initiative, which states best use of existing institutions such as Economic Research Institute for ASEAN and East Asia (ERIA), for sharing knowledge and capacity development. <\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">The initiative was welcomed by the ASEAN+3 Summit (10 ASEAN Member States, China, Japan, and Republic of Korea) in November 2018.&nbsp;<\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:16px;\\\"><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\"><span lang=\\\"EN-GB\\\">With support from the Government of Japan and others, ERIA established on 01 October 2019 the Regional Knowledge Centre&nbsp;for Marine Plastic Debris (RKC-MPD), an information clearinghouse on marine plastic debris in ASEAN+3 countries.<\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><iframe allow=\\\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\\\" allowfullscreen=\\\"\\\" frameborder=\\\"0\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/QY1sBaTgd-0\\\" width=\\\"560\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"category\":\"2\",\"subcateId\":\"5\",\"user_id\":1}',1637397530),
(18,1,'Create an Category Aboutus','{\"name\":\"cate21\",\"hashCode\":\"cate21\",\"active\":0}',1637399544),
(19,1,'Create an Category Aboutus','{\"name\":\"cate1\",\"hashCode\":\"cate1\",\"active\":1}',1637399559),
(20,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637427830),
(21,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637464603),
(22,1,'Edit an Category','{\"name\":\"TR\"}',1637464784),
(23,1,'Edit an Category','{\"name\":\"Regional Knowledge Centre for Marine Plastic Debris\"}',1637464827),
(24,1,'Create an Category Aboutus','{\"mainCateId\":\"4\",\"name\":\"lorem ipsum\",\"hashCode\":\"lorem\",\"active\":0}',1637466634),
(25,1,'Create an Category Aboutus','{\"mainCateId\":\"5\",\"name\":\"lorem\",\"hashCode\":\"lr\",\"active\":0}',1637466727),
(26,1,'Edit an Category','{\"mainCateId\":\"5\",\"name\":\"lorem\",\"hashCode\":\"lr\",\"active\":0}',1637469537),
(27,1,'Edit an About Banner','{\"header\":\"About\",\"image\":\"about - banner - 1637470994.jpg\"}',1637470994),
(28,1,'Edit an Event','{\"title\":\"The 15th ASEAN Ministerial Meeting on the Environment and Related Meetings\",\"description\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">The 15th&nbsp;ASEAN Ministerial Meeting on the Environment and Related Meetings were held in&nbsp;Siem&nbsp;Reap, Kingdom of Cambodia&nbsp;from 7 to&nbsp;11&nbsp;October 2019.&nbsp;A&nbsp;delegation&nbsp;from&nbsp;the Economic Research Institute for ASEAN and East Asia (ERIA), headed by&nbsp;its&nbsp;President, Prof&nbsp;Hidetoshi Nishimura,&nbsp;participated in two meetings: ASEAN-Japan Ministerial Dialogue on Environmental Cooperation and&nbsp;the 16th&nbsp;ASEAN Plus Three Environment Ministers Meeting (16th&nbsp;APT EMM).&nbsp;&nbsp;<\\/span><\\/p>\",\"image\":\"event - image - 1637480173.jpg\",\"bannerImage\":\"event - image - 1637480173.jpg\",\"date\":\"2019-10-07\",\"dateTo\":\"2019-10-08\",\"time\":\"09.00 AM - 06.00 PM\",\"address\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"shortAddress\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"mapUrl\":\"https:\\/\\/www.google.lk\\/maps\\/place\\/Panadura\\/@6.7285501,79.8944166,13z\\/data=!3m1!4b1!4m5!3m4!1s0x3ae24616c169e7c3:0xd21e80c970651d56!8m2!3d6.7106408!4d79.907341\",\"updated_at\":\"2021-11-21 07:36:13\",\"active\":1,\"user_id\":1}',1637480173),
(29,1,'Edit an Event','{\"title\":\"The 15th ASEAN Ministerial Meeting on the Environment and Related Meetings\",\"description\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">The 15th&nbsp;ASEAN Ministerial Meeting on the Environment and Related Meetings were held in&nbsp;Siem&nbsp;Reap, Kingdom of Cambodia&nbsp;from 7 to&nbsp;11&nbsp;October 2019.&nbsp;A&nbsp;delegation&nbsp;from&nbsp;the Economic Research Institute for ASEAN and East Asia (ERIA), headed by&nbsp;its&nbsp;President, Prof&nbsp;Hidetoshi Nishimura,&nbsp;participated in two meetings: ASEAN-Japan Ministerial Dialogue on Environmental Cooperation and&nbsp;the 16th&nbsp;ASEAN Plus Three Environment Ministers Meeting (16th&nbsp;APT EMM).&nbsp;&nbsp;<\\/span><\\/p>\",\"image\":\"event - image - 1637480311.jpg\",\"bannerImage\":\"event - image - 1637480311.jpg\",\"date\":\"2019-10-07\",\"dateTo\":\"2019-10-08\",\"time\":\"09.00 AM - 06.00 PM\",\"address\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"shortAddress\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"mapUrl\":\"https:\\/\\/www.google.lk\\/maps\\/place\\/Panadura\\/@6.7285501,79.8944166,13z\\/data=!3m1!4b1!4m5!3m4!1s0x3ae24616c169e7c3:0xd21e80c970651d56!8m2!3d6.7106408!4d79.907341\",\"updated_at\":\"2021-11-21 07:38:31\",\"active\":1,\"user_id\":1}',1637480311),
(30,1,'Edit an Event','{\"title\":\"The 15th ASEAN Ministerial Meeting on the Environment and Related Meetings\",\"description\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">The 15th&nbsp;ASEAN Ministerial Meeting on the Environment and Related Meetings were held in&nbsp;Siem&nbsp;Reap, Kingdom of Cambodia&nbsp;from 7 to&nbsp;11&nbsp;October 2019.&nbsp;A&nbsp;delegation&nbsp;from&nbsp;the Economic Research Institute for ASEAN and East Asia (ERIA), headed by&nbsp;its&nbsp;President, Prof&nbsp;Hidetoshi Nishimura,&nbsp;participated in two meetings: ASEAN-Japan Ministerial Dialogue on Environmental Cooperation and&nbsp;the 16th&nbsp;ASEAN Plus Three Environment Ministers Meeting (16th&nbsp;APT EMM).&nbsp;&nbsp;<\\/span><\\/p>\",\"image\":\"event - image - 1637480322.jpg\",\"bannerImage\":\"event - image - 1637480311.jpg\",\"date\":\"2019-10-07\",\"dateTo\":\"2019-10-08\",\"time\":\"09.00 AM - 06.00 PM\",\"address\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"shortAddress\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"mapUrl\":\"https:\\/\\/www.google.lk\\/maps\\/place\\/Panadura\\/@6.7285501,79.8944166,13z\\/data=!3m1!4b1!4m5!3m4!1s0x3ae24616c169e7c3:0xd21e80c970651d56!8m2!3d6.7106408!4d79.907341\",\"updated_at\":\"2021-11-21 07:38:42\",\"active\":1,\"user_id\":1}',1637480322),
(31,1,'Edit an Event','{\"title\":\"The 15th ASEAN Ministerial Meeting on the Environment and Related Meetings\",\"description\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">The 15th&nbsp;ASEAN Ministerial Meeting on the Environment and Related Meetings were held in&nbsp;Siem&nbsp;Reap, Kingdom of Cambodia&nbsp;from 7 to&nbsp;11&nbsp;October 2019.&nbsp;A&nbsp;delegation&nbsp;from&nbsp;the Economic Research Institute for ASEAN and East Asia (ERIA), headed by&nbsp;its&nbsp;President, Prof&nbsp;Hidetoshi Nishimura,&nbsp;participated in two meetings: ASEAN-Japan Ministerial Dialogue on Environmental Cooperation and&nbsp;the 16th&nbsp;ASEAN Plus Three Environment Ministers Meeting (16th&nbsp;APT EMM).&nbsp;&nbsp;<\\/span><\\/p>\",\"image\":\"event - image - 1637480311.jpg\",\"bannerImage\":\"event - image - 1637480331.jpg\",\"date\":\"2019-10-07\",\"dateTo\":\"2019-10-08\",\"time\":\"09.00 AM - 06.00 PM\",\"address\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"shortAddress\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"mapUrl\":\"https:\\/\\/www.google.lk\\/maps\\/place\\/Panadura\\/@6.7285501,79.8944166,13z\\/data=!3m1!4b1!4m5!3m4!1s0x3ae24616c169e7c3:0xd21e80c970651d56!8m2!3d6.7106408!4d79.907341\",\"updated_at\":\"2021-11-21 07:38:51\",\"active\":1,\"user_id\":1}',1637480331),
(32,1,'Edit an Event','{\"title\":\"The 15th ASEAN Ministerial Meeting on the Environment and Related Meetings\",\"description\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">The 15th&nbsp;ASEAN Ministerial Meeting on the Environment and Related Meetings were held in&nbsp;Siem&nbsp;Reap, Kingdom of Cambodia&nbsp;from 7 to&nbsp;11&nbsp;October 2019.&nbsp;A&nbsp;delegation&nbsp;from&nbsp;the Economic Research Institute for ASEAN and East Asia (ERIA), headed by&nbsp;its&nbsp;President, Prof&nbsp;Hidetoshi Nishimura,&nbsp;participated in two meetings: ASEAN-Japan Ministerial Dialogue on Environmental Cooperation and&nbsp;the 16th&nbsp;ASEAN Plus Three Environment Ministers Meeting (16th&nbsp;APT EMM).&nbsp;&nbsp;<\\/span><\\/p>\",\"image\":\"event - image - 1637480348.jpg\",\"bannerImage\":\"event - image - 1637480348.jpg\",\"date\":\"2019-10-07\",\"dateTo\":\"2019-10-08\",\"time\":\"09.00 AM - 06.00 PM\",\"address\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"shortAddress\":\"<p><span style=\\\"font-family:Trebuchet MS,Helvetica,sans-serif;\\\">Siem Reap, Cambodia<\\/span><\\/p>\",\"mapUrl\":\"https:\\/\\/www.google.lk\\/maps\\/place\\/Panadura\\/@6.7285501,79.8944166,13z\\/data=!3m1!4b1!4m5!3m4!1s0x3ae24616c169e7c3:0xd21e80c970651d56!8m2!3d6.7106408!4d79.907341\",\"updated_at\":\"2021-11-21 07:39:08\",\"active\":1,\"user_id\":1}',1637480348),
(33,1,'Create an Event','{\"title\":\"sdfsd\",\"description\":\"<p>sdfsd<\\/p>\",\"image\":\"event - image - 1637481763.jpg\",\"bannerImage\":\"event - image - 1637481763.jpg\",\"date\":\"2021-11-26\",\"dateTo\":\"2021-11-29\",\"time\":\"09 Am\",\"address\":\"<p>sdfsd<\\/p>\",\"shortAddress\":\"<p>sdfsdf<\\/p>\",\"mapUrl\":\"https:\\/\\/www.google.lk\\/maps\\/place\\/Panadura\\/@6.7285501,79.8944166,13z\\/data=!3m1!4b1!4m5!3m4!1s0x3ae24616c169e7c3:0xd21e80c970651d56!8m2!3d6.7106408!4d79.907341\",\"updated_at\":\"2021-11-21 08:02:43\",\"active\":1,\"user_id\":1}',1637481763),
(34,1,'Edit an Event','{\"title\":\"sdfsd\",\"description\":\"<p>sdfsd<\\/p>\",\"image\":\"event - image - 1637481763.jpg\",\"bannerImage\":\"event - image - 1637481763.jpg\",\"date\":\"2021-11-26\",\"dateTo\":\"2021-11-29\",\"time\":\"09 Am\",\"address\":\"<p>sdfsd<\\/p>\",\"shortAddress\":\"<p>sdfsdf<\\/p>\",\"mapUrl\":\"https:\\/\\/www.google.lk\\/maps\\/place\\/Panadura\\/@6.7285501,79.8944166,13z\\/data=!3m1!4b1!4m5!3m4!1s0x3ae24616c169e7c3:0xd21e80c970651d56!8m2!3d6.7106408!4d79.907341\",\"updated_at\":\"2021-11-21 08:05:53\",\"active\":0,\"user_id\":1}',1637481953),
(35,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1637576252),
(36,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1641797958),
(37,1,'Logout from Admin Panel','{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"type\":\"admin\"}',1641797979),
(38,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1641798964),
(39,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1641811999),
(40,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1641979227),
(41,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1642571834),
(42,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1642571873),
(43,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1643002360),
(44,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1643023612),
(45,1,'Login to Admin Panel','{\"ID\":1,\"email\":{\"ID\":1,\"fullname\":\"admin\",\"email\":\"admin@admin.com\",\"password\":\"$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU\\/ji3K.Eq2PTaeSbJO7U0pH.DHV6O\",\"type\":\"admin\",\"created\":1474010815,\"updated\":1474010815}}',1643282718);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2017_03_21_072642_create_session_table',1),
(2,'2017_03_21_073433_create_users_table',1),
(3,'2017_03_21_073823_create_log_table',1),
(4,'2017_03_21_073954_add_data_column_logs_table',1),
(5,'2017_03_21_074113_delete_field_username_table_users',1),
(6,'2017_03_21_074248_add_column_email_after_fullname_table_users',1),
(7,'2017_03_21_074734_create_table_user_meta',1),
(8,'2017_04_05_102452_update_column_field_email_unique_table_users',1);

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id_setting` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `setting` */

insert  into `setting`(`id_setting`,`nama_perusahaan`,`alamat`,`telepon`,`tipe_nota`,`diskon`,`path_logo`,`path_kartu_member`,`created_at`,`updated_at`) values 
(1,'WimKahfi','Fatmawati, Jakarta Selatan','083804913901',1,0,'/public/img/logo.png','/img/logo-2022-06-17011151.jpg','2022-06-04 21:30:24','2022-06-17 01:11:51');

/*Table structure for table `user_meta` */

DROP TABLE IF EXISTS `user_meta`;

CREATE TABLE `user_meta` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_meta` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('admin','employee') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`fullname`,`email`,`password`,`type`,`created`,`updated`) values 
(1,'admin','admin@admin.com','$2b$10$FePYll26m4XkFUwoQ.2dNeSAimXKIub2411azCiBaQCmyYSRmGwCq','admin','2024-06-03 15:44:55','2024-06-03 15:45:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
