import 'package:dart_week2/dart_week2.dart';

void main(List<String> arguments) {
  // STUDI KASUS 1 (MENGKONVERSI SUHU)
  double celsius = 30;  
  
  double fahrenheit = fahrenheitConvert(celsius);
  double kelvin = kelvinConvert(celsius);

  print('$celsius°C = $fahrenheit°F');  
  print('$celsius°C = $kelvin K');
  // STUDI KASUS 1 (MENGKONVERSI SUHU)

  // STUDI KASUS 2 (KALKULATOR SEDERHANA)
  int angka1 = 10; // varibel
  int angka2 = 5;

  int penjumlahan = operatorPenjumlahan(angka1, angka2); // pemanggilan fungsi
  int pengurangan = operatorPengurangan(angka1, angka2);
  int perkalian = operatorPerkalian(angka1, angka2);
  double pembagian = operatorPembagian(angka1, angka2);
  int modulo = operatorModulo(angka1, angka2);

  print('$angka1 + $angka2 = $penjumlahan');  // menampilkan hasil
  print('$angka1 - $angka2 = $pengurangan');  
  print('$angka1 * $angka2 = $perkalian');  
  print('$angka1 / $angka2 = $pembagian');  
  print('$angka1 % $angka2 = $modulo');
  //STUDI KASUS 2 (KALKULATOR SEDERHANA)

  // STUDI KASUS 3 (VALIDASI DATA PENGGUNA)
  String username = 'budi123'; // membuat variabel
  String password = 'pass123';
  int umur = 17;

  bool isUsernameValid = username.length >= 6; // melakukan proses validasi
  bool isPasswordValid = password.length >= 6;
  bool isAdult = umur >= 18;
  bool canRegister = isUsernameValid && isPasswordValid;
  bool canAccessAdultContent = canRegister && isAdult;

  print('Dapat mendaftar: $canRegister'); // menampilkan hasil
  print('Dapat mengakses konten:$canAccessAdultContent');
  // STUDI KASUS 3 (VALIDASI DATA PENGGUNA)

  // STUDI KASUS 4 (PERHITUNGAN DISKON)
  double hargaBarang = 120000; // membuat variabel
  int jumlahBeli = 3;
  String kodeMember = 'GOLD';

  double total = hargaBarang * jumlahBeli; // pemrosesan 
  double diskonPersen = 0; 

  if (kodeMember == 'GOLD') // perkondisian untuk mengecek kode member
    diskonPersen = 0.1; 
  else if (kodeMember == 'SILVER') 
    diskonPersen = 0.05;

  double diskonTambahan = total > 300000 ? 0.05 : 0;
  double totalDiskon = total * (diskonPersen + diskonTambahan);
  double hargaAkhir = total - totalDiskon;

  print('Total: Rp$total'); // menampilkan hasil
  print('Diskon: Rp$totalDiskon');
  print('Akhir: Rp$hargaAkhir');
  STUDI KASUS 4 (PERHITUNGAN DISKON)

  // STUDI KASUS 5 (STATUS KELULUSAN)
  Map nilaiMahasiswa = { 'Matematika': 85, 'Fisika': 75, 'Pemrograman': 90, }; // membuat map dan variabel default
  double total = 0; 

  nilaiMahasiswa.forEach((matkul, nilai) { 
    print('$matkul: $nilai'); // Menampilkan tiap baris matkul
    total += nilai; }); // melakukan pemrosesan
  double rataRata = total / nilaiMahasiswa.length;
  String status = rataRata >= 60 ? 'LULUS' : 'TIDAK LULUS';
  String predikat; // menentukan predikat
  if (rataRata >= 90) { 
    predikat = 'A'; 
  } else if (rataRata >= 80) {
    predikat = 'B'; 
  } else if (rataRata >= 70) { 
      predikat = 'C'; 
  } else { 
    predikat ='D/E'; 
    }

  print('Rata-rata: $rataRata'); // mencetak hasil
  print('Status: $status');
  print('Predikat: $predikat');
  // STUDI KASUS 5 (STATUS KELULUSAN)

  // TUGAS MENGHITUNG BMI
  double beratBadan = 70;
  double tinggiBadan = 170;
  double bmi = menghitungBmi(beratBadan, tinggiBadan);
  print('BMI ANDA ADALAH: ${bmi.toInt()}');
  // TUGAS MENGHITUNG BMI

  // TUGAS KALKULATOR KONVERSI MATA UANG
  double jumlahRupiah = 100000; // 100k Rupiah

  print('Jumlah yang dikonversi: Rp $jumlahRupiah');

  // 1. IDR ke USD
  double hasilUsd = idrToUsd(jumlahRupiah);
  print('IDR to USD: ${hasilUsd.toStringAsFixed(2)}');

  // 2. IDR ke SGD
  double hasilSgd = idrToSgd(jumlahRupiah);
  print('IDR to SGD: ${hasilSgd.toStringAsFixed(2)}');

  // 3. IDR ke JPY
  double hasilJpy = idrToJpy(jumlahRupiah);
  print('IDR to JPY: ${hasilJpy.toStringAsFixed(0)}');
  // TUGAS KALKULATOR KONVERSI MATA UANG

  // TUGAS SEMUA OPERATOR
  semuaOperator();
  // TUGAS SEMUA OPERATOR

  // TANTANGAN TAMBAHAN
  print('=== APLIKASI KONVERSI ===');
  print('1. Panjang');
  print('2. Massa');
  print('3. Volume');
  print('4. Suhu');

  stdout.write('Pilih: ');
  String? pilih = stdin.readLineSync();

  stdout.write('Masukkan nilai: ');
  double nilai = double.parse(stdin.readLineSync()!);

  // Validasi negatif untuk massa & volume
  if ((pilih == '2' || pilih == '3') && nilai < 0) {
    print('Tidak boleh negatif!');
    return;
  }

  stdout.write('Dari unit: ');
  String dari = stdin.readLineSync()!;

  stdout.write('Ke unit: ');
  String ke = stdin.readLineSync()!;

  double hasil;

  switch (pilih) {
    case '1':
      hasil = konversiPanjang(nilai, dari, ke);
      break;
    case '2':
      hasil = konversiMassa(nilai, dari, ke);
      break;
    case '3':
      hasil = konversiVolume(nilai, dari, ke);
      break;
    case '4':
      hasil = konversiSuhu(nilai, dari, ke);
      break;
    default:
      print('Pilihan salah');
      return;
  }

  print('\nHasil: ${hasil.toStringAsFixed(4)}');
// TANTANGAN TAMBAHAN


}
