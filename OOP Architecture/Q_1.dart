import 'dart:io';

int sum({required List<int> list}) {
  int total = 0;
  list.forEach((element) {
    total += element;
  });
  return total;
}

void main() {
  List<int> myList =
      List.generate(5, (index) => 0);

  for (int i = 0; i < 5; i++) {
    stdout.write("ENTER NUMBER [$i] : ");
    myList[i] = int.parse(stdin.readLineSync() ?? "0");
  }

  print("ENTERED NUMBERS: $myList");
  print("SUM OF ENTERED NUMBERS: ${sum(list: myList)}");
}
