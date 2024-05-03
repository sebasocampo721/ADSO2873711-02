import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional doble 03
  /*Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se aplica un descuento del 20%  sobre el total de la compra y si son menos de tres camisas un descuento del 10%
  */
  // definicion variables
  double descuento, totalcompra, valorcompra, cantidad;
  //entrada
  print("ingrese el valor de la compra");
  valorcompra= double.parse(stdin.readLineSync()!);
  print("ingrese la cantidad de camisas que va a comprar");
  cantidad= double.parse(stdin.readLineSync()!);
  //proceso y salida
  descuento=0;
  if (cantidad>=3){
    descuento= valorcompra*0.2;
  }
  if (cantidad < 3){
    descuento= valorcompra*0.1;
 }
 totalcompra= valorcompra-descuento;
 print("el valor total de su compra es: $totalcompra");
}