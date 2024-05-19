
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 05
  /*Obtener el promedio de calificaciones de un grupo de n alumnos.
  */
  // definicion variables
  int x, n;
   double promedio=0, calificacio, suma=0;
  
    print("ingrese la cantidad de alumnos");
    n= int.parse(stdin.readLineSync()!);
    x=1;
    while( x <= n){
    print("ingrese la calificacion");
    calificacio=double.parse(stdin.readLineSync()!);
    suma= suma+calificacio;
    x=x+1;
    }
    promedio=suma/n;

  print("el promedio de las calificaciones del grupo es: $promedio");
}