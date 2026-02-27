void main(){

  Diktortgen d = Diktortgen(genislik: 20, yukseklik: 2);
  print("Alan: ${d.alan()}");
  print("Çevre: ${d.cevre()}");

}

class Diktortgen{
  double genislik;
  double yukseklik;

Diktortgen({required this.genislik, required this.yukseklik});

double alan (){
  return genislik * yukseklik;
}

double cevre (){
  return 2 * (yukseklik + genislik);
  }
}