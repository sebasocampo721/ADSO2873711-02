
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do while 01
  /*1.En  un  supermercado  una  ama  de  casa  pone  en  su  carrito  los  artículos  que  va  tomando  de  los estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás  artículos,  hasta  que  decide  que  ya  tomo  todo  lo  que  necesitaba.  Ayúdale  a  esta  señora  a obtener el total de sus compras.
  */
  // definicion variables
   
    String articulo;
    int cantarticulo, cantarticulos=0;
    double precio, totalcompra;
    do{
    print("ingrese la cantidad de articulos, ingrese (0) para terminar");
    cantarticulo=int.parse(stdin.readLineSync()!);
    print("ingrese el precio de los articulos");
    precio=double.parse(stdin.readLineSync()!);
    totalcompra= precio*cantarticulo;
    cantarticulo++;
  } while (cantarticulo!=0);
}
