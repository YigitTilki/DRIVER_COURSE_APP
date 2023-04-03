import 'dart:math';

class VideoData {
  static int rndTipId = 0;

  static void changeTipId() {
    VideoData.rndTipId = 0 + Random().nextInt(16);
  }

  static List videoMapList = [videos1, videos2, videos3, videos4];
  static List linkList = [links1, links2, links3, links4];

  static Map<int, String?> videos1 = {
    0: "Trafik Psikolojisi",
    1: "Kurum, Kuruluş ve Komisyonlar",
    2: "Trafik Ve Taşıtlarla İlgili Tanımlar",
    3: "Işıklı Trafik İşaretleri Ve Anlamları",
    4: "Trafik İşaret Levhaları",
    5: "Karayollarında Araç Sürme Yasağı",
    6: "Araç Sürme Süreleri",
    7: "Hız Kuralları",
    8: "Hızın Azaltılması Gerken Yerler",
    9: "Takip Mesafesi",
    10: "Dönüşler ve Manevralar",
    11: "Öndeki Aracı Geçme Kuralları",
    12: "Geçiş Üstünlüğüne Sahip Araçlar",
    13: "Geçiş Kolaylığı Sağlama",
    14: "Duraklamanın Yasak Olduğu Yerler",
    15: "Araçların Işıklandırılması ",
    16: "Park Etmenin Yasak Olduğu Yerler",
    17: "Tehlikeli Maddelerin Taşınması",
    18: "Araçların Boyutları ve Yük Taşıma Kuralları",
    19: "Trafik Kazaları ve Cezaları",
    20: "Hukiki Sorumluluk ve Sigorta",
    21: "Araçların Muayeneleri ve Ruhsat",
    22: "Sürücü Belgeleri ve Sürücü Adayları",
    23: "Araçlarda Zorunlu Olan Malzemeler",
    24: "Aslı Kusur Sayılan Durumlar",
    25: "Harita Okuma"
  };

  static Map<int, String> videos2 = {
    0: "Araçta Bulunan Kısımlar ve Sistemler",
    1: "Motor",
    2: "Marş Sistemi",
    3: "Yağlama Sistemi",
    4: "Araç Kullanmaya Hazırlık",
    5: "Göstergeler",
    6: "Periyodik Bakımlar",
    7: "Aydınlatma Sistemi",
    8: "Akü",
    9: "Antifriz",
    10: "Sürücülerin Yapacağı Uygulamalar",
    11: "Acil Durumlar",
    12: "Araçlarda Sık Yaşanan Sorunlar",
    13: "Aracın Fazla Yakıt Harcamasının Sebepleri",
  };

  static Map<int, String> videos3 = {
    0: "Temel İlk Yardım Bilgileri",
    1: "Hasta - Yaralı Değerlendirilmesi",
    2: "Olay Yeri Değerlendirme",
    3: "Solunum Yolu Tıkanıklığı",
    4: "Kanamalarda İlk Yardım",
    5: "Yaralanmalar",
    6: "Kırık Çıkık ve Burkulmalarda İlk Yardım",
    7: "Bilinç Bozuklukları",
    8: "Taşımalar",
  };

  static Map<int, String> videos4 = {
    0: "Etik ve Trafik",
    1: "Sorumluluk",
    2: "Yardımlaşma",
    3: "Tahammül",
    4: "Nezaket ve Saygı",
    5: "Feragat ve Fedakarlık",
    6: "Sabır",
    7: "Birbirini Uyarma",
    8: "Empati",
    9: "Diğergamlık",
    10: "Öfke Yönetimi",
    11: "Beden Dili",
    12: "Konuşma Üslubu",
    13: "Denetim Görevlileri ve iletişim",
    14: "Hak İhlalleri",
    15: "Sürücülerin Birbirine Etkisi",
  };

