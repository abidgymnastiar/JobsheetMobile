void main(List<String> args) {
  for (int index = 10; index < 27; index++) {
    print(index);
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
}
