import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 05
  /*Calcular  e  imprimir  la  tabla  de  multiplicar  de  un  número  cualquiera.  Imprimir  el  multiplicando,  el multiplicador y el producto.
  */
  // definicion variables
  
  int n, resultado=0;
  print("ingrese un numero");
  n=int.parse(stdin.readLineSync()!);
  //proceso y salida
  for(int i=1; i<= 40; i++){
    resultado= n*i;
    
  }
  print("el resultado es: $resultado");
}

