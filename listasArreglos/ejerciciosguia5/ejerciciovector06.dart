import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje vector 01
  /*Diseñe  un  algoritmo  que  lea  dos  vectores  A  y  B  de  7  elementos  cada  uno  y  multiplique  el  primer elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento de  B  y  así  sucesivamente  hasta  llegar  al  séptimo  elemento  de  A  por  el  primer  elemento  de  B.  El resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado.
  */

  //se define una lisa vacia
  List<double> a = [], b= [], c= [];
  int cantnumeros=7, num, numalto=0, numbajo;
  
  //ciclo para llenar el vector
  for (var i = 0; i< cantnumeros; i++){
    print("ingrese el numero #${i+1}");
    num=int.parse(stdin.readLineSync()!);
    a.add(num as double);
    num=int.parse(stdin.readLineSync()!);
    b.add(num as double);
  }
  numbajo=a.length-1;
  for (var i = 0; i < a.length; i++){
    c.add(a[numalto]*b[numbajo]);
    numalto++;
    numbajo--;
  }
  print("lista a: $a");
  print("lista b $b");
  print("lista c $c");
}