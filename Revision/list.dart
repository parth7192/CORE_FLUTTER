import 'dart:io';

void main() {
  int l;

  stdout.write("Enter length : ");
  l = int.parse(stdin.readLineSync() ?? "0");

  List<int> myList = List.generate(l, (index) {
    stdout.write("${index + 1}) Enter the value: ");
    return int.parse(stdin.readLineSync() ?? "0");
  });
  myList.sort(); 
  print("List: $myList");
}