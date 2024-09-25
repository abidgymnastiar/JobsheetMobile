// List<int> hitung(int a, int b) {
//   return [a + b, a - b, a * b, a ~/ b]; // Mengembalikan list
// }

// void main() {
//   var hasil = hitung(10, 5);
//   print('Penjumlahan: ${hasil[0]}'); // Output: Penjumlahan: 15
//   print('Pengurangan: ${hasil[1]}'); // Output: Pengurangan: 5
//   print('Perkalian: ${hasil[2]}'); // Output: Perkalian: 50
//   print('Pembagian: ${hasil[3]}'); // Output: Pembagian: 2
// }


// Map<String, int> hitung(int a, int b) {
//   return {
//     'penjumlahan': a + b,
//     'pengurangan': a - b,
//     'perkalian': a * b,
//     'pembagian': a ~/ b,
//   }; // Mengembalikan map
// }

// void main() {
//   var hasil = hitung(10, 5);
//   print('Penjumlahan: ${hasil['penjumlahan']}'); // Output: Penjumlahan: 15
//   print('Pengurangan: ${hasil['pengurangan']}'); // Output: Pengurangan: 5
//   print('Perkalian: ${hasil['perkalian']}');    // Output: Perkalian: 50
//   print('Pembagian: ${hasil['pembagian']}');    // Output: Pembagian: 2
// }

class Hasil {
  final int penjumlahan;
  final int pengurangan;
  final int perkalian;
  final int pembagian;

  Hasil(this.penjumlahan, this.pengurangan, this.perkalian, this.pembagian);
}

Hasil hitung(int a, int b) {
  return Hasil(a + b, a - b, a * b, a ~/ b); // Mengembalikan objek Hasil
}

void main() {
  var hasil = hitung(10, 5);
  print('Penjumlahan: ${hasil.penjumlahan}'); // Output: Penjumlahan: 15
  print('Pengurangan: ${hasil.pengurangan}'); // Output: Pengurangan: 5
  print('Perkalian: ${hasil.perkalian}');    // Output: Perkalian: 50
  print('Pembagian: ${hasil.pembagian}');    // Output: Pembagian: 2
}
