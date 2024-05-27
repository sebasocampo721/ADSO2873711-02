import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje vector 07
  /*Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa palabra o frase es palíndroma.
  */

  //se define una lisa vacia
  List<double> a = [], b= [], c= [];
  int cantnumeros=7, num, numalto=0, numbajo;
  
  //ciclo para llenar el vector
  for (var i = 0; i< cantnumeros; i++){
    print("ingrese el numero #${i+1}");
    num=int.parse(stdin.readLineSync()!);
    a.add(num as double);
    num=int.parse(stdin.readLineSync()!);
    b.add(num as double);
  }
  numbajo=a.length-1;
  for (var i = 0; i < a.length; i++){
    c.add(a[numalto]*b[numbajo]);
    numalto++;
    numbajo--;
  }
  print("lista a: $a");
  print("lista b $b");
  print("lista c $c");
}