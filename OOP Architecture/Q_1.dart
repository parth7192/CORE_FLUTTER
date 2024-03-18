import 'dart:io';

int Sum({required List<int> list}) {
  int a = 0;
  list.forEach((element) {
    a += element;
  });
  return sum;
}

void main() {
  List<int> myList = List.generate(5, (index) => index);

  myList.forEach((element) {
    stdout.write("Enter Number [${myList.indexOf(element)}] : ");
    element = int.parse(stdin.readLineSync() ?? "0");
  });
  print("\n");
  print("________________________________________________");
  print("Enter Any Number's =   ${Sum(list: myList)}\t\t\t|");
  print("________________________________________________");
}
