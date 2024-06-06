import 'dart:io';

void main(List<String> args) {
  //definicion de matriz
  List<List<int>> matriz1;

  //definicion e iniciacion de matriz
  List<List<int>> matriz2 = [];

  //definir e inicializar con valores la matriz
  List<List<double>> matriz3 = [
  [3, 5 ,7, 9],
  [2, 4 ,6, 8],
  [1, 2 ,9, 12]
  ];

  //aceder a los elementos 
  print(matriz3);       
  print(matriz3[1][2]); //imprime 6
  print(matriz3[2][3]); //imprime 12
  print(matriz3[0][2]); //imprime 7
  print('*'*30);
  //modificar os elementos de  la matriz 
  matriz3[2][1] =7;
  matriz3[2][3] =11;
  print(matriz3[2][1]);
  print(matriz3);

  //tamaño matriz
  print("cantidad filas: ${matriz3.length}");
  print("cantidad columnas ${matriz3[0].length}");

  //imprimir todos los elementos de  las listas 
  for(var fila = 0; fila < matriz3.length; fila++){
    //recorre las filas
    stdout.write("|");
    for(var columna = 0; columna < matriz3[0].length; columna++){
      //recorre las columnas
      stdout.write("${matriz3[fila][columna]}|");
    }
    print("");
  }
}