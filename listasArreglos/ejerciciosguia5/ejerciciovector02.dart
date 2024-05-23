import 'dart:io';

void main(){
  //sebastian oacampo - eje vector 02
  /*Llenar  dos  vectores  A  y  B  de  10  elementos  cada  uno,  sumar  el  elemento  uno  del  vector  A  con  el elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el vector resultante.
  */
  List<double> numeros1 = [];
  List<double> numeros2 = [];
  List<double> numeros3 = [];
  int cantnumeros1 = 10;
  int cantnumeros2 = 10;
  double num1,num2, sumanumeros=0, sumalist;

  for (var i = 0; i< cantnumeros1; i++){
    print("ingrese el numero de la lista A y B #${i+1}");
    num1=double.parse(stdin.readLineSync()!);
    num2=double.parse(stdin.readLineSync()!);
    numeros1.add(num1);//se agrega el numero a la lista
    numeros2.add(num2);//se agrega el numero a la lista
    sumanumeros=num1+num2;
  }
  for (var i = 0; i< numeros1.length; i++){
    sumalist= numeros1[i] + numeros2 [i];
    numeros3.add(sumalist);
  }
  print("la lista c es: ");
  print(numeros3);
}