  static Map<String, String?> links1 = {
    "Trafik Psikolojisi":
        "https://www.youtube.com/watch?v=LfmkRL6xPjA&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=1",
    "Kurum, Kuruluş ve Komisyonlar":
        "https://www.youtube.com/watch?v=PTKCLAOxmj8&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=2",
    "Trafik Ve Taşıtlarla İlgili Tanımlar":
        "https://www.youtube.com/watch?v=haS7-sUDSBU&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=3",
    "Işıklı Trafik İşaretleri Ve Anlamları":
        "https://www.youtube.com/watch?v=wtGe5cKOCb0&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=4",
    "Trafik İşaret Levhaları":
        "https://www.youtube.com/watch?v=QH3H8XFz47A&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=5",
    "Karayollarında Araç Sürme Yasağı":
        "https://www.youtube.com/watch?v=yrWi3PXhMKI&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=6",
    "Araç Sürme Süreleri":
        "https://www.youtube.com/watch?v=jElrKmafJ_4&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=7",
    "Hız Kuralları":
        "https://www.youtube.com/watch?v=tQvl9n-_EUk&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=8",
    "Hızın Azaltılması Gerken Yerler":
        "https://www.youtube.com/watch?v=CyTGyzaTQGw&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=9",
    "Takip Mesafesi":
        "https://www.youtube.com/watch?v=YT-qIW3L1D8&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=10",
    "Dönüşler ve Manevralar":
        "https://www.youtube.com/watch?v=bY75352Zevc&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=11",
    "Öndeki Aracı Geçme Kuralları":
        "https://www.youtube.com/watch?v=b8cJ-RUV0SY&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=12",
    "Geçiş Üstünlüğüne Sahip Araçlar":
        "https://www.youtube.com/watch?v=3PHxfH0KWYc&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=13",
    "Geçiş Kolaylığı Sağlama":
        "https://www.youtube.com/watch?v=ZonZPDogOg8&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=14",
    "Duraklamanın Yasak Olduğu Yerler":
        "https://www.youtube.com/watch?v=W7zamsME5yw&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=15",
    "Araçların Işıklandırılması ":
        "https://www.youtube.com/watch?v=w2A2DhRJk48&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=16",
    "Park Etmenin Yasak Olduğu Yerler":
        "https://www.youtube.com/watch?v=74ITKfsLF8k&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=17",
    "Tehlikeli Maddelerin Taşınması":
        "https://www.youtube.com/watch?v=wSy7i5YHB7w&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=18",
    "Araçların Boyutları ve Yük Taşıma Kuralları":
        "https://www.youtube.com/watch?v=C8ClHhiwltc&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=19",
    "Trafik Kazaları ve Cezaları":
        "https://www.youtube.com/watch?v=Lbjdoun5WBI&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=20",
    "Hukiki Sorumluluk ve Sigorta":
        "https://www.youtube.com/watch?v=bTYWAkgk1O4&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=21",
    "Araçların Muayeneleri ve Ruhsat":
        "https://www.youtube.com/watch?v=VfXUXolaCHw&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=22",
    "Sürücü Belgeleri ve Sürücü Adayları":
        "https://www.youtube.com/watch?v=D8bpJtqB0_A&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=23",
    "Araçlarda Zorunlu Olan Malzemeler":
        "https://www.youtube.com/watch?v=vTtgRA8l-WU&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=24",
    "Aslı Kusur Sayılan Durumlar":
        "https://www.youtube.com/watch?v=1OaLjq06Ybo&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=25",
    "Harita Okuma":
        "https://www.youtube.com/watch?v=Kbc9teGndm0&list=PL1rWOqGIQrxeqhiZCWlLcoSDW_DiUOf8U&index=26"
  };

  static Map<String, String> links2 = {
    "Araçta Bulunan Kısımlar ve Sistemler":
        "https://www.youtube.com/watch?v=1CDL-hjChCk&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=1",
    "Motor":
        "https://www.youtube.com/watch?v=qr9J8spELi4&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=2",
    "Marş Sistemi":
        "https://www.youtube.com/watch?v=qgE-4UT260E&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=3",
    "Yağlama Sistemi":
        "https://www.youtube.com/watch?v=jI3C1iaFPvU&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=4",
    "Araç Kullanmaya Hazırlık":
        "https://www.youtube.com/watch?v=SSipOa_N5K4&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=5",
    "Göstergeler":
        "https://www.youtube.com/watch?v=o6jQIfsQ9Qc&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=6",
    "Periyodik Bakımlar":
        "https://www.youtube.com/watch?v=TmKRcleNiAc&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=7",
    "Aydınlatma Sistemi":
        "https://www.youtube.com/watch?v=pGpyO5K1JNU&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=8",
    "Akü":
        "https://www.youtube.com/watch?v=ba3_Y2rweWI&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=9",
    "Antifriz":
        "https://www.youtube.com/watch?v=c2TUQfJD8vI&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=10",
    "Sürücülerin Yapacağı Uygulamalar":
        "https://www.youtube.com/watch?v=Gt8laOhTm4A&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=11",
    "Acil Durumlar":
        "https://www.youtube.com/watch?v=JCZSx4F8_3k&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=12",
    "Araçlarda Sık Yaşanan Sorunlar":
        "https://www.youtube.com/watch?v=tEElxqmPgo4&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=13",
    "Aracın Fazla Yakıt Harcamasının Sebepleri":
        "https://www.youtube.com/watch?v=9FX7PJxqp34&list=PL1rWOqGIQrxe2kMOU8bkNpRtPMSImFUdD&index=14",
  };

