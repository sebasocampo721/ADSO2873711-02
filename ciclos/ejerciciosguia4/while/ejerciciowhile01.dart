
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 01
  /*1.Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones.
  */
  // definicion variables
  int ventas, cantvendedores;
  double comisiones, sueldobase;
  print("ingrese la  cantidad de vendedores");
  cantvendedores= int.parse(stdin.readLineSync()!);
  for(int i = 0;  i<= cantvendedores; i+=1){
    int numero = i +1;
    print("digite la nota: $numero");
    nota= double.parse(stdin.readLineSync()!);
    suma+=nota;
  }
  promedio=suma/cantnotas;
  print("su promedio es: $promedio");
  if (promedio>=3){
    print("usted aprobo");
  }
  else{
    print("usted reprobo");
  }
}
  
}