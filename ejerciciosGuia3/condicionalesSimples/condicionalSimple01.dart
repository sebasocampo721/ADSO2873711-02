import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional simple 01
  /*El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del  5%  si  el  empleado  trabajó  más  de  40  horas.  Imprimir  el  nombre  del  empleado  y  su  sueldo. Desarrollar el algoritmoy diagrama de flujo.
  */
  // definicion variables
  String? nombre;
  double horastrabajadas, cuotahora, sueldo, incentivo;
  //entrada alg
  print("ingrese su nobre");
  nombre = stdin.readLineSync();
  print("digite cantidad de horas trabajadas");
  horastrabajadas = double.parse(stdin.readLineSync()!);
  print("ingrese el  valor de la hora");
  cuotahora = double.parse(stdin.readLineSync()!);
  //proceso alg 
  sueldo = horastrabajadas  * cuotahora;
  if (horastrabajadas > 40) {
  incentivo = sueldo * 0.05;
  sueldo = sueldo * incentivo;
  print("se obtuvo un incentivo de: $incentivo");
  }
  //salida alg
  print("el nombre del empleado es: $nombre");
  print("el sueldo neto es: $sueldo");
}