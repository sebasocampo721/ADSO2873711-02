import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje while 08
  /*Encontrar el mayor valor de un conjunto de n números dados.
  */
  // definicion variables
 int cannumeros, x, n,c=0;
  x=1;
  print("ingrese la cantidad de numeros");
  cannumeros=int.parse(stdin.readLineSync()!);
  while(x <= cannumeros){
  print("ingresa un numero");
  n=int.parse(stdin.readLineSync()!);
  if(x==1){
    c=n;
  }else if(n>c){
    c=n;
  }
  x= x+1;
  }
print("el numero mayor de n nmeros es: $c");
}