
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 01
  /*1.Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones.
  */
  // definicion variables
   int cantvendedores, cantventas=3, contador=0, sueldobase, sueldototal;
   double comision=0.10, comisionporventa, comisionPorVenta,comisionTotal;
  
    print("ingrese la cantida de vendedores");
    cantvendedores= int.parse(stdin.readLineSync()!);
    print("ingrese el sueldo base de los vendedores");
    sueldobase=int.parse(stdin.readLineSync()!);
    sueldototal=0;
    comisionTotal=0;
    for(int i = 0;  i<= cantvendedores; i+=1){
    comisionPorVenta = sueldobase * comision;
    comisionTotal = comisionPorVenta * cantventas;    
    sueldototal = (sueldobase + comisionTotal) as int;

    contador ++;
  }
  print("el vendedor $contador");
  print("el vendedor por concepto de comisiones ganara $comisionTotal");
  print("cada vendedor en la semana obtendra $sueldototal");

}