
import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje while 02
  /*En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma:Si el obrero trabaja 40 horas o menos se le paga $20 por horaSi trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra.
  */
  // definicion variables
  int contador=0, cantvendedores, horas, horasextra;
   double salario=0;
    print("ingrese la cantidad de vendedores");
    cantvendedores= int.parse(stdin.readLineSync()!);
    while( contador < cantvendedores){
    print("ingrese el numero de horas trabajadas del vendedor ${contador+1}");
    horas=int.parse(stdin.readLineSync()!);
    if(horas <= 40){
      salario=horas*20;
    }else{
    horasextra=horas-40;
    salario= 40*20+(horasextra*25);
    }
    contador++;
      print("el salario del trabajardor $contador es: $salario");
  }
}