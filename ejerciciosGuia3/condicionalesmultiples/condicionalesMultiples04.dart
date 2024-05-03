
import 'dart:io';
import 'dart:math';

void main(){
  //sebastian oacampo - eje condicional multiple 04
  /*Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:ValNum100 * v1100^v2100/v30Cualquier número
  */
  // definicion variables
  int x;
  double  resultado;
  
  //entrada 
  
  print("ingrese el valor de x");
  x = int.parse(stdin.readLineSync()!);

  //proceso alg 
  resultado=0;
  
  switch(x % 4){
    case 0:
    resultado=pow(x, 2).toDouble();
    break;
    case 1:
    resultado=x / 6;
    break;
    case 2:
    resultado=sqrt(x);
    break;
    case 3:
    resultado=pow(x, (3+5)).toDouble();
    break;
    default:
    print("el valor de x deben ser multiplo de 4");
    break;
  }
  print("el resultado es: $resultado");
}