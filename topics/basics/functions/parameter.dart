void main(){
  bilgiYaz(ad: "İbrahim", soyad: "Başpınar");
  bilgiYaz(ad: "Ömer Faruk", soyad: "Dikili", yas: 25);
}

void bilgiYaz({
  required String ad,
  required String soyad,
  int? yas,

}) {

  print("Ad : $ad");
  print("Soyad : $soyad");
  
  int gercekYas = yas ?? 0; // boş yaş değerine 0 girer.
      
  print("Yaş : $gercekYas");
}
