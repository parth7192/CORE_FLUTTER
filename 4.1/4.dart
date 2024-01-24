import 'dart:io';

double calculateSuccessPercentage({
  double occupation1 = 0,
  double occupation2 = 0,
  double occupation3 = 0,
  double occupation4 = 0,
  double occupation5 = 0,
}) {
  double totalMarks =
      occupation1 + occupation2 + occupation3 + occupation4 + occupation5;
  double totalPossibleMarks = 500;

  if (totalPossibleMarks == 0) {
    print("Error: Total possible marks cannot be zero.");
    return 0.0;
  }

  double successPercentage = (totalMarks / totalPossibleMarks) * 100;
  return successPercentage;
}

void main() {
  double occupation1Marks = 84;
  double occupation2Marks = 85;
  double occupation3Marks = 86;

  double successPercentage = calculateSuccessPercentage(
    occupation1: occupation1Marks,
    occupation2: occupation2Marks,
    occupation3: occupation3Marks,
  );
  print("\n");
  print("Success Percentage: $successPercentage%");
  print("\n");
}
