void main() {
  
  // 1.	Bir sayı pozitif, negatif veya sıfır mı kontrol eden program yaz.

  int number = 0;
  if(number == 0){
    print("$number Nötr");
  
  } else if(number <= 0) {
    print("$number: Negatif");
  
  } else if(number >= 0){
    print("$number: Pozitif");
  
  } else {
    print("$number Geçersiz İşlem");
  }

  // 2.	Bir sayının çift mi tek mi olduğunu bul.

  int num = -1;
  
  if (num % 2 == 0){
    print("Girilen Değer: $num Nötrdür.");
  } else if (num <= 0){
    print("Girilen Değer: $num Negatiftir.");
  } else if (num >= 1){
    print("Girilen Değer: $num Pozitiftir.");
  } else {
    print("Girilen Değer: $num Geçersiz Değer.");
  }

  // 3.	Yaşa göre çocuk, genç, yetişkin veya yaşlı kategorisini belirle.
int age = 0;
if (age <= 10 ){
  print("Çocuk Katagorisindesiz.");
} else if (age <= 20 ) {
  print("Genç Katagorisindesiz.");
} else if (age <= 40){
  print("Yetişkin Katagorisindesiz.");
} else if (age <= 65){
   print("Yaşlı Katagorisindesiz.");
  } else {
    print("Geçersiz Değer.");
  }

  // 4.	Şifre uzunluğuna ve içeriğine göre zayıf/orta/güçlü sınıflandırması yap.

  String word = "123456789";
  int wordCount = word.length;
  
  if (wordCount <= 4){
    print("Şifre Durumu : Zayıf");

  } else if (wordCount <= 6){
    print("Şifre Durumu : Orta");
  
  } else if (word.length <= 8){
    print("Şifre Durumu : Güçlü");

  } else {
    print("En Fazla 8 Karakter Girebilirsiniz. Girilen Karakter Sayısı : $wordCount");
  }

  // 5.	isLoggedIn ve isEmailVerified true ise girişe izin ver.

    bool isEmailVerified = false;
    bool isLoggedIn = true; 

    if (isLoggedIn == true && isEmailVerified == true){
      print("Kullanıcı Giriş Yapmıştır ve Hesabın E posta Doğrulaması Yapılmıştır.");
    } else if(isLoggedIn == true) {
      print("Kullanıcı Giriş Yapmıştır. ve Hesabın E posta Doğrulaması Yapılmamıştır.");
    } else  {
    print("Geçersiz Değer.");
    }

  // 6.	Not puanına göre harf notu hesapla (AA–FF).
int class_note = 1001;
if(class_note > 100 || class_note < 0){
  print("Geçersiz Not Notunuz En Fazla 100, En Az 0 Olmalıdır. Girilen Not Değeri : $class_note");

} else if(class_note >= 90){
  print("Ders Notunuz $class_note AA");

} else if (class_note >= 85){
  print("Ders Notunuz $class_note BA");

} else if (class_note >= 80){
  print("Ders Notunuz $class_note BB");

} else if (class_note >= 75){
  print("Ders Notunuz $class_note CB");

} else if (class_note >= 70){
  print("Ders Notunuz $class_note CC");

} else if (class_note >= 65){
  print("Ders Notunuz $class_note DC");

} else if (class_note >= 60){
  print("Ders Notunuz $class_note DD");

} else if (class_note >= 50){
  print("Ders Notunuz $class_note FD");

} else {
  print("Ders Notunuz $class_note FF");
}

  // 7.	Premium üyelik ve fiyat bilgisine göre kargo ücretini belirle.
  
  String member_status = "Üye Durumu"; 
  String premium_membership = "Premium Üye" ;
  String free_membership = "Free Üye";
  
  member_status = free_membership;

  if(member_status == free_membership){ 
    print("Free Üyelerin Kargo Ücreti 50'TL'dir.");
  
   
  } else if (member_status == premium_membership) {
   print("Premium Üyeler Kargo Ücreti Ödemezler Kargo Bedeli: 0 TL'dir.");
  } else {
    print("Geçersiz Üyelik.");
  }
  
  // 8.	Saat aralığına göre selamlama mesajı yazdır. Sabah, Öğle, Akşam

  double hour = 13.59;

  if (hour >= 05.00 && hour <= 11.59){
    print("Good Morning.");
  
  } else if (hour >= 12.00 && hour <= 16.59){
    print("Good Afternoon.");
  
  } else if (hour >= 17.00 && hour <= 23.59){
    print("Good Everning.");
  
  } else if (hour >= 22.00 && hour <= 04.59) {
    print("Good Night.");
  
  } else {
    print("Invalid time entered");
  }

  // 9.	Üç Sayıdan en büyüğünü bul.

  int number1 = 321;
  int number2 = 300;
  int number3 = 120;

  if(number1 > number2 && number1 > number3){
    print("En büyük Sayı '$number1'");

  } else if (number2 > number1 && number2 > number3){
    print("En Büyük Sayı '$number2'");

  } else {
    print("En Büyük Sayı '$number3'");
  }

  // 10.	 Operatöre göre (+ - * /) hesap makinesi yap.

  int num1 = 4;
  int num2 = 2;
  String operator = "%";

  switch(operator){

    case"+":
    print("Toplama Sonucu : ${num1 + num2}");
    break;

    case"-":
    print("Çıkarma Sonucu : ${num1 - num2}");
    break;

    case"*":
    print("Çarpma Sonucu : ${num1 * num2}");
    break;

    case"/":
    print("Bölme Sonucu : ${num1 / num2}");
    break;

    case"%":
    print("Mod Alma : ${num1 % num2}");
    break;
  }

  // 11.	1–7 arası sayıya göre gün adı yazdır.

  int day = 7;
  switch(day){
    
    case 1:
    print("Pazartesi");
    break;

    case 2:
    print("Salı");
    break;

    case 3:
    print("Çarşamba");
    break;

    case 4:
    print("Perşembe");
    break;

    case 5: 
    print("Cuma");
    break;

    case 6:
    print("Cumartesi");
    break;

    case 7:
    print("Pazar");
    break;

    default:
      print("Geçersiz Gün Sayısı Girildi");

  }

  // 12.	Ay numarasına göre mevsim belirle.
  
  int season = 3;

  switch (season) {
   
    case 12:
    case 1:
    case 2:
    print("$season. ay Kış mevsimidir.");
    break;
    

    case 3:
    case 4:
    case 5:
    print("$season. ay İlkbahar Mevsimidir.");
    break;
    

    case 6: 
    case 7:
    case 8:
    print("$season. ay Yaz Mevsimidir.");
    print("asd");
    break;

    case 9:
    case 10:
    case 11:
   { print("$season. ay Sonbahar Mevsimidir.");}
    break;
    
  } 

  // 13.	 Menü seçimine göre sayfa yönlendirmesi yap. Anasayfa, Hakkımızda, İletişim

  String menu = "";

  String homepage = "Anasayfa";
  String aboutUs = "Hakkımızda";
  String communication = "İletişim";
  
  menu = aboutUs;

  if(menu == homepage){
  
    print("Anasayfa'ya Hoşgeldiniz.");

  } else if(menu == aboutUs) {
    
    print("Hakkımızda Sayfasına Hoşgeldiniz");
  
  } else if (menu == communication){
    
    print("İletişim Sayfasına Hoşgeldiniz.");
  }

  // 14.	Harf notuna göre mesaj göster.

  String letterGrade = "AA";
  
  switch(letterGrade){
  
    case "AA":
    print("Mükemmel, çok başarılı.");
    break;

    case "BA":
    print("Çok iyi.");
    break;

    case "BB":
    print("İyi.");
    break;

    case "CC":
    print("Geçtiniz.");
    break;

    case "FF":
    print("Kaldınız.");
  
    default:
      print("GEÇERSİZ HARF NOTU.");
    }

}
