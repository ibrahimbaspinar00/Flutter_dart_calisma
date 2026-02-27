/*
void main() {
  var calisan1 = Calisan();

  calisan1.maas = 5000;      // maaş atanır
  print(calisan1.maas);      // 5000

  calisan1.maasArttir(10);   // %10 artır
  print(calisan1.maas);      // 5500

  calisan1.maas = -1000;     // hata verir
  print(calisan1.maas);      // hâlâ 5500
}


class Calisan {
  double _maas = 0;

  set maas(double deger) {
    if (deger < 0) {
      print("Maaş negatif olamaz!");
    } else {
      _maas = deger;
    }
  }
  double get maas => _maas;

  void maasArttir(double yuzde){
    if (yuzde < 0){
      print("Artış negatif olamaz!");
      return;
    }
    _maas += _maas * (yuzde / 100);
  }

}
*/

void main(){
  var calisan1 = Calisan();

  calisan1.maas = 5000; // Maaş Atanır.
  print("Çalışan1 Maaş: ${calisan1._maas}");

  calisan1.maasArttir(10); // Maaşı Yüzde 10 arttırır
  print("Çalışan1 Maaş: ${calisan1._maas}");

  calisan1.maas = -1000; // Hata verir
  print("Çalışan1 Maaş: ${calisan1._maas}"); // hala maaş aynı kalır 

}

class Calisan{
  double _maas = 0;

  set maas (double deger){
    if(deger < 0){
      print("Maaş Negatif Olamaz Girilen Tutar ${deger}");
    } else {
      _maas = deger;
    }
  }
  double get maas => _maas;

  void maasArttir(double yuzde){
    if(yuzde < 0){
      print("Artış Negatif Olamaz");
      return;
    }
    _maas += _maas * (yuzde / 100);
  }
}