import 'dart:io';
void main(){
  // sebastian ocampo - eje condicional simple 05
  /* Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
  */
  //definicion de variables 
  double precio, cantidad;
  //entrada
  print("ingrese la cantidad de llantas");
  cantidad= double.parse(stdin.readLineSync()!);
 precio=80000;
  if(cantidad >=70000 ) {
  }
  precio= cantidad*precio;
  //salida
    print("el precio total es: $precio");    
}