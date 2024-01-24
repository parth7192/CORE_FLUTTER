import 'dart:io';

class A{
  late int a;

  void set setA(int a) => this.a = a;

  void getA(){
    print("a: $a");
  } 
}

class B extends A{
  late int b;

  void set setB(int b) => this.b= b;

  void getB(){
    print("b: $b");
  } 
}

class C extends B{
  late int c;

  void set setC(int c) => this.c = c;

  void getC(){
    print("c: $c");
  } 

  void sumAll(){
  print("Sum of : $a + $b + $c = ${a+b+c}");
}
}

int getInt({String varName = "value"}) {
  stdout.write("Enter $varName :");
  return int.parse(stdin.readLineSync() ?? "0");
}

void main(){
  C c = C();

  c..setA  = getInt(varName : "a")
   ..setB  = getInt(varName : "b")
   ..setC  = getInt(varName : "c")
   ..getA()
   ..getB()
   ..getC()
   ..sumAll();

}

