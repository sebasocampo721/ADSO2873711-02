import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 04
  /*Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.
  */
  // definicion variables
  int num;
  int cant=20, calificaciones;
  //proceso y salida
  for(int i=0; i< cant; i++){
    print("digite el numero ");
    num= int.parse(stdin.readLineSync()!);
    if (num>0){
      numpositivo ++;
    }else if(num<0){
      numnegativo++;
    }else{
      ceros++;
    }
  }
  print("hay $numpositivo positivos");
  print("hay $numnegativo positivos");
  print("hay $ceros ceros");
  
}