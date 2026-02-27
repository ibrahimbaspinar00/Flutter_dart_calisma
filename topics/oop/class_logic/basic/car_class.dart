void main(){
  
  Araba a = Araba(marka:"Bmw", model: "M4 compacition", yil: 2012);
  print("Aracın Markası: ${a.marka}; Aracın Modeli ${a.model}; Aracın Yılı ${a.yil}; Aracın Yaşı: ${a.yasHesaplama(2026)}");
}

class Araba{
  String marka;
  String model;
  int yil;

  Araba({required this.marka, required this.model, required this.yil});

  int yasHesaplama(int buYil){
    return buYil - yil;
    
  }

}