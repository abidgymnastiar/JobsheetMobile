void main(List<String> args) {
  var list1 = <dynamic>[1, 2, 3];
  var list2 = [0, ...list1];

  print(list1);
  print(list2);
  print(list2.length);

  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var nimList = [2241720043];
  var combinedList = [0, ...nimList, ...list1];

  print(combinedList);

  bool promoActive = false;
  // bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  String login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
    if (login case 'Admin') 'Inventory Admin'
  ];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

