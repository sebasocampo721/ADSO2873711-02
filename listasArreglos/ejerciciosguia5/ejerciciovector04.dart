import 'dart:io';

void main(){
  //sebastian oacampo - eje vector 04
  /*Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original e imprimir el vector resultante.
  */
  List<double> numeros = [];
  List<double> inverso =[];
  int cantnumeros = 8;
  double num;
  //ciclo para llenar el vector
  for (var i = 0; i< cantnumeros; i++){
    print("ingrese el numero #${i+1}");
    num=double.parse(stdin.readLineSync()!);
    numeros.add(num);//se agrega el numero a la lista
  }
  for (var i =  numeros.length -1; i >= 0; i--){
    inverso.add(numeros[i]);
    
  }
  print(numeros);
  print("la lista in versa es");
  print(inverso);
}


