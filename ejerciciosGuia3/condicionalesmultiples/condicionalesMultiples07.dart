import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional multiple 08_
  /*La  empresa  comercializadora  Solvavende escobas,  recogedores  y  aromatizantes,   clasifica  a  sus clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:Si el cliente es de la categoría 1 se le descuenta el 5%Si el cliente es de la categoría 2 se le descuenta el 8%Si el cliente de de la categoría 3 se le descuenta el 12%Si el cliente es de la categoría 4 se le descuenta el 15%Cuando el cliente realiza una compra se generan los siguientes datos:Nombre del clienteTipo de clienteCantidad comprada de escobas, recogedores y aromatizantes.Los precios de estos elementos son.•Escobas. 3000.•Recogedores. 2000•Aromatizantes. 1000Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:Nombre del clienteSubtotal a pagarDescuentoTotal a pagar.
  */
  // definicion variables
  int clave, minutosHablados, costoTotal, precioNormal, precioBarato;

  
  //entrada 
  
  print("ingrese la clave del pais de destino");
  clave = int.parse(stdin.readLineSync()!);
  print("ingrese la cantidad de minutos hablados");
  minutosHablados = int.parse(stdin.readLineSync()!);
  
  //proceso alg 
  costoTotal=0;
  switch(clave){
    case 12:
    precioNormal=200;
    precioBarato=150;
    if (minutosHablados <= 4) {
    costoTotal = minutosHablados * precioNormal;
  } else {
    costoTotal = (4 * precioNormal) + ((minutosHablados - 4) *precioBarato);
  }
    break;
    case 15:
    precioNormal=220;
    precioBarato=180;
    if (minutosHablados <= 4) {
    costoTotal = minutosHablados * precioNormal;
  } else {
    costoTotal = (4 * precioNormal) + ((minutosHablados - 4) *precioBarato);
  }
    break;
    case 18:
    precioNormal=450;
    precioBarato=350;
    if (minutosHablados <= 4) {
    costoTotal = minutosHablados * precioNormal;
  } else {
    costoTotal = (4 * precioNormal) + ((minutosHablados - 4) *precioBarato);
  }
    break;
    case 19:
       precioNormal=350;
    precioBarato=270;
    if (minutosHablados <= 4) {
    costoTotal = minutosHablados * precioNormal;
  } else {
    costoTotal = (4 * precioNormal) + ((minutosHablados - 4) *precioBarato);
  }
    break;
    case 23:
    precioNormal=600;
    precioBarato=460;
    if (minutosHablados <= 4) {
    costoTotal = minutosHablados * precioNormal;
  } else {
    costoTotal = (4 * precioNormal) + ((minutosHablados - 4) *precioBarato);
  }
    break;
    case 25:
    precioNormal=600;
    precioBarato=460;
    if (minutosHablados <= 4) {
    costoTotal = minutosHablados * precioNormal;
  } else {
    costoTotal = (4 * precioNormal) + ((minutosHablados - 4) *precioBarato);
  }
    break;
    case 29:
    precioNormal=500;
    precioBarato=390;
    if (minutosHablados <= 4) {
    costoTotal = minutosHablados * precioNormal;
  } else {
    costoTotal = (4 * precioNormal) + ((minutosHablados - 4) *precioBarato);
  }
    break;
    default:
    print("la categoria es incorrecta");
    break;
  } 
  //salida 
  print("el costo total de la llamada es: $costoTotal");

   
}
 
