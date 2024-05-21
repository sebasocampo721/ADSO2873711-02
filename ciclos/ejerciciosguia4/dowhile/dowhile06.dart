
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do while 01
  /*.Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
  */
  // definicion variables
   
    double calificacion, prom, mayorpromedio=0, sumacalificaciones=0;
    int numcontrol=0, cantestudiantes, contador=0;
    print("cuantos estudiantes estan en el curso");
    cantestudiantes=int.parse(stdin.readLineSync()!);
    do{
      print("estudiante #${contador + 1}");
      sumacalificaciones=0;
      for(int i=0; i<5; i++){
        print("digite la nota ${i+1}");
        calificacion=double.parse(stdin.readLineSync()!);
        while (calificacion <0 || calificacion >5){
          print("nota no valida");
          calificacion=double.parse(stdin.readLineSync()!);
        }
        calificacion+=calificacion;
      }
      prom=sumacalificaciones/5;
      if(prom > mayorpromedio){
        mayorpromedio=prom;
        numcontrol=contador+1;
        print("hasta el momento mayor promedio es $mayorpromedio");
      }
      print('*'*20);
      contador++;
  } while (contador < cantestudiantes);
  print("el mayor promedio es: $mayorpromedio");
  print("el numero de control del mejor estudiante es: $numcontrol");
}


