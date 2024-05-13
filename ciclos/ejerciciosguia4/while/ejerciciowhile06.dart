
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 06
  /*Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos.
  */
  // definicion variables
   
  int x, n, sexo, edad, edadmujeres=0, numeromujeres=0, promediomujeres=0, edadhombre=0, nhombres=0, promediohombres=0, promedio;
    print("ingrese la cantidad de alumnos");
    n= int.parse(stdin.readLineSync()!);
    x=0;
    
    while( x <= n){
    print("elige la opcion de acuerdo al sexo(opcion 1 hombre, opcion 2 mujer )");
    sexo=int.parse(stdin.readLineSync()!);
    print("ingrese su edad");
    edad=int.parse(stdin.readLineSync()!);
    if(sexo==1){
      edadhombre=edadhombre+edad;
      nhombres=nhombres+1;
      promediohombres=(edadhombre/nhombres) as int;
    }else if (sexo==2) {
      edadmujeres=edadmujeres+edad;
      numeromujeres=numeromujeres+1;
      promediomujeres=(edadmujeres/numeromujeres) as int;
    }else{
      print("escribe un numero correcto");
      x=x-1;
    }
    x=x-1;
  }
  promedio=((edadmujeres+edadmujeres)/n) as int;
  print("el ")
  print("el promedio de hombres es: $promediohombres");
  print("el promedio de mujeres es: $promediomujeres");
}