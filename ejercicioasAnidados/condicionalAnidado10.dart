import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional anidado 04
  /*Tomando  como  base  los  resultados  obtenidos  en  un  laboratorio  de  análisis  clínicos,  un  medico determina si una persona esta normal, tiene anemia o tiene cardiopatía  lo cual depende de su nivel de  hemoglobina  en  la  sangre,  de  su  edad  y de  su  sexo.  Si  el nivel  de  hemoglobina que tiene  una persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la siguiente:EDADNIVEL HEMOGLOBINA0 -1 mes13 -26 g%> 1 y < = 6 meses10 -18 g%> 6 y < = 12 meses11 -15 g%> 1 y < = 5 años11.5 -15 g%> 5 y < = 10 años12.6 -15.5 g%> 10 y < = 15 años13 -15.5 g%mujeres > 15 años12 -16 g%hombres > 15 años14-18 g%
  */
  // definicion variables
  double anemia, cardiopatía, normal, hemoglobina, sexo, ;
  int edad;
  String resultado;
  //entrada
  print("ingrese la edad");
  edad= int.parse(stdin.readLineSync()!);
  print("ingrese el nivel de hemoglobina en g%");
  hemoglobina= double.parse(stdin.readLineSync()!);
  print("ingrese su sexo (M para masculino y F para femenino)");
  sexo= double.parse(stdin.readLineSync()!);
  //proceso y salida
  
  if (edad>=0 && edad <=1) {
    if (hemoglobina<13 && hemoglobina>26);
     resultado='anemia';
  }else {
     resultado='normal';
    }
  if (edad>1 && edad <=6) {
    if (hemoglobina<10 && hemoglobina>18);
     resultado='anemia';
  }else {
     resultado='normal';
    }
  if (edad>6 && edad <=12) {
    if (hemoglobina<11 && hemoglobina>15);
     resultado='anemia';
  }else {
     resultado='normal';
     }
     
    if (edad > 15 && edad <= 10) {
    if (sexo == 'F' && hemoglobina < 12  hemoglobina > 16) {
      resultado = 'anemia';
    } else if (sexo == 'M' && hemoglobina < 14 hemoglobina > 18) {
      resultado = 'anemia';
    } else {
      resultado = 'normal';
    }   



  // Imprime el resultado
  print("el valor a pagar es: $pagototal");
}
 