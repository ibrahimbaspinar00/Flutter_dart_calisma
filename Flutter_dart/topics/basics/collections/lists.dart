import 'dart:io';

void main() {
  // 🟢 ALIŞTIRMA 1 → Liste Oluştur ve Eleman Ekle
  List<String> sehirler = [];
  sehirler.add("İstanbul");
  sehirler.add("Ankara");
  sehirler.add("Eskişehir");
  print("Tek Tek Eklenen Şehirler: $sehirler");

  // 🟢 ALIŞTIRMA 2 → Toplu Eleman Ekle
  List<String> sehirler1 = [];
  sehirler1.addAll(["Bursa", "Antalya", "Trabzon"]);
  print("addAll ile Eklenen Şehirler: $sehirler1");

  // 🟢 ALIŞTIRMA 3 → Araya Eleman Ekle
  List<String> names = ["Ali", "Veli", "Ayşe"];
  names.insert(1, "Mehmet");
  print("Araya Eklenen Eleman: $names");

  // 🟢 ALIŞTIRMA 4 → Eleman Silme
  List<int> numbers = [10, 20, 30, 40, 50];
  numbers.removeAt(2); // 30'u sil
  numbers.removeAt(0); // ilk elemanı sil
  print("Eleman Silme Sonrası: $numbers");

  // 🟢 ALIŞTIRMA 5 → Listede Var mı Kontrol Et
  List<String> fruits = ["Elma", "Armut", "Muz"];
  print("Muz var mı? ${fruits.contains("Muz")}");
  print("Çilek var mı? ${fruits.contains("Çilek")}");

  // 🟢 ALIŞTIRMA 6 → Listeyi Döngü ile Gez
  List<int> nums = [1, 2, 3, 4, 5];
  nums.forEach((n) => print("Sayı: $n"));

  // 🟢 ALIŞTIRMA 7 → Yeni Liste Üret
  List<int> nums2 = [2, 4, 6, 8];
  List<int> doubled = nums2.map((n) => n * 2).toList();
  print("2 ile Çarpılmış Liste: $doubled");

  // 🟢 ALIŞTIRMA 8 → Filtreleme Yap
  List<int> nums3 = [5, 12, 7, 18, 3, 20];
  List<int> filtered = nums3.where((n) => n > 10).toList();
  print("10'dan Büyük Sayılar: $filtered");

  // 🟢 ALIŞTIRMA 9 → Listeyi Sırala
  List<int> nums4 = [42, 7, 19, 3, 25];
  nums4.sort();
  print("Küçükten Büyüğe: $nums4");
  nums4.sort((a, b) => b.compareTo(a));
  print("Büyükten Küçüğe: $nums4");

  // 🟢 ALIŞTIRMA 10 → Birleştir ve Sırala
  List<int> a = [3, 1, 7];
  List<int> b = [2, 7, 4];
  List<int> united = [...a, ...b].toSet().toList();
  united.sort();
  print("Birleştirilmiş ve Sıralanmış Liste: $united");

  List<String> x = ["w", "y", "z"];
  List<String> z = ["x", "y", "z"];
  List<String> unitedStr = [...x, ...z].toSet().toList();
  unitedStr.sort();
  print("Birleştirilmiş ve Sıralanmış String Liste: $unitedStr");

  // 🟢 ALIŞTIRMA 11 → 50 üstü / altı ayır
  List<int> nums5 = [30, 55, 80, 49, 50, 100];
  List<int> above50 = nums5.where((n) => n >= 50).toList();
  List<int> below50 = nums5.where((n) => n < 50).toList();
  print("50 ve Üstü: $above50");
  print("50 Altı: $below50");

  // 🟢 ALIŞTIRMA 12 → Frekans Hesabı
  List<String> fruits2 = ["elma", "armut", "elma", "muz", "elma", "muz"];
  Map<String, int> frequency = {};
  for (var f in fruits2) {
    frequency[f] = (frequency[f] ?? 0) + 1;
  }
  print("Frekanslar: $frequency");

  String mostFrequent = "";
  int maxCount = 0;
  frequency.forEach((key, value) {
    if (value > maxCount) {
      maxCount = value;
      mostFrequent = key;
    }
  });
  print("En çok geçen: $mostFrequent ($maxCount kez)");

  // 🟢 ALIŞTIRMA → Çift Sayıları Filtrele Örnek
  List<int> sample = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var evens = sample.where((n) => n % 2 == 0).toList();
  print("Çift Sayılar: $evens");

  // 🟢 ALIŞTIRMA → Listeyi Ters Yazdır
  List<int> nums6 = [1, 2, 3, 4, 5];
  for (var n in nums6.reversed) {
    print("Ters: $n");
  }

  List<String> chars = ["A", "B", "C", "D"];
  for (var c in chars.reversed) {
    print("Ters Char: $c");
  }

  // 🟢 ALIŞTIRMA → Tekrar Edenleri Kaldır
  List<int> nums7 = [1, 2, 2, 3, 4, 4, 4, 5];
  List<int> uniqueNums = nums7.toSet().toList();
  print("Tekrarsız Sayılar: $uniqueNums");

  List<String> letters = ["a", "a", "b", "b", "c", "c"];
  List<String> uniqueLetters = letters.toSet().toList();
  print("Tekrarsız Harfler: $uniqueLetters");

  // 🟢 ALIŞTIRMA → Toplam ve Ortalama
  List<int> numbersTotal = [5, 10, 15, 20];
  int sumTotal = numbersTotal.reduce((a, b) => a + b);
  print("Toplam: $sumTotal");

  List<int> numbersAvg = [40, 55, 70, 90];
  double avg = numbersAvg.reduce((a, b) => a + b) / numbersAvg.length;
  print("Ortalama: $avg");

  // 🟢 ALIŞTIRMA → En Büyük ve En Küçük
  List<int> nums8 = [12, 4, 19, 7, 20, 2];
  int maxNum = nums8.reduce((a, b) => a > b ? a : b);
  int minNum = nums8.reduce((a, b) => a < b ? a : b);
  print("En Büyük: $maxNum, En Küçük: $minNum");
}
