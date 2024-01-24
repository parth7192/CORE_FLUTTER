import 'dart:io';

double sum(double num1, double num2, double num3) {
  return num1 + num2 + num3;
}

void main() {
  double result = sum(5.0, 10.5, 8.3);

  print("Sum: $result");
}
