void main (){
  Person p = Person(ad:"ibo",yas:20);
  print("Merhaba Benim adım ${p.ad} yaşım: ${p.yas}");

}

class Person {
  String ad;
  int yas;

  Person({required this.ad, required this.yas});

  
  
}