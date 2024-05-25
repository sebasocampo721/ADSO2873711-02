import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje do while 01
  /*1.En  un  supermercado  una  ama  de  casa  pone  en  su  carrito  los  artículos  que  va  tomando  de  los estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás  artículos,  hasta  que  decide  que  ya  tomo  todo  lo  que  necesitaba.  Ayúdale  a  esta  señora  a obtener el total de sus compras.
  */
  // definicion variables
    String? articulo, opcion;
  int cantArticulo, contadorArticulo=0, acumuladorArticulo=0;
  double precio, totalCompra=0, totalArticulo;
  //proceso y salida
  do{
    print("ingrese el articulo que comprara");
    articulo = stdin.readLineSync();
    print("ingrese la cantidad que comprara de $articulo");
    cantArticulo = int.parse(stdin.readLineSync()!);
    print("ingrese ingrese el precio del $articulo");
    precio = double.parse(stdin.readLineSync()!);
    totalArticulo = cantArticulo * precio;
    totalCompra+=totalArticulo;
    contadorArticulo++;//contador
    acumuladorArticulo += cantArticulo;
    print("hasta el momento lleva $contadorArticulo items de articulos");
    print("hasta el momento lleva $acumuladorArticulo en articulos");

    print("el total en el articulo $articulo sera: $totalArticulo");

    print("desea ingresar otro articulo (SI) - (NO)");
    opcion = stdin.readLineSync();
    print('*' * 50);
  }while(opcion!.toUpperCase() != "NO");
    print("el total de la compra es de $totalCompra");
}
