import 'dart:io';
import 'dart:math';

void main(){
  //sebastian oacampo - eje condicional multiple 03
  /*Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:ValNum100 * v1100^v2100/v30Cualquier número
  */
  // definicion variables
  int num;
  double volumen, resultado;
  
  //entrada 

  print("ingrese un numero 1, 2 o 3");
  num = int.parse(stdin.readLineSync()!);

  print("ingrese el volumen");
  volumen = double.parse(stdin.readLineSync()!);

  //proceso alg 
  resultado=0;
  switch(num){
    case 1:
    resultado=100 * volumen;
    break;
    case 2:
    resultado=pow(100, volumen).toDouble();
    break;
    case 3:
    resultado=(100 / volumen);
    break;
    default:
    print("la categoria es incorrecta");
    break;
  }
  
  //salida 
  print("el resultado de la operacion es: $resultado");
  
}