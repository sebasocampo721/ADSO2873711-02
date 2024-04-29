import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional anidado 02
  /*Dado el monto de una compra calcular el descuento considerado•Descuento es 20% si el monto es mayor a 20000 pesos.•Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.•no hay descuento si el monto es menor o igual a 10000 pesos.
  */
  // definicion variables
  double descuento, valorcompra, pagototal;
  //entrada
  print("ingrese el valor de la compra");
  valorcompra= double.parse(stdin.readLineSync()!);
  
  //proceso y salida
  descuento=0;
  if (valorcompra>=10000) {
    descuento= valorcompra*0.1;
  }
  if (valorcompra>=20000) {
    descuento= valorcompra*0.2;
  }
  else  {
    print("no hay descuento por su compra");
  }
  pagototal= valorcompra-descuento;
  // Imprime el resultado
  print("el valor a pagar es: $pagototal");
}