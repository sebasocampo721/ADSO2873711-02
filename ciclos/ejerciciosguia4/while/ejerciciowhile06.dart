
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 06
  /*Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos.
  */
  // definicion variables
   double promedio, promediohombres, promediomujeres;
   int cantalumnos, contadorhombres=0, contadormujeres=0, sumatotal=0;
   int contador=0, edad, sumahombres=0, sumamujeres=0;
   String genero;
    print("ingrese la cantidad de alumnos");
    cantalumnos= int.parse(stdin.readLineSync()!);
    while( contador < cantalumnos){
    print("ingrese el genero y edad de la persona: ${contador+1}");
    genero=stdin.readLineSync()!;
    edad=int.parse(stdin.readLineSync()!);
    if(genero!.toUpperCase()=="H"){
    sumahombres=sumahombres+edad;
    contadorhombres++;
    }else if (genero.toUpperCase()=="M") {
     sumamujeres= sumamujeres+edad;
     contadormujeres++;
    }else{
      print("genero no valido");
    }
    contador++;
  }
  sumatotal= sumamujeres+sumahombres;
  promedio=sumatotal/cantalumnos;
  promediohombres= sumahombres/contadorhombres;
  promediomujeres=sumamujeres/contadormujeres;
  print("el promedio de edades es: $promedio ");
  print("el promedio de hombres es: $promediohombres");
  print("el promedio de mujeres es: $promediomujeres");
}