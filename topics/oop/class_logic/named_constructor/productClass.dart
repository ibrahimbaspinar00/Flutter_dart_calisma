void main(){
  Productclass p =Productclass(ad: "Telefon", fiyat: 1000, stok: 1);
  print("");
  print("Ürün Adı: ${p.ad}");
  print("Ürün Fiyatı: ${p.fiyat}");
  print("Ürün Stoğu: ${p.stok}");
  print("");

}

class Productclass {
  String ad;
  double fiyat;
  int stok;

  Productclass({
    required this.ad,
    required this.fiyat,
    required this.stok
    });
  Productclass.outOfStock(this.ad, this.fiyat) : stok = 0;

} 