import 'dart:io';

double add(double num1, double num2) {
  return num1 + num2;
}

double subtract(double num1, double num2) {
  return num1 - num2;
}

double multiply(double num1, double num2) {
  return num1 * num2;
}

double divide(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print("Error: Division by zero is not allowed.");
    return double.nan;
  }
}

void main() {
  while (true) {
    print("\nSimple Calculator Menu:");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("4. Divide");
    print("5. Exit");

    stdout.write("Enter your choice (1-5): ");
    int choice = int.parse(stdin.readLineSync() ?? "0");

    if (choice == 5) {
      print("Exiting the calculator. Goodbye!");
      break;
    }

    stdout.write("Enter the first number: ");
    double num1 = double.parse(stdin.readLineSync() ?? "0");

    stdout.write("Enter the second number: ");
    double num2 = double.parse(stdin.readLineSync() ?? "0");

    double result;

    switch (choice) {
      case 1:
        result = add(num1, num2);
        print("Result: $result");
        break;

      case 2:
        result = subtract(num1, num2);
        print("Result: $result");
        break;

      case 3:
        result = multiply(num1, num2);
        print("Result: $result");
        break;

      case 4:
        result = divide(num1, num2);
        if (!result.isNaN) {
          print("Result: $result");
        }
        break;

      default:
        print("Invalid choice. Please enter a valid option (1-5).");
    }
  }
}
