
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 02
  /*En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma:Si el obrero trabaja 40 horas o menos se le paga $20 por horaSi trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra.
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
      if(n<numeromenor){
        numeromenor=n;
      }
    }
    
  }
}
print("el numero menor de n nmeros es: $numeromenor");
}