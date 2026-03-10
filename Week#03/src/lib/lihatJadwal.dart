import 'jadwal.dart';
void lihatJadwal() {
  // Menampilkan header supaya output terlihat rapi
  print("=== Semua Jadwal ===");
  
  // Mengulang setiap pasangan key-value di Map 'jadwal'
  // 'entry' merepresentasikan satu pasang hari (key) dan mata pelajaran (value)
  for (var entry in jadwal.entries) {
    
    // Menampilkan nama hari dan mata pelajaran
    // Contoh output: Senin : Matematika
    print("${entry.key} : ${entry.value}");
  }
}