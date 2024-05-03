import 'dart:io';

void maina(){
  // sebastian ocampo - eje condicional simple 06
  /*En  un  supermercado  se  hace  una  promoción,  mediante  la  cual  el  cliente  obtiene  un  descuento dependiendo  de  un  número  que  se  escoge  al  azar.  Si  el  numero  escogido  es  menor  que  74  el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta.
  */
  //definicion de variables 
  double numero, descuento, precio, totalprecio;
  //entrada 
  print("ingrese un numero al azar");
  numero = double.parse(stdin.readLineSync()!);
  print("ingrese el precio de la compra");
  precio = double.parse(stdin.readLineSync()!);
  //proceso
  descuento=0;
  totalprecio=0;
  if(numero >= 74) {
    descuento = precio * 0.2;
    totalprecio = precio - descuento;
    print("el descuento es de $descuento");
  }
  else if(numero < 74){
    descuento = precio * 0.15;
    totalprecio = precio - descuento;
    print("el descuento es de $descuento");
  }
  //salida
  print("se le descuenta: $descuento");
  print("el total a pagar es: $totalprecio");
}