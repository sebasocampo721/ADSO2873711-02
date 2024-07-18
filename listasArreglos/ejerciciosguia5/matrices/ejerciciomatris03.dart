import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje  doble 0
  /*La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por día, la compañía necesita obtener un reporte al final del día del total de la producción por artículo y el total de la producción por turno. Desarrollar un programa que pida al usuario el nombre de cada artículo y la producción que se hizo en cada uno de los tres turnos del día y genere un reporte al final del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por turno y el artículo con mayor producción.
  */
  // definicion variables
  List<List<int>> matrizproduccion = [
    [30,40,20],
    [10,12,15],
    [8,10,7],
    [25,30,30],
    [12,20,10],
  ]; 
  List<int> totalarticulos = [0,0,0,0,0];
  List<int> totalturnos = [0,0,0];
  int mayorproduccion=0, posicionmayorproduccion=0;
  
  for (int i = 0; i < matrizproduccion.length; i++){
    for (int j = 0; j <matrizproduccion[i].length; j++){
      //se van sumando los valores por articulo
      totalarticulos[i] += matrizproduccion[i][j] ;
      totalturnos[j] += matrizproduccion[i][j] ;
    }
  }
  print(totalarticulos);
  print(totalturnos);
  for (int i=0; i<totalarticulos.length; i++){
    print("el total del articulo ${i + 1} es ${totalarticulos[i]}");
  }
  print('*'*30);
  for (int i=0; i<totalturnos.length; i++){
    print("el total del turno ${i + 1} es ${totalturnos[i]}");
  }
  // articulo con mayor produccion
  for ( var i = 0; i < totalarticulos.length; i++){
    if(totalarticulos[i] > mayorproduccion){
      mayorproduccion= totalarticulos[i];
      posicionmayorproduccion= i;
    }
  }
  print("el articulo de mayor produccion es el articulo #${posicionmayorproduccion + 1}");
  stdout.write("con una produccion de $mayorproduccion");
}

  
   
