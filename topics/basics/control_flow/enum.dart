enum Member { free, premium }
enum PersonType { baby, young, old }
enum Shape { rectange, circle, multilo }
enum OrderStatus { ready, waiting, accepted, delivery }

enum Lamba { acik, kapali }
enum Kapi { acik, kapali }
enum Motor { calisiyor, durdu }
enum Pil { dolu, az, bitti }
enum Atm { deposit, withdraw, check }
enum Rol { admin, editor, user }
enum TrafficLight { stop, prepare, go }
enum Customer { regularCustomer, student, vip }

class Person {
  final int age;
  final String name;
  final String surname;
  final bool isAlive;
  final String tcNumber;
  final PersonType personType;

  Person({
    required this.age,
    required this.name,
    required this.surname,
    required this.isAlive,
    required this.tcNumber,
    required this.personType,
  });
}

void main() {
  // --- Person örneği ---
  Person omer = Person(
      age: 29,
      name: "Ömer Faruk",
      surname: "Dikili",
      isAlive: true,
      tcNumber: "31325443021",
      personType: PersonType.old);
  print("Ömer kişisinin yaşı: ${omer.age}");

  // --- Shape kontrolü ---
  Shape shape = Shape.rectange;
  if (shape == Shape.rectange) {
    print("Bu karedir");
  }

  // --- Member kontrolü ---
  Member person = Member.free;
  switch (person) {
    case Member.free:
      print("Giriş yapamaz");
      break;
    case Member.premium:
      print("Giriş yapabilir");
      break;
  }

  // --- OrderStatus kontrolü ---
  OrderStatus order = OrderStatus.accepted;
  switch (order) {
    case OrderStatus.ready:
      print("Sipariş hazır");
      break;
    case OrderStatus.waiting:
      print("Sipariş beklemede");
      break;
    case OrderStatus.accepted:
      print("Sipariş kabul edildi");
      break;
    case OrderStatus.delivery:
      print("Sipariş teslimat aşamasında");
      break;
  }

  // --- Lamba ---
  Lamba lambaDurum = Lamba.acik;
  switch (lambaDurum) {
    case Lamba.acik:
      print("Lamba Açık");
      break;
    case Lamba.kapali:
      print("Lamba Kapalı");
      break;
  }

  // --- Kapı ---
  Kapi kapiDurum = Kapi.kapali;
  switch (kapiDurum) {
    case Kapi.acik:
      print("Kapı Açık");
      break;
    case Kapi.kapali:
      print("Kapı Kapalı");
      break;
  }

  // --- Motor ---
  Motor motorDurum = Motor.durdu;
  switch (motorDurum) {
    case Motor.durdu:
      print("Motor Durdu");
      break;
    case Motor.calisiyor:
      print("Motor Çalışıyor");
      break;
  }

  // --- Pil ---
  Pil pilDurum = Pil.dolu;
  switch (pilDurum) {
    case Pil.dolu:
      print("Pil dolu");
      break;
    case Pil.az:
      print("Pil az");
      break;
    case Pil.bitti:
      print("Pil bitti");
      break;
  }

  // --- ATM ---
  Atm atmDurum = Atm.deposit;
  switch (atmDurum) {
    case Atm.deposit:
      print("Para Yatırma Menüsü");
      break;
    case Atm.withdraw:
      print("Para Çekme Menüsü");
      break;
    case Atm.check:
      print("Bakiye Kontrol Menüsü");
      break;
  }

  // --- Rol ---
  Rol rolDurum = Rol.admin;
  switch (rolDurum) {
    case Rol.admin:
      print("Admin Hoşgeldin");
      break;
    case Rol.editor:
      print("Editör Hoşgeldin");
      break;
    case Rol.user:
      print("User Hoşgeldiniz");
      break;
  }

  // --- Trafik Işığı ---
  TrafficLight traffic = TrafficLight.go;
  switch (traffic) {
    case TrafficLight.go:
      print("Işık Yeşil Yanıyor");
      break;
    case TrafficLight.prepare:
      print("Işık Sarı Yanıyor");
      break;
    case TrafficLight.stop:
      print("Işık Kırmızı Yanıyor");
      break;
  }

  // --- Customer ---
  Customer customer = Customer.regularCustomer;
  switch (customer) {
    case Customer.regularCustomer:
      print("Üye Tarifeniz Normal Müşteridir");
      break;
    case Customer.student:
      print("Üye Tarifeniz Öğrenci'dir");
      break;
    case Customer.vip:
      print("Üye Tarifeniz VİP'dir");
      break;
  }
}
