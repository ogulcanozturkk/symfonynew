# Host: localhost  (Version 5.5.5-10.1.37-MariaDB)
# Date: 2019-01-22 15:18:09
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,0,'Saat','Saatler k','Saat d','True'),(2,0,'Kulaklık','Kulaklık Kk','Kulaklık Dd','True'),(3,2,'Kablolu Kulaklık','kablo','kulaklık','True'),(4,1,'Akıllı Saat','Saat','Akıllı','True'),(5,0,'Televizyonlar','Televizyon K','Televizyon D','True'),(6,2,'Kablosuz Kulaklık','Kablosuz','Kulaklık','True'),(7,5,'LCD Televizyon','Lcd','Televizyon','True'),(8,5,'LED Televizyon','LED','Televizyonn','True'),(9,5,'Tüplü Televizyon','Türlü','Tüplü','True'),(10,4,'Apple Akıllı Saat','Apple','Akıllı','True'),(11,4,'Samsung Akıllı Saat','Samsung','Akıllı','True'),(12,1,'Dijital Saat','Dijital','Saattt','True'),(13,1,'Analog Saat','Analog','Saattt','True'),(14,0,'Telefon','Telefon','Teeee','True'),(15,14,'Iphone ','IOS ','Iphone','True'),(16,14,'Samsung','Android','Telefon','True'),(17,0,'Müzik setleri','Müzikkk Sett','Müzik dinlemeyi sevenler için','True'),(18,0,'Data Bank','Data Bankların Tümünü Burada Bulabilirsiniz','Data Bankların Tümünü Burada Bulabilirsiniz','True');

#
# Structure for table "image"
#

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "image"
#

INSERT INTO `image` VALUES (2,2,'iphonexs.jpg'),(3,3,'philipsled.jpg'),(4,4,'vestellcd.jpg'),(5,5,'samsungwatch.jpg'),(6,6,'applewatch.jpg'),(7,7,'beats.jpg'),(8,8,'philipsbluetooth.jpg'),(9,9,'galaxy8.jpg'),(10,10,'dijitalsaat.jpg'),(23,11,'74bf9f54b1ce019c06417255ee1a648f.png'),(24,11,'58d075431877ee27d11b346f7a569110.png'),(25,1,'ba5d0f33ddacf61eeba96db661223cad.png'),(26,1,'21cdc9b06651aeb823b0d9de280d606b.jpeg');

#
# Structure for table "messages"
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "messages"
#

INSERT INTO `messages` VALUES (1,'ayse','ayse@gmail.com',NULL,'dsgdsgsdgdsgdsgsdgsdg','veni vidi vici','Okundu'),(2,'rafet hoca','dsklghs@gmail.com','ssh','dlskhgdsklgh',NULL,'Okundu');

#
# Structure for table "migration_versions"
#

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migration_versions"
#

INSERT INTO `migration_versions` VALUES ('20190116221301'),('20190117194138');

#
# Structure for table "order_detail"
#

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "order_detail"
#

