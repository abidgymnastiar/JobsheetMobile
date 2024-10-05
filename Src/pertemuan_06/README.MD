# Pemrograman Mobile - Pertemuan 6

<table>
    <thead>
        <th style="text-align: center;" colspan="2">Pertemuan 6</th>
    </thead>
    <tbody>
        <tr>
            <td>Nama</td>
            <td>Abid Gymnastiar Alfiansyah</td>
        </tr>
        <tr>
            <td>Nim</td>
            <td>2241720043</td>
        </tr>
        <tr>
            <td>Kelas</td>
            <td>3G</td>
        </tr>
    </tbody>
</table>

# Praktikum 1: Membangun Layout di Flutter

1. Langkah 1: Buat Project Baru
   Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

    <div align="center">
        <img src="../../docs/pertemuan6/prak1_4.png" alt="kode soal no 2" width="300">
    </div>

2. Langkah 2: Buka file lib/main.dart
   Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
3. Langkah 3: Identifikasi layout diagram
   Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

   Identifikasi baris dan kolom.

   - Apakah tata letaknya menyertakan kisi-kisi (grid)?
   - Apakah ada elemen yang tumpang tindih?
   - Apakah UI memerlukan tab?
   - Perhatikan area yang memerlukan alignment, padding, atau borders.

   Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.

    <div align="center">
        <img src="../../docs/pertemuan6/prak1_1.png" alt="kode soal no 2" width="300">
    </div>

   Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.

      <div align="center">
        <img src="../../docs/pertemuan6/prak1_1.png" alt="kode soal no 2" width="300">
    </div>

   Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.

      <div align="center">
        <img src="../../docs/pertemuan6/prak1_3.png" alt="kode soal no 2" width="300">
    </div>

   Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.

4. Langkah 4: Implementasi title row
   Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

   /_ soal 1 _/ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

   /_ soal 2 _/ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

   /_ soal 3 _/ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

   <div align="center">
        <img src="../../docs/pertemuan6/prak1_5.png" alt="kode soal no 2" width="300">
    </div>

# Praktikum 2: Implementasi button row

1. Langkah 1: Buat method Column \_buildButtonColumn
   Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

   Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

   <div align="center">
       <img src="../../docs/pertemuan6/prak1_6.png" alt="kode soal no 2" width="300">
   </div>

2. Langkah 2: Buat widget buttonSection
   Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

   Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

   <div align="center">
       <img src="../../docs/pertemuan6/prak1_7.png" alt="kode soal no 2" width="300">
   </div>

3. Langkah 3: Tambah button section ke body
   Tambahkan variabel buttonSection ke dalam body seperti berikut:

   <div align="center">
       <img src="../../docs/pertemuan6/prak1_8.png" alt="kode soal no 2" width="300">
   </div>

   <b>Hasil</b>

   <div align="center">
       <img src="../../docs/pertemuan6/prak1_9.png" alt="kode soal no 2" width="300">
   </div>

# Praktikum 3: Implementasi text section

1. Langkah 1: Buat widget textSection
   Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_10.png" alt="kode soal no 2" width="300">
</div>

2. Langkah 2: Tambahkan variabel text section ke body
   Tambahkan widget variabel textSection ke dalam body seperti berikut:

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_11.png" alt="kode soal no 2" width="300">
</div>

# Praktikum 4: Implementasi image section

1. Langkah 1: Siapkan aset gambar
   Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:

<div align="center">
    <img src="../../docs/pertemuan6/prak1_12.png" alt="kode soal no 2" width="300">
</div>

2. Langkah 2: Tambahkan gambar ke body
   Tambahkan aset gambar ke dalam body seperti berikut:

<div align="center">
    <img src="../../docs/pertemuan6/prak1_13.png" alt="kode soal no 2" width="300">
</div>

3. Langkah 3: Terakhir, ubah menjadi ListView
   Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

<div align="center">
    <img src="../../docs/pertemuan6/prak1_14.png" alt="kode soal no 2" width="300">
</div>

# Tugas Praktikum 1

    Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini:

# Praktikum 5: Membangun Navigasi di Flutter

1. Langkah 1: Siapkan project baru
   Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama belanja dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_15.png" alt="kode soal no 2" width="300">
</div>

2. Langkah 2: Mendefinisikan Route
   Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut.

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_16.png" alt="kode soal no 2" width="300">
</div>

3. Langkah 3: Lengkapi Kode di main.dart
   Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_17.png" alt="kode soal no 2" width="300">
</div>

4. Langkah 4: Membuat data model
   Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_18.png" alt="kode soal no 2" width="300">
</div>

5. Langkah 5: Lengkapi kode di class HomePage
   Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_19.png" alt="kode soal no 2" width="300">
</div>

6. Langkah 6: Membuat ListView dan itemBuilder
   Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.

 <div align="center">
    <img src="../../docs/pertemuan6/prak1_20.png" alt="kode soal no 2" width="300">
</div>

7. Langkah 7: Menambahkan aksi pada ListView
   Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell.

   Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.

   - InkWell

     <div align="center">
       <img src="../../docs/pertemuan6/prak1_21.png" alt="kode soal no 2" width="300">
   </div>

   - GestureDetector

    <div align="center">
       <img src="../../docs/pertemuan6/prak1_22.png" alt="kode soal no 2" width="300">
   </div>

   <b>Perbedaannya</b>

        InkWell dan GestureDetector adalah dua widget di Flutter yang digunakan untuk menangani interaksi pengguna, tetapi memiliki perbedaan utama dalam fungsionalitas dan tampilan. InkWell adalah widget material yang memberikan efek riak ketika ditekan, sehingga sangat cocok untuk digunakan dalam konteks aplikasi material, memberikan umpan balik visual yang jelas kepada pengguna. Sebaliknya, GestureDetector adalah widget yang lebih umum dan tidak memberikan efek visual bawaan; ia dapat menangani berbagai jenis gesture seperti geser, pinch, atau sentuhan, dan lebih fleksibel dalam mendeteksi gerakan yang lebih kompleks. Dengan kata lain, gunakan InkWell ketika Anda ingin memberikan umpan balik visual pada sentuhan, sedangkan GestureDetector cocok untuk mendeteksi berbagai jenis interaksi tanpa efek visual spesifik.

# Tugas Praktikum 2

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.
2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya.
3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.
4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations
5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
