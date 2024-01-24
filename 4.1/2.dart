import 'dart:io';

List<String> getUniqueNames(List<String> names) => names.toSet().toList();

void main() {
  List<String> inputNames = [
    "Alice",
    "Bob",
    "Alice",
    "Charlie",
    "Bob",
    "David"
  ];

  List<String> uniqueNames = getUniqueNames(inputNames);

  print("\n");
  print("Original List: $inputNames");
  print("\n");
  print("Unique List: $uniqueNames");
  print("\n");
}