  static Map<String, String> links3 = {
    "Temel İlk Yardım Bilgileri":
        "https://www.youtube.com/watch?v=3vWLwMuG-IA&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=1",
    "Hasta - Yaralı Değerlendirilmesi":
        "https://www.youtube.com/watch?v=DU2J8laukHI&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=2",
    "Olay Yeri Değerlendirme":
        "https://www.youtube.com/watch?v=NyUeSRGTTL0&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=3",
    "Solunum Yolu Tıkanıklığı":
        "https://www.youtube.com/watch?v=66Ksd0QL-_A&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=4",
    "Kanamalarda İlk Yardım":
        "https://www.youtube.com/watch?v=f0Af9MRh75M&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=5",
    "Yaralanmalar":
        "https://www.youtube.com/watch?v=c9fcvWS3BhM&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=6",
    "Kırık Çıkık ve Burkulmalarda İlk Yardım":
        "https://www.youtube.com/watch?v=-h9xAf5CDhI&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=7",
    "Bilinç Bozuklukları":
        "https://www.youtube.com/watch?v=gUCu9nurDm4&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=8",
    "Taşımalar":
        "https://www.youtube.com/watch?v=69f_YG42wmM&list=PL1rWOqGIQrxc3kQflma7td5KFmV5uJ9IY&index=9",
  };

  static Map<String, String> links4 = {
    "Etik ve Trafik":
        "https://www.youtube.com/watch?v=LWg52MNEq5M&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=1",
    "Sorumluluk":
        "https://www.youtube.com/watch?v=VlgnTcK6rWo&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=2",
    "Yardımlaşma":
        "https://www.youtube.com/watch?v=bQC8oTKTdl8&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=3",
    "Tahammül":
        "https://www.youtube.com/watch?v=zmr5-bbKVoo&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=4",
    "Nezaket ve Saygı":
        "https://www.youtube.com/watch?v=m7bZGjVBIso&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=5",
    "Feragat ve Fedakarlık":
        "https://www.youtube.com/watch?v=z6_iciZS8nE&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=6",
    "Sabır":
        "https://www.youtube.com/watch?v=R3J5urJRXos&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=7",
    "Birbirini Uyarma":
        "https://www.youtube.com/watch?v=S_LFAMWeKI8&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=8",
    "Empati":
        "https://www.youtube.com/watch?v=fiWV6fmspmA&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=9",
    "Diğergamlık":
        "https://www.youtube.com/watch?v=tPNiAXCJ2uQ&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=10",
    "Öfke Yönetimi":
        "https://www.youtube.com/watch?v=6HGuWZjKx4Y&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=11",
    "Beden Dili":
        "https://www.youtube.com/watch?v=iY5h5s8Nu58&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=12",
    "Konuşma Üslubu":
        "https://www.youtube.com/watch?v=lV_nLPayIzM&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=13",
    "Denetim Görevlileri ve iletişim":
        "https://www.youtube.com/watch?v=24SBnXLSqdM&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=14",
    "Hak İhlalleri":
        "https://www.youtube.com/watch?v=3c7yw7986RI&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=15",
    "Sürücülerin Birbirine Etkisi":
        "https://www.youtube.com/watch?v=JQ3Vy0SYTog&list=PL1rWOqGIQrxeU2DfuizQspuWDwLhzo_oa&index=16",
  };

  static List<String> tips = [
    "Yol ve trafik kurallarını iyi anladığınızdan emin olun.",
    "Ehliyet sahibi sürücüye sahip bir arabada mümkün olduğunca pratik yapın.",
    "Test yerine erken gelin ve iyice dinlenin.",
    "Test sırasında sakin olun, odaklanın ve sınavı yapan kişinin tüm talimatlarına uyun.",
    "Bir konuda emin değilseniz soru sormaktan korkmayın.",
    "Gerekli tüm belgelere sahip olduğunuzdan ve arabanızın iyi durumda olduğundan emin olun.",
    "Derin bir nefes alın ve kendinize güvenin",
    "Boş bir otopark veya sakin bir yerleşim yeri gibi güvenli ve tanıdık bir ortamda pratik yaparak başlayın.",
    "Daima hız sınırı, trafik işaretleri ve sinyallerine uyun.",
    "Aracınızın çevrensini kontrol etmek için sık sık aynalarınızı kullanın.",
    "Yoldaki diğer araçlarla aranızda güvenli bir mesafe bırakın.",
    "Şerit değiştirirken veya dönerken daima sinyal verin.",
    "Şerit değiştirmeden önce güvenli olduğundan emin olun ve kör noktalarınızı kontrol edin.",
    "Asla alkolün etkisi altında araç sürmeyin.",
    "Daima emniyet kemerinizi takın .",
    "Zorlu hava koşullarının farkında olun ve sürüşünüzü buna göre ayarlayın.",
    "Araç kullanırken telefonunuzu veya başka bir elektronik cihazı kullanmayın.",
  ];

  
}
