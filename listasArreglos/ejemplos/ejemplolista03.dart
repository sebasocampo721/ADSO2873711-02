import 'dart:io';

void main(List<String> args) {
  //agregar elementos a la lista - add
  List<String> nombres = [];
  String? nombre;
  //ciclos para llenar nombres
  for (int i=0; i<5; i++){
    print("digite el nombre #${i + 1}");
    nombre= stdin.readLineSync()!;
    nombres.add(nombre);// agrega un elemeto al final de la lista
    print(nombre);
  }
  print('*'*30);
  print(nombres);

  // recorrer la lista para mostrar elementos
  for (int i=0; i<5; i++){
  print("nombre #${i+1}: ${nombres[i]}");
  }
}