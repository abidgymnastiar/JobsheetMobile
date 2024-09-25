void main() {
  // 1. Fungsi anonim dalam variabel
  var tambah = (int a, int b) {
    return a + b;
  };
  print('Hasil tambah: ${tambah(3, 4)}'); // Output: Hasil tambah: 7

  // 2. Fungsi anonim sebagai argumen
  List<int> angka = [1, 2, 3, 4, 5];
  var kuadrat = angka.map((x) => x * x);
  print('Hasil kuadrat: ${kuadrat.toList()}'); // Output: Hasil kuadrat: [1, 4, 9, 16, 25]

  // 3. Fungsi anonim dalam callback
  void cetakHasil(Function operasi, int a, int b) {
    print('Hasil operasi: ${operasi(a, b)}');
  }

  cetakHasil((x, y) => x * y, 5, 6); // Output: Hasil operasi: 30
}
