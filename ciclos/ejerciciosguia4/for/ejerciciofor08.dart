
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 08
  /*Un alumno de la clase de lógica matemática desea desarrollar un programa que calcule el factorial de un número N, el cual le dará al usuario, el factorial de un número N, definido matemáticamente como N! se obtiene como la multiplicación de todos los números que están desde el 1 hasta el N = 1 * 2 * 3 * ..... (N-2) * (N-1) * N, como se muestra en la figura, por definición el factorial de 0 es 1.
  */
  // definicion variables
  
  int n, factorial=1;
  print("ingrese un numero");
  n=int.parse(stdin.readLineSync()!);
  //proceso y salida
  
  for(int i=1; i<=n; i++ ){
    factorial=factorial*i;
  }
  print("el factorial de $n es $factorial");
}

