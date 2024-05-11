
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 01
  /*En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma:Si el obrero trabaja 40 horas o menos se le paga $20 por horaSi trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra.
  */
  // definicion variables
   
  
    int horas,extra, cantobreros, contador=0, preciohora;
  double salario, salariototal;
    print("ingrese la  cantidad de obreros");
    cantobreros= int.parse(stdin.readLineSync()!);
    preciohora=20;
    extra=25;
    while(contador < cantobreros){
    print("ingrese la cantidad de horas trabajadas");
    horas= int.parse(stdin.readLineSync()!);
    if (horas <= 40){
      salariototal=(horas* preciohora) as double;
       contador++;
    }else {
      extra=(horas-40)*extra;
      salariototal=extra+salariototal;
    }
  }
  
  print("el promedio es: $ ");
}