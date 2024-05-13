
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 08
  /*Encontrar el mayor valor de un conjunto de n números dados.
  */
  // definicion variables
   
  int i, x, n, numeromenor=0;
  i=1;
  x=1;

  while( i!=0){
    print("ingrese una opcion");
    print("1 - ingresar numero");
    print("0 - salir");
    i=int.parse(stdin.readLineSync()!);
    
    if( i==1){
    print("ingrese el numero");
    n=int.parse(stdin.readLineSync()!);
    if (x==1){
      numeromenor=n;
      x=0;
    }else{
      if(n>numeromenor){
        numeromenor=n;
      }
    }
  }
}
print("el numero menor de n nmeros es: $numeromenor");
}