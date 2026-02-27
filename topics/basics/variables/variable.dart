void main() {
  // 1️⃣ İki sayıyı toplama
  int number1 = 1;
  int number2 = 2;
  int result = number1 + number2;
  print("İki Sayının Toplamı: $result");

  // 2️⃣ Dairenin alanını hesaplama
  double pi = 3.1415;
  double radius = 8;
  double circleArea = pi * radius * radius;
  print("Yarıçapı $radius cm olan dairenin alanı: $circleArea");

  // 3️⃣ Fahrenheit → Celsius çevirme
  double fahrenheit = 100;
  double celsius = (fahrenheit - 32) * 5 / 9;
  print("Fahrenheit = $fahrenheit, Celsius = $celsius");

  // 4️⃣ Temel veri tipleri ve değişkenler
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

  // 5️⃣ dynamic örnek
  dynamic x = 10;
  print("Dynamic x: $x");
  x = 12;
  print("Dynamic x (güncel): $x");

  // 6️⃣ Basit hesaplama
  var collection = 10 + 20;
  print("Collection = $collection");
  collection += 5;
  print("Collection +5 = $collection");

  // 7️⃣ const örnekleri
  const String appNameConst = "Test Application";
  const String appOwner = "Uygulama Geliştiricisi";
  const double piConst = 3.14;
  var impact = 2;
  print("Pi * impact = ${piConst * impact}");

  // 8️⃣ final örnekleri
  final currentTime = DateTime.now();
  print("Uygulamanın çalıştırıldığı tarih ve saat: $currentTime");

  final String userName = "ibrahim";
  print("UserName: $userName");

  // 9️⃣ Alıştırma örnekleri
  // var
  var initialValue = 0;
  var score = initialValue + 10;
  print("initialValue: $initialValue, score: $score");

  // const
  const String appName = "MyApp";
  print("Const uygulama adı: $appName");

  // final
  final current_time = DateTime.now();
  print("Programın çalıştırıldığı date time: $current_time");

  // dynamic
  dynamic veri = 10;
  print("Dynamic veri: $veri");
  veri = "on";
  print("Dynamic veri (güncel): $veri");

  dynamic a = 4;
  print("Dynamic a: $a");
  a = "dfdf";
  print("Dynamic a (güncel): $a");
}
