// void main() {
//   int a = 10; // Variabel global

//   void fungsi() {
//     int b = 20; // Variabel lokal
//     print(a); // Mengakses variabel global
//     print(b); // Mengakses variabel lokal
//   }

//   fungsi();
//   // print(b); // Ini akan menyebabkan error, karena 'b' tidak dapat diakses di sini
// }


void main() {
  Function buatCounter() {
    int count = 0; // Variabel lokal

    return () {
      count++; // Menangkap 'count'
      return count;
    };
  }

  var counter = buatCounter();

  print(counter()); // Output: 1
  print(counter()); // Output: 2
  print(counter()); // Output: 3
}
