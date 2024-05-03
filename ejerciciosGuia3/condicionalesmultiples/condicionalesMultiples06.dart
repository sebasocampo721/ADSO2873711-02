// ignore_for_file: constant_pattern_never_matches_value_type, duplicate_ignore

import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional multiple 06*
  /*Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene. Es necesario tener en cuenta si es año bisiesto o no.
  */
  // definicion variables
  String? nombremes;
  int anio, cantDias;
  //entrada 
  
  print("ingrese el nombre del mes");
  nombremes= stdin.readLineSync()!;
  print("ingrese el año");
  anio = int.parse(stdin.readLineSync()!);

  //proceso alg 
  cantDias=0;
  switch(nombremes){
    case 'enero':
    print("el mes de enero tiene 31 dias");
    cantDias=31;
    break;
    case 'febrero':
    print("el mes de febrero tiene 28 dias");
    cantDias=28;
    break;
    case 'marzo':
    print("el mes de marzo tiene 31 dias");
    cantDias=31;
    break;
    case 'abril':
    cantDias=30;
    print("el mes de abril tiene 30 dias");
    break;
    case 'mayo':
    cantDias=31;
    print("el mes de mayo tiene 31 dias");
    break;
    case 'junio':
    cantDias=30;
    print("el mes de junio tiene 30 dias");
    break;
    case 'julio':
    cantDias=31;
    print("el mes de julio tiene 31 dias");
    break;
    case 'agosto':
    cantDias=31;
    print("el mes de agosto tiene 31 dias");
    break;
    case 'septiembre':
    cantDias=30;
    print("el mes de septiembre tiene 30 dias");
    break;
    case 'octubre':
    cantDias=31;
    print("el mes de octuble tiene 31 dias");
    break;
    case 'noviembre':
    cantDias=30;
    print("el mes de noviembre tiene 30 dias");
    break;
    case 'diciembre':
    cantDias=31;
    print("el mes de diciembre tiene 31 dias");
    break;
    default:
    print("la categoria es incorrecta");
    break;
  }

  if (anio % 4 == 0 && anio % 100 != 0){
    print("el año es bisiesto");
  }
  
  //salida 
 
  print("el año es: $anio");
  print("el nombre del mes es: $nombremes");
  print("el mes tiene: $cantDias dias");

}