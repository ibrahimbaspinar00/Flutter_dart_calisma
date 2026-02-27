void main (){
  Userclass u = Userclass(
    email: "ibrahimbaspinar00gmail.com", 
    password: "123qwe",
    );
}

class Userclass {
  String email;
  String password;

  Userclass({
    required this.email,
    required this.password,
  }) {
    if (!email.contains("@")) {
      throw FormatException("Geçersiz E-mail Adresi");
    }
  }
}
