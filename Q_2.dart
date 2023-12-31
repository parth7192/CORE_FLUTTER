void main() {
  List numbers = [10,20,30,40,50];

  int largestNumber = findLargestNumber(numbers);
  print("The largest number in the array is: $largestNumber");
}

int findLargestNumber(List array) {
  if (array.isEmpty) {
    throw ArgumentError("Array is empty");
  }

  int largest = array[0];

  for (int num in array) {
    if (num > largest) {
      largest = num;
    }
  }
  return largest;
}
