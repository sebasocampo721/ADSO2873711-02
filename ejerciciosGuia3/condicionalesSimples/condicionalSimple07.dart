import 'dart:io';

void maina(){
  // sebastian ocampo - eje condicional simple 07
  /*Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.
  */
  //definicion de variables 
  double monto, cuota;
  
  //entrada 
  print("ingrese el monto");
  monto = double.parse(stdin.readLineSync()!);
 
  //proceso
  cuota=0;
  if(monto < 50000) {
    cuota = monto * 0.03;
    print("la cuota que debe pagar es: $cuota");
  }
  else if(monto > 50000){
    cuota = monto * 0.02;
    print("la cuota que debe pagar es: $cuota");
  }
  //salida
  print("la cuota a paga es: $cuota");
}