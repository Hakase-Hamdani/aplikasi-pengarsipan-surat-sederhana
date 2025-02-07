-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2025 at 03:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_native`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) DEFAULT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(1, 'Tim Pengembangan Produk', 'Iracundiae, contentiones concertationesque in disputando pertinaces indignae philosophia mihi videri solent. Tum Torquatus: Prorsus, inquit, assentior; neque enim tempus est ullum, quo non plus habeat sapiens, quod gaudeat, quam quod angatur. Optime vero Epicurus, quod exiguam dixit fortunam intervenire sapienti maximasque ab eo ortum, tam inportuno tamque crudeli.', 'Tertutup', '2024-03-27', 'Rerum bonarum et malarum maxime hominum vita vexetur, ob eumque errorem.', 83, 9),
(2, 'Tim Pengembangan Produk', 'Est. Tribus igitur modis video esse a nostris de amicitia disputatum. Alii cum eas voluptates, quae ad amicos pertinerent, negarent.', 'Biasa', '2025-01-03', 'Quam mihi quisque tribuat, quid.', 54, 1),
(3, 'Kepala Cabang Jakarta', 'Illud enim ipsum, quod quibusdam medium videretur, cum omni dolore et molestia perfruique maximis et animi et corporis voluptatibus, videtisne quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio.', 'Penting', '2024-02-04', 'Latine? Quid? Si nos non.', 100, 9),
(4, 'Bagian Pengadaan Barang', 'Facta primo suspicio insequitur, dein sermo atque fama, tum accusator, tum iudex; Multi etiam, ut te consule, ipsi.', 'Internal', '2024-05-08', 'Infinitis modum constituant in reque eo meliore, quo maior sit, mediocritatem desiderent.', 2, 9),
(5, 'Kepala Bagian Keuangan', 'Futuris, sed expectat illa, fruitur praesentibus ab iisque vitiis, quae paulo.', 'Pribadi', '2025-01-13', 'Vero ipsam amicitiam tueri, nisi aeque amicos et nosmet.', 85, 9),
(6, 'Bagian Pengadaan Barang', 'Quanta ad augendas, cum conscientia factorum, tum poena legum odioque civium? Et tamen in quibusdam neque pecuniae modus.', 'Umum', '2024-07-16', 'Succumbere doloribus eosque humili animo inbecilloque ferre miserum est, ob eamque causam.', 85, 2),
(7, 'Pengelola IT', 'Tempore aetatis percipi posse, quam ex hoc percipiatur, quod videamus esse finitum. In dialectica autem vestra nullam existimavit esse nec ad commodius disserendum viam. In physicis.', 'Tertutup', '2024-11-12', 'Ipsa quae qualisque sit, ut tollatur error omnis imperitorum.', 8, 10),
(8, 'Divisi Sumber Daya Manusia', 'Voluptates effluere patiatur earumque assidua recordatione laetetur, quid est, cur nostri a nostris non legantur? Quamquam, si plane sic verterem Platonem aut Aristotelem, ut verterunt nostri poetae fabulas, male, credo, mererer de meis.', 'Internal', '2024-05-10', 'Veserim propter voluptatem; cum autem usus progrediens familiaritatem effecerit, tum amorem efflorescere.', 90, 2),
(9, 'Divisi Sumber Daya Manusia', 'Privavisse se etiam videtur multis voluptatibus, cum ipsi naturae patrioque amori praetulerit ius maiestatis atque imperii.', 'Pribadi', '2024-09-15', 'Est non miser. Accedit etiam mors, quae quasi titillaret.', 14, 9),
(10, 'Tim Audit', 'Doctrina philosophi Graeco sermone tractavissent, ea Latinis litteris mandaremus, fore ut hic noster labor in varias reprehensiones incurreret. Nam quibusdam, et iis quidem non.', 'Khusus', '2024-11-07', 'Prohiberet Epicureum esse, si probarem, quae ille diceret? Cum.', 30, 9),
(11, 'Asisten Pribadi Direktur Utama', 'Inquam, in physicis, quibus maxime gloriatur, primum totus est alienus. Democritea dicit perpauca mutans, sed ita, ut ea, quae voluptaria, delicata, mollis habeatur disciplina, quam gravis, quam continens, quam severa sit. Non enim hanc solam sequimur, quae suavitate aliqua naturam.', 'Umum', '2024-11-14', 'Et omnis monstret vias, quae.', 25, 8),
(12, 'Bagian Pengadaan Barang', 'Defuturum, quas natura non depravata desiderat. Et quem ad modum sit affectus, eum necesse est effici, ut sapiens solum amputata circumcisaque inanitate omni et errore naturae finibus contentus.', 'Biasa', '2024-09-15', 'Orationis et consequentium repugnantiumve ratio potest perspici. Omnium autem rerum.', 98, 8),
(13, 'Bagian Pengadaan Barang', 'In oculis quidem exercitus. -- Quid ex eo perciperet corpore voluptatem, aut cum Latinis tertio consulatu conflixisse apud Veserim propter.', 'Penting', '2024-02-29', 'Voluptatem pleniorem efficit. Itaque non ob ea solum incommoda, quae eveniunt inprobis, fugiendam inprobitatem.', 73, 4),
(14, 'Tim Pengembangan Produk', 'Enim ipsa mihi sunt voluptati, et erant illa Torquatis.\' Numquam hoc ita defendit Epicurus neque Metrodorus aut quisquam eorum, qui aut saperet aliquid aut ista didicisset. Et quod quaeritur saepe, cur tam multi sint Epicurei, sunt aliae quoque causae, sed multitudinem haec maxime allicit, quod ita putant dici.', 'Tertutup', '2024-04-16', 'Effugiendorum gratia. Sed de clarorum hominum factis illustribus et gloriosis.', 65, 3),
(15, 'Pengelola IT', 'Chrysippo praetermissum in Stoicis? Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Quid? Theophrastus mediocriterne delectat, cum tractat locos ab Aristotele ante tractatos? Quid? Epicurei num desistunt de isdem, de quibus neque depravate iudicant neque corrupte, nonne.', 'Khusus', '2024-04-15', 'Existimo te, sicut nostrum Triarium, minus ab.', 98, 3),
(16, 'Asisten Pribadi Direktur Utama', 'Intellegi posse et voluptatem pleniorem efficit. Itaque non ob ea solum incommoda, quae eveniunt inprobis, fugiendam inprobitatem putamus.', 'Khusus', '2024-05-02', 'Aliquid cognosci et percipi. Quos qui tollunt et.', 76, 5),
(17, 'Bagian Pengadaan Barang', 'Iniurias et omnis monstret vias, quae ad quietem et ad tranquillitatem ferant, quid est enim aut utilior aut.', 'Umum', '2024-05-15', 'Distinguique possit, augeri amplificarique non possit. At etiam Athenis, ut e patre.', 20, 3),
(18, 'Penanggung Jawab Keselamatan Kerja', 'Et aperta iudicari. Etenim quoniam detractis de homine sensibus.', 'Terbuka', '2024-12-05', 'Aut rerum necessitatibus saepe eveniet, ut et adversa.', 54, 1),
(19, 'Biro Hukum', 'Triarius, in primis gravis et doctus adolescens, ei disputationi interesset. Nam cum ad me accedis, saluto: \'chaere,\' inquam, \'Tite!\' lictores.', 'Khusus', '2024-08-01', 'Sed ex eo perciperet corpore voluptatem, aut.', 92, 5),
(20, 'Bagian Pengadaan Barang', 'Est, necesse est, non expeteretur, si nihil efficeret; nunc expetitur, quod est tamquam artifex conquirendae et comparandae voluptatis -- Quam autem ego dicam voluptatem, iam videtis, ne invidia verbi labefactetur oratio mea --. Nam cum solitudo.', 'Rahasia', '2025-01-03', 'Adest sentire possumus, animo autem et laetitiam nobis voluptas animi et corporis voluptatibus.', 70, 2),
(21, 'Koordinator Proyek A', 'Sane. -- \'At, si voluptas summum sit.', 'Tertutup', '2024-08-14', 'Etiam erga nos amice et benivole collegisti, nec me tamen laudandis maioribus meis corrupisti.', 47, 2),
(22, 'Tim Pengembangan Produk', 'Atque ad beate vivendum sapientia comparaverit, nihil esse maius amicitia, nihil uberius, nihil iucundius. Nec vero quisquam stultus non horum morborum aliquo laborat, nemo igitur est non miser. Accedit etiam mors, quae quasi titillaret sensus, ut ita ruant itaque turbent, ut earum motus et.', 'Internal', '2024-07-16', 'Hoc Epicurus in voluptate ponatur, sed.', 86, 1),
(23, 'Divisi Sumber Daya Manusia', 'Inquit: unam rem explicabo, eamque maximam, de physicis alias, et quidem locis pluribus. Sed quot homines, tot sententiae; falli igitur possumus. Quam ob rem voluptas expetenda, fugiendus dolor sit. Sentiri haec putat.', 'Penting', '2024-02-05', 'Ad libidinem fingitur -- ait enim declinare atomum sine causa; quo nihil posset.', 87, 3),
(24, 'Kepala Bagian Keuangan', 'Sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Hanc ego cum teneam sententiam, quid est enim in vita tantopere quaerendum quam cum omnia.', 'Internal', '2024-11-20', 'Scipio vero et Rutilius multo.', 2, 6),
(25, 'Tim Pengembangan Produk', 'Quorum facta quem ad modum eae semper voluptatibus inhaererent, eadem de amicitia dicenda sunt. Praeclare enim Epicurus his paene verbis: \'Eadem\', inquit, \'scientia confirmavit animum, ne.', 'Pribadi', '2024-09-22', 'Idem etiam dolorem saepe perpetiuntur.', 97, 4),
(26, 'Biro Hukum', 'Ad dolores ita paratus est, ut meminerit maximos morte finiri, parvos multa habere intervalla requietis, mediocrium nos esse dominos, ut, si tolerabiles sint, feramus, si minus, animo aequo e vita, cum ea non placeat, tamquam e.', 'Terbuka', '2024-03-07', 'Quid extremum, quid ultimum, quo sint omnia.', 36, 4),
(27, 'Biro Hukum', 'Deserunt mollit anim id est incorruptis atque integris testibus, si infantes pueri.', 'Rahasia', '2024-08-08', 'Dolores denique quosvis suscipere malit quam deserere ullam.', 31, 6),
(28, 'Tim Pengembangan Produk', 'Esse iucundum est propterea, quia tutiorem vitam et voluptatem ipsam per se esse fugiendum. Itaque.', 'Tertutup', '2025-01-07', 'Bonis erigimur, quae expectamus, sic laetamur iis, quae et a.', 26, 3),
(29, 'Bagian Pengadaan Barang', 'Nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in.', 'Segera', '2024-01-29', 'Quae dicta sunt ab iis quos probamus, eisque.', 81, 1),
(30, 'Staf Administrasi', 'Corrupte, nonne ei maximam gratiam habere debemus, qui hac exaudita quasi voce naturae sic eam firme graviterque comprehenderit, ut omnes bene.', 'Pribadi', '2024-03-30', 'Praeter voluptatem et dolorem. Ad haec et quae fugiamus.', 30, 4),
(31, 'Koordinator Proyek A', 'Sed quia pacem animis afferat et eos quasi concordia quadam placet ac leniat.', 'Segera', '2024-12-30', 'Depravata desiderat. Et quem ad.', 21, 9),
(32, 'Biro Hukum', 'Omittantur maiorum voluptatum adipiscendarum causa aut dolores suscipiantur.', 'Internal', '2024-06-14', 'Expetendis, quid fugiat ut extremum malorum? Qua de re cum.', 28, 4),
(33, 'Manager Pemasaran', '-- Quam autem ego dicam voluptatem, iam videtis, ne.', 'Khusus', '2024-12-17', 'Esse censet, quantus videtur, vel paulo aut maiorem.', 95, 10),
(34, 'Tim Pengembangan Produk', 'Morati melius erimus, cum didicerimus quid natura postulet non intellegunt, errore maximo, si Epicurum audire voluerint, liberabuntur: istae enim vestrae eximiae pulchraeque virtutes nisi voluptatem efficerent, quis eas aut laudabilis aut expetendas arbitraretur? Ut enim ad minim veniam, quis.', 'Terbuka', '2024-02-19', 'Invidia verbi labefactetur oratio mea --. Nam cum solitudo et vita sine amicis.', 51, 9),
(35, 'Kepala Bagian Keuangan', 'Verum maximisque erroribus animos hominum liberavisse et omnia tradidisse, quae pertinerent ad bene vivendum aptior partitio quam illa, qua est usus Epicurus? Qui unum genus posuit earum.', 'Biasa', '2024-06-30', 'Ullus investigandi veri, nisi inveneris, et quaerendi.', 57, 6),
(36, 'Pengelola IT', 'Iucundius, id est incorruptis atque integris testibus, si infantes pueri, mutae etiam bestiae paene loquuntur magistra ac duce natura nihil esse maius.', 'Umum', '2025-01-01', 'Epicurus quidem ita dicit, omnium rerum, quas ad beate vivendum sapientia.', 65, 8),
(37, 'Asisten Pribadi Direktur Utama', 'Sit fictae veterum fabulae declarant, in quibus tam multis tamque variis ab ultima antiquitate repetitis tria.', 'Biasa', '2024-07-08', 'Lineam, numquam fore ut atomus altera.', 93, 8),
(38, 'Biro Hukum', 'Tutiorem vitam et voluptatem ipsam per se ipsas tam expetendas, quam nostras expeteremus, quo loco videtur quibusdam stabilitas amicitiae vacillare, tuentur tamen eum locum seque facile, ut.', 'Tertutup', '2024-10-05', 'Denique quosvis suscipere malit quam deserere ullam officii partem.', 63, 10),
(39, 'Biro Hukum', 'Sanos in viam placatae, tranquillae, quietae, beatae vitae disciplinam iuvaret. An ille tempus aut in poetis evolvendis, ut ego et Triarius te hortatore facimus.', 'Biasa', '2024-07-28', 'Ad corpus referri, nec ob eam.', 85, 1),
(40, 'Penanggung Jawab Keselamatan Kerja', 'Est quaerendi ac disserendi, quae logikh dicitur, iste vester plane, ut mihi videtur, expediunt. Ut enim mortis metu omnis quietae vitae status perturbatur, et ut succumbere doloribus eosque humili animo inbecilloque ferre miserum est, ob eamque.', 'Tertutup', '2024-06-15', 'Non necesse est. Tribus igitur modis video esse a nostris non legantur? Quamquam, si.', 95, 4),
(41, 'Koordinator Proyek A', 'Res se habeat. Nam si dicent ab illis has res esse tractatas, ne ipsos quidem.', 'Umum', '2024-03-14', 'Id, quod quaeritur, sit pulcherrimum. Etenim.', 1, 9),
(42, 'Biro Hukum', 'Enim eadem illa atomorum, in quo a nobis philosophia defensa et collaudata est, cum id, quod ipsi statuerunt, non possunt, conficiuntur et angore et metu maximeque cruciantur, cum sero sentiunt.', 'Tertutup', '2024-03-19', 'Quaeque de virtutibus dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia.', 35, 9),
(43, 'Tim Audit', 'Poetarum evolutio, quid tanta tot versuum memoria voluptatis affert? Nec mihi illud dixeris: \'Haec enim ipsa mihi sunt voluptati, et erant illa Torquatis.\' Numquam hoc ita defendit Epicurus neque Metrodorus aut quisquam eorum, qui aut saperet aliquid aut ista.', 'Segera', '2024-02-09', 'Suo, geometrica discere maluisset quam.', 10, 8),
(44, 'Pengelola IT', 'Adhuc nec mihi illud dixeris: \'Haec enim ipsa mihi sunt voluptati, et erant illa Torquatis.\' Numquam hoc ita defendit Epicurus neque Metrodorus aut quisquam eorum, qui aut saperet aliquid aut ista didicisset. Et quod adest sentire.', 'Penting', '2024-07-02', 'Si stabilem scientiam rerum tenebimus, servata illa, quae quasi titillaret sensus, ut ita.', 67, 6),
(45, 'Biro Hukum', 'Traditur. Restat locus huic disputationi vel maxime necessarius de amicitia, quam, si voluptas summum sit bonum, affirmatis nullam omnino fore. De qua omne certamen est? Tuo vero id quidem, inquam, arbitratu. Sic faciam igitur, inquit: unam rem explicabo, eamque maximam, de physicis alias, et.', 'Umum', '2024-06-08', 'Ad modum, quaeso, interpretaris? Sicine.', 65, 2),
(46, 'Tim Pengembangan Produk', 'Vitae iucunditas impeditur, quanto magis animi morbis impediri necesse est! Animi autem morbi sunt cupiditates inmensae et inanes divitiarum, gloriae, dominationis, libidinosarum etiam voluptatum. Accedunt aegritudines, molestiae, maerores, qui exedunt animos conficiuntque curis hominum non intellegentium nihil dolendum esse animo, quod sit iudicatum. Plerique autem, quod tenere atque servare id, quod propositum est, summum bonum consequamur?', 'Internal', '2024-04-19', 'Semper desperantes aut malivoli, invidi, difficiles, lucifugi, maledici, monstruosi, alii autem etiam.', 51, 2),
(48, 'Asisten Pribadi Direktur Utama', 'Assueverit, iudicabit nulla ad legendum his esse potiora. Quid est enim contra Cyrenaicos satis acute, nihil ad Epicurum. Nam si.', 'Segera', '2024-07-20', 'Ad usus civium non inutile, nosque.', 35, 5),
(49, 'Divisi Sumber Daya Manusia', 'Excepturi sint, obcaecati cupiditate non provident, similique sunt in.', 'Segera', '2024-03-24', 'Perpetiuntur, ne, si id non faciant, incidant in maiorem. Ex quo.', 43, 5),
(50, 'Tim Audit', 'Neque sint conversa de Graecis? Nam si dicent ab illis has res esse tractatas, ne ipsos quidem Graecos est cur dubitemus dicere et sapientiam propter voluptates expetendam et insipientiam propter molestias esse fugiendam? Eademque ratione ne temperantiam quidem propter se ipsos penitus perdiderunt, sic robustus animus et excelsus.', 'Rahasia', '2024-02-04', 'Non vera videantur. Vide, quantum, inquam, fallare.', 24, 6),
(51, 'Tim Audit', 'Omnino nulla sit causa peccandi. Quae enim cupiditates a natura.', 'Tertutup', '2024-02-05', 'Civium, qua intellegebat contineri suam. Atque haec ratio late patet. In quo enim.', 43, 4),
(52, 'Pengelola IT', 'Illum hosti detraxisse, ut aliquam ex eo perciperet corpore voluptatem, aut cum Latinis tertio consulatu conflixisse apud Veserim propter voluptatem; quod vero securi percussit filium, privavisse se etiam videtur multis voluptatibus, cum ipsi.', 'Tertutup', '2024-03-16', 'Chorusque: \'chaere, Tite!\' hinc hostis mi Albucius, hinc inimicus. Sed iure Mucius. Ego.', 61, 6),
(53, 'Divisi Sumber Daya Manusia', 'Laudandis maioribus meis corrupisti nec segniorem ad respondendum reddidisti. Quorum facta quem ad modum eae semper voluptatibus inhaererent, eadem de amicitia disputatum. Alii cum eas voluptates, quae ad amicos pertinerent.', 'Penting', '2024-12-30', 'Quoddam sapientium, ut ne minus amicos quam se ipsos penitus perdiderunt.', 92, 2),
(54, 'Kepala Cabang Jakarta', 'Quantum, inquam, fallare, Torquate. Oratio me istius philosophi non offendit; nam.', 'Tertutup', '2024-04-14', 'Responsum, cum C. Triarius, in primis gravis et doctus adolescens.', 32, 8),
(55, 'Staf Administrasi', 'Non delectet eos sermo patrius, cum idem fabellas Latinas ad verbum e Graecis expressas non inviti legant. Quis enim tam inimicus paene nomini Romano est, qui Ennii Medeam aut Antiopam Pacuvii spernat aut reiciat, quod se isdem Euripidis fabulis delectari dicat, Latinas litteras oderit? Synephebos ego, inquit, potius Caecilii aut Andriam Terentii.', 'Pribadi', '2024-12-08', 'Summum esse bonum iucunde vivere.', 90, 3),
(56, 'Koordinator Proyek A', 'Manus tua sic affecta, quem ad modum sit affectus, eum necesse est aut fastidii delicatissimi. Mihi quidem videtur, inermis ac nudus est. Tollit definitiones, nihil de dividendo ac partiendo docet, non quo modo efficiatur concludaturque ratio tradit, non qua via captiosa solvantur ambigua distinguantur ostendit; iudicia rerum in sensibus ponit, quibus si semel aliquid falsi pro.', 'Penting', '2024-07-06', 'Et metus et aegritudines ad dolorem referuntur, nec praeterea est res ulla, quae sua.', 60, 10),
(57, 'Biro Hukum', 'Melius esse quam vacare omni dolore detracto, nam quoniam, cum privamur dolore, ipsa liberatione et vacuitate omnis molestiae gaudemus, omne autem id.', 'Penting', '2024-07-31', 'In hominum consuetudine facilius fieri poterit et iustius?', 38, 10),
(58, 'Kepala Cabang Jakarta', 'Aeque doleamus animo, cum corpore dolemus, fieri tamen permagna accessio potest, si aliquod aeternum et infinitum impendere malum nobis opinemur. Quod idem licet transferre in voluptatem, ut postea variari voluptas distinguique possit, augeri amplificarique non possit. At etiam Athenis, ut e patre audiebam facete et urbane Stoicos irridente, statua est in Ceramico Chrysippi sedentis porrecta manu.', 'Penting', '2024-07-12', 'Servare id, quod his libris quaeritur, qui sit finis, quid.', 19, 1),
(59, 'Penanggung Jawab Keselamatan Kerja', 'De qua Epicurus quidem ita dicit, omnium rerum, quas ad beate vivendum se ipsa allicit nec patientia nec assiduitas nec vigiliae nec ea ipsa, quae ab illo est.', 'Pribadi', '2024-12-31', 'Omnes bene sanos ad iustitiam, aequitatem, fidem, neque homini infanti aut inpotenti iniuste facta.', 54, 1),
(60, 'Manager Pemasaran', 'Democrito magnus videtur, quippe homini erudito in geometriaque perfecto, huic pedalis fortasse; tantum enim esse omnino in nostris poetis aut inertissimae segnitiae est aut in voluptate est. Extremum autem esse bonorum voluptatem ex infinito tempore aetatis percipi posse, quam ex hoc facillime perspici potest: Constituamus aliquem magnis, multis, perpetuis fruentem et animo.', 'Biasa', '2025-01-25', 'Incurrunt, sed intus etiam in animis inclusae inter se reprehensiones non.', 38, 1),
(61, 'Kepala Cabang Jakarta', 'Rerum necessitatibus saepe eveniet, ut et adversa quasi perpetua oblivione obruamus et.', 'Rahasia', '2024-10-26', 'Est, sic amicitiam negant posse a voluptate discedere. Nam cum.', 56, 7),
(62, 'Bagian Pengadaan Barang', 'Specie voluptatis tradunt se libidinibus constringendos nec quid eventurum sit provident ob eamque debilitatem animi multi parentes, multi amicos, non.', 'Internal', '2024-04-16', 'Intelleges eitam, ut ab ea nullo modo sine.', 89, 8),
(63, 'Manager Pemasaran', 'Indocti, qui, quae pueros non didicisse turpe est, ea putant usque ad senectutem.', 'Segera', '2024-11-14', 'Ipsum quidem expedire possunt, quod disserunt. Praeterea sublata cognitione et scientia.', 73, 10),
(64, 'Staf Administrasi', 'Movet et cum iucunditate quadam percipitur sensibus, sed maximam voluptatem illam habemus, quae percipitur omni dolore detracto, nam quoniam, cum privamur dolore, ipsa liberatione et vacuitate omnis molestiae.', 'Khusus', '2024-10-19', 'Cur tam multos legant, quam legendi sunt. Quid enim me prohiberet Epicureum esse, si.', 55, 9),
(65, 'Sekretaris Direksi', 'Praeclarorum hominum ac primorum signiferumque, maluisti dici. Graece ergo praetor Athenis, id quod maluisti, te, cum ad me in Cumanum salutandi causa uterque venisset, pauca primo inter nos de litteris, quarum summum erat in utroque studium, deinde Torquatus: Quoniam nacti.', 'Umum', '2025-01-10', 'Probarentur; si qua in iis rebus.', 56, 9),
(66, 'Kepala Bagian Keuangan', 'Graviter ornateque dictas quis non legat? Nisi qui se plane Graecum dici velit, ut a Scaevola est praetore salutatus Athenis Albucius. Quem quidem locum comit multa venustate et omni sale idem Lucilius, apud quem praeclare Scaevola: Graecum te, Albuci, quam Romanum atque Sabinum, municipem Ponti, Tritani, centurionum, praeclarorum.', 'Internal', '2024-04-06', 'Arbitratu facerem, ante hoc tempus.', 15, 2),
(67, 'Staf Administrasi', 'Sententiae quae sint quaeque cernantur, omnia, eumque motum atomorum nullo a principio, sed ex aeterno tempore intellegi convenire. Epicurus autem.', 'Terbuka', '2024-08-28', 'Scientia et verborum vis et natura.', 38, 4),
(68, 'Pengelola IT', 'Causa? Quae fuerit causa, mox videro; interea hoc tenebo, si ob aliquam causam ista, quae sine dubio praeclara sunt, fecerint, virtutem iis per se ipsam optabilem, sed quia pacem animis afferat et eos quasi concordia quadam placet ac leniat. Temperantia est enim, quae in rebus aut expetendis aut.', 'Rahasia', '2025-01-08', 'Iure reprehenderit, qui in ea voluptate velit esse cillum.', 30, 3),
(69, 'Staf Administrasi', 'Quidem, sed ista sequimur, ut sine cura metuque vivamus animumque.', 'Internal', '2024-07-09', 'Res efficiatur, alterum, quae naturales essent.', 54, 6),
(70, 'Divisi Sumber Daya Manusia', 'Ab eo et gravissimas res consilio ipsius et ratione administrari neque maiorem voluptatem ex infinito tempore aetatis percipi posse, quam ex hoc facillime perspici potest: Constituamus aliquem magnis, multis, perpetuis fruentem et animo et attento intuemur, tum fit ut.', 'Internal', '2024-03-07', 'Et omnino rerum gerendarum initia proficiscuntur aut a voluptate.', 20, 5),
(71, 'Penanggung Jawab Keselamatan Kerja', 'Ii voluptatem maximam adipiscuntur praetermittenda voluptate. Idem etiam dolorem saepe perpetiuntur, ne.', 'Rahasia', '2024-02-14', 'Laborum perfunctio neque perpessio dolorum per se ipsas tam expetendas, quam nostras.', 50, 4),
(72, 'Sekretaris Direksi', 'Sed intus etiam in animis inclusae inter se cohaerescant, ex quo efficiantur ea, quae audiebamus, conferebamus, neque erat umquam controversia, quid ego intellegerem, sed quid probarem. Quid igitur est? Inquit; audire enim cupio, quid non probes.', 'Pribadi', '2024-03-15', 'Maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam.', 23, 1),
(73, 'Biro Hukum', 'Aliquid cognosci et percipi. Quos qui tollunt et nihil posse percipi dicunt, ii remotis sensibus ne id ipsum quidem expedire.', 'Internal', '2024-09-19', 'Voluptatibus et doloribus -- itaque concedo, quod modo dicebas, cadere causa, si.', 13, 5),
(74, 'Tim Audit', 'Esse expetendam et insipientiam propter molestias esse fugiendam? Eademque ratione ne temperantiam quidem propter se ipsos diligant. Quod et scripta.', 'Umum', '2025-01-22', 'Autem etiam amatoriis levitatibus dediti, alii.', 69, 8),
(75, 'Manager Pemasaran', 'Sua comparat, magna afficitur voluptate. Dolores autem si qui incurrunt, numquam vim tantam habent, ut non plus voluptatum habeat quam dolorum. Nam et laetamur amicorum laetitia.', 'Umum', '2024-11-13', 'Doctissimos summa dissensio, quis alienum putet eius esse.', 53, 4),
(76, 'Manager Pemasaran', 'Molita quippiam est, quamvis occulte fecerit, numquam tamen id volunt fieri, difficilem quandam temperantiam postulant in eo, qui ita sit affectus, et firmitatem animi nec mortem nec dolorem timentis, quod mors sensu careat, dolor in longinquitate levis, in gravitate brevis soleat esse, ut ad.', 'Pribadi', '2024-06-05', 'Quae maestitiam pellat ex animis.', 50, 6),
(77, 'Biro Hukum', 'Aut imperiis aut opibus aut.', 'Rahasia', '2024-06-09', 'Minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex.', 70, 2),
(78, 'Penanggung Jawab Keselamatan Kerja', 'Multos legant, quam legendi sunt. Quid enim est a Cyrenaicisque melius liberiusque defenditur, tamen eius modi tempora incidunt, ut labore et.', 'Rahasia', '2024-12-05', 'Ad me de virtute misisti. Sed ex eo est consecutus? -- Laudem et.', 26, 4),
(79, 'Divisi Sumber Daya Manusia', 'Propter voluptatem et dolorem? Sunt autem quidam e nostris, qui haec subtilius velint tradere et negent satis esse, quid bonum sit aut quid malum, sensu iudicari, sed animo etiam ac ratione intellegi posse et voluptatem pleniorem efficit. Itaque non ob ea solum incommoda, quae eveniunt inprobis, fugiendam inprobitatem putamus, sed multo etiam magis, quod, cuius in.', 'Tertutup', '2024-04-05', 'Si qua in iis corrigere voluit, deteriora fecit. Disserendi artem nullam.', 51, 6),
(80, 'Tim Pengembangan Produk', 'Sunt, iis parendum non est. Nihil enim desiderabile concupiscunt, plusque in ipsa iniuria detrimenti est quam in iis rebus emolumenti, quae pariuntur iniuria. Itaque ne iustitiam quidem.', 'Internal', '2024-03-19', 'Testibus, si infantes pueri, mutae etiam.', 94, 4),
(81, 'Kepala Bagian Keuangan', 'Causam efficiendi reliquerunt. Sed hoc commune vitium, illae.', 'Pribadi', '2024-02-09', 'Et in conspectum suum venire vetuit, numquid tibi videtur de.', 71, 5),
(82, 'Penanggung Jawab Keselamatan Kerja', 'Torquatus: Prorsus, inquit, assentior; neque enim tempus est ullum, quo non plus habeat sapiens, quod gaudeat, quam quod angatur. Optime vero Epicurus, quod exiguam.', 'Rahasia', '2024-09-07', 'Ante quam nati, et ad usus civium non inutile, nosque.', 7, 9),
(83, 'Asisten Pribadi Direktur Utama', 'Veniat in medium Epicuri ratio, quae plerisque notissima est. Quam a nobis philosophia defensa et collaudata est, cum esset accusata et vituperata ab Hortensio. Qui liber cum et tibi probatus videretur et iis, quos modo nominavi, cum Attico nostro frequenter audivi, cum mihi nihil sane praeter sedulitatem probarent.', 'Penting', '2024-10-30', 'Etenim quoniam detractis de homine sensibus reliqui nihil est, necesse est, non expeteretur, si.', 85, 3),
(84, 'Kepala Bagian Keuangan', 'Doloribus, etiamsi voluptas ea, quae corrigere vult, mihi quidem videtur, inermis.', 'Biasa', '2024-02-09', 'Stoicis? Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque.', 61, 1),
(85, 'Pengelola IT', 'Natura divitias, quibus contenta sit, et.', 'Terbuka', '2024-11-07', 'Nobis solum ea, sed fruenda etiam.', 81, 7),
(86, 'Tim Pengembangan Produk', 'Quoddam sapientium, ut ne minus amicos quam se ipsos diligant. Quod et acutum genus est et ad eos.', 'Khusus', '2024-12-21', 'Est ad quiete vivendum, caritatem.', 64, 3),
(87, 'Kepala Bagian Keuangan', 'Consequuntur voluptates, quarum potiendi spe inflammati multos labores.', 'Segera', '2024-06-18', 'Confirmatur animus et excelsus omni est liber cura et angore.', 48, 1),
(88, 'Tim Pengembangan Produk', 'Praeterea est res ulla, quae sua natura aut sollicitare possit.', 'Umum', '2024-04-21', 'Enim virtutes, de quibus ante dictum est, sic amicitiam negant posse a voluptate.', 87, 3),
(89, 'Kepala Bagian Keuangan', 'Nudus est. Tollit definitiones, nihil de dividendo ac partiendo docet, non quo.', 'Umum', '2024-03-22', 'Et ignavi, numquam in sententia permanentes, quas.', 84, 5),
(90, 'Asisten Pribadi Direktur Utama', 'Totam rem aperiam eaque ipsa, quae tibi probarentur; si qua in iis rebus emolumenti, quae pariuntur iniuria. Itaque ne iustitiam quidem recte.', 'Terbuka', '2024-03-13', 'Quadam percipitur sensibus, sed maximam voluptatem illam.', 28, 3),
(91, 'Bagian Pengadaan Barang', 'Magis conveniunt, qua qui utuntur, benivolentiam sibi conciliant et, quod aptissimum est ad quiete vivendum, caritatem, praesertim cum omnino nulla sit utilitas ex amicitia.', 'Tertutup', '2024-04-11', 'Eumque motum atomorum nullo a principio, sed ex aeterno.', 78, 7),
(92, 'Divisi Sumber Daya Manusia', 'Videbitur, transferam, et maxime ab iis, quos modo nominavi, cum Attico nostro frequenter.', 'Segera', '2024-12-08', 'Sed similia fere dici possunt. Ut enim virtutes, de.', 61, 3),
(93, 'Tim Audit', 'Vidit, deinde hoc quoque alienum; nam ante Aristippus, et ille melius. Addidisti ad extremum etiam indoctum.', 'Khusus', '2024-07-20', 'Inquam, tu mentitum aut Zenonem.', 24, 2),
(94, 'Kepala Cabang Jakarta', 'Amicum, quo in se ipsum, quosque labores propter suam voluptatem susciperet, eosdem suscipiet.', 'Rahasia', '2024-07-06', 'Posse iudicare arbitrarer, plura suscepi.', 98, 9),
(95, 'Manager Pemasaran', 'Angusta, quam magnos quantaque amoris conspiratione consentientis tenuit amicorum greges! Quod fit etiam nunc ab Epicureis. Sed ad haec, nisi molestum est, habeo quae velim. An me, inquam.', 'Segera', '2024-12-11', 'In armatum hostem impetum fecisse aut in dolore. Omnis autem privatione.', 21, 7),
(96, 'Kepala Cabang Jakarta', 'Meminerit maximos morte finiri, parvos multa habere intervalla requietis, mediocrium nos esse dominos, ut, si tolerabiles sint, feramus, si minus, animo aequo e vita, cum ea non placeat, tamquam e theatro exeamus. Quibus rebus intellegitur nec intemperantiam propter se expetendam esse dicemus, sed quia maiores consequatur. Eadem fortitudinis.', 'Khusus', '2024-04-11', 'Nostris inesse notionem, ut alterum esse appetendum, alterum aspernandum sentiamus. Alii autem, quibus.', 72, 8),
(97, 'Sekretaris Direksi', 'Coercendi magis quam dedocendi esse videantur. Invitat igitur vera ratio bene sanos ad iustitiam, aequitatem, fidem, neque homini infanti aut inpotenti iniuste facta conducunt, qui nec facile efficere.', 'Pribadi', '2024-08-05', 'Ille atomos quas appellat, id est voluptatem et dolorem.', 9, 3),
(98, 'Divisi Sumber Daya Manusia', 'Neque maiorem voluptatem ex infinito tempore aetatis percipi posse, quam ex hoc percipiatur, quod.', 'Biasa', '2024-11-19', 'Tamque et operosam et perinde.', 58, 7),
(99, 'Bagian Pengadaan Barang', 'Quam deserere ullam officii partem.', 'Tertutup', '2024-11-24', 'Menandri legam? A quibus tantum dissentio, ut, cum Sophocles vel optime scripserit Electram, tamen.', 15, 8),
(100, 'Staf Administrasi', 'Gratia. Sed de clarorum hominum factis illustribus et gloriosis satis hoc loco dictum sit. Erit enim iam de omnium virtutum cursu ad voluptatem proprius disserendi locus. Nunc autem explicabo, voluptas ipsa quae.', 'Rahasia', '2024-10-28', 'Vitiis, quae paulo ante collegi.', 78, 8),
(101, 'Test', 'Test', 'Biasa', '2025-01-31', 'Test', 89, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_divisi`
--

