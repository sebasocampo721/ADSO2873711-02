import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional anidado 01
  /*Dado tres números calcular el mayor
  */
  // definicion variables
  int numero1, numero2, numero3;
  //entrada
  print("ingrese el numero 1, numero 2  y numero 3");
  numero1= int.parse(stdin.readLineSync()!);
  numero2= int.parse(stdin.readLineSync()!);
  numero3= int.parse(stdin.readLineSync()!);
  //proceso y salida
  int mayor = numero1;

  if (numero2 > mayor) {
    mayor = numero2;
  }

  if (numero3 > mayor) {
    mayor = numero3;
  }
  
  // Imprime el resultado
  print('El mayor de los tres números es: $mayor');

}