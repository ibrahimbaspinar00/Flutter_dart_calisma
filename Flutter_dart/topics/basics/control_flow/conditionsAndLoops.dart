import 'dart:io';

void main() {
  // 1️⃣ 1’den 10’a kadar sayılar
  print("1️⃣ 1’den 10’a kadar sayılar:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("---------------------------------------------------");

  // 2️⃣ Bir sayının tek mi çift mi olduğunu bulma
  int x = 1;
  print("2️⃣ $x sayısı tek mi çift mi?");
  if (x % 2 == 0) {
    print("$x Çift Sayıdır.");
  } else {
    print("$x Tek Sayıdır.");
  }
  print("---------------------------------------------------");

  // 3️⃣ 1–10 arası çift sayılar
  print("3️⃣ 1–10 arası çift sayılar:");
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) print(i);
  }
  print("---------------------------------------------------");

  // 4️⃣ 10’dan 1’e geri sayım
  print("4️⃣ 10’dan 1’e geri sayım:");
  for (int i = 10; i >= 1; i--) print(i);
  print("---------------------------------------------------");

  // 5️⃣ 1–100 arası toplam
  print("5️⃣ 1–100 arası toplam:");
  int total = 0;
  for (int i = 1; i <= 100; i++) total += i;
  print(total);
  print("---------------------------------------------------");

  // 6️⃣ Sayı tek mi çift mi (örnek sayı: 456)
  int number1 = 456;
  print("6️⃣ $number1 sayısı tek mi çift mi?");
  if (number1 % 2 == 0) {
    print("$number1 Çifttir.");
  } else {
    print("$number1 Tektir.");
  }
  print("---------------------------------------------------");

  // 7️⃣ 10’a kadar çarpım tablosu
  print("7️⃣ 10’a kadar çarpım tablosu:");
  for (int a = 1; a <= 10; a++) {
    for (int b = 1; b <= 10; b++) {
      print("$a X $b = ${a * b}");
    }
  }
  print("---------------------------------------------------");

  // 8️⃣ Not kontrolü (örnek not: 70)
  int note = 70;
  print("8️⃣ Not kontrolü:");
  if (note >= 90) {
    print("Note: $note : Değeri AA");
  } else if (note >= 50) {
    print("Note: $note : Değeri BB");
  } else {
    print("Note: $note : Kaldınız");
  }
  print("---------------------------------------------------");

  // 9️⃣ ELSE-IF örneği (örnek score: 19)
  int score = 19;
  print("9️⃣ ELSE-IF örneği:");
  if (score > 50) {
    print("Geçtiniz.");
  } else if (score <= 40 && score > 30) {
    print("Geçtiniz. $score");
  } else if (score <= 30 && score > 20) {
    print("Geçtiniz. $score");
  } else {
    print("Kaldınız. $score");
  }
  print("---------------------------------------------------");

  // 🔟 Fibonacci serisi (ilk 10 sayı)
  print("🔟 Fibonacci serisi (ilk 10 sayı):");
  int a = 0, b = 1;
  for (int i = 1; i <= 10; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }
  print("---------------------------------------------------");

  // 1️⃣1️⃣ Basit hesap makinesi
  print("1️⃣1️⃣ Basit hesap makinesi:");

  double num1 = getDoubleInput("1. Sayıyı Girin:");
  double num2 = getDoubleInput("2. Sayıyı Girin:");
  String operation = getStringInput("İşlem Seçiniz (+, -, *, /):");

  double result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("0'a Bölme Yapılamaz");
        return;
      }
      result = num1 / num2;
      break;
    default:
      print("Geçersiz İşlem");
      return;
  }
  print("Sonuç: $num1 $operation $num2 = $result");
  print("---------------------------------------------------");

  // 1️⃣2️⃣ İki sayıyı toplama
  int number2_1 = 1;
  int number2_2 = 2;
  int sumResult = number2_1 + number2_2;
  print("İki Sayının Toplamı: $sumResult");

  // 1️⃣3️⃣ Dairenin alanını hesaplama
  double pi = 3.1415;
  double radius = 8;
  double circleArea = pi * radius * radius;
  print("Yarıçapı $radius cm olan dairenin alanı: $circleArea");

  // 1️⃣4️⃣ Fahrenheit → Celsius çevirme
  double fahrenheit = 100;
  double celsius = (fahrenheit - 32) * 5 / 9;
  print("Fahrenheit = $fahrenheit, Celsius = $celsius");

  // 1️⃣5️⃣ Temel veri tipleri ve değişkenler
  String name = "ibrahim";
  String surname = "başpınar";
  int age = 20;
  double size = 1.78;
  bool toWork = false;
  var schoolStatus = "okuyor";

  print("Name: $name");
  print("Surname: $surname");
  print("Age: $age");
  print("Size: $size");
  print("To work: $toWork");
  print("School status: $schoolStatus");

  // 1️⃣6️⃣ dynamic örnek
  dynamic dynamicVar = 10;
  print("Dynamic: $dynamicVar");
  dynamicVar = 12;
  print("Dynamic (güncel): $dynamicVar");

  // 1️⃣7️⃣ Basit hesaplama
  var collection = 10 + 20;
  print("Collection = $collection");
  collection += 5;
  print("Collection +5 = $collection");

  // 1️⃣8️⃣ const örnekleri
  const String appNameConst = "Test Application";
  const String appOwner = "Uygulama Geliştiricisi";
  const double piConst = 3.14;
  var impact = 2;
  print("Pi * impact = ${piConst * impact}");

  // 1️⃣9️⃣ final örnekleri
  final currentTime = DateTime.now();
  print("Uygulamanın çalıştırıldığı tarih ve saat: $currentTime");

  final String userName = "ibrahim";
  print("UserName: $userName");
}

// 💡 Yardımcı fonksiyonlar
double getDoubleInput(String prompt) {
  print(prompt);
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("Geçersiz giriş");
    exit(0);
  }
  return double.parse(input);
}

String getStringInput(String prompt) {
  print(prompt);
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("Geçersiz giriş");
    exit(0);
  }
  return input;
}
