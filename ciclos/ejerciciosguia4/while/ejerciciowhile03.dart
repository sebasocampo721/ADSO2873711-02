
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 03
  /*Determinar  cuantos  hombres  y  cuantas  mujeres  se  encuentran  en  un  grupo  de  n  personas, suponiendo que los datos son extraídos alumno por alumno.
  */
  // definicion variables
   
  int contador=0, cantalumnos, sexo, mujeres, hombres;
    print("ingrese la cantidad de alumnos");
    cantalumnos= int.parse(stdin.readLineSync()!);
    hombres=0;
    mujeres=0;
    
    while( contador < cantalumnos){
    print("elige la opcion de acuerdo al sexo(opcion 1 hombre, opcion 2 mujer )");
    sexo=int.parse(stdin.readLineSync()!);
    if(sexo==1){
      hombres=hombres+1;
    }else if (sexo==2) {
      mujeres=mujeres+1;
    }else{
      print("escribe un numero correcto");
      
    }
    contador++;
  }
  print("el numero de hombres es: $mujeres");
  print("el numero de mujeres es: $hombres");
}