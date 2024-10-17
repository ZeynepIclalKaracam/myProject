-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2024, 21:14:42
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `users`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `accounts`
--

CREATE TABLE `accounts` (
  `id` int(25) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `title` varchar(25) NOT NULL,
  `imgname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `accounts`
--

INSERT INTO `accounts` (`id`, `user_name`, `password`, `title`, `imgname`) VALUES
(1, 'gurkankaracam', 'gk1234', 'admin', 'e1.jpg'),
(2, 'kazimozer', 'kazim1234', 'admin', 'e2.jpg'),
(3, 'ozlemdemir', 'ozlem1234', 'edit', 'k1.jpg'),
(4, 'gokhankaymaz', 'gokhan1234', 'edit', 'e3.jpg'),
(5, 'pelintahtaci', 'pelin1234', 'edit', 'k2.jpg'),
(6, 'tugbasezer', 'tugba1234', 'edit', 'k3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `id` int(25) NOT NULL,
  `caption` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`id`, `caption`, `content`, `writer`) VALUES
(6, 'İnsan Hakları: Evrensel Değerler ve Toplumsal Adal', 'İnsan hakları, insanın doğuştan sahip olduğu, evrensel ve eşit değerlere dayanan temel haklardır. Bu haklar, bireylerin onurunu koruma, özgürlüklerini ve güvenliklerini sağlama amacını taşır. İnsan hakları kavramı, tüm dünya genelinde toplumsal adaletin temel taşlarından biri olarak kabul edilmiştir. Bu makalede, insan haklarına dair temel kavramlar, evrim süreci ve günümüzdeki önemi üzerine odaklanacağız.', 'gurkankaracam'),
(7, 'İnsan Hakları Kavramı', 'İnsan hakları, tarih boyunca farklı kültürler ve toplumlar arasında değişen bir şekilde ifade edilmiştir. Ancak, modern anlamdaki evrensel insan hakları, İkinci Dünya Savaşı sonrasında oluşturulan Birleşmiş Milletler İnsan Hakları Evrensel Beyannamesi ile resmiyet kazanmıştır. Beyanname, her bireyin ırk, renk, cinsiyet, dil, din, siyasi veya diğer görüşleri, ulusal veya sosyal kökeni, mülkiyet, doğuş veya başka bir statü temelinde ayrımcılığa uğramaksızın eşit ve özgür doğduğunu belirtir.', 'gurkankaracam'),
(8, 'İnsan Haklarının Evrimi', 'İnsan hakları, zaman içinde evrimsel bir süreç geçirmiştir. Tarihsel olarak, birçok toplumda bireylerin hakları sınırlıydı ve ayrımcılıkla mücadele eden bir anlayış genellikle eksikti. Ancak, aydınlanma dönemi ve 20. yüzyılın ortalarından itibaren, insan hakları anlayışı güçlenmiş ve yaygınlaşmıştır. Bu evrim sürecinde, uluslararası sözleşmeler, antlaşmalar ve iç hukuk düzenlemeleri, insan haklarını güvence altına almak amacıyla oluşturulmuştur.', 'kazimozer'),
(9, 'İnsan Haklarının Temel İlkeleri', '\r\nİnsan Haklarının Temel İlkeleri:\r\nİnsan hakları, bir dizi temel ilkeye dayanır:\r\n1.	Evrensellik: İnsan hakları, ırk, cinsiyet, din veya diğer ayrımcı unsurlardan bağımsız olarak herkes için geçerlidir.\r\n2.	Eşitlik: Tüm bireyler, haklarını eşit bir şekilde kullanma hakkına sahiptir.\r\n3.	Adalete Saygı: İnsan hakları, adil bir hukuk sistemini ve adil yargılamayı içerir.\r\n4.	Dürüstlük ve İnsan Onuru: İnsan hakları, bireylerin onuruna saygı gösterilmesini ve insanlık değerlerine uygun davranılmasını talep eder.\r\n5.	Dokunulmazlık: İnsan hakları, işkence ve zalimlik gibi insan onuruna aykırı uygulamalara karşı net bir tavır alır.\r\n', 'kazimozer'),
(10, 'Günümüzde İnsan Hakları', 'Günümüzde, insan hakları evrensel bir değer olarak kabul edilmiştir, ancak birçok yerde ihlal edilmeye devam edilmektedir. Toplumlar arası farklar, ekonomik, sosyal ve politik nedenlerle hala varlığını sürdürmektedir. İnsan hakları savunucuları, bu hakların korunması ve yaygınlaştırılması için çaba göstermektedir. Teknolojik gelişmeler ve küreselleşme, insan hakları konusundaki bilinci artırmak ve bu hakları savunmak adına yeni olanaklar sunmaktadır.\r\nSonuç:\r\nİnsan hakları, evrensel değerler ve toplumsal adaletin temel taşlarıdır. Bu haklar, bireylerin özgürlüklerini, güvenliklerini ve onurlarını korumayı amaçlar. İnsan haklarına saygı göstermek, sadece bireylerin değil, aynı zamanda toplumların da refahını artırabilir. İnsan hakları evrensel bir sorumluluk ve çaba gerektirir ve bu mücadele, adil, özgür ve eşit bir dünya inşa etme yolundaki önemli adımlardan biridir.\r\n', 'kazimozer'),
(11, 'Kadın Hakları: Toplumsal Adalet ve Eşitlik İçin Bi', 'Kadın hakları, toplumların ilerlemesi ve sürdürülebilir kalkınma için temel bir unsurdur. Tarih boyunca var olan cinsiyet temelli ayrımcılık ve eşitsizlikle mücadele etmek, kadınların haklarını güvence altına almak ve toplumsal cinsiyet eşitliğini sağlamak, daha adil bir dünya inşa etmek için önemli bir adımdır. Bu makalede, kadın haklarına dair temel konuları ve günümüzdeki önemini ele alacağız.\r\nKadın Hakları Nedir?\r\nKadın hakları, kadınların insan haklarına saygı gösterilmesini ve eşit koşullarda toplumda var olmalarını savunan bir kavramdır. Bu haklar, eğitim, iş, siyaset, sağlık ve diğer birçok alanı kapsar. Kadın hakları, kadınların özgürce kararlar alabilmelerini, potansiyellerini gerçekleştirebilmelerini ve toplumun her düzeyinde eşit bir şekilde temsil edilmelerini hedefler.\r\nCinsiyet Temelli Ayrımcılık ve Zorluklar:\r\nNe yazık ki, birçok toplumda hala cinsiyet temelli ayrımcılık ve zorluklarla karşılaşan kadınlar bulunmaktadır. Ücret eşitsizliği, cinsel şiddet, ev içi şiddet, erken yaşta evlilik gibi sorunlar, kadın hakları mücadelesini güncel kılmaktadır. Kadınlar, karşılaştıkları bu zorluklarla mücadele etmek ve toplumsal eşitliği sağlamak için çeşitli platformlarda seslerini duyurmak zorundadırlar.\r\nEğitimde Kadın Hakları:\r\nEğitim, kadın haklarının temel bir unsuru olarak öne çıkar. Eğitimde eşitlik, kadınların potansiyellerini tam anlamıyla gerçekleştirmelerine yardımcı olur ve toplumsal cinsiyet eşitliğinin temellerini atar. Her kız çocuğu, erkek çocuklarıyla aynı fırsatlara sahip olmalıdır. Kadınların eğitim almaları, sadece bireysel gelişimleri için değil, aynı zamanda toplumların genel refahı için de önemlidir.\r\n', 'ozlemdemir'),
(12, 'Toplumsal Cinsiyet Eşitliği ve Ekonomik Katılım', '\r\nToplumsal cinsiyet eşitliği, kadınların ekonomik yaşama tam katılımını da içerir. Kadınların iş dünyasında liderlik pozisyonlarında daha fazla temsil edilmeleri ve ücret eşitsizliğinin azaltılması, toplumsal cinsiyet eşitliğinin bir göstergesidir. Kadınların ekonomik güçlerini kullanabilmeleri, hem bireylerin hem de toplumların refahını artırabilir.\r\nKadın Hakları ve Toplumsal Değişim:\r\nKadın hakları mücadelesi, sadece bireyleri değil, aynı zamanda toplumları da değiştirebilir. Cinsiyet temelli ayrımcılıkla mücadele ve kadın haklarına saygı gösterme, daha adil ve dengeli bir toplumun temellerini atabilir. Kadınların güçlenmesi, sadece kadınların değil, bütün bir toplumun gelişimine katkıda bulunabilir.\r\nSonuç:\r\nKadın hakları, toplumsal adaletin ve eşitliğin anahtarıdır. Kadınların insan haklarına saygı gösterilmesi, sadece bireylerin değil, aynı zamanda toplumların genel refahını artırabilir. Toplumsal cinsiyet eşitliğine odaklanan politikalar ve kültürel değişim, daha adil, eşit ve kapsayıcı bir dünya için önemli adımlardır. Kadın haklarına duyarlı toplumlar, daha sürdürülebilir ve insan odaklı bir gelecek inşa etmeye yönelik bir çaba sergilemiş olacaktır.\r\n', 'ozlemdemir'),
(13, 'Hayvan Hakları: Doğanın Bir Parçası Olarak Saygı G', 'Hayvan hakları, insanlık tarihi boyunca önemli bir konu olmuştur. Hayvanlar, dünyamızın birer parçası olarak ekosistemde önemli roller oynamakta ve insanların yaşam kalitesine doğrudan etki etmektedir. Bu makalede, hayvan haklarına dair temel kavramları, mevcut sorunları ve bu haklara saygı göstermenin önemini ele alacağız.\r\nHayvan Hakları Nedir?\r\nHayvan hakları, hayvanların yaşama, özgürlük, rahatlık ve ayrımcılık görmeme gibi temel haklara sahip olduğunu savunan bir kavramdır. Hayvan hakları, hayvanların sadece insanların istekleri doğrultusunda değil, kendi doğal davranış biçimleri içinde yaşama hakkına sahip olduğunu vurgular. Bu haklar, hayvanlara zulüm, kötü muamele ve istismarın önlenmesini amaçlar.\r\nMevcut Sorunlar:\r\nNe yazık ki, dünya genelinde hala birçok hayvan kötü muamele ve istismara maruz kalmaktadır. Endüstriyel tarım, deney hayvanları kullanımı, vahşi yaşamın ticarileştirilmesi gibi uygulamalar hayvanların haklarına ciddi şekilde zarar verebilmektedir. Ayrıca, kürk endüstrisi, hayvanat bahçelerindeki koşullar, kaçak avlanma gibi sorunlar da hayvan hakları ihlallerine neden olmaktadır.\r\n', 'gokhankaymaz'),
(14, 'Hayvan Haklarına Saygının Önemi', 'Hayvan haklarına saygı göstermek, sadece etik bir sorumluluk değil, aynı zamanda ekolojik dengenin ve sürdürülebilirliğin bir parçasıdır. Hayvanlar, ekosistemdeki dengenin korunmasında önemli bir rol oynarlar. Doğada her bir türün varlığı, diğer türlerle olan karmaşık etkileşimleri içerir. Bu nedenle, bir türün yok olması veya nüfusunun kontrolsüz artması, ekosistemde ciddi sorunlara yol açabilir.\r\nAyrıca, hayvan haklarına saygı göstermek, insan sağlığı ve refahını da etkiler. Sağlıklı hayvanlar, insanlara gıda kaynakları, ilaçlar ve diğer birçok fayda sağlar. Hayvanların kötü muamele gördüğü durumlar, zoonotik hastalıkların yayılmasına ve gıda güvenliği sorunlarına neden olabilir.\r\nHayvan Haklarına Duyarlılık:Hayvan haklarına saygı göstermek, bireylerin ve toplumların bilinç düzeyini artırmakla mümkündür. Hayvanlara yönelik kötü muamele ve istismarın önlenmesi için eğitim, yasal düzenlemeler ve etik standartlar önemlidir. Hayvanları koruma ve onların haklarına saygı gösterme, sadece bireylerin sorumluluğu değil, aynı zamanda toplumsal bir çaba gerektirir.\r\nSonuç:\r\nHayvan hakları, doğanın bir parçası olarak hayvanlara saygı göstermeyi ve onları korumayı amaçlar. Bu sadece etik bir mesele değil, aynı zamanda ekosistem dengesini ve insan sağlığını korumak için kritik bir öneme sahiptir. Hayvan haklarına duyarlı bir toplum, daha sürdürülebilir ve adil bir dünya için önemli bir adım atmış olacaktır.\r\n\r\n', 'gokhankaymaz'),
(15, 'Boşanma Davaları: Hukuki Süreç, Zorluklar ve Aile ', 'Boşanma, evlilik birliğinin resmi olarak sona erdiği ve eşlerin ayrı yaşamaya başladığı bir hukuki süreçtir. Boşanma davaları, bireylerin karşılıklı anlaşmazlıkları, duygusal zorluklar ve hukuki prosedürlerle birlikte bir dizi önemli konuyu içerir. Bu makalede, boşanma davalarının hukuki sürecini, karşılaşılan zorlukları ve aile hukukundaki bazı önemli gelişmeleri ele alacağız.', 'gokhankaymaz'),
(16, 'Boşanma Davasının Hukuki Süreci:', 'Boşanma davaları genellikle belirli bir hukuki süreç takip eder. İlk aşamada, bir taraf boşanma dilekçesini mahkemeye sunar. Bu dilekçe, boşanma sebeplerini ve taleplerini içerir. Daha sonra, mahkeme tarafları dinler ve varsa ortak çocukların velayeti, mal paylaşımı, nafaka gibi konuları ele alır. Mahkeme, taraflar arasında uzlaşma sağlanamazsa, bir boşanma kararı verir.\r\nKarşılaşılan Zorluklar:\r\nBoşanma davaları, bireyler için duygusal ve maddi zorlukları beraberinde getirir. Taraflar arasındaki anlaşmazlıklar, çocukların velayeti, mülkiyetin bölüşümü, nafaka gibi konularda uzlaşmazlık yaratabilir. Ayrıca, boşanma süreci, duygusal travmalar, stres ve belirsizlikle başa çıkma sürecini içerir.\r\n', 'pelintahtaci'),
(17, 'Aile Hukukundaki Gelişmeler:', 'Aile hukuku, toplumun evlilik, boşanma, velayet gibi aile ilişkilerini düzenleyen bir hukuk dalıdır. Günümüzde, aile hukukunda bir dizi önemli gelişme yaşanmaktadır. Medeni hukuktaki değişiklikler, çocuk haklarına daha fazla vurgu yapma eğilimindedir. Çocukların en iyi çıkarlarını koruma amacıyla velayet ve ziyaret hakları konusundaki yasal düzenlemeler gözden geçirilmekte ve güncellenmektedir.\r\nAlternatif Çözüm Yolları:\r\nSon yıllarda, boşanma davalarında alternatif çözüm yolları önem kazanmıştır. Arabuluculuk ve uzlaştırma gibi yöntemler, taraflar arasında daha az çatışmaya ve daha hızlı bir çözüme imkan tanır. Bu alternatif yöntemler, mahkeme sürecinden daha uygun maliyetli olabilir ve taraflara daha fazla kontrol sağlayabilir.\r\nSonuç:\r\nBoşanma davaları, karmaşık hukuki süreçleri ve duygusal zorlukları içeren ciddi meselelerdir. Hukuki süreç, mahkeme kararları, maddi varlıkların paylaşımı ve çocukların geleceği gibi konuları içerir. Bu nedenle, tarafların adil ve adil bir çözüme ulaşabilmeleri için iyi bir hukuki temsil ve profesyonel destek almaları önemlidir. Ayrıca, alternatif çözüm yolları da bu süreçte daha etkili bir yol sunabilir.\r\n', 'pelintahtaci'),
(18, 'Aile İçi Şiddetin Hukuktaki Yeri: Koruma, Adalet ve Farkındalık', 'Aile içi şiddet, birçok toplumda hala ciddi bir sorun olarak karşımıza çıkmaktadır. Bu sorun, sadece bireylerin değil, aynı zamanda toplumun genel güvenliği ve insan hakları açısından da büyük bir endişe kaynağıdır. Bu makalede, aile içi şiddetin hukuki boyutlarına, mevcut yasal düzenlemelere, koruma önlemlerine ve farkındalığın artırılmasına odaklanacağız.\r\nAile İçi Şiddet Nedir?\r\nAile içi şiddet, bir aile üyesinin diğerine karşı fiziksel, duygusal, cinsel veya ekonomik zarar verme amacı taşıyan her türlü saldırgan davranışı içerir. Bu şiddet türleri, ev içinde veya aile üyeleri arasında gerçekleşebilir. Kurbanlar genellikle çocuklar, eşler, yaşlı bireyler veya diğer aile üyeleri olabilir.\r\nHukuki Düzenlemeler ve Koruma:\r\nBirçok ülke, aile içi şiddetle mücadele etmek amacıyla yasal düzenlemeler oluşturmuştur. Bu düzenlemeler genellikle aile içi şiddetin önlenmesi, mağdurlara yardım ve suçluların cezalandırılmasını amaçlar. Koruma emirleri, aile içi şiddet mağdurlarını korumak için mahkemeler tarafından verilebilen önemli hukuki araçlardan biridir. Ayrıca, aile içi şiddetle mücadelede uzmanlaşmış mahkemeler, danışmanlık hizmetleri ve kriz merkezleri gibi kaynaklar da sağlanabilir.', 'pelintahtaci'),
(19, 'Aile İçi Şiddetin Cezai Sorumluluğu:', 'Aile içi şiddetin cezai sorumluluğu, suçun türüne ve şiddetin şiddetine bağlı olarak değişebilir. Fiziksel saldırılar, tecavüz, tehditler ve diğer şiddet eylemleri ceza hukuku kapsamında değerlendirilir. Aile içi şiddetle ilgili davalar genellikle titiz bir soruşturma ve adil bir mahkeme süreci gerektirir.\r\nKurban Hakları ve Destek Hizmetleri:\r\nAile içi şiddet mağdurları için kurban hakları ve destek hizmetleri de önemli bir rol oynar. Bu hizmetler, mağdurlara yasal destek, sığınma evleri, psikolojik destek ve toplumsal yeniden entegrasyon gibi konularda yardım sağlayabilir. Toplumda farkındalığı artırmak ve aile içi şiddetle mücadelede destek olmak amacıyla çeşitli kuruluşlar ve sivil toplum örgütleri de faaliyet göstermektedir.\r\nFarkındalık ve Eğitim:\r\nAile içi şiddetle mücadelede en etkili araçlardan biri, toplumda farkındalığın artırılması ve eğitim çalışmalarının yapılmasıdır. Bu, aile içi şiddetin toplumun her kesiminde ciddi bir suç olduğu ve toplumun bu tür davranışlara karşı sessiz kalmaması gerektiği konusunda bilinç yaratılmasına katkı sağlar.\r\nSonuç:\r\nAile içi şiddet, toplumsal bir sorun olmanın ötesinde bir hukuki mesele ve insan hakları ihlalidir. Hukuki düzenlemeler, koruma önlemleri, destek hizmetleri ve farkındalık çalışmaları, aile içi şiddetle mücadelede bütünlük içinde bir yaklaşımı destekler. Toplumun bu konuda bilinçlenmesi ve kurbanlara destek olunması, aile içi şiddetin azaltılması ve sonlandırılması için kritik öneme sahiptir.\r\n', 'pelintahtaci'),
(20, 'Ceza Hukuku: Adaletin Teminatı ve Toplumsal Düzenin Koruyucusu', 'Ceza hukuku, toplumun düzenini ve bireylerin güvenliğini sağlamak, suçlara karşı caydırıcı bir etki oluşturmak ve adil bir hukuk sistemi içinde yargılamayı temin etmek amacıyla oluşturulmuş bir hukuk dalıdır. Bu makalede, ceza hukukunun temel prensiplerini, işleyişini ve toplumdaki rolünü ele alacağız.\r\n\r\n\r\n1.	Hukukun Üstünlüğü: Ceza hukuku, hukukun üstünlüğü prensibi ile şekillenir. Bu prensip, herkesin hukuk kurallarına tabi olduğunu ve hukuki işlemlerin hukuki bir çerçeve içinde gerçekleşmesi gerektiğini belirtir.\r\n2.	Suç ve Cezanın İlişkisi: Ceza hukuku, suç işleyen bireylerin cezalandırılması ilkesine dayanır. Suçlar, kanunlar tarafından tanımlanır ve belirli eylemlere karşı belirlenmiş cezalar öngörülür.\r\n3.	Suçun Kanuniliği İlkesi: Ceza hukukunda suç ve ceza, önceden yazılmış kanunlara dayanmalıdır. Bir eylemin suç sayılabilmesi için, o eylemin kanunda suç olarak tanımlanmış olması gerekir.\r\n4.	Masumiyet Karinesi: Ceza hukuku, masumiyet karinesine dayanır. Bu ilkeye göre, bir kişi suçlu sayılmadan önce mahkeme kararı ile kanıtlanana kadar masumdur.\r\n', 'tugbasezer'),
(21, 'Ceza Hukukunun İşleyişi', 'Ceza hukukunun işleyişi, suçun işlenmesi, soruşturma, dava süreci ve cezanın uygulanması aşamalarını içerir. Suç işlendiğinde, polis veya soruşturma makamları tarafından soruşturma başlatılır. Daha sonra, savcılık tarafından dava açılabilir ve mahkeme süreci başlar. Mahkemede suçlu bulunan kişiye ceza verilir, bu ceza kanunlar tarafından belirlenen çerçeve içinde olmalıdır.\r\nToplumsal Düzenin Koruyucusu:\r\nCeza hukuku, toplumsal düzenin korunmasında kritik bir rol oynar. Suç işleyen bireylerin cezalandırılması, toplumda caydırıcı bir etki yaratır ve suç işlemeyi düşünenleri bu eylemlerinden vazgeçirmeye çalışır. Ayrıca, ceza hukuku, suç mağdurlarına adaletin sağlanmasını ve toplumun genel güvenliğini güvence altına almayı hedefler.\r\nCeza Hukukunda Reform ve Değişim:\r\nCeza hukuku, toplumun evrimi ve değer değişiklikleri doğrultusunda sürekli olarak yeniden değerlendirilir. Reformlar ve değişiklikler, ceza sisteminin daha etkili, adil ve insancıl olmasını sağlamak amacıyla yapılır. Ayrıca, ceza hukuku, suçlu bireylere rehabilite olma şansı da tanımak amacıyla düzenlemeler içerir.\r\nSonuç:\r\nCeza hukuku, toplumun temel taşlarından biridir ve adaletin sağlanması, toplumsal düzenin korunması, suçluların cezalandırılması ve toplum güvenliğinin temini gibi önemli amaçları içerir. Ancak, ceza hukukunun etkili olabilmesi için adil yargılama, suçun kanuniliği ilkesine bağlılık ve suçluların rehabilite edilmesine yönelik çabalar gibi prensiplere sıkı sıkıya bağlı kalınması gereklidir.\r\n', 'tugbasezer'),
(22, 'Ticaret Hukuku: İş Dünyasında Adaletin Teminatı', 'Ticaret hukuku, iş dünyasının düzenli ve adil bir şekilde işlemesini sağlamak, ticari ilişkileri düzenlemek ve iş dünyasındaki çeşitli aktörlerin haklarını ve sorumluluklarını belirlemek amacıyla oluşturulan bir hukuk dalıdır. Bu makalede, ticaret hukukunun temel prensiplerini, işleyişini ve iş dünyasındaki rolünü ele alacağız.\r\nTicaret Hukukunun Temel Prensipleri:\r\n1.	Sözleşme Hukuku: Ticaret hukuku, iş dünyasındaki sözleşmeleri düzenler. Taraflar arasındaki ticari anlaşmazlıkların çözümü, sözleşme hukuku çerçevesinde yapılır. Ticari sözleşmelerde tarafların hakları, yükümlülükleri ve sorumlulukları belirgin bir şekilde tanımlanır.\r\n2.	Ticaret Sicili ve Kayıt: Ticaret hukuku, işletmelerin kayıtlarını düzenleyen ve ticaret sicili üzerinden kayıt tutan bir sistem içerir. Bu kayıtlar, iş dünyasındaki şeffaflığı ve hesap verebilirliği sağlar.\r\n3.	Rekabet Hukuku: Ticaret hukuku, rekabeti düzenleyen bir diğer önemli alanı kapsar. Haksız rekabetin önlenmesi, monopol ve tekel oluşumlarının engellenmesi gibi konular rekabet hukuku içinde değerlendirilir.\r\n4.	Ticaret Finansmanı: Ticaret hukuku, ticari işlemlerde finansmanı düzenler. Krediler, teminatlar, ticari senetler ve diğer finansal araçlar ticaret hukuku kapsamındadır.\r\nİşleyiş ve Uygulama:\r\nTicaret hukuku, iş dünyasındaki çeşitli işlemleri düzenleyen geniş kapsamlı bir hukuk alanıdır. Bu hukuk dalı, mahkemeler, ticaret odaları ve diğer ticaret hukuku uzmanları tarafından uygulanır. Ticaret mahkemeleri, ticaret hukukuna dair anlaşmazlıkları çözmekle görevlidir ve ticaret davalarının etkili bir şekilde yargılanmasını sağlar.\r\nİş Dünyasındaki Rolü:\r\nTicaret hukuku, iş dünyasındaki ticari ilişkilerin düzenlenmesi ve adil bir rekabet ortamının korunması açısından kritik bir role sahiptir. Bu hukuk dalı, taraflar arasındaki ticari ilişkilerin adil, şeffaf ve güvenilir bir şekilde yürütülmesini sağlar. Ayrıca, işletmelerin hukuki güvence altında faaliyet göstermelerine olanak tanır.\r\nUluslararası Ticaret Hukuku:\r\nKüreselleşen dünyada, ticaret hukuku sadece ulusal sınırlar içinde değil, aynı zamanda uluslararası düzeyde de büyük bir öneme sahiptir. Uluslararası ticaret hukuku, farklı ülkeler arasında ticaret yapan taraflar arasındaki anlaşmazlıkları düzenler ve uluslararası ticaretin düzenlenmesine yönelik standartları belirler.\r\nSonuç:\r\nTicaret hukuku, iş dünyasının sağlıklı bir şekilde işlemesini ve ticari ilişkilerin düzenli bir şekilde yürütülmesini temin eden temel bir hukuk dalıdır. Taraflar arasındaki anlaşmazlıkların çözümü, ticaretin adil ve rekabetçi bir şekilde gerçekleşmesi, iş dünyasındaki güvenin sağlanması için ticaret hukuku kritik bir rol oynar. Bu hukuki çerçeve, iş dünyasında etik standartların korunmasına, yatırımın teşvik edilmesine ve ekonomik kalkınmanın desteklenmesine katkıda bulunur.\r\n', 'tugbasezer');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `makale`
--
ALTER TABLE `makale`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
