// ignore_for_file: dead_code

import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 07
  /*Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
  */
  // definicion variables
  
  
  double  preciooriginal=0, kiloscomprados, totalTienda=0;
  print("ingrese el numero de kilos comprados");
  kiloscomprados=double.parse(stdin.readLineSync()!);
  //proceso y salida
  for ( kiloscomprados;; ) {
    double precioTotalAPagar;
    if (kiloscomprados > 10) {
      precioTotalAPagar = kiloscomprados * preciooriginal * 0.85;
    } else {
      precioTotalAPagar = kiloscomprados * preciooriginal;
    }
    totalTienda += precioTotalAPagar;
    print("El cliente compró $kiloscomprados kilos y pagará $precioTotalAPagar unidades monetarias.");
  }

  print("El total percibido por la tienda es: $totalTienda unidades monetarias.");
}

