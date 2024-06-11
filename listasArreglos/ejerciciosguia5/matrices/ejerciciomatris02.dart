import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje  doble 02
  /*Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición [fila, columna] del número mayor almacenado en la matriz. Los números son diferentes.
  */
  // definicion variables
  List<List<int>> matriz = [];
  int cantfilas = 10, cantcolumnas=10;
  int numMayor = 0;
  int filamayor=0, columnamayor=0;
  //proceso y salida
  for (int i = 0; i < cantfilas; i++){
    List<int> fila = [];
    for (int j = 0; j < cantcolumnas; j++){
      print("ingrese el numero $i, $j");
      fila.add(int.parse(stdin.readLineSync()!));
    }   
    matriz.add(fila); 
  }
  for (var i = 0; i <matriz.length; i++){
  for (var j = 0; j <matriz[0].length; j++){
    if (matriz[i][j]>numMayor){
      numMayor= matriz[i][j];
      filamayor=i;
      columnamayor=j;
      } 
   }
  }
      print("el numero mayor es: $numMayor");
      print("la posicion del numero mayor es: $filamayor $columnamayor");
}