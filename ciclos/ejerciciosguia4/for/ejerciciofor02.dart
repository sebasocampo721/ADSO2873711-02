import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 02
  /*Leer 10 números e imprimir solamente los números positivos
  */
  // definicion variables
  int num;
  int cant=10;
  //proceso y salida
  for(int i=0; i< cant; i++){

    print("digite el numero ");
    num= int.parse(stdin.readLineSync()!);
    if (num>=0){
      print("el numero es positivo ");
    }
  }
  
}