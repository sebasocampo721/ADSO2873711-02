import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje do while 08
  /*1.Hacer un programa que lea caracteres desde teclado y vaya contando las vocales que aparecen. El programa  terminará  cuando  lea  el  carácter  #  y  entonces  mostrará  un  mensaje  indicando  cuántas vocales ha leído (cuántas de cada una de ellas).
  */
  // definicion variables
    int contA=0, contE=0, contI=0, contO=0, contU=0;
    String caracteres;
  do {
    stdout.write("Ingresa un caracter (para terminar ingresa '#'): ");
    caracteres = stdin.readLineSync()!;
    if (caracteres != '#') {
      switch (caracteres.toLowerCase()) {
        case 'a':
          contA++;
          break;
        case 'e':
          contE++;
          break;
        case 'i':
          contI++;
          break;
        case 'o':
          contO++;
          break;
        case 'u':
          contU++;
          break;
      }
    }
  } while (caracteres != '#');
  int totalVocales = contA + contE + contI + contO + contU;
  print("\nHas ingresado un total de $totalVocales vocales:");
  print("Vocales 'a': $contA");
  print("Vocales 'e': $contE");
  print("Vocales 'i': $contI");
  print("Vocales 'o': $contO");
  print("Vocales 'u': $contU");
}

