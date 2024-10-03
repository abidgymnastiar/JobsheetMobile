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

   <img src="../../docs/pertemuan6/prak1_1.png" alt="kode soal no 2" width="300">
   p

   ![kode soal no 2](../../docs/pertemuan6/1.png)

   Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.

   Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.

   Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.

4. Langkah 4: Implementasi title row
   Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

   /_ soal 1 _/ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

   /_ soal 2 _/ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

   /_ soal 3 _/ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

# Praktikum 2: Implementasi button row

# Praktikum 3: Implementasi text section

# Praktikum 4: Implementasi image section

# Tugas Praktikum 1

# Praktikum 5: Membangun Navigasi di Flutter

# Tugas Praktikum 2
