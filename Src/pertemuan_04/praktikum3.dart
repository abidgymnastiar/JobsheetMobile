void main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridger';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //modifikasi nilai
  gifts.addAll({'nama': 'Abid Gymnastiar Alfiansyah', 'NIM': '2241720043'});
  nobleGases.addAll({19: 'Abid Gymnastiar Alfiansyah', 20: '2241720043'});

  mhs1.addAll({'nama': 'Abid Gymnastiar Alfiansyah', 'NIM': '2241720043'});
  mhs2.addAll({1: 'Abid Gymnastiar Alfiansyah', 3: '2241720043'});

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
