import 'dart:convert'; // jsonDecode ve jsonEncode burada var
void main () {
   
// ALIŞTIRMA 1
// ===========================
// Bir Map oluştur:
// Key: "name", "age", "city"
// Value: Kendi bilgilerini gir.
//
// Map'i ekrana yazdır.

  Map<String, dynamic> kullaniciGirdisi = {
    "name" : "İbrahim",
    "age"  : 20,
    "city" : "Ankara"
  };

  print(kullaniciGirdisi);  
  yazi("");

// ALIŞTIRMA 2
// ===========================
// Yukarıdaki Map'ten sadece "name" değerini ekrana yazdır.
//
// Beklenen: Sadece isim görünecek.

  print(kullaniciGirdisi["name"]); // Yukarıdaki Map'ten sadece "name" değerini ekrana yazdır.
  yazi("");


// ALIŞTIRMA 3
// ===========================
// Map'e yeni bir alan ekle:
// "job": "Student"
//
// Son halini ekrana yazdır.

  kullaniciGirdisi["job"] = "Student"; // Map'e yeni bir alan ekle:
  print(kullaniciGirdisi);  
  yazi("");

// ALIŞTIRMA 4
// ===========================
// "age" değerini değiştir.
// Yeni bir yaş ata.
//
// Map'in override mantığını gözlemle.

kullaniciGirdisi["age"] = 30; // "age" değerini değiştir.
print(kullaniciGirdisi);    
yazi("");

// ALIŞTIRMA 5
// ===========================
// Map'ten "city" bilgisini sil.
//
// remove() kullan.

kullaniciGirdisi.remove("city"); // Map'ten "city" bilgisini sil.
print(kullaniciGirdisi);
yazi("");

// ALIŞTIRMA 6
// ===========================
// Map'in kaç eleman tuttuğunu ekrana yazdır.
//
// length kullan.


print("Toplam kaç KEY var: ${kullaniciGirdisi.length}");  // Map'in kaç eleman tuttuğunu ekrana yazdır.
yazi("");

// ALIŞTIRMA 7
// ===========================
// Map içindeki tüm KEY'leri ekrana yazdır.
//
// keys kullan.

print(kullaniciGirdisi.keys); // Map içindeki tüm KEY'leri ekrana yazdır.
yazi("");

// ALIŞTIRMA 8
// ===========================
// Map içindeki tüm VALUE'ları ekrana yazdır.
//
// values

print(kullaniciGirdisi.values); // Map içindeki tüm VALUE'ları ekrana yazdır.
yazi("");

// ALIŞTIRMA 9
// ===========================
// Map üzerinde döngü kur.
// forEach kullanarak:
// key ve value birlikte yazdır.
//
// Örnek çıktı:
// name : Ali
// age : 22

kullaniciGirdisi.forEach((key, value) {
  print("$key : $value");
  yazi("");
});

// ALIŞTIRMA 10 (ÖNEMLİ)
// ===========================
// İçinde liste olan Map oluştur.
//
// "courses": ["Flutter", "Dart", "Python"]
//
// Sonra sadece "Flutter" değerini ekrana yazdır.
// Map + List birlikte kullanımını anlamaya çalış.

Map<String, dynamic> courses = {
  "courses":["Flutter", "Dart", "Python"]
};


print(courses["courses"][0]);
yazi("");

// ALIŞTIRMA 11 (GERÇEK HAYAT MODELİ)
// ===========================
// İç içe Map oluştur.
//
// Bir kullanıcı sistemi tasarla:
//
// user1:
// name: "Ahmet"
// age: 20
//
// user2:
// name: "Mehmet"
// age: 25
//
// Sonra sadece user2'nin ismini ekrana yazdır.

  // Kullanıcı listesi oluşturuluyor

}



void yazi (String Metin){
  print("BU LİSTE GÜNCELLENMİŞTİR");
}