import "1.dart";

int calculateCube(int number) {
  return number * number * number;
}

void main() {
  int inputNumber = 5;
  int result = calculateCube(inputNumber);

  print("The cube of $inputNumber is: $result");
}
