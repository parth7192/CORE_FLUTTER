import 'dart:io';

void main() {
  List<int> array = [];
 {
    print("\nMenu:");
    print("1. Insert element");
    print("2. Update element");
    print("3. Delete element");
    print("4. View elements");
    print("5. Exit");

    stdout.write("Enter your choice (1-5): ");
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        insertElement(array);
        break;
      case '2':
        updateElement(array);
        break;
      case '3':
        deleteElement(array);
        break;
      case '4':
        viewElements(array);
        break;
      case '5':
        print("Exiting the program");
        return;
      default:
        print("Invalid choice");
    }
  }
}

void insertElement(List<int> array) {
  stdout.write("Enter the element to insert: ");
  int element = int.parse(stdin.readLineSync() ?? '0');
  array.add(element);
  print("Element $element inserted successfully.");
}

void updateElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty. Cannot perform update operation.");
    return;
  }

  viewElements(array);

  stdout.write("Enter the index to update (0-${array.length - 1}): ");
  int index = int.parse(stdin.readLineSync() ?? '0');

  if (index < 0 || index >= array.length) {
    print("Invalid index. Please enter a valid index.");
    return;
  }

  stdout.write("Enter the new value: ");
  int newValue = int.parse(stdin.readLineSync() ?? '0');

  array[index] = newValue;
  print("Element at index $index updated to $newValue successfully.");
}

void deleteElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty. Cannot perform delete operation.");
    return;
  }

  viewElements(array);

  stdout.write("Enter the index to delete (0-${array.length - 1}): ");
  int index = int.parse(stdin.readLineSync() ?? '0');

  if (index < 0 || index >= array.length) {
    print("Invalid index. Please enter a valid index.");
    return;
  }

  int deletedElement = array.removeAt(index);
  print("Element at index $index ($deletedElement) deleted successfully.");
}

void viewElements(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty.");
  } else {
    print("Elements in the array: $array");
  }
}