INSERT INTO `order_detail` VALUES (1,1,1,1,13,1,2,'Iphone X 64GB','Ordered'),(2,2,1,1,13,1,2,'Iphone X 64GB','Ordered'),(3,3,1,1,13,1,2,'Iphone X 64GB','Ordered'),(4,4,1,1,13,1,2,'Iphone X 64GB','Ordered'),(5,5,1,1,13,1,2,'Iphone X 64GB','Ordered'),(6,6,1,1,13,1,2,'Iphone X 64GB','Ordered'),(7,7,2,1,13,1,2,'Iphone X 64GB','Ordered'),(8,8,2,1,13,1,2,'Iphone X 64GB','Ordered'),(9,9,2,1,13,1,2,'Iphone X 64GB','Ordered'),(10,10,2,1,13,1,2,'Iphone X 64GB','Ordered'),(11,11,1,9,17,1,17,'Samsun Galaxy 8','Ordered'),(12,11,1,9,17,1,17,'Samsun Galaxy 8','Ordered'),(13,11,1,10,10,1,10,'Casio Dijital Saat','Ordered'),(14,11,1,10,10,1,10,'Casio Dijital Saat','Ordered'),(15,11,1,11,11,1,11,'sadasdad','Ordered'),(16,11,1,11,11,1,11,'sadasdad','Ordered'),(17,12,3,12,50,3,150,'Sharp 5 Kanallı Müzik Seti','Ordered'),(18,12,3,12,50,1,50,'Sharp 5 Kanallı Müzik Seti','Ordered'),(19,13,3,14,1849,1,1849,'Apple watch Seri 3','Ordered'),(20,14,4,22,10000,2,20000,'Apple iPhone XS Max','Ordered');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (6,2,237,'Mustafak Kaya','Yenimahalle','Ankara','213125','Yolda','Accepted','Aras ','2019-01-18 01:33:49','2019-01-18 01:35:47'),(7,2,237,'Musafa Kaya','Yenimahalle','Ankara','124125235','gemide','Accepted','Kargo','2019-01-18 01:33:49','2019-01-22 12:02:29'),(8,2,237,'Mustafa Kaya','Yenimahalle','Ankara','214532532','Depoda','InShipping','232323','2019-01-18 01:33:50','2019-01-18 01:35:50'),(9,1,110,'Ali can','Cumhuriyet Cad','İstanbul','45436343','aaa','New','3434','2019-01-18 01:33:50','2019-01-18 01:35:52'),(10,1,270,'Ali can','Cumhuriyet Cad','İstanbul','2453524','aa','New',NULL,'2019-01-18 01:33:53','2019-01-18 01:35:45'),(11,1,76,'Mahmut TUNCER','Yenimahalle Atatürk bulvarı 12/16','İstanbul',NULL,NULL,'New',NULL,'2019-01-19 17:15:05','2019-01-19 17:15:05'),(12,3,200,'Mahmur Tuncer',NULL,NULL,NULL,NULL,'New',NULL,'2019-01-19 19:27:18','2019-01-19 19:27:18'),(13,3,1849,'Mahmur Tuncer',NULL,NULL,NULL,NULL,'New',NULL,'2019-01-19 20:48:09','2019-01-19 20:48:09'),(14,4,20000,'Vedat',NULL,NULL,NULL,'','Accepted','','2019-01-22 14:08:07','2019-01-22 14:09:50');

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pprice` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'Iphone X 64GB','aaaa','bbb',NULL,NULL,NULL,30,3,13,NULL,'<p><strong>Ön Kamera:</strong>&nbsp;7 megapiksel, f/2.2 diyafram açıklığına sahip, 1080p video kaydı, <a href=\"https://shiftdelete.net/face-id-nedir-iphone-x-face-id-nasil-calisiyor\">Face ID</a> kamera</p><p><strong>İşletim Sistemi:IOS</strong> 11</p><p><strong>Bağlantı:</strong>&nbsp;Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.0, A-GPS, GLONASS</p><p><strong>Suya, Sıçramalara&nbsp;ve Toza Dayanıklılık: </strong>IP67</p>','3a0914d7b9bd75c9c839818f785401e8.jpeg',NULL,15,NULL,'True'),(2,'Iphone XS 128GB','xs','xs',NULL,NULL,2016,20,4,13,5,NULL,'iphonexs.jpg',44,15,NULL,'True'),(3,'Philips LED TV','Philips','Tv Falan','LED',13,2018,15,5,11,5,NULL,'philipsled.jpg',NULL,8,NULL,'True'),(4,'Vestel LCD TV','vv','vv',NULL,NULL,2018,20,4,12,5,NULL,'vestellcd.jpg',NULL,7,NULL,'True'),(5,'Samsung Akıllı Saat','ss','ss',NULL,NULL,2017,30,6,13,5,NULL,'samsungwatch.jpg',NULL,11,NULL,'True'),(6,'Apple Watch','aa','aa',NULL,NULL,2015,40,7,14,5,NULL,'applewatch.jpg',NULL,10,NULL,'True'),(7,'Beats By DRE','bb','bb',NULL,NULL,2018,50,8,15,5,NULL,'beats.jpg',NULL,3,NULL,'True'),(8,'Philips Bluetooth Kulaklık','pp','pp',NULL,NULL,2019,30,9,16,5,NULL,'philipsbluetooth.jpg',NULL,6,NULL,'True'),(9,'Samsun Galaxy 8','sssssssaaaa','ss',NULL,NULL,2019,40,10,17,5,NULL,'galaxy8.jpg',NULL,16,NULL,'True'),(10,'Casio Dijital Saat','saaat','on numara zengin içerik',NULL,NULL,2018,50,4,10,5,'alnır','dijitalsaat.jpg',NULL,12,NULL,'True'),(12,'Sharp 5 Kanallı Müzik Seti','Müzik Seti','Yeni Nesil Müzik Sistemi',NULL,NULL,NULL,15,35,50,NULL,'<p><strong>2 YIL GARANTİ</strong></p><p><strong>ORİJİNAL KUTUSUNDA</strong></p><p><strong>Ayrıntılı İngilizce Kullanma Kılavuzu:</strong></p><p><a href=\"http://esupport.sharp-eu.com/template/om_remarks_en.php?TemplateLang=en&amp;dir=/om/17_hifi-audio/&amp;file=XLUH2000H_OM_GB.pdf&amp;ID=10458&amp;act=dwnld\">http://esupport.sharp-eu.com/template/om_remarks_en.php?TemplateLang=en&amp;dir=/om/17_hifi-audio/&amp;file=XLUH2000H_OM_GB.pdf&amp;ID=10458&amp;act=dwnld</a></p><p>Tek Seferde Alınabilecek Maksimum Ürün Adedi&nbsp;:&nbsp; 3<br>Ürün sevkiyatı&nbsp;2 Nisan 2009&nbsp;Perşembe günü yapılacaktır.</p><figure class=\"image\"><img src=\"https://bws.bitenekadar.com/UserFiles/Image/urunbilgi/sharpxluh2000h.jpg\" alt=\"\"></figure>','d6828edb7bdcba319f42e3e26637bffe.jpeg',NULL,17,NULL,'True'),(13,'Apple Watch Seri 4','Apple Watch','Akıllı Kol Saati',NULL,NULL,NULL,50,2500,3229,NULL,'<h2>Ürün Bilgileri</h2><ul><li>15 gün içinde ücretsiz iade. Detaylı bilgi için <a href=\"javascript:void(0)\"><strong>tıklayın</strong></a>.</li><li>Bu ürün Trendyol adına <strong>BT Teknoloji</strong> tarafından gönderilecektir.</li><li>24 saatte kargoda fırsatı iş günlerinde geçerlidir.</li><li>Apple Watch Seri 4 44mm GPS Altın Rengi Alüminyum Kasa&nbsp;ve Kum&nbsp;Pembesi Spor&nbsp;Loop - (MU6G2TU/A) Apple Watch Seri 4 44mm GPS Altın Rengi Alüminyum Kasa&nbsp;ve Kum&nbsp;Pembesi Spor&nbsp;Loop Apple Watch Seri 4 44mm GPS Altın Rengi Alüminyum Kasa ve Kum Pembesi Spor Loopspor modelleri, tasarımı ve özellikleriyle büyük dikkat çekiyor. Apple Watch Seri 4, canlı Retina ekranı, dokunsal tepki özelliğine sahip Digital Crown\'u ve daha fazlasıyla kullanıcıların hayatlarını büyük ölçüde kolaylaştırıyor. Bazı sağlık bilgilerine de kolayca ulaşmayı sağlayan Apple Watch Seri 4, tüm özellikleriyle kullanıcılardan tam not alıyor. Benzersiz Özellikleriyle Büyük Bir Kolaylık - Apple Watch Seri 4 44 mm, sahip olduğu üstün teknolojik özellikleri sayesinde kullanıcılara büyük kolaylıklar sunuyor. Aynı zamanda Apple Watch, şık ve modern tasarımı ile de göz dolduruyor. - 64-bit çift çekirdekli S4 işlemciye sahip olan Apple Watch, daha hızlı çalışıyor ve kullanıcıların tüm işlemlerini kesintisiz bir biçimde gerçekleştiriyor. - Optik ve elektriksel kalp sensörü sayesinde kalp ritmi gibi önemli bazı sağlık bilgilerine kolay ve hızlı bir şekilde erişim olanağı veriyor. - Force Touch özellikli LTPO OLED Retina ekranı ile daha canlı görüntüler sağlıyor. - Daha yüksek ve anlaşılır ses veren hoparlörleri ile tüm bildirimler anında algılanıyor. - Şarj edilebilir yerleşik lityum iyon pili sayesinde 18 saate kadar pil ömrü vadeden Apple Watch ile kesintisiz ve uzun süreli kullanım sunuluyor. Üstün Teknolojiler Tek Bir Cihazda Apple Watch Seri 4 44mm GPS Altın Rengi Alüminyum Kasa ve Kum Pembesi Spor Loop&nbsp;özellikleri sayesinde birçok teknolojiyi bünyesinde barındırıyor. Bu teknolojik özellikler ile kullanıcılara eğlenceli ve kolay bir kullanım olanağı tanınıyor. Pil Ömrü:&nbsp;18 saate kadar Ortam Işığı Sensörü:&nbsp;Var Suya Dayanıklılık:&nbsp;50 metreye kadar Ekran Özellikleri:&nbsp;Force Touch özellikli LTPO OLED Retina ekran Bağlantı Özellikleri:&nbsp;2.4 GHz Wi-Fi bağlantısı ve Bluetooth 5.0 desteği İşletim Sistemi:&nbsp;watchOS 5 Eşsiz Teknolojilere Ev Sahipliği Yapan Model Apple Watch Seri 4\'ün kutusunun içerisinde 1 m uzunluğunda manyetik şarj kablosu ve 5 W güç adaptörü yer alıyor. Tüm bu ürünlerle Apple Watch daha kolay bir şekilde kullanılıyor. Aynı zamanda Apple Watch\'ı kullanırken kullanıcılara yardımcı olacak olan kullanım kılavuzu ve garanti belgesi de kutunun içerisinde bulunuyor. Başarıya Atılan Adımlar: Apple Apple markası, 1 Nisan 1976 yılında Kaliforniya\'da Steve Jobs ve bir ortağı ile kuruldu. İlk tasarladıkları ürün olan Macintosh bilgisayar ile tüm dikkatleri üzerlerine çeken ortaklar, Apple\'ı günden güne büyüttü ve geliştirdi. Çıkan her yeni ürünü ile büyük bir hayran kitlesine ulaşan Apple, şimdilerde dünya çapında büyük bir teknoloji devi olarak anılıyor. Kolay Kullanım ve Şıklık Bir Arada Apple Watch Seri 4, sahip olduğu üstün teknolojik özellikler ile kolay bir şekilde kullanılabiliyor. Optik kalp sensörü, 32 G\'ye kadar ölçüm yapabilen gelişmiş ivmeölçer, gelişmiş jiroskop, ortam ışığı sensörü, elektriksel kalp sensörü ve barometrik altimetresi ile kullanıcılara büyük fayda sağlayan Watch, şık tasarımı ve renkleri ile de beğeni topluyor. Apple Watch, tüm özellikleri ile kullanıcıların teknolojiye farklı açılardan bakmasına katkı sağlıyor. Apple Watch Seri 4 44mm GPS Altın Rengi Alüminyum Kasa ve Kum Pembesi Spor Loop fiyatları ve daha fazlasını hemen siz de görüntüleyebilir, ürüne kolayca sahip olabilirsiniz.“Ürün isminde ve açıklamasında aksi belirtilmediği sürece paket içeriğinde sadece data kablosu bulunmakta olup, şarj adaptörü bulunmamaktadır.”</li><li>Bu butikte indirim kuponları/kodları geçerli değildir.</li><li>Yetkili servis kurulumu gereken ürünlerde kutunun yetkili servis personeli ile birlikte açılmaması durumunda ürün garanti kapsamı dışında kalabilir.</li><li>İadenizin kabul edilmesi için, ürünün ve ürün kutusunun hasar görmemiş olması, bandrol ve güvenlik şeridinin açılmamış olması, sim kart ile çalışan cihazlar için sim kart takılmamış olması ve kesinlikle kullanılmamış olması gerekmektedir.</li><li>Ürün iadesi için, ürünü orijinal kutusu ve faturasıyla birlikte ilgili firmaya Trendyol\'dan almış olduğunuz iade koduyla ücretsiz olarak gönderebilirsiniz.</li><li>İade aşamasında ürün analiz sürecine dahil edilerek tüm parça ve orijinallik kontrolleri sonrasında ücret iadesi yapılacaktır.</li><li>Kutusu açılmış ve hasar görmüş ürünlerde iade alınmayacaktır.</li><li>Ürüne ait perakende satış fiyatı tedarikçi tarafından sağlanmaktadır.</li></ul>','1957cab2c47c681571bd2e39c28da481.jpeg',NULL,10,NULL,'True'),(14,'Apple watch Seri 3','APPLE AW S3 GPS MQKV2TU/A 38mm Uzay Grisi Alüminyum Kasa ve Siyah Spor Kordon','Apple Watch Seri 3 Ürünü',NULL,NULL,NULL,30,1449,1849,NULL,'<p><a href=\"https://www.mediamarkt.com.tr/tr/product/_apple-aw-s3-gps-mqkv2tu-a-38mm-uzay-grisi-al%C3%BCminyum-kasa-ve-siyah-spor-kordon-1176581.html?rbtc=%7C%7C%7C%7Cp%7C%7C&amp;gclid=CjwKCAiAsoviBRAoEiwATm8OYAFFqrcDsMmtKIlnS-tZoas2q_lnIbIlroFzZJQcvVRDP7V5cfRXABoC2lkQAvD_BwE&amp;gclsrc=aw.ds#yorumlar-\">Yorumlar (9)</a> <a href=\"https://www.mediamarkt.com.tr/tr/product/_apple-aw-s3-gps-mqkv2tu-a-38mm-uzay-grisi-al%C3%BCminyum-kasa-ve-siyah-spor-kordon-1176581.html?rbtc=%7C%7C%7C%7Cp%7C%7C&amp;gclid=CjwKCAiAsoviBRAoEiwATm8OYAFFqrcDsMmtKIlnS-tZoas2q_lnIbIlroFzZJQcvVRDP7V5cfRXABoC2lkQAvD_BwE&amp;gclsrc=aw.ds#\">Yorum Yaz</a></p><p>Ürün Tipi:&nbsp;</p><p>Akıllı Saat&nbsp;</p><p>Bellek Kapasitesi:&nbsp;</p><p>8 GB&nbsp;</p><p>Uyumlu işletim sistemi:&nbsp;</p><p>iOS&nbsp;</p><p>Bluetooth:&nbsp;</p><p>Evet&nbsp;</p><p>Wlan (Standartlar):&nbsp;</p><p>802.11b/g/n&nbsp;</p><p>Renkli Ekran:&nbsp;</p><p>Evet&nbsp;</p><p>Batarya Ömrü:&nbsp;</p><p>18 saat</p>','1ae35f242401e6d2ffc938a8e43d63e6.png',NULL,10,NULL,'True'),(15,'CASİO DBC-32 DİJİTAL TELEFON HAFIZALI-HESAP MAKİNELİ ERKEK SAATİ','MAKİNELİ ERKEK SAATİ','CASİO DBC-32 DİJİTAL TELEFON HAFIZALI-HESAP MAKİNELİ ERKEK SAATİ',NULL,NULL,NULL,50,210,250,NULL,'<h4>Fiyat Takibi</h4><h4>Ayrıntılar</h4><p>Görüntülediğiniz ürün StockMount tarafından listelenmiştir.</p><p><br>&nbsp;</p><h4>Teslimat Bilgileri</h4><p><strong>En geç 22 Ocak Salı günü kargoya verilir.&nbsp;</strong></p>','435b6b95d6aff3d86b330dd0a156b209.jpeg',NULL,18,NULL,'True'),(16,'Casio SF - 3990 DATABANK','databank casio','Casio SF - 3990 DATABANK  SF-3990 128 KB hafıza İsim,',NULL,NULL,NULL,50,10,15,NULL,'<p>&nbsp;telefon, adres kaydı Planlama Not alma Yapılacak işler listesi Yerel ve Dünya saatleri</p>','5be4142a5de2c00518e35895b162ce52.jpeg',NULL,18,NULL,'True'),(17,'EG_ 3.5 Inç HDD Veri Bankası Oyunu','PS4 Konsolu Genişletici Sabit Disk Muhafaza için',': Sıfır',NULL,NULL,NULL,30,30,70,NULL,'<p><strong>Türkçe Açıklaması</strong><br>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td colspan=\"4\">Özellikler:&nbsp;<br>PS4 depolama kapasitesini 2 TB\'a kadar kolayca yükseltin.&nbsp;<br>Daha pahalı, daha yavaş 2,5 \"sürücüler yerine herhangi bir standart 3,5\" sabit sürücü kullanır.&nbsp;<br>3,5 \"2,5\'ten fazla\" sürücüyle daha fazla depolama alanı elde edin ve paradan tasarruf edin.&nbsp;<br>3.5 \"gibi daha hızlı okuma / yazma hızı çoğu oyunun yükleme süresini artırabilir.&nbsp;<br>LED göstergeleri for PS4\'ün içerik tasarrufu yaptığını veya sabit sürücüye eriştiğini gösterir.&nbsp;<br><br>Tip: HDD Durumda&nbsp;<br>Malzeme: ABS, PCB&nbsp;<br>Uygun sabit disk boyutu: 3.5 \"&nbsp;<br>Uyumlu: PS4 için&nbsp;<br>Özellikler: Dayanıklı, Taşınabilir, Kullanımı Kolay&nbsp;<br>Ebat: 33.7cm x 7.8cm x 14cm / 13.14 \"x 3.04\" x 5.46 \"(Yaklaşık)</td></tr></tbody></table></figure>','5d22d18345c7dc6ab50c7c673486cd60.jpeg',NULL,18,NULL,'True'),(18,'Casio DBC-32D-1ADF','Hesap Makineli Erkek Kol Saat','Hesap Makineli Erkek Kol Saat',NULL,NULL,NULL,40,30,50,NULL,'<h4>Ayrıntılar</h4><p>&nbsp;&nbsp;</p><p>Modül No:2888 &nbsp;&nbsp;</p><p>Otomatik Işık &nbsp;&nbsp;</p><p>25 Telefon Hafızası &nbsp;&nbsp;</p><p>Çift Saat &nbsp;&nbsp;</p><p>8 Haneli Hesap Makinası &nbsp;&nbsp;</p><p>Para Birimi Çeviricisi &nbsp;&nbsp;</p><p>24 Saatlik Kronometre &nbsp;&nbsp;</p><p>5 Alarm &nbsp;&nbsp;</p>','a20f9995856fc9e8e288b3b118bff400.webp',NULL,18,NULL,'True'),(19,'Analog Paslanmaz','saat çelik paslanmaz analog','Çelik Askeri Kol Saati XYQ',NULL,NULL,NULL,5,30,60,NULL,'<p>Merhaba Değerli Müşterimiz, TESLİMAT BİLGİLERİ *Tüm ürünlerimiz garantilidir. *Saat 13:00’e kadar verdiğiniz tüm siparişler aynı gün, tek pakette kargoya verilir. Saat 18:00’da sisteme yansır. *İade işlemleri ürün fiş/faturası ile birlikte yapılmaktadır. Kutusu hasar görmüş, aparatları eksik, etiketi yırtılmış, bandrolü veya jilatini çıkarılmış olarak gönderilen ürünlerin iadesi kanunen kabul edilememektedir. *Tüm siparişleriniz adınıza fatura kesilerek gönderilmektedir. *Ürünlerimiz ile ilgili herhangi bir problem ile karşılaşmanız durumunda öncelikle bizimle iletişime geçmenizi rica ederiz. Size memnuniyetle yardımcı olmaya çalışacağız.</p>','9a65bb16a0634a1c13981c139e7871d9.png',NULL,13,NULL,'True'),(20,'Xiniu Paslanmaz Çelik','paslanmaz saat çelik kol saati','Xiniu Paslanmaz Çelik Hasır',NULL,NULL,NULL,200,NULL,100,NULL,'<p>Hareket: Kuvars</p><p>Ekran: Analog</p><p>Band Malzeme: Alaşım</p><p>Kılıf Malzeme: Paslanmaz Çelik</p><p>Su Geçirmez</p><p>Çapı: 4 cm/1.6 inç</p><p>Uzunluğu: 23 cm/9.1 inç</p>','fca49966b0980e01ddbb13353f49bd46.jpeg',NULL,13,NULL,'True'),(21,'Vegans Erkek Kol Saati','vegans kol saati','UYGUN FİYAT GARANTİSİ',NULL,NULL,NULL,30,50,85,NULL,'<p><strong>*</strong> <strong>&nbsp;Tüm Fonksiyonlar aktif olarak çalışır&nbsp; *Dual Time ( Analog ve 2 Dijital 3 ayrı zaman göstergesi)</strong> <strong>&nbsp;* 50 mm kasa çapı (ayar &nbsp;pimi&nbsp; dahil) &nbsp; &nbsp; </strong>*24<strong>8mm genişliğinde silikon kordon&nbsp; &nbsp;*</strong> <strong>&nbsp;18 mm kasa kalınlığı &nbsp;</strong> <strong>&nbsp;* Takvim (Gün-Ay-Haftanın günü)&nbsp; &nbsp;*24 saat formatı&nbsp; *Su geçirmezlik kategorisi; ( 5 ATM )&nbsp;</strong> <strong>&nbsp;&nbsp;</strong> * &nbsp;<strong>Japon Quartz 2030 Pilli Mekanizma </strong>&nbsp; &nbsp; *&nbsp; <strong>&nbsp;Dayanıklı Kristal Cam &nbsp;</strong> <strong>&nbsp;* &nbsp; 2 yıl&nbsp; Resmi Distürübütör Garantili</strong>&nbsp;</p>','40fc4d7d491259f98437bb510a2bd582.webp',NULL,13,NULL,'True'),(22,'Apple iPhone XS Max','64GB','Apple Türkiye Garantili',NULL,NULL,NULL,30,9400,10000,NULL,'<h4>yrıntılar</h4><figure class=\"table\"><table><tbody><tr><th>Ağırlık</th><td>208 g</td></tr><tr><th>Arttırılabilir Hafıza</th><td>Yok</td></tr><tr><th>Assisted GPS (Baz İstasyon Destekli Küresel Konumlama Sistemi)</th><td>Var</td></tr><tr><th>Bağlantı Hızı</th><td>42.2 Mbps</td></tr><tr><th>Bas Konuş</th><td>Yok (Yüklenebilir)</td></tr><tr><th>Bekleme Süresi</th><td>Bekleme süresi ile ilgili kesin bir bilgi bulunmamaktadır, ürünün modeline göre değişiklik gösterebilmektedir.</td></tr><tr><th>Bluetooth</th><td>Var</td></tr></tbody></table></figure>','c2e331247eca85010b309fd654e3a609.jpeg',NULL,15,NULL,'True'),(23,'KAMOSONIC Müzik Sistemi','KAMOSONIC KS-2050 425 WATT PEAK POWER 2+1 BLUETOTH SES SİSTEMİ','KAMOSONIC KS-2050 425 WATT PEAK POWER 2+1 BLUETOTH SES SİSTEMİ',NULL,NULL,NULL,25,1000,2000,NULL,'<figure class=\"table\"><table><tbody><tr><td><p><strong>Kamosonic Ks2050 425 Watt Peak Power 2+1 Bluetoth Ses Sistemi</strong></p><p>- Ks-2050 -Peak Power 425W - Led Ekran - Sd\r\nKart Desteği - Usb Desteği - Radyo Özelliği- Bluetooth -3.5 Mm Stereo\r\nKablo Bağlantı İle Dvd/Vcd Player - Mp3 Player - Oyun Sistemleri - &nbsp;- Pc\r\nGibi Harici Cihazlara Bağlayabilme - Sinyal Gürültü Oranı 80Db - &nbsp;-\r\nKolay Kullanımlı Uzaktan\r\nKumanda</p></td></tr></tbody></table></figure>','7fbb0aafe3619df8ea8796e5e5ab73b2.jpeg',NULL,1,NULL,'True'),(24,'Philips MCM2320','12 Mikro Müzik Sistem','Yüksek ses yüksek kalite',NULL,NULL,NULL,30,250,450,NULL,'<p>Taşınabilir müzik cihazınız için ses girişi</p><p>Ses girişi bağlantısı, Ses girişi içeriğinin taşınabilir ortam oynatıcılardan doğrudan çalınmasına olanak verir. Ses sisteminin sağladığı üstün ses kalitesiyle en sevdiğiniz müziğin keyfini çıkarma avantajı sunmasının yanı sıra, yapmanız gereken tek şey taşınabilir MP3</p>','9b4f7c0415ed2d176a9c228568922cd2.jpeg',NULL,1,NULL,'True');

#
# Structure for table "setting"
#

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpserver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtppassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abouts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referances` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "setting"
#

