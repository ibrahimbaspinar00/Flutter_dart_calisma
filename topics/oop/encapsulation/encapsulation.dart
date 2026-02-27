void main() {
  // YAŞ İÇİN
  var kisi = Kisi();
  kisi.yas = 25;
  print("Yaş: ${kisi.yas}");
  kisi.yas = -5;
  print("Yaş: ${kisi.yas}");

  // İSİM İÇİN
  var kisi1 = Kisi1();
  kisi1.isim = "Al";
  print("İsim : ${kisi1.isim}");
  kisi1.isim = "Mehmet";
  print("İsim: ${kisi1.isim}");

  // ÜRÜN İÇİN
  var urun = Urun();
  urun.fiyat = 200;       // setter kullan
  print("Ürün Fiyatı: ${urun.fiyat}");
  urun.fiyat = -5;        // geçersiz
  print("Ürün Fiyatı: ${urun.fiyat}");
}

class Kisi {
  int _yas = 0;

  int get yas => _yas;

  set yas(int yeniYas) {
    if (yeniYas >= 0) {
      _yas = yeniYas;
    } else {
      print("Hata: Yaş Negatif Olamaz.");
    }
  }
}

class Kisi1 {
  String _isim = "";

  String get isim => _isim;

  set isim(String yeniIsim){
    if(yeniIsim.length >= 3){
      _isim = yeniIsim;
    } else {
      print("Hata: İsim en az 3 Karakter olmalı");
    }
  }
}

class Urun {
  int _fiyat = 0;
  
  int get fiyat => _fiyat;

  set fiyat(int yeniFiyat){
    if (yeniFiyat >= 0){
      _fiyat = yeniFiyat;
    } else {
      print("Hata: Fiyat negatif olamaz");
    }
  }
}
