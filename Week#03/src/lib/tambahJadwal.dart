import 'dart:io';
import 'jadwal.dart';
void tambahJadwal(){
  stdout.write("Berapa jadwal yang ingin ditambahkan? ");
  int jumlah = int.parse(stdin.readLineSync()!); // input untuk brp hari yg ditambah
  for(int i = 0; i < jumlah; i++){ // for loop untuk nentuin brp jadwal yg ingin ditambah
    stdout.write("Hari: ");
    String hari = stdin.readLineSync()!; // input hari
    stdout.write("Mata Kuliah: ");
    String matkul = stdin.readLineSync()!; // input mata kuliah
    jadwal[hari] = matkul; // menyimpan matkul ke jadwal yang sesuai dengan harinya
  }
}