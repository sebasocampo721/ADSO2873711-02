import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional anidado 05
  /*Una frutería ofrece las manzanas con descuento según la siguiente tabla:NUM. DE KILOS COMPRADOS% DESCUENTO0 -202.01 -5105.01 -101510.01 en adelante20Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo vale $13006
  */
  // definicion variables
  double pagototal, kilos, descuento, precio, pagototal1;
  //entrada
  print("ingrese la cantidad de kilos que va comprar");
  kilos= double.parse(stdin.readLineSync()!);
  //proceso y salida
  precio=1300;
  pagototal1=0;
  pagototal=kilos*precio;
  if (kilos<2) {
    pagototal1= pagototal;
  }
  else if (kilos<5) {
    descuento= pagototal*0.1;
    pagototal1= pagototal-descuento;
  }
  else if (kilos<10) {
    descuento= pagototal*0.15;
    pagototal1= pagototal-descuento;
  }
  else {
    descuento= pagototal*0.2;
    pagototal1= pagototal-descuento;
  }
  // Imprime el resultado
  print("el valor a pagar es: $pagototal1");
}