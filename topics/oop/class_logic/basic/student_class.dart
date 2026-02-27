void main() {
  Student s = Student(isim: "İbrahim");
  print("Öğrencinin Adı: ${s.isim}");

  s.notEkle(); // Notları ekle
  double ortalama = s.notOrt(); // Ortalama hesapla
  print("Ortalama: $ortalama");
  s.durum();

  
}

class Student {
  String isim;
  List<double> notlar = [];

  Student({required this.isim});

  void notEkle() {
    notlar.add(40);
    notlar.add(60);
    notlar.add(30);
  }

  double notOrt() {
    if (notlar.isEmpty) return 0;
    double toplam = 0;

    for (double n in notlar) {
      toplam += n;
    }

    return toplam / notlar.length;
  }

  void durum (){
    double ortalama = notOrt();
    if(ortalama < 50){
      print("Ortalama: $ortalama → Kaldı");
    } else {
      print("Ortalama: $ortalama → Geçti");
    }
  }

}
