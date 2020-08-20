-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 06:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t6_entrepreneurs`
--
CREATE DATABASE IF NOT EXISTS `t6_entrepreneurs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `t6_entrepreneurs`;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `nr_employees` int(11) DEFAULT NULL,
  `str_name_nr` varchar(250) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `e_mail` varchar(250) DEFAULT NULL,
  `webpage` varchar(250) DEFAULT NULL,
  `tel_nr` varchar(250) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `moto` varchar(500) DEFAULT NULL,
  `gmaploc` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `branch`, `nr_employees`, `str_name_nr`, `city`, `zipcode`, `country`, `e_mail`, `webpage`, `tel_nr`, `logo`, `image`, `description`, `moto`, `gmaploc`) VALUES
(3, 'sûrprise, sûrprise!', 'food industry', NULL, 'Gertrudplatz 3', 'Vienna', 1180, 'AT', 'elke@surprisesurprise.at', 'http://www.surprisesurprise.at/', NULL, 'http://www.surprisesurprise.at/wp-content/uploads/2014/05/surprise4.jpg', 'http://www.surprisesurprise.at/wp-content/uploads/2014/10/SAM_22051.jpg', 'Ursprünglich kommt die Crêpe, eine hauchdünne Palatschinke, aus der Bretagne. Dort heißt die Crêpe „Krampouezhenn“. Der dünnflüssige Crêpe-Teig besteht aus Weizenmehl, Milch, Wasser, Eiern sowie ein wenig Zucker und wird bei „Crêpes Sûrprise“ nach einem französischen Originalrezept aus Bio-Zutaten hergestellt. Durch die Zubereitung auf der Gusseisenplatte kann die Crêpe sehr dünn gebacken werden. Im Gegensatz zum Herausbacken in der Pfanne ist auf der Gusseisenplatte nur sehr wenig Fett notwendig – die Platte wird regelmäßig mit hocherhitzbarem Bio-Sonnenblumenöl eingerieben, damit die Crêpes sich leicht lösen. \r\n\r\nDie Gusseisenplatte stammt vom Marktführer für Crêpe-Geräte in Frankreich, dem Traditionsunternehmen „Krampouz – Fabricant de crêpières pour usage professionnel“. Der Teig wird mit einem Teigrechen, dem „rateau“ oder auf bretonisch „rozell“ im Uhrzeigersinn auf der Platte verteilt und mit einer langen Palette gewendet. Wenn am Kutschkermarkt ein starker Wind weht, kann das manchmal durchaus spannend werden.\r\n\r\nNachdem die Crêpe in ca. 1 Minute fertig gebacken ist – wer sie besonders dunkel und knusprig haben möchte, also „crasse“ auf bretonisch, bitte einfach dazusagen!, dann dauert es noch ein bisschen länger – wird sie mit köstlichen süßen Füllungen bestrichen. Die aktuelle Speisekarte findet ihr hier. Wer sich nicht entscheiden kann, bestellt einfach eine „Crêpe Sûrprise“ und lässt sich überraschen! Einen Kaffee dazu gibt es zwar nicht von mir, aber dafür bei den Nachbarn von Atlantis Fisch oder im Café Himmelblau schräg gegenüber.\r\n\r\nMein kleiner Gastgarten besteht aus einem Tisch mit zwei Sesseln und ist daher oft voll besetzt, aber die Crêpes im Sûrprise, Sûrprise!-Stanitzel sind ja einfach zum Mitnehmen und auch im Gehen leicht zu verspeisen – à emporter!', 'In Frankreich gibt es an jeder Ecke frische Crêpes zum Mitnehmen. Und jetzt auch auf dem Kutschkermarktam Gertrudplatz 3.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2658.0191524374914!2d16.342240615652127!3d48.22550577923055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476d07d01731aa93%3A0x260dd735a224e51f!2sGertrudpl.%203%2C%201180%20Wien!5e0!3m2!1sen!2sat!4v1597844633291!5m2!1sen!2sat'),
(4, 'GOINGMETA.IO', 'IT', NULL, 'Lindengasse 56', 'Vienna', 1070, 'AT', 'laurens.lang@goingmeta.io', 'https://goingmeta.io/', '+43 670 208 6108', 'https://goingmeta.io/wp-content/uploads/2020/03/lightlogo.png', 'https://goingmeta.io/wp-content/uploads/2020/05/Artboard-1-2048x1364.png', 'Wir unterstützen Sie rund um das Thema digitale Transformation. Wir adressieren Unternehmen, die bereit sind alle Möglichkeiten der Digitalisierung auszuschöpfen. Mit einem Fokus auf die Umsetzung von digitalen Marketing- und Vertriebslösungen, skalieren wir Ihr Geschäftsmodell.\r\n\r\nUm ein Produkt zu erschaffen, was wirklich Probleme löst, muss man etwas kontraintuitives machen: Going Meta. Welche verschiedenen Kundensegmente gibt es? Wie kann man sie erreichen? Welche speziellen Probleme haben die Personen? Welche Gewohnheiten haben sie? Wie wird das Problem bisher gelöst? Wie kann man noch tiefgreifender digitalisieren oder automatisieren?\r\nSicher können Ihnen andere Agenturen schnell eine App verkaufen. Bevor wir die IDE öffnen, durchlaufen wir einen systematischen Analyseprozess. Erst dann bieten wir Ihnen maßgeschneiderte Anwendungen für Ihr Unternehmen: Vom User Experience Design bis hin zur App, Backend-, Web- & Cloud-Entwicklung. Egal ob Progressive Web App, Web Design, Enterprise Website, UX & Design oder Visual Modeling Tools.\r\nUnsere Kunden können auf uns vertrauen, denn wir begleiten sie während des gesamten Entwicklungsprozesses und darüber hinaus. So stellen wir sicher, für jeden Einzelfall das bestmögliche Ergebnis zu erzielen. Die Expertise hierfür haben wir uns seit der Gründung im Jahr 2019 in zahlreichen nationalen und internationalen Projekten erarbeitet.\r\nUnsere Projekterfahrungen sind aus diesem Grund genauso vielfältig wie die Technologien, die wir regelmäßig einsetzen. Wenn auch Sie von unseren Leistungen profitieren möchten, kontaktieren Sie uns. Wir beraten Sie gerne.', 'We engineer  empowerment^2', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2659.357872603412!2d16.343536815651184!3d48.19972237922839!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476d078cbbb85c8b%3A0xd4fa23aab5e92936!2sLindengasse%2056%2C%201070%20Wien!5e0!3m2!1sen!2sat!4v1597844948754!5m2!1sen!2sat'),
(5, 'claus faber', 'berater', 3, 'Ludo Hartmann-Platz 1', 'Vienna', 1160, 'AT', 'claus@clausfaber.net', 'https://clausfaber.net/', '+43 69913707237', 'https://clausfaber.net/wp-content/uploads/2017/03/weblogo_untereinander.jpg', 'https://clausfaber.net/wp-content/uploads/2020/07/board-939244_1280-1080x562.jpg', '… war Kurt Lewin’s Grundhaltung bei der Entwicklung der Gruppendynamik. Wir machen dies noch heute: Wir bieten Menschen Raum und Ressourcen, damit sie an ihren eigenen Angelegenheiten selbstermächtigt teil haben können – auch in Zeiten des Ein-Meter-Abstands.', 'Betroffene zu Beteiligten machen', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2659.053699752406!2d16.332323615651344!3d48.20558157922891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476d07effd5d30dd%3A0xd6ffd452b5f82247!2sLudo-Hartmann-Platz%201%2C%201160%20Wien!5e0!3m2!1sen!2sat!4v1597845273210!5m2!1sen!2sat'),
(6, 'STRG.', 'https://www.strg.at/wp-content/uploads/2019/11/symbol-strg-trans.png', 25, 'Gumpendorfer Straße 132/9', 'Vienna', 1060, 'AT', 'office@strg.at', NULL, '+43 1 526 56 29', 'https://strg.at/wp-content/uploads/2019/10/strg-logo_dark-retina.png', 'https://strg.at/wp-content/uploads/2019/10/strg-logo_dark-retina.png', 'An innovative technology hub in digital marketing, that provides high-end services and products to companies who want to turn their readers into customers. We have the technical expertise and technology (STRG.BeHave & STRG.CMS) to create high-quality data ecosystems generated from reader behaviour and superior content that converts!\r\n\r\nSTRG. was founded in Vienna in 2003. It didn’t take long, for us to become established in the field of intelligent content measurement, for both the local and international web portals. With over 15 years in the digital publishing field, we are a one-stop-shop for enterprise level websites who want a content system, that you’ll want to write home about. See how we added that pun there?\r\nWe have partnered with forward-thinking partners and we have expanded our collaboration with reputable companies in the media industry, as well as with customers in the field of trade, information and services.\r\n\r\nToday, our company has an international team of 25 people in our headquarters in Vienna and development partners around the globe.', 'We turn readers into customers', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2659.827564424262!2d16.338309415650897!3d48.19067377922771!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476da821c2684455%3A0x7b9dc62523a56314!2sGumpendorfer%20Str.%20132%2C%201060%20Wien!5e0!3m2!1sen!2sat!4v1597847628938!5m2!1sen!2sat'),
(7, 'traivelling', 'travel', 3, 'Zentagasse 45/13', 'Vienna', 1050, 'AT', 'office@traivelling.com', 'https://www.traivelling.com/', '+43 650 4507215', 'https://static1.squarespace.com/static/5de0de675719bc3639fdd491/t/5de0e431f26533387af66c82/1585749110627/?format=1500w', 'https://cdn.pixabay.com/photo/2016/01/09/18/27/old-1130731_960_720.jpg', 'Wir planen und buchen Ticketpakete für Reisen in Europa und in entfernteste Erdenwinkel. Durch unser Länder - und Ticket - spezifisches Knowhow ermöglichen wir internationale Buchungen, die internationale Brückenschläge sind, wie sie kein Reisebüro in Mitteleuropa bis jetzt für Bahnreisen in der ‚economy class‘ anbietet. \r\n\r\nWir bieten die Alternative zum Flugzeug. Als offizieller Vertriebspartner der ÖBB und der DB ermöglichen wir günstiges, verlässliches, einfaches Reisen in ganz Europa. Durch unsere Partner in vielen Ländern können wir die nötigen Tickets auf dem Weg nach Hanoi, Bangkok oder Tokio persönlich übergeben bzw. hinterlegen lassen. Traivelling bietet günstige Preise, weil wir in unserer Kalkulation versuchen, die wahren Ticketkosten (zuzüglich einer transparenten Vermittlungsgebühr) an unsere KundInnen weiterzuverrechnen.', 'Traivelling – we train travel the world! - ist das allererste konsequent klimafreundliche Bahnreisebüro.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2659.8987500162293!2d16.35524131565087!3d48.18930227922757!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476da829087f2c33%3A0xe082fb3b9f02442b!2sZentagasse%2045%2C%201050%20Wien!5e0!3m2!1sen!2sat!4v1597847970213!5m2!1sen!2sat');

-- --------------------------------------------------------

--
-- Table structure for table `cause`
--

DROP TABLE IF EXISTS `cause`;
CREATE TABLE `cause` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `excerpt` varchar(1000) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cause`
--

INSERT INTO `cause` (`id`, `title`, `subtitle`, `excerpt`, `image`, `description`, `date_start`, `date_end`) VALUES
(3, 'Fridays for Future', 'Stellungnahme von Unternehmerinnen & Unternehmern zu den Protesten für mehr Klimaschutz', 'Unternehmerinnen und Unternehmer, die heute schon Klimaschutz voranbringen bzw. sich dafür einsetzen, dass die Wirtschaft mit innovativen Produkten, Technologien, Dienstleistungen und Geschäftsmodellen einen schnelleren Klimaschutz voranbringt.', 'https://entrepreneurs4future.de/wp-content/uploads/EFF_Mail-Banner_V3.jpg', 'Wir laden aktive Unternehmerinnen, Unternehmer, Gründerinnen, Gründer und Selbständige\r\naus allen Branchen, die heute schon Klimaschutz mit ihren Unternehmungen voranbringen oder die davon überzeugt sind, dass schnellere und bessere Klimaschutzmaßnahmen nötig sind ein, die Stellungnahme zu unterschreiben.\r\n\r\nInzwischen streiken und demonstrieren weltweit junge Menschen für ambitionierten Klimaschutz, für das Benennen der Klimakrise als echte Krise und für die Rettung unseres Planeten. Die historische Mobilisierungskraft der Bewegung zeigt die Dringlichkeit des Anliegens. Auch die Wissenschaft hat mit tausenden Unterzeichnenden der Initiative #Scientists4Future.org erklärt, dass die derzeitigen Maßnahmen zum Klima-, Arten-, Wald-, Boden- und Meeresschutz bei weitem nicht ausreichen. Als Unternehmerinnen und Unternehmer erklären wir uns mit den Streikenden solidarisch.', '2020-08-19', NULL),
(4, 'Klimavolksbegehren', 'Setze ein Zeichen', 'Setz ein Zeichen und zeig der Regierung wie wichtig Klimaschutz für dich ist!', 'https://entrepreneurs4future.de/wp-content/uploads/20191129_E4F_Klimastreik.jpg', 'Die österreichischen Emissionen steigen weiter und das Land verteidigt seine europäische Schlusslichtposition. Während bei Budgetfragen gerne die Botschaft gesendet wird, dass zukünftigen Generationen keine neuen Schulden aufgehalst werden dürfen – gilt bei den Emissionen offenbar das Gegenteil. „Wie schon beim EU-Gipfel bremst Österreich nicht nur in der Vergabe von Geldern, sondern auch beim Klimaschutz. Beides ist fatal“, unterstreicht Katharina Rogenhofer, Sprecherin des Klimavolksbegehrens.\r\n\r\nDie heute präsentierten Emissionszahlen für das Jahr 2019 sind desaströs: sie zeigen eine deutliche Steigerung gegenüber dem Vorjahr. „Österreich wäre nicht nur unionsrechtlich verpflichtet, diesen Trend umzukehren, sondern auch uns als BürgerInnen. Wenn es so weitergeht, werden es die Menschen in Österreich in allen Belangen zu spüren bekommen – den einen schwemmt es das Haus weg, den anderen trocknet es die Ernte aus, alle leiden unter der Hitze und am Ende des Tages wird nichts mehr so sein, wie bisher. Wir Menschen tragen dann die Rechnung für das Versagen der österreichischen Regierung“, meint Rogenhofer und verweist auf die 380.590 Stimmen, die das Klimavolksbegehren als eindeutigen Auftrag an die Politik gesammelt hat.', '2020-08-18', '2020-08-28'),
(5, 'Bienenretten!', 'Jetzt aktiv werden und unsere Bienen vor dem Aussterben retten', '„Wenn die Biene einmal von der Erde verschwindet, hat der Mensch nur noch vier Jahre zu leben. Keine Bienen mehr, keine Bestäubung mehr, keine Pflanzen mehr, keine Tiere mehr, kein Mensch mehr.“\r\n–Albert Einstein', 'https://cdn.pixabay.com/photo/2016/09/04/12/05/sun-flower-1643794_960_720.jpg', 'Das Bienensterben bedroht unsere Tier- und Pflanzenwelt! Weltweit geht die Bienenpopulation dramatisch zurück. Die westliche Honigbiene ist besonders stark betroffen, aber auch Wildbienen- und Hummelarten verschwinden allmählich von der Bildfläche. Zwar gab es solche Verluste schon immer, jedoch nie in einem so hohen Maß wie heute. Der Österreichische Tierschutzverein ruft zur Aktion auf: Machen wir ganz Österreich zum blühenden Bienenparadies!\r\n\r\nExperten gehen davon aus, dass nicht eine Ursache für das Bienensterben verantwortlich ist, sondern ein Zusammenspiel aus Pestiziden, Viruskrankheiten, der Ausbreitung der Varroamilbe und der Klimaerwärmung.', '2020-08-18', '2020-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200813094042', '2020-08-13 15:16:35', 208);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `date_published` date NOT NULL,
  `author_fn` varchar(50) DEFAULT NULL,
  `author_ln` varchar(50) DEFAULT NULL,
  `image_main` varchar(250) NOT NULL,
  `image_middle` varchar(250) DEFAULT NULL,
  `image_bottom` varchar(250) DEFAULT NULL,
  `excerpt` varchar(500) DEFAULT NULL,
  `intro_text` mediumtext DEFAULT NULL,
  `main_text` mediumtext DEFAULT NULL,
  `outro_text` mediumtext DEFAULT NULL,
  `post_type` varchar(50) DEFAULT NULL,
  `strike_date_time` datetime DEFAULT NULL,
  `strike_str_name_nr` varchar(250) DEFAULT NULL,
  `strike_city` varchar(50) DEFAULT NULL,
  `strike_zipcode` int(11) DEFAULT NULL,
  `strike_country` varchar(50) DEFAULT NULL,
  `b_logo` varchar(250) DEFAULT NULL,
  `b_name` varchar(250) DEFAULT NULL,
  `b_branch` varchar(250) DEFAULT NULL,
  `b_str_name_nr` varchar(250) DEFAULT NULL,
  `b_city` varchar(50) DEFAULT NULL,
  `b_zipcode` int(11) DEFAULT NULL,
  `b_country` varchar(50) DEFAULT NULL,
  `b_e_mail` varchar(250) DEFAULT NULL,
  `b_webpage` varchar(250) DEFAULT NULL,
  `b_gmaploc` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `subtitle`, `date_published`, `author_fn`, `author_ln`, `image_main`, `image_middle`, `image_bottom`, `excerpt`, `intro_text`, `main_text`, `outro_text`, `post_type`, `strike_date_time`, `strike_str_name_nr`, `strike_city`, `strike_zipcode`, `strike_country`, `b_logo`, `b_name`, `b_branch`, `b_str_name_nr`, `b_city`, `b_zipcode`, `b_country`, `b_e_mail`, `b_webpage`, `b_gmaploc`) VALUES
(5, '#KlimaSchrei', '#NetzstreikFürsKlima: E4F-Aktion #KlimaSchrei', '2020-08-19', NULL, NULL, 'https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/94259386_2552972154961139_4840808509190701056_o.jpg?_nc_cat=110&_nc_sid=b386c4&_nc_ohc=xEjg-uPsXfQAX_96YSF&_nc_ht=scontent-vie1-1.xx&oh=7c8e439eb59f2a055a654d171139c868&oe=5F632AA6', NULL, NULL, NULL, 'Gerade in diesen Zeiten sind wir weiterhin gemeinsam laut fürs Klima. Aus diesem Grund erheben wir zusammen mit Fridays For Future und weiteren For-Future Gruppen am 24.04.2020 um 12 Uhr online beim #NetzstreikFürsKlima - nicht weniger laut - unsere Stimmen: #E4F #KlimaSchrei.\r\n\r\nDamit sprechen wir uns für die Einhaltung des Pariser Klimaabkommens und die Umsetzung des Europäischen Green Deals für ein klimaschonendes Wirtschaften auch nach der Coronakrise aus. Wir stehen weiterhin zu unseren Forderungen. Die jetzt gewonnenen Erkenntnisse müssen genutzt werden, um eine nachhaltige und klimaverträgliche Wirtschaft zu fördern, die unsere Gesellschaft für die Zukunft resilient macht.', 'Wenn auch ihr ein regionales Vernetzungstreffen organisieren wollt, schreibt uns bitte eine Mail an info@entrepreneursforfuture.de. Bitte nennt den Namen eures Unternehmens, schickt uns einige Sätze über euch, benennt eine verantwortliche Person für das Treffen und teilt uns deren Mailadresse mit. Außerdem ganz wichtig: schickt uns Zeit & Ort für das Meeting, das ihr organisieren wollt. Wir empfehlen, zudem noch eine Beschreibung zu der Agenda und den Zielen des Treffens zu formulieren, die wir als Beschreibung für das Treffen nutzen können. Bitte plant das Treffen min. zwei Wochen im Voraus, damit genügend Zeit bleibt, dies bekannt zu machen. Wir übernehmen das Einladungsmanagement und kündigen das Treffen auf der E4F-Facebookseite an.', NULL, 'strike', '2020-08-19 12:00:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Save the date – Save the climate!', NULL, '2020-08-10', NULL, NULL, 'https://entrepreneurs4future.de/wp-content/uploads/logo_entrepreneursforfuture.png', NULL, NULL, 'Am 25.09.2020 wird auf Initiative von Fridays For Future wieder global gestreikt. Auch diesmal werden wir Unternehmerinnen und Unternehmer wieder dabei sein.', 'Materialien für den globalen Klimastreik am 25.09.2020 werden wir im Vorfeld hier veröffentlichen!\r\nWeitersagen!\r\nTermin schon jetzt notieren und weitersagen, um wieder gemeinsam als Unternehmer*in an diesem Tag öffentlich ein Zeichen zu setzen und für Klimaschutz einzustehen.\r\n\r\nNutzten Sie unsere Materialien, veröffentlich Sie Posts auf Ihren Social Media-Plattformen, geben Sie Interviews! Um unsere Ziele für mehr Klimaschutz zu erreichen, müssen wir auch in Zukunft gemeinsam auftreten!', NULL, NULL, 'strike', '2020-09-25 12:00:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'In der Krise Kurs halten: Wirtschaft und Klimaschutz', NULL, '2020-08-11', NULL, NULL, 'https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/96791072_10157199678935222_1032679651727638528_o.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=vST3sE3BL2MAX-LddSg&_nc_ht=scontent-vie1-1.xx&oh=b20b50d795385ca405a0fe021937af53&oe=5F620E7B', NULL, NULL, NULL, 'Große Teile der Zivilgesellschaft und der Wirtschaft stehen auch in der Coronakrise weiterhin zum Klimaschutz. Die Debatte um adäquate Konjunkturprogramme und ihren Beitrag für eine nachhaltige Transformation der Wirtschaft ist voll entbrannt. Immer mehr Unternehmen positionieren sich mit ihren Klimaschutz-Forderungen – etwa im Rahmen der Initiative EntrepreneursForFuture oder setzen ein Zeichen mit Unternehmensaufrufen. Welchen Beitrag leisten Innovation und Forschung für mehr Klimaschutz in der Wirtschaft? Welche Rolle nimmt die Deutsche Bundesstiftung Umwelt ein? Welche Fördermöglichkeiten gibt es für kleine und mittlere Unternehmen (KMU)?\r\n\r\nDarüber diskutieren:\r\nAlexander Bonde (Generalsekretär der DBU)', NULL, NULL, 'strike', '2020-11-18 12:00:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'CO2-Abgabe für Importe statt Klimaschutz-Dumping', '\"Ein politisch sehr dickes Brett\"', '2020-08-18', NULL, NULL, 'https://external-vie1-1.xx.fbcdn.net/safe_image.php?d=AQBy0vRU2wm3fd3L&w=540&h=282&url=https%3A%2F%2Fwww.klimareporter.de%2Fimages%2Fklimareporter.png&cfs=1&upscale=1&fallback=news_d_placeholder_publisher&_nc_hash=AQD6yIozuj30kknG', 'https://www.klimareporter.de/images/karo3imgmanager/resized/3501-3600/DSC00742-3537-540-360-80-c.jpg', NULL, 'Ab 2023 will die EU Importe mit einer CO2-Abgabe belegen. Damit soll die europäische Industrie besser gegen Produkte bestehen, die unter niedrigen Klimaschutzstandards hergestellt wurden. Deutsche Wirtschaftsverbände attackieren das Instrument dennoch, obwohl sich damit weltweit Klimaschutz durchsetzen ließe.', 'Ab 2023 will die EU Importe mit einer CO2-Abgabe belegen. Damit soll die europäische Industrie besser gegen Produkte bestehen, die unter niedrigen Klimaschutzstandards hergestellt wurden. Deutsche Wirtschaftsverbände attackieren das Instrument dennoch, obwohl sich damit weltweit Klimaschutz durchsetzen ließe.', 'Eigentlich soll das geplante CO2-Grenzausgleichssystem der Industrie helfen. Das Instrument soll europäische Unternehmen vor einem Wettbewerbsnachteil schützen, wenn importierte Produkte außerhalb der EU billiger – weil unter schwächeren Klimaauflagen – produziert wurden.\r\n\r\nFür diese Produkte soll nach dem Willen der EU-Kommission künftig ein Ausgleich fällig werden und so verhindern, dass die Produktion in Länder mit weniger Klimaschutzvorgaben abwandert.\r\n\r\n\"Wer verursachergerechten Klimaschutz will, muss auch die Industrie zur Verantwortung ziehen\", sagt Ulf Sieberg vom Verein CO2-Abgabe. Richtig gemacht, halte ein Grenzausgleich die europäische Industrie langfristig am Leben und bewahre sie vor Klimaschutz-Dumping.\r\n\r\nFür Wirtschaftsverbände sind die Pläne zum CO2-Grenzausgleich dennoch ein rotes Tuch: Der Bundesverband der Deutschen Industrie (BDI) lehnt das Instrument rundweg ab. Ines Zenke vom Wirtschaftsverband der SPD fürchtet Gegenbewegungen anderer Staaten, indem sie der EU verschärfte Exportbedingungen auferlegen.\r\n\r\nDer Deutsche Sparkassen- und Giroverband macht ebenfalls Stimmung gegen die vorgesehene Abgabe, deren Ausgestaltung derzeit noch im Werden ist. Es sei unklar, ob der Ausgleich große Erträge liefern werde und wie er mit den Regeln der Welthandelsorganisation WTO konform gehen könne.\r\n\r\nIn der vergangenen Woche ließ auch Russland die Muskeln spielen und warnte, das geplante System sei nicht mit den WTO-Regeln in Einklang zu bringen und würde neue Handelsbarrieren schaffen. Fachleute wie die Volkswirtin Susanne Dröge von der Stiftung Wissenschaft und Politik versichern aber, dass die Abgabe WTO-konform gestaltet werden kann.', NULL, 'news', '2020-08-19 13:09:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Generation #Purpose', NULL, '2020-08-07', NULL, NULL, 'https://www.welt.de/img/wirtschaft/mobile212141815/0541626507-ci23x11-w1136/Landwirtschaft-2.jpg', NULL, NULL, NULL, 'Gerade die jüngeren Generationen stellen wachsende Ansprüche an das ethische Verhalten von Konzernen, an eine sinnhafte Bereitstellung von Waren und Dienstleistungen jenseits von purem Profit. Im Fachjargon hat sich für dieses Phänomen der Begriff „Purpose“ eingebürgert, zielorientiertes Verhalten also. Die Unternehmensberatung Accenture spricht bereits von einer „Generation P“ wie Purpose, der die Jahrgänge seit den 80er-Jahren zuzurechnen seien.\r\n\r\n„Die Generation P möchte wissen, wofür ein Unternehmen steht, welchen Beitrag es für die Gesellschaft, die Wirtschaft und die Umwelt leistet“, sagt Jürgen Morath von Accenture Strategy. Auch das derzeit politisch heiß diskutierte Thema von verantwortbaren und sicheren Lieferketten spiele mit hinein.', 'Zum Kükentöten sage sie klar „Nein“, ließ die Handelskette Kaufland dieser Tage wissen. Das komplette Sortiment werde demnächst umgestellt. Zunächst Bio-, Freiland- und Eigenmarken, bis Ende kommenden Jahres alles. Damit ist Kaufland nicht allein. Immer wieder preschen Einzelhandelsunternehmen vor, wenn es um ethische Fragen geht.\r\n\r\nEine Auswahl aus den letzten Tagen: Penny verdoppelt sein Spendenvolumen an die Tafeln. Rewe stellt ein überarbeitetes Nachhaltigkeitslabel vor. Edeka unterstützt eine Aktion gegen häusliche Gewalt in der Corona-Krise. Und Aldi Süd wird Partner von SOS-Kinderdorf und bündelt seine sozialen Aktionen unter der neuen Dachmarke „Spenden, helfen, fördern“.\r\n\r\nTue Gutes und rede darüber – dieser Grundsatz der PR-Branche wird wohl nirgendwo so konsequent befolgt wie im Einzelhandel. Kein Wunder, denn keine andere Branche ist angesichts von Millionen Kundenkontakten täglich so eng mit der Gesellschaft verwoben. Händler gelten als die erste Adresse, wenn Aktivisten jeglicher Couleur Druck machen wollen.', NULL, 'news', '2020-08-19 12:55:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '#KursAufKlimaschutz!', 'Und zwar JETZT und mit vereinten Kräften!', '2020-08-19', NULL, NULL, 'https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/100748952_2580677422190612_4447862114488418304_o.jpg?_nc_cat=106&_nc_sid=8024bb&_nc_ohc=38UAZaBu3x0AX9OMaBy&_nc_ht=scontent-vie1-1.xx&oh=6a6e8a4ac400fa7f7dbf97967dfd2671&oe=5F60D2A5', NULL, NULL, NULL, 'Alexander Bonde von der Deutsche Bundesstiftung Umwelt spricht zu spannende innovative technische Lösungen, die jetzt schon Zukunft gestalten und der Förderung von Green-Startups. Reinhard Schneider von Werner & Mertz GmbH macht klar – Zuspruch für ökologische Produkte wächst. Ökologie und Ökonomie funktioniert und macht Lust auf mehr. Katharina Reuter von Entrepreneurs For Future macht klar: Unternehmen haben und nehmen Verantwortung. Wir lassen uns den Ökogeist nicht nehmen. Wirtschaft will und kann! Konjunkturprogramme müssen an Green New Deal gekoppelt, es braucht Transformationsfonds. Fast 900 Unternehmen haben bereits den Aufruf nachhaltig-zusammen.de unterschrieben und sagen #wirbleibendran! So auch Ben & Jerry\'s, NATURSTROM AG, GLS Bank und DENTTABS-Zahnputztabletten. Danke auch an die über 150 Teilnehmer*innen für die anregende Diskussion.', NULL, NULL, 'news', '2020-08-19 13:23:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Alpengummi', 'Geniales Beispiel für ein \"Entrepreneur for Future\" Unternehmen', '2020-08-19', NULL, NULL, 'https://www.alpengummi.at/uploads/Sandra%20und%20Claudia%20cc%20Wolfgang%20Riepl.jpg', 'https://www.alpengummi.at/uploads/team-alpengummi.jpg', NULL, 'Alpengummi ist der erste natürliche Kaugummi der Alpen, der zu 100% aus nachwachsenden Rohstoffen besteht. Die neuartige Kaumasse wird aus heimischem Baumharz & Bienenwachs gewonnen, und ist somit biologisch abbaubar.', 'Endlich gibt es ihn:\r\nDen ersten natürlichen Kaugummi der Alpen. Doch wer steckt eigentlich dahinter? Wer kam auf die Idee einen natürlichen Kaugummi aus heimischem Baumharz herzustellen?\r\n\r\nDie Erfinderinnen\r\n\r\nDürfen wir uns vorstellen: Wir sind Claudia und Sandra, die Gründerinnen von Alpengummi. Wir lernten uns während unseres internationalen Masterstudiums der Umweltwissenschaften in Kopenhagen kennen. Im zweiten Jahr - an der Universität für Bodenkultur in Wien - hatten wir eine Lehrveranstaltung, bei der es um Innovationen im Forstsektor ging. Dabei stießen wir auf das heimische Baumharz als fast vergessenen Rohstoff und das schöne Traditionshandwerk der Harzgewinnung (Pecherei), das 2011 in die Liste des Immateriellen Kulturerbes der UNESCO aufgenommen wurde. Als wir herausfanden, dass Baumharze in vielen Kulturen weltweit bereits seit Jahrtausenden gekaut werden, stellten wir uns die Frage, woraus herkömmliche Kaugummis heute wohl bestehen. Das herauszufinden war gar nicht leicht, da auf den Packungen handelsüblicher Kaugummis nur „Kaumasse“ steht, und nicht deklariert wird woraus diese eigentlich gewonnen werden. Was wir herausfanden, hat uns schockiert: Nämlich, dass die Kaumassen großteils aus Erdölprodukten gewonnen werden, in anderen Worten: Plastik. Da war uns klar: wir brauchen eine Alternative!\r\n\r\nUnd so war die Idee geboren!', 'Die Erfinderinnen\r\n\r\nDürfen wir uns vorstellen: Wir sind Claudia und Sandra, die Gründerinnen von Alpengummi. Wir lernten uns während unseres internationalen Masterstudiums der Umweltwissenschaften in Kopenhagen kennen. Im zweiten Jahr - an der Universität für Bodenkultur in Wien - hatten wir eine Lehrveranstaltung, bei der es um Innovationen im Forstsektor ging. Dabei stießen wir auf das heimische Baumharz als fast vergessenen Rohstoff und das schöne Traditionshandwerk der Harzgewinnung (Pecherei), das 2011 in die Liste des Immateriellen Kulturerbes der UNESCO aufgenommen wurde. Als wir herausfanden, dass Baumharze in vielen Kulturen weltweit bereits seit Jahrtausenden gekaut werden, stellten wir uns die Frage, woraus herkömmliche Kaugummis heute wohl bestehen. Das herauszufinden war gar nicht leicht, da auf den Packungen handelsüblicher Kaugummis nur „Kaumasse“ steht, und nicht deklariert wird woraus diese eigentlich gewonnen werden. Was wir herausfanden, hat uns schockiert: Nämlich, dass die Kaumassen großteils aus Erdölprodukten gewonnen werden, in anderen Worten: Plastik. Da war uns klar: wir brauchen eine Alternative!\r\n\r\nUnd so war die Idee geboren!', 'Je mehr wir recherchierten, desto aufregender und intensiver wurde unser Projekt.\r\n\r\nBald wurde uns klar, dass Alpengummi nicht nur eine nachhaltige Geschäftsidee ist, sondern auch gesellschaftliche und wirtschaftliche Auswirkungen hat. Und zwar mehr als positive! So stellten wir uns in die Küche, und fingen mit den ersten Versuchen an. Später führten wir unsere Produktentwicklung in einem Labor an der Uni weiter. Anfang 2019 war die Prototyp-Entwicklung dann endlich abgeschlossen. Alpengummi war geboren: frei von Erdöl, Aspartam, Weichmachern und anderen Dingen, die man am liebsten nicht zu sich nehmen möchte.\r\n\r\nAls das Projekt Alpengummi immer umfangreicher wurde, holten wir Richard & Sarah ins Team. Richard stammt aus einer Bäckerfamilie und hat Lebensmitteltechnologie studiert. Sarah studiert Wirtschaft und Recht.', 'story', '2020-08-19 13:24:58', NULL, NULL, NULL, NULL, 'https://www.alpengummi.at/img/brand-icon.svg', 'Alpengummi', 'food industry', NULL, NULL, NULL, NULL, NULL, 'https://www.alpengummi.at/', NULL),
(12, 'Plant-Based Seafood', 'Tasty fish, made of plants. Enabled by 3D Printing', '2020-08-19', NULL, NULL, 'https://www.3dnatives.com/en/wp-content/uploads/sites/2/fish_cover-768x452-1.jpg', 'https://images.squarespace-cdn.com/content/v1/5e74743de2c550397f9d2838/1589457253296-1PNTAT95KQSG0N4UG9GI/ke17ZwdGBToddI8pDm48kFmfxoboNKufWj-55Bgmc-J7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C', NULL, 'Our mission is to offer everyone who loves the taste of fresh seafood a delicious plant-based alternative. We are driven by the belief that we need to radically rethink the way we produce proteins to feed 8 billion people.', 'Our concept - Plant-based seafood lacks the structure of conventional seafood. We want to change that. Our method: Cutting edge 3D Printing technology!  Finest, realistic structures of salmon fillets. You will not be able to tell the difference!', 'Overfishing, greenhouse gas emission, destruction of the oceans… those are the side effects of the industrial fishery. Plant-based seafood production requires less energy, emits less greenhouse gases and does not need antibiotics. Take part in the quest towards ocean wildlife recovery and sustainable food production by joining the plant-based seafood movement!', 'The pollution of oceans with microplastics and heavy metals leads to the accumulation of these substances in fish meat. Antibiotics are used in aquaculture of salmon. You don’t like to put these things into your body? Our products are 100% free of microplastics, heavy metals and antibiotics!', 'story', '2020-08-19 14:44:32', NULL, NULL, NULL, NULL, NULL, 'Legendary Vish', 'food industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Rebel MEAT', 'MEHR ALS FLEISCH', '2020-08-19', NULL, NULL, 'https://www.trendingtopics.at/wp-content/uploads/2019/08/Rebel_Meat_2.jpg', 'https://www.keine-rezepte.at/wp-content/uploads/2019/09/Rebel-Meat-Patty-klein-1080x675.jpg', 'https://files.billa.at/files/artikel/00-398529_01__1200x1200.jpg', 'Für unsere saftigen Burger-Patties verwenden wir nur die besten BIO-ZUTATEN aus Österreich und verzichten vollständig auf  künstliche Zusatzstoffe, weil wir finden: REGIONAL und NATÜRLICH schmeckt´s am besten!', 'Wir wollen einen Mehrwert für die REGION kreieren. Darum kommen unsere Zutaten zu 100% aus ÖSTERREICH. Denn wir sind davon überzeugt, dass kleine, regionale Landwirtschaften auf Dauer nur bestehen können, wenn wir sie gemeinsam tatkräftig unterstützen.', 'NACHHALTIGKEIT und Fleischkonsum passen bei uns zusammen! Unsere Produkte sparen bis zu 1,5kg CO2, über 1000 Liter Wasser und bis zu 100 m2 landwirtschaftliche Fläche im Vergleich zu einem herkömmlichen Rindfleischpatty. Alle Zutaten sind BIOLOGISCH und werden in Österreich zu einem köstlichen Produkt vereint.', '100% ehrlich und transparent. Wir garantieren, dass bei uns nur HOCHWERTIGE ZUTATEN ins Patty kommen. Wir fahren regelmäßig zu unserem Pilzproduzenten und kennen unsere Fleischer PERSÖNLICH.', 'story', '2020-08-19 15:01:34', NULL, NULL, NULL, NULL, 'https://static.wixstatic.com/media/5d34d3_050cf047bf554c238092f01e9eede5a4~mv2.png/v1/fill/w_68,h_45,al_c,q_85,usm_0.66_1.00_0.01/LOGO_REBELMEAT_weiss.webp', 'Rebel Meat', 'food industry', NULL, NULL, NULL, NULL, 'alexandra.mayr@rebelmeat.com', 'https://www.rebelmeat.com/', NULL),
(14, 'Process Innovation through Optimization', 'Automatisierung von komplexen Entscheidungsprozessen in der Logistik', '2020-08-19', 'Jane', 'Doe', 'https://hex-solutions.com/wp-content/uploads/2019/08/02.-Juli-2019-2_schmal-1.jpg', 'https://hex-solutions.com/wp-content/uploads/2018/08/Kernbereiche-hex.png', NULL, 'hex. entwickelt maßgeschneiderte Softwarelösungen basierend auf innovativen Algorithmen zur Optimierung von Prozessen. Durch unsere Lösungen werden komplexe Entscheidungsprozesse effizienter, einfacher und vorhersehbarer.', 'Traditionelle öffentliche Verkehrsmittel sind in Gebieten mit geringerer Dichte mit verschiedenen wirtschaftlichen Herausforderungen in Hinblick auf Angebot, Auslastung und Qualität konfrontiert. Die Bereitstellung öffentlicher Verkehrsmittel ist teuer, wenn die Nachfrage gering oder variabel ist, z. B. in zerstreuten ländlichen Gebieten oder zu bestimmten Tageszeiten.', 'Um diese Herausforderungen zu bewältigen, werden vielerorts bedarfsorientierte Transportdienste angeboten, die auf die individuelle Nachfrage reagieren und durch Abdeckung der First- und Last-Mile das Mobilitätsangebot erhöhen. In Österreich ist die öffentliche Hand unter dem Schlagwort „Mikro-ÖV“ bestrebt, Mobilitätslösungen bedarfsorientierter sowie umwelt- und ressourcenschonender zu gestalten.', 'Mit unserer skalierbaren Software-as-a-Service-Lösung hex.drive für die Buchung und den Betrieb von Mikro-ÖV-Flotten wollen wir einen nachhaltigen Beitrag zu einer grüneren Zukunft leisten, indem basierend auf unseren forschungsintensiven Optimierungsalgorithmen, die bereits von internationalen Konzernen (z.B. Tesco) zur Flottenkoordination eingesetzt werden, die konfliktären Ziele „Reduktion der CO2-Emmissionen“ und „Erhöhung der Mobilität“ gemeinsam erreicht werden. In fünf Jahren soll hex.drive in hunderten Regionen weltweit bedarfsorientierte Mobilitätsangebote steuern und bis zu 100 Fahrzeuge und tausende Buchungen täglich in Echtzeit ressourcenoptimal und umweltverträglich verplanen.', 'story', '2020-08-19 15:07:22', NULL, NULL, NULL, NULL, 'https://hex-solutions.com/wp-content/uploads/2018/08/hex_1200x565.png', 'hex.', 'IT', NULL, NULL, NULL, NULL, NULL, 'https://hex-solutions.com/', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5481.284656461019!2d14.263583!3d46.614071!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4770746a136d222d%3A0xacfa9444a3e33873!2sLakeside%20b10a%2C%209020%20Klagenfurt%20am%20W%C3%B6rthersee%2C%20Austria!5e0!3m2!1sen!2sus!4v1597842678125!5m2!1sen!2sus'),
(15, 'Inoqo: Österreichische App hilft dir, nachhaltiger zu leben', 'Caring about the planet has never been so easy.', '2020-08-19', NULL, NULL, 'https://www.techandnature.com/wp-content/uploads/2020/06/inoqo-1660x934.jpg', 'https://www.derbrutkasten.com/wp-content/uploads/2020/06/inoqo-app.png', NULL, 'To care about the planet is one thing. Acting, on the other hand, requires research, knowledge and a plan, and all that comes at a significant amount of effort. Fortunately we\'re here to help. Here is how.', 'Fitness-Apps helfen Nutzern dabei, ihre sportlichen Aktivitäten aufzuzeichnen und motivieren spielerisch zu mehr Sport. Genau dieses bewährte Prinzip legt ein Gründer aus Österreich nun auf nachhaltigen Konsum um.\r\n\r\nDie App Inoqo zeichnet Einkäufe automatisch auf und analysiert sie: Wie groß ist der CO2-Fußabdruck des Einkaufwagerl-Inhalts, für welche Produkte gibt es nachhaltigere Alternativen und wie schneide ich im Vergleich zu anderen Nutzern ab? Der Clou: Milch, Nudeln, Eier, Fleisch und Co. müssen nicht mit dem Smartphone gescannt werden – wie den Entwicklern dieser Trick gelungen ist, will Inoqo-Gründer Markus Linder im Gespräch mit Tech & Nature aber noch nicht verraten.', 'Wenn sie fertig ist, funktioniert die App so: Vor dem Einkaufen füllt der Nutzer in der App einen einfachen Fragebogen zu seinen Präferenzen und Werten aus – mag man Bio-Eier, Eier aus Freilandhaltung, legt man Wert auf Regionalität oder vielleicht auf zertifiziertes Palmöl? Die App berechnet dann nicht nur den CO2-Abdruck des Einkaufs, sondern prüft auch, ob die eigenen Werte vielleicht in kleingedruckten Zutatenlisten verletzt werden. Ist das der Fall, schlägt Inoqo Alternativen vor. Am Ende wird der Nutzer gelobt: Durch nachhaltigeres Einkaufen hat man Lebensraum für so und so vielen Bienen unterstützt und vielleicht hat man dem einen oder anderen Huhn durch den Kauf von Bio-Eiern ein besseres Leben ermöglicht.\r\n\r\nAuf „Nudging“, kleine Anreize, die Nutzer zu einem bestimmten Verhalten motivieren, setzt die App aber noch viel breiter. Weil die Klimakrise nur gemeinsam bekämpft werden kann, können Nutzer in Inoqo Teams beitreten. Zum Beispiel dem „Team Österreich“, das dann gemeinsam noch viel mehr Bienen und Hühner glücklich macht. Oder dem Team eines Unternehmens, das dann für diese Marketingmaßnahme etwas bezahlt – ein Standbein des Geschäftsmodells des Jungunternehmens.', 'Finanzieren soll sich die für Nutzer kostenlose App aber über Werbung. Und dazu hat sich Linder ein innovatives Modell einfallen lassen. Nachhaltige Produkte können in der App einer passgenauen Zielgruppe präsentiert werden und zwar dann, wenn diese ohnehin gerade vor dem Supermarktregal steht. Bezahlt wird, und das ist das Besondere, erfolgsabhängig, also nur dann, wenn ein Kunde das Produkt tatsächlich kauft. Damit holt Inoqo Digitales Affiliate Marketing in die Offline-Welt der Geschäfte.\r\n\r\nLinder rechnet damit, mit diesem Werbe-Modell dreistellige Millionenbeträge umzusetzen. Angst vor Greenwashing hat er nicht. „In Inoqo dürfen unabhängig vom Unternehmen nur nachhaltige Produkte beworben werden“, erklärt Linder. Das sei leichter zu kontrollieren und außerdem sieht er darin sogar einen gewissen Anreiz für Unternehmen, nachhaltigere Produkte auf den Markt zu bringen.', 'story', '2020-08-19 15:12:40', NULL, NULL, NULL, NULL, NULL, 'inoqo', NULL, 'Kandlgasse 19-21', 'Vienna', 1070, 'AT', 'hello@inoquo.com', 'https://www.inoqo.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2659.203899994176!2d16.339823115651384!3d48.20268837922871!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476d07f25adfb721%3A0xc3acc14621bb3eb7!2sKandlgasse%2019-21%2C%201070%20Wien!5e0!3m2!1sen!2sat!4v1597843019691!5m2!1sen!2sat'),
(16, 'Globaler Klimastreik Online', 'Gemeinsam schaffen wir jede Krise!', '2020-08-19', NULL, NULL, 'https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/93231206_1351719448344876_1442636358895009792_n.jpg?_nc_cat=104&_nc_sid=b386c4&_nc_ohc=mBTSAehxuz4AX9beDsn&_nc_ht=scontent-vie1-1.xx&oh=f08e3354b8b28a0502d8dbb83fb2896b&oe=5F61CCDE', NULL, NULL, 'Aus aktuellem Anlass verlegen wir den Weltweiten Klimastreik am 04.09. ins Netz!', '12-14 Uhr mit interaktiven Streikelementen und tollen Musik- & Redebeiträgen unter dem Motto \"Gemeinsam schaffen wir jede Krise!\". Schaltet euch auf Youtube, Facebook oder Website ein - Spaß, Wissen, Gemeinschaft und Empowerment garantiert!', NULL, NULL, 'strike', '2020-09-04 12:00:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '#FRIDAYSFORFUTURE', 'Dringender Weckruf - Wirtschaft will endlich mehr Klimaschutz umsetzen', '2020-08-18', NULL, NULL, 'https://entrepreneurs4future.de/wp-content/uploads/20191129_E4F_Klimastreik.jpg', NULL, NULL, 'Inzwischen streiken und demonstrieren weltweit junge Menschen für ambitionierten Klimaschutz, für das Benennen der Klimakrise als echte Krise und für die Rettung unseres Planeten. Die historische Mobilisierungskraft der Bewegung zeigt die Dringlichkeit des\r\nAnliegens.', 'Aus unserem eigenen tagtäglichen unternehmerischen Handeln wissen wir:\r\nKlimaschonendes Wirtschaften funktioniert heute schon. Viele innovative Technologien,\r\nProdukte, Dienstleistungen und Geschäftsmodelle für einen besseren Klimaschutz gibt es\r\nbereits. Aber weitergehende politische Rahmenbedingungen sind endlich nötig, damit\r\nfaire Wettbewerbsbedingungen für klimaschonende Technologien und Geschäftsmodelle\r\nhergestellt werden und die Wirtschaft insgesamt umsteuert.\r\nDie Staaten der Weltgemeinschaft haben sich mit dem Pariser Klimaschutzabkommen von\r\n2015 völkerrechtlich verbindlich dazu verpflichtet, die globale Erwärmung deutlich unter 2°C\r\nzu halten. Alle Länder haben außerdem Anstrengungen versprochen, die Erwärmung auf\r\n1,5°C zu begrenzen.\r\nAls unterzeichnende Unternehmerinnen und Unternehmer stehen wir hinter dem Pariser\r\nKlimaschutzabkommen und unterstützen diese Forderungen:\r\n', 'Die Staaten der Weltgemeinschaft haben sich mit dem Pariser Klimaschutzabkommen von\r\n2015 völkerrechtlich verbindlich dazu verpflichtet, die globale Erwärmung deutlich unter 2°C\r\nzu halten. Alle Länder haben außerdem Anstrengungen versprochen, die Erwärmung auf\r\n1,5°C zu begrenzen.', 'Als Profis aus der Wirtschaft wissen wir um die Kraft innovativer Geschäftsmodelle und\r\nTechnologien, die das Klima schützen und profitabel sind. Die konsequente und schnelle\r\nEinführung erneuerbarer Energien, einer ökologischen Landwirtschaft, einer Kreislaufwirtschaft und einer neuen Mobilität schaffen und sichern zukunftsfähige Arbeitsplätze.\r\nKlimaschützende Technologien und Geschäftsmodelle scheitern häufig an politischen\r\nRahmenbedingungen, die Geschäftsmodelle und Technologien der Vergangenheit schützen.\r\nDie vergangenen 20 Jahre haben gezeigt, dass die technologische Entwicklung und\r\nMöglichkeiten für den Klimaschutz rasant gestiegen und die Kosten immens gesunken sind.', 'news', '2020-08-19 17:56:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Klimafasten', 'Dinge, die du in den nächsten 40 Tagen für die Umwelt tun kannst', '2020-08-19', 'Jane', 'Doe', 'https://www.moment.at/sites/default/files/styles/artikel_large/public/2020-02/nico-roicke-m6ji3_8ghrc-unsplash.jpg?h=8106dffe&itok=dsq3HGRa', NULL, NULL, 'Wir haben für dich 9 (manchmal mehr und manchmal weniger ernst gemeinte) Dinge gesammelt, die du in den nächsten 40 Tagen für die Umwelt tun kannst.', '#9 Schon mal auf Greta Thunbergs Social-Media-Kanäle geschaut?\r\nNein? Dann ist höchste Zeit, ihr ein Like dort zu lassen. Denn hinter dem Hass auf Greta Thunberg steht ein Netzwerk, das gezielt versucht, ihr die Glaubwürdigkeit abzusprechen. Ein solidarisches Like tut dir nicht weh und bringt Reichweite auf der guten Seite!\r\n\r\n#8 Plane deinen Sommerurlaub nachhaltig!\r\nAbends einsteigen und morgens ausgeschlafen in einem anderen Land aufwachen. Eine Reise mit dem Nachtzug ist nicht nur nachhaltig, sondern auch ein Erlebnis. Wer einmal weniger im Jahr durch Europa fliegt, spart rund 0,7 Tonnen CO2. Hilf mit, den klimaschädlichen Flugwahnsinn zu stoppen und buch’ diesmal eine Zugreise!', '#6 Heute lieber fleischlos\r\nDu musst nicht gleich vegan werden, aber ein bis zwei fleischlose Tage mehr in der Woche schaffst auch du. Keine Ausreden! Hier siehst du genau, wie viel Treibhausgase dein Essen verursacht:\r\n\r\n#7 Rede drüber!\r\nDie Heerwurm-Plage in Madagaskar oder das Austrocknen des Tschadsees - ist dir kein Begriff? Zig Katastrophen passieren in der ganzen Welt, doch niemand berichtet darüber. Wir haben hier die Rangliste der am wenigsten beachteten humanitären Katastrophen erstellt.', '#5 Ein autofreier Tag\r\nDie Klimakrise zwingt uns zum Umdenken auch im Bereich der Mobilität. Wer mit dem Auto unterwegs ist, tut dem Klima nichts Gutes. Doch in Österreich gibt es so viele Autos wie nie zuvor. Der Verkehr ist der einzige Bereich in Österreich, in dem der CO2-Ausstoß weiter steigt, statt zu sinken. Also leg’ doch einen autofreien Tag mehr in der Woche ein!\r\n\r\n#4 Brauchst du wirklich neue weiße Sneaker?\r\nHier nimmt sich die Autorin selbst an der Nase, denn die Antwort ist eindeutig: NEIN! Bei der Herstellung von Kleidung werden Unmengen an Wasser und Energie verbraucht. Außerdem kommen oft schädliche Chemikalien und Umweltgifte zum Einsatz. Verzichte also die nächsten 40 Tage bewusst darauf, neue Kleidung oder Schuhe zu kaufen! Vintage und Secondhand Läden sind hip und cool, also leistest du nicht nur einen aktiven Beitrag zum Klimaschutz, sondern auch für die eigene Street Credibility.', 'news', '2020-08-19 18:01:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `signatory`
--

DROP TABLE IF EXISTS `signatory`;
CREATE TABLE `signatory` (
  `id` int(11) NOT NULL,
  `fk_cause` int(11) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `place_ob` varchar(50) DEFAULT NULL,
  `nationality` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signatory`
--

INSERT INTO `signatory` (`id`, `fk_cause`, `document_type`, `number`, `f_name`, `l_name`, `dob`, `place_ob`, `nationality`, `address`, `zipcode`, `city`, `country`) VALUES
(9, 1, 'passport', 'test', 'fasdf', 'lfajksd', NULL, NULL, NULL, 'www.onb.ac.at', 1010, 'Vienna', 'Austria'),
(11, 1, 'Passport', '45686', 'John', 'Doe', '2020-08-18', 'Vienna', 'Austrian', 'Stadtpark', 1040, 'Vienna', 'Austria'),
(12, 1, 'Licence', '1045678254', 'Jane', 'Doe', '2020-08-03', 'Vienna', 'Austrian', 'Ungargasse 66', 1030, 'Vienna', 'A'),
(13, 3, 'passport', 'A1945B10', 'John', 'Doe', '1980-01-15', 'Vienna', 'Austrian', NULL, NULL, NULL, 'AT'),
(14, 3, 'photo ID card', '145794246', 'Liam', 'Nilson', '1990-05-01', 'Vienna', 'Austrian', 'Stadtpark', 1030, 'Vienna', 'AT'),
(15, 3, 'passport', 'A5844A15', 'Noah', 'Jones', '1991-08-20', NULL, NULL, NULL, NULL, NULL, 'AT'),
(16, 3, 'passport', 'B1548751', 'Emma', 'Watson', '1984-01-30', 'Berlin', 'German', NULL, NULL, 'Vienna', 'AT'),
(17, 4, 'passport', 'A1458794', 'Oliver', 'Jamie', '1975-10-24', NULL, NULL, NULL, NULL, NULL, 'GB'),
(18, 4, 'passport', 'B14A44786', 'Sophia', 'Burns', '1980-10-10', 'London', NULL, NULL, NULL, NULL, 'TR'),
(19, 5, 'photo ID card', '15489745134', 'Logan', 'Schmogan', '1999-10-10', NULL, NULL, NULL, NULL, NULL, 'AF'),
(20, 5, 'passport', 'A4687512', 'Max', 'Mustermann', '1993-06-19', NULL, NULL, NULL, NULL, NULL, 'AT');

-- --------------------------------------------------------

--
-- Table structure for table ` t6_entrepreneurs.user`
--

DROP TABLE IF EXISTS ` t6_entrepreneurs.user`;
CREATE TABLE ` t6_entrepreneurs.user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'admin@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$enJHU2xwc2Q4YXEzSDdGeg$/tr5Lt3DL5bdnJxWGVmmOzLZ2Dq8ZxYBMQCD5eQwKdU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cause`
--
ALTER TABLE `cause`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatory`
--
ALTER TABLE `signatory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table ` t6_entrepreneurs.user`
--
ALTER TABLE ` t6_entrepreneurs.user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cause`
--
ALTER TABLE `cause`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `signatory`
--
ALTER TABLE `signatory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table ` t6_entrepreneurs.user`
--
ALTER TABLE ` t6_entrepreneurs.user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
