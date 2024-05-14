import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 04
  /*Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.
  */
  // definicion variables
  
  int  calificacion, calificiacion_baja=0, suma=0, promedio, calificacion_mayor;
  //proceso y salida
  for(int i=1; i<= 40; i++){
    print("digite una calificacion $i");
    calificacion= int.parse(stdin.readLineSync()!);
    suma= suma+calificacion;
    while (calificacion<0 || calificacion>5){
      print("la nota esta en el rango incorrecto");
      print("ingrese de nuevo la nota del alumno" +(i+1).toString());
      calificacion=int.parse(stdin.readLineSync()!);
    }
    if (calificacion<calificiacion_baja){
      calificiacion_baja=calificacion;
    }
    if (calificacion>calificacion_mayor){
      calificiacion=calificacion;
    }
  }
  promedio= (suma / 40) as int;
  print("la calificacion promedio es: $promedio");
  print("la calificacion mas baja es: $calificiacion_baja");
  
}

