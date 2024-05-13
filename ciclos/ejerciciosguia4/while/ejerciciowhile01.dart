
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 01
  /*1.Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones.
  */
  // definicion variables
   int x, n;
   double sueldo=0, comision=0, a, b, c, sueldototal=0;
  
    print("ingrese la cantida de vendedores");
    n= int.parse(stdin.readLineSync()!);
    x=1;
    
    while( x <= n){
    print("ingrese el sueldo base del trabajador");
    sueldo=double.parse(stdin.readLineSync()!);
    print("ingrese las tres ventas del mes");
    a=double.parse(stdin.readLineSync()!);
    b=double.parse(stdin.readLineSync()!);
    c=double.parse(stdin.readLineSync()!);
    comision= (a+b+c)*0.10;
    sueldototal= sueldo+comision;
     x= x+1;
  }
  print("el sueldo mensual de los trabajadores es: $sueldo");
  print("la comision del mes es: $comision");
  print("el sueldo total mas la comision es: $sueldototal");
  

}