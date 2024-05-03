import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional anidado 04
  /*En  un  montallantas  se  ha  establecido  una  promoción  de  las  llantas  marca  “Ponchadas”,  dicha promoción consiste en lo siguiente:Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la compra
  */
  // definicion variables
  double pagototal, cantllantas;
  //entrada
  print("ingrese la cantidad de llantas que vacomprar");
  cantllantas= double.parse(stdin.readLineSync()!);
  //proceso y salida
  if (cantllantas<5) {
    pagototal=cantllantas*90000;
  }
  else if (cantllantas<10) {
    pagototal=cantllantas*80000;
  }
  else {
    pagototal=cantllantas*70000;
  }
  // Imprime el resultado
  print("el valor a pagar es: $pagototal");
}