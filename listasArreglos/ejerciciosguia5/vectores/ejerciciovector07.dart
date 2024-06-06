import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje vector 07
  /*Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa palabra o frase es palíndroma.
  */

  //se define una lisa vacia
  List<String> vectpalindrome=[];
  List<String> vectpalabra=[];
  String? palabra;

  print("ingrese la palabra para comprobar palindrome");
  palabra=stdin.readLineSync()!;

  for (int i = 0; i < palabra.length; i++){
    vectpalabra.add(palabra[i]);
    vectpalindrome.add(palabra[palabra.length-i-1]);
  }
  print(vectpalabra);
  print(vectpalindrome);
  if(vectpalabra.toString() == vectpalindrome){
    print("es palndrome");
  }else{
  print("no es palindrome");
  }
}