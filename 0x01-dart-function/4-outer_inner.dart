void outer(String name, String id) {
  final splitted = name.split(" ");
  final String firstName = splitted.first;
  final String lastName = splitted.last;

  String inner() {
    String output = "Hello Agent ${lastName[0]}.$firstName your id is $id";
    return output;
  }

  print(inner());
}
