import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional multiple 01
  /*La  empresa  comercializadora  Solvavende escobas,  recogedores  y  aromatizantes,   clasifica  a  sus clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:Si el cliente es de la categoría 1 se le descuenta el 5%Si el cliente es de la categoría 2 se le descuenta el 8%Si el cliente de de la categoría 3 se le descuenta el 12%Si el cliente es de la categoría 4 se le descuenta el 15%Cuando el cliente realiza una compra se generan los siguientes datos:Nombre del clienteTipo de clienteCantidad comprada de escobas, recogedores y aromatizantes.Los precios de estos elementos son.•Escobas. 3000.•Recogedores. 2000•Aromatizantes. 1000Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:Nombre del clienteSubtotal a pagarDescuentoTotal a pagar.
  */
  // definicion variables
  String? nombreCliente;
  int tipoCliente;
  int cantEscobas, cantRecogedores, cantAromat;
  int precioEscoba = 3000, precioRecogedor= 1000, precioAromat = 1000;
  double descuento, totalCompra, subtotal;
  //entrada 
  print("cual es su nombre");
  nombreCliente = stdin.readLineSync();
  print("caul es su categoria");
  tipoCliente = int.parse(stdin.readLineSync()!);
  print("cual es la cantidad de escobas, recogedores y aromatizantes ");
  cantEscobas = int.parse(stdin.readLineSync()!);
  cantRecogedores = int.parse(stdin.readLineSync()!);
  cantAromat = int.parse(stdin.readLineSync()!);
  //proceso alg 
  subtotal=(cantEscobas.toDouble()*precioEscoba)+(cantRecogedores*precioRecogedor)+(cantAromat*precioAromat);
  switch(tipoCliente){
    case 1:
    descuento= subtotal* 0.05;
    break;
    case 2:
    descuento= subtotal* 0.08;
    break;
    case 3:
    descuento= subtotal* 0.12;
    break;
    case 4:
    descuento= subtotal* 0.15;
    break;
    default:
    print("la categoria es incorrecta");
    descuento=0;
    break;
  }
  totalCompra= subtotal-descuento;
  //salida 
  print("su nombre es: $nombreCliente");
  print("el subtotal a pagar es: $subtotal");
  print("el descuento  es: $descuento");
  print("el dtotal a pagar es: $totalCompra");
}