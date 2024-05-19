
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do do while 02
  /*1.Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el cual  introduzca  un  número  entero  positivo  e  invierta  los  dígitos  del  número.  Mostrar  el  número invertido.
  */
  // definicion variables
   
   int n,invertido=0, digito;
    do{
    print("ingrese el numero que desea invertir");
    n=int.parse(stdin.readLineSync()!);
    digito=n % 10;
    invertido= invertido+10+digito;
    n ~/=10;
  } while (n!=0);
  print("el resultado es $invertido");
}
