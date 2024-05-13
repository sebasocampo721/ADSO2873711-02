
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 03
  /*Determinar  cuantos  hombres  y  cuantas  mujeres  se  encuentran  en  un  grupo  de  n  personas, suponiendo que los datos son extraídos alumno por alumno.
  */
  // definicion variables
   
  int x, n, sexo, mujeres, hombres;
    print("ingrese la cantidad de alumnos");
    n= int.parse(stdin.readLineSync()!);
    x=1;
    hombres=0;
    mujeres=0;
    
    while( x <= n){
    print("elige la opcion de acuerdo al sexo(opcion 1 hombre, opcion 2 mujer )");
    sexo=int.parse(stdin.readLineSync()!);
    if(sexo==1){
      hombres=hombres+1;
    }else if (sexo==2) {
      mujeres=mujeres+1;
    }else{
      print("escribe un numero correcto");
      x=x-1;
    }
    x=x-1;
  }
  print("el numero de hombres es: $mujeres");
  print("el numero de mujeres es: $mujeres");
}