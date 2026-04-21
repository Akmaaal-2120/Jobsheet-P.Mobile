Pada Praktikum 1 ini dilakukan pembuatan layout aplikasi Flutter secara bertahap menggunakan widget dasar. Langkah pertama yang dilakukan adalah membuat project Flutter baru dengan nama layout\_flutter menggunakan Visual Studio Code atau Android Studio. Setelah project berhasil dibuat, file main.dart dibuka dan kode awal aplikasi diganti dengan struktur dasar Flutter yang terdiri dari MaterialApp, Scaffold, AppBar, dan Body. Pada tahap ini aplikasi masih menampilkan teks sederhana “Hello World” sebagai tampilan awal.



Selanjutnya dilakukan identifikasi struktur layout berdasarkan tampilan yang akan dibuat. Tata letak dipecah menjadi beberapa bagian utama yaitu image section, title section, button section, dan text section. Layout tersebut disusun secara vertikal menggunakan widget Column atau ListView. Pada bagian title section, dibuat baris yang terdiri dari kolom teks judul, ikon bintang, dan angka rating. Pengaturan alignment dan padding juga diterapkan agar tampilan lebih rapi. Widget Expanded digunakan agar kolom teks dapat menyesuaikan ruang yang tersedia.



Pada Praktikum 2 dilakukan pembuatan button section. Dibuat sebuah method bernama \_buildButtonColumn untuk membangun kolom tombol yang terdiri dari ikon dan teks. Method ini digunakan kembali untuk membuat tiga tombol yaitu CALL, ROUTE, dan SHARE dengan warna yang sama. Tombol-tombol tersebut disusun dalam widget Row dengan MainAxisAlignment.spaceEvenly agar jarak antar tombol merata.



Pada Praktikum 3 dibuat text section yang berisi deskripsi tempat wisata. Teks dimasukkan ke dalam widget Container dengan padding agar tampilan lebih nyaman dibaca. Properti softWrap digunakan agar teks dapat menyesuaikan lebar layar dan tidak terpotong. Setelah itu, widget text section ditambahkan ke dalam body aplikasi.



Pada Praktikum 4 dilakukan penambahan image section. Gambar disimpan dalam folder images di dalam project, kemudian didaftarkan pada file pubspec.yaml sebagai asset aplikasi. Setelah itu, gambar ditampilkan menggunakan widget Image.asset dengan properti BoxFit.cover agar gambar menyesuaikan ukuran layar. Terakhir, seluruh komponen layout diubah menggunakan widget ListView agar tampilan dapat discroll ketika dijalankan pada perangkat dengan ukuran layar yang lebih kecil.

