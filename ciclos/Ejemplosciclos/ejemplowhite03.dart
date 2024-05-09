import 'dart:io';

void main(List<String> args){
  /*desarrollar un algoritmo que lea n numeros positivos, determine y muestre el promedio de los
  n numeros positivos*/ 
  
  int cantnumeros, contador=0, num, suma=0;
  double promedio;
    print("ingrese la  cantidad de numeros");
    cantnumeros= int.parse(stdin.readLineSync()!);
    while(contador < cantnumeros){
    print("digite un numero positivo");
    num= int.parse(stdin.readLineSync()!);
    if (num >0){
      suma= suma+num;
       contador++;
    }else {
      print("el numero digitado no es positivo");
    }
  }
  promedio= suma/ contador;
  print("el promedio es: $promedio ");
}