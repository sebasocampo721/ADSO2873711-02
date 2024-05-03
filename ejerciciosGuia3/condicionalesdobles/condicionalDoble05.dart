import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional doble 05
  /*Un  cliente  ordena  cierta  cantidad  de  brochas  de  cerda  y  rodillos;  las  brochas  de  cerda  tienen  un  20%  de descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad pedida  y  el  precio  unitario.  Además,  sise  paga  de  contado  todo  tiene  un  descuento  del  7%.  Elaborar  un programa que calcule y muestre en  pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2.
  */
  // definicion variables
  int cantbrochas, cantrodillos, tipopago;
  double descuento1, descuento2, preciobrochas, preciorodillos, pago1, pago2, costototal, descuento;
  //entrada
  print("ingrese la cantidad de brochas y de rodillos");
  cantbrochas= int.parse(stdin.readLineSync()!);
  cantrodillos= int.parse(stdin.readLineSync()!);
  print("ingrese el precio unitario de las brochas y rodillos");
  preciobrochas= double.parse(stdin.readLineSync()!);
  preciorodillos= double.parse(stdin.readLineSync()!);
  print("ingrese 1 para pago de contado y 2 para pago a credito");
  tipopago= int.parse(stdin.readLineSync()!);
  
  //proceso y salida

  preciobrochas=preciobrochas*cantbrochas;
  descuento1=preciobrochas*0.2;
  pago1=preciobrochas-descuento1;

  preciorodillos=preciorodillos*cantrodillos;
  descuento2=preciorodillos*0.15;
  pago2=preciorodillos-descuento2;

  costototal=pago1+pago2;
  
  if (tipopago==1){
    descuento=costototal*0.07;
    costototal=costototal-descuento;
    print("el descuento por su compra decontado es de: $descuento");
  }    
  else {
     costototal=pago1+pago2;
  }
 print("el costo total de su compra es $costototal");
}