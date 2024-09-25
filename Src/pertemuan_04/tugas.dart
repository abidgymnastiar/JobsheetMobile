// Fungsi dengan berbagai jenis parameter
void fungsiPositional(int a, int b) {
  print('Positional: a: $a, b: $b');
}

void fungsiOptionalPositional(int a, [int? b]) {
  print('Optional Positional: a: $a, b: $b');
}

void fungsiNamed({required String nama, int? umur}) {
  print('Named: Nama: $nama, Umur: $umur');
}

void fungsiDefault(int a, [int b = 10]) {
  print('Default: a: $a, b: $b');
}

void main() {
  // Pemanggilan fungsi dengan Positional Parameters
  fungsiPositional(1, 2);

  // Pemanggilan fungsi dengan Optional Positional Parameters
  fungsiOptionalPositional(3);
  fungsiOptionalPositional(3, 4);

  // Pemanggilan fungsi dengan Named Parameters
  fungsiNamed(nama: 'Abid');
  fungsiNamed(nama: 'Abid', umur: 21);

  // Pemanggilan fungsi dengan Default Parameters
  fungsiDefault(5); // b akan menggunakan nilai default 10
  fungsiDefault(5, 20); // b akan diisi dengan 20
}
