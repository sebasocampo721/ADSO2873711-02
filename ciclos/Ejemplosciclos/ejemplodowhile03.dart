import 'dart:io';

void main(List<String> args) { 
  /*Realizar un algoritmo que permita solicitar una clave numérica al usuario y no permitir continuar hasta que no ingrese la clave válida
  */
  int clave=999,clave1, contador=0;

  do{
    print("ingrese la clave");
    clave1=int.parse(stdin.readLineSync()!);
    if (clave==clave1){
      print("su clave es correcta");
    }else{
    print("la clave es incorrecta");
    contador++;
    }
  }while(clave!=clave1 && contador<3);
  print("usted ya supero el limite de intentos");
}