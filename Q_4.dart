import 'dart:io';

void main() {
  List<List> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  List<List> matrix2 = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1],
  ];

  List<List> resultMatrix = addMatrices(matrix1, matrix2);

  print("Matrix 1:");
  displayMatrix(matrix1);
  print("\nMatrix 2:");
  displayMatrix(matrix2);
  print("\nResult Matrix(Sum of Matrix 1 and Matrix 2) :");
  displayMatrix(resultMatrix);
}

List<List> addMatrices(List<List> matrix1, List<List> matrix2) {
  List<List> result = List.generate(3, (i) => List.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  }

  return result;
}

void displayMatrix(List<List> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    print("");
  }
}