INSERT INTO `setting` VALUES (5,'Online Market','Sipariş Vermenin kolay yolu','teknoloji ürün telefon kulaklık','Tuncer Elektronik','Mimar Sinan Mahallesi Durbali Sok. 18/16','+90 098 765 43 21','+90 123 456 78 90','ogulcanozturkk@gmail.com','123.32.12.2','ogulcanozturkk@icloud.com','123','smtp.gmail.com','Online Alışverişin Adresi TUNCER.com\r\n“Alışverişin uğurlu adresi” TUNCER.com; Türkiye’deki başarılı online alışveriş siteleri arasında yer almaktadır. Yaşamın her alanındaki ihtiyaçlarınızı kolayca bulabileceğiniz TUNCER.com’da 30.000’i aşkın mağazanın ür','<h2>Aradığınız Her Şeyi Bulabileceğiniz Bir İnternet Alışverişi Sitesi</h2><p>Kişisel bakımınızdan araç bakımınıza, yaşam alanlarınızı düzenlemeden spor aktivitelerinize kadar hayatın pek çok alanında ihtiyacınız olacak tüm ürünleri internet alışverişinin','<figure class=\"image\"><img src=\"https://www.ideasoft.com.tr/wp-content/themes/ideasoft/images/reference_banner.png\" alt=\"\"></figure><p>&nbsp;</p>','True');

