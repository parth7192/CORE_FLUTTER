import 'dart:io';

class A {
  late int a;

  void set setA(int a) => this.a = a;

  void getA() {
    print("a: $a");
  }
}

class B extends A {
  late int b;

  void set setB(int b) => this.b = b;

  void getB() {
    print("b: $b");
  }
}

class C extends A {
  late int c;

  void set setC(int c) => this.c = c;

  void getC() {
    print("c: $c");
  }
}

int getInt({String varName = "value"}) {
  stdout.write("Enter $varName :");
  return int.parse(stdin.readLineSync() ?? "0");
}

void main() {
  B b = B();
  b..setB = getInt(varName: "B");

  C c = C();
  c..setC = getInt(varName: "c");
}
