import 'dart:io';

void main(){
  stdout.write("Enter length : ");
  int length = int.parse(stdin.readLineSync() ?? "0");

  List<int> myList = List.generate(length, (index) {
    stdout.write("${index + 1}) Enter element : ");
    return int.parse(stdin.readLineSync() ?? "0");

  });

  int choice = 0;

  do {
    print("1) Insert");
    print("2) Update");
    print("3) Delete");
    print("4) Display");
    print("-1) Exit");
    stdout.write("Enter yout choice: ");
    choice = int.parse(stdin.readLineSync() ?? "0");

    switch(choice) {
      case 1:
      stdout.write("Enter Position\t: ");
      int pos = getInt();
      stdout.write("Enter value\t: ");
      int val = getInt();
      myList.insert(pos, val);
      break;

      case 2:
      stdout.write("Enter Position\t: ");
      int pos = getInt();
      stdout.write("Enter value\t: ");
      int val = getInt();
      myList[pos] = val;
      break;

      case 3:
       stdout.write("Enter value\t: ");
       int val = getInt();
       myList.remove(val);
       break;

       case 4:
       for(int i=0;i<myList.length;i++){
        print("myList[$i]: ${myList[i]}");
       }
       break;

      case -1:
        break;

        default:
          print("Invalid choice.....");
    }
  } while (choice != -1);
}
