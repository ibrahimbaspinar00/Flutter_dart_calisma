import 'dart:convert';
import 'dart:io';

void main() async {
  var file = File('assets/student.json');
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');

  try {
    // --------------------------
    // 1️⃣ Mevcut student.json'u oku
    // --------------------------
    if (await file.exists()) {
      String contents = file.readAsStringSync();
      var student = jsonDecode(contents);

      print("📄 student.json’dan okunan veriler:");
      print("Öğrenci Adı: ${student['name']}");
      print("Öğrenci Yaşı: ${student['age']}");
      print("Aktif mi?: ${student['isActive']}");
      print('-----------------------------------');
    } else {
      print("student.json dosyası bulunamadı.");
    }

    // --------------------------
    // 2️⃣ API’den veri çek ve student.json’a yaz
    // --------------------------
    HttpClient client = HttpClient();
    HttpClientRequest request = await client.getUrl(url);
    HttpClientResponse response = await request.close();

    String responseBody = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      var data = jsonDecode(responseBody);

      // JSON string olarak dosyaya yaz
      await file.writeAsString(jsonEncode(data));

      print("✅ API’den veri çekildi ve student.json’a kaydedildi!");
      print("Dosya yolu: ${file.path}");
    } else {
      print("API hatası: ${response.statusCode}");
    }

    client.close();
  } catch (e) {
    print('Hata: $e');
  }
}