#
# Structure for table "shopcart"
#

DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "shopcart"
#

INSERT INTO `shopcart` VALUES (1,2,2,1),(2,2,4,1),(13,3,14,1),(14,3,15,1),(16,3,13,1),(17,3,14,1),(18,3,23,1),(19,3,23,1),(20,3,23,1);

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'ali@mynet.com','ROLE_USER','$2y$10$3Bbb2CZfXF7UyShCyVF9XeZaOJ4Q2sKJBJozIMcMwJO6Uu6R9t4Cu','Ibrahim Tatlıses','True','Yenimahalle Atatürk bulvarı 12/16','3564624','İstanbul'),(3,'mahmut@gmail.com','ROLE_ADMIN','$2y$10$3Bbb2CZfXF7UyShCyVF9XeZaOJ4Q2sKJBJozIMcMwJO6Uu6R9t4Cu','Mahmur Tuncer','True','asda','asdsad','asdad'),(4,'vedat@gmail.com','ROLE_USER','$2y$10$3Bbb2CZfXF7UyShCyVF9XeZaOJ4Q2sKJBJozIMcMwJO6Uu6R9t4Cu','Vedat',NULL,NULL,NULL,NULL),(5,'ayse@gmail.com','ROLE_USER','$2y$10$tCYLxTu8cUYY3V4g6CvS5uaRGdb8PUkfRh9DULLpQJgGnfqb0XO1.','Ayşe',NULL,NULL,NULL,NULL);
