import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional doble 01
  /*Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
  */
  // definicion variables
  double numero1, numero2;
  //entrada
  print("ingrese el numero 1 y numero2 ");
  numero1= double.parse(stdin.readLineSync()!);
  numero2= double.parse(stdin.readLineSync()!);
  //proceso y salida
  if(numero1>numero2){
    print("$numero2, $numero1");
  }else{
    print("$numero1, $numero2");
  }

}