
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do while 01
  /*1.En  un  supermercado  una  ama  de  casa  pone  en  su  carrito  los  artículos  que  va  tomando  de  los estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás  artículos,  hasta  que  decide  que  ya  tomo  todo  lo  que  necesitaba.  Ayúdale  a  esta  señora  a obtener el total de sus compras.
  */
  // definicion variables
   
    String? articulo, opcion;
    int cantarticulo, acumarticulo=0;
    double precio, totalcompra=0, totalarticulo=0;
    do{
    print("ingrese el articulo a comprar");
    articulo=stdin.readLineSync();
    print("ingrese la cantidad a comprar de $articulo");
    cantarticulo=int.parse(stdin.readLineSync()!);
    print("ingrese el precio del $articulo");
    precio=double.parse(stdin.readLineSync()!);
    print("el total en el articulo $articulo sera: $totalarticulo");
    totalcompra+=totalarticulo;//acumulador
    acumarticulo+=cantarticulo;
    print("desea inbresar otro articulo (si)-(no)");
    opcion=stdin.readLineSync();
    print('*' *50);
  } while (opcion!.toUpperCase()!="no");
  print("el total de la compra sera : $totalcompra");
  print("el total de articulos que lleva es: $acumarticulo");
}
