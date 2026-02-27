void main() {

  Kutuphane benimKutuphanem = Kutuphane();

  print("\n📚 --- KÜTÜPHANE SİSTEMİ BAŞLATILDI ---\n");

  // 10 Kitap Ekleme
  benimKutuphanem.kitapEkle(Kitap(baslik: "Nutuk", yazar: "Mustafa Kemal Atatürk"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Suç ve Ceza", yazar: "Dostoyevski"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Sefiller", yazar: "Victor Hugo"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "1984", yazar: "George Orwell"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Hayvan Çiftliği", yazar: "George Orwell"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Simyacı", yazar: "Paulo Coelho"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Kürk Mantolu Madonna", yazar: "Sabahattin Ali"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Dönüşüm", yazar: "Franz Kafka"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Beyaz Diş", yazar: "Jack London"));
  benimKutuphanem.kitapEkle(Kitap(baslik: "Satranç", yazar: "Stefan Zweig"));

  // Listeleme
  benimKutuphanem.kitaplariListele();

  // Kitap Silme
  benimKutuphanem.kitapSil("1984");

  // Tekrar Listeleme
  benimKutuphanem.kitaplariListele();
}

class Kitap {
  String baslik;
  String yazar;

  Kitap({required this.baslik, required this.yazar});
}

class Kutuphane {
  List<Kitap> kitaplar = [];

  void kitapEkle(Kitap kitap) {
    kitaplar.add(kitap);
    print("✔ '${kitap.baslik}' eklendi.");
  }

  void kitapSil(String baslik) {
    int oncekiSayi = kitaplar.length;

    kitaplar.removeWhere((kitap) => kitap.baslik == baslik);

    if (kitaplar.length < oncekiSayi) {
      print("🗑 '$baslik' silindi.");
    } else {
      print("⚠ '$baslik' bulunamadı.");
    }
  }

  void kitaplariListele() {
    print("\n📖 --- KÜTÜPHANE LİSTESİ ---");

    if (kitaplar.isEmpty) {
      print("Kütüphanede hiç kitap yok.");
      return;
    }

    int sira = 1;
    for (var kitap in kitaplar) {
      print("$sira. ${kitap.baslik}  |  Yazar: ${kitap.yazar}");
      sira++;
    }

    print("----------------------------\n");
  }
}
