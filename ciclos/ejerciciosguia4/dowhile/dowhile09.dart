
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do while 01
  /*Escribir un programa que muestre el siguiente menú y que permita pasar magnitudes de grados a radianes y de radianes a grados.1.Pasar de grados a radianes2.Pasar de radianes a grados3.Salir del programa
  */
  // definicion variables
   
    
int opcion;
  double resultado, grados, radianes;
  do{
    print("elige la opcion");
    print("1. pasar de radiales a grados");
    print("2. pasar de radiales a grados");
    print("3. salir");
   
    opcion=int.parse(stdin.readLineSync()!);
   
    switch(opcion){
      case 1:
      print("ingrese los grados a pasar a radianes");
      grados=double.parse(stdin.readLineSync()!);
      radianes=grados*3.14/180;
      print("la conversion es: $radianes");
      break;
      case 2:
      print("ingrese los radianes a pasar a grados");
      radianes=double.parse(stdin.readLineSync()!);
      grados=radianes/180*3.14;
      print("la conversion es $grados");
      break;
      case 3:
      print("adios");
      break;
      default:
      print("opcion incorrecta");
    }
  } while (opcion!=3);
}


