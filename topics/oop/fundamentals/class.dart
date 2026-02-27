void main() {
  var a = 5;
  drawLine();

  // araba 1 in kodu uzun
  car a1 = car();
  a1.brand = "Renault";
  a1.model = "Megane IV";

  print("1.Aracın Markası : ${a1.brand}");
  print("2.Aracın Modeli : ${a1.model}");

  drawLine();

  // araba 2 nin kodu kısa ve öz
  car1 a2 = car1("Bmw", "G30");

  print("2.Aracın Markası : ${a2.brand1}");
  print("2.Aracın Modeli : ${a2.model1}");

  drawLine();

  // ögrenci class'ı
  student s1 = student("Ahmet", "Yılmaz", 20);
  student s2 = student("Ayşe", "Kaya", 22);

  print("1.Öğrenci: Öğrencinin Adı: ${s1.name}, Öğrencinin Soyadı: ${s1.surname}, Öğrencinin Yaşı: ${s1.age}");
  print("2.Öğrenci: Öğrencinin Adı: ${s2.name}, Öğrencinin Soyadı: ${s2.surname}, Öğrencinin Yaşı: ${s2.age}");

  s1.printStudentInfo();
  s2.printStudentInfo();

  drawLine();

  // otomobil sınıf'ı
  Automobile grass1 = Automobile("Mercedes", "A180", 2026);

  drawLine();

  grass1.previousOwners.add(Owner("Mehmet"));
  grass1.previousOwners.add(Owner("Ali"));
  grass1.previousOwners.add(Owner("Hasan"));

  print("Araç: ${grass1.grassBrand} ${grass1.grassModel}");
  print("Önceki Sahipler:");

  for (var owner in grass1.previousOwners) {
    print(owner.name);
  }

  drawLine();

  List<Automobile> grassList = [
    Automobile("Mercedes", "A180", 2026),
    Automobile("BMW", "G30", 2022),
    Automobile("Toyota", "Corolla", 2021),
  ];

  for (var i = 0; i < grassList.length; i++) {
    print("Otomobil Marka : ${grassList[i].grassBrand}");
    print("Otomobil Model : ${grassList[i].grassModel}");
    print("Otomobil Yılı  : ${grassList[i].grassYil}");

    drawLine();
  }
}

class car {
  String? brand;
  String? model;
}

class car1 {
  String? brand1;
  String? model1;

  car1(this.brand1, this.model1);
}

class student {
  String? name;
  String? surname;
  int? age;

  student(this.name, this.surname, this.age);

  void printStudentInfo() {
    drawLine();

    print(name);
    print(surname);
    print(age);

    drawLine();
  }
}

class Automobile {
  String? grassBrand;
  String? grassModel;
  int? grassYil;

  List<Owner> previousOwners = [];

  Automobile(this.grassBrand, this.grassModel, this.grassYil);
}

class Owner {
  String? name;

  Owner(this.name);
}

void drawLine() {
  print("------------------------------------");
}
