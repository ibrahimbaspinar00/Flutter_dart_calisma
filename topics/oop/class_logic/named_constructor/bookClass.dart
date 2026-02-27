void main (){
  Bookclass b1 = Bookclass(title: "Nutuk", authour: "Gazi Mustafa Kemal Atatürk", pages: 737);
  print("Kitap Adı: ${b1.title}");
  print("Yazar: ${b1.authour}");
  print("Sayfa Sayısı: ${b1.pages}");
  print("${b1.title} → ${b1.pages} sayfa");

}

class Bookclass {
  String title; // başlık
  String authour; // yazar
  int pages; // sayfalar

  Bookclass({required this.title, required this.authour, required this.pages});
  Bookclass.kisaKitap(this.title, this.authour) : pages = 80;
}
