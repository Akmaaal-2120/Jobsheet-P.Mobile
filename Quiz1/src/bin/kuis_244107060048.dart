import 'package:kuis_244107060048/kuis_244107060048.dart' as kuis_244107060048;

void main(){
  String nama = "Muhamad Miftahul Akmal"; // deklarasi dan pengisian
  String nim = "2441070600";

  List<double> harga = [ // daftar harga list
    10000.0,
    20000.0,
    30000.0,
    40000.0,
    50000.0
  ];

  double nilaiUnikNIM = 48; // no unik nim

  harga.add(nilaiUnikNIM); // menambah no unik nim ke list harga

  double totalPertama = hitungTotal(harga); // pemanggilan fungsi hitungTotal dan disimpan ke varibel total pertama

  String? pesanDiskon; // boleh berisi null
  double diskon = 0; // nilai awal diskon

  if (totalPertama > 200000){ // pengecekan untuk dapet diskon berapa
    diskon = totalPertama * (10/100);
    pesanDiskon = "Diskon 10%";
  }else if(totalPertama >= 100000 && totalPertama <= 200000){
    diskon = totalPertama * (5/100);
    pesanDiskon = "Diskon 5%";
  }else{
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalPertama - diskon; // jumlah setelah diskon

  print("Nama: $nama"); // pencetakan
  print("NIM: $nim");
  print("Total Awal: $totalPertama");
  print("Besar Diskon: ${pesanDiskon!}");
  print("Total Akhir: $totalAkhir");

}

double hitungTotal(List<double> harga){
  double total = 0;
  for (double h in harga){ // menambah semua nilai di list harga dan disimpan ke variabel total
    total += h;
  }
  return total; // mengembalikkan nilai total
}