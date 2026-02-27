enum YakitTuru { benzin, dizel, elektrik }
enum SatisDurumu { satildi, satilik }

void main() {
  List<Araba> arabalar = [
    Araba("06EHA103", "RENAULT", "Megane IV", 2021, 64000, 2000000, YakitTuru.benzin, SatisDurumu.satildi),
  ];

  for (var araba in arabalar) {
    print("---------------------------");
    araba.aracBilgisi(); 
    print("---------------------------");
  }
}

class Araba{
  String plaka;
  String marka;
  String model;
  int yil;
  double km;
  double fiyat;
  YakitTuru yakit;
  SatisDurumu satis;

  Araba(this.plaka, this.marka, this.model, this.yil, this.km, this.fiyat, this.yakit, this.satis);
    
    String yakitYazisiGetir() {
  switch (yakit) {
    case YakitTuru.benzin: return "Benzin";
    case YakitTuru.dizel: return "Dizel";
    case YakitTuru.elektrik: return "Elektrikli";
    default: return "Bilinmeyen";

  }
}

    String satisYazisiGetir() {
  switch (satis) {
    case SatisDurumu.satildi: return "Satıldı";
    case SatisDurumu.satilik: return "Satılık";
    default: return "Bilinmeyen"; 

  }
}

    void aracBilgisi(){
        print("Plaka ${plaka}");
        print("Marka ${marka}");
        print("Model ${model}");
        print("Yıl ${yil}");
        print("Km ${km}");
        print("Fiyat ${fiyat}");
        print("Yakıt $yakit");
        print("Satış $satis");
        print("Yakıt Türü ${yakitYazisiGetir()}");
        print("Satış Durumu ${satisYazisiGetir()}");


}
}


