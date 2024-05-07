import 'dart:io';

void main(List<String> args){
  /*desarrollar un algoritmo tal que, dado como datos 10 numeros enteros, obtenga la suma de los 10 numeros enteros 
  se mostrara la suma de dichos numeros */
  int num, numero;
  double promedio=0;
  int cant=10;
  int suma= 0; //variable tipo acumulador 
  // adicionar codigo para sacar el promedio 
  //mostrar el mensaje:"digite numero 1....."
  for(int i=0; i< cant; i++){
    numero= i+1;
    print("digite el numero $numero");
    num= int.parse(stdin.readLineSync()!);
    // se va guardando la suma de los numeros
    suma = suma+num; //suma += num;
    promedio = suma / cant;
  }
  print("la suma es: $suma");
  print("el promedio es: $promedio");
}