Pada Praktikum 5 ini dilakukan pembuatan aplikasi Flutter dengan konsep navigasi dan rute menggunakan multi halaman. Langkah pertama yang dilakukan adalah membuat project baru Flutter dengan nama belanja. Selanjutnya dilakukan pengorganisasian folder project dengan membuat folder pages untuk halaman aplikasi dan folder models untuk menyimpan model data. Pada folder pages dibuat dua file yaitu home\_page.dart dan item\_page.dart yang masing-masing berisi class HomePage dan ItemPage yang diturunkan dari StatelessWidget.



Langkah berikutnya adalah mendefinisikan route pada file main.dart. Pada tahap ini halaman HomePage ditetapkan sebagai halaman utama dengan route '/', sedangkan halaman ItemPage diberi route '/item'. Properti initialRoute digunakan untuk menentukan halaman awal aplikasi. Setelah itu dilakukan pembuatan data model dengan membuat file item.dart pada folder models. Model ini digunakan untuk menyimpan data barang belanja yang terdiri dari nama dan harga barang.



Selanjutnya pada halaman HomePage dibuat ListView yang sumber datanya berasal dari List object Item. Untuk menampilkan data digunakan ListView.builder dengan widget Card sebagai pembatas antar item. Setelah ListView berhasil ditampilkan, ditambahkan aksi sentuhan menggunakan widget InkWell agar setiap item dapat ditekan. Ketika item ditekan, aplikasi akan berpindah ke halaman ItemPage menggunakan Navigator.pushNamed.



Pada tahap berikutnya dilakukan pengiriman data dari halaman HomePage ke halaman ItemPage menggunakan parameter arguments pada Navigator. Data yang dikirim kemudian diterima pada halaman ItemPage menggunakan ModalRoute dan ditampilkan sesuai informasi yang dipilih pengguna. Selain itu, dilakukan pengembangan fitur tambahan dengan menambahkan atribut foto produk, stok, dan rating pada model data. Tampilan daftar produk juga diubah dari ListView menjadi GridView agar menyerupai tampilan aplikasi marketplace.



Selanjutnya ditambahkan Hero Widget untuk memberikan animasi transisi gambar antar halaman agar tampilan aplikasi menjadi lebih menarik. Struktur kode juga dipecah menjadi widget yang lebih kecil untuk memudahkan pengelolaan kode. Selain itu ditambahkan footer yang berisi nama dan NIM sebagai identitas pembuat aplikasi. Terakhir, dilakukan modifikasi navigasi menggunakan plugin go\_router

