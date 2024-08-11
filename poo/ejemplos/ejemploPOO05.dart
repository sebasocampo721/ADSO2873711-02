import 'dart:io';
import 'Vehiculo.dart';

void main(List<String> args) {
  List<Vehiculo> listaVehiculos = []; // Se crea  una lista de objetos vehiculo 
  int cantIteraciones = 2;
  String color;
  int velocidad;
  double tamanio;
   for (var i = 0; i < cantIteraciones; i++) {
    print("Ingrese el color del vehiculo ${i + 1}");
    color =stdin.readLineSync()!;
    print("Ingrese la velocidad el vehiculo ${i + 1}");
    velocidad = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehiculo ${i + 1}");
    tamanio = double.parse(stdin.readLineSync()!);
   // Se instancia la clase vehiculo y se crea el objeto con los valores del usuario
   Vehiculo  vehiculo_obj = Vehiculo(color, velocidad, tamanio);
   //Se añade el vehuculo a la lista
   listaVehiculos.add(vehiculo_obj);
   }
   //Cicilo para recorrer elementos(objetos) de la lista y llamar los metodos 
   for (var i = 0; i < cantIteraciones; i++) {
    print("*" * 50);
    print("*** Vehiculo ${i + 1} ***");
    listaVehiculos[i].avanzar(20);
    listaVehiculos[i].avanzar(80);
    listaVehiculos[i].avanzar(100);
    listaVehiculos[i].DisminuirVelocidad(10);
    listaVehiculos[i].detenerse();
    print("*" * 50);
   }
}