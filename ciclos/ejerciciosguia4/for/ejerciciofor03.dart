import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 03
  /*Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
  */
  // definicion variables
  int num;
  int cant=20, numpositivo=0, numnegativo=0, ceros=0;
  //proceso y salida
  for(int i=0; i< cant; i++){
    print("digite el numero ");
    num= int.parse(stdin.readLineSync()!);
    if (num>0){
      numpositivo ++;
    }else if(num<0){
      numnegativo++;
    }else{
      ceros++;
    }
  }
  print("hay $numpositivo positivos");
  print("hay $numnegativo positivos");
  print("hay $ceros ceros");
  
}