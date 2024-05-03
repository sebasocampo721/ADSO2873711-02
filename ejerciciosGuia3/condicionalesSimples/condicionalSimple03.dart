
import 'dart:io';

void main(){
  // sebastian ocampo - eje condicional simple 03
  /* El jefe deunalmacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal.
  */
  //definicion de variables 
  String? modelotraje;
  double preciounitario, descuento, cantTrajes, precio;
  //entrada
  print("ingrese el modelo deltraje");
  modelotraje = stdin.readLineSync();
  print("ingrese la cantidad de trajes");
  cantTrajes = double.parse(stdin.readLineSync()!);
  print("ingrese el precio unitario");
  preciounitario = double.parse(stdin.readLineSync()!);
  //proceso
  precio= preciounitario*cantTrajes;
  if (cantTrajes >= 3) {
    descuento = preciounitario * 0.17;
    precio = preciounitario - descuento;
    print("tuvo un decuento de: $descuento");
  }
  //salida
  print("el modelo del traje es : $modelotraje");
  print("el precio total es: $precio");
}