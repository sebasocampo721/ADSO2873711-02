import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional anidado 07
  /*Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los reste y si no que los sume.
  */
  // definicion variables
  double num1, num2, resultado;
  //entrada
  print("ingrese el numero 1 y el numero 2");
  num1= double.parse(stdin.readLineSync()!);
  num2= double.parse(stdin.readLineSync()!);
  //proceso y salida
  
  if (num1==num2) {
    resultado=num1*num2;
  }
  else if (num1>num2) {
    resultado=num1-num2;
  }
  else {
    resultado=num1+num2;
  }
  // Imprime el resultado
  print("el resultado es: $resultado");
}