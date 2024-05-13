import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 04
  /*Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base  en la sig, tabla
  */
  // definicion variables
  
  int n, resultado=0;
  print("ingrese un numero");
  n=int.parse(stdin.readLineSync()!);
  //proceso y salida
  for(int i=1; i<= 40; i++){
    resultado= n*i;
    
  }
  print("el resultado es: $resultado");
}

