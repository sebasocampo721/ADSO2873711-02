import 'dart:io';

void main(List<String> args) {
  List<List<double>> matriz = [];
  double suma = 0;
  int cantfilas = 10, cantcolumnas=10;
  for (int i = 0; i < cantfilas; i++){
    List<double> fila = [];
    for (int j = 0; j < cantcolumnas; j++){
      print("ingrese el numero $i, $j");
      fila.add(double.parse(stdin.readLineSync()!));
    }   
    matriz.add(fila); 
  }

  

}