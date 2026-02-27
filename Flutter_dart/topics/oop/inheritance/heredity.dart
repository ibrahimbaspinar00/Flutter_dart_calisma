void main(){
  Hayvan h = Hayvan(isim: "Köpek");
   h.sesCikar();
   h.issir();
  
  Kedi k = Kedi(isim: "Kedi");
    k.sesCikar();
    k.tirmala();

  Aslan a = Aslan(isim: "Aslan");
    a.ayagaKalk();
    a.kukre();

}

class Hayvan {
  String isim;

  Hayvan({required this.isim});

  @override
  void sesCikar(){
    print("${isim}: Havladı");
  
  }

  @override
  void issir (){
    print("${isim}: Issırdı");
  }
}

class Kedi extends Hayvan{
  Kedi({required String isim}) : super(isim: isim);

  @override
  void sesCikar(){
    print("${isim}: Miyavladı");
  }

  void tirmala(){
    print("${isim}: Tırmaladı");
  }
}

class Aslan extends Hayvan{
  Aslan({required String isim}) : super(isim: isim);


  void ayagaKalk(){
    print("${isim}: Ayağa Kalktı");
  }

  
  void kukre (){
    print("${isim}: Kükredi");
  }
}


