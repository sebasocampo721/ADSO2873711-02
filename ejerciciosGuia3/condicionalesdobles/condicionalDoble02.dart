import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional doble 02
  /*Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:•Si trabaja 40 horas o menos se le paga $16 por hora•Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra.
  */
  // definicion variables
  double salario, preciohora;
  int horas, extra;
  //entrada
  print("ingrese las horas trabajadas");
  horas= int.parse(stdin.readLineSync()!);
  //proceso y salida
  preciohora=16;
  salario=horas*16;
  if (horas>=40){
    extra=horas-40;
    salario=(40*16)+extra*20;
  }
  else{
    salario=horas*16;
  }
  print("el salario semanal es: $salario");
}