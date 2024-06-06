import 'dart:io';

void main(List<String> args) {
  List<List<double>> matriz = [];
  double suma = 0;
  int cantfilas = 2, cantcolumnas=3;
  for (int i = 0; i < cantfilas; i++){
    List<double> fila = [];
    for (int j = 0; j < cantcolumnas; j++){
      print("ingrese el numero $i, $j");
      fila.add(double.parse(stdin.readLineSync()!));
    }   
    matriz.add(fila); 
  }
  //ciclo para recorrrer y generar la suma
  for (var i = 0; i < matriz.length; i++){
    for (var j = 0; j < matriz[0].length; j){
      suma += matriz[i][j];
    }
  }
  print(matriz);
  print("la suma de los elementos de la matriz es: $suma");
}