void main() {
  // 1️⃣ Sıfıra bölme hatası
  try {
    int sonuc = 10 ~/ 0;
    print(sonuc);
  } catch (e) {
    print("Hata Oluştu!: $e");
  } finally {
    print("Finally çalıştı, program devam ediyor.\n");
  }

  // 2️⃣ String'i sayıya çevirme hatası
  try {
    int sayi = int.parse("abc");
    print(sayi);
  } catch (e) {
    print("Bu bir sayı değil!\n");
  }

  // 3️⃣ Kendi yazdığımız hatayı test edelim
  try {
    sayiKontrol(-5);
  } catch (e) {
    print("Yakalanan hata: $e\n");
  }

  // 4️⃣ Metin kontrolü
  try {
    metinKontrol("");
  } catch (e) {
    print("Yakalanan hata: $e\n");
  }

  // 5️⃣ Liste index hatası
  try {
    List<int> sayilar = [1, 2, 3];
    print(sayilar[5]);
  } catch (e) {
    print("Liste index hatası\n");
  }

  // 6️⃣ Null hatası
  String? isim;

  try {
    print(isim!.length);
  } catch (e) {
    print("Null hatası oluştu\n");
  }

  // 7️⃣ FormatException'i özel yakalama
  try {
    veriKontrol("abc");
  } on FormatException {
    print("Geçersiz sayı girdiniz!\n");
  }

  // 8️⃣ Listeyi bölerek stackTrace gösterme
  listeyiBol([5, 4, 0, 2]);

  print("\nProgram sorunsuz şekilde bitirildi.\n");

  // 9️⃣ String -> int dönüşüm örnek
  List<String> liste = ["10", "20", "abc", "40"];
  for (var item in liste) {
    print(stringiSayiyaCevir(item));
  }

  // 1️⃣0️⃣ Liste elemanı getirme
  List<String> veriler = ["Ali", "Veli"];

  try {
    veriGetir(5, veriler);
  } catch (e) {
    print("Üst Katman Hatayı Yönetti");
  }
}

////////////////////////////////////////////////////////
/// FONKSİYONLAR
////////////////////////////////////////////////////////

// Negatif sayı kontrolü
void sayiKontrol(int sayi) {
  if (sayi < 0) {
    throw Exception("Negatif sayı kabul edilmiyor!");
  }
  print("Sayı geçerli: $sayi");
}

// Boş metin kontrolü
void metinKontrol(String metin) {
  if (metin.isEmpty) {
    throw Exception("Boş metin girdin!");
  }
  print("Metin geçerli: $metin");
}

// String -> int dönüşüm kontrolü
void veriKontrol(String veri) {
  int sayi = int.parse(veri); // FormatException burada fırlatılır
  print("Geçerli sayı: $sayi");
}

// Liste üzerinde işlem yapıp hatayı ve stackTrace'i yakalama
void listeyiBol(List<int> sayilar) {
  try {
    for (var s in sayilar) {
      int sonuc = 100 ~/ s;
      print("Sonuç: $sonuc");
    }
  } catch (e, s) {
    print("Hata tipi: ${e.runtimeType}");
    print("Mesaj: $e");
    print("StackTrace:");
    print(s);
  } finally {
    print("Liste işlemi tamamlandı.\n");
  }
}

// String -> int dönüşüm fonksiyonu
int stringiSayiyaCevir(String veri) {
  try {
    return int.parse(veri);
  } on FormatException catch (e) {
    print("Format Hatası Yakalandı: $e");
    return 0;
  }
}

// Liste elemanı getirme ve hatayı üst katmana fırlatma
void veriGetir(int index, List<String> liste) {
  try {
    print(liste[index]);
  } catch (e) {
    print("Log alındı: $e");
    rethrow; // yeniden fırlatma demek
  }

}
