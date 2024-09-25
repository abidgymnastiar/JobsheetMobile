// void main(List<String> args) {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// Langkah 3
void main(List<String> args) {
  final List<dynamic> list = List.filled(5, null);
  assert(list.length == 5);
  list[1] = 'Abid Gymnastiar Alfiansyah';
  list[2] = '2241720043';

  print(list);
  print('Nama: ${list[1]}');
  print('NIM: ${list[2]}');
}
