
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do while 07
  /*Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. Por cada carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. Cuando lea las 10 letras 'a' el programa terminará.
  */
  // definicion variables
   
  int countA = 0;

  print('Introduce caracteres. El programa terminará cuando se hayan introducido 10 letras "a".');

  do {
    String? input = stdin.readLineSync();

    if (input != null && input.isNotEmpty) {
      String char = input[0]; // Tomar solo el primer carácter de la entrada

      if (char == 'a') {
        countA++;
      } else {
        print('Caracter leído no es una "a": $char');
      }
    }
  } while (countA < 10);

  print('Se han leído 10 letras "a". El programa ha terminado.');
}


