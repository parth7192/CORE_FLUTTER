import 'dart:io';

void main() {
  stdout.write("Enter size of in Array : ");
  int size = int.parse(stdin.readLineSync()!);

  List<int> a = List.generate(size, (index) => index);

  for (var i = 0; i < size; i++) {
    stdout.write("Enter element of $i : ");
    int val = int.parse(stdin.readLineSync()!);
    a[i] = val;
  }

  print("\nOperations :2");
  print("==============");
  print("1. Insert");
  print("2. Delet");
  print("3. Update");
  print("4. View");
  print("5. Exit");
  print("==============");
  stdout.write("Enter your choice : ");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      stdout.write('Enter The value in insert :');
      int i = int.parse(stdin.readLineSync()!);
      stdout.write('Enter value : ');
      choice = int.parse(stdin.readLineSync()!);

      a.insert(i, choice);
      break;

    case 2:
      stdout.write('Enter The value for remove : ');
      choice = int.parse(stdin.readLineSync()!);

      a.remove(choice);
      break;

    case 3:
      stdout.write('Enter The index of update value : ');
      int i = int.parse(stdin.readLineSync()!);
      stdout.write('Enter value : ');
      choice = int.parse(stdin.readLineSync()!);

      a[i] = choice;
      break;

    case 4:
      print('List : $a');

    default:
      print('Invalid choice!!');
  }
}
