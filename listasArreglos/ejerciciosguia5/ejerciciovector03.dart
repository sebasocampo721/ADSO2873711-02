import 'dart:io';

void main(){
  //sebastian oacampo - eje vector 03
  /*Almacenar  15  números  en  un  vector,  imprimir  cuantos  son  ceros,  cuántos  son  negativos,  cuantos positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.
  */
  List<double> numeros = [];
  List<double> negativos =[];
  List<double> positivos = [];
  List<double> ceros = [];
  int cantnumeros = 15;
  double num, positivos1=0, negativos1=0, cero1=0, suma1=0, suma2=0;
  //ciclo para llenar el vector
  for (var i = 0; i< cantnumeros; i++){
    print("ingrese el numero #${i+1}");
    num=double.parse(stdin.readLineSync()!);
    numeros.add(num);//se agrega el numero a la lista
  }
  for (var i = 0; i < numeros.length; i++){
    if(numeros[i]<0){
      negativos.add(numeros[i]);
      negativos1++;
    }else if(numeros[i]==0){
      ceros.add(numeros[i]);
      cero1++;
    }else{
      positivos.add(numeros[i]);
      positivos1++;
    }
  }
    for (var i = 0; i < positivos.length; i++){
      suma1+=positivos[i];
    }
    for (var i = 0; i < negativos.length; i++){
      suma2+=negativos[i];
    }
  print("la suma de numeros negativos es: $suma2");
  print("la suma de numeros positivos es: $suma1");
  print("la cantidad de numeros negativos es: $negativos1");
  print("la cantidad de numeros positivos es: $positivos1");
  print("la cantidad de numeros ceros es: $cero1");
}

