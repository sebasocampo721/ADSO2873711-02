import 'dart:io';

void maina(){
  // sebastian ocampo - eje condicional simple 02
  /*La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un descuento del 10%.
  */
  //definicion de variables 
  double largo, ancho,  precioM2, precioterreno, descuento;
  double areaterreno;
  //entrada 
  print("ingrese el largpo del terreo");
  largo = double.parse(stdin.readLineSync()!);
  print("ingrese el ancho del terreo");
  ancho = double.parse(stdin.readLineSync()!);
  print("ingrese el precio metrocuadrado");
  precioM2 = double.parse(stdin.readLineSync()!);
  //proceso
  areaterreno = largo * ancho;
  precioterreno = areaterreno * precioM2;
  if(areaterreno > 400) {
    descuento = precioterreno * 0.1;
    precioterreno = precioterreno - descuento;
    print("el descuento es de $descuento");
  }
  //salida
  print("el precio del terreno es: $precioterreno");
}