CREATE TABLE `tbl_divisi` (
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_divisi`
--

INSERT INTO `tbl_divisi` (`kode`, `nama`, `uraian`, `id_user`) VALUES
('CAD-3764', 'Environment Affairs', 'Etiam in animis nostris inesse notionem, ut alterum esse appetendum, alterum aspernandum sentiamus. Alii.', 2),
('KYY-5395', 'Corporate Strategy', 'Vis et natura orationis et consequentium repugnantiumve ratio potest perspici. Omnium autem rerum natura cognita.', 9),
('TGW-4384', 'Environment Affairs', 'Minus legimus quam hoc idem Graecum, quae autem inanes sunt, iis parendum non est. Nihil enim desiderabile concupiscunt, plusque in ipsa iniuria detrimenti est quam in.', 3),
('TPI-5271', 'Corporate Strategy', 'Appareat, doctrina mediocris. Ego autem quem timeam lectorem, cum ad me de.', 4),
('VSD-3182', 'Legal Affairs', 'Conversa de Graecis? Nam si dicent ab illis has res esse tractatas, ne ipsos quidem Graecos est cur verear, ne.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepala` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepala`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Universitas Andalas', 'Rory Adamov', 'Terminated', '5820 Guice Avenue, Springfield, Illinois, United States, 62723', 'Rory Adamov', '889-70-3665', 'https://gmpg.org', 'rory.adamov@gmail.com', '/in/primis/morati.bin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`kode`, `nama`, `uraian`, `id_user`) VALUES
('AT.pq-P72', 'Requests', 'Ratio reperietur. Nam neque laborum perfunctio neque perpessio dolorum.', 5),
('AX.zw-M44', 'Resolutions', 'Voluptas. Ut enim, cum cibo et potione fames sitisque depulsa est.', 6),
('BG.ru-J33', 'Recommendations', 'Enim, quae in rebus aut expetendis aut.', 9),
('BI.fs-W09', 'Recommendations', 'Sensibus, sed maximam voluptatem illam habemus, quae percipitur omni dolore.', 5),
('BU.ce-G92', 'Announcements', 'Culpa qui officia deserunt mollit anim id est vel summum bonorum.', 3),
('CC.xn-F80', 'Regulations', 'Solum amputata circumcisaque inanitate omni et errore naturae finibus contentus sine.', 4),
('CH.va-M23', 'Financial', 'Vult, mihi quidem nulli satis eruditi videntur, quibus nostra ignota.', 10),
('CW.lp-O34', 'Claims', 'Ad melius vivendum nec ad.', 2),
('DZ.au-C70', 'Claims', 'Dolores ita paratus est, ut necessariae.', 10),
('DZ.bz-P08', 'Resolutions', 'Huc possit, quod melius sit.', 7),
('EE.xi-Q60', 'Recommendations', 'Notae sunt. Atque eos, quos.', 3),
('EL.yo-C49', 'Policies', 'Laudatur, industria, ne fortitudo quidem, sed ista sequimur, ut sine cura metuque vivamus animumque.', 3),
('EY.eb-K27', 'Contracts', 'Naturam ipsam movet et cum iucunditate quadam percipitur.', 2),
('FF.kq-U69', 'Claims', 'Ferre doceat iniurias et omnis monstret vias, quae ad amicos pertinerent, negarent esse.', 6),
('FN.xd-F10', 'Financial', 'Naturam aut contra sit, a natura ipsa.', 5),
('FO.pq-W22', 'Orders', 'Exitum potest, nisi derigatur ad voluptatem, voluptas autem est sola, quae nos a libidinum.', 7),
('FW.pz-Q63', 'Disputes', 'Ratione intellegi posse et voluptatem pleniorem.', 4),
('FW.ro-S98', 'Contracts', 'Dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos.', 4),
('GP.lh-C44', 'Suggestions', 'Partus ancillae sitne in fructu habendus, disseretur.', 5),
('GZ.oi-B13', 'Legal', 'Igitur Epicuri non probo, tum illud in primis, quod.', 6),
('HP.zw-X63', 'Orders', 'Putarent, sed locupletiorem etiam esse quam Graecam. Quando enim.', 2),
('HS.ci-K59', 'Feedback', 'Et doloribus -- itaque concedo, quod.', 6),
('IC.wo-C93', 'Claims', 'Acuti, qui verentur ne, si amicitiam propter nostram voluptatem expetendam.', 2),
('ID.qn-O88', 'Feedback', 'Liberatione et vacuitate omnis molestiae gaudemus.', 6),
('IJ.vn-D31', 'Claims', 'Aut Antiopam Pacuvii spernat aut reiciat, quod se isdem Euripidis fabulis.', 8),
('IN.et-V18', 'Contracts', 'Sed ipsius honestatis decore laudandis, id totum evertitur eo.', 4),
('IX.ek-Z66', 'Complaints', 'Non inhumanus, qui novum vicinum non vult \'fodere aut arare aut aliquid ferre denique.', 7),
('JI.rc-C03', 'Inquiries', 'Physicis et fortitudo sumitur contra mortis timorem.', 2),
('JL.nv-F99', 'Procedures', 'Tamen id, cuius causa haec finxerat, assecutus est. Nam.', 1),
('JU.yl-O67', 'Announcements', 'Sum, debeo profecto, quantumcumque possum, in.', 8),
('LG.vq-R02', 'Regulations', 'Et dolorem? Sunt autem quidam e nostris, qui haec subtilius velint.', 1),
('LR.ts-X39', 'Resolutions', 'Sensibus, sed maximam voluptatem illam habemus, quae percipitur omni dolore careret, non modo numquam.', 3),
('MC.da-A47', 'Procedures', 'Instituendarum voluntates fieri propter voluptatem; cum autem usus progrediens familiaritatem effecerit, tum.', 10),
('MK.bn-O09', 'Complaints', 'Arguerent, causam apud se dicere.', 10),
('MN.ps-D84', 'Orders', 'Oratio nostra omnem sibi fidem sensibus.', 4),
('MQ.dj-A08', 'Policies', 'Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Quid? Theophrastus mediocriterne delectat, cum.', 4),
('MS.gm-V09', 'Recommendations', 'Referuntur, nec praeterea est res ulla, quae sua natura aut sollicitare.', 8),
('MZ.fd-J72', 'Feedback', 'Fieri, difficilem quandam temperantiam postulant in eo, quod.', 10),
('ND.yz-E93', 'Financial', 'Nec impediente nec inpendente, quem.', 5),
('NE.qr-K98', 'Orders', 'Earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur.', 6),
('NI.wy-J91', 'Claims', 'Graecis? Nam si dicent ab illis has res esse tractatas, ne ipsos quidem Graecos.', 10),
('NN.df-E70', 'Feedback', 'Aut angere. Praeterea et appetendi et refugiendi et omnino rerum gerendarum initia.', 7),
('NT.jz-H24', 'Contracts', 'Sit, sed stare etiam oportet in eo, quod semel admissum coerceri reprimique.', 10),
('NX.jv-A42', 'Recommendations', 'Eisque nostrum iudicium et nostrum scribendi ordinem adiungimus, quid habent, cur Graeca anteponant.', 7),
('NY.pk-P59', 'Inquiries', 'Nulla praeterea neque praesenti nec expectata voluptate, quid eo miserius dici.', 10),
('OH.ty-F41', 'Legal', 'Haec et quae fugiamus refert omnia. Quod quamquam.', 2),
('OK.wd-Z24', 'Regulations', 'Percipitur omni dolore careret, non modo non impediri rationem amicitiae, si.', 1),
('OL.ub-R61', 'Announcements', 'Potius inflammat, ut coercendi magis quam dedocendi esse videantur.', 10),
('OV.zl-R50', 'Policies', 'Et nostrum scribendi ordinem adiungimus, quid habent, cur Graeca.', 10),
('PD.dw-P24', 'Orders', 'Sine dubio praeclara sunt, fecerint.', 6),
('PE.mq-X12', 'Announcements', 'In musicis, geometria, numeris, astris contereret, quae et splendide dicta sint.', 4),
('PF.kb-A12', 'Notifications', 'Verum, opinor, scriptorem tamen, ut legendus sit. Rudem enim esse.', 5),
('PH.pf-H41', 'Announcements', 'Animadversionem atque admonitionem. Altera occulta quaedam et horrida, de malis Graecis Latine scripta.', 4),
('PP.eb-T83', 'Disputes', 'Facillimis ordiamur, prima veniat in medium Epicuri.', 10),
('PZ.kf-C54', 'Financial', 'Si omnia deorsus e regione ferrentur et, ut modo docui, cognitionis regula et iudicio.', 3),
('QJ.nt-L40', 'Orders', 'Iam in altera philosophiae parte. Quae.', 8),
('QL.cr-B76', 'Guidelines', 'Accedit, ut neque divinum numen horreat.', 3),
('QO.oj-H97', 'Policies', 'Dolorem saepe perpetiuntur, ne, si amicitiam propter nostram voluptatem expetendam putemus.', 1),
('QU.ab-Q03', 'Resolutions', 'Modo numquam nocet cuiquam, sed contra semper afficit cum.', 9),
('QZ.ya-T65', 'Suggestions', 'Maiores esse et muniti videntur, deorum tamen horrent easque.', 1),
('RE.br-N78', 'Financial', 'Si essent vera, nihil afferrent, quo iucundius.', 7),
('SG.fd-G19', 'Claims', 'Cognitionem divina illa ingenia transferrem. Sed id neque feci adhuc.', 2),
('SM.ua-K49', 'Guidelines', 'Metuamus. Iam illud quidem physici, credere.', 8),
('TI.pr-M97', 'Resolutions', 'Iis quos probamus, eisque nostrum iudicium et nostrum scribendi ordinem adiungimus, quid.', 5),
('TI.qf-W71', 'Guidelines', 'Vita sine amicis insidiarum et metus plena sit, ratio ipsa monet amicitias.', 7),
('TJ.ih-Q70', 'Guidelines', 'Ad maiora enim quaedam nos natura genuit et conformavit, ut mihi quidem videtur. Ac.', 2),
('TK.yp-X27', 'Guidelines', 'Ferantur, deinde eadem illa atomorum, in quo a nobis.', 4),
('TL.xm-J45', 'Resolutions', 'De re cum sit inter doctissimos summa dissensio, quis alienum putet eius esse dignitatis.', 5),
('TP.rt-N22', 'Financial', 'Geometriaque perfecto, huic pedalis fortasse.', 10),
('UA.be-W75', 'Inquiries', 'Ultimum bonorum, quod omnium philosophorum sententia tale debet esse, ut ad Orestem.', 6),
('UF.mt-G05', 'Disputes', 'A nobis, aequi esse debent.', 4),
('UO.sj-P12', 'Notifications', 'Animi aut voluptatem aut molestiam plus aut ad beatam aut ad naturam.', 4),
('UO.zn-F05', 'Policies', 'Graecis isdem de rebus alia ratione compositis, quid est, quod nullam eruditionem esse duxit.', 6),
('UP.om-O49', 'Feedback', 'Me prohiberet Epicureum esse, si probarem.', 6),
('UQ.gs-B26', 'Procedures', 'Ut ratione et via procedat oratio. Quaerimus igitur, quid sit extremum et ultimum.', 3),
('UV.fa-W01', 'Requests', 'Quodsi Graeci leguntur a Graecis isdem de rebus alia ratione compositis, quid est.', 2),
('VC.ob-B26', 'Resolutions', 'Mihi ea facultas, ut id meo arbitratu facerem, ante hoc.', 6),
('VG.fq-I68', 'Legal', 'Cupiditatibusque detractis et omnium falsarum opinionum temeritate derepta.', 1),
('VJ.tt-B82', 'Announcements', 'Iudicio ab eadem illa atomorum.', 9),
('WO.ku-G87', 'Resolutions', 'Incididunt ut labore et dolore magnam.', 6),
('WS.lz-T73', 'Complaints', 'Voluptatem. Quaeque de virtutibus dicta.', 5),
('WX.yv-K08', 'Claims', 'Etiam approbantibus nobis. Sic enim ab Epicuro sapiens semper beatus inducitur: finitas habet cupiditates.', 10),
('WY.fn-X07', 'Suggestions', 'Numquam potest. Praeterea bona praeterita grata recordatione renovata delectant. Est autem situm in nobis.', 6),
('WY.nt-N99', 'Orders', 'Nostri a nostris de amicitia.', 7),
('XA.ku-V14', 'Policies', 'Possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus.', 6),
('XA.rq-Q74', 'Disputes', 'Videbitur, transferam, et maxime ab iis, quos ego.', 9),
('XC.zb-K71', 'Requests', 'Accurate disserendum et rationibus conquisitis de voluptate et dolore disputandum.', 5),
('XD.pd-Q09', 'Regulations', 'Apud Veserim propter voluptatem; quod vero securi percussit filium, privavisse se.', 7),
('XJ.mn-O88', 'Complaints', 'Dividendo ac partiendo docet, non quo ignorare vos arbitrer, sed ut.', 5),
('XO.cc-H44', 'Policies', 'Molestias accessio potest fieri, quanta ad augendas, cum conscientia.', 3),
('XW.iu-E87', 'Requests', 'Utilitas omnisque puerilis est delectatio, aut.', 1),
('XW.mv-P83', 'Complaints', '. .\' nihilo minus legimus quam hoc idem Graecum, quae autem tanta ex improbis.', 2),
('XZ.qn-W06', 'Requests', 'Ante collegi, abest plurimum et, cum stultorum vitam cum sua.', 2),
('YD.sx-M37', 'Announcements', 'Ab illo, recta et honesta quae.', 8),
('YK.fg-L05', 'Orders', 'Placeat, facere possimus, omnis voluptas.', 10),
('YM.dr-Q52', 'Regulations', 'In his rebus instructus semper est in quo admirer.', 2),
('YR.zb-T25', 'Complaints', 'Cognitioque rerum, quid poetarum evolutio, quid tanta tot versuum memoria voluptatis affert? Nec mihi.', 1),
('YW.nv-N19', 'Policies', 'Oblivione obruamus et secunda iucunde ac suaviter meminerimus. Sed.', 1),
('ZA.hv-H63', 'Procedures', 'Quod ipsum nullam ad aliam rem.', 5),
('ZY.kr-G62', 'Disputes', 'Possunt, conficiuntur et angore et metu maximeque cruciantur.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `id_user`, `surat_masuk`, `surat_keluar`, `referensi`) VALUES
(1, 8, 20, 100, 30),
(2, 2, 19, 5, 41),
(3, 3, 35, 13, 12),
(4, 4, 27, 48, 48),
(5, 5, 30, 14, 29),
(6, 6, 31, 49, 16),
(7, 7, 1, 33, 14),
(8, 8, 8, 29, 38),
(9, 9, 27, 3, 25),
(10, 10, 21, 35, 46);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `kode` varchar(30) DEFAULT NULL,
  `divisi` varchar(30) DEFAULT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `kode`, `divisi`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(1, 'MK.bn-O09', 'VSD-3182', 1, 'Université de Nice-Sophia Antipolis', '6358-NUY-503358', 'Nimis voluptatibus esse deditum dicitis; non posse iucunde vivi, nisi sapienter, honeste iusteque vivatur.', '2024-08-19', '2024-07-20', '/ratio/totum.aac', 'Se ipsum, quosque labores propter suam voluptatem susciperet, eosdem suscipiet propter.', 6),
(2, 'TJ.ih-Q70', 'TGW-4384', 2, 'Wuhan University School of Medicine', '7110-XWF-023146', 'Tam multos legant, quam legendi.', '2024-11-23', '2024-03-17', '/claris/et/labore.log', 'Aegritudine possit et sine metu degendae.', 9),
(3, 'RE.br-N78', 'KYY-5395', 3, 'Fachhochschule Lübeck', '2494-ASX-370520', 'Ut, cum Sophocles vel optime scripserit Electram, tamen male.', '2025-01-20', '2024-08-17', '/nos/a/libidinum/praeter.mdf', 'Sint ea quamque iucunda, neque pendet ex futuris.', 2),
(4, 'IJ.vn-D31', 'VSD-3182', 4, 'University of Canberra', '4714-NCA-184385', 'Malit quam deserere ullam officii partem.', '2024-11-24', '2024-12-23', '/has/optari/animum.dbf', 'Culpa qui officia deserunt mollitia animi, id est vel.', 8),
(5, 'IN.et-V18', 'TPI-5271', 5, 'Njala University', '6849-YKE-635121', 'Unum genus posuit earum cupiditatum, quae essent et.', '2024-04-08', '2024-04-27', '/ut/dolore/voluptas.mkv', 'Quod fit etiam nunc ab Epicureis. Sed ad rem redeamus; de hominibus dici non.', 3),
(6, 'OK.wd-Z24', 'CAD-3764', 6, 'Ecole Mohammadia d\'Ingénieurs', '4161-TIO-697329', 'Perciperet corpore voluptatem, aut cum Latinis tertio consulatu conflixisse.', '2025-01-17', '2024-07-01', '/poetis/postea/quidem/quam/fuit/non.msh2xml', 'Emancipaverat, ut eum Macedonum legatis accusantibus, quod.', 4),
(7, 'UA.be-W75', 'TGW-4384', 7, 'Lebanon Valley College', '0774-FCK-970715', 'Augeri amplificarique non possit. At etiam Athenis, ut.', '2024-04-11', '2024-07-26', '/et/animi/difficile.tsv', 'Melius nos veriusque quam Stoici. Illi enim.', 10),
(8, 'JU.yl-O67', 'CAD-3764', 8, 'Technical University of Mombasa', '5945-YDF-164600', 'Contrariis studiis consiliisque semper utens nihil.', '2025-01-02', '2024-06-18', '/praestabiliorem/aut/magis/esse.img', 'Homine videatur indignius. Ad maiora.', 4),
(9, 'IX.ek-Z66', 'TPI-5271', 9, 'Meisei University', '4696-KUG-268051', 'Parum videtur eruditus, ea causa est, quod huc possit, quod conetur.', '2024-12-31', '2024-12-01', '/et/natura/orationis/et/consequentium/et.img', 'Quibus nulla solida utilitas omnisque puerilis est delectatio.', 10),
(10, 'SG.fd-G19', 'TGW-4384', 10, 'CCS Haryana Agricultural University', '5575-DKH-516329', 'Aut voluptates omittantur maiorum voluptatum adipiscendarum causa aut dolores suscipiantur maiorum dolorum.', '2024-12-22', '2024-12-18', '/cur/rationem.jpeg', 'Novi, ea tamen, quae te ipsum probaturum esse confidam. Certe, inquam, pertinax non ero.', 7),
(11, 'QJ.nt-L40', 'TGW-4384', 11, 'Rock Valley College', '5524-OSO-543751', 'Autem, qui dicant foedus esse quoddam sapientium.', '2024-12-06', '2024-02-12', '/aut/gloriae/nullas/enim/consequuntur/omnis.xlsx', 'Desiderat. Et quem ad modum.', 10),
(12, 'FW.pz-Q63', 'TGW-4384', 12, 'Islamic Azad University, Yazd', '5929-MBQ-129006', 'Quod quamquam Aristippi est a Chrysippo praetermissum in.', '2024-03-31', '2024-04-11', '/operam/malle/consumere/postremo/aliquos/atomis.xlsx', 'Delectet eos sermo patrius, cum idem fabellas Latinas ad verbum e Graecis expressas non.', 6),
(13, 'XC.zb-K71', 'CAD-3764', 13, 'Research College of Nursing - Rockhurst University', '7183-MNI-650463', 'Rerum fastidium. Non est omnino hic docendi locus; sed ita.', '2024-11-21', '2024-02-17', '/negent/satis/esse/quid/bonum/vult.avi', 'Dixeris: \'Haec enim ipsa mihi sunt voluptati, et erant illa Torquatis.\' Numquam hoc.', 7),
(14, 'YK.fg-L05', 'TPI-5271', 14, 'The American University in London', '9301-KUA-383935', 'Alii cum eas voluptates, quae ad amicos pertinerent, negarent esse per se ipsam.', '2025-01-07', '2024-03-02', '/nisi/qui/se/conciliant.json', 'Sed expectat illa, fruitur praesentibus ab iisque M. Brutus.', 1),
(15, 'WO.ku-G87', 'TPI-5271', 15, 'University of Abuja', '0035-LZU-604559', 'Amice et benivole collegisti, nec.', '2024-04-16', '2024-12-01', '/geometriaque/perfecto/propterea.asp', 'An me, inquam, nisi te audire vellem, censes.', 8),
(16, 'WX.yv-K08', 'TGW-4384', 16, 'Institute of Teachers Education, Sarawak', '8349-GRV-685244', 'Egregios viros censes tantas res gessisse sine causa? Quae fuerit causa, mox.', '2024-06-28', '2024-05-16', '/effecerit/doloris.wav', 'Si omnia deorsus e regione ferrentur et, ut modo.', 3),
(17, 'YM.dr-Q52', 'TPI-5271', 17, 'Universidade de Ribeiro Preto', '9035-SNK-729602', 'Et Democriti errata ab Epicuro sapiens semper beatus inducitur.', '2024-04-04', '2024-02-20', '/dolore/a.xlsx', 'Graece ergo praetor Athenis, id quod maluisti.', 1),
(18, 'FW.pz-Q63', 'KYY-5395', 18, 'St. Mary\'s University of San Antonio', '3431-ZVV-629911', 'Ab Epicureis. Sed ad rem redeamus; de hominibus dici non.', '2024-12-17', '2024-02-24', '/amici/voluptatem/quaeque/dolor.xhtml', 'Est quo melius viveremus, eas ergo artes persequeretur, vivendi artem tantam tamque.', 3),
(19, 'FW.ro-S98', 'TGW-4384', 19, 'Shaanxi Normal University', '5067-ZOQ-807336', 'Theophrasti orationis ornamenta neglexerit. Nam illud quidem perspicuum est, maximam animi aut voluptatem.', '2024-06-14', '2024-04-26', '/easque/ipsas/sollicitudines/ad.svg', 'De voluptate, a meque ei responsum, cum C. Triarius, in.', 2),
(20, 'JI.rc-C03', 'VSD-3182', 20, 'United States Coast Guard Academy', '3519-IRY-379346', 'Degendae praesidia firmissima. -- Filium morte.', '2024-05-04', '2024-03-12', '/quem/ad/consuetudine.exe', 'Ego assentior, cum a philosophis compluribus permulta dicantur, cur nec voluptas in bonis sit.', 9),
(21, 'QL.cr-B76', 'TGW-4384', 21, 'Universidad Católica Boliviana, Tarija', '7798-RYX-325850', 'Consedit, hoc ipso, quod adest, turbulenta est; si vero.', '2024-08-28', '2024-05-29', '/est/epicuri/sententia/de/quanti.mdb', 'Macedonum legatis accusantibus, quod pecunias.', 9),
(22, 'SM.ua-K49', 'KYY-5395', 22, 'Institute of Management Development - Ohrid', '7132-KLE-760262', 'Benivole collegisti, nec me tamen laudandis maioribus meis.', '2024-04-14', '2024-05-11', '/si/ipsarum.htm', 'Videri solent. Tum Torquatus: Prorsus, inquit.', 8),
(23, 'RE.br-N78', 'VSD-3182', 23, 'Tyumen State Agricultural Academy', '3282-NFV-465235', 'Et ipsius fortunae modice ferre doceat iniurias et omnis monstret.', '2025-01-18', '2024-06-26', '/ipsa/omnis.cfg', 'In gravissimis rebus non delectet eos sermo patrius.', 4),
(24, 'XA.rq-Q74', 'VSD-3182', 24, 'KROK Economics and Law University', '3654-GWM-941139', 'Quam illum etiam ipsum dedocere. Sol Democrito magnus videtur, quippe homini erudito in.', '2024-07-29', '2024-04-14', '/natura/ipsa/iudicari/ea/qua.gz', 'Vetuit, numquid tibi videtur de voluptatibus suis cogitavisse?', 7),
(25, 'ZY.kr-G62', 'TPI-5271', 25, 'Universität Erfurt', '8316-YGU-826735', 'Eumque errorem et voluptatibus maximis saepe priventur et.', '2024-10-26', '2024-06-23', '/manus/tua/cn.jsp', 'Me prohiberet Epicureum esse, si probarem, quae ille diceret?', 3),
(26, 'YK.fg-L05', 'CAD-3764', 26, 'University of Alabama - Tuscaloosa', '1732-TSU-783050', 'Sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore.', '2024-09-10', '2024-09-01', '/utuntur/benivolentiam/sibi/conciliant/omnia.iso', 'Vocant, tota ab illo inventore veritatis et quasi architecto beatae vitae.', 9),
(27, 'ZY.kr-G62', 'TGW-4384', 27, 'Universidad Autónoma Metropolitana - Iztapalapa', '8667-CZB-792117', 'Quod appellant honestum non tam id reprehendunt, si remissius agatur, sed.', '2024-11-11', '2024-03-13', '/scientiam/non/ipsius/artis/sed/oritur.msh2', 'Enim negant esse bonum quicquam nisi nescio quam illam.', 3),
(28, 'IC.wo-C93', 'VSD-3182', 28, 'Virginia State University', '8275-QRP-560962', 'Tenebo, si ob aliquam causam ista, quae sine dubio praeclara sunt.', '2024-11-11', '2024-11-09', '/libidinosarum/qui.tsv', 'Quaeritur saepe, cur tam multi.', 10),
(29, 'GZ.oi-B13', 'TPI-5271', 29, 'University Institute of Teacher Training \"Suor Orsola Benincasa\"', '9331-XYQ-037487', 'Ratione compositis, quid est, quod huc possit.', '2024-03-18', '2024-03-08', '/aut/dolores/suscipiantur/tractavissent.scf', 'Ut concursionibus inter se cohaerescant, ex quo vitam amarissimam necesse est effici.', 9),
(30, 'FO.pq-W22', 'KYY-5395', 30, 'Osaka Shoin Women\'s College', '9566-JDL-417876', 'Sententia desistemus. Nisi autem rerum natura perspecta.', '2024-08-02', '2024-10-22', '/silano/emancipaverat/ut/eum/macedonum/latinas.htm', 'Perpetua malo quam interrogare aut interrogari. Ut placet, inquam.', 8),
(31, 'YW.nv-N19', 'TPI-5271', 31, 'Durban Institute of Technology', '1942-QNE-075570', 'Rem tandem, inquit, non satisfacit? Te enim iudicem aequum.', '2024-05-28', '2024-07-19', '/placet/an/de/probo.odg', 'Dolorem referuntur, nec praeterea est res ulla.', 5),
(32, 'WX.yv-K08', 'KYY-5395', 32, 'Hankuk Aviation University', '2281-OHU-484432', 'Naturales et necessariae, alterum, quae vis sit, quae quidque.', '2024-03-28', '2024-07-22', '/non/placuit/sit.pfx', 'Incidant in maiorem. Ex quo vitam amarissimam necesse est in.', 1),
(33, 'MS.gm-V09', 'CAD-3764', 33, 'Santa Clara University', '0930-HQD-243708', 'Ea solum incommoda, quae eveniunt inprobis, fugiendam.', '2024-08-10', '2024-03-01', '/legant/utinam/esset/ille/persius/sole.jpg', 'Quasi involuta aperiri, altera prompta et aperta.', 1),
(34, 'GP.lh-C44', 'CAD-3764', 34, 'Jiangsu University of Science and Technology', '4129-XQJ-052449', 'Irridente, statua est in voluptate est. Extremum autem esse bonorum voluptatem ex hoc.', '2024-07-06', '2024-03-20', '/ut/autem/a/discenda.asc', 'Et horrida, de malis Graecis Latine.', 2),
(35, 'AX.zw-M44', 'VSD-3182', 35, 'Baker College of Auburn Hills', '6187-OCC-061499', 'In quo enim maxime consuevit iactare vestra se oratio, tua.', '2024-05-14', '2024-12-18', '/peccandi/quae/enim/umquam.xml', 'Qui est imbutus quietus esse numquam potest. Praeterea bona praeterita non meminerunt, praesentibus.', 10),
(36, 'XJ.mn-O88', 'TGW-4384', 36, 'National Metallurgical Academy of Ukraine', '6314-UMJ-621452', 'Est eo libro, quo a nobis explicatam esse his litteris.', '2024-07-27', '2024-09-19', '/fecisse/aut/in/dolore/sed/qui.json', 'Posse iudicare arbitrarer, plura suscepi veritus ne movere hominum studia.', 10),
(37, 'UA.be-W75', 'TPI-5271', 37, 'Georgian Court College', '5583-MFT-689394', 'Sunt cupiditates inmensae et inanes divitiarum.', '2024-06-25', '2024-10-14', '/ipsius/fortunae/modice/diuturnitatem.msh1xml', 'Quae dicat ille bene noris.', 10),
(38, 'OK.wd-Z24', 'VSD-3182', 38, 'Ilam University of Medical Sciences', '5259-HMY-914241', 'Quid est enim aut utilior aut ad miseram vitam.', '2024-04-07', '2024-09-28', '/arguerent/causam/quidam.iso', 'Illaberetur, nec manus esse contenta posset.', 9),
(39, 'IX.ek-Z66', 'CAD-3764', 39, 'Osaka University of Education', '8644-UET-595888', 'Consilio ipsius et ratione administrari neque maiorem voluptatem ex hoc.', '2024-08-04', '2024-05-08', '/fruenda/etiam/sapientia/est/sive/studiis.msh1', 'Praeterita non meminerunt, praesentibus non fruuntur, futura modo expectant, quae quia certa.', 6),
(40, 'XW.mv-P83', 'CAD-3764', 40, 'University of Occupational and Environmental Health, Japan', '8596-DHL-970623', 'Omittantur maiorum voluptatum adipiscendarum causa aut dolores suscipiantur maiorum dolorum effugiendorum.', '2025-01-10', '2024-12-18', '/sequamur/monet/quis.php', 'Declarant, in quibus tam multis tamque variis ab.', 10),
(41, 'YW.nv-N19', 'KYY-5395', 41, 'Tibet Agricultural and Animal Husbandry College', '5020-NMH-558470', 'Videtur eruditus, ea causa est, quod.', '2024-12-26', '2024-07-08', '/se/ipsa/esse/contentam/sed/tot.dbf', 'Beatus. Multoque hoc melius nos veriusque quam.', 1),
(42, 'MZ.fd-J72', 'TGW-4384', 42, 'Asahikawa University', '4806-JBW-173518', 'Atque servare id, quod maxime placeat, facere possimus, omnis.', '2025-01-19', '2024-04-12', '/in/dolore/sed/in/his/sit.odp', 'Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque.', 10),
(43, 'NT.jz-H24', 'CAD-3764', 43, 'Ohio Wesleyan University', '3318-SKF-844189', 'Quo minus id, quod his libris quaeritur, qui sit finis, quid extremum, quid ultimum.', '2024-11-13', '2024-12-28', '/cibo/et/potione/fames/sitisque/ortum.jpeg', 'Dolorum effugiendorum gratia. Sed de clarorum hominum factis illustribus et gloriosis satis.', 1),
(44, 'XC.zb-K71', 'TPI-5271', 44, 'Technological Education Institute of Heraklion', '5310-LVD-419557', 'Quanta voluptas sit non dolere.', '2024-11-16', '2025-01-11', '/modo/voluptatem/iis.txt', 'Neque perpessio dolorum per se.', 10),
(45, 'XW.mv-P83', 'KYY-5395', 45, 'St. Petersburg Institute of Sales Management and Economics', '3023-KMU-696734', 'Si concederetur, etiamsi ad corpus nihil referatur, ista.', '2024-11-22', '2025-01-22', '/est/a/cyrenaicisque/melius/modo.ods', 'Est, non satis politus iis.', 8),
(46, 'PH.pf-H41', 'CAD-3764', 46, 'Universidad de Especialidades Turísticas ', '4421-FZT-595036', 'Sinat. Qua praeceptrice in tranquillitate vivi potest omnium cupiditatum ardore restincto. Cupiditates enim.', '2024-10-21', '2024-12-31', '/talem/videri/fuisse/in/imperio/huic.sql', 'Praeclare enim Epicurus his paene verbis: \'Eadem\', inquit, \'scientia confirmavit animum, ne.', 9),
(47, 'UA.be-W75', 'TGW-4384', 47, 'Universidade Estadual de Maringá', '5850-TRY-916422', 'Patriam, plerique autem se ipsos penitus perdiderunt, sic robustus animus et excelsus omni.', '2024-04-05', '2024-01-29', '/desiderat/argumentum.json', 'Volunt voluptatibus, ut nulli propter eas consequantur dolores, et qui suum.', 10),
(48, 'TP.rt-N22', 'CAD-3764', 48, 'West Virginia School of Osteopathic Medicine', '0321-NDT-625124', 'Quorum iudicium elaboraret, et sunt illius scripta leviora, ut urbanitas summa appareat, doctrina.', '2024-12-20', '2024-03-04', '/disputata/sunt/omnis.css', 'Tam crudelis fuisse, nihil ut de omni virtute sit dictum. Sed similia fere dici.', 4),
(49, 'VC.ob-B26', 'TGW-4384', 49, 'Paktia University', '8327-LYU-263802', 'Fugiat, sed quia maiores consequatur. Eadem fortitudinis ratio reperietur. Nam neque laborum.', '2024-10-31', '2024-12-31', '/se/ipsas/tam/mortis.xml', 'Multi etiam, ut te consule, ipsi se indicaverunt. Quodsi qui satis sibi contra hominum.', 9),
(50, 'XA.rq-Q74', 'KYY-5395', 50, 'Universidad Nacional Evangélica', '1594-DAS-849387', 'Ii voluptatem maximam adipiscuntur praetermittenda voluptate. Idem.', '2024-09-22', '2024-02-17', '/posse/qui/vivatur.cfg', 'Autem et laetitiam nobis voluptas animi et molestiam dolor.', 8),
(51, 'FW.ro-S98', 'VSD-3182', 51, 'Tyumen State University', '3683-ROX-839836', 'Amicitia, et amicitia cum voluptate.', '2024-07-19', '2024-12-24', '/nusquam/hoc/res.xls', 'Repellat. Hanc ego cum teneam sententiam, quid est cur verear.', 9),
(52, 'OK.wd-Z24', 'VSD-3182', 52, 'University of Cagayan Valley', '8844-CBX-755391', 'Restincto. Cupiditates enim sunt insatiabiles, quae non modo non inopem, ut vulgo putarent, sed.', '2024-04-15', '2024-01-31', '/igitur/vera/ratio/reformidans.xls', 'Eum iure reprehenderit, qui in una virtute ponunt et splendore nominis capti quid.', 3),
(53, 'OV.zl-R50', 'TPI-5271', 53, 'Sarhad University of Science & Information Technology, Peshawar ', '5977-MTR-690385', 'Qua maxime ceterorum philosophorum exultat.', '2024-07-02', '2024-06-30', '/modo/autem.nrg', 'Iudicante. Itaque negat opus esse ratione neque disputatione, quam ob rem dissentientium.', 2),
(54, 'JU.yl-O67', 'VSD-3182', 54, 'Xavier University', '9332-KIK-695241', 'Omnis rectas res atque laudabilis eo referri, ut cum voluptate vivere. Huic certae stabilique.', '2024-07-08', '2024-08-12', '/quae/laudatur/sed.p12', 'Mentitum aut Zenonem putas, quorum.', 7),
(55, 'QO.oj-H97', 'TGW-4384', 55, 'Universidad Nacional de Guinea Ecuatorial', '5457-RDO-078325', 'Manus tua sic affecta, quem ad modum affecta nunc est.', '2024-03-17', '2024-06-03', '/orationis/eidola.odp', 'Percipit aut quid iudicat, quo aut petat aut fugiat aliquid, praeter voluptatem.', 3),
(56, 'YM.dr-Q52', 'TGW-4384', 56, 'Mongolian State University of Arts and Culture', '1825-UYJ-874283', 'Animi autem morbi sunt cupiditates inmensae et inanes divitiarum.', '2024-07-27', '2024-08-25', '/inter/principes/civitatis/p/una.mshxml', 'Sic affecta, quem ad modum eae.', 3),
(57, 'NE.qr-K98', 'VSD-3182', 57, 'University of Dar Es Salaam', '6059-FGP-912684', 'Itaque concedo, quod modo dicebas, cadere causa, si qui.', '2024-07-13', '2024-03-15', '/quidem/quosdam/si/videbitur/transferam/sit.pgp', 'Posse et voluptatem ipsam per se ipsa allicit nec patientia nec assiduitas.', 4),
(58, 'XW.iu-E87', 'TGW-4384', 58, 'Indian Institute of Information Technology and Management - Kerala', '4193-XQD-317617', 'In eo essent. Quae cum dixisset, Explicavi, inquit, sententiam meam, et eo.', '2024-07-02', '2024-02-26', '/et/inquam.psc1', 'Non sinat. Qua praeceptrice in tranquillitate vivi.', 3),
(59, 'GZ.oi-B13', 'VSD-3182', 59, 'Bakhtar University', '0058-WBR-674896', 'Maiorem voluptatem ex hoc facillime perspici potest: Constituamus aliquem.', '2024-02-16', '2025-01-05', '/magnum/periculum/adiit//in/graecis.sql', 'Fames sitisque depulsa est, ipsa detractio molestiae.', 6),
(60, 'YM.dr-Q52', 'KYY-5395', 60, 'Universidade Jean Piaget de Cabo Verde', '5282-AOW-525470', 'Maxime fugienda est, summum profecto malum est vivere cum.', '2024-02-24', '2024-08-09', '/atomis/dare/alios.msh1', 'Non asperner, si non habeat, non admodum.', 9),
(61, 'VG.fq-I68', 'CAD-3764', 61, 'Universiti Teknikal Malaysia Melaka', '6619-ZSH-979992', 'Erit enim iam de omnium virtutum cursu ad.', '2024-09-07', '2024-06-22', '/bonum/affirmatis/nullam/omnino/fore/atque.bin', 'Suum venire vetuit, numquid tibi videtur de voluptatibus suis cogitavisse? Sed ut perspiciatis.', 7),
(62, 'HS.ci-K59', 'TPI-5271', 62, 'St. Petersburg State Technical University', '8754-TTP-350045', 'Historiae cognitioque rerum, quid poetarum evolutio, quid tanta tot versuum.', '2024-07-23', '2024-05-07', '/a/theseo/at/vero/ignota.avi', 'Consuetudine adamare solemus, quanto id in voluptate aut in poetis evolvendis.', 1),
(63, 'XJ.mn-O88', 'KYY-5395', 63, 'Université Catholique de Lille', '1496-MQX-832376', 'Nulla praeterea neque praesenti nec expectata voluptate.', '2024-12-11', '2024-09-12', '/et/complectitur/verbis/existimavit.xml', 'Aut a dolore. Quod cum.', 4),
(64, 'FW.ro-S98', 'TGW-4384', 64, 'University of Occupational and Environmental Health, Japan', '9796-OMF-135449', 'Malit quam deserere ullam officii partem, ad ea, quae voluptaria, delicata, mollis habeatur.', '2024-05-23', '2024-03-08', '/nihil/homini/possit/voluptas.torrent', 'Putanda est, non expeteretur, si nihil.', 9),
(65, 'AT.pq-P72', 'CAD-3764', 65, 'Utkal University', '6978-AQJ-471440', 'Suspicio insequitur, dein sermo atque fama, tum.', '2024-02-16', '2024-11-12', '/etiam/mors/quae/quasi/titillaret/declarant.torrent', 'Velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore disputandum.', 7),
(66, 'BU.ce-G92', 'KYY-5395', 66, 'Universidad Xicotepetl', '6092-TLA-596145', 'Physicis nec ea ipsa, quae ab illo est, tum.', '2024-02-02', '2024-04-23', '/summum/profecto/malum/est/ut.cue', 'Lucifugi, maledici, monstruosi, alii autem etiam.', 5),
(67, 'OL.ub-R61', 'TGW-4384', 67, 'Instituto de Estudios Superiores de la Sierra', '3464-OFX-188677', 'Leniat. Temperantia est enim, quae in rebus aut expetendis aut fugiendis ut rationem.', '2024-10-15', '2024-11-10', '/interpretaris/sicine/molestiae.pptx', 'Contenta posset nec ulla pars vacuitate doloris sine iucundo.', 3),
(68, 'MS.gm-V09', 'CAD-3764', 68, 'University of the South Pacific Centre', '1394-WVE-757809', 'Caritatem, quae sunt vitae sine metu degendae praesidia firmissima.', '2024-10-17', '2024-09-07', '/uti/oratione/perpetua/malo/ipso.jsp', 'Enim nobis, vel dicam aut oratoribus bonis aut.', 3),
(69, 'DZ.bz-P08', 'TPI-5271', 69, 'Universidad Católica Popular del Risaralda', '0399-FRA-432256', 'In medium Epicuri ratio, quae plerisque notissima est. Quam a nobis explicatam.', '2024-06-30', '2024-04-03', '/aut/angere/enim.wma', 'De bene beateque vivendo a Platone disputata sunt, haec explicari non placebit Latine? Quid?', 8),
(70, 'UO.sj-P12', 'TPI-5271', 70, 'Shanghai International Studies University', '0406-ZHE-224851', 'Quodsi ne ipsarum quidem virtutum laus, in qua maxime ceterorum.', '2024-02-06', '2024-11-12', '/eo/est/consecutus//et.ogg', 'Quae ille diceret? Cum praesertim illa perdiscere ludus esset. Quam ob.', 4),
(71, 'TI.pr-M97', 'TGW-4384', 71, 'Golden Gate University', '1812-RIX-389540', 'Cepisse arguerent, causam apud se dicere iuberet reque ex utraque parte.', '2024-11-15', '2024-04-08', '/docendi/locus/sed/ita/prorsus/centurionum.pptx', 'Est, ipsa detractio molestiae consecutionem affert voluptatis.', 2),
(72, 'JI.rc-C03', 'TPI-5271', 72, 'Tokai University Educational System', '2162-SMU-734768', 'Soliditatem, censet in infinito inani, in quo a nobis explicatam esse.', '2024-08-21', '2024-10-01', '/mediocritatem/desiderent/sive/enim/quam.pptx', 'Etiam magis, quod, cuius in.', 9),
(73, 'XC.zb-K71', 'KYY-5395', 73, 'Université Panthéon-Assas (Paris II)', '8364-JRY-857445', 'Aut venandi consuetudine adamare solemus, quanto id in hominum consuetudine facilius.', '2024-05-27', '2024-05-04', '/ut/cognoscerem/qui.p12', 'Licet transferre in voluptatem, ut postea variari voluptas.', 8),
(74, 'TI.qf-W71', 'TGW-4384', 74, 'Persian Gulf University', '0346-LKQ-281552', 'Quidem videtur, inermis ac nudus est. Tollit definitiones.', '2024-08-17', '2024-12-15', '/esse/dolor.xlsx', 'Inquit, \'scientia confirmavit animum, ne quod aut sempiternum aut diuturnum.', 2),
(75, 'OK.wd-Z24', 'KYY-5395', 75, 'Union University', '0165-YCG-449113', 'Non recusandae. Itaque earum rerum defuturum, quas natura.', '2024-11-11', '2024-12-08', '/intuemur/tum/fit/ut/aegritudo/multam.mdf', 'Quod gaudeat, quam quod angatur. Optime vero Epicurus, quod.', 2),
(76, 'XW.mv-P83', 'VSD-3182', 76, 'State University of New York at New Paltz', '0739-BPI-946712', 'Arbitraretur? Ut enim sapientiam, temperantiam, fortitudinem copulatas esse docui cum voluptate, ut.', '2024-02-08', '2024-11-15', '/causam/efficiendi/dicent.aac', 'Isti curiosi, quos offendit noster minime nobis iniucundus labor.', 1),
(77, 'QL.cr-B76', 'KYY-5395', 77, 'Burdwan University', '4135-EYJ-130408', 'Quam se ipsos amentur. Etenim si loca, si fana, si urbes.', '2024-05-06', '2024-07-22', '/sol/democrito/magnus/videtur/horribiles.psd1', 'Sit, perspicuum est nihil desiderare manum, cum.', 2),
(78, 'WY.fn-X07', 'VSD-3182', 78, 'Loyola Marymount University', '8023-WSB-188594', 'Viros censes tantas res gessisse sine causa? Quae fuerit causa.', '2025-01-12', '2024-05-25', '/tarentinis/ait/se/laboriosam.txt', 'Esset, quae quasi delapsa de caelo est.', 5),
(79, 'DZ.bz-P08', 'TGW-4384', 79, 'Fachhochschule Biberach, Hochschule für Bauwesen und Wirtschaft', '6914-SFS-335340', 'Maiorum dolorum effugiendorum gratia. Sed de clarorum hominum factis illustribus et.', '2025-01-16', '2024-10-11', '/vel/copiosae/et.ps1', 'Earum cupiditatum, quae essent et naturales et necessariae, alterum, quae vis.', 1),
(80, 'FW.ro-S98', 'KYY-5395', 80, 'Universidad Pontificia Bolivariana', '4293-RNO-191715', 'Animo, cum corpore dolemus, fieri tamen.', '2024-06-28', '2024-06-12', '/modus/ullus/nec/navigandi.log', 'Habent, ut non plus voluptatum habeat quam dolorum.', 5),
(81, 'NY.pk-P59', 'KYY-5395', 81, 'ITT Technical Institute Maitland', '7518-ORP-960905', 'Cum sua comparat, magna afficitur voluptate.', '2024-03-26', '2024-10-19', '/quo/modo/efficiatur/concludaturque/qua.mdf', 'Eveniunt inprobis, fugiendam inprobitatem putamus, sed multo etiam magis, quorum ille iudicium.', 7),
(82, 'ZA.hv-H63', 'KYY-5395', 82, 'Université Cadi Ayyad', '8656-PFL-625287', 'Instituendarum voluntates fieri propter voluptatem; quod vero securi percussit filium, privavisse se.', '2024-08-04', '2024-04-03', '/fortunam/intervenire/sapienti/maximasque/ab/modis.cfg', 'Tua praesertim, qui studiose antiqua persequeris, claris et fortibus viris commemorandis eorumque factis.', 6),
(83, 'IJ.vn-D31', 'VSD-3182', 71, '', 'LN8133/94/79', 'Rebus non delectet eos sermo patrius, cum idem fabellas Latinas.', '2024-05-22', '2024-06-24', '/tum/triarius/leniter/arridens/tu/atque.zip', 'Varias reprehensiones incurreret. Nam quibusdam, et iis servire, qui vel utrisque litteris.', 1),
(84, 'AT.pq-P72', 'VSD-3182', 256, '', 'XQ6036/63/33', 'Tolerabiles sint, feramus, si minus, animo aequo e vita, cum ea non placeat.', '2024-08-12', '2025-01-04', '683-Snapshot_2025-01-25_13-05-46.png', 'Pronuntiaret eum non talem videri fuisse in imperio.', 1),
(85, 'RE.br-N78', 'CAD-3764', 85, 'Zagreb School of Economics and Management', '0472-NNM-531681', 'Corporis. Nam corpore nihil nisi praesens et quod adest sentire possumus.', '2024-08-06', '2024-12-31', '/torquatus/ad.yml', 'Studiose antiqua persequeris, claris et fortibus viris commemorandis.', 6),
(86, 'CW.lp-O34', 'TGW-4384', 86, 'National Institute of Industrial Engineering', '2885-QSY-082585', 'Depravata desiderat. Et quem ad modum sit affectus, et firmitatem.', '2024-03-18', '2024-07-07', '/animi/e.gz', 'Exquisitis rationibus confirmare, tantum satis esse admonere.', 6),
(87, 'TP.rt-N22', 'CAD-3764', 87, 'Universitas Sanata Dharma', '2538-PUM-591442', 'Ingenia transferrem. Sed id neque feci adhuc nec mihi illud dixeris.', '2024-12-05', '2024-09-02', '/sunt/vituperandae/conformavit.html', 'Sunt vituperandae, maledicta, contumeliae, tum iracundiae.', 4),
(88, 'ND.yz-E93', 'TPI-5271', 88, 'Evangelische Fachhochschule Reutlingen-Ludwigsburg, Hochschule für Soziale Arbeit, Religionspädagogik und Diakonie', '5240-HQI-675064', 'Illa perdiscere ludus esset. Quam ob rem dissentientium inter se cohaerescant, ex.', '2024-06-13', '2024-07-16', '/temperantiam/postulant/in/eo/qui/summum.ps1xml', 'Etiam in animis nostris inesse.', 5),
(89, 'UP.om-O49', 'VSD-3182', 89, 'Liaocheng Teachers University', '1970-MIR-256927', 'Extremum sit, ita ferri, ut concursionibus inter se.', '2024-07-08', '2024-05-21', '/unum/vidisse/satis.msi', 'Derepta certissimam se nobis ducem praebeat ad voluptatem. Sapientia enim est.', 9),
(90, 'BG.ru-J33', 'TPI-5271', 90, 'Pädagogische Hochschule Freiburg', '9547-FDO-090962', 'De litteris, quarum summum erat in utroque studium, deinde.', '2024-02-27', '2024-12-16', '/ita/prorsus/existimo/neque/eum/sine.sql', 'Animi autem voluptates et dolores nasci fatemur e.', 2),
(91, 'IC.wo-C93', 'TPI-5271', 91, 'Mae Fah Luang University ', '6025-TID-098769', 'Degendae et rerum gerendarum. Sic e physicis et.', '2024-02-29', '2024-10-27', '/et/verborum/vis/et/natura/seiunctum.bmp', 'A singulis philosophiae disciplinis diceretur, persecuti sumus. Ut autem a.', 6),
(92, 'XC.zb-K71', 'TPI-5271', 92, 'Universidad Don Bosco', '8141-WYP-851472', 'Quamquam a te ipso id quidem licebit iis existimare, qui legerint.', '2024-09-24', '2024-06-27', '/regione/ferrentur/et/ut/causa.sig', 'Hic tenetur a sapiente delectus, ut aut voluptates omittantur maiorum.', 5),
(93, 'MC.da-A47', 'KYY-5395', 93, 'Arkansas State University, Mountain Home', '5203-EKM-005696', 'Ita dicit, omnium rerum, quas ad beate vivendum se ipsa esse contentam. Sed possunt.', '2024-03-04', '2025-01-15', '/necessariae/nec/opera/vellem.png', 'Sententia tale debet esse, ut ad id omnia referri oporteat, ipsum autem nusquam. Hoc.', 9),
(94, 'HP.zw-X63', 'KYY-5395', 94, 'Islamic Azad University, Boukan', '5624-CLY-315602', 'Ii voluptatem maximam adipiscuntur praetermittenda voluptate. Idem etiam dolorem.', '2024-07-17', '2024-10-12', '/corporis/voluptatibus/et/doloribus//liberae.psm1', 'Damna, tum in dedecora incurrunt, saepe etiam videmus, et perspicuum est omnis.', 7),
(95, 'IJ.vn-D31', 'CAD-3764', 95, 'Medical Academy in Lublin', '7882-STN-002250', 'Lucilius, recusabo, quo minus omnes.', '2024-11-07', '2024-08-04', '/utilior/aut/ad/bene/beateque/eventurum.html', 'Ne ipsos quidem Graecos est cur verear, ne ad eam non possim accommodare.', 4),
(96, 'GZ.oi-B13', 'KYY-5395', 96, ' Dedan Kimathi University of Technology', '5406-VPX-176334', 'Vero Epicurus, quod exiguam dixit fortunam intervenire sapienti.', '2024-11-16', '2024-05-23', '/abhorreant/molestiae.odf', 'Se, ex quo efficiantur ea, quae dicta sunt ab iis quos.', 8),
(97, 'FW.pz-Q63', 'VSD-3182', 97, 'Universidad Hispanoamericana', '8509-LVW-621929', 'Bonae valetudinis causa probamus, et gubernatoris ars, quia bene navigandi rationem habet, utilitate, non.', '2024-08-11', '2024-12-26', '/instituendarum/voluntates/fieri/expetendam.md', 'Deserere ullam officii partem, ad ea, quae corrigere vult.', 5),
(98, 'BI.fs-W09', 'CAD-3764', 98, 'Universitas Negeri Malang', '5111-GAZ-433271', 'Manu, quae manus significet illum in hae esse rogatiuncula delectatum: \'Numquidnam manus tua.', '2024-07-28', '2024-06-20', '/et/quem/ad/modum/illa.html', 'Diligamus, idcirco et hoc ipsum efficitur in amicitia.', 4),
(99, 'XW.mv-P83', 'VSD-3182', 99, 'Universidad Católica Nuestra Senora de la Asunción', '7021-KNU-266557', 'Successionem efficit voluptatis. Itaque non placuit Epicuro medium esse.', '2024-07-12', '2024-03-16', '/affectus/eum/omnino.bmp', 'Rationibus confirmare, tantum satis esse admonere. Interesse.', 9),
(100, 'CH.va-M23', 'CAD-3764', 100, 'National Changhua University of Education', '3884-YGU-387724', 'Iudicari. Ea quid percipit aut quid.', '2024-09-19', '2024-08-12', '/eruditi/videntur/plurimum.bash', 'Ut meminerit maximos morte finiri.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) DEFAULT NULL,
  `divisi` varchar(30) DEFAULT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `divisi`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(1, 297, 'WR7799/43/53', 'University of International Business and Economics', 'Sunt insatiabiles, quae non modo non repugnantibus, verum.', 'QVG-1241-H', 'TGW-4384', 'CWS-1442-TH', '2025-01-09', '2024-06-22', '/odia/invidiae/despicationes/adversantur/nec.ps1xml', 'Se isdem Euripidis fabulis delectari dicat, Latinas litteras oderit? Synephebos ego, inquit, potius Caecilii.', 7),
(2, 844, 'OL8716/08/28', 'Medical Academy in Lublin', 'Cuius causa haec finxerat, assecutus est. Nam si omnes veri erunt, ut Epicuri ratio.', 'UTJ-1010-R', 'TGW-4384', 'GVC-3287-GB', '2024-10-09', '2024-09-10', '/magna/afficitur/voluptate/potius.cfg', 'Quorum nihil oportere exquisitis rationibus confirmare, tantum satis.', 4),
(3, 366, 'SE1258/63/03', 'Holy Names College', 'Sed intus etiam in animis nostris inesse notionem, ut alterum.', 'QQA-0632-O', 'TPI-5271', 'QKL-6583-AR', '2024-11-25', '2024-03-28', '/cum/sole.deb', 'Sed cum ea, quae voluptaria.', 10),
(4, 783, 'AK3938/15/38', 'Universidad de Córdoba', 'Accurate autem quondam a L. Torquato, homine omni doctrina erudito, defensa est.', 'KYY-2936-N', 'VSD-3182', 'QYR-7321-LE', '2024-08-03', '2024-10-16', '/naturalem/omnium/ponderum/ut/explicabo.ps1', 'Praeter sedulitatem probarent, omnes mihi Epicuri sententiae.', 7),
(5, 268, 'HE3063/20/06', 'Universitas Bojonegoro', 'Greges! Quod fit etiam nunc ab Epicureis. Sed ad haec.', 'OYN-0984-B', 'TPI-5271', 'IVT-8555-AU', '2024-10-09', '2024-06-26', '/disputandum/putant/sed/quietae.css', 'Ruinae: censet enim eadem illa atomorum, in quo a nobis explicatam esse his litteris.', 3),
(6, 534, 'WF8670/30/49', 'Armenian State Agrarian University', 'Omnium cupiditatum ardore restincto. Cupiditates enim sunt insatiabiles.', 'NNX-2384-S', 'TGW-4384', 'MHY-0034-WW', '2024-02-18', '2024-10-12', '/lineam/numquam/fore/ut/hic/et.crt', 'Censes haec dicturum fuisse? Utrum igitur percurri omnem Epicuri.', 1),
(7, 415, 'RF9150/38/90', 'Katholieke Hogeschool Limburg', 'Sin autem summa voluptas est, ut Epicuro placet, nihil dolere, primum tibi recte.', 'HSK-8656-X', 'TGW-4384', 'YBG-7885-MB', '2024-02-12', '2024-02-10', '/appetendi/et/magna.pfx', 'Alias, et quidem tibi et declinationem istam.', 5),
(8, 160, 'NG8689/82/00', 'Ouachita Baptist University', 'Degendae et rerum gerendarum. Sic e physicis et fortitudo.', 'IFF-6626-H', 'KYY-5395', 'LAL-4426-NA', '2024-05-21', '2024-12-30', '/intercapedo/molestiae/igitur/neque/exhorrescere.db', 'Libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus omnes.', 6),
(9, 415, 'IG7224/31/41', 'Universidad Francisco de Paula Santander', 'Propter voluptatem et dolorem. Ad haec et quae.', 'QVB-7922-O', 'TPI-5271', 'VIT-8674-HV', '2024-10-27', '2024-12-18', '/eram/nescius/brute/cum/quae/plus.psm1', 'Constituamus aliquem magnis, multis, perpetuis fruentem et.', 9),
(10, 686, 'JI8003/31/53', 'Meijo University', 'Labor in varias reprehensiones incurreret. Nam quibusdam, et.', 'BAN-0378-Y', 'TGW-4384', 'LQK-8398-SX', '2024-02-10', '2024-06-12', '/vivendum/caritatem/praesertim/cum/vacare.wmv', 'Rebus emolumenti, quae pariuntur iniuria. Itaque.', 5),
(11, 381, 'WE4219/78/50', 'Kanazawa University', 'Solum iactant nec tantum in.', 'UOO-7553-D', 'CAD-3764', 'YIC-2032-ZQ', '2024-02-16', '2024-12-22', '/est/cur/illum.wav', 'Petentium sine causa eripuit atomis nec tamen necessariae, tertium, quae.', 7),
(12, 207, 'CO4270/15/03', 'Collège Boréal', 'Ibidem homo acutus, cum illud ocurreret, si omnia.', 'OLE-3058-X', 'VSD-3182', 'JAR-3961-MY', '2024-06-26', '2024-11-18', '/itaque/non/ob/ea/solum/legere.dbx', 'Epicurum. Nam si concederetur, etiamsi ad corpus referri, nec ob eam.', 7),
(13, 809, 'XP6492/67/25', 'Shih Chien University', 'Evertunt, totam etiam labefactant saepe rem publicam. Ex cupiditatibus.', 'TDG-3754-G', 'TGW-4384', 'TDJ-3617-JW', '2024-12-13', '2024-08-07', '/non/inutile/nosque/ea/in.p12', 'Malit quam deserere ullam officii partem, ad ea, quae audiebamus, conferebamus, neque erat.', 7),
(14, 890, 'JZ4476/05/16', 'San Joaquin College of Law', 'Parabilis et terminatas habet; inanium autem cupiditatum nec modus ullus nec finis inveniri potest.', 'JGQ-1943-H', 'VSD-3182', 'NJX-1419-AE', '2024-12-11', '2024-05-21', '/eisque/nostrum/iudicium/noster.accdb', 'Haec, nisi molestum est, habeo quae velim. An me, inquam, nisi.', 7),
(15, 575, 'IF0112/11/76', 'The Government Sadiq College Women University Bahawalpur', 'Se aut pecuniae studuisse aut imperiis aut opibus aut gloriae. Nullas.', 'GII-4805-N', 'TGW-4384', 'YTP-6879-MU', '2024-03-04', '2024-09-08', '/explicari/verum/enim/iucunditatis.odg', 'Appellat, id est voluptatem. Homines optimi non.', 10),
(16, 727, 'ZT0493/55/61', 'Union College', 'Quae essent et naturales et.', 'YPF-9429-D', 'TPI-5271', 'MDE-5188-SK', '2024-12-13', '2024-02-15', '/voluptas/esset/bonum/sit.css', 'Ducem praebeat ad voluptatem. Sapientia.', 1),
(17, 387, 'FX2504/55/44', 'Philadelphia University', 'Possimus, molestia liberemus. Ut enim ad minim.', 'BMC-7907-Q', 'VSD-3182', 'ABI-0124-WG', '2024-09-02', '2024-02-09', '/ad/minuendas/cadere.key', 'Multos alios in primisque familiarem nostrum Posidonium. Quid? Theophrastus mediocriterne.', 9),
(18, 369, 'IR0224/51/19', 'Lupane State University', 'Constantia contra metum religionis et sedatio animi omnium rerum occultarum ignoratione sublata et moderatio.', 'QTW-9128-T', 'CAD-3764', 'EVE-1956-PG', '2025-01-09', '2024-07-12', '/esse/contenta/posset/nec/mihi.asp', 'Minime esse deterritum. Quae cum dixissem, magis ut.', 8),
(19, 528, 'OP2856/38/31', 'Universidade Federal do Vale do São Francisco', 'Enim sentit, quem ad modum eae semper voluptatibus inhaererent.', 'MSQ-1213-C', 'KYY-5395', 'NFM-3780-IE', '2024-09-22', '2024-12-10', '/et/nostrum/filio.cfg', 'Dicta sint neque sint conversa de Graecis? Nam si.', 7),
(20, 328, 'QX1065/94/50', 'Lithunian Institute of Physical Education', 'Has res esse tractatas, ne ipsos quidem Graecos est cur verear, ne.', 'AJL-4629-J', 'KYY-5395', 'GFY-4191-RT', '2024-04-03', '2024-08-28', '/tum/iracundiae/quisquam.png', 'Diceret? Aliena dixit in physicis nec ea ipsa, quae ab illo inventore.', 8),
(21, 114, 'FM0245/87/56', 'State University of New York at Oswego', 'Quae pariuntur iniuria. Itaque ne iustitiam quidem recte quis dixerit per se.', 'KSD-9461-F', 'CAD-3764', 'RLY-0897-FJ', '2024-05-20', '2024-07-14', '8522-this.pdf', 'Meminit et praesentibus ita potitur, ut animadvertat quanta sint.', 4),
(22, 789, 'FF5830/89/84', 'Jawaharlal Nehru Technological University', 'Facilius id, quod sentiant non esse faciendum, ii voluptatem maximam adipiscuntur praetermittenda.', 'IFU-4612-E', 'CAD-3764', 'XQB-8711-CC', '2024-11-09', '2024-08-26', '/quidem/enim.7z', 'Istius philosophi non offendit; nam et laetamur amicorum laetitia aeque atque.', 9),
(23, 401, 'OR1148/56/69', 'Shahrood University of Medical Sciences', 'Paranda nobis solum ea, sed fruenda etiam sapientia est; sive hoc.', 'SML-9310-M', 'TPI-5271', 'JMH-2074-WC', '2024-10-30', '2025-01-29', '/non/victi.xml', 'Comparandae voluptatis -- Quam autem ego dicam voluptatem, iam videtis, ne invidia.', 6),
(24, 396, 'RE6372/51/26', 'University of Mostar', 'Maxime, quod ipsa natura divitias, quibus contenta.', 'CQH-5678-S', 'KYY-5395', 'INF-5393-RM', '2024-10-16', '2024-06-30', '/in/hae/esse/aliter.csr', 'Exquisitaque doctrina philosophi Graeco sermone tractavissent, ea Latinis litteris.', 5),
(25, 174, 'UG8912/30/51', 'Universidad de Alcalá de Henares', 'Leniter arridens: Tu quidem, inquit, totum Epicurum paene e philosophorum choro sustulisti. Quid ei.', 'CCE-1720-E', 'TGW-4384', 'XQV-3855-DU', '2024-05-20', '2024-12-06', '/dediti/alii/petulantes/alii/qua.mds', 'Reperiri. Quapropter si ea, quae hoc non minus declarant, sed videntur leviora, veniamus.', 10),
(26, 998, 'SH4684/81/87', 'California State University, Channel Islands', 'Rerum bonarum et malarum maxime hominum vita vexetur, ob eumque errorem et voluptatibus.', 'MIP-5510-N', 'KYY-5395', 'ZJA-7698-QG', '2024-03-27', '2024-12-03', '/turbulenta/concursio/hunc/enim.ps1xml', 'Quamque iucunda, neque pendet ex futuris.', 10),
(27, 648, 'WZ3169/25/86', 'Hadhramout University of Science and Technology ', 'Est voluptatem et dolorem. Ad haec et quae vel aliter.', 'NNR-3520-D', 'TGW-4384', 'HOF-8228-UA', '2024-03-23', '2024-03-07', '/si/afferat/sensibus.img', 'Quam deserere ullam officii partem, ad ea, quae sint coniuncta explicabo brevi.', 5),
(28, 927, 'AH3827/23/92', 'Universidad la Concordia', 'Tam egregios viros censes tantas.', 'DZE-7574-J', 'VSD-3182', 'UYU-8906-IV', '2024-09-30', '2024-06-25', '/iis/existimare/qui/legerint/in.xlsx', 'Iudicium et nostrum scribendi ordinem adiungimus, quid habent, cur Graeca anteponant iis.', 3),
(29, 41, 'YF4763/10/62', 'Universidad Domingo Savio', 'Amicitia quasi claudicare videatur. Itaque primos congressus copulationesque et consuetudinum.', 'AMY-9062-Z', 'VSD-3182', 'AXQ-5487-IM', '2024-07-03', '2024-07-04', '/nisi/non.pdf', 'Sit. Erit enim iam de omnium.', 4),
(30, 287, 'NB7104/36/83', 'Philosophisch-Theologisches Studium Erfurt, Staatlich anerkannte Wissenschaftliche Hochschule', 'Ut sine cura metuque vivamus animumque et corpus, quantum efficere possimus.', 'DLS-6403-S', 'TGW-4384', 'OZZ-5590-WH', '2025-01-03', '2024-12-25', '/neque/tibi.rpm', 'Isdem rebus ne Graecos quidem legendos putent. Res.', 3),
(31, 646, 'DI6049/56/12', 'International University of Japan', 'Sit, ut tollatur error omnis imperitorum intellegaturque ea, quae sensum.', 'RRO-5547-G', 'TGW-4384', 'VOV-1975-TG', '2025-01-03', '2024-06-11', '/nihil/nam.wmv', 'Quaeritur, sit pulcherrimum. Etenim si loca, si fana, si urbes, si.', 4),
(32, 165, 'QI9662/98/86', 'Universidad Autonoma  de Durango', 'Sed tantum studium tamque multam operam ponendam.', 'SFL-3181-A', 'CAD-3764', 'ZDK-7274-ZZ', '2024-07-26', '2024-12-28', '/poetis/evolvendis/ut/dolorem.exe', 'Et percipi. Quos qui tollunt et nihil posse percipi dicunt.', 3),
(33, 481, 'GX8530/07/56', 'De La Salle University', 'Dolore caret, id in hominum consuetudine facilius fieri.', 'UIT-9739-Z', 'TGW-4384', 'NVG-3560-TF', '2025-01-20', '2024-05-08', '/haeret/et.bash', 'Se indicaverunt. Quodsi qui satis sibi contra hominum.', 3),
(34, 994, 'QR9090/74/92', 'Rajiv Gandhi University', 'Num desistunt de isdem, de.', 'RTB-8788-X', 'CAD-3764', 'QMS-8833-WP', '2024-04-06', '2024-05-12', '/amicitiam/tueri/nisi/aeque/amicos/latinis.mp3', 'Quid ex eo credo quibusdam usu venire; ut abhorreant a Latinis, quod.', 7),
(35, 19, 'RI8218/26/95', 'Universiti Malaysia Sabah', 'Videtur quibusdam stabilitas amicitiae vacillare, tuentur tamen.', 'RZG-4631-L', 'VSD-3182', 'KSN-9096-CN', '2024-07-28', '2024-06-30', '/fugienda/est/summum/profecto/malum/involuta.cmd', 'Sive aliae declinabunt, aliae suo nutu.', 2),
(36, 405, 'GM3682/76/27', 'Punjab Agricultural University', 'Esse, ut eius magnitudinem celeritas, diuturnitatem allevatio.', 'JKP-5396-W', 'TGW-4384', 'GZY-6563-UO', '2024-09-21', '2024-02-10', '/nostrum/scribendi/ordinem/disserendi.aspx', 'Altera philosophiae parte. Quae est quaerendi ac disserendi, quae logikh.', 1),
(37, 685, 'LM1566/20/81', 'Université de Nantes', 'Nec ad commodius disserendum viam. In physicis plurimum posuit. Ea scientia et verborum vis.', 'NKT-0029-X', 'TGW-4384', 'XAG-7161-FP', '2024-04-07', '2024-08-18', '/faciendum/ii/voluptatem/maximam/id.jsp', 'Sicut nostrum Triarium, minus ab eo nos abducat? Sin laboramus.', 7),
(38, 563, 'MV3968/00/20', 'Fachhochschule Burgenland', 'Etiam oportet in eo, qui ita sit affectus, et firmitatem animi nec mortem nec.', 'CIC-5100-J', 'TGW-4384', 'CXX-3125-MQ', '2024-04-25', '2024-12-11', '/praeterea/viam.mkv', 'Dolor sit, amet, consectetur, adipisci velit.', 2),
(39, 758, 'RG2670/46/55', 'University of Wales Institute, Cardiff', 'Rectas res atque laudabilis eo referri, ut.', 'MCY-3399-B', 'TPI-5271', 'CEX-5242-RU', '2024-04-02', '2024-11-02', '/molestiae/igitur/neque/stultorum/et.ods', 'Semper afficit cum vi sua atque natura, quod.', 8),
(40, 799, 'DQ3934/97/76', 'Sonoda Women\'s University', 'Admirer, cur in gravissimis rebus non delectet eos.', 'BKE-5326-C', 'TGW-4384', 'DDY-6550-XG', '2024-03-03', '2024-05-18', '/fingi/potest/habendus.bmp', 'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 10),
(41, 711, 'AD2642/98/92', 'American University Extension, Okinawa', 'Videtur. Ac fieri potest, ut propemodum iustioribus.', 'QRU-0847-Y', 'TPI-5271', 'GLE-5036-XX', '2024-05-21', '2024-07-16', '/arbitrarer/plura/suscepi/veritus/ne/ea.mdb', 'Nec praeteritas voluptates effluere patiatur earumque assidua recordatione laetetur, quid est, cur nostri.', 7),
(42, 69, 'CM6866/26/08', 'Georgian Technical University', 'Incorruptis atque integris testibus, si infantes pueri, mutae etiam bestiae paene loquuntur.', 'JPF-5050-K', 'TPI-5271', 'HDY-4949-JZ', '2024-02-27', '2024-09-08', '/qui/haec/subtilius/velint/tradere/tibi.pssc', 'Et carum esse iucundum est propterea, quia tutiorem vitam et voluptatem.', 8),
(43, 741, 'NC7088/15/00', 'New York Institute of Technology', 'Aliae quoque causae, sed multitudinem haec maxime allicit, quod.', 'VMW-2626-D', 'VSD-3182', 'RKZ-3541-IH', '2024-04-28', '2024-02-13', '/verear/ne/ad/eam/corporis.sql', 'Faciant, incidant in maiorem. Ex quo intellegitur nec intemperantiam propter.', 10),
(44, 982, 'CF0984/41/15', 'Universiti Teknologi Mara', 'Caritatem, praesertim cum omnino nulla sit.', 'NTU-6248-G', 'TPI-5271', 'ZPZ-7546-LP', '2024-12-31', '2024-12-06', '/est/una/quae/maestitiam/architecto.sh', 'Sint, feramus, si minus, animo aequo e vita, cum ea non.', 9),
(45, 180, 'NC1326/14/74', 'Universidad del Quindío', 'Conferebamus, neque erat umquam controversia, quid ego intellegerem, sed quid probarem. Quid igitur est?', 'RBR-6613-W', 'TPI-5271', 'YTA-6599-NU', '2024-05-23', '2024-04-06', '/clariora/sunt/si/sensum.mshxml', 'Nominis capti quid natura postulet non intellegunt, errore maximo, si Epicurum audire voluerint, liberabuntur.', 9),
(46, 266, 'FB7875/46/48', 'Otterbein College', 'Certae stabilique sententiae quae sint coniuncta.', 'KQW-8453-O', 'KYY-5395', 'KTV-7290-YB', '2024-12-25', '2024-02-08', '/esset/non.jsp', 'Rebus alia ratione compositis, quid est, cur nostri a nostris.', 5),
(47, 85, 'DT8782/09/05', 'International Institute for Geo - Information Science and Earth Observation', 'Etiam magis, quorum ille iudicium reformidans Tarentinis ait se et alliciat suapte natura.', 'LER-1514-Z', 'CAD-3764', 'VNJ-5939-YS', '2024-02-10', '2024-09-28', '/defensa/et/collaudata/est/cum/meis.doc', 'Est tam invidus, qui ab eo dissentiunt, sed.', 6),
(48, 705, 'EX1683/17/22', 'Shandong Agricultural University', 'Omnis chorusque: \'chaere, Tite!\' hinc hostis mi Albucius, hinc inimicus. Sed iure.', 'UIA-8156-G', 'CAD-3764', 'JUM-0633-RB', '2024-08-17', '2024-08-23', '/ut/necessariae/nec/in.zip', 'Inertissimae segnitiae est aut in armatum hostem impetum.', 6),
(49, 948, 'HF0328/49/75', 'St. Clair College', 'Eadem de amicitia disputatum. Alii cum eas voluptates, quae ad amicos pertinerent, negarent esse.', 'RBD-1666-F', 'TGW-4384', 'PQE-2612-QS', '2025-01-13', '2024-12-29', '/certamen/est/tuo/vero/id/quibus.jks', 'Voluptates expetendam et dolorem ipsum per se esse.', 2),
(50, 736, 'NA5592/61/51', 'Fine Arts Academy in Katowice', 'Ita videri necesse est, non expeteretur.', 'BSB-0434-N', 'KYY-5395', 'EAE-2895-CX', '2025-01-15', '2024-05-26', '/intellegunt/errore/laborum.vcd', 'Nomine, virtutem autem nixam hoc honesto nullam requirere voluptatem atque ad beate.', 2),
(51, 66, 'YU1023/50/28', 'Oakland City University', 'Ut concursionibus inter se cohaerescant.', 'FDT-1912-W', 'KYY-5395', 'MXC-0213-WH', '2024-11-23', '2024-06-10', '/se/nobis/ducem/etenim.ogg', 'Ad respondendum reddidisti. Quorum facta quem ad modum temeritas et libido.', 9),
(52, 693, 'YL7250/62/81', 'Nagoya Women\'s University', 'Voluptate victi faciant id, quod propositum est, summum bonum diceret.', 'TUN-1115-V', 'VSD-3182', 'KKB-7363-KQ', '2024-04-29', '2024-12-13', '/esse/quarum.json', 'Et errore naturae finibus contentus sine aegritudine possit et sine metu vivere.', 4),
(53, 199, 'LC8307/08/88', 'University of Education', 'Omnis rectas res atque laudabilis eo referri.', 'VDL-8654-L', 'CAD-3764', 'RUM-8697-WW', '2024-03-18', '2024-07-09', '/dolor/sit/expectat.xml', 'Posse, quam ex hoc facillime perspici potest: Constituamus aliquem magnis, multis, perpetuis fruentem et.', 1),
(54, 171, 'UM2532/25/45', 'Tashkent Pharmaceutical Institute', 'Sensu iudicari, sed animo etiam ac ratione intellegi posse et voluptatem.', 'XPF-0770-G', 'TPI-5271', 'GDL-2502-LU', '2024-02-10', '2024-08-29', '/vestrae/voluptas.keystore', 'Perpetiuntur, ne, si id non faciant, incidant in maiorem. Ex quo vitam amarissimam.', 10),
(55, 937, 'SW7581/94/76', 'Warburg Institute, University of London', 'In alios caeco impetu incurrunt, sed intus etiam in animis inclusae inter se.', 'FPB-7056-M', 'KYY-5395', 'FCC-9849-MX', '2024-05-27', '2024-05-18', '/nullo/modo/poterimus/sensuum/non.ods', 'Eos, quos nominavi, cum Attico nostro frequenter audivi, cum.', 7),
(56, 725, 'WL4184/85/07', 'International Colleges of Islamic Science', 'Quibus partis confirmatur animus et a falsis initiis profecta vera esse non possunt.', 'YBV-5322-P', 'TGW-4384', 'KTN-0195-DI', '2025-01-10', '2024-11-15', '/dolorum/effugiendorum/gratia/sed/sapientiam.apk', 'Explicatam esse his litteris arbitramur, in quibus, quantum.', 8),
(57, 603, 'TA0318/89/73', 'Panteios University of Economics and Political Sciences Athens', 'Ipsius et ratione administrari neque maiorem.', 'GHW-1760-W', 'KYY-5395', 'AEX-6957-QC', '2025-01-09', '2024-06-12', '/et/caritatem/quae/efficiantur.csr', 'Declinabunt, aliae suo nutu recte ferentur, primum erit hoc quasi.', 2),
(58, 308, 'SP0789/12/79', 'Angeles University', 'Multi etiam, ut te consule, ipsi se indicaverunt. Quodsi qui satis.', 'ERS-8062-Q', 'TGW-4384', 'QWH-0812-LP', '2024-02-20', '2024-05-11', '/placatae/tranquillae/quietae/beatae/vitae/epicurei.psc1', 'Malorum memoria torquentur, sapientes bona praeterita grata.', 4),
(59, 936, 'KI2154/50/67', 'Senzoku Gakuen College', 'Probatus videretur et iis, quos.', 'WLL-8726-B', 'TPI-5271', 'JLE-9664-QZ', '2024-11-13', '2025-01-26', '/esse/albam/dulce/mel/fuisse.xml', 'Necesse est! Animi autem voluptates et dolores animi quam corporis. Nam.', 3),
(60, 701, 'TL6846/70/79', 'University of Pecs', 'Plato, in musicis, geometria, numeris, astris contereret, quae et splendide dicta sint neque sint.', 'YHR-2636-D', 'TGW-4384', 'XJV-0097-QD', '2024-04-14', '2024-09-30', '/linguam/non/scripta.json', 'Quod vero securi percussit filium, privavisse se etiam videtur multis voluptatibus.', 6),
(61, 727, 'GM3267/19/17', 'Universidade Catolica Portuguesa', 'Saepe formidines. Denique etiam morati melius erimus, cum didicerimus.', 'TJT-6079-E', 'VSD-3182', 'OAF-9913-JC', '2024-11-01', '2024-09-17', '/quo/sint/omnia/laboris.bmp', 'Si ob aliquam causam ista, quae sine.', 2),
(62, 282, 'AP0746/33/20', 'National Dong Hwa University', 'Itaque primos congressus copulationesque et consuetudinum instituendarum voluntates fieri propter voluptatem; quod.', 'WHA-4557-R', 'VSD-3182', 'UKN-9892-TV', '2024-07-30', '2024-09-09', '/quales/eius/maiores/a.js', 'Redeamus; de hominibus dici non necesse est. Tribus igitur modis video.', 5),
(63, 585, 'JN7496/90/09', 'University of the Southern Caribbean', 'Ex cupiditatibus odia, discidia, discordiae, seditiones, bella nascuntur, nec eae.', 'PSJ-4912-E', 'VSD-3182', 'XZU-1268-ZT', '2025-01-05', '2024-05-06', '/atomis/nec/tamen/corrigere.asp', 'Si vero molita quippiam est, quamvis occulte fecerit, numquam tamen.', 1),
(64, 377, 'UM0048/26/83', 'Universidad de Tarapacá', 'Et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium.', 'XMQ-0442-G', 'TPI-5271', 'EUT-3509-CF', '2024-03-09', '2024-02-20', '/neque/stultorum/soleat.jks', 'Qui studiose antiqua persequeris, claris et fortibus viris commemorandis eorumque factis non emolumento aliquo.', 10),
(65, 493, 'LF2636/80/33', 'Samara State Aerospace University', 'Iustitia restat, ut de utilitatibus.', 'LQM-6346-R', 'TGW-4384', 'THI-7682-LI', '2024-07-28', '2024-04-10', '/facere/qui/plura.mshxml', 'Ut nulli propter eas consequantur.', 8),
(66, 512, 'ZD4591/86/95', 'Maharishi University of Management', 'Oratione victi sententia desistemus. Nisi autem rerum natura cognita levamur superstitione, liberamur.', 'PAX-8895-O', 'VSD-3182', 'VHB-1661-IR', '2024-08-18', '2024-03-13', '/quid/tanta/inventore.pptx', 'Hoc tempus numquam est aut fingi potest?', 4),
(67, 159, 'JL2243/28/77', 'Izmir Institute of Technology', 'Temperantiam postulant in eo, quod sit a dolore corporis praesenti futurove seiunctum.', 'ZAV-9161-I', 'TGW-4384', 'QDS-5675-KW', '2024-08-05', '2024-08-19', '/nominata/est/voluptas/litteris.priv', 'Plerique autem, quod tenere atque servare id, quod maxime placeat, facere possimus.', 6),
(68, 415, 'OI3061/70/33', 'Anglia Ruskin University', 'Satis esse admonere. Interesse enim inter argumentum conclusionemque rationis.', 'EEH-6275-V', 'VSD-3182', 'PJU-5544-OH', '2024-05-24', '2024-04-19', '/in/philosophia/tum/id/quod/provident.xls', 'Fieri minus; ita effici complexiones et copulationes et.', 2),
(69, 980, 'XR0916/20/09', 'Private Fachhochschule für Wirtschaft und Technik Vechta/Diepholz', 'Et gravissimas res consilio ipsius et ratione administrari neque maiorem voluptatem ex infinito tempore.', 'SKX-4409-T', 'TGW-4384', 'TTS-9147-EP', '2024-05-25', '2024-06-01', '/cum/stultorum/vitam/cum/sua/tua.rtf', 'Et dolorem ipsum per se ipsam optabilem, sed.', 1),
(70, 801, 'UM8367/07/02', 'Touro University', 'Sit, amet, consectetur, adipisci velit, sed quia maiores consequatur. Eadem fortitudinis ratio reperietur.', 'AJB-4448-R', 'CAD-3764', 'KKK-8972-BH', '2024-06-18', '2025-01-02', '/causa/exquisitaque.yml', 'Verum etiam summam voluptatem. Quisquis enim sentit, quem ad modum sit affectus.', 6),
(71, 364, 'PN1832/33/39', 'Jinan University', 'Stultorum vitam cum sua comparat, magna afficitur.', 'WUR-0435-B', 'TGW-4384', 'NQV-1372-SW', '2024-06-11', '2024-11-08', '/etsi/potius.yml', 'Gravissimis rebus non delectet eos sermo patrius, cum idem.', 7),
(72, 926, 'LH1207/66/37', 'Ecole Française de Papeterie et des Industries Graphiques', 'Hoc institutionem omnino amicitiae non posse reperiri. Quapropter si ea, quae.', 'HFO-6288-F', 'CAD-3764', 'BXY-4387-UJ', '2024-08-04', '2024-03-21', '/mors/sensu/careat/homini.keystore', 'Natum sit, voluptatem appetere eaque gaudere ut summo bono, dolorem.', 7),
(73, 881, 'TU3432/80/89', 'Kyoto Sangyo University', 'Beate vivendum sapientia comparaverit, nihil esse.', 'IPJ-4004-R', 'TPI-5271', 'CIJ-0868-ZL', '2024-07-31', '2025-01-25', '/liberabuntur/istae/enim/vestrae/eximiae/quos.p12', 'Physicis nec ea ipsa, quae ab illo inventore veritatis.', 10),
(74, 981, 'HO0040/88/76', 'University of St. Andrews', 'Quidem videtur. Ac fieri potest, ut errem, sed ita prorsus existimo, neque eum Torquatum.', 'OTG-7742-V', 'TGW-4384', 'VAE-2036-BE', '2025-01-08', '2024-06-17', '/patre/audiebam/facete/et/urbane/restincto.rtf', 'Bello animadversionis metu contineret, saluti.', 10),
(75, 804, 'PI7021/27/93', 'Ecole Nationale Supérieure d\'Electronique et de Radioelectricite de Grenoble', 'Illaberetur, nec manus esse contenta posset nec ulla pars.', 'LQK-8929-I', 'VSD-3182', 'FEL-7747-TF', '2024-04-13', '2024-12-19', '/possumus/quam/ob/illis.mdb', 'Existimo. Quamquam philosophiae quidem vituperatoribus satis responsum est eo libro.', 2),
(76, 641, 'FP9247/91/28', 'University of Holy Quran and Islamic Siences', 'Autem tanta ex improbis factis ad minuendas vitae molestias accessio potest fieri, quanta ad.', 'IDZ-1589-J', 'TGW-4384', 'PWJ-7809-SV', '2024-02-15', '2024-12-26', '//torquem/utinam.mp4', 'Esse bonorum eum voluptate vivere. Huic certae stabilique sententiae.', 2),
(77, 599, 'NO9350/14/74', 'Georg-Simon-Ohm-Fachhochschule Nürnberg', 'Dolore eu fugiat nulla pariatur. Excepteur.', 'TBB-1730-V', 'KYY-5395', 'ZKM-5945-OO', '2024-09-27', '2024-09-28', '/epicuro/scriptum/est/et/leniter.aspx', 'Virtus et cognitio rerum, quod minime.', 6),
(78, 450, 'PW3057/59/67', 'Johns Hopkins University', 'Scripta dicunt contemnere. In quibus hoc primum est in voluptate ponit, quod summum bonum.', 'JOO-6034-M', 'CAD-3764', 'ERE-9986-BS', '2024-06-18', '2024-09-07', '/inanitate/omni/cupiditates.gpg', 'Morborum aliquo laborat, nemo igitur est difficilius satis facere.', 3),
(79, 706, 'WC3345/94/48', 'Universidad Autónoma Metropolitana - Azcapotzalco', 'Dolere. Sed ut perspiciatis, unde omnis iste natus error sit.', 'VPN-8766-R', 'TGW-4384', 'EFZ-1842-DM', '2024-11-14', '2024-05-24', '/tradidisse/quae/pertinerent/ad/quae.wmv', 'Eaque gaudere ut summo bono, dolorem aspernari ut summum.', 9),
(80, 425, 'KL4536/86/20', 'Lyceum of the Philippines University', 'Ut omnes bene sanos in viam placatae, tranquillae, quietae, beatae vitae dicta.', 'MHW-8338-H', 'KYY-5395', 'XJQ-6992-KE', '2024-10-07', '2024-04-18', '/id/reprehendunt/si/remissius/agatur/suo.rpm', 'Constringendos nec quid eventurum sit provident ob eamque causam.', 7),
(81, 284, 'FT4348/26/73', 'Hyogo University', 'Et metus et aegritudines ad dolorem referuntur, nec praeterea est res ulla.', 'XCO-0130-M', 'TGW-4384', 'JCZ-6236-RJ', '2024-10-21', '2025-01-08', '/neque/depravate/iudicant/neque/corrupte/et.jsp', 'Illa ingenia transferrem. Sed id neque feci.', 8),
(82, 349, 'HQ0699/93/51', 'Universidad de Colima', 'Hanc ego cum teneam sententiam.', 'PCC-5689-A', 'TPI-5271', 'LFF-2548-SY', '2024-04-21', '2024-08-05', '/ut/omittam/pericula/labores/occultum.mp4', 'Ista sequimur, ut sine cura metuque vivamus animumque et corpus, quantum efficere possimus, molestia.', 10),
(83, 71, 'LN8133/94/79', 'Universidad Tecnologica de la Mixteca', 'Rebus non delectet eos sermo patrius, cum idem fabellas Latinas.', 'AT.pq-P72', 'VSD-3182', 'ZAO-2974-UA', '2024-05-22', '2024-02-04', '/neglegit/mortem/de/diis/nonne.torrent', 'Varias reprehensiones incurreret. Nam quibusdam, et iis servire, qui vel utrisque litteris.', 1),
(84, 256, 'XQ6036/63/33', 'Universidad de Panam', 'Tolerabiles sint, feramus, si minus, animo aequo e vita, cum ea non placeat.', 'AT.pq-P72', 'VSD-3182', 'FHO-4935-JU', '2024-08-12', '2024-10-15', '3646-Snapshot_2025-01-25_13-05-46.png', 'Pronuntiaret eum non talem videri fuisse in imperio.', 1),
(85, 764, 'RB3871/78/95', 'Kuban State University of Technology', 'Cives mei, nec cum istis tantopere pugnare, qui Graeca legere malint, modo legant.', 'EEH-1094-L', 'KYY-5395', 'PWW-1707-QJ', '2024-04-18', '2024-05-11', '/videatur/itaque/nec.msh', 'Sine causa? Quae fuerit causa, mox videro; interea.', 3),
(86, 303, 'WP7596/20/21', 'Notre Dame College', 'Graecam. Quando enim nobis, vel dicam aut oratoribus bonis aut poetis, postea.', 'KYN-4754-R', 'KYY-5395', 'BVK-2649-QS', '2024-07-13', '2024-04-26', '/hoc/quoque/angore.htm', 'Cum dixisset, Explicavi, inquit, sententiam meam, et eo.', 4),
(87, 567, 'SN7632/49/04', 'Pepperdine University', 'Voluptatum adipiscendarum causa aut dolores suscipiantur maiorum dolorum effugiendorum gratia.', 'JRP-0470-N', 'CAD-3764', 'UBR-8037-JS', '2024-02-15', '2025-01-09', '/aperiri/altera/prompta/nobis.ps1xml', 'Provident, similique sunt in culpa, qui officia deserunt.', 2),
(88, 943, 'YU4197/75/47', 'Lancaster Bible College', 'Ita ferri, ut concursionibus inter se reprehensiones non sunt.', 'CSM-2873-V', 'TPI-5271', 'QRM-3134-DH', '2024-03-06', '2024-09-22', '/nec/patientia/nec/assiduitas/nec/defuit.html', 'Tale metuamus. Iam illud quidem perspicuum est, maximam animi aut voluptatem aut molestiam plus.', 8),
(89, 134, 'RB9304/49/35', 'Sookmyung Women\'s University', 'Sic eam firme graviterque comprehenderit, ut omnes bene sanos in viam.', 'DQX-3616-B', 'TPI-5271', 'NGO-2919-LU', '2024-03-16', '2024-11-14', '/non/solum/praesentibus/fruuntur/morbi.odp', 'Severitatem in eo essent. Quae cum dixisset, Explicavi, inquit, sententiam meam.', 8),
(90, 937, 'XQ6409/03/76', 'Universidad Pedagógica Experimental Libertador', 'Utrumque et ortum esse e corpore et.', 'DVC-9421-L', 'TPI-5271', 'UEJ-2060-NI', '2024-04-20', '2024-07-31', '/allicit/quod/ita/institutionem.wma', 'Vivi, nisi sapienter, honeste iusteque vivatur, nec sapienter.', 8),
(91, 585, 'ZR6811/32/52', 'Lambuth University', 'Esse et voluptates repudiandae sint et molestiae.', 'PYZ-2647-W', 'TGW-4384', 'NGP-9633-ZS', '2024-06-15', '2024-03-05', '/commodo/consequat/duis/aute/suaviter.yml', 'Sunt. Praeclare enim Epicurus his paene verbis: \'Eadem\', inquit, \'scientia confirmavit.', 9),
(92, 960, 'EG6707/72/83', 'Catholic University in Ružomberok', 'Nostris de amicitia disputatum. Alii cum eas voluptates, quae ad quietem et ad.', 'KTA-1117-C', 'TPI-5271', 'XWF-6826-TO', '2024-12-08', '2024-11-05', '/cognitio/rerum/autem.aac', 'Sunt tota Democriti, atomi, inane, imagines.', 7),
(93, 733, 'QJ3854/08/36', 'Ch. Charan Singh University', 'Ego assentior, dum modo de isdem rebus ne Graecos.', 'GNA-7520-U', 'TGW-4384', 'JVQ-2941-QZ', '2024-10-13', '2024-07-12', '/posse/quam/ex/hoc/percipiatur/ea.asc', 'Timentis, quod mors sensu careat, dolor in longinquitate levis, in gravitate brevis soleat esse.', 3),
(94, 320, 'NZ1185/49/67', 'University of Kurdistan - Hawler', 'Sit inter doctissimos summa dissensio, quis alienum putet eius esse dignitatis, quam.', 'FXX-5239-Y', 'KYY-5395', 'JRD-9182-ZY', '2024-06-09', '2024-10-20', '/sensuum/iudicia/defendere/quicquid/expetendum.pfx', 'Graecis expressas non inviti legant. Quis enim.', 10),
(95, 198, 'GL6794/20/06', 'Pace University  Pleasantville/Briarcliff', 'Omnia deorsus e regione inferiorem locum petentium sine.', 'ODR-7298-F', 'TPI-5271', 'CGA-4438-YG', '2024-12-27', '2024-07-12', '/in/rebus/aut/dicam.html', 'Eos censes aut in dolore. Omnis autem privatione doloris putat Epicurus.', 3),
(96, 161, 'SO2048/77/77', 'Adamson University', 'Si voluptas summum sit bonum, affirmatis nullam omnino fore. De qua omne.', 'GUI-0848-E', 'KYY-5395', 'OAU-3689-TM', '2024-08-13', '2024-08-04', '/mihi/sunt/voluptati/placet.svg', 'Autem, quod tenere atque servare id, quod sentiant.', 8),
(97, 443, 'EP7427/32/88', 'University of Virginia', 'Laudatur, industria, ne fortitudo quidem, sed ista sequimur.', 'DNI-0720-D', 'CAD-3764', 'RJS-9736-RO', '2024-05-02', '2024-04-21', '/non/satisfacit/insolens.htm', 'Igitur vera ratio bene sanos in viam placatae, tranquillae, quietae.', 9),
(98, 652, 'QD4884/25/22', 'Fine Arts Academy in Poznan', 'Senserit ille, tibi non vera videantur. Vide, quantum, inquam, fallare, Torquate.', 'DDS-4115-A', 'TPI-5271', 'KAB-5547-WO', '2025-01-24', '2024-05-23', '/sensu/iudicari/in.mp4', 'Ut aliquip ex ea commodo consequat. Duis aute irure dolor in.', 3),
(99, 598, 'TF6793/60/46', 'Kyungsung University', 'Concordia quadam placet ac leniat. Temperantia.', 'TVI-6735-Q', 'VSD-3182', 'KNF-0351-GP', '2024-05-01', '2024-06-09', '/modo/efficiatur/concludaturque/ratio/populo.odg', 'Imperitorum intellegaturque ea, quae voluptaria, delicata, mollis habeatur disciplina, quam gravis.', 3),
(100, 483, 'CY3987/15/87', 'Dire Dawa University', 'Nobis iniucundus labor. Iis igitur est.', 'PRF-1744-M', 'KYY-5395', 'QXN-4283-VN', '2024-12-30', '2024-05-24', '/eam/causam/non/multo/maiores/ultima.xls', 'Sublata cognitione et scientia tollitur omnis ratio et vitae.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'lvl3', 'a3f05c8283e5350106829f855c93c07d', 'Susanne Cleminshaw', '000.971.201.12', 3),
(2, 'evinsen41308', 'a3f05c8283e5350106829f855c93c07d', 'Emelita Vinsen', '766.733.612.30', 3),
(3, 'emckintosh27828', 'a3f05c8283e5350106829f855c93c07d', 'Ernaline McKintosh', '939.328.915.79', 3),
(4, 'lvl1', 'a3f05c8283e5350106829f855c93c07d', 'Rollins Crews', '371.637.804.50', 1),
(5, 'alidgertwood27183', 'a3f05c8283e5350106829f855c93c07d', 'Archie Lidgertwood', '354.178.904.16', 2),
(6, 'vgarthside25866', 'a3f05c8283e5350106829f855c93c07d', 'Vern Garthside', '853.222.430.13', 1),
(7, 'tantyshev1532', 'a3f05c8283e5350106829f855c93c07d', 'Thaine Antyshev', '227.940.772.05', 3),
(8, 'lvl2', 'a3f05c8283e5350106829f855c93c07d', 'Gene Hancorn', '641.233.766.93', 2),
(9, 'agoligher31368', 'a3f05c8283e5350106829f855c93c07d', 'Archambault Goligher', '842.604.622.63', 3),
(10, 'dchezier21951', 'a3f05c8283e5350106829f855c93c07d', 'Dani Chezier', '834.061.604.15', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`),
  ADD KEY `tbl_disposisi_id_surat_IDX` (`id_surat`) USING BTREE,
  ADD KEY `tbl_disposisi_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `tbl_klasifikasi_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `tbl_klasifikasi_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`),
  ADD KEY `tbl_sett_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `tbl_surat_keluar_kode_IDX` (`kode`) USING BTREE,
  ADD KEY `tbl_surat_keluar_id_user_IDX` (`id_user`) USING BTREE,
  ADD KEY `tbl_surat_keluar_divisi_IDX` (`divisi`) USING BTREE;

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `tbl_surat_masuk_id_user_IDX` (`id_user`) USING BTREE,
  ADD KEY `tbl_surat_masuk_divisi_IDX` (`divisi`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD CONSTRAINT `tbl_disposisi_tbl_surat_masuk_FK` FOREIGN KEY (`id_surat`) REFERENCES `tbl_surat_masuk` (`id_surat`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_disposisi_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  ADD CONSTRAINT `tbl_divisi_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD CONSTRAINT `tbl_klasifikasi_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD CONSTRAINT `tbl_sett_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

--
-- Constraints for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_2` FOREIGN KEY (`kode`) REFERENCES `tbl_klasifikasi` (`kode`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_3` FOREIGN KEY (`divisi`) REFERENCES `tbl_divisi` (`kode`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD CONSTRAINT `tbl_surat_masuk_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_surat_masuk_ibfk_2` FOREIGN KEY (`divisi`) REFERENCES `tbl_divisi` (`kode`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
