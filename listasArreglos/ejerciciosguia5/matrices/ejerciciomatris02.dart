import 'dart:io';

void main(List<String> args) {
  List<List<double>> matriz = [];
  double suma = 0;
  int cantfilas = 10, cantcolumnas=10;
  int numMayor = 0;
  int posicion = -1;
  for (int i = 0; i < cantfilas; i++){
    List<double> fila = [];
    for (int j = 0; j < cantcolumnas; j++){
      print("ingrese el numero $i, $j");
      fila.add(double.parse(stdin.readLineSync()!));
    }   
    matriz.add(fila); 
  }
  for (var i = 0; i <matriz.length; i++){
  for (var j = 0; j <matriz[0].length; j++){
    if (matriz[i][j]>numMayor){
      numMayor= matriz[i][j] as int;
      }
  if(posicion !=-1){
    print("el numero se encuentra en la posicion $posicion");
  }else{
    print("el numero no se encontro");
  }
    }
    
  }
    
}