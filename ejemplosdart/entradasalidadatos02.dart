import 'dart:io';

void main(){
  print("ejemplo 02 - entrada/salida datos");
  //definicion
  int num1, num2, suma;
  //entrada alg
  print("ingrese el valor del numero 1");
  num1 = int.parse(stdin.readLineSync()!);
 stdout.writeln("ingrese el valor del numero 2");
 num2 = int.parse(stdin.readLineSync()!);
 //proceso alg
 suma=num1+num2;
 //salida alg
 print("la suma de los numeros es $suma");
}