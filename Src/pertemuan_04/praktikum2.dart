void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Abid Gymnastiar Alfiansyah');
  names1.add('2241720043');

  names2.addAll({'Abid Gymnastiar Alfiansyah', '2241720043'});

  print(names1);
  print(names2);
  // print(names3);
}
