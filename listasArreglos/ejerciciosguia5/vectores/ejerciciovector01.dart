import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje vector 01
  /*Calcular  el  promedio  de  50  valores  almacenados  en  un  vector.  Determinar  además  cuantos  son mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una lista de valores mayores que el promedio.
  */

  //se define una lisa vacia
  List<double> numeros = [];
  List<double> mayoresprom= [];
  int cantnumeros = 10;
  double num, sumanumeros=0, promedio;
  //ciclo para llenar el vector
  for (var i = 0; i< cantnumeros; i++){
    print("ingrese el numero #${i+1}");
    num=double.parse(stdin.readLineSync()!);
    numeros.add(num);//se agrega el numero a la lista
    sumanumeros+=num;
  }
  promedio=sumanumeros/numeros.length;//tambien puede ser cantnumeros
  print(numeros);
  print("el promedio es: $promedio");
  for (var i = 0; i < numeros.length; i++){
    if(i > promedio){
      mayoresprom.add(numeros[i]);
    }
  }
  print("la cantidad de mayores al promedio es: ${mayoresprom.length}");
  print("la lista de mayores promedio es:");
  print(mayoresprom);
}