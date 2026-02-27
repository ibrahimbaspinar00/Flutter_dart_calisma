void main() {
  // Ürünleri oluştur
  var urun1 = Urun(isim: "Laptop", fiyat: 10000);
  var urun2 = Urun(isim: "Mouse", fiyat: 500);
  var urun3 = Urun(isim: "Klavye", fiyat: 800);

  // Siparişi oluştur ve ürünleri ekle
  var siparis = Siparis(urunler: [urun1, urun2, urun3]);

  // Toplam fiyatı yazdır
  print("Siparişin Toplam Fiyatı: ${siparis.toplamFiyat()} TL");
}

class Urun {
  String isim;
  double fiyat;

  Urun({required this.isim, required this.fiyat});
}

class Siparis {
  List<Urun> urunler;
  Siparis({required this.urunler});

  // Toplam Fiyatı Hesaplayan method
  double toplamFiyat(){
    double toplam = 0;
    for (var urun in urunler){
      toplam += urun.fiyat;
    }
    return toplam;
  }
}
