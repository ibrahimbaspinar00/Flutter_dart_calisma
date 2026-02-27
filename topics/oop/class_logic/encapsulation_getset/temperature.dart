class Temperature {
  double _celsius = 0;  // private değişken

  // Fahrenheit getter
  double get fahrenheit => _celsius * 9 / 5 + 32;

  // Celsius setter
  set celsius(double value) {
    if (value < -273) {
      print("Hata: Sıcaklık -273'ten küçük olamaz!");
      _celsius = -273;
    } else {
      _celsius = value;
    }
  }

  // İstersen direkt celsius getter da ekleyebilirsin
  double get celsius => _celsius;
}

void main() {
  Temperature t = Temperature();

  t.celsius = 25;  
  print(t.fahrenheit); // 77.0

  t.celsius = -300;  
  print(t.fahrenheit); // -459.4
}
