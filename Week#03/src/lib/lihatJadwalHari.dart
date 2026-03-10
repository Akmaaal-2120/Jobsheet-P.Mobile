import 'dart:io';
import 'jadwal.dart';
void lihatJadwalHari() {
  // Menampilkan prompt ke layar supaya user memasukkan hari yang ingin dicek
  stdout.write("Masukkan hari: ");
  
  // Membaca input dari keyboard (String) dan disimpan ke variabel 'hari'
  String hari = stdin.readLineSync()!;
  
  // Mengecek apakah Map 'jadwal' memiliki key yang sesuai dengan input user
  if (jadwal.containsKey(hari)) {
    // Jika ada, tampilkan mata pelajaran hari tersebut
    print("Jadwal: ${jadwal[hari]}");
  } else {
    // Jika tidak ada, tampilkan pesan bahwa hari tersebut belum memiliki jadwal
    print("Tidak ada jadwal untuk hari $hari");
  }
}