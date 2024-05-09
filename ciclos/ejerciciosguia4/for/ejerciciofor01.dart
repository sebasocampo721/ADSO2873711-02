import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 01
  /*Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado de Algoritmos.
  */
  // definicion variables
  double promedio, nota, sumanota=0, contador=0;
  for(int i=0; i< 7; i++){
    int notas= i+1;
    print("ingrese la nota $notas");
    nota= double.parse(stdin.readLineSync()!);
    sumanota = sumanota+notas; 
  }
  promedio= sumanota/7;
  print("el promedio es: $promedio");
}