
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 02
  /*En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma:Si el obrero trabaja 40 horas o menos se le paga $20 por horaSi trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra.
  */
  // definicion variables
   
  int x, n, horas, horasextra;
   double salario=0;
  
    print("ingrese la cantida de vendedores");
    n= int.parse(stdin.readLineSync()!);
    x=1;
    
    while( x <= n){
    print("ingrese el numero de horas trabajadas");
    horas=int.parse(stdin.readLineSync()!);
    if(horas <= 40){
      salario=horas*20;
    }
    horasextra=horas-40;
    salario= 40*20+(horasextra*25);
  }
  print("el salario del trabajardor $x es: $salario");
}