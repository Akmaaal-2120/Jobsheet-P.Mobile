int calculate() {
  return 6 * 7;
}

// STUDI KASUS 1 (MENGKONVERSI SUHU)
double fahrenheitConvert(double celsius){
  return (celsius * 9/5) + 32; 
} 

double kelvinConvert(double celsius){
  return celsius + 273.15;    
}
// STUDI KASUS 1 (MENGKONVERSI SUHU)

//STUDI KASUS 2 (KALKULATOR SEDERHANA)
int operatorPenjumlahan(int angka1, int angka2){
  return angka1 + angka2;
}

int operatorPengurangan(int angka1, int angka2){
  return angka1 - angka2;
}

int operatorPerkalian(int angka1, int angka2){
  return angka1 * angka2;
}

double operatorPembagian(int angka1, int angka2){
  return angka1 / angka2;
}

int operatorModulo(int angka1, int angka2){
  return angka1 % angka2;
}
// STUDI KASUS 2 (KALKULATOR SEDERHANA)

// TUGAS MENGHITUNG BMI
double menghitungBmi(double beratBadan, double tinggiBadan){
  return beratBadan / ((tinggiBadan / 100) * (tinggiBadan / 100));
}
// TUGAS MENGHITUNG BMI

// TUGAS MENGKONVERSI MATA UANG
double idrToUsd(double idr) {
  const double rate = 15600; // 1 USD = 15.600 IDR
  return idr / rate;
}

double idrToSgd(double idr) {
  const double rate = 11500; // 1 SGD = 11.500 IDR
  return idr / rate;
}

double idrToJpy(double idr) {
  const double rate = 110; // 1 JPY = 110 IDR
  return idr / rate;
}
// TUGAS MENGKONVERSI MATA UANG

// TUGAS SEMUA OPERATOR
void semuaOperator(){
  double a = 10; // OPERATOR ARITMATIKA
  a += 5; 
  double b = 3;
  double hasilAritmatika = (a * b) / 2; // Perkalian & Pembagian

  int counter = 5; // DECREMENT INCREMENT
  counter++; // bakal jadi 6
  counter--; // bakal jadi 4

  bool lebihBesar = a > b; // RELASIONAL

  bool checkLogika = (a > 10) && (b < 5); // LOGIKA

  dynamic data = "Dart"; // TYPE TEST
  bool isString = data is String;

  int bitA = 5;  // BITWISE
  int bitB = 3;  
  int hasilAnd = bitA & bitB;

  String? nama; // NULL AWARE
  String displayName = nama ?? "Guest"; 
  
  String angka = (a % 2 == 0) ? "Genap" : "Ganjil"; // TERNARY

  print('Aritmatika (15 * 3 / 2): $hasilAritmatika');
  print('Relasional (15 > 3): $lebihBesar');
  print('Logika (AND): $checkLogika');
  print('Type Test (is String): $isString');
  print('Bitwise (5 & 3): $hasilAnd');
  print('Null Aware: Halo, $displayName');
  print('Kondisional: Angka $a adalah $angka');
}
// TUGAS SEMUA OPERATOR
