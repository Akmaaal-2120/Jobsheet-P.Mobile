import '../lib/tambahJadwal.dart';
import '../lib/lihatJadwal.dart';
import '../lib/lihatJadwalHari.dart';
import 'dart:io';
void main(){
  int menu; //variabel untuk input menu
  do{
    print("\n===== JADWAL BELAJAR MINGGUAN =====");
    print("1. Tambah Jadwal");
    print("2. Lihat Semua Jadwal");
    print("3. Lihat Jadwal Berdasar Hari");
    print("4. Keluar");

    stdout.write("Pilih Menu: ");
    menu = int.parse(stdin.readLineSync()!); // input angka untuk ganti menu

    switch(menu){  // switch case untuk perpindahan menu
      case 1:
        tambahJadwal();
        break;
      case 2:
        lihatJadwal();
        break;
      case 3:
        lihatJadwalHari();
        break;
      case 4:
        print("Keluar...");
        break;
      default:
        print("Menunya salah!");
    }
  } while (menu != 4); // kondisi ini jika true maka akan loop ke menu utama
}