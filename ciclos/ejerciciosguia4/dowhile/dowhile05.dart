
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do while 01
  /*1.Calcular la suma siguiente:100 + 98 + 96 + 94 + . . . + 0 en este orden
  */
  // definicion variables
   
  int a = 100;
  int d = -2;
  int Term = a;
  int sum = 0;

  do {
    sum += Term;
    Term += d;
  } while (Term >= 0);

  print("La suma  es: $sum");
}
