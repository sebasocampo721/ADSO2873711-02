
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 01
  /*1.Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones.
  */
  // definicion variables
   int contador=0, cantvendedores, cantventas=3, valorventas;
   double sueldobase, comision, totalventas=0, sueldototal;
  
    print("ingrese la cantidad de vendedores");
    cantvendedores= int.parse(stdin.readLineSync()!);
    print("ingrese el sueldo base del trabajador");
    sueldobase=double.parse(stdin.readLineSync()!);
    
    while( contador < cantvendedores){
    for(int i=0; i< cantventas; i++){
    print("ingrese el valor de la venta ${i+1} del vendedor ${contador+1}");
    valorventas=int.parse(stdin.readLineSync()!);
    while(valorventas <0 || valorventas > 10000000){
      print("la venta esta fuera del rango, ingrese de nuevo");
      valorventas=int.parse(stdin.readLineSync()!);
    }
    totalventas=totalventas+valorventas;
   }
  
  comision=totalventas*0.1;
  sueldototal=sueldobase+comision;
  print("el sueldo mensual de los trabajadores es: $comision");
  print("la comision del mes es: $comision");
  print("el sueldo total mas la comision es: $sueldototal");
  contador ++;
  }
}