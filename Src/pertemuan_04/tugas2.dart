// Fungsi anonim disimpan dalam variabel
var salam = (String nama) {
  return 'Halo, $nama!';
};

// Fungsi sebagai argumen
void salamCetak(Function fungsi, String nama) {
  print(fungsi(nama));
}

// Fungsi yang mengembalikan fungsi lain
Function fungsiPembuatSalam(String sapaan) {
  return (String nama) => '$sapaan, $nama!';
}

void main() {
  // 1. Pemanggilan fungsi yang disimpan dalam variabel
  print(salam('Abid')); // Output: Halo, Abid!

  // 2. Pemanggilan fungsi sebagai argumen
  salamCetak(salam, 'Gymnastiar'); // Output: Halo, Gymnastiar!

  // 3. Pemanggilan fungsi yang mengembalikan fungsi lain
  var salamPersonal = fungsiPembuatSalam('Selamat pagi');
  print(salamPersonal('Alfiansyah')); // Output: Selamat pagi, Alfiansyah!
}
