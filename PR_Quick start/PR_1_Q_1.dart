void main() {
  List<int> numbers = [2, -5, 7, -3, 0, -8, 4];

  printNegativeElements(numbers);
}

void printNegativeElements(List array) {
  print("Negative elements in the array : ");

  for (int num in array) {
    if (num < 0) {
      print(num);
    }
  }
}
