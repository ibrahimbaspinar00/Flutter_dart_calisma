void main (){
  
  // 🟢 Soru 1
  // int? sayi = null; // Bu değişkene bir değer atamak istersek nasıl yaparsın? 
  // Hangi operatörü kullanırsın? ??

  int? sayi = null;
  sayi = 5;

  print(sayi);

  // 🟢 Soru 2
  // String? isim;
  // print(isim?.length); 
  // Bu kod null olduğunda ne döner? Hata verir mi?

  String? isim;
  print(isim?.length);

  // 🟢 Soru 3
  // int? a = null;
  // int b = 10;
  // int toplam = (a ?? 0) + b; 
  // Burada ?? operatörü neden kullanıldı?

  int? a = null;
  int b = 10;
  int toplam = (a ?? 0) + b;
  print(toplam);
}