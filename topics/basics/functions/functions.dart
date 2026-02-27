// 1️⃣ Basit Fonksiyon
void sayHello() {
  print("Merhaba Dayı!");
}

// 2️⃣ Parametreli Fonksiyonlar
int topla(int a, int b) => a + b;
int cikar(int a, int b) => a - b;
int carp(int a, int b) => a * b;
double bol(int a, int b) => a / b;

// 3️⃣ Named / Opsiyonel Parametreler
void tanit({String? name, int? age}) {
  String realName = name ?? "Bilinmiyor";
  int realAge = age ?? 0;
  print("Gerçek İsim: $realName, Gerçek Yaş: $realAge");
}

// 4️⃣ Return Değerli Fonksiyonlar
int kupAl(int num) => num * num * num;
int kare(int sayi) => sayi * sayi;
int mutlakDeger(int sayi) => sayi < 0 ? -sayi : sayi;

// 5️⃣ Fonksiyon İçinde Fonksiyon
int Function(int) carpmaFonksiyonu(int a) => (b) => a * b;

Map<String, int Function()> ustFonksiyon(int sayi) {
  return {
    "kare": () => sayi * sayi,
    "kup": () => sayi * sayi * sayi,
  };
}

// 6️⃣ Parametresiz ve parametreli fonksiyon örnekleri
void parametreYok() {
  print("Program Çalışıyor");
}

void selamVer(String isim) {
  print("Merhaba $isim");
}

int toplam(int a, int b) => a + b;

int kareAl(int a) => a * a;

void parametreAlmayan() {
  int sayi = 10;
  int sonuc = sayi * sayi * sayi;
  print("Küp: $sonuc");
}

// 7️⃣ Market Class Örneği
class Market {
  final String name;
  final String address;
  final List<String> products;

  Market({required this.name, required this.address, required this.products});

  int getProductsCount() => products.length;
  String getFirstItem() => products.first;
}

// 8️⃣ Main Fonksiyonu
void main() {
  // Basit fonksiyon
  sayHello();

  // Parametreli fonksiyon
  selamVer("İbrahim");

  int total = toplam(10, 50);
  print("Toplam: $total");

  // Matematik işlemleri
  int sonucTopla = topla(19, 1);
  int sonucCikar = cikar(21, 1);
  int sonucCarp = carp(5, 4);
  double sonucBol = bol(80, 4);

  print("Toplama: $sonucTopla");
  print("Çıkarma: $sonucCikar");
  print("Çarpma: $sonucCarp");
  print("Bölme: $sonucBol");

  // Named / opsiyonel parametreler
  tanit();
  tanit(name: "Ahmet");
  tanit(age: 18);
  tanit(name: "İbrahim Başpınar", age: 20);

  // Return değerli fonksiyonlar
  int kupSonucu = kupAl(8);
  print("Küp: $kupSonucu");

  print("Kare: ${kare(5)}");
  print("Mutlak Değer: ${mutlakDeger(-8)}");
  print("Mutlak Değer: ${mutlakDeger(3)}");

  // Fonksiyon içinde fonksiyon
  var ikiyleCarp = carpmaFonksiyonu(2);
  print("2 ile çarp: ${ikiyleCarp(50)}");

  var fonksiyonlar = ustFonksiyon(3);
  print("Kare: ${fonksiyonlar["kare"]!()}");
  print("Küp: ${fonksiyonlar["kup"]!()}");

  // Parametresiz ve sabit sayı işlemleri
  parametreYok();
  parametreAlmayan();

  // Market class örneği
  Market gimsa = Market(
    name: "Gimsaş",
    address: "Ankara Oğuzlar",
    products: ["Elma", "Armut", "Kalem"],
  );
  var itemCount = gimsa.getProductsCount();
  print("Ürün Sayısı: $itemCount");
  print("İlk Ürün: ${gimsa.getFirstItem()}");
}
