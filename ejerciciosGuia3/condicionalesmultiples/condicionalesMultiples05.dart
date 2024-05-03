import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional multiple 01
  /*La  empresa  comercializadora  Solvavende escobas,  recogedores  y  aromatizantes,   clasifica  a  sus clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:Si el cliente es de la categoría 1 se le descuenta el 5%Si el cliente es de la categoría 2 se le descuenta el 8%Si el cliente de de la categoría 3 se le descuenta el 12%Si el cliente es de la categoría 4 se le descuenta el 15%Cuando el cliente realiza una compra se generan los siguientes datos:Nombre del clienteTipo de clienteCantidad comprada de escobas, recogedores y aromatizantes.Los precios de estos elementos son.•Escobas. 3000.•Recogedores. 2000•Aromatizantes. 1000Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:Nombre del clienteSubtotal a pagarDescuentoTotal a pagar.
  */
  // definicion variables
  int clave, minutosHablados, costoTotal;

  
  //entrada 
  
  print("ingrese la clave del pais de destino");
  clave = int.parse(stdin.readLineSync()!);
  print("ingrese la cantidad de minutos hablados");
  minutosHablados = int.parse(stdin.readLineSync()!);
  
  //proceso alg 
  
  costoTotal=0;
  switch(clave){
    case 12:
    costoTotal=200 * minutosHablados;
    break;
    case 15:
    costoTotal=220 * minutosHablados;
    break;
    case 18:
    costoTotal=450 * minutosHablados;
    break;
    case 19:
    costoTotal=350 * minutosHablados;
    break;
    case 23:
    costoTotal=600 * minutosHablados;
    break;
    case 25:
    costoTotal=600 * minutosHablados;
    break;
    case 29:
    costoTotal=500 * minutosHablados;
    break;
    default:
    print("la categoria es incorrecta");
    break;
  }
  //salida 
  print("el costo total de la llamada es: $costoTotal");

}