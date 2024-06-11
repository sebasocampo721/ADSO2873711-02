import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje  doble 4
  /*La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos de primaria. El juego se llama "cuadro mágico", un cuadro mágico es aquel en que la suma de cada fila, la suma de cada columna y la suma de las diagonales es exactamente igual. El cuadro mágico es de dos dimensiones.Desarrollar un programa que pida al usuario las dimensiones deseadas para  el cuadro mágico (un arreglo  de  dos  dimensiones)  en  forma  de  cuadro  y  luego  le  pida  los  datos  para  llenar  el  arreglo. Después  el  programa  debe  calcular  la  suma  de  cada  fila,  de  cada columna  y  de  cada  diagonal  del cuadro,  si  todas  las  sumas  son  iguales  entonces  le  deberás  de  indicar  por  medio  de  un  mensaje "Felicidades  creaste  un  cuadro  mágico",  de  lo  contrario  le  deberás  de  decir  el  siguiente  mensaje: "Modifica los números en el cuadro para que lo hagas mágico".
  */
  // definicion variables
   Map<String, int> produccionPorArticulo = {};
  List<int> produccionPorTurno = [0, 0, 0]; 
  for (int i = 0; i < 5; i++) {
    print('Ingrese el nombre del artículo ${i + 1}:');
    String nombreArticulo = stdin.readLineSync()!;
    for (int turno = 0; turno < 3; turno++) {
      print('Ingrese la producción del artículo ${i + 1} en el turno ${turno + 1}:');
      int produccion = int.parse(stdin.readLineSync()!);
      produccionPorTurno[turno] += produccion; 
    }
    produccionPorArticulo[nombreArticulo] = produccionPorTurno.reduce((a, b) => a + b);
  }
  String articuloMasProducido = produccionPorArticulo.keys.reduce((a, b) => produccionPorArticulo[a]! > produccionPorArticulo[b]! ? a : b);
  print('\n--- Reporte de Producción ---');
  produccionPorArticulo.forEach((articulo, produccion) {
    print('Producción de $articulo: $produccion');
  });
  for (int turno = 0; turno < 3; turno++) {
    print('Producción total en el turno ${turno + 1}: ${produccionPorTurno[turno]}');
  }
  print('Artículo con mayor producción: $articuloMasProducido');
  }

