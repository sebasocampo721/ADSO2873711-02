import 'dart:io';

void main(){
  //sebastian oacampo - eje vector 05
  /*Diseñe  un  algoritmo  que  lea  un  número  cualquiera  y  lo  busque  en  el  vector  X,  el  cual  tiene almacenados  12  elementos.  Escribir  la  posición  donde  se  encuentra  almacenado  el  número  en  el vector o el mensaje “NO” si no lo encuentra.
  */
  List<double> x = [];
  int cantnumeros = 12;
  double num, numero, posicion = 13;
  //ciclo para llenar el vector
  for (var i = 0; i< cantnumeros; i++){
    print("ingrese el numero #${i+1}");
    num=double.parse(stdin.readLineSync()!);
    x.add(num);//se agrega el numero a la lista
  }
  print("ingrese el numero que desea recorrer");
  numero=double.parse(stdin.readLineSync()!);
  for (int i=0; i<12; i++){
    if(numero==x[i]){
      posicion = i as double;
  }
  if(posicion == 13){
    print("NO");
  }else{
    print("la posicion es $posicion");
  }

}

}
