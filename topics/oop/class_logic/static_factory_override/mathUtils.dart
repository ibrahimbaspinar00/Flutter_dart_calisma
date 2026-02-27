void main() {
  int toplamSonucu = MatematikAraclari.topla(5, 15);
  int cikarmaSonucu = MatematikAraclari.cikar(25, 5);
  int carpmaSonucu = MatematikAraclari.carp(5, 4);
  int bolmeSonucu = MatematikAraclari.bol(80, 4);

  print("\n=== MATEMATİK İŞLEMLERİ ===");
  print("");
  print("Toplama Sonucu : $toplamSonucu");
  print("Çıkarma Sonucu : $cikarmaSonucu");
  print("Çarpma Sonucu  : $carpmaSonucu");
  print("Bölme Sonucu   : $bolmeSonucu");
  
  print("\n===========================");
}

class MatematikAraclari {

  static int topla(int sayi1, int sayi2) {
    return sayi1 + sayi2;
  }

  static int cikar(int sayi1, int sayi2) {
    return sayi1 - sayi2;
  }

  static int carp(int sayi1, int sayi2) {
    return sayi1 * sayi2;
  }

  static int bol(int sayi1, int sayi2) { // tip ekledik
    return sayi1 ~/ sayi2; // tam sayı bölme
  }
}
