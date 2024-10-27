int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String addOutput = "Add $a + $b = ${add(a, b)}";
  String subOutput = "Sub $a - $b = ${sub(a, b)}";
  return "$addOutput\n$subOutput";
}
