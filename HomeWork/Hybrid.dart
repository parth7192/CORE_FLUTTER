import 'dart:io';

class A {
  late int a;

  void setA(int a) => this.a = a;

  void getA() {
    print("a: $a");
  }
}

class B extends A {
  late int b;

  void setB(int b) => this.b = b;

  void getB() {
    print("b: $b");
  }
}

class C extends A {
  late int c;

  void setC(int c) => this.c = c;

  void getC() {
    print("c: $c");
  }
}

class D extends B {
  late int d;

  void setD(int d) => this.d = d;

  void getD() {
    print("d: $d");
  }
}

class E extends C {
  late int e;

  void setE(int e) => this.e = e;

  void getE() {
    print("e: $e");
  }
}

int getInt({String varName = "value"}) {
  stdout.write("Enter $varName :");
  return int.parse(stdin.readLineSync() ?? "0");
}

void main() {
  D d = D();

  d.setA(getInt(varName: "a"));
  d.getA();

  d.setB(getInt(varName: "b"));
  d.getB();

  d.setD(getInt(varName: "d"));
  d.getD();

  E e = E();

  e.setC(getInt(varName: "c"));
  e.getC();

  e.setE(getInt(varName: "e"));
  e.getE();
}
