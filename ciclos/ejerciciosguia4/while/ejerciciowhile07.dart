import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje while 07
  /*Encontrar el menor valor de un conjunto de n números dados.
  */
  // definicion variables
  int cannumeros, x, n,b=0;
  x=1;
  print("ingrese la cantidad de numeros");
  cannumeros=int.parse(stdin.readLineSync()!);
  while(x <= cannumeros){
  print("ingresa un numero");
  n=int.parse(stdin.readLineSync()!);
  if(x==1){
    b=n;
  }else if(n<b){
    b=n;
  }
  x= x+1;
  }
print("el numero menor de n nmeros es: $b");
}