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

// TANTANGAN TAMBAHAN

double konversiPanjang(double nilai, String dari, String ke) {
  Map<String, double> panjang = {
    'mm': 0.001,
    'cm': 0.01,
    'm': 1,
    'km': 1000,
    'inch': 0.0254,
  };

  double keMeter = nilai * panjang[dari]!;   // ubah ke meter
  return keMeter / panjang[ke]!;             // ubah ke satuan tujuan
}

double konversiMassa(double nilai, String dari, String ke) {
  Map<String, double> massa = {
    'mg': 0.000001,
    'g': 0.001,
    'kg': 1,
    'ton': 1000,
    'lb': 0.453592,
  };

  double keKg = nilai * massa[dari]!;   // ubah ke kilogram
  return keKg / massa[ke]!;             // ubah ke satuan tujuan
}

double konversiVolume(double nilai, String dari, String ke) {
  Map<String, double> volume = {
    'mL': 0.001,
    'L': 1,
    'm3': 1000,
    'galon': 3.785,
    'cup': 0.24,
  };

  double keLiter = nilai * volume[dari]!;  // ubah ke liter
  return keLiter / volume[ke]!;            // ubah ke satuan tujuan
}

double konversiSuhu(double nilai, String dari, String ke) {
  double celsius;

  // Ubah ke Celsius
  switch (dari.toUpperCase()) {
    case 'C':
      celsius = nilai;
      break;
    case 'F':
      celsius = (nilai - 32) * 5 / 9;
      break;
    case 'K':
      celsius = nilai - 273.15;
      break;
    default:
      throw Exception('Unit tidak valid');
  }

  // Dari Celsius ke satuan tujuan
  switch (ke.toUpperCase()) {
    case 'C':
      return celsius;
    case 'F':
      return celsius * 9 / 5 + 32;
    case 'K':
      return celsius + 273.15;
    default:
      throw Exception('Unit tidak valid');
  }
}
// TANTANGAN TAMBAHAN

