import 'dart:io';

void main(List<String> args) {
  List<List<int>> matriz = [];
  int cantfilas=3, cantcolumnas=4, numero;
  for(int i = 0; i < cantfilas; i++){
    List<int> fila = [];
    for(int j = 0; j < cantcolumnas; j++ ){
      print("ingrese el elemento posiccion $i $j");
      numero= int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    print(fila);
    matriz.add(fila);
    print(matriz);
  }
  print('*'*30);
  print(matriz);

  //tamaño matriz
  print("cantidad filas: ${matriz.length}");
  print("cantidad columnas ${matriz[0].length}");

  //imprimir todos los elementos de  las listas 
  for(var fila = 0; fila < matriz.length; fila++){
    //recorre las filas
    stdout.write("|");
    for(var columna = 0; columna < matriz[0].length; columna++){
      //recorre las columnas
      stdout.write("${matriz[fila][columna]}|");
    }
    print("");
  }
}