import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional anidado 03
  /*En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10% de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco pero  menos  de  diez  se  le  otorga  un  20%  de  descuento;  y  si  son  10  o  más  se  les  da  un  40%  de descuento. El precio de cada computadora es de $1100000
  */
  // definicion variables
  double descuento, valorcomputador, pagototal, cantcomputadores, pagototal1;
  //entrada
  print("ingrese la cantidad de computadores que vacomprar");
  cantcomputadores= double.parse(stdin.readLineSync()!);
  
  //proceso y salida
  valorcomputador=1100000;
  pagototal= valorcomputador*cantcomputadores;
  if (cantcomputadores<5) {
    descuento= pagototal*0.1;
    pagototal1= pagototal-descuento;
  }
  else if (cantcomputadores<10) {
    descuento= pagototal*0.2;
    pagototal1= pagototal-descuento;
  }
  else {
    descuento= pagototal*0.4;
    pagototal1= pagototal-descuento;
  }
  // Imprime el resultado
  print("el valor a pagar es: $pagototal1");
}