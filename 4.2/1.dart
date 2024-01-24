import 'dart:io';

class Student {
  String name = "";
  String rollNumber = "";
  List<double> marks = [];

  void getDetails() {
    stdout.write("Enter student name: ");
    name = stdin.readLineSync()!;
    
    stdout.write("Enter roll number: ");
    rollNumber = stdin.readLineSync()!;
    
    marks = [];
    for (int i = 0; i < 3; i++) {
      stdout.write("Enter marks for subject ${i + 1}: ");
      marks.add(double.parse(stdin.readLineSync()!));
    }
  }

  void printDetails() {
    print("\nStudent Details:");
    print("Name: $name");
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
    print("Total Marks: ${marks.reduce((a, b) => a + b)}");
    print("Average Marks: ${marks.reduce((a, b) => a + b) / marks.length}");
  }
}

void main() {
  stdout.write("Enter the number of students: ");
  int N = int.parse(stdin.readLineSync()!);

  List<Student> students = List.generate(N, (index) => Student());

  for (Student student in students) {
    student.getDetails();
  }

  for (Student student in students) {
    student.printDetails();
  }
}
