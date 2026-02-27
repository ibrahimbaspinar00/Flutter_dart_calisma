void main() {
  Banka ibrahimHesap = Banka(kullaniciAdi: "İbrahim Başpınar");

  // Para Yatırma
  ibrahimHesap.paraYatir(1000);

  // Para Çekme
  ibrahimHesap.paraCek(500);
  ibrahimHesap.paraCek(600);


  // Bakiye Sorgulama
  ibrahimHesap.bakiyeSorgulama();
}

class Banka {
  String kullaniciAdi;
  int bakiye = 0;

  Banka({required this.kullaniciAdi, this.bakiye = 0});

  void paraYatir(int miktar) {
    if (miktar > 0) {
      bakiye += miktar;
      print("");
      print("Para Yatırma İşlemi");
      print("Yatırılan Tutar : $miktar TL");
      print("Güncel Bakiye   : $bakiye TL");
      print("");
    } else {
      print("Hata: Negatif veya sıfır tutar yatırılamaz. ($miktar TL)");
      print("");
    }
  }

  void paraCek(int miktar) {
    if (miktar <= 0) {
      print("Hata: Geçersiz çekim tutarı. ($miktar TL)");
      print("");
    } 
    else if (bakiye >= miktar) {
      bakiye -= miktar;
      print("Para Çekme İşlemi");
      print("Çekilen Tutar   : $miktar TL");
      print("Kalan Bakiye    : $bakiye TL");
      print("");
    } 
    else {
      print("Yetersiz bakiye.");
      print("Çekilmek İstenen: $miktar TL");
      print("Mevcut Bakiye   : $bakiye TL");
      print("");
    }
  }

  void bakiyeSorgulama() {
    print("Hesap Bilgileri");
    print("Hesap Sahibi : $kullaniciAdi");
    print("Mevcut Bakiye: $bakiye TL");
    print("");
  }
}
