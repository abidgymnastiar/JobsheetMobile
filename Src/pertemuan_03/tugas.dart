void main() {
  String namaLengkap = "Abid Gymnastiar Alfiansyah";
  String nim = "2241720043";

  for (int i = 2; i <= 201; i++) {
    bool prima = true;

    // Mulai pengecekan apakah i adalah bilangan prima
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        prima = false;
        break; // Jika ditemukan pembagi, tidak perlu mengecek lebih lanjut
      }
    }

    // Jika prima tetap true, maka i adalah bilangan prima
    if (prima) {
      print('$i');
    }
  }
  print('adalah bilangan prima.');
  print('Nama: $namaLengkap, NIM: $nim');
}
