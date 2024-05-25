
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do do while 02
  /*1.Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el cual  introduzca  un  número  entero  positivo  e  invierta  los  dígitos  del  número.  Mostrar  el  número invertido.
  */
  // definicion variables
   
   int numinicial;
   int modulo, nuevonumero, division;
   print("ingrese el numero a invertir");
   numinicial=int.parse(stdin.readLineSync()!);

  print("el numero uinicial es: $numinicial");
  stdout.write("el numero invertido es:");
  nuevonumero=numinicial;
  do{
    modulo = nuevonumero % 10;
  division=nuevonumero~/10;
  stdout.write(modulo);
  nuevonumero=division;

  }while(division!=0);

}
