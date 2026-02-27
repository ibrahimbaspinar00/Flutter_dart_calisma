void main() {
  List<Araba> Arabalar = [
    Araba("06EHA103", "Renault", "Megane IV", 2021, 49999, 1000000, yakitTuru.benzin, satisDurumu.satildi),
    Araba("34ABC123", "BMW", "320i", 2020, 45000, 1850000, yakitTuru.dizel, satisDurumu.hurda),
    Araba("06XYZ789", "Mercedes", "C200", 2019, 72000, 1950000, yakitTuru.elektirikli, satisDurumu.kiralandi),
    Araba("35DEF456", "Audi", "A3", 2021, 30000, 1750000, yakitTuru.lpgBenzin, satisDurumu.kiralandi),
    Araba("16GHI321", "Toyota", "Corolla", 2018, 98000, 950000, yakitTuru.benzin, satisDurumu.ilanda),
    Araba("07JKL654", "Honda", "Civic", 2022, 15000, 1400000, yakitTuru.dizel, satisDurumu.ilanda),
    Araba("55MNO987", "Ford", "Focus", 2017, 120000, 820000, yakitTuru.dizel, satisDurumu.hurda),
    Araba("41PRS258", "Volkswagen", "Passat", 2020, 67000, 1600000, yakitTuru.elektirikli, satisDurumu.ilanda),
    Araba("20TUV369", "Renault", "Megane", 2019, 83000, 900000, yakitTuru.lpgBenzin, satisDurumu.hurda),
    Araba("27WXY147", "Hyundai", "Elantra", 2021, -41000, 1100000, yakitTuru.dizel, satisDurumu.ilanda),
  ];

  for (var araba in Arabalar) {
    print("----------------------------------------");
    araba.aracBilgisi();
  }
}

enum yakitTuru { benzin, dizel, lpgBenzin, elektirikli }

enum satisDurumu { satildi, ilanda, kiralandi, hurda }

class Araba {
  String plaka;
  String marka;
  String model;
  int yil;
  double km;
  double fiyat;

  yakitTuru yakit;
  satisDurumu satis;

  


  Araba(this.plaka, this.marka, this.model, this.yil, this.km, this.fiyat, this.yakit, this.satis);

  // Araç bilgilerini yazdır
  void aracBilgisi() {
    print("Araç Plakası : $plaka");
    print("Araç Markası : $marka");
    print("Araç Modeli : $model");
    print("Araç Yılı : $yil");
    print("Araç Fiyat : $fiyat");
    print("Yakıt Türü : ${yakitYazisiGetir()}");
    print("Satış Durumu : ${satisYazisiGetir()}");

    // Km ve kullanım durumu kontrolü
    try {
      if (km < 0) throw Exception("Araç Kilometresi Negatif Girilmiştir!");
      
      String kullanilmaDurumu = km < 50000 ? "Az Kullanılmıştır." : "Çok Kullanılmıştır.";
      print("Araç Km : $km → $kullanilmaDurumu");

    } catch (e) {
      print("Hata: $e");
    }
  }

  // Enum'u yazıya çeviren fonksiyonlar
  String yakitYazisiGetir() {
    switch (yakit) {
      case yakitTuru.benzin:
        return "Benzin";
      case yakitTuru.dizel:
        return "Dizel";
      case yakitTuru.lpgBenzin:
        return "LPG + Benzin";
      case yakitTuru.elektirikli:
        return "Elektrikli";
    }
  }

  String satisYazisiGetir() {
    switch (satis) {
      case satisDurumu.hurda:
        return "Hurda";
      case satisDurumu.ilanda:
        return "İlanda";
      case satisDurumu.kiralandi:
        return "Kiralandı";
      case satisDurumu.satildi:
        return "Satıldı";
    }
  }
}
