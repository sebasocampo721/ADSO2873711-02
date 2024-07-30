import 'dart:io';

import 'Vehiculo.dart';

void main(List<String>args){
  Vehiculo veh1_obj1= Vehiculo("azul", 40, 2);
  veh1_obj1.avanzar(25);
  veh1_obj1.avanzar(25);
  veh1_obj1.avanzar(125);
  veh1_obj1.detenerse();

  //listas o arrays de objetos
  List<String> nombresvehiculos=[];
  for(var i = 0; i<5; i++){
    print("ingrese el nombre del vehiculo");
    nombresvehiculos.add(stdin.readLineSync()!);
  }
  print(nombresvehiculos);
  
  List<Vehiculo> listadevehiculos; //se crea una lista de objetos vehiculos
    String color;
    int velocidad;
    double tamanio;
  for(var i = 0; i<5; i++){
    print("ingrese el color del vehiculo ${i+1}");
    color=stdin.readLineSync()!;
    print("ingrese la velocidad del vehiculo ${i+1}");
    velocidad=int.parse(stdin.readLineSync()!);
    print("ingrese  el tamaño del vehiculo ${i+1}");
    tamanio=double.parse(stdin.readLineSync()!);
    //se crea el objeto de forma dinamica o los datos que ingrese el usuario
    Vehiculo vehiculo_obj= Vehiculo(color, velocidad, tamanio);
    print("*"*30);
    print("vehiculo ${i+1}");
    vehiculo_obj.avanzar(30);
    vehiculo_obj.avanzar(20);
    vehiculo_obj.reducir(10);
    vehiculo_obj.detenerse();
    
  }
}