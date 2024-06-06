import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje vector 01
  /*Diseñe  un  algoritmo  que  lea  dos  vectores  A  y  B  de  7  elementos  cada  uno  y  multiplique  el  primer elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento de  B  y  así  sucesivamente  hasta  llegar  al  séptimo  elemento  de  A  por  el  primer  elemento  de  B.  El resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado.
  */

  //se define una lisa vacia
  List<double> vectorA, vectorB, vectorC=[];
  List<double> vectorBinvertido = [];
  vectorA= [];
  vectorB= [];
  double multiplicacion;
  

  for (int i = vectorB.length-1; i>=0; i--){
  vectorBinvertido.add(vectorB[i]);
  }
  for (int i=0; i<vectorA.length; i++){
  multiplicacion= vectorA[i] * vectorBinvertido[i];
  vectorC.add(multiplicacion);
  }
  print(vectorA);
  print(vectorB);
  print(vectorC);